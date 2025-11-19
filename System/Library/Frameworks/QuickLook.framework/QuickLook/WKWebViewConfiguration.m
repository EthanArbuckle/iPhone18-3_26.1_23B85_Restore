@interface WKWebViewConfiguration
@end

@implementation WKWebViewConfiguration

uint64_t __75__WKWebViewConfiguration_QLUtilities___sharedDataStoreForBundleIdentifier___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = _sharedDataStoreForBundleIdentifier__sharedWebKitDataStoreByBundleIdentifier;
  _sharedDataStoreForBundleIdentifier__sharedWebKitDataStoreByBundleIdentifier = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end