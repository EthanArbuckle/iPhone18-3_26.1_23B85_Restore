@interface NSData(HomeKit)
- (id)hm_generateSHA1;
- (id)hm_generateSHA256;
- (id)hm_stringInHexFormat;
@end

@implementation NSData(HomeKit)

- (id)hm_generateSHA256
{
  v5 = *MEMORY[0x1E69E9840];
  memset(v4, 0, sizeof(v4));
  CC_SHA256([a1 bytes], objc_msgSend(a1, "length"), v4);
  v1 = [MEMORY[0x1E695DEF0] dataWithBytes:v4 length:32];
  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

- (id)hm_generateSHA1
{
  v6 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  v4[1] = 0;
  LODWORD(v5) = 0;
  v1 = CC_SHA1([a1 bytes], objc_msgSend(a1, "length"), v4);
  if (v1)
  {
    v1 = [MEMORY[0x1E695DEF0] dataWithBytes:v4 length:20];
  }

  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

- (id)hm_stringInHexFormat
{
  v2 = [a1 bytes];
  v3 = [MEMORY[0x1E696AD60] stringWithCapacity:{2 * objc_msgSend(a1, "length")}];
  if ([a1 length])
  {
    v4 = 0;
    do
    {
      [v3 appendFormat:@"%02x", *(v2 + v4++)];
    }

    while ([a1 length] > v4);
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithString:v3];

  return v5;
}

@end