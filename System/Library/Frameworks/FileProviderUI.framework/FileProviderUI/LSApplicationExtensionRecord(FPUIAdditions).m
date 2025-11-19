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

  v11 = [a1 fpui_extensionRecordByFiltering:v10 useCase:a4 isUIExtension:a5];

  return v11;
}

+ (id)fpui_extensionRecordForURL:()FPUIAdditions useCase:isUIExtension:
{
  v8 = MEMORY[0x277CC1E50];
  v9 = a3;
  v10 = [[v8 alloc] initWithURL:v9 error:0];

  v11 = [a1 fpui_extensionRecordByFiltering:v10 useCase:a4 isUIExtension:a5];

  return v11;
}

+ (id)fpui_extensionRecordByFiltering:()FPUIAdditions useCase:isUIExtension:
{
  v8 = a3;
  if (v8 && ((v9 = [a1 _fpui_exactPlatformRequiredExtensionUseCase:a4 isUIExtension:a5]) == 0 || objc_msgSend(v8, "platform") == v9))
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

  v4 = [MEMORY[0x277CC1E90] bundleRecordForCurrentProcess];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [v4 platform];

  if ((v6 - 13) <= 0xFFFFFFFD)
  {
    return 0;
  }

  return v6;
}

- (id)fpui_extensionInfoForKey:()FPUIAdditions ofClass:
{
  v4 = a3;
  v5 = [a1 infoDictionary];
  v6 = [v5 objectForKey:@"NSExtension" ofClass:objc_opt_class()];

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
  v7 = [a1 entitlements];
  v8 = [v7 objectForKey:v6 ofClass:a4];

  return v8;
}

@end