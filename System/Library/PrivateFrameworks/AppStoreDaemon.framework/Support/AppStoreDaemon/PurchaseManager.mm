@interface PurchaseManager
- (PurchaseManager)init;
- (void)checkStoreQueue:(int64_t)queue withReason:(int64_t)reason;
- (void)processPurchases:(id)purchases failBatchOnError:(BOOL)error requestToken:(id)token withReplyHandler:(id)handler;
- (void)pushService:(id)service didReceiveMessage:(id)message completionHandler:(id)handler;
@end

@implementation PurchaseManager

- (PurchaseManager)init
{
  v15.receiver = self;
  v15.super_class = PurchaseManager;
  v2 = [(PurchaseManager *)&v15 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.appstored.PurchaseManager.dispatch", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = objc_alloc_init(TaskQueue);
    taskQueue = v2->_taskQueue;
    v2->_taskQueue = v6;

    v8 = v2->_taskQueue;
    if (v8)
    {
      [(NSOperationQueue *)v8->_operationQueue setName:@"com.apple.appstored.PurchaseManager.taskQueue"];
    }

    v9 = +[NSHashTable weakObjectsHashTable];
    activeBatches = v2->_activeBatches;
    v2->_activeBatches = v9;

    v11 = sub_1003BBF50();
    isHRNMode = [v11 isHRNMode];

    if ((isHRNMode & 1) == 0)
    {
      v13 = sub_100336524();
      sub_1003367D0(v13, v2, 2);
      sub_1003367D0(v13, v2, 11);
      sub_1003367D0(v13, v2, 43);
    }
  }

  return v2;
}

- (void)checkStoreQueue:(int64_t)queue withReason:(int64_t)reason
{
  v7 = +[BagService appstoredService];
  dispatchQueue = self->_dispatchQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001E01D8;
  v9[3] = &unk_10051C050;
  v9[4] = self;
  v9[5] = queue;
  v9[6] = reason;
  [v7 upToDateBagOnQueue:dispatchQueue completionHandler:v9];
}

- (void)processPurchases:(id)purchases failBatchOnError:(BOOL)error requestToken:(id)token withReplyHandler:(id)handler
{
  purchasesCopy = purchases;
  tokenCopy = token;
  handlerCopy = handler;
  if ([purchasesCopy count])
  {
    v12 = +[BagService appstoredService];
    dispatchQueue = self->_dispatchQueue;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1001E0D28;
    v16[3] = &unk_10051C0A0;
    v20 = handlerCopy;
    v17 = purchasesCopy;
    selfCopy = self;
    v19 = tokenCopy;
    [v12 upToDateBagOnQueue:dispatchQueue completionHandler:v16];
  }

  else
  {
    v14 = [NSError alloc];
    v15 = [v14 initWithDomain:ASDErrorDomain code:507 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v15);
  }
}

- (void)pushService:(id)service didReceiveMessage:(id)message completionHandler:(id)handler
{
  handlerCopy = handler;
  messageCopy = message;
  v8 = sub_1002EA090(messageCopy);
  sub_1001E1538(self, messageCopy, v8, handlerCopy);
}

@end