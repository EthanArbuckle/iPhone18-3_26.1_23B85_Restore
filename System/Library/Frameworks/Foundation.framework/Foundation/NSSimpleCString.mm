@interface NSSimpleCString
- (BOOL)canBeConvertedToEncoding:(unint64_t)encoding;
- (BOOL)getBytes:(void *)bytes maxLength:(unint64_t)length usedLength:(unint64_t *)usedLength encoding:(unint64_t)encoding options:(unint64_t)options range:(_NSRange)range remainingRange:(_NSRange *)remainingRange;
- (BOOL)hasPrefix:(id)prefix;
- (BOOL)hasSuffix:(id)suffix;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToString:(id)string;
- (NSSimpleCString)initWithCStringNoCopy:(char *)copy length:(unint64_t)length;
- (const)_fastCStringContents:(BOOL)contents;
- (id)_newSubstringWithRange:(_NSRange)range zone:(_NSZone *)zone;
- (id)copyWithZone:(_NSZone *)zone;
- (id)stringByAppendingString:(id)string;
- (int64_t)compare:(id)compare options:(unint64_t)options range:(_NSRange)range;
- (unsigned)characterAtIndex:(unint64_t)index;
- (void)dealloc;
- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range;
@end

@implementation NSSimpleCString

- (NSSimpleCString)initWithCStringNoCopy:(char *)copy length:(unint64_t)length
{
  self->bytes = copy;
  self->numBytes = length;
  return self;
}

- (unsigned)characterAtIndex:(unint64_t)index
{
  if (self->numBytes <= index)
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Index %lu out of bounds; string length %lu", _NSMethodExceptionProem(self, a2), index, self->numBytes), 0}];
    objc_exception_throw(v4);
  }

  return *(_NSCStringCharToUnicharTable + 2 * self->bytes[index]);
}

- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range
{
  if (range.location + range.length > self->numBytes)
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Range {%lu, %lu} out of bounds; string length %lu", _NSMethodExceptionProem(self, a2), range.location, range.length, self->numBytes), 0}];
    objc_exception_throw(v7);
  }

  if (range.length)
  {
    v4 = &self->bytes[range.location];
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
  v4.super_class = NSSimpleCString;
  return [(NSString *)&v4 canBeConvertedToEncoding:?];
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (NSShouldRetainWithZone(self, zone))
  {

    return self;
  }

  else
  {
    v5 = [NSString allocWithZone:zone];
    bytes = self->bytes;
    numBytes = self->numBytes;
    v8 = _NSCStringEncoding;

    return [(NSString *)v5 initWithBytes:bytes length:numBytes encoding:v8];
  }
}

- (const)_fastCStringContents:(BOOL)contents
{
  if (contents)
  {
    return 0;
  }

  else
  {
    return self->bytes;
  }
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v5) = 1;
    return v5;
  }

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
  if (v6)
  {
    v7 = v6;
    numBytes = self->numBytes;
    if ([equal length] == numBytes)
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

  LOBYTE(v5) = isEqualCStringToString(bytes, v10, equal);
  return v5;
}

- (BOOL)isEqualToString:(id)string
{
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
    numBytes = self->numBytes;
    if ([string length] == numBytes)
    {
      return memcmp(self->bytes, v6, self->numBytes) == 0;
    }

    return 0;
  }

  bytes = self->bytes;
  v10 = self->numBytes;

  return isEqualCStringToString(bytes, v10, string);
}

- (int64_t)compare:(id)compare options:(unint64_t)options range:(_NSRange)range
{
  v16 = *MEMORY[0x1E69E9840];
  if (self == compare)
  {
    return 0;
  }

  if (!compare)
  {
    return 1;
  }

  length = range.length;
  location = range.location;
  v10 = [compare _fastCStringContents:0];
  if (v10)
  {
    v11 = v10;
    v12 = [compare length];
    v13 = &self->bytes[location];

    return NSCompareCString(v13, v11, length, v12, options);
  }

  else
  {
    v15.receiver = self;
    v15.super_class = NSSimpleCString;
    return [(NSString *)&v15 compare:compare options:options range:location, length];
  }
}

- (BOOL)hasPrefix:(id)prefix
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [prefix _fastCStringContents:0];
  if (v5)
  {
    v6 = v5;
    v7 = [prefix length];
    if (v7)
    {
      LOBYTE(v7) = v7 <= self->numBytes && memcmp(self->bytes, v6, v7) == 0;
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NSSimpleCString;
    LOBYTE(v7) = [(NSString *)&v9 hasPrefix:prefix];
  }

  return v7;
}

- (BOOL)hasSuffix:(id)suffix
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [suffix _fastCStringContents:0];
  if (v5)
  {
    v6 = v5;
    v7 = [suffix length];
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
    LOBYTE(v7) = [(NSString *)&v10 hasSuffix:suffix];
  }

  return v7;
}

- (BOOL)getBytes:(void *)bytes maxLength:(unint64_t)length usedLength:(unint64_t *)usedLength encoding:(unint64_t)encoding options:(unint64_t)options range:(_NSRange)range remainingRange:(_NSRange *)remainingRange
{
  v13 = *MEMORY[0x1E69E9840];
  if (_NSCStringEncoding == encoding)
  {
    if (range.length >= length)
    {
      length = length;
    }

    else
    {
      length = range.length;
    }

    if (bytes && length)
    {
      memmove(bytes, &self->bytes[range.location], length);
    }

    if (usedLength)
    {
      *usedLength = length;
    }

    if (remainingRange)
    {
      remainingRange->location = length + range.location;
      remainingRange->length = range.length - length;
    }

    return 1;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = NSSimpleCString;
    return [(NSString *)&v12 getBytes:bytes maxLength:length usedLength:usedLength encoding:range.location options:range.length range:remainingRange remainingRange:?];
  }
}

- (id)_newSubstringWithRange:(_NSRange)range zone:(_NSZone *)zone
{
  length = range.length;
  location = range.location;
  numBytes = self->numBytes;
  if (range.location > numBytes || range.location + range.length > numBytes)
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Range {%lu, %lu} out of bounds; string length %lu", _NSMethodExceptionProem(self, a2), range.location, range.length, self->numBytes), 0}];
    objc_exception_throw(v12);
  }

  if (!range.length)
  {
    return &stru_1EEEFDF90;
  }

  if (range.location || range.length != numBytes)
  {
    v9 = [NSString allocWithZone:zone];
    v10 = _NSCStringEncoding;
    v11 = &self->bytes[location];

    return [(NSString *)v9 initWithBytes:v11 length:length encoding:v10];
  }

  else
  {

    return self;
  }
}

- (id)stringByAppendingString:(id)string
{
  v5 = [string length];
  v6 = v5;
  if (!self->numBytes)
  {
    if (!v5)
    {
      return &stru_1EEEFDF90;
    }

    selfCopy = string;
    goto LABEL_14;
  }

  if (!v5)
  {
    selfCopy = self;
LABEL_14:
    v14 = [selfCopy copyWithZone:0];
    goto LABEL_20;
  }

  v7 = [string _fastCStringContents:0];
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

        [string getBytes:&v11[numBytes] maxLength:v6 usedLength:0 encoding:_NSCStringEncoding options:0 range:0 remainingRange:{v6, 0}];
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
  [string getCharacters:&v17[2 * self->numBytes] range:{0, v6}];
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