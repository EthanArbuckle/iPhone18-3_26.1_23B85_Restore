@interface SOPreferences
+ (BOOL)BOOLValueForKey:(__CFString *)a3 defaultValue:(BOOL)a4;
+ (BOOL)isAssociatedDomainValidated;
+ (BOOL)isExtensionSignatureValidated;
@end

@implementation SOPreferences

+ (BOOL)BOOLValueForKey:(__CFString *)a3 defaultValue:(BOOL)a4
{
  v6 = *MEMORY[0x1E695E898];
  v7 = CFPreferencesCopyValue(a3, @"com.apple.AppSSO", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (v7 || (v7 = CFPreferencesCopyValue(a3, @"com.apple.AppSSO", *MEMORY[0x1E695E8A0], v6)) != 0)
  {
    v8 = v7;
    a4 = [v7 BOOLValue];
  }

  return a4;
}

+ (BOOL)isExtensionSignatureValidated
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__SOPreferences_isExtensionSignatureValidated__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (isExtensionSignatureValidated_onceToken != -1)
  {
    dispatch_once(&isExtensionSignatureValidated_onceToken, block);
  }

  return isExtensionSignatureValidated_extensionSignatureValidated;
}

void __46__SOPreferences_isExtensionSignatureValidated__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if ([getSOUtilsClass_0() isInternalBuild])
  {
    CFPreferencesSynchronize(@"com.apple.AppSSO", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
    v2 = [*(a1 + 32) BOOLValueForKey:@"ExtensionSignatureValidated" defaultValue:1];
  }

  else
  {
    v2 = 1;
  }

  isExtensionSignatureValidated_extensionSignatureValidated = v2;
  v3 = SO_LOG_SOPreferences();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (isExtensionSignatureValidated_extensionSignatureValidated)
    {
      v4 = "YES";
    }

    else
    {
      v4 = "NO";
    }

    v6 = 136446210;
    v7 = v4;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "extensionSignatureValidated=%{public}s", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

+ (BOOL)isAssociatedDomainValidated
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__SOPreferences_isAssociatedDomainValidated__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (isAssociatedDomainValidated_onceToken != -1)
  {
    dispatch_once(&isAssociatedDomainValidated_onceToken, block);
  }

  return isAssociatedDomainValidated_associatedDomainValidated;
}

void __44__SOPreferences_isAssociatedDomainValidated__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if ([getSOUtilsClass_0() isInternalBuild])
  {
    CFPreferencesSynchronize(@"com.apple.AppSSO", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
    v2 = [*(a1 + 32) BOOLValueForKey:@"AssociatedDomainValidated" defaultValue:1];
  }

  else
  {
    v2 = 1;
  }

  isAssociatedDomainValidated_associatedDomainValidated = v2;
  v3 = SO_LOG_SOPreferences();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (isAssociatedDomainValidated_associatedDomainValidated)
    {
      v4 = "YES";
    }

    else
    {
      v4 = "NO";
    }

    v6 = 136446210;
    v7 = v4;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "associatedDomainValidated=%{public}s", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

@end