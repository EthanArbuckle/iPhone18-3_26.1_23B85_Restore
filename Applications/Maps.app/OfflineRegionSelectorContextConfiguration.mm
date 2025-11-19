@interface OfflineRegionSelectorContextConfiguration
- (OfflineRegionSelectorContextConfiguration)initWithRegion:(id)a3 name:(id)a4;
@end

@implementation OfflineRegionSelectorContextConfiguration

- (OfflineRegionSelectorContextConfiguration)initWithRegion:(id)a3 name:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = OfflineRegionSelectorContextConfiguration;
  v9 = [(OfflineRegionSelectorContextConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_region, a3);
    objc_storeStrong(&v10->_name, a4);
  }

  return v10;
}

@end