@interface AMSSQLiteEntity
+ (BOOL)_insertValues:(id)a3 intoTable:(id)a4 withPersistentID:(int64_t)a5 onConnection:(id)a6;
+ (id)_aggregateValueForProperty:(id)a3 function:(id)a4 predicate:(id)a5 onConnection:(id)a6;
+ (id)anyOnConnection:(id)a3 predicate:(id)a4;
+ (id)disambiguatedSQLForProperty:(id)a3;
+ (id)queryOnConnection:(id)a3 predicate:(id)a4 orderingProperties:(id)a5;
- (AMSSQLiteEntity)initWithPersistentID:(int64_t)a3 onConnection:(id)a4;
- (AMSSQLiteEntity)initWithPropertyValues:(id)a3 onConnection:(id)a4;
- (BOOL)_deleteRowFromTable:(id)a3 usingColumn:(id)a4;
- (BOOL)deleteFromDatabase;
- (BOOL)existsInDatabase;
- (BOOL)setValue:(id)a3 forProperty:(id)a4;
- (BOOL)setValuesWithDictionary:(id)a3;
- (id)_copyTableClusteredValuesWithValues:(id)a3;
- (id)getValuesForProperties:(id)a3;
- (id)valueForProperty:(id)a3;
@end

@implementation AMSSQLiteEntity

- (AMSSQLiteEntity)initWithPersistentID:(int64_t)a3 onConnection:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = AMSSQLiteEntity;
  v8 = [(AMSSQLiteEntity *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_connection, a4);
    v9->_persistentID = a3;
  }

  return v9;
}

- (AMSSQLiteEntity)initWithPropertyValues:(id)a3 onConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKey:@"ROWID"];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 longLongValue];
  }

  else
  {
    v11 = CFUUIDCreate(0);
    v10 = *&CFUUIDGetUUIDBytes(v11);
    CFRelease(v11);
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v12 = [(AMSSQLiteEntity *)self _copyTableClusteredValuesWithValues:v6];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __55__AMSSQLiteEntity_initWithPropertyValues_onConnection___block_invoke;
  v18[3] = &unk_1E73BBFA0;
  v13 = self;
  v19 = v13;
  v14 = v12;
  v20 = v14;
  v23 = v10;
  v15 = v7;
  v21 = v15;
  v22 = &v24;
  [v15 performTransaction:v18];
  if ((v25[3] & 1) == 0)
  {

    v13 = 0;
  }

  v16 = [(AMSSQLiteEntity *)v13 initWithPersistentID:v10 onConnection:v15];

  _Block_object_dispose(&v24, 8);
  return v16;
}

uint64_t __55__AMSSQLiteEntity_initWithPropertyValues_onConnection___block_invoke(uint64_t a1)
{
  v2 = objc_opt_class();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__AMSSQLiteEntity_initWithPropertyValues_onConnection___block_invoke_2;
  v9[3] = &unk_1E73BBF78;
  v3 = *(a1 + 64);
  v12 = v2;
  v13 = v3;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v10 = v5;
  v11 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v9];
  v7 = *(*(*(a1 + 56) + 8) + 24);

  return v7;
}

uint64_t __55__AMSSQLiteEntity_initWithPropertyValues_onConnection___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 48) _insertValues:a3 intoTable:a2 withPersistentID:*(a1 + 56) onConnection:*(a1 + 32)];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

+ (id)disambiguatedSQLForProperty:(id)a3
{
  v4 = a3;
  v5 = [a1 joinClauseForProperty:v4];

  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = [a1 databaseTable];
    v6 = [v7 stringWithFormat:@"%@.%@", v8, v4];
  }

  return v6;
}

- (BOOL)deleteFromDatabase
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  connection = self->_connection;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__AMSSQLiteEntity_deleteFromDatabase__block_invoke;
  v5[3] = &unk_1E73BBFC8;
  v5[4] = self;
  v5[5] = &v6;
  [(AMSSQLiteConnection *)connection performTransaction:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __37__AMSSQLiteEntity_deleteFromDatabase__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() databaseTable];
  *(*(*(a1 + 40) + 8) + 24) = [v2 _deleteRowFromTable:v3 usingColumn:@"ROWID"];

  [objc_opt_class() foreignDatabaseTablesToDelete];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [objc_opt_class() foreignKeyColumnForTable:{v9, v15}];
        if (v10)
        {
          *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _deleteRowFromTable:v9 usingColumn:v10];
          if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
          {

            goto LABEL_12;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v11 = *(a1 + 32);
    v12 = *(v11 + 8);
    *(v11 + 8) = 0;

    v13 = *(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

- (BOOL)existsInDatabase
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() databaseTable];
  v5 = [v3 initWithFormat:@"SELECT 1 FROM %@ WHERE %@ = ? LIMIT 1;", v4, @"ROWID"];

  connection = self->_connection;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __35__AMSSQLiteEntity_existsInDatabase__block_invoke;
  v8[3] = &unk_1E73BBFF0;
  v8[4] = self;
  v8[5] = &v9;
  [(AMSSQLiteConnection *)connection executeQuery:v5 withResults:v8];
  LOBYTE(self) = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return self;
}

void __35__AMSSQLiteEntity_existsInDatabase__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  [v4 bindInt64:v3 atPosition:1];
  LOBYTE(v3) = [v4 hasRows];

  *(*(*(a1 + 40) + 8) + 24) = v3;
}

- (id)getValuesForProperties:(id)a3
{
  v38[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count] == 1 && (objc_msgSend(v4, "objectAtIndexedSubscript:", 0), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", @"ROWID"), v5, v6))
  {
    v37 = @"ROWID";
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_persistentID];
    v38[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
  }

  else
  {
    v9 = objc_opt_class();
    v7 = [v9 databaseTable];
    v10 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"SELECT "];
    v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __42__AMSSQLiteEntity_getValuesForProperties___block_invoke;
    v32[3] = &unk_1E73BC018;
    v35 = v9;
    v12 = v10;
    v33 = v12;
    v13 = v11;
    v34 = v13;
    [v4 enumerateObjectsUsingBlock:v32];
    [v12 appendString:@" FROM "];
    [v12 appendString:v7];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v29;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v28 + 1) + 8 * i);
          [v12 appendString:@" "];
          [v12 appendString:v19];
        }

        v16 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v16);
    }

    [v12 appendString:@" WHERE "];
    [v12 appendString:v7];
    [v12 appendString:@".ROWID = ?;"];
    v20 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
    connection = self->_connection;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __42__AMSSQLiteEntity_getValuesForProperties___block_invoke_2;
    v25[3] = &unk_1E73BC068;
    v25[4] = self;
    v26 = v4;
    v22 = v20;
    v27 = v22;
    [(AMSSQLiteConnection *)connection executeQuery:v12 withResults:v25];
    v23 = v27;
    v8 = v22;
  }

  return v8;
}

void __42__AMSSQLiteEntity_getValuesForProperties___block_invoke(id *a1, void *a2, uint64_t a3)
{
  v5 = a1[6];
  v6 = a2;
  v8 = [v5 disambiguatedSQLForProperty:v6];
  if (a3)
  {
    [a1[4] appendString:{@", "}];
  }

  [a1[4] appendString:v8];
  v7 = [a1[6] joinClauseForProperty:v6];

  if (v7)
  {
    [a1[5] addObject:v7];
  }
}

void __42__AMSSQLiteEntity_getValuesForProperties___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  [v4 bindInt64:v3 atPosition:1];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__AMSSQLiteEntity_getValuesForProperties___block_invoke_3;
  v5[3] = &unk_1E73B60F0;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  [v4 enumerateRowsUsingBlock:v5];
}

void __42__AMSSQLiteEntity_getValuesForProperties___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if (v5)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __42__AMSSQLiteEntity_getValuesForProperties___block_invoke_4;
    v9[3] = &unk_1E73BC040;
    v8 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v5;
    [v8 enumerateObjectsUsingBlock:v9];
  }

  objc_autoreleasePoolPop(v7);
}

void __42__AMSSQLiteEntity_getValuesForProperties___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = AMSSQLiteCopyFoundationValue(v5, a3);
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

- (BOOL)setValue:(id)a3 forProperty:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x1E695DF20]);
  v9 = v8;
  if (v6)
  {
    v10 = [v8 initWithObjectsAndKeys:{v6, v7, 0}];
  }

  else
  {
    v11 = [MEMORY[0x1E695DFB0] null];
    v10 = [v9 initWithObjectsAndKeys:{v11, v7, 0}];
  }

  v12 = [(AMSSQLiteEntity *)self setValuesWithDictionary:v10];

  return v12;
}

- (BOOL)setValuesWithDictionary:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v5 = objc_opt_class();
  v6 = [v5 databaseTable];
  connection = self->_connection;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __43__AMSSQLiteEntity_setValuesWithDictionary___block_invoke;
  v11[3] = &unk_1E73BC108;
  v11[4] = self;
  v8 = v4;
  v12 = v8;
  v15 = v5;
  v9 = v6;
  v13 = v9;
  v14 = &v16;
  [(AMSSQLiteConnection *)connection performTransaction:v11];
  LOBYTE(v5) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v5;
}

uint64_t __43__AMSSQLiteEntity_setValuesWithDictionary___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _copyTableClusteredValuesWithValues:*(a1 + 40)];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__AMSSQLiteEntity_setValuesWithDictionary___block_invoke_2;
  v7[3] = &unk_1E73BC0E0;
  v11 = *(a1 + 64);
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v8 = v3;
  v9 = v4;
  v10 = *(a1 + 56);
  [v2 enumerateKeysAndObjectsUsingBlock:v7];
  v5 = *(*(*(a1 + 56) + 8) + 24);

  return v5;
}

void __43__AMSSQLiteEntity_setValuesWithDictionary___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 56) foreignKeyColumnForTable:v7];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = @"ROWID";
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 1;
  if (([v7 isEqualToString:*(a1 + 32)] & 1) == 0)
  {
    v11 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"SELECT 1 FROM "];
    [v11 appendString:v7];
    [v11 appendString:@" WHERE "];
    [v11 appendString:v10];
    [v11 appendString:@" =  ? LIMIT 1;"];
    v12 = *(a1 + 40);
    v13 = *(v12 + 8);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __43__AMSSQLiteEntity_setValuesWithDictionary___block_invoke_3;
    v30[3] = &unk_1E73BBFF0;
    v30[4] = v12;
    v30[5] = &v31;
    [v13 executeQuery:v11 withResults:v30];
  }

  if (v32[3])
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"UPDATE "];
    [v15 appendString:v7];
    [v15 appendString:@" SET "];
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v29 = 0;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __43__AMSSQLiteEntity_setValuesWithDictionary___block_invoke_4;
    v24[3] = &unk_1E73BC090;
    v27 = v28;
    v16 = v15;
    v25 = v16;
    v17 = v14;
    v26 = v17;
    [v8 enumerateKeysAndObjectsUsingBlock:v24];
    [v16 appendString:@" WHERE "];
    [v16 appendString:v7];
    [v16 appendString:@"."];
    [v16 appendString:v10];
    [v16 appendString:@" = ?;"];
    v18 = *(*(a1 + 40) + 8);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __43__AMSSQLiteEntity_setValuesWithDictionary___block_invoke_5;
    v21[3] = &unk_1E73BC0B8;
    v19 = v17;
    v20 = *(a1 + 40);
    v22 = v19;
    v23 = v20;
    *(*(*(a1 + 48) + 8) + 24) = [v18 executeStatement:v16 error:0 bindings:v21];

    _Block_object_dispose(v28, 8);
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = [objc_opt_class() _insertValues:v8 intoTable:v7 withPersistentID:*(*(a1 + 40) + 16) onConnection:*(*(a1 + 40) + 8)];
  }

  *a4 = *(*(*(a1 + 48) + 8) + 24) ^ 1;
  _Block_object_dispose(&v31, 8);
}

void __43__AMSSQLiteEntity_setValuesWithDictionary___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  [v4 bindInt64:v3 atPosition:1];
  LOBYTE(v3) = [v4 hasRows];

  *(*(*(a1 + 40) + 8) + 24) = v3;
}

void __43__AMSSQLiteEntity_setValuesWithDictionary___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    [*(a1 + 32) appendString:{@", "}];
  }

  [*(a1 + 32) appendString:v6];
  [*(a1 + 32) appendString:@" = ?"];
  *(*(*(a1 + 48) + 8) + 24) = 1;
  [*(a1 + 40) addObject:v5];
}

void __43__AMSSQLiteEntity_setValuesWithDictionary___block_invoke_5(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    v8 = 1;
    do
    {
      v9 = 0;
      v10 = v8;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v8 = (v10 + 1);
        AMSSQLiteBindFoundationValue(v3, v10, *(*(&v11 + 1) + 8 * v9++));
        v10 = v8;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 1;
  }

  [v3 bindInt64:*(*(a1 + 40) + 16) atPosition:{v8, v11}];
}

- (id)valueForProperty:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v10 count:1];
  v7 = [(AMSSQLiteEntity *)self getValuesForProperties:v6, v10, v11];
  v8 = [v7 objectForKeyedSubscript:v5];

  return v8;
}

+ (BOOL)_insertValues:(id)a3 intoTable:(id)a4 withPersistentID:(int64_t)a5 onConnection:(id)a6
{
  v46 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"INSERT OR REPLACE INTO "];
  [v12 appendString:v10];
  objc_msgSend(v12, "appendString:", @" (");
  v13 = [a1 foreignKeyColumnForTable:v10];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = @"ROWID";
  }

  [v12 appendString:v15];
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  v40 = 0u;
  v16 = v9;
  v17 = [v16 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v41;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v41 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v40 + 1) + 8 * i);
        [v12 appendString:{@", "}];
        [v12 appendString:v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v18);
  }

  [v12 appendString:@") VALUES (?"];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v22 = v16;
  v23 = [v22 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v37;
    while (1)
    {
      if (*v37 != v25)
      {
        objc_enumerationMutation(v22);
      }

      [v12 appendString:{@", ?"}];
      if (!--v24)
      {
        v24 = [v22 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (!v24)
        {
          break;
        }
      }
    }
  }

  [v12 appendString:@";"]);
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __73__AMSSQLiteEntity__insertValues_intoTable_withPersistentID_onConnection___block_invoke;
  v32[3] = &unk_1E73B9660;
  v34 = a5;
  v35 = 0;
  v26 = v22;
  v33 = v26;
  v27 = [v11 executeStatement:v12 error:&v35 bindings:v32];
  v28 = v35;
  if (v28)
  {
    v29 = objc_opt_class();
    NSLog(&cfstr_PublicError.isa, v29, v28);
  }

  return v27;
}

void __73__AMSSQLiteEntity__insertValues_intoTable_withPersistentID_onConnection___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [v3 bindInt64:*(a1 + 40) atPosition:1];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    v8 = 2;
    do
    {
      v9 = 0;
      v10 = v8;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v8 = (v10 + 1);
        v11 = [*(a1 + 32) objectForKeyedSubscript:{*(*(&v12 + 1) + 8 * v9), v12}];
        AMSSQLiteBindFoundationValue(v3, v10, v11);

        ++v9;
        v10 = v8;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (id)_copyTableClusteredValuesWithValues:(id)a3
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = objc_opt_class();
  v7 = [v6 databaseTable];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__AMSSQLiteEntity__copyTableClusteredValuesWithValues___block_invoke;
  v13[3] = &unk_1E73BC130;
  v16 = v6;
  v14 = v7;
  v8 = v5;
  v15 = v8;
  v9 = v7;
  [v4 enumerateKeysAndObjectsUsingBlock:v13];

  v10 = v15;
  v11 = v8;

  return v11;
}

void __55__AMSSQLiteEntity__copyTableClusteredValuesWithValues___block_invoke(id *a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (([v10 isEqualToString:@"ROWID"] & 1) == 0)
  {
    v6 = [a1[6] foreignDatabaseTableForProperty:v10];
    if (v6)
    {
      v7 = v6;
      v8 = [a1[6] foreignDatabaseColumnForProperty:v10];
    }

    else
    {
      v8 = v10;
      v7 = a1[4];
    }

    v9 = [a1[5] objectForKey:v7];
    if (!v9)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [a1[5] setObject:v9 forKey:v7];
    }

    [v9 setObject:v5 forKey:v8];
  }
}

- (BOOL)_deleteRowFromTable:(id)a3 usingColumn:(id)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithFormat:@"DELETE FROM %@ WHERE %@ = ?;", v8, v7];

  connection = self->_connection;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__AMSSQLiteEntity__deleteRowFromTable_usingColumn___block_invoke;
  v12[3] = &unk_1E73B9520;
  v12[4] = self;
  LOBYTE(v8) = [(AMSSQLiteConnection *)connection executeStatement:v9 error:0 bindings:v12];

  return v8;
}

+ (id)anyOnConnection:(id)a3 predicate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__62;
  v20 = __Block_byref_object_dispose__62;
  v21 = 0;
  v8 = [a1 queryOnConnection:v6 predicate:v7];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__AMSSQLiteEntity_AMSSQLiteQueryAdditions__anyOnConnection_predicate___block_invoke;
  v12[3] = &unk_1E73BC2E0;
  v14 = &v16;
  v15 = a1;
  v9 = v6;
  v13 = v9;
  [v8 enumeratePersistentIDsUsingBlock:v12];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

void __70__AMSSQLiteEntity_AMSSQLiteQueryAdditions__anyOnConnection_predicate___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [objc_alloc(*(a1 + 48)) initWithPersistentID:a2 onConnection:*(a1 + 32)];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  *a4 = 1;
}

+ (id)queryOnConnection:(id)a3 predicate:(id)a4 orderingProperties:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(AMSSQLiteQueryDescriptor);
  [(AMSSQLiteQueryDescriptor *)v11 setEntityClass:a1];
  -[AMSSQLiteQueryDescriptor setMemoryEntityClass:](v11, "setMemoryEntityClass:", [a1 memoryEntityClass]);
  [(AMSSQLiteQueryDescriptor *)v11 setOrderingProperties:v8];

  [(AMSSQLiteQueryDescriptor *)v11 setPredicate:v9];
  v12 = [[AMSSQLiteQuery alloc] initOnConnection:v10 descriptor:v11];

  return v12;
}

+ (id)_aggregateValueForProperty:(id)a3 function:(id)a4 predicate:(id)a5 onConnection:(id)a6
{
  v33[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__62;
  v31 = __Block_byref_object_dispose__62;
  v32 = 0;
  v14 = objc_alloc_init(AMSSQLiteQueryDescriptor);
  [(AMSSQLiteQueryDescriptor *)v14 setEntityClass:a1];
  [(AMSSQLiteQueryDescriptor *)v14 setPredicate:v12];
  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  v16 = [a1 disambiguatedSQLForProperty:v10];
  v17 = [v15 initWithFormat:@"%@(%@)", v11, v16];

  v33[0] = v10;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  v19 = [MEMORY[0x1E695DEC8] arrayWithObject:v17];
  v20 = [(AMSSQLiteQueryDescriptor *)v14 _newSelectSQLWithProperties:v18 columns:v19];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __103__AMSSQLiteEntity_AMSSQLiteQueryAdditions___aggregateValueForProperty_function_predicate_onConnection___block_invoke;
  v24[3] = &unk_1E73BBFF0;
  v21 = v14;
  v25 = v21;
  v26 = &v27;
  [v13 executeQuery:v20 withResults:v24];
  v22 = v28[5];

  _Block_object_dispose(&v27, 8);

  return v22;
}

void __103__AMSSQLiteEntity_AMSSQLiteQueryAdditions___aggregateValueForProperty_function_predicate_onConnection___block_invoke(uint64_t a1, void *a2)
{
  v7 = 1;
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 predicate];
  [v5 applyBinding:v4 atIndex:&v7];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __103__AMSSQLiteEntity_AMSSQLiteQueryAdditions___aggregateValueForProperty_function_predicate_onConnection___block_invoke_2;
  v6[3] = &unk_1E73BC308;
  v6[4] = *(a1 + 40);
  [v4 enumerateRowsUsingBlock:v6];
}

void __103__AMSSQLiteEntity_AMSSQLiteQueryAdditions___aggregateValueForProperty_function_predicate_onConnection___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = AMSSQLiteCopyFoundationValue(a2, 0);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  *a4 = 1;
}

@end