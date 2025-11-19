@interface ACCSQLite
- (ACCSQLite)initWithPath:(id)a3 schema:(id)a4;
- (BOOL)executeSQL:(id)a3 arguments:(char *)a4;
- (BOOL)openWithError:(id *)a3;
- (NSDateFormatter)dateFormatter;
- (id)_createSchemaHash;
- (id)_synchronousModeString;
- (id)_tableNameForClass:(Class)a3;
- (id)allTableNames;
- (id)columnNamesForTable:(id)a3;
- (id)creationDate;
- (id)datePropertyForKey:(id)a3;
- (id)propertyForKey:(id)a3;
- (id)select:(id)a3 from:(id)a4 where:(id)a5 bindings:(id)a6;
- (id)selectFrom:(id)a3 where:(id)a4 bindings:(id)a5 limit:(id)a6;
- (id)statementForSQL:(id)a3;
- (int)changes;
- (int)dbUserVersion;
- (int)userVersion;
- (int64_t)insertOrReplaceInto:(id)a3 values:(id)a4;
- (int64_t)lastInsertRowID;
- (unint64_t)selectCountFrom:(id)a3 where:(id)a4 bindings:(id)a5;
- (void)_periodicVacuum;
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
- (void)selectFrom:(id)a3 where:(id)a4 bindings:(id)a5 orderBy:(id)a6 limit:(id)a7 block:(id)a8;
- (void)setDateProperty:(id)a3 forKey:(id)a4;
- (void)setProperty:(id)a3 forKey:(id)a4;
- (void)update:(id)a3 set:(id)a4 where:(id)a5 bindings:(id)a6 limit:(id)a7;
@end

@implementation ACCSQLite

- (ACCSQLite)initWithPath:(id)a3 schema:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = ACCSQLite;
  v9 = [(ACCSQLite *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_path, a3);
    objc_storeStrong(&v10->_schema, a4);
    v11 = [(ACCSQLite *)v10 _createSchemaHash];
    schemaVersion = v10->_schemaVersion;
    v10->_schemaVersion = v11;

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
  v3 = [(ACCSQLite *)self delegate];

  if (!v3)
  {
    return self->_userVersion;
  }

  v4 = [(ACCSQLite *)self delegate];
  v5 = [v4 userVersion];

  return v5;
}

- (id)_synchronousModeString
{
  v2 = [(ACCSQLite *)self synchronousMode];
  if (v2 >= 3)
  {
    [ACCSQLite _synchronousModeString];
  }

  return off_2789E88E0[v2];
}

- (id)_createSchemaHash
{
  v10 = *MEMORY[0x277D85DE8];
  memset(v9, 0, sizeof(v9));
  v3 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v9 length:32 freeWhenDone:0];
  v4 = [(ACCSQLite *)self schema];
  v5 = [v4 dataUsingEncoding:4];

  CC_SHA256([v5 bytes], objc_msgSend(v5, "length"), v9);
  v6 = [v3 CKUppercaseHexStringWithoutSpaces];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
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
    v8 = [MEMORY[0x277CBEAA8] date];
    [v8 timeIntervalSinceReferenceDate];
    v10 = [v7 stringWithFormat:@"%f", v9];

    [(ACCSQLite *)self setProperty:v10 forKey:@"LastVacuum"];
  }
}

- (BOOL)openWithError:(id *)a3
{
  v65[1] = *MEMORY[0x277D85DE8];
  v5 = self->_path;
  openCount = self->_openCount;
  if (openCount)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    self->_openCount = openCount + 1;
LABEL_3:
    v10 = 1;
    goto LABEL_32;
  }

  v7 = [(NSString *)self->_path stringByDeletingLastPathComponent];
  v11 = [MEMORY[0x277CCAA00] defaultManager];
  v59 = 0;
  v12 = [v11 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:&v59];
  v13 = v59;
  v14 = v13;
  if (v12)
  {
    goto LABEL_5;
  }

  v24 = [v13 domain];
  if (![v24 isEqualToString:*MEMORY[0x277CCA050]])
  {

LABEL_12:
    v26 = v14;
    v23 = 0;
    v17 = v14;
    goto LABEL_13;
  }

  v25 = [v14 code];

  if (v25 != 516)
  {
    goto LABEL_12;
  }

LABEL_5:
  v57 = a3;
  v58 = v14;
  v15 = v5;
  v16 = [v11 attributesOfItemAtPath:v7 error:&v58];
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
    [v11 setAttributes:v22 ofItemAtPath:v7 error:0];
  }

  v14 = 0;
  v23 = 1;
  v5 = v15;
  a3 = v57;
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
      v33 = [(ACCSQLite *)self _synchronousModeString];
      v34 = [(ACCSQLite *)self executeSQL:@"pragma synchronous = %@", v33];

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
          v36 = [(ACCSQLite *)self dbUserVersion];
          if (v8)
          {
            v37 = v36;
            v38 = [(ACCSQLite *)self schemaVersion];
            if ([v8 isEqualToString:v38])
            {
              if (![(ACCSQLite *)self userVersion])
              {
                v51 = 0;
                goto LABEL_41;
              }

              v39 = [(ACCSQLite *)self userVersion];

              if (v37 == v39)
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
                  v56 = [(ACCSQLite *)self schemaVersion];
                  [(ACCSQLite *)self setProperty:v56 forKey:@"SchemaVersion"];

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

            v47 = [(ACCSQLite *)self delegate];
            if (v47)
            {
              v48 = v47;
              v49 = [(ACCSQLite *)self delegate];
              v50 = [v49 migrateDatabase:self fromVersion:v37];

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
          v52 = [(ACCSQLite *)self schema];
          [(ACCSQLite *)self executeSQL:@"%@", v52];

          v53 = MEMORY[0x277CCACA8];
          v54 = [MEMORY[0x277CBEAA8] date];
          [v54 timeIntervalSinceReferenceDate];
          v38 = [v53 stringWithFormat:@"%f", v55];

          [(ACCSQLite *)self setProperty:v38 forKey:@"Created"];
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
  if (a3)
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
    *a3 = v9;
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
    v5 = [(ACCSQLite *)self path];
    *buf = 138412546;
    v9 = v5;
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
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  [v3 removeItemAtPath:self->_path error:0];

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
        v9 = [MEMORY[0x277CCAA00] defaultManager];
        v10 = [(NSString *)self->_path stringByAppendingString:v8];
        [v9 removeItemAtPath:v10 error:0];

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

- (BOOL)executeSQL:(id)a3 arguments:(char *)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCACA8];
  v7 = a3;
  v8 = [[v6 alloc] initWithFormat:v7 arguments:a4];

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

- (id)statementForSQL:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_db)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] accsqlite: Database is closed", buf, 2u);
    }

    goto LABEL_9;
  }

  v5 = [(NSMutableDictionary *)self->_statementsBySQL objectForKeyedSubscript:v4];
  if (v5)
  {
    goto LABEL_10;
  }

  ppStmt = 0;
  v6 = v4;
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
  v3 = [(NSMutableDictionary *)self->_statementsBySQL allValues];
  [v3 makeObjectsPerformSelector:sel_finalizeStatement];

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
  v3 = [(ACCSQLite *)self allTableNames];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        [(ACCSQLite *)self executeSQL:@"drop table %@", *(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)propertyForKey:(id)a3
{
  v4 = a3;
  v5 = [(ACCSQLite *)self statementForSQL:@"select value from Properties where key = ?"];
  [v5 bindText:v4 atIndex:0];

  v6 = 0;
  if ([v5 step])
  {
    v6 = [v5 textAtIndex:0];
  }

  [v5 reset];

  return v6;
}

- (void)setProperty:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (v8)
  {
    v7 = [(ACCSQLite *)self statementForSQL:@"insert or replace into Properties (key, value) values (?, ?)"];
    [v7 bindText:v6 atIndex:0];

    [v7 bindText:v8 atIndex:1];
    [v7 step];
    [v7 reset];
    v6 = v7;
  }

  else
  {
    [(ACCSQLite *)self removePropertyForKey:v6];
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

- (id)datePropertyForKey:(id)a3
{
  v4 = [(ACCSQLite *)self propertyForKey:a3];
  if ([v4 length])
  {
    v5 = [(ACCSQLite *)self dateFormatter];
    v6 = [v5 dateFromString:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setDateProperty:(id)a3 forKey:(id)a4
{
  v8 = a4;
  if (a3)
  {
    v6 = a3;
    v7 = [(ACCSQLite *)self dateFormatter];
    a3 = [v7 stringFromDate:v6];
  }

  [(ACCSQLite *)self setProperty:a3 forKey:v8];
}

- (void)removePropertyForKey:(id)a3
{
  v4 = a3;
  v5 = [(ACCSQLite *)self statementForSQL:@"delete from Properties where key = ?"];
  [v5 bindText:v4 atIndex:0];

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

- (id)columnNamesForTable:(id)a3
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"pragma table_info(%@)", a3];
  v5 = [(ACCSQLite *)self statementForSQL:v4];

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

- (id)select:(id)a3 from:(id)a4 where:(id)a5 bindings:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = MEMORY[0x277CCAB68];
  v16 = [v10 componentsJoinedByString:{@", "}];
  v17 = [v15 stringWithFormat:@"select %@ from %@", v16, v11];

  if (v12)
  {
    [v17 appendFormat:@" where %@", v12];
  }

  v18 = [(ACCSQLite *)self statementForSQL:v17];
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

- (void)select:(id)a3 from:(id)a4 where:(id)a5 bindings:(id)a6 orderBy:(id)a7 limit:(id)a8 block:(id)a9
{
  v15 = a3;
  v29 = a4;
  v16 = a5;
  v28 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  context = objc_autoreleasePoolPush();
  v20 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v27 = v15;
  if ([v15 count])
  {
    v21 = [v15 componentsJoinedByString:{@", "}];
  }

  else
  {
    v21 = @"*";
  }

  [v20 appendFormat:@"select %@ from %@", v21, v29];
  if ([v16 length])
  {
    [v20 appendFormat:@" where %@", v16];
  }

  if (v17)
  {
    v22 = [v17 componentsJoinedByString:{@", "}];
    [v20 appendFormat:@" order by %@", v22];
  }

  if (v18)
  {
    [v20 appendFormat:@" limit %ld", objc_msgSend(v18, "integerValue")];
  }

  v23 = [(ACCSQLite *)self statementForSQL:v20];
  [v23 bindValues:v28];
  v24 = objc_autoreleasePoolPush();
  if ([v23 step])
  {
    while (1)
    {
      v25 = [v23 allObjectsByColumnName];
      if (v19)
      {
        v30 = 0;
        v19[2](v19, v25, &v30);
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

- (void)selectFrom:(id)a3 where:(id)a4 bindings:(id)a5 orderBy:(id)a6 limit:(id)a7 block:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  context = objc_autoreleasePoolPush();
  v20 = objc_alloc_init(MEMORY[0x277CCAB68]);
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

  v22 = [(ACCSQLite *)self statementForSQL:v20];
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

- (id)selectFrom:(id)a3 where:(id)a4 bindings:(id)a5 limit:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v14 appendFormat:@"select * from %@", v10];
  if ([v11 length])
  {
    [v14 appendFormat:@" where %@", v11];
  }

  if (v13)
  {
    [v14 appendFormat:@" limit %ld", objc_msgSend(v13, "integerValue")];
  }

  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = [(ACCSQLite *)self statementForSQL:v14];
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

- (void)update:(id)a3 set:(id)a4 where:(id)a5 bindings:(id)a6 limit:(id)a7
{
  v18 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = objc_alloc_init(MEMORY[0x277CCAB68]);
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

  v17 = [(ACCSQLite *)self statementForSQL:v16];
  [v17 bindValues:v14];
    ;
  }

  [v17 reset];
}

- (unint64_t)selectCountFrom:(id)a3 where:(id)a4 bindings:(id)a5
{
  v5 = [(ACCSQLite *)self select:&unk_2848FBC78 from:a3 where:a4 bindings:a5];
  v6 = [v5 objectAtIndexedSubscript:0];
  v7 = [v6 objectForKeyedSubscript:@"n"];
  v8 = [v7 unsignedIntegerValue];

  return v8;
}

- (int64_t)insertOrReplaceInto:(id)a3 values:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 allKeys];
  v9 = [v8 sortedArrayUsingSelector:sel_compare_];

  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
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

  v14 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"insert or replace into "];
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
  v19 = [(ACCSQLite *)self statementForSQL:v14];
  [v19 bindValues:v10];
  [v19 step];
  [v19 reset];
  v20 = [(ACCSQLite *)self lastInsertRowID];

  return v20;
}

- (void)deleteFrom:(id)a3 matchingValues:(id)a4
{
  v18 = self;
  v19 = a3;
  v5 = a4;
  v6 = [v5 allKeys];
  v7 = [v6 sortedArrayUsingSelector:sel_compare_];

  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = objc_alloc_init(MEMORY[0x277CCAB68]);
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

  [(ACCSQLite *)v18 deleteFrom:v19 where:v9 bindings:v8, v18];
}

- (void)deleteFrom:(id)a3 where:(id)a4 bindings:(id)a5
{
  v8 = MEMORY[0x277CCACA8];
  v9 = a5;
  v11 = [v8 stringWithFormat:@"delete from %@ where %@", a3, a4];
  v10 = [(ACCSQLite *)self statementForSQL:v11];
  [v10 bindValues:v9];

  [v10 step];
  [v10 reset];
}

- (id)_tableNameForClass:(Class)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [(objc_class *)a3 ACCSQLiteClassName];
  if ([v4 hasPrefix:self->_objectClassPrefix])
  {
    v5 = [v4 substringFromIndex:{-[NSString length](self->_objectClassPrefix, "length")}];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Object class %@ does not have prefix %@", v4, self->_objectClassPrefix];
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