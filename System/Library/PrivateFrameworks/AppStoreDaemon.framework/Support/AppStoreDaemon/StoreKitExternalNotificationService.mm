@interface StoreKitExternalNotificationService
- (StoreKitExternalNotificationService)init;
- (void)presentSheetIfNeededForProcessHandle:(id)handle completion:(id)completion;
@end

@implementation StoreKitExternalNotificationService

- (StoreKitExternalNotificationService)init
{
  v11.receiver = self;
  v11.super_class = StoreKitExternalNotificationService;
  v2 = [(StoreKitExternalNotificationService *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.appstored.StoreKitExternalNotificationService", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = objc_opt_new();
    displayedSheets = v2->_displayedSheets;
    v2->_displayedSheets = v6;

    v8 = objc_opt_new();
    taskQueue = v2->_taskQueue;
    v2->_taskQueue = v8;
  }

  return v2;
}

- (void)presentSheetIfNeededForProcessHandle:(id)handle completion:(id)completion
{
  handleCopy = handle;
  completionCopy = completion;
  v8 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100353E7C;
  v13[3] = &unk_10051C7A8;
  v14 = v8;
  v15 = handleCopy;
  selfCopy = self;
  v17 = completionCopy;
  v10 = completionCopy;
  v11 = handleCopy;
  v12 = v8;
  sub_100005D90(dispatchQueue, v13);
}

@end