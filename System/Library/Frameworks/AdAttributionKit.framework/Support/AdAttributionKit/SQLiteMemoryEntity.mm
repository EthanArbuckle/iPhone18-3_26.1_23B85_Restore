@interface SQLiteMemoryEntity
- (BOOL)isEqual:(id)equal;
- (SQLiteMemoryEntity)initWithDatabaseEntity:(id)entity properties:(id)properties;
- (SQLiteMemoryEntity)initWithDatabaseID:(int64_t)d propertyValues:(id)values externalPropertyValues:(id)propertyValues;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)reloadFromDatabaseEntity:(id)entity properties:(id)properties;
- (void)setValue:(id)value forExternalProperty:(id)property;
- (void)setValue:(id)value forProperty:(id)property;
- (void)setValues:(id *)values forExternalProperties:(const void *)properties count:(int64_t)count;
- (void)setValues:(id *)values forProperties:(const void *)properties count:(int64_t)count;
@end

@implementation SQLiteMemoryEntity

- (SQLiteMemoryEntity)initWithDatabaseID:(int64_t)d propertyValues:(id)values externalPropertyValues:(id)propertyValues
{
  valuesCopy = values;
  propertyValuesCopy = propertyValues;
  v19.receiver = self;
  v19.super_class = SQLiteMemoryEntity;
  v10 = [(SQLiteMemoryEntity *)&v19 init];
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

- (SQLiteMemoryEntity)initWithDatabaseEntity:(id)entity properties:(id)properties
{
  entityCopy = entity;
  propertiesCopy = properties;
  v8 = -[SQLiteMemoryEntity initWithDatabaseID:propertyValues:externalPropertyValues:](self, "initWithDatabaseID:propertyValues:externalPropertyValues:", [entityCopy persistentID], &__NSDictionary0__struct, &__NSDictionary0__struct);
  if (v8 && [propertiesCopy count])
  {
    [(SQLiteMemoryEntity *)v8 reloadFromDatabaseEntity:entityCopy properties:propertiesCopy];
  }

  return v8;
}

- (void)reloadFromDatabaseEntity:(id)entity properties:(id)properties
{
  v5 = [entity getValuesForProperties:properties];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100007088;
  v6[3] = &unk_100212DA0;
  v6[4] = self;
  [v5 enumerateKeysAndObjectsUsingBlock:v6];
}

- (void)setValue:(id)value forProperty:(id)property
{
  valueCopy = value;
  propertyCopy = property;
  v5 = valueCopy;
  [(SQLiteMemoryEntity *)self setValues:&valueCopy forProperties:&propertyCopy count:1];
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
  [(SQLiteMemoryEntity *)self setValues:&valueCopy forExternalProperties:&propertyCopy count:1];
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
  v6.super_class = SQLiteMemoryEntity;
  v3 = [(SQLiteMemoryEntity *)&v6 description];
  v4 = [NSString stringWithFormat:@"%@: %lld", v3, self->_databaseID];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class() && (v6 = -[SQLiteMemoryEntity databaseID](self, "databaseID"), v6 == [equalCopy databaseID]))
  {
    propertyValues = [(SQLiteMemoryEntity *)self propertyValues];
    propertyValues2 = [equalCopy propertyValues];
    if ([propertyValues isEqualToDictionary:propertyValues2])
    {
      externalPropertyValues = [(SQLiteMemoryEntity *)self externalPropertyValues];
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

@end