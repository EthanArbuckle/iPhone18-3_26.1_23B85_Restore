@interface StoreKitPaymentDelegate
- (void)handleEngagementRequest:(id)a3 replyBlock:(id)a4;
- (void)handlePaymentSheetRequest:(id)a3 replyBlock:(id)a4;
- (void)shouldContinueTransactionWithNewStorefront:(id)a3 replyBlock:(id)a4;
@end

@implementation StoreKitPaymentDelegate

- (void)handlePaymentSheetRequest:(id)a3 replyBlock:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = a3;

  v7 = sub_1B256D22C();
  v9 = v8;

  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  sub_1B253D0BC(v10, v11, sub_1B253E920, v10);

  sub_1B2443AE4(v7, v9);
}

- (void)shouldContinueTransactionWithNewStorefront:(id)a3 replyBlock:(id)a4
{
  v4 = _Block_copy(a4);
  v5 = sub_1B256D9BC();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;

  sub_1B253D4F0(v5, v7, sub_1B253E904, v8);
}

- (void)handleEngagementRequest:(id)a3 replyBlock:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = a3;

  v7 = sub_1B256D22C();
  v9 = v8;

  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  sub_1B253DC44(v7, v9, sub_1B253E8FC, v10);

  sub_1B2443AE4(v7, v9);
}

@end