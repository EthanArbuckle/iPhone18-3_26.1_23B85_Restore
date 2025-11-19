@interface ASUSQLiteQuery
- (ASUSQLiteQueryDescriptor)queryDescriptor;
- (BOOL)createTemporaryTableWithName:(id)a3 properties:(id)a4;
- (BOOL)deleteAllEntities;
- (id)copyEntityIdentifiers;
- (id)copySelectSQLWithProperties:(id)a3;
- (id)initOnConnection:(id)a3 descriptor:(id)a4;
- (int64_t)countOfEntities;
- (void)applyBinding:(id)a3 atIndex:(int *)a4;
- (void)enumerateMemoryEntitiesUsingBlock:(id)a3;
- (void)enumerateMemoryEntitiesWithProperties:(id)a3 usingBlock:(id)a4;
- (void)enumeratePersistentIDsAndProperties:(id)a3 usingBlock:(id)a4;
- (void)enumeratePersistentIDsUsingBlock:(id)a3;
@end

@implementation ASUSQLiteQuery

- (id)initOnConnection:(id)a3 descriptor:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = ASUSQLiteQuery;
  v9 = [(ASUSQLiteQuery *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, a3);
    v11 = [v8 copy];
    descriptor = v10->_descriptor;
    v10->_descriptor = v11;
  }

  return v10;
}

- (void)applyBinding:(id)a3 atIndex:(int *)a4
{
  v8 = a3;
  v6 = [(ASUSQLiteQueryDescriptor *)self->_descriptor predicate];
  [v6 applyBinding:v8 atIndex:a4];

  v7 = [(ASUSQLiteQueryDescriptor *)self->_descriptor limitCount];
  if (v7)
  {
    [v8 bindInt64:v7 atPosition:(*a4)++];
  }
}

- (id)copyEntityIdentifiers
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001E61B8;
  v5[3] = &unk_1007569B0;
  v3 = objc_alloc_init(NSMutableOrderedSet);
  v6 = v3;
  [(ASUSQLiteQuery *)self enumeratePersistentIDsUsingBlock:v5];

  return v3;
}

- (id)copySelectSQLWithProperties:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = [(ASUSQLiteQueryDescriptor *)self->_descriptor entityClass];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v4;
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

        v12 = [(objc_class *)v6 disambiguatedSQLForProperty:*(*(&v15 + 1) + 8 * v11), v15];
        [v5 addObject:v12];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = [(ASUSQLiteQueryDescriptor *)self->_descriptor _newSelectSQLWithProperties:v7 columns:v5];
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
  v4[2] = sub_1001E6430;
  v4[3] = &unk_1007569D8;
  v4[4] = &v5;
  [(ASUSQLiteQuery *)self enumeratePersistentIDsUsingBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)createTemporaryTableWithName:(id)a3 properties:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[NSMutableString alloc] initWithString:@"CREATE TEMPORARY TABLE "];
  v22 = v6;
  [v8 appendString:v6];
  [v8 appendString:@" AS "];
  v9 = [(ASUSQLiteQueryDescriptor *)self->_descriptor copy];
  [v9 setOrderingDirections:0];
  [v9 setOrderingProperties:0];
  v10 = objc_alloc_init(NSMutableArray);
  v11 = [(ASUSQLiteQueryDescriptor *)self->_descriptor entityClass];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = v7;
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

        v17 = [(objc_class *)v11 disambiguatedSQLForProperty:*(*(&v25 + 1) + 8 * v16)];
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
  v23[2] = sub_1001E66AC;
  v23[3] = &unk_100756978;
  v24 = v9;
  v20 = v9;
  LOBYTE(connection) = [(ASUSQLiteConnection *)connection executeStatement:v8 error:0 bindings:v23];

  return connection;
}

- (BOOL)deleteAllEntities
{
  connection = self->_connection;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001E6780;
  v4[3] = &unk_100756778;
  v4[4] = self;
  return [(ASUSQLiteConnection *)connection performTransaction:v4 error:0];
}

- (void)enumerateMemoryEntitiesUsingBlock:(id)a3
{
  descriptor = self->_descriptor;
  v5 = a3;
  v6 = [(ASUSQLiteQueryDescriptor *)descriptor memoryEntityClass];
  if (!v6)
  {
    v6 = objc_opt_class();
  }

  v7 = [(objc_class *)v6 defaultProperties];
  [(ASUSQLiteQuery *)self enumerateMemoryEntitiesWithProperties:v7 usingBlock:v5];
}

- (void)enumerateMemoryEntitiesWithProperties:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ASUSQLiteQueryDescriptor *)self->_descriptor memoryEntityClass];
  if (!v8)
  {
    v8 = objc_opt_class();
  }

  if ([v6 count])
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001E6B4C;
    v12[3] = &unk_100756A50;
    v9 = v13;
    v13[0] = v7;
    v13[1] = v8;
    v10 = v7;
    [(ASUSQLiteQuery *)self enumeratePersistentIDsAndProperties:v6 usingBlock:v12];
  }

  else
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1001E6ACC;
    v14[3] = &unk_100756A28;
    v9 = v15;
    v15[0] = v7;
    v15[1] = v8;
    v11 = v7;
    [(ASUSQLiteQuery *)self enumeratePersistentIDsUsingBlock:v14];
  }
}

- (void)enumeratePersistentIDsUsingBlock:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001E6C88;
  v5[3] = &unk_100756A78;
  v6 = a3;
  v4 = v6;
  [(ASUSQLiteQuery *)self enumeratePersistentIDsAndProperties:0 usingBlock:v5];
}

- (void)enumeratePersistentIDsAndProperties:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1006710F8(&self->super.isa, v6);
  connection = self->_connection;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001E6D88;
  v12[3] = &unk_100756AC8;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  [(ASUSQLiteConnection *)connection executeQuery:v8 withResults:v12];
}

- (ASUSQLiteQueryDescriptor)queryDescriptor
{
  v2 = [(ASUSQLiteQueryDescriptor *)self->_descriptor copy];

  return v2;
}

@end