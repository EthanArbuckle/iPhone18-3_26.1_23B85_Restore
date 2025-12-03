@interface __NSCFBoolean
- (BOOL)isEqual:(id)equal;
- (__NSCFBoolean)retain;
- (double)doubleValue;
- (float)floatValue;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithLocale:(id)locale;
- (int64_t)_cfNumberType;
- (int64_t)_reverseCompare:(id)compare;
- (int64_t)compare:(id)compare;
- (unsigned)_getValue:(void *)value forType:(int64_t)type;
- (void)release;
@end

@implementation __NSCFBoolean

- (__NSCFBoolean)retain
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

- (int64_t)_cfNumberType
{
  v3 = *[(__NSCFBoolean *)self objCType];
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

      if (([(__NSCFBoolean *)self unsignedLongValue]& 0x8000000000000000) == 0)
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

      if (([(__NSCFBoolean *)self unsignedIntValue]& 0x80000000) != 0)
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

- (double)doubleValue
{
  Value = CFBooleanGetValue(self);
  result = 0.0;
  if (Value)
  {
    return 1.0;
  }

  return result;
}

- (float)floatValue
{
  Value = CFBooleanGetValue(self);
  result = 0.0;
  if (Value)
  {
    return 1.0;
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

        LOBYTE(v5) = [(__NSCFBoolean *)self isEqualToNumber:equal];
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
  if ([(__NSCFBoolean *)self BOOLValue])
  {
    return @"1";
  }

  else
  {
    return @"0";
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  if ((self & 0x8000000000000000) == 0)
  {
    return _CFNonObjCRetain(self);
  }

  return self;
}

- (unsigned)_getValue:(void *)value forType:(int64_t)type
{
  if (type > 3)
  {
    if (type <= 5)
    {
      if (type == 4)
      {
        *value = [(__NSCFBoolean *)self longLongValue];
      }

      else
      {
        [(__NSCFBoolean *)self floatValue];
        *value = v5;
      }

      goto LABEL_16;
    }

    if (type == 6)
    {
      [(__NSCFBoolean *)self doubleValue];
      *value = v7;
      goto LABEL_16;
    }

    if (type == 17)
    {
      longLongValue = [(__NSCFBoolean *)self longLongValue];
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
    *value = [(__NSCFBoolean *)self charValue];
    goto LABEL_16;
  }

  if (type == 2)
  {
    *value = [(__NSCFBoolean *)self shortValue];
    goto LABEL_16;
  }

  if (type != 3)
  {
    goto LABEL_17;
  }

  *value = [(__NSCFBoolean *)self intValue];
LABEL_16:
  LOBYTE(self) = 1;
  return self;
}

- (int64_t)_reverseCompare:(id)compare
{
  v3 = [(__NSCFBoolean *)self compare:compare];
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
    [(__NSCFBoolean *)self compare:a2];
  }

  if (self == compare)
  {
    return 0;
  }

  v5 = *[compare objCType];
  objCType = [(__NSCFBoolean *)self objCType];
  if ((v5 & 0xFFFFFFFD) == 0x64 || (v7 = *objCType, (v7 & 0xFFFFFFFD) == 0x64))
  {
    [(__NSCFBoolean *)self doubleValue];
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
    unsignedLongLongValue = [(__NSCFBoolean *)self unsignedLongLongValue];
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

  if (v7 == 81 && ([(__NSCFBoolean *)self unsignedLongLongValue]& 0x8000000000000000) != 0)
  {
    return 1;
  }

  if (v5 == 81 && [compare unsignedLongLongValue] < 0)
  {
    return -1;
  }

  longLongValue = [(__NSCFBoolean *)self longLongValue];
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