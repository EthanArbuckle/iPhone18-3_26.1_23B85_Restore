@interface LACustomPasswordControllerConfiguration
+ (LACustomPasswordControllerConfiguration)enterCustomPasswordConfiguration;
+ (LACustomPasswordControllerConfiguration)registerCustomPasswordConfiguration;
+ (id)enterCustomPasswordConfigurationWithPrompt:(id)a3;
+ (id)registerCustomPasswordControllerConfigurationWithPrompt:(id)a3 verifyPrompt:(id)a4;
- (id)initWithPrompt:(void *)a3 verifyPromptPrompt:(void *)a4 mode:;
@end

@implementation LACustomPasswordControllerConfiguration

- (id)initWithPrompt:(void *)a3 verifyPromptPrompt:(void *)a4 mode:
{
  v8 = a2;
  v9 = a3;
  if (a1)
  {
    v14.receiver = a1;
    v14.super_class = LACustomPasswordControllerConfiguration;
    v10 = objc_msgSendSuper2(&v14, sel_init);
    a1 = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
      a1[3] = a4;
      v11 = +[LACustomPasswordControllerStyle sheetStyle];
      v12 = a1[6];
      a1[6] = v11;
    }
  }

  return a1;
}

+ (LACustomPasswordControllerConfiguration)registerCustomPasswordConfiguration
{
  v2 = [[LACustomPasswordControllerConfiguration alloc] initWithPrompt:0 verifyPromptPrompt:1 mode:?];

  return v2;
}

+ (LACustomPasswordControllerConfiguration)enterCustomPasswordConfiguration
{
  v2 = [[LACustomPasswordControllerConfiguration alloc] initWithPrompt:0 verifyPromptPrompt:0 mode:?];

  return v2;
}

+ (id)registerCustomPasswordControllerConfigurationWithPrompt:(id)a3 verifyPrompt:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[LACustomPasswordControllerConfiguration alloc] initWithPrompt:v6 verifyPromptPrompt:v5 mode:1];

  return v7;
}

+ (id)enterCustomPasswordConfigurationWithPrompt:(id)a3
{
  v3 = a3;
  v4 = [[LACustomPasswordControllerConfiguration alloc] initWithPrompt:v3 verifyPromptPrompt:0 mode:0];

  return v4;
}

@end