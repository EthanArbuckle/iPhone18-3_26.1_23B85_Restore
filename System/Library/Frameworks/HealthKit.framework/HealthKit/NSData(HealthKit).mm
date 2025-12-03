@interface NSData(HealthKit)
+ (id)hk_dataWithHexString:()HealthKit;
+ (id)hk_dataWithSHA256Fingerprint:()HealthKit error:;
+ (id)hk_nilDataMD5;
+ (id)hk_randomDataOfLength:()HealthKit;
- (id)hk_MD5;
- (id)hk_SHA256;
- (id)hk_hexString;
@end

@implementation NSData(HealthKit)

+ (id)hk_dataWithSHA256Fingerprint:()HealthKit error:
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([v5 lengthOfBytesUsingEncoding:1] != 95)
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = @"SHA256 fingerprint not of expected length.";
    v12 = a4;
    v13 = 3;
LABEL_10:
    [v10 hk_assignError:v12 code:v13 description:v11];
    goto LABEL_11;
  }

  memset(v22, 0, sizeof(v22));
  if (([v5 getCString:v22 maxLength:96 encoding:1] & 1) == 0)
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = @"Unable to instantiate C string.";
LABEL_9:
    v12 = a4;
    v13 = 100;
    goto LABEL_10;
  }

  v6 = malloc_type_malloc(0x20uLL, 0xAB14FED1uLL);
  if (!v6)
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = @"Unable to allocate space for SHA256 digest.";
    goto LABEL_9;
  }

  v7 = v6;
  v21 = 0;
  *__str = v22[0];
  __endptr = 0;
  *v6 = strtoul(__str, &__endptr, 16);
  if (__endptr != &v21)
  {
    goto LABEL_5;
  }

  v17 = v22 + 4;
  v18 = 1;
  while (*(v17 - 2) == 58)
  {
    *__str = *(v17 - 1);
    __endptr = 0;
    v7[v18++] = strtoul(__str, &__endptr, 16);
    v17 += 3;
    if (__endptr != &v21)
    {
      goto LABEL_5;
    }
  }

  if (*(v17 - 2))
  {
LABEL_5:
    free(v7);
    v8 = MEMORY[0x1E696ABC0];
    v9 = HKSensitiveLogItem(v5);
    [v8 hk_assignError:a4 code:100 format:{@"Invalid fingerprint: %@.", v9}];

LABEL_11:
    v14 = 0;
    goto LABEL_12;
  }

  v14 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v7 length:32 freeWhenDone:1];
LABEL_12:

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)hk_nilDataMD5
{
  v4 = *MEMORY[0x1E69E9840];
  CC_MD5(0, 0, md);
  v0 = [MEMORY[0x1E695DEF0] dataWithBytes:md length:16];
  v1 = *MEMORY[0x1E69E9840];

  return v0;
}

- (id)hk_MD5
{
  v5 = *MEMORY[0x1E69E9840];
  CC_MD5([self bytes], objc_msgSend(self, "length"), md);
  v1 = [MEMORY[0x1E695DEF0] dataWithBytes:md length:16];
  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

- (id)hk_SHA256
{
  v5 = *MEMORY[0x1E69E9840];
  CC_SHA256([self bytes], objc_msgSend(self, "length"), md);
  v1 = [MEMORY[0x1E695DEF0] dataWithBytes:md length:32];
  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

+ (id)hk_randomDataOfLength:()HealthKit
{
  if (a3 < 0)
  {
    [(NSData(HealthKit) *)a2 hk_randomDataOfLength:self];
  }

  v4 = [MEMORY[0x1E696AC00] fileHandleForReadingAtPath:@"/dev/random"];
  v5 = [v4 readDataOfLength:a3];

  return v5;
}

+ (id)hk_dataWithHexString:()HealthKit
{
  v3 = a3;
  if ([v3 length])
  {
LABEL_10:
    v11 = 0;
  }

  else
  {
    v4 = [v3 length] >> 1;
    lowercaseString = [v3 lowercaseString];
    uTF8String = [lowercaseString UTF8String];

    v7 = malloc_type_calloc(v4, 1uLL, 0x100004077774924uLL);
    if ([v3 length])
    {
      for (i = 0; i < [v3 length]; ++i)
      {
        v9 = *(uTF8String + i);
        v10 = v9 - 48;
        if ((v9 - 48) >= 0xA)
        {
          if ((v9 - 97) > 5)
          {
            free(v7);
            goto LABEL_10;
          }

          v10 = v9 - 87;
        }

        *(v7 + (i >> 1)) += v10 << (~(4 * i) & 4);
      }
    }

    v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v7 length:v4 freeWhenDone:1];
  }

  return v11;
}

- (id)hk_hexString
{
  v2 = 2 * [self length];
  bytes = [self bytes];
  v4 = malloc_type_calloc(v2, 1uLL, 0x100004077774924uLL);
  if ([self length])
  {
    v5 = 0;
    v6 = v4 + 1;
    do
    {
      *(v6 - 1) = hk_hexString_hexCharacters[*(bytes + v5) >> 4];
      *v6 = hk_hexString_hexCharacters[*(bytes + v5) & 0xF];
      v6 += 2;
      ++v5;
    }

    while (v5 < [self length]);
  }

  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v4 length:v2 encoding:4 freeWhenDone:1];

  return v7;
}

+ (void)hk_randomDataOfLength:()HealthKit .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSData+HealthKit.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"length >= 0"}];
}

+ (void)hk_randomDataOfLength:()HealthKit .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Failed to create random data: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end