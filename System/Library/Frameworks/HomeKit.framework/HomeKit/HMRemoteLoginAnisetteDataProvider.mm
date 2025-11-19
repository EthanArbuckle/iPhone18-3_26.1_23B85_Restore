@interface HMRemoteLoginAnisetteDataProvider
- (HMRemoteLoginAnisetteDataProvider)initWithCoder:(id)a3;
- (void)eraseAnisetteWithCompletion:(id)a3;
- (void)legacyAnisetteDataForDSID:(id)a3 withCompletion:(id)a4;
- (void)provisionAnisetteWithCompletion:(id)a3;
- (void)syncAnisetteWithSIMData:(id)a3 completion:(id)a4;
@end

@implementation HMRemoteLoginAnisetteDataProvider

- (HMRemoteLoginAnisetteDataProvider)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMRemoteLoginAnisetteDataProvider;
  v5 = [(HMRemoteLoginAnisetteDataProvider *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kIdentifierKey"];
    uuid = v5->_uuid;
    v5->_uuid = v6;
  }

  return v5;
}

- (void)legacyAnisetteDataForDSID:(id)a3 withCompletion:(id)a4
{
  v28[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [(HMRemoteLoginMessage *)[HMLegacyAnisetteDataRequest alloc] initNewMessage];
  [v8 setDsid:v7];

  v9 = [v8 messageName];
  v27 = v9;
  v10 = encodeRootObject(v8);
  v28[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];

  v12 = objc_alloc(MEMORY[0x1E69A2A10]);
  v13 = [v8 messageName];
  v14 = objc_alloc(MEMORY[0x1E69A2A00]);
  v15 = [(HMRemoteLoginAnisetteDataProvider *)self uuid];
  v16 = [v14 initWithTarget:v15];
  v17 = [v12 initWithName:v13 destination:v16 payload:v11];

  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __78__HMRemoteLoginAnisetteDataProvider_legacyAnisetteDataForDSID_withCompletion___block_invoke;
  v25 = &unk_1E754C0F0;
  v26 = v6;
  v18 = v6;
  [v17 setResponseHandler:&v22];
  v19 = [(HMRemoteLoginAnisetteDataProvider *)self context:v22];
  v20 = [v19 messageDispatcher];
  [v20 sendMessage:v17];

  v21 = *MEMORY[0x1E69E9840];
}

void __78__HMRemoteLoginAnisetteDataProvider_legacyAnisetteDataForDSID_withCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8 = [HMLegacyAnisetteDataResponse objWithDict:a3];
  v6 = *(a1 + 32);
  v7 = [v8 anisetteData];
  (*(v6 + 16))(v6, v7, v5);
}

void __93__HMRemoteLoginAnisetteDataProvider_fetchAnisetteDataAndProvisionIfNecessary_withCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8 = [HMFetchAnisetteDataResponse objWithDict:a3];
  v6 = *(a1 + 32);
  v7 = [v8 anisetteData];
  (*(v6 + 16))(v6, v7, v5);
}

- (void)eraseAnisetteWithCompletion:(id)a3
{
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMRemoteLoginMessage *)[HMEraseAnisetteDataRequest alloc] initNewMessage];
  v6 = [v5 messageName];
  v24 = v6;
  v7 = encodeRootObject(v5);
  v25[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];

  v9 = objc_alloc(MEMORY[0x1E69A2A10]);
  v10 = [v5 messageName];
  v11 = objc_alloc(MEMORY[0x1E69A2A00]);
  v12 = [(HMRemoteLoginAnisetteDataProvider *)self uuid];
  v13 = [v11 initWithTarget:v12];
  v14 = [v9 initWithName:v10 destination:v13 payload:v8];

  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __65__HMRemoteLoginAnisetteDataProvider_eraseAnisetteWithCompletion___block_invoke;
  v22 = &unk_1E754C0F0;
  v23 = v4;
  v15 = v4;
  [v14 setResponseHandler:&v19];
  v16 = [(HMRemoteLoginAnisetteDataProvider *)self context:v19];
  v17 = [v16 messageDispatcher];
  [v17 sendMessage:v14];

  v18 = *MEMORY[0x1E69E9840];
}

void __65__HMRemoteLoginAnisetteDataProvider_eraseAnisetteWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [HMEraseAnisetteDataResponse objWithDict:a3];
  (*(*(a1 + 32) + 16))(*(a1 + 32), [v6 didSucceed], v5);
}

- (void)syncAnisetteWithSIMData:(id)a3 completion:(id)a4
{
  v28[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [(HMRemoteLoginMessage *)[HMSyncAnisetteDataRequest alloc] initNewMessage];
  [v8 setSimData:v7];

  v9 = [v8 messageName];
  v27 = v9;
  v10 = encodeRootObject(v8);
  v28[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];

  v12 = objc_alloc(MEMORY[0x1E69A2A10]);
  v13 = [v8 messageName];
  v14 = objc_alloc(MEMORY[0x1E69A2A00]);
  v15 = [(HMRemoteLoginAnisetteDataProvider *)self uuid];
  v16 = [v14 initWithTarget:v15];
  v17 = [v12 initWithName:v13 destination:v16 payload:v11];

  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __72__HMRemoteLoginAnisetteDataProvider_syncAnisetteWithSIMData_completion___block_invoke;
  v25 = &unk_1E754C0F0;
  v26 = v6;
  v18 = v6;
  [v17 setResponseHandler:&v22];
  v19 = [(HMRemoteLoginAnisetteDataProvider *)self context:v22];
  v20 = [v19 messageDispatcher];
  [v20 sendMessage:v17];

  v21 = *MEMORY[0x1E69E9840];
}

void __72__HMRemoteLoginAnisetteDataProvider_syncAnisetteWithSIMData_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [HMSyncAnisetteDataResponse objWithDict:a3];
  (*(*(a1 + 32) + 16))(*(a1 + 32), [v6 didSucceed], v5);
}

- (void)provisionAnisetteWithCompletion:(id)a3
{
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMRemoteLoginMessage *)[HMProvisionAnisetteDataRequest alloc] initNewMessage];
  v6 = [v5 messageName];
  v24 = v6;
  v7 = encodeRootObject(v5);
  v25[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];

  v9 = objc_alloc(MEMORY[0x1E69A2A10]);
  v10 = [v5 messageName];
  v11 = objc_alloc(MEMORY[0x1E69A2A00]);
  v12 = [(HMRemoteLoginAnisetteDataProvider *)self uuid];
  v13 = [v11 initWithTarget:v12];
  v14 = [v9 initWithName:v10 destination:v13 payload:v8];

  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __69__HMRemoteLoginAnisetteDataProvider_provisionAnisetteWithCompletion___block_invoke;
  v22 = &unk_1E754C0F0;
  v23 = v4;
  v15 = v4;
  [v14 setResponseHandler:&v19];
  v16 = [(HMRemoteLoginAnisetteDataProvider *)self context:v19];
  v17 = [v16 messageDispatcher];
  [v17 sendMessage:v14];

  v18 = *MEMORY[0x1E69E9840];
}

void __69__HMRemoteLoginAnisetteDataProvider_provisionAnisetteWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [HMProvisionAnisetteDataResponse objWithDict:a3];
  (*(*(a1 + 32) + 16))(*(a1 + 32), [v6 didSucceed], v5);
}

@end