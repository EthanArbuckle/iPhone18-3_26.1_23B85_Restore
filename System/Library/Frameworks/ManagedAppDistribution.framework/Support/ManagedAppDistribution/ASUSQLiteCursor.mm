@interface ASUSQLiteCursor
- (double)doubleForColumnName:(id)a3;
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
- (void)dealloc;
@end

@implementation ASUSQLiteCursor

- (void)dealloc
{
  free(self->_columnDeclaredTypes);
  v3.receiver = self;
  v3.super_class = ASUSQLiteCursor;
  [(ASUSQLiteCursor *)&v3 dealloc];
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
  v4 = a3;
  if (self && ([(NSMutableArray *)self->_columnNames indexOfObject:v4]& 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(ASUSQLiteCursor *)self dataForColumnIndex:?];
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
  v4 = a3;
  if (self && ([(NSMutableArray *)self->_columnNames indexOfObject:v4]& 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(ASUSQLiteCursor *)self dateForColumnIndex:?];
  }

  return v5;
}

- (double)doubleForColumnName:(id)a3
{
  v4 = a3;
  if (self)
  {
    v5 = [(NSMutableArray *)self->_columnNames indexOfObject:v4];
    if (v5 < 0)
    {
      v6 = 0.0;
      goto LABEL_5;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = sqlite3_column_double(self->_statement, v5);
LABEL_5:

  return v6;
}

- (int)intForColumnName:(id)a3
{
  v4 = a3;
  if (self)
  {
    v5 = [(NSMutableArray *)self->_columnNames indexOfObject:v4];
    if (v5 < 0)
    {
      v6 = 0;
      goto LABEL_5;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = sqlite3_column_int(self->_statement, v5);
LABEL_5:

  return v6;
}

- (int64_t)int64ForColumnName:(id)a3
{
  v4 = a3;
  if (self)
  {
    v5 = [(NSMutableArray *)self->_columnNames indexOfObject:v4];
    if (v5 < 0)
    {
      v6 = 0;
      goto LABEL_5;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = sqlite3_column_int64(self->_statement, v5);
LABEL_5:

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
  v4 = a3;
  if (self && ([(NSMutableArray *)self->_columnNames indexOfObject:v4]& 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(ASUSQLiteCursor *)self numberForColumnIndex:?];
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
  v4 = a3;
  if (self && ([(NSMutableArray *)self->_columnNames indexOfObject:v4]& 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(ASUSQLiteCursor *)self stringForColumnIndex:?];
  }

  return v5;
}

- (id)UUIDForColumnIndex:(int)a3
{
  v3 = [(ASUSQLiteCursor *)self stringForColumnIndex:*&a3];
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
  v4 = a3;
  if (self && ([(NSMutableArray *)self->_columnNames indexOfObject:v4]& 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(ASUSQLiteCursor *)self UUIDForColumnIndex:?];
  }

  return v5;
}

- (id)URLForColumnIndex:(int)a3
{
  v3 = [(ASUSQLiteCursor *)self stringForColumnIndex:*&a3];
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
  v4 = a3;
  if (self && ([(NSMutableArray *)self->_columnNames indexOfObject:v4]& 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(ASUSQLiteCursor *)self URLForColumnIndex:?];
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
  v14[2] = sub_1001E07B8;
  v14[3] = &unk_1007566B8;
  v15 = v4;
  v16 = v8;
  v17 = self;
  v10 = v8;
  v11 = v4;
  [(NSMutableArray *)columnNames enumerateObjectsUsingBlock:v14];
  v12 = [v10 copy];

  return v12;
}

@end