@interface WBSPrivateBrowsingExplanationConfiguration(SafariServicesExtras)
+ (id)defaultConfiguration;
@end

@implementation WBSPrivateBrowsingExplanationConfiguration(SafariServicesExtras)

+ (id)defaultConfiguration
{
  v0 = objc_alloc_init(MEMORY[0x1E69C9818]);
  if (deviceSupportedBiometryType_onceToken != -1)
  {
    +[WBSPrivateBrowsingExplanationConfiguration(SafariServicesExtras) defaultConfiguration];
  }

  [v0 setBiometryType:deviceSupportedBiometryType_deviceSupportedBiometryType];
  v1 = +[_SFManagedFeatureObserver sharedObserver];
  [v0 setUserHasPassword:{objc_msgSend(v1, "doesUserHavePasscodeSet")}];

  mEMORY[0x1E69C9808] = [MEMORY[0x1E69C9808] sharedManager];
  [v0 setPrivacyProxyAvailabilityManager:mEMORY[0x1E69C9808]];

  v3 = +[_SFSearchEngineController sharedInstance];
  v4 = [v3 defaultSearchEngineForPrivateBrowsing:1];
  [v0 setPrivateBrowsingSearchEngine:v4];

  return v0;
}

@end