@interface HDHealthServiceCharacteristic
+ (BOOL)uint16:(unsigned __int16)uint16 toData:(char *)data before:(const char *)before;
+ (BOOL)uint32:(unsigned int)uint32 toData:(char *)data before:(const char *)before;
+ (BOOL)uint8:(unsigned __int8)uint8 toData:(char *)data before:(const char *)before;
+ (double)doubleFromFLOAT:(unsigned int)t;
+ (double)doubleFromFLOATData:(const char *)data before:(const char *)before;
+ (float)floatFromSFLOAT:(unsigned __int16)t;
+ (float)floatFromSFLOATData:(const char *)data before:(const char *)before;
+ (id)buildWithBinaryValue:(id)value updateTime:(id)time error:(id *)error;
+ (id)dateFromData:(const char *)data before:(const char *)before calendar:(id)calendar;
+ (id)uuid;
+ (signed)int16FromData:(const char *)data before:(const char *)before;
+ (unsigned)uint16FromData:(const char *)data before:(const char *)before;
+ (unsigned)uint24FromData:(const char *)data before:(const char *)before;
+ (unsigned)uint32FromData:(const char *)data before:(const char *)before;
+ (unsigned)uint8FromData:(const char *)data before:(const char *)before;
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

+ (id)buildWithBinaryValue:(id)value updateTime:(id)time error:(id *)error
{
  timeCopy = time;
  valueCopy = value;
  v10 = [objc_opt_class() _buildWithBinaryValue:valueCopy error:error];

  if (v10)
  {
    objc_storeStrong(v10 + 1, time);
  }

  return v10;
}

- (NSString)description
{
  uuid = [objc_opt_class() uuid];
  uUIDString = [uuid UUIDString];

  uuid2 = [objc_opt_class() uuid];
  v6 = [uuid2 description];

  if ([(__CFString *)v6 isEqualToString:uUIDString])
  {

    v6 = &stru_5E418;
  }

  v10.receiver = self;
  v10.super_class = HDHealthServiceCharacteristic;
  v7 = [(HDHealthServiceCharacteristic *)&v10 description];
  v8 = [NSString stringWithFormat:@"%@ uuid=%@ %@", v7, uUIDString, v6];

  return v8;
}

+ (float)floatFromSFLOAT:(unsigned __int16)t
{
  v3 = t & 0xFFF;
  if (v3 - 2046 > 4)
  {
    if ((t & 0x8000u) == 0)
    {
      v5 = t >> 12;
    }

    else
    {
      v5 = (t >> 12) | 0xFFFFFFF0;
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

+ (double)doubleFromFLOAT:(unsigned int)t
{
  v3 = t & 0xFFFFFF;
  v4 = (t & 0xFFFFFF) - 8388606;
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

  return __exp10((t >> 24)) * (v6 | v3);
}

+ (unsigned)uint8FromData:(const char *)data before:(const char *)before
{
  v7 = 0;
  v4 = sub_15638(self, &v7, data, 1, before);
  v5 = v7;
  if (!v4)
  {
    return 0;
  }

  return v5;
}

+ (signed)int16FromData:(const char *)data before:(const char *)before
{
  v7 = 0;
  v4 = sub_15638(self, &v7, data, 2, before);
  v5 = v7;
  if (!v4)
  {
    return 0;
  }

  return v5;
}

+ (unsigned)uint16FromData:(const char *)data before:(const char *)before
{
  v7 = 0;
  v4 = sub_15638(self, &v7, data, 2, before);
  v5 = v7;
  if (!v4)
  {
    return 0;
  }

  return v5;
}

+ (unsigned)uint24FromData:(const char *)data before:(const char *)before
{
  v5 = 0;
  if (sub_15638(self, &v5, data, 3, before))
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

+ (unsigned)uint32FromData:(const char *)data before:(const char *)before
{
  v5 = 0;
  if (sub_15638(self, &v5, data, 4, before))
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

+ (float)floatFromSFLOATData:(const char *)data before:(const char *)before
{
  objc_opt_self();
  if (!data || !before || !*data)
  {
    return 0.0;
  }

  if (*data + 2 > before)
  {
    *data = 0;
    return 0.0;
  }

  v8 = [self uint16FromData:data before:before];

  [self floatFromSFLOAT:v8];
  return result;
}

+ (double)doubleFromFLOATData:(const char *)data before:(const char *)before
{
  objc_opt_self();
  if (!data || !before || !*data)
  {
    return 0.0;
  }

  if (*data + 4 > before)
  {
    *data = 0;
    return 0.0;
  }

  v8 = [self uint32FromData:data before:before];

  [self doubleFromFLOAT:v8];
  return result;
}

+ (id)dateFromData:(const char *)data before:(const char *)before calendar:(id)calendar
{
  calendarCopy = calendar;
  objc_opt_self();
  v9 = 0;
  if (data && before && *data)
  {
    if (*data + 7 <= before)
    {
      v10 = [self uint16FromData:data before:before];
      v11 = [self uint8FromData:data before:before];
      v12 = [self uint8FromData:data before:before];
      v13 = [self uint8FromData:data before:before];
      v14 = [self uint8FromData:data before:before];
      v15 = [self uint8FromData:data before:before];
      v16 = objc_alloc_init(NSDateComponents);
      [v16 setYear:v10];
      [v16 setMonth:v11];
      [v16 setDay:v12];
      [v16 setHour:v13];
      [v16 setMinute:v14];
      [v16 setSecond:v15];
      v9 = [calendarCopy dateFromComponents:v16];
    }

    else
    {
      v9 = 0;
      *data = 0;
    }
  }

  return v9;
}

+ (BOOL)uint8:(unsigned __int8)uint8 toData:(char *)data before:(const char *)before
{
  objc_opt_self();
  result = 0;
  if (data)
  {
    if (before)
    {
      v9 = *data;
      if (*data)
      {
        if (v9 + 1 <= before)
        {
          *v9 = uint8;
          ++*data;
          return 1;
        }
      }
    }
  }

  return result;
}

+ (BOOL)uint16:(unsigned __int16)uint16 toData:(char *)data before:(const char *)before
{
  objc_opt_self();
  result = 0;
  if (data)
  {
    if (before)
    {
      v9 = *data;
      if (*data)
      {
        if (v9 + 2 <= before)
        {
          *v9 = uint16;
          *data += 2;
          return 1;
        }
      }
    }
  }

  return result;
}

+ (BOOL)uint32:(unsigned int)uint32 toData:(char *)data before:(const char *)before
{
  objc_opt_self();
  result = 0;
  if (data)
  {
    if (before)
    {
      v9 = *data;
      if (*data)
      {
        if (v9 + 4 <= before)
        {
          *v9 = uint32;
          *data += 4;
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