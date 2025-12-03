@interface NSPersonNameComponents(ContactsPrivate)
+ (id)componentsForContact:()ContactsPrivate;
+ (id)descriptorForUsedKeys;
- (void)overrideComponentsInContact:()ContactsPrivate;
@end

@implementation NSPersonNameComponents(ContactsPrivate)

+ (id)descriptorForUsedKeys
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__NSPersonNameComponents_ContactsPrivate__descriptorForUsedKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (descriptorForUsedKeys_cn_once_token_0 != -1)
  {
    dispatch_once(&descriptorForUsedKeys_cn_once_token_0, block);
  }

  v1 = descriptorForUsedKeys_cn_once_object_0;

  return v1;
}

+ (id)componentsForContact:()ContactsPrivate
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E696ADF0]);
  v6 = +[CN allNameComponentRelatedProperties];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__NSPersonNameComponents_ContactsPrivate__componentsForContact___block_invoke;
  v12[3] = &unk_1E7417C28;
  selfCopy = self;
  v13 = v4;
  v7 = v5;
  v14 = v7;
  v8 = v4;
  [v6 enumerateObjectsUsingBlock:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

- (void)overrideComponentsInContact:()ContactsPrivate
{
  v4 = a3;
  v5 = +[CN allNameComponentRelatedProperties];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__NSPersonNameComponents_ContactsPrivate__overrideComponentsInContact___block_invoke;
  v7[3] = &unk_1E7417C50;
  v8 = v4;
  selfCopy = self;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
}

@end