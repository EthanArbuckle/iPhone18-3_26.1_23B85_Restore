@interface HKMedicalIDStore
+ (id)serverInterface;
+ (id)setupStatusTaskIdentifier;
+ (id)taskIdentifier;
- (HKMedicalIDStore)initWithHealthStore:(id)a3;
- (id)lastFetchedMedicalIDData;
- (int64_t)medicalIDSetUpStatus;
- (void)addEmergencyContact:(id)a3 completion:(id)a4;
- (void)deleteMedicalIDDataWithCompletion:(id)a3;
- (void)fetchMedicalIDClinicalContactsWithCompletion:(id)a3;
- (void)fetchMedicalIDDataIfSetUpOrCreateDefaultWithCompletion:(id)a3;
- (void)fetchMedicalIDDataWithCompletion:(id)a3;
- (void)fetchMedicalIDEmergencyContactsWithCompletion:(id)a3;
- (void)removeEmergencyContact:(id)a3 completion:(id)a4;
- (void)setLastFetchedMedicalIDData:(id)a3;
- (void)updateMedicalIDData:(id)a3 completion:(id)a4;
@end

@implementation HKMedicalIDStore

- (HKMedicalIDStore)initWithHealthStore:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = HKMedicalIDStore;
  v5 = [(HKMedicalIDStore *)&v21 init];
  if (v5)
  {
    v6 = [HKTaskServerProxyProvider alloc];
    v7 = [objc_opt_class() taskIdentifier];
    v8 = [objc_opt_class() clientInterface];
    v9 = [objc_opt_class() serverInterface];
    v10 = [MEMORY[0x1E696AFB0] UUID];
    v11 = [(HKTaskServerProxyProvider *)v6 initWithHealthStore:v4 taskIdentifier:v7 exportedObject:v5 exportedInterface:v8 remoteInterface:v9 taskUUID:v10];
    proxyProvider = v5->_proxyProvider;
    v5->_proxyProvider = v11;

    [(HKProxyProvider *)v5->_proxyProvider setShouldRetryOnInterruption:0];
    v13 = [HKTaskServerProxyProvider alloc];
    v14 = [objc_opt_class() setupStatusTaskIdentifier];
    v15 = [objc_opt_class() setupStatusClientInterface];
    v16 = [objc_opt_class() setupStatusServerInterface];
    v17 = [MEMORY[0x1E696AFB0] UUID];
    v18 = [(HKTaskServerProxyProvider *)v13 initWithHealthStore:v4 taskIdentifier:v14 exportedObject:v5 exportedInterface:v15 remoteInterface:v16 taskUUID:v17];
    setupStatusProxyProvider = v5->_setupStatusProxyProvider;
    v5->_setupStatusProxyProvider = v18;

    [(HKProxyProvider *)v5->_setupStatusProxyProvider setShouldRetryOnInterruption:0];
  }

  return v5;
}

- (void)setLastFetchedMedicalIDData:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [v4 copy];

  lastFetchedMedicalIDData = self->_lastFetchedMedicalIDData;
  self->_lastFetchedMedicalIDData = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)lastFetchedMedicalIDData
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lastFetchedMedicalIDData;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

+ (id)taskIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)setupStatusTaskIdentifier
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"%@.%@", v4, @"setupStatus"];

  return v5;
}

- (int64_t)medicalIDSetUpStatus
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  setupStatusProxyProvider = self->_setupStatusProxyProvider;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__HKMedicalIDStore_medicalIDSetUpStatus__block_invoke;
  v5[3] = &unk_1E737F358;
  v5[4] = &v6;
  [(HKProxyProvider *)setupStatusProxyProvider getSynchronousProxyWithHandler:v5 errorHandler:&__block_literal_global_62];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __40__HKMedicalIDStore_medicalIDSetUpStatus__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__HKMedicalIDStore_medicalIDSetUpStatus__block_invoke_2;
  v3[3] = &unk_1E7379CB0;
  v3[4] = *(a1 + 32);
  return [a2 remote_medicalIDSetUpStatusWithCompletion:v3];
}

void __40__HKMedicalIDStore_medicalIDSetUpStatus__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  _HKInitializeLogging();
  v3 = HKLogInfrastructure();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __40__HKMedicalIDStore_medicalIDSetUpStatus__block_invoke_3_cold_1(v2, v3);
  }
}

- (void)fetchMedicalIDDataWithCompletion:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "completion"}];
  }

  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__HKMedicalIDStore_fetchMedicalIDDataWithCompletion___block_invoke;
  v13[3] = &unk_1E737F380;
  v13[4] = self;
  v14 = v4;
  v6 = [(HKProxyProvider *)proxyProvider clientQueueObjectHandlerWithCompletion:v13];
  v7 = self->_proxyProvider;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__HKMedicalIDStore_fetchMedicalIDDataWithCompletion___block_invoke_2;
  v11[3] = &unk_1E737F3A8;
  v12 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__HKMedicalIDStore_fetchMedicalIDDataWithCompletion___block_invoke_4;
  v9[3] = &unk_1E7376960;
  v10 = v12;
  v8 = v12;
  [(HKProxyProvider *)v7 fetchProxyWithHandler:v11 errorHandler:v9];
}

void __53__HKMedicalIDStore_fetchMedicalIDDataWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  [*(a1 + 32) setLastFetchedMedicalIDData:v7];
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v7, v5);
  }
}

void __53__HKMedicalIDStore_fetchMedicalIDDataWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__HKMedicalIDStore_fetchMedicalIDDataWithCompletion___block_invoke_3;
  v3[3] = &unk_1E73790F0;
  v4 = *(a1 + 32);
  [a2 remote_fetchMedicalIDWithCompletion:v3];
}

- (void)fetchMedicalIDDataIfSetUpOrCreateDefaultWithCompletion:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "completion"}];
  }

  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__HKMedicalIDStore_fetchMedicalIDDataIfSetUpOrCreateDefaultWithCompletion___block_invoke;
  v13[3] = &unk_1E737F380;
  v13[4] = self;
  v14 = v4;
  v6 = [(HKProxyProvider *)proxyProvider clientQueueObjectHandlerWithCompletion:v13];
  v7 = self->_proxyProvider;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__HKMedicalIDStore_fetchMedicalIDDataIfSetUpOrCreateDefaultWithCompletion___block_invoke_2;
  v11[3] = &unk_1E737F3A8;
  v12 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__HKMedicalIDStore_fetchMedicalIDDataIfSetUpOrCreateDefaultWithCompletion___block_invoke_4;
  v9[3] = &unk_1E7376960;
  v10 = v12;
  v8 = v12;
  [(HKProxyProvider *)v7 fetchProxyWithHandler:v11 errorHandler:v9];
}

void __75__HKMedicalIDStore_fetchMedicalIDDataIfSetUpOrCreateDefaultWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  [*(a1 + 32) setLastFetchedMedicalIDData:v7];
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v7, v5);
  }
}

void __75__HKMedicalIDStore_fetchMedicalIDDataIfSetUpOrCreateDefaultWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __75__HKMedicalIDStore_fetchMedicalIDDataIfSetUpOrCreateDefaultWithCompletion___block_invoke_3;
  v3[3] = &unk_1E73790F0;
  v4 = *(a1 + 32);
  [a2 remote_fetchMedicalIDDataIfSetUpOrCreateDefaultWithCompletion:v3];
}

- (void)fetchMedicalIDEmergencyContactsWithCompletion:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "completion"}];
  }

  v5 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:v4];

  proxyProvider = self->_proxyProvider;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__HKMedicalIDStore_fetchMedicalIDEmergencyContactsWithCompletion___block_invoke;
  v10[3] = &unk_1E737F3A8;
  v11 = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__HKMedicalIDStore_fetchMedicalIDEmergencyContactsWithCompletion___block_invoke_3;
  v8[3] = &unk_1E7376960;
  v9 = v11;
  v7 = v11;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v10 errorHandler:v8];
}

void __66__HKMedicalIDStore_fetchMedicalIDEmergencyContactsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __66__HKMedicalIDStore_fetchMedicalIDEmergencyContactsWithCompletion___block_invoke_2;
  v3[3] = &unk_1E737F3D0;
  v4 = *(a1 + 32);
  [a2 remote_medicalIDEmergencyContactsWithCompletion:v3];
}

- (void)fetchMedicalIDClinicalContactsWithCompletion:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "completion"}];
  }

  v5 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:v4];

  proxyProvider = self->_proxyProvider;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__HKMedicalIDStore_fetchMedicalIDClinicalContactsWithCompletion___block_invoke;
  v10[3] = &unk_1E737F3A8;
  v11 = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__HKMedicalIDStore_fetchMedicalIDClinicalContactsWithCompletion___block_invoke_3;
  v8[3] = &unk_1E7376960;
  v9 = v11;
  v7 = v11;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v10 errorHandler:v8];
}

void __65__HKMedicalIDStore_fetchMedicalIDClinicalContactsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __65__HKMedicalIDStore_fetchMedicalIDClinicalContactsWithCompletion___block_invoke_2;
  v3[3] = &unk_1E737F3D0;
  v4 = *(a1 + 32);
  [a2 remote_medicalIDClinicalContactsWithCompletion:v3];
}

- (void)updateMedicalIDData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a4];
  v8 = [(HKMedicalIDStore *)self lastFetchedMedicalIDData];
  [v6 setModificationDatesForUpdatedFieldsWithMedicalIDData:v8];

  proxyProvider = self->_proxyProvider;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __51__HKMedicalIDStore_updateMedicalIDData_completion___block_invoke;
  v14[3] = &unk_1E737F3F8;
  v15 = v6;
  v16 = self;
  v17 = v7;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__HKMedicalIDStore_updateMedicalIDData_completion___block_invoke_3;
  v12[3] = &unk_1E7376960;
  v13 = v17;
  v10 = v17;
  v11 = v6;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v14 errorHandler:v12];
}

void __51__HKMedicalIDStore_updateMedicalIDData_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 lastFetchedMedicalIDData];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__HKMedicalIDStore_updateMedicalIDData_completion___block_invoke_2;
  v7[3] = &unk_1E7376910;
  v8 = *(a1 + 48);
  [v5 remote_updateMedicalIDData:v3 lastFetchedMedicalIDData:v6 completion:v7];
}

- (void)deleteMedicalIDDataWithCompletion:(id)a3
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a3];
  v5 = objc_alloc_init(_HKMedicalIDData);
  [(_HKMedicalIDData *)v5 setIsDisabled:1];
  [(_HKMedicalIDData *)v5 setModificationDatesForUpdatedFieldsWithMedicalIDData:0];
  proxyProvider = self->_proxyProvider;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__HKMedicalIDStore_deleteMedicalIDDataWithCompletion___block_invoke;
  v10[3] = &unk_1E737F420;
  v10[4] = self;
  v11 = v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__HKMedicalIDStore_deleteMedicalIDDataWithCompletion___block_invoke_3;
  v8[3] = &unk_1E7376960;
  v9 = v11;
  v7 = v11;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v10 errorHandler:v8];
}

void __54__HKMedicalIDStore_deleteMedicalIDDataWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 lastFetchedMedicalIDData];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__HKMedicalIDStore_deleteMedicalIDDataWithCompletion___block_invoke_2;
  v6[3] = &unk_1E7376910;
  v7 = *(a1 + 40);
  [v4 remote_deleteMedicalIDDataWithLastFetchedMedicalIDData:v5 completion:v6];
}

- (void)addEmergencyContact:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__HKMedicalIDStore_addEmergencyContact_completion___block_invoke;
  v13[3] = &unk_1E737F420;
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__HKMedicalIDStore_addEmergencyContact_completion___block_invoke_3;
  v11[3] = &unk_1E7376960;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

void __51__HKMedicalIDStore_addEmergencyContact_completion___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__HKMedicalIDStore_addEmergencyContact_completion___block_invoke_2;
  v4[3] = &unk_1E7376910;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 remote_addEmergencyContact:v3 completion:v4];
}

- (void)removeEmergencyContact:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__HKMedicalIDStore_removeEmergencyContact_completion___block_invoke;
  v13[3] = &unk_1E737F420;
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__HKMedicalIDStore_removeEmergencyContact_completion___block_invoke_3;
  v11[3] = &unk_1E7376960;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

void __54__HKMedicalIDStore_removeEmergencyContact_completion___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__HKMedicalIDStore_removeEmergencyContact_completion___block_invoke_2;
  v4[3] = &unk_1E7376910;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 remote_removeEmergencyContact:v3 completion:v4];
}

+ (id)serverInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06F7898];
  v3 = [v2 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_medicalIDEmergencyContactsWithCompletion_ argumentIndex:0 ofReply:1];
  v4 = [v2 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_medicalIDClinicalContactsWithCompletion_ argumentIndex:0 ofReply:1];

  return v2;
}

void __40__HKMedicalIDStore_medicalIDSetUpStatus__block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Failed to get synchronous proxy with error, %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end