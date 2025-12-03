@interface HKCloudSyncShareParticipantManager
+ (id)serverInterface;
+ (id)taskIdentifier;
- (HKCloudSyncShareParticipantManager)initWithHealthStore:(id)store;
- (int64_t)lastKnownParticipantSharingStatus;
- (void)fetchAllShareParticipantEmailAddressesForSharingType:(unint64_t)type completion:(id)completion;
- (void)revokeAccessForAllShareParticipantsForSharingType:(unint64_t)type completion:(id)completion;
- (void)tearDownHealthSharingForProfile:(id)profile completion:(id)completion;
@end

@implementation HKCloudSyncShareParticipantManager

- (int64_t)lastKnownParticipantSharingStatus
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  proxyProvider = self->_proxyProvider;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__HKCloudSyncShareParticipantManager_lastKnownParticipantSharingStatus__block_invoke;
  v5[3] = &unk_1E7379CD8;
  v5[4] = &v6;
  [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v5 errorHandler:&__block_literal_global_12];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __71__HKCloudSyncShareParticipantManager_lastKnownParticipantSharingStatus__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __71__HKCloudSyncShareParticipantManager_lastKnownParticipantSharingStatus__block_invoke_2;
  v3[3] = &unk_1E7379CB0;
  v3[4] = *(a1 + 32);
  return [a2 remote_fetchSharingParticipantStatus:v3];
}

void __71__HKCloudSyncShareParticipantManager_lastKnownParticipantSharingStatus__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  _HKInitializeLogging();
  v3 = HKLogInfrastructure();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __71__HKCloudSyncShareParticipantManager_lastKnownParticipantSharingStatus__block_invoke_3_cold_1(v2, v3);
  }
}

- (HKCloudSyncShareParticipantManager)initWithHealthStore:(id)store
{
  storeCopy = store;
  v14.receiver = self;
  v14.super_class = HKCloudSyncShareParticipantManager;
  v6 = [(HKCloudSyncShareParticipantManager *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, store);
    v8 = [HKTaskServerProxyProvider alloc];
    taskIdentifier = [objc_opt_class() taskIdentifier];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v11 = [(HKTaskServerProxyProvider *)v8 initWithHealthStore:storeCopy taskIdentifier:taskIdentifier exportedObject:v7 taskUUID:uUID];
    proxyProvider = v7->_proxyProvider;
    v7->_proxyProvider = v11;

    [(HKProxyProvider *)v7->_proxyProvider setShouldRetryOnInterruption:0];
  }

  return v7;
}

+ (id)taskIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)serverInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06F6B78];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_remote_fetchAllShareParticipantEmailAddressesForSharingType_completion_ argumentIndex:0 ofReply:1];

  return v2;
}

- (void)fetchAllShareParticipantEmailAddressesForSharingType:(unint64_t)type completion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    [HKCloudSyncShareParticipantManager fetchAllShareParticipantEmailAddressesForSharingType:a2 completion:self];
  }

  v8 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completionCopy];

  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __102__HKCloudSyncShareParticipantManager_fetchAllShareParticipantEmailAddressesForSharingType_completion___block_invoke;
  v13[3] = &unk_1E7379D00;
  typeCopy = type;
  v14 = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __102__HKCloudSyncShareParticipantManager_fetchAllShareParticipantEmailAddressesForSharingType_completion___block_invoke_2;
  v11[3] = &unk_1E7376960;
  v12 = v14;
  v10 = v14;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (void)revokeAccessForAllShareParticipantsForSharingType:(unint64_t)type completion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    [HKCloudSyncShareParticipantManager revokeAccessForAllShareParticipantsForSharingType:a2 completion:self];
  }

  v8 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completionCopy];

  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __99__HKCloudSyncShareParticipantManager_revokeAccessForAllShareParticipantsForSharingType_completion___block_invoke;
  v13[3] = &unk_1E7379D00;
  typeCopy = type;
  v14 = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __99__HKCloudSyncShareParticipantManager_revokeAccessForAllShareParticipantsForSharingType_completion___block_invoke_2;
  v11[3] = &unk_1E7376960;
  v12 = v14;
  v10 = v14;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (void)tearDownHealthSharingForProfile:(id)profile completion:(id)completion
{
  profileCopy = profile;
  completionCopy = completion;
  if (!completionCopy)
  {
    [HKCloudSyncShareParticipantManager tearDownHealthSharingForProfile:a2 completion:self];
  }

  v9 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completionCopy];

  proxyProvider = self->_proxyProvider;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81__HKCloudSyncShareParticipantManager_tearDownHealthSharingForProfile_completion___block_invoke;
  v15[3] = &unk_1E7379D28;
  v16 = profileCopy;
  v17 = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__HKCloudSyncShareParticipantManager_tearDownHealthSharingForProfile_completion___block_invoke_2;
  v13[3] = &unk_1E7376960;
  v14 = v17;
  v11 = v17;
  v12 = profileCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v15 errorHandler:v13];
}

void __71__HKCloudSyncShareParticipantManager_lastKnownParticipantSharingStatus__block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Failed to retrieve proxy with error, %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)fetchAllShareParticipantEmailAddressesForSharingType:(uint64_t)a1 completion:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKCloudSyncShareParticipantManager.m" lineNumber:94 description:{@"Invalid parameter not satisfying: %@", @"completion != nil"}];
}

- (void)revokeAccessForAllShareParticipantsForSharingType:(uint64_t)a1 completion:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKCloudSyncShareParticipantManager.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"completion != nil"}];
}

- (void)tearDownHealthSharingForProfile:(uint64_t)a1 completion:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKCloudSyncShareParticipantManager.m" lineNumber:118 description:{@"Invalid parameter not satisfying: %@", @"completion != nil"}];
}

@end