@interface ASDStoreKitService
+ (BOOL)shouldProcessStoreKitPurchase:(id)purchase;
+ (id)_serviceConnection;
+ (id)_storeKitClientInterface;
+ (id)storeKitServiceWithErrorHandler:(id)handler;
+ (void)_serviceConnectionInvalidated;
+ (void)handleNewTokenFamily:(id)family bundleID:(id)d withReply:(id)reply;
+ (void)processStoreKitPurchase:(id)purchase withResultHandler:(id)handler;
- (void)handleAuthenticateRequest:(id)request resultHandler:(id)handler;
- (void)handleDialogRequest:(id)request resultHandler:(id)handler;
- (void)handleEngagementRequest:(id)request resultHandler:(id)handler;
@end

@implementation ASDStoreKitService

- (void)handleAuthenticateRequest:(id)request resultHandler:(id)handler
{
  handlerCopy = handler;
  v6 = ASDErrorWithUnderlyingErrorAndDescription(0, @"ASDErrorDomain", 1060, 0);
  (*(handler + 2))(handlerCopy, 0, v6);
}

- (void)handleDialogRequest:(id)request resultHandler:(id)handler
{
  handlerCopy = handler;
  v6 = ASDErrorWithUnderlyingErrorAndDescription(0, @"ASDErrorDomain", 1060, 0);
  (*(handler + 2))(handlerCopy, 0, v6);
}

- (void)handleEngagementRequest:(id)request resultHandler:(id)handler
{
  handlerCopy = handler;
  v6 = ASDErrorWithUnderlyingErrorAndDescription(0, @"ASDErrorDomain", 1060, 0);
  (*(handler + 2))(handlerCopy, 0, v6);
}

+ (BOOL)shouldProcessStoreKitPurchase:(id)purchase
{
  purchaseCopy = purchase;
  buyParameters = [purchaseCopy buyParameters];
  v5 = [buyParameters length];

  if (v5)
  {
    v6 = MEMORY[0x1E698C818];
    buyParameters2 = [purchaseCopy buyParameters];
    v8 = [v6 buyParamsWithString:buyParameters2];

    v9 = [v8 parameterForKey:@"productType"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = [v9 isEqualToString:@"A"];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (void)processStoreKitPurchase:(id)purchase withResultHandler:(id)handler
{
  purchaseCopy = purchase;
  handlerCopy = handler;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __64__ASDStoreKitService_processStoreKitPurchase_withResultHandler___block_invoke;
  v25[3] = &unk_1E7CDC630;
  selfCopy = self;
  v8 = handlerCopy;
  v26 = v8;
  v9 = [ASDStoreKitService storeKitServiceWithErrorHandler:v25];
  v10 = MEMORY[0x1E698C818];
  buyParameters = [purchaseCopy buyParameters];
  v12 = [v10 buyParamsWithString:buyParameters];

  vendorName = [purchaseCopy vendorName];
  v14 = [vendorName length];

  if (v14)
  {
    vendorName2 = [purchaseCopy vendorName];
    [v12 setObject:vendorName2 forKeyedSubscript:@"vendorName"];
  }

  v16 = [v12 parameterForKey:@"bid"];
  if (![v16 length])
  {
    bundleID = [purchaseCopy bundleID];
    v18 = [bundleID length];

    if (v18)
    {
      bundleID2 = [purchaseCopy bundleID];
      [v12 setParameter:bundleID2 forKey:@"bid"];
    }
  }

  stringValue = [v12 stringValue];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __64__ASDStoreKitService_processStoreKitPurchase_withResultHandler___block_invoke_16;
  v22[3] = &unk_1E7CDC658;
  v23 = v8;
  selfCopy2 = self;
  v21 = v8;
  [v9 processPaymentWithBuyParamsString:stringValue reply:v22];
}

void __64__ASDStoreKitService_processStoreKitPurchase_withResultHandler___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 40);
    v9 = 138543618;
    v10 = objc_opt_class();
    v11 = 2112;
    v12 = v3;
    v8 = v10;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@]: Error in StoreKit service - %@", &v9, 0x16u);
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), 0, v3, v5);
  v6 = *MEMORY[0x1E69E9840];
}

void __64__ASDStoreKitService_processStoreKitPurchase_withResultHandler___block_invoke_16(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = ASDLogHandleForCategory(13);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 40);
      *v16 = 138543618;
      *&v16[4] = objc_opt_class();
      *&v16[12] = 2112;
      *&v16[14] = v4;
      v15 = *&v16[4];
      _os_log_error_impl(&dword_1B8220000, v6, OS_LOG_TYPE_ERROR, "[%{public}@]: Error processing ASDPurchase with StoreKit service - %@", v16, 0x16u);
    }

    v7 = [ASDPurchaseResult alloc];
    v8 = 0;
    v9 = v4;
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      *v16 = 138543362;
      *&v16[4] = objc_opt_class();
      v11 = *&v16[4];
      _os_log_impl(&dword_1B8220000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@]: StoreKit service finished processing ASDPurchase", v16, 0xCu);
    }

    v7 = [ASDPurchaseResult alloc];
    v8 = 1;
    v9 = 0;
  }

  v12 = [(ASDPurchaseResult *)v7 initWithSuccess:v8 error:v9, *v16, *&v16[16], v17];
  (*(*(a1 + 32) + 16))();

  v13 = *MEMORY[0x1E69E9840];
}

+ (void)handleNewTokenFamily:(id)family bundleID:(id)d withReply:(id)reply
{
  replyCopy = reply;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __62__ASDStoreKitService_handleNewTokenFamily_bundleID_withReply___block_invoke;
  v17[3] = &unk_1E7CDC630;
  selfCopy = self;
  v9 = replyCopy;
  v18 = v9;
  dCopy = d;
  familyCopy = family;
  v12 = [ASDStoreKitService storeKitServiceWithErrorHandler:v17];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __62__ASDStoreKitService_handleNewTokenFamily_bundleID_withReply___block_invoke_19;
  v14[3] = &unk_1E7CDC630;
  v15 = v9;
  selfCopy2 = self;
  v13 = v9;
  [v12 saveNewTokenFamily:familyCopy bundleID:dCopy reply:v14];
}

void __62__ASDStoreKitService_handleNewTokenFamily_bundleID_withReply___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 40);
    v10 = 138543618;
    v11 = objc_opt_class();
    v12 = 2112;
    v13 = v3;
    v9 = v11;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@]: Error in StoreKit service - %@", &v10, 0x16u);
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v3, v5, v6);
  v7 = *MEMORY[0x1E69E9840];
}

void __62__ASDStoreKitService_handleNewTokenFamily_bundleID_withReply___block_invoke_19(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 40);
    v10 = 138543618;
    v11 = objc_opt_class();
    v12 = 2112;
    v13 = v3;
    v9 = v11;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to save token family - %@", &v10, 0x16u);
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v3, v5, v6);
  v7 = *MEMORY[0x1E69E9840];
}

+ (id)storeKitServiceWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _serviceConnection = [self _serviceConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__ASDStoreKitService_storeKitServiceWithErrorHandler___block_invoke;
  v9[3] = &unk_1E7CDB730;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = [_serviceConnection remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

uint64_t __54__ASDStoreKitService_storeKitServiceWithErrorHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (id)_serviceConnection
{
  if (_MergedGlobals_31 != -1)
  {
    dispatch_once(&_MergedGlobals_31, &__block_literal_global_8);
  }

  [qword_1ED90D4D8 lock];
  if (!qword_1ED90D4E0)
  {
    v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.storekitd" options:0];
    v3 = qword_1ED90D4E0;
    qword_1ED90D4E0 = v2;

    v4 = +[ASDStoreKitService _storeKitServiceInterface];
    [qword_1ED90D4E0 setRemoteObjectInterface:v4];

    v5 = +[ASDStoreKitService _storeKitClientInterface];
    [qword_1ED90D4E0 setExportedInterface:v5];

    v6 = objc_alloc_init(ASDStoreKitService);
    [qword_1ED90D4E0 setExportedObject:v6];

    [qword_1ED90D4E0 setInterruptionHandler:&__block_literal_global_24];
    [qword_1ED90D4E0 setInvalidationHandler:&__block_literal_global_26];
    [qword_1ED90D4E0 resume];
  }

  [qword_1ED90D4D8 unlock];
  v7 = qword_1ED90D4E0;

  return v7;
}

uint64_t __40__ASDStoreKitService__serviceConnection__block_invoke()
{
  qword_1ED90D4D8 = objc_alloc_init(MEMORY[0x1E696AD10]);

  return MEMORY[0x1EEE66BB8]();
}

+ (void)_serviceConnectionInvalidated
{
  [qword_1ED90D4D8 lock];
  v2 = qword_1ED90D4E0;
  qword_1ED90D4E0 = 0;

  v3 = qword_1ED90D4D8;

  [v3 unlock];
}

+ (id)_storeKitClientInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F30396A0];
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

@end