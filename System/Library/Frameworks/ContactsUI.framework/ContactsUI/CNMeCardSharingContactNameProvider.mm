@interface CNMeCardSharingContactNameProvider
+ (id)descriptorForRequiredKeys;
- (CNMeCardSharingContactNameProvider)initWithContact:(id)contact;
@end

@implementation CNMeCardSharingContactNameProvider

- (CNMeCardSharingContactNameProvider)initWithContact:(id)contact
{
  contactCopy = contact;
  v10.receiver = self;
  v10.super_class = CNMeCardSharingContactNameProvider;
  v6 = [(CNMeCardSharingContactNameProvider *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contact, contact);
    v8 = v7;
  }

  return v7;
}

+ (id)descriptorForRequiredKeys
{
  if (descriptorForRequiredKeys_cn_once_token_1_48978 != -1)
  {
    dispatch_once(&descriptorForRequiredKeys_cn_once_token_1_48978, &__block_literal_global_48979);
  }

  v3 = descriptorForRequiredKeys_cn_once_object_1_48980;

  return v3;
}

void __63__CNMeCardSharingContactNameProvider_descriptorForRequiredKeys__block_invoke()
{
  v7[4] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695C2F0];
  v7[0] = *MEMORY[0x1E695C240];
  v7[1] = v0;
  v1 = *MEMORY[0x1E695C310];
  v7[2] = *MEMORY[0x1E695C230];
  v7[3] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];
  v3 = MEMORY[0x1E695CD58];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNMeCardSharingContactNameProvider descriptorForRequiredKeys]_block_invoke"];
  v5 = [v3 descriptorWithKeyDescriptors:v2 description:v4];

  v6 = descriptorForRequiredKeys_cn_once_object_1_48980;
  descriptorForRequiredKeys_cn_once_object_1_48980 = v5;
}

@end