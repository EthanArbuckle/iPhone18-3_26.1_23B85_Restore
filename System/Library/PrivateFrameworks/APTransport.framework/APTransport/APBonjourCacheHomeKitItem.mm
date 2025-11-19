@interface APBonjourCacheHomeKitItem
+ (id)itemWithDeviceInfo:(id)a3 userInfo:(id)a4;
- (void)dealloc;
@end

@implementation APBonjourCacheHomeKitItem

+ (id)itemWithDeviceInfo:(id)a3 userInfo:(id)a4
{
  v6 = objc_opt_new();
  [v6 setDeviceInfo:a3];
  [v6 setUserInfo:a4];

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