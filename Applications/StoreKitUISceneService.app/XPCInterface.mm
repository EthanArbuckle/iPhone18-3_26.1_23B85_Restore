@interface XPCInterface
+ (NSXPCInterface)client;
+ (NSXPCInterface)service;
@end

@implementation XPCInterface

+ (NSXPCInterface)client
{
  v2 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SKClientProtocol];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [NSSet setWithObjects:v3, v4, v5, v6, v7, objc_opt_class(), 0];
  [v2 setClasses:v8 forSelector:"downloadStatusChanged:" argumentIndex:0 ofReply:0];

  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = [NSSet setWithObjects:v9, v10, v11, v12, v13, v14, v15, objc_opt_class(), 0];
  [v2 setClasses:v16 forSelector:"updatedTransactions:" argumentIndex:0 ofReply:0];

  return v2;
}

+ (NSXPCInterface)service
{
  v2 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ServiceProtocol];
  v18 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ProductResponseReceiver];
  [v2 setInterface:v18 forSelector:"productsWithRequest:responseReceiver:reply:" argumentIndex:1 ofReply:0];
  v3 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SKTransactionReceiverProtocol];
  [v2 setInterface:v3 forSelector:"enumerateCurrentReceiptsForClient:productID:withReceiver:skipTransactionSync:reply:" argumentIndex:2 ofReply:0];
  [v2 setInterface:v3 forSelector:"enumerateReceiptsForClient:productID:withReceiver:skipTransactionSync:reply:" argumentIndex:2 ofReply:0];
  [v2 setInterface:v3 forSelector:"enumerateUnfinishedTransactionsForClient:withReceiver:skipTransactionSync:reply:" argumentIndex:1 ofReply:0];
  [v2 setInterface:v3 forSelector:"executeTransactionQuery:withReceiver:reply:" argumentIndex:1 ofReply:0];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [NSSet setWithObjects:v4, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0];
  [v2 setClasses:v11 forSelector:"processPayment:forClient:paymentDelegate:reply:" argumentIndex:0 ofReply:1];

  v12 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SKPaymentDelegateProtocol];
  [v2 setInterface:v12 forSelector:"processPayment:forClient:paymentDelegate:reply:" argumentIndex:2 ofReply:0];
  v13 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SKStatusReceiverProtocol];
  [v2 setInterface:v13 forSelector:"enumerateSubscriptionStatusesForClient:withReceiver:skipStatusSync:reply:" argumentIndex:1 ofReply:0];
  v14 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SKSubscriptionGroupStatusReceiverProtocol];
  [v2 setInterface:v14 forSelector:"executeSubscriptionStatusQuery:withReceiver:reply:" argumentIndex:1 ofReply:0];
  v15 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AppTransactionReceiverProtocol];
  [v2 setInterface:v15 forSelector:"executeAppTransactionQuery:withReceiver:ignoreCache:reply:" argumentIndex:1 ofReply:0];
  v16 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SKDialogProtocol];
  [v2 setInterface:v16 forSelector:"performPurchase:authDelegate:reply:" argumentIndex:1 ofReply:0];

  return v2;
}

@end