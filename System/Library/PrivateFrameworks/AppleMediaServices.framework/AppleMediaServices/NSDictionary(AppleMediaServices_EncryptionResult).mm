@interface NSDictionary(AppleMediaServices_EncryptionResult)
+ (id)ams_dictionaryWithEncryptionResult:()AppleMediaServices_EncryptionResult;
- (void)ams_encryptionResult;
@end

@implementation NSDictionary(AppleMediaServices_EncryptionResult)

- (void)ams_encryptionResult
{
  v6 = [self objectForKeyedSubscript:@"data"];
  v4 = [self objectForKeyedSubscript:@"iv"];
  v5 = [self objectForKeyedSubscript:@"tag"];
  if (v6 && v4 && v5)
  {
    *a2 = v6;
    a2[1] = v4;
    a2[2] = v5;
  }

  else
  {
    __copy_constructor_8_8_s0_s8_s16(a2);
  }
}

+ (id)ams_dictionaryWithEncryptionResult:()AppleMediaServices_EncryptionResult
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v4 ams_setNullableObject:*a3 forKey:@"data"];
  [v4 ams_setNullableObject:a3[1] forKey:@"iv"];
  [v4 ams_setNullableObject:a3[2] forKey:@"tag"];
  v5 = [v4 copy];

  __destructor_8_s0_s8_s16(a3);

  return v5;
}

@end