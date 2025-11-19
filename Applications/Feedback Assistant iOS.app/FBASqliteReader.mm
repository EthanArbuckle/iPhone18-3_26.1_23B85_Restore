@interface FBASqliteReader
- (FBASqliteReader)initWithFile:(id)a3;
- (id)allRowsForTable:(id)a3;
- (id)csvRepresentationForTable:(id)a3;
- (id)runQuery:(id)a3;
- (id)tableNames;
- (void)setDbFile:(id)a3;
@end

@implementation FBASqliteReader

- (FBASqliteReader)initWithFile:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = FBASqliteReader;
  v5 = [(FBASqliteReader *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(FBASqliteReader *)v5 setDbFile:v4];
  }

  return v6;
}

- (void)setDbFile:(id)a3
{
  v5 = a3;
  v6 = +[NSFileManager defaultManager];
  v7 = [v5 path];
  v8 = [v6 fileExistsAtPath:v7];

  if (v8)
  {
    objc_storeStrong(&self->_dbFile, a3);
  }

  else
  {
    v9 = +[FBALog appHandle];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100093928(v9);
    }

    dbFile = self->_dbFile;
    self->_dbFile = 0;
  }
}

- (id)tableNames
{
  v2 = [(FBASqliteReader *)self runQuery:@"SELECT name FROM sqlite_master WHERE type='table'"];
  v3 = [v2 valueForKey:@"name"];

  return v3;
}

- (id)allRowsForTable:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v9 = [NSException exceptionWithName:NSGenericException reason:@"passed nil tableName to rowsForTable:" userInfo:0];
    objc_exception_throw(v9);
  }

  v5 = v4;
  v6 = [NSString stringWithFormat:@"SELECT * FROM %@", v4];
  v7 = [(FBASqliteReader *)self runQuery:v6];

  return v7;
}

- (id)csvRepresentationForTable:(id)a3
{
  v4 = a3;
  v5 = [(FBASqliteReader *)self allRowsForTable:v4];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v27 = v4;
    v8 = 0;
    v9 = 0;
    v10 = *v30;
    v11 = @"\n";
    v12 = &_s8Dispatch0A3QoSV0B6SClassOMa_ptr;
    do
    {
      v13 = 0;
      v14 = v8;
      v28 = v7;
      do
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v15 = *(*(&v29 + 1) + 8 * v13);
        if (!v9)
        {
          v9 = objc_opt_new();
          v16 = [v15 allKeys];
          v17 = v16;
          if (v16 && [v16 count])
          {
            [v17 componentsJoinedByString:{@", "}];
            v18 = v10;
            v19 = v11;
            v20 = v12;
            v22 = v21 = v5;
            [v9 appendString:v22];

            v5 = v21;
            v12 = v20;
            v11 = v19;
            v10 = v18;
            v7 = v28;
          }

          [v9 appendString:v11];
        }

        v23 = [v15 allValues];
        v8 = [v23 componentsJoinedByString:{@", "}];

        v24 = [v12[307] stringWithFormat:@"%@\n", v8];
        [v9 appendString:v24];

        v13 = v13 + 1;
        v14 = v8;
      }

      while (v7 != v13);
      v7 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v7);
    if (v9)
    {
      v25 = [objc_alloc(v12[307]) initWithString:v9];
    }

    else
    {
      v25 = &stru_1000E2210;
    }

    v4 = v27;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v25 = &stru_1000E2210;
  }

  return v25;
}

- (id)runQuery:(id)a3
{
  v4 = a3;
  if (!self->_dbFile)
  {
    v28 = [NSException exceptionWithName:NSGenericException reason:@"invalid database file" userInfo:0];
    objc_exception_throw(v28);
  }

  v5 = v4;
  ppDb = 0;
  v6 = [(FBASqliteReader *)self dbFile];
  v7 = [v6 path];

  v8 = 0;
  v9 = 0;
  if (!sqlite3_open([v7 UTF8String], &ppDb))
  {
    ppStmt = 0;
    if (sqlite3_prepare_v2(ppDb, [v5 UTF8String], -1, &ppStmt, 0))
    {
      v10 = +[FBALog appHandle];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10009396C(&ppDb, v10);
      }

      v8 = 0;
      v9 = 0;
    }

    else
    {
      v11 = sqlite3_column_count(ppStmt);
      v12 = v11;
      v13 = [[NSMutableArray alloc] initWithCapacity:v11];
      if (v11 >= 1)
      {
        v14 = 0;
        do
        {
          v15 = [NSString stringWithUTF8String:sqlite3_column_name(ppStmt, v14)];
          [v13 addObject:v15];

          ++v14;
        }

        while (v12 != v14);
      }

      v16 = [v13 copy];
      v9 = [NSArray arrayWithArray:v16];

      v8 = [NSMutableArray arrayWithCapacity:v12];
      if (sqlite3_step(ppStmt) == 100)
      {
        v29 = v7;
        v30 = v5;
        do
        {
          v17 = objc_opt_new();
          if (v12 < 1)
          {
            v20 = 0;
            v19 = 0;
          }

          else
          {
            v18 = 0;
            v19 = 0;
            v20 = 0;
            do
            {
              v21 = sqlite3_column_text(ppStmt, v18);
              if (v21)
              {
                v22 = [NSString stringWithUTF8String:v21];

                v23 = [v9 objectAtIndexedSubscript:v18];

                [v17 setObject:v22 forKeyedSubscript:v23];
                v20 = v23;
                v19 = v22;
              }

              ++v18;
            }

            while (v12 != v18);
          }

          v24 = [v17 copy];
          [v8 addObject:v24];
        }

        while (sqlite3_step(ppStmt) == 100);
        v7 = v29;
        v5 = v30;
      }
    }

    sqlite3_finalize(ppStmt);
  }

  sqlite3_close(ppDb);
  v25 = [v8 copy];
  v26 = [NSArray arrayWithArray:v25];

  return v26;
}

@end