require ("pry-byebug")

def pet_shop_name(shop)
return shop[:name]
end

def total_cash(shop)
  return cash_total = shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, new_money)
  return shop[:admin][:total_cash] += new_money
end

def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, new_pet_sold)
  return shop[:admin][:pets_sold] += new_pet_sold
end

def stock_count(shop)
  return shop[:pets].count
end

def pets_by_breed(shop, breed)
  breeds = []
    for pet in shop[:pets]
      if pet[:breed] == breed
        breeds << pet
      end
    end
  return breeds
end

def find_pet_by_name(shop, name)
  for pet in shop[:pets]
    if pet[:name] == name
        return pet
    end
  end
  return nil
end

def remove_pet_by_name(shop, name)
  for pet in shop[:pets]
    if name == pet[:name]
      shop[:pets].delete(pet)
      return pet
    end
  end
end

def add_pet_to_stock(shop, new_pet)
  return shop[:pets] << new_pet
end

def customer_pet_count(customer)
  return customer[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  return customer[:pets] << new_pet
end

def customer_can_afford_pet(customer, new_pet)
  if customer[:cash] >= new_pet[:price]
    return true
  else
    return false
  end
end

def sell_pet_to_customer(shop, pet, customer)
  for one_pet in shop[:pets]  
    if pet == one_pet
      if customer[:cash] >= pet[:price]
        customer[:pets] << pet
        shop[:admin][:pets_sold] += 1
        shop[:admin][:total_cash] += pet[:price]
        customer[:cash] -= pet[:price]
      end
    end
  end
end