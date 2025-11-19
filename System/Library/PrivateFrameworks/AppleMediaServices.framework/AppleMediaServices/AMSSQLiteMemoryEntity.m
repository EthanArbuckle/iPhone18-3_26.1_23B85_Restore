@interface AMSSQLiteMemoryEntity
+ (id)anyOnConnection:(id)a3 predicate:(id)a4;
+ (id)queryOnConnection:(id)a3 predicate:(id)a4 orderingProperties:(id)a5;
- (AMSSQLiteMemoryEntity)init;
- (AMSSQLiteMemoryEntity)initWithDatabaseEntity:(id)a3 properties:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)setValue:(id)a3 forExternalProperty:(id)a4;
- (void)setValue:(id)a3 forProperty:(id)a4;
- (void)setValues:(id *)a3 forExternalProperties:(const void *)a4 count:(int64_t)a5;
- (void)setValues:(id *)a3 forProperties:(const void *)a4 count:(int64_t)a5;
@end

@implementation AMSSQLiteMemoryEntity

- (AMSSQLiteMemoryEntity)init
{
  v8.receiver = self;
  v8.super_class = AMSSQLiteMemoryEntity;
  v2 = [(AMSSQLiteMemoryEntity *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    propertyValues = v2->_propertyValues;
    v2->_propertyValues = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    externalPropertyValues = v2->_externalPropertyValues;
    v2->_externalPropertyValues = v5;
  }

  return v2;
}

- (AMSSQLiteMemoryEntity)initWithDatabaseEntity:(id)a3 properties:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AMSSQLiteMemoryEntity *)self init];
  v9 = v8;
  if (v8)
  {
    [(AMSSQLiteMemoryEntity *)v8 reloadFromDatabaseEntity:v6 properties:v7];
    v9->_databaseID = [v6 persistentID];
  }

  return v9;
}

- (void)setValue:(id)a3 forProperty:(id)a4
{
  v7 = a3;
  v8 = a4;
  v5 = v7;
  [(AMSSQLiteMemoryEntity *)self setValues:&v7 forProperties:&v8 count:1];
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
  [(AMSSQLiteMemoryEntity *)self setValues:&v7 forExternalProperties:&v8 count:1];
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
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = AMSSQLiteMemoryEntity;
  v4 = [(AMSSQLiteMemoryEntity *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: %lld", v4, self->_databaseID];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class() && (v6 = -[AMSSQLiteMemoryEntity databaseID](self, "databaseID"), v6 == [v4 databaseID]))
  {
    v7 = [(AMSSQLiteMemoryEntity *)self propertyValues];
    v8 = [v4 propertyValues];
    if ([v7 isEqualToDictionary:v8])
    {
      v9 = [(AMSSQLiteMemoryEntity *)self externalPropertyValues];
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
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v4 + 8) = self->_databaseID;
  [*(v4 + 16) addEntriesFromDictionary:self->_propertyValues];
  [*(v4 + 24) addEntriesFromDictionary:self->_externalPropertyValues];
  return v4;
}

+ (id)anyOnConnection:(id)a3 predicate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__62;
  v16 = __Block_byref_object_dispose__62;
  v17 = 0;
  v8 = [a1 queryOnConnection:v6 predicate:v7];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__AMSSQLiteMemoryEntity_AMSSQLiteQuery__anyOnConnection_predicate___block_invoke;
  v11[3] = &unk_1E73BC330;
  v11[4] = &v12;
  [v8 enumerateMemoryEntitiesUsingBlock:v11];
  v9 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v9;
}

+ (id)queryOnConnection:(id)a3 predicate:(id)a4 orderingProperties:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(AMSSQLiteQueryDescriptor);
  -[AMSSQLiteQueryDescriptor setEntityClass:](v11, "setEntityClass:", [a1 databaseEntityClass]);
  [(AMSSQLiteQueryDescriptor *)v11 setMemoryEntityClass:a1];
  [(AMSSQLiteQueryDescriptor *)v11 setOrderingProperties:v8];

  [(AMSSQLiteQueryDescriptor *)v11 setPredicate:v9];
  v12 = [[AMSSQLiteQuery alloc] initOnConnection:v10 descriptor:v11];

  return v12;
}

@end