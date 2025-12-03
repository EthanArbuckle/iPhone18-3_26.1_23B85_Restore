@interface StoreKitPaymentDelegate
- (void)handleEngagementRequest:(id)request replyBlock:(id)block;
- (void)handlePaymentSheetRequest:(id)request replyBlock:(id)block;
- (void)shouldContinueTransactionWithNewStorefront:(id)storefront replyBlock:(id)block;
@end

@implementation StoreKitPaymentDelegate

- (void)handlePaymentSheetRequest:(id)request replyBlock:(id)block
{
  v5 = _Block_copy(block);
  requestCopy = request;

  v7 = sub_1B256D22C();
  v9 = v8;

  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  sub_1B253D0BC(v10, v11, sub_1B253E920, v10);

  sub_1B2443AE4(v7, v9);
}

- (void)shouldContinueTransactionWithNewStorefront:(id)storefront replyBlock:(id)block
{
  v4 = _Block_copy(block);
  v5 = sub_1B256D9BC();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;

  sub_1B253D4F0(v5, v7, sub_1B253E904, v8);
}

- (void)handleEngagementRequest:(id)request replyBlock:(id)block
{
  v5 = _Block_copy(block);
  requestCopy = request;

  v7 = sub_1B256D22C();
  v9 = v8;

  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  sub_1B253DC44(v7, v9, sub_1B253E8FC, v10);

  sub_1B2443AE4(v7, v9);
}

@end