@interface ATXFaceSuggestionScorer
- (ATXFaceSuggestionScorer)initWithParameters:(id)parameters descriptors:(id)descriptors;
- (NSSet)signals;
- (double)featuredScoreForDescriptor:(id)descriptor;
- (id)_mockScoreForDescriptor:(id)descriptor;
- (void)_loadAppLaunchData;
- (void)_loadSignals;
@end

@implementation ATXFaceSuggestionScorer

- (ATXFaceSuggestionScorer)initWithParameters:(id)parameters descriptors:(id)descriptors
{
  parametersCopy = parameters;
  descriptorsCopy = descriptors;
  v12.receiver = self;
  v12.super_class = ATXFaceSuggestionScorer;
  v9 = [(ATXFaceSuggestionScorer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_parameters, parameters);
    objc_storeStrong(&v10->_descriptors, descriptors);
    [(ATXFaceSuggestionScorer *)v10 _loadSignals];
  }

  return v10;
}

- (NSSet)signals
{
  v2 = [(NSSet *)self->_signals copy];

  return v2;
}

- (double)featuredScoreForDescriptor:(id)descriptor
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = COERCE_DOUBLE(descriptor);
  v5 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v33 = "[ATXFaceSuggestionScorer featuredScoreForDescriptor:]";
    v34 = 2112;
    v35 = v4;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%s: %@", buf, 0x16u);
  }

  v6 = [(ATXFaceSuggestionScorer *)self _mockScoreForDescriptor:*&v4];
  if (v6)
  {
    v7 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      [v6 doubleValue];
      *buf = 136315650;
      v33 = "[ATXFaceSuggestionScorer featuredScoreForDescriptor:]";
      v34 = 2048;
      v35 = v8;
      v36 = 2112;
      v37 = v4;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "%s: using mocked score of %f for descriptor %@", buf, 0x20u);
    }

    [v6 doubleValue];
    v10 = v9;
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = self->_signals;
    v12 = [(NSSet *)v11 countByEnumeratingWithState:&v28 objects:v42 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v29;
      v10 = 0.0;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v28 + 1) + 8 * i);
          [v16 weight];
          v18 = v17;
          [v16 valueForDescriptor:*&v4];
          v20 = v19;
          v21 = v18 * v19;
          v22 = __atxlog_handle_lock_screen();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = objc_opt_class();
            NSStringFromClass(v23);
            v24 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            *buf = 136316162;
            v33 = "[ATXFaceSuggestionScorer featuredScoreForDescriptor:]";
            v34 = 2112;
            v35 = v24;
            v36 = 2048;
            v37 = v18;
            v38 = 2048;
            v39 = v20;
            v40 = 2048;
            v41 = v21;
            _os_log_impl(&dword_2263AA000, v22, OS_LOG_TYPE_DEFAULT, "%s: [%@] weight: %f, value: %f = product: %f", buf, 0x34u);
          }

          v10 = v10 + v21;
        }

        v13 = [(NSSet *)v11 countByEnumeratingWithState:&v28 objects:v42 count:16];
      }

      while (v13);
    }

    else
    {
      v10 = 0.0;
    }

    v25 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v33 = "[ATXFaceSuggestionScorer featuredScoreForDescriptor:]";
      v34 = 2048;
      v35 = v10;
      _os_log_impl(&dword_2263AA000, v25, OS_LOG_TYPE_DEFAULT, "%s: score: %f", buf, 0x16u);
    }

    v6 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)_loadSignals
{
  v17[9] = *MEMORY[0x277D85DE8];
  [(ATXFaceSuggestionScorer *)self _loadAppLaunchData];
  v15 = objc_alloc(MEMORY[0x277CBEB98]);
  v16 = [[ATXFaceSuggestionAppLaunchSignal alloc] initWithAppLaunchDictionary:self->_appLaunchDictionary];
  v17[0] = v16;
  v3 = [[ATXFaceSuggestionAppLaunchUniqueDaysSignal alloc] initWithAppLaunchDictionary:self->_appLaunchDictionary];
  v17[1] = v3;
  v4 = objc_opt_new();
  v17[2] = v4;
  v5 = objc_opt_new();
  v17[3] = v5;
  v6 = [[ATXFaceSuggestionUprankedDateIntervalSignal alloc] initWithParameters:self->_parameters];
  v17[4] = v6;
  v7 = [[ATXFaceSuggestionGlobalPopularitySignal alloc] initWithParameters:self->_parameters];
  v17[5] = v7;
  v8 = objc_opt_new();
  v17[6] = v8;
  v9 = objc_opt_new();
  v17[7] = v9;
  v10 = objc_opt_new();
  v17[8] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:9];
  v12 = [v15 initWithArray:v11];
  signals = self->_signals;
  self->_signals = v12;

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_loadAppLaunchData
{
  v6 = [(NSSet *)self->_descriptors _pas_mappedSetWithTransform:&__block_literal_global_212];
  v3 = objc_opt_new();
  v4 = [v3 rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForApps:v6];
  appLaunchDictionary = self->_appLaunchDictionary;
  self->_appLaunchDictionary = v4;
}

- (id)_mockScoreForDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v4 = objc_alloc(MEMORY[0x277CBEBD0]);
  v5 = [v4 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v6 = [v5 dictionaryForKey:*MEMORY[0x277CEBDC0]];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    extensionBundleIdentifier = [descriptorCopy extensionBundleIdentifier];
    identifier = [descriptorCopy identifier];
    v10 = [v7 initWithFormat:@"%@-%@", extensionBundleIdentifier, identifier];

    v11 = [v6 objectForKeyedSubscript:v10];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end