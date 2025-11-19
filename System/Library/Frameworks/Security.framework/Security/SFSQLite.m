@interface SFSQLite
- (BOOL)executeSQL:(id)a3;
- (BOOL)openWithError:(id *)a3;
- (NSDateFormatter)dateFormatter;
- (NSDateFormatter)oldDateFormatter;
- (SFSQLite)initWithPath:(id)a3 schema:(id)a4;
- (id)_createSchemaHash;
- (id)_synchronousModeString;
- (id)_tableNameForClass:(Class)a3;
- (id)allTableNames;
- (id)columnNamesForTable:(id)a3;
- (id)creationDate;
- (id)datePropertyForKey:(id)a3;
- (id)propertyForKey:(id)a3;
- (id)select:(id)a3 from:(id)a4 mapEachRow:(id)a5;
- (id)select:(id)a3 from:(id)a4 where:(id)a5 bindings:(id)a6;
- (id)selectFrom:(id)a3 where:(id)a4 bindings:(id)a5 limit:(id)a6;
- (id)statementForSQL:(id)a3;
- (int)autoVacuumSetting;
- (int)changes;
- (int)dbUserVersion;
- (int)userVersion;
- (int64_t)insertOrReplaceInto:(id)a3 values:(id)a4;
- (int64_t)lastInsertRowID;
- (unint64_t)selectCountFrom:(id)a3 where:(id)a4 bindings:(id)a5;
- (void)attemptProperDatabasePermissions;
- (void)close;
- (void)dealloc;
- (void)deleteFrom:(id)a3 matchingValues:(id)a4;
- (void)deleteFrom:(id)a3 where:(id)a4 bindings:(id)a5;
- (void)dropAllTables;
- (void)open;
- (void)remove;
- (void)removeAllStatements;
- (void)removePropertyForKey:(id)a3;
- (void)select:(id)a3 from:(id)a4 where:(id)a5 bindings:(id)a6 orderBy:(id)a7 limit:(id)a8 block:(id)a9;
- (void)select:(id)a3 from:(id)a4 where:(id)a5 bindings:(id)a6 orderBy:(id)a7 limit:(id)a8 forEachRow:(id)a9;
- (void)selectFrom:(id)a3 where:(id)a4 bindings:(id)a5 orderBy:(id)a6 limit:(id)a7 block:(id)a8;
- (void)setDateProperty:(id)a3 forKey:(id)a4;
- (void)setProperty:(id)a3 forKey:(id)a4;
- (void)update:(id)a3 set:(id)a4 where:(id)a5 bindings:(id)a6 limit:(id)a7;
@end

@implementation SFSQLite

- (int)autoVacuumSetting
{
  v2 = [(SFSQLite *)self statementForSQL:@"pragma auto_vacuum"];
  if ([v2 step])
  {
    do
    {
      v3 = [v2 intAtIndex:0];
    }

    while (([v2 step] & 1) != 0);
  }

  else
  {
    v3 = 0;
  }

  [v2 reset];

  return v3;
}

- (int)dbUserVersion
{
  v2 = [(SFSQLite *)self statementForSQL:@"pragma user_version"];
  if ([v2 step])
  {
    do
    {
      v3 = [v2 intAtIndex:0];
    }

    while (([v2 step] & 1) != 0);
  }

  else
  {
    v3 = 0;
  }

  [v2 reset];

  return v3;
}

- (id)_tableNameForClass:(Class)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = [(objc_class *)a3 SFSQLiteClassName];
  if ([v4 hasPrefix:self->_objectClassPrefix])
  {
    v5 = [v4 substringFromIndex:{-[NSString length](self->_objectClassPrefix, "length")}];
  }

  else
  {
    v6 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      objectClassPrefix = self->_objectClassPrefix;
      v10 = 138412546;
      v11 = v4;
      v12 = 2112;
      v13 = objectClassPrefix;
      _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "sfsqlite: Object class %@ does not have prefix %@", &v10, 0x16u);
    }

    v5 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)deleteFrom:(id)a3 where:(id)a4 bindings:(id)a5
{
  v8 = MEMORY[0x1E696AEC0];
  v9 = a5;
  v11 = [v8 stringWithFormat:@"delete from %@ where %@", a3, a4];
  v10 = [(SFSQLite *)self statementForSQL:v11];
  [v10 bindValues:v9];

  [v10 step];
  [v10 reset];
}

- (void)deleteFrom:(id)a3 matchingValues:(id)a4
{
  v18 = self;
  v19 = a3;
  v5 = a4;
  v6 = [v5 allKeys];
  v7 = [v6 sortedArrayUsingSelector:sel_compare_];

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if ([v7 count])
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = [v7 objectAtIndexedSubscript:{v11, v18}];
      v13 = [v5 objectForKeyedSubscript:v12];

      v14 = [v7 objectAtIndexedSubscript:v11];
      [v9 appendString:v14];

      if (v13 && ([MEMORY[0x1E695DFB0] null], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEqual:", v13), v15, (v16 & 1) == 0))
      {
        [v8 setObject:v13 atIndexedSubscript:v10];
        v17 = @"=?";
        ++v10;
      }

      else
      {
        v17 = @" is NULL";
      }

      [v9 appendString:v17];
      if (v11 != [v7 count] - 1)
      {
        [v9 appendString:@" AND "];
      }

      ++v11;
    }

    while (v11 < [v7 count]);
  }

  [(SFSQLite *)v18 deleteFrom:v19 where:v9 bindings:v8, v18];
}

- (int64_t)insertOrReplaceInto:(id)a3 values:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 allKeys];
  v9 = [v8 sortedArrayUsingSelector:sel_compare_];

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v9 count])
  {
    v11 = 0;
    do
    {
      v12 = [v9 objectAtIndexedSubscript:v11];
      v13 = [v7 objectForKeyedSubscript:v12];
      [v10 setObject:v13 atIndexedSubscript:v11];

      ++v11;
    }

    while (v11 < [v9 count]);
  }

  v14 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"insert or replace into "];
  [v14 appendString:v6];
  objc_msgSend(v14, "appendString:", @" (");
  if ([v9 count])
  {
    v15 = 0;
    do
    {
      v16 = [v9 objectAtIndexedSubscript:v15];
      [v14 appendString:v16];

      if (v15 != [v9 count] - 1)
      {
        [v14 appendString:{@", "}];
      }

      ++v15;
    }

    while (v15 < [v9 count]);
  }

  [v14 appendString:@") values ("];
  if ([v9 count])
  {
    v17 = 0;
    do
    {
      if (v17 == [v9 count] - 1)
      {
        v18 = @"?";
      }

      else
      {
        v18 = @"?,";
      }

      [v14 appendString:v18];
      ++v17;
    }

    while (v17 < [v9 count]);
  }

  [v14 appendString:@""]);
  v19 = [(SFSQLite *)self statementForSQL:v14];
  [v19 bindValues:v10];
  [v19 step];
  [v19 reset];
  v20 = [(SFSQLite *)self lastInsertRowID];

  return v20;
}

- (unint64_t)selectCountFrom:(id)a3 where:(id)a4 bindings:(id)a5
{
  v5 = [(SFSQLite *)self select:&unk_1EFAAC5C8 from:a3 where:a4 bindings:a5];
  v6 = [v5 objectAtIndexedSubscript:0];
  v7 = [v6 objectForKeyedSubscript:@"n"];
  v8 = [v7 unsignedIntegerValue];

  return v8;
}

- (void)update:(id)a3 set:(id)a4 where:(id)a5 bindings:(id)a6 limit:(id)a7
{
  v18 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if ([v12 length])
  {
    v16 = objc_alloc_init(MEMORY[0x1E696AD60]);
    [v16 appendFormat:@"update %@", v18];
    [v16 appendFormat:@" set %@", v12];
    if ([v13 length])
    {
      [v16 appendFormat:@" where %@", v13];
    }

    if (v15)
    {
      [v16 appendFormat:@" limit %ld", objc_msgSend(v15, "integerValue")];
    }

    v17 = [(SFSQLite *)self statementForSQL:v16];
    [v17 bindValues:v14];
      ;
    }

    [v17 reset];
  }
}

- (id)selectFrom:(id)a3 where:(id)a4 bindings:(id)a5 limit:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v14 appendFormat:@"select * from %@", v10];
  if ([v11 length])
  {
    [v14 appendFormat:@" where %@", v11];
  }

  if (v13)
  {
    [v14 appendFormat:@" limit %ld", objc_msgSend(v13, "integerValue")];
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = [(SFSQLite *)self statementForSQL:v14];
  [v16 bindValues:v12];
  if ([v16 step])
  {
    do
    {
      v17 = [v16 allObjectsByColumnName];
      [v15 addObject:v17];
    }

    while (([v16 step] & 1) != 0);
  }

  [v16 reset];

  return v15;
}

- (void)selectFrom:(id)a3 where:(id)a4 bindings:(id)a5 orderBy:(id)a6 limit:(id)a7 block:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  context = objc_autoreleasePoolPush();
  v20 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v20 appendFormat:@"select * from %@", v14];
  if ([v15 length])
  {
    [v20 appendFormat:@" where %@", v15, context];
  }

  if (v17)
  {
    v21 = [v17 componentsJoinedByString:{@", "}];
    [v20 appendFormat:@" order by %@", v21];
  }

  if (v18)
  {
    [v20 appendFormat:@" limit %ld", objc_msgSend(v18, "integerValue")];
  }

  v22 = [(SFSQLite *)self statementForSQL:v20];
  [v22 bindValues:v16];
  v23 = objc_autoreleasePoolPush();
  if ([v22 step])
  {
    while (1)
    {
      v24 = [v22 allObjectsByColumnName];
      if (v19)
      {
        v26 = 0;
        v19[2](v19, v24, &v26);
        if (v26)
        {
          break;
        }
      }

      objc_autoreleasePoolPop(v23);
      v23 = objc_autoreleasePoolPush();
      if (([v22 step] & 1) == 0)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_13:
  objc_autoreleasePoolPop(v23);
  [v22 reset];

  objc_autoreleasePoolPop(context);
}

- (void)select:(id)a3 from:(id)a4 where:(id)a5 bindings:(id)a6 orderBy:(id)a7 limit:(id)a8 forEachRow:(id)a9
{
  v15 = a3;
  v27 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  context = objc_autoreleasePoolPush();
  v21 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if ([v15 count])
  {
    v22 = [v15 componentsJoinedByString:{@", "}];
  }

  else
  {
    v22 = @"*";
  }

  [v21 appendFormat:@"select %@ from %@", v22, v27];
  if ([v16 length])
  {
    [v21 appendFormat:@" where %@", v16];
  }

  if (v18)
  {
    v23 = [v18 componentsJoinedByString:{@", "}];
    [v21 appendFormat:@" order by %@", v23];
  }

  if (v19)
  {
    [v21 appendFormat:@" limit %ld", objc_msgSend(v19, "integerValue")];
  }

  v24 = [(SFSQLite *)self statementForSQL:v21];
  [v24 bindValues:v17];
  v25 = objc_autoreleasePoolPush();
  if ([v24 step])
  {
    do
    {
      if (v20)
      {
        v28 = 0;
        v20[2](v20, v24, &v28);
        if (v28)
        {
          break;
        }
      }

      objc_autoreleasePoolPop(v25);
      v25 = objc_autoreleasePoolPush();
    }

    while (([v24 step] & 1) != 0);
  }

  objc_autoreleasePoolPop(v25);
  [v24 reset];

  objc_autoreleasePoolPop(context);
}

- (void)select:(id)a3 from:(id)a4 where:(id)a5 bindings:(id)a6 orderBy:(id)a7 limit:(id)a8 block:(id)a9
{
  v16 = a9;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __59__SFSQLite_select_from_where_bindings_orderBy_limit_block___block_invoke;
  v18[3] = &unk_1E70D70E8;
  v19 = v16;
  v17 = v16;
  [(SFSQLite *)self select:a3 from:a4 where:a5 bindings:a6 orderBy:a7 limit:a8 forEachRow:v18];
}

uint64_t __59__SFSQLite_select_from_where_bindings_orderBy_limit_block___block_invoke(uint64_t a1, void *a2)
{
  [a2 allObjectsByColumnName];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (id)select:(id)a3 from:(id)a4 where:(id)a5 bindings:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = MEMORY[0x1E696AD60];
  v16 = [v10 componentsJoinedByString:{@", "}];
  v17 = [v15 stringWithFormat:@"select %@ from %@", v16, v11];

  if (v12)
  {
    [v17 appendFormat:@" where %@", v12];
  }

  v18 = [(SFSQLite *)self statementForSQL:v17];
  [v18 bindValues:v13];
  if ([v18 step])
  {
    do
    {
      v19 = [v18 allObjectsByColumnName];
      [v14 addObject:v19];
    }

    while (([v18 step] & 1) != 0);
  }

  [v18 reset];

  return v14;
}

- (id)select:(id)a3 from:(id)a4 mapEachRow:(id)a5
{
  v8 = a5;
  v9 = MEMORY[0x1E695DF70];
  v10 = a4;
  v11 = a3;
  v12 = objc_alloc_init(v9);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __35__SFSQLite_select_from_mapEachRow___block_invoke;
  v18[3] = &unk_1E70D46B8;
  v20 = v8;
  v13 = v12;
  v19 = v13;
  v14 = v8;
  [(SFSQLite *)self select:v11 from:v10 where:0 bindings:0 orderBy:0 limit:0 forEachRow:v18];

  v15 = v19;
  v16 = v13;

  return v13;
}

uint64_t __35__SFSQLite_select_from_mapEachRow___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  if (v2)
  {
    [*(a1 + 32) addObject:v2];
  }

  return MEMORY[0x1EEE66BB8]();
}

- (id)columnNamesForTable:(id)a3
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"pragma table_info(%@)", a3];
  v5 = [(SFSQLite *)self statementForSQL:v4];

  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if ([v5 step])
  {
    do
    {
      v7 = [v5 textAtIndex:1];
      [v6 addObject:v7];
    }

    while (([v5 step] & 1) != 0);
  }

  [v5 reset];

  return v6;
}

- (id)creationDate
{
  v2 = MEMORY[0x1E695DF00];
  v3 = [(SFSQLite *)self propertyForKey:@"Created"];
  [v3 floatValue];
  v5 = [v2 dateWithTimeIntervalSinceReferenceDate:v4];

  return v5;
}

- (void)removePropertyForKey:(id)a3
{
  v5 = a3;
  if ([v5 length])
  {
    v4 = [(SFSQLite *)self statementForSQL:@"delete from Properties where key = ?"];
    [v4 bindText:v5 atIndex:0];
    [v4 step];
    [v4 reset];
  }
}

- (void)setDateProperty:(id)a3 forKey:(id)a4
{
  v8 = a4;
  if (a3)
  {
    v6 = a3;
    v7 = [(SFSQLite *)self dateFormatter];
    a3 = [v7 stringFromDate:v6];
  }

  [(SFSQLite *)self setProperty:a3 forKey:v8];
}

- (id)datePropertyForKey:(id)a3
{
  v4 = [(SFSQLite *)self propertyForKey:a3];
  if ([v4 length])
  {
    v5 = [(SFSQLite *)self dateFormatter];
    v6 = [v5 dateFromString:v4];

    if (!v6)
    {
      v7 = [(SFSQLite *)self oldDateFormatter];
      v6 = [v7 dateFromString:v4];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSDateFormatter)oldDateFormatter
{
  oldDateFormatter = self->_oldDateFormatter;
  if (!oldDateFormatter)
  {
    v4 = objc_opt_new();
    [(NSDateFormatter *)v4 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZZZZZ"];
    v5 = self->_oldDateFormatter;
    self->_oldDateFormatter = v4;

    oldDateFormatter = self->_oldDateFormatter;
  }

  return oldDateFormatter;
}

- (NSDateFormatter)dateFormatter
{
  dateFormatter = self->_dateFormatter;
  if (!dateFormatter)
  {
    v4 = objc_opt_new();
    [(NSDateFormatter *)v4 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSZZZZ"];
    v5 = self->_dateFormatter;
    self->_dateFormatter = v4;

    dateFormatter = self->_dateFormatter;
  }

  return dateFormatter;
}

- (void)setProperty:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 length])
  {
    if (!v6)
    {
      [(SFSQLite *)self removePropertyForKey:v7];
      goto LABEL_8;
    }

    v8 = [(SFSQLite *)self statementForSQL:@"insert or replace into Properties (key, value) values (?, ?)"];
    [v8 bindText:v7 atIndex:0];
    [v8 bindText:v6 atIndex:1];
    [v8 step];
    [v8 reset];
  }

  else
  {
    v8 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "SFSQLite: attempt to set property without a key", v9, 2u);
    }
  }

LABEL_8:
}

- (id)propertyForKey:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(SFSQLite *)self statementForSQL:@"select value from Properties where key = ?"];
    [v5 bindText:v4 atIndex:0];
    v6 = 0;
    if ([v5 step])
    {
      v6 = [v5 textAtIndex:0];
    }

    [v5 reset];
  }

  else
  {
    v7 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "SFSQLite: attempt to retrieve property without a key", v9, 2u);
    }

    v6 = 0;
  }

  return v6;
}

- (void)dropAllTables
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(SFSQLite *)self allTableNames];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"drop table %@", *(*(&v10 + 1) + 8 * v7)];
        [(SFSQLite *)self executeSQL:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)allTableNames
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(SFSQLite *)self statementForSQL:@"select name from sqlite_master where type = 'table'"];
  if ([v4 step])
  {
    do
    {
      v5 = [v4 textAtIndex:0];
      [v3 addObject:v5];
    }

    while (([v4 step] & 1) != 0);
  }

  [v4 reset];

  return v3;
}

- (void)removeAllStatements
{
  v3 = [(NSMutableDictionary *)self->_statementsBySQL allValues];
  [v3 makeObjectsPerformSelector:sel_finalizeStatement];

  statementsBySQL = self->_statementsBySQL;

  [(NSMutableDictionary *)statementsBySQL removeAllObjects];
}

- (id)statementForSQL:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!self->_db)
  {
    v9 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v9, OS_LOG_TYPE_DEFAULT, "sfsqlite: Database is closed", buf, 2u);
    }

    goto LABEL_11;
  }

  v6 = [(NSMutableDictionary *)self->_statementsBySQL objectForKeyedSubscript:v5];
  if (!v6)
  {
    ppStmt = 0;
    v9 = v5;
    if (!sqlite3_prepare_v2(self->_db, [v9 UTF8String], -1, &ppStmt, 0))
    {
      v13 = [SFSQLiteStatement alloc];
      v7 = [(SFSQLiteStatement *)v13 initWithSQLite:self SQL:v9 handle:ppStmt];
      [(NSMutableDictionary *)self->_statementsBySQL setObject:v7 forKeyedSubscript:v9];

      goto LABEL_12;
    }

    v10 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v9;
      _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, "Error preparing statement: %@", buf, 0xCu);
    }

LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  v7 = v6;
  if (![(SFSQLiteStatement *)v6 isReset])
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"SFSQLite.m" lineNumber:550 description:{@"Statement not reset after last use: %@", v5}];
  }

LABEL_12:

  v11 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)executeSQL:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  db = self->_db;
  if (!db)
  {
    v10 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      v11 = "sfsqlite: Database is closed";
      v12 = v10;
      v13 = 2;
      goto LABEL_11;
    }

LABEL_12:

    goto LABEL_13;
  }

  v7 = sqlite3_exec(db, [v4 UTF8String], 0, 0, 0);
  if (!v7)
  {
    v14 = 1;
    goto LABEL_14;
  }

  v8 = v7;
  if (v7 != 8 && v7 != 23)
  {
    v10 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412546;
      v18 = v5;
      v19 = 1024;
      v20 = v8;
      v11 = "sfsqlite: Error executing SQL: %@ (%d)";
      v12 = v10;
      v13 = 18;
LABEL_11:
      _os_log_impl(&dword_1887D2000, v12, OS_LOG_TYPE_DEFAULT, v11, &v17, v13);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

LABEL_13:
  v14 = 0;
LABEL_14:

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (int)changes
{
  db = self->_db;
  if (db)
  {

    return sqlite3_changes(db);
  }

  else
  {
    v8 = v2;
    v9 = v3;
    v6 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "sfsqlite: Database is closed", v7, 2u);
    }

    return -1;
  }
}

- (int64_t)lastInsertRowID
{
  db = self->_db;
  if (db)
  {

    return sqlite3_last_insert_rowid(db);
  }

  else
  {
    v8 = v2;
    v9 = v3;
    v6 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "sfsqlite: Database is closed", v7, 2u);
    }

    return -1;
  }
}

- (void)remove
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->_openCount)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"SFSQLite.m" lineNumber:480 description:{@"Trying to remove db at: %@ while it is open", self->_path}];
  }

  v3 = [MEMORY[0x1E696AC08] defaultManager];
  [v3 removeItemAtPath:self->_path error:0];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [&unk_1EFAAC580 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(&unk_1EFAAC580);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v9 = [MEMORY[0x1E696AC08] defaultManager];
        v10 = [(NSString *)self->_path stringByAppendingString:v8];
        [v9 removeItemAtPath:v10 error:0];

        ++v7;
      }

      while (v5 != v7);
      v5 = [&unk_1EFAAC580 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)close
{
  openCount = self->_openCount;
  if (!openCount)
  {
    return;
  }

  if (openCount != 1)
  {
LABEL_10:
    self->_openCount = openCount - 1;
    return;
  }

  if (!self->_db)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"SFSQLite.m" lineNumber:465 description:@"Missing handle for open cache db"];
  }

  [(SFSQLite *)self removeAllStatements];
  if (!sqlite3_close(self->_db))
  {
    self->_db = 0;
    openCount = self->_openCount;
    goto LABEL_10;
  }

  v4 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "sfsqlite: Error closing database", v7, 2u);
  }
}

- (void)open
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v3 = [(SFSQLite *)self openWithError:&v9];
  v4 = v9;
  v5 = v4;
  if (!v3 && (!v4 || [v4 code] != 23))
  {
    v6 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(SFSQLite *)self path];
      *buf = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "sfsqlite: Error opening db at %@: %@", buf, 0x16u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)openWithError:(id *)a3
{
  v75[1] = *MEMORY[0x1E69E9840];
  v6 = self->_path;
  openCount = self->_openCount;
  if (openCount)
  {
    if (!self->_db)
    {
      v66 = [MEMORY[0x1E696AAA8] currentHandler];
      [v66 handleFailureInMethod:a2 object:self file:@"SFSQLite.m" lineNumber:324 description:@"Missing handle for open cache db"];

      openCount = self->_openCount;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    self->_openCount = openCount + 1;
    v11 = 1;
    goto LABEL_35;
  }

  v8 = [(NSString *)self->_path stringByDeletingLastPathComponent];
  v12 = [MEMORY[0x1E696AC08] defaultManager];
  v69 = 0;
  v13 = [v12 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:&v69];
  v14 = v69;
  v15 = v14;
  if (v13)
  {
    goto LABEL_6;
  }

  v26 = [v14 domain];
  if (![v26 isEqualToString:*MEMORY[0x1E696A250]])
  {

LABEL_13:
    v28 = v15;
    v25 = 0;
    v19 = v15;
    goto LABEL_14;
  }

  v27 = [v15 code];

  if (v27 != 516)
  {
    goto LABEL_13;
  }

LABEL_6:
  v67 = a3;
  v68 = v15;
  v16 = v6;
  v17 = v8;
  v18 = [v12 attributesOfItemAtPath:v8 error:&v68];
  v19 = v68;

  v20 = *MEMORY[0x1E696A3A0];
  v21 = [v18 objectForKeyedSubscript:*MEMORY[0x1E696A3A0]];
  v22 = *MEMORY[0x1E696A388];
  v23 = [v21 isEqualToString:*MEMORY[0x1E696A388]];

  if ((v23 & 1) == 0)
  {
    v74 = v20;
    v75[0] = v22;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:&v74 count:1];
    [v12 setAttributes:v24 ofItemAtPath:v17 error:0];
  }

  v15 = 0;
  v25 = 1;
  v6 = v16;
  a3 = v67;
  v8 = v17;
LABEL_14:

  v10 = v15;
  if (!v25)
  {
    goto LABEL_30;
  }

  v29 = sqlite3_open_v2([(NSString *)v6 fileSystemRepresentation], &self->_db, 3145734, 0);
  if (v29)
  {
    v30 = v29;
    v31 = sqlite3_system_errno(self->_db);
    v32 = MEMORY[0x1E696ABC0];
    v33 = *MEMORY[0x1E696A250];
    v34 = v30;
    v72 = *MEMORY[0x1E696A578];
    v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error opening db at %@, rc=%d(0x%x), errno=%d(0x%x)", self->_path, v30, v30, v31, v31];
    v73 = v35;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
    v37 = v36 = v8;
    v38 = [v32 errorWithDomain:v33 code:v34 userInfo:v37];

    v8 = v36;
    v10 = v38;
    goto LABEL_30;
  }

  [(SFSQLite *)self attemptProperDatabasePermissions];
  sqlite3_extended_result_codes(self->_db, 1);
  if (!sqlite3_busy_timeout(self->_db, 300000))
  {
    if ([(SFSQLite *)self executeSQL:@"pragma journal_mode = WAL"])
    {
      v39 = MEMORY[0x1E696AEC0];
      v40 = [(SFSQLite *)self _synchronousModeString];
      v41 = [v39 stringWithFormat:@"pragma synchronous = %@", v40];
      v42 = [(SFSQLite *)self executeSQL:v41];

      if (v42 && ([(SFSQLite *)self autoVacuumSetting]== 1 || [(SFSQLite *)self executeSQL:@"pragma auto_vacuum = FULL"]&& [(SFSQLite *)self executeSQL:@"VACUUM"]))
      {
        [(SFSQLite *)self begin];
        v43 = [(SFSQLite *)self select:&unk_1EFAAC598 from:@"sqlite_master" where:@"type = ? AND name = ?" bindings:&unk_1EFAAC5B0];
        if (![v43 count])
        {
          [(SFSQLite *)self executeSQL:@"create table if not exists Properties (\n    key    text primary key, \n    value  text\n);\n"];
        }

        v9 = [(SFSQLite *)self propertyForKey:@"SchemaVersion"];
        v44 = [(SFSQLite *)self dbUserVersion];
        if (v9)
        {
          v45 = v44;
          v46 = [(SFSQLite *)self schemaVersion];
          if ([v9 isEqualToString:v46])
          {
            if (![(SFSQLite *)self userVersion])
            {

              goto LABEL_44;
            }

            v47 = [(SFSQLite *)self userVersion];

            if (v45 == v47)
            {
LABEL_44:
              [(SFSQLite *)self end];
              if (!self->_hasMigrated)
              {
LABEL_47:
                ++self->_openCount;

                v11 = 1;
                goto LABEL_35;
              }

LABEL_45:
              v64 = [(SFSQLite *)self schemaVersion];
              [(SFSQLite *)self setProperty:v64 forKey:@"SchemaVersion"];

              if ([(SFSQLite *)self userVersion])
              {
                v65 = [MEMORY[0x1E696AEC0] stringWithFormat:@"pragma user_version = %ld", -[SFSQLite userVersion](self, "userVersion")];
                [(SFSQLite *)self executeSQL:v65];
              }

              goto LABEL_47;
            }
          }

          else
          {
          }

          v55 = [(SFSQLite *)self delegate];
          if (v55)
          {
            v56 = v55;
            v57 = [(SFSQLite *)self delegate];
            v58 = [v57 migrateDatabase:self fromVersion:v45];

            if (v58)
            {
              self->_hasMigrated = 1;
            }
          }

          if (self->_hasMigrated)
          {
            goto LABEL_44;
          }

          [(SFSQLite *)self removeAllStatements];
          [(SFSQLite *)self dropAllTables];
          self->_hasMigrated = 1;
        }

        [(SFSQLite *)self executeSQL:@"create table if not exists Properties (\n    key    text primary key, \n    value  text\n);\n"];
        v59 = [(SFSQLite *)self schema];
        [(SFSQLite *)self executeSQL:v59];

        v60 = MEMORY[0x1E696AEC0];
        v61 = [MEMORY[0x1E695DF00] date];
        [v61 timeIntervalSinceReferenceDate];
        v63 = [v60 stringWithFormat:@"%f", v62];

        [(SFSQLite *)self setProperty:v63 forKey:@"Created"];
        [(SFSQLite *)self end];
        goto LABEL_45;
      }
    }
  }

LABEL_30:
  sqlite3_close_v2(self->_db);
  self->_db = 0;
  if (a3)
  {
    if (!v10)
    {
      v48 = MEMORY[0x1E696ABC0];
      v49 = *MEMORY[0x1E696A250];
      v70 = *MEMORY[0x1E696A578];
      v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error opening db at %@", self->_path];
      v71 = v50;
      v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
      v10 = [v48 errorWithDomain:v49 code:0 userInfo:v51];
    }

    v52 = v10;
    v9 = 0;
    v11 = 0;
    *a3 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

LABEL_35:

  v53 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)attemptProperDatabasePermissions
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v18 = *MEMORY[0x1E696A370];
  v4 = v18;
  v5 = [MEMORY[0x1E696AD98] numberWithShort:438];
  v19[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  [v3 setAttributes:v6 ofItemAtPath:self->_path error:0];

  v16 = v4;
  v7 = [MEMORY[0x1E696AD98] numberWithShort:438];
  v17 = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-wal", self->_path];
  [v3 setAttributes:v8 ofItemAtPath:v9 error:0];

  v14 = v4;
  v10 = [MEMORY[0x1E696AD98] numberWithShort:438];
  v15 = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-shm", self->_path];
  [v3 setAttributes:v11 ofItemAtPath:v12 error:0];

  v13 = *MEMORY[0x1E69E9840];
}

- (id)_createSchemaHash
{
  v10 = *MEMORY[0x1E69E9840];
  memset(v9, 0, sizeof(v9));
  v3 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v9 length:32 freeWhenDone:0];
  v4 = [(SFSQLite *)self schema];
  v5 = [v4 dataUsingEncoding:4];

  CC_SHA256([v5 bytes], objc_msgSend(v5, "length"), v9);
  v6 = [v3 CKUppercaseHexStringWithoutSpaces];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_synchronousModeString
{
  v2 = [(SFSQLite *)self synchronousMode];
  if (v2 < 3)
  {
    return off_1E70D46D8[v2];
  }

  __security_simulatecrash(@"Execution has encountered an unexpected state", 1405091854);
  return @"normal";
}

- (int)userVersion
{
  v3 = [(SFSQLite *)self delegate];

  if (!v3)
  {
    return self->_userVersion;
  }

  v4 = [(SFSQLite *)self delegate];
  v5 = [v4 userVersion];

  return v5;
}

- (void)dealloc
{
  v3 = objc_autoreleasePoolPush();
  [(SFSQLite *)self close];
  objc_autoreleasePoolPop(v3);
  v4.receiver = self;
  v4.super_class = SFSQLite;
  [(SFSQLite *)&v4 dealloc];
}

- (SFSQLite)initWithPath:(id)a3 schema:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (![v7 length])
  {
    v17 = secLogObjForScope("SecCritical");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v18 = "Cannot init db with empty path";
LABEL_10:
      _os_log_impl(&dword_1887D2000, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 2u);
    }

LABEL_11:

    v16 = 0;
    goto LABEL_12;
  }

  if (![v8 length])
  {
    v17 = secLogObjForScope("SecCritical");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v18 = "Cannot init db without schema";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v20.receiver = self;
  v20.super_class = SFSQLite;
  v9 = [(SFSQLite *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_path, a3);
    objc_storeStrong(&v10->_schema, a4);
    v11 = [(SFSQLite *)v10 _createSchemaHash];
    schemaVersion = v10->_schemaVersion;
    v10->_schemaVersion = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    statementsBySQL = v10->_statementsBySQL;
    v10->_statementsBySQL = v13;

    objectClassPrefix = v10->_objectClassPrefix;
    v10->_objectClassPrefix = @"CK";

    v10->_synchronousMode = 1;
    v10->_hasMigrated = 0;
  }

  self = v10;
  v16 = self;
LABEL_12:

  return v16;
}

@end