@interface LSApplicationExtensionRecord(FPUIAdditions)
+ (id)fpui_extensionRecordByFiltering:()FPUIAdditions useCase:isUIExtension:;
+ (id)fpui_extensionRecordForIdentifier:()FPUIAdditions useCase:isUIExtension:;
+ (id)fpui_extensionRecordForURL:()FPUIAdditions useCase:isUIExtension:;
+ (uint64_t)_fpui_exactPlatformRequiredExtensionUseCase:()FPUIAdditions isUIExtension:;
- (id)fpui_entitlementValueForKey:()FPUIAdditions ofClass:;
- (id)fpui_extensionInfoForKey:()FPUIAdditions ofClass:;
@end

@implementation LSApplicationExtensionRecord(FPUIAdditions)

+ (id)fpui_extensionRecordForIdentifier:()FPUIAdditions useCase:isUIExtension:
{
  v8 = MEMORY[0x277CC1E50];
  v9 = a3;
  v10 = [[v8 alloc] initWithBundleIdentifier:v9 error:0];

  v11 = [self fpui_extensionRecordByFiltering:v10 useCase:a4 isUIExtension:a5];

  return v11;
}

+ (id)fpui_extensionRecordForURL:()FPUIAdditions useCase:isUIExtension:
{
  v8 = MEMORY[0x277CC1E50];
  v9 = a3;
  v10 = [[v8 alloc] initWithURL:v9 error:0];

  v11 = [self fpui_extensionRecordByFiltering:v10 useCase:a4 isUIExtension:a5];

  return v11;
}

+ (id)fpui_extensionRecordByFiltering:()FPUIAdditions useCase:isUIExtension:
{
  v8 = a3;
  if (v8 && ((v9 = [self _fpui_exactPlatformRequiredExtensionUseCase:a4 isUIExtension:a5]) == 0 || objc_msgSend(v8, "platform") == v9))
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (uint64_t)_fpui_exactPlatformRequiredExtensionUseCase:()FPUIAdditions isUIExtension:
{
  if (!a4)
  {
    return 0;
  }

  bundleRecordForCurrentProcess = [MEMORY[0x277CC1E90] bundleRecordForCurrentProcess];
  if (!bundleRecordForCurrentProcess)
  {
    return 0;
  }

  v5 = bundleRecordForCurrentProcess;
  platform = [bundleRecordForCurrentProcess platform];

  if ((platform - 13) <= 0xFFFFFFFD)
  {
    return 0;
  }

  return platform;
}

- (id)fpui_extensionInfoForKey:()FPUIAdditions ofClass:
{
  v4 = a3;
  infoDictionary = [self infoDictionary];
  v6 = [infoDictionary objectForKey:@"NSExtension" ofClass:objc_opt_class()];

  v7 = [v6 objectForKey:v4];

  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)fpui_entitlementValueForKey:()FPUIAdditions ofClass:
{
  v6 = a3;
  entitlements = [self entitlements];
  v8 = [entitlements objectForKey:v6 ofClass:a4];

  return v8;
}

@end