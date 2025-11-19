@interface ASDPurchaseHistory
+ (id)interface;
+ (id)sharedInstance;
- (ASDPurchaseHistory)init;
- (void)dealloc;
- (void)executeQuery:(id)a3 withResultHandler:(id)a4;
- (void)setHidden:(BOOL)a3 forStoreItemID:(int64_t)a4 withCompletionHandler:(id)a5;
- (void)showAllWithCompletionHandler:(id)a3;
- (void)updateForAccountID:(int64_t)a3 withContext:(unint64_t)a4 withCompletionHandler:(id)a5;
- (void)updateWithContext:(unint64_t)a3 withCompletionHandler:(id)a4;
@end

@implementation ASDPurchaseHistory

+ (id)interface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F304A418];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_executeQuery_withReplyHandler_ argumentIndex:0 ofReply:1];

  return v2;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__ASDPurchaseHistory_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED90D5A0 != -1)
  {
    dispatch_once(&qword_1ED90D5A0, block);
  }

  v2 = _MergedGlobals_42;

  return v2;
}

uint64_t __36__ASDPurchaseHistory_sharedInstance__block_invoke(uint64_t a1)
{
  _MergedGlobals_42 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (ASDPurchaseHistory)init
{
  v3 = +[ASDServiceBroker defaultBroker];
  v4 = v3;
  if (self && (v11.receiver = self, v11.super_class = ASDPurchaseHistory, (v5 = [(ASDPurchaseHistory *)&v11 init]) != 0))
  {
    v6 = v5;
    objc_storeStrong(&v5->_serviceBroker, v3);

    objc_initWeak(&v11.receiver, v6);
    v6->_databaseChangedNotificationToken = -1;
    v7 = dispatch_get_global_queue(21, 0);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __26__ASDPurchaseHistory_init__block_invoke;
    handler[3] = &unk_1E7CDC170;
    objc_copyWeak(&v10, &v11.receiver);
    notify_register_dispatch("com.apple.appstored.PurchaseHistoryDatabaseUpdated", &v6->_databaseChangedNotificationToken, v7, handler);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&v11.receiver);
  }

  else
  {

    return 0;
  }

  return v6;
}

void __26__ASDPurchaseHistory_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [MEMORY[0x1E696AD88] defaultCenter];
    [v2 postNotificationName:@"ASDPurchaseHistoryDidChangeNotification" object:v3];

    WeakRetained = v3;
  }
}

- (void)dealloc
{
  notify_cancel(self->_databaseChangedNotificationToken);
  v3.receiver = self;
  v3.super_class = ASDPurchaseHistory;
  [(ASDPurchaseHistory *)&v3 dealloc];
}

- (void)executeQuery:(id)a3 withResultHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  serviceBroker = self->_serviceBroker;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__ASDPurchaseHistory_executeQuery_withResultHandler___block_invoke;
  v11[3] = &unk_1E7CDD030;
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  [(ASDServiceBroker *)serviceBroker getPurchaseHistoryServiceWithCompletionHandler:v11];
}

void __53__ASDPurchaseHistory_executeQuery_withResultHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53__ASDPurchaseHistory_executeQuery_withResultHandler___block_invoke_2;
    v10[3] = &unk_1E7CDB730;
    v11 = *(a1 + 40);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __53__ASDPurchaseHistory_executeQuery_withResultHandler___block_invoke_3;
    v8[3] = &unk_1E7CDB7A8;
    v5 = *(a1 + 32);
    v9 = *(a1 + 40);
    [v4 executeQuery:v5 withReplyHandler:v8];
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 40) + 16);

    v7();
  }
}

- (void)setHidden:(BOOL)a3 forStoreItemID:(int64_t)a4 withCompletionHandler:(id)a5
{
  v8 = a5;
  serviceBroker = self->_serviceBroker;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__ASDPurchaseHistory_setHidden_forStoreItemID_withCompletionHandler___block_invoke;
  v11[3] = &unk_1E7CDD058;
  v14 = a3;
  v12 = v8;
  v13 = a4;
  v10 = v8;
  [(ASDServiceBroker *)serviceBroker getPurchaseHistoryServiceWithCompletionHandler:v11];
}

void __69__ASDPurchaseHistory_setHidden_forStoreItemID_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __69__ASDPurchaseHistory_setHidden_forStoreItemID_withCompletionHandler___block_invoke_2;
    v13[3] = &unk_1E7CDB730;
    v14 = *(a1 + 32);
    v7 = [v5 remoteObjectProxyWithErrorHandler:v13];
    v8 = *(a1 + 48);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __69__ASDPurchaseHistory_setHidden_forStoreItemID_withCompletionHandler___block_invoke_3;
    v11[3] = &unk_1E7CDB730;
    v9 = *(a1 + 40);
    v12 = *(a1 + 32);
    [v7 setHidden:v8 forStoreItemID:v9 withReplyHandler:v11];
  }

  else
  {
    v10 = *(a1 + 32);
    if (v10)
    {
      (*(v10 + 16))(v10, v6);
    }
  }
}

uint64_t __69__ASDPurchaseHistory_setHidden_forStoreItemID_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __69__ASDPurchaseHistory_setHidden_forStoreItemID_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)showAllWithCompletionHandler:(id)a3
{
  v4 = a3;
  serviceBroker = self->_serviceBroker;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__ASDPurchaseHistory_showAllWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CDD080;
  v8 = v4;
  v6 = v4;
  [(ASDServiceBroker *)serviceBroker getPurchaseHistoryServiceWithCompletionHandler:v7];
}

void __51__ASDPurchaseHistory_showAllWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __51__ASDPurchaseHistory_showAllWithCompletionHandler___block_invoke_2;
    v11[3] = &unk_1E7CDB730;
    v12 = *(a1 + 32);
    v7 = [v5 remoteObjectProxyWithErrorHandler:v11];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __51__ASDPurchaseHistory_showAllWithCompletionHandler___block_invoke_3;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 32);
    [v7 showAllWithReplyHandler:v9];
  }

  else
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      (*(v8 + 16))(v8, v6);
    }
  }
}

uint64_t __51__ASDPurchaseHistory_showAllWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __51__ASDPurchaseHistory_showAllWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateForAccountID:(int64_t)a3 withContext:(unint64_t)a4 withCompletionHandler:(id)a5
{
  v8 = a5;
  serviceBroker = self->_serviceBroker;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__ASDPurchaseHistory_updateForAccountID_withContext_withCompletionHandler___block_invoke;
  v11[3] = &unk_1E7CDD0A8;
  v12 = v8;
  v13 = a3;
  v14 = a4;
  v10 = v8;
  [(ASDServiceBroker *)serviceBroker getPurchaseHistoryServiceWithCompletionHandler:v11];
}

void __75__ASDPurchaseHistory_updateForAccountID_withContext_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __75__ASDPurchaseHistory_updateForAccountID_withContext_withCompletionHandler___block_invoke_2;
    v13[3] = &unk_1E7CDB730;
    v14 = *(a1 + 32);
    v7 = [v5 remoteObjectProxyWithErrorHandler:v13];
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __75__ASDPurchaseHistory_updateForAccountID_withContext_withCompletionHandler___block_invoke_3;
    v11[3] = &unk_1E7CDB730;
    v12 = *(a1 + 32);
    [v7 updateForAccountID:v8 withContext:v9 withReplyHandler:v11];
  }

  else
  {
    v10 = *(a1 + 32);
    if (v10)
    {
      (*(v10 + 16))(v10, v6);
    }
  }
}

uint64_t __75__ASDPurchaseHistory_updateForAccountID_withContext_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __75__ASDPurchaseHistory_updateForAccountID_withContext_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateWithContext:(unint64_t)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  serviceBroker = self->_serviceBroker;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__ASDPurchaseHistory_updateWithContext_withCompletionHandler___block_invoke;
  v9[3] = &unk_1E7CDD0D0;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  [(ASDServiceBroker *)serviceBroker getPurchaseHistoryServiceWithCompletionHandler:v9];
}

void __62__ASDPurchaseHistory_updateWithContext_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __62__ASDPurchaseHistory_updateWithContext_withCompletionHandler___block_invoke_2;
    v12[3] = &unk_1E7CDB730;
    v13 = *(a1 + 32);
    v7 = [v5 remoteObjectProxyWithErrorHandler:v12];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__ASDPurchaseHistory_updateWithContext_withCompletionHandler___block_invoke_3;
    v10[3] = &unk_1E7CDB730;
    v8 = *(a1 + 40);
    v11 = *(a1 + 32);
    [v7 updateWithContext:v8 withReplyHandler:v10];
  }

  else
  {
    v9 = *(a1 + 32);
    if (v9)
    {
      (*(v9 + 16))(v9, v6);
    }
  }
}

uint64_t __62__ASDPurchaseHistory_updateWithContext_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __62__ASDPurchaseHistory_updateWithContext_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end