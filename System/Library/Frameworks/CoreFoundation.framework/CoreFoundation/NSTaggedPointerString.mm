@interface NSTaggedPointerString
+ (id)allocWithZone:(_NSZone *)zone;
- (BOOL)_getCString:(char *)string maxLength:(unint64_t)length encoding:(unsigned int)encoding;
- (BOOL)getBytes:(void *)bytes maxLength:(unint64_t)length usedLength:(unint64_t *)usedLength encoding:(unint64_t)encoding options:(unint64_t)options range:(_NSRange)range remainingRange:(_NSRange *)remainingRange;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToString:(id)string;
- (const)UTF8String;
- (const)cStringUsingEncoding:(unint64_t)encoding;
- (id)lowercaseStringWithLocale:(id)locale;
- (id)substringWithRange:(_NSRange)range;
- (id)uppercaseStringWithLocale:(id)locale;
- (int64_t)compare:(id)compare options:(unint64_t)options range:(_NSRange)range locale:(id)locale;
- (unint64_t)hash;
- (unint64_t)length;
- (unsigned)characterAtIndex:(unint64_t)index;
- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range;
@end

@implementation NSTaggedPointerString

- (const)UTF8String
{
  __src[2] = *MEMORY[0x1E69E9840];
  __src[0] = 0;
  __src[1] = 0;
  v2 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) == 0)
  {
    v2 = 0;
  }

  v3 = v2 ^ self;
  v4 = (~(v2 ^ self) & 7) == 0;
  v5 = 0xFFFFFFFFFFFFFFFLL;
  if (v4)
  {
    v5 = 0xFFFFFFFFFFFFFLL;
  }

  v6 = (v3 >> 3) & 0xF;
  v7 = (v5 & (v3 >> 3)) >> 4;
  if (v6 < 8)
  {
    __src[0] = v7;
  }

  else
  {
    v8 = (v3 >> 3) & 0xF;
    if (v6 >= 0xA)
    {
      do
      {
        *(&v14 + v8) = sixBitToCharLookup[v7 & 0x1F];
        v7 >>= 5;
        --v8;
      }

      while (v8);
    }

    else
    {
      do
      {
        *(&v14 + v8) = sixBitToCharLookup[v7 & 0x3F];
        v7 >>= 6;
        --v8;
      }

      while (v8);
    }
  }

  os_unfair_lock_lock_with_options();
  v9 = nextAvailableCacheSlot;
  if (nextAvailableCacheSlot <= 0)
  {
    os_unfair_lock_unlock(&cacheLock);
LABEL_16:
    v10 = objc_alloc_init(NSTaggedPointerStringCStringContainer);
    goto LABEL_17;
  }

  --nextAvailableCacheSlot;
  v10 = cache[v9 - 1];
  os_unfair_lock_unlock(&cacheLock);
  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_17:
  v11 = v10 + 8;
  memmove(v11, __src, v6);
  v11[v6] = 0;
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (unint64_t)hash
{
  v12[2] = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  v12[1] = 0;
  v2 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) == 0)
  {
    v2 = 0;
  }

  v3 = v2 ^ self;
  v4 = (~(v2 ^ self) & 7) == 0;
  v5 = 0xFFFFFFFFFFFFFFFLL;
  if (v4)
  {
    v5 = 0xFFFFFFFFFFFFFLL;
  }

  v6 = (v3 >> 3) & 0xF;
  v7 = (v5 & (v3 >> 3)) >> 4;
  if (v6 < 8)
  {
    v12[0] = v7;
  }

  else
  {
    v8 = (v3 >> 3) & 0xF;
    if (v6 >= 0xA)
    {
      do
      {
        *(&v11 + v8) = sixBitToCharLookup[v7 & 0x1F];
        v7 >>= 5;
        --v8;
      }

      while (v8);
    }

    else
    {
      do
      {
        *(&v11 + v8) = sixBitToCharLookup[v7 & 0x3F];
        v7 >>= 6;
        --v8;
      }

      while (v8);
    }
  }

  result = CFStringHashISOLatin1CString(v12, v6);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)length
{
  v2 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) == 0)
  {
    v2 = 7;
  }

  return ((v2 ^ self) >> 3) & 0xF;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  qword_1EA849A30 = "NSTaggedPointerString cannot be allocated";
  __break(1u);
  return result;
}

- (unsigned)characterAtIndex:(unint64_t)index
{
  v18 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = 0;
  v3 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) == 0)
  {
    v3 = 0;
  }

  v4 = v3 ^ self;
  v5 = 0xFFFFFFFFFFFFFFFLL;
  if ((~v4 & 7) == 0)
  {
    v5 = 0xFFFFFFFFFFFFFLL;
  }

  v6 = v5 & (v4 >> 3);
  v7 = (v4 >> 3) & 0xF;
  v8 = v6 >> 4;
  if (v7 < 8)
  {
    v16 = v8;
  }

  else
  {
    v9 = v7;
    if (v7 >= 0xA)
    {
      do
      {
        *(&v15 + v9 + 7) = sixBitToCharLookup[v8 & 0x1F];
        v8 >>= 5;
        --v9;
      }

      while (v9);
    }

    else
    {
      do
      {
        *(&v15 + v9 + 7) = sixBitToCharLookup[v8 & 0x3F];
        v8 >>= 6;
        --v9;
      }

      while (v9);
    }
  }

  if (v7 <= index)
  {
    v13 = v7;
    v14 = __CFExceptionProem(self, a2);
    _CFThrowFormattedException(@"NSInvalidArgumentException", @"%@: Index %lu out of bounds; string length %lu", v14, index, v13, v16, v17, v18);
  }

  result = *(&v16 + index);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range
{
  v22 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = 0;
  v4 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) == 0)
  {
    v4 = 0;
  }

  v5 = v4 ^ self;
  v6 = 0xFFFFFFFFFFFFFFFLL;
  if ((~v5 & 7) == 0)
  {
    v6 = 0xFFFFFFFFFFFFFLL;
  }

  v7 = v6 & (v5 >> 3);
  v8 = (v5 >> 3) & 0xF;
  v9 = v7 >> 4;
  if (v8 < 8)
  {
    v20 = v9;
  }

  else
  {
    v10 = v8;
    if (v8 >= 0xA)
    {
      do
      {
        *(&v19 + v10 + 7) = sixBitToCharLookup[v9 & 0x1F];
        v9 >>= 5;
        --v10;
      }

      while (v10);
    }

    else
    {
      do
      {
        *(&v19 + v10 + 7) = sixBitToCharLookup[v9 & 0x3F];
        v9 >>= 6;
        --v10;
      }

      while (v10);
    }
  }

  if (v8 < range.length || range.location > v8 - range.length)
  {
    length = range.length;
    location = range.location;
    v16 = v8;
    v17 = __CFExceptionProem(self, a2);
    v18 = "";
    if (length == 64)
    {
      v18 = " (Note that the indicated range may be smaller than the original range passed to the API)";
    }

    _CFThrowFormattedException(@"NSInvalidArgumentException", @"%@: Range {%lu, %lu} out of bounds; string length %lu%s", v17, location, length, v16, v18, v20, v21, v22);
  }

  if (range.length)
  {
    v11 = &v20 + range.location;
    do
    {
      v12 = *v11++;
      *characters++ = v12;
      --range.length;
    }

    while (range.length);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)substringWithRange:(_NSRange)range
{
  length = range.length;
  v27[2] = *MEMORY[0x1E69E9840];
  v27[0] = 0;
  v27[1] = 0;
  v4 = MEMORY[0x1E69E5910];
  v5 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) != 0)
  {
    v6 = *MEMORY[0x1E69E5910];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 ^ self;
  v8 = 0xFFFFFFFFFFFFFFFLL;
  if ((~v7 & 7) == 0)
  {
    v8 = 0xFFFFFFFFFFFFFLL;
  }

  v9 = v8 & (v7 >> 3);
  v10 = (v7 >> 3) & 0xF;
  v11 = v9 >> 4;
  if (v10 < 8)
  {
    v27[0] = v11;
  }

  else
  {
    v12 = v10;
    if (v10 >= 0xA)
    {
      do
      {
        *(&v26 + v12 + 7) = sixBitToCharLookup[v11 & 0x1F];
        v11 >>= 5;
        --v12;
      }

      while (v12);
    }

    else
    {
      do
      {
        *(&v26 + v12 + 7) = sixBitToCharLookup[v11 & 0x3F];
        v11 >>= 6;
        --v12;
      }

      while (v12);
    }
  }

  if (v10 < range.length || range.location > v10 - range.length)
  {
    location = range.location;
    v23 = v10;
    v24 = __CFExceptionProem(self, a2);
    v25 = "";
    if (length == 64)
    {
      v25 = " (Note that the indicated range may be smaller than the original range passed to the API)";
    }

    _CFThrowFormattedException(@"NSInvalidArgumentException", @"%@: Range {%lu, %lu} out of bounds; string length %lu%s", v24, location, length, v23, v25);
  }

  if (range.length)
  {
    v13 = v27 + range.location;
    if (range.length < 8)
    {
      v26 = 0;
      __memmove_chk();
      result = 0;
      if ((v26 & 0x8080808080808080) == 0)
      {
        result = ((8 * length) | (v26 << 7) | 0x8000000000000002);
        v18 = *v4 ^ result;
LABEL_30:
        if ((~v18 & 0xC000000000000007) != 0)
        {
          result = (v18 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v18 & 7)));
        }
      }
    }

    else
    {
      if (range.length <= 0xB)
      {
        if (range.length >= 0xA)
        {
          v14 = 0;
          v19 = range.length;
          while (1)
          {
            v20 = charToSixBitLookup[*v13];
            if (v20 > 0x1F)
            {
              break;
            }

            v14 = v20 | (32 * v14);
            ++v13;
            if (!--v19)
            {
LABEL_29:
              result = ((v14 << 7) | (8 * range.length) | 0x8000000000000002);
              v18 = result ^ v5;
              goto LABEL_30;
            }
          }
        }

        else
        {
          v14 = 0;
          v15 = range.length;
          while (1)
          {
            v16 = charToSixBitLookup[*v13];
            if (v16 > 0x3F)
            {
              break;
            }

            v14 = v16 | (v14 << 6);
            ++v13;
            if (!--v15)
            {
              goto LABEL_29;
            }
          }
        }
      }

      result = 0;
    }
  }

  else
  {
    result = &stru_1EF068AA8;
  }

  v21 = *MEMORY[0x1E69E9840];
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

      LOBYTE(v5) = isEqualToTaggedPointer(self, equal);
    }

    else
    {
      v5 = _NSIsNSString(equal);
      if (v5)
      {

        LOBYTE(v5) = isEqualToString(self, equal);
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

  if ((string & 0x8000000000000000) != 0)
  {
    return isEqualToTaggedPointer(self, string);
  }

  return isEqualToString(self, string);
}

- (int64_t)compare:(id)compare options:(unint64_t)options range:(_NSRange)range locale:(id)locale
{
  __s2[2] = *MEMORY[0x1E69E9840];
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
      v38.receiver = self;
      v38.super_class = NSTaggedPointerString;
      result = [NSTaggedPointerString compare:sel_compare_options_range_locale_ options:? range:? locale:?];
    }

    else
    {
      __s2[0] = 0;
      __s2[1] = 0;
      v11 = MEMORY[0x1E69E5910];
      if ((compare & 0x8000000000000000) == 0)
      {
        goto LABEL_24;
      }

      v12 = 0;
      v13 = *MEMORY[0x1E69E5910];
      v14 = (~compare & 0xC000000000000007) != 0 ? *MEMORY[0x1E69E5910] : 0;
      v15 = v14 ^ compare;
      v16 = v15 & 7;
      while (v16 != *(MEMORY[0x1E69E5900] + v12))
      {
        if (++v12 == 7)
        {
          goto LABEL_24;
        }
      }

      if (v12 == 2)
      {
        v18 = 0xFFFFFFFFFFFFFFFLL;
        if (v16 == 7)
        {
          v18 = 0xFFFFFFFFFFFFFLL;
        }

        v19 = (v15 >> 3) & 0xF;
        v20 = (v18 & (v15 >> 3)) >> 4;
        if (v19 < 8)
        {
          __s2[0] = v20;
          v22 = __s2;
        }

        else
        {
          v21 = v19;
          if (v19 >= 0xA)
          {
            do
            {
              v22 = __s2;
              *(__s2 + v21 - 1) = sixBitToCharLookup[v20 & 0x1F];
              v20 >>= 5;
              --v21;
            }

            while (v21);
          }

          else
          {
            do
            {
              v22 = __s2;
              *(__s2 + v21 - 1) = sixBitToCharLookup[v20 & 0x3F];
              v20 >>= 6;
              --v21;
            }

            while (v21);
          }
        }
      }

      else
      {
LABEL_24:
        CStringPtr = CFStringGetCStringPtr(compare, 0x600u);
        if (!CStringPtr)
        {
          v37.receiver = self;
          v37.super_class = NSTaggedPointerString;
          result = [NSTaggedPointerString compare:sel_compare_options_range_locale_ options:? range:? locale:?];
          goto LABEL_51;
        }

        v22 = CStringPtr;
        v19 = [compare length];
        v13 = *v11;
      }

      v39[0] = 0;
      v39[1] = 0;
      if ((~self & 0xC000000000000007) == 0)
      {
        v13 = 0;
      }

      v24 = v13 ^ self;
      v25 = 0xFFFFFFFFFFFFFFFLL;
      if ((~v24 & 7) == 0)
      {
        v25 = 0xFFFFFFFFFFFFFLL;
      }

      v26 = v25 & (v24 >> 3);
      v27 = (v24 >> 3) & 0xF;
      if (v27 < 8)
      {
        v39[0] = v26 >> 4;
      }

      else
      {
        v28 = v26 >> 4;
        if (v27 >= 0xA)
        {
          do
          {
            *(&v38.super_class + v27 + 7) = sixBitToCharLookup[v28 & 0x1F];
            v28 >>= 5;
            --v27;
          }

          while (v27);
        }

        else
        {
          do
          {
            *(&v38.super_class + v27 + 7) = sixBitToCharLookup[v28 & 0x3F];
            v28 >>= 6;
            --v27;
          }

          while (v27);
        }
      }

      if (length >= v19)
      {
        v29 = v19;
      }

      else
      {
        v29 = length;
      }

      v30 = v39 + location;
      if (optionsCopy)
      {
        v31 = _CFStringCompareASCIICaseInsensitive(v30, v22, v29);
      }

      else
      {
        v31 = memcmp(v30, v22, v29);
      }

      v32 = length - v19;
      if (v31)
      {
        v32 = v31;
      }

      v33 = v32 == 0;
      v34 = v32 < 0;
      v35 = -1;
      if (!v34)
      {
        v35 = 1;
      }

      if (v33)
      {
        result = 0;
      }

      else
      {
        result = v35;
      }
    }
  }

LABEL_51:
  v36 = *MEMORY[0x1E69E9840];
  return result;
}

- (const)cStringUsingEncoding:(unint64_t)encoding
{
  v7 = *MEMORY[0x1E69E9840];
  if (encoding <= 5 && ((1 << encoding) & 0x32) != 0)
  {
    v3 = *MEMORY[0x1E69E9840];

    return [(NSTaggedPointerString *)self UTF8String];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = NSTaggedPointerString;
    result = [(NSTaggedPointerString *)&v6 cStringUsingEncoding:?];
    v5 = *MEMORY[0x1E69E9840];
  }

  return result;
}

- (BOOL)_getCString:(char *)string maxLength:(unint64_t)length encoding:(unsigned int)encoding
{
  stringCopy = string;
  __src[2] = *MEMORY[0x1E69E9840];
  if (encoding == 513 || encoding == 134217984 || encoding == 1536)
  {
    __src[0] = 0;
    __src[1] = 0;
    v6 = *MEMORY[0x1E69E5910];
    if ((~self & 0xC000000000000007) == 0)
    {
      v6 = 0;
    }

    v7 = v6 ^ self;
    v8 = (~(v6 ^ self) & 7) == 0;
    v9 = 0xFFFFFFFFFFFFFFFLL;
    if (v8)
    {
      v9 = 0xFFFFFFFFFFFFFLL;
    }

    v10 = (v7 >> 3) & 0xF;
    v11 = (v9 & (v7 >> 3)) >> 4;
    if (v10 < 8)
    {
      __src[0] = v11;
    }

    else
    {
      v12 = (v7 >> 3) & 0xF;
      if (v10 >= 0xA)
      {
        do
        {
          *(&v16.super_class + v12 + 7) = sixBitToCharLookup[v11 & 0x1F];
          v11 >>= 5;
          --v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          *(&v16.super_class + v12 + 7) = sixBitToCharLookup[v11 & 0x3F];
          v11 >>= 6;
          --v12;
        }

        while (v12);
      }
    }

    v13 = v10 <= length;
    if (v10 <= length)
    {
      memmove(string, __src, v10);
      stringCopy += v10;
    }

    *stringCopy = 0;
  }

  else
  {
    v16.receiver = self;
    v16.super_class = NSTaggedPointerString;
    v13 = [(NSTaggedPointerString *)&v16 _getCString:string maxLength:length encoding:?];
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)getBytes:(void *)bytes maxLength:(unint64_t)length usedLength:(unint64_t *)usedLength encoding:(unint64_t)encoding options:(unint64_t)options range:(_NSRange)range remainingRange:(_NSRange *)remainingRange
{
  v25[2] = *MEMORY[0x1E69E9840];
  if (options || encoding > 5 || ((1 << encoding) & 0x32) == 0)
  {
    v24.receiver = self;
    v24.super_class = NSTaggedPointerString;
    result = [(NSTaggedPointerString *)&v24 getBytes:bytes maxLength:length usedLength:usedLength encoding:encoding options:range.location range:range.length remainingRange:remainingRange];
    goto LABEL_35;
  }

  if (!bytes)
  {
    v18 = *MEMORY[0x1E69E5910];
    if ((~self & 0xC000000000000007) == 0)
    {
      v18 = 7;
    }

    v15 = ((v18 ^ self) >> 3) & 0xF;
    if (v15 >= range.length && range.location <= v15 - range.length)
    {
      length = range.length;
      if (!usedLength)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

LABEL_36:
    v22 = __CFExceptionProem(self, a2);
    v23 = "";
    if (range.length == 64)
    {
      v23 = " (Note that the indicated range may be smaller than the original range passed to the API)";
    }

    _CFThrowFormattedException(@"NSInvalidArgumentException", @"%@: Range {%lu, %lu} out of bounds; string length %lu%s", v22, range.location, range.length, v15, v23);
  }

  v25[0] = 0;
  v25[1] = 0;
  v11 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) == 0)
  {
    v11 = 0;
  }

  v12 = v11 ^ self;
  v13 = (~(v11 ^ self) & 7) == 0;
  v14 = 0xFFFFFFFFFFFFFFFLL;
  if (v13)
  {
    v14 = 0xFFFFFFFFFFFFFLL;
  }

  v15 = (v12 >> 3) & 0xF;
  v16 = (v14 & (v12 >> 3)) >> 4;
  if (v15 < 8)
  {
    v25[0] = v16;
  }

  else
  {
    v17 = (v12 >> 3) & 0xF;
    if (v15 >= 0xA)
    {
      do
      {
        *(&v24.super_class + v17 + 7) = sixBitToCharLookup[v16 & 0x1F];
        v16 >>= 5;
        --v17;
      }

      while (v17);
    }

    else
    {
      do
      {
        *(&v24.super_class + v17 + 7) = sixBitToCharLookup[v16 & 0x3F];
        v16 >>= 6;
        --v17;
      }

      while (v17);
    }
  }

  if (v15 < range.length || range.location > v15 - range.length)
  {
    goto LABEL_36;
  }

  if (range.length >= length)
  {
    length = length;
  }

  else
  {
    length = range.length;
  }

  memmove(bytes, v25 + range.location, length);
  if (usedLength)
  {
LABEL_31:
    *usedLength = length;
  }

LABEL_32:
  if (remainingRange)
  {
    remainingRange->location = length + range.location;
    remainingRange->length = range.length - length;
  }

  result = 1;
LABEL_35:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)lowercaseStringWithLocale:(id)locale
{
  v28[2] = *MEMORY[0x1E69E9840];
  if (locale)
  {
LABEL_2:
    v26.receiver = self;
    v26.super_class = NSTaggedPointerString;
    result = [(NSTaggedPointerString *)&v26 lowercaseStringWithLocale:locale];
    goto LABEL_3;
  }

  v28[0] = 0;
  v28[1] = 0;
  v7 = MEMORY[0x1E69E5910];
  v8 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) != 0)
  {
    v9 = *MEMORY[0x1E69E5910];
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 ^ self;
  v11 = (~(v9 ^ self) & 7) == 0;
  v12 = 0xFFFFFFFFFFFFFFFLL;
  if (v11)
  {
    v12 = 0xFFFFFFFFFFFFFLL;
  }

  v13 = (v10 >> 3) & 0xF;
  v14 = (v12 & (v10 >> 3)) >> 4;
  if (v13 < 8)
  {
    v28[0] = v14;
    if (!v13)
    {
      result = &stru_1EF068AA8;
      goto LABEL_3;
    }
  }

  else
  {
    v15 = (v10 >> 3) & 0xF;
    if (v13 >= 0xA)
    {
      do
      {
        *(&v27 + v15 + 7) = sixBitToCharLookup[v14 & 0x1F];
        v14 >>= 5;
        --v15;
      }

      while (v15);
    }

    else
    {
      do
      {
        *(&v27 + v15 + 7) = sixBitToCharLookup[v14 & 0x3F];
        v14 >>= 6;
        --v15;
      }

      while (v15);
    }
  }

  for (i = 0; i != v13; ++i)
  {
    v17 = *(v28 + i);
    if ((v17 - 65) <= 0x19)
    {
      *(v28 + i) = v17 | 0x20;
    }
  }

  if (v13 >= 8)
  {
    if (v13 <= 0xB)
    {
      if (v13 >= 0xA)
      {
        v18 = 0;
        v23 = v28;
        v24 = v13;
        while (1)
        {
          v25 = charToSixBitLookup[*v23];
          if (v25 > 0x1F)
          {
            break;
          }

          v18 = v25 | (32 * v18);
          ++v23;
          if (!--v24)
          {
LABEL_32:
            result = ((8 * v13) | (v18 << 7) | 0x8000000000000002);
            v22 = result ^ v8;
            goto LABEL_33;
          }
        }
      }

      else
      {
        v18 = 0;
        v19 = v28;
        v20 = v13;
        while (1)
        {
          v21 = charToSixBitLookup[*v19];
          if (v21 > 0x3F)
          {
            break;
          }

          v18 = v21 | (v18 << 6);
          ++v19;
          if (!--v20)
          {
            goto LABEL_32;
          }
        }
      }
    }

    goto LABEL_2;
  }

  v27 = 0;
  __memmove_chk();
  result = 0;
  if ((v27 & 0x8080808080808080) == 0)
  {
    result = ((8 * v13) | (v27 << 7) | 0x8000000000000002);
    v22 = *v7 ^ result;
LABEL_33:
    if ((~v22 & 0xC000000000000007) != 0)
    {
      result = (v22 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v22 & 7)));
    }
  }

  if (!result)
  {
    goto LABEL_2;
  }

LABEL_3:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)uppercaseStringWithLocale:(id)locale
{
  v28[2] = *MEMORY[0x1E69E9840];
  if (locale)
  {
LABEL_2:
    v26.receiver = self;
    v26.super_class = NSTaggedPointerString;
    result = [(NSTaggedPointerString *)&v26 uppercaseStringWithLocale:locale];
    goto LABEL_3;
  }

  v28[0] = 0;
  v28[1] = 0;
  v7 = MEMORY[0x1E69E5910];
  v8 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) != 0)
  {
    v9 = *MEMORY[0x1E69E5910];
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 ^ self;
  v11 = (~(v9 ^ self) & 7) == 0;
  v12 = 0xFFFFFFFFFFFFFFFLL;
  if (v11)
  {
    v12 = 0xFFFFFFFFFFFFFLL;
  }

  v13 = (v10 >> 3) & 0xF;
  v14 = (v12 & (v10 >> 3)) >> 4;
  if (v13 < 8)
  {
    v28[0] = v14;
    if (!v13)
    {
      result = &stru_1EF068AA8;
      goto LABEL_3;
    }
  }

  else
  {
    v15 = (v10 >> 3) & 0xF;
    if (v13 >= 0xA)
    {
      do
      {
        *(&v27 + v15 + 7) = sixBitToCharLookup[v14 & 0x1F];
        v14 >>= 5;
        --v15;
      }

      while (v15);
    }

    else
    {
      do
      {
        *(&v27 + v15 + 7) = sixBitToCharLookup[v14 & 0x3F];
        v14 >>= 6;
        --v15;
      }

      while (v15);
    }
  }

  for (i = 0; i != v13; ++i)
  {
    v17 = *(v28 + i);
    if ((v17 - 97) <= 0x19)
    {
      *(v28 + i) = v17 - 32;
    }
  }

  if (v13 >= 8)
  {
    if (v13 <= 0xB)
    {
      if (v13 >= 0xA)
      {
        v18 = 0;
        v23 = v28;
        v24 = v13;
        while (1)
        {
          v25 = charToSixBitLookup[*v23];
          if (v25 > 0x1F)
          {
            break;
          }

          v18 = v25 | (32 * v18);
          ++v23;
          if (!--v24)
          {
LABEL_32:
            result = ((8 * v13) | (v18 << 7) | 0x8000000000000002);
            v22 = result ^ v8;
            goto LABEL_33;
          }
        }
      }

      else
      {
        v18 = 0;
        v19 = v28;
        v20 = v13;
        while (1)
        {
          v21 = charToSixBitLookup[*v19];
          if (v21 > 0x3F)
          {
            break;
          }

          v18 = v21 | (v18 << 6);
          ++v19;
          if (!--v20)
          {
            goto LABEL_32;
          }
        }
      }
    }

    goto LABEL_2;
  }

  v27 = 0;
  __memmove_chk();
  result = 0;
  if ((v27 & 0x8080808080808080) == 0)
  {
    result = ((8 * v13) | (v27 << 7) | 0x8000000000000002);
    v22 = *v7 ^ result;
LABEL_33:
    if ((~v22 & 0xC000000000000007) != 0)
    {
      result = (v22 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v22 & 7)));
    }
  }

  if (!result)
  {
    goto LABEL_2;
  }

LABEL_3:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

@end