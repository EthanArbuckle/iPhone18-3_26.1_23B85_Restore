@interface ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier
- (ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier)initWithCandidateId:(id)id candidateType:(id)type anchor:(id)anchor;
- (ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier)initWithCandidateId:(id)id candidateType:(id)type anchor:(id)anchor hyperParameters:(id)parameters;
- (ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier)initWithCandidateId:(id)id candidateType:(id)type anchor:(id)anchor tree:(id)tree hyperParameters:(id)parameters dataStoreWrapper:(id)wrapper;
- (ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier)initWithCoder:(id)coder;
- (BOOL)checkAndReportDecodingFailureIfNeededForBOOL:(BOOL)l key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)shouldComputeLaunchHistoryCounts;
- (NSString)description;
- (NSString)treeDescription;
- (id)anchorFeaturesWithAnchorOccurrence:(id)occurrence;
- (id)candidateFeaturesForActionCandidateOnAnchorOccurrenceDate:(id)date cachedLaunchHistory:(id)history;
- (id)candidateFeaturesForAppCandidateOnAnchorOccurrenceDate:(id)date cachedLaunchHistory:(id)history;
- (id)candidateFeaturesForLinkActionCandidateOnAnchorOccurrenceDate:(id)date cachedLaunchHistory:(id)history;
- (id)candidateFeaturesForModeCandidateOnAnchorOccurrenceDate:(id)date cachedLaunchHistory:(id)history;
- (id)candidateFeaturesWithAnchorOccurrence:(id)occurrence trainingResult:(id)result;
- (id)classifyCandidateForAnchorOccurrence:(id)occurrence trainingResult:(id)result;
- (id)featureVectorFromFeatureDictionary:(id)dictionary;
- (id)indicesToKeepInTrainingAfterRemovingDuplicateFeatureVectorsWithConflictingLabels:(id)labels labels:(id)a4;
- (id)inferenceFeatureDictForAnchorOccurrence:(id)occurrence trainingResult:(id)result;
- (id)predictWhenNoTreeInitialized;
- (id)stringFeaturesToReplaceWithUnk;
- (id)trainDecisionTree;
- (id)trainingData;
- (id)trainingFeatureVectorsFromTrainingData:(id)data;
- (id)trainingLabelsFromTrainingData:(id)data;
- (void)encodeWithCoder:(id)coder;
- (void)predictWhenNoTreeInitialized;
- (void)setRecentAppLaunchCountsFromAppInfoManager:(id)manager anchorOccurrenceDate:(id)date;
- (void)train;
- (void)trainDecisionTree;
@end

@implementation ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier

- (ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier)initWithCandidateId:(id)id candidateType:(id)type anchor:(id)anchor
{
  anchorCopy = anchor;
  typeCopy = type;
  idCopy = id;
  v11 = +[ATXAnchorModelHyperParameters sharedInstance];
  v12 = objc_opt_new();
  v13 = [(ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier *)self initWithCandidateId:idCopy candidateType:typeCopy anchor:anchorCopy hyperParameters:v11 dataStoreWrapper:v12];

  return v13;
}

- (ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier)initWithCandidateId:(id)id candidateType:(id)type anchor:(id)anchor hyperParameters:(id)parameters
{
  parametersCopy = parameters;
  anchorCopy = anchor;
  typeCopy = type;
  idCopy = id;
  v14 = objc_opt_new();
  v15 = [(ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier *)self initWithCandidateId:idCopy candidateType:typeCopy anchor:anchorCopy hyperParameters:parametersCopy dataStoreWrapper:v14];

  return v15;
}

- (ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier)initWithCandidateId:(id)id candidateType:(id)type anchor:(id)anchor tree:(id)tree hyperParameters:(id)parameters dataStoreWrapper:(id)wrapper
{
  treeCopy = tree;
  parametersCopy = parameters;
  wrapperCopy = wrapper;
  v21.receiver = self;
  v21.super_class = ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier;
  v18 = [(ATXNaivePositiveAnchorModelCandidateClassifier *)&v21 initWithCandidateId:id candidateType:type anchor:anchor];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_tree, tree);
    objc_storeStrong(&v19->_storeWrapper, wrapper);
    objc_storeStrong(&v19->_hyperParameters, parameters);
  }

  return v19;
}

- (NSString)treeDescription
{
  treeDescription = self->_treeDescription;
  if (!treeDescription)
  {
    v4 = objc_alloc(MEMORY[0x277CCACA8]);
    tree = self->_tree;
    if (!tree)
    {
      tree = @"EmptyTree";
    }

    tree = [v4 initWithFormat:@"%@", tree];
    v7 = self->_treeDescription;
    self->_treeDescription = tree;

    treeDescription = self->_treeDescription;
  }

  return treeDescription;
}

- (NSString)description
{
  if ([(ATXNaivePositiveAnchorModelCandidateClassifier *)self isTrained])
  {
    treeDescription = [(ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier *)self treeDescription];
  }

  else
  {
    treeDescription = @"GamePlayKit Decision Tree Anchor Model candidate classifier.";
  }

  return treeDescription;
}

- (BOOL)shouldComputeLaunchHistoryCounts
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier_shouldComputeLaunchHistoryCounts__block_invoke;
  block[3] = &unk_278596BB8;
  block[4] = self;
  if (shouldComputeLaunchHistoryCounts__pasOnceToken7 != -1)
  {
    dispatch_once(&shouldComputeLaunchHistoryCounts__pasOnceToken7, block);
  }

  return shouldComputeLaunchHistoryCounts__pasExprOnceResult;
}

void __92__ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier_shouldComputeLaunchHistoryCounts__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __92__ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier_shouldComputeLaunchHistoryCounts__block_invoke_2;
  v3[3] = &unk_27859C460;
  v3[4] = *(a1 + 32);
  shouldComputeLaunchHistoryCounts__pasExprOnceResult = __92__ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier_shouldComputeLaunchHistoryCounts__block_invoke_2(v3);
  objc_autoreleasePoolPop(v2);
}

uint64_t __92__ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier_shouldComputeLaunchHistoryCounts__block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = [*(a1 + 32) featureNames];
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        if ([*(*(&v9 + 1) + 8 * v5) containsString:@"candidateOccurrencesIn"])
        {
          v6 = 1;
          goto LABEL_11;
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v6 = 0;
LABEL_11:

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)stringFeaturesToReplaceWithUnk
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"anchorEventIdentifier", 0, 0}];
  objc_autoreleasePoolPop(v2);

  return v3;
}

- (void)train
{
  trainDecisionTree = [(ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier *)self trainDecisionTree];
  tree = self->_tree;
  self->_tree = trainDecisionTree;

  [(ATXNaivePositiveAnchorModelCandidateClassifier *)self setIsTrained:1];
}

- (id)trainDecisionTree
{
  v29 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  trainingData = [(ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier *)self trainingData];
  v4 = [(ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier *)self trainingFeatureVectorsFromTrainingData:trainingData];
  v5 = [(ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier *)self trainingLabelsFromTrainingData:trainingData];
  featureNames = [(ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier *)self featureNames];
  v7 = [(ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier *)self indicesToKeepInTrainingAfterRemovingDuplicateFeatureVectorsWithConflictingLabels:v4 labels:v5];
  v8 = [v4 objectsAtIndexes:v7];

  v9 = [v5 objectsAtIndexes:v7];

  v10 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier trainDecisionTree];
  }

  v11 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier trainDecisionTree];
  }

  v12 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v9];
  v13 = [v12 count];
  if (v13 == 1)
  {
    v14 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      candidateId = [(ATXNaivePositiveAnchorModelCandidateClassifier *)self candidateId];
      anyObject = [v12 anyObject];
      *buf = 138412546;
      v26 = candidateId;
      v27 = 2112;
      v28 = anyObject;
      _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_INFO, "Skipping training decision tree for candidate %@ since there's only one known label: %@.:", buf, 0x16u);
    }

    v17 = 0;
  }

  else
  {
    v18 = [ATXGamePlayKitDecisionTree alloc];
    [(ATXAnchorModelHyperParameters *)self->_hyperParameters ratioForLeafNodeDecision];
    v17 = [(ATXGamePlayKitDecisionTree *)v18 initWithExamples:v8 actions:v9 attributes:featureNames maxDepth:3 minSamplesSplit:3 ratioForLeafNodeDecision:?];
    v19 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      candidateId2 = [(ATXNaivePositiveAnchorModelCandidateClassifier *)self candidateId];
      *buf = 138412290;
      v26 = candidateId2;
      _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_INFO, "Finished training decision tree for candidate %@. Tree:", buf, 0xCu);
    }

    v14 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v26 = v17;
      _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_INFO, "\n%@", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(context);
  if (v13 == 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = v17;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)indicesToKeepInTrainingAfterRemovingDuplicateFeatureVectorsWithConflictingLabels:(id)labels labels:(id)a4
{
  labelsCopy = labels;
  v6 = a4;
  v7 = objc_opt_new();
  if ([labelsCopy count])
  {
    v8 = 0;
    do
    {
      v9 = [labelsCopy objectAtIndexedSubscript:v8];
      for (i = v8; i < [labelsCopy count]; ++i)
      {
        v11 = [labelsCopy objectAtIndexedSubscript:i];
        if ([v9 isEqual:v11])
        {
          v12 = [v6 objectAtIndexedSubscript:v8];
          v13 = [v6 objectAtIndexedSubscript:i];
          v14 = [v12 isEqual:v13];

          if ((v14 & 1) == 0)
          {
            v15 = [v6 objectAtIndexedSubscript:v8];

            if (!v15)
            {
              [v7 addIndex:v8];
            }

            v16 = [v6 objectAtIndexedSubscript:i];

            if (!v16)
            {
              [v7 addIndex:i];
            }
          }
        }

        else
        {
        }
      }

      ++v8;
    }

    while (v8 < [labelsCopy count]);
  }

  v17 = [MEMORY[0x277CCAB58] indexSetWithIndexesInRange:{0, objc_msgSend(labelsCopy, "count")}];
  [v17 removeIndexes:v7];

  return v17;
}

- (id)trainingData
{
  storeWrapper = self->_storeWrapper;
  candidateId = [(ATXNaivePositiveAnchorModelCandidateClassifier *)self candidateId];
  anchor = [(ATXNaivePositiveAnchorModelCandidateClassifier *)self anchor];
  v6 = [(ATXAnchorModelDataStoreWrapperProtocol *)storeWrapper trainingDataForCandidate:candidateId anchor:anchor replacementStringForNilStringValues:@"unk"];

  return v6;
}

- (id)trainingLabelsFromTrainingData:(id)data
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __91__ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier_trainingLabelsFromTrainingData___block_invoke;
  v6[3] = &unk_27859E288;
  v6[4] = self;
  v3 = [data _pas_mappedArrayWithTransform:v6];
  v4 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier trainingLabelsFromTrainingData:];
  }

  return v3;
}

id __91__ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier_trainingLabelsFromTrainingData___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 labelKey];
  v5 = [v3 objectForKeyedSubscript:v4];

  return v5;
}

- (id)featureVectorFromFeatureDictionary:(id)dictionary
{
  v23 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  featureNames = [(ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier *)self featureNames];
  v7 = [featureNames countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(featureNames);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [dictionaryCopy objectForKeyedSubscript:v11];
        if (!v12)
        {
          stringFeaturesToReplaceWithUnk = [(ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier *)self stringFeaturesToReplaceWithUnk];
          v14 = [stringFeaturesToReplaceWithUnk containsObject:v11];

          v12 = @"unk";
          if (!v14)
          {
            continue;
          }
        }

        [v5 addObject:v12];
      }

      v8 = [featureNames countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier featureVectorFromFeatureDictionary:];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)trainingFeatureVectorsFromTrainingData:(id)data
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __99__ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier_trainingFeatureVectorsFromTrainingData___block_invoke;
  v5[3] = &unk_27859E288;
  v5[4] = self;
  v3 = [data _pas_mappedArrayWithTransform:v5];

  return v3;
}

- (id)classifyCandidateForAnchorOccurrence:(id)occurrence trainingResult:(id)result
{
  *&v26[5] = *MEMORY[0x277D85DE8];
  occurrenceCopy = occurrence;
  resultCopy = result;
  v8 = objc_autoreleasePoolPush();
  if (self->_tree)
  {
    v9 = [(ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier *)self inferenceFeatureDictForAnchorOccurrence:occurrenceCopy trainingResult:resultCopy];
    v10 = [v9 count];
    v11 = __atxlog_handle_anchor();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        v25 = 138412290;
        *v26 = v9;
        _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "Inference features: %@", &v25, 0xCu);
      }

      v13 = [(ATXGamePlayKitDecisionTree *)self->_tree findActionForAnswers:v9];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        bOOLValue = [v13 BOOLValue];
        v15 = __atxlog_handle_anchor();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          candidateId = [(ATXNaivePositiveAnchorModelCandidateClassifier *)self candidateId];
          v25 = 67109378;
          v26[0] = bOOLValue;
          LOWORD(v26[1]) = 2112;
          *(&v26[1] + 2) = candidateId;
          _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "GamePlayKit Decision Tree predicted %{BOOL}d for candidate %@", &v25, 0x12u);
        }

        v17 = [ATXAnchorModelClassificationResult alloc];
        v18 = 0.5;
        v19 = bOOLValue;
      }

      else
      {
        v22 = __atxlog_handle_anchor();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          [ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier classifyCandidateForAnchorOccurrence:trainingResult:];
        }

        v17 = [ATXAnchorModelClassificationResult alloc];
        v18 = 0.0;
        v19 = 0;
      }

      predictWhenNoTreeInitialized = [(ATXAnchorModelClassificationResult *)v17 initWithShouldPredictCandidate:v19 score:v18];
    }

    else
    {
      if (v12)
      {
        candidateId2 = [(ATXNaivePositiveAnchorModelCandidateClassifier *)self candidateId];
        v25 = 138412290;
        *v26 = candidateId2;
        _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "GKDecisionTree Predicting NO because inference feature dict was an empty dictionary, likely due to an error. CandidateId: %@", &v25, 0xCu);
      }

      predictWhenNoTreeInitialized = [[ATXAnchorModelClassificationResult alloc] initWithShouldPredictCandidate:0 score:0.0];
    }
  }

  else
  {
    predictWhenNoTreeInitialized = [(ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier *)self predictWhenNoTreeInitialized];
  }

  objc_autoreleasePoolPop(v8);

  v23 = *MEMORY[0x277D85DE8];

  return predictWhenNoTreeInitialized;
}

- (id)predictWhenNoTreeInitialized
{
  v20 = *MEMORY[0x277D85DE8];
  trainingData = [(ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier *)self trainingData];
  v4 = [(ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier *)self trainingFeatureVectorsFromTrainingData:trainingData];
  v5 = [(ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier *)self trainingLabelsFromTrainingData:trainingData];
  v6 = [(ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier *)self indicesToKeepInTrainingAfterRemovingDuplicateFeatureVectorsWithConflictingLabels:v4 labels:v5];
  v7 = [v5 objectsAtIndexes:v6];

  v8 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v7];
  v9 = [v8 count];
  v10 = __atxlog_handle_anchor();
  v11 = v10;
  if (v9 == 1)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      candidateId = [(ATXNaivePositiveAnchorModelCandidateClassifier *)self candidateId];
      v18 = 138412290;
      v19 = candidateId;
      _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_INFO, "Tree not initialized but asked to make a prediction. Since this was a pure candidate, we're predicting the only label we have. %@", &v18, 0xCu);
    }

    v13 = [ATXAnchorModelClassificationResult alloc];
    anyObject = [v8 anyObject];
    v15 = -[ATXAnchorModelClassificationResult initWithShouldPredictCandidate:score:](v13, "initWithShouldPredictCandidate:score:", [anyObject BOOLValue], 1.0);
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier *)self predictWhenNoTreeInitialized];
    }

    v15 = [[ATXAnchorModelClassificationResult alloc] initWithShouldPredictCandidate:0 score:0.0];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)inferenceFeatureDictForAnchorOccurrence:(id)occurrence trainingResult:(id)result
{
  v27 = *MEMORY[0x277D85DE8];
  occurrenceCopy = occurrence;
  resultCopy = result;
  v8 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier inferenceFeatureDictForAnchorOccurrence:? trainingResult:?];
  }

  v9 = [(ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier *)self candidateFeaturesWithAnchorOccurrence:occurrenceCopy trainingResult:resultCopy];

  v10 = [v9 count];
  v11 = __atxlog_handle_anchor();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier inferenceFeatureDictForAnchorOccurrence:trainingResult:];
    }

    v12 = [(ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier *)self anchorFeaturesWithAnchorOccurrence:occurrenceCopy];
    v13 = [v12 count];
    v14 = __atxlog_handle_anchor();
    v15 = v14;
    if (v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier inferenceFeatureDictForAnchorOccurrence:trainingResult:];
      }

      v16 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v9];
      [v16 addEntriesFromDictionary:v12];
      v15 = __atxlog_handle_anchor();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier inferenceFeatureDictForAnchorOccurrence:trainingResult:];
      }
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        candidateId = [(ATXNaivePositiveAnchorModelCandidateClassifier *)self candidateId];
        anchor = [(ATXNaivePositiveAnchorModelCandidateClassifier *)self anchor];
        v23 = 138412546;
        v24 = candidateId;
        v25 = 2112;
        v26 = anchor;
        _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "Anchor features were empty for candidateId: %@, anchor: %@", &v23, 0x16u);
      }

      v16 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      candidateId2 = [(ATXNaivePositiveAnchorModelCandidateClassifier *)self candidateId];
      anchor2 = [(ATXNaivePositiveAnchorModelCandidateClassifier *)self anchor];
      v23 = 138412546;
      v24 = candidateId2;
      v25 = 2112;
      v26 = anchor2;
      _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "Candidate features were empty for candidateId: %@, anchor: %@", &v23, 0x16u);
    }

    v16 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)candidateFeaturesWithAnchorOccurrence:(id)occurrence trainingResult:(id)result
{
  resultCopy = result;
  occurrenceCopy = occurrence;
  anchor = [(ATXNaivePositiveAnchorModelCandidateClassifier *)self anchor];
  v9 = [objc_opt_class() anchorOccurenceDateFromDuetEvent:occurrenceCopy];

  candidateType = [(ATXNaivePositiveAnchorModelCandidateClassifier *)self candidateType];
  LODWORD(anchor) = [candidateType isEqualToString:@"action"];

  if (anchor)
  {
    phase1TrainingResult = [resultCopy phase1TrainingResult];
    launchHistory = [phase1TrainingResult launchHistory];
    v13 = [(ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier *)self candidateFeaturesForActionCandidateOnAnchorOccurrenceDate:v9 cachedLaunchHistory:launchHistory];
LABEL_9:
    v20 = v13;

    goto LABEL_10;
  }

  candidateType2 = [(ATXNaivePositiveAnchorModelCandidateClassifier *)self candidateType];
  v15 = [candidateType2 isEqualToString:@"app"];

  if (v15)
  {
    phase1TrainingResult = [resultCopy phase1TrainingResult];
    launchHistory = [phase1TrainingResult launchHistory];
    v13 = [(ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier *)self candidateFeaturesForAppCandidateOnAnchorOccurrenceDate:v9 cachedLaunchHistory:launchHistory];
    goto LABEL_9;
  }

  candidateType3 = [(ATXNaivePositiveAnchorModelCandidateClassifier *)self candidateType];
  v17 = [candidateType3 isEqualToString:@"mode"];

  if (v17)
  {
    phase1TrainingResult = [resultCopy phase1TrainingResult];
    launchHistory = [phase1TrainingResult launchHistory];
    v13 = [(ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier *)self candidateFeaturesForModeCandidateOnAnchorOccurrenceDate:v9 cachedLaunchHistory:launchHistory];
    goto LABEL_9;
  }

  candidateType4 = [(ATXNaivePositiveAnchorModelCandidateClassifier *)self candidateType];
  v19 = [candidateType4 isEqualToString:@"linkaction"];

  if (v19)
  {
    phase1TrainingResult = [resultCopy phase1TrainingResult];
    launchHistory = [phase1TrainingResult launchHistory];
    v13 = [(ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier *)self candidateFeaturesForLinkActionCandidateOnAnchorOccurrenceDate:v9 cachedLaunchHistory:launchHistory];
    goto LABEL_9;
  }

  v20 = objc_opt_new();
LABEL_10:

  return v20;
}

- (id)candidateFeaturesForActionCandidateOnAnchorOccurrenceDate:(id)date cachedLaunchHistory:(id)history
{
  v28 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  historyCopy = history;
  storeWrapper = self->_storeWrapper;
  candidateId = [(ATXNaivePositiveAnchorModelCandidateClassifier *)self candidateId];
  v10 = [(ATXAnchorModelDataStoreWrapperProtocol *)storeWrapper appIntentDuetEventFromCandidateId:candidateId date:dateCopy];

  if (v10)
  {
    v11 = objc_opt_new();
    [v11 setShouldComputeLaunchHistoryForAppLaunches:0];
    [v11 setShouldComputeLaunchHistoryForActionKeyLaunches:0];
    shouldComputeLaunchHistoryCounts = 0;
    if (!historyCopy)
    {
      shouldComputeLaunchHistoryCounts = [(ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier *)self shouldComputeLaunchHistoryCounts];
    }

    [v11 setShouldComputeLaunchHistoryForActionUUIDLaunches:shouldComputeLaunchHistoryCounts];
    v13 = [v11 featurizeActionEvent:v10 anchorOccurrenceDate:dateCopy];
    if (historyCopy)
    {
      v14 = __atxlog_handle_anchor();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        candidateId2 = [(ATXNaivePositiveAnchorModelCandidateClassifier *)self candidateId];
        *buf = 138412290;
        v27 = candidateId2;
        _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "Featurizing %@, already have cachedLaunchHistory. Filling in the recent history.", buf, 0xCu);
      }

      actionUUIDMetadatas = [v13 actionUUIDMetadatas];
      v17 = [actionUUIDMetadatas objectAtIndexedSubscript:0];
      [v17 setActionUUIDLaunchHistory:historyCopy];

      v18 = [v11 recentHistoryForActionUUIDWithAppIntentDuetEvent:v10 anchorOccurrenceDate:dateCopy];
      actionUUIDMetadatas2 = [v13 actionUUIDMetadatas];
      v20 = [actionUUIDMetadatas2 objectAtIndexedSubscript:0];
      actionUUIDLaunchHistory = [v20 actionUUIDLaunchHistory];
      [actionUUIDLaunchHistory mergeFrom:v18];
    }

    v22 = self->_storeWrapper;
    v23 = [objc_opt_class() actionCandidateFeaturesFromActionEvent:v10 actionMetadata:v13 actionOccurred:0 actionEngaged:0];
  }

  else
  {
    v23 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)candidateFeaturesForAppCandidateOnAnchorOccurrenceDate:(id)date cachedLaunchHistory:(id)history
{
  v22[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  historyCopy = history;
  storeWrapper = self->_storeWrapper;
  candidateId = [(ATXNaivePositiveAnchorModelCandidateClassifier *)self candidateId];
  v10 = [(ATXAnchorModelDataStoreWrapperProtocol *)storeWrapper appLaunchDuetEventFromCandidateId:candidateId date:dateCopy];

  v11 = objc_opt_new();
  if (historyCopy)
  {
    shouldComputeLaunchHistoryCounts = 0;
  }

  else
  {
    shouldComputeLaunchHistoryCounts = [(ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier *)self shouldComputeLaunchHistoryCounts];
  }

  [v11 setShouldComputeLaunchHistoryForAppLaunches:shouldComputeLaunchHistoryCounts];
  v22[0] = v10;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v14 = [v11 featurizeAppLaunchEvents:v13 anchorOccurrenceDate:dateCopy];
  v15 = [v14 objectAtIndexedSubscript:0];

  if (historyCopy)
  {
    [v15 setAppLaunchHistory:historyCopy];
    if ([(ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier *)self shouldComputeLaunchHistoryCounts])
    {
      v16 = [v11 recentHistoryForAppLaunchDuetEvent:v10 anchorOccurrenceDate:dateCopy];
      appLaunchHistory = [v15 appLaunchHistory];
      [appLaunchHistory mergeFrom:v16];
    }

    else
    {
      [(ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier *)self setRecentAppLaunchCountsFromAppInfoManager:v15 anchorOccurrenceDate:dateCopy];
    }
  }

  v18 = self->_storeWrapper;
  v19 = [objc_opt_class() appCandidateFeaturesFromAppLaunchEvent:v10 appMetadata:v15 appWasLaunched:0 appEngaged:0];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)candidateFeaturesForModeCandidateOnAnchorOccurrenceDate:(id)date cachedLaunchHistory:(id)history
{
  dateCopy = date;
  historyCopy = history;
  storeWrapper = self->_storeWrapper;
  candidateId = [(ATXNaivePositiveAnchorModelCandidateClassifier *)self candidateId];
  v10 = [(ATXAnchorModelDataStoreWrapperProtocol *)storeWrapper modeBiomeEventFromCandidateId:candidateId date:dateCopy];

  if (v10)
  {
    v11 = objc_opt_new();
    v12 = [v11 featurizeModeEvent:v10 anchorOccurrenceDate:dateCopy];
    v13 = v12;
    if (historyCopy)
    {
      [v12 setModeHistory:historyCopy];
      if ([(ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier *)self shouldComputeLaunchHistoryCounts])
      {
        v14 = [v11 recentHistoryForModeWithModeEvent:v10 anchorOccurrenceDate:dateCopy];
        modeHistory = [v13 modeHistory];
        [modeHistory mergeFrom:v14];
      }
    }

    v16 = self->_storeWrapper;
    v17 = [objc_opt_class() modeCandidateFeaturesFromModeEvent:v10 modeMetadata:v13 modeOccurred:0 modeEngaged:0];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)candidateFeaturesForLinkActionCandidateOnAnchorOccurrenceDate:(id)date cachedLaunchHistory:(id)history
{
  v23 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  historyCopy = history;
  storeWrapper = self->_storeWrapper;
  candidateId = [(ATXNaivePositiveAnchorModelCandidateClassifier *)self candidateId];
  v10 = [(ATXAnchorModelDataStoreWrapperProtocol *)storeWrapper linkActionBiomeEventFromCandidateId:candidateId date:dateCopy];

  if (v10)
  {
    v11 = objc_opt_new();
    v12 = [v11 featurizeLinkActionEvent:v10 anchorOccurrenceDate:dateCopy];
    if (historyCopy)
    {
      v13 = __atxlog_handle_anchor();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        candidateId2 = [(ATXNaivePositiveAnchorModelCandidateClassifier *)self candidateId];
        v21 = 138412290;
        v22 = candidateId2;
        _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "Featurizing %@, already have cachedLaunchHistory. Filling in the recent history.", &v21, 0xCu);
      }

      [v12 setActionHistory:historyCopy];
      v15 = [v11 historyForLinkActionChangeEvent:v10 anchorOccurrenceDate:dateCopy];
      actionHistory = [v12 actionHistory];
      [actionHistory mergeFrom:v15];
    }

    v17 = self->_storeWrapper;
    v18 = [objc_opt_class() linkActionCandidateFeaturesFromLinkActionEvent:v10 actionMetadata:v12 actionOccurred:0 actionEngaged:0];
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)setRecentAppLaunchCountsFromAppInfoManager:(id)manager anchorOccurrenceDate:(id)date
{
  v22 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  dateCopy = date;
  v8 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    candidateId = [(ATXNaivePositiveAnchorModelCandidateClassifier *)self candidateId];
    v20 = 138412290;
    v21 = candidateId;
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "Featurizing %@, already have cachedLaunchHistory and we don't need to compute the launch history counts. Accessing the last app launch date from ATXAppInfoManager.", &v20, 0xCu);
  }

  v10 = +[_ATXAppInfoManager sharedInstance];
  candidateId2 = [(ATXNaivePositiveAnchorModelCandidateClassifier *)self candidateId];
  v12 = [v10 lastLaunchDateForBundleId:candidateId2];

  v13 = [dateCopy dateByAddingTimeInterval:-86400.0];
  v14 = [dateCopy dateByAddingTimeInterval:-43200.0];

  v15 = [v12 earlierDate:v13];

  if (v15 == v13)
  {
    appLaunchHistory = [managerCopy appLaunchHistory];
    [appLaunchHistory setLaunchesInLast24Hours:1];
  }

  v17 = [v12 earlierDate:v14];

  if (v17 == v14)
  {
    appLaunchHistory2 = [managerCopy appLaunchHistory];
    [appLaunchHistory2 setLaunchesInLast12Hours:1];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)anchorFeaturesWithAnchorOccurrence:(id)occurrence
{
  occurrenceCopy = occurrence;
  v5 = objc_opt_new();
  anchor = [(ATXNaivePositiveAnchorModelCandidateClassifier *)self anchor];
  v7 = [v5 featurizeAnchorEvent:occurrenceCopy anchor:anchor];

  storeWrapper = self->_storeWrapper;
  v9 = objc_opt_class();
  anchor2 = [(ATXNaivePositiveAnchorModelCandidateClassifier *)self anchor];
  v11 = [v9 anchorFeaturesForAnchorOccurrence:occurrenceCopy anchor:anchor2 anchorMetadata:v7];

  return v11;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v23[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (!forid)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x277CCA9B8]);
      v22 = *MEMORY[0x277CCA450];
      v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode key %@", keyCopy, v22];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 initWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForBOOL:(BOOL)l key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v23[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (!l)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x277CCA9B8]);
      v22 = *MEMORY[0x277CCA450];
      v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode key %@", keyCopy, v22];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 initWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  candidateId = [(ATXNaivePositiveAnchorModelCandidateClassifier *)self candidateId];
  [coderCopy encodeObject:candidateId forKey:@"codingKeyForCandidateId"];

  candidateType = [(ATXNaivePositiveAnchorModelCandidateClassifier *)self candidateType];
  [coderCopy encodeObject:candidateType forKey:@"codingKeyForCandidateType"];

  anchor = [(ATXNaivePositiveAnchorModelCandidateClassifier *)self anchor];
  [coderCopy encodeObject:anchor forKey:@"codingKeyForAnchorInstance"];

  treeDescription = [(ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier *)self treeDescription];
  v8 = [treeDescription isEqualToString:@"EmptyTree"];

  if ((v8 & 1) == 0)
  {
    [coderCopy encodeObject:self->_tree forKey:@"codingKeyForGKDecisionTree"];
  }

  [coderCopy encodeBool:-[ATXNaivePositiveAnchorModelCandidateClassifier isTrained](self forKey:{"isTrained"), @"codingKeyForDecisionTreeIsTrained"}];
  treeDescription2 = [(ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier *)self treeDescription];
  [coderCopy encodeObject:treeDescription2 forKey:@"codingKeyForDecisionTreeDescription"];
}

- (ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"codingKeyForCandidateId"];
  if (![(ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier *)self checkAndReportDecodingFailureIfNeededForid:v5 key:@"codingKeyForCandidateId" coder:coderCopy errorDomain:@"com.apple.proactive.GamePlayKitDecisionTreeAnchorModelCandidateClassifier" errorCode:-1])
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"codingKeyForCandidateType"];
    if ([(ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier *)self checkAndReportDecodingFailureIfNeededForid:v7 key:@"codingKeyForCandidateType" coder:coderCopy errorDomain:@"com.apple.proactive.GamePlayKitDecisionTreeAnchorModelCandidateClassifier" errorCode:-1])
    {
      selfCopy = 0;
LABEL_40:

      goto LABEL_41;
    }

    v8 = +[ATXAnchor allAnchorClasses];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"codingKeyForAnchorInstance"];

    if (v9)
    {
      goto LABEL_6;
    }

    v11 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier initWithCoder:v11];
    }

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"codingKeyForAnchor"];
    if ([(ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier *)self checkAndReportDecodingFailureIfNeededForid:v12 key:@"codingKeyForAnchor" coder:coderCopy errorDomain:@"com.apple.proactive.GamePlayKitDecisionTreeAnchorModelCandidateClassifier" errorCode:-1])
    {
      v9 = 0;
LABEL_13:
      selfCopy = 0;
LABEL_38:

      goto LABEL_39;
    }

    v13 = +[ATXAnchorModelHyperParameters sharedInstance];
    enabledAnchors = [v13 enabledAnchors];
    v15 = [enabledAnchors containsObject:v12];

    if (v15)
    {
      if (NSClassFromString(v12))
      {
        v16 = objc_opt_new();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {

          v9 = v16;
LABEL_6:
          v10 = [coderCopy decodeBoolForKey:@"codingKeyForDecisionTreeIsTrained"];
          if ([(ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier *)self checkAndReportDecodingFailureIfNeededForBOOL:v10 key:@"codingKeyForDecisionTreeIsTrained" coder:coderCopy errorDomain:@"com.apple.proactive.GamePlayKitDecisionTreeAnchorModelCandidateClassifier" errorCode:-1])
          {
            selfCopy = 0;
LABEL_39:

            goto LABEL_40;
          }

          v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"codingKeyForDecisionTreeDescription"];
          if ([(ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier *)self checkAndReportDecodingFailureIfNeededForid:v12 key:@"codingKeyForDecisionTreeDescription" coder:coderCopy errorDomain:@"com.apple.proactive.GamePlayKitDecisionTreeAnchorModelCandidateClassifier" errorCode:-1])
          {
            goto LABEL_13;
          }

          if ([v12 isEqualToString:@"EmptyTree"])
          {
            v28 = 0;
LABEL_24:
            v17 = objc_opt_class();
            v18 = NSStringFromClass(v17);
            v19 = +[ATXAnchorModelHyperParameters sharedInstance];
            enabledAnchors2 = [v19 enabledAnchors];
            v27 = v18;
            LOBYTE(v18) = [enabledAnchors2 containsObject:v18];

            if (v18)
            {
              v21 = +[ATXAnchorModelHyperParameters sharedInstance];
              v22 = objc_opt_new();
              v16 = v28;
              self = [(ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier *)self initWithCandidateId:v5 candidateType:v7 anchor:v9 tree:v28 hyperParameters:v21 dataStoreWrapper:v22];

              [(ATXNaivePositiveAnchorModelCandidateClassifier *)self setIsTrained:v10];
              [(ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier *)self setTreeDescription:v12];
              selfCopy = self;
              v23 = v27;
            }

            else
            {
              v24 = __atxlog_handle_anchor();
              v23 = v27;
              v16 = v28;
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                [ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier initWithCoder:];
              }

              selfCopy = 0;
            }

            goto LABEL_37;
          }

          v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"codingKeyForGKDecisionTree"];
          if (![(ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier *)self checkAndReportDecodingFailureIfNeededForid:v16 key:@"codingKeyForGKDecisionTree" coder:coderCopy errorDomain:@"com.apple.proactive.GamePlayKitDecisionTreeAnchorModelCandidateClassifier" errorCode:-1])
          {
            v28 = v16;
            goto LABEL_24;
          }

LABEL_36:
          selfCopy = 0;
LABEL_37:

          goto LABEL_38;
        }

        v25 = __atxlog_handle_anchor();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
        {
          [ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier initWithCoder:];
        }
      }

      else
      {
        v16 = __atxlog_handle_anchor();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          [ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier initWithCoder:];
        }
      }
    }

    else
    {
      v16 = __atxlog_handle_anchor();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier initWithCoder:];
      }
    }

    v9 = 0;
    goto LABEL_36;
  }

  selfCopy = 0;
LABEL_41:

  return selfCopy;
}

- (void)trainDecisionTree
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)trainingLabelsFromTrainingData:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)featureVectorFromFeatureDictionary:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)predictWhenNoTreeInitialized
{
  v7 = *MEMORY[0x277D85DE8];
  candidateId = [self candidateId];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)inferenceFeatureDictForAnchorOccurrence:(void *)a1 trainingResult:.cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = [a1 candidateId];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)inferenceFeatureDictForAnchorOccurrence:trainingResult:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)inferenceFeatureDictForAnchorOccurrence:trainingResult:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)inferenceFeatureDictForAnchorOccurrence:trainingResult:.cold.4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithCoder:(os_log_t)log .cold.1(os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 138412546;
  v3 = @"codingKeyForAnchorInstance";
  v4 = 2112;
  v5 = @"codingKeyForAnchor";
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "When decoding object at %@, the output was nil. Falling back to reading anchor type string from %@", &v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)initWithCoder:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithCoder:.cold.3()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithCoder:.cold.5()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

@end