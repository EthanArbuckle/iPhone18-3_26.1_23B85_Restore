@interface ATXTimelineRelevanceAdoption
- (ATXTimelineRelevanceAdoption)init;
- (ATXTimelineRelevanceAdoption)initWithGlobalAdoptionPlist:(id)a3 informationStore:(id)a4 abuseControlConfig:(id)a5;
- (BOOL)_hasDiverseSchemaGlobally:(id)a3 kind:(id)a4;
- (id)globalDiverseSchemaRawNumber:(id)a3 kind:(id)a4;
- (unint64_t)adoptionTypeForWidgetBundleId:(id)a3 kind:(id)a4;
- (void)_updateQuotasDictionary:(id)a3 forWidgetBundleId:(id)a4 widgetKind:(id)a5 parameterName:(id)a6 withValue:(int64_t)a7;
- (void)_updateQuotasForWidgetBundleId:(id)a3 widgetKind:(id)a4 quotasDictionary:(id)a5;
- (void)persistQuotasWithActivity:(id)a3;
- (void)trainWidgetPredictionModelWithActivity:(id)a3;
@end

@implementation ATXTimelineRelevanceAdoption

- (ATXTimelineRelevanceAdoption)init
{
  v3 = [MEMORY[0x277CEB3C0] dictionaryFromLazyPlistForClass:objc_opt_class()];
  v4 = [MEMORY[0x277CEB5C8] sharedInstance];
  v5 = objc_opt_new();
  v6 = [(ATXTimelineRelevanceAdoption *)self initWithGlobalAdoptionPlist:v3 informationStore:v4 abuseControlConfig:v5];

  return v6;
}

- (ATXTimelineRelevanceAdoption)initWithGlobalAdoptionPlist:(id)a3 informationStore:(id)a4 abuseControlConfig:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = ATXTimelineRelevanceAdoption;
  v12 = [(ATXTimelineRelevanceAdoption *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_globalAdoptionPlist, a3);
    if (v11)
    {
      objc_storeStrong(&v13->_abuseControlConfig, a5);
      v14 = [[ATXAdoptionTypeToBudgetMapper alloc] initWithAbuseControlConfig:v11];
      budgetMapper = v13->_budgetMapper;
      v13->_budgetMapper = v14;
    }

    objc_storeStrong(&v13->_informationStore, a4);
    v16 = [(ATXInformationStore *)v13->_informationStore fetchDistinctScoreCountForWidgets];
    distinctScoreCounts = v13->_distinctScoreCounts;
    v13->_distinctScoreCounts = v16;
  }

  return v13;
}

- (unint64_t)adoptionTypeForWidgetBundleId:(id)a3 kind:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ATXTimelineRelevanceAdoption *)self _hasDiverseSchemaGlobally:v7 kind:v6];
  v9 = [MEMORY[0x277D42648] tupleWithFirst:v7 second:v6];

  v10 = [(NSDictionary *)self->_distinctScoreCounts objectForKeyedSubscript:v9];
  v11 = v10;
  if (v10 && [v10 integerValue])
  {
    v12 = [v11 integerValue];
    v13 = v12 > 1 || v8;
    if (v12 <= 1)
    {
      v14 = 2;
    }

    else
    {
      v14 = 3;
    }

    if (!v13)
    {
      v14 = [v11 integerValue] == 1;
    }
  }

  else if (v8)
  {
    v14 = 2;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)_hasDiverseSchemaGlobally:(id)a3 kind:(id)a4
{
  v4 = [(ATXTimelineRelevanceAdoption *)self globalDiverseSchemaRawNumber:a3 kind:a4];
  v5 = [v4 integerValue] == 1;

  return v5;
}

- (id)globalDiverseSchemaRawNumber:(id)a3 kind:(id)a4
{
  v4 = 0;
  if (a3 && a4)
  {
    globalAdoptionPlist = self->_globalAdoptionPlist;
    v7 = a4;
    v8 = [(NSDictionary *)globalAdoptionPlist objectForKeyedSubscript:a3];
    v9 = [v8 objectForKeyedSubscript:v7];

    if (v9)
    {
      v4 = [v9 objectForKeyedSubscript:@"diverseScores"];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)_updateQuotasForWidgetBundleId:(id)a3 widgetKind:(id)a4 quotasDictionary:(id)a5
{
  v22 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(ATXTimelineAbuseControlConfig *)self->_abuseControlConfig widgetsExcludedFromPersonalizedQuotaUpdate];
  v11 = [v10 containsObject:v22];

  if ((v11 & 1) == 0)
  {
    v12 = [(ATXTimelineAbuseControlConfig *)self->_abuseControlConfig softRotationQuotaForWidgetWithIdentifier:v22 kind:v8];
    v13 = [(ATXTimelineAbuseControlConfig *)self->_abuseControlConfig hardRotationQuotaForWidgetWithIdentifier:v22 kind:v8];
    [(ATXTimelineAbuseControlConfig *)self->_abuseControlConfig durationLimitForWidgetWithIdentifier:v22 kind:v8];
    v15 = v14;
    v16 = [(ATXTimelineRelevanceAdoption *)self adoptionTypeForWidgetBundleId:v22 kind:v8];
    v17 = [(ATXAdoptionTypeToBudgetMapper *)self->_budgetMapper softQuotaForAdoptionType:v16];
    v18 = [(ATXAdoptionTypeToBudgetMapper *)self->_budgetMapper hardQuotaForAdoptionType:v16];
    v19 = [(ATXAdoptionTypeToBudgetMapper *)self->_budgetMapper durationLimitForAdoptionType:v16];
    if (v12 != -1 && v12 < v17)
    {
      [(ATXTimelineRelevanceAdoption *)self _updateQuotasDictionary:v9 forWidgetBundleId:v22 widgetKind:v8 parameterName:@"SoftRotationQuota" withValue:v17];
    }

    v20 = v15;
    if (v13 != -1 && v13 < v18)
    {
      [(ATXTimelineRelevanceAdoption *)self _updateQuotasDictionary:v9 forWidgetBundleId:v22 widgetKind:v8 parameterName:@"HardRotationQuota" withValue:v18];
    }

    if (v20 != -1 && v19 > v20)
    {
      [(ATXTimelineRelevanceAdoption *)self _updateQuotasDictionary:v9 forWidgetBundleId:v22 widgetKind:v8 parameterName:@"Duration" withValue:v19];
    }
  }
}

- (void)_updateQuotasDictionary:(id)a3 forWidgetBundleId:(id)a4 widgetKind:(id)a5 parameterName:(id)a6 withValue:(int64_t)a7
{
  v24 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (v11 && v12)
  {
    v14 = a6;
    v15 = [v24 objectForKeyedSubscript:v11];

    if (!v15)
    {
      v16 = objc_opt_new();
      [v24 setObject:v16 forKeyedSubscript:v11];
    }

    v17 = [v24 objectForKeyedSubscript:v11];
    v18 = [v17 objectForKeyedSubscript:v13];

    if (!v18)
    {
      v19 = objc_opt_new();
      v20 = [v24 objectForKeyedSubscript:v11];
      [v20 setObject:v19 forKeyedSubscript:v13];
    }

    v21 = [MEMORY[0x277CCABB0] numberWithInteger:a7];
    v22 = [v24 objectForKeyedSubscript:v11];
    v23 = [v22 objectForKeyedSubscript:v13];
    [v23 setObject:v21 forKeyedSubscript:v14];
  }
}

- (void)persistQuotasWithActivity:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_distinctScoreCounts)
  {
    v6 = objc_opt_new();
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v7 = self->_distinctScoreCounts;
    v8 = [(NSDictionary *)v7 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v31;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v31 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v30 + 1) + 8 * i);
          v13 = [v12 first];
          v14 = [v12 second];
          [(ATXTimelineRelevanceAdoption *)self _updateQuotasForWidgetBundleId:v13 widgetKind:v14 quotasDictionary:v6];
        }

        v9 = [(NSDictionary *)v7 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v9);
    }

    if ([v5 didDefer])
    {
      v15 = __atxlog_handle_timeline();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "ATXTimelineRelevanceAdoption: Deferring persisting personalized quotas", buf, 2u);
      }
    }

    else
    {
      v16 = [MEMORY[0x277CEBCB0] appPredictionDirectoryFile:@"ATXTimelineRelevancePersonalizedConfig"];
      v17 = __atxlog_handle_timeline();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v35 = v16;
        _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_INFO, "ATXTimelineRelevanceAdoption: persisting updated quotas at path: %{public}@", buf, 0xCu);
      }

      v18 = objc_autoreleasePoolPush();
      v29 = 0;
      v19 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v29];
      v20 = v29;
      if (!v19)
      {
        [(ATXTimelineRelevanceAdoption *)a2 persistQuotasWithActivity:v16, v20];
      }

      v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v22 = dispatch_queue_attr_make_with_qos_class(v21, QOS_CLASS_BACKGROUND, 0);
      v23 = dispatch_queue_create("timeline-relevance-budget-update", v22);

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __58__ATXTimelineRelevanceAdoption_persistQuotasWithActivity___block_invoke;
      block[3] = &unk_278596C10;
      v27 = v19;
      v15 = v16;
      v28 = v15;
      v24 = v19;
      dispatch_async(v23, block);

      objc_autoreleasePoolPop(v18);
    }
  }

  else
  {
    v6 = __atxlog_handle_timeline();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ATXTimelineRelevanceAdoption persistQuotasWithActivity:v6];
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __58__ATXTimelineRelevanceAdoption_persistQuotasWithActivity___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 40);
  v1 = *(a1 + 40);
  v3 = *(a1 + 32);
  v9 = 0;
  v4 = [v3 writeToFile:v1 options:1073741825 error:&v9];
  v5 = v9;
  if (v4)
  {
    v6 = __atxlog_handle_timeline();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *v2;
      *buf = 138543362;
      v11 = v7;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_INFO, "Successfully updated budgets at path %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v6 = __atxlog_handle_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __58__ATXTimelineRelevanceAdoption_persistQuotasWithActivity___block_invoke_cold_1(v2, v5, v6);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)trainWidgetPredictionModelWithActivity:(id)a3
{
  v4 = a3;
  v5 = [[ATXWidgetPredictionTrainer alloc] initWithInformationStore:self->_informationStore distinctScoreCounts:self->_distinctScoreCounts];
  [(ATXWidgetPredictionTrainer *)v5 trainWidgetPredictionModelWithActivity:v4];
}

- (void)persistQuotasWithActivity:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"ATXTimelineRelevanceAdoption.m" lineNumber:163 description:{@"Archiver error while attempting to persist updated quotas at path %@: %@", a3, a4}];
}

void __58__ATXTimelineRelevanceAdoption_persistQuotasWithActivity___block_invoke_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "Could not write updated budgets to path: %{public}@. Error: %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end