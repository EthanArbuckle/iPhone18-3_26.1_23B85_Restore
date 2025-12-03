@interface AMSSQLiteCursor
- (AMSSQLiteCursor)initWithStatement:(id)statement;
- (double)doubleForColumnName:(id)name;
- (id)URLForColumnIndex:(int)index;
- (id)URLForColumnName:(id)name;
- (id)dataForColumnIndex:(int)index;
- (id)dataForColumnName:(id)name;
- (id)dateForColumnIndex:(int)index;
- (id)dateForColumnName:(id)name;
- (id)numberForColumnIndex:(int)index;
- (id)numberForColumnName:(id)name;
- (id)stringForColumnIndex:(int)index;
- (id)stringForColumnName:(id)name;
- (int)columnIndexForColumnName:(id)name;
- (int)intForColumnName:(id)name;
- (int64_t)int64ForColumnName:(id)name;
@end

@implementation AMSSQLiteCursor

- (AMSSQLiteCursor)initWithStatement:(id)statement
{
  statementCopy = statement;
  v8.receiver = self;
  v8.super_class = AMSSQLiteCursor;
  v6 = [(AMSSQLiteCursor *)&v8 init];
  if (v6)
  {
    v6->_statement = [statementCopy sqlite3_stmt];
    objc_storeStrong(&v6->_statementWrapper, statement);
  }

  return v6;
}

- (id)dataForColumnIndex:(int)index
{
  if (sqlite3_column_type(self->_statement, index) == 5)
  {
    v5 = 0;
  }

  else
  {
    v6 = sqlite3_column_blob(self->_statement, index);
    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:v6 length:{sqlite3_column_bytes(self->_statement, index)}];
  }

  return v5;
}

- (id)dataForColumnName:(id)name
{
  v4 = [(AMSSQLiteCursor *)self columnIndexForColumnName:name];
  if ((v4 & 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(AMSSQLiteCursor *)self dataForColumnIndex:v4];
  }

  return v5;
}

- (id)dateForColumnIndex:(int)index
{
  v5 = sqlite3_column_type(self->_statement, index);
  if (v5 == 1)
  {
    v6 = MEMORY[0x1E695DF00];
    v7 = sqlite3_column_int64(self->_statement, index);
    goto LABEL_5;
  }

  if (v5 == 2)
  {
    v6 = MEMORY[0x1E695DF00];
    v7 = sqlite3_column_double(self->_statement, index);
LABEL_5:
    v8 = [v6 dateWithTimeIntervalSinceReferenceDate:v7];
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)dateForColumnName:(id)name
{
  v4 = [(AMSSQLiteCursor *)self columnIndexForColumnName:name];
  if ((v4 & 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(AMSSQLiteCursor *)self dateForColumnIndex:v4];
  }

  return v5;
}

- (double)doubleForColumnName:(id)name
{
  v4 = [(AMSSQLiteCursor *)self columnIndexForColumnName:name];
  if (v4 < 0)
  {
    return 0.0;
  }

  v5 = v4;
  statement = self->_statement;

  return sqlite3_column_double(statement, v5);
}

- (int)intForColumnName:(id)name
{
  v4 = [(AMSSQLiteCursor *)self columnIndexForColumnName:name];
  if (v4 < 0)
  {
    return 0;
  }

  v5 = v4;
  statement = self->_statement;

  return sqlite3_column_int(statement, v5);
}

- (int64_t)int64ForColumnName:(id)name
{
  v4 = [(AMSSQLiteCursor *)self columnIndexForColumnName:name];
  if (v4 < 0)
  {
    return 0;
  }

  v5 = v4;
  statement = self->_statement;

  return sqlite3_column_int64(statement, v5);
}

- (id)numberForColumnIndex:(int)index
{
  v5 = sqlite3_column_type(self->_statement, index);
  if (v5 == 1)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{sqlite3_column_int64(self->_statement, index)}];
  }

  else if (v5 == 2)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:{sqlite3_column_double(self->_statement, index)}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)numberForColumnName:(id)name
{
  v4 = [(AMSSQLiteCursor *)self columnIndexForColumnName:name];
  if ((v4 & 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(AMSSQLiteCursor *)self numberForColumnIndex:v4];
  }

  return v5;
}

- (id)stringForColumnIndex:(int)index
{
  if (sqlite3_column_type(self->_statement, index) == 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = sqlite3_column_text(self->_statement, index);
    if (v5)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
    }
  }

  return v5;
}

- (id)stringForColumnName:(id)name
{
  v4 = [(AMSSQLiteCursor *)self columnIndexForColumnName:name];
  if ((v4 & 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(AMSSQLiteCursor *)self stringForColumnIndex:v4];
  }

  return v5;
}

- (id)URLForColumnIndex:(int)index
{
  v3 = [(AMSSQLiteCursor *)self stringForColumnIndex:*&index];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)URLForColumnName:(id)name
{
  v4 = [(AMSSQLiteCursor *)self columnIndexForColumnName:name];
  if ((v4 & 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(AMSSQLiteCursor *)self URLForColumnIndex:v4];
  }

  return v5;
}

- (int)columnIndexForColumnName:(id)name
{
  nameCopy = name;
  columnIndexByName = self->_columnIndexByName;
  if (!columnIndexByName)
  {
    columnIndexByName = [(AMSSQLiteStatement *)self->_statementWrapper columnIndexByName];
    v7 = self->_columnIndexByName;
    self->_columnIndexByName = columnIndexByName;

    columnIndexByName = self->_columnIndexByName;
  }

  v8 = [(NSDictionary *)columnIndexByName objectForKey:nameCopy];
  v9 = v8;
  if (v8)
  {
    intValue = [v8 intValue];
  }

  else
  {
    intValue = -1;
  }

  return intValue;
}

@end