@interface NSConstantString
- (BOOL)canBeConvertedToEncoding:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToString:(id)a3;
- (const)_fastCStringContents:(BOOL)a3;
- (int64_t)compare:(id)a3 options:(unint64_t)a4 range:(_NSRange)a5;
- (unsigned)characterAtIndex:(unint64_t)a3;
- (void)getCharacters:(unsigned __int16 *)a3 range:(_NSRange)a4;
@end

@implementation NSConstantString

- (unsigned)characterAtIndex:(unint64_t)a3
{
  if (self->super.numBytes <= a3)
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Index %lu out of bounds; string length %lu", _NSMethodExceptionProem(self, a2), a3, self->super.numBytes), 0}];
    objc_exception_throw(v4);
  }

  return *(_NSCStringCharToUnicharTable + 2 * self->super.bytes[a3]);
}

- (void)getCharacters:(unsigned __int16 *)a3 range:(_NSRange)a4
{
  if (a4.location + a4.length > self->super.numBytes)
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Range {%lu, %lu} out of bounds; string length %lu", _NSMethodExceptionProem(self, a2), a4.location, a4.length, self->super.numBytes), 0}];
    objc_exception_throw(v7);
  }

  if (a4.length)
  {
    v4 = &self->super.bytes[a4.location];
    v5 = _NSCStringCharToUnicharTable;
    do
    {
      v6 = *v4++;
      *a3++ = *(v5 + 2 * v6);
      --a4.length;
    }

    while (a4.length);
  }
}

- (BOOL)canBeConvertedToEncoding:(unint64_t)a3
{
  v5 = *MEMORY[0x1E69E9840];
  if (_NSCStringEncoding == a3)
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = NSConstantString;
  return [(NSSimpleCString *)&v4 canBeConvertedToEncoding:?];
}

- (const)_fastCStringContents:(BOOL)a3
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return self->super.bytes;
  }
}

- (BOOL)isEqual:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (self == a3)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    if (!a3)
    {
      goto LABEL_8;
    }

    v5 = _NSIsNSString();
    if (!v5)
    {
      return v5;
    }

    v6 = [a3 _fastCStringContents:0];
    if (!v6)
    {
      v10.receiver = self;
      v10.super_class = NSConstantString;
      LOBYTE(v5) = [(NSSimpleCString *)&v10 isEqual:a3];
      return v5;
    }

    v7 = v6;
    numBytes = self->super.numBytes;
    if ([a3 length] != numBytes)
    {
LABEL_8:
      LOBYTE(v5) = 0;
      return v5;
    }

    LOBYTE(v5) = memcmp(self->super.bytes, v7, self->super.numBytes) == 0;
  }

  return v5;
}

- (BOOL)isEqualToString:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (self == a3)
  {
    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  v5 = [a3 _fastCStringContents:0];
  if (v5)
  {
    v6 = v5;
    numBytes = self->super.numBytes;
    if ([a3 length] == numBytes)
    {
      return memcmp(self->super.bytes, v6, self->super.numBytes) == 0;
    }

    return 0;
  }

  v9.receiver = self;
  v9.super_class = NSConstantString;
  return [(NSSimpleCString *)&v9 isEqualToString:a3];
}

- (int64_t)compare:(id)a3 options:(unint64_t)a4 range:(_NSRange)a5
{
  v7 = *MEMORY[0x1E69E9840];
  if (self == a3)
  {
    return 0;
  }

  if (!a3)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = NSConstantString;
  return [(NSSimpleCString *)&v6 compare:a3 options:a4 range:a5.location, a5.length];
}

@end