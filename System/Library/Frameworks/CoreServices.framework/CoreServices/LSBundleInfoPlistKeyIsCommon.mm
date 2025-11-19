@interface LSBundleInfoPlistKeyIsCommon
@end

@implementation LSBundleInfoPlistKeyIsCommon

void ___LSBundleInfoPlistKeyIsCommon_block_invoke()
{
  v13[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v1 = *MEMORY[0x1E695E128];
  v13[0] = *MEMORY[0x1E695E198];
  v13[1] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v3 = [v0 setWithArray:v2];
  v4 = _LSBundleInfoPlistKeyIsCommon::explicitlyIgnoredKeys;
  _LSBundleInfoPlistKeyIsCommon::explicitlyIgnoredKeys = v3;

  v5 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1EEF8F190];
  v6 = _LSBundleInfoPlistKeyIsCommon::prefixes;
  _LSBundleInfoPlistKeyIsCommon::prefixes = v5;

  v7 = MEMORY[0x1E695DFD8];
  v12[0] = @"Capabilities";
  v12[1] = @"DeviceFamily";
  v12[2] = @"ProductType";
  v12[3] = @"disabled";
  v12[4] = @"MallocBehavior";
  v12[5] = @"com.apple.developer.translation-ui-provider.network-access";
  v12[6] = @"AVInitialRouteSharingPolicy";
  v12[7] = @"LSEligibilityInstallPredicate";
  v12[8] = @"LSEligibilityUninstallPredicate";
  v12[9] = @"LSRequiredFeatureFlags";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:10];
  v9 = [v7 setWithArray:v8];
  v10 = _LSBundleInfoPlistKeyIsCommon::explicitlyIncludedKeys;
  _LSBundleInfoPlistKeyIsCommon::explicitlyIncludedKeys = v9;

  v11 = *MEMORY[0x1E69E9840];
}

@end