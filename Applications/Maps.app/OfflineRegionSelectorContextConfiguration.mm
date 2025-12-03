@interface OfflineRegionSelectorContextConfiguration
- (OfflineRegionSelectorContextConfiguration)initWithRegion:(id)region name:(id)name;
@end

@implementation OfflineRegionSelectorContextConfiguration

- (OfflineRegionSelectorContextConfiguration)initWithRegion:(id)region name:(id)name
{
  regionCopy = region;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = OfflineRegionSelectorContextConfiguration;
  v9 = [(OfflineRegionSelectorContextConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_region, region);
    objc_storeStrong(&v10->_name, name);
  }

  return v10;
}

@end