@interface __NSCFNumber
- (BOOL)BOOLValue;
- (BOOL)isEqual:(id)equal;
- (__NSCFNumber)retain;
- (char)charValue;
- (const)objCType;
- (double)doubleValue;
- (float)floatValue;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionWithLocale:(id)locale;
- (id)stringValue;
- (int)intValue;
- (int64_t)_cfNumberType;
- (int64_t)_reverseCompare:(id)compare;
- (int64_t)compare:(id)compare;
- (int64_t)longLongValue;
- (int64_t)longValue;
- (signed)shortValue;
- (unint64_t)unsignedLongLongValue;
- (unint64_t)unsignedLongValue;
- (unsigned)_getValue:(void *)value forType:(int64_t)type;
- (unsigned)unsignedCharValue;
- (unsigned)unsignedIntValue;
- (unsigned)unsignedShortValue;
- (void)getValue:(void *)value;
- (void)release;
@end

@implementation __NSCFNumber

- (int64_t)longValue
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  CFNumberGetValue(self, kCFNumberSInt64Type, v4);
  result = v4[0];
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (__NSCFNumber)retain
{
  if ((self & 0x8000000000000000) == 0)
  {
    return _CFNonObjCRetain(self);
  }

  return self;
}

- (void)release
{
  if ((self & 0x8000000000000000) == 0)
  {
    _CFNonObjCRelease();
  }
}

- (const)objCType
{
  result = _CFNumberGetType2(self);
  v3 = result - 1;
  if (result - 1) < 0x11 && ((0x1003Fu >> v3))
  {
    return off_1E6D81DC0[v3];
  }

  __break(1u);
  return result;
}

- (int64_t)longLongValue
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  CFNumberGetValue(self, kCFNumberSInt64Type, v4);
  result = v4[0];
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (double)doubleValue
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  CFNumberGetValue(self, kCFNumberDoubleType, v4);
  result = *v4;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)description
{
  v7 = *MEMORY[0x1E69E9840];
  if (objc_lookUpClass("NSNumber"))
  {
    v6.receiver = self;
    v6.super_class = __NSCFNumber;
    result = [&v6 description];
    v4 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v5 = *MEMORY[0x1E69E9840];

    return [(__NSCFNumber *)self descriptionWithLocale:0];
  }

  return result;
}

- (unint64_t)unsignedLongLongValue
{
  v6 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  v5 = 0;
  CFNumberGetValue(self, kCFNumberMaxType|kCFNumberSInt8Type, &valuePtr);
  result = v5;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)unsignedLongValue
{
  v6 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  v5 = 0;
  CFNumberGetValue(self, kCFNumberMaxType|kCFNumberSInt8Type, &valuePtr);
  result = v5;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)unsignedIntValue
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  CFNumberGetValue(self, kCFNumberSInt64Type, v4);
  result = v4[0];
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)unsignedCharValue
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  CFNumberGetValue(self, kCFNumberSInt64Type, v4);
  result = v4[0];
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (float)floatValue
{
  v5 = *MEMORY[0x1E69E9840];
  valuePtr = 0.0;
  CFNumberGetValue(self, kCFNumberFloatType, &valuePtr);
  result = valuePtr;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (signed)shortValue
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  CFNumberGetValue(self, kCFNumberSInt64Type, v4);
  result = v4[0];
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)BOOLValue
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0.0;
  if (CFNumberIsFloatType(self))
  {
    CFNumberGetValue(self, kCFNumberDoubleType, v6);
    v3 = v6[0] == 0.0;
  }

  else
  {
    CFNumberGetValue(self, kCFNumberSInt64Type, v6);
    v3 = *&v6[0] == 0;
  }

  result = !v3;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (int)intValue
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  CFNumberGetValue(self, kCFNumberSInt64Type, v4);
  result = v4[0];
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (char)charValue
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  CFNumberGetValue(self, kCFNumberSInt64Type, v4);
  result = v4[0];
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)unsignedShortValue
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  CFNumberGetValue(self, kCFNumberSInt64Type, v4);
  result = v4[0];
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)stringValue
{
  v8 = *MEMORY[0x1E69E9840];
  if (objc_lookUpClass("NSNumber"))
  {
    v7.receiver = self;
    v7.super_class = __NSCFNumber;
    result = [(__NSCFNumber *)&v7 stringValue];
    v4 = *MEMORY[0x1E69E9840];
  }

  else
  {
    FormattingDescription = __CFNumberCreateFormattingDescription(&__kCFAllocatorSystemDefault, self);
    v6 = *MEMORY[0x1E69E9840];

    return FormattingDescription;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    if (self == equal)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v5 = _NSIsNSNumber(equal);
      if (v5)
      {

        LOBYTE(v5) = [(__NSCFNumber *)self isEqualToNumber:equal];
      }
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)descriptionWithLocale:(id)locale
{
  v10 = *MEMORY[0x1E69E9840];
  if (objc_lookUpClass("NSNumber"))
  {
    v9.receiver = self;
    v9.super_class = __NSCFNumber;
    result = [(__NSCFNumber *)&v9 descriptionWithLocale:locale];
    v6 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v7 = __CFNumberCopyFormattingDescription(self);
    v8 = *MEMORY[0x1E69E9840];

    return v7;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if ((self & 0x8000000000000000) == 0)
  {
    return _CFNonObjCRetain(self);
  }

  return self;
}

- (void)getValue:(void *)value
{
  v13 = *MEMORY[0x1E69E9840];
  if ((self & 0x8000000000000000) != 0)
  {
    Type = CFNumberGetType(self);
    v6 = *MEMORY[0x1E69E9840];
    Type2 = Type;
LABEL_9:

    CFNumberGetValue(self, Type2, value);
    return;
  }

  Type2 = _CFNumberGetType2(self);
  if (Type2 != (kCFNumberMaxType|kCFNumberSInt8Type))
  {
    v10 = *MEMORY[0x1E69E9840];
    goto LABEL_9;
  }

  valuePtr = 0;
  v12 = 0;
  CFNumberGetValue(self, kCFNumberMaxType|kCFNumberSInt8Type, &valuePtr);
  if (valuePtr)
  {
    v8 = -1;
  }

  else
  {
    v8 = v12;
  }

  *value = v8;
  v9 = *MEMORY[0x1E69E9840];
}

- (int64_t)_cfNumberType
{
  v3 = *[(__NSCFNumber *)self objCType];
  result = 7;
  if (v3 <= 98)
  {
    if (v3 > 75)
    {
      if (v3 != 76)
      {
        if (v3 == 81)
        {
          return 17;
        }

        if (v3 != 83)
        {
          goto LABEL_32;
        }

        return 9;
      }

      if (([(__NSCFNumber *)self unsignedLongValue]& 0x8000000000000000) == 0)
      {
        return 10;
      }

      else
      {
        return 11;
      }
    }

    else if (v3 != 66)
    {
      if (v3 == 67)
      {
        return 8;
      }

      if (v3 != 73)
      {
LABEL_32:
        __break(1u);
        return result;
      }

      if (([(__NSCFNumber *)self unsignedIntValue]& 0x80000000) != 0)
      {
        return 11;
      }

      else
      {
        return 9;
      }
    }
  }

  else
  {
    if (v3 > 104)
    {
      if (v3 <= 112)
      {
        if (v3 != 105)
        {
          if (v3 == 108)
          {
            return 10;
          }

          goto LABEL_32;
        }

        return 9;
      }

      if (v3 == 113)
      {
        return 11;
      }

      if (v3 != 115)
      {
        goto LABEL_32;
      }

      return 8;
    }

    if (v3 != 99)
    {
      if (v3 == 100)
      {
        return 13;
      }

      if (v3 == 102)
      {
        return 12;
      }

      goto LABEL_32;
    }
  }

  return result;
}

- (unsigned)_getValue:(void *)value forType:(int64_t)type
{
  if (type > 3)
  {
    if (type <= 5)
    {
      if (type == 4)
      {
        *value = [(__NSCFNumber *)self longLongValue];
      }

      else
      {
        [(__NSCFNumber *)self floatValue];
        *value = v5;
      }

      goto LABEL_16;
    }

    if (type == 6)
    {
      [(__NSCFNumber *)self doubleValue];
      *value = v7;
      goto LABEL_16;
    }

    if (type == 17)
    {
      longLongValue = [(__NSCFNumber *)self longLongValue];
      *value = longLongValue >> 63;
      *(value + 1) = longLongValue;
      goto LABEL_16;
    }

LABEL_17:
    __break(1u);
    return self;
  }

  if (type == 1)
  {
    *value = [(__NSCFNumber *)self charValue];
    goto LABEL_16;
  }

  if (type == 2)
  {
    *value = [(__NSCFNumber *)self shortValue];
    goto LABEL_16;
  }

  if (type != 3)
  {
    goto LABEL_17;
  }

  *value = [(__NSCFNumber *)self intValue];
LABEL_16:
  LOBYTE(self) = 1;
  return self;
}

- (int64_t)_reverseCompare:(id)compare
{
  v3 = [(__NSCFNumber *)self compare:compare];
  if (v3 == 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = 0;
  }

  if (v3 == -1)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

- (int64_t)compare:(id)compare
{
  if (!compare)
  {
    [(__NSCFNumber *)self compare:a2];
  }

  if (self == compare)
  {
    return 0;
  }

  v5 = *[compare objCType];
  objCType = [(__NSCFNumber *)self objCType];
  if ((v5 & 0xFFFFFFFD) == 0x64 || (v7 = *objCType, (v7 & 0xFFFFFFFD) == 0x64))
  {
    [(__NSCFNumber *)self doubleValue];
    v13 = v12;
    [compare doubleValue];
    if (v13 >= v14)
    {
      return v14 < v13;
    }

    return -1;
  }

  if (v5 == 81 && v7 == 81)
  {
    unsignedLongLongValue = [(__NSCFNumber *)self unsignedLongLongValue];
    unsignedLongLongValue2 = [compare unsignedLongLongValue];
    if (unsignedLongLongValue >= unsignedLongLongValue2)
    {
      v10 = 0;
    }

    else
    {
      v10 = -1;
    }

    if (unsignedLongLongValue > unsignedLongLongValue2)
    {
      return 1;
    }

    else
    {
      return v10;
    }
  }

  if (v7 == 81 && ([(__NSCFNumber *)self unsignedLongLongValue]& 0x8000000000000000) != 0)
  {
    return 1;
  }

  if (v5 == 81 && [compare unsignedLongLongValue] < 0)
  {
    return -1;
  }

  longLongValue = [(__NSCFNumber *)self longLongValue];
  longLongValue2 = [compare longLongValue];
  if (longLongValue >= longLongValue2)
  {
    v17 = 0;
  }

  else
  {
    v17 = -1;
  }

  if (longLongValue > longLongValue2)
  {
    return 1;
  }

  else
  {
    return v17;
  }
}

@end