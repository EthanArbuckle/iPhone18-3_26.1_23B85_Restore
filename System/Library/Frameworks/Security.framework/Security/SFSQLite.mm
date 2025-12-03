@interface SFSQLite
- (BOOL)executeSQL:(id)l;
- (BOOL)openWithError:(id *)error;
- (NSDateFormatter)dateFormatter;
- (NSDateFormatter)oldDateFormatter;
- (SFSQLite)initWithPath:(id)path schema:(id)schema;
- (id)_createSchemaHash;
- (id)_synchronousModeString;
- (id)_tableNameForClass:(Class)class;
- (id)allTableNames;
- (id)columnNamesForTable:(id)table;
- (id)creationDate;
- (id)datePropertyForKey:(id)key;
- (id)propertyForKey:(id)key;
- (id)select:(id)select from:(id)from mapEachRow:(id)row;
- (id)select:(id)select from:(id)from where:(id)where bindings:(id)bindings;
- (id)selectFrom:(id)from where:(id)where bindings:(id)bindings limit:(id)limit;
- (id)statementForSQL:(id)l;
- (int)autoVacuumSetting;
- (int)changes;
- (int)dbUserVersion;
- (int)userVersion;
- (int64_t)insertOrReplaceInto:(id)into values:(id)values;
- (int64_t)lastInsertRowID;
- (unint64_t)selectCountFrom:(id)from where:(id)where bindings:(id)bindings;
- (void)attemptProperDatabasePermissions;
- (void)close;
- (void)dealloc;
- (void)deleteFrom:(id)from matchingValues:(id)values;
- (void)deleteFrom:(id)from where:(id)where bindings:(id)bindings;
- (void)dropAllTables;
- (void)open;
- (void)remove;
- (void)removeAllStatements;
- (void)removePropertyForKey:(id)key;
- (void)select:(id)select from:(id)from where:(id)where bindings:(id)bindings orderBy:(id)by limit:(id)limit block:(id)block;
- (void)select:(id)select from:(id)from where:(id)where bindings:(id)bindings orderBy:(id)by limit:(id)limit forEachRow:(id)row;
- (void)selectFrom:(id)from where:(id)where bindings:(id)bindings orderBy:(id)by limit:(id)limit block:(id)block;
- (void)setDateProperty:(id)property forKey:(id)key;
- (void)setProperty:(id)property forKey:(id)key;
- (void)update:(id)update set:(id)set where:(id)where bindings:(id)bindings limit:(id)limit;
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

- (id)_tableNameForClass:(Class)class
{
  v14 = *MEMORY[0x1E69E9840];
  sFSQLiteClassName = [(objc_class *)class SFSQLiteClassName];
  if ([sFSQLiteClassName hasPrefix:self->_objectClassPrefix])
  {
    v5 = [sFSQLiteClassName substringFromIndex:{-[NSString length](self->_objectClassPrefix, "length")}];
  }

  else
  {
    v6 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      objectClassPrefix = self->_objectClassPrefix;
      v10 = 138412546;
      v11 = sFSQLiteClassName;
      v12 = 2112;
      v13 = objectClassPrefix;
      _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "sfsqlite: Object class %@ does not have prefix %@", &v10, 0x16u);
    }

    v5 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)deleteFrom:(id)from where:(id)where bindings:(id)bindings
{
  v8 = MEMORY[0x1E696AEC0];
  bindingsCopy = bindings;
  where = [v8 stringWithFormat:@"delete from %@ where %@", from, where];
  v10 = [(SFSQLite *)self statementForSQL:where];
  [v10 bindValues:bindingsCopy];

  [v10 step];
  [v10 reset];
}

- (void)deleteFrom:(id)from matchingValues:(id)values
{
  selfCopy = self;
  fromCopy = from;
  valuesCopy = values;
  allKeys = [valuesCopy allKeys];
  v7 = [allKeys sortedArrayUsingSelector:sel_compare_];

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if ([v7 count])
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = [v7 objectAtIndexedSubscript:{v11, selfCopy}];
      v13 = [valuesCopy objectForKeyedSubscript:v12];

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

  [(SFSQLite *)selfCopy deleteFrom:fromCopy where:v9 bindings:v8, selfCopy];
}

- (int64_t)insertOrReplaceInto:(id)into values:(id)values
{
  intoCopy = into;
  valuesCopy = values;
  allKeys = [valuesCopy allKeys];
  v9 = [allKeys sortedArrayUsingSelector:sel_compare_];

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v9 count])
  {
    v11 = 0;
    do
    {
      v12 = [v9 objectAtIndexedSubscript:v11];
      v13 = [valuesCopy objectForKeyedSubscript:v12];
      [v10 setObject:v13 atIndexedSubscript:v11];

      ++v11;
    }

    while (v11 < [v9 count]);
  }

  v14 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"insert or replace into "];
  [v14 appendString:intoCopy];
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
  lastInsertRowID = [(SFSQLite *)self lastInsertRowID];

  return lastInsertRowID;
}

- (unint64_t)selectCountFrom:(id)from where:(id)where bindings:(id)bindings
{
  v5 = [(SFSQLite *)self select:&unk_1EFAAC5C8 from:from where:where bindings:bindings];
  v6 = [v5 objectAtIndexedSubscript:0];
  v7 = [v6 objectForKeyedSubscript:@"n"];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)update:(id)update set:(id)set where:(id)where bindings:(id)bindings limit:(id)limit
{
  updateCopy = update;
  setCopy = set;
  whereCopy = where;
  bindingsCopy = bindings;
  limitCopy = limit;
  if ([setCopy length])
  {
    v16 = objc_alloc_init(MEMORY[0x1E696AD60]);
    [v16 appendFormat:@"update %@", updateCopy];
    [v16 appendFormat:@" set %@", setCopy];
    if ([whereCopy length])
    {
      [v16 appendFormat:@" where %@", whereCopy];
    }

    if (limitCopy)
    {
      [v16 appendFormat:@" limit %ld", objc_msgSend(limitCopy, "integerValue")];
    }

    v17 = [(SFSQLite *)self statementForSQL:v16];
    [v17 bindValues:bindingsCopy];
      ;
    }

    [v17 reset];
  }
}

- (id)selectFrom:(id)from where:(id)where bindings:(id)bindings limit:(id)limit
{
  fromCopy = from;
  whereCopy = where;
  bindingsCopy = bindings;
  limitCopy = limit;
  v14 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v14 appendFormat:@"select * from %@", fromCopy];
  if ([whereCopy length])
  {
    [v14 appendFormat:@" where %@", whereCopy];
  }

  if (limitCopy)
  {
    [v14 appendFormat:@" limit %ld", objc_msgSend(limitCopy, "integerValue")];
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = [(SFSQLite *)self statementForSQL:v14];
  [v16 bindValues:bindingsCopy];
  if ([v16 step])
  {
    do
    {
      allObjectsByColumnName = [v16 allObjectsByColumnName];
      [v15 addObject:allObjectsByColumnName];
    }

    while (([v16 step] & 1) != 0);
  }

  [v16 reset];

  return v15;
}

- (void)selectFrom:(id)from where:(id)where bindings:(id)bindings orderBy:(id)by limit:(id)limit block:(id)block
{
  fromCopy = from;
  whereCopy = where;
  bindingsCopy = bindings;
  byCopy = by;
  limitCopy = limit;
  blockCopy = block;
  context = objc_autoreleasePoolPush();
  v20 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v20 appendFormat:@"select * from %@", fromCopy];
  if ([whereCopy length])
  {
    [v20 appendFormat:@" where %@", whereCopy, context];
  }

  if (byCopy)
  {
    v21 = [byCopy componentsJoinedByString:{@", "}];
    [v20 appendFormat:@" order by %@", v21];
  }

  if (limitCopy)
  {
    [v20 appendFormat:@" limit %ld", objc_msgSend(limitCopy, "integerValue")];
  }

  v22 = [(SFSQLite *)self statementForSQL:v20];
  [v22 bindValues:bindingsCopy];
  v23 = objc_autoreleasePoolPush();
  if ([v22 step])
  {
    while (1)
    {
      allObjectsByColumnName = [v22 allObjectsByColumnName];
      if (blockCopy)
      {
        v26 = 0;
        blockCopy[2](blockCopy, allObjectsByColumnName, &v26);
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

- (void)select:(id)select from:(id)from where:(id)where bindings:(id)bindings orderBy:(id)by limit:(id)limit forEachRow:(id)row
{
  selectCopy = select;
  fromCopy = from;
  whereCopy = where;
  bindingsCopy = bindings;
  byCopy = by;
  limitCopy = limit;
  rowCopy = row;
  context = objc_autoreleasePoolPush();
  v21 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if ([selectCopy count])
  {
    v22 = [selectCopy componentsJoinedByString:{@", "}];
  }

  else
  {
    v22 = @"*";
  }

  [v21 appendFormat:@"select %@ from %@", v22, fromCopy];
  if ([whereCopy length])
  {
    [v21 appendFormat:@" where %@", whereCopy];
  }

  if (byCopy)
  {
    v23 = [byCopy componentsJoinedByString:{@", "}];
    [v21 appendFormat:@" order by %@", v23];
  }

  if (limitCopy)
  {
    [v21 appendFormat:@" limit %ld", objc_msgSend(limitCopy, "integerValue")];
  }

  v24 = [(SFSQLite *)self statementForSQL:v21];
  [v24 bindValues:bindingsCopy];
  v25 = objc_autoreleasePoolPush();
  if ([v24 step])
  {
    do
    {
      if (rowCopy)
      {
        v28 = 0;
        rowCopy[2](rowCopy, v24, &v28);
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

- (void)select:(id)select from:(id)from where:(id)where bindings:(id)bindings orderBy:(id)by limit:(id)limit block:(id)block
{
  blockCopy = block;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __59__SFSQLite_select_from_where_bindings_orderBy_limit_block___block_invoke;
  v18[3] = &unk_1E70D70E8;
  v19 = blockCopy;
  v17 = blockCopy;
  [(SFSQLite *)self select:select from:from where:where bindings:bindings orderBy:by limit:limit forEachRow:v18];
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

- (id)select:(id)select from:(id)from where:(id)where bindings:(id)bindings
{
  selectCopy = select;
  fromCopy = from;
  whereCopy = where;
  bindingsCopy = bindings;
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = MEMORY[0x1E696AD60];
  v16 = [selectCopy componentsJoinedByString:{@", "}];
  fromCopy = [v15 stringWithFormat:@"select %@ from %@", v16, fromCopy];

  if (whereCopy)
  {
    [fromCopy appendFormat:@" where %@", whereCopy];
  }

  v18 = [(SFSQLite *)self statementForSQL:fromCopy];
  [v18 bindValues:bindingsCopy];
  if ([v18 step])
  {
    do
    {
      allObjectsByColumnName = [v18 allObjectsByColumnName];
      [v14 addObject:allObjectsByColumnName];
    }

    while (([v18 step] & 1) != 0);
  }

  [v18 reset];

  return v14;
}

- (id)select:(id)select from:(id)from mapEachRow:(id)row
{
  rowCopy = row;
  v9 = MEMORY[0x1E695DF70];
  fromCopy = from;
  selectCopy = select;
  v12 = objc_alloc_init(v9);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __35__SFSQLite_select_from_mapEachRow___block_invoke;
  v18[3] = &unk_1E70D46B8;
  v20 = rowCopy;
  v13 = v12;
  v19 = v13;
  v14 = rowCopy;
  [(SFSQLite *)self select:selectCopy from:fromCopy where:0 bindings:0 orderBy:0 limit:0 forEachRow:v18];

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

- (id)columnNamesForTable:(id)table
{
  table = [MEMORY[0x1E696AEC0] stringWithFormat:@"pragma table_info(%@)", table];
  v5 = [(SFSQLite *)self statementForSQL:table];

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

- (void)removePropertyForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy length])
  {
    v4 = [(SFSQLite *)self statementForSQL:@"delete from Properties where key = ?"];
    [v4 bindText:keyCopy atIndex:0];
    [v4 step];
    [v4 reset];
  }
}

- (void)setDateProperty:(id)property forKey:(id)key
{
  keyCopy = key;
  if (property)
  {
    propertyCopy = property;
    dateFormatter = [(SFSQLite *)self dateFormatter];
    property = [dateFormatter stringFromDate:propertyCopy];
  }

  [(SFSQLite *)self setProperty:property forKey:keyCopy];
}

- (id)datePropertyForKey:(id)key
{
  v4 = [(SFSQLite *)self propertyForKey:key];
  if ([v4 length])
  {
    dateFormatter = [(SFSQLite *)self dateFormatter];
    v6 = [dateFormatter dateFromString:v4];

    if (!v6)
    {
      oldDateFormatter = [(SFSQLite *)self oldDateFormatter];
      v6 = [oldDateFormatter dateFromString:v4];
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

- (void)setProperty:(id)property forKey:(id)key
{
  propertyCopy = property;
  keyCopy = key;
  if ([keyCopy length])
  {
    if (!propertyCopy)
    {
      [(SFSQLite *)self removePropertyForKey:keyCopy];
      goto LABEL_8;
    }

    v8 = [(SFSQLite *)self statementForSQL:@"insert or replace into Properties (key, value) values (?, ?)"];
    [v8 bindText:keyCopy atIndex:0];
    [v8 bindText:propertyCopy atIndex:1];
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

- (id)propertyForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy length])
  {
    v5 = [(SFSQLite *)self statementForSQL:@"select value from Properties where key = ?"];
    [v5 bindText:keyCopy atIndex:0];
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
  allTableNames = [(SFSQLite *)self allTableNames];
  v4 = [allTableNames countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(allTableNames);
        }

        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"drop table %@", *(*(&v10 + 1) + 8 * v7)];
        [(SFSQLite *)self executeSQL:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [allTableNames countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  allValues = [(NSMutableDictionary *)self->_statementsBySQL allValues];
  [allValues makeObjectsPerformSelector:sel_finalizeStatement];

  statementsBySQL = self->_statementsBySQL;

  [(NSMutableDictionary *)statementsBySQL removeAllObjects];
}

- (id)statementForSQL:(id)l
{
  v17 = *MEMORY[0x1E69E9840];
  lCopy = l;
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

  v6 = [(NSMutableDictionary *)self->_statementsBySQL objectForKeyedSubscript:lCopy];
  if (!v6)
  {
    ppStmt = 0;
    v9 = lCopy;
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SFSQLite.m" lineNumber:550 description:{@"Statement not reset after last use: %@", lCopy}];
  }

LABEL_12:

  v11 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)executeSQL:(id)l
{
  v21 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v5 = lCopy;
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

  v7 = sqlite3_exec(db, [lCopy UTF8String], 0, 0, 0);
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SFSQLite.m" lineNumber:480 description:{@"Trying to remove db at: %@ while it is open", self->_path}];
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  [defaultManager removeItemAtPath:self->_path error:0];

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
        defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
        v10 = [(NSString *)self->_path stringByAppendingString:v8];
        [defaultManager2 removeItemAtPath:v10 error:0];

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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SFSQLite.m" lineNumber:465 description:@"Missing handle for open cache db"];
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
      path = [(SFSQLite *)self path];
      *buf = 138412546;
      v11 = path;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "sfsqlite: Error opening db at %@: %@", buf, 0x16u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)openWithError:(id *)error
{
  v75[1] = *MEMORY[0x1E69E9840];
  v6 = self->_path;
  openCount = self->_openCount;
  if (openCount)
  {
    if (!self->_db)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SFSQLite.m" lineNumber:324 description:@"Missing handle for open cache db"];

      openCount = self->_openCount;
    }

    stringByDeletingLastPathComponent = 0;
    v9 = 0;
    v10 = 0;
    self->_openCount = openCount + 1;
    v11 = 1;
    goto LABEL_35;
  }

  stringByDeletingLastPathComponent = [(NSString *)self->_path stringByDeletingLastPathComponent];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v69 = 0;
  v13 = [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v69];
  v14 = v69;
  v15 = v14;
  if (v13)
  {
    goto LABEL_6;
  }

  domain = [v14 domain];
  if (![domain isEqualToString:*MEMORY[0x1E696A250]])
  {

LABEL_13:
    v28 = v15;
    v25 = 0;
    v19 = v15;
    goto LABEL_14;
  }

  code = [v15 code];

  if (code != 516)
  {
    goto LABEL_13;
  }

LABEL_6:
  errorCopy = error;
  v68 = v15;
  v16 = v6;
  v17 = stringByDeletingLastPathComponent;
  v18 = [defaultManager attributesOfItemAtPath:stringByDeletingLastPathComponent error:&v68];
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
    [defaultManager setAttributes:v24 ofItemAtPath:v17 error:0];
  }

  v15 = 0;
  v25 = 1;
  v6 = v16;
  error = errorCopy;
  stringByDeletingLastPathComponent = v17;
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
    v37 = v36 = stringByDeletingLastPathComponent;
    v38 = [v32 errorWithDomain:v33 code:v34 userInfo:v37];

    stringByDeletingLastPathComponent = v36;
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
      _synchronousModeString = [(SFSQLite *)self _synchronousModeString];
      v41 = [v39 stringWithFormat:@"pragma synchronous = %@", _synchronousModeString];
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
        dbUserVersion = [(SFSQLite *)self dbUserVersion];
        if (v9)
        {
          v45 = dbUserVersion;
          schemaVersion = [(SFSQLite *)self schemaVersion];
          if ([v9 isEqualToString:schemaVersion])
          {
            if (![(SFSQLite *)self userVersion])
            {

              goto LABEL_44;
            }

            userVersion = [(SFSQLite *)self userVersion];

            if (v45 == userVersion)
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
              schemaVersion2 = [(SFSQLite *)self schemaVersion];
              [(SFSQLite *)self setProperty:schemaVersion2 forKey:@"SchemaVersion"];

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

          delegate = [(SFSQLite *)self delegate];
          if (delegate)
          {
            v56 = delegate;
            delegate2 = [(SFSQLite *)self delegate];
            v58 = [delegate2 migrateDatabase:self fromVersion:v45];

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
        schema = [(SFSQLite *)self schema];
        [(SFSQLite *)self executeSQL:schema];

        v60 = MEMORY[0x1E696AEC0];
        date = [MEMORY[0x1E695DF00] date];
        [date timeIntervalSinceReferenceDate];
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
  if (error)
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
    *error = v10;
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
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v18 = *MEMORY[0x1E696A370];
  v4 = v18;
  v5 = [MEMORY[0x1E696AD98] numberWithShort:438];
  v19[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  [defaultManager setAttributes:v6 ofItemAtPath:self->_path error:0];

  v16 = v4;
  v7 = [MEMORY[0x1E696AD98] numberWithShort:438];
  v17 = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-wal", self->_path];
  [defaultManager setAttributes:v8 ofItemAtPath:v9 error:0];

  v14 = v4;
  v10 = [MEMORY[0x1E696AD98] numberWithShort:438];
  v15 = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-shm", self->_path];
  [defaultManager setAttributes:v11 ofItemAtPath:v12 error:0];

  v13 = *MEMORY[0x1E69E9840];
}

- (id)_createSchemaHash
{
  v10 = *MEMORY[0x1E69E9840];
  memset(v9, 0, sizeof(v9));
  v3 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v9 length:32 freeWhenDone:0];
  schema = [(SFSQLite *)self schema];
  v5 = [schema dataUsingEncoding:4];

  CC_SHA256([v5 bytes], objc_msgSend(v5, "length"), v9);
  cKUppercaseHexStringWithoutSpaces = [v3 CKUppercaseHexStringWithoutSpaces];

  v7 = *MEMORY[0x1E69E9840];

  return cKUppercaseHexStringWithoutSpaces;
}

- (id)_synchronousModeString
{
  synchronousMode = [(SFSQLite *)self synchronousMode];
  if (synchronousMode < 3)
  {
    return off_1E70D46D8[synchronousMode];
  }

  __security_simulatecrash(@"Execution has encountered an unexpected state", 1405091854);
  return @"normal";
}

- (int)userVersion
{
  delegate = [(SFSQLite *)self delegate];

  if (!delegate)
  {
    return self->_userVersion;
  }

  delegate2 = [(SFSQLite *)self delegate];
  userVersion = [delegate2 userVersion];

  return userVersion;
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

- (SFSQLite)initWithPath:(id)path schema:(id)schema
{
  pathCopy = path;
  schemaCopy = schema;
  if (![pathCopy length])
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

    selfCopy = 0;
    goto LABEL_12;
  }

  if (![schemaCopy length])
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
    objc_storeStrong(&v9->_path, path);
    objc_storeStrong(&v10->_schema, schema);
    _createSchemaHash = [(SFSQLite *)v10 _createSchemaHash];
    schemaVersion = v10->_schemaVersion;
    v10->_schemaVersion = _createSchemaHash;

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    statementsBySQL = v10->_statementsBySQL;
    v10->_statementsBySQL = v13;

    objectClassPrefix = v10->_objectClassPrefix;
    v10->_objectClassPrefix = @"CK";

    v10->_synchronousMode = 1;
    v10->_hasMigrated = 0;
  }

  self = v10;
  selfCopy = self;
LABEL_12:

  return selfCopy;
}

@end