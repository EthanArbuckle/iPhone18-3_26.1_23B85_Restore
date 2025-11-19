@interface StoreQueueManager
- (StoreQueueManager)init;
@end

@implementation StoreQueueManager

- (StoreQueueManager)init
{
  v10.receiver = self;
  v10.super_class = StoreQueueManager;
  v2 = [(StoreQueueManager *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.appstored.StoreQueueManager.callback", v3);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.appstored.StoreQueueManager.dispatch", v6);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v7;
  }

  return v2;
}

@end