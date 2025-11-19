@interface NSUUID(AppleMediaServices)
- (id)ams_base62String;
@end

@implementation NSUUID(AppleMediaServices)

- (id)ams_base62String
{
  v8[2] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  v8[1] = 0;
  [a1 getUUIDBytes:v8];
  v1 = 0;
  v2 = v7;
  do
  {
    v3 = *(v8 + v1);
    for (i = 5; i != -1; --i)
    {
      v2[i] = Base62Chars[v3 % 0x3E];
      v3 /= 0x3Eu;
    }

    ++v1;
    v2 += 6;
  }

  while (v1 != 4);
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v7 length:24 encoding:4];

  return v5;
}

@end