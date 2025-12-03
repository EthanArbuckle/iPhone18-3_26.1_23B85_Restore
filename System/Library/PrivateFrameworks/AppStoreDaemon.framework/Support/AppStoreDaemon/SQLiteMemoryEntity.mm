@interface SQLiteMemoryEntity
- (BOOL)isEqual:(id)equal;
- (SQLiteMemoryEntity)initWithDatabaseEntity:(id)entity properties:(id)properties;
- (SQLiteMemoryEntity)initWithDatabaseID:(int64_t)d propertyValues:(id)values externalPropertyValues:(id)propertyValues;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
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
  if (v8)
  {
    v9 = [propertiesCopy copy];
    properties = v8->_properties;
    v8->_properties = v9;

    if ([propertiesCopy count])
    {
      sub_10023DF24(v8, entityCopy);
    }
  }

  return v8;
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
  if (v5 == objc_opt_class())
  {
    databaseID = [(SQLiteMemoryEntity *)self databaseID];
    if (databaseID == [equalCopy databaseID])
    {
      if (self)
      {
        propertyValues = self->_propertyValues;
      }

      else
      {
        propertyValues = 0;
      }

      v8 = propertyValues;
      if (equalCopy)
      {
        v9 = equalCopy[2];
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;
      if (![(NSMutableDictionary *)v8 isEqualToDictionary:v10])
      {
        v14 = 0;
        goto LABEL_15;
      }

      if (self)
      {
        externalPropertyValues = self->_externalPropertyValues;
        if (equalCopy)
        {
LABEL_10:
          v12 = equalCopy[3];
LABEL_11:
          v13 = externalPropertyValues;
          v14 = [(NSMutableDictionary *)v13 isEqualToDictionary:v12];

LABEL_15:
          goto LABEL_13;
        }
      }

      else
      {
        externalPropertyValues = 0;
        if (equalCopy)
        {
          goto LABEL_10;
        }
      }

      v12 = 0;
      goto LABEL_11;
    }
  }

  v14 = 0;
LABEL_13:

  return v14;
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