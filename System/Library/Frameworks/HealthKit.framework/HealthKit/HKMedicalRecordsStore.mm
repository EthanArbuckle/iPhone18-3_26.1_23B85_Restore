@interface HKMedicalRecordsStore
+ (id)taskIdentifier;
- (HKMedicalRecordsStore)initWithHealthStore:(id)store;
- (void)fetchMedicalRecordsForClinicalRecords:(id)records completion:(id)completion;
@end

@implementation HKMedicalRecordsStore

- (HKMedicalRecordsStore)initWithHealthStore:(id)store
{
  storeCopy = store;
  v13.receiver = self;
  v13.super_class = HKMedicalRecordsStore;
  v5 = [(HKMedicalRecordsStore *)&v13 init];
  if (v5)
  {
    v6 = [HKTaskServerProxyProvider alloc];
    taskIdentifier = [objc_opt_class() taskIdentifier];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v9 = [(HKTaskServerProxyProvider *)v6 initWithHealthStore:storeCopy taskIdentifier:taskIdentifier exportedObject:v5 taskUUID:uUID];
    proxyProvider = v5->_proxyProvider;
    v5->_proxyProvider = v9;

    [(HKProxyProvider *)v5->_proxyProvider setShouldRetryOnInterruption:0];
    v11 = objc_alloc_init(HKTaskConfiguration);
    [(HKTaskServerProxyProvider *)v5->_proxyProvider setTaskConfiguration:v11];
  }

  return v5;
}

+ (id)taskIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)fetchMedicalRecordsForClinicalRecords:(id)records completion:(id)completion
{
  proxyProvider = self->_proxyProvider;
  recordsCopy = records;
  v8 = [(HKProxyProvider *)proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  v9 = [recordsCopy hk_map:&__block_literal_global_35];

  v10 = self->_proxyProvider;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __74__HKMedicalRecordsStore_fetchMedicalRecordsForClinicalRecords_completion___block_invoke_2;
  v15[3] = &unk_1E737BC18;
  v16 = v9;
  v17 = v8;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__HKMedicalRecordsStore_fetchMedicalRecordsForClinicalRecords_completion___block_invoke_3;
  v13[3] = &unk_1E7376960;
  v14 = v17;
  v11 = v17;
  v12 = v9;
  [(HKProxyProvider *)v10 fetchProxyWithHandler:v15 errorHandler:v13];
}

@end