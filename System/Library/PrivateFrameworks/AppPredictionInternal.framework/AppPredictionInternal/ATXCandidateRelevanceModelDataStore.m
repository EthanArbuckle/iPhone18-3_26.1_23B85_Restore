@interface ATXCandidateRelevanceModelDataStore
- (ATXCandidateRelevanceModelDataStore)init;
- (ATXCandidateRelevanceModelDataStore)initWithDataStore:(id)a3;
- (BOOL)isModelUUIDVerified:(id)a3;
- (id)cachedCandidatesForModelId:(id)a3 earliestDate:(id)a4;
- (id)clientModelNamesWithTrainedRelevanceModels;
- (id)idsInTableWithName:(id)a3;
- (id)modelUUIDToTrainDateForClientModelName:(id)a3;
- (id)mostRecentVerifiedTrainDateForClientModelName:(id)a3;
- (id)mostRecentVerifiedTrainingResultsForClientModelName:(id)a3;
- (id)trainingResultsForClientModelName:(id)a3 modelUUID:(id)a4;
- (int64_t)candidateIdForCandidate:(id)a3 error:(id *)a4;
- (int64_t)datasetMetadataIdForDatasetMetadata:(id)a3 error:(id *)a4;
- (int64_t)featurizationManagerIdForFeaturizationManager:(id)a3 error:(id *)a4;
- (unint64_t)numberOfCandidateIds;
- (unint64_t)numberOfDatasetMetadataIds;
- (unint64_t)numberOfFeaturizationManagerIds;
- (unint64_t)numberOfTrainedModels;
- (void)cacheSelectedCandidates:(id)a3 featurizationManager:(id)a4 modelId:(id)a5;
- (void)deleteCachedCandidatesForModelId:(id)a3;
- (void)deleteRowsWithIds:(id)a3 fromTableWithName:(id)a4;
- (void)deleteTrainedModelsWithTrainDateOlderThanDate:(id)a3;
- (void)receiveMostRecentVerifiedTrainedModelTrainingResults:(id)a3 clientModelName:(id)a4 completion:(id)a5;
- (void)receiveMostRecentVerifiedTrainedModelTrainingResults:(id)a3 completion:(id)a4;
- (void)receiveTrainingResult:(id)a3 completion:(id)a4 modelUUID:(id)a5 clientModelName:(id)a6;
- (void)writeSuccessfulVerificationForModelUUID:(id)a3;
- (void)writeTrainingResult:(id)a3;
- (void)writeVerificationStatusForModelUUID:(id)a3 clientModelName:(id)a4 expectedNumberOfModels:(unint64_t)a5;
@end

@implementation ATXCandidateRelevanceModelDataStore

- (ATXCandidateRelevanceModelDataStore)init
{
  v3 = +[_ATXDataStore sharedInstance];
  v4 = [(ATXCandidateRelevanceModelDataStore *)self initWithDataStore:v3];

  return v4;
}

- (ATXCandidateRelevanceModelDataStore)initWithDataStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXCandidateRelevanceModelDataStore;
  v6 = [(ATXCandidateRelevanceModelDataStore *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataStore, a3);
  }

  return v7;
}

- (void)writeTrainingResult:(id)a3
{
  v4 = a3;
  v5 = [v4 featurizationManager];
  v27 = 0;
  v6 = [(ATXCandidateRelevanceModelDataStore *)self featurizationManagerIdForFeaturizationManager:v5 error:&v27];
  v7 = v27;

  if (v7)
  {
    v8 = __atxlog_handle_relevance_model();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ATXCandidateRelevanceModelDataStore writeTrainingResult:];
    }
  }

  else
  {
    v9 = [v4 candidate];
    v26 = 0;
    v10 = [(ATXCandidateRelevanceModelDataStore *)self candidateIdForCandidate:v9 error:&v26];
    v7 = v26;

    if (v7)
    {
      v8 = __atxlog_handle_relevance_model();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [ATXCandidateRelevanceModelDataStore writeTrainingResult:];
      }
    }

    else
    {
      v11 = [v4 datasetMetadata];
      v25 = 0;
      v12 = [(ATXCandidateRelevanceModelDataStore *)self datasetMetadataIdForDatasetMetadata:v11 error:&v25];
      v7 = v25;

      if (v7)
      {
        v8 = __atxlog_handle_relevance_model();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [ATXCandidateRelevanceModelDataStore writeTrainingResult:];
        }
      }

      else
      {
        v13 = objc_autoreleasePoolPush();
        v14 = MEMORY[0x277CCAAB0];
        v15 = [v4 model];
        v24 = 0;
        v8 = [v14 archivedDataWithRootObject:v15 requiringSecureCoding:1 error:&v24];
        v7 = v24;

        objc_autoreleasePoolPop(v13);
        if (v7)
        {
          v16 = __atxlog_handle_relevance_model();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [ATXCandidateRelevanceModelDataStore writeTrainingResult:];
          }
        }

        else
        {
          dataStore = self->_dataStore;
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = __59__ATXCandidateRelevanceModelDataStore_writeTrainingResult___block_invoke;
          v18[3] = &unk_27859A340;
          v18[4] = self;
          v19 = v4;
          v21 = v10;
          v8 = v8;
          v20 = v8;
          v22 = v6;
          v23 = v12;
          [(_ATXDataStore *)dataStore _doSync:v18];
        }
      }
    }
  }
}

void __59__ATXCandidateRelevanceModelDataStore_writeTrainingResult___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__ATXCandidateRelevanceModelDataStore_writeTrainingResult___block_invoke_2;
  v7[3] = &unk_27859A340;
  v3 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v4 = v3;
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);
  v8 = v4;
  v10 = v5;
  v9 = v6;
  v11 = *(a1 + 64);
  [v2 writeTransaction:v7];
}

void __59__ATXCandidateRelevanceModelDataStore_writeTrainingResult___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__ATXCandidateRelevanceModelDataStore_writeTrainingResult___block_invoke_3;
  v6[3] = &unk_27859A318;
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  v7 = v3;
  v9 = v4;
  v8 = v5;
  v10 = *(a1 + 64);
  [v2 prepAndRunQuery:@"INSERT INTO relevanceCandidateModels (modelUUID onPrep:clientModelName onRow:candidateId onError:{candidateModelData, featurizationManagerId, trainDate, datasetMetadataId, isVerified) VALUES (:modelUUID, :clientModelName, :candidateId, :candidateModelData, :featurizationManagerId, :trainDate, :datasetMetadataId, :isVerified)", v6, 0, 0}];
}

void __59__ATXCandidateRelevanceModelDataStore_writeTrainingResult___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v9 = a2;
  v4 = [v3 modelUUID];
  v5 = [v4 UUIDString];
  [v9 bindNamedParam:":modelUUID" toNSString:v5];

  v6 = [*(a1 + 32) clientModelName];
  [v9 bindNamedParam:":clientModelName" toNSString:v6];

  [v9 bindNamedParam:":candidateId" toInt64:*(a1 + 48)];
  [v9 bindNamedParam:":candidateModelData" toNSData:*(a1 + 40)];
  [v9 bindNamedParam:":featurizationManagerId" toInt64:*(a1 + 56)];
  v7 = [*(a1 + 32) trainDate];
  [v7 timeIntervalSinceReferenceDate];
  [v9 bindNamedParam:":trainDate" toInt64:v8];

  [v9 bindNamedParam:":datasetMetadataId" toInt64:*(a1 + 64)];
  [v9 bindNamedParam:":isVerified" toInteger:{objc_msgSend(*(a1 + 32), "isVerified")}];
}

- (int64_t)featurizationManagerIdForFeaturizationManager:(id)a3 error:(id *)a4
{
  v36[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v7 = objc_autoreleasePoolPush();
  v28 = 0;
  v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v28];
  v9 = v28;
  objc_autoreleasePoolPop(v7);
  if (v9)
  {
    if (a4)
    {
      v10 = MEMORY[0x277CCA9B8];
      v35 = *MEMORY[0x277CCA068];
      v36[0] = @"Failed to serialize featurizationManager";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
      *a4 = [v10 errorWithDomain:@"ATXCandidateRelevanceModelDataStore" code:1 userInfo:v11];
    }

    v12 = v30[3];
  }

  else
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    dataStore = self->_dataStore;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __91__ATXCandidateRelevanceModelDataStore_featurizationManagerIdForFeaturizationManager_error___block_invoke;
    v20[3] = &unk_27859A390;
    v20[4] = self;
    v21 = v8;
    v22 = &v29;
    v23 = &v24;
    [(_ATXDataStore *)dataStore _doSync:v20];
    if ((v25[3] & 1) == 0)
    {
      v14 = __atxlog_handle_relevance_model();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        v15 = objc_opt_class();
        NSStringFromClass(v15);
        objc_claimAutoreleasedReturnValue();
        [ATXCandidateRelevanceModelDataStore featurizationManagerIdForFeaturizationManager:error:];
      }

      if (a4)
      {
        v16 = MEMORY[0x277CCA9B8];
        v33 = *MEMORY[0x277CCA068];
        v34 = @"Failed to find corresponding featurizationManagerId for featurization manager";
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
        *a4 = [v16 errorWithDomain:@"ATXCandidateRelevanceModelDataStore" code:1 userInfo:v17];
      }
    }

    v12 = v30[3];

    _Block_object_dispose(&v24, 8);
  }

  _Block_object_dispose(&v29, 8);
  v18 = *MEMORY[0x277D85DE8];
  return v12;
}

void __91__ATXCandidateRelevanceModelDataStore_featurizationManagerIdForFeaturizationManager_error___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __91__ATXCandidateRelevanceModelDataStore_featurizationManagerIdForFeaturizationManager_error___block_invoke_2;
  v4[3] = &unk_27859A390;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  [v2 writeTransaction:v4];
}

void __91__ATXCandidateRelevanceModelDataStore_featurizationManagerIdForFeaturizationManager_error___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __91__ATXCandidateRelevanceModelDataStore_featurizationManagerIdForFeaturizationManager_error___block_invoke_3;
  v8[3] = &unk_278598768;
  v9 = *(a1 + 40);
  [v2 prepAndRunQuery:@"INSERT OR IGNORE INTO relevanceFeaturizationManagers (featurizationManagerData) VALUES (:featurizationManagerData)" onPrep:v8 onRow:0 onError:0];

  v3 = [*(*(a1 + 32) + 8) db];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __91__ATXCandidateRelevanceModelDataStore_featurizationManagerIdForFeaturizationManager_error___block_invoke_4;
  v6[3] = &unk_278598768;
  v7 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __91__ATXCandidateRelevanceModelDataStore_featurizationManagerIdForFeaturizationManager_error___block_invoke_5;
  v4[3] = &unk_27859A368;
  v5 = *(a1 + 48);
  [v3 prepAndRunQuery:@"SELECT id FROM relevanceFeaturizationManagers WHERE featurizationManagerData=:featurizationManagerData" onPrep:v6 onRow:v4 onError:0];
}

uint64_t __91__ATXCandidateRelevanceModelDataStore_featurizationManagerIdForFeaturizationManager_error___block_invoke_5(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 24) = [a2 getInt64ForColumn:0];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return *MEMORY[0x277D42698];
}

- (int64_t)datasetMetadataIdForDatasetMetadata:(id)a3 error:(id *)a4
{
  v33[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  dataStore = self->_dataStore;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __81__ATXCandidateRelevanceModelDataStore_datasetMetadataIdForDatasetMetadata_error___block_invoke;
  v19 = &unk_27859A390;
  v20 = self;
  v8 = v6;
  v21 = v8;
  v22 = &v28;
  v23 = &v24;
  [(_ATXDataStore *)dataStore _doSync:&v16];
  if ((v25[3] & 1) == 0)
  {
    v9 = __atxlog_handle_relevance_model();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = objc_opt_class();
      NSStringFromClass(v10);
      objc_claimAutoreleasedReturnValue();
      [ATXCandidateRelevanceModelDataStore datasetMetadataIdForDatasetMetadata:error:];
    }

    if (a4)
    {
      v11 = MEMORY[0x277CCA9B8];
      v32 = *MEMORY[0x277CCA068];
      v33[0] = @"Failed to find corresponding datasetMetadataId for datasetMetadata";
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:{1, v16, v17, v18, v19, v20}];
      *a4 = [v11 errorWithDomain:@"ATXCandidateRelevanceModelDataStore" code:1 userInfo:v12];
    }
  }

  v13 = v29[3];

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

void __81__ATXCandidateRelevanceModelDataStore_datasetMetadataIdForDatasetMetadata_error___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __81__ATXCandidateRelevanceModelDataStore_datasetMetadataIdForDatasetMetadata_error___block_invoke_2;
  v4[3] = &unk_27859A390;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  [v2 writeTransaction:v4];
}

void __81__ATXCandidateRelevanceModelDataStore_datasetMetadataIdForDatasetMetadata_error___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81__ATXCandidateRelevanceModelDataStore_datasetMetadataIdForDatasetMetadata_error___block_invoke_3;
  v8[3] = &unk_278598768;
  v9 = *(a1 + 40);
  [v2 prepAndRunQuery:@"INSERT OR IGNORE INTO relevanceDatasetMetadata (numberOfPositiveSamples onPrep:numberOfSamples onRow:numberOfDaysWithPositiveSamples onError:{numberOfDaysWithSamples, startDate, endDate) VALUES (:numberOfPositiveSamples, :numberOfSamples, :numberOfDaysWithPositiveSamples, :numberOfDaysWithSamples, :startDate, :endDate)", v8, 0, 0}];

  v3 = [*(*(a1 + 32) + 8) db];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __81__ATXCandidateRelevanceModelDataStore_datasetMetadataIdForDatasetMetadata_error___block_invoke_4;
  v6[3] = &unk_278598768;
  v7 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __81__ATXCandidateRelevanceModelDataStore_datasetMetadataIdForDatasetMetadata_error___block_invoke_5;
  v4[3] = &unk_27859A368;
  v5 = *(a1 + 48);
  [v3 prepAndRunQuery:@"SELECT id FROM relevanceDatasetMetadata WHERE numberOfPositiveSamples=:numberOfPositiveSamples AND numberOfSamples=:numberOfSamples AND numberOfDaysWithPositiveSamples=:numberOfDaysWithPositiveSamples AND numberOfDaysWithSamples=:numberOfDaysWithSamples AND startDate=:startDate AND endDate=:endDate" onPrep:v6 onRow:v4 onError:0];
}

void __81__ATXCandidateRelevanceModelDataStore_datasetMetadataIdForDatasetMetadata_error___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":numberOfPositiveSamples" toInteger:{objc_msgSend(v3, "numberOfPositiveSamples")}];
  [v4 bindNamedParam:":numberOfSamples" toInteger:{objc_msgSend(*(a1 + 32), "numberOfSamples")}];
  [v4 bindNamedParam:":numberOfDaysWithPositiveSamples" toInteger:{objc_msgSend(*(a1 + 32), "numberOfDaysWithPositiveSamples")}];
  [v4 bindNamedParam:":numberOfDaysWithSamples" toInteger:{objc_msgSend(*(a1 + 32), "numberOfDaysWithSamples")}];
  v5 = [*(a1 + 32) startDate];
  [v5 timeIntervalSinceReferenceDate];
  [v4 bindNamedParam:":startDate" toInt64:v6];

  v8 = [*(a1 + 32) endDate];
  [v8 timeIntervalSinceReferenceDate];
  [v4 bindNamedParam:":endDate" toInt64:v7];
}

void __81__ATXCandidateRelevanceModelDataStore_datasetMetadataIdForDatasetMetadata_error___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":numberOfPositiveSamples" toInteger:{objc_msgSend(v3, "numberOfPositiveSamples")}];
  [v4 bindNamedParam:":numberOfSamples" toInteger:{objc_msgSend(*(a1 + 32), "numberOfSamples")}];
  [v4 bindNamedParam:":numberOfDaysWithPositiveSamples" toInteger:{objc_msgSend(*(a1 + 32), "numberOfDaysWithPositiveSamples")}];
  [v4 bindNamedParam:":numberOfDaysWithSamples" toInteger:{objc_msgSend(*(a1 + 32), "numberOfDaysWithSamples")}];
  v5 = [*(a1 + 32) startDate];
  [v5 timeIntervalSinceReferenceDate];
  [v4 bindNamedParam:":startDate" toInt64:v6];

  v8 = [*(a1 + 32) endDate];
  [v8 timeIntervalSinceReferenceDate];
  [v4 bindNamedParam:":endDate" toInt64:v7];
}

uint64_t __81__ATXCandidateRelevanceModelDataStore_datasetMetadataIdForDatasetMetadata_error___block_invoke_5(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 24) = [a2 getInt64ForColumn:0];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return *MEMORY[0x277D42698];
}

- (void)cacheSelectedCandidates:(id)a3 featurizationManager:(id)a4 modelId:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:0];
  objc_autoreleasePoolPop(v11);
  v13 = objc_autoreleasePoolPush();
  v14 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v9 requiringSecureCoding:1 error:0];
  objc_autoreleasePoolPop(v13);
  dataStore = self->_dataStore;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __92__ATXCandidateRelevanceModelDataStore_cacheSelectedCandidates_featurizationManager_modelId___block_invoke;
  v19[3] = &unk_2785978C0;
  v19[4] = self;
  v20 = v10;
  v21 = v12;
  v22 = v14;
  v16 = v14;
  v17 = v12;
  v18 = v10;
  [(_ATXDataStore *)dataStore _doSync:v19];
}

void __92__ATXCandidateRelevanceModelDataStore_cacheSelectedCandidates_featurizationManager_modelId___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __92__ATXCandidateRelevanceModelDataStore_cacheSelectedCandidates_featurizationManager_modelId___block_invoke_2;
  v8[3] = &unk_2785978C0;
  v7 = *(a1 + 32);
  v3 = *(&v7 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v2 writeTransaction:v8];
}

void __92__ATXCandidateRelevanceModelDataStore_cacheSelectedCandidates_featurizationManager_modelId___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __92__ATXCandidateRelevanceModelDataStore_cacheSelectedCandidates_featurizationManager_modelId___block_invoke_3;
  v3[3] = &unk_278599DB8;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 prepAndRunQuery:@"INSERT OR REPLACE INTO relevanceCandidateCache (modelId onPrep:date onRow:candidateList onError:{featurizationManager) VALUES (:modelId, :date, :candidateList, :featurizationManager)", v3, 0, 0}];
}

void __92__ATXCandidateRelevanceModelDataStore_cacheSelectedCandidates_featurizationManager_modelId___block_invoke_3(void *a1, void *a2)
{
  v3 = a1[4];
  v6 = a2;
  [v6 bindNamedParam:":modelId" toNSString:v3];
  v4 = [MEMORY[0x277CBEAA8] now];
  [v4 timeIntervalSinceReferenceDate];
  [v6 bindNamedParam:":date" toInt64:v5];

  [v6 bindNamedParam:":candidateList" toNSData:a1[5]];
  [v6 bindNamedParam:":featurizationManager" toNSData:a1[6]];
}

- (void)deleteCachedCandidatesForModelId:(id)a3
{
  v4 = a3;
  dataStore = self->_dataStore;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__ATXCandidateRelevanceModelDataStore_deleteCachedCandidatesForModelId___block_invoke;
  v7[3] = &unk_278596C10;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(_ATXDataStore *)dataStore _doSync:v7];
}

void __72__ATXCandidateRelevanceModelDataStore_deleteCachedCandidatesForModelId___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __72__ATXCandidateRelevanceModelDataStore_deleteCachedCandidatesForModelId___block_invoke_2;
  v4[3] = &unk_278596C10;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 writeTransaction:v4];
}

void __72__ATXCandidateRelevanceModelDataStore_deleteCachedCandidatesForModelId___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __72__ATXCandidateRelevanceModelDataStore_deleteCachedCandidatesForModelId___block_invoke_3;
  v3[3] = &unk_278598768;
  v4 = *(a1 + 40);
  [v2 prepAndRunQuery:@"DELETE FROM relevanceCandidateCache WHERE modelId = :modelId" onPrep:v3 onRow:0 onError:0];
}

- (id)cachedCandidatesForModelId:(id)a3 earliestDate:(id)a4
{
  v71 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__32;
  v59 = __Block_byref_object_dispose__32;
  v60 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__32;
  v53 = __Block_byref_object_dispose__32;
  v54 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  dataStore = self->_dataStore;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __79__ATXCandidateRelevanceModelDataStore_cachedCandidatesForModelId_earliestDate___block_invoke;
  v39[3] = &unk_27859A3E0;
  v39[4] = self;
  v9 = v6;
  v40 = v9;
  v41 = &v61;
  v42 = &v55;
  v43 = &v49;
  v44 = &v45;
  [(_ATXDataStore *)dataStore _doSync:v39];
  if ((v46[3] & 1) == 0)
  {
    v25 = 0;
    goto LABEL_17;
  }

  v10 = objc_alloc(MEMORY[0x277CBEAA8]);
  v11 = [v10 initWithTimeIntervalSinceReferenceDate:v62[3]];
  v12 = [v11 laterDate:v7];
  v13 = v12 == v7;

  if (v13)
  {
    v21 = __atxlog_handle_relevance_model();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      *buf = 138412802;
      v66 = v27;
      v67 = 2112;
      v68 = v7;
      v69 = 2112;
      v70 = v11;
      _os_log_impl(&dword_2263AA000, v21, OS_LOG_TYPE_DEFAULT, "%@ - Cached candidates are older than earliest date (%@), returning nil instead: %@", buf, 0x20u);
    }

    v25 = 0;
    goto LABEL_16;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = MEMORY[0x277CCAAC8];
  v16 = objc_alloc(MEMORY[0x277CBEB98]);
  v17 = objc_opt_class();
  v18 = [v16 initWithObjects:{v17, objc_opt_class(), 0}];
  v19 = v56[5];
  v38 = 0;
  v20 = [v15 unarchivedObjectOfClasses:v18 fromData:v19 error:&v38];
  v21 = v38;

  objc_autoreleasePoolPop(v14);
  if (v21)
  {
    v22 = __atxlog_handle_relevance_model();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      *buf = 138412546;
      v66 = v24;
      v67 = 2112;
      v68 = v21;
      _os_log_impl(&dword_2263AA000, v22, OS_LOG_TYPE_DEFAULT, "%@ - Unable to decode cached candidates due to: %@", buf, 0x16u);
    }
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    v29 = MEMORY[0x277CCAAC8];
    v30 = objc_opt_class();
    v31 = v50[5];
    v37 = 0;
    v22 = [v29 unarchivedObjectOfClass:v30 fromData:v31 error:&v37];
    v21 = v37;
    objc_autoreleasePoolPop(v28);
    if (!v21)
    {
      v25 = [[ATXCandidateRelevanceModelCandidateCacheResult alloc] initWithCandidates:v20 featurizationManager:v22];
      goto LABEL_15;
    }

    v32 = __atxlog_handle_relevance_model();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      *buf = 138412546;
      v66 = v34;
      v67 = 2112;
      v68 = v21;
      _os_log_impl(&dword_2263AA000, v32, OS_LOG_TYPE_DEFAULT, "%@ - Unable to decode cached featurization manager due to: %@", buf, 0x16u);
    }
  }

  v25 = 0;
LABEL_15:

LABEL_16:
LABEL_17:

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);

  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v61, 8);

  v35 = *MEMORY[0x277D85DE8];

  return v25;
}

void __79__ATXCandidateRelevanceModelDataStore_cachedCandidatesForModelId_earliestDate___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __79__ATXCandidateRelevanceModelDataStore_cachedCandidatesForModelId_earliestDate___block_invoke_2;
  v5[3] = &unk_27859A3E0;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = *(a1 + 64);
  v7 = *(a1 + 48);
  v8 = v4;
  [v2 readTransaction:v5];
}

void __79__ATXCandidateRelevanceModelDataStore_cachedCandidatesForModelId_earliestDate___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__ATXCandidateRelevanceModelDataStore_cachedCandidatesForModelId_earliestDate___block_invoke_3;
  v7[3] = &unk_278598768;
  v8 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __79__ATXCandidateRelevanceModelDataStore_cachedCandidatesForModelId_earliestDate___block_invoke_4;
  v4[3] = &unk_27859A3B8;
  v3 = *(a1 + 64);
  v5 = *(a1 + 48);
  v6 = v3;
  [v2 prepAndRunQuery:@"SELECT date onPrep:candidateList onRow:featurizationManager FROM relevanceCandidateCache WHERE modelId=:modelId LIMIT 1" onError:{v7, v4, 0}];
}

uint64_t __79__ATXCandidateRelevanceModelDataStore_cachedCandidatesForModelId_earliestDate___block_invoke_4(void *a1, void *a2)
{
  v3 = a2;
  *(*(a1[4] + 8) + 24) = [v3 getInt64ForColumn:0];
  v4 = [v3 getNSDataForColumn:1];
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [v3 getNSDataForColumn:2];

  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  *(*(a1[7] + 8) + 24) = 1;
  return *MEMORY[0x277D42698];
}

- (int64_t)candidateIdForCandidate:(id)a3 error:(id *)a4
{
  v40[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v32 = 0;
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v32];
  v8 = v32;
  if (v8)
  {
    if (a4)
    {
      v9 = MEMORY[0x277CCA9B8];
      v39 = *MEMORY[0x277CCA068];
      v40[0] = @"Failed to serialize candidate when writing to database";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
      *a4 = [v9 errorWithDomain:@"ATXCandidateRelevanceModelDataStore" code:1 userInfo:v10];
    }

    v11 = v34[3];
  }

  else
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    dataStore = self->_dataStore;
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __69__ATXCandidateRelevanceModelDataStore_candidateIdForCandidate_error___block_invoke;
    v22 = &unk_27859A408;
    v23 = self;
    v24 = v6;
    v25 = v7;
    v26 = &v33;
    v27 = &v28;
    [(_ATXDataStore *)dataStore _doSync:&v19];
    if ((v29[3] & 1) == 0)
    {
      v13 = __atxlog_handle_relevance_model();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        v14 = objc_opt_class();
        NSStringFromClass(v14);
        objc_claimAutoreleasedReturnValue();
        [ATXCandidateRelevanceModelDataStore candidateIdForCandidate:error:];
      }

      if (a4)
      {
        v15 = MEMORY[0x277CCA9B8];
        v37 = *MEMORY[0x277CCA068];
        v38 = @"Failed to find corresponding candidateId for candidate";
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:{1, v19, v20, v21, v22, v23, v24}];
        *a4 = [v15 errorWithDomain:@"ATXCandidateRelevanceModelDataStore" code:1 userInfo:v16];
      }
    }

    v11 = v34[3];

    _Block_object_dispose(&v28, 8);
  }

  _Block_object_dispose(&v33, 8);
  v17 = *MEMORY[0x277D85DE8];
  return v11;
}

void __69__ATXCandidateRelevanceModelDataStore_candidateIdForCandidate_error___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__ATXCandidateRelevanceModelDataStore_candidateIdForCandidate_error___block_invoke_2;
  v4[3] = &unk_27859A408;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v2 writeTransaction:v4];
}

void __69__ATXCandidateRelevanceModelDataStore_candidateIdForCandidate_error___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__ATXCandidateRelevanceModelDataStore_candidateIdForCandidate_error___block_invoke_3;
  v8[3] = &unk_278598718;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  [v2 prepAndRunQuery:@"INSERT OR IGNORE INTO relevanceCandidates (candidateType onPrep:candidateIdentifier onRow:candidateData) VALUES (:candidateType onError:{:candidateIdentifier, :candidateData)", v8, 0, 0}];

  v3 = [*(*(a1 + 32) + 8) db];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__ATXCandidateRelevanceModelDataStore_candidateIdForCandidate_error___block_invoke_4;
  v6[3] = &unk_278598768;
  v7 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__ATXCandidateRelevanceModelDataStore_candidateIdForCandidate_error___block_invoke_5;
  v4[3] = &unk_27859A368;
  v5 = *(a1 + 56);
  [v3 prepAndRunQuery:@"SELECT id FROM relevanceCandidates WHERE candidateType=:candidateType AND candidateIdentifier=:candidateIdentifier" onPrep:v6 onRow:v4 onError:0];
}

void __69__ATXCandidateRelevanceModelDataStore_candidateIdForCandidate_error___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 type];
  [v6 bindNamedParam:":candidateType" toNSString:v4];

  v5 = [*(a1 + 32) identifier];
  [v6 bindNamedParam:":candidateIdentifier" toNSString:v5];

  [v6 bindNamedParam:":candidateData" toNSData:*(a1 + 40)];
}

void __69__ATXCandidateRelevanceModelDataStore_candidateIdForCandidate_error___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 type];
  [v4 bindNamedParam:":candidateType" toNSString:v5];

  v6 = [*(a1 + 32) identifier];
  [v4 bindNamedParam:":candidateIdentifier" toNSString:v6];
}

uint64_t __69__ATXCandidateRelevanceModelDataStore_candidateIdForCandidate_error___block_invoke_5(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 24) = [a2 getInt64ForColumn:0];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return *MEMORY[0x277D42698];
}

- (void)receiveMostRecentVerifiedTrainedModelTrainingResults:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__32;
  v24 = __Block_byref_object_dispose__32;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__32;
  v18 = __Block_byref_object_dispose__32;
  v19 = 0;
  dataStore = self->_dataStore;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __103__ATXCandidateRelevanceModelDataStore_receiveMostRecentVerifiedTrainedModelTrainingResults_completion___block_invoke;
  v13[3] = &unk_27859A430;
  v13[4] = self;
  v13[5] = &v20;
  v13[6] = &v14;
  [(_ATXDataStore *)dataStore _doSync:v13];
  if (v21[5] && v15[5])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __103__ATXCandidateRelevanceModelDataStore_receiveMostRecentVerifiedTrainedModelTrainingResults_completion___block_invoke_4;
    v11[3] = &unk_27859A458;
    v12 = v6;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __103__ATXCandidateRelevanceModelDataStore_receiveMostRecentVerifiedTrainedModelTrainingResults_completion___block_invoke_5;
    v9[3] = &unk_27859A480;
    v10 = v7;
    [(ATXCandidateRelevanceModelDataStore *)self receiveTrainingResult:v11 completion:v9 modelUUID:v15[5] clientModelName:v21[5]];
  }

  else
  {
    (*(v7 + 2))(v7, 1);
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
}

void __103__ATXCandidateRelevanceModelDataStore_receiveMostRecentVerifiedTrainedModelTrainingResults_completion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __103__ATXCandidateRelevanceModelDataStore_receiveMostRecentVerifiedTrainedModelTrainingResults_completion___block_invoke_2;
  v3[3] = &unk_27859A430;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  [v2 readTransaction:v3];
}

void __103__ATXCandidateRelevanceModelDataStore_receiveMostRecentVerifiedTrainedModelTrainingResults_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __103__ATXCandidateRelevanceModelDataStore_receiveMostRecentVerifiedTrainedModelTrainingResults_completion___block_invoke_3;
  v3[3] = &unk_27859A368;
  v4 = *(a1 + 40);
  [v2 prepAndRunQuery:@"SELECT clientModelName onPrep:modelUUID FROM relevanceCandidateModels WHERE isVerified=1 ORDER BY trainDate DESC LIMIT 1" onRow:0 onError:{v3, 0}];
}

uint64_t __103__ATXCandidateRelevanceModelDataStore_receiveMostRecentVerifiedTrainedModelTrainingResults_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSStringForColumn:0];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = objc_alloc(MEMORY[0x277CCAD78]);
  v8 = [v3 getNSStringForColumn:1];

  v9 = [v7 initWithUUIDString:v8];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  return *MEMORY[0x277D42698];
}

- (void)receiveMostRecentVerifiedTrainedModelTrainingResults:(id)a3 clientModelName:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__32;
    v25 = __Block_byref_object_dispose__32;
    v26 = 0;
    dataStore = self->_dataStore;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __119__ATXCandidateRelevanceModelDataStore_receiveMostRecentVerifiedTrainedModelTrainingResults_clientModelName_completion___block_invoke;
    v18[3] = &unk_2785987E0;
    v18[4] = self;
    v13 = v9;
    v19 = v13;
    v20 = &v21;
    [(_ATXDataStore *)dataStore _doSync:v18];
    if (v22[5])
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __119__ATXCandidateRelevanceModelDataStore_receiveMostRecentVerifiedTrainedModelTrainingResults_clientModelName_completion___block_invoke_5;
      v16[3] = &unk_27859A458;
      v17 = v8;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __119__ATXCandidateRelevanceModelDataStore_receiveMostRecentVerifiedTrainedModelTrainingResults_clientModelName_completion___block_invoke_6;
      v14[3] = &unk_27859A480;
      v15 = v11;
      [(ATXCandidateRelevanceModelDataStore *)self receiveTrainingResult:v16 completion:v14 modelUUID:v22[5] clientModelName:v13];
    }

    else
    {
      v11[2](v11, 1);
    }

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    (*(v10 + 2))(v10, 1);
  }
}

void __119__ATXCandidateRelevanceModelDataStore_receiveMostRecentVerifiedTrainedModelTrainingResults_clientModelName_completion___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) db];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __119__ATXCandidateRelevanceModelDataStore_receiveMostRecentVerifiedTrainedModelTrainingResults_clientModelName_completion___block_invoke_2;
  v6[3] = &unk_2785987E0;
  v3 = a1[5];
  v6[4] = a1[4];
  v4 = v3;
  v5 = a1[6];
  v7 = v4;
  v8 = v5;
  [v2 readTransaction:v6];
}

void __119__ATXCandidateRelevanceModelDataStore_receiveMostRecentVerifiedTrainedModelTrainingResults_clientModelName_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __119__ATXCandidateRelevanceModelDataStore_receiveMostRecentVerifiedTrainedModelTrainingResults_clientModelName_completion___block_invoke_3;
  v4[3] = &unk_278598768;
  v5 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __119__ATXCandidateRelevanceModelDataStore_receiveMostRecentVerifiedTrainedModelTrainingResults_clientModelName_completion___block_invoke_4;
  v3[3] = &unk_278598790;
  v3[4] = *(a1 + 48);
  [v2 prepAndRunQuery:@"SELECT modelUUID FROM relevanceCandidateModels WHERE clientModelName=:clientModelName AND isVerified=1 ORDER BY trainDate DESC LIMIT 1" onPrep:v4 onRow:v3 onError:0];
}

uint64_t __119__ATXCandidateRelevanceModelDataStore_receiveMostRecentVerifiedTrainedModelTrainingResults_clientModelName_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCAD78];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v4 getNSStringForColumn:0];

  v7 = [v5 initWithUUIDString:v6];
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return *MEMORY[0x277D42698];
}

- (void)receiveTrainingResult:(id)a3 completion:(id)a4 modelUUID:(id)a5 clientModelName:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_opt_new();
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  dataStore = self->_dataStore;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __98__ATXCandidateRelevanceModelDataStore_receiveTrainingResult_completion_modelUUID_clientModelName___block_invoke;
  v20[3] = &unk_27859A4D0;
  v20[4] = self;
  v16 = v12;
  v21 = v16;
  v17 = v13;
  v22 = v17;
  v25 = &v26;
  v18 = v14;
  v23 = v18;
  v19 = v10;
  v24 = v19;
  [(_ATXDataStore *)dataStore _doSync:v20];
  v11[2](v11, *(v27 + 24));

  _Block_object_dispose(&v26, 8);
}

void __98__ATXCandidateRelevanceModelDataStore_receiveTrainingResult_completion_modelUUID_clientModelName___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __98__ATXCandidateRelevanceModelDataStore_receiveTrainingResult_completion_modelUUID_clientModelName___block_invoke_2;
  v8[3] = &unk_27859A4D0;
  v7 = *(a1 + 32);
  v3 = *(&v7 + 1);
  v4 = *(a1 + 48);
  v12 = *(a1 + 72);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  v11 = *(a1 + 64);
  [v2 readTransaction:v8];
}

void __98__ATXCandidateRelevanceModelDataStore_receiveTrainingResult_completion_modelUUID_clientModelName___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __98__ATXCandidateRelevanceModelDataStore_receiveTrainingResult_completion_modelUUID_clientModelName___block_invoke_3;
  v13[3] = &unk_278598718;
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __98__ATXCandidateRelevanceModelDataStore_receiveTrainingResult_completion_modelUUID_clientModelName___block_invoke_4;
  v9[3] = &unk_27859A4A8;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v12 = *(a1 + 72);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v10 = v8;
  v11 = v7;
  [v2 prepAndRunQuery:@"SELECT candidateModelData onPrep:candidateData onRow:featurizationManagerData onError:{featurizationManagerId, trainDate, numberOfPositiveSamples, numberOfSamples, numberOfDaysWithPositiveSamples, numberOfDaysWithSamples, startDate, endDate, isVerified FROM relevanceCandidateModels INNER JOIN relevanceCandidates ON relevanceCandidates.id = relevanceCandidateModels.candidateId INNER JOIN relevanceFeaturizationManagers ON relevanceFeaturizationManagers.id = relevanceCandidateModels.featurizationManagerId INNER JOIN relevanceDatasetMetadata ON relevanceDatasetMetadata.id = relevanceCandidateModels.datasetMetadataId WHERE modelUUID=:modelUUID AND clientModelName=:clientModelName", v13, v9, 0}];
}

void __98__ATXCandidateRelevanceModelDataStore_receiveTrainingResult_completion_modelUUID_clientModelName___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 UUIDString];
  [v5 bindNamedParam:":modelUUID" toNSString:v4];

  [v5 bindNamedParam:":clientModelName" toNSString:*(a1 + 40)];
}

uint64_t __98__ATXCandidateRelevanceModelDataStore_receiveTrainingResult_completion_modelUUID_clientModelName___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSDataForColumn:0];
  v5 = objc_autoreleasePoolPush();
  v43 = 0;
  v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v43];
  v7 = v43;
  objc_autoreleasePoolPop(v5);
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v11 = [v3 getNSDataForColumn:1];
    v12 = objc_autoreleasePoolPush();
    v42 = 0;
    v13 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v11 error:&v42];
    v7 = v42;
    objc_autoreleasePoolPop(v12);
    if (!v13 || v7)
    {
      v30 = __atxlog_handle_relevance_model();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        __98__ATXCandidateRelevanceModelDataStore_receiveTrainingResult_completion_modelUUID_clientModelName___block_invoke_4_cold_2(v7, a1);
      }

      *(*(*(a1 + 64) + 8) + 24) = 0;
      v10 = *MEMORY[0x277D42698];
      goto LABEL_19;
    }

    v38 = [v3 getNSDataForColumn:2];
    v14 = [v3 getInt64ForColumn:3];
    v15 = [*(a1 + 48) featurizationManagerForFeaturizationManagerId:v14];
    if (!v15)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = MEMORY[0x277CCAAC8];
      v18 = objc_opt_class();
      v41 = 0;
      v19 = v17;
      v20 = v38;
      v39 = [v19 unarchivedObjectOfClass:v18 fromData:v38 error:&v41];
      v7 = v41;
      objc_autoreleasePoolPop(v16);
      if (!v38 || v7)
      {
        v32 = __atxlog_handle_relevance_model();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
        {
          __98__ATXCandidateRelevanceModelDataStore_receiveTrainingResult_completion_modelUUID_clientModelName___block_invoke_4_cold_1(v7, a1);
        }

        *(*(*(a1 + 64) + 8) + 24) = 0;
        v10 = *MEMORY[0x277D42698];
        v29 = v39;
        goto LABEL_15;
      }

      v15 = v39;
      [*(a1 + 48) setFeaturizationManager:v39 forFeaturizationManagerId:v14];
    }

    v40 = v15;
    v36 = v13;
    v21 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{objc_msgSend(v3, "getInt64ForColumn:", 4)}];
    v35 = [v3 getIntegerForColumn:5];
    v34 = [v3 getIntegerForColumn:6];
    v22 = [v3 getIntegerForColumn:7];
    v23 = [v3 getIntegerForColumn:8];
    [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{objc_msgSend(v3, "getInt64ForColumn:", 9)}];
    v24 = v37 = v11;
    v25 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{objc_msgSend(v3, "getInt64ForColumn:", 10)}];
    v26 = [v3 getIntegerForColumn:11] != 0;
    v27 = [[ATXCandidateRelevanceModelDataStoreDatasetMetadata alloc] initWithNumberOfPositiveSamples:v35 numberOfSamples:v34 numberOfDaysWithPositiveSamples:v22 numberOfDaysWithSamples:v23 startDate:v24 endDate:v25];
    LOBYTE(v33) = v26;
    v13 = v36;
    v28 = [[ATXCandidateRelevanceModelDataStoreTrainingResult alloc] initWithModel:v6 candidate:v36 featurizationManager:v40 modelUUID:*(a1 + 32) datasetMetadata:v27 clientModelName:*(a1 + 40) trainDate:v21 isVerified:v33];
    (*(*(a1 + 56) + 16))();
    v10 = *MEMORY[0x277D42690];

    v29 = v40;
    v11 = v37;

    v7 = 0;
    v20 = v38;
LABEL_15:

LABEL_19:
    goto LABEL_20;
  }

  v9 = __atxlog_handle_relevance_model();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    __98__ATXCandidateRelevanceModelDataStore_receiveTrainingResult_completion_modelUUID_clientModelName___block_invoke_4_cold_3(v7, a1);
  }

  *(*(*(a1 + 64) + 8) + 24) = 0;
  v10 = *MEMORY[0x277D42698];
LABEL_20:

  return v10;
}

- (unint64_t)numberOfTrainedModels
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dataStore = self->_dataStore;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__ATXCandidateRelevanceModelDataStore_numberOfTrainedModels__block_invoke;
  v5[3] = &unk_278596C38;
  v5[4] = self;
  v5[5] = &v6;
  [(_ATXDataStore *)dataStore _doSync:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __60__ATXCandidateRelevanceModelDataStore_numberOfTrainedModels__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __60__ATXCandidateRelevanceModelDataStore_numberOfTrainedModels__block_invoke_2;
  v3[3] = &unk_278596C38;
  v4 = *(a1 + 32);
  [v2 readTransaction:v3];
}

void __60__ATXCandidateRelevanceModelDataStore_numberOfTrainedModels__block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __60__ATXCandidateRelevanceModelDataStore_numberOfTrainedModels__block_invoke_3;
  v3[3] = &unk_278598790;
  v3[4] = *(a1 + 40);
  [v2 prepAndRunQuery:@"SELECT COUNT(*) FROM (SELECT DISTINCT modelUUID from relevanceCandidateModels)" onPrep:0 onRow:v3 onError:0];
}

- (id)clientModelNamesWithTrainedRelevanceModels
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__32;
  v11 = __Block_byref_object_dispose__32;
  v12 = objc_opt_new();
  dataStore = self->_dataStore;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __81__ATXCandidateRelevanceModelDataStore_clientModelNamesWithTrainedRelevanceModels__block_invoke;
  v6[3] = &unk_278596C38;
  v6[4] = self;
  v6[5] = &v7;
  [(_ATXDataStore *)dataStore _doSync:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __81__ATXCandidateRelevanceModelDataStore_clientModelNamesWithTrainedRelevanceModels__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __81__ATXCandidateRelevanceModelDataStore_clientModelNamesWithTrainedRelevanceModels__block_invoke_2;
  v3[3] = &unk_278596C38;
  v4 = *(a1 + 32);
  [v2 readTransaction:v3];
}

void __81__ATXCandidateRelevanceModelDataStore_clientModelNamesWithTrainedRelevanceModels__block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __81__ATXCandidateRelevanceModelDataStore_clientModelNamesWithTrainedRelevanceModels__block_invoke_3;
  v3[3] = &unk_278598790;
  v3[4] = *(a1 + 40);
  [v2 prepAndRunQuery:@"SELECT DISTINCT clientModelName FROM relevanceCandidateModels" onPrep:0 onRow:v3 onError:0];
}

uint64_t __81__ATXCandidateRelevanceModelDataStore_clientModelNamesWithTrainedRelevanceModels__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 getNSStringForColumn:0];
  [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  v4 = MEMORY[0x277D42690];

  return *v4;
}

- (id)modelUUIDToTrainDateForClientModelName:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__32;
  v16 = __Block_byref_object_dispose__32;
  v17 = objc_opt_new();
  dataStore = self->_dataStore;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __78__ATXCandidateRelevanceModelDataStore_modelUUIDToTrainDateForClientModelName___block_invoke;
  v9[3] = &unk_2785987E0;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [(_ATXDataStore *)dataStore _doSync:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __78__ATXCandidateRelevanceModelDataStore_modelUUIDToTrainDateForClientModelName___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) db];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __78__ATXCandidateRelevanceModelDataStore_modelUUIDToTrainDateForClientModelName___block_invoke_2;
  v6[3] = &unk_2785987E0;
  v3 = a1[5];
  v6[4] = a1[4];
  v4 = v3;
  v5 = a1[6];
  v7 = v4;
  v8 = v5;
  [v2 readTransaction:v6];
}

void __78__ATXCandidateRelevanceModelDataStore_modelUUIDToTrainDateForClientModelName___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __78__ATXCandidateRelevanceModelDataStore_modelUUIDToTrainDateForClientModelName___block_invoke_3;
  v4[3] = &unk_278598768;
  v5 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __78__ATXCandidateRelevanceModelDataStore_modelUUIDToTrainDateForClientModelName___block_invoke_4;
  v3[3] = &unk_278598790;
  v3[4] = *(a1 + 48);
  [v2 prepAndRunQuery:@"SELECT DISTINCT modelUUID onPrep:trainDate FROM relevanceCandidateModels WHERE clientModelName=:clientModelName" onRow:v4 onError:{v3, 0}];
}

uint64_t __78__ATXCandidateRelevanceModelDataStore_modelUUIDToTrainDateForClientModelName___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCAD78];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v4 getNSStringForColumn:0];
  v7 = [v5 initWithUUIDString:v6];

  v8 = MEMORY[0x277CBEAA8];
  v9 = [v4 getInt64ForColumn:1];

  v10 = [v8 dateWithTimeIntervalSinceReferenceDate:v9];
  [*(*(*(a1 + 32) + 8) + 40) setObject:v10 forKeyedSubscript:v7];
  v11 = MEMORY[0x277D42690];

  return *v11;
}

- (id)mostRecentVerifiedTrainDateForClientModelName:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__32;
  v16 = __Block_byref_object_dispose__32;
  v17 = 0;
  dataStore = self->_dataStore;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __85__ATXCandidateRelevanceModelDataStore_mostRecentVerifiedTrainDateForClientModelName___block_invoke;
  v9[3] = &unk_2785987E0;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [(_ATXDataStore *)dataStore _doSync:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __85__ATXCandidateRelevanceModelDataStore_mostRecentVerifiedTrainDateForClientModelName___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) db];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __85__ATXCandidateRelevanceModelDataStore_mostRecentVerifiedTrainDateForClientModelName___block_invoke_2;
  v6[3] = &unk_2785987E0;
  v3 = a1[5];
  v6[4] = a1[4];
  v4 = v3;
  v5 = a1[6];
  v7 = v4;
  v8 = v5;
  [v2 readTransaction:v6];
}

void __85__ATXCandidateRelevanceModelDataStore_mostRecentVerifiedTrainDateForClientModelName___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __85__ATXCandidateRelevanceModelDataStore_mostRecentVerifiedTrainDateForClientModelName___block_invoke_3;
  v4[3] = &unk_278598768;
  v5 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __85__ATXCandidateRelevanceModelDataStore_mostRecentVerifiedTrainDateForClientModelName___block_invoke_4;
  v3[3] = &unk_278598790;
  v3[4] = *(a1 + 48);
  [v2 prepAndRunQuery:@"SELECT trainDate FROM relevanceCandidateModels WHERE clientModelName=:clientModelName AND isVerified=1 ORDER BY trainDate DESC LIMIT 1" onPrep:v4 onRow:v3 onError:0];
}

uint64_t __85__ATXCandidateRelevanceModelDataStore_mostRecentVerifiedTrainDateForClientModelName___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{objc_msgSend(a2, "getInt64ForColumn:", 0)}];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *MEMORY[0x277D42698];
}

- (unint64_t)numberOfFeaturizationManagerIds
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dataStore = self->_dataStore;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__ATXCandidateRelevanceModelDataStore_numberOfFeaturizationManagerIds__block_invoke;
  v5[3] = &unk_278596C38;
  v5[4] = self;
  v5[5] = &v6;
  [(_ATXDataStore *)dataStore _doSync:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __70__ATXCandidateRelevanceModelDataStore_numberOfFeaturizationManagerIds__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __70__ATXCandidateRelevanceModelDataStore_numberOfFeaturizationManagerIds__block_invoke_2;
  v3[3] = &unk_278596C38;
  v4 = *(a1 + 32);
  [v2 readTransaction:v3];
}

void __70__ATXCandidateRelevanceModelDataStore_numberOfFeaturizationManagerIds__block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __70__ATXCandidateRelevanceModelDataStore_numberOfFeaturizationManagerIds__block_invoke_3;
  v3[3] = &unk_278598790;
  v3[4] = *(a1 + 40);
  [v2 prepAndRunQuery:@"SELECT COUNT(*) FROM relevanceFeaturizationManagers" onPrep:0 onRow:v3 onError:0];
}

- (unint64_t)numberOfDatasetMetadataIds
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dataStore = self->_dataStore;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__ATXCandidateRelevanceModelDataStore_numberOfDatasetMetadataIds__block_invoke;
  v5[3] = &unk_278596C38;
  v5[4] = self;
  v5[5] = &v6;
  [(_ATXDataStore *)dataStore _doSync:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __65__ATXCandidateRelevanceModelDataStore_numberOfDatasetMetadataIds__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __65__ATXCandidateRelevanceModelDataStore_numberOfDatasetMetadataIds__block_invoke_2;
  v3[3] = &unk_278596C38;
  v4 = *(a1 + 32);
  [v2 readTransaction:v3];
}

void __65__ATXCandidateRelevanceModelDataStore_numberOfDatasetMetadataIds__block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __65__ATXCandidateRelevanceModelDataStore_numberOfDatasetMetadataIds__block_invoke_3;
  v3[3] = &unk_278598790;
  v3[4] = *(a1 + 40);
  [v2 prepAndRunQuery:@"SELECT COUNT(*) FROM relevanceDatasetMetadata" onPrep:0 onRow:v3 onError:0];
}

- (unint64_t)numberOfCandidateIds
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dataStore = self->_dataStore;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__ATXCandidateRelevanceModelDataStore_numberOfCandidateIds__block_invoke;
  v5[3] = &unk_278596C38;
  v5[4] = self;
  v5[5] = &v6;
  [(_ATXDataStore *)dataStore _doSync:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __59__ATXCandidateRelevanceModelDataStore_numberOfCandidateIds__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __59__ATXCandidateRelevanceModelDataStore_numberOfCandidateIds__block_invoke_2;
  v3[3] = &unk_278596C38;
  v4 = *(a1 + 32);
  [v2 readTransaction:v3];
}

void __59__ATXCandidateRelevanceModelDataStore_numberOfCandidateIds__block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __59__ATXCandidateRelevanceModelDataStore_numberOfCandidateIds__block_invoke_3;
  v3[3] = &unk_278598790;
  v3[4] = *(a1 + 40);
  [v2 prepAndRunQuery:@"SELECT COUNT(*) FROM relevanceCandidates" onPrep:0 onRow:v3 onError:0];
}

- (id)trainingResultsForClientModelName:(id)a3 modelUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__ATXCandidateRelevanceModelDataStore_trainingResultsForClientModelName_modelUUID___block_invoke;
  v12[3] = &unk_27859A4F8;
  v13 = v8;
  v9 = v8;
  [(ATXCandidateRelevanceModelDataStore *)self receiveTrainingResult:v12 completion:&__block_literal_global_69 modelUUID:v6 clientModelName:v7];

  v10 = [v9 sortedArrayUsingComparator:&__block_literal_global_317];

  return v10;
}

uint64_t __83__ATXCandidateRelevanceModelDataStore_trainingResultsForClientModelName_modelUUID___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 datasetMetadata];
  v6 = [v4 datasetMetadata];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)mostRecentVerifiedTrainingResultsForClientModelName:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __91__ATXCandidateRelevanceModelDataStore_mostRecentVerifiedTrainingResultsForClientModelName___block_invoke;
  v9[3] = &unk_27859A4F8;
  v10 = v5;
  v6 = v5;
  [(ATXCandidateRelevanceModelDataStore *)self receiveMostRecentVerifiedTrainedModelTrainingResults:v9 clientModelName:v4 completion:&__block_literal_global_319];

  v7 = [v6 sortedArrayUsingComparator:&__block_literal_global_321];

  return v7;
}

uint64_t __91__ATXCandidateRelevanceModelDataStore_mostRecentVerifiedTrainingResultsForClientModelName___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 datasetMetadata];
  v6 = [v4 datasetMetadata];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)idsInTableWithName:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__32;
  v16 = __Block_byref_object_dispose__32;
  v17 = objc_opt_new();
  dataStore = self->_dataStore;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__ATXCandidateRelevanceModelDataStore_idsInTableWithName___block_invoke;
  v9[3] = &unk_2785987E0;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [(_ATXDataStore *)dataStore _doSync:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __58__ATXCandidateRelevanceModelDataStore_idsInTableWithName___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) db];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__ATXCandidateRelevanceModelDataStore_idsInTableWithName___block_invoke_2;
  v6[3] = &unk_2785987E0;
  v3 = a1[5];
  v6[4] = a1[4];
  v4 = v3;
  v5 = a1[6];
  v7 = v4;
  v8 = v5;
  [v2 readTransaction:v6];
}

void __58__ATXCandidateRelevanceModelDataStore_idsInTableWithName___block_invoke_2(void *a1)
{
  v2 = [*(a1[4] + 8) db];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT id FROM %@", a1[5]];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__ATXCandidateRelevanceModelDataStore_idsInTableWithName___block_invoke_3;
  v4[3] = &unk_278598790;
  v4[4] = a1[6];
  [v2 prepAndRunQuery:v3 onPrep:0 onRow:v4 onError:0];
}

uint64_t __58__ATXCandidateRelevanceModelDataStore_idsInTableWithName___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 getInt64ForColumn:0];
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:v3];
  [v4 addObject:v5];

  return *MEMORY[0x277D42690];
}

- (void)deleteRowsWithIds:(id)a3 fromTableWithName:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__ATXCandidateRelevanceModelDataStore_deleteRowsWithIds_fromTableWithName___block_invoke;
  v8[3] = &unk_27859A560;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [a3 enumerateObjectsUsingBlock:v8];
}

void __75__ATXCandidateRelevanceModelDataStore_deleteRowsWithIds_fromTableWithName___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 8);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__ATXCandidateRelevanceModelDataStore_deleteRowsWithIds_fromTableWithName___block_invoke_2;
  v8[3] = &unk_278597828;
  v8[4] = v5;
  v9 = v4;
  v10 = v3;
  v7 = v3;
  [v6 _doSync:v8];
}

void __75__ATXCandidateRelevanceModelDataStore_deleteRowsWithIds_fromTableWithName___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __75__ATXCandidateRelevanceModelDataStore_deleteRowsWithIds_fromTableWithName___block_invoke_3;
  v4[3] = &unk_278597828;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  [v2 writeTransaction:v4];
}

void __75__ATXCandidateRelevanceModelDataStore_deleteRowsWithIds_fromTableWithName___block_invoke_3(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM %@ WHERE id = :id", *(a1 + 40)];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __75__ATXCandidateRelevanceModelDataStore_deleteRowsWithIds_fromTableWithName___block_invoke_4;
  v4[3] = &unk_278598768;
  v5 = *(a1 + 48);
  [v2 prepAndRunQuery:v3 onPrep:v4 onRow:0 onError:0];
}

void __75__ATXCandidateRelevanceModelDataStore_deleteRowsWithIds_fromTableWithName___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 bindNamedParam:":id" toInt64:{objc_msgSend(v2, "longLongValue")}];
}

- (void)deleteTrainedModelsWithTrainDateOlderThanDate:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  [v4 timeIntervalSinceReferenceDate];
  dataStore = self->_dataStore;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __85__ATXCandidateRelevanceModelDataStore_deleteTrainedModelsWithTrainDateOlderThanDate___block_invoke;
  v32[3] = &unk_278598830;
  v32[6] = v6;
  v32[4] = self;
  v32[5] = &v33;
  [(_ATXDataStore *)dataStore _doSync:v32];
  v7 = __atxlog_handle_relevance_model();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = v34[3];
    *buf = 138412802;
    *&buf[4] = v9;
    *&buf[12] = 2048;
    *&buf[14] = v10;
    *&buf[22] = 2112;
    v38 = v4;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "%@ - Deleted %lu models that were older than %@.", buf, 0x20u);
  }

  v11 = [(ATXCandidateRelevanceModelDataStore *)self idsInTableWithName:@"relevanceCandidates"];
  v12 = [(ATXCandidateRelevanceModelDataStore *)self idsInTableWithName:@"relevanceFeaturizationManagers"];
  v13 = [(ATXCandidateRelevanceModelDataStore *)self idsInTableWithName:@"relevanceDatasetMetadata"];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v38 = __Block_byref_object_copy__32;
  v39 = __Block_byref_object_dispose__32;
  v40 = objc_opt_new();
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__32;
  v30 = __Block_byref_object_dispose__32;
  v31 = objc_opt_new();
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__32;
  v24 = __Block_byref_object_dispose__32;
  v25 = objc_opt_new();
  v14 = self->_dataStore;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __85__ATXCandidateRelevanceModelDataStore_deleteTrainedModelsWithTrainDateOlderThanDate___block_invoke_344;
  v19[3] = &unk_27859A5B0;
  v19[4] = self;
  v19[5] = buf;
  v19[6] = &v26;
  v19[7] = &v20;
  [(_ATXDataStore *)v14 _doSync:v19];
  v15 = [v11 mutableCopy];
  [v15 minusSet:*(*&buf[8] + 40)];
  v16 = [v12 mutableCopy];
  [v16 minusSet:v27[5]];
  v17 = [v13 mutableCopy];
  [v17 minusSet:v21[5]];
  [(ATXCandidateRelevanceModelDataStore *)self deleteRowsWithIds:v15 fromTableWithName:@"relevanceCandidates"];
  [(ATXCandidateRelevanceModelDataStore *)self deleteRowsWithIds:v16 fromTableWithName:@"relevanceFeaturizationManagers"];
  [(ATXCandidateRelevanceModelDataStore *)self deleteRowsWithIds:v17 fromTableWithName:@"relevanceDatasetMetadata"];

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v33, 8);

  v18 = *MEMORY[0x277D85DE8];
}

void __85__ATXCandidateRelevanceModelDataStore_deleteTrainedModelsWithTrainDateOlderThanDate___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __85__ATXCandidateRelevanceModelDataStore_deleteTrainedModelsWithTrainDateOlderThanDate___block_invoke_2;
  v3[3] = &unk_278598830;
  v5 = *(a1 + 48);
  v4 = *(a1 + 32);
  [v2 writeTransaction:v3];
}

void __85__ATXCandidateRelevanceModelDataStore_deleteTrainedModelsWithTrainDateOlderThanDate___block_invoke_2(void *a1)
{
  v2 = [*(a1[4] + 8) db];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __85__ATXCandidateRelevanceModelDataStore_deleteTrainedModelsWithTrainDateOlderThanDate___block_invoke_3;
  v4[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  v4[4] = a1[6];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __85__ATXCandidateRelevanceModelDataStore_deleteTrainedModelsWithTrainDateOlderThanDate___block_invoke_4;
  v3[3] = &unk_278598790;
  v3[4] = a1[5];
  [v2 prepAndRunQuery:@"DELETE FROM relevanceCandidateModels WHERE trainDate < :trainDate" onPrep:v4 onRow:v3 onError:0];
}

void __85__ATXCandidateRelevanceModelDataStore_deleteTrainedModelsWithTrainDateOlderThanDate___block_invoke_344(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __85__ATXCandidateRelevanceModelDataStore_deleteTrainedModelsWithTrainDateOlderThanDate___block_invoke_2_345;
  v4[3] = &unk_27859A5B0;
  v3 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = v3;
  [v2 readTransaction:v4];
}

void __85__ATXCandidateRelevanceModelDataStore_deleteTrainedModelsWithTrainDateOlderThanDate___block_invoke_2_345(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __85__ATXCandidateRelevanceModelDataStore_deleteTrainedModelsWithTrainDateOlderThanDate___block_invoke_3_349;
  v3[3] = &unk_27859A588;
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  [v2 prepAndRunQuery:@"SELECT candidateId onPrep:featurizationManagerId onRow:datasetMetadataId FROM relevanceCandidateModels" onError:{0, v3, 0}];
}

uint64_t __85__ATXCandidateRelevanceModelDataStore_deleteTrainedModelsWithTrainDateOlderThanDate___block_invoke_3_349(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getInt64ForColumn:0];
  v5 = *(*(a1[4] + 8) + 40);
  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:v4];
  [v5 addObject:v6];

  v7 = [v3 getInt64ForColumn:1];
  v8 = *(*(a1[5] + 8) + 40);
  v9 = [MEMORY[0x277CCABB0] numberWithLongLong:v7];
  [v8 addObject:v9];

  v10 = [v3 getInt64ForColumn:2];
  v11 = *(*(a1[6] + 8) + 40);
  v12 = [MEMORY[0x277CCABB0] numberWithLongLong:v10];
  [v11 addObject:v12];

  return *MEMORY[0x277D42690];
}

- (void)writeVerificationStatusForModelUUID:(id)a3 clientModelName:(id)a4 expectedNumberOfModels:(unint64_t)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __114__ATXCandidateRelevanceModelDataStore_writeVerificationStatusForModelUUID_clientModelName_expectedNumberOfModels___block_invoke;
  v15[3] = &unk_27859A5D8;
  v15[4] = &v16;
  [(ATXCandidateRelevanceModelDataStore *)self receiveTrainingResult:v15 completion:&__block_literal_global_351 modelUUID:v8 clientModelName:v9];
  if (v17[3] == a5)
  {
    [(ATXCandidateRelevanceModelDataStore *)self writeSuccessfulVerificationForModelUUID:v8];
  }

  else
  {
    v10 = __atxlog_handle_relevance_model();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = v17[3];
      *buf = 138413314;
      v21 = v13;
      v22 = 2112;
      v23 = v8;
      v24 = 2112;
      v25 = v9;
      v26 = 2048;
      v27 = a5;
      v28 = 2048;
      v29 = v14;
      _os_log_error_impl(&dword_2263AA000, v10, OS_LOG_TYPE_ERROR, "%@ - Unable to verify modelUUID %@ for %@ because we expected %lu models, but only see %lu in the database.", buf, 0x34u);
    }
  }

  _Block_object_dispose(&v16, 8);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)writeSuccessfulVerificationForModelUUID:(id)a3
{
  v4 = a3;
  dataStore = self->_dataStore;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__ATXCandidateRelevanceModelDataStore_writeSuccessfulVerificationForModelUUID___block_invoke;
  v7[3] = &unk_278596C10;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(_ATXDataStore *)dataStore _doSync:v7];
}

void __79__ATXCandidateRelevanceModelDataStore_writeSuccessfulVerificationForModelUUID___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __79__ATXCandidateRelevanceModelDataStore_writeSuccessfulVerificationForModelUUID___block_invoke_2;
  v4[3] = &unk_278596C10;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 writeTransaction:v4];
}

void __79__ATXCandidateRelevanceModelDataStore_writeSuccessfulVerificationForModelUUID___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __79__ATXCandidateRelevanceModelDataStore_writeSuccessfulVerificationForModelUUID___block_invoke_3;
  v4[3] = &unk_278598768;
  v5 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __79__ATXCandidateRelevanceModelDataStore_writeSuccessfulVerificationForModelUUID___block_invoke_4;
  v3[3] = &unk_2785987B8;
  v3[4] = *(a1 + 32);
  [v2 prepAndRunQuery:@"UPDATE relevanceCandidateModels SET isVerified = 1 WHERE modelUUID = :modelUUID " onPrep:v4 onRow:0 onError:v3];
}

void __79__ATXCandidateRelevanceModelDataStore_writeSuccessfulVerificationForModelUUID___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 UUIDString];
  [v3 bindNamedParam:":modelUUID" toNSString:v4];
}

uint64_t __79__ATXCandidateRelevanceModelDataStore_writeSuccessfulVerificationForModelUUID___block_invoke_4(uint64_t a1)
{
  v2 = __atxlog_handle_relevance_model();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    __79__ATXCandidateRelevanceModelDataStore_writeSuccessfulVerificationForModelUUID___block_invoke_4_cold_1(a1, v2);
  }

  return *MEMORY[0x277D42698];
}

- (BOOL)isModelUUIDVerified:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  dataStore = self->_dataStore;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__ATXCandidateRelevanceModelDataStore_isModelUUIDVerified___block_invoke;
  v8[3] = &unk_2785987E0;
  v8[4] = self;
  v6 = v4;
  v9 = v6;
  v10 = &v11;
  [(_ATXDataStore *)dataStore _doSync:v8];
  LOBYTE(dataStore) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return dataStore;
}

void __59__ATXCandidateRelevanceModelDataStore_isModelUUIDVerified___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) db];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__ATXCandidateRelevanceModelDataStore_isModelUUIDVerified___block_invoke_2;
  v6[3] = &unk_2785987E0;
  v3 = a1[5];
  v6[4] = a1[4];
  v4 = v3;
  v5 = a1[6];
  v7 = v4;
  v8 = v5;
  [v2 readTransaction:v6];
}

void __59__ATXCandidateRelevanceModelDataStore_isModelUUIDVerified___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__ATXCandidateRelevanceModelDataStore_isModelUUIDVerified___block_invoke_3;
  v4[3] = &unk_278598768;
  v5 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __59__ATXCandidateRelevanceModelDataStore_isModelUUIDVerified___block_invoke_4;
  v3[3] = &unk_278598790;
  v3[4] = *(a1 + 48);
  [v2 prepAndRunQuery:@"SELECT isVerified FROM relevanceCandidateModels WHERE modelUUID = :modelUUID LIMIT 1" onPrep:v4 onRow:v3 onError:0];
}

void __59__ATXCandidateRelevanceModelDataStore_isModelUUIDVerified___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 UUIDString];
  [v3 bindNamedParam:":modelUUID" toNSString:v4];
}

- (void)writeTrainingResult:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v11 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_class();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_8_1() debugDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0(&dword_2263AA000, v3, v4, "%@ - Skipping the training results write because there was an error when creating or retrieving featurizationManagerId: %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)writeTrainingResult:.cold.2()
{
  OUTLINED_FUNCTION_2_1();
  v11 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_class();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_8_1() debugDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0(&dword_2263AA000, v3, v4, "%@ - Skipping the training results write because there was an error when creating or retrieving candidateId: %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)writeTrainingResult:.cold.3()
{
  OUTLINED_FUNCTION_2_1();
  v11 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_class();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_8_1() debugDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0(&dword_2263AA000, v3, v4, "%@ - Skipping the training results write because there was an error when creating or retrieving datasetMetadataId: %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)writeTrainingResult:.cold.4()
{
  OUTLINED_FUNCTION_2_1();
  v11 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_class();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_8_1() debugDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0(&dword_2263AA000, v3, v4, "%@ - Skipping the training results write because there was an error when serializing modelData: %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)featurizationManagerIdForFeaturizationManager:error:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_6(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_6_0(&dword_2263AA000, "%@ - Could not find featurizationManagerId for featurizationManager that was just written to the datastore for featurizationManager: %@", v4, v5);
}

- (void)datasetMetadataIdForDatasetMetadata:error:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_6(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_6_0(&dword_2263AA000, "%@ - Could not find datasetMetadataId for datasetMetadata that was just written to the datastore for datasetMetadata: %@", v4, v5);
}

- (void)candidateIdForCandidate:error:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_6(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_6_0(&dword_2263AA000, "%@ - Could not find candidateId for candidate that was just written to the datastore for candidate: %@", v4, v5);
}

void __98__ATXCandidateRelevanceModelDataStore_receiveTrainingResult_completion_modelUUID_clientModelName___block_invoke_4_cold_1(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 32);
  v3 = *(a2 + 40);
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_16(&dword_2263AA000, v4, v5, "Failed to unarchive featurizationManagerData with error: %{public}@. modelId: %@, clientModelName: %@");
  v6 = *MEMORY[0x277D85DE8];
}

void __98__ATXCandidateRelevanceModelDataStore_receiveTrainingResult_completion_modelUUID_clientModelName___block_invoke_4_cold_2(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 32);
  v3 = *(a2 + 40);
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_16(&dword_2263AA000, v4, v5, "Failed to unarchive candidateData with error: %{public}@. modelId: %@, clientModelName: %@");
  v6 = *MEMORY[0x277D85DE8];
}

void __98__ATXCandidateRelevanceModelDataStore_receiveTrainingResult_completion_modelUUID_clientModelName___block_invoke_4_cold_3(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 32);
  v3 = *(a2 + 40);
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_16(&dword_2263AA000, v4, v5, "Failed to unarchive candidateModel trained classifier with error: %{public}@. modelId: %@, clientModelName: %@");
  v6 = *MEMORY[0x277D85DE8];
}

void __79__ATXCandidateRelevanceModelDataStore_writeSuccessfulVerificationForModelUUID___block_invoke_4_cold_1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = 138412290;
  v8 = v5;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "%@ - Error while verifying and activating models", &v7, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

@end