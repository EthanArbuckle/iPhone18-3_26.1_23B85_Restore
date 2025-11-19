@interface ATXMagicalMomentsPredictionTable
- (ATXMagicalMomentsPredictionTable)initWithCoder:(id)a3;
- (ATXMagicalMomentsPredictionTable)initWithPredictionTableEntries:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)deduplicatePredictions:(id)a3;
- (id)describeTable;
- (id)predictionTableEntries;
- (id)predictionsForTriggerEvent:(id)a3;
- (id)removeRestrictedPredictions:(id)a3;
- (id)validPredictionsFromTableEntries:(id)a3 event:(id)a4;
- (void)addPrediction:(id)a3 withApplicablePredicates:(id)a4;
- (void)addPredictions:(id)a3 withApplicablePredicates:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXMagicalMomentsPredictionTable

- (ATXMagicalMomentsPredictionTable)initWithPredictionTableEntries:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ATXMagicalMomentsPredictionTable;
  v5 = [(ATXMagicalMomentsPredictionTable *)&v9 init];
  if (v5)
  {
    if (v4)
    {
      v6 = [v4 mutableCopy];
    }

    else
    {
      v6 = objc_opt_new();
    }

    predictionTableEntries = v5->_predictionTableEntries;
    v5->_predictionTableEntries = v6;
  }

  return v5;
}

- (id)describeTable
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableArray *)self->_predictionTableEntries count];
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_predictionTableEntries;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"[%lu of %lu] %@", v8, v3, *(*(&v15 + 1) + 8 * i)];
        [v4 addObject:v11];

        ++v8;
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = 0;
    goto LABEL_7;
  }

  predictionTableEntries = v4->_predictionTableEntries;
  if (predictionTableEntries == self->_predictionTableEntries)
  {
LABEL_5:
    v6 = 1;
  }

  else
  {
    v6 = [(NSMutableArray *)predictionTableEntries isEqualToArray:?];
  }

LABEL_7:

  return v6;
}

- (void)addPredictions:(id)a3 withApplicablePredicates:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v6);
        }

        [(ATXMagicalMomentsPredictionTable *)self addPrediction:*(*(&v13 + 1) + 8 * v11++) withApplicablePredicates:v7];
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)addPrediction:(id)a3 withApplicablePredicates:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7 && [v7 count])
    {
      v9 = [[ATXMagicalMomentsPredictionTableEntry alloc] initWithPrediction:v6 applicablePredicates:v8];
      if (v9)
      {
        [(NSMutableArray *)self->_predictionTableEntries addObject:v9];
      }

      else
      {
        v10 = __atxlog_handle_default();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [ATXMagicalMomentsPredictionTable addPrediction:withApplicablePredicates:];
        }
      }
    }

    else
    {
      v9 = __atxlog_handle_default();
      if (os_log_type_enabled(&v9->super, OS_LOG_TYPE_ERROR))
      {
        [ATXMagicalMomentsPredictionTable addPrediction:withApplicablePredicates:];
      }
    }
  }
}

- (id)predictionTableEntries
{
  predictionTableEntries = self->_predictionTableEntries;
  if (predictionTableEntries)
  {
    v3 = [(NSMutableArray *)predictionTableEntries copy];
  }

  else
  {
    v4 = __atxlog_handle_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [ATXMagicalMomentsPredictionTable predictionTableEntries];
    }

    v3 = 0;
  }

  return v3;
}

- (id)validPredictionsFromTableEntries:(id)a3 event:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        v15 = [v13 compoundPredicate];
        [v15 allowEvaluation];
        if ([v15 evaluateWithObject:v6])
        {
          v16 = [v13 prediction];

          if (v16)
          {
            v17 = [v13 prediction];
            [v7 addObject:v17];
          }
        }

        objc_autoreleasePoolPop(v14);
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)deduplicatePredictions:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = [v11 predictionIdentifier];
        v14 = [v5 containsObject:v13];

        if ((v14 & 1) == 0)
        {
          [v4 addObject:v11];
          v15 = [v11 predictionIdentifier];
          [v5 addObject:v15];

          v16 = __atxlog_handle_default();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v24 = v11;
            _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_INFO, "ATXMM: %@", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v8);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)removeRestrictedPredictions:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = [v10 predictionIdentifier];
        if ([MEMORY[0x277CEB3B8] isInstalledAndNotRestrictedForBundle:v12])
        {
          if ([MEMORY[0x277CEB3B8] isDeviceManagementPolicyOkForBundleId:v12])
          {
            [v4 addObject:v10];
            goto LABEL_15;
          }

          v13 = __atxlog_handle_default();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v23 = v12;
            v14 = v13;
            v15 = "ATXMM: Skipping screen time restricted app %@.";
            goto LABEL_13;
          }
        }

        else
        {
          v13 = __atxlog_handle_default();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v23 = v12;
            v14 = v13;
            v15 = "ATXMM: Skipping restricted app %@.";
LABEL_13:
            _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);
          }
        }

LABEL_15:
        objc_autoreleasePoolPop(v11);
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)predictionsForTriggerEvent:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(ATXMagicalMomentsPredictionTable *)self validPredictionsFromTableEntries:self->_predictionTableEntries event:v4];
  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:0];
  v15[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v9 = [v6 sortedArrayUsingDescriptors:v8];

  v10 = [(ATXMagicalMomentsPredictionTable *)self deduplicatePredictions:v9];
  v11 = [(ATXMagicalMomentsPredictionTable *)self removeRestrictedPredictions:v10];
  v12 = [v11 copy];

  objc_autoreleasePoolPop(v5);
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAC98];
  v5 = a3;
  v6 = [v4 sortDescriptorWithKey:@"prediction.confidence" ascending:0];
  predictionTableEntries = self->_predictionTableEntries;
  v10[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [(NSMutableArray *)predictionTableEntries sortUsingDescriptors:v8];

  [v5 encodeObject:self->_predictionTableEntries forKey:@"predictionTableEntries"];
  v9 = *MEMORY[0x277D85DE8];
}

- (ATXMagicalMomentsPredictionTable)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc(MEMORY[0x277CBEB98]);
  v7 = objc_opt_class();
  v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v5);
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"predictionTableEntries"];
  v10 = [(ATXMagicalMomentsPredictionTable *)self initWithPredictionTableEntries:v9];

  return v10;
}

@end