@interface NSPersonNameComponents
+ (id)keyPathMapping;
+ (id)keyVectorForUsedKeys;
@end

@implementation NSPersonNameComponents

void __57__NSPersonNameComponents_ContactsPrivate__keyPathMapping__block_invoke()
{
  v12[9] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E696A7C0];
  v11[0] = @"namePrefix";
  v11[1] = @"givenName";
  v1 = *MEMORY[0x1E696A7A8];
  v12[0] = v0;
  v12[1] = v1;
  v2 = *MEMORY[0x1E696A7B0];
  v11[2] = @"middleName";
  v11[3] = @"familyName";
  v3 = *MEMORY[0x1E696A7A0];
  v12[2] = v2;
  v12[3] = v3;
  v4 = *MEMORY[0x1E696A7C8];
  v11[4] = @"nameSuffix";
  v11[5] = @"nickname";
  v5 = *MEMORY[0x1E696A7B8];
  v12[4] = v4;
  v12[5] = v5;
  v6 = *MEMORY[0x1E696B148];
  v11[6] = @"phoneticGivenName";
  v11[7] = @"phoneticMiddleName";
  v7 = *MEMORY[0x1E696B150];
  v12[6] = v6;
  v12[7] = v7;
  v11[8] = @"phoneticFamilyName";
  v12[8] = *MEMORY[0x1E696B140];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:9];
  v9 = [v8 copy];
  v10 = keyPathMapping_cn_once_object_1;
  keyPathMapping_cn_once_object_1 = v9;
}

+ (id)keyPathMapping
{
  objc_opt_self();
  if (keyPathMapping_cn_once_token_1 != -1)
  {
    +[NSPersonNameComponents keyPathMapping];
  }

  v0 = keyPathMapping_cn_once_object_1;

  return v0;
}

void __64__NSPersonNameComponents_ContactsPrivate__descriptorForUsedKeys__block_invoke()
{
  v4 = +[NSPersonNameComponents keyPathMapping];
  v0 = [v4 allKeys];
  v1 = [CNAggregateKeyDescriptor keyDescriptorWithKeyDescriptors:v0 description:@"Person name components"];
  v2 = [v1 copy];
  v3 = descriptorForUsedKeys_cn_once_object_0;
  descriptorForUsedKeys_cn_once_object_0 = v2;
}

void __64__NSPersonNameComponents_ContactsPrivate__componentsForContact___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 key];
  v4 = +[NSPersonNameComponents keyPathMapping];
  v5 = [v4 objectForKeyedSubscript:v3];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [v11 key];
    LODWORD(v6) = [v6 isKeyAvailable:v7];

    if (v6)
    {
      v8 = [v11 CNValueForContact:*(a1 + 32)];
      if (!v8)
      {
LABEL_9:

        goto LABEL_10;
      }

      v9 = +[CN allPhoneticNameComponentProperties];
      if ([v9 containsObject:v11])
      {
        v10 = [*(a1 + 40) phoneticRepresentation];

        if (v10)
        {
LABEL_8:
          [*(a1 + 40) setValue:v8 forKeyPath:v5];
          goto LABEL_9;
        }

        v9 = objc_alloc_init(MEMORY[0x1E696ADF0]);
        [*(a1 + 40) setPhoneticRepresentation:v9];
      }

      goto LABEL_8;
    }
  }

LABEL_10:
}

void __71__NSPersonNameComponents_ContactsPrivate__overrideComponentsInContact___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 key];
  v4 = +[NSPersonNameComponents keyPathMapping];
  v5 = [v4 objectForKeyedSubscript:v3];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [v9 key];
    LODWORD(v6) = [v6 isKeyAvailable:v7];

    if (v6)
    {
      v8 = [*(a1 + 40) valueForKeyPath:v5];
      [v9 setCNValue:v8 onContact:*(a1 + 32)];
    }
  }
}

+ (id)keyVectorForUsedKeys
{
  v0 = objc_opt_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__NSPersonNameComponents_ContactsInternal__keyVectorForUsedKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v0;
  if (keyVectorForUsedKeys_cn_once_token_2 != -1)
  {
    dispatch_once(&keyVectorForUsedKeys_cn_once_token_2, block);
  }

  v1 = keyVectorForUsedKeys_cn_once_object_2;

  return v1;
}

void __64__NSPersonNameComponents_ContactsInternal__keyVectorForUsedKeys__block_invoke()
{
  v4 = +[NSPersonNameComponents keyPathMapping];
  v0 = [v4 allKeys];
  v1 = [CNContactKeyVector keyVectorWithKeys:v0];
  v2 = [v1 copy];
  v3 = keyVectorForUsedKeys_cn_once_object_2;
  keyVectorForUsedKeys_cn_once_object_2 = v2;
}

@end