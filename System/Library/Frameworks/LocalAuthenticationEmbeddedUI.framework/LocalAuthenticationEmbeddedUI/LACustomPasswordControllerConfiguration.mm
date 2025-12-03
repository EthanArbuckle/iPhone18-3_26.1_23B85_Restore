@interface LACustomPasswordControllerConfiguration
+ (LACustomPasswordControllerConfiguration)enterCustomPasswordConfiguration;
+ (LACustomPasswordControllerConfiguration)registerCustomPasswordConfiguration;
+ (id)enterCustomPasswordConfigurationWithPrompt:(id)prompt;
+ (id)registerCustomPasswordControllerConfigurationWithPrompt:(id)prompt verifyPrompt:(id)verifyPrompt;
- (id)initWithPrompt:(void *)prompt verifyPromptPrompt:(void *)promptPrompt mode:;
@end

@implementation LACustomPasswordControllerConfiguration

- (id)initWithPrompt:(void *)prompt verifyPromptPrompt:(void *)promptPrompt mode:
{
  v8 = a2;
  promptCopy = prompt;
  if (self)
  {
    v14.receiver = self;
    v14.super_class = LACustomPasswordControllerConfiguration;
    v10 = objc_msgSendSuper2(&v14, sel_init);
    self = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 1, a2);
      objc_storeStrong(self + 2, prompt);
      self[3] = promptPrompt;
      v11 = +[LACustomPasswordControllerStyle sheetStyle];
      v12 = self[6];
      self[6] = v11;
    }
  }

  return self;
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

+ (id)registerCustomPasswordControllerConfigurationWithPrompt:(id)prompt verifyPrompt:(id)verifyPrompt
{
  verifyPromptCopy = verifyPrompt;
  promptCopy = prompt;
  v7 = [[LACustomPasswordControllerConfiguration alloc] initWithPrompt:promptCopy verifyPromptPrompt:verifyPromptCopy mode:1];

  return v7;
}

+ (id)enterCustomPasswordConfigurationWithPrompt:(id)prompt
{
  promptCopy = prompt;
  v4 = [[LACustomPasswordControllerConfiguration alloc] initWithPrompt:promptCopy verifyPromptPrompt:0 mode:0];

  return v4;
}

@end