@interface AMSSQLiteMemoryEntity
+ (id)anyOnConnection:(id)connection predicate:(id)predicate;
+ (id)queryOnConnection:(id)connection predicate:(id)predicate orderingProperties:(id)properties;
- (AMSSQLiteMemoryEntity)init;
- (AMSSQLiteMemoryEntity)initWithDatabaseEntity:(id)entity properties:(id)properties;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)setValue:(id)value forExternalProperty:(id)property;
- (void)setValue:(id)value forProperty:(id)property;
- (void)setValues:(id *)values forExternalProperties:(const void *)properties count:(int64_t)count;
- (void)setValues:(id *)values forProperties:(const void *)properties count:(int64_t)count;
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

- (AMSSQLiteMemoryEntity)initWithDatabaseEntity:(id)entity properties:(id)properties
{
  entityCopy = entity;
  propertiesCopy = properties;
  v8 = [(AMSSQLiteMemoryEntity *)self init];
  v9 = v8;
  if (v8)
  {
    [(AMSSQLiteMemoryEntity *)v8 reloadFromDatabaseEntity:entityCopy properties:propertiesCopy];
    v9->_databaseID = [entityCopy persistentID];
  }

  return v9;
}

- (void)setValue:(id)value forProperty:(id)property
{
  valueCopy = value;
  propertyCopy = property;
  v5 = valueCopy;
  [(AMSSQLiteMemoryEntity *)self setValues:&valueCopy forProperties:&propertyCopy count:1];
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
  [(AMSSQLiteMemoryEntity *)self setValues:&valueCopy forExternalProperties:&propertyCopy count:1];
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
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = AMSSQLiteMemoryEntity;
  v4 = [(AMSSQLiteMemoryEntity *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: %lld", v4, self->_databaseID];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class() && (v6 = -[AMSSQLiteMemoryEntity databaseID](self, "databaseID"), v6 == [equalCopy databaseID]))
  {
    propertyValues = [(AMSSQLiteMemoryEntity *)self propertyValues];
    propertyValues2 = [equalCopy propertyValues];
    if ([propertyValues isEqualToDictionary:propertyValues2])
    {
      externalPropertyValues = [(AMSSQLiteMemoryEntity *)self externalPropertyValues];
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
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v4 + 8) = self->_databaseID;
  [*(v4 + 16) addEntriesFromDictionary:self->_propertyValues];
  [*(v4 + 24) addEntriesFromDictionary:self->_externalPropertyValues];
  return v4;
}

+ (id)anyOnConnection:(id)connection predicate:(id)predicate
{
  connectionCopy = connection;
  predicateCopy = predicate;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__62;
  v16 = __Block_byref_object_dispose__62;
  v17 = 0;
  v8 = [self queryOnConnection:connectionCopy predicate:predicateCopy];
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

+ (id)queryOnConnection:(id)connection predicate:(id)predicate orderingProperties:(id)properties
{
  propertiesCopy = properties;
  predicateCopy = predicate;
  connectionCopy = connection;
  v11 = objc_alloc_init(AMSSQLiteQueryDescriptor);
  -[AMSSQLiteQueryDescriptor setEntityClass:](v11, "setEntityClass:", [self databaseEntityClass]);
  [(AMSSQLiteQueryDescriptor *)v11 setMemoryEntityClass:self];
  [(AMSSQLiteQueryDescriptor *)v11 setOrderingProperties:propertiesCopy];

  [(AMSSQLiteQueryDescriptor *)v11 setPredicate:predicateCopy];
  v12 = [[AMSSQLiteQuery alloc] initOnConnection:connectionCopy descriptor:v11];

  return v12;
}

@end