@interface CNContactBlockingAnalyzer
+ (CNContactBlockingAnalyzer)sharedAnalyzer;
+ (CNKeyDescriptor)descriptorForRequiredKeys;
- (BOOL)isBlockedContact:(id)a3;
@end

@implementation CNContactBlockingAnalyzer

+ (CNKeyDescriptor)descriptorForRequiredKeys
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = @"phoneNumbers";
  v5[1] = @"emailAddresses";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v3 = [CNAggregateKeyDescriptor keyDescriptorWithKeyDescriptors:v2 description:@"CNContactBlockingAnalyzer"];

  return v3;
}

+ (CNContactBlockingAnalyzer)sharedAnalyzer
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__CNContactBlockingAnalyzer_sharedAnalyzer__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedAnalyzer_cn_once_token_0 != -1)
  {
    dispatch_once(&sharedAnalyzer_cn_once_token_0, block);
  }

  v2 = sharedAnalyzer_cn_once_object_0;

  return v2;
}

uint64_t __43__CNContactBlockingAnalyzer_sharedAnalyzer__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedAnalyzer_cn_once_object_0;
  sharedAnalyzer_cn_once_object_0 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (BOOL)isBlockedContact:(id)a3
{
  v20[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v20[0] = @"phoneNumbers";
  v20[1] = @"emailAddresses";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  [v3 assertKeysAreAvailable:v4];

  v5 = [v3 phoneNumbers];
  v6 = [v5 firstObject];

  if (v6 && ([MEMORY[0x1E69966E8] currentEnvironment], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "handleBlocking"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "value"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "unformattedInternationalStringValue"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v8, "isHandleBlocked:", v10), v10, v9, v8, v7, (v11 & 1) != 0))
  {
    v12 = 1;
  }

  else
  {
    v13 = [v3 emailAddresses];
    v14 = [v13 firstObject];

    v12 = 0;
    if (v14)
    {
      v15 = [MEMORY[0x1E69966E8] currentEnvironment];
      v16 = [v15 handleBlocking];
      v17 = [v14 value];
      v18 = [v16 isHandleBlocked:v17];

      if (v18)
      {
        v12 = 1;
      }
    }
  }

  return v12;
}

@end