@interface CNContactBlockingAnalyzer
+ (CNContactBlockingAnalyzer)sharedAnalyzer;
+ (CNKeyDescriptor)descriptorForRequiredKeys;
- (BOOL)isBlockedContact:(id)contact;
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
  block[4] = self;
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

- (BOOL)isBlockedContact:(id)contact
{
  v20[2] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v20[0] = @"phoneNumbers";
  v20[1] = @"emailAddresses";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  [contactCopy assertKeysAreAvailable:v4];

  phoneNumbers = [contactCopy phoneNumbers];
  firstObject = [phoneNumbers firstObject];

  if (firstObject && ([MEMORY[0x1E69966E8] currentEnvironment], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "handleBlocking"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(firstObject, "value"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "unformattedInternationalStringValue"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v8, "isHandleBlocked:", v10), v10, v9, v8, v7, (v11 & 1) != 0))
  {
    v12 = 1;
  }

  else
  {
    emailAddresses = [contactCopy emailAddresses];
    firstObject2 = [emailAddresses firstObject];

    v12 = 0;
    if (firstObject2)
    {
      currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
      handleBlocking = [currentEnvironment handleBlocking];
      value = [firstObject2 value];
      v18 = [handleBlocking isHandleBlocked:value];

      if (v18)
      {
        v12 = 1;
      }
    }
  }

  return v12;
}

@end