@interface ATXDigitalHealthBlacklistGuardedData
- (ATXDigitalHealthBlacklistGuardedData)init;
@end

@implementation ATXDigitalHealthBlacklistGuardedData

- (ATXDigitalHealthBlacklistGuardedData)init
{
  v6.receiver = self;
  v6.super_class = ATXDigitalHealthBlacklistGuardedData;
  v2 = [(ATXDigitalHealthBlacklistGuardedData *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    blacklistedBundleIds = v2->_blacklistedBundleIds;
    v2->_blacklistedBundleIds = v3;
  }

  return v2;
}

@end