@interface ADSiriCapabilitiesStoreAssetsAvailabilityObserver
- (ADSiriCapabilitiesStoreAssetsAvailabilityObserver)initWithSiriConfiguration:(id)configuration;
- (void)assetManager:(id)manager didChangeLanguageCode:(id)code;
- (void)assetManagerDidChangeAssetAvailability:(id)availability;
@end

@implementation ADSiriCapabilitiesStoreAssetsAvailabilityObserver

- (void)assetManager:(id)manager didChangeLanguageCode:(id)code
{
  managerCopy = manager;
  siriCapabilitiesStore = [(ADSiriCapabilitiesStoreAssetsAvailabilityObserver *)self siriCapabilitiesStore];
  [siriCapabilitiesStore updateCapabilitiesWithAssetManager:managerCopy];
}

- (void)assetManagerDidChangeAssetAvailability:(id)availability
{
  availabilityCopy = availability;
  siriCapabilitiesStore = [(ADSiriCapabilitiesStoreAssetsAvailabilityObserver *)self siriCapabilitiesStore];
  [siriCapabilitiesStore updateCapabilitiesWithAssetManager:availabilityCopy];
}

- (ADSiriCapabilitiesStoreAssetsAvailabilityObserver)initWithSiriConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = ADSiriCapabilitiesStoreAssetsAvailabilityObserver;
  v6 = [(ADSiriCapabilitiesStoreAssetsAvailabilityObserver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_siriCapabilitiesStore, configuration);
  }

  return v7;
}

@end