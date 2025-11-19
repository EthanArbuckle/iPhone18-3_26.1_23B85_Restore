@interface SQLiteQuery
- (BOOL)createTemporaryTableWithName:(id)a3 properties:(id)a4;
- (BOOL)deleteAllEntities;
- (SQLiteQueryDescriptor)queryDescriptor;
- (id)_newSelectSQLWithProperties:(id)a3;
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

@implementation SQLiteQuery

- (id)initOnConnection:(id)a3 descriptor:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = SQLiteQuery;
  v9 = [(SQLiteQuery *)&v14 init];
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

- (id)copyEntityIdentifiers
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000081D4;
  v5[3] = &unk_100212E00;
  v3 = objc_alloc_init(NSMutableOrderedSet);
  v6 = v3;
  [(SQLiteQuery *)self enumeratePersistentIDsUsingBlock:v5];

  return v3;
}

- (int64_t)countOfEntities
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000082F0;
  v4[3] = &unk_100212E28;
  v4[4] = &v5;
  [(SQLiteQuery *)self enumeratePersistentIDsUsingBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
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
  v5[2] = sub_10000A9C8;
  v5[3] = &unk_100212E78;
  v5[4] = self;
  v5[5] = &v6;
  sub_1000064FC(connection, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)enumerateMemoryEntitiesUsingBlock:(id)a3
{
  v7 = a3;
  descriptor = self->_descriptor;
  if (!descriptor || (memoryEntityClass = descriptor->_memoryEntityClass) == 0)
  {
    memoryEntityClass = objc_opt_class();
  }

  v6 = [memoryEntityClass defaultProperties];
  [(SQLiteQuery *)self enumerateMemoryEntitiesWithProperties:v6 usingBlock:v7];
}

- (void)enumerateMemoryEntitiesWithProperties:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  descriptor = self->_descriptor;
  if (!descriptor || (memoryEntityClass = descriptor->_memoryEntityClass) == 0)
  {
    memoryEntityClass = objc_opt_class();
  }

  if ([v6 count])
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000086A4;
    v13[3] = &unk_100212EC8;
    v10 = v14;
    v14[0] = v7;
    v14[1] = memoryEntityClass;
    v11 = v7;
    [(SQLiteQuery *)self enumeratePersistentIDsAndProperties:v6 usingBlock:v13];
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100008624;
    v15[3] = &unk_100212EA0;
    v10 = v16;
    v16[0] = v7;
    v16[1] = memoryEntityClass;
    v12 = v7;
    [(SQLiteQuery *)self enumeratePersistentIDsUsingBlock:v15];
  }
}

- (void)enumeratePersistentIDsUsingBlock:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000087E0;
  v5[3] = &unk_100212EF0;
  v6 = a3;
  v4 = v6;
  [(SQLiteQuery *)self enumeratePersistentIDsAndProperties:0 usingBlock:v5];
}

- (void)enumeratePersistentIDsAndProperties:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SQLiteQuery *)self _newSelectSQLWithProperties:v6];
  connection = self->_connection;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000088E0;
  v12[3] = &unk_100212F40;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  sub_1000061F0(connection, v8, v12);
}

- (SQLiteQueryDescriptor)queryDescriptor
{
  v2 = [(SQLiteQueryDescriptor *)self->_descriptor copy];

  return v2;
}

- (void)applyBinding:(id)a3 atIndex:(int *)a4
{
  v11 = a3;
  descriptor = self->_descriptor;
  if (descriptor)
  {
    predicate = descriptor->_predicate;
  }

  else
  {
    predicate = 0;
  }

  [(SQLitePredicate *)predicate applyBinding:v11 atIndex:a4];
  v8 = self->_descriptor;
  if (v8)
  {
    limitCount = v8->_limitCount;
    if (limitCount)
    {
      [v11 bindInt64:limitCount atPosition:(*a4)++];
      v10 = self->_descriptor;
      if (v10)
      {
        if (v10->_offset)
        {
          [v11 bindInt64:? atPosition:?];
          ++*a4;
        }
      }
    }
  }
}

- (id)copySelectSQLWithProperties:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  descriptor = self->_descriptor;
  if (descriptor)
  {
    entityClass = descriptor->_entityClass;
  }

  else
  {
    entityClass = 0;
  }

  v8 = v4;
  sub_10000A4EC();
  v10 = [v9 countByEnumeratingWithState:0 objects:? count:?];
  if (v10)
  {
    v11 = v10;
    v12 = MEMORY[0];
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (MEMORY[0] != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = [(objc_class *)entityClass disambiguatedSQLForProperty:*(8 * i)];
        [v5 addObject:v14];
      }

      sub_10000A4EC();
      v11 = [v8 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v11);
  }

  v15 = [(SQLiteQueryDescriptor *)self->_descriptor _newSelectSQLWithProperties:v8 columns:v5];
  return v15;
}

- (BOOL)createTemporaryTableWithName:(id)a3 properties:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[NSMutableString alloc] initWithString:@"CREATE TEMPORARY TABLE "];
  v26 = v6;
  [v8 appendString:v6];
  [v8 appendString:@" AS "];
  v9 = [(SQLiteQueryDescriptor *)self->_descriptor copy];
  v11 = v9;
  if (v9)
  {
    objc_setProperty_nonatomic_copy(v9, v10, 0, 48);
    objc_setProperty_nonatomic_copy(v11, v12, 0, 56);
  }

  v13 = objc_alloc_init(NSMutableArray);
  descriptor = self->_descriptor;
  if (descriptor)
  {
    entityClass = descriptor->_entityClass;
  }

  else
  {
    entityClass = 0;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v16 = v7;
  v17 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v30;
    do
    {
      v20 = 0;
      do
      {
        if (*v30 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [(objc_class *)entityClass disambiguatedSQLForProperty:*(*(&v29 + 1) + 8 * v20)];
        [v13 addObject:v21];

        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v18);
  }

  v22 = [v11 _newSelectSQLWithProperties:v16 columns:v13];
  [v8 appendString:v22];
  [v8 appendString:@";"];
  connection = self->_connection;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10000A984;
  v27[3] = &unk_100212C70;
  v28 = v11;
  v24 = v11;
  LOBYTE(connection) = sub_1001ABB68(connection, v8, 0, v27);

  return connection;
}

- (id)_newSelectSQLWithProperties:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  descriptor = self->_descriptor;
  if (descriptor)
  {
    entityClass = descriptor->_entityClass;
  }

  else
  {
    entityClass = 0;
  }

  v8 = [(objc_class *)entityClass disambiguatedSQLForProperty:@"ROWID"];
  [v5 addObject:v8];

  v9 = v4;
  sub_10000A4EC();
  v11 = [v10 countByEnumeratingWithState:0 objects:? count:?];
  if (v11)
  {
    v12 = v11;
    v13 = MEMORY[0];
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (MEMORY[0] != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = [(objc_class *)entityClass disambiguatedSQLForProperty:*(8 * i)];
        [v5 addObject:v15];
      }

      sub_10000A4EC();
      v12 = [v9 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v12);
  }

  v16 = [(SQLiteQueryDescriptor *)self->_descriptor _newSelectSQLWithProperties:v9 columns:v5];
  return v16;
}

@end