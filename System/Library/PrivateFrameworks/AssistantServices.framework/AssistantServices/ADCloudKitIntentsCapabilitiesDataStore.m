@interface ADCloudKitIntentsCapabilitiesDataStore
- (ADCloudKitIntentsCapabilitiesDataStore)init;
@end

@implementation ADCloudKitIntentsCapabilitiesDataStore

- (ADCloudKitIntentsCapabilitiesDataStore)init
{
  v3 = objc_alloc_init(_ADCloudKitIntentsCapabilitiesStoreHelper);
  v4 = [(ADCloudKitCapabilitiesDataStore *)self initWithHelper:v3];

  return v4;
}

@end