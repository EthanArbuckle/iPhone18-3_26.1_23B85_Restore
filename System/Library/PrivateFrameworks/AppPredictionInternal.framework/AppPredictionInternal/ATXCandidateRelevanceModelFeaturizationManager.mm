@interface ATXCandidateRelevanceModelFeaturizationManager
+ (id)denseLabelVectorFromDataPoints:(id)points;
+ (id)labelsFromDataPoints:(id)points;
- (ATXCandidateRelevanceModelFeaturizationManager)initWithCoder:(id)coder;
- (ATXCandidateRelevanceModelFeaturizationManager)initWithFeaturizers:(id)featurizers;
- (ATXCandidateRelevanceModelFeaturizationManager)initWithImmutableFeaturizers:(id)featurizers;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXCandidateRelevanceModelFeaturizationManager:(id)manager;
- (id)featureNames;
- (id)featuresForContext:(id)context candidate:(id)candidate;
- (id)sparseFeatureMatrixFromDataPoints:(id)points;
- (id)sparseFeatureVectorForContext:(id)context candidate:(id)candidate;
- (unint64_t)numberOfInputDimensions;
@end

@implementation ATXCandidateRelevanceModelFeaturizationManager

- (ATXCandidateRelevanceModelFeaturizationManager)initWithFeaturizers:(id)featurizers
{
  v20 = *MEMORY[0x277D85DE8];
  featurizersCopy = featurizers;
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = featurizersCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        immutableCopy = [*(*(&v15 + 1) + 8 * v10) immutableCopy];
        [v5 addObject:immutableCopy];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [(ATXCandidateRelevanceModelFeaturizationManager *)self initWithImmutableFeaturizers:v5];
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (ATXCandidateRelevanceModelFeaturizationManager)initWithImmutableFeaturizers:(id)featurizers
{
  featurizersCopy = featurizers;
  v9.receiver = self;
  v9.super_class = ATXCandidateRelevanceModelFeaturizationManager;
  v6 = [(ATXCandidateRelevanceModelFeaturizationManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_featurizers, featurizers);
  }

  return v7;
}

- (id)featureNames
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(ATXCandidateRelevanceModelFeaturizationManager *)self featurizers];
  v20 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v20)
  {
    v19 = *v27;
    do
    {
      v4 = 0;
      do
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = v4;
        v5 = *(*(&v26 + 1) + 8 * v4);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        featureValueNames = [v5 featureValueNames];
        v7 = [featureValueNames countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v23;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v23 != v9)
              {
                objc_enumerationMutation(featureValueNames);
              }

              v11 = *(*(&v22 + 1) + 8 * i);
              v12 = MEMORY[0x277CCACA8];
              v13 = objc_opt_class();
              v14 = NSStringFromClass(v13);
              v15 = [v12 stringWithFormat:@"%@ (%@)", v14, v11];

              [v3 addObject:v15];
            }

            v8 = [featureValueNames countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v8);
        }

        v4 = v21 + 1;
      }

      while (v21 + 1 != v20);
      v20 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v20);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v3;
}

- (unint64_t)numberOfInputDimensions
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  featurizers = [(ATXCandidateRelevanceModelFeaturizationManager *)self featurizers];
  v3 = [featurizers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(featurizers);
        }

        v5 += [*(*(&v10 + 1) + 8 * i) dimensions];
      }

      v4 = [featurizers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)featuresForContext:(id)context candidate:(id)candidate
{
  v22 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  candidateCopy = candidate;
  v8 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  featurizers = [(ATXCandidateRelevanceModelFeaturizationManager *)self featurizers];
  v10 = [featurizers countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(featurizers);
        }

        v14 = [*(*(&v17 + 1) + 8 * i) featureVectorForContext:contextCopy candidate:candidateCopy];
        [v8 addObjectsFromArray:v14];
      }

      v11 = [featurizers countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)labelsFromDataPoints:(id)points
{
  v18 = *MEMORY[0x277D85DE8];
  pointsCopy = points;
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = pointsCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(*(&v13 + 1) + 8 * i), "engaged", v13)}];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXCandidateRelevanceModelFeaturizationManager *)self isEqualToATXCandidateRelevanceModelFeaturizationManager:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXCandidateRelevanceModelFeaturizationManager:(id)manager
{
  managerCopy = manager;
  numberOfInputDimensions = [(ATXCandidateRelevanceModelFeaturizationManager *)self numberOfInputDimensions];
  if (numberOfInputDimensions == [managerCopy numberOfInputDimensions] && (v6 = -[NSArray count](self->_featurizers, "count"), v6 == objc_msgSend(managerCopy[1], "count")))
  {
    if ([(NSArray *)self->_featurizers count])
    {
      v7 = 0;
      do
      {
        v8 = [(NSArray *)self->_featurizers objectAtIndexedSubscript:v7];
        v9 = [managerCopy[1] objectAtIndexedSubscript:v7];
        v10 = [v8 isEqual:v9];

        if ((v10 & 1) == 0)
        {
          break;
        }

        ++v7;
      }

      while ([(NSArray *)self->_featurizers count]> v7);
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (ATXCandidateRelevanceModelFeaturizationManager)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = MEMORY[0x277D42620];
  v9 = __atxlog_handle_relevance_model();
  v10 = [v8 robustDecodeObjectOfClasses:v7 forKey:@"featurizationManagerFeaturizers" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXCandidateRelevanceModelFeaturizationManager" errorCode:-1 logHandle:v9];

  if (v10)
  {
    self = [(ATXCandidateRelevanceModelFeaturizationManager *)self initWithImmutableFeaturizers:v10];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)denseLabelVectorFromDataPoints:(id)points
{
  v3 = [self labelsFromDataPoints:points];
  v4 = [objc_alloc(MEMORY[0x277D41F20]) initWithNumbers:v3];

  return v4;
}

- (id)sparseFeatureVectorForContext:(id)context candidate:(id)candidate
{
  v4 = [(ATXCandidateRelevanceModelFeaturizationManager *)self featuresForContext:context candidate:candidate];
  v5 = [objc_alloc(MEMORY[0x277D41F20]) initWithNumbers:v4];
  v6 = [MEMORY[0x277D41F78] sparseVectorFromDense:v5];

  return v6;
}

- (id)sparseFeatureMatrixFromDataPoints:(id)points
{
  pointsCopy = points;
  v4 = [pointsCopy count];
  selfCopy = self;
  numberOfInputDimensions = [(ATXCandidateRelevanceModelFeaturizationManager *)self numberOfInputDimensions];
  v6 = sparse_matrix_create_float(v4, numberOfInputDimensions);
  v21 = v4;
  if (v4)
  {
    for (i = 0; i != v21; ++i)
    {
      context = objc_autoreleasePoolPush();
      v8 = [pointsCopy objectAtIndexedSubscript:i];
      context = [v8 context];
      candidate = [v8 candidate];
      v11 = [(ATXCandidateRelevanceModelFeaturizationManager *)selfCopy featuresForContext:context candidate:candidate];

      if ([v11 count] == numberOfInputDimensions)
      {
        if (numberOfInputDimensions)
        {
          goto LABEL_5;
        }
      }

      else
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"ATXCandidateRelevanceModelFeaturizationManager.m" lineNumber:144 description:{@"Invalid shape, all rows must be the same length (row %lu length: %lu, first row length: %lu)", i, objc_msgSend(v11, "count"), numberOfInputDimensions}];

        if (numberOfInputDimensions)
        {
LABEL_5:
          v12 = 0;
          for (j = 0; j != numberOfInputDimensions; ++j)
          {
            v14 = [v11 objectAtIndexedSubscript:j];
            [v14 floatValue];
            v16 = v15;

            if (v16 != 0.0)
            {
              sparse_insert_entry_float(v6, v16, i, v12 >> 32);
            }

            v12 += 0x100000000;
          }
        }
      }

      objc_autoreleasePoolPop(context);
    }
  }

  sparse_commit(v6);
  v18 = [objc_alloc(MEMORY[0x277D41F70]) initWithSparseMatrix:v6];

  return v18;
}

@end