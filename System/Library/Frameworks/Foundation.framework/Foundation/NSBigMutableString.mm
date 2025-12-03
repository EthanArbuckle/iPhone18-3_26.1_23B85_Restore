@interface NSBigMutableString
- (BOOL)_copyDataFrom:(id)from range:(_NSRange)range;
- (BOOL)_copyStorage:(__CFStorage *)storage encoding:(unint64_t *)encoding;
- (BOOL)_getData:(id *)data encoding:(unint64_t *)encoding;
- (BOOL)_setData:(id)data encoding:(unint64_t)encoding;
- (BOOL)_setStorage:(__CFStorage *)storage encoding:(unint64_t)encoding;
- (NSBigMutableString)initWithStorage:(__CFStorage *)storage length:(unint64_t)length isUnicode:(BOOL)unicode;
- (NSBigMutableString)initWithString:(id)string;
- (id)_createSubstringWithRange:(_NSRange)range;
- (id)_newBigSubstringWithRange:(_NSRange)range wantsMutable:(BOOL)mutable zone:(_NSZone *)zone;
- (id)_newSmallImmutableSubstringWithRange:(_NSRange)range zone:(_NSZone *)zone;
- (id)_newSubstringWithRange:(_NSRange)range zone:(_NSZone *)zone;
- (unsigned)characterAtIndex:(unint64_t)index;
- (void)_checkForInvalidMutationWithSelector:(SEL)selector;
- (void)dealloc;
- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range;
- (void)replaceCharactersInRange:(_NSRange)range withString:(id)string;
@end

@implementation NSBigMutableString

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSBigMutableString;
  [(NSBigMutableString *)&v3 dealloc];
}

- (NSBigMutableString)initWithString:(id)string
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSBigMutableString;
  v4 = [(NSString *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(NSMutableString *)v4 appendString:string];
  }

  return v5;
}

- (NSBigMutableString)initWithStorage:(__CFStorage *)storage length:(unint64_t)length isUnicode:(BOOL)unicode
{
  unicodeCopy = unicode;
  v13 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = NSBigMutableString;
  v8 = [(NSString *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->length = length;
    if (unicodeCopy)
    {
      v10 = 3;
    }

    else
    {
      v10 = 1;
    }

    v8->flags = (*&v8->flags & 0xFFFFFFFC | v10);
    v8->contents.d.data = storage;
  }

  return v9;
}

- (void)_checkForInvalidMutationWithSelector:(SEL)selector
{
  if ((*&self->flags & 0x10) != 0)
  {
    v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"Attempt to mutate immutable object with %s", sel_getName(selector)), 0}];
    objc_exception_throw(v3);
  }
}

- (BOOL)_getData:(id *)data encoding:(unint64_t *)encoding
{
  flags = self->flags;
  if ((*&flags & 1) == 0)
  {
    if (data)
    {
      *data = self->contents.d.data;
    }

    if (encoding)
    {
      v5 = 10;
      if ((*&self->flags & 2) == 0)
      {
        v5 = _NSCStringEncoding;
      }

      *encoding = v5;
    }
  }

  return (*&flags & 1) == 0;
}

- (BOOL)_copyStorage:(__CFStorage *)storage encoding:(unint64_t *)encoding
{
  if (*&self->flags)
  {
    data = self->contents.d.data;
    if (data)
    {
      if (storage)
      {
        *storage = CFStorageCreateWithSubrange();
      }

      if (encoding)
      {
        v7 = 10;
        if ((*&self->flags & 2) == 0)
        {
          v7 = _NSCStringEncoding;
        }

        *encoding = v7;
      }

      LOBYTE(data) = 1;
    }
  }

  else
  {
    LOBYTE(data) = 0;
  }

  return data;
}

- (BOOL)_setStorage:(__CFStorage *)storage encoding:(unint64_t)encoding
{
  [(NSBigMutableString *)self _checkForInvalidMutationWithSelector:a2];
  if (encoding != 1 && encoding != 10 && _NSCStringEncoding != encoding)
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%s called with unsupported string encoding %lu", sel_getName(a2), encoding), 0}];
    objc_exception_throw(v10);
  }

  self->contents.d.data = 0;
  if (encoding == 10)
  {
    v8 = 3;
  }

  else
  {
    v8 = 1;
  }

  self->flags = (*&self->flags & 0xFFFFFFF0 | v8);
  self->contents.d.data = storage;
  self->length = CFStorageGetCount();
  return 1;
}

- (BOOL)_setData:(id)data encoding:(unint64_t)encoding
{
  v38[1] = *MEMORY[0x1E69E9840];
  [(NSBigMutableString *)self _checkForInvalidMutationWithSelector:a2];
  p_contents = &self->contents;
  data = self->contents.d.data;
  if ((*&self->flags & 1) == 0 && data == data)
  {
    dataCopy = data;
  }

  else
  {
  }

  p_contents->d.data = 0;
  if (encoding == 1 || _NSCStringEncoding == encoding)
  {
    goto LABEL_6;
  }

  v16 = CFStringConvertNSStringEncodingToEncoding(encoding);
  if (BYTE1(v16) > 7u)
  {
    if (BYTE1(v16) > 0xAu)
    {
      if (BYTE1(v16) == 11)
      {
        if (v16 - 3059 > 0xC)
        {
          goto LABEL_55;
        }

        v28 = 1 << (v16 + 13);
        v29 = 4099;
LABEL_54:
        if ((v28 & v29) != 0)
        {
          goto LABEL_6;
        }

        goto LABEL_55;
      }

      if (BYTE1(v16) == 12)
      {
        goto LABEL_6;
      }
    }

    else
    {
      if (BYTE1(v16) == 8)
      {
        goto LABEL_6;
      }

      if (BYTE1(v16) == 10)
      {
        if (v16 - 2561 > 0xF)
        {
          goto LABEL_55;
        }

        v28 = 1 << (v16 - 1);
        v29 = 32785;
        goto LABEL_54;
      }
    }

LABEL_44:
    if ((v16 & 0xFF00) > 0xC00)
    {
      goto LABEL_6;
    }

    goto LABEL_55;
  }

  if (BYTE1(v16) <= 1u)
  {
    if (BYTE1(v16))
    {
      if (v16 != 134217984)
      {
        goto LABEL_6;
      }
    }

    else if (v16 <= 0x22 && ((1 << v16) & 0x600000032) != 0 || v16 == 152)
    {
      goto LABEL_6;
    }

    goto LABEL_55;
  }

  if (BYTE1(v16) != 2)
  {
    if (BYTE1(v16) == 6)
    {
      if (v16 != 1536)
      {
        goto LABEL_6;
      }

      goto LABEL_55;
    }

    goto LABEL_44;
  }

  if (v16 == 518)
  {
    goto LABEL_6;
  }

LABEL_55:
  v30 = [data length];
  bytes = [data bytes];
  while (v30 > 7)
  {
    v32 = *bytes++;
    v30 -= 8;
    if ((v32 & 0x8080808080808080) != 0)
    {
      goto LABEL_6;
    }
  }

  while (v30 > 3)
  {
    v33 = *bytes;
    bytes = (bytes + 4);
    v30 -= 4;
    if ((v33 & 0x80808080) != 0)
    {
      goto LABEL_6;
    }
  }

  v34 = 0;
  while (v30 != v34)
  {
    v35 = *(bytes + v34++);
    if (v35 < 0)
    {
      goto LABEL_6;
    }
  }

  encoding = 1;
LABEL_6:
  *&self->flags &= 0xFFFFFFF0;
  self->length = 0;
  if (!data || encoding == 1 || encoding == _NSCStringEncoding)
  {
    if (data)
    {
      v15 = [data length];
    }

    else
    {
      v15 = 0;
    }

    self->length = v15;
    v25 = [data copyWithZone:0];
    p_contents->d.data = v25;
    self->contents.d.dataBytes = [(NSData *)v25 bytes];
LABEL_27:
    LOBYTE(v20) = 1;
    return v20;
  }

  if (encoding == 10)
  {
    v9 = [data length];
    v10 = [data copyWithZone:0];
    p_contents->d.data = v10;
    bytes2 = [(NSData *)v10 bytes];
    self->contents.d.dataBytes = bytes2;
    if (v9 >= 2 && ((v12 = *bytes2, v12 == 65279) || v12 == 65534))
    {
      v13 = (*&self->flags | 4);
      self->flags = v13;
      if (*self->contents.d.dataBytes == -257)
      {
        v14 = 2;
      }

      else
      {
        v14 = 10;
      }
    }

    else
    {
      v13 = (*&self->flags & 0xFFFFFFFB);
      v14 = 2;
    }

    self->flags = (v14 | *&v13 & 0xFFFFFFF5);
    self->length = (v9 >> 1) - ((*&v13 >> 2) & 1);
    if ((*&self->flags & 4) != 0)
    {
      self->contents.d.dataBytes += 2;
    }

    goto LABEL_27;
  }

  v37 = 0;
  v38[0] = 0;
  v36 = 0;
  bytes3 = [data bytes];
  v18 = [data length];
  v19 = malloc_default_zone();
  v20 = _NSConvertToASCIIorUnicode(bytes3, v18, encoding, v38, &v37, &v36, v19);
  if (v20)
  {
    v21 = objc_alloc(MEMORY[0x1E695DEF0]);
    v22 = v37;
    v23 = v36;
    v24 = [v21 initWithBytesNoCopy:v38[0] length:v37 << (v36 ^ 1u) freeWhenDone:1];
    p_contents->d.data = v24;
    self->contents.d.dataBytes = [(NSData *)v24 bytes];
    self->flags = (*&self->flags & 0xFFFFFFFD | (2 * v23) ^ 2);
    self->length = v22;
  }

  return v20;
}

- (BOOL)_copyDataFrom:(id)from range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) == 0 || (*(from + 8))
  {
    return 0;
  }

  flags = self->flags;

  self->contents.d.data = 0;
  if (*&flags)
  {
    *&self->flags &= ~1u;
  }

  if (location)
  {
    v9 = self->flags;
LABEL_10:
    v16 = *(from + 2);
    v17 = v16 & 2 | *&v9 & 0xFFFFFFFD;
    self->flags = v17;
    self->flags = (v17 & 0xFFFFFFF3 | *(from + 2) & 8);
    v18 = [*(from + 3) subdataWithRange:{(location << ((v16 & 2) != 0)) + ((*(from + 2) >> 1) & 2), length << ((v16 & 2) != 0)}];
    self->contents.d.data = v18;
    bytes = [(NSData *)v18 bytes];
    goto LABEL_11;
  }

  v11 = [from length];
  v9 = self->flags;
  if (length != v11)
  {
    goto LABEL_10;
  }

  v12 = *&v9 & 0xFFFFFFFD | (2 * ((*(from + 2) >> 1) & 1));
  self->flags = v12;
  v13 = v12 & 0xFFFFFFF7 | (8 * ((*(from + 2) >> 3) & 1));
  self->flags = v13;
  self->flags = (v13 & 0xFFFFFFFB | (4 * ((*(from + 2) >> 2) & 1)));
  v14 = *(from + 3);
  self->contents.d.data = v14;
  bytes = ([(NSData *)v14 bytes]+ ((self->flags >> 1) & 2));
LABEL_11:
  self->contents.d.dataBytes = bytes;
  self->length = length;
  return 1;
}

- (unsigned)characterAtIndex:(unint64_t)index
{
  if (self->length <= index)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Index %lu out of bounds; string length %lu", _NSMethodExceptionProem(self, a2), index, self->length), 0}];
    objc_exception_throw(v8);
  }

  flags = self->flags;
  if (*&flags)
  {
    ConstValueAtIndex = CFStorageGetConstValueAtIndex();
    if ((*&flags & 2) != 0)
    {
LABEL_7:
      LOWORD(v5) = *ConstValueAtIndex;
      return v5;
    }

LABEL_6:
    ConstValueAtIndex = (_NSCStringCharToUnicharTable + 2 * *ConstValueAtIndex);
    goto LABEL_7;
  }

  if ((*&flags & 2) == 0)
  {
    ConstValueAtIndex = [(NSData *)self->contents.d.data bytes]+ index;
    goto LABEL_6;
  }

  v5 = *&self->contents.d.dataBytes[2 * index];
  v6 = bswap32(v5) >> 16;
  if ((*&flags & 8) != 0)
  {
    LOWORD(v5) = v6;
  }

  return v5;
}

- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range
{
  length = range.length;
  if (range.location + range.length > self->length)
  {
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Range {%lu, %lu} out of bounds; string length %lu", _NSMethodExceptionProem(self, a2), range.location, range.length, self->length), 0}];
    objc_exception_throw(v15);
  }

  charactersCopy = characters;
  flags = self->flags;
  if (*&flags)
  {
    CFStorageGetValues();
    if ((*&self->flags & 2) == 0 && (length - 1) >= 0)
    {
      v12 = _NSCStringCharToUnicharTable;
      do
      {
        charactersCopy[length - 1] = *(v12 + 2 * *(charactersCopy + length - 1));
        --length;
      }

      while (length);
    }
  }

  else
  {
    dataBytes = self->contents.d.dataBytes;
    if ((*&flags & 2) != 0)
    {
      v13 = &dataBytes[2 * range.location];
      if ((*&flags & 8) != 0)
      {
        if (range.length)
        {
          do
          {
            v14 = *v13;
            v13 += 2;
            *charactersCopy++ = bswap32(v14) >> 16;
            --length;
          }

          while (length);
        }
      }

      else
      {

        memmove(characters, v13, 2 * range.length);
      }
    }

    else if (range.length)
    {
      v9 = &dataBytes[range.location];
      v10 = _NSCStringCharToUnicharTable;
      do
      {
        v11 = *v9++;
        *charactersCopy++ = *(v10 + 2 * v11);
        --length;
      }

      while (length);
    }
  }
}

- (void)replaceCharactersInRange:(_NSRange)range withString:(id)string
{
  length = range.length;
  location = range.location;
  v22[1] = *MEMORY[0x1E69E9840];
  [(NSBigMutableString *)self _checkForInvalidMutationWithSelector:a2];
  if (!string)
  {
    v17 = [NSString stringWithFormat:@"%@: nil argument", _NSMethodExceptionProem(self, a2)];
    v18 = MEMORY[0x1E695DF30];
    v19 = MEMORY[0x1E695D940];
    goto LABEL_34;
  }

  v9 = location + length;
  if (location + length > self->length)
  {
    v17 = [NSString stringWithFormat:@"%@: Range {%lu, %lu} out of bounds; string length %lu", _NSMethodExceptionProem(self, a2), location, length, self->length];
    v18 = MEMORY[0x1E695DF30];
    v19 = MEMORY[0x1E695DA20];
LABEL_34:
    objc_exception_throw([v18 exceptionWithName:*v19 reason:v17 userInfo:0]);
  }

  v10 = [string length];
  v11 = self->length;
  if ((*&self->flags & 2) != 0)
  {
    v12 = 1;
  }

  else if ([string _isCString])
  {
    v12 = 0;
  }

  else
  {
    v13 = [string length];
    v12 = v13 != [string lengthOfBytesUsingEncoding:_NSCStringEncoding];
  }

  if (length != v11)
  {
    goto LABEL_11;
  }

  if (object_getClass(string) == NSBigMutableString)
  {
    v21 = 0;
    v22[0] = 0;
    if ([(NSBigMutableString *)self _copyDataFrom:string range:0, v10])
    {
      return;
    }

    if ([string _copyStorage:&v21 encoding:v22])
    {
      [(NSBigMutableString *)self _setStorage:v21 encoding:v22[0]];

      return;
    }

LABEL_11:
    v14 = v10 - length + v11;
    if (*&self->flags)
    {
      if ((*&self->flags & 2) != 0 || !v12)
      {
        if (v14 <= v11)
        {
          CFStorageDeleteValues();
        }

        else
        {
          CFStorageInsertValues();
        }

        goto LABEL_21;
      }

      v20 = v10;
      v15 = CFStorageCreate();
      CFStorageInsertValues();
      copyFromStringToStorage(self, 0, location, v15, 0, 1);
      copyFromStringToStorage(self, v9, v11 - v9, v15, v20 + location, 1);
      *&self->flags |= 2u;
    }

    else
    {
      v20 = v10;
      v15 = CFStorageCreate();
      CFStorageInsertValues();
      if (self->contents.d.data)
      {
        copyFromStringToStorage(self, 0, location, v15, 0, v12);
        copyFromStringToStorage(self, v9, v11 - v9, v15, v20 + location, v12);
      }

      if (v12)
      {
        v16 = 3;
      }

      else
      {
        v16 = 1;
      }

      self->flags = (*&self->flags & 0xFFFFFFFC | v16);
    }

    self->contents.d.data = v15;
    v10 = v20;
LABEL_21:
    copyFromStringToStorage(string, 0, v10, self->contents.d.data, location, v12);
    self->length = v14;
    return;
  }

  if ([string length])
  {
    goto LABEL_11;
  }

  [(NSBigMutableString *)self _setData:0 encoding:1];
}

- (id)_newSmallImmutableSubstringWithRange:(_NSRange)range zone:(_NSZone *)zone
{
  if (!range.length)
  {
    return &stru_1EEEFDF90;
  }

  length = range.length;
  location = range.location;
  if ((*&self->flags & 2) != 0)
  {
    zoneCopy = zone;
    if (!zone)
    {
      zoneCopy = malloc_default_zone();
    }

    v13 = malloc_type_zone_malloc(zoneCopy, 2 * length, 0x409734D7uLL);
    [(NSBigMutableString *)self getCharacters:v13 range:location, length];
    v14 = [NSString allocWithZone:zone];

    return [(NSString *)v14 initWithCharactersNoCopy:v13 length:length freeWhenDone:1];
  }

  else
  {
    zoneCopy2 = zone;
    if (!zone)
    {
      zoneCopy2 = malloc_default_zone();
    }

    v9 = malloc_type_zone_malloc(zoneCopy2, length, 0x409734D7uLL);
    v10 = v9;
    if (*&self->flags)
    {
      CFStorageGetValues();
    }

    else
    {
      memmove(v9, &self->contents.d.dataBytes[location], length);
    }

    v15 = [NSString allocWithZone:zone];
    v16 = _NSCStringEncoding;

    return [(NSString *)v15 initWithBytesNoCopy:v10 length:length encoding:v16 freeWhenDone:1];
  }
}

- (id)_newBigSubstringWithRange:(_NSRange)range wantsMutable:(BOOL)mutable zone:(_NSZone *)zone
{
  length = range.length;
  location = range.location;
  v7 = self->length;
  if (range.location + range.length > v7)
  {
    v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Range {%lu, %lu} out of bounds; string length %lu", _NSMethodExceptionProem(self, a2), range.location, range.length, self->length), 0}];
    objc_exception_throw(v17);
  }

  mutableCopy = mutable;
  flags = self->flags;
  if (!range.location && range.length == v7 && !mutable && (*&flags & 0x10) != 0)
  {

    return self;
  }

  if (range.length)
  {
    if (*&flags)
    {
      if (mutable || range.length << ((*&flags & 2) != 0) >= 0x201)
      {
        selfCopy = self;
        v16 = CFStorageCreateWithSubrange();
        v12 = [objc_alloc(objc_opt_class()) initWithStorage:v16 length:length isUnicode:(*&selfCopy->flags >> 1) & 1];
        CFRelease(v16);
LABEL_24:
        if (!mutableCopy)
        {
          [v12 _markAsImmutable];
        }

        return v12;
      }
    }

    else if (range.length > 0x10 || mutable)
    {
      selfCopy2 = self;
      v12 = objc_alloc_init(objc_opt_class());
      if (![v12 _copyDataFrom:selfCopy2 range:{location, length}])
      {

        if (mutableCopy)
        {
          v13 = NSZoneMalloc(zone, 2 * length);
          [(NSBigMutableString *)selfCopy2 getCharacters:v13 range:location, length];
          v14 = [NSMutableString allocWithZone:zone];

          return [(NSString *)v14 initWithCharactersNoCopy:v13 length:length freeWhenDone:1];
        }

        self = selfCopy2;
        goto LABEL_28;
      }

      goto LABEL_24;
    }

LABEL_28:

    return [(NSBigMutableString *)self _newSmallImmutableSubstringWithRange:location zone:length, zone];
  }

  v15 = objc_opt_class();

  return objc_alloc_init(v15);
}

- (id)_newSubstringWithRange:(_NSRange)range zone:(_NSZone *)zone
{
  length = range.length;
  location = range.location;
  v8 = self->length;
  v9 = v8 >= range.length;
  v10 = v8 - range.length;
  if (!v9 || range.location > v10)
  {
    if (_CFExecutableLinkedOnOrAfter())
    {
      v19 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Range {%lu, %lu} out of bounds; string length %lu", _NSMethodExceptionProem(self, a2), location, length, self->length), 0}];
      objc_exception_throw(v19);
    }

    if ((_newSubstringWithRange_zone__warnonce & 1) == 0)
    {
      _newSubstringWithRange_zone__warnonce = 1;
      v13 = _NSMethodExceptionProem(self, a2);
      v21.location = location;
      v21.length = length;
      v14 = NSStringFromRange(v21);
      NSLog(@"*** %@: Invalid range %@; this will become an exception for apps linked on SnowLeopard. Warning shown once per app execution.", v13, v14);
    }

    v15 = self->length;
    if (location <= v15)
    {
      v16 = location;
    }

    else
    {
      v16 = 0;
    }

    v9 = v15 >= location;
    v17 = v15 - location;
    if (v9)
    {
      length = v17;
    }

    else
    {
      length = 0;
    }

    location = v16;
  }

  return [(NSBigMutableString *)self _newBigSubstringWithRange:location wantsMutable:length zone:0, zone];
}

- (id)_createSubstringWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v19 = *MEMORY[0x1E69E9840];
  v6 = self->length;
  v7 = v6 >= range.length;
  v8 = v6 - range.length;
  if (!v7 || range.location > v8)
  {
    if (_CFExecutableLinkedOnOrAfter())
    {
      v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Range {%lu, %lu} out of bounds; string length %lu", _NSMethodExceptionProem(self, a2), location, length, self->length), 0}];
      objc_exception_throw(v17);
    }

    if ((_createSubstringWithRange__warnonce & 1) == 0)
    {
      _createSubstringWithRange__warnonce = 1;
      v11 = _NSMethodExceptionProem(self, a2);
      v20.location = location;
      v20.length = length;
      v12 = NSStringFromRange(v20);
      NSLog(@"*** %@: Invalid range %@; this will become an exception for apps linked on SnowLeopard. Warning shown once per app execution.", v11, v12);
    }

    v13 = self->length;
    if (location <= v13)
    {
      v14 = location;
    }

    else
    {
      v14 = 0;
    }

    v7 = v13 >= location;
    v15 = v13 - location;
    if (v7)
    {
      length = v15;
    }

    else
    {
      length = 0;
    }

    location = v14;
  }

  v18.receiver = self;
  v18.super_class = NSBigMutableString;
  return [(NSString *)&v18 _createSubstringWithRange:location, length];
}

@end