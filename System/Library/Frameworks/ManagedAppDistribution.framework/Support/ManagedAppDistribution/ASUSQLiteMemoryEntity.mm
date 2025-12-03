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
- (int64_t)integerValueForProperty:(id)property;
- (void)reloadFromDatabaseEntity:(id)entity properties:(id)properties;
- (void)setValue:(id)value forExternalProperty:(id)property;
- (void)setValue:(id)value forProperty:(id)property;
- (void)setValues:(id *)values forExternalProperties:(const void *)properties count:(int64_t)count;
- (void)setValues:(id *)values forProperties:(const void *)properties count:(int64_t)count;
@end

@implementation ASUSQLiteMemoryEntity

+ (id)anyOnConnection:(id)connection predicate:(id)predicate
{
  connectionCopy = connection;
  predicateCopy = predicate;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1001E7880;
  v16 = sub_1001E7890;
  v17 = 0;
  v8 = [self queryOnConnection:connectionCopy predicate:predicateCopy];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001E8188;
  v11[3] = &unk_100756B68;
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

- (ASUSQLiteMemoryEntity)initWithDatabaseID:(int64_t)d propertyValues:(id)values externalPropertyValues:(id)propertyValues
{
  valuesCopy = values;
  propertyValuesCopy = propertyValues;
  v19.receiver = self;
  v19.super_class = ASUSQLiteMemoryEntity;
  v10 = [(ASUSQLiteMemoryEntity *)&v19 init];
  v11 = v10;
  if (v10)
  {
    v10->_databaseID = d;
    if (valuesCopy)
    {
      v12 = valuesCopy;
    }

    else
    {
      v12 = &__NSDictionary0__struct;
    }

    v13 = [v12 mutableCopy];
    propertyValues = v11->_propertyValues;
    v11->_propertyValues = v13;

    if (propertyValuesCopy)
    {
      v15 = propertyValuesCopy;
    }

    else
    {
      v15 = &__NSDictionary0__struct;
    }

    v16 = [v15 mutableCopy];
    externalPropertyValues = v11->_externalPropertyValues;
    v11->_externalPropertyValues = v16;
  }

  return v11;
}

- (ASUSQLiteMemoryEntity)initWithDatabaseEntity:(id)entity properties:(id)properties
{
  entityCopy = entity;
  propertiesCopy = properties;
  v8 = -[ASUSQLiteMemoryEntity initWithDatabaseID:propertyValues:externalPropertyValues:](self, "initWithDatabaseID:propertyValues:externalPropertyValues:", [entityCopy persistentID], &__NSDictionary0__struct, &__NSDictionary0__struct);
  if (v8 && [propertiesCopy count])
  {
    [(ASUSQLiteMemoryEntity *)v8 reloadFromDatabaseEntity:entityCopy properties:propertiesCopy];
  }

  return v8;
}

- (void)reloadFromDatabaseEntity:(id)entity properties:(id)properties
{
  v5 = [entity getValuesForProperties:properties];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001EA770;
  v6[3] = &unk_100756C90;
  v6[4] = self;
  [v5 enumerateKeysAndObjectsUsingBlock:v6];
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

- (id)description
{
  v6.receiver = self;
  v6.super_class = ASUSQLiteMemoryEntity;
  v3 = [(ASUSQLiteMemoryEntity *)&v6 description];
  v4 = [NSString stringWithFormat:@"%@: %lld", v3, self->_databaseID];

  return v4;
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

@end