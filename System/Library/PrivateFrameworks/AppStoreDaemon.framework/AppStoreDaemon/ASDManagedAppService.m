@interface ASDManagedAppService
+ (id)defaultService;
+ (id)interface;
- (ASDManagedAppService)init;
- (id)showVPPInviteForCurrentUser:(id)a3 orgName:(id)a4;
- (void)requestStatusWithResultHandler:(id)a3;
- (void)submitManifestRequest:(id)a3 withResultHandler:(id)a4;
- (void)submitVPPRequest:(id)a3 withResultHandler:(id)a4;
@end

@implementation ASDManagedAppService

+ (id)interface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F304A6B8];
  v3 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel_submitVPPRequest_withReplyHandler_ argumentIndex:0 ofReply:0];

  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v4 forSelector:sel_submitManifestRequest_withReplyHandler_ argumentIndex:0 ofReply:0];

  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  [v2 setClasses:v7 forSelector:sel_requestStatusWithReply_ argumentIndex:0 ofReply:1];

  return v2;
}

+ (id)defaultService
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__ASDManagedAppService_defaultService__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED90D630 != -1)
  {
    dispatch_once(&qword_1ED90D630, block);
  }

  v2 = _MergedGlobals_51;

  return v2;
}

uint64_t __38__ASDManagedAppService_defaultService__block_invoke(uint64_t a1)
{
  _MergedGlobals_51 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (ASDManagedAppService)init
{
  v6.receiver = self;
  v6.super_class = ASDManagedAppService;
  v2 = [(ASDManagedAppService *)&v6 init];
  if (v2)
  {
    v3 = +[ASDServiceBroker defaultBroker];
    serviceBroker = v2->_serviceBroker;
    v2->_serviceBroker = v3;
  }

  return v2;
}

- (void)requestStatusWithResultHandler:(id)a3
{
  v4 = a3;
  serviceBroker = self->_serviceBroker;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__ASDManagedAppService_requestStatusWithResultHandler___block_invoke;
  v7[3] = &unk_1E7CDD630;
  v8 = v4;
  v6 = v4;
  [(ASDServiceBroker *)serviceBroker getManagedAppServiceWithCompletionHandler:v7];
}

void __55__ASDManagedAppService_requestStatusWithResultHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __55__ASDManagedAppService_requestStatusWithResultHandler___block_invoke_2;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __55__ASDManagedAppService_requestStatusWithResultHandler___block_invoke_3;
    v7[3] = &unk_1E7CDCAB8;
    v8 = *(a1 + 32);
    [v4 requestStatusWithReply:v7];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 32) + 16);

    v6();
  }
}

- (id)showVPPInviteForCurrentUser:(id)a3 orgName:(id)a4
{
  v5 = a3;
  v6 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__14;
  v20 = __Block_byref_object_dispose__14;
  v21 = 0;
  v7 = +[ASDServiceBroker defaultBroker];
  v8 = (v17 + 5);
  obj = v17[5];
  v9 = [v7 getManagedAppServiceWithError:&obj];
  objc_storeStrong(v8, obj);

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60__ASDManagedAppService_showVPPInviteForCurrentUser_orgName___block_invoke;
  v14[3] = &unk_1E7CDBB80;
  v14[4] = &v16;
  v10 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__ASDManagedAppService_showVPPInviteForCurrentUser_orgName___block_invoke_2;
  v13[3] = &unk_1E7CDBB80;
  v13[4] = &v16;
  [v10 showVPPInviteForCurrentUser:v5 orgName:v6 withReplyHandler:v13];

  v11 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v11;
}

- (void)submitManifestRequest:(id)a3 withResultHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  serviceBroker = self->_serviceBroker;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__ASDManagedAppService_submitManifestRequest_withResultHandler___block_invoke;
  v11[3] = &unk_1E7CDD680;
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  [(ASDServiceBroker *)serviceBroker getManagedAppServiceWithCompletionHandler:v11];
}

void __64__ASDManagedAppService_submitManifestRequest_withResultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __64__ASDManagedAppService_submitManifestRequest_withResultHandler___block_invoke_2;
    v12[3] = &unk_1E7CDBE20;
    v14 = *(a1 + 40);
    v13 = *(a1 + 32);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v12];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __64__ASDManagedAppService_submitManifestRequest_withResultHandler___block_invoke_3;
    v10[3] = &unk_1E7CDD658;
    v7 = *(a1 + 32);
    v11 = *(a1 + 40);
    [v6 submitManifestRequest:v7 withReplyHandler:v10];
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = [*(a1 + 32) requestIdentifier];
    (*(v8 + 16))(v8, v5, v9);
  }
}

void __64__ASDManagedAppService_submitManifestRequest_withResultHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 requestIdentifier];
  (*(v2 + 16))(v2, v4, v5);
}

- (void)submitVPPRequest:(id)a3 withResultHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  serviceBroker = self->_serviceBroker;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__ASDManagedAppService_submitVPPRequest_withResultHandler___block_invoke;
  v11[3] = &unk_1E7CDD680;
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  [(ASDServiceBroker *)serviceBroker getManagedAppServiceWithCompletionHandler:v11];
}

void __59__ASDManagedAppService_submitVPPRequest_withResultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __59__ASDManagedAppService_submitVPPRequest_withResultHandler___block_invoke_2;
    v14[3] = &unk_1E7CDBE20;
    v16 = *(a1 + 40);
    v15 = *(a1 + 32);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v14];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __59__ASDManagedAppService_submitVPPRequest_withResultHandler___block_invoke_3;
    v12[3] = &unk_1E7CDD6A8;
    v7 = *(a1 + 32);
    v13 = *(a1 + 40);
    [v6 submitVPPRequest:v7 withReplyHandler:v12];
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = [*(a1 + 32) bundleIdentifier];
    v10 = [*(a1 + 32) itemIdentifier];
    v11 = [*(a1 + 32) requestIdentifier];
    (*(v8 + 16))(v8, v5, v9, v10, v11);
  }
}

void __59__ASDManagedAppService_submitVPPRequest_withResultHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = a2;
  v8 = [v4 bundleIdentifier];
  v6 = [*(a1 + 32) itemIdentifier];
  v7 = [*(a1 + 32) requestIdentifier];
  (*(v3 + 16))(v3, v5, v8, v6, v7);
}

@end