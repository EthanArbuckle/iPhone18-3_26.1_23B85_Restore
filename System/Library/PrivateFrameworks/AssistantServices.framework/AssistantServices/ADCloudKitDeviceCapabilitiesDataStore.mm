@interface ADCloudKitDeviceCapabilitiesDataStore
- (ADCloudKitDeviceCapabilitiesDataStore)init;
@end

@implementation ADCloudKitDeviceCapabilitiesDataStore

- (ADCloudKitDeviceCapabilitiesDataStore)init
{
  v3 = objc_alloc_init(_ADCloudKitDeviceCapabilitiesStoreHelper);
  v4 = [(ADCloudKitCapabilitiesDataStore *)self initWithHelper:v3];

  return v4;
}

@end