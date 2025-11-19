@interface PurchaseService
- (PurchaseService)init;
- (void)adopt:(id)a3 withReplyHandler:(id)a4;
- (void)adoptableBundleIdentifiersWithReplyHandler:(id)a3;
- (void)checkStoreQueue:(int64_t)a3;
- (void)notifyDialogCompleteForPurchaseID:(id)a3 result:(BOOL)a4 selectedButton:(int64_t)a5 withResultHandler:(id)a6;
- (void)processPurchase:(id)a3 withReplyHandler:(id)a4;
- (void)processPurchases:(id)a3 withReplyHandler:(id)a4;
- (void)purchaseBatch:(id)a3 additionalBuyParams:(id)a4 withReplyHandler:(id)a5;
- (void)purchaseBatchWithItemMetadata:(id)a3 additionalBuyParams:(id)a4 withReplyHandler:(id)a5;
- (void)startPurchase:(id)a3 withReplyHandler:(id)a4;
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

- (void)adopt:(id)a3 withReplyHandler:(id)a4
{
  v4 = a4;
  v5 = sub_100003B90();
  v6 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v10 = [v5 processInfo];
    v11 = [v10 bundleIdentifier];
    v12 = 138412802;
    v13 = v8;
    v14 = 2114;
    v15 = v5;
    v16 = 2114;
    v17 = v11;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[%@]: %{public}@ Adoption requested by %{public}@ but is not supported on this platform", &v12, 0x20u);
  }

  v7 = [NSError errorWithDomain:ASDErrorDomain code:909 userInfo:0];
  v4[2](v4, v7);
}

- (void)adoptableBundleIdentifiersWithReplyHandler:(id)a3
{
  v3 = a3;
  v4 = sub_100003B90();
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 processInfo];
    v9 = [v8 bundleIdentifier];
    v10 = 138412802;
    v11 = v6;
    v12 = 2114;
    v13 = v4;
    v14 = 2114;
    v15 = v9;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[%@]: %{public}@ Adoptable bundle identifiers requested by %{public}@ but is not supported on this platform", &v10, 0x20u);
  }

  v3[2](v3, &__NSArray0__struct);
}

- (void)checkStoreQueue:(int64_t)a3
{
  v5 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003EE14C;
  v8[3] = &unk_10051F4B0;
  v8[4] = self;
  v9 = v5;
  v10 = a3;
  v7 = v5;
  sub_100005D90(dispatchQueue, v8);
}

- (void)notifyDialogCompleteForPurchaseID:(id)a3 result:(BOOL)a4 selectedButton:(int64_t)a5 withResultHandler:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1003EE52C;
  v17[3] = &unk_10051BBE0;
  v17[4] = self;
  v18 = v10;
  v22 = a4;
  v20 = v11;
  v21 = a5;
  v19 = v12;
  v14 = v11;
  v15 = v12;
  v16 = v10;
  sub_100005D90(dispatchQueue, v17);
}

- (void)processPurchase:(id)a3 withReplyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1003EEA3C;
  v13[3] = &unk_10051C7A8;
  v13[4] = self;
  v14 = v6;
  v15 = v8;
  v16 = v7;
  v10 = v7;
  v11 = v8;
  v12 = v6;
  sub_100005D90(dispatchQueue, v13);
}

- (void)processPurchases:(id)a3 withReplyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1003EEE34;
  v13[3] = &unk_10051C7A8;
  v13[4] = self;
  v14 = v6;
  v15 = v8;
  v16 = v7;
  v10 = v7;
  v11 = v8;
  v12 = v6;
  sub_100005D90(dispatchQueue, v13);
}

- (void)purchaseBatch:(id)a3 additionalBuyParams:(id)a4 withReplyHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1003EF1F8;
  v17[3] = &unk_10051CBD0;
  v18 = v11;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v13 = v9;
  v14 = v10;
  v15 = v8;
  v16 = v11;
  sub_100005D90(dispatchQueue, v17);
}

- (void)purchaseBatchWithItemMetadata:(id)a3 additionalBuyParams:(id)a4 withReplyHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1003EF898;
  v17[3] = &unk_10051CBD0;
  v18 = v8;
  v19 = v11;
  v20 = v9;
  v21 = v10;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v8;
  sub_100005D90(dispatchQueue, v17);
}

- (void)startPurchase:(id)a3 withReplyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1003EFF34;
  v13[3] = &unk_10051C7A8;
  v13[4] = self;
  v14 = v8;
  v15 = v6;
  v16 = v7;
  v10 = v7;
  v11 = v6;
  v12 = v8;
  sub_100005D90(dispatchQueue, v13);
}

@end