@interface AMSHardwareOffersConfig
- (AMSHardwareOffersConfig)initWithIsGroupingEnabled:(BOOL)enabled sheetURL:(id)l;
@end

@implementation AMSHardwareOffersConfig

- (AMSHardwareOffersConfig)initWithIsGroupingEnabled:(BOOL)enabled sheetURL:(id)l
{
  lCopy = l;
  v12.receiver = self;
  v12.super_class = AMSHardwareOffersConfig;
  v7 = [(AMSHardwareOffersConfig *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_isGroupingEnabled = enabled;
    v9 = [lCopy copy];
    sheetURL = v8->_sheetURL;
    v8->_sheetURL = v9;
  }

  return v8;
}

@end