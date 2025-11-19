@interface ASDIAPHistory
+ (id)interface;
+ (id)sharedInstance;
- (ASDIAPHistory)init;
- (void)getAllIAPsForActiveAccountWithResultHandler:(id)a3;
- (void)getIAPsForActiveAccountWithAdamIDs:(id)a3 withResultHandler:(id)a4;
- (void)refreshIAPsForActiveAccountWithCompletionHandler:(id)a3;
@end

@implementation ASDIAPHistory

+ (id)interface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F304A598];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_getAllIAPsForActiveAccountWithReplyHandler_ argumentIndex:0 ofReply:1];

  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [v2 setClasses:v8 forSelector:sel_getIAPsForActiveAccountWithAdamIDs_withReplyHandler_ argumentIndex:0 ofReply:1];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  [v2 setClasses:v11 forSelector:sel_getSubscriptionEntitlementsForSegment_ignoreCaches_requestingBundleId_withReplyHandler_ argumentIndex:0 ofReply:1];

  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  [v2 setClasses:v14 forSelector:sel_getSubscriptionEntitlementsForSegment_ignoreCaches_isBackground_requestingBundleId_withReplyHandler_ argumentIndex:0 ofReply:1];

  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
  [v2 setClasses:v17 forSelector:sel_getCachedSubscriptionEntitlementsForSegment_withReplyHandler_ argumentIndex:0 ofReply:1];

  v18 = MEMORY[0x1E695DFD8];
  v19 = objc_opt_class();
  v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
  [v2 setClasses:v20 forSelector:sel_getSubscriptionEntitlementsForSegment_ignoreCaches_requestingBundleId_withReplyHandler_ argumentIndex:3 ofReply:1];

  v21 = MEMORY[0x1E695DFD8];
  v22 = objc_opt_class();
  v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
  [v2 setClasses:v23 forSelector:sel_getSubscriptionEntitlementsForSegment_ignoreCaches_isBackground_requestingBundleId_withReplyHandler_ argumentIndex:3 ofReply:1];

  v24 = MEMORY[0x1E695DFD8];
  v25 = objc_opt_class();
  v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
  [v2 setClasses:v26 forSelector:sel_getCachedSubscriptionEntitlementsForSegment_withReplyHandler_ argumentIndex:2 ofReply:1];

  return v2;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__ASDIAPHistory_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED90D5E0 != -1)
  {
    dispatch_once(&qword_1ED90D5E0, block);
  }

  v2 = _MergedGlobals_46;

  return v2;
}

uint64_t __31__ASDIAPHistory_sharedInstance__block_invoke(uint64_t a1)
{
  _MergedGlobals_46 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (ASDIAPHistory)init
{
  v3 = +[ASDServiceBroker defaultBroker];
  v4 = v3;
  if (self)
  {
    v7.receiver = self;
    v7.super_class = ASDIAPHistory;
    v5 = [(ASDIAPHistory *)&v7 init];
    self = v5;
    if (v5)
    {
      objc_storeStrong(&v5->_serviceBroker, v3);
    }
  }

  return self;
}

- (void)getAllIAPsForActiveAccountWithResultHandler:(id)a3
{
  v4 = a3;
  serviceBroker = self->_serviceBroker;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__ASDIAPHistory_getAllIAPsForActiveAccountWithResultHandler___block_invoke;
  v7[3] = &unk_1E7CDC300;
  v8 = v4;
  v6 = v4;
  [(ASDServiceBroker *)serviceBroker getIAPHistoryServiceWithCompletionHandler:v7];
}

void __61__ASDIAPHistory_getAllIAPsForActiveAccountWithResultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __61__ASDIAPHistory_getAllIAPsForActiveAccountWithResultHandler___block_invoke_2;
    v14[3] = &unk_1E7CDB730;
    v6 = &v15;
    v15 = *(a1 + 32);
    v7 = [a2 remoteObjectProxyWithErrorHandler:v14];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __61__ASDIAPHistory_getAllIAPsForActiveAccountWithResultHandler___block_invoke_4;
    v12[3] = &unk_1E7CDB7A8;
    v8 = &v13;
    v13 = *(a1 + 32);
    [v7 getAllIAPsForActiveAccountWithReplyHandler:v12];
  }

  else
  {
    v7 = dispatch_get_global_queue(0, 0);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __61__ASDIAPHistory_getAllIAPsForActiveAccountWithResultHandler___block_invoke_6;
    v9[3] = &unk_1E7CDB890;
    v6 = &v11;
    v11 = *(a1 + 32);
    v8 = &v10;
    v10 = v5;
    dispatch_async(v7, v9);
  }
}

void __61__ASDIAPHistory_getAllIAPsForActiveAccountWithResultHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__ASDIAPHistory_getAllIAPsForActiveAccountWithResultHandler___block_invoke_3;
  v7[3] = &unk_1E7CDB890;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __61__ASDIAPHistory_getAllIAPsForActiveAccountWithResultHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__ASDIAPHistory_getAllIAPsForActiveAccountWithResultHandler___block_invoke_5;
  block[3] = &unk_1E7CDBAE0;
  v8 = *(a1 + 32);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)getIAPsForActiveAccountWithAdamIDs:(id)a3 withResultHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  serviceBroker = self->_serviceBroker;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__ASDIAPHistory_getIAPsForActiveAccountWithAdamIDs_withResultHandler___block_invoke;
  v11[3] = &unk_1E7CDD238;
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  [(ASDServiceBroker *)serviceBroker getIAPHistoryServiceWithCompletionHandler:v11];
}

void __70__ASDIAPHistory_getIAPsForActiveAccountWithAdamIDs_withResultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __70__ASDIAPHistory_getIAPsForActiveAccountWithAdamIDs_withResultHandler___block_invoke_2;
    v15[3] = &unk_1E7CDB730;
    v6 = &v16;
    v16 = *(a1 + 40);
    v7 = [a2 remoteObjectProxyWithErrorHandler:v15];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __70__ASDIAPHistory_getIAPsForActiveAccountWithAdamIDs_withResultHandler___block_invoke_4;
    v13[3] = &unk_1E7CDB7A8;
    v8 = &v14;
    v9 = *(a1 + 32);
    v14 = *(a1 + 40);
    [v7 getIAPsForActiveAccountWithAdamIDs:v9 withReplyHandler:v13];
  }

  else
  {
    v7 = dispatch_get_global_queue(0, 0);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __70__ASDIAPHistory_getIAPsForActiveAccountWithAdamIDs_withResultHandler___block_invoke_6;
    v10[3] = &unk_1E7CDB890;
    v6 = &v12;
    v12 = *(a1 + 40);
    v8 = &v11;
    v11 = v5;
    dispatch_async(v7, v10);
  }
}

void __70__ASDIAPHistory_getIAPsForActiveAccountWithAdamIDs_withResultHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__ASDIAPHistory_getIAPsForActiveAccountWithAdamIDs_withResultHandler___block_invoke_3;
  v7[3] = &unk_1E7CDB890;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __70__ASDIAPHistory_getIAPsForActiveAccountWithAdamIDs_withResultHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__ASDIAPHistory_getIAPsForActiveAccountWithAdamIDs_withResultHandler___block_invoke_5;
  block[3] = &unk_1E7CDBAE0;
  v8 = *(a1 + 32);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)refreshIAPsForActiveAccountWithCompletionHandler:(id)a3
{
  v4 = a3;
  serviceBroker = self->_serviceBroker;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__ASDIAPHistory_refreshIAPsForActiveAccountWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CDC300;
  v8 = v4;
  v6 = v4;
  [(ASDServiceBroker *)serviceBroker getIAPHistoryServiceWithCompletionHandler:v7];
}

void __66__ASDIAPHistory_refreshIAPsForActiveAccountWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __66__ASDIAPHistory_refreshIAPsForActiveAccountWithCompletionHandler___block_invoke_2;
    v16[3] = &unk_1E7CDB730;
    v7 = &v17;
    v17 = *(a1 + 32);
    v8 = [v5 remoteObjectProxyWithErrorHandler:v16];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __66__ASDIAPHistory_refreshIAPsForActiveAccountWithCompletionHandler___block_invoke_4;
    v14[3] = &unk_1E7CDB730;
    v9 = &v15;
    v15 = *(a1 + 32);
    [v8 refreshIAPsForActiveAccountWithReplyHandler:v14];
LABEL_5:

    goto LABEL_6;
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    v8 = dispatch_get_global_queue(0, 0);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __66__ASDIAPHistory_refreshIAPsForActiveAccountWithCompletionHandler___block_invoke_6;
    v11[3] = &unk_1E7CDB890;
    v7 = &v13;
    v13 = v10;
    v9 = &v12;
    v12 = v6;
    dispatch_async(v8, v11);
    goto LABEL_5;
  }

LABEL_6:
}

void __66__ASDIAPHistory_refreshIAPsForActiveAccountWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = dispatch_get_global_queue(0, 0);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __66__ASDIAPHistory_refreshIAPsForActiveAccountWithCompletionHandler___block_invoke_3;
    v6[3] = &unk_1E7CDB890;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __66__ASDIAPHistory_refreshIAPsForActiveAccountWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = dispatch_get_global_queue(0, 0);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __66__ASDIAPHistory_refreshIAPsForActiveAccountWithCompletionHandler___block_invoke_5;
    v6[3] = &unk_1E7CDB890;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

@end