@interface ASSettingsHelper
+ (void)openCredentialProviderAppSettingsWithCompletionHandler:(void *)completionHandler;
+ (void)openVerificationCodeAppSettingsWithCompletionHandler:(void *)completionHandler;
+ (void)requestToTurnOnCredentialProviderExtensionWithCompletionHandler:(id)handler;
@end

@implementation ASSettingsHelper

+ (void)openCredentialProviderAppSettingsWithCompletionHandler:(void *)completionHandler
{
  v3 = completionHandler;
  v4 = objc_alloc_init(MEMORY[0x1E698DFA0]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__ASSettingsHelper_openCredentialProviderAppSettingsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7AF8B28;
  v8 = v4;
  v9 = v3;
  v5 = v3;
  v6 = v4;
  [v6 openCredentialProviderAppSettingsWithCompletionHandler:v7];
}

uint64_t __75__ASSettingsHelper_openCredentialProviderAppSettingsWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (void)openVerificationCodeAppSettingsWithCompletionHandler:(void *)completionHandler
{
  v3 = completionHandler;
  v4 = objc_alloc_init(MEMORY[0x1E698DFA0]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__ASSettingsHelper_openVerificationCodeAppSettingsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7AF8B28;
  v8 = v4;
  v9 = v3;
  v5 = v3;
  v6 = v4;
  [v6 openVerificationCodeAppSettingsWithCompletionHandler:v7];
}

uint64_t __73__ASSettingsHelper_openVerificationCodeAppSettingsWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (void)requestToTurnOnCredentialProviderExtensionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = objc_alloc_init(MEMORY[0x1E698DFA0]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__ASSettingsHelper_requestToTurnOnCredentialProviderExtensionWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7AF8DF8;
  v8 = v4;
  v9 = handlerCopy;
  v5 = handlerCopy;
  v6 = v4;
  [v6 requestToTurnOnCredentialProviderExtensionWithCompletionHandler:v7];
}

uint64_t __84__ASSettingsHelper_requestToTurnOnCredentialProviderExtensionWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end