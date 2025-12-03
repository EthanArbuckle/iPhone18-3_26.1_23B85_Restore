@interface __NSCFString
- (BOOL)getCString:(char *)string maxLength:(unint64_t)length encoding:(unint64_t)encoding;
- (BOOL)hasPrefix:(id)prefix;
- (BOOL)hasSuffix:(id)suffix;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToString:(id)string;
- (Class)classForCoder;
- (const)UTF8String;
- (const)_fastCStringContents:(BOOL)contents;
- (const)cString;
- (const)cStringUsingEncoding:(unint64_t)encoding;
- (id)_newSubstringWithRange:(_NSRange)range zone:(_NSZone *)zone;
- (id)substringWithRange:(_NSRange)range;
- (unint64_t)cStringLength;
- (unint64_t)fastestEncoding;
- (unint64_t)replaceOccurrencesOfString:(id)string withString:(id)withString options:(unint64_t)options range:(_NSRange)range;
- (unint64_t)smallestEncoding;
- (unsigned)characterAtIndex:(unint64_t)index;
- (void)appendCharacters:(const unsigned __int16 *)characters length:(unint64_t)length;
- (void)appendFormat:(id)format;
- (void)appendString:(id)string;
- (void)deleteCharactersInRange:(_NSRange)range;
- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range;
- (void)getLineStart:(unint64_t *)start end:(unint64_t *)end contentsEnd:(unint64_t *)contentsEnd forRange:(_NSRange)range;
- (void)insertString:(id)string atIndex:(unint64_t)index;
- (void)replaceCharactersInRange:(_NSRange)range withString:(id)string;
- (void)setString:(id)string;
@end

@implementation __NSCFString

- (const)UTF8String
{
  v6 = *MEMORY[0x1E69E9840];
  if (__CFStringMtbl(self) || (result = _CFNonObjCStringGetCStringPtr(self, 0x8000100u, 1)) == 0)
  {
    v5.receiver = self;
    v5.super_class = __NSCFString;
    result = [(__NSCFString *)&v5 UTF8String];
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)fastestEncoding
{
  FastestEncoding = CFStringGetFastestEncoding(self);

  return CFStringConvertEncodingToNSStringEncoding(FastestEncoding);
}

- (Class)classForCoder
{
  if (__CFStringMtbl(self))
  {
    v2 = "NSMutableString";
  }

  else
  {
    v2 = "NSString";
  }

  return objc_lookUpClass(v2);
}

- (unsigned)characterAtIndex:(unint64_t)index
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = 0;
  if (_CFStringCheckAndGetCharacterAtIndex(self, index, &v7))
  {
    [(__NSCFString *)self characterAtIndex:a2];
  }

  result = v7;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range
{
  if (_CFStringCheckAndGetCharacters(self, range.location, range.length, characters))
  {
    [__NSCFString getCharacters:a2 range:?];
  }
}

- (const)_fastCStringContents:(BOOL)contents
{
  contentsCopy = contents;
  SystemEncoding = enc;
  if (enc == -1)
  {
    SystemEncoding = CFStringGetSystemEncoding();
    enc = SystemEncoding;
  }

  return _CFNonObjCStringGetCStringPtr(self, SystemEncoding, contentsCopy);
}

- (const)cString
{
  v7 = *MEMORY[0x1E69E9840];
  if (__CFStringMtbl(self))
  {
    goto LABEL_2;
  }

  SystemEncoding = enc;
  if (enc == -1)
  {
    SystemEncoding = CFStringGetSystemEncoding();
    enc = SystemEncoding;
  }

  result = _CFNonObjCStringGetCStringPtr(self, SystemEncoding, 1);
  if (!result)
  {
LABEL_2:
    v6.receiver = self;
    v6.super_class = __NSCFString;
    result = [(__NSCFString *)&v6 cString];
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)cStringLength
{
  v8 = *MEMORY[0x1E69E9840];
  SystemEncoding = enc;
  if (enc == -1)
  {
    SystemEncoding = CFStringGetSystemEncoding();
    enc = SystemEncoding;
  }

  if (_CFNonObjCStringGetCStringPtr(self, SystemEncoding, 0))
  {
    v4 = *MEMORY[0x1E69E9840];

    return _CFStringGetLength2(self);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = __NSCFString;
    result = [(__NSCFString *)&v7 cStringLength];
    v6 = *MEMORY[0x1E69E9840];
  }

  return result;
}

- (const)cStringUsingEncoding:(unint64_t)encoding
{
  v15 = *MEMORY[0x1E69E9840];
  if (__CFStringMtbl(self))
  {
    goto LABEL_2;
  }

  v6 = CFStringConvertNSStringEncodingToEncoding(encoding);
  if (v6 == -1)
  {
    if (encoding != 134217984 && encoding)
    {
      result = 0;
      goto LABEL_10;
    }

    if (_CFExecutableLinkedOnOrAfter(6uLL))
    {
      CFLog(4, @"Incorrect NSStringEncoding value 0x%04lX detected. Assuming NSStringEncodingASCII. Will stop this compatibility mapping behavior in the near future.", v7, v8, v9, v10, v11, v12, encoding);
    }

    v6 = 1536;
  }

  result = _CFNonObjCStringGetCStringPtr(self, v6, 1);
  if (!result)
  {
LABEL_2:
    v14.receiver = self;
    v14.super_class = __NSCFString;
    result = [(__NSCFString *)&v14 cStringUsingEncoding:encoding];
  }

LABEL_10:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)getCString:(char *)string maxLength:(unint64_t)length encoding:(unint64_t)encoding
{
  v9 = CFStringConvertNSStringEncodingToEncoding(encoding);
  if (v9 != -1)
  {
    return CFStringGetCString(self, string, length, v9) != 0;
  }

  if (encoding == 134217984 || !encoding)
  {
    if (_CFExecutableLinkedOnOrAfter(6uLL))
    {
      CFLog(4, @"Incorrect NSStringEncoding value 0x%04lX detected. Assuming NSStringEncodingASCII. Will stop this compatibility mapping behavior in the near future.", v10, v11, v12, v13, v14, v15, encoding);
    }

    v9 = 1536;
    return CFStringGetCString(self, string, length, v9) != 0;
  }

  return 0;
}

- (id)_newSubstringWithRange:(_NSRange)range zone:(_NSZone *)zone
{
  length = range.length;
  location = range.location;
  Length2 = _CFStringGetLength2(self);
  v9 = Length2;
  if (location + length > Length2)
  {
    v19 = __CFExceptionProem(self, a2);
    v20 = "";
    if (length == 64)
    {
      v20 = " (Note that the indicated range may be smaller than the original range passed to the API)";
    }

    _CFThrowFormattedException(@"NSInvalidArgumentException", @"%@: Range {%lu, %lu} out of bounds; string length %lu%s", v19, location, length, v9, v20);
  }

  if ((Length2 < length || location > Length2 - length) && (_newSubstringWithRange_zone__warnonce & 1) == 0)
  {
    _newSubstringWithRange_zone__warnonce = 1;
    v10 = __CFExceptionProem(self, a2);
    CFLog(4, @"*** %@: Range {%lu, %lu} out of bounds; string length %lu. This will become an exception for apps linked after 10.10 and iOS 8. Warning shown once per app execution.", v11, v12, v13, v14, v15, v16, v10);
  }

  v17.location = location;
  v17.length = length;

  return CFStringCreateWithSubstring(0, self, v17);
}

- (id)substringWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  Length2 = _CFStringGetLength2(self);
  v8 = Length2;
  if (location + length > Length2)
  {
    v18 = __CFExceptionProem(self, a2);
    v19 = "";
    if (length == 64)
    {
      v19 = " (Note that the indicated range may be smaller than the original range passed to the API)";
    }

    _CFThrowFormattedException(@"NSInvalidArgumentException", @"%@: Range {%lu, %lu} out of bounds; string length %lu%s", v18, location, length, v8, v19);
  }

  if ((Length2 < length || location > Length2 - length) && (substringWithRange__warnonce & 1) == 0)
  {
    substringWithRange__warnonce = 1;
    v9 = __CFExceptionProem(self, a2);
    CFLog(4, @"*** %@: Range {%lu, %lu} out of bounds; string length %lu. This will become an exception for apps linked after 10.10 and iOS 8. Warning shown once per app execution.", v10, v11, v12, v13, v14, v15, v9);
  }

  v21.location = location;
  v21.length = length;
  v16 = CFStringCreateWithSubstring(0, self, v21);

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(IsEqualToCFString) = 1;
    return IsEqualToCFString;
  }

  if (!equal)
  {
    goto LABEL_41;
  }

  if ((equal & 0x8000000000000000) != 0)
  {
    v5 = 0;
    v6 = *MEMORY[0x1E69E5910];
    if ((~equal & 0xC000000000000007) == 0)
    {
      v6 = 0;
    }

    v7 = v6 ^ equal;
    v8 = (v6 ^ equal) & 7;
    while (v8 != *(MEMORY[0x1E69E5900] + v5))
    {
      if (++v5 == 7)
      {
        goto LABEL_23;
      }
    }

    if (v5 == 2)
    {

      LOBYTE(IsEqualToCFString) = _NSTaggedPointerStringEqualCFString(equal, self);
      return IsEqualToCFString;
    }

LABEL_23:
    for (i = 0; i != 7; ++i)
    {
      if (v8 == *(MEMORY[0x1E69E5900] + i))
      {
        break;
      }
    }

    if ((~i & 7) == 0 && ((i | v7) & 0x7F80000000000000) == 0x700000000000000)
    {
      goto LABEL_28;
    }

    v13 = 0;
    while (v8 != *(MEMORY[0x1E69E5900] + v13))
    {
      if (++v13 == 7)
      {
        goto LABEL_41;
      }
    }

    if (!v13)
    {
      IsEqualToCFString = _NSIndirectTaggedPointerStringIsEqualToCFString(equal, self);
      goto LABEL_18;
    }

    goto LABEL_41;
  }

  v10 = *equal & ~MEMORY[0x1E69E58F0];
  if ((*equal & MEMORY[0x1E69E58F0]) != 0)
  {
    v10 |= *equal & MEMORY[0x1E69E58F0];
  }

  if (v10 == __CFConstantStringClassReferencePtr)
  {
    goto LABEL_17;
  }

  v11 = self->super.super.super.isa & ~MEMORY[0x1E69E58F0];
  if ((self->super.super.super.isa & MEMORY[0x1E69E58F0]) != 0)
  {
    v11 |= self->super.super.super.isa & MEMORY[0x1E69E58F0];
  }

  if (v10 == v11)
  {
    goto LABEL_17;
  }

  IsEqualToCFString = [equal isNSString];
  if (!IsEqualToCFString)
  {
    return IsEqualToCFString;
  }

  Length2 = _CFStringGetLength2(self);
  if (Length2 != [equal length])
  {
LABEL_41:
    LOBYTE(IsEqualToCFString) = 0;
    return IsEqualToCFString;
  }

  v15 = objc_opt_class();
  if (v15 != __NSCFString && class_getSuperclass(v15) != __NSCFString)
  {
LABEL_28:

    LOBYTE(IsEqualToCFString) = [equal isEqualToString:self];
    return IsEqualToCFString;
  }

LABEL_17:
  IsEqualToCFString = _CFStringEqual(self, equal);
LABEL_18:
  LOBYTE(IsEqualToCFString) = IsEqualToCFString != 0;
  return IsEqualToCFString;
}

- (BOOL)isEqualToString:(id)string
{
  if (self == string)
  {
    LOBYTE(IsEqualToCFString) = 1;
    return IsEqualToCFString;
  }

  if (!string)
  {
    goto LABEL_41;
  }

  if ((string & 0x8000000000000000) != 0)
  {
    v5 = 0;
    v6 = *MEMORY[0x1E69E5910];
    if ((~string & 0xC000000000000007) == 0)
    {
      v6 = 0;
    }

    v7 = v6 ^ string;
    v8 = (v6 ^ string) & 7;
    while (v8 != *(MEMORY[0x1E69E5900] + v5))
    {
      if (++v5 == 7)
      {
        goto LABEL_23;
      }
    }

    if (v5 == 2)
    {

      LOBYTE(IsEqualToCFString) = _NSTaggedPointerStringEqualCFString(string, self);
      return IsEqualToCFString;
    }

LABEL_23:
    for (i = 0; i != 7; ++i)
    {
      if (v8 == *(MEMORY[0x1E69E5900] + i))
      {
        break;
      }
    }

    if ((~i & 7) == 0 && ((i | v7) & 0x7F80000000000000) == 0x700000000000000)
    {
      goto LABEL_28;
    }

    v13 = 0;
    while (v8 != *(MEMORY[0x1E69E5900] + v13))
    {
      if (++v13 == 7)
      {
        goto LABEL_41;
      }
    }

    if (!v13)
    {
      IsEqualToCFString = _NSIndirectTaggedPointerStringIsEqualToCFString(string, self);
      goto LABEL_18;
    }

    goto LABEL_41;
  }

  v10 = *string & ~MEMORY[0x1E69E58F0];
  if ((*string & MEMORY[0x1E69E58F0]) != 0)
  {
    v10 |= *string & MEMORY[0x1E69E58F0];
  }

  if (v10 == __CFConstantStringClassReferencePtr)
  {
    goto LABEL_17;
  }

  v11 = self->super.super.super.isa & ~MEMORY[0x1E69E58F0];
  if ((self->super.super.super.isa & MEMORY[0x1E69E58F0]) != 0)
  {
    v11 |= self->super.super.super.isa & MEMORY[0x1E69E58F0];
  }

  if (v10 == v11)
  {
    goto LABEL_17;
  }

  IsEqualToCFString = [string isNSString];
  if (!IsEqualToCFString)
  {
    return IsEqualToCFString;
  }

  Length2 = _CFStringGetLength2(self);
  if (Length2 != [string length])
  {
LABEL_41:
    LOBYTE(IsEqualToCFString) = 0;
    return IsEqualToCFString;
  }

  v15 = objc_opt_class();
  if (v15 != __NSCFString && class_getSuperclass(v15) != __NSCFString)
  {
LABEL_28:

    LOBYTE(IsEqualToCFString) = [string isEqualToString:self];
    return IsEqualToCFString;
  }

LABEL_17:
  IsEqualToCFString = _CFStringEqual(self, string);
LABEL_18:
  LOBYTE(IsEqualToCFString) = IsEqualToCFString != 0;
  return IsEqualToCFString;
}

- (BOOL)hasPrefix:(id)prefix
{
  if (!prefix)
  {
    [(__NSCFString *)self hasPrefix:a2];
  }

  return CFStringHasPrefix(self, prefix) != 0;
}

- (BOOL)hasSuffix:(id)suffix
{
  if (!suffix)
  {
    [(__NSCFString *)self hasSuffix:a2];
  }

  return CFStringHasSuffix(self, suffix) != 0;
}

- (void)getLineStart:(unint64_t *)start end:(unint64_t *)end contentsEnd:(unint64_t *)contentsEnd forRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  Length2 = _CFStringGetLength2(self);
  v14 = Length2;
  if (location + length > Length2)
  {
    v23 = __CFExceptionProem(self, a2);
    v24 = "";
    if (length == 64)
    {
      v24 = " (Note that the indicated range may be smaller than the original range passed to the API)";
    }

    _CFThrowFormattedException(@"NSInvalidArgumentException", @"%@: Range {%lu, %lu} out of bounds; string length %lu%s", v23, location, length, v14, v24);
  }

  if ((Length2 < length || location > Length2 - length) && (getLineStart_end_contentsEnd_forRange__warnonce & 1) == 0)
  {
    getLineStart_end_contentsEnd_forRange__warnonce = 1;
    v15 = __CFExceptionProem(self, a2);
    CFLog(4, @"*** %@: Range {%lu, %lu} out of bounds; string length %lu. This will become an exception for apps linked after 10.10 and iOS 8. Warning shown once per app execution.", v16, v17, v18, v19, v20, v21, v15);
  }

  v22.location = location;
  v22.length = length;

  CFStringGetLineBounds(self, v22, start, end, contentsEnd);
}

- (unint64_t)smallestEncoding
{
  SmallestEncoding = CFStringGetSmallestEncoding(self);

  return CFStringConvertEncodingToNSStringEncoding(SmallestEncoding);
}

- (void)replaceCharactersInRange:(_NSRange)range withString:(id)string
{
  v6 = __CFStringCheckAndReplace(self, range.location, range.length, string);
  if (v6)
  {
    mutateError(a2, v6, self);
  }
}

- (void)insertString:(id)string atIndex:(unint64_t)index
{
  v6 = __CFStringCheckAndReplace(self, index, 0, string);
  if (v6)
  {
    mutateError(a2, v6, self);
  }
}

- (void)appendString:(id)string
{
  Length2 = _CFStringGetLength2(self);
  v7 = __CFStringCheckAndReplace(self, Length2, 0, string);
  if (v7)
  {
    mutateError(a2, v7, self);
  }
}

- (void)deleteCharactersInRange:(_NSRange)range
{
  v5 = __CFStringCheckAndReplace(self, range.location, range.length, &stru_1EF068AA8);
  if (v5)
  {
    mutateError(a2, v5, self);
  }
}

- (void)appendFormat:(id)format
{
  v7 = *MEMORY[0x1E69E9840];
  if (!__CFStringMtbl(self))
  {
    [__NSCFString appendFormat:a2];
  }

  _CFStringAppendFormatAndArgumentsAux2(self, _DescriptionWithLocaleFunc, _DescriptionWithStringProxyFunc, 0, 0, format, &v8);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setString:(id)string
{
  Length2 = _CFStringGetLength2(self);
  v7 = __CFStringCheckAndReplace(self, 0, Length2, string);
  if (v7)
  {
    mutateError(a2, v7, self);
  }
}

- (void)appendCharacters:(const unsigned __int16 *)characters length:(unint64_t)length
{
  if (!__CFStringMtbl(self))
  {
    [__NSCFString appendCharacters:a2 length:?];
  }

  CFStringAppendCharacters(self, characters, length);
}

- (unint64_t)replaceOccurrencesOfString:(id)string withString:(id)withString options:(unint64_t)options range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v29 = *MEMORY[0x1E69E9840];
  if (!__CFStringMtbl(self))
  {
    [__NSCFString replaceOccurrencesOfString:a2 withString:? options:? range:?];
  }

  Length2 = _CFStringGetLength2(self);
  if (!string || !withString)
  {
    [__NSCFString replaceOccurrencesOfString:a2 withString:? options:? range:?];
  }

  v14 = Length2;
  if (location + length > Length2)
  {
    v26 = __CFExceptionProem(self, a2);
    v27 = "";
    if (length == 64)
    {
      v27 = " (Note that the indicated range may be smaller than the original range passed to the API)";
    }

    _CFThrowFormattedException(@"NSInvalidArgumentException", @"%@: Range {%lu, %lu} out of bounds; string length %lu%s", v26, location, length, v14, v27);
  }

  if ((Length2 < length || location > Length2 - length) && (replaceOccurrencesOfString_withString_options_range__warnonce & 1) == 0)
  {
    replaceOccurrencesOfString_withString_options_range__warnonce = 1;
    v15 = __CFExceptionProem(self, a2);
    CFLog(4, @"*** %@: Range {%lu, %lu} out of bounds; string length %lu. This will become an exception for apps linked after 10.10 and iOS 8. Warning shown once per app execution.", v16, v17, v18, v19, v20, v21, v15);
  }

  if ((options & 0x400) != 0)
  {
    v28.receiver = self;
    v28.super_class = __NSCFString;
    result = [(__NSCFString *)&v28 replaceOccurrencesOfString:string withString:withString options:options range:location, length];
    v25 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v22 = *MEMORY[0x1E69E9840];
    v23.location = location;
    v23.length = length;

    return CFStringFindAndReplace(self, string, withString, v23, ~(8 * options) & 0x10 | options);
  }

  return result;
}

@end