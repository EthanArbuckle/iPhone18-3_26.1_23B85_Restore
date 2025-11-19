@interface NSIndirectTaggedPointerString
+ (id)allocWithZone:(_NSZone *)a3;
- (BOOL)_getCString:(char *)a3 maxLength:(unint64_t)a4 encoding:(unsigned int)a5;
- (BOOL)getBytes:(void *)a3 maxLength:(unint64_t)a4 usedLength:(unint64_t *)a5 encoding:(unint64_t)a6 options:(unint64_t)a7 range:(_NSRange)a8 remainingRange:(_NSRange *)a9;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToString:(id)a3;
- (const)UTF8String;
- (const)_fastCStringContents:(BOOL)a3;
- (const)cStringUsingEncoding:(unint64_t)a3;
- (id)substringWithRange:(_NSRange)a3;
- (int64_t)compare:(id)a3 options:(unint64_t)a4 range:(_NSRange)a5 locale:(id)a6;
- (unint64_t)hash;
- (unint64_t)length;
- (unsigned)characterAtIndex:(unint64_t)a3;
- (void)getCharacters:(unsigned __int16 *)a3 range:(_NSRange)a4;
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

- (unsigned)characterAtIndex:(unint64_t)a3
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
  if (v6 <= a3)
  {
    v9 = v6;
    v10 = __CFExceptionProem(self, a2);
    _CFThrowFormattedException(@"NSInvalidArgumentException", @"%@: Index %lu out of bounds; string length %lu", v10, a3, v9);
  }

  return *(((v4 >> 3) & 0x7FFFFFFFFFFFLL) + a3);
}

- (void)getCharacters:(unsigned __int16 *)a3 range:(_NSRange)a4
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
  if (v7 < a4.length || a4.location > v7 - a4.length)
  {
    length = a4.length;
    location = a4.location;
    v13 = v7;
    v14 = __CFExceptionProem(self, a2);
    v15 = "";
    if (length == 64)
    {
      v15 = " (Note that the indicated range may be smaller than the original range passed to the API)";
    }

    _CFThrowFormattedException(@"NSInvalidArgumentException", @"%@: Range {%lu, %lu} out of bounds; string length %lu%s", v14, location, length, v13, v15);
  }

  if (a4.length)
  {
    v9 = (((v5 >> 3) & 0x7FFFFFFFFFFFLL) + a4.location);
    do
    {
      v10 = *v9++;
      *a3++ = v10;
      --a4.length;
    }

    while (a4.length);
  }
}

- (const)_fastCStringContents:(BOOL)a3
{
  v3 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) == 0)
  {
    v3 = 0xC000000000000007;
  }

  return (((v3 ^ self) >> 3) & 0x7FFFFFFFFFFFLL);
}

- (id)substringWithRange:(_NSRange)a3
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
  if (v6 < a3.length || a3.location > v6 - a3.length)
  {
    length = a3.length;
    location = a3.location;
    v13 = v6;
    v14 = __CFExceptionProem(self, a2);
    v15 = "";
    if (length == 64)
    {
      v15 = " (Note that the indicated range may be smaller than the original range passed to the API)";
    }

    _CFThrowFormattedException(@"NSInvalidArgumentException", @"%@: Range {%lu, %lu} out of bounds; string length %lu%s", v14, location, length, v13, v15);
  }

  if (a3.location + a3.length == v6)
  {
    v8 = *MEMORY[0x1E69E9840];

    return _CFStringCreateIndirectASCIITaggedPointerString(((v4 >> 3) & 0x7FFFFFFFFFFFLL) + a3.location, a3.length);
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

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v5) = 1;
  }

  else if (a3)
  {
    if ((a3 & 0x8000000000000000) != 0)
    {

      LOBYTE(v5) = isEqualToTaggedPointer_0(self, a3);
    }

    else
    {
      v5 = _NSIsNSString(a3);
      if (v5)
      {

        LOBYTE(v5) = isEqualToString_0(self, a3, 0);
      }
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

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

  if ((a3 & 0x8000000000000000) != 0)
  {
    return isEqualToTaggedPointer_0(self, a3);
  }

  return isEqualToString_0(self, a3, 0);
}

- (int64_t)compare:(id)a3 options:(unint64_t)a4 range:(_NSRange)a5 locale:(id)a6
{
  v28 = *MEMORY[0x1E69E9840];
  if (self == a3)
  {
    result = 0;
  }

  else
  {
    length = a5.length;
    location = a5.location;
    v8 = a4;
    if (a4 > 3 || !a3 || a6)
    {
      v27.receiver = self;
      v27.super_class = NSIndirectTaggedPointerString;
      result = [NSIndirectTaggedPointerString compare:sel_compare_options_range_locale_ options:? range:? locale:?];
    }

    else
    {
      CStringPtr = CFStringGetCStringPtr(a3, 0x600u);
      if (CStringPtr)
      {
        v12 = CStringPtr;
        v13 = [a3 length];
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
        if (v8)
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

- (const)cStringUsingEncoding:(unint64_t)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if (a3 <= 5 && ((1 << a3) & 0x32) != 0)
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

- (BOOL)_getCString:(char *)a3 maxLength:(unint64_t)a4 encoding:(unsigned int)a5
{
  v13 = *MEMORY[0x1E69E9840];
  if (a5 == 513 || a5 == 134217984 || a5 == 1536)
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
    if (v9 <= a4)
    {
      memmove(a3, ((v7 >> 3) & 0x7FFFFFFFFFFFLL), *&v8 & (v7 >> 50));
      a3[v9] = 0;
      result = 1;
    }

    else
    {
      result = 0;
      *a3 = 0;
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = NSIndirectTaggedPointerString;
    result = [(NSIndirectTaggedPointerString *)&v12 _getCString:a3 maxLength:a4 encoding:?];
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)getBytes:(void *)a3 maxLength:(unint64_t)a4 usedLength:(unint64_t *)a5 encoding:(unint64_t)a6 options:(unint64_t)a7 range:(_NSRange)a8 remainingRange:(_NSRange *)a9
{
  v23 = *MEMORY[0x1E69E9840];
  if (a7 || a6 > 5 || ((1 << a6) & 0x32) == 0)
  {
    v22.receiver = self;
    v22.super_class = NSIndirectTaggedPointerString;
    result = [(NSIndirectTaggedPointerString *)&v22 getBytes:a3 maxLength:a4 usedLength:a5 encoding:a6 options:a8.location range:a8.length remainingRange:a9];
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

  if (!a3)
  {
    v14 = *&v13 & (v12 >> 50);
    if (v14 >= a8.length && a8.location <= v14 - a8.length)
    {
      length = a8.length;
      if (!a5)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

LABEL_29:
    v20 = __CFExceptionProem(self, a2);
    v21 = "";
    if (a8.length == 64)
    {
      v21 = " (Note that the indicated range may be smaller than the original range passed to the API)";
    }

    _CFThrowFormattedException(@"NSInvalidArgumentException", @"%@: Range {%lu, %lu} out of bounds; string length %lu%s", v20, a8.location, a8.length, v14, v21);
  }

  v14 = *&v13 & (v12 >> 50);
  if (v14 < a8.length || a8.location > v14 - a8.length)
  {
    goto LABEL_29;
  }

  v16 = (v12 >> 3) & 0x7FFFFFFFFFFFLL;
  if (a8.length >= a4)
  {
    length = a4;
  }

  else
  {
    length = a8.length;
  }

  memmove(a3, (v16 + a8.location), length);
  if (a5)
  {
LABEL_18:
    *a5 = length;
  }

LABEL_19:
  if (a9)
  {
    a9->location = length + a8.location;
    a9->length = a8.length - length;
  }

  result = 1;
LABEL_22:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)allocWithZone:(_NSZone *)a3
{
  qword_1EA849A30 = "NSIndirectTaggedPointerString cannot be allocated";
  __break(1u);
  return result;
}

@end