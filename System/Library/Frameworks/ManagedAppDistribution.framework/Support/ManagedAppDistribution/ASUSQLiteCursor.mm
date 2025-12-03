@interface ASUSQLiteCursor
- (double)doubleForColumnName:(id)name;
- (id)URLForColumnIndex:(int)index;
- (id)URLForColumnName:(id)name;
- (id)UUIDForColumnIndex:(int)index;
- (id)UUIDForColumnName:(id)name;
- (id)dataForColumnIndex:(int)index;
- (id)dataForColumnName:(id)name;
- (id)dateForColumnIndex:(int)index;
- (id)dateForColumnName:(id)name;
- (id)dictionaryWithValuesForColumnNames:(id)names;
- (id)numberForColumnIndex:(int)index;
- (id)numberForColumnName:(id)name;
- (id)stringForColumnIndex:(int)index;
- (id)stringForColumnName:(id)name;
- (int)intForColumnName:(id)name;
- (int64_t)int64ForColumnName:(id)name;
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

- (id)dataForColumnIndex:(int)index
{
  if (sqlite3_column_type(self->_statement, index) == 5)
  {
    v5 = 0;
  }

  else
  {
    v6 = sqlite3_column_blob(self->_statement, index);
    v5 = [NSData dataWithBytes:v6 length:sqlite3_column_bytes(self->_statement, index)];
  }

  return v5;
}

- (id)dataForColumnName:(id)name
{
  nameCopy = name;
  if (self && ([(NSMutableArray *)self->_columnNames indexOfObject:nameCopy]& 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(ASUSQLiteCursor *)self dataForColumnIndex:?];
  }

  return v5;
}

- (id)dateForColumnIndex:(int)index
{
  v5 = sqlite3_column_type(self->_statement, index);
  if (v5 == 1)
  {
    v6 = sqlite3_column_int64(self->_statement, index);
    goto LABEL_5;
  }

  if (v5 == 2)
  {
    v6 = sqlite3_column_double(self->_statement, index);
LABEL_5:
    v7 = [NSDate dateWithTimeIntervalSinceReferenceDate:v6];
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (id)dateForColumnName:(id)name
{
  nameCopy = name;
  if (self && ([(NSMutableArray *)self->_columnNames indexOfObject:nameCopy]& 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(ASUSQLiteCursor *)self dateForColumnIndex:?];
  }

  return v5;
}

- (double)doubleForColumnName:(id)name
{
  nameCopy = name;
  if (self)
  {
    v5 = [(NSMutableArray *)self->_columnNames indexOfObject:nameCopy];
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

- (int)intForColumnName:(id)name
{
  nameCopy = name;
  if (self)
  {
    v5 = [(NSMutableArray *)self->_columnNames indexOfObject:nameCopy];
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

- (int64_t)int64ForColumnName:(id)name
{
  nameCopy = name;
  if (self)
  {
    v5 = [(NSMutableArray *)self->_columnNames indexOfObject:nameCopy];
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

- (id)numberForColumnIndex:(int)index
{
  v5 = sqlite3_column_type(self->_statement, index);
  if (v5 == 1)
  {
    v6 = [NSNumber numberWithLongLong:sqlite3_column_int64(self->_statement, index)];
  }

  else if (v5 == 2)
  {
    v6 = [NSNumber numberWithDouble:sqlite3_column_double(self->_statement, index)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)numberForColumnName:(id)name
{
  nameCopy = name;
  if (self && ([(NSMutableArray *)self->_columnNames indexOfObject:nameCopy]& 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(ASUSQLiteCursor *)self numberForColumnIndex:?];
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
      v5 = [NSString stringWithUTF8String:v5];
    }
  }

  return v5;
}

- (id)stringForColumnName:(id)name
{
  nameCopy = name;
  if (self && ([(NSMutableArray *)self->_columnNames indexOfObject:nameCopy]& 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(ASUSQLiteCursor *)self stringForColumnIndex:?];
  }

  return v5;
}

- (id)UUIDForColumnIndex:(int)index
{
  v3 = [(ASUSQLiteCursor *)self stringForColumnIndex:*&index];
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

- (id)UUIDForColumnName:(id)name
{
  nameCopy = name;
  if (self && ([(NSMutableArray *)self->_columnNames indexOfObject:nameCopy]& 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(ASUSQLiteCursor *)self UUIDForColumnIndex:?];
  }

  return v5;
}

- (id)URLForColumnIndex:(int)index
{
  v3 = [(ASUSQLiteCursor *)self stringForColumnIndex:*&index];
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

- (id)URLForColumnName:(id)name
{
  nameCopy = name;
  if (self && ([(NSMutableArray *)self->_columnNames indexOfObject:nameCopy]& 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(ASUSQLiteCursor *)self URLForColumnIndex:?];
  }

  return v5;
}

- (id)dictionaryWithValuesForColumnNames:(id)names
{
  namesCopy = names;
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
  v15 = namesCopy;
  v16 = v8;
  selfCopy = self;
  v10 = v8;
  v11 = namesCopy;
  [(NSMutableArray *)columnNames enumerateObjectsUsingBlock:v14];
  v12 = [v10 copy];

  return v12;
}

@end