@interface ATXModeFaceComplicationsAggregator
- (id)provideComplicationsForSuggestedFaceType:(int64_t)type environment:(id)environment;
- (id)provideLandscapeComplicationsForSuggestedFaceType:(int64_t)type environment:(id)environment;
@end

@implementation ATXModeFaceComplicationsAggregator

- (id)provideComplicationsForSuggestedFaceType:(int64_t)type environment:(id)environment
{
  v35[3] = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  if ([MEMORY[0x277D42590] isBetaBuild])
  {
    isInternalBuild = 1;
  }

  else
  {
    isInternalBuild = [MEMORY[0x277D42590] isInternalBuild];
  }

  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v10 = objc_opt_new();
  v11 = MEMORY[0x277CBEBF8];
  v12 = v8;
  if (isInternalBuild)
  {
    v13 = [v7 provideComplicationsForSuggestedFaceType:type environment:environmentCopy];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v11;
    }

    [v10 addObjectsFromArray:v15];

    v16 = [v8 provideComplicationsForSuggestedFaceType:type environment:environmentCopy];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = v11;
    }

    [v10 addObjectsFromArray:v18];

    v12 = v9;
  }

  v19 = [v12 provideComplicationsForSuggestedFaceType:type environment:environmentCopy];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = v11;
  }

  [v10 addObjectsFromArray:v21];

  allObjects = [v10 allObjects];
  v23 = [allObjects sortedArrayUsingComparator:&__block_literal_global_61];

  v34[0] = &unk_283A55868;
  v24 = objc_opt_new();
  v35[0] = v24;
  v34[1] = &unk_283A55880;
  v25 = objc_opt_new();
  v35[1] = v25;
  v34[2] = &unk_283A55898;
  v26 = objc_opt_new();
  v35[2] = v26;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:3];

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __91__ATXModeFaceComplicationsAggregator_provideComplicationsForSuggestedFaceType_environment___block_invoke_28;
  v32[3] = &unk_278599B90;
  v33 = v27;
  v28 = v27;
  v29 = [v23 _pas_filteredArrayWithTest:v32];

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

uint64_t __91__ATXModeFaceComplicationsAggregator_provideComplicationsForSuggestedFaceType_environment___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a2;
  [a3 score];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 score];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

uint64_t __91__ATXModeFaceComplicationsAggregator_provideComplicationsForSuggestedFaceType_environment___block_invoke_28(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 containerBundleIdentifier];
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "widgetFamily")}];
    v7 = [v5 objectForKeyedSubscript:v6];

    if (v7)
    {
      if ([v7 containsObject:v4])
      {
        v8 = 0;
LABEL_11:

        goto LABEL_12;
      }

      [v7 addObject:v4];
    }

    else
    {
      v9 = __atxlog_handle_lock_screen();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        __91__ATXModeFaceComplicationsAggregator_provideComplicationsForSuggestedFaceType_environment___block_invoke_28_cold_1(v3, v9);
      }
    }

    v8 = 1;
    goto LABEL_11;
  }

  v8 = 1;
LABEL_12:

  return v8;
}

- (id)provideLandscapeComplicationsForSuggestedFaceType:(int64_t)type environment:(id)environment
{
  environmentCopy = environment;
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = [v6 provideLandscapeComplicationsForSuggestedFaceType:type environment:environmentCopy];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  [v7 addObjectsFromArray:v9];

  allObjects = [v7 allObjects];
  v11 = [allObjects sortedArrayUsingComparator:&__block_literal_global_31];

  return v11;
}

uint64_t __100__ATXModeFaceComplicationsAggregator_provideLandscapeComplicationsForSuggestedFaceType_environment___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a2;
  [a3 score];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 score];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

void __91__ATXModeFaceComplicationsAggregator_provideComplicationsForSuggestedFaceType_environment___block_invoke_28_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 134217984;
  v5 = [a1 widgetFamily];
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "Unrecognized widget family: %ld", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end