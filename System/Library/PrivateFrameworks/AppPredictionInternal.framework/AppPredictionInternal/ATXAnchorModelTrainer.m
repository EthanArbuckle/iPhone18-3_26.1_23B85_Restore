@interface ATXAnchorModelTrainer
- (ATXAnchorModelTrainer)init;
- (ATXAnchorModelTrainer)initWithTask:(id)a3;
- (ATXAnchorModelTrainer)initWithTask:(id)a3 dataStoreWrapper:(id)a4;
- (BOOL)anchorWasRecentlyTrained:(id)a3;
- (id)anchorsToIncludeInTraining;
- (id)candidateTypeFromCandidateId:(id)a3;
- (id)trainAnchorModel:(id)a3;
- (id)trainAnchorModel:(id)a3 phase1Trainer:(id)a4 phase2Trainer:(id)a5 phase3Trainer:(id)a6;
- (id)trainModelPerCandidateSelectedInPhase1:(id)a3 phase2Trainer:(id)a4 phase3Trainer:(id)a5 phase1Results:(id)a6;
- (void)train;
@end

@implementation ATXAnchorModelTrainer

- (ATXAnchorModelTrainer)init
{
  v3 = objc_opt_new();
  v4 = [(ATXAnchorModelTrainer *)self initWithTask:0 dataStoreWrapper:v3];

  return v4;
}

- (ATXAnchorModelTrainer)initWithTask:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(ATXAnchorModelTrainer *)self initWithTask:v4 dataStoreWrapper:v5];

  return v6;
}

- (ATXAnchorModelTrainer)initWithTask:(id)a3 dataStoreWrapper:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = ATXAnchorModelTrainer;
  v9 = [(ATXAnchorModelTrainer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_task, a3);
    objc_storeStrong(&v10->_dataStoreWrapper, a4);
    v11 = +[ATXAnchorModelHyperParameters sharedInstance];
    hyperparameters = v10->_hyperparameters;
    v10->_hyperparameters = v11;
  }

  return v10;
}

- (id)anchorsToIncludeInTraining
{
  v2 = [(ATXAnchorModelHyperParameters *)self->_hyperparameters enabledAnchors];
  v3 = [v2 _pas_mappedArrayWithTransform:&__block_literal_global_26];

  return v3;
}

id __51__ATXAnchorModelTrainer_anchorsToIncludeInTraining__block_invoke(int a1, NSString *aClassName)
{
  NSClassFromString(aClassName);
  v2 = objc_opt_new();

  return v2;
}

- (void)train
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a2;
  _os_log_fault_impl(&dword_2263AA000, log, OS_LOG_TYPE_FAULT, "Anchor Model training has exceeded 15 minutes. Training completed in %.2f seconds.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t __30__ATXAnchorModelTrainer_train__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) anchorWasRecentlyTrained:v3];
  if (v4)
  {
    v5 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Skipping training of anchor because it was recently trained. Anchor: %@", &v8, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4 ^ 1u;
}

- (BOOL)anchorWasRecentlyTrained:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CBEAA8]);
  [(ATXAnchorModelHyperParameters *)self->_hyperparameters maxTrainingAgeInSecondsToConsiderForRetraining];
  v7 = [v5 initWithTimeIntervalSinceNow:-v6];
  v8 = [(ATXAnchorModelDataStoreWrapperProtocol *)self->_dataStoreWrapper dateAnchorModelWasLastTrainedForAnchor:v4];
  v9 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v14 = 138412546;
    v15 = v4;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_INFO, "Anchor %@ was last trained on %@", &v14, 0x16u);
  }

  v10 = [v8 laterDate:v7];
  v11 = v10 == v8;

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)trainAnchorModel:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v34 = v4;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_INFO, "Starting training for Anchor %@", buf, 0xCu);
  }

  v27 = objc_opt_new();
  v6 = v4;
  [(ATXAnchorModelDataStoreWrapperProtocol *)self->_dataStoreWrapper uniqueAnchorEventIdentifiersForAnchor:v4];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v31 = 0u;
  v7 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        v12 = v6;
        if ([(ATXBackgroundActivityProtocol *)self->_task didDefer])
        {
          v23 = __atxlog_handle_anchor();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v34 = v6;
            _os_log_impl(&dword_2263AA000, v23, OS_LOG_TYPE_DEFAULT, "Deferring training of additional anchors in the middle of training anchor model for anchor %@ because XPC activity asked for deferral. Not going to process any other anchors for now.", buf, 0xCu);
          }

          v19 = obj;
          v22 = MEMORY[0x277CBEBF8];
          v21 = v27;
          goto LABEL_17;
        }

        v13 = [v6 copy];
        v14 = [v11 copy];
        [v13 setAnchorEventIdentifier:v14];

        v15 = [[ATXAnchorModelPhase1Trainer alloc] initForAnchor:v13 anchorModelDataStoreWrapper:self->_dataStoreWrapper];
        [v15 setRunningTask:self->_task];
        v16 = [[ATXAnchorModelPhase2Trainer alloc] initForAnchor:v13 anchorModelDataStoreWrapper:self->_dataStoreWrapper];
        [v16 setRunningTask:self->_task];
        v17 = [[ATXAnchorModelPhase3Trainer alloc] initForAnchor:v13 anchorModelDataStoreWrapper:self->_dataStoreWrapper];
        [v17 setRunningTask:self->_task];
        v18 = [(ATXAnchorModelTrainer *)self trainAnchorModel:v13 phase1Trainer:v15 phase2Trainer:v16 phase3Trainer:v17];
        [v27 addObjectsFromArray:v18];
      }

      v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v19 = obj;

  v20 = __atxlog_handle_anchor();
  v12 = v6;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v34 = v6;
    _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_INFO, "Finished training for Anchor %@.", buf, 0xCu);
  }

  v21 = v27;
  v22 = v27;
LABEL_17:

  v24 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)trainAnchorModel:(id)a3 phase1Trainer:(id)a4 phase2Trainer:(id)a5 phase3Trainer:(id)a6
{
  v32 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = a4;
  v14 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v10 anchorEventIdentifier];
    v26 = 138412546;
    v27 = v10;
    v28 = 2112;
    v29 = v15;
    _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "Starting training of Anchor Model for anchor: %@, event identifier: %@...", &v26, 0x16u);
  }

  v16 = [v13 trainPhase1];

  v17 = [(ATXBackgroundActivityProtocol *)self->_task didDefer];
  v18 = __atxlog_handle_anchor();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    if (v19)
    {
      v26 = 138412290;
      v27 = v10;
      _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "Deferring training of additional anchors in the middle of training anchor model for anchor %@ because XPC activity asked for deferral. Not going to process any other anchors for now.", &v26, 0xCu);
    }

    v20 = MEMORY[0x277CBEBF8];
  }

  else
  {
    if (v19)
    {
      v21 = [v10 anchorEventIdentifier];
      v22 = [v16 count];
      v26 = 138412802;
      v27 = v10;
      v28 = 2112;
      v29 = v21;
      v30 = 2048;
      v31 = v22;
      _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "Finished training Anchor Model Phase 1 for anchor: %@, event identifier: %@. Completing training for each of %lu candidates...", &v26, 0x20u);
    }

    v20 = [(ATXAnchorModelTrainer *)self trainModelPerCandidateSelectedInPhase1:v10 phase2Trainer:v11 phase3Trainer:v12 phase1Results:v16];
    v18 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v20 count];
      v26 = 134217984;
      v27 = v23;
      _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "Done training. Returning %lu training results.", &v26, 0xCu);
    }
  }

  v24 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)trainModelPerCandidateSelectedInPhase1:(id)a3 phase2Trainer:(id)a4 phase3Trainer:(id)a5 phase1Results:(id)a6
{
  v54 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([(ATXBackgroundActivityProtocol *)self->_task didDefer])
  {
    v14 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v53 = v10;
      _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "Deferring training of additional anchors in the middle of training anchor model for anchor %@ because XPC activity asked for deferral. Not going to process any other anchors for now.", buf, 0xCu);
    }

    v15 = objc_opt_new();
  }

  else
  {
    v16 = objc_opt_new();
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = v13;
    v45 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v45)
    {
      v44 = *v48;
      v39 = v12;
      v40 = v11;
      v38 = v13;
      v41 = v16;
LABEL_7:
      v17 = 0;
      while (1)
      {
        if (*v48 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v47 + 1) + 8 * v17);
        v19 = objc_autoreleasePoolPush();
        if ([(ATXBackgroundActivityProtocol *)self->_task didDefer])
        {
          v33 = __atxlog_handle_anchor();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v53 = v10;
            _os_log_impl(&dword_2263AA000, v33, OS_LOG_TYPE_DEFAULT, "Deferring training of additional anchors in the middle of training anchor model for anchor %@ because XPC activity asked for deferral. Not going to process any other anchors for now.", buf, 0xCu);
          }

          v15 = objc_opt_new();
          goto LABEL_41;
        }

        v20 = [v18 candidateId];
        v21 = [(ATXAnchorModelTrainer *)self candidateTypeFromCandidateId:v20];
        if (v21)
        {
          v22 = v21;
          if ([(ATXBackgroundActivityProtocol *)self->_task didDefer])
          {
            v34 = __atxlog_handle_anchor();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v53 = v10;
              _os_log_impl(&dword_2263AA000, v34, OS_LOG_TYPE_DEFAULT, "Deferring training of additional anchors in the middle of training anchor model for anchor %@ because XPC activity asked for deferral. Not going to process any other anchors for now.", buf, 0xCu);
            }

            v15 = objc_opt_new();
            goto LABEL_40;
          }

          v46 = [v11 trainPhase2ForCandidate:v20 candidateType:v22];
          if (v46)
          {
            if ([(ATXBackgroundActivityProtocol *)self->_task didDefer])
            {
              v35 = __atxlog_handle_anchor();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v53 = v10;
                _os_log_impl(&dword_2263AA000, v35, OS_LOG_TYPE_DEFAULT, "Deferring training of additional anchors in the middle of training anchor model for anchor %@ because XPC activity asked for deferral. Not going to process any other anchors for now.", buf, 0xCu);
              }

              v15 = objc_opt_new();
LABEL_40:

LABEL_41:
              objc_autoreleasePoolPop(v19);

              v13 = v38;
              v16 = v41;
              goto LABEL_42;
            }

            v23 = [v12 trainPhase3ForCandidate:v20];
            if (v23)
            {
              v24 = v23;
              v42 = v19;
              v25 = v10;
              v26 = v10;
              v27 = -[ATXAnchorModelTrainingResult initWithAnchor:candidateId:candidateType:phase1TrainingResult:candidateClassifier:candidateClassifierType:offsetFromAnchorToShowPrediction:]([ATXAnchorModelTrainingResult alloc], "initWithAnchor:candidateId:candidateType:phase1TrainingResult:candidateClassifier:candidateClassifierType:offsetFromAnchorToShowPrediction:", v10, v20, v22, v18, v46, [v46 classifierType], v23);
              [v41 addObject:v27];
              v28 = [(ATXBackgroundActivityProtocol *)self->_task didDefer];
              v29 = __atxlog_handle_anchor();
              v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
              if (v28)
              {
                v10 = v25;
                if (v30)
                {
                  *buf = 138412290;
                  v53 = v26;
                  _os_log_impl(&dword_2263AA000, v29, OS_LOG_TYPE_DEFAULT, "Deferring training of additional anchors in the middle of training anchor model for anchor %@ because XPC activity asked for deferral. Not going to process any other anchors for now.", buf, 0xCu);
                }

                v15 = objc_opt_new();
                v12 = v39;
                v11 = v40;
                v19 = v42;
                goto LABEL_41;
              }

              if (v30)
              {
                *buf = 138412290;
                v53 = v27;
                _os_log_impl(&dword_2263AA000, v29, OS_LOG_TYPE_DEFAULT, "Added training result: %@", buf, 0xCu);
              }

              v10 = v25;
              v12 = v39;
              v11 = v40;
              v19 = v42;
            }

            else
            {
              v32 = __atxlog_handle_anchor();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v53 = v20;
                _os_log_error_impl(&dword_2263AA000, v32, OS_LOG_TYPE_ERROR, "Could not compute the offset seconds from the anchor to show the show the prediction for candidate: %@. Skipping the candidate.", buf, 0xCu);
              }
            }
          }

          else
          {
            v31 = __atxlog_handle_anchor();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v53 = v20;
              _os_log_error_impl(&dword_2263AA000, v31, OS_LOG_TYPE_ERROR, "Could not train a classifier for candidate: %@. Skipping the candidate.", buf, 0xCu);
            }
          }
        }

        else
        {
          v22 = __atxlog_handle_anchor();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v53 = v20;
            _os_log_error_impl(&dword_2263AA000, v22, OS_LOG_TYPE_ERROR, "Could not fetch the candidateType for candidate: %@. Skipping the candidate.", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v19);
        if (v45 == ++v17)
        {
          v13 = v38;
          v16 = v41;
          v45 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
          if (v45)
          {
            goto LABEL_7;
          }

          break;
        }
      }
    }

    v15 = v16;
LABEL_42:
  }

  v36 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)candidateTypeFromCandidateId:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v4 candidateTypeForCandidateId:v3];

  return v5;
}

@end