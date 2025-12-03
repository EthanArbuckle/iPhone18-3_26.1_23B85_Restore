@interface ACCSQLite
- (ACCSQLite)initWithPath:(id)path schema:(id)schema;
- (BOOL)executeSQL:(id)l arguments:(char *)arguments;
- (BOOL)openWithError:(id *)error;
- (NSDateFormatter)dateFormatter;
- (id)_createSchemaHash;
- (id)_synchronousModeString;
- (id)_tableNameForClass:(Class)class;
- (id)allTableNames;
- (id)columnNamesForTable:(id)table;
- (id)creationDate;
- (id)datePropertyForKey:(id)key;
- (id)propertyForKey:(id)key;
- (id)select:(id)select from:(id)from where:(id)where bindings:(id)bindings;
- (id)selectFrom:(id)from where:(id)where bindings:(id)bindings limit:(id)limit;
- (id)statementForSQL:(id)l;
- (int)changes;
- (int)dbUserVersion;
- (int)userVersion;
- (int64_t)insertOrReplaceInto:(id)into values:(id)values;
- (int64_t)lastInsertRowID;
- (unint64_t)selectCountFrom:(id)from where:(id)where bindings:(id)bindings;
- (void)_periodicVacuum;
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
- (void)selectFrom:(id)from where:(id)where bindings:(id)bindings orderBy:(id)by limit:(id)limit block:(id)block;
- (void)setDateProperty:(id)property forKey:(id)key;
- (void)setProperty:(id)property forKey:(id)key;
- (void)update:(id)update set:(id)set where:(id)where bindings:(id)bindings limit:(id)limit;
@end

@implementation ACCSQLite

- (ACCSQLite)initWithPath:(id)path schema:(id)schema
{
  pathCopy = path;
  schemaCopy = schema;
  v17.receiver = self;
  v17.super_class = ACCSQLite;
  v9 = [(ACCSQLite *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_path, path);
    objc_storeStrong(&v10->_schema, schema);
    _createSchemaHash = [(ACCSQLite *)v10 _createSchemaHash];
    schemaVersion = v10->_schemaVersion;
    v10->_schemaVersion = _createSchemaHash;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    statementsBySQL = v10->_statementsBySQL;
    v10->_statementsBySQL = v13;

    objectClassPrefix = v10->_objectClassPrefix;
    v10->_objectClassPrefix = @"CK";

    v10->_synchronousMode = 1;
    *&v10->_hasMigrated = 256;
  }

  return v10;
}

- (void)dealloc
{
  v3 = objc_autoreleasePoolPush();
  [(ACCSQLite *)self close];
  objc_autoreleasePoolPop(v3);
  v4.receiver = self;
  v4.super_class = ACCSQLite;
  [(ACCSQLite *)&v4 dealloc];
}

- (int)userVersion
{
  delegate = [(ACCSQLite *)self delegate];

  if (!delegate)
  {
    return self->_userVersion;
  }

  delegate2 = [(ACCSQLite *)self delegate];
  userVersion = [delegate2 userVersion];

  return userVersion;
}

- (id)_synchronousModeString
{
  synchronousMode = [(ACCSQLite *)self synchronousMode];
  if (synchronousMode >= 3)
  {
    [ACCSQLite _synchronousModeString];
  }

  return off_2789E88E0[synchronousMode];
}

- (id)_createSchemaHash
{
  v10 = *MEMORY[0x277D85DE8];
  memset(v9, 0, sizeof(v9));
  v3 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v9 length:32 freeWhenDone:0];
  schema = [(ACCSQLite *)self schema];
  v5 = [schema dataUsingEncoding:4];

  CC_SHA256([v5 bytes], objc_msgSend(v5, "length"), v9);
  cKUppercaseHexStringWithoutSpaces = [v3 CKUppercaseHexStringWithoutSpaces];

  v7 = *MEMORY[0x277D85DE8];

  return cKUppercaseHexStringWithoutSpaces;
}

- (void)_periodicVacuum
{
  v3 = MEMORY[0x277CBEAA8];
  v4 = [(ACCSQLite *)self propertyForKey:@"LastVacuum"];
  [v4 floatValue];
  v11 = [v3 dateWithTimeIntervalSinceReferenceDate:v5];

  [v11 timeIntervalSinceNow];
  if (v6 < -604800.0)
  {
    [(ACCSQLite *)self executeSQL:@"VACUUM"];
    v7 = MEMORY[0x277CCACA8];
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceReferenceDate];
    v10 = [v7 stringWithFormat:@"%f", v9];

    [(ACCSQLite *)self setProperty:v10 forKey:@"LastVacuum"];
  }
}

- (BOOL)openWithError:(id *)error
{
  v65[1] = *MEMORY[0x277D85DE8];
  v5 = self->_path;
  openCount = self->_openCount;
  if (openCount)
  {
    stringByDeletingLastPathComponent = 0;
    v8 = 0;
    v9 = 0;
    self->_openCount = openCount + 1;
LABEL_3:
    v10 = 1;
    goto LABEL_32;
  }

  stringByDeletingLastPathComponent = [(NSString *)self->_path stringByDeletingLastPathComponent];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v59 = 0;
  v12 = [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v59];
  v13 = v59;
  v14 = v13;
  if (v12)
  {
    goto LABEL_5;
  }

  domain = [v13 domain];
  if (![domain isEqualToString:*MEMORY[0x277CCA050]])
  {

LABEL_12:
    v26 = v14;
    v23 = 0;
    v17 = v14;
    goto LABEL_13;
  }

  code = [v14 code];

  if (code != 516)
  {
    goto LABEL_12;
  }

LABEL_5:
  errorCopy = error;
  v58 = v14;
  v15 = v5;
  v16 = [defaultManager attributesOfItemAtPath:stringByDeletingLastPathComponent error:&v58];
  v17 = v58;

  v18 = *MEMORY[0x277CCA1B0];
  v19 = [v16 objectForKeyedSubscript:*MEMORY[0x277CCA1B0]];
  v20 = *MEMORY[0x277CCA1A0];
  v21 = [v19 isEqualToString:*MEMORY[0x277CCA1A0]];

  if ((v21 & 1) == 0)
  {
    v64 = v18;
    v65[0] = v20;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:&v64 count:1];
    [defaultManager setAttributes:v22 ofItemAtPath:stringByDeletingLastPathComponent error:0];
  }

  v14 = 0;
  v23 = 1;
  v5 = v15;
  error = errorCopy;
LABEL_13:

  v9 = v14;
  if (!v23)
  {
    goto LABEL_27;
  }

  v27 = sqlite3_open_v2([(NSString *)v5 fileSystemRepresentation], &self->_db, 3145734, 0);
  if (v27)
  {
    v28 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA050];
    v62 = *MEMORY[0x277CCA450];
    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error opening db at %@, rc=%d(0x%x)", self->_path, v27, v27];
    v63 = v30;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    v32 = [v28 errorWithDomain:v29 code:0 userInfo:v31];

    v9 = v32;
    goto LABEL_27;
  }

  sqlite3_extended_result_codes(self->_db, 1);
  if (!sqlite3_busy_timeout(self->_db, 300000))
  {
    if ([(ACCSQLite *)self executeSQL:@"pragma journal_mode = WAL"])
    {
      _synchronousModeString = [(ACCSQLite *)self _synchronousModeString];
      v34 = [(ACCSQLite *)self executeSQL:@"pragma synchronous = %@", _synchronousModeString];

      if (v34)
      {
        if ([(ACCSQLite *)self executeSQL:@"pragma auto_vacuum = FULL"])
        {
          [(ACCSQLite *)self begin];
          v35 = [(ACCSQLite *)self select:&unk_2848FBC48 from:@"sqlite_master" where:@"type = ? AND name = ?" bindings:&unk_2848FBC60];
          if (![v35 count])
          {
            [(ACCSQLite *)self executeSQL:@"create table if not exists Properties (\n    key    text primary key, \n    value  text\n);\n"];
          }

          v8 = [(ACCSQLite *)self propertyForKey:@"SchemaVersion"];
          dbUserVersion = [(ACCSQLite *)self dbUserVersion];
          if (v8)
          {
            v37 = dbUserVersion;
            schemaVersion = [(ACCSQLite *)self schemaVersion];
            if ([v8 isEqualToString:schemaVersion])
            {
              if (![(ACCSQLite *)self userVersion])
              {
                v51 = 0;
                goto LABEL_41;
              }

              userVersion = [(ACCSQLite *)self userVersion];

              if (v37 == userVersion)
              {
LABEL_38:
                v51 = 0;
LABEL_42:
                [(ACCSQLite *)self end];
                if ([(ACCSQLite *)self shouldVacuum])
                {
                  [(ACCSQLite *)self _periodicVacuum];
                }

                if ((v51 & 1) != 0 || self->_hasMigrated)
                {
                  schemaVersion2 = [(ACCSQLite *)self schemaVersion];
                  [(ACCSQLite *)self setProperty:schemaVersion2 forKey:@"SchemaVersion"];

                  if ([(ACCSQLite *)self userVersion])
                  {
                    [(ACCSQLite *)self executeSQL:@"pragma user_version = %ld", [(ACCSQLite *)self userVersion]];
                  }
                }

                ++self->_openCount;

                goto LABEL_3;
              }
            }

            else
            {
            }

            delegate = [(ACCSQLite *)self delegate];
            if (delegate)
            {
              v48 = delegate;
              delegate2 = [(ACCSQLite *)self delegate];
              v50 = [delegate2 migrateDatabase:self fromVersion:v37];

              if (v50)
              {
                self->_hasMigrated = 1;
              }
            }

            if (self->_hasMigrated)
            {
              goto LABEL_38;
            }

            [(ACCSQLite *)self removeAllStatements];
            [(ACCSQLite *)self dropAllTables];
            self->_hasMigrated = 1;
          }

          [(ACCSQLite *)self executeSQL:@"create table if not exists Properties (\n    key    text primary key, \n    value  text\n);\n"];
          schema = [(ACCSQLite *)self schema];
          [(ACCSQLite *)self executeSQL:@"%@", schema];

          v53 = MEMORY[0x277CCACA8];
          date = [MEMORY[0x277CBEAA8] date];
          [date timeIntervalSinceReferenceDate];
          schemaVersion = [v53 stringWithFormat:@"%f", v55];

          [(ACCSQLite *)self setProperty:schemaVersion forKey:@"Created"];
          v51 = 1;
LABEL_41:

          goto LABEL_42;
        }
      }
    }
  }

LABEL_27:
  sqlite3_close_v2(self->_db);
  self->_db = 0;
  if (error)
  {
    if (!v9)
    {
      v40 = MEMORY[0x277CCA9B8];
      v41 = *MEMORY[0x277CCA050];
      v60 = *MEMORY[0x277CCA450];
      v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error opening db at %@, ", self->_path];
      v61 = v42;
      v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      v9 = [v40 errorWithDomain:v41 code:0 userInfo:v43];
    }

    v44 = v9;
    v8 = 0;
    v10 = 0;
    *error = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

LABEL_32:

  v45 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)open
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v3 = [(ACCSQLite *)self openWithError:&v7];
  v4 = v7;
  if (!v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    path = [(ACCSQLite *)self path];
    *buf = 138412546;
    v9 = path;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] accsqlite: Error opening db at %@: %@", buf, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)close
{
  openCount = self->_openCount;
  if (openCount)
  {
    if (openCount == 1)
    {
      [(ACCSQLite *)self removeAllStatements];
      if (sqlite3_close(self->_db))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *v4 = 0;
          _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] accsqlite: Error closing database", v4, 2u);
        }

        return;
      }

      self->_db = 0;
      openCount = self->_openCount;
    }

    self->_openCount = openCount - 1;
  }
}

- (void)remove
{
  v17 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  [defaultManager removeItemAtPath:self->_path error:0];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [&unk_2848FBC30 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(&unk_2848FBC30);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
        v10 = [(NSString *)self->_path stringByAppendingString:v8];
        [defaultManager2 removeItemAtPath:v10 error:0];

        ++v7;
      }

      while (v5 != v7);
      v5 = [&unk_2848FBC30 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];
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
    v7 = v2;
    v8 = v3;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] accsqlite: Database is closed", v6, 2u);
    }

    return -1;
  }
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
    v7 = v2;
    v8 = v3;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] accsqlite: Database is closed", v6, 2u);
    }

    return -1;
  }
}

- (BOOL)executeSQL:(id)l arguments:(char *)arguments
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCACA8];
  lCopy = l;
  v8 = [[v6 alloc] initWithFormat:lCopy arguments:arguments];

  db = self->_db;
  if (db)
  {
    v10 = sqlite3_exec(db, [v8 UTF8String], 0, 0, 0);
    if (!v10)
    {
      v15 = 1;
      goto LABEL_10;
    }

    v11 = v10;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412546;
      v19 = v8;
      v20 = 1024;
      v21 = v11;
      v12 = MEMORY[0x277D86220];
      v13 = "[#ACCEventLogger] accsqlite: Error executing SQL: %@ (%d)";
      v14 = 18;
LABEL_7:
      _os_log_impl(&dword_233656000, v12, OS_LOG_TYPE_DEFAULT, v13, &v18, v14);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    v12 = MEMORY[0x277D86220];
    v13 = "[#ACCEventLogger] accsqlite: Database is closed";
    v14 = 2;
    goto LABEL_7;
  }

  v15 = 0;
LABEL_10:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)statementForSQL:(id)l
{
  v13 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (!self->_db)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] accsqlite: Database is closed", buf, 2u);
    }

    goto LABEL_9;
  }

  v5 = [(NSMutableDictionary *)self->_statementsBySQL objectForKeyedSubscript:lCopy];
  if (v5)
  {
    goto LABEL_10;
  }

  ppStmt = 0;
  v6 = lCopy;
  if (sqlite3_prepare_v2(self->_db, [v6 UTF8String], -1, &ppStmt, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v6;
      _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] Error preparing statement: %@", buf, 0xCu);
    }

LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  v9 = [ACCSQLiteStatement alloc];
  v5 = [(ACCSQLiteStatement *)v9 initWithSQLite:self SQL:v6 handle:ppStmt];
  [(NSMutableDictionary *)self->_statementsBySQL setObject:v5 forKeyedSubscript:v6];

LABEL_10:
  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)removeAllStatements
{
  allValues = [(NSMutableDictionary *)self->_statementsBySQL allValues];
  [allValues makeObjectsPerformSelector:sel_finalizeStatement];

  statementsBySQL = self->_statementsBySQL;

  [(NSMutableDictionary *)statementsBySQL removeAllObjects];
}

- (id)allTableNames
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(ACCSQLite *)self statementForSQL:@"select name from sqlite_master where type = 'table'"];
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

- (void)dropAllTables
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allTableNames = [(ACCSQLite *)self allTableNames];
  v4 = [allTableNames countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(allTableNames);
        }

        [(ACCSQLite *)self executeSQL:@"drop table %@", *(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [allTableNames countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)propertyForKey:(id)key
{
  keyCopy = key;
  v5 = [(ACCSQLite *)self statementForSQL:@"select value from Properties where key = ?"];
  [v5 bindText:keyCopy atIndex:0];

  v6 = 0;
  if ([v5 step])
  {
    v6 = [v5 textAtIndex:0];
  }

  [v5 reset];

  return v6;
}

- (void)setProperty:(id)property forKey:(id)key
{
  propertyCopy = property;
  keyCopy = key;
  if (propertyCopy)
  {
    v7 = [(ACCSQLite *)self statementForSQL:@"insert or replace into Properties (key, value) values (?, ?)"];
    [v7 bindText:keyCopy atIndex:0];

    [v7 bindText:propertyCopy atIndex:1];
    [v7 step];
    [v7 reset];
    keyCopy = v7;
  }

  else
  {
    [(ACCSQLite *)self removePropertyForKey:keyCopy];
  }
}

- (NSDateFormatter)dateFormatter
{
  dateFormatter = self->_dateFormatter;
  if (!dateFormatter)
  {
    v4 = objc_opt_new();
    [(NSDateFormatter *)v4 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZZZZZ"];
    v5 = self->_dateFormatter;
    self->_dateFormatter = v4;

    dateFormatter = self->_dateFormatter;
  }

  return dateFormatter;
}

- (id)datePropertyForKey:(id)key
{
  v4 = [(ACCSQLite *)self propertyForKey:key];
  if ([v4 length])
  {
    dateFormatter = [(ACCSQLite *)self dateFormatter];
    v6 = [dateFormatter dateFromString:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setDateProperty:(id)property forKey:(id)key
{
  keyCopy = key;
  if (property)
  {
    propertyCopy = property;
    dateFormatter = [(ACCSQLite *)self dateFormatter];
    property = [dateFormatter stringFromDate:propertyCopy];
  }

  [(ACCSQLite *)self setProperty:property forKey:keyCopy];
}

- (void)removePropertyForKey:(id)key
{
  keyCopy = key;
  v5 = [(ACCSQLite *)self statementForSQL:@"delete from Properties where key = ?"];
  [v5 bindText:keyCopy atIndex:0];

  [v5 step];
  [v5 reset];
}

- (id)creationDate
{
  v2 = MEMORY[0x277CBEAA8];
  v3 = [(ACCSQLite *)self propertyForKey:@"Created"];
  [v3 floatValue];
  v5 = [v2 dateWithTimeIntervalSinceReferenceDate:v4];

  return v5;
}

- (id)columnNamesForTable:(id)table
{
  table = [MEMORY[0x277CCACA8] stringWithFormat:@"pragma table_info(%@)", table];
  v5 = [(ACCSQLite *)self statementForSQL:table];

  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
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

- (id)select:(id)select from:(id)from where:(id)where bindings:(id)bindings
{
  selectCopy = select;
  fromCopy = from;
  whereCopy = where;
  bindingsCopy = bindings;
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = MEMORY[0x277CCAB68];
  v16 = [selectCopy componentsJoinedByString:{@", "}];
  fromCopy = [v15 stringWithFormat:@"select %@ from %@", v16, fromCopy];

  if (whereCopy)
  {
    [fromCopy appendFormat:@" where %@", whereCopy];
  }

  v18 = [(ACCSQLite *)self statementForSQL:fromCopy];
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

- (void)select:(id)select from:(id)from where:(id)where bindings:(id)bindings orderBy:(id)by limit:(id)limit block:(id)block
{
  selectCopy = select;
  fromCopy = from;
  whereCopy = where;
  bindingsCopy = bindings;
  byCopy = by;
  limitCopy = limit;
  blockCopy = block;
  context = objc_autoreleasePoolPush();
  v20 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v27 = selectCopy;
  if ([selectCopy count])
  {
    v21 = [selectCopy componentsJoinedByString:{@", "}];
  }

  else
  {
    v21 = @"*";
  }

  [v20 appendFormat:@"select %@ from %@", v21, fromCopy];
  if ([whereCopy length])
  {
    [v20 appendFormat:@" where %@", whereCopy];
  }

  if (byCopy)
  {
    v22 = [byCopy componentsJoinedByString:{@", "}];
    [v20 appendFormat:@" order by %@", v22];
  }

  if (limitCopy)
  {
    [v20 appendFormat:@" limit %ld", objc_msgSend(limitCopy, "integerValue")];
  }

  v23 = [(ACCSQLite *)self statementForSQL:v20];
  [v23 bindValues:bindingsCopy];
  v24 = objc_autoreleasePoolPush();
  if ([v23 step])
  {
    while (1)
    {
      allObjectsByColumnName = [v23 allObjectsByColumnName];
      if (blockCopy)
      {
        v30 = 0;
        blockCopy[2](blockCopy, allObjectsByColumnName, &v30);
        if (v30)
        {
          break;
        }
      }

      objc_autoreleasePoolPop(v24);
      v24 = objc_autoreleasePoolPush();
      if (([v23 step] & 1) == 0)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_16:
  objc_autoreleasePoolPop(v24);
  [v23 reset];

  objc_autoreleasePoolPop(context);
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
  v20 = objc_alloc_init(MEMORY[0x277CCAB68]);
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

  v22 = [(ACCSQLite *)self statementForSQL:v20];
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

- (id)selectFrom:(id)from where:(id)where bindings:(id)bindings limit:(id)limit
{
  fromCopy = from;
  whereCopy = where;
  bindingsCopy = bindings;
  limitCopy = limit;
  v14 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v14 appendFormat:@"select * from %@", fromCopy];
  if ([whereCopy length])
  {
    [v14 appendFormat:@" where %@", whereCopy];
  }

  if (limitCopy)
  {
    [v14 appendFormat:@" limit %ld", objc_msgSend(limitCopy, "integerValue")];
  }

  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = [(ACCSQLite *)self statementForSQL:v14];
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

- (void)update:(id)update set:(id)set where:(id)where bindings:(id)bindings limit:(id)limit
{
  updateCopy = update;
  setCopy = set;
  whereCopy = where;
  bindingsCopy = bindings;
  limitCopy = limit;
  v16 = objc_alloc_init(MEMORY[0x277CCAB68]);
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

  v17 = [(ACCSQLite *)self statementForSQL:v16];
  [v17 bindValues:bindingsCopy];
    ;
  }

  [v17 reset];
}

- (unint64_t)selectCountFrom:(id)from where:(id)where bindings:(id)bindings
{
  v5 = [(ACCSQLite *)self select:&unk_2848FBC78 from:from where:where bindings:bindings];
  v6 = [v5 objectAtIndexedSubscript:0];
  v7 = [v6 objectForKeyedSubscript:@"n"];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (int64_t)insertOrReplaceInto:(id)into values:(id)values
{
  intoCopy = into;
  valuesCopy = values;
  allKeys = [valuesCopy allKeys];
  v9 = [allKeys sortedArrayUsingSelector:sel_compare_];

  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
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

  v14 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"insert or replace into "];
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
  v19 = [(ACCSQLite *)self statementForSQL:v14];
  [v19 bindValues:v10];
  [v19 step];
  [v19 reset];
  lastInsertRowID = [(ACCSQLite *)self lastInsertRowID];

  return lastInsertRowID;
}

- (void)deleteFrom:(id)from matchingValues:(id)values
{
  selfCopy = self;
  fromCopy = from;
  valuesCopy = values;
  allKeys = [valuesCopy allKeys];
  v7 = [allKeys sortedArrayUsingSelector:sel_compare_];

  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = objc_alloc_init(MEMORY[0x277CCAB68]);
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

      if (v13 && ([MEMORY[0x277CBEB68] null], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEqual:", v13), v15, (v16 & 1) == 0))
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

  [(ACCSQLite *)selfCopy deleteFrom:fromCopy where:v9 bindings:v8, selfCopy];
}

- (void)deleteFrom:(id)from where:(id)where bindings:(id)bindings
{
  v8 = MEMORY[0x277CCACA8];
  bindingsCopy = bindings;
  where = [v8 stringWithFormat:@"delete from %@ where %@", from, where];
  v10 = [(ACCSQLite *)self statementForSQL:where];
  [v10 bindValues:bindingsCopy];

  [v10 step];
  [v10 reset];
}

- (id)_tableNameForClass:(Class)class
{
  v11 = *MEMORY[0x277D85DE8];
  aCCSQLiteClassName = [(objc_class *)class ACCSQLiteClassName];
  if ([aCCSQLiteClassName hasPrefix:self->_objectClassPrefix])
  {
    v5 = [aCCSQLiteClassName substringFromIndex:{-[NSString length](self->_objectClassPrefix, "length")}];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Object class %@ does not have prefix %@", aCCSQLiteClassName, self->_objectClassPrefix];
      *buf = 138412290;
      v10 = v6;
      _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] accsqlite: %@", buf, 0xCu);
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

- (int)dbUserVersion
{
  v2 = [(ACCSQLite *)self statementForSQL:@"pragma user_version"];
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

@end