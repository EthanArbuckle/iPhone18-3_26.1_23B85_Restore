@interface TransactionCacheManager
+ (void)managerForClient:(_TtC9storekitd6Client *)client completionHandler:(id)handler;
@end

@implementation TransactionCacheManager

+ (void)managerForClient:(_TtC9storekitd6Client *)client completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = client;
  v7[3] = v6;
  v7[4] = self;
  clientCopy = client;

  sub_100224DF8(&unk_1002F1020, v7);
}

@end