@interface NSSimpleCString
- (BOOL)canBeConvertedToEncoding:(unint64_t)a3;
- (BOOL)getBytes:(void *)a3 maxLength:(unint64_t)a4 usedLength:(unint64_t *)a5 encoding:(unint64_t)a6 options:(unint64_t)a7 range:(_NSRange)a8 remainingRange:(_NSRange *)a9;
- (BOOL)hasPrefix:(id)a3;
- (BOOL)hasSuffix:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToString:(id)a3;
- (NSSimpleCString)initWithCStringNoCopy:(char *)a3 length:(unint64_t)a4;
- (const)_fastCStringContents:(BOOL)a3;
- (id)_newSubstringWithRange:(_NSRange)a3 zone:(_NSZone *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)stringByAppendingString:(id)a3;
- (int64_t)compare:(id)a3 options:(unint64_t)a4 range:(_NSRange)a5;
- (unsigned)characterAtIndex:(unint64_t)a3;
- (void)dealloc;
- (void)getCharacters:(unsigned __int16 *)a3 range:(_NSRange)a4;
@end

@implementation NSSimpleCString

- (NSSimpleCString)initWithCStringNoCopy:(char *)a3 length:(unint64_t)a4
{
  self->bytes = a3;
  self->numBytes = a4;
  return self;
}

- (unsigned)characterAtIndex:(unint64_t)a3
{
  if (self->numBytes <= a3)
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Index %lu out of bounds; string length %lu", _NSMethodExceptionProem(self, a2), a3, self->numBytes), 0}];
    objc_exception_throw(v4);
  }

  return *(_NSCStringCharToUnicharTable + 2 * self->bytes[a3]);
}

- (void)getCharacters:(unsigned __int16 *)a3 range:(_NSRange)a4
{
  if (a4.location + a4.length > self->numBytes)
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Range {%lu, %lu} out of bounds; string length %lu", _NSMethodExceptionProem(self, a2), a4.location, a4.length, self->numBytes), 0}];
    objc_exception_throw(v7);
  }

  if (a4.length)
  {
    v4 = &self->bytes[a4.location];
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
  v4.super_class = NSSimpleCString;
  return [(NSString *)&v4 canBeConvertedToEncoding:?];
}

- (id)copyWithZone:(_NSZone *)a3
{
  if (NSShouldRetainWithZone(self, a3))
  {

    return self;
  }

  else
  {
    v5 = [NSString allocWithZone:a3];
    bytes = self->bytes;
    numBytes = self->numBytes;
    v8 = _NSCStringEncoding;

    return [(NSString *)v5 initWithBytes:bytes length:numBytes encoding:v8];
  }
}

- (const)_fastCStringContents:(BOOL)a3
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return self->bytes;
  }
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v5) = 1;
    return v5;
  }

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
  if (v6)
  {
    v7 = v6;
    numBytes = self->numBytes;
    if ([a3 length] == numBytes)
    {
      LOBYTE(v5) = memcmp(self->bytes, v7, self->numBytes) == 0;
      return v5;
    }

LABEL_8:
    LOBYTE(v5) = 0;
    return v5;
  }

  bytes = self->bytes;
  v10 = self->numBytes;

  LOBYTE(v5) = isEqualCStringToString(bytes, v10, a3);
  return v5;
}

- (BOOL)isEqualToString:(id)a3
{
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
    numBytes = self->numBytes;
    if ([a3 length] == numBytes)
    {
      return memcmp(self->bytes, v6, self->numBytes) == 0;
    }

    return 0;
  }

  bytes = self->bytes;
  v10 = self->numBytes;

  return isEqualCStringToString(bytes, v10, a3);
}

- (int64_t)compare:(id)a3 options:(unint64_t)a4 range:(_NSRange)a5
{
  v16 = *MEMORY[0x1E69E9840];
  if (self == a3)
  {
    return 0;
  }

  if (!a3)
  {
    return 1;
  }

  length = a5.length;
  location = a5.location;
  v10 = [a3 _fastCStringContents:0];
  if (v10)
  {
    v11 = v10;
    v12 = [a3 length];
    v13 = &self->bytes[location];

    return NSCompareCString(v13, v11, length, v12, a4);
  }

  else
  {
    v15.receiver = self;
    v15.super_class = NSSimpleCString;
    return [(NSString *)&v15 compare:a3 options:a4 range:location, length];
  }
}

- (BOOL)hasPrefix:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a3 _fastCStringContents:0];
  if (v5)
  {
    v6 = v5;
    v7 = [a3 length];
    if (v7)
    {
      LOBYTE(v7) = v7 <= self->numBytes && memcmp(self->bytes, v6, v7) == 0;
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NSSimpleCString;
    LOBYTE(v7) = [(NSString *)&v9 hasPrefix:a3];
  }

  return v7;
}

- (BOOL)hasSuffix:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a3 _fastCStringContents:0];
  if (v5)
  {
    v6 = v5;
    v7 = [a3 length];
    if (v7)
    {
      numBytes = self->numBytes;
      LOBYTE(v7) = v7 <= numBytes && memcmp(&self->bytes[numBytes - v7], v6, v7) == 0;
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = NSSimpleCString;
    LOBYTE(v7) = [(NSString *)&v10 hasSuffix:a3];
  }

  return v7;
}

- (BOOL)getBytes:(void *)a3 maxLength:(unint64_t)a4 usedLength:(unint64_t *)a5 encoding:(unint64_t)a6 options:(unint64_t)a7 range:(_NSRange)a8 remainingRange:(_NSRange *)a9
{
  v13 = *MEMORY[0x1E69E9840];
  if (_NSCStringEncoding == a6)
  {
    if (a8.length >= a4)
    {
      length = a4;
    }

    else
    {
      length = a8.length;
    }

    if (a3 && length)
    {
      memmove(a3, &self->bytes[a8.location], length);
    }

    if (a5)
    {
      *a5 = length;
    }

    if (a9)
    {
      a9->location = length + a8.location;
      a9->length = a8.length - length;
    }

    return 1;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = NSSimpleCString;
    return [(NSString *)&v12 getBytes:a3 maxLength:a4 usedLength:a5 encoding:a8.location options:a8.length range:a9 remainingRange:?];
  }
}

- (id)_newSubstringWithRange:(_NSRange)a3 zone:(_NSZone *)a4
{
  length = a3.length;
  location = a3.location;
  numBytes = self->numBytes;
  if (a3.location > numBytes || a3.location + a3.length > numBytes)
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Range {%lu, %lu} out of bounds; string length %lu", _NSMethodExceptionProem(self, a2), a3.location, a3.length, self->numBytes), 0}];
    objc_exception_throw(v12);
  }

  if (!a3.length)
  {
    return &stru_1EEEFDF90;
  }

  if (a3.location || a3.length != numBytes)
  {
    v9 = [NSString allocWithZone:a4];
    v10 = _NSCStringEncoding;
    v11 = &self->bytes[location];

    return [(NSString *)v9 initWithBytes:v11 length:length encoding:v10];
  }

  else
  {

    return self;
  }
}

- (id)stringByAppendingString:(id)a3
{
  v5 = [a3 length];
  v6 = v5;
  if (!self->numBytes)
  {
    if (!v5)
    {
      return &stru_1EEEFDF90;
    }

    v15 = a3;
    goto LABEL_14;
  }

  if (!v5)
  {
    v15 = self;
LABEL_14:
    v14 = [v15 copyWithZone:0];
    goto LABEL_20;
  }

  v7 = [a3 _fastCStringContents:0];
  result = [(NSSimpleCString *)self zone];
  v9 = result;
  v10 = v6 + self->numBytes;
  if (v7)
  {
    if (v10)
    {
      if (!result)
      {
        result = malloc_default_zone();
      }

      result = malloc_type_zone_malloc(result, v10, 0x409734D7uLL);
      if (result)
      {
        v11 = result;
        numBytes = self->numBytes;
        if (numBytes >= 1)
        {
          memmove(result, self->bytes, numBytes);
          LODWORD(numBytes) = self->numBytes;
        }

        [a3 getBytes:&v11[numBytes] maxLength:v6 usedLength:0 encoding:_NSCStringEncoding options:0 range:0 remainingRange:{v6, 0}];
        v13 = [NSString allocWithZone:v9];
        v14 = [(NSString *)v13 initWithBytesNoCopy:v11 length:v6 + self->numBytes encoding:_NSCStringEncoding freeWhenDone:1];
        goto LABEL_20;
      }
    }

LABEL_24:
    qword_1EA7BB378 = "Unable to allocate memory for string buffer";
    __break(1u);
    return result;
  }

  if (!v10)
  {
    goto LABEL_24;
  }

  v16 = 2 * v10;
  if (!result)
  {
    result = malloc_default_zone();
  }

  result = malloc_type_zone_malloc(result, v16, 0x409734D7uLL);
  if (!result)
  {
    goto LABEL_24;
  }

  v17 = result;
  [(NSSimpleCString *)self getCharacters:result range:0, self->numBytes];
  [a3 getCharacters:&v17[2 * self->numBytes] range:{0, v6}];
  v14 = [[NSString allocWithZone:?]length:"initWithCharactersNoCopy:length:freeWhenDone:" freeWhenDone:v17, v6 + self->numBytes, 1];
LABEL_20:

  return v14;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  bytes = self->bytes;
  if (bytes)
  {
    free(bytes);
  }

  v4.receiver = self;
  v4.super_class = NSSimpleCString;
  [(NSSimpleCString *)&v4 dealloc];
}

@end