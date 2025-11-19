@interface NSData
+ (NSData)dataWithHexString:(id)a3;
- (id)convertToHexString;
@end

@implementation NSData

- (id)convertToHexString
{
  v3 = [(NSData *)self bytes];
  v4 = [(NSData *)self length];
  for (i = objc_alloc_init(NSMutableString); v4; --v4)
  {
    v6 = *v3++;
    [i appendFormat:@"%02X", v6];
  }

  v7 = [NSString stringWithString:i];

  return v7;
}

+ (NSData)dataWithHexString:(id)a3
{
  v3 = a3;
  v4 = v3;
  v16 = 0;
  if (v3)
  {
    v5 = [v3 lowercaseString];

    v4 = objc_opt_new();
    v6 = [v5 length];
    if (v6 >= 2)
    {
      v7 = 0;
      v8 = v6 - 1;
      do
      {
        v9 = v7 + 1;
        v10 = [v5 characterAtIndex:v7];
        if (v10 >= 48)
        {
          v11 = v10 & 0x7F;
          v12 = v10 <= 0x39u || v11 >= 0x61;
          v13 = !v12;
          if (v11 <= 0x66 && !v13)
          {
            __str[0] = v10;
            __str[1] = [v5 characterAtIndex:v9];
            HIBYTE(v16) = strtol(__str, 0, 16);
            [v4 appendBytes:&v16 + 1 length:1];
            v9 = v7 + 2;
          }
        }

        v7 = v9;
      }

      while (v9 < v8);
    }
  }

  else
  {
    v5 = handleForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100002898(v5);
      v4 = 0;
    }
  }

  return v4;
}

@end