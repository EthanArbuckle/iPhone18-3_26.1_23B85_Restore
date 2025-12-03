@interface APBonjourCacheHomeKitItem
+ (id)itemWithDeviceInfo:(id)info userInfo:(id)userInfo;
- (void)dealloc;
@end

@implementation APBonjourCacheHomeKitItem

+ (id)itemWithDeviceInfo:(id)info userInfo:(id)userInfo
{
  v6 = objc_opt_new();
  [v6 setDeviceInfo:info];
  [v6 setUserInfo:userInfo];

  return v6;
}

- (void)dealloc
{
  self->_deviceInfo = 0;

  self->_userInfo = 0;
  v3.receiver = self;
  v3.super_class = APBonjourCacheHomeKitItem;
  [(APBonjourCacheHomeKitItem *)&v3 dealloc];
}

@end