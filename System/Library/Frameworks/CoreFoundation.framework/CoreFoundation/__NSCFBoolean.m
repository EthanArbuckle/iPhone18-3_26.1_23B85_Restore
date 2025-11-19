@interface __NSCFBoolean
- (BOOL)isEqual:(id)a3;
- (__NSCFBoolean)retain;
- (double)doubleValue;
- (float)floatValue;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithLocale:(id)a3;
- (int64_t)_cfNumberType;
- (int64_t)_reverseCompare:(id)a3;
- (int64_t)compare:(id)a3;
- (unsigned)_getValue:(void *)a3 forType:(int64_t)a4;
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

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    if (self == a3)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v5 = _NSIsNSNumber(a3);
      if (v5)
      {

        LOBYTE(v5) = [(__NSCFBoolean *)self isEqualToNumber:a3];
      }
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)descriptionWithLocale:(id)a3
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

- (id)copyWithZone:(_NSZone *)a3
{
  if ((self & 0x8000000000000000) == 0)
  {
    return _CFNonObjCRetain(self);
  }

  return self;
}

- (unsigned)_getValue:(void *)a3 forType:(int64_t)a4
{
  if (a4 > 3)
  {
    if (a4 <= 5)
    {
      if (a4 == 4)
      {
        *a3 = [(__NSCFBoolean *)self longLongValue];
      }

      else
      {
        [(__NSCFBoolean *)self floatValue];
        *a3 = v5;
      }

      goto LABEL_16;
    }

    if (a4 == 6)
    {
      [(__NSCFBoolean *)self doubleValue];
      *a3 = v7;
      goto LABEL_16;
    }

    if (a4 == 17)
    {
      v6 = [(__NSCFBoolean *)self longLongValue];
      *a3 = v6 >> 63;
      *(a3 + 1) = v6;
      goto LABEL_16;
    }

LABEL_17:
    __break(1u);
    return self;
  }

  if (a4 == 1)
  {
    *a3 = [(__NSCFBoolean *)self charValue];
    goto LABEL_16;
  }

  if (a4 == 2)
  {
    *a3 = [(__NSCFBoolean *)self shortValue];
    goto LABEL_16;
  }

  if (a4 != 3)
  {
    goto LABEL_17;
  }

  *a3 = [(__NSCFBoolean *)self intValue];
LABEL_16:
  LOBYTE(self) = 1;
  return self;
}

- (int64_t)_reverseCompare:(id)a3
{
  v3 = [(__NSCFBoolean *)self compare:a3];
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

- (int64_t)compare:(id)a3
{
  if (!a3)
  {
    [(__NSCFBoolean *)self compare:a2];
  }

  if (self == a3)
  {
    return 0;
  }

  v5 = *[a3 objCType];
  v6 = [(__NSCFBoolean *)self objCType];
  if ((v5 & 0xFFFFFFFD) == 0x64 || (v7 = *v6, (v7 & 0xFFFFFFFD) == 0x64))
  {
    [(__NSCFBoolean *)self doubleValue];
    v13 = v12;
    [a3 doubleValue];
    if (v13 >= v14)
    {
      return v14 < v13;
    }

    return -1;
  }

  if (v5 == 81 && v7 == 81)
  {
    v8 = [(__NSCFBoolean *)self unsignedLongLongValue];
    v9 = [a3 unsignedLongLongValue];
    if (v8 >= v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = -1;
    }

    if (v8 > v9)
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

  if (v5 == 81 && [a3 unsignedLongLongValue] < 0)
  {
    return -1;
  }

  v15 = [(__NSCFBoolean *)self longLongValue];
  v16 = [a3 longLongValue];
  if (v15 >= v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = -1;
  }

  if (v15 > v16)
  {
    return 1;
  }

  else
  {
    return v17;
  }
}

@end