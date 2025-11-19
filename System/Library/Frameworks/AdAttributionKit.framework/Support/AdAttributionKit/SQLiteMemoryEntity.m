@interface SQLiteMemoryEntity
- (BOOL)isEqual:(id)a3;
- (SQLiteMemoryEntity)initWithDatabaseEntity:(id)a3 properties:(id)a4;
- (SQLiteMemoryEntity)initWithDatabaseID:(int64_t)a3 propertyValues:(id)a4 externalPropertyValues:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)reloadFromDatabaseEntity:(id)a3 properties:(id)a4;
- (void)setValue:(id)a3 forExternalProperty:(id)a4;
- (void)setValue:(id)a3 forProperty:(id)a4;
- (void)setValues:(id *)a3 forExternalProperties:(const void *)a4 count:(int64_t)a5;
- (void)setValues:(id *)a3 forProperties:(const void *)a4 count:(int64_t)a5;
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
  if (v8 && [v7 count])
  {
    [(SQLiteMemoryEntity *)v8 reloadFromDatabaseEntity:v6 properties:v7];
  }

  return v8;
}

- (void)reloadFromDatabaseEntity:(id)a3 properties:(id)a4
{
  v5 = [a3 getValuesForProperties:a4];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100007088;
  v6[3] = &unk_100212DA0;
  v6[4] = self;
  [v5 enumerateKeysAndObjectsUsingBlock:v6];
}

- (void)setValue:(id)a3 forProperty:(id)a4
{
  v7 = a3;
  v8 = a4;
  v5 = v7;
  [(SQLiteMemoryEntity *)self setValues:&v7 forProperties:&v8 count:1];
  v6 = v7;
}

- (void)setValues:(id *)a3 forProperties:(const void *)a4 count:(int64_t)a5
{
  if (a5 >= 1)
  {
    v5 = a5;
    do
    {
      propertyValues = self->_propertyValues;
      if (*a3)
      {
        [(NSMutableDictionary *)propertyValues setObject:*a3 forKey:*a4];
      }

      else
      {
        [(NSMutableDictionary *)propertyValues removeObjectForKey:*a4];
      }

      ++a4;
      ++a3;
      --v5;
    }

    while (v5);
  }
}

- (void)setValue:(id)a3 forExternalProperty:(id)a4
{
  v7 = a3;
  v8 = a4;
  v5 = v7;
  [(SQLiteMemoryEntity *)self setValues:&v7 forExternalProperties:&v8 count:1];
  v6 = v7;
}

- (void)setValues:(id *)a3 forExternalProperties:(const void *)a4 count:(int64_t)a5
{
  if (a5 >= 1)
  {
    v5 = a5;
    do
    {
      externalPropertyValues = self->_externalPropertyValues;
      if (*a3)
      {
        [(NSMutableDictionary *)externalPropertyValues setObject:*a3 forKey:*a4];
      }

      else
      {
        [(NSMutableDictionary *)externalPropertyValues removeObjectForKey:*a4];
      }

      ++a4;
      ++a3;
      --v5;
    }

    while (v5);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class() && (v6 = -[SQLiteMemoryEntity databaseID](self, "databaseID"), v6 == [v4 databaseID]))
  {
    v7 = [(SQLiteMemoryEntity *)self propertyValues];
    v8 = [v4 propertyValues];
    if ([v7 isEqualToDictionary:v8])
    {
      v9 = [(SQLiteMemoryEntity *)self externalPropertyValues];
      v10 = [v4 externalPropertyValues];
      v11 = [v9 isEqualToDictionary:v10];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  databaseID = self->_databaseID;
  propertyValues = self->_propertyValues;
  externalPropertyValues = self->_externalPropertyValues;

  return [v4 initWithDatabaseID:databaseID propertyValues:propertyValues externalPropertyValues:externalPropertyValues];
}

@end