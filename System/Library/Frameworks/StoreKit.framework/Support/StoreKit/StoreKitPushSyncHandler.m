@interface StoreKitPushSyncHandler
- (void)receivedPushAction:(unint64_t)a3 client:(_TtC9storekitd6Client *)a4 completionHandler:(id)a5;
@end

@implementation StoreKitPushSyncHandler

- (void)receivedPushAction:(unint64_t)a3 client:(_TtC9storekitd6Client *)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  v10 = a4;

  sub_100224DF8(&unk_1002EEEC8, v9);
}

@end