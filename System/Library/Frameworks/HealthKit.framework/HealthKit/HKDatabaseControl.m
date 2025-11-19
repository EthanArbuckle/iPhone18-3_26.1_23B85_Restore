@interface HKDatabaseControl
+ (id)taskIdentifier;
- (HKDatabaseControl)initWithHealthStore:(id)a3;
- (id)healthDatabaseIdentifierWithError:(id *)a3;
- (void)classifiedDeletedSampleInfoWithReferenceDate:(id)a3 anchor:(int64_t)a4 limit:(int64_t)a5 completion:(id)a6;
- (void)classifiedDeletedSampleInfoWithReferenceDate:(id)a3 createdOnOrAfter:(id)a4 createdBefore:(id)a5 limit:(int64_t)a6 completion:(id)a7;
- (void)deletedSampleDetailWithReferenceDate:(id)a3 matchingPredicatesOnly:(BOOL)a4 sampleUUID:(id)a5 completion:(id)a6;
- (void)deletedSampleInfoWithReferenceDate:(id)a3 completion:(id)a4;
- (void)deletedSamplesDetailWithReferenceDate:(id)a3 matchingPredicatesOnly:(BOOL)a4 samplesWithDifferentPruningOutcomesOnly:(BOOL)a5 anchor:(int64_t)a6 limit:(int64_t)a7 completion:(id)a8;
- (void)deletedSamplesDetailWithReferenceDate:(id)a3 matchingPredicatesOnly:(BOOL)a4 samplesWithDifferentPruningOutcomesOnly:(BOOL)a5 createdOnOrAfter:(id)a6 createdBefore:(id)a7 limit:(int64_t)a8 completion:(id)a9;
- (void)getHealthDirectorySizeInBytesWithCompletion:(id)a3;
- (void)hkqa_generateDemoDataWithDurationInDays:(int64_t)a3 completion:(id)a4;
- (void)hkqa_statisticsWithCompletion:(id)a3;
- (void)obliterateHealthDataWithOptions:(unint64_t)a3 completion:(id)a4;
- (void)performMigrationWithCompletion:(id)a3;
- (void)pruneSamplesWithReferenceDate:(id)a3 completion:(id)a4;
- (void)showAndDeletedSampleInfoWithReferenceDate:(id)a3 completion:(id)a4;
- (void)showWithReferenceDate:(id)a3 deletedSamplesOnly:(BOOL)a4 completion:(id)a5;
@end

@implementation HKDatabaseControl

- (HKDatabaseControl)initWithHealthStore:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HKDatabaseControl;
  v5 = [(HKDatabaseControl *)&v12 init];
  if (v5)
  {
    v6 = [HKTaskServerProxyProvider alloc];
    v7 = [objc_opt_class() taskIdentifier];
    v8 = [MEMORY[0x1E696AFB0] UUID];
    v9 = [(HKTaskServerProxyProvider *)v6 initWithHealthStore:v4 taskIdentifier:v7 exportedObject:v5 taskUUID:v8];
    proxyProvider = v5->_proxyProvider;
    v5->_proxyProvider = v9;

    [(HKProxyProvider *)v5->_proxyProvider setShouldRetryOnInterruption:0];
  }

  return v5;
}

+ (id)taskIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)healthDatabaseIdentifierWithError:(id *)a3
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__20;
  v22 = __Block_byref_object_dispose__20;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__20;
  v16 = __Block_byref_object_dispose__20;
  v17 = 0;
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__HKDatabaseControl_healthDatabaseIdentifierWithError___block_invoke;
  v11[3] = &unk_1E737D8E8;
  v11[4] = &v18;
  v11[5] = &v12;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__HKDatabaseControl_healthDatabaseIdentifierWithError___block_invoke_3;
  v10[3] = &unk_1E7378838;
  v10[4] = &v12;
  [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v11 errorHandler:v10];
  v5 = v13[5];
  v6 = v5;
  if (v5)
  {
    if (a3)
    {
      v7 = v5;
      *a3 = v6;
    }

    else
    {
      _HKLogDroppedError(v5);
    }
  }

  v8 = v19[5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

uint64_t __55__HKDatabaseControl_healthDatabaseIdentifierWithError___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__HKDatabaseControl_healthDatabaseIdentifierWithError___block_invoke_2;
  v3[3] = &unk_1E737D8C0;
  v4 = *(a1 + 32);
  return [a2 remote_getHealthDatabaseIdentifierWithCompletion:v3];
}

void __55__HKDatabaseControl_healthDatabaseIdentifierWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)getHealthDirectorySizeInBytesWithCompletion:(id)a3
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a3];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__HKDatabaseControl_getHealthDirectorySizeInBytesWithCompletion___block_invoke;
  v9[3] = &unk_1E737D910;
  v10 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__HKDatabaseControl_getHealthDirectorySizeInBytesWithCompletion___block_invoke_2;
  v7[3] = &unk_1E7376960;
  v8 = v10;
  v6 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

- (void)obliterateHealthDataWithOptions:(unint64_t)a3 completion:(id)a4
{
  v6 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__HKDatabaseControl_obliterateHealthDataWithOptions_completion___block_invoke;
  v11[3] = &unk_1E737D938;
  v13 = a3;
  v12 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__HKDatabaseControl_obliterateHealthDataWithOptions_completion___block_invoke_2;
  v9[3] = &unk_1E7376960;
  v10 = v12;
  v8 = v12;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v11 errorHandler:v9];
}

- (void)performMigrationWithCompletion:(id)a3
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a3];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__HKDatabaseControl_performMigrationWithCompletion___block_invoke;
  v9[3] = &unk_1E737D910;
  v10 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__HKDatabaseControl_performMigrationWithCompletion___block_invoke_2;
  v7[3] = &unk_1E7376960;
  v8 = v10;
  v6 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

- (void)hkqa_generateDemoDataWithDurationInDays:(int64_t)a3 completion:(id)a4
{
  v6 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__HKDatabaseControl_hkqa_generateDemoDataWithDurationInDays_completion___block_invoke;
  v11[3] = &unk_1E737D938;
  v13 = a3;
  v12 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__HKDatabaseControl_hkqa_generateDemoDataWithDurationInDays_completion___block_invoke_2;
  v9[3] = &unk_1E7376960;
  v10 = v12;
  v8 = v12;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v11 errorHandler:v9];
}

- (void)hkqa_statisticsWithCompletion:(id)a3
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a3];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__HKDatabaseControl_hkqa_statisticsWithCompletion___block_invoke;
  v9[3] = &unk_1E737D910;
  v10 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__HKDatabaseControl_hkqa_statisticsWithCompletion___block_invoke_2;
  v7[3] = &unk_1E7376960;
  v8 = v10;
  v6 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

- (void)showWithReferenceDate:(id)a3 deletedSamplesOnly:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a5];
  proxyProvider = self->_proxyProvider;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73__HKDatabaseControl_showWithReferenceDate_deletedSamplesOnly_completion___block_invoke;
  v15[3] = &unk_1E737D960;
  v16 = v8;
  v18 = a4;
  v17 = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__HKDatabaseControl_showWithReferenceDate_deletedSamplesOnly_completion___block_invoke_2;
  v13[3] = &unk_1E7376960;
  v14 = v17;
  v11 = v17;
  v12 = v8;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v15 errorHandler:v13];
}

- (void)showAndDeletedSampleInfoWithReferenceDate:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__HKDatabaseControl_showAndDeletedSampleInfoWithReferenceDate_completion___block_invoke;
  v13[3] = &unk_1E737D988;
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__HKDatabaseControl_showAndDeletedSampleInfoWithReferenceDate_completion___block_invoke_2;
  v11[3] = &unk_1E7376960;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (void)deletedSampleInfoWithReferenceDate:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__HKDatabaseControl_deletedSampleInfoWithReferenceDate_completion___block_invoke;
  v13[3] = &unk_1E737D988;
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__HKDatabaseControl_deletedSampleInfoWithReferenceDate_completion___block_invoke_2;
  v11[3] = &unk_1E7376960;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (void)classifiedDeletedSampleInfoWithReferenceDate:(id)a3 anchor:(int64_t)a4 limit:(int64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a6];
  proxyProvider = self->_proxyProvider;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __90__HKDatabaseControl_classifiedDeletedSampleInfoWithReferenceDate_anchor_limit_completion___block_invoke;
  v17[3] = &unk_1E737D9B0;
  v18 = v10;
  v20 = a4;
  v21 = a5;
  v19 = v11;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __90__HKDatabaseControl_classifiedDeletedSampleInfoWithReferenceDate_anchor_limit_completion___block_invoke_2;
  v15[3] = &unk_1E7376960;
  v16 = v19;
  v13 = v19;
  v14 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v17 errorHandler:v15];
}

- (void)classifiedDeletedSampleInfoWithReferenceDate:(id)a3 createdOnOrAfter:(id)a4 createdBefore:(id)a5 limit:(int64_t)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a7];
  proxyProvider = self->_proxyProvider;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __114__HKDatabaseControl_classifiedDeletedSampleInfoWithReferenceDate_createdOnOrAfter_createdBefore_limit_completion___block_invoke;
  v23[3] = &unk_1E737D9D8;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v28 = a6;
  v27 = v15;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __114__HKDatabaseControl_classifiedDeletedSampleInfoWithReferenceDate_createdOnOrAfter_createdBefore_limit_completion___block_invoke_2;
  v21[3] = &unk_1E7376960;
  v22 = v27;
  v17 = v27;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v23 errorHandler:v21];
}

- (void)deletedSampleDetailWithReferenceDate:(id)a3 matchingPredicatesOnly:(BOOL)a4 sampleUUID:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a6];
  proxyProvider = self->_proxyProvider;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __103__HKDatabaseControl_deletedSampleDetailWithReferenceDate_matchingPredicatesOnly_sampleUUID_completion___block_invoke;
  v19[3] = &unk_1E737DA00;
  v23 = a4;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __103__HKDatabaseControl_deletedSampleDetailWithReferenceDate_matchingPredicatesOnly_sampleUUID_completion___block_invoke_2;
  v17[3] = &unk_1E7376960;
  v18 = v22;
  v14 = v22;
  v15 = v11;
  v16 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v19 errorHandler:v17];
}

- (void)deletedSamplesDetailWithReferenceDate:(id)a3 matchingPredicatesOnly:(BOOL)a4 samplesWithDifferentPruningOutcomesOnly:(BOOL)a5 anchor:(int64_t)a6 limit:(int64_t)a7 completion:(id)a8
{
  v14 = a3;
  v15 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a8];
  proxyProvider = self->_proxyProvider;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __146__HKDatabaseControl_deletedSamplesDetailWithReferenceDate_matchingPredicatesOnly_samplesWithDifferentPruningOutcomesOnly_anchor_limit_completion___block_invoke;
  v21[3] = &unk_1E737DA28;
  v26 = a4;
  v27 = a5;
  v22 = v14;
  v24 = a6;
  v25 = a7;
  v23 = v15;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __146__HKDatabaseControl_deletedSamplesDetailWithReferenceDate_matchingPredicatesOnly_samplesWithDifferentPruningOutcomesOnly_anchor_limit_completion___block_invoke_2;
  v19[3] = &unk_1E7376960;
  v20 = v23;
  v17 = v23;
  v18 = v14;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v21 errorHandler:v19];
}

- (void)deletedSamplesDetailWithReferenceDate:(id)a3 matchingPredicatesOnly:(BOOL)a4 samplesWithDifferentPruningOutcomesOnly:(BOOL)a5 createdOnOrAfter:(id)a6 createdBefore:(id)a7 limit:(int64_t)a8 completion:(id)a9
{
  v15 = a3;
  v16 = a6;
  v17 = a7;
  v18 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a9];
  proxyProvider = self->_proxyProvider;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __170__HKDatabaseControl_deletedSamplesDetailWithReferenceDate_matchingPredicatesOnly_samplesWithDifferentPruningOutcomesOnly_createdOnOrAfter_createdBefore_limit_completion___block_invoke;
  v26[3] = &unk_1E737DA50;
  v32 = a4;
  v33 = a5;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v31 = a8;
  v30 = v18;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __170__HKDatabaseControl_deletedSamplesDetailWithReferenceDate_matchingPredicatesOnly_samplesWithDifferentPruningOutcomesOnly_createdOnOrAfter_createdBefore_limit_completion___block_invoke_2;
  v24[3] = &unk_1E7376960;
  v25 = v30;
  v20 = v30;
  v21 = v17;
  v22 = v16;
  v23 = v15;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v26 errorHandler:v24];
}

- (void)pruneSamplesWithReferenceDate:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__HKDatabaseControl_pruneSamplesWithReferenceDate_completion___block_invoke;
  v13[3] = &unk_1E737D988;
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__HKDatabaseControl_pruneSamplesWithReferenceDate_completion___block_invoke_2;
  v11[3] = &unk_1E7376960;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

@end