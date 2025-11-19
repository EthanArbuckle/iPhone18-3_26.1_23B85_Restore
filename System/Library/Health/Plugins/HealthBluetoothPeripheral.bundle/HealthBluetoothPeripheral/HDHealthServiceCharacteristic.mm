@interface HDHealthServiceCharacteristic
+ (BOOL)uint16:(unsigned __int16)a3 toData:(char *)a4 before:(const char *)a5;
+ (BOOL)uint32:(unsigned int)a3 toData:(char *)a4 before:(const char *)a5;
+ (BOOL)uint8:(unsigned __int8)a3 toData:(char *)a4 before:(const char *)a5;
+ (double)doubleFromFLOAT:(unsigned int)a3;
+ (double)doubleFromFLOATData:(const char *)a3 before:(const char *)a4;
+ (float)floatFromSFLOAT:(unsigned __int16)a3;
+ (float)floatFromSFLOATData:(const char *)a3 before:(const char *)a4;
+ (id)buildWithBinaryValue:(id)a3 updateTime:(id)a4 error:(id *)a5;
+ (id)dateFromData:(const char *)a3 before:(const char *)a4 calendar:(id)a5;
+ (id)uuid;
+ (signed)int16FromData:(const char *)a3 before:(const char *)a4;
+ (unsigned)uint16FromData:(const char *)a3 before:(const char *)a4;
+ (unsigned)uint24FromData:(const char *)a3 before:(const char *)a4;
+ (unsigned)uint32FromData:(const char *)a3 before:(const char *)a4;
+ (unsigned)uint8FromData:(const char *)a3 before:(const char *)a4;
- (NSString)description;
- (id)_init;
@end

@implementation HDHealthServiceCharacteristic

- (id)_init
{
  v3.receiver = self;
  v3.super_class = HDHealthServiceCharacteristic;
  return [(HDHealthServiceCharacteristic *)&v3 init];
}

+ (id)buildWithBinaryValue:(id)a3 updateTime:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [objc_opt_class() _buildWithBinaryValue:v9 error:a5];

  if (v10)
  {
    objc_storeStrong(v10 + 1, a4);
  }

  return v10;
}

- (NSString)description
{
  v3 = [objc_opt_class() uuid];
  v4 = [v3 UUIDString];

  v5 = [objc_opt_class() uuid];
  v6 = [v5 description];

  if ([(__CFString *)v6 isEqualToString:v4])
  {

    v6 = &stru_5E418;
  }

  v10.receiver = self;
  v10.super_class = HDHealthServiceCharacteristic;
  v7 = [(HDHealthServiceCharacteristic *)&v10 description];
  v8 = [NSString stringWithFormat:@"%@ uuid=%@ %@", v7, v4, v6];

  return v8;
}

+ (float)floatFromSFLOAT:(unsigned __int16)a3
{
  v3 = a3 & 0xFFF;
  if (v3 - 2046 > 4)
  {
    if ((a3 & 0x8000u) == 0)
    {
      v5 = a3 >> 12;
    }

    else
    {
      v5 = (a3 >> 12) | 0xFFFFFFF0;
    }

    if (v3 <= 0x7FF)
    {
      v6 = 0;
    }

    else
    {
      v6 = -4096;
    }

    v7 = (v6 | v3);
    v8 = __exp10(v5);
    return v7 * v8;
  }

  else
  {
    result = NAN;
    if (v3 == 2050)
    {
      result = -INFINITY;
    }

    if (v3 == 2046)
    {
      return INFINITY;
    }
  }

  return result;
}

+ (double)doubleFromFLOAT:(unsigned int)a3
{
  v3 = a3 & 0xFFFFFF;
  v4 = (a3 & 0xFFFFFF) - 8388606;
  if (v4 <= 4)
  {
    return dbl_447C0[v4];
  }

  if (v3 >> 23)
  {
    v6 = -16777216;
  }

  else
  {
    v6 = 0;
  }

  return __exp10((a3 >> 24)) * (v6 | v3);
}

+ (unsigned)uint8FromData:(const char *)a3 before:(const char *)a4
{
  v7 = 0;
  v4 = sub_15638(a1, &v7, a3, 1, a4);
  v5 = v7;
  if (!v4)
  {
    return 0;
  }

  return v5;
}

+ (signed)int16FromData:(const char *)a3 before:(const char *)a4
{
  v7 = 0;
  v4 = sub_15638(a1, &v7, a3, 2, a4);
  v5 = v7;
  if (!v4)
  {
    return 0;
  }

  return v5;
}

+ (unsigned)uint16FromData:(const char *)a3 before:(const char *)a4
{
  v7 = 0;
  v4 = sub_15638(a1, &v7, a3, 2, a4);
  v5 = v7;
  if (!v4)
  {
    return 0;
  }

  return v5;
}

+ (unsigned)uint24FromData:(const char *)a3 before:(const char *)a4
{
  v5 = 0;
  if (sub_15638(a1, &v5, a3, 3, a4))
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

+ (unsigned)uint32FromData:(const char *)a3 before:(const char *)a4
{
  v5 = 0;
  if (sub_15638(a1, &v5, a3, 4, a4))
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

+ (float)floatFromSFLOATData:(const char *)a3 before:(const char *)a4
{
  objc_opt_self();
  if (!a3 || !a4 || !*a3)
  {
    return 0.0;
  }

  if (*a3 + 2 > a4)
  {
    *a3 = 0;
    return 0.0;
  }

  v8 = [a1 uint16FromData:a3 before:a4];

  [a1 floatFromSFLOAT:v8];
  return result;
}

+ (double)doubleFromFLOATData:(const char *)a3 before:(const char *)a4
{
  objc_opt_self();
  if (!a3 || !a4 || !*a3)
  {
    return 0.0;
  }

  if (*a3 + 4 > a4)
  {
    *a3 = 0;
    return 0.0;
  }

  v8 = [a1 uint32FromData:a3 before:a4];

  [a1 doubleFromFLOAT:v8];
  return result;
}

+ (id)dateFromData:(const char *)a3 before:(const char *)a4 calendar:(id)a5
{
  v8 = a5;
  objc_opt_self();
  v9 = 0;
  if (a3 && a4 && *a3)
  {
    if (*a3 + 7 <= a4)
    {
      v10 = [a1 uint16FromData:a3 before:a4];
      v11 = [a1 uint8FromData:a3 before:a4];
      v12 = [a1 uint8FromData:a3 before:a4];
      v13 = [a1 uint8FromData:a3 before:a4];
      v14 = [a1 uint8FromData:a3 before:a4];
      v15 = [a1 uint8FromData:a3 before:a4];
      v16 = objc_alloc_init(NSDateComponents);
      [v16 setYear:v10];
      [v16 setMonth:v11];
      [v16 setDay:v12];
      [v16 setHour:v13];
      [v16 setMinute:v14];
      [v16 setSecond:v15];
      v9 = [v8 dateFromComponents:v16];
    }

    else
    {
      v9 = 0;
      *a3 = 0;
    }
  }

  return v9;
}

+ (BOOL)uint8:(unsigned __int8)a3 toData:(char *)a4 before:(const char *)a5
{
  objc_opt_self();
  result = 0;
  if (a4)
  {
    if (a5)
    {
      v9 = *a4;
      if (*a4)
      {
        if (v9 + 1 <= a5)
        {
          *v9 = a3;
          ++*a4;
          return 1;
        }
      }
    }
  }

  return result;
}

+ (BOOL)uint16:(unsigned __int16)a3 toData:(char *)a4 before:(const char *)a5
{
  objc_opt_self();
  result = 0;
  if (a4)
  {
    if (a5)
    {
      v9 = *a4;
      if (*a4)
      {
        if (v9 + 2 <= a5)
        {
          *v9 = a3;
          *a4 += 2;
          return 1;
        }
      }
    }
  }

  return result;
}

+ (BOOL)uint32:(unsigned int)a3 toData:(char *)a4 before:(const char *)a5
{
  objc_opt_self();
  result = 0;
  if (a4)
  {
    if (a5)
    {
      v9 = *a4;
      if (*a4)
      {
        if (v9 + 4 <= a5)
        {
          *v9 = a3;
          *a4 += 4;
          return 1;
        }
      }
    }
  }

  return result;
}

+ (id)uuid
{
  NSRequestConcreteImplementation();
  v2 = objc_alloc_init(CBUUID);

  return v2;
}

@end