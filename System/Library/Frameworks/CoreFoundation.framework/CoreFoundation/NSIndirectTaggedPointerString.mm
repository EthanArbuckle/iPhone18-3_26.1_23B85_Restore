@interface NSIndirectTaggedPointerString
+ (id)allocWithZone:(_NSZone *)zone;
- (BOOL)_getCString:(char *)string maxLength:(unint64_t)length encoding:(unsigned int)encoding;
- (BOOL)getBytes:(void *)bytes maxLength:(unint64_t)length usedLength:(unint64_t *)usedLength encoding:(unint64_t)encoding options:(unint64_t)options range:(_NSRange)range remainingRange:(_NSRange *)remainingRange;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToString:(id)string;
- (const)UTF8String;
- (const)_fastCStringContents:(BOOL)contents;
- (const)cStringUsingEncoding:(unint64_t)encoding;
- (id)substringWithRange:(_NSRange)range;
- (int64_t)compare:(id)compare options:(unint64_t)options range:(_NSRange)range locale:(id)locale;
- (unint64_t)hash;
- (unint64_t)length;
- (unsigned)characterAtIndex:(unint64_t)index;
- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range;
@end

@implementation NSIndirectTaggedPointerString

- (unint64_t)length
{
  v2 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) == 0)
  {
    v2 = 0;
  }

  v3 = v2 ^ self;
  v4 = 0x1FFF;
  if ((~v3 & 7) == 0)
  {
    v4 = 31;
  }

  return *&v4 & (v3 >> 50);
}

- (unint64_t)hash
{
  v2 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) == 0)
  {
    v2 = 0;
  }

  v3 = v2 ^ self;
  v4 = 0xFFF800000000000;
  if ((~v3 & 7) == 0)
  {
    v4 = 0xF800000000000;
  }

  return CFStringHashCString(((v3 >> 3) & 0x7FFFFFFFFFFFLL), (v4 & (v3 >> 3)) >> 47);
}

- (const)UTF8String
{
  v2 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) == 0)
  {
    v2 = 0xC000000000000007;
  }

  return (((v2 ^ self) >> 3) & 0x7FFFFFFFFFFFLL);
}

- (unsigned)characterAtIndex:(unint64_t)index
{
  v3 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) == 0)
  {
    v3 = 0;
  }

  v4 = v3 ^ self;
  v5 = 0x1FFF;
  if ((~v4 & 7) == 0)
  {
    v5 = 31;
  }

  v6 = *&v5 & (v4 >> 50);
  if (v6 <= index)
  {
    v9 = v6;
    v10 = __CFExceptionProem(self, a2);
    _CFThrowFormattedException(@"NSInvalidArgumentException", @"%@: Index %lu out of bounds; string length %lu", v10, index, v9);
  }

  return *(((v4 >> 3) & 0x7FFFFFFFFFFFLL) + index);
}

- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range
{
  if ((~self & 0xC000000000000007) != 0)
  {
    v4 = *MEMORY[0x1E69E5910];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ self;
  v6 = 0x1FFF;
  if ((~v5 & 7) == 0)
  {
    v6 = 31;
  }

  v7 = *&v6 & (v5 >> 50);
  if (v7 < range.length || range.location > v7 - range.length)
  {
    length = range.length;
    location = range.location;
    v13 = v7;
    v14 = __CFExceptionProem(self, a2);
    v15 = "";
    if (length == 64)
    {
      v15 = " (Note that the indicated range may be smaller than the original range passed to the API)";
    }

    _CFThrowFormattedException(@"NSInvalidArgumentException", @"%@: Range {%lu, %lu} out of bounds; string length %lu%s", v14, location, length, v13, v15);
  }

  if (range.length)
  {
    v9 = (((v5 >> 3) & 0x7FFFFFFFFFFFLL) + range.location);
    do
    {
      v10 = *v9++;
      *characters++ = v10;
      --range.length;
    }

    while (range.length);
  }
}

- (const)_fastCStringContents:(BOOL)contents
{
  v3 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) == 0)
  {
    v3 = 0xC000000000000007;
  }

  return (((v3 ^ self) >> 3) & 0x7FFFFFFFFFFFLL);
}

- (id)substringWithRange:(_NSRange)range
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) == 0)
  {
    v3 = 0;
  }

  v4 = v3 ^ self;
  v5 = 0x1FFF;
  if ((~v4 & 7) == 0)
  {
    v5 = 31;
  }

  v6 = *&v5 & (v4 >> 50);
  if (v6 < range.length || range.location > v6 - range.length)
  {
    length = range.length;
    location = range.location;
    v13 = v6;
    v14 = __CFExceptionProem(self, a2);
    v15 = "";
    if (length == 64)
    {
      v15 = " (Note that the indicated range may be smaller than the original range passed to the API)";
    }

    _CFThrowFormattedException(@"NSInvalidArgumentException", @"%@: Range {%lu, %lu} out of bounds; string length %lu%s", v14, location, length, v13, v15);
  }

  if (range.location + range.length == v6)
  {
    v8 = *MEMORY[0x1E69E9840];

    return _CFStringCreateIndirectASCIITaggedPointerString(((v4 >> 3) & 0x7FFFFFFFFFFFLL) + range.location, range.length);
  }

  else
  {
    v16.receiver = self;
    v16.super_class = NSIndirectTaggedPointerString;
    result = [(NSIndirectTaggedPointerString *)&v16 substringWithRange:?];
    v10 = *MEMORY[0x1E69E9840];
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v5) = 1;
  }

  else if (equal)
  {
    if ((equal & 0x8000000000000000) != 0)
    {

      LOBYTE(v5) = isEqualToTaggedPointer_0(self, equal);
    }

    else
    {
      v5 = _NSIsNSString(equal);
      if (v5)
      {

        LOBYTE(v5) = isEqualToString_0(self, equal, 0);
      }
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

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

  if ((string & 0x8000000000000000) != 0)
  {
    return isEqualToTaggedPointer_0(self, string);
  }

  return isEqualToString_0(self, string, 0);
}

- (int64_t)compare:(id)compare options:(unint64_t)options range:(_NSRange)range locale:(id)locale
{
  v28 = *MEMORY[0x1E69E9840];
  if (self == compare)
  {
    result = 0;
  }

  else
  {
    length = range.length;
    location = range.location;
    optionsCopy = options;
    if (options > 3 || !compare || locale)
    {
      v27.receiver = self;
      v27.super_class = NSIndirectTaggedPointerString;
      result = [NSIndirectTaggedPointerString compare:sel_compare_options_range_locale_ options:? range:? locale:?];
    }

    else
    {
      CStringPtr = CFStringGetCStringPtr(compare, 0x600u);
      if (CStringPtr)
      {
        v12 = CStringPtr;
        v13 = [compare length];
        v14 = v13;
        v15 = *MEMORY[0x1E69E5910];
        if ((~self & 0xC000000000000007) == 0)
        {
          v15 = 0xC000000000000007;
        }

        v16 = ((v15 ^ self) >> 3) & 0x7FFFFFFFFFFFLL;
        if (length >= v13)
        {
          v17 = v13;
        }

        else
        {
          v17 = length;
        }

        v18 = (v16 + location);
        if (optionsCopy)
        {
          v19 = _CFStringCompareASCIICaseInsensitive(v18, v12, v17);
        }

        else
        {
          v19 = memcmp(v18, v12, v17);
        }

        v21 = length - v14;
        if (v19)
        {
          v21 = v19;
        }

        v22 = v21 == 0;
        v23 = v21 < 0;
        v24 = -1;
        if (!v23)
        {
          v24 = 1;
        }

        if (v22)
        {
          result = 0;
        }

        else
        {
          result = v24;
        }
      }

      else
      {
        v26.receiver = self;
        v26.super_class = NSIndirectTaggedPointerString;
        result = [NSIndirectTaggedPointerString compare:sel_compare_options_range_locale_ options:? range:? locale:?];
      }
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return result;
}

- (const)cStringUsingEncoding:(unint64_t)encoding
{
  v7 = *MEMORY[0x1E69E9840];
  if (encoding <= 5 && ((1 << encoding) & 0x32) != 0)
  {
    v3 = *MEMORY[0x1E69E5910];
    if ((~self & 0xC000000000000007) == 0)
    {
      v3 = 0xC000000000000007;
    }

    result = (((v3 ^ self) >> 3) & 0x7FFFFFFFFFFFLL);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = NSIndirectTaggedPointerString;
    result = [(NSIndirectTaggedPointerString *)&v6 cStringUsingEncoding:?];
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_getCString:(char *)string maxLength:(unint64_t)length encoding:(unsigned int)encoding
{
  v13 = *MEMORY[0x1E69E9840];
  if (encoding == 513 || encoding == 134217984 || encoding == 1536)
  {
    v6 = *MEMORY[0x1E69E5910];
    if ((~self & 0xC000000000000007) == 0)
    {
      v6 = 0;
    }

    v7 = v6 ^ self;
    v8 = 0x1FFF;
    if ((~v7 & 7) == 0)
    {
      v8 = 31;
    }

    v9 = *&v8 & (v7 >> 50);
    if (v9 <= length)
    {
      memmove(string, ((v7 >> 3) & 0x7FFFFFFFFFFFLL), *&v8 & (v7 >> 50));
      string[v9] = 0;
      result = 1;
    }

    else
    {
      result = 0;
      *string = 0;
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = NSIndirectTaggedPointerString;
    result = [(NSIndirectTaggedPointerString *)&v12 _getCString:string maxLength:length encoding:?];
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)getBytes:(void *)bytes maxLength:(unint64_t)length usedLength:(unint64_t *)usedLength encoding:(unint64_t)encoding options:(unint64_t)options range:(_NSRange)range remainingRange:(_NSRange *)remainingRange
{
  v23 = *MEMORY[0x1E69E9840];
  if (options || encoding > 5 || ((1 << encoding) & 0x32) == 0)
  {
    v22.receiver = self;
    v22.super_class = NSIndirectTaggedPointerString;
    result = [(NSIndirectTaggedPointerString *)&v22 getBytes:bytes maxLength:length usedLength:usedLength encoding:encoding options:range.location range:range.length remainingRange:remainingRange];
    goto LABEL_22;
  }

  v11 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) == 0)
  {
    v11 = 0;
  }

  v12 = v11 ^ self;
  v13 = 0x1FFF;
  if ((v12 & 7) == 7)
  {
    v13 = 31;
  }

  if (!bytes)
  {
    v14 = *&v13 & (v12 >> 50);
    if (v14 >= range.length && range.location <= v14 - range.length)
    {
      length = range.length;
      if (!usedLength)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

LABEL_29:
    v20 = __CFExceptionProem(self, a2);
    v21 = "";
    if (range.length == 64)
    {
      v21 = " (Note that the indicated range may be smaller than the original range passed to the API)";
    }

    _CFThrowFormattedException(@"NSInvalidArgumentException", @"%@: Range {%lu, %lu} out of bounds; string length %lu%s", v20, range.location, range.length, v14, v21);
  }

  v14 = *&v13 & (v12 >> 50);
  if (v14 < range.length || range.location > v14 - range.length)
  {
    goto LABEL_29;
  }

  v16 = (v12 >> 3) & 0x7FFFFFFFFFFFLL;
  if (range.length >= length)
  {
    length = length;
  }

  else
  {
    length = range.length;
  }

  memmove(bytes, (v16 + range.location), length);
  if (usedLength)
  {
LABEL_18:
    *usedLength = length;
  }

LABEL_19:
  if (remainingRange)
  {
    remainingRange->location = length + range.location;
    remainingRange->length = range.length - length;
  }

  result = 1;
LABEL_22:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  qword_1EA849A30 = "NSIndirectTaggedPointerString cannot be allocated";
  __break(1u);
  return result;
}

@end