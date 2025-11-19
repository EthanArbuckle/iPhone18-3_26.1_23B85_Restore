@interface TransactionCacheManager
+ (void)managerForClient:(_TtC9storekitd6Client *)a3 completionHandler:(id)a4;
@end

@implementation TransactionCacheManager

+ (void)managerForClient:(_TtC9storekitd6Client *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = a1;
  v8 = a3;

  sub_100224DF8(&unk_1002F1020, v7);
}

@end