@interface NSData
+ (NSData)dataWithHexString:(id)string;
+ (NSData)dataWithMACAddressString:(id)string;
- (id)hexString;
@end

@implementation NSData

+ (NSData)dataWithHexString:(id)string
{
  v3 = [NSString sanitizedHexString:string];
  if ([v3 length])
  {
    v9 = sub_10000EE80();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_10001F498(v3, v9);
    }

    v5 = 0;
  }

  else
  {
    v12 = 0;
    lowercaseString = [v3 lowercaseString];

    v5 = objc_opt_new();
    v6 = [lowercaseString length];
    if (v6 >= 2)
    {
      v7 = 0;
      v8 = v6 - 1;
      do
      {
        __str[0] = [lowercaseString characterAtIndex:v7];
        __str[1] = [lowercaseString characterAtIndex:v7 + 1];
        HIBYTE(v12) = strtol(__str, 0, 16);
        [v5 appendBytes:&v12 + 1 length:1];
        v7 += 2;
      }

      while (v8 > v7);
    }

    v3 = lowercaseString;
  }

  return v5;
}

+ (NSData)dataWithMACAddressString:(id)string
{
  v3 = [NSString sanitizedHexString:string];
  if ([v3 length] == 12)
  {
    v4 = [NSData dataWithHexString:v3];
  }

  else
  {
    v5 = sub_10000EE80();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_10001F510(v3, v5);
    }

    v4 = 0;
  }

  return v4;
}

- (id)hexString
{
  [NSMutableString stringWithCapacity:2 * [(NSData *)self length]];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001D8A0;
  v7 = v6[3] = &unk_100039C70;
  v3 = v7;
  [(NSData *)self enumerateByteRangesUsingBlock:v6];
  v4 = [NSString stringWithString:v3];

  return v4;
}

@end