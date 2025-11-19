@interface AMSDDismissQRDialogService
+ (AMSDDismissQRDialogService)sharedService;
+ (BOOL)isConnectionEntitled:(id)a3;
- (AMSDDismissQRDialogService)init;
- (void)notifyDismissDialogWithIdentifier:(id)a3;
- (void)observeQRDialogDismissalNotificationForIdentifier:(id)a3 completion:(id)a4;
- (void)removeQRDialogDismissalObserverForIdentifier:(id)a3 completion:(id)a4;
@end

@implementation AMSDDismissQRDialogService

- (AMSDDismissQRDialogService)init
{
  v9.receiver = self;
  v9.super_class = AMSDDismissQRDialogService;
  v2 = [(AMSDDismissQRDialogService *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.AppleMediaServices.QRCodeDismissal", v3);
    taskQueue = v2->_taskQueue;
    v2->_taskQueue = v4;

    v6 = objc_alloc_init(NSMutableDictionary);
    dismissalCompletionQueue = v2->_dismissalCompletionQueue;
    v2->_dismissalCompletionQueue = v6;

    v2->_queueLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

+ (AMSDDismissQRDialogService)sharedService
{
  if (qword_1002E31F0 != -1)
  {
    sub_10021B188();
  }

  v3 = qword_1002E31F8;

  return v3;
}

- (void)observeQRDialogDismissalNotificationForIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AMSDDismissQRDialogService *)self taskQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100057384;
  v11[3] = &unk_1002B03F8;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [AMSDTransactionStore takeKeepAliveTransaction:@"com.apple.amsaccountsd.qrcodedismissal" withQueue:v8 whilePerformingBlock:v11];
}

- (void)removeQRDialogDismissalObserverForIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AMSDDismissQRDialogService *)self taskQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000575E8;
  v11[3] = &unk_1002B03F8;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [AMSDTransactionStore takeKeepAliveTransaction:@"com.apple.amsaccountsd.qrcodedismissal" withQueue:v8 whilePerformingBlock:v11];
}

- (void)notifyDismissDialogWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(AMSDDismissQRDialogService *)self taskQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100057820;
  v7[3] = &unk_1002B00E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [AMSDTransactionStore takeKeepAliveTransaction:@"com.apple.amsaccountsd.qrcodedismissal" withQueue:v5 whilePerformingBlock:v7];
}

+ (BOOL)isConnectionEntitled:(id)a3
{
  v3 = [a3 valueForEntitlement:@"com.apple.private.applemediaservices"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 BOOLValue];
  return v5;
}

@end