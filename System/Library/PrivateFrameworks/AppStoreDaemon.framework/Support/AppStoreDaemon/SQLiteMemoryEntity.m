@interface SQLiteMemoryEntity
- (BOOL)isEqual:(id)a3;
- (SQLiteMemoryEntity)initWithDatabaseEntity:(id)a3 properties:(id)a4;
- (SQLiteMemoryEntity)initWithDatabaseID:(int64_t)a3 propertyValues:(id)a4 externalPropertyValues:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation SQLiteMemoryEntity

- (SQLiteMemoryEntity)initWithDatabaseID:(int64_t)a3 propertyValues:(id)a4 externalPropertyValues:(id)a5
{
  v8 = a4;
  v9 = a5;
  v19.receiver = self;
  v19.super_class = SQLiteMemoryEntity;
  v10 = [(SQLiteMemoryEntity *)&v19 init];
  v11 = v10;
  if (v10)
  {
    v10->_databaseID = a3;
    if (v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = &__NSDictionary0__struct;
    }

    v13 = [v12 mutableCopy];
    propertyValues = v11->_propertyValues;
    v11->_propertyValues = v13;

    if (v9)
    {
      v15 = v9;
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

- (SQLiteMemoryEntity)initWithDatabaseEntity:(id)a3 properties:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[SQLiteMemoryEntity initWithDatabaseID:propertyValues:externalPropertyValues:](self, "initWithDatabaseID:propertyValues:externalPropertyValues:", [v6 persistentID], &__NSDictionary0__struct, &__NSDictionary0__struct);
  if (v8)
  {
    v9 = [v7 copy];
    properties = v8->_properties;
    v8->_properties = v9;

    if ([v7 count])
    {
      sub_10023DF24(v8, v6);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = [(SQLiteMemoryEntity *)self databaseID];
    if (v6 == [v4 databaseID])
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
      if (v4)
      {
        v9 = v4[2];
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
        if (v4)
        {
LABEL_10:
          v12 = v4[3];
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
        if (v4)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  databaseID = self->_databaseID;
  propertyValues = self->_propertyValues;
  externalPropertyValues = self->_externalPropertyValues;

  return [v4 initWithDatabaseID:databaseID propertyValues:propertyValues externalPropertyValues:externalPropertyValues];
}

@end