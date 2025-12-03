@interface HKNotificationSyncStore
+ (id)taskIdentifier;
- (HKNotificationSyncStore)initWithClientIdentifier:(id)identifier healthStore:(id)store;
- (void)fakeReceivedNotificationInstruction:(id)instruction sendingDeviceInfo:(id)info completion:(id)completion;
- (void)getNotificationHoldInstructionsWithCompletion:(id)completion;
- (void)obliterateNotificationInstructionsWithCompletion:(id)completion;
- (void)sendNewDeviceNotificationWithMessageKind:(int64_t)kind completion:(id)completion;
- (void)sendNotificationInstruction:(id)instruction completion:(id)completion;
- (void)sendNotificationInstruction:(id)instruction savingObjectAsExistsCriteria:(id)criteria completion:(id)completion;
@end

@implementation HKNotificationSyncStore

- (HKNotificationSyncStore)initWithClientIdentifier:(id)identifier healthStore:(id)store
{
  identifierCopy = identifier;
  storeCopy = store;
  v18.receiver = self;
  v18.super_class = HKNotificationSyncStore;
  v8 = [(HKNotificationSyncStore *)&v18 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    clientIdentifier = v8->_clientIdentifier;
    v8->_clientIdentifier = v9;

    v11 = [HKTaskServerProxyProvider alloc];
    taskIdentifier = [objc_opt_class() taskIdentifier];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v14 = [(HKTaskServerProxyProvider *)v11 initWithHealthStore:storeCopy taskIdentifier:taskIdentifier exportedObject:v8 taskUUID:uUID];
    proxyProvider = v8->_proxyProvider;
    v8->_proxyProvider = v14;

    [(HKProxyProvider *)v8->_proxyProvider setShouldRetryOnInterruption:0];
    v16 = [[HKNotificationSyncStoreServerConfiguration alloc] initWithClientIdentifier:identifierCopy];
    [(HKTaskServerProxyProvider *)v8->_proxyProvider setTaskConfiguration:v16];
  }

  return v8;
}

+ (id)taskIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)sendNotificationInstruction:(id)instruction completion:(id)completion
{
  instructionCopy = instruction;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__HKNotificationSyncStore_sendNotificationInstruction_completion___block_invoke;
  v13[3] = &unk_1E737C210;
  v14 = instructionCopy;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__HKNotificationSyncStore_sendNotificationInstruction_completion___block_invoke_2;
  v11[3] = &unk_1E7376960;
  v12 = v15;
  v9 = v15;
  v10 = instructionCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (void)sendNotificationInstruction:(id)instruction savingObjectAsExistsCriteria:(id)criteria completion:(id)completion
{
  instructionCopy = instruction;
  criteriaCopy = criteria;
  v10 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __95__HKNotificationSyncStore_sendNotificationInstruction_savingObjectAsExistsCriteria_completion___block_invoke;
  v17[3] = &unk_1E737C238;
  v18 = instructionCopy;
  v19 = criteriaCopy;
  v20 = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __95__HKNotificationSyncStore_sendNotificationInstruction_savingObjectAsExistsCriteria_completion___block_invoke_2;
  v15[3] = &unk_1E7376960;
  v16 = v20;
  v12 = v20;
  v13 = criteriaCopy;
  v14 = instructionCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v17 errorHandler:v15];
}

- (void)getNotificationHoldInstructionsWithCompletion:(id)completion
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__HKNotificationSyncStore_getNotificationHoldInstructionsWithCompletion___block_invoke;
  v9[3] = &unk_1E737C260;
  v10 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__HKNotificationSyncStore_getNotificationHoldInstructionsWithCompletion___block_invoke_2;
  v7[3] = &unk_1E7376960;
  v8 = v10;
  v6 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

- (void)fakeReceivedNotificationInstruction:(id)instruction sendingDeviceInfo:(id)info completion:(id)completion
{
  instructionCopy = instruction;
  infoCopy = info;
  v10 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __92__HKNotificationSyncStore_fakeReceivedNotificationInstruction_sendingDeviceInfo_completion___block_invoke;
  v17[3] = &unk_1E737C238;
  v18 = instructionCopy;
  v19 = infoCopy;
  v20 = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __92__HKNotificationSyncStore_fakeReceivedNotificationInstruction_sendingDeviceInfo_completion___block_invoke_2;
  v15[3] = &unk_1E7376960;
  v16 = v20;
  v12 = v20;
  v13 = infoCopy;
  v14 = instructionCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v17 errorHandler:v15];
}

- (void)obliterateNotificationInstructionsWithCompletion:(id)completion
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__HKNotificationSyncStore_obliterateNotificationInstructionsWithCompletion___block_invoke;
  v9[3] = &unk_1E737C260;
  v10 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__HKNotificationSyncStore_obliterateNotificationInstructionsWithCompletion___block_invoke_2;
  v7[3] = &unk_1E7376960;
  v8 = v10;
  v6 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

- (void)sendNewDeviceNotificationWithMessageKind:(int64_t)kind completion:(id)completion
{
  v6 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__HKNotificationSyncStore_sendNewDeviceNotificationWithMessageKind_completion___block_invoke;
  v11[3] = &unk_1E737C288;
  kindCopy = kind;
  v12 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__HKNotificationSyncStore_sendNewDeviceNotificationWithMessageKind_completion___block_invoke_2;
  v9[3] = &unk_1E7376960;
  v10 = v12;
  v8 = v12;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v11 errorHandler:v9];
}

@end