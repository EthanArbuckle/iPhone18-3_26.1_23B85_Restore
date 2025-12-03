@interface ASUSQLiteMemoryEntity
+ (id)anyOnConnection:(id)connection predicate:(id)predicate;
+ (id)queryOnConnection:(id)connection predicate:(id)predicate orderingProperties:(id)properties;
- (ASUSQLiteMemoryEntity)initWithDatabaseEntity:(id)entity properties:(id)properties;
- (ASUSQLiteMemoryEntity)initWithDatabaseID:(int64_t)d propertyValues:(id)values externalPropertyValues:(id)propertyValues;
- (BOOL)BOOLValueForProperty:(id)property;
- (BOOL)isEqual:(id)equal;
- (id)arrayValueForProperty:(id)property;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dateValueForProperty:(id)property;
- (id)description;
- (id)dictValueForProperty:(id)property;
- (id)numberValueForProperty:(id)property;
- (id)stringValueForProperty:(id)property;
- (id)urlValueForProperty:(id)property;
- (id)uuidValueForProperty:(id)property;
- (id)valueForProperty:(id)property;
- (int64_t)integerValueForProperty:(id)property;
- (void)reloadFromDatabaseEntity:(id)entity properties:(id)properties;
- (void)setValue:(id)value forExternalProperty:(id)property;
- (void)setValue:(id)value forProperty:(id)property;
- (void)setValues:(id *)values forExternalProperties:(const void *)properties count:(int64_t)count;
- (void)setValues:(id *)values forProperties:(const void *)properties count:(int64_t)count;
@end

@implementation ASUSQLiteMemoryEntity

- (ASUSQLiteMemoryEntity)initWithDatabaseID:(int64_t)d propertyValues:(id)values externalPropertyValues:(id)propertyValues
{
  valuesCopy = values;
  propertyValuesCopy = propertyValues;
  v20.receiver = self;
  v20.super_class = ASUSQLiteMemoryEntity;
  v10 = [(ASUSQLiteMemoryEntity *)&v20 init];
  v11 = v10;
  if (v10)
  {
    v10->_databaseID = d;
    v12 = MEMORY[0x277CBEC10];
    if (valuesCopy)
    {
      v13 = valuesCopy;
    }

    else
    {
      v13 = MEMORY[0x277CBEC10];
    }

    v14 = [v13 mutableCopy];
    propertyValues = v11->_propertyValues;
    v11->_propertyValues = v14;

    if (propertyValuesCopy)
    {
      v16 = propertyValuesCopy;
    }

    else
    {
      v16 = v12;
    }

    v17 = [v16 mutableCopy];
    externalPropertyValues = v11->_externalPropertyValues;
    v11->_externalPropertyValues = v17;
  }

  return v11;
}

- (ASUSQLiteMemoryEntity)initWithDatabaseEntity:(id)entity properties:(id)properties
{
  entityCopy = entity;
  propertiesCopy = properties;
  persistentID = [entityCopy persistentID];
  v9 = [(ASUSQLiteMemoryEntity *)self initWithDatabaseID:persistentID propertyValues:MEMORY[0x277CBEC10] externalPropertyValues:MEMORY[0x277CBEC10]];
  if (v9)
  {
    v10 = [propertiesCopy copy];
    properties = v9->_properties;
    v9->_properties = v10;

    if ([propertiesCopy count])
    {
      [(ASUSQLiteMemoryEntity *)v9 reloadFromDatabaseEntity:entityCopy properties:propertiesCopy];
    }
  }

  return v9;
}

- (void)reloadFromDatabaseEntity:(id)entity properties:(id)properties
{
  v5 = [entity getValuesForProperties:properties];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__ASUSQLiteMemoryEntity_reloadFromDatabaseEntity_properties___block_invoke;
  v6[3] = &unk_278C97858;
  v6[4] = self;
  [v5 enumerateKeysAndObjectsUsingBlock:v6];
}

uint64_t __61__ASUSQLiteMemoryEntity_reloadFromDatabaseEntity_properties___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 16);
  if (a3)
  {
    return [v3 setObject:a3 forKey:a2];
  }

  else
  {
    return [v3 removeObjectForKey:a2];
  }
}

- (void)setValue:(id)value forProperty:(id)property
{
  valueCopy = value;
  propertyCopy = property;
  v5 = valueCopy;
  [(ASUSQLiteMemoryEntity *)self setValues:&valueCopy forProperties:&propertyCopy count:1];
  v6 = valueCopy;
}

- (void)setValues:(id *)values forProperties:(const void *)properties count:(int64_t)count
{
  if (count >= 1)
  {
    countCopy = count;
    do
    {
      propertyValues = self->_propertyValues;
      if (*values)
      {
        [(NSMutableDictionary *)propertyValues setObject:*values forKey:*properties];
      }

      else
      {
        [(NSMutableDictionary *)propertyValues removeObjectForKey:*properties];
      }

      ++properties;
      ++values;
      --countCopy;
    }

    while (countCopy);
  }
}

- (void)setValue:(id)value forExternalProperty:(id)property
{
  valueCopy = value;
  propertyCopy = property;
  v5 = valueCopy;
  [(ASUSQLiteMemoryEntity *)self setValues:&valueCopy forExternalProperties:&propertyCopy count:1];
  v6 = valueCopy;
}

- (void)setValues:(id *)values forExternalProperties:(const void *)properties count:(int64_t)count
{
  if (count >= 1)
  {
    countCopy = count;
    do
    {
      externalPropertyValues = self->_externalPropertyValues;
      if (*values)
      {
        [(NSMutableDictionary *)externalPropertyValues setObject:*values forKey:*properties];
      }

      else
      {
        [(NSMutableDictionary *)externalPropertyValues removeObjectForKey:*properties];
      }

      ++properties;
      ++values;
      --countCopy;
    }

    while (countCopy);
  }
}

- (id)valueForProperty:(id)property
{
  v17 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  v5 = [(NSMutableDictionary *)self->_propertyValues objectForKeyedSubscript:propertyCopy];
  if (!v5)
  {
    properties = self->_properties;
    if (properties)
    {
      if (![(NSArray *)properties containsObject:propertyCopy])
      {
        v9 = objc_opt_class();
        databaseEntityClass = [v9 databaseEntityClass];
        if (databaseEntityClass == objc_opt_class())
        {
          NSStringFromClass(v9);
        }

        else
        {
          [databaseEntityClass databaseTable];
        }
        v11 = ;
        v12 = ASULogHandleForCategory(1);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          v13 = 138543618;
          v14 = v11;
          v15 = 2114;
          v16 = propertyCopy;
          _os_log_fault_impl(&dword_2400F8000, v12, OS_LOG_TYPE_FAULT, "Memory entity loaded from entity missing property: %{public}@.%{public}@", &v13, 0x16u);
        }
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = ASUSQLiteMemoryEntity;
  v4 = [(ASUSQLiteMemoryEntity *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: %lld", v4, self->_databaseID];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class() && (v6 = -[ASUSQLiteMemoryEntity databaseID](self, "databaseID"), v6 == [equalCopy databaseID]))
  {
    propertyValues = [(ASUSQLiteMemoryEntity *)self propertyValues];
    propertyValues2 = [equalCopy propertyValues];
    if ([propertyValues isEqualToDictionary:propertyValues2])
    {
      externalPropertyValues = [(ASUSQLiteMemoryEntity *)self externalPropertyValues];
      externalPropertyValues2 = [equalCopy externalPropertyValues];
      v11 = [externalPropertyValues isEqualToDictionary:externalPropertyValues2];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  databaseID = self->_databaseID;
  propertyValues = self->_propertyValues;
  externalPropertyValues = self->_externalPropertyValues;

  return [v4 initWithDatabaseID:databaseID propertyValues:propertyValues externalPropertyValues:externalPropertyValues];
}

- (BOOL)BOOLValueForProperty:(id)property
{
  v3 = [(ASUSQLiteMemoryEntity *)self numberValueForProperty:property];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (id)dateValueForProperty:(id)property
{
  v3 = [(ASUSQLiteMemoryEntity *)self valueForProperty:property];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (int64_t)integerValueForProperty:(id)property
{
  v3 = [(ASUSQLiteMemoryEntity *)self numberValueForProperty:property];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (id)numberValueForProperty:(id)property
{
  v3 = [(ASUSQLiteMemoryEntity *)self valueForProperty:property];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)stringValueForProperty:(id)property
{
  v3 = [(ASUSQLiteMemoryEntity *)self valueForProperty:property];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)uuidValueForProperty:(id)property
{
  v3 = [(ASUSQLiteMemoryEntity *)self valueForProperty:property];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)urlValueForProperty:(id)property
{
  v3 = [(ASUSQLiteMemoryEntity *)self valueForProperty:property];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)arrayValueForProperty:(id)property
{
  v3 = [(ASUSQLiteMemoryEntity *)self valueForProperty:property];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)dictValueForProperty:(id)property
{
  v3 = [(ASUSQLiteMemoryEntity *)self valueForProperty:property];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

+ (id)anyOnConnection:(id)connection predicate:(id)predicate
{
  connectionCopy = connection;
  predicateCopy = predicate;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  v8 = [self queryOnConnection:connectionCopy predicate:predicateCopy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__ASUSQLiteMemoryEntity_ASUSQLiteQuery__anyOnConnection_predicate___block_invoke;
  v11[3] = &unk_278C97E90;
  v11[4] = &v12;
  [v8 enumerateMemoryEntitiesUsingBlock:v11];
  v9 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v9;
}

+ (id)queryOnConnection:(id)connection predicate:(id)predicate orderingProperties:(id)properties
{
  propertiesCopy = properties;
  predicateCopy = predicate;
  connectionCopy = connection;
  v11 = -[ASUSQLiteQueryDescriptor initWithEntityClass:memoryEntityClass:]([ASUSQLiteQueryDescriptor alloc], "initWithEntityClass:memoryEntityClass:", [self databaseEntityClass], self);
  [(ASUSQLiteQueryDescriptor *)v11 setOrderingProperties:propertiesCopy];

  [(ASUSQLiteQueryDescriptor *)v11 setPredicate:predicateCopy];
  v12 = [[ASUSQLiteQuery alloc] initOnConnection:connectionCopy descriptor:v11];

  return v12;
}

@end