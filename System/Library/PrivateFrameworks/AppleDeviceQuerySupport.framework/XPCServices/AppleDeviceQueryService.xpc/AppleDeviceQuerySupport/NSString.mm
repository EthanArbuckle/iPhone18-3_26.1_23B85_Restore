@interface NSString
+ (BOOL)isDataConvertibleToVisibleString:(id)a3;
+ (id)hexStringFromData:(id)a3;
+ (id)macAddressStringFromData:(id)a3;
+ (id)macAddressStringFromSysconfigDataSixByte:(id)a3;
+ (id)stringFromData:(id)a3;
+ (id)visibleStringFromData:(id)a3;
- (id)ccccValue;
- (id)stringByLeftTrimmingCharacter:(char)a3;
- (id)stringByRemovingCharactersInString:(id)a3;
- (id)stringByRightTrimmingCharacter:(char)a3;
- (id)stringByTrimmingCharactersInString:(id)a3;
@end

@implementation NSString

+ (BOOL)isDataConvertibleToVisibleString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 bytes];
    v6 = [v4 length];
    if (v6)
    {
      while (!v6[(v5 - 1)])
      {
        if (!--v6)
        {
          goto LABEL_5;
        }
      }

      v9 = 0;
      while (v5[v9] >= 8)
      {
        v10 = v5[v9];
        if (v10 == 127 || (v10 - 14) <= 0x11)
        {
          break;
        }

        if (++v9 >= v6)
        {
          v7 = 1;
          goto LABEL_6;
        }
      }
    }
  }

LABEL_5:
  v7 = 0;
LABEL_6:

  return v7;
}

+ (id)stringFromData:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 length])
    {
      if ([a1 isDataConvertibleToVisibleString:v5])
      {
        [a1 visibleStringFromData:v5];
      }

      else
      {
        [a1 hexStringFromData:v5];
      }
      v6 = ;
    }

    else
    {
      v6 = &stru_100014878;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)visibleStringFromData:(id)a3
{
  v3 = a3;
  v4 = v3;
  v8 = 0;
  if (v3)
  {
    if ([v3 length])
    {
      [v4 getBytes:&v8 range:{objc_msgSend(v4, "length") - 1, 1}];
      if (v8)
      {
        v5 = [[NSString alloc] initWithData:v4 encoding:4];
      }

      else
      {
        v5 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [v4 bytes]);
      }

      v6 = v5;
    }

    else
    {
      v6 = &stru_100014878;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)hexStringFromData:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(NSMutableString);
    v5 = [v3 length];
    v6 = [v3 bytes];
    if (v5)
    {
      v7 = v6;
      do
      {
        v8 = *v7++;
        [v4 appendFormat:@"%02x", v8];
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)macAddressStringFromData:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(NSMutableString);
    v5 = [v3 length];
    v6 = [v3 bytes];
    if (v5)
    {
      v7 = v6;
      do
      {
        v8 = *v7++;
        [v4 appendFormat:@"%02x", v8];
        if (v5 != 1)
        {
          [v4 appendFormat:@":"];
        }

        --v5;
      }

      while (v5);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)macAddressStringFromSysconfigDataSixByte:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(NSMutableString);
    if ([v3 length] <= 6)
    {
      v5 = [v3 length];
    }

    else
    {
      v5 = 6;
    }

    v6 = [v3 bytes];
    if (v5)
    {
      v7 = v6;
      do
      {
        v8 = *v7++;
        [v4 appendFormat:@"%02x", v8];
        if (v5 != 1)
        {
          [v4 appendFormat:@":"];
        }

        --v5;
      }

      while (v5);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)stringByRemovingCharactersInString:(id)a3
{
  v4 = a3;
  v5 = self;
  if (v4 && [v4 length])
  {
    v6 = 0;
    do
    {
      v7 = [v4 substringWithRange:{v6, 1}];
      v8 = [(NSString *)v5 stringByReplacingOccurrencesOfString:v7 withString:&stru_100014878];

      ++v6;
      v5 = v8;
    }

    while ([v4 length] > v6);
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (id)stringByTrimmingCharactersInString:(id)a3
{
  v4 = self;
  if (a3)
  {
    v5 = [NSCharacterSet characterSetWithCharactersInString:a3];
    v6 = [(NSString *)v4 stringByTrimmingCharactersInSet:v5];

    v4 = v6;
  }

  return v4;
}

- (id)stringByLeftTrimmingCharacter:(char)a3
{
  v4 = [(NSString *)self UTF8String];
  v5 = strlen(v4);
  v6 = 0;
  if (v5)
  {
    while (v4[v6] == a3)
    {
      if (v5 == ++v6)
      {
        v6 = v5;
        break;
      }
    }
  }

  v7 = [[NSString alloc] initWithBytes:&v4[v6] length:v5 - v6 encoding:4];

  return v7;
}

- (id)stringByRightTrimmingCharacter:(char)a3
{
  v4 = [(NSString *)self UTF8String];
  for (i = strlen(v4); i; --i)
  {
    if (v4[i - 1] != a3)
    {
      break;
    }
  }

  v6 = [[NSString alloc] initWithBytes:v4 length:i encoding:4];

  return v6;
}

- (id)ccccValue
{
  if ([(NSString *)self length]== 4)
  {
    v3 = [NSNumber numberWithUnsignedInt:bswap32(*[(NSString *)self cStringUsingEncoding:1])];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end