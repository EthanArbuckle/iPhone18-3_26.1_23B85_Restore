@interface ATXCandidateRelevanceModelFeaturizationManager
+ (id)denseLabelVectorFromDataPoints:(id)a3;
+ (id)labelsFromDataPoints:(id)a3;
- (ATXCandidateRelevanceModelFeaturizationManager)initWithCoder:(id)a3;
- (ATXCandidateRelevanceModelFeaturizationManager)initWithFeaturizers:(id)a3;
- (ATXCandidateRelevanceModelFeaturizationManager)initWithImmutableFeaturizers:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXCandidateRelevanceModelFeaturizationManager:(id)a3;
- (id)featureNames;
- (id)featuresForContext:(id)a3 candidate:(id)a4;
- (id)sparseFeatureMatrixFromDataPoints:(id)a3;
- (id)sparseFeatureVectorForContext:(id)a3 candidate:(id)a4;
- (unint64_t)numberOfInputDimensions;
@end

@implementation ATXCandidateRelevanceModelFeaturizationManager

- (ATXCandidateRelevanceModelFeaturizationManager)initWithFeaturizers:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
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

        v11 = [*(*(&v15 + 1) + 8 * v10) immutableCopy];
        [v5 addObject:v11];

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

- (ATXCandidateRelevanceModelFeaturizationManager)initWithImmutableFeaturizers:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXCandidateRelevanceModelFeaturizationManager;
  v6 = [(ATXCandidateRelevanceModelFeaturizationManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_featurizers, a3);
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
        v6 = [v5 featureValueNames];
        v7 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
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
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v22 + 1) + 8 * i);
              v12 = MEMORY[0x277CCACA8];
              v13 = objc_opt_class();
              v14 = NSStringFromClass(v13);
              v15 = [v12 stringWithFormat:@"%@ (%@)", v14, v11];

              [v3 addObject:v15];
            }

            v8 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
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
  v2 = [(ATXCandidateRelevanceModelFeaturizationManager *)self featurizers];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v2);
        }

        v5 += [*(*(&v10 + 1) + 8 * i) dimensions];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (id)featuresForContext:(id)a3 candidate:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [(ATXCandidateRelevanceModelFeaturizationManager *)self featurizers];
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v17 + 1) + 8 * i) featureVectorForContext:v6 candidate:v7];
        [v8 addObjectsFromArray:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)labelsFromDataPoints:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXCandidateRelevanceModelFeaturizationManager *)self isEqualToATXCandidateRelevanceModelFeaturizationManager:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXCandidateRelevanceModelFeaturizationManager:(id)a3
{
  v4 = a3;
  v5 = [(ATXCandidateRelevanceModelFeaturizationManager *)self numberOfInputDimensions];
  if (v5 == [v4 numberOfInputDimensions] && (v6 = -[NSArray count](self->_featurizers, "count"), v6 == objc_msgSend(v4[1], "count")))
  {
    if ([(NSArray *)self->_featurizers count])
    {
      v7 = 0;
      do
      {
        v8 = [(NSArray *)self->_featurizers objectAtIndexedSubscript:v7];
        v9 = [v4[1] objectAtIndexedSubscript:v7];
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

- (ATXCandidateRelevanceModelFeaturizationManager)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = MEMORY[0x277D42620];
  v9 = __atxlog_handle_relevance_model();
  v10 = [v8 robustDecodeObjectOfClasses:v7 forKey:@"featurizationManagerFeaturizers" withCoder:v5 expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXCandidateRelevanceModelFeaturizationManager" errorCode:-1 logHandle:v9];

  if (v10)
  {
    self = [(ATXCandidateRelevanceModelFeaturizationManager *)self initWithImmutableFeaturizers:v10];
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)denseLabelVectorFromDataPoints:(id)a3
{
  v3 = [a1 labelsFromDataPoints:a3];
  v4 = [objc_alloc(MEMORY[0x277D41F20]) initWithNumbers:v3];

  return v4;
}

- (id)sparseFeatureVectorForContext:(id)a3 candidate:(id)a4
{
  v4 = [(ATXCandidateRelevanceModelFeaturizationManager *)self featuresForContext:a3 candidate:a4];
  v5 = [objc_alloc(MEMORY[0x277D41F20]) initWithNumbers:v4];
  v6 = [MEMORY[0x277D41F78] sparseVectorFromDense:v5];

  return v6;
}

- (id)sparseFeatureMatrixFromDataPoints:(id)a3
{
  v23 = a3;
  v4 = [v23 count];
  v22 = self;
  v5 = [(ATXCandidateRelevanceModelFeaturizationManager *)self numberOfInputDimensions];
  v6 = sparse_matrix_create_float(v4, v5);
  v21 = v4;
  if (v4)
  {
    for (i = 0; i != v21; ++i)
    {
      context = objc_autoreleasePoolPush();
      v8 = [v23 objectAtIndexedSubscript:i];
      v9 = [v8 context];
      v10 = [v8 candidate];
      v11 = [(ATXCandidateRelevanceModelFeaturizationManager *)v22 featuresForContext:v9 candidate:v10];

      if ([v11 count] == v5)
      {
        if (v5)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v17 = [MEMORY[0x277CCA890] currentHandler];
        [v17 handleFailureInMethod:a2 object:v22 file:@"ATXCandidateRelevanceModelFeaturizationManager.m" lineNumber:144 description:{@"Invalid shape, all rows must be the same length (row %lu length: %lu, first row length: %lu)", i, objc_msgSend(v11, "count"), v5}];

        if (v5)
        {
LABEL_5:
          v12 = 0;
          for (j = 0; j != v5; ++j)
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