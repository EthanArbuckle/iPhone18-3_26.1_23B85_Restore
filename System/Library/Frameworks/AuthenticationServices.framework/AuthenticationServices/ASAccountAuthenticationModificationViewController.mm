@interface ASAccountAuthenticationModificationViewController
- (ASAccountAuthenticationModificationExtensionContext)extensionContext;
- (void)cancelRequest;
- (void)changePasswordWithoutUserInteractionForServiceIdentifier:(ASCredentialServiceIdentifier *)serviceIdentifier existingCredential:(ASPasswordCredential *)existingCredential newPassword:(NSString *)newPassword userInfo:(NSDictionary *)userInfo;
- (void)convertAccountToSignInWithAppleWithoutUserInteractionForServiceIdentifier:(ASCredentialServiceIdentifier *)serviceIdentifier existingCredential:(ASPasswordCredential *)existingCredential userInfo:(NSDictionary *)userInfo;
- (void)prepareInterfaceToChangePasswordForServiceIdentifier:(ASCredentialServiceIdentifier *)serviceIdentifier existingCredential:(ASPasswordCredential *)existingCredential newPassword:(NSString *)newPassword userInfo:(NSDictionary *)userInfo;
- (void)prepareInterfaceToConvertAccountToSignInWithAppleForServiceIdentifier:(ASCredentialServiceIdentifier *)serviceIdentifier existingCredential:(ASPasswordCredential *)existingCredential userInfo:(NSDictionary *)userInfo;
@end

@implementation ASAccountAuthenticationModificationViewController

- (ASAccountAuthenticationModificationExtensionContext)extensionContext
{
  v4.receiver = self;
  v4.super_class = ASAccountAuthenticationModificationViewController;
  extensionContext = [(ASAccountAuthenticationModificationViewController *)&v4 extensionContext];

  return extensionContext;
}

- (void)convertAccountToSignInWithAppleWithoutUserInteractionForServiceIdentifier:(ASCredentialServiceIdentifier *)serviceIdentifier existingCredential:(ASPasswordCredential *)existingCredential userInfo:(NSDictionary *)userInfo
{
  v7 = objc_opt_class();
  MethodImplementation = class_getMethodImplementation(v7, a2);
  v9 = objc_opt_class();
  v10 = class_getMethodImplementation(v9, a2);
  object_getClassName(self);
  v11 = [objc_opt_class() description];
  [v11 containsString:@"."];

  v12 = WBS_LOG_CHANNEL_PREFIXAccountAuthenticationModificationExtension();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
  if (MethodImplementation == v10)
  {
    if (v13)
    {
      [ASAccountAuthenticationModificationViewController convertAccountToSignInWithAppleWithoutUserInteractionForServiceIdentifier:existingCredential:userInfo:];
    }
  }

  else if (v13)
  {
    [ASAccountAuthenticationModificationViewController convertAccountToSignInWithAppleWithoutUserInteractionForServiceIdentifier:existingCredential:userInfo:];
  }

  extensionContext = [(ASAccountAuthenticationModificationViewController *)self extensionContext];
  v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ASExtensionErrorDomain" code:1000 userInfo:0];
  [extensionContext cancelRequestWithError:v15];
}

- (void)prepareInterfaceToConvertAccountToSignInWithAppleForServiceIdentifier:(ASCredentialServiceIdentifier *)serviceIdentifier existingCredential:(ASPasswordCredential *)existingCredential userInfo:(NSDictionary *)userInfo
{
  v7 = objc_opt_class();
  MethodImplementation = class_getMethodImplementation(v7, a2);
  v9 = objc_opt_class();
  v10 = class_getMethodImplementation(v9, a2);
  object_getClassName(self);
  v11 = [objc_opt_class() description];
  [v11 containsString:@"."];

  v12 = WBS_LOG_CHANNEL_PREFIXAccountAuthenticationModificationExtension();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
  if (MethodImplementation == v10)
  {
    if (v13)
    {
      [ASAccountAuthenticationModificationViewController convertAccountToSignInWithAppleWithoutUserInteractionForServiceIdentifier:existingCredential:userInfo:];
    }
  }

  else if (v13)
  {
    [ASAccountAuthenticationModificationViewController convertAccountToSignInWithAppleWithoutUserInteractionForServiceIdentifier:existingCredential:userInfo:];
  }

  extensionContext = [(ASAccountAuthenticationModificationViewController *)self extensionContext];
  v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ASExtensionErrorDomain" code:1000 userInfo:0];
  [extensionContext cancelRequestWithError:v15];
}

- (void)changePasswordWithoutUserInteractionForServiceIdentifier:(ASCredentialServiceIdentifier *)serviceIdentifier existingCredential:(ASPasswordCredential *)existingCredential newPassword:(NSString *)newPassword userInfo:(NSDictionary *)userInfo
{
  v8 = objc_opt_class();
  MethodImplementation = class_getMethodImplementation(v8, a2);
  v10 = objc_opt_class();
  v11 = class_getMethodImplementation(v10, a2);
  object_getClassName(self);
  v12 = [objc_opt_class() description];
  [v12 containsString:@"."];

  v13 = WBS_LOG_CHANNEL_PREFIXAccountAuthenticationModificationExtension();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
  if (MethodImplementation == v11)
  {
    if (v14)
    {
      [ASAccountAuthenticationModificationViewController convertAccountToSignInWithAppleWithoutUserInteractionForServiceIdentifier:existingCredential:userInfo:];
    }
  }

  else if (v14)
  {
    [ASAccountAuthenticationModificationViewController convertAccountToSignInWithAppleWithoutUserInteractionForServiceIdentifier:existingCredential:userInfo:];
  }

  extensionContext = [(ASAccountAuthenticationModificationViewController *)self extensionContext];
  v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ASExtensionErrorDomain" code:1000 userInfo:0];
  [extensionContext cancelRequestWithError:v16];
}

- (void)prepareInterfaceToChangePasswordForServiceIdentifier:(ASCredentialServiceIdentifier *)serviceIdentifier existingCredential:(ASPasswordCredential *)existingCredential newPassword:(NSString *)newPassword userInfo:(NSDictionary *)userInfo
{
  v8 = objc_opt_class();
  MethodImplementation = class_getMethodImplementation(v8, a2);
  v10 = objc_opt_class();
  v11 = class_getMethodImplementation(v10, a2);
  object_getClassName(self);
  v12 = [objc_opt_class() description];
  [v12 containsString:@"."];

  v13 = WBS_LOG_CHANNEL_PREFIXAccountAuthenticationModificationExtension();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
  if (MethodImplementation == v11)
  {
    if (v14)
    {
      [ASAccountAuthenticationModificationViewController convertAccountToSignInWithAppleWithoutUserInteractionForServiceIdentifier:existingCredential:userInfo:];
    }
  }

  else if (v14)
  {
    [ASAccountAuthenticationModificationViewController convertAccountToSignInWithAppleWithoutUserInteractionForServiceIdentifier:existingCredential:userInfo:];
  }

  extensionContext = [(ASAccountAuthenticationModificationViewController *)self extensionContext];
  v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ASExtensionErrorDomain" code:1000 userInfo:0];
  [extensionContext cancelRequestWithError:v16];
}

- (void)cancelRequest
{
  extensionContext = [(ASAccountAuthenticationModificationViewController *)self extensionContext];
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ASExtensionErrorDomain" code:1 userInfo:0];
  [extensionContext cancelRequestWithError:v2];
}

- (void)convertAccountToSignInWithAppleWithoutUserInteractionForServiceIdentifier:existingCredential:userInfo:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_4(&dword_1B1C8D000, v0, v1, "Class %{public}s's implementation of %{public}s should not call super. Canceling extension request.");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)convertAccountToSignInWithAppleWithoutUserInteractionForServiceIdentifier:existingCredential:userInfo:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_4(&dword_1B1C8D000, v0, v1, "Class %{public}s must override %{public}s. Canceling extension request.");
  v2 = *MEMORY[0x1E69E9840];
}

@end