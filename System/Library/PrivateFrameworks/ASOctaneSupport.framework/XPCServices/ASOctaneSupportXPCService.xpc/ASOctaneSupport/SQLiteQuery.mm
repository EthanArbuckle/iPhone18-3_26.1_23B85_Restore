@interface SQLiteQuery
- (BOOL)createTemporaryTableWithName:(id)name properties:(id)properties;
- (BOOL)deleteAllEntities;
- (SQLiteQueryDescriptor)queryDescriptor;
- (id)_newSelectSQLWithProperties:(id)properties;
- (id)copyEntityIdentifiers;
- (id)copySelectSQLWithProperties:(id)properties;
- (id)initOnConnection:(id)connection descriptor:(id)descriptor;
- (int64_t)countOfEntities;
- (void)applyBinding:(id)binding atIndex:(int *)index;
- (void)enumerateMemoryEntitiesUsingBlock:(id)block;
- (void)enumerateMemoryEntitiesWithProperties:(id)properties usingBlock:(id)block;
- (void)enumeratePersistentIDsAndProperties:(id)properties usingBlock:(id)block;
- (void)enumeratePersistentIDsUsingBlock:(id)block;
@end

@implementation SQLiteQuery

- (id)initOnConnection:(id)connection descriptor:(id)descriptor
{
  connectionCopy = connection;
  descriptorCopy = descriptor;
  v14.receiver = self;
  v14.super_class = SQLiteQuery;
  v9 = [(SQLiteQuery *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, connection);
    v11 = [descriptorCopy copy];
    descriptor = v10->_descriptor;
    v10->_descriptor = v11;
  }

  return v10;
}

- (void)applyBinding:(id)binding atIndex:(int *)index
{
  bindingCopy = binding;
  predicate = [(SQLiteQueryDescriptor *)self->_descriptor predicate];
  [predicate applyBinding:bindingCopy atIndex:index];

  limitCount = [(SQLiteQueryDescriptor *)self->_descriptor limitCount];
  if (limitCount)
  {
    [bindingCopy bindInt64:limitCount atPosition:(*index)++];
  }
}

- (id)copyEntityIdentifiers
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100008978;
  v5[3] = &unk_100278228;
  v3 = objc_alloc_init(NSMutableOrderedSet);
  v6 = v3;
  [(SQLiteQuery *)self enumeratePersistentIDsUsingBlock:v5];

  return v3;
}

- (id)copySelectSQLWithProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = objc_alloc_init(NSMutableArray);
  entityClass = [(SQLiteQueryDescriptor *)self->_descriptor entityClass];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = propertiesCopy;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(objc_class *)entityClass disambiguatedSQLForProperty:*(*(&v15 + 1) + 8 * v11), v15];
        [v5 addObject:v12];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = [(SQLiteQueryDescriptor *)self->_descriptor _newSelectSQLWithProperties:v7 columns:v5];
  return v13;
}

- (int64_t)countOfEntities
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100008BF0;
  v4[3] = &unk_100278250;
  v4[4] = &v5;
  [(SQLiteQuery *)self enumeratePersistentIDsUsingBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)createTemporaryTableWithName:(id)name properties:(id)properties
{
  nameCopy = name;
  propertiesCopy = properties;
  v8 = [[NSMutableString alloc] initWithString:@"CREATE TEMPORARY TABLE "];
  v22 = nameCopy;
  [v8 appendString:nameCopy];
  [v8 appendString:@" AS "];
  v9 = [(SQLiteQueryDescriptor *)self->_descriptor copy];
  [v9 setOrderingDirections:0];
  [v9 setOrderingProperties:0];
  v10 = objc_alloc_init(NSMutableArray);
  entityClass = [(SQLiteQueryDescriptor *)self->_descriptor entityClass];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = propertiesCopy;
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    do
    {
      v16 = 0;
      do
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [(objc_class *)entityClass disambiguatedSQLForProperty:*(*(&v25 + 1) + 8 * v16)];
        [v10 addObject:v17];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v14);
  }

  v18 = [v9 _newSelectSQLWithProperties:v12 columns:v10];
  [v8 appendString:v18];
  [v8 appendString:@";"];
  connection = self->_connection;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100008E6C;
  v23[3] = &unk_100278278;
  v24 = v9;
  v20 = v9;
  LOBYTE(connection) = [(SQLiteConnection *)connection executeStatement:v8 error:0 bindings:v23];

  return connection;
}

- (BOOL)deleteAllEntities
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  connection = self->_connection;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100008F90;
  v5[3] = &unk_1002782C8;
  v5[4] = self;
  v5[5] = &v6;
  [(SQLiteConnection *)connection performTransaction:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)enumerateMemoryEntitiesUsingBlock:(id)block
{
  descriptor = self->_descriptor;
  blockCopy = block;
  memoryEntityClass = [(SQLiteQueryDescriptor *)descriptor memoryEntityClass];
  if (!memoryEntityClass)
  {
    memoryEntityClass = objc_opt_class();
  }

  defaultProperties = [(objc_class *)memoryEntityClass defaultProperties];
  [(SQLiteQuery *)self enumerateMemoryEntitiesWithProperties:defaultProperties usingBlock:blockCopy];
}

- (void)enumerateMemoryEntitiesWithProperties:(id)properties usingBlock:(id)block
{
  propertiesCopy = properties;
  blockCopy = block;
  memoryEntityClass = [(SQLiteQueryDescriptor *)self->_descriptor memoryEntityClass];
  if (!memoryEntityClass)
  {
    memoryEntityClass = objc_opt_class();
  }

  if ([propertiesCopy count])
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100009308;
    v12[3] = &unk_100278318;
    v9 = v13;
    v13[0] = blockCopy;
    v13[1] = memoryEntityClass;
    v10 = blockCopy;
    [(SQLiteQuery *)self enumeratePersistentIDsAndProperties:propertiesCopy usingBlock:v12];
  }

  else
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100009288;
    v14[3] = &unk_1002782F0;
    v9 = v15;
    v15[0] = blockCopy;
    v15[1] = memoryEntityClass;
    v11 = blockCopy;
    [(SQLiteQuery *)self enumeratePersistentIDsUsingBlock:v14];
  }
}

- (void)enumeratePersistentIDsUsingBlock:(id)block
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100009444;
  v5[3] = &unk_100278340;
  blockCopy = block;
  v4 = blockCopy;
  [(SQLiteQuery *)self enumeratePersistentIDsAndProperties:0 usingBlock:v5];
}

- (void)enumeratePersistentIDsAndProperties:(id)properties usingBlock:(id)block
{
  propertiesCopy = properties;
  blockCopy = block;
  v8 = [(SQLiteQuery *)self _newSelectSQLWithProperties:propertiesCopy];
  connection = self->_connection;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100009544;
  v12[3] = &unk_1002783B8;
  v12[4] = self;
  v13 = propertiesCopy;
  v14 = blockCopy;
  v10 = blockCopy;
  v11 = propertiesCopy;
  [(SQLiteConnection *)connection executeQuery:v8 withResults:v12];
}

- (SQLiteQueryDescriptor)queryDescriptor
{
  v2 = [(SQLiteQueryDescriptor *)self->_descriptor copy];

  return v2;
}

- (id)_newSelectSQLWithProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = objc_alloc_init(NSMutableArray);
  entityClass = [(SQLiteQueryDescriptor *)self->_descriptor entityClass];
  v7 = [(objc_class *)entityClass disambiguatedSQLForProperty:@"ROWID"];
  [v5 addObject:v7];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = propertiesCopy;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(objc_class *)entityClass disambiguatedSQLForProperty:*(*(&v16 + 1) + 8 * v12), v16];
        [v5 addObject:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [(SQLiteQueryDescriptor *)self->_descriptor _newSelectSQLWithProperties:v8 columns:v5];
  return v14;
}

@end