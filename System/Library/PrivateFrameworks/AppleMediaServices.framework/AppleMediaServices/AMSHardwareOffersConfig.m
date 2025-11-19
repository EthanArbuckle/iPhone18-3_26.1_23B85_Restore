@interface AMSHardwareOffersConfig
- (AMSHardwareOffersConfig)initWithIsGroupingEnabled:(BOOL)a3 sheetURL:(id)a4;
@end

@implementation AMSHardwareOffersConfig

- (AMSHardwareOffersConfig)initWithIsGroupingEnabled:(BOOL)a3 sheetURL:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = AMSHardwareOffersConfig;
  v7 = [(AMSHardwareOffersConfig *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_isGroupingEnabled = a3;
    v9 = [v6 copy];
    sheetURL = v8->_sheetURL;
    v8->_sheetURL = v9;
  }

  return v8;
}

@end