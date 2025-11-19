@interface IMDatabaseCursor
- (BOOL)close;
- (BOOL)reset;
- (IMDatabaseCursor)initWithQuery:(id)a3 databaseHandle:(id)a4;
- (IMDatabaseCursor)initWithStatement:(sqlite3_stmt *)a3;
- (NSMutableArray)results;
- (id)_undeclaredTypeForColumnIndex:(int)a3;
- (id)nextRowAsArray;
- (id)nextRowAsDictionary;
- (int64_t)rowCount;
- (void)dealloc;
@end

@implementation IMDatabaseCursor

- (IMDatabaseCursor)initWithQuery:(id)a3 databaseHandle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = IMDatabaseCursor;
  v8 = [(IMDatabaseCursor *)&v14 init];
  if (v8)
  {
    v9 = v8;
    v12 = 0;
    pzTail = [v6 UTF8String];
    if (sqlite3_prepare_v2([v7 _databaseHandle], pzTail, -1, &v12, &pzTail))
    {
      v10 = 0;
    }

    else
    {
      v9 = [(IMDatabaseCursor *)v9 initWithStatement:v12];
      v10 = v9;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (IMDatabaseCursor)initWithStatement:(sqlite3_stmt *)a3
{
  v20.receiver = self;
  v20.super_class = IMDatabaseCursor;
  v4 = [(IMDatabaseCursor *)&v20 init];
  v5 = v4;
  if (v4)
  {
    v4->_statement = a3;
    v6 = sqlite3_column_count(a3);
    v5->_numColumns = v6;
    v7 = [NSMutableArray arrayWithCapacity:v6];
    columnNames = v5->_columnNames;
    v5->_columnNames = v7;

    v9 = [NSMutableArray arrayWithCapacity:v5->_numColumns];
    columnTypes = v5->_columnTypes;
    v5->_columnTypes = v9;

    if (v5->_numColumns >= 1)
    {
      v11 = 0;
      while (1)
      {
        v12 = [[NSString alloc] initWithUTF8String:{sqlite3_column_name(v5->_statement, v11)}];
        [(NSMutableArray *)v5->_columnNames setObject:v12 atIndexedSubscript:v11];

        v13 = sqlite3_column_decltype(v5->_statement, v11);
        if (!v13)
        {
          break;
        }

        v14 = v13;
        if (!strncasecmp(v13, "integer", 7uLL))
        {
          v16 = v5->_columnTypes;
          v17 = @"integer";
          goto LABEL_20;
        }

        if (!strncasecmp(v14, "float", 5uLL) || !strncasecmp(v14, "decimal", 8uLL) || !strncasecmp(v14, "real", 4uLL))
        {
          v16 = v5->_columnTypes;
          v17 = @"float";
          goto LABEL_20;
        }

        if (!strncasecmp(v14, "text", 4uLL) || !strncasecmp(v14, "varchar", 7uLL))
        {
          v16 = v5->_columnTypes;
          v17 = @"text";
          goto LABEL_20;
        }

        if (!strncasecmp(v14, "timestamp", 9uLL) || !strncasecmp(v14, "date", 4uLL))
        {
          v16 = v5->_columnTypes;
          v17 = @"date";
          goto LABEL_20;
        }

        if (!strncasecmp(v14, "blob", 4uLL))
        {
          v16 = v5->_columnTypes;
          v17 = @"blob";
          goto LABEL_20;
        }

        v15 = strncasecmp(v14, "null", 4uLL);
        v16 = v5->_columnTypes;
        if (v15)
        {
          goto LABEL_17;
        }

        v17 = @"null";
LABEL_20:
        [(NSMutableArray *)v16 setObject:v17 atIndexedSubscript:v11++];
        if (v11 >= v5->_numColumns)
        {
          goto LABEL_25;
        }
      }

      v16 = v5->_columnTypes;
LABEL_17:
      v17 = @"undeclared";
      goto LABEL_20;
    }

LABEL_25:
    v18 = v5;
  }

  return v5;
}

- (void)dealloc
{
  [(IMDatabaseCursor *)self close];
  v3.receiver = self;
  v3.super_class = IMDatabaseCursor;
  [(IMDatabaseCursor *)&v3 dealloc];
}

- (id)nextRowAsDictionary
{
  v3 = [(IMDatabaseCursor *)self nextRowAsArray];
  v4 = v3;
  if (self->_numColumns)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v6 = [(IMDatabaseCursor *)self columnNames];
    v7 = [NSDictionary dictionaryWithObjects:v4 forKeys:v6];
  }

  return v7;
}

- (id)nextRowAsArray
{
  v3 = sqlite3_step(self->_statement);
  v4 = 0;
  if (!v3)
  {
    goto LABEL_25;
  }

  if (v3 == 100)
  {
    v4 = [NSMutableArray arrayWithCapacity:self->_numColumns];
    if (self->_numColumns < 1)
    {
      goto LABEL_25;
    }

    v6 = 0;
    v7 = &_s5JSApp18ProcessEnvironmentC7currentACvgZ_ptr;
    v8 = @"undeclared";
    v9 = @"integer";
    v10 = &_s5JSApp18ProcessEnvironmentC7currentACvgZ_ptr;
    v11 = @"float";
    while (sqlite3_column_type(self->_statement, v6) == 5)
    {
      v12 = [v7[239] null];
      [v4 addObject:v12];
LABEL_24:

      if (++v6 >= self->_numColumns)
      {
        goto LABEL_25;
      }
    }

    v13 = [(NSMutableArray *)self->_columnTypes objectAtIndexedSubscript:v6];
    if (v13 == v8)
    {
      v13 = [(IMDatabaseCursor *)self _undeclaredTypeForColumnIndex:v6];
    }

    if (v13 == v9)
    {
      v14 = [objc_alloc(v10[109]) initWithLongLong:{sqlite3_column_int64(self->_statement, v6)}];
    }

    else if (v13 == v11)
    {
      v14 = [objc_alloc(v10[109]) initWithDouble:{sqlite3_column_double(self->_statement, v6)}];
    }

    else if (v13 == @"text")
    {
      v14 = [[NSString alloc] initWithUTF8String:{sqlite3_column_text(self->_statement, v6)}];
    }

    else if (v13 == @"date")
    {
      v14 = [NSDate dateWithTimeIntervalSinceReferenceDate:sqlite3_column_double(self->_statement, v6)];
    }

    else
    {
      if (v13 != @"blob")
      {
        v12 = 0;
LABEL_23:
        [v4 addObject:v12];

        goto LABEL_24;
      }

      v24 = [NSData alloc];
      v15 = v9;
      v16 = v8;
      v17 = v7;
      v18 = v11;
      v19 = v10;
      v20 = sqlite3_column_blob(self->_statement, v6);
      v21 = sqlite3_column_bytes(self->_statement, v6);
      v22 = v20;
      v10 = v19;
      v11 = v18;
      v7 = v17;
      v8 = v16;
      v9 = v15;
      v14 = [v24 initWithBytes:v22 length:v21];
    }

    v12 = v14;
    goto LABEL_23;
  }

  if (v3 != 101)
  {
    v5 = sqlite3_db_handle(self->_statement);
    sqlite3_errmsg(v5);
    v4 = 0;
  }

LABEL_25:

  return v4;
}

- (NSMutableArray)results
{
  results = self->_results;
  if (!results)
  {
    v4 = objc_opt_new();
    v5 = self->_results;
    self->_results = v4;

    v6 = [(IMDatabaseCursor *)self nextRowAsDictionary];
    if (v6)
    {
      v7 = v6;
      do
      {
        [(NSMutableArray *)self->_results addObject:v7];
        v8 = [(IMDatabaseCursor *)self nextRowAsDictionary];

        v7 = v8;
      }

      while (v8);
    }

    results = self->_results;
  }

  return results;
}

- (BOOL)close
{
  if (self->_closed)
  {
    return 1;
  }

  else
  {
    v4 = sqlite3_finalize(self->_statement);
    if (v4 && v4 != 101)
    {
      v5 = BCIMLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1EA2E0();
      }

      return self->_closed;
    }

    else
    {
      v2 = 1;
      self->_closed = 1;
    }
  }

  return v2;
}

- (BOOL)reset
{
  if (self->_closed)
  {
    return 0;
  }

  v4 = sqlite3_reset(self->_statement);
  if (v4 && v4 != 101)
  {
    v6 = BCIMLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
LABEL_10:
      sub_1EA354();
    }

LABEL_11:

    return 0;
  }

  v5 = sqlite3_clear_bindings(self->_statement);
  result = 1;
  if (v5 && v5 != 101)
  {
    v6 = BCIMLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  return result;
}

- (int64_t)rowCount
{
  v2 = [(IMDatabaseCursor *)self results];
  v3 = [v2 count];

  return v3;
}

- (id)_undeclaredTypeForColumnIndex:(int)a3
{
  v3 = sqlite3_column_type(self->_statement, a3) - 1;
  if (v3 > 4)
  {
    return @"text";
  }

  else
  {
    return off_2CD6A8[v3];
  }
}

@end