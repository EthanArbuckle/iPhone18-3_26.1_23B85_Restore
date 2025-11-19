@interface XPCInterface
+ (NSXPCInterface)client;
+ (NSXPCInterface)service;
@end

@implementation XPCInterface

+ (NSXPCInterface)client
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F29D6A10];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v3 setWithObjects:{v4, v5, v6, v7, v8, objc_opt_class(), 0}];
  [v2 setClasses:v9 forSelector:sel_downloadStatusChanged_ argumentIndex:0 ofReply:0];

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = [v10 setWithObjects:{v11, v12, v13, v14, v15, v16, v17, objc_opt_class(), 0}];
  [v2 setClasses:v18 forSelector:sel_updatedTransactions_ argumentIndex:0 ofReply:0];

  return v2;
}

+ (NSXPCInterface)service
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2A067D8];
  v18 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2A06838];
  [v2 setInterface:v18 forSelector:sel_productsWithRequest_responseReceiver_reply_ argumentIndex:1 ofReply:0];
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F29D66D0];
  [v2 setInterface:v3 forSelector:sel_enumerateCurrentReceiptsForClient_productID_withReceiver_skipTransactionSync_reply_ argumentIndex:2 ofReply:0];
  [v2 setInterface:v3 forSelector:sel_enumerateReceiptsForClient_productID_withReceiver_skipTransactionSync_reply_ argumentIndex:2 ofReply:0];
  [v2 setInterface:v3 forSelector:sel_enumerateUnfinishedTransactionsForClient_withReceiver_skipTransactionSync_reply_ argumentIndex:1 ofReply:0];
  [v2 setInterface:v3 forSelector:sel_executeTransactionQuery_withReceiver_reply_ argumentIndex:1 ofReply:0];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v4 setWithObjects:{v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  [v2 setClasses:v12 forSelector:sel_processPayment_forClient_paymentDelegate_reply_ argumentIndex:0 ofReply:1];

  v13 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F29FDFF0];
  [v2 setInterface:v13 forSelector:sel_processPayment_forClient_paymentDelegate_reply_ argumentIndex:2 ofReply:0];
  v14 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F29D6650];
  [v2 setInterface:v14 forSelector:sel_enumerateSubscriptionStatusesForClient_withReceiver_skipStatusSync_reply_ argumentIndex:1 ofReply:0];
  v15 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F29FDE80];
  [v2 setInterface:v15 forSelector:sel_executeSubscriptionStatusQuery_withReceiver_reply_ argumentIndex:1 ofReply:0];
  v16 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2A06898];
  [v2 setInterface:v16 forSelector:sel_executeAppTransactionQuery_withReceiver_ignoreCache_reply_ argumentIndex:1 ofReply:0];

  return v2;
}

@end