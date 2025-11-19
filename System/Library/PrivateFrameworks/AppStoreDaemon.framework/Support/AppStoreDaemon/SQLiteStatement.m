@interface SQLiteStatement
- (int)clearBindings;
- (void)bindArray:(id)a3 atPosition:(int)a4;
- (void)bindData:(id)a3 atPosition:(int)a4;
- (void)bindDataCopy:(id)a3 atPosition:(int)a4;
- (void)bindDate:(id)a3 atPosition:(int)a4;
- (void)bindDictionary:(id)a3 atPosition:(int)a4;
- (void)bindDouble:(double)a3 atPosition:(int)a4;
- (void)bindFloat:(float)a3 atPosition:(int)a4;
- (void)bindInt64:(int64_t)a3 atPosition:(int)a4;
- (void)bindInt:(int)a3 atPosition:(int)a4;
- (void)bindNullAtPosition:(int)a3;
- (void)bindNumber:(id)a3 atPosition:(int)a4;
- (void)bindString:(id)a3 atPosition:(int)a4;
- (void)bindStringCopy:(id)a3 atPosition:(int)a4;
- (void)bindURL:(id)a3 atPosition:(int)a4;
- (void)bindUUID:(id)a3 atPosition:(int)a4;
@end

@implementation SQLiteStatement

- (void)bindArray:(id)a3 atPosition:(int)a4
{
  v4 = *&a4;
  v6 = [NSJSONSerialization dataWithJSONObject:a3 options:0 error:0];
  [(SQLiteStatement *)self bindData:v6 atPosition:v4];
}

- (void)bindData:(id)a3 atPosition:(int)a4
{
  v6 = a3;
  statement = self->_statement;
  v9 = v6;
  if (statement)
  {
    v8 = v6;
    sqlite3_bind_blob(statement, a4, [v9 bytes], objc_msgSend(v9, "length"), 0);
  }

  else
  {
    [NSException raise:NSInternalInconsistencyException format:@"Statement already finalized"];
  }
}

- (void)bindDataCopy:(id)a3 atPosition:(int)a4
{
  v6 = a3;
  statement = self->_statement;
  v9 = v6;
  if (statement)
  {
    v8 = v6;
    sqlite3_bind_blob(statement, a4, [v9 bytes], objc_msgSend(v9, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    [NSException raise:NSInternalInconsistencyException format:@"Statement already finalized"];
  }
}

- (void)bindDate:(id)a3 atPosition:(int)a4
{
  v4 = *&a4;
  [a3 timeIntervalSinceReferenceDate];

  [(SQLiteStatement *)self bindDouble:v4 atPosition:?];
}

- (void)bindDictionary:(id)a3 atPosition:(int)a4
{
  v4 = *&a4;
  v6 = [NSJSONSerialization dataWithJSONObject:a3 options:0 error:0];
  [(SQLiteStatement *)self bindData:v6 atPosition:v4];
}

- (void)bindDouble:(double)a3 atPosition:(int)a4
{
  statement = self->_statement;
  if (statement)
  {
    sqlite3_bind_double(statement, a4, a3);
  }

  else
  {
    [NSException raise:NSInternalInconsistencyException format:@"Statement already finalized", a3];
  }
}

- (void)bindFloat:(float)a3 atPosition:(int)a4
{
  statement = self->_statement;
  if (statement)
  {
    sqlite3_bind_double(statement, a4, a3);
  }

  else
  {
    [NSException raise:NSInternalInconsistencyException format:@"Statement already finalized"];
  }
}

- (void)bindInt:(int)a3 atPosition:(int)a4
{
  statement = self->_statement;
  if (statement)
  {
    sqlite3_bind_int(statement, a4, a3);
  }

  else
  {
    [NSException raise:NSInternalInconsistencyException format:@"Statement already finalized"];
  }
}

- (void)bindInt64:(int64_t)a3 atPosition:(int)a4
{
  statement = self->_statement;
  if (statement)
  {
    sqlite3_bind_int64(statement, a4, a3);
  }

  else
  {
    [NSException raise:NSInternalInconsistencyException format:@"Statement already finalized"];
  }
}

- (void)bindNullAtPosition:(int)a3
{
  statement = self->_statement;
  if (statement)
  {
    sqlite3_bind_null(statement, a3);
  }

  else
  {
    [NSException raise:NSInternalInconsistencyException format:@"Statement already finalized"];
  }
}

- (void)bindNumber:(id)a3 atPosition:(int)a4
{
  v6 = a3;
  v10 = v6;
  if (self->_statement)
  {
    Type = CFNumberGetType(v6);
    if (Type > kCFNumberCGFloatType)
    {
      goto LABEL_8;
    }

    if (((1 << Type) & 0x38E) != 0)
    {
      sqlite3_bind_int(self->_statement, a4, [(__CFNumber *)v10 intValue]);
      goto LABEL_9;
    }

    if (((1 << Type) & 0x10060) != 0)
    {
      statement = self->_statement;
      [(__CFNumber *)v10 doubleValue];
      sqlite3_bind_double(statement, a4, v9);
    }

    else
    {
LABEL_8:
      sqlite3_bind_int64(self->_statement, a4, [(__CFNumber *)v10 longLongValue]);
    }
  }

  else
  {
    [NSException raise:NSInternalInconsistencyException format:@"Statement already finalized"];
  }

LABEL_9:
}

- (void)bindString:(id)a3 atPosition:(int)a4
{
  v6 = a3;
  theString = v6;
  if (!self->_statement)
  {
    [NSException raise:NSInternalInconsistencyException format:@"Statement already finalized"];
    goto LABEL_12;
  }

  FastestEncoding = CFStringGetFastestEncoding(v6);
  if (FastestEncoding == 256)
  {
    CharactersPtr = CFStringGetCharactersPtr(theString);
    v9 = theString;
    if (CharactersPtr)
    {
      statement = self->_statement;
      Length = CFStringGetLength(theString);
      sqlite3_bind_text16(statement, a4, CharactersPtr, 2 * Length, 0);
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v8 = FastestEncoding == 134217984;
  v9 = theString;
  if (!v8 || (CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u), v9 = theString, !CStringPtr))
  {
LABEL_10:
    v17 = self->_statement;
    CStringPtr = [(__CFString *)v9 UTF8String];
    v11 = v17;
    v12 = a4;
    v13 = -1;
    goto LABEL_11;
  }

  v11 = self->_statement;
  v12 = a4;
  v13 = 0;
LABEL_11:
  sqlite3_bind_text(v11, v12, CStringPtr, -1, v13);
LABEL_12:
}

- (void)bindStringCopy:(id)a3 atPosition:(int)a4
{
  statement = self->_statement;
  if (statement)
  {
    v6 = [a3 UTF8String];

    sqlite3_bind_text(statement, a4, v6, -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {

    [NSException raise:NSInternalInconsistencyException format:@"Statement already finalized"];
  }
}

- (void)bindUUID:(id)a3 atPosition:(int)a4
{
  v4 = *&a4;
  v6 = [a3 UUIDString];
  [(SQLiteStatement *)self bindString:v6 atPosition:v4];
}

- (void)bindURL:(id)a3 atPosition:(int)a4
{
  v4 = *&a4;
  v6 = [a3 absoluteString];
  [(SQLiteStatement *)self bindString:v6 atPosition:v4];
}

- (int)clearBindings
{
  statement = self->_statement;
  if (statement)
  {
    return sqlite3_clear_bindings(statement);
  }

  else
  {
    return 21;
  }
}

@end