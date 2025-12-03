@interface HMRemoteLoginAnisetteDataProvider
- (HMRemoteLoginAnisetteDataProvider)initWithCoder:(id)coder;
- (void)eraseAnisetteWithCompletion:(id)completion;
- (void)legacyAnisetteDataForDSID:(id)d withCompletion:(id)completion;
- (void)provisionAnisetteWithCompletion:(id)completion;
- (void)syncAnisetteWithSIMData:(id)data completion:(id)completion;
@end

@implementation HMRemoteLoginAnisetteDataProvider

- (HMRemoteLoginAnisetteDataProvider)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HMRemoteLoginAnisetteDataProvider;
  v5 = [(HMRemoteLoginAnisetteDataProvider *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kIdentifierKey"];
    uuid = v5->_uuid;
    v5->_uuid = v6;
  }

  return v5;
}

- (void)legacyAnisetteDataForDSID:(id)d withCompletion:(id)completion
{
  v28[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  dCopy = d;
  initNewMessage = [(HMRemoteLoginMessage *)[HMLegacyAnisetteDataRequest alloc] initNewMessage];
  [initNewMessage setDsid:dCopy];

  messageName = [initNewMessage messageName];
  v27 = messageName;
  v10 = encodeRootObject(initNewMessage);
  v28[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];

  v12 = objc_alloc(MEMORY[0x1E69A2A10]);
  messageName2 = [initNewMessage messageName];
  v14 = objc_alloc(MEMORY[0x1E69A2A00]);
  uuid = [(HMRemoteLoginAnisetteDataProvider *)self uuid];
  v16 = [v14 initWithTarget:uuid];
  v17 = [v12 initWithName:messageName2 destination:v16 payload:v11];

  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __78__HMRemoteLoginAnisetteDataProvider_legacyAnisetteDataForDSID_withCompletion___block_invoke;
  v25 = &unk_1E754C0F0;
  v26 = completionCopy;
  v18 = completionCopy;
  [v17 setResponseHandler:&v22];
  v19 = [(HMRemoteLoginAnisetteDataProvider *)self context:v22];
  messageDispatcher = [v19 messageDispatcher];
  [messageDispatcher sendMessage:v17];

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

- (void)eraseAnisetteWithCompletion:(id)completion
{
  v25[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  initNewMessage = [(HMRemoteLoginMessage *)[HMEraseAnisetteDataRequest alloc] initNewMessage];
  messageName = [initNewMessage messageName];
  v24 = messageName;
  v7 = encodeRootObject(initNewMessage);
  v25[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];

  v9 = objc_alloc(MEMORY[0x1E69A2A10]);
  messageName2 = [initNewMessage messageName];
  v11 = objc_alloc(MEMORY[0x1E69A2A00]);
  uuid = [(HMRemoteLoginAnisetteDataProvider *)self uuid];
  v13 = [v11 initWithTarget:uuid];
  v14 = [v9 initWithName:messageName2 destination:v13 payload:v8];

  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __65__HMRemoteLoginAnisetteDataProvider_eraseAnisetteWithCompletion___block_invoke;
  v22 = &unk_1E754C0F0;
  v23 = completionCopy;
  v15 = completionCopy;
  [v14 setResponseHandler:&v19];
  v16 = [(HMRemoteLoginAnisetteDataProvider *)self context:v19];
  messageDispatcher = [v16 messageDispatcher];
  [messageDispatcher sendMessage:v14];

  v18 = *MEMORY[0x1E69E9840];
}

void __65__HMRemoteLoginAnisetteDataProvider_eraseAnisetteWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [HMEraseAnisetteDataResponse objWithDict:a3];
  (*(*(a1 + 32) + 16))(*(a1 + 32), [v6 didSucceed], v5);
}

- (void)syncAnisetteWithSIMData:(id)data completion:(id)completion
{
  v28[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  dataCopy = data;
  initNewMessage = [(HMRemoteLoginMessage *)[HMSyncAnisetteDataRequest alloc] initNewMessage];
  [initNewMessage setSimData:dataCopy];

  messageName = [initNewMessage messageName];
  v27 = messageName;
  v10 = encodeRootObject(initNewMessage);
  v28[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];

  v12 = objc_alloc(MEMORY[0x1E69A2A10]);
  messageName2 = [initNewMessage messageName];
  v14 = objc_alloc(MEMORY[0x1E69A2A00]);
  uuid = [(HMRemoteLoginAnisetteDataProvider *)self uuid];
  v16 = [v14 initWithTarget:uuid];
  v17 = [v12 initWithName:messageName2 destination:v16 payload:v11];

  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __72__HMRemoteLoginAnisetteDataProvider_syncAnisetteWithSIMData_completion___block_invoke;
  v25 = &unk_1E754C0F0;
  v26 = completionCopy;
  v18 = completionCopy;
  [v17 setResponseHandler:&v22];
  v19 = [(HMRemoteLoginAnisetteDataProvider *)self context:v22];
  messageDispatcher = [v19 messageDispatcher];
  [messageDispatcher sendMessage:v17];

  v21 = *MEMORY[0x1E69E9840];
}

void __72__HMRemoteLoginAnisetteDataProvider_syncAnisetteWithSIMData_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [HMSyncAnisetteDataResponse objWithDict:a3];
  (*(*(a1 + 32) + 16))(*(a1 + 32), [v6 didSucceed], v5);
}

- (void)provisionAnisetteWithCompletion:(id)completion
{
  v25[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  initNewMessage = [(HMRemoteLoginMessage *)[HMProvisionAnisetteDataRequest alloc] initNewMessage];
  messageName = [initNewMessage messageName];
  v24 = messageName;
  v7 = encodeRootObject(initNewMessage);
  v25[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];

  v9 = objc_alloc(MEMORY[0x1E69A2A10]);
  messageName2 = [initNewMessage messageName];
  v11 = objc_alloc(MEMORY[0x1E69A2A00]);
  uuid = [(HMRemoteLoginAnisetteDataProvider *)self uuid];
  v13 = [v11 initWithTarget:uuid];
  v14 = [v9 initWithName:messageName2 destination:v13 payload:v8];

  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __69__HMRemoteLoginAnisetteDataProvider_provisionAnisetteWithCompletion___block_invoke;
  v22 = &unk_1E754C0F0;
  v23 = completionCopy;
  v15 = completionCopy;
  [v14 setResponseHandler:&v19];
  v16 = [(HMRemoteLoginAnisetteDataProvider *)self context:v19];
  messageDispatcher = [v16 messageDispatcher];
  [messageDispatcher sendMessage:v14];

  v18 = *MEMORY[0x1E69E9840];
}

void __69__HMRemoteLoginAnisetteDataProvider_provisionAnisetteWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [HMProvisionAnisetteDataResponse objWithDict:a3];
  (*(*(a1 + 32) + 16))(*(a1 + 32), [v6 didSucceed], v5);
}

@end