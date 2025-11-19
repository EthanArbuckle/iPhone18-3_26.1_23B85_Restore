@interface ASUSQLiteEntity
+ (id)_aggregateValueForProperty:(void *)a3 function:(void *)a4 predicate:(void *)a5 onConnection:;
+ (id)allOnConnection:(id)a3 predicate:(id)a4;
+ (id)anyOnConnection:(id)a3 predicate:(id)a4;
+ (id)disambiguatedSQLForProperty:(id)a3;
+ (id)memoryEntityForPersistentID:(int64_t)a3 withProperties:(id)a4 usingConnection:(id)a5;
+ (id)queryOnConnection:(id)a3 predicate:(id)a4 orderingProperties:(id)a5 orderingDirections:(id)a6 entityClass:(Class)a7;
+ (id)sumForProperty:(id)a3 predicate:(id)a4 onConnection:(id)a5;
+ (uint64_t)_insertValues:(void *)a3 intoTable:(uint64_t)a4 withPersistentID:(void *)a5 onConnection:;
- (ASUSQLiteEntity)initWithPersistentID:(int64_t)a3 onConnection:(id)a4;
- (ASUSQLiteEntity)initWithPropertyValues:(id)a3 onConnection:(id)a4;
- (BOOL)BOOLValueForProperty:(id)a3;
- (BOOL)deleteFromDatabase;
- (BOOL)existsInDatabase;
- (BOOL)setValue:(id)a3 forProperty:(id)a4;
- (BOOL)setValuesWithDictionary:(id)a3;
- (id)_copyTableClusteredValuesWithValues:(uint64_t)a1;
- (id)dictValueForProperty:(id)a3;
- (id)errorValueForProperty:(id)a3;
- (id)getValuesForProperties:(id)a3;
- (id)numberValueForProperty:(id)a3;
- (id)stringValueForProperty:(id)a3;
- (id)urlValueForProperty:(id)a3;
- (id)uuidValueForProperty:(id)a3;
- (id)valueForProperty:(id)a3;
- (int64_t)integerValueForProperty:(id)a3;
- (uint64_t)_deleteRowFromTable:(void *)a3 usingColumn:;
@end

@implementation ASUSQLiteEntity

+ (id)memoryEntityForPersistentID:(int64_t)a3 withProperties:(id)a4 usingConnection:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a1 memoryEntityClass];
  v11 = v10;
  if (!v8)
  {
    v8 = [(objc_class *)v10 defaultProperties];
  }

  v12 = [[a1 alloc] initWithPersistentID:a3 onConnection:v9];

  v13 = [[v11 alloc] initWithDatabaseEntity:v12 properties:v8];

  return v13;
}

- (ASUSQLiteEntity)initWithPersistentID:(int64_t)a3 onConnection:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ASUSQLiteEntity;
  v8 = [(ASUSQLiteEntity *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_connection, a4);
    v9->_persistentID = a3;
  }

  return v9;
}

- (ASUSQLiteEntity)initWithPropertyValues:(id)a3 onConnection:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectForKey:@"ROWID"];
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

  v12 = [(ASUSQLiteEntity *)self _copyTableClusteredValuesWithValues:v7];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __55__ASUSQLiteEntity_initWithPropertyValues_onConnection___block_invoke;
  v17[3] = &unk_278C978C0;
  v19 = v6;
  v20 = v10;
  v18 = v12;
  v13 = v6;
  v14 = v12;
  if (([v13 performTransaction:v17 error:0] & 1) == 0)
  {

    self = 0;
  }

  v15 = [(ASUSQLiteEntity *)self initWithPersistentID:v10 onConnection:v13];

  return v15;
}

- (id)_copyTableClusteredValuesWithValues:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v2 = MEMORY[0x277CBEB38];
  v3 = a2;
  v4 = objc_alloc_init(v2);
  v5 = objc_opt_class();
  v6 = [v5 databaseTable];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__ASUSQLiteEntity__copyTableClusteredValuesWithValues___block_invoke;
  v12[3] = &unk_278C97AC0;
  v15 = v5;
  v13 = v6;
  v7 = v4;
  v14 = v7;
  v8 = v6;
  [v3 enumerateKeysAndObjectsUsingBlock:v12];

  v9 = v14;
  v10 = v7;

  return v10;
}

uint64_t __55__ASUSQLiteEntity_initWithPropertyValues_onConnection___block_invoke(void *a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__ASUSQLiteEntity_initWithPropertyValues_onConnection___block_invoke_2;
  v5[3] = &unk_278C97898;
  v2 = a1[4];
  v1 = a1[5];
  v8 = a1[6];
  v6 = v1;
  v7 = &v9;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];
  v3 = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return v3;
}

uint64_t __55__ASUSQLiteEntity_initWithPropertyValues_onConnection___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  result = [ASUSQLiteEntity _insertValues:a3 intoTable:a2 withPersistentID:*(a1 + 48) onConnection:*(a1 + 32)];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

+ (uint64_t)_insertValues:(void *)a3 intoTable:(uint64_t)a4 withPersistentID:(void *)a5 onConnection:
{
  v52 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a5;
  v10 = objc_opt_self();
  v11 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"INSERT OR REPLACE INTO "];
  [v11 appendString:v8];
  objc_msgSend(v11, "appendString:", @" (");
  v12 = [v10 foreignKeyColumnForTable:v8];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = @"ROWID";
  }

  [v11 appendString:v14];
  v44 = 0u;
  v45 = 0u;
  v43 = 0u;
  v42 = 0u;
  v15 = v7;
  v16 = [v15 countByEnumeratingWithState:&v42 objects:v51 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v43;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v43 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v42 + 1) + 8 * i);
        [v11 appendString:{@", "}];
        [v11 appendString:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v42 objects:v51 count:16];
    }

    while (v17);
  }

  [v11 appendString:@") VALUES (?"];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v21 = v15;
  v22 = [v21 countByEnumeratingWithState:&v38 objects:v50 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v39;
    while (1)
    {
      if (*v39 != v24)
      {
        objc_enumerationMutation(v21);
      }

      [v11 appendString:{@", ?"}];
      if (!--v23)
      {
        v23 = [v21 countByEnumeratingWithState:&v38 objects:v50 count:16];
        if (!v23)
        {
          break;
        }
      }
    }
  }

  [v11 appendString:@";"]);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __73__ASUSQLiteEntity__insertValues_intoTable_withPersistentID_onConnection___block_invoke;
  v34[3] = &unk_278C97A98;
  v36 = a4;
  v37 = 0;
  v25 = v21;
  v35 = v25;
  v26 = [v9 executeStatement:v11 error:&v37 bindings:v34];
  v27 = v37;
  if (v27)
  {
    v28 = ASULogHandleForCategory(1);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v31 = objc_opt_class();
      *buf = 138543618;
      v47 = v31;
      v48 = 2112;
      v49 = v27;
      v32 = v31;
      _os_log_error_impl(&dword_2400F8000, v28, OS_LOG_TYPE_ERROR, "[%{public}@] Error: %@", buf, 0x16u);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
  return v26;
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
    v7 = MEMORY[0x277CCACA8];
    v8 = [a1 databaseTable];
    v6 = [v7 stringWithFormat:@"%@.%@", v8, v4];
  }

  return v6;
}

- (BOOL)deleteFromDatabase
{
  connection = self->_connection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __37__ASUSQLiteEntity_deleteFromDatabase__block_invoke;
  v9[3] = &unk_278C978E8;
  v9[4] = self;
  v4 = [(ASUSQLiteConnection *)connection performTransaction:v9 error:0];
  if (v4)
  {
    v5 = [(ASUSQLiteEntity *)self persistentID];
    v6 = dispatch_get_global_queue(21, 0);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __37__ASUSQLiteEntity_deleteFromDatabase__block_invoke_2;
    v8[3] = &__block_descriptor_40_e5_v8__0l;
    v8[4] = v5;
    dispatch_async(v6, v8);
  }

  return v4;
}

uint64_t __37__ASUSQLiteEntity_deleteFromDatabase__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() databaseTable];
  v4 = [(ASUSQLiteEntity *)v2 _deleteRowFromTable:v3 usingColumn:@"ROWID"];

  v5 = *(a1 + 32);
  [objc_opt_class() foreignDatabaseTablesToDelete];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v22 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        v12 = *(a1 + 32);
        v13 = [objc_opt_class() foreignKeyColumnForTable:{v11, v19}];
        if (v13)
        {
          if (([(ASUSQLiteEntity *)*(a1 + 32) _deleteRowFromTable:v11 usingColumn:v13]& 1) == 0)
          {

            v16 = 0;
            v15 = v6;
            goto LABEL_14;
          }

          v4 = 1;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  if (v4)
  {
    v14 = *(a1 + 32);
    v15 = *(v14 + 8);
    *(v14 + 8) = 0;
    v16 = 1;
LABEL_14:
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (uint64_t)_deleteRowFromTable:(void *)a3 usingColumn:
{
  v3 = a1;
  if (a1)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = a3;
    v7 = a2;
    v8 = [[v5 alloc] initWithFormat:@"DELETE FROM %@ WHERE %@ = ?;", v7, v6];

    v9 = *(v3 + 8);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __51__ASUSQLiteEntity__deleteRowFromTable_usingColumn___block_invoke;
    v11[3] = &unk_278C97AE8;
    v11[4] = v3;
    v3 = [v9 executeStatement:v8 error:0 bindings:v11];
  }

  return v3;
}

void __37__ASUSQLiteEntity_deleteFromDatabase__block_invoke_2(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = @"ASUSQLiteUserInfoKeyPersistentID";
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a1 + 32)];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 postNotificationName:@"ASUSQLiteDidDeleteEntityNotification" object:0 userInfo:v4];

  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)existsInDatabase
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [objc_opt_class() databaseTable];
  v5 = [v3 initWithFormat:@"SELECT 1 FROM %@ WHERE %@ = ? LIMIT 1;", v4, @"ROWID"];

  connection = self->_connection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__ASUSQLiteEntity_existsInDatabase__block_invoke;
  v8[3] = &unk_278C97930;
  v8[4] = self;
  v8[5] = &v9;
  [(ASUSQLiteConnection *)connection executeQuery:v5 withResults:v8];
  LOBYTE(self) = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return self;
}

void __35__ASUSQLiteEntity_existsInDatabase__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  [v4 bindInt64:v3 atPosition:1];
  LOBYTE(v3) = [v4 hasRows];

  *(*(*(a1 + 40) + 8) + 24) = v3;
}

- (id)getValuesForProperties:(id)a3
{
  v39[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count] == 1 && (objc_msgSend(v4, "objectAtIndexedSubscript:", 0), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", @"ROWID"), v5, v6))
  {
    v38 = @"ROWID";
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_persistentID];
    v39[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
  }

  else
  {
    v9 = objc_opt_class();
    v7 = [v9 databaseTable];
    v10 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"SELECT "];
    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __42__ASUSQLiteEntity_getValuesForProperties___block_invoke;
    v33[3] = &unk_278C97958;
    v36 = v9;
    v12 = v10;
    v34 = v12;
    v13 = v11;
    v35 = v13;
    [v4 enumerateObjectsUsingBlock:v33];
    [v12 appendString:@" FROM "];
    [v12 appendString:v7];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v30;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v29 + 1) + 8 * i);
          [v12 appendString:@" "];
          [v12 appendString:v19];
        }

        v16 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v16);
    }

    [v12 appendString:@" WHERE "];
    [v12 appendString:v7];
    [v12 appendString:@".ROWID = ?;"];
    v20 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
    connection = self->_connection;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __42__ASUSQLiteEntity_getValuesForProperties___block_invoke_2;
    v26[3] = &unk_278C979D0;
    v26[4] = self;
    v27 = v4;
    v22 = v20;
    v28 = v22;
    [(ASUSQLiteConnection *)connection executeQuery:v12 withResults:v26];
    v23 = v28;
    v8 = v22;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v8;
}

void __42__ASUSQLiteEntity_getValuesForProperties___block_invoke(id *a1, void *a2, uint64_t a3)
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

void __42__ASUSQLiteEntity_getValuesForProperties___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  [v4 bindInt64:v3 atPosition:1];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__ASUSQLiteEntity_getValuesForProperties___block_invoke_3;
  v5[3] = &unk_278C979A8;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  [v4 enumerateRowsUsingBlock:v5];
}

void __42__ASUSQLiteEntity_getValuesForProperties___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if (v5)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __42__ASUSQLiteEntity_getValuesForProperties___block_invoke_4;
    v9[3] = &unk_278C97980;
    v8 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v5;
    [v8 enumerateObjectsUsingBlock:v9];
  }

  objc_autoreleasePoolPop(v7);
}

void __42__ASUSQLiteEntity_getValuesForProperties___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = ASUSQLiteCopyFoundationValue(v5, a3);
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

- (BOOL)setValue:(id)a3 forProperty:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x277CBEAC0]);
  v9 = v8;
  if (v6)
  {
    v10 = [v8 initWithObjectsAndKeys:{v6, v7, 0}];
  }

  else
  {
    v11 = [MEMORY[0x277CBEB68] null];
    v10 = [v9 initWithObjectsAndKeys:{v11, v7, 0}];
  }

  v12 = [(ASUSQLiteEntity *)self setValuesWithDictionary:v10];

  return v12;
}

- (BOOL)setValuesWithDictionary:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v5 databaseTable];
  connection = self->_connection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__ASUSQLiteEntity_setValuesWithDictionary___block_invoke;
  v11[3] = &unk_278C97A70;
  v11[4] = self;
  v12 = v4;
  v13 = v6;
  v14 = v5;
  v8 = v6;
  v9 = v4;
  LOBYTE(v5) = [(ASUSQLiteConnection *)connection performTransaction:v11 error:0];

  return v5;
}

uint64_t __43__ASUSQLiteEntity_setValuesWithDictionary___block_invoke(uint64_t a1)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  v2 = [(ASUSQLiteEntity *)*(a1 + 32) _copyTableClusteredValuesWithValues:?];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__ASUSQLiteEntity_setValuesWithDictionary___block_invoke_2;
  v8[3] = &unk_278C97A48;
  v3 = *(a1 + 48);
  v12 = *(a1 + 56);
  v4 = v3;
  v5 = *(a1 + 32);
  v9 = v4;
  v10 = v5;
  v11 = &v13;
  [v2 enumerateKeysAndObjectsUsingBlock:v8];
  v6 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v6;
}

void __43__ASUSQLiteEntity_setValuesWithDictionary___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
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
    v11 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"SELECT 1 FROM "];
    [v11 appendString:v7];
    [v11 appendString:@" WHERE "];
    [v11 appendString:v10];
    [v11 appendString:@" =  ? LIMIT 1;"];
    v12 = *(a1 + 40);
    v13 = *(v12 + 8);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __43__ASUSQLiteEntity_setValuesWithDictionary___block_invoke_3;
    v30[3] = &unk_278C97930;
    v30[4] = v12;
    v30[5] = &v31;
    [v13 executeQuery:v11 withResults:v30];
  }

  if (v32[3])
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"UPDATE "];
    [v15 appendString:v7];
    [v15 appendString:@" SET "];
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v29 = 0;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __43__ASUSQLiteEntity_setValuesWithDictionary___block_invoke_4;
    v24[3] = &unk_278C979F8;
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
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __43__ASUSQLiteEntity_setValuesWithDictionary___block_invoke_5;
    v21[3] = &unk_278C97A20;
    v19 = v17;
    v20 = *(a1 + 40);
    v22 = v19;
    v23 = v20;
    *(*(*(a1 + 48) + 8) + 24) = [v18 executeStatement:v16 error:0 bindings:v21];

    _Block_object_dispose(v28, 8);
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = [ASUSQLiteEntity _insertValues:v8 intoTable:v7 withPersistentID:*(*(a1 + 40) + 16) onConnection:*(*(a1 + 40) + 8)];
  }

  *a4 = *(*(*(a1 + 48) + 8) + 24) ^ 1;
  _Block_object_dispose(&v31, 8);
}

void __43__ASUSQLiteEntity_setValuesWithDictionary___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  [v4 bindInt64:v3 atPosition:1];
  LOBYTE(v3) = [v4 hasRows];

  *(*(*(a1 + 40) + 8) + 24) = v3;
}

void __43__ASUSQLiteEntity_setValuesWithDictionary___block_invoke_4(uint64_t a1, void *a2, void *a3)
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

void __43__ASUSQLiteEntity_setValuesWithDictionary___block_invoke_5(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    v8 = 1;
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
        ASUSQLiteBindFoundationValue(v3, v10, *(*(&v12 + 1) + 8 * v9++));
        v10 = v8;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 1;
  }

  [v3 bindInt64:*(*(a1 + 40) + 16) atPosition:{v8, v12}];
  v11 = *MEMORY[0x277D85DE8];
}

- (id)valueForProperty:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v11 count:1];
  v7 = [(ASUSQLiteEntity *)self getValuesForProperties:v6, v11, v12];
  v8 = [v7 objectForKeyedSubscript:v5];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void __73__ASUSQLiteEntity__insertValues_intoTable_withPersistentID_onConnection___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 bindInt64:*(a1 + 40) atPosition:1];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    v8 = 2;
    do
    {
      v9 = 0;
      v10 = v8;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v8 = (v10 + 1);
        v11 = [*(a1 + 32) objectForKeyedSubscript:{*(*(&v13 + 1) + 8 * v9), v13}];
        ASUSQLiteBindFoundationValue(v3, v10, v11);

        ++v9;
        v10 = v8;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __55__ASUSQLiteEntity__copyTableClusteredValuesWithValues___block_invoke(id *a1, void *a2, void *a3)
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
      v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [a1[5] setObject:v9 forKey:v7];
    }

    [v9 setObject:v5 forKey:v8];
  }
}

- (BOOL)BOOLValueForProperty:(id)a3
{
  v3 = [(ASUSQLiteEntity *)self numberValueForProperty:a3];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)dictValueForProperty:(id)a3
{
  v3 = [(ASUSQLiteEntity *)self valueForProperty:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)errorValueForProperty:(id)a3
{
  v3 = [(ASUSQLiteEntity *)self valueForProperty:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)integerValueForProperty:(id)a3
{
  v3 = [(ASUSQLiteEntity *)self numberValueForProperty:a3];
  v4 = [v3 integerValue];

  return v4;
}

- (id)numberValueForProperty:(id)a3
{
  v3 = [(ASUSQLiteEntity *)self valueForProperty:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)stringValueForProperty:(id)a3
{
  v3 = [(ASUSQLiteEntity *)self valueForProperty:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)uuidValueForProperty:(id)a3
{
  v3 = [(ASUSQLiteEntity *)self valueForProperty:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)urlValueForProperty:(id)a3
{
  v3 = [(ASUSQLiteEntity *)self valueForProperty:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

+ (id)anyOnConnection:(id)a3 predicate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  v8 = [a1 queryOnConnection:v6 predicate:v7];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__ASUSQLiteEntity_ASUSQLiteQuery__anyOnConnection_predicate___block_invoke;
  v12[3] = &unk_278C97E68;
  v14 = &v16;
  v15 = a1;
  v9 = v6;
  v13 = v9;
  [v8 enumeratePersistentIDsUsingBlock:v12];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

void __61__ASUSQLiteEntity_ASUSQLiteQuery__anyOnConnection_predicate___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [objc_alloc(*(a1 + 48)) initWithPersistentID:a2 onConnection:*(a1 + 32)];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  *a4 = 1;
}

+ (id)allOnConnection:(id)a3 predicate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = objc_opt_new();
  v8 = [a1 queryOnConnection:v6 predicate:v7];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__ASUSQLiteEntity_ASUSQLiteQuery__allOnConnection_predicate___block_invoke;
  v12[3] = &unk_278C97E68;
  v15 = a1;
  v9 = v6;
  v13 = v9;
  v14 = &v16;
  [v8 enumeratePersistentIDsUsingBlock:v12];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

void __61__ASUSQLiteEntity_ASUSQLiteQuery__allOnConnection_predicate___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [objc_alloc(*(a1 + 48)) initWithPersistentID:a2 onConnection:*(a1 + 32)];
  [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
}

+ (id)_aggregateValueForProperty:(void *)a3 function:(void *)a4 predicate:(void *)a5 onConnection:
{
  v34[1] = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_opt_self();
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__1;
  v32 = __Block_byref_object_dispose__1;
  v33 = 0;
  v13 = [ASUSQLiteQueryDescriptor alloc];
  if (v13)
  {
    v14 = [(ASUSQLiteQueryDescriptor *)v13 initWithEntityClass:v12 memoryEntityClass:0];
  }

  else
  {
    v14 = 0;
  }

  [(ASUSQLiteQueryDescriptor *)v14 setPredicate:v10];
  v15 = objc_alloc(MEMORY[0x277CCACA8]);
  v16 = [v12 disambiguatedSQLForProperty:v8];
  v17 = [v15 initWithFormat:@"%@(%@)", v9, v16];

  v34[0] = v8;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
  v19 = [MEMORY[0x277CBEA60] arrayWithObject:v17];
  v20 = [(ASUSQLiteQueryDescriptor *)v14 _newSelectSQLWithProperties:v18 columns:v19];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __94__ASUSQLiteEntity_ASUSQLiteQuery___aggregateValueForProperty_function_predicate_onConnection___block_invoke;
  v25[3] = &unk_278C97930;
  v21 = v14;
  v26 = v21;
  v27 = &v28;
  [v11 executeQuery:v20 withResults:v25];
  v22 = v29[5];

  _Block_object_dispose(&v28, 8);
  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)sumForProperty:(id)a3 predicate:(id)a4 onConnection:(id)a5
{
  v5 = [(ASUSQLiteEntity *)a1 _aggregateValueForProperty:a3 function:@"SUM" predicate:a4 onConnection:a5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = &unk_2852173F8;
  }

  v7 = v6;

  return v6;
}

+ (id)queryOnConnection:(id)a3 predicate:(id)a4 orderingProperties:(id)a5 orderingDirections:(id)a6 entityClass:(Class)a7
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [[ASUSQLiteQueryDescriptor alloc] initWithEntityClass:a7 memoryEntityClass:[(objc_class *)a7 memoryEntityClass]];
  [(ASUSQLiteQueryDescriptor *)v15 setOrderingProperties:v12];

  [(ASUSQLiteQueryDescriptor *)v15 setOrderingDirections:v11];
  [(ASUSQLiteQueryDescriptor *)v15 setPredicate:v13];

  v16 = [[ASUSQLiteQuery alloc] initOnConnection:v14 descriptor:v15];

  return v16;
}

void __94__ASUSQLiteEntity_ASUSQLiteQuery___aggregateValueForProperty_function_predicate_onConnection___block_invoke(uint64_t a1, void *a2)
{
  v7 = 1;
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 predicate];
  [v5 applyBinding:v4 atIndex:&v7];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __94__ASUSQLiteEntity_ASUSQLiteQuery___aggregateValueForProperty_function_predicate_onConnection___block_invoke_2;
  v6[3] = &unk_278C97808;
  v6[4] = *(a1 + 40);
  [v4 enumerateRowsUsingBlock:v6];
}

void __94__ASUSQLiteEntity_ASUSQLiteQuery___aggregateValueForProperty_function_predicate_onConnection___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = ASUSQLiteCopyFoundationValue(a2, 0);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  *a4 = 1;
}

@end