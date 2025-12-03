@interface NSData
+ (id)dataFromAIDString:(id)string;
+ (id)dataFromHistoricalBytes:(id)bytes;
+ (unsigned)calculateChecksumForData:(id)data;
- (id)hexString;
@end

@implementation NSData

+ (id)dataFromHistoricalBytes:(id)bytes
{
  bytesCopy = bytes;
  v5 = +[NSMutableData data];
  v11 = 59;
  [v5 appendBytes:&v11 length:1];
  v10 = [bytesCopy length] & 0xF | 0x80;
  [v5 appendBytes:&v10 length:1];
  v9 = 17;
  [v5 appendBytes:&v9 length:1];
  v8 = -127;
  [v5 appendBytes:&v8 length:1];
  [v5 appendData:bytesCopy];

  v7 = [self calculateChecksumForData:v5];
  [v5 appendBytes:&v7 length:1];

  return v5;
}

+ (unsigned)calculateChecksumForData:(id)data
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  if ([dataCopy length] < 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v5 ^= bytes[v6++];
    }

    while (v6 < [dataCopy length]);
  }

  return v5;
}

+ (id)dataFromAIDString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    uppercaseString = [stringCopy uppercaseString];
    v5 = [NSMutableCharacterSet characterSetWithCharactersInString:@"0123456789ABCDEF"];
    v6 = +[NSCharacterSet whitespaceCharacterSet];
    [v5 formUnionWithCharacterSet:v6];

    invertedSet = [v5 invertedSet];
    v8 = [uppercaseString rangeOfCharacterFromSet:invertedSet];

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = +[NSCharacterSet whitespaceCharacterSet];
      v10 = [uppercaseString componentsSeparatedByCharactersInSet:v9];
      v11 = [v10 componentsJoinedByString:&stru_1000392E8];

      if ([v11 length] && (objc_msgSend(v11, "length") & 1) == 0 && objc_msgSend(v11, "length") <= 0x20)
      {
        v14 = +[NSMutableData dataWithCapacity:](NSMutableData, "dataWithCapacity:", [v11 length] >> 1);
        v22 = 0;
        *__str = 0;
        uTF8String = [v11 UTF8String];
        if ([v11 length])
        {
          v16 = 0;
          while (1)
          {
            __str[0] = uTF8String[v16];
            __str[1] = uTF8String[v16 + 1];
            __endptr = 0;
            v17 = strtol(__str, &__endptr, 16);
            if (v17 > 255 || __endptr != &v22)
            {
              break;
            }

            v19 = v17;
            [v14 appendBytes:&v19 length:1];
            v16 += 2;
            if (v16 >= [v11 length])
            {
              goto LABEL_22;
            }
          }

          v12 = 0;
        }

        else
        {
LABEL_22:
          v12 = v14;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)hexString
{
  bytes = [(NSData *)self bytes];
  if (bytes)
  {
    v4 = bytes;
    v5 = +[NSMutableString string];
    if ([(NSData *)self length])
    {
      v6 = 0;
      do
      {
        [(__CFString *)v5 appendFormat:@"%02x", v4[v6++]];
      }

      while (v6 < [(NSData *)self length]);
    }
  }

  else
  {
    v5 = &stru_1000392E8;
  }

  return v5;
}

@end