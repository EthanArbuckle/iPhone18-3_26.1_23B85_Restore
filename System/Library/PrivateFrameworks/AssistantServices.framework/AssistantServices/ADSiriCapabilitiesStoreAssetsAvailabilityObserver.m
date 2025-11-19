@interface ADSiriCapabilitiesStoreAssetsAvailabilityObserver
- (ADSiriCapabilitiesStoreAssetsAvailabilityObserver)initWithSiriConfiguration:(id)a3;
- (void)assetManager:(id)a3 didChangeLanguageCode:(id)a4;
- (void)assetManagerDidChangeAssetAvailability:(id)a3;
@end

@implementation ADSiriCapabilitiesStoreAssetsAvailabilityObserver

- (void)assetManager:(id)a3 didChangeLanguageCode:(id)a4
{
  v5 = a3;
  v6 = [(ADSiriCapabilitiesStoreAssetsAvailabilityObserver *)self siriCapabilitiesStore];
  [v6 updateCapabilitiesWithAssetManager:v5];
}

- (void)assetManagerDidChangeAssetAvailability:(id)a3
{
  v4 = a3;
  v5 = [(ADSiriCapabilitiesStoreAssetsAvailabilityObserver *)self siriCapabilitiesStore];
  [v5 updateCapabilitiesWithAssetManager:v4];
}

- (ADSiriCapabilitiesStoreAssetsAvailabilityObserver)initWithSiriConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ADSiriCapabilitiesStoreAssetsAvailabilityObserver;
  v6 = [(ADSiriCapabilitiesStoreAssetsAvailabilityObserver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_siriCapabilitiesStore, a3);
  }

  return v7;
}

@end