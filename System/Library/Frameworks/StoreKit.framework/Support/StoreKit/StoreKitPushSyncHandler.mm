@interface StoreKitPushSyncHandler
- (void)receivedPushAction:(unint64_t)action client:(_TtC9storekitd6Client *)client completionHandler:(id)handler;
@end

@implementation StoreKitPushSyncHandler

- (void)receivedPushAction:(unint64_t)action client:(_TtC9storekitd6Client *)client completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = action;
  v9[3] = client;
  v9[4] = v8;
  v9[5] = self;
  clientCopy = client;

  sub_100224DF8(&unk_1002EEEC8, v9);
}

@end