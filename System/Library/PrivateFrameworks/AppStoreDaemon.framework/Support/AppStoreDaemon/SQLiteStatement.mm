@interface SQLiteStatement
- (int)clearBindings;
- (void)bindArray:(id)array atPosition:(int)position;
- (void)bindData:(id)data atPosition:(int)position;
- (void)bindDataCopy:(id)copy atPosition:(int)position;
- (void)bindDate:(id)date atPosition:(int)position;
- (void)bindDictionary:(id)dictionary atPosition:(int)position;
- (void)bindDouble:(double)double atPosition:(int)position;
- (void)bindFloat:(float)float atPosition:(int)position;
- (void)bindInt64:(int64_t)int64 atPosition:(int)position;
- (void)bindInt:(int)int atPosition:(int)position;
- (void)bindNullAtPosition:(int)position;
- (void)bindNumber:(id)number atPosition:(int)position;
- (void)bindString:(id)string atPosition:(int)position;
- (void)bindStringCopy:(id)copy atPosition:(int)position;
- (void)bindURL:(id)l atPosition:(int)position;
- (void)bindUUID:(id)d atPosition:(int)position;
@end

@implementation SQLiteStatement

- (void)bindArray:(id)array atPosition:(int)position
{
  v4 = *&position;
  v6 = [NSJSONSerialization dataWithJSONObject:array options:0 error:0];
  [(SQLiteStatement *)self bindData:v6 atPosition:v4];
}

- (void)bindData:(id)data atPosition:(int)position
{
  dataCopy = data;
  statement = self->_statement;
  v9 = dataCopy;
  if (statement)
  {
    v8 = dataCopy;
    sqlite3_bind_blob(statement, position, [v9 bytes], objc_msgSend(v9, "length"), 0);
  }

  else
  {
    [NSException raise:NSInternalInconsistencyException format:@"Statement already finalized"];
  }
}

- (void)bindDataCopy:(id)copy atPosition:(int)position
{
  copyCopy = copy;
  statement = self->_statement;
  v9 = copyCopy;
  if (statement)
  {
    v8 = copyCopy;
    sqlite3_bind_blob(statement, position, [v9 bytes], objc_msgSend(v9, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    [NSException raise:NSInternalInconsistencyException format:@"Statement already finalized"];
  }
}

- (void)bindDate:(id)date atPosition:(int)position
{
  v4 = *&position;
  [date timeIntervalSinceReferenceDate];

  [(SQLiteStatement *)self bindDouble:v4 atPosition:?];
}

- (void)bindDictionary:(id)dictionary atPosition:(int)position
{
  v4 = *&position;
  v6 = [NSJSONSerialization dataWithJSONObject:dictionary options:0 error:0];
  [(SQLiteStatement *)self bindData:v6 atPosition:v4];
}

- (void)bindDouble:(double)double atPosition:(int)position
{
  statement = self->_statement;
  if (statement)
  {
    sqlite3_bind_double(statement, position, double);
  }

  else
  {
    [NSException raise:NSInternalInconsistencyException format:@"Statement already finalized", double];
  }
}

- (void)bindFloat:(float)float atPosition:(int)position
{
  statement = self->_statement;
  if (statement)
  {
    sqlite3_bind_double(statement, position, float);
  }

  else
  {
    [NSException raise:NSInternalInconsistencyException format:@"Statement already finalized"];
  }
}

- (void)bindInt:(int)int atPosition:(int)position
{
  statement = self->_statement;
  if (statement)
  {
    sqlite3_bind_int(statement, position, int);
  }

  else
  {
    [NSException raise:NSInternalInconsistencyException format:@"Statement already finalized"];
  }
}

- (void)bindInt64:(int64_t)int64 atPosition:(int)position
{
  statement = self->_statement;
  if (statement)
  {
    sqlite3_bind_int64(statement, position, int64);
  }

  else
  {
    [NSException raise:NSInternalInconsistencyException format:@"Statement already finalized"];
  }
}

- (void)bindNullAtPosition:(int)position
{
  statement = self->_statement;
  if (statement)
  {
    sqlite3_bind_null(statement, position);
  }

  else
  {
    [NSException raise:NSInternalInconsistencyException format:@"Statement already finalized"];
  }
}

- (void)bindNumber:(id)number atPosition:(int)position
{
  numberCopy = number;
  v10 = numberCopy;
  if (self->_statement)
  {
    Type = CFNumberGetType(numberCopy);
    if (Type > kCFNumberCGFloatType)
    {
      goto LABEL_8;
    }

    if (((1 << Type) & 0x38E) != 0)
    {
      sqlite3_bind_int(self->_statement, position, [(__CFNumber *)v10 intValue]);
      goto LABEL_9;
    }

    if (((1 << Type) & 0x10060) != 0)
    {
      statement = self->_statement;
      [(__CFNumber *)v10 doubleValue];
      sqlite3_bind_double(statement, position, v9);
    }

    else
    {
LABEL_8:
      sqlite3_bind_int64(self->_statement, position, [(__CFNumber *)v10 longLongValue]);
    }
  }

  else
  {
    [NSException raise:NSInternalInconsistencyException format:@"Statement already finalized"];
  }

LABEL_9:
}

- (void)bindString:(id)string atPosition:(int)position
{
  stringCopy = string;
  theString = stringCopy;
  if (!self->_statement)
  {
    [NSException raise:NSInternalInconsistencyException format:@"Statement already finalized"];
    goto LABEL_12;
  }

  FastestEncoding = CFStringGetFastestEncoding(stringCopy);
  if (FastestEncoding == 256)
  {
    CharactersPtr = CFStringGetCharactersPtr(theString);
    v9 = theString;
    if (CharactersPtr)
    {
      statement = self->_statement;
      Length = CFStringGetLength(theString);
      sqlite3_bind_text16(statement, position, CharactersPtr, 2 * Length, 0);
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
    positionCopy2 = position;
    v13 = -1;
    goto LABEL_11;
  }

  v11 = self->_statement;
  positionCopy2 = position;
  v13 = 0;
LABEL_11:
  sqlite3_bind_text(v11, positionCopy2, CStringPtr, -1, v13);
LABEL_12:
}

- (void)bindStringCopy:(id)copy atPosition:(int)position
{
  statement = self->_statement;
  if (statement)
  {
    uTF8String = [copy UTF8String];

    sqlite3_bind_text(statement, position, uTF8String, -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {

    [NSException raise:NSInternalInconsistencyException format:@"Statement already finalized"];
  }
}

- (void)bindUUID:(id)d atPosition:(int)position
{
  v4 = *&position;
  uUIDString = [d UUIDString];
  [(SQLiteStatement *)self bindString:uUIDString atPosition:v4];
}

- (void)bindURL:(id)l atPosition:(int)position
{
  v4 = *&position;
  absoluteString = [l absoluteString];
  [(SQLiteStatement *)self bindString:absoluteString atPosition:v4];
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