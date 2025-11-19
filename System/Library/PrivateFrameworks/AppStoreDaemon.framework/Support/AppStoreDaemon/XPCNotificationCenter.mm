@interface XPCNotificationCenter
- (XPCNotificationCenter)init;
@end

@implementation XPCNotificationCenter

- (XPCNotificationCenter)init
{
  v11.receiver = self;
  v11.super_class = XPCNotificationCenter;
  v2 = [(XPCNotificationCenter *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.AppStoreFoundation.XPCNotificationCenter", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = objc_alloc_init(NSMutableArray);
    notificationClients = v2->_notificationClients;
    v2->_notificationClients = v6;

    v8 = objc_alloc_init(NSMutableDictionary);
    notificationSources = v2->_notificationSources;
    v2->_notificationSources = v8;
  }

  return v2;
}

@end