@interface ATXCandidateRelevanceLogisticRegressionModel
- (ATXCandidateRelevanceLogisticRegressionModel)initWithCoder:(id)coder;
- (ATXCandidateRelevanceLogisticRegressionModel)initWithModel:(id)model;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXCandidateRelevanceLogisticRegressionModel:(id)model;
- (float)predictForContext:(id)context candidate:(id)candidate featurizationManager:(id)manager;
- (id)description;
- (id)featureContributionsDuringInferenceDescriptionForContext:(id)context candidate:(id)candidate featurizationManager:(id)manager;
- (id)featureContributionsDuringInferenceForContext:(id)context candidate:(id)candidate featurizationManager:(id)manager;
- (id)featureImportanceDescriptionForFeaturizationManager:(id)manager;
- (id)featureImportancesForFeaturizationManager:(id)manager;
- (unint64_t)numberOfModelWeights;
- (unint64_t)numberOfNonZeroModelWeights;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXCandidateRelevanceLogisticRegressionModel

- (ATXCandidateRelevanceLogisticRegressionModel)initWithModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = ATXCandidateRelevanceLogisticRegressionModel;
  v6 = [(ATXCandidateRelevanceLogisticRegressionModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, model);
  }

  return v7;
}

- (float)predictForContext:(id)context candidate:(id)candidate featurizationManager:(id)manager
{
  v6 = [manager sparseFeatureVectorForContext:context candidate:candidate];
  v7 = [(PMLLogisticRegressionModel *)self->_model predict:v6];
  v8 = [v7 objectAtIndexedSubscript:0];
  [v8 floatValue];
  v10 = v9;

  return v10;
}

- (id)featureContributionsDuringInferenceDescriptionForContext:(id)context candidate:(id)candidate featurizationManager:(id)manager
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = [(ATXCandidateRelevanceLogisticRegressionModel *)self featureContributionsDuringInferenceForContext:context candidate:candidate featurizationManager:manager];
  v6 = [v5 keysSortedByValueUsingComparator:&__block_literal_global_176];
  v7 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v5 objectForKeyedSubscript:v13];
        [v14 floatValue];
        if (v15 >= 0.0)
        {
          [v7 appendString:@" "];
        }

        [v14 floatValue];
        [v7 appendFormat:@"%f for %@\n", v16, v13, v19];
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)featureContributionsDuringInferenceForContext:(id)context candidate:(id)candidate featurizationManager:(id)manager
{
  v53 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  candidateCopy = candidate;
  managerCopy = manager;
  v41 = objc_opt_new();
  v11 = objc_alloc(MEMORY[0x277D41F20]);
  v35 = candidateCopy;
  v36 = contextCopy;
  v12 = [managerCopy featuresForContext:contextCopy candidate:candidateCopy];
  v42 = [v11 initWithNumbers:v12];

  weights = [(PMLLogisticRegressionModel *)self->_model weights];
  asMutableDenseVector = [weights asMutableDenseVector];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v34 = managerCopy;
  obj = [managerCopy featurizers];
  v39 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
  v15 = 0;
  if (v39)
  {
    v38 = *v48;
    do
    {
      v16 = 0;
      do
      {
        if (*v48 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v40 = v16;
        featureValueNames = [*(*(&v47 + 1) + 8 * v16) featureValueNames];
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v18 = [featureValueNames countByEnumeratingWithState:&v43 objects:v51 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v44;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v44 != v20)
              {
                objc_enumerationMutation(featureValueNames);
              }

              v22 = *(*(&v43 + 1) + 8 * i);
              v23 = MEMORY[0x277CCACA8];
              v24 = objc_opt_class();
              v25 = NSStringFromClass(v24);
              v26 = [v23 stringWithFormat:@"%@ (%@)", v25, v22];

              [asMutableDenseVector valueAt:v15];
              v28 = v27;
              [v42 valueAt:v15];
              if ((v28 * v29) != 0.0)
              {
                v30 = [MEMORY[0x277CCABB0] numberWithFloat:?];
                [v41 setObject:v30 forKeyedSubscript:v26];
              }

              ++v15;
            }

            v19 = [featureValueNames countByEnumeratingWithState:&v43 objects:v51 count:16];
          }

          while (v19);
        }

        v16 = v40 + 1;
      }

      while (v40 + 1 != v39);
      v39 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v39);
  }

  if (v15 < [asMutableDenseVector count])
  {
    [asMutableDenseVector valueAt:v15];
    v31 = [MEMORY[0x277CCABB0] numberWithFloat:?];
    [v41 setObject:v31 forKeyedSubscript:@"Bias"];
  }

  v32 = *MEMORY[0x277D85DE8];

  return v41;
}

- (id)description
{
  v3 = objc_opt_new();
  [v3 appendFormat:@"Model Type: PMLLogisticRegressionModel \n"];
  weights = [(PMLLogisticRegressionModel *)self->_model weights];
  [v3 appendFormat:@"# Model Weights: %d\n", objc_msgSend(weights, "length")];

  [v3 appendFormat:@"# Non-Zero Model Weights: %lu", -[ATXCandidateRelevanceLogisticRegressionModel numberOfNonZeroModelWeights](self, "numberOfNonZeroModelWeights")];
  v5 = [v3 copy];

  return v5;
}

- (unint64_t)numberOfModelWeights
{
  weights = [(PMLLogisticRegressionModel *)self->_model weights];
  v3 = [weights length];

  return v3;
}

- (unint64_t)numberOfNonZeroModelWeights
{
  weights = [(PMLLogisticRegressionModel *)self->_model weights];
  values = [weights values];

  weights2 = [(PMLLogisticRegressionModel *)self->_model weights];
  v6 = [weights2 length];

  if (v6 < 1)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  do
  {
    v9 = *(values + 4 * v7);
    v10 = v9 > 0.0 || v9 < 0.0;
    v8 += v10;
    ++v7;
    weights3 = [(PMLLogisticRegressionModel *)self->_model weights];
    v12 = [weights3 length];
  }

  while (v7 < v12);
  return v8;
}

- (id)featureImportancesForFeaturizationManager:(id)manager
{
  v39 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v28 = objc_opt_new();
  weights = [(PMLLogisticRegressionModel *)self->_model weights];
  asMutableDenseVector = [weights asMutableDenseVector];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v23 = managerCopy;
  obj = [managerCopy featurizers];
  v26 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  v7 = 0;
  if (v26)
  {
    v25 = *v34;
    do
    {
      v8 = 0;
      do
      {
        if (*v34 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = v8;
        featureValueNames = [*(*(&v33 + 1) + 8 * v8) featureValueNames];
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v10 = [featureValueNames countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v30;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v30 != v12)
              {
                objc_enumerationMutation(featureValueNames);
              }

              v14 = *(*(&v29 + 1) + 8 * i);
              v15 = MEMORY[0x277CCACA8];
              v16 = objc_opt_class();
              v17 = NSStringFromClass(v16);
              v18 = [v15 stringWithFormat:@"%@ (%@)", v17, v14];

              [asMutableDenseVector valueAt:v7];
              v19 = [MEMORY[0x277CCABB0] numberWithFloat:?];
              [v28 setObject:v19 forKeyedSubscript:v18];

              ++v7;
            }

            v11 = [featureValueNames countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v11);
        }

        v8 = v27 + 1;
      }

      while (v27 + 1 != v26);
      v26 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v26);
  }

  if (v7 < [asMutableDenseVector count])
  {
    [asMutableDenseVector valueAt:v7];
    v20 = [MEMORY[0x277CCABB0] numberWithFloat:?];
    [v28 setObject:v20 forKeyedSubscript:@"Bias"];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)featureImportanceDescriptionForFeaturizationManager:(id)manager
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(ATXCandidateRelevanceLogisticRegressionModel *)self featureImportancesForFeaturizationManager:manager];
  v4 = [v3 keysSortedByValueUsingComparator:&__block_literal_global_58];
  v5 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v3 objectForKeyedSubscript:v11];
        [v12 floatValue];
        if (v13 != 0.0)
        {
          [v12 floatValue];
          if (v14 >= 0.0)
          {
            [v5 appendString:@" "];
          }

          [v12 floatValue];
          [v5 appendFormat:@"%f * %@\n", v15, v11, v18];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXCandidateRelevanceLogisticRegressionModel *)self isEqualToATXCandidateRelevanceLogisticRegressionModel:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXCandidateRelevanceLogisticRegressionModel:(id)model
{
  v4 = self->_model;
  v5 = v4;
  if (v4 == *(model + 1))
  {
    v6 = 1;
  }

  else
  {
    v6 = [(PMLLogisticRegressionModel *)v4 isEqual:?];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  model = self->_model;
  coderCopy = coder;
  v5 = PMLBuildChunkFile();
  [coderCopy encodeObject:v5 forKey:@"logisticRegressionModelData"];
}

- (ATXCandidateRelevanceLogisticRegressionModel)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277D42620];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = __atxlog_handle_relevance_model();
  v8 = [v4 robustDecodeObjectOfClass:v6 forKey:@"logisticRegressionModelData" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXCandidateRelevanceLogisticRegressionModel" errorCode:-1 logHandle:v7];

  if (v8)
  {
    objc_opt_class();
    v9 = PMLReadChunkData();
    if (v9)
    {
      self = [(ATXCandidateRelevanceLogisticRegressionModel *)self initWithModel:v9];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end