@interface AMSDDismissQRDialogService
+ (AMSDDismissQRDialogService)sharedService;
+ (BOOL)isConnectionEntitled:(id)entitled;
- (AMSDDismissQRDialogService)init;
- (void)notifyDismissDialogWithIdentifier:(id)identifier;
- (void)observeQRDialogDismissalNotificationForIdentifier:(id)identifier completion:(id)completion;
- (void)removeQRDialogDismissalObserverForIdentifier:(id)identifier completion:(id)completion;
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

- (void)observeQRDialogDismissalNotificationForIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  taskQueue = [(AMSDDismissQRDialogService *)self taskQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100057384;
  v11[3] = &unk_1002B03F8;
  v11[4] = self;
  v12 = identifierCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  [AMSDTransactionStore takeKeepAliveTransaction:@"com.apple.amsaccountsd.qrcodedismissal" withQueue:taskQueue whilePerformingBlock:v11];
}

- (void)removeQRDialogDismissalObserverForIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  taskQueue = [(AMSDDismissQRDialogService *)self taskQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000575E8;
  v11[3] = &unk_1002B03F8;
  v11[4] = self;
  v12 = identifierCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  [AMSDTransactionStore takeKeepAliveTransaction:@"com.apple.amsaccountsd.qrcodedismissal" withQueue:taskQueue whilePerformingBlock:v11];
}

- (void)notifyDismissDialogWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  taskQueue = [(AMSDDismissQRDialogService *)self taskQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100057820;
  v7[3] = &unk_1002B00E8;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  [AMSDTransactionStore takeKeepAliveTransaction:@"com.apple.amsaccountsd.qrcodedismissal" withQueue:taskQueue whilePerformingBlock:v7];
}

+ (BOOL)isConnectionEntitled:(id)entitled
{
  v3 = [entitled valueForEntitlement:@"com.apple.private.applemediaservices"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  bOOLValue = [v4 BOOLValue];
  return bOOLValue;
}

@end