@interface PurchaseService
- (PurchaseService)init;
- (void)adopt:(id)adopt withReplyHandler:(id)handler;
- (void)adoptableBundleIdentifiersWithReplyHandler:(id)handler;
- (void)checkStoreQueue:(int64_t)queue;
- (void)notifyDialogCompleteForPurchaseID:(id)d result:(BOOL)result selectedButton:(int64_t)button withResultHandler:(id)handler;
- (void)processPurchase:(id)purchase withReplyHandler:(id)handler;
- (void)processPurchases:(id)purchases withReplyHandler:(id)handler;
- (void)purchaseBatch:(id)batch additionalBuyParams:(id)params withReplyHandler:(id)handler;
- (void)purchaseBatchWithItemMetadata:(id)metadata additionalBuyParams:(id)params withReplyHandler:(id)handler;
- (void)startPurchase:(id)purchase withReplyHandler:(id)handler;
@end

@implementation PurchaseService

- (PurchaseService)init
{
  v9.receiver = self;
  v9.super_class = PurchaseService;
  v2 = [(PurchaseService *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.AppStoreDaemon.PurchaseService", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = sub_1001DFF60();
    purchaseInterface = v2->_purchaseInterface;
    v2->_purchaseInterface = v6;
  }

  return v2;
}

- (void)adopt:(id)adopt withReplyHandler:(id)handler
{
  handlerCopy = handler;
  v5 = sub_100003B90();
  v6 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = objc_opt_class();
    v9 = v8;
    processInfo = [v5 processInfo];
    bundleIdentifier = [processInfo bundleIdentifier];
    v12 = 138412802;
    v13 = v8;
    v14 = 2114;
    v15 = v5;
    v16 = 2114;
    v17 = bundleIdentifier;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[%@]: %{public}@ Adoption requested by %{public}@ but is not supported on this platform", &v12, 0x20u);
  }

  v7 = [NSError errorWithDomain:ASDErrorDomain code:909 userInfo:0];
  handlerCopy[2](handlerCopy, v7);
}

- (void)adoptableBundleIdentifiersWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  v4 = sub_100003B90();
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = v6;
    processInfo = [v4 processInfo];
    bundleIdentifier = [processInfo bundleIdentifier];
    v10 = 138412802;
    v11 = v6;
    v12 = 2114;
    v13 = v4;
    v14 = 2114;
    v15 = bundleIdentifier;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[%@]: %{public}@ Adoptable bundle identifiers requested by %{public}@ but is not supported on this platform", &v10, 0x20u);
  }

  handlerCopy[2](handlerCopy, &__NSArray0__struct);
}

- (void)checkStoreQueue:(int64_t)queue
{
  v5 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003EE14C;
  v8[3] = &unk_10051F4B0;
  v8[4] = self;
  v9 = v5;
  queueCopy = queue;
  v7 = v5;
  sub_100005D90(dispatchQueue, v8);
}

- (void)notifyDialogCompleteForPurchaseID:(id)d result:(BOOL)result selectedButton:(int64_t)button withResultHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v12 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1003EE52C;
  v17[3] = &unk_10051BBE0;
  v17[4] = self;
  v18 = dCopy;
  resultCopy = result;
  v20 = handlerCopy;
  buttonCopy = button;
  v19 = v12;
  v14 = handlerCopy;
  v15 = v12;
  v16 = dCopy;
  sub_100005D90(dispatchQueue, v17);
}

- (void)processPurchase:(id)purchase withReplyHandler:(id)handler
{
  purchaseCopy = purchase;
  handlerCopy = handler;
  v8 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1003EEA3C;
  v13[3] = &unk_10051C7A8;
  v13[4] = self;
  v14 = purchaseCopy;
  v15 = v8;
  v16 = handlerCopy;
  v10 = handlerCopy;
  v11 = v8;
  v12 = purchaseCopy;
  sub_100005D90(dispatchQueue, v13);
}

- (void)processPurchases:(id)purchases withReplyHandler:(id)handler
{
  purchasesCopy = purchases;
  handlerCopy = handler;
  v8 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1003EEE34;
  v13[3] = &unk_10051C7A8;
  v13[4] = self;
  v14 = purchasesCopy;
  v15 = v8;
  v16 = handlerCopy;
  v10 = handlerCopy;
  v11 = v8;
  v12 = purchasesCopy;
  sub_100005D90(dispatchQueue, v13);
}

- (void)purchaseBatch:(id)batch additionalBuyParams:(id)params withReplyHandler:(id)handler
{
  batchCopy = batch;
  paramsCopy = params;
  handlerCopy = handler;
  v11 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1003EF1F8;
  v17[3] = &unk_10051CBD0;
  v18 = v11;
  v19 = batchCopy;
  v20 = paramsCopy;
  v21 = handlerCopy;
  v13 = paramsCopy;
  v14 = handlerCopy;
  v15 = batchCopy;
  v16 = v11;
  sub_100005D90(dispatchQueue, v17);
}

- (void)purchaseBatchWithItemMetadata:(id)metadata additionalBuyParams:(id)params withReplyHandler:(id)handler
{
  metadataCopy = metadata;
  paramsCopy = params;
  handlerCopy = handler;
  v11 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1003EF898;
  v17[3] = &unk_10051CBD0;
  v18 = metadataCopy;
  v19 = v11;
  v20 = paramsCopy;
  v21 = handlerCopy;
  v13 = paramsCopy;
  v14 = handlerCopy;
  v15 = v11;
  v16 = metadataCopy;
  sub_100005D90(dispatchQueue, v17);
}

- (void)startPurchase:(id)purchase withReplyHandler:(id)handler
{
  purchaseCopy = purchase;
  handlerCopy = handler;
  v8 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1003EFF34;
  v13[3] = &unk_10051C7A8;
  v13[4] = self;
  v14 = v8;
  v15 = purchaseCopy;
  v16 = handlerCopy;
  v10 = handlerCopy;
  v11 = purchaseCopy;
  v12 = v8;
  sub_100005D90(dispatchQueue, v13);
}

@end