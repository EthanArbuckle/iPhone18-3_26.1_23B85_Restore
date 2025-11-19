@interface ATXCandidateRelevanceModelTrainer
- (ATXCandidateRelevanceModelTrainer)initWithConfig:(id)a3;
- (void)generateAndSaveDatasetWithFilename:(id)a3;
- (void)trainWithXPCActivity:(id)a3 disregardDatasetMetadataRequirements:(BOOL)a4;
@end

@implementation ATXCandidateRelevanceModelTrainer

- (ATXCandidateRelevanceModelTrainer)initWithConfig:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXCandidateRelevanceModelTrainer;
  v6 = [(ATXCandidateRelevanceModelTrainer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, a3);
  }

  return v7;
}

- (void)generateAndSaveDatasetWithFilename:(id)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ATXCandidateRelevanceModelConfig *)self->_config datasetGenerator];
  v6 = objc_opt_new();
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __72__ATXCandidateRelevanceModelTrainer_generateAndSaveDatasetWithFilename___block_invoke;
  v58[3] = &unk_27859D328;
  v58[4] = self;
  v7 = v6;
  v59 = v7;
  [v5 receiveDataPoint:v58 completion:&__block_literal_global_116];
  v8 = [ATXCandidateRelevanceModelFeaturizationManager alloc];
  v38 = self;
  v9 = [(ATXCandidateRelevanceModelConfig *)self->_config featurizers];
  v10 = [(ATXCandidateRelevanceModelFeaturizationManager *)v8 initWithFeaturizers:v9];

  v11 = [MEMORY[0x277CEBCB0] appPredictionDirectory];
  v43 = v4;
  v12 = [v11 stringByAppendingPathComponent:v4];

  v13 = [MEMORY[0x277CCAA00] defaultManager];
  [v13 createFileAtPath:v12 contents:0 attributes:0];

  v42 = v12;
  v14 = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:v12];
  v15 = objc_opt_new();
  v47 = v10;
  v16 = [(ATXCandidateRelevanceModelFeaturizationManager *)v10 featureNames];
  [v15 addObject:@"Candidate"];
  [v15 addObject:@"CandidateIdentifier"];
  [v15 addObject:@"CandidateType"];
  [v15 addObject:@"SessionId"];
  [v15 addObject:@"Engaged"];
  v40 = v16;
  [v15 addObjectsFromArray:v16];
  v51 = v14;
  v41 = v15;
  [v14 writeCommaSeparatedValues:v15];
  v17 = objc_opt_new();
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __72__ATXCandidateRelevanceModelTrainer_generateAndSaveDatasetWithFilename___block_invoke_3;
  v56[3] = &unk_27859D350;
  v46 = v17;
  v57 = v46;
  v48 = v5;
  [v5 receiveDatasetSession:v56 completion:&__block_literal_global_48_0];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v7;
  v49 = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (v49)
  {
    v45 = *v53;
    do
    {
      v18 = 0;
      do
      {
        if (*v53 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v50 = v18;
        v19 = *(*(&v52 + 1) + 8 * v18);
        v20 = [objc_opt_class() candidateDataPointsForSessions:v46 candidate:v19];
        v21 = [(ATXCandidateRelevanceModelFeaturizationManager *)v47 sparseFeatureMatrixFromDataPoints:v20];
        v22 = [objc_opt_class() labelsFromDataPoints:v20];
        v23 = [v21 numberOfRows];
        if (v23 != [v22 count])
        {
          [(ATXCandidateRelevanceModelTrainer *)a2 generateAndSaveDatasetWithFilename:v38];
        }

        if ([v21 numberOfRows])
        {
          v24 = 0;
          do
          {
            v25 = objc_opt_new();
            v26 = [v19 description];
            [v25 addObject:v26];

            v27 = [v19 identifier];
            [v25 addObject:v27];

            v28 = [v19 type];
            [v25 addObject:v28];

            v29 = [v20 objectAtIndexedSubscript:v24];
            v30 = [v29 contextDefinedSessionId];
            v31 = [v30 UUIDString];
            [v25 addObject:v31];

            v32 = [v22 objectAtIndexedSubscript:v24];
            v33 = [v32 stringValue];
            [v25 addObject:v33];

            if ([v21 numberOfColumns])
            {
              v34 = 0;
              do
              {
                [v21 valueAtRow:v24 column:v34];
                v35 = [MEMORY[0x277CCABB0] numberWithFloat:?];
                v36 = [v35 stringValue];
                [v25 addObject:v36];

                ++v34;
              }

              while ([v21 numberOfColumns] > v34);
            }

            [v51 writeCommaSeparatedValues:v25];

            ++v24;
          }

          while ([v21 numberOfRows] > v24);
        }

        v18 = v50 + 1;
      }

      while (v50 + 1 != v49);
      v49 = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v49);
  }

  [v51 closeFile];
  v37 = *MEMORY[0x277D85DE8];
}

void __72__ATXCandidateRelevanceModelTrainer_generateAndSaveDatasetWithFilename___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [*(*(a1 + 32) + 8) featurizers];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        v10 = [v3 context];
        v11 = [v3 candidate];
        [v9 observeContext:v10 candidate:v11];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v12 = *(a1 + 40);
  v13 = [v3 candidate];
  [v12 addObject:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)trainWithXPCActivity:(id)a3 disregardDatasetMetadataRequirements:(BOOL)a4
{
  v143 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([(ATXCandidateRelevanceModelConfig *)self->_config isEnabled])
  {
    v6 = +[ATXCandidateRelevanceModelGlobals sharedInstance];
    v7 = [v6 isPipelineEnabled];

    if (v7)
    {
      v8 = __atxlog_handle_relevance_model();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = [(ATXCandidateRelevanceModelConfig *)self->_config clientModel];
        v12 = [v11 clientModelId];
        *buf = 138412546;
        v138 = v10;
        v139 = 2112;
        v140 = v12;
        _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "%@ - Beginning model training for config with client model name: %@.", buf, 0x16u);
      }

      v13 = [(ATXCandidateRelevanceModelConfig *)self->_config datastore];
      v14 = [(ATXCandidateRelevanceModelConfig *)self->_config clientModel];
      v15 = [v14 clientModelId];
      v16 = [MEMORY[0x277CBEAA8] now];
      v17 = [v16 dateByAddingTimeInterval:-86400.0];
      v18 = [v13 cachedCandidatesForModelId:v15 earliestDate:v17];

      v19 = v18;
      v20 = [v18 candidates];
      v120 = [v18 featurizationManager];
      v21 = [(ATXCandidateRelevanceModelConfig *)self->_config datasetGenerator];
      v113 = v21;
      v114 = self;
      if (v18)
      {
        v22 = __atxlog_handle_relevance_model();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = objc_opt_class();
          NSStringFromClass(v23);
          v25 = v24 = v20;
          *buf = 138412290;
          v138 = v25;
          _os_log_impl(&dword_2263AA000, v22, OS_LOG_TYPE_DEFAULT, "%@ - Using cached candidates since a deferral must have occurred.", buf, 0xCu);

          v20 = v24;
        }
      }

      else
      {
        v30 = v20;
        v31 = objc_opt_new();
        v32 = objc_opt_new();
        v133[0] = MEMORY[0x277D85DD0];
        v133[1] = 3221225472;
        v133[2] = __95__ATXCandidateRelevanceModelTrainer_trainWithXPCActivity_disregardDatasetMetadataRequirements___block_invoke;
        v133[3] = &unk_27859D378;
        v133[4] = self;
        v33 = v32;
        v134 = v33;
        v34 = v31;
        v135 = v34;
        [v21 receiveDataPoint:v133 completion:&__block_literal_global_62];
        v118 = [v33 currentMetadata];
        v35 = __atxlog_handle_relevance_model();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = objc_opt_class();
          v37 = NSStringFromClass(v36);
          [(ATXCandidateRelevanceModelConfig *)self->_config clientModel];
          v39 = v38 = v5;
          v40 = [v39 clientModelId];
          *buf = 138412802;
          v138 = v37;
          v139 = 2112;
          v140 = v40;
          v141 = 2112;
          v142 = v118;
          _os_log_impl(&dword_2263AA000, v35, OS_LOG_TYPE_DEFAULT, "%@ - Overall dataset metadata for config with client model name %@:\n%@", buf, 0x20u);

          v5 = v38;
        }

        if (a4 || [(ATXCandidateRelevanceModelConfig *)self->_config shouldTrainModelWithOverallDatasetMetadata:v118])
        {
          v41 = [v34 allKeys];
          v131[0] = MEMORY[0x277D85DD0];
          v131[1] = 3221225472;
          v131[2] = __95__ATXCandidateRelevanceModelTrainer_trainWithXPCActivity_disregardDatasetMetadataRequirements___block_invoke_63;
          v131[3] = &unk_27859D3A0;
          v42 = v34;
          v132 = v42;
          [v41 sortedArrayUsingComparator:v131];
          v44 = v43 = v5;

          v45 = [v44 count];
          v46 = [(ATXCandidateRelevanceModelConfig *)v114->_config maximumNumberOfTrainedCandidates];
          if (v45 >= v46)
          {
            v47 = v46;
          }

          else
          {
            v47 = v45;
          }

          v48 = [v44 subarrayWithRange:{0, v47}];

          v127[0] = MEMORY[0x277D85DD0];
          v127[1] = 3221225472;
          v127[2] = __95__ATXCandidateRelevanceModelTrainer_trainWithXPCActivity_disregardDatasetMetadataRequirements___block_invoke_2_65;
          v127[3] = &unk_27859D3C8;
          v128 = v42;
          v129 = v114;
          v130 = a4;
          v49 = [v48 _pas_filteredArrayWithTest:v127];

          v50 = [ATXCandidateRelevanceModelFeaturizationManager alloc];
          v51 = [(ATXCandidateRelevanceModelConfig *)v114->_config featurizers];
          v52 = [(ATXCandidateRelevanceModelFeaturizationManager *)v50 initWithFeaturizers:v51];

          v53 = [(ATXCandidateRelevanceModelConfig *)v114->_config datastore];
          v54 = [(ATXCandidateRelevanceModelConfig *)v114->_config clientModel];
          v55 = [v54 clientModelId];
          v30 = v49;
          [v53 cacheSelectedCandidates:v49 featurizationManager:v52 modelId:v55];

          v56 = 1;
          v57 = v132;
          v120 = v52;
          v5 = v43;
          self = v114;
        }

        else
        {
          v57 = __atxlog_handle_relevance_model();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            v58 = objc_opt_class();
            v59 = NSStringFromClass(v58);
            *buf = 138412290;
            v138 = v59;
            _os_log_impl(&dword_2263AA000, v57, OS_LOG_TYPE_DEFAULT, "%@ - Config specifies we shouldn't begin training yet given the overall dataset metadata. Skipping model training for all candidates.", buf, 0xCu);
          }

          v56 = 0;
        }

        v19 = 0;
        v21 = v113;
        v20 = v30;
        if ((v56 & 1) == 0)
        {
          goto LABEL_56;
        }
      }

      if (v20 && v120)
      {
        if (![v5 didDefer])
        {
          v109 = v5;
          v112 = objc_opt_new();
          v123 = 0u;
          v124 = 0u;
          v125 = 0u;
          v126 = 0u;
          obj = v20;
          v116 = [obj countByEnumeratingWithState:&v123 objects:v136 count:16];
          v110 = v19;
          v108 = v20;
          if (v116)
          {
            v119 = 0;
            v115 = *v124;
            do
            {
              v64 = 0;
              do
              {
                if (*v124 != v115)
                {
                  objc_enumerationMutation(obj);
                }

                v65 = *(*(&v123 + 1) + 8 * v64);
                v66 = objc_autoreleasePoolPush();
                v67 = __atxlog_handle_relevance_model();
                if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
                {
                  v68 = objc_opt_class();
                  v69 = NSStringFromClass(v68);
                  v70 = [v65 identifier];
                  *buf = 138412546;
                  v138 = v69;
                  v139 = 2112;
                  v140 = v70;
                  _os_log_impl(&dword_2263AA000, v67, OS_LOG_TYPE_DEFAULT, "%@ - Setting up dataset for candidate with identifier: %@", buf, 0x16u);
                }

                v71 = objc_opt_new();
                v121[0] = MEMORY[0x277D85DD0];
                v121[1] = 3221225472;
                v121[2] = __95__ATXCandidateRelevanceModelTrainer_trainWithXPCActivity_disregardDatasetMetadataRequirements___block_invoke_68;
                v121[3] = &unk_27859D3F0;
                v72 = v71;
                v122 = v72;
                [v21 receiveCandidateDataPoint:v121 completion:&__block_literal_global_71_0 candidate:v65];
                v73 = [ATXCandidateRelevanceModelDataStoreDatasetMetadata datasetMetadataForDataPoints:v72];
                v74 = __atxlog_handle_relevance_model();
                if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
                {
                  v75 = objc_opt_class();
                  v76 = NSStringFromClass(v75);
                  v77 = [v65 identifier];
                  *buf = 138412802;
                  v138 = v76;
                  v139 = 2112;
                  v140 = v77;
                  v141 = 2112;
                  v142 = v73;
                  _os_log_impl(&dword_2263AA000, v74, OS_LOG_TYPE_DEFAULT, "%@ - Candidate dataset metadata for candidate identifier %@:\n%@", buf, 0x20u);
                }

                if (a4 || [(ATXCandidateRelevanceModelConfig *)self->_config shouldTrainModelWithCandidateDatasetMetadata:v73])
                {
                  v78 = __atxlog_handle_relevance_model();
                  if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
                  {
                    v79 = objc_opt_class();
                    v80 = NSStringFromClass(v79);
                    v81 = [v65 identifier];
                    *buf = 138412546;
                    v138 = v80;
                    v139 = 2112;
                    v140 = v81;
                    _os_log_impl(&dword_2263AA000, v78, OS_LOG_TYPE_DEFAULT, "%@ - Training model for candidate with identifier: %@", buf, 0x16u);
                  }

                  v82 = [(ATXCandidateRelevanceModelConfig *)self->_config modelTrainingPlan];
                  v83 = [v82 trainModelForDataPoints:v72 candidate:v65 featurizationManager:v120];

                  v84 = __atxlog_handle_relevance_model();
                  if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
                  {
                    v85 = objc_opt_class();
                    v86 = NSStringFromClass(v85);
                    v87 = [v65 identifier];
                    *buf = 138412546;
                    v138 = v86;
                    v139 = 2112;
                    v140 = v87;
                    _os_log_impl(&dword_2263AA000, v84, OS_LOG_TYPE_DEFAULT, "%@ - Writing model to datastore for candidate with identifier: %@", buf, 0x16u);
                  }

                  v88 = [ATXCandidateRelevanceModelDataStoreTrainingResult alloc];
                  v89 = [(ATXCandidateRelevanceModelConfig *)self->_config clientModel];
                  v90 = [v89 clientModelId];
                  v91 = [MEMORY[0x277CBEAA8] now];
                  LOBYTE(v107) = 0;
                  v92 = [(ATXCandidateRelevanceModelDataStoreTrainingResult *)v88 initWithModel:v83 candidate:v65 featurizationManager:v120 modelUUID:v112 datasetMetadata:v73 clientModelName:v90 trainDate:v91 isVerified:v107];

                  self = v114;
                  v93 = [(ATXCandidateRelevanceModelConfig *)v114->_config datastore];
                  [v93 writeTrainingResult:v92];

                  ++v119;
                  v21 = v113;
                }

                else
                {
                  v83 = __atxlog_handle_relevance_model();
                  if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
                  {
                    v94 = objc_opt_class();
                    v95 = NSStringFromClass(v94);
                    v96 = [v65 identifier];
                    *buf = 138412546;
                    v138 = v95;
                    v139 = 2112;
                    v140 = v96;
                    _os_log_impl(&dword_2263AA000, v83, OS_LOG_TYPE_DEFAULT, "%@ - Config specifies we shouldn't train a model given the candidate dataset metadata. Skipping model training for candidate with identifier: %@", buf, 0x16u);
                  }
                }

                objc_autoreleasePoolPop(v66);
                ++v64;
              }

              while (v116 != v64);
              v97 = [obj countByEnumeratingWithState:&v123 objects:v136 count:16];
              v116 = v97;
            }

            while (v97);
          }

          else
          {
            v119 = 0;
          }

          v98 = [(ATXCandidateRelevanceModelConfig *)self->_config datastore];
          v99 = [(ATXCandidateRelevanceModelConfig *)self->_config clientModel];
          v100 = [v99 clientModelId];
          v60 = v112;
          [v98 writeVerificationStatusForModelUUID:v112 clientModelName:v100 expectedNumberOfModels:v119];

          v101 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-1209600.0];
          v102 = [(ATXCandidateRelevanceModelConfig *)self->_config datastore];
          v103 = [(ATXCandidateRelevanceModelConfig *)self->_config clientModel];
          v104 = [v103 clientModelId];
          [v102 deleteCachedCandidatesForModelId:v104];

          v21 = v113;
          v105 = [(ATXCandidateRelevanceModelConfig *)self->_config datastore];
          [v105 deleteTrainedModelsWithTrainDateOlderThanDate:v101];

          v5 = v109;
          v19 = v110;
          v20 = v108;
          goto LABEL_55;
        }

        v60 = __atxlog_handle_relevance_model();
        if (!os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
LABEL_55:

LABEL_56:
          goto LABEL_57;
        }

        v61 = objc_opt_class();
        v62 = NSStringFromClass(v61);
        *buf = 138412290;
        v138 = v62;
        _os_log_impl(&dword_2263AA000, v60, OS_LOG_TYPE_DEFAULT, "%@ - Stopping model training early due to deferral.", buf, 0xCu);
      }

      else
      {
        v60 = __atxlog_handle_relevance_model();
        if (!os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_55;
        }

        v63 = objc_opt_class();
        v62 = NSStringFromClass(v63);
        *buf = 138412802;
        v138 = v62;
        v139 = 2112;
        v140 = v20;
        v141 = 2112;
        v142 = v120;
        _os_log_fault_impl(&dword_2263AA000, v60, OS_LOG_TYPE_FAULT, "%@ - Programmer error: Either the candidates list (%@) or featurizationManager is nil (%@).", buf, 0x20u);
      }

      goto LABEL_55;
    }
  }

  v19 = __atxlog_handle_relevance_model();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    v28 = [(ATXCandidateRelevanceModelConfig *)self->_config clientModel];
    v29 = [v28 clientModelId];
    *buf = 138412546;
    v138 = v27;
    v139 = 2112;
    v140 = v29;
    _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_DEFAULT, "%@ - Config with client model name %@ is not enabled or the pipeline is disabled. Skipping training.", buf, 0x16u);
  }

LABEL_57:

  v106 = *MEMORY[0x277D85DE8];
}

void __95__ATXCandidateRelevanceModelTrainer_trainWithXPCActivity_disregardDatasetMetadataRequirements___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [*(*(a1 + 32) + 8) featurizers];
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      v8 = 0;
      do
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v22 + 1) + 8 * v8);
        v10 = [v3 context];
        v11 = [v3 candidate];
        [v9 observeContext:v10 candidate:v11];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  [*(a1 + 40) observeDataPoint:v3];
  v12 = *(a1 + 48);
  v13 = [v3 candidate];
  v14 = [v12 objectForKeyedSubscript:v13];

  if (!v14)
  {
    v15 = objc_opt_new();
    v16 = *(a1 + 48);
    v17 = [v3 candidate];
    [v16 setObject:v15 forKeyedSubscript:v17];
  }

  v18 = *(a1 + 48);
  v19 = [v3 candidate];
  v20 = [v18 objectForKeyedSubscript:v19];
  [v20 observeDataPoint:v3];

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __95__ATXCandidateRelevanceModelTrainer_trainWithXPCActivity_disregardDatasetMetadataRequirements___block_invoke_63(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [v7 currentMetadata];

  v9 = [*(a1 + 32) objectForKeyedSubscript:v6];

  v10 = [v9 currentMetadata];

  v11 = [v10 compare:v8];
  return v11;
}

uint64_t __95__ATXCandidateRelevanceModelTrainer_trainWithXPCActivity_disregardDatasetMetadataRequirements___block_invoke_2_65(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v5 = [v4 currentMetadata];

  v6 = __atxlog_handle_relevance_model();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v3 identifier];
    v19 = 138412802;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    v23 = 2112;
    v24 = v5;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "%@ - Candidate dataset metadata (positive only) for candidate identifier %@:\n%@", &v19, 0x20u);
  }

  if (*(a1 + 48) & 1) != 0 || ([*(*(a1 + 40) + 8) shouldTrainModelWithPositiveCandidateDatasetMetadata:v5])
  {
    v11 = 1;
  }

  else
  {
    v12 = __atxlog_handle_relevance_model();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = [v3 identifier];
      v19 = 138412546;
      v20 = v15;
      v21 = 2112;
      v22 = v16;
      _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "%@ - Config specifies we shouldn't train a model given the candidate dataset metadata (positive only). Skipping model training for candidate with identifier: %@", &v19, 0x16u);
    }

    v11 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)generateAndSaveDatasetWithFilename:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXCandidateRelevanceModelTrainer.m" lineNumber:102 description:@"Feature matrix does not match the size of labels."];
}

@end