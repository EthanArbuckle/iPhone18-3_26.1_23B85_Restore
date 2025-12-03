@interface ASDPurchaseManager
+ (id)interface;
+ (id)sharedManager;
- (ASDPurchaseManager)init;
- (id)adopt:(id)adopt;
- (id)adoptableBundleIdentifiers;
- (void)adoptionStatus:(BOOL)status withReplyHandler:(id)handler;
- (void)checkAutomaticDownloadQueue;
- (void)checkPendingQueue;
- (void)checkPreflightForItemIdentifier:(id)identifier atURL:(id)l withReplyHandler:(id)handler;
- (void)installReceiptData:(id)data atBundleURL:(id)l withReplyHandler:(id)handler;
- (void)processPurchase:(id)purchase withResponseHandler:(id)handler;
- (void)processPurchases:(id)purchases withResponseHandler:(id)handler;
- (void)purchaseBatch:(id)batch additionalBuyParams:(id)params withResultHandler:(id)handler;
- (void)purchaseBatchWithItemMetadata:(id)metadata additionalBuyParams:(id)params withResultHandler:(id)handler;
- (void)renewReceiptForApplicationAtURL:(id)l withAppleID:(id)d password:(id)password forceSandbox:(BOOL)sandbox withCompletionHandler:(id)handler;
- (void)startPurchase:(id)purchase withResultHandler:(id)handler;
- (void)unadoptWithReplyHandler:(id)handler;
@end

@implementation ASDPurchaseManager

+ (id)interface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F304A838];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_processPurchases_withReplyHandler_ argumentIndex:0 ofReply:0];

  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [v2 setClasses:v8 forSelector:sel_startPurchase_withReplyHandler_ argumentIndex:0 ofReply:0];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  [v2 setClasses:v11 forSelector:sel_startPurchase_withReplyHandler_ argumentIndex:0 ofReply:1];

  return v2;
}

+ (id)sharedManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__ASDPurchaseManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED90D650 != -1)
  {
    dispatch_once(&qword_1ED90D650, block);
  }

  v2 = _MergedGlobals_53;

  return v2;
}

uint64_t __35__ASDPurchaseManager_sharedManager__block_invoke(uint64_t a1)
{
  _MergedGlobals_53 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (ASDPurchaseManager)init
{
  v3 = +[ASDServiceBroker defaultBroker];
  v4 = v3;
  if (self)
  {
    v7.receiver = self;
    v7.super_class = ASDPurchaseManager;
    v5 = [(ASDPurchaseManager *)&v7 init];
    self = v5;
    if (v5)
    {
      objc_storeStrong(&v5->_serviceBroker, v3);
    }
  }

  return self;
}

- (id)adopt:(id)adopt
{
  adoptCopy = adopt;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__15;
  v17 = __Block_byref_object_dispose__15;
  v18 = 0;
  v4 = +[ASDServiceBroker defaultBroker];
  v5 = (v14 + 5);
  obj = v14[5];
  v6 = [v4 getPurchaseServiceWithError:&obj];
  objc_storeStrong(v5, obj);

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __28__ASDPurchaseManager_adopt___block_invoke;
  v11[3] = &unk_1E7CDBB80;
  v11[4] = &v13;
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __28__ASDPurchaseManager_adopt___block_invoke_2;
  v10[3] = &unk_1E7CDBB80;
  v10[4] = &v13;
  [v7 adopt:adoptCopy withReplyHandler:v10];

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (id)adoptableBundleIdentifiers
{
  v32 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__15;
  v26 = __Block_byref_object_dispose__15;
  v27 = MEMORY[0x1E695E0F0];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__15;
  v20 = __Block_byref_object_dispose__15;
  v21 = 0;
  v2 = +[ASDServiceBroker defaultBroker];
  v3 = (v17 + 5);
  obj = v17[5];
  v4 = [v2 getPurchaseServiceWithError:&obj];
  objc_storeStrong(v3, obj);

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __48__ASDPurchaseManager_adoptableBundleIdentifiers__block_invoke;
  v14[3] = &unk_1E7CDBB80;
  v14[4] = &v16;
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __48__ASDPurchaseManager_adoptableBundleIdentifiers__block_invoke_2;
  v13[3] = &unk_1E7CDD288;
  v13[4] = &v22;
  [v5 adoptableBundleIdentifiersWithReplyHandler:v13];

  if (v17[5])
  {
    v6 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = v17[5];
      *buf = 138543618;
      v29 = v10;
      v30 = 2114;
      v31 = v11;
      v12 = v10;
      _os_log_error_impl(&dword_1B8220000, v6, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to launch extension for adoptableBundleIdentifiers error: %{public}@", buf, 0x16u);
    }
  }

  v7 = v23[5];

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)adoptionStatus:(BOOL)status withReplyHandler:(id)handler
{
  handlerCopy = handler;
  serviceBroker = self->_serviceBroker;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__ASDPurchaseManager_adoptionStatus_withReplyHandler___block_invoke;
  v9[3] = &unk_1E7CDD8F8;
  v10 = handlerCopy;
  statusCopy = status;
  v8 = handlerCopy;
  [(ASDServiceBroker *)serviceBroker getPurchaseServiceWithCompletionHandler:v9];
}

void __54__ASDPurchaseManager_adoptionStatus_withReplyHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __54__ASDPurchaseManager_adoptionStatus_withReplyHandler___block_invoke_2;
    v10[3] = &unk_1E7CDB730;
    v11 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v10];
    v5 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__ASDPurchaseManager_adoptionStatus_withReplyHandler___block_invoke_3;
    v8[3] = &unk_1E7CDB7F8;
    v9 = *(a1 + 32);
    [v4 adoptionStatus:v5 withReplyHandler:v8];
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = *(*(a1 + 32) + 16);

    v7();
  }
}

- (void)purchaseBatch:(id)batch additionalBuyParams:(id)params withResultHandler:(id)handler
{
  batchCopy = batch;
  paramsCopy = params;
  handlerCopy = handler;
  serviceBroker = self->_serviceBroker;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __74__ASDPurchaseManager_purchaseBatch_additionalBuyParams_withResultHandler___block_invoke;
  v15[3] = &unk_1E7CDD948;
  v17 = paramsCopy;
  v18 = handlerCopy;
  v16 = batchCopy;
  v12 = paramsCopy;
  v13 = batchCopy;
  v14 = handlerCopy;
  [(ASDServiceBroker *)serviceBroker getPurchaseServiceWithCompletionHandler:v15];
}

void __74__ASDPurchaseManager_purchaseBatch_additionalBuyParams_withResultHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __74__ASDPurchaseManager_purchaseBatch_additionalBuyParams_withResultHandler___block_invoke_2;
    v11[3] = &unk_1E7CDB730;
    v12 = *(a1 + 48);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v11];
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __74__ASDPurchaseManager_purchaseBatch_additionalBuyParams_withResultHandler___block_invoke_3;
    v9[3] = &unk_1E7CDD920;
    v10 = *(a1 + 48);
    [v4 purchaseBatch:v5 additionalBuyParams:v6 withReplyHandler:v9];
  }

  else
  {
    v7 = *(a1 + 48);
    v8 = *(*(a1 + 48) + 16);

    v8();
  }
}

- (void)purchaseBatchWithItemMetadata:(id)metadata additionalBuyParams:(id)params withResultHandler:(id)handler
{
  metadataCopy = metadata;
  paramsCopy = params;
  handlerCopy = handler;
  serviceBroker = self->_serviceBroker;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __90__ASDPurchaseManager_purchaseBatchWithItemMetadata_additionalBuyParams_withResultHandler___block_invoke;
  v15[3] = &unk_1E7CDD948;
  v17 = paramsCopy;
  v18 = handlerCopy;
  v16 = metadataCopy;
  v12 = paramsCopy;
  v13 = metadataCopy;
  v14 = handlerCopy;
  [(ASDServiceBroker *)serviceBroker getPurchaseServiceWithCompletionHandler:v15];
}

void __90__ASDPurchaseManager_purchaseBatchWithItemMetadata_additionalBuyParams_withResultHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __90__ASDPurchaseManager_purchaseBatchWithItemMetadata_additionalBuyParams_withResultHandler___block_invoke_2;
    v11[3] = &unk_1E7CDB730;
    v12 = *(a1 + 48);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v11];
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __90__ASDPurchaseManager_purchaseBatchWithItemMetadata_additionalBuyParams_withResultHandler___block_invoke_3;
    v9[3] = &unk_1E7CDD920;
    v10 = *(a1 + 48);
    [v4 purchaseBatchWithItemMetadata:v5 additionalBuyParams:v6 withReplyHandler:v9];
  }

  else
  {
    v7 = *(a1 + 48);
    v8 = *(*(a1 + 48) + 16);

    v8();
  }
}

- (void)processPurchase:(id)purchase withResponseHandler:(id)handler
{
  purchaseCopy = purchase;
  handlerCopy = handler;
  serviceBroker = self->_serviceBroker;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__ASDPurchaseManager_processPurchase_withResponseHandler___block_invoke;
  v11[3] = &unk_1E7CDD970;
  v12 = purchaseCopy;
  v13 = handlerCopy;
  v9 = purchaseCopy;
  v10 = handlerCopy;
  [(ASDServiceBroker *)serviceBroker getPurchaseServiceWithCompletionHandler:v11];
}

void __58__ASDPurchaseManager_processPurchase_withResponseHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__ASDPurchaseManager_processPurchase_withResponseHandler___block_invoke_2;
    v10[3] = &unk_1E7CDB730;
    v11 = *(a1 + 40);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__ASDPurchaseManager_processPurchase_withResponseHandler___block_invoke_3;
    v8[3] = &unk_1E7CDD920;
    v5 = *(a1 + 32);
    v9 = *(a1 + 40);
    [v4 processPurchase:v5 withReplyHandler:v8];
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 40) + 16);

    v7();
  }
}

- (void)processPurchases:(id)purchases withResponseHandler:(id)handler
{
  purchasesCopy = purchases;
  handlerCopy = handler;
  serviceBroker = self->_serviceBroker;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__ASDPurchaseManager_processPurchases_withResponseHandler___block_invoke;
  v11[3] = &unk_1E7CDD970;
  v12 = purchasesCopy;
  v13 = handlerCopy;
  v9 = purchasesCopy;
  v10 = handlerCopy;
  [(ASDServiceBroker *)serviceBroker getPurchaseServiceWithCompletionHandler:v11];
}

void __59__ASDPurchaseManager_processPurchases_withResponseHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __59__ASDPurchaseManager_processPurchases_withResponseHandler___block_invoke_2;
    v10[3] = &unk_1E7CDB730;
    v11 = *(a1 + 40);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__ASDPurchaseManager_processPurchases_withResponseHandler___block_invoke_3;
    v8[3] = &unk_1E7CDD920;
    v5 = *(a1 + 32);
    v9 = *(a1 + 40);
    [v4 processPurchases:v5 withReplyHandler:v8];
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 40) + 16);

    v7();
  }
}

- (void)startPurchase:(id)purchase withResultHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  purchaseCopy = purchase;
  handlerCopy = handler;
  if ([ASDStoreKitService shouldProcessStoreKitPurchase:purchaseCopy])
  {
    v8 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = objc_opt_class();
      v9 = v21;
      _os_log_impl(&dword_1B8220000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Processing ASDPurchase with StoreKit service", buf, 0xCu);
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __54__ASDPurchaseManager_startPurchase_withResultHandler___block_invoke;
    v18[3] = &unk_1E7CDD998;
    v10 = &v19;
    v19 = handlerCopy;
    v11 = handlerCopy;
    [ASDStoreKitService processStoreKitPurchase:purchaseCopy withResultHandler:v18];
  }

  else
  {
    serviceBroker = self->_serviceBroker;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __54__ASDPurchaseManager_startPurchase_withResultHandler___block_invoke_2;
    v15[3] = &unk_1E7CDD970;
    v10 = &v17;
    v17 = handlerCopy;
    v16 = purchaseCopy;
    v13 = handlerCopy;
    [(ASDServiceBroker *)serviceBroker getPurchaseServiceWithCompletionHandler:v15];
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __54__ASDPurchaseManager_startPurchase_withResultHandler___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __54__ASDPurchaseManager_startPurchase_withResultHandler___block_invoke_3;
    v10[3] = &unk_1E7CDB730;
    v11 = *(a1 + 40);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__ASDPurchaseManager_startPurchase_withResultHandler___block_invoke_4;
    v8[3] = &unk_1E7CDD998;
    v5 = *(a1 + 32);
    v9 = *(a1 + 40);
    [v4 startPurchase:v5 withReplyHandler:v8];
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 40) + 16);

    v7();
  }
}

- (void)checkAutomaticDownloadQueue
{
  serviceBroker = self->_serviceBroker;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__ASDPurchaseManager_checkAutomaticDownloadQueue__block_invoke;
  v3[3] = &unk_1E7CDD9C0;
  v3[4] = self;
  [(ASDServiceBroker *)serviceBroker getPurchaseServiceWithCompletionHandler:v3];
}

void __49__ASDPurchaseManager_checkAutomaticDownloadQueue__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __49__ASDPurchaseManager_checkAutomaticDownloadQueue__block_invoke_2;
    v3[3] = &unk_1E7CDB980;
    v3[4] = *(a1 + 32);
    v2 = [a2 remoteObjectProxyWithErrorHandler:v3];
    [v2 checkStoreQueue:0];
  }
}

void __49__ASDPurchaseManager_checkAutomaticDownloadQueue__block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2114;
    v11 = v3;
    v7 = v9;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@]: Error in checkAutomaticDownloadQueue: %{public}@", &v8, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)checkPendingQueue
{
  serviceBroker = self->_serviceBroker;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__ASDPurchaseManager_checkPendingQueue__block_invoke;
  v3[3] = &unk_1E7CDD9C0;
  v3[4] = self;
  [(ASDServiceBroker *)serviceBroker getPurchaseServiceWithCompletionHandler:v3];
}

void __39__ASDPurchaseManager_checkPendingQueue__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __39__ASDPurchaseManager_checkPendingQueue__block_invoke_2;
    v3[3] = &unk_1E7CDB980;
    v3[4] = *(a1 + 32);
    v2 = [a2 remoteObjectProxyWithErrorHandler:v3];
    [v2 checkStoreQueue:1];
  }
}

void __39__ASDPurchaseManager_checkPendingQueue__block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2114;
    v11 = v3;
    v7 = v9;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@]: Error in checkPendingQueue: %{public}@", &v8, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)checkPreflightForItemIdentifier:(id)identifier atURL:(id)l withReplyHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0, 0);
  }
}

- (void)installReceiptData:(id)data atBundleURL:(id)l withReplyHandler:(id)handler
{
  dataCopy = data;
  lCopy = l;
  handlerCopy = handler;
  serviceBroker = self->_serviceBroker;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__ASDPurchaseManager_installReceiptData_atBundleURL_withReplyHandler___block_invoke;
  v15[3] = &unk_1E7CDD948;
  v17 = lCopy;
  v18 = handlerCopy;
  v16 = dataCopy;
  v12 = lCopy;
  v13 = dataCopy;
  v14 = handlerCopy;
  [(ASDServiceBroker *)serviceBroker getPurchaseServiceWithCompletionHandler:v15];
}

void __70__ASDPurchaseManager_installReceiptData_atBundleURL_withReplyHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __70__ASDPurchaseManager_installReceiptData_atBundleURL_withReplyHandler___block_invoke_2;
    v11[3] = &unk_1E7CDB730;
    v12 = *(a1 + 48);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v11];
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __70__ASDPurchaseManager_installReceiptData_atBundleURL_withReplyHandler___block_invoke_3;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 48);
    [v4 installReceiptData:v5 atBundleURL:v6 withReplyHandler:v9];
  }

  else
  {
    v7 = *(a1 + 48);
    v8 = *(*(a1 + 48) + 16);

    v8();
  }
}

- (void)renewReceiptForApplicationAtURL:(id)l withAppleID:(id)d password:(id)password forceSandbox:(BOOL)sandbox withCompletionHandler:(id)handler
{
  lCopy = l;
  dCopy = d;
  passwordCopy = password;
  handlerCopy = handler;
  serviceBroker = self->_serviceBroker;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __110__ASDPurchaseManager_renewReceiptForApplicationAtURL_withAppleID_password_forceSandbox_withCompletionHandler___block_invoke;
  v21[3] = &unk_1E7CDD9E8;
  v22 = lCopy;
  v23 = dCopy;
  v24 = passwordCopy;
  v25 = handlerCopy;
  sandboxCopy = sandbox;
  v17 = passwordCopy;
  v18 = dCopy;
  v19 = lCopy;
  v20 = handlerCopy;
  [(ASDServiceBroker *)serviceBroker getPurchaseServiceWithCompletionHandler:v21];
}

void __110__ASDPurchaseManager_renewReceiptForApplicationAtURL_withAppleID_password_forceSandbox_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __110__ASDPurchaseManager_renewReceiptForApplicationAtURL_withAppleID_password_forceSandbox_withCompletionHandler___block_invoke_2;
    v13[3] = &unk_1E7CDB730;
    v14 = *(a1 + 56);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v13];
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 64);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __110__ASDPurchaseManager_renewReceiptForApplicationAtURL_withAppleID_password_forceSandbox_withCompletionHandler___block_invoke_3;
    v11[3] = &unk_1E7CDB730;
    v8 = *(a1 + 48);
    v12 = *(a1 + 56);
    [v4 renewReceiptForApplicationAtURL:v5 withAppleID:v6 password:v8 forceSandbox:v7 withReplyHandler:v11];
  }

  else
  {
    v9 = *(a1 + 56);
    v10 = *(*(a1 + 56) + 16);

    v10();
  }
}

- (void)unadoptWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  serviceBroker = self->_serviceBroker;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__ASDPurchaseManager_unadoptWithReplyHandler___block_invoke;
  v7[3] = &unk_1E7CDDA10;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(ASDServiceBroker *)serviceBroker getPurchaseServiceWithCompletionHandler:v7];
}

void __46__ASDPurchaseManager_unadoptWithReplyHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __46__ASDPurchaseManager_unadoptWithReplyHandler___block_invoke_2;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46__ASDPurchaseManager_unadoptWithReplyHandler___block_invoke_3;
    v7[3] = &unk_1E7CDB7F8;
    v8 = *(a1 + 32);
    [v4 unadoptWithReplyHandler:v7];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 32) + 16);

    v6();
  }
}

@end