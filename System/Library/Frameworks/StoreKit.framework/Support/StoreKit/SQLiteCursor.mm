@interface SQLiteCursor
- (SQLiteCursor)initWithStatement:(id)a3;
- (double)doubleForColumnName:(id)a3;
- (id)JSONObjectForColumnIndex:(int)a3;
- (id)URLForColumnIndex:(int)a3;
- (id)URLForColumnName:(id)a3;
- (id)UUIDForColumnIndex:(int)a3;
- (id)UUIDForColumnName:(id)a3;
- (id)dataForColumnIndex:(int)a3;
- (id)dataForColumnName:(id)a3;
- (id)dateForColumnIndex:(int)a3;
- (id)dateForColumnName:(id)a3;
- (id)dictionaryWithValuesForColumnNames:(id)a3;
- (id)numberForColumnIndex:(int)a3;
- (id)numberForColumnName:(id)a3;
- (id)stringForColumnIndex:(int)a3;
- (id)stringForColumnName:(id)a3;
- (int)intForColumnName:(id)a3;
- (int64_t)int64ForColumnName:(id)a3;
- (unsigned)_declaredTypeForColumnIndex:(int)a3;
- (void)dealloc;
@end

@implementation SQLiteCursor

- (SQLiteCursor)initWithStatement:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = SQLiteCursor;
  v6 = [(SQLiteCursor *)&v19 init];
  if (v6)
  {
    v6->_statement = [v5 sqlite3_stmt];
    objc_storeStrong(&v6->_statementWrapper, a3);
    v7 = sqlite3_column_count(v6->_statement);
    v6->_columnCount = v7;
    v8 = [NSMutableArray arrayWithCapacity:v7];
    columnNames = v6->_columnNames;
    v6->_columnNames = v8;

    v6->_columnDeclaredTypes = malloc_type_calloc(v6->_columnCount, 1uLL, 0x100004077774924uLL);
    if (v6->_columnCount >= 1)
    {
      for (i = 0; i < v6->_columnCount; ++i)
      {
        v11 = v6->_columnNames;
        v12 = [NSString stringWithUTF8String:sqlite3_column_name(v6->_statement, i)];
        [(NSMutableArray *)v11 addObject:v12];

        v13 = sqlite3_column_decltype(v6->_statement, i);
        if (v13)
        {
          v14 = v13;
          if (!strcmp(v13, "DATETIME"))
          {
            v6->_columnDeclaredTypes[i] = 1;
            continue;
          }

          if (!strcmp(v14, "JSON"))
          {
            columnDeclaredTypes = v6->_columnDeclaredTypes;
            v17 = 2;
            goto LABEL_17;
          }

          if (!strcmp(v14, "UUID"))
          {
            columnDeclaredTypes = v6->_columnDeclaredTypes;
            v17 = 3;
            goto LABEL_17;
          }

          if (!strcmp(v14, "URL"))
          {
            columnDeclaredTypes = v6->_columnDeclaredTypes;
            v17 = 4;
            goto LABEL_17;
          }

          v15 = strcmp(v14, "STRING");
          columnDeclaredTypes = v6->_columnDeclaredTypes;
          if (!v15)
          {
            v17 = 5;
LABEL_17:
            columnDeclaredTypes[i] = v17;
            continue;
          }
        }

        else
        {
          columnDeclaredTypes = v6->_columnDeclaredTypes;
        }

        columnDeclaredTypes[i] = 0;
      }
    }
  }

  return v6;
}

- (void)dealloc
{
  free(self->_columnDeclaredTypes);
  v3.receiver = self;
  v3.super_class = SQLiteCursor;
  [(SQLiteCursor *)&v3 dealloc];
}

- (id)dataForColumnIndex:(int)a3
{
  if (sqlite3_column_type(self->_statement, a3) == 5)
  {
    v5 = 0;
  }

  else
  {
    v6 = sqlite3_column_blob(self->_statement, a3);
    v5 = [NSData dataWithBytes:v6 length:sqlite3_column_bytes(self->_statement, a3)];
  }

  return v5;
}

- (id)dataForColumnName:(id)a3
{
  v4 = [(SQLiteCursor *)self columnIndexForColumnName:a3];
  if ((v4 & 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(SQLiteCursor *)self dataForColumnIndex:v4];
  }

  return v5;
}

- (id)dateForColumnIndex:(int)a3
{
  v5 = sqlite3_column_type(self->_statement, a3);
  if (v5 == 1)
  {
    v6 = sqlite3_column_int64(self->_statement, a3);
    goto LABEL_5;
  }

  if (v5 == 2)
  {
    v6 = sqlite3_column_double(self->_statement, a3);
LABEL_5:
    v7 = [NSDate dateWithTimeIntervalSinceReferenceDate:v6];
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (id)dateForColumnName:(id)a3
{
  v4 = [(SQLiteCursor *)self columnIndexForColumnName:a3];
  if ((v4 & 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(SQLiteCursor *)self dateForColumnIndex:v4];
  }

  return v5;
}

- (double)doubleForColumnName:(id)a3
{
  v4 = [(SQLiteCursor *)self columnIndexForColumnName:a3];
  if ((v4 & 0x80000000) != 0)
  {
    return 0.0;
  }

  v5 = v4;
  statement = self->_statement;

  return sqlite3_column_double(statement, v5);
}

- (int)intForColumnName:(id)a3
{
  v4 = [(SQLiteCursor *)self columnIndexForColumnName:a3];
  if ((v4 & 0x80000000) != 0)
  {
    return 0;
  }

  v5 = v4;
  statement = self->_statement;

  return sqlite3_column_int(statement, v5);
}

- (int64_t)int64ForColumnName:(id)a3
{
  v4 = [(SQLiteCursor *)self columnIndexForColumnName:a3];
  if ((v4 & 0x80000000) != 0)
  {
    return 0;
  }

  v5 = v4;
  statement = self->_statement;

  return sqlite3_column_int64(statement, v5);
}

- (id)JSONObjectForColumnIndex:(int)a3
{
  v5 = [(SQLiteCursor *)self dataForColumnIndex:?];
  if (!v5)
  {
    v7 = 0;
LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  v14 = 0;
  v6 = [NSJSONSerialization JSONObjectWithData:v5 options:0 error:&v14];
  v7 = v14;
  if (!v6)
  {
    if (qword_1003D4698 != -1)
    {
      sub_1002D0474();
    }

    v8 = qword_1003D4680;
    if (os_log_type_enabled(qword_1003D4680, OS_LOG_TYPE_ERROR))
    {
      columnNames = self->_columnNames;
      v10 = v8;
      v11 = [(NSMutableArray *)columnNames objectAtIndexedSubscript:a3];
      *buf = 138543618;
      v16 = v11;
      v17 = 2114;
      v18 = v7;
    }

    goto LABEL_8;
  }

LABEL_9:
  v12 = v6;

  return v6;
}

- (id)numberForColumnIndex:(int)a3
{
  v5 = sqlite3_column_type(self->_statement, a3);
  if (v5 == 1)
  {
    v6 = [NSNumber numberWithLongLong:sqlite3_column_int64(self->_statement, a3)];
  }

  else if (v5 == 2)
  {
    v6 = [NSNumber numberWithDouble:sqlite3_column_double(self->_statement, a3)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)numberForColumnName:(id)a3
{
  v4 = [(SQLiteCursor *)self columnIndexForColumnName:a3];
  if ((v4 & 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(SQLiteCursor *)self numberForColumnIndex:v4];
  }

  return v5;
}

- (id)stringForColumnIndex:(int)a3
{
  if (sqlite3_column_type(self->_statement, a3) == 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = sqlite3_column_text(self->_statement, a3);
    if (v5)
    {
      v5 = [NSString stringWithUTF8String:v5];
    }
  }

  return v5;
}

- (id)stringForColumnName:(id)a3
{
  v4 = [(SQLiteCursor *)self columnIndexForColumnName:a3];
  if ((v4 & 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(SQLiteCursor *)self stringForColumnIndex:v4];
  }

  return v5;
}

- (id)UUIDForColumnIndex:(int)a3
{
  v3 = [(SQLiteCursor *)self stringForColumnIndex:*&a3];
  if (v3)
  {
    v4 = [[NSUUID alloc] initWithUUIDString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)UUIDForColumnName:(id)a3
{
  v4 = [(SQLiteCursor *)self columnIndexForColumnName:a3];
  if ((v4 & 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(SQLiteCursor *)self UUIDForColumnIndex:v4];
  }

  return v5;
}

- (id)URLForColumnIndex:(int)a3
{
  v3 = [(SQLiteCursor *)self stringForColumnIndex:*&a3];
  if (v3)
  {
    v4 = [NSURL URLWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)URLForColumnName:(id)a3
{
  v4 = [(SQLiteCursor *)self columnIndexForColumnName:a3];
  if ((v4 & 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(SQLiteCursor *)self URLForColumnIndex:v4];
  }

  return v5;
}

- (id)dictionaryWithValuesForColumnNames:(id)a3
{
  v4 = a3;
  columnKeySet = self->_columnKeySet;
  if (!columnKeySet)
  {
    v6 = [NSDictionary sharedKeySetForKeys:self->_columnNames];
    v7 = self->_columnKeySet;
    self->_columnKeySet = v6;

    columnKeySet = self->_columnKeySet;
  }

  v8 = [NSMutableDictionary dictionaryWithSharedKeySet:columnKeySet];
  columnNames = self->_columnNames;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100061124;
  v14[3] = &unk_1003826D0;
  v15 = v4;
  v16 = v8;
  v17 = self;
  v10 = v8;
  v11 = v4;
  [(NSMutableArray *)columnNames enumerateObjectsUsingBlock:v14];
  v12 = [v10 copy];

  return v12;
}

- (unsigned)_declaredTypeForColumnIndex:(int)a3
{
  if (a3 < 0 || self->_columnCount <= a3)
  {
    return 0;
  }

  else
  {
    return self->_columnDeclaredTypes[a3];
  }
}

@end