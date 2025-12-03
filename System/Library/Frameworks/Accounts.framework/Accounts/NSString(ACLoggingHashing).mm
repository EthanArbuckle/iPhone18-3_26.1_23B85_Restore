@interface NSString(ACLoggingHashing)
- (id)ac_sha512HashString;
@end

@implementation NSString(ACLoggingHashing)

- (id)ac_sha512HashString
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = [self dataUsingEncoding:10];
  v2 = v1;
  if (v1 && CC_SHA512([v1 bytes], objc_msgSend(v1, "length"), md))
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
    for (i = 0; i != 64; ++i)
    {
      [v3 appendFormat:@"%02x", md[i]];
    }

    v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"H:"];
    v6 = [v3 substringToIndex:5];
    [v5 appendString:v6];

    v7 = [v3 substringFromIndex:{objc_msgSend(v3, "length") - 5}];
    [v5 appendString:v7];

    v8 = [v5 copy];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

@end