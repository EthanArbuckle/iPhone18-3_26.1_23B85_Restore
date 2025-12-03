@interface ActivityManager
- (ActivityManager)init;
@end

@implementation ActivityManager

- (ActivityManager)init
{
  v16.receiver = self;
  v16.super_class = ActivityManager;
  v2 = [(ActivityManager *)&v16 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.appstored.ActivityManager.callout", v3);
    calloutQueue = v2->_calloutQueue;
    v2->_calloutQueue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.appstored.ActivityManager.dispatch", v6);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v7;

    v9 = sub_1003BBF50();
    isHRNMode = [v9 isHRNMode];

    if ((isHRNMode & 1) == 0)
    {
      v11 = +[BagService appstoredService];
      v12 = v2->_dispatchQueue;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1001DA64C;
      v14[3] = &unk_10051BCE0;
      v15 = v2;
      [v11 persistedBagOnQueue:v12 completionHandler:v14];
    }
  }

  return v2;
}

@end