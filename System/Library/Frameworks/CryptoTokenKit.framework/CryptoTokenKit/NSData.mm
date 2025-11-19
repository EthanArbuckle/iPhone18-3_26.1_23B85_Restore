@interface NSData
+ (id)dataFromAIDString:(id)a3;
+ (id)dataFromHistoricalBytes:(id)a3;
+ (unsigned)calculateChecksumForData:(id)a3;
- (id)hexString;
@end

@implementation NSData

+ (id)dataFromHistoricalBytes:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableData data];
  v11 = 59;
  [v5 appendBytes:&v11 length:1];
  v10 = [v4 length] & 0xF | 0x80;
  [v5 appendBytes:&v10 length:1];
  v9 = 17;
  [v5 appendBytes:&v9 length:1];
  v8 = -127;
  [v5 appendBytes:&v8 length:1];
  [v5 appendData:v4];

  v7 = [a1 calculateChecksumForData:v5];
  [v5 appendBytes:&v7 length:1];

  return v5;
}

+ (unsigned)calculateChecksumForData:(id)a3
{
  v3 = a3;
  v4 = [v3 bytes];
  if ([v3 length] < 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v5 ^= v4[v6++];
    }

    while (v6 < [v3 length]);
  }

  return v5;
}

+ (id)dataFromAIDString:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [v3 uppercaseString];
    v5 = [NSMutableCharacterSet characterSetWithCharactersInString:@"0123456789ABCDEF"];
    v6 = +[NSCharacterSet whitespaceCharacterSet];
    [v5 formUnionWithCharacterSet:v6];

    v7 = [v5 invertedSet];
    v8 = [v4 rangeOfCharacterFromSet:v7];

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = +[NSCharacterSet whitespaceCharacterSet];
      v10 = [v4 componentsSeparatedByCharactersInSet:v9];
      v11 = [v10 componentsJoinedByString:&stru_1000392E8];

      if ([v11 length] && (objc_msgSend(v11, "length") & 1) == 0 && objc_msgSend(v11, "length") <= 0x20)
      {
        v14 = +[NSMutableData dataWithCapacity:](NSMutableData, "dataWithCapacity:", [v11 length] >> 1);
        v22 = 0;
        *__str = 0;
        v15 = [v11 UTF8String];
        if ([v11 length])
        {
          v16 = 0;
          while (1)
          {
            __str[0] = v15[v16];
            __str[1] = v15[v16 + 1];
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
  v3 = [(NSData *)self bytes];
  if (v3)
  {
    v4 = v3;
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