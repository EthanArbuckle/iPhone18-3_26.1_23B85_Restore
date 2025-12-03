@interface SQLiteQuery
- (BOOL)createTemporaryTableWithName:(id)name properties:(id)properties;
- (BOOL)deleteAllEntities;
- (SQLiteQueryDescriptor)queryDescriptor;
- (id)_newSelectSQLWithProperties:(id)properties;
- (id)allMemoryEntitiesWithProperties:(id)properties;
- (id)copyEntityIdentifiers;
- (id)copySelectSQLWithProperties:(id)properties;
- (id)firstMemoryEntityWithProperties:(id)properties;
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
  descriptor = self->_descriptor;
  if (descriptor)
  {
    predicate = descriptor->_predicate;
  }

  else
  {
    predicate = 0;
  }

  v11 = bindingCopy;
  [(SQLitePredicate *)predicate applyBinding:bindingCopy atIndex:index];
  v9 = self->_descriptor;
  if (v9)
  {
    limitCount = v9->_limitCount;
    if (limitCount)
    {
      [v11 bindInt64:limitCount atPosition:(*index)++];
    }
  }
}

- (id)copyEntityIdentifiers
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002D24CC;
  v5[3] = &unk_10051D840;
  v3 = objc_alloc_init(NSMutableOrderedSet);
  v6 = v3;
  [(SQLiteQuery *)self enumeratePersistentIDsUsingBlock:v5];

  return v3;
}

- (id)copySelectSQLWithProperties:(id)properties
{
  propertiesCopy = properties;
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

- (int64_t)countOfEntities
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1002D274C;
  v4[3] = &unk_1005217F0;
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
  v26 = nameCopy;
  [v8 appendString:nameCopy];
  [v8 appendString:@" AS "];
  v9 = [(SQLiteQueryDescriptor *)self->_descriptor copy];
  v11 = v9;
  if (v9)
  {
    objc_setProperty_nonatomic_copy(v9, v10, 0, 40);
    objc_setProperty_nonatomic_copy(v11, v12, 0, 48);
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
  v16 = propertiesCopy;
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
  v27[2] = sub_1002D29E0;
  v27[3] = &unk_10051B0F0;
  v28 = v11;
  v24 = v11;
  LOBYTE(connection) = sub_10022C810(connection, v8, 0, v27);

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
  v5[2] = sub_1002D2AEC;
  v5[3] = &unk_100521840;
  v5[4] = self;
  v5[5] = &v6;
  sub_10022CC88(connection, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)enumerateMemoryEntitiesUsingBlock:(id)block
{
  blockCopy = block;
  descriptor = self->_descriptor;
  if (!descriptor || (memoryEntityClass = descriptor->_memoryEntityClass) == 0)
  {
    memoryEntityClass = objc_opt_class();
  }

  defaultProperties = [memoryEntityClass defaultProperties];
  [(SQLiteQuery *)self enumerateMemoryEntitiesWithProperties:defaultProperties usingBlock:blockCopy];
}

- (void)enumerateMemoryEntitiesWithProperties:(id)properties usingBlock:(id)block
{
  propertiesCopy = properties;
  blockCopy = block;
  descriptor = self->_descriptor;
  if (!descriptor || (memoryEntityClass = descriptor->_memoryEntityClass) == 0)
  {
    memoryEntityClass = objc_opt_class();
  }

  if ([propertiesCopy count])
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1002D2E5C;
    v13[3] = &unk_100521890;
    v10 = v14;
    v14[0] = blockCopy;
    v14[1] = memoryEntityClass;
    v11 = blockCopy;
    [(SQLiteQuery *)self enumeratePersistentIDsAndProperties:propertiesCopy usingBlock:v13];
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1002D2DDC;
    v15[3] = &unk_100521868;
    v10 = v16;
    v16[0] = blockCopy;
    v16[1] = memoryEntityClass;
    v12 = blockCopy;
    [(SQLiteQuery *)self enumeratePersistentIDsUsingBlock:v15];
  }
}

- (void)enumeratePersistentIDsUsingBlock:(id)block
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002D2FA4;
  v5[3] = &unk_100521790;
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
  v12[2] = sub_1002D30A4;
  v12[3] = &unk_100521908;
  v12[4] = self;
  v13 = propertiesCopy;
  v14 = blockCopy;
  v10 = blockCopy;
  v11 = propertiesCopy;
  sub_10022C3C4(connection, v8, v12);
}

- (id)firstMemoryEntityWithProperties:(id)properties
{
  propertiesCopy = properties;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1002D34B0;
  v12 = sub_1002D34C0;
  v13 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002D34C8;
  v7[3] = &unk_10051B010;
  v7[4] = &v8;
  [(SQLiteQuery *)self enumerateMemoryEntitiesWithProperties:propertiesCopy usingBlock:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)allMemoryEntitiesWithProperties:(id)properties
{
  propertiesCopy = properties;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002D35D8;
  v8[3] = &unk_10051B038;
  v9 = objc_alloc_init(NSMutableArray);
  v5 = v9;
  [(SQLiteQuery *)self enumerateMemoryEntitiesWithProperties:propertiesCopy usingBlock:v8];

  v6 = [v5 copy];

  return v6;
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

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = propertiesCopy;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(objc_class *)entityClass disambiguatedSQLForProperty:*(*(&v17 + 1) + 8 * v13), v17];
        [v5 addObject:v14];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = [(SQLiteQueryDescriptor *)self->_descriptor _newSelectSQLWithProperties:v9 columns:v5];
  return v15;
}

@end