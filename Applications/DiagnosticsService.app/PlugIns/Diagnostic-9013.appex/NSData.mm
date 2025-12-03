@interface NSData
+ (NSData)dataWithHexString:(id)string;
- (id)convertToHexString;
@end

@implementation NSData

- (id)convertToHexString
{
  bytes = [(NSData *)self bytes];
  v4 = [(NSData *)self length];
  for (i = objc_alloc_init(NSMutableString); v4; --v4)
  {
    v6 = *bytes++;
    [i appendFormat:@"%02X", v6];
  }

  v7 = [NSString stringWithString:i];

  return v7;
}

+ (NSData)dataWithHexString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  v16 = 0;
  if (stringCopy)
  {
    lowercaseString = [stringCopy lowercaseString];

    v4 = objc_opt_new();
    v6 = [lowercaseString length];
    if (v6 >= 2)
    {
      v7 = 0;
      v8 = v6 - 1;
      do
      {
        v9 = v7 + 1;
        v10 = [lowercaseString characterAtIndex:v7];
        if (v10 >= 48)
        {
          v11 = v10 & 0x7F;
          v12 = v10 <= 0x39u || v11 >= 0x61;
          v13 = !v12;
          if (v11 <= 0x66 && !v13)
          {
            __str[0] = v10;
            __str[1] = [lowercaseString characterAtIndex:v9];
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
    lowercaseString = handleForCategory(0);
    if (os_log_type_enabled(lowercaseString, OS_LOG_TYPE_ERROR))
    {
      sub_100002898(lowercaseString);
      v4 = 0;
    }
  }

  return v4;
}

@end