@interface AMSSQLiteQuery
- (AMSSQLiteQueryDescriptor)queryDescriptor;
- (BOOL)createTemporaryTableWithName:(id)a3 properties:(id)a4;
- (BOOL)deleteAllEntities;
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

@implementation AMSSQLiteQuery

- (id)initOnConnection:(id)a3 descriptor:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = AMSSQLiteQuery;
  v9 = [(AMSSQLiteQuery *)&v14 init];
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
  v6 = [(AMSSQLiteQueryDescriptor *)self->_descriptor predicate];
  [v6 applyBinding:v8 atIndex:a4];

  v7 = [(AMSSQLiteQueryDescriptor *)self->_descriptor limitCount];
  if (v7)
  {
    [v8 bindInt64:v7 atPosition:(*a4)++];
  }
}

- (id)copyEntityIdentifiers
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__AMSSQLiteQuery_copyEntityIdentifiers__block_invoke;
  v6[3] = &unk_1E73BC1A0;
  v4 = v3;
  v7 = v4;
  [(AMSSQLiteQuery *)self enumeratePersistentIDsUsingBlock:v6];

  return v4;
}

void __39__AMSSQLiteQuery_copyEntityIdentifiers__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
  [v2 addObject:v3];
}

- (id)copySelectSQLWithProperties:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(AMSSQLiteQueryDescriptor *)self->_descriptor entityClass];
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

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = [(AMSSQLiteQueryDescriptor *)self->_descriptor _newSelectSQLWithProperties:v7 columns:v5];
  return v13;
}

- (int64_t)countOfEntities
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__AMSSQLiteQuery_countOfEntities__block_invoke;
  v4[3] = &unk_1E73BC1C8;
  v4[4] = &v5;
  [(AMSSQLiteQuery *)self enumeratePersistentIDsUsingBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)createTemporaryTableWithName:(id)a3 properties:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"CREATE TEMPORARY TABLE "];
  v22 = v6;
  [v8 appendString:v6];
  [v8 appendString:@" AS "];
  v9 = [(AMSSQLiteQueryDescriptor *)self->_descriptor copy];
  [v9 setOrderingDirections:0];
  [v9 setOrderingProperties:0];
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = [(AMSSQLiteQueryDescriptor *)self->_descriptor entityClass];
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

        ++v16;
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
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __58__AMSSQLiteQuery_createTemporaryTableWithName_properties___block_invoke;
  v23[3] = &unk_1E73B9520;
  v24 = v9;
  v20 = v9;
  LOBYTE(connection) = [(AMSSQLiteConnection *)connection executeStatement:v8 error:0 bindings:v23];

  return connection;
}

void __58__AMSSQLiteQuery_createTemporaryTableWithName_properties___block_invoke(uint64_t a1, void *a2)
{
  v5 = 1;
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 predicate];
  [v4 applyBinding:v3 atIndex:&v5];
}

- (BOOL)deleteAllEntities
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  connection = self->_connection;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__AMSSQLiteQuery_deleteAllEntities__block_invoke;
  v5[3] = &unk_1E73B9638;
  v5[4] = self;
  v5[5] = &v6;
  [(AMSSQLiteConnection *)connection performTransaction:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __35__AMSSQLiteQuery_deleteAllEntities__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) entityClass];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__AMSSQLiteQuery_deleteAllEntities__block_invoke_2;
  v4[3] = &unk_1E73BC1F0;
  v6 = v2;
  v5 = *(a1 + 32);
  [v5 enumeratePersistentIDsUsingBlock:v4];
  return *(*(*(a1 + 40) + 8) + 24);
}

void __35__AMSSQLiteQuery_deleteAllEntities__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [objc_alloc(*(a1 + 48)) initWithPersistentID:a2 onConnection:*(*(a1 + 32) + 8)];
  *(*(*(a1 + 40) + 8) + 24) = [v6 deleteFromDatabase];
  *a4 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
}

- (void)enumerateMemoryEntitiesUsingBlock:(id)a3
{
  descriptor = self->_descriptor;
  v5 = a3;
  v6 = [(AMSSQLiteQueryDescriptor *)descriptor memoryEntityClass];
  if (!v6)
  {
    v6 = objc_opt_class();
  }

  v7 = [(objc_class *)v6 defaultProperties];
  [(AMSSQLiteQuery *)self enumerateMemoryEntitiesWithProperties:v7 usingBlock:v5];
}

- (void)enumerateMemoryEntitiesWithProperties:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AMSSQLiteQueryDescriptor *)self->_descriptor memoryEntityClass];
  if (!v8)
  {
    v8 = objc_opt_class();
  }

  if ([v6 count])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __67__AMSSQLiteQuery_enumerateMemoryEntitiesWithProperties_usingBlock___block_invoke_2;
    v12[3] = &unk_1E73BC240;
    v9 = v13;
    v13[0] = v7;
    v13[1] = v8;
    v10 = v7;
    [(AMSSQLiteQuery *)self enumeratePersistentIDsAndProperties:v6 usingBlock:v12];
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __67__AMSSQLiteQuery_enumerateMemoryEntitiesWithProperties_usingBlock___block_invoke;
    v14[3] = &unk_1E73BC218;
    v9 = v15;
    v15[0] = v7;
    v15[1] = v8;
    v11 = v7;
    [(AMSSQLiteQuery *)self enumeratePersistentIDsUsingBlock:v14];
  }
}

void __67__AMSSQLiteQuery_enumerateMemoryEntitiesWithProperties_usingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(*(a1 + 40));
  [v4 setDatabaseID:a2];
  (*(*(a1 + 32) + 16))();
}

void __67__AMSSQLiteQuery_enumerateMemoryEntitiesWithProperties_usingBlock___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = a3;
  v7 = objc_alloc_init(v5);
  [v7 setDatabaseID:a2];
  [v7 setValuesWithDictionary:v6];

  (*(*(a1 + 32) + 16))();
}

- (void)enumeratePersistentIDsUsingBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__AMSSQLiteQuery_enumeratePersistentIDsUsingBlock___block_invoke;
  v6[3] = &unk_1E73BC268;
  v7 = v4;
  v5 = v4;
  [(AMSSQLiteQuery *)self enumeratePersistentIDsAndProperties:0 usingBlock:v6];
}

- (void)enumeratePersistentIDsAndProperties:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AMSSQLiteQuery *)self _newSelectSQLWithProperties:v6];
  connection = self->_connection;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__AMSSQLiteQuery_enumeratePersistentIDsAndProperties_usingBlock___block_invoke;
  v12[3] = &unk_1E73BC2B8;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  [(AMSSQLiteConnection *)connection executeQuery:v8 withResults:v12];
}

void __65__AMSSQLiteQuery_enumeratePersistentIDsAndProperties_usingBlock___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v14 = 1;
  [a1[4] applyBinding:v5 atIndex:&v14];
  v7 = [a1[5] count];
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__AMSSQLiteQuery_enumeratePersistentIDsAndProperties_usingBlock___block_invoke_2;
  v8[3] = &unk_1E73BC290;
  v12 = v7;
  v9 = a1[5];
  v10 = a1[6];
  v11 = v13;
  [v5 enumerateRowsUsingBlock:v8];

  _Block_object_dispose(v13, 8);
}

void __65__AMSSQLiteQuery_enumeratePersistentIDsAndProperties_usingBlock___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:a1[7]];
  v9 = v8;
  if (v5)
  {
    v10 = a1[4];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __65__AMSSQLiteQuery_enumeratePersistentIDsAndProperties_usingBlock___block_invoke_3;
    v18 = &unk_1E73BC040;
    v11 = v8;
    v19 = v11;
    v12 = v5;
    v20 = v12;
    [v10 enumerateObjectsUsingBlock:&v15];
    v13 = a1[5];
    v14 = [v12 int64ForColumnIndex:{0, v15, v16, v17, v18}];
    ++*(*(a1[6] + 8) + 24);
    (*(v13 + 16))(v13, v14, v11);
  }

  objc_autoreleasePoolPop(v7);
}

void __65__AMSSQLiteQuery_enumeratePersistentIDsAndProperties_usingBlock___block_invoke_3(uint64_t a1, void *a2, int a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = AMSSQLiteCopyFoundationValue(v5, (a3 + 1));
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

- (AMSSQLiteQueryDescriptor)queryDescriptor
{
  v2 = [(AMSSQLiteQueryDescriptor *)self->_descriptor copy];

  return v2;
}

- (id)_newSelectSQLWithProperties:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(AMSSQLiteQueryDescriptor *)self->_descriptor entityClass];
  v7 = [(objc_class *)v6 disambiguatedSQLForProperty:0x1F07384B8];
  [v5 addObject:v7];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v4;
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

        v13 = [(objc_class *)v6 disambiguatedSQLForProperty:*(*(&v16 + 1) + 8 * v12), v16];
        [v5 addObject:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [(AMSSQLiteQueryDescriptor *)self->_descriptor _newSelectSQLWithProperties:v8 columns:v5];
  return v14;
}

@end