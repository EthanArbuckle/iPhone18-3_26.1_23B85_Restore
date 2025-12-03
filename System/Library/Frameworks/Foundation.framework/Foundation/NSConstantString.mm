@interface NSConstantString
- (BOOL)canBeConvertedToEncoding:(unint64_t)encoding;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToString:(id)string;
- (const)_fastCStringContents:(BOOL)contents;
- (int64_t)compare:(id)compare options:(unint64_t)options range:(_NSRange)range;
- (unsigned)characterAtIndex:(unint64_t)index;
- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range;
@end

@implementation NSConstantString

- (unsigned)characterAtIndex:(unint64_t)index
{
  if (self->super.numBytes <= index)
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Index %lu out of bounds; string length %lu", _NSMethodExceptionProem(self, a2), index, self->super.numBytes), 0}];
    objc_exception_throw(v4);
  }

  return *(_NSCStringCharToUnicharTable + 2 * self->super.bytes[index]);
}

- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range
{
  if (range.location + range.length > self->super.numBytes)
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Range {%lu, %lu} out of bounds; string length %lu", _NSMethodExceptionProem(self, a2), range.location, range.length, self->super.numBytes), 0}];
    objc_exception_throw(v7);
  }

  if (range.length)
  {
    v4 = &self->super.bytes[range.location];
    v5 = _NSCStringCharToUnicharTable;
    do
    {
      v6 = *v4++;
      *characters++ = *(v5 + 2 * v6);
      --range.length;
    }

    while (range.length);
  }
}

- (BOOL)canBeConvertedToEncoding:(unint64_t)encoding
{
  v5 = *MEMORY[0x1E69E9840];
  if (_NSCStringEncoding == encoding)
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = NSConstantString;
  return [(NSSimpleCString *)&v4 canBeConvertedToEncoding:?];
}

- (const)_fastCStringContents:(BOOL)contents
{
  if (contents)
  {
    return 0;
  }

  else
  {
    return self->super.bytes;
  }
}

- (BOOL)isEqual:(id)equal
{
  v11 = *MEMORY[0x1E69E9840];
  if (self == equal)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    if (!equal)
    {
      goto LABEL_8;
    }

    v5 = _NSIsNSString();
    if (!v5)
    {
      return v5;
    }

    v6 = [equal _fastCStringContents:0];
    if (!v6)
    {
      v10.receiver = self;
      v10.super_class = NSConstantString;
      LOBYTE(v5) = [(NSSimpleCString *)&v10 isEqual:equal];
      return v5;
    }

    v7 = v6;
    numBytes = self->super.numBytes;
    if ([equal length] != numBytes)
    {
LABEL_8:
      LOBYTE(v5) = 0;
      return v5;
    }

    LOBYTE(v5) = memcmp(self->super.bytes, v7, self->super.numBytes) == 0;
  }

  return v5;
}

- (BOOL)isEqualToString:(id)string
{
  v10 = *MEMORY[0x1E69E9840];
  if (self == string)
  {
    return 1;
  }

  if (!string)
  {
    return 0;
  }

  v5 = [string _fastCStringContents:0];
  if (v5)
  {
    v6 = v5;
    numBytes = self->super.numBytes;
    if ([string length] == numBytes)
    {
      return memcmp(self->super.bytes, v6, self->super.numBytes) == 0;
    }

    return 0;
  }

  v9.receiver = self;
  v9.super_class = NSConstantString;
  return [(NSSimpleCString *)&v9 isEqualToString:string];
}

- (int64_t)compare:(id)compare options:(unint64_t)options range:(_NSRange)range
{
  v7 = *MEMORY[0x1E69E9840];
  if (self == compare)
  {
    return 0;
  }

  if (!compare)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = NSConstantString;
  return [(NSSimpleCString *)&v6 compare:compare options:options range:range.location, range.length];
}

@end