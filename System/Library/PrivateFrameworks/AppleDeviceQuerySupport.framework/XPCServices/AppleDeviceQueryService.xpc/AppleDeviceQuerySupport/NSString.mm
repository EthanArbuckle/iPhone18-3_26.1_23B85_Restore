@interface NSString
+ (BOOL)isDataConvertibleToVisibleString:(id)string;
+ (id)hexStringFromData:(id)data;
+ (id)macAddressStringFromData:(id)data;
+ (id)macAddressStringFromSysconfigDataSixByte:(id)byte;
+ (id)stringFromData:(id)data;
+ (id)visibleStringFromData:(id)data;
- (id)ccccValue;
- (id)stringByLeftTrimmingCharacter:(char)character;
- (id)stringByRemovingCharactersInString:(id)string;
- (id)stringByRightTrimmingCharacter:(char)character;
- (id)stringByTrimmingCharactersInString:(id)string;
@end

@implementation NSString

+ (BOOL)isDataConvertibleToVisibleString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (stringCopy)
  {
    bytes = [stringCopy bytes];
    v6 = [v4 length];
    if (v6)
    {
      while (!v6[(bytes - 1)])
      {
        if (!--v6)
        {
          goto LABEL_5;
        }
      }

      v9 = 0;
      while (bytes[v9] >= 8)
      {
        v10 = bytes[v9];
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

+ (id)stringFromData:(id)data
{
  dataCopy = data;
  v5 = dataCopy;
  if (dataCopy)
  {
    if ([dataCopy length])
    {
      if ([self isDataConvertibleToVisibleString:v5])
      {
        [self visibleStringFromData:v5];
      }

      else
      {
        [self hexStringFromData:v5];
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

+ (id)visibleStringFromData:(id)data
{
  dataCopy = data;
  v4 = dataCopy;
  v8 = 0;
  if (dataCopy)
  {
    if ([dataCopy length])
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

+ (id)hexStringFromData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v4 = objc_alloc_init(NSMutableString);
    v5 = [dataCopy length];
    bytes = [dataCopy bytes];
    if (v5)
    {
      v7 = bytes;
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

+ (id)macAddressStringFromData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v4 = objc_alloc_init(NSMutableString);
    v5 = [dataCopy length];
    bytes = [dataCopy bytes];
    if (v5)
    {
      v7 = bytes;
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

+ (id)macAddressStringFromSysconfigDataSixByte:(id)byte
{
  byteCopy = byte;
  if (byteCopy)
  {
    v4 = objc_alloc_init(NSMutableString);
    if ([byteCopy length] <= 6)
    {
      v5 = [byteCopy length];
    }

    else
    {
      v5 = 6;
    }

    bytes = [byteCopy bytes];
    if (v5)
    {
      v7 = bytes;
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

- (id)stringByRemovingCharactersInString:(id)string
{
  stringCopy = string;
  selfCopy = self;
  if (stringCopy && [stringCopy length])
  {
    v6 = 0;
    do
    {
      v7 = [stringCopy substringWithRange:{v6, 1}];
      v8 = [(NSString *)selfCopy stringByReplacingOccurrencesOfString:v7 withString:&stru_100014878];

      ++v6;
      selfCopy = v8;
    }

    while ([stringCopy length] > v6);
  }

  else
  {
    v8 = selfCopy;
  }

  return v8;
}

- (id)stringByTrimmingCharactersInString:(id)string
{
  selfCopy = self;
  if (string)
  {
    v5 = [NSCharacterSet characterSetWithCharactersInString:string];
    v6 = [(NSString *)selfCopy stringByTrimmingCharactersInSet:v5];

    selfCopy = v6;
  }

  return selfCopy;
}

- (id)stringByLeftTrimmingCharacter:(char)character
{
  uTF8String = [(NSString *)self UTF8String];
  v5 = strlen(uTF8String);
  v6 = 0;
  if (v5)
  {
    while (uTF8String[v6] == character)
    {
      if (v5 == ++v6)
      {
        v6 = v5;
        break;
      }
    }
  }

  v7 = [[NSString alloc] initWithBytes:&uTF8String[v6] length:v5 - v6 encoding:4];

  return v7;
}

- (id)stringByRightTrimmingCharacter:(char)character
{
  uTF8String = [(NSString *)self UTF8String];
  for (i = strlen(uTF8String); i; --i)
  {
    if (uTF8String[i - 1] != character)
    {
      break;
    }
  }

  v6 = [[NSString alloc] initWithBytes:uTF8String length:i encoding:4];

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