@interface ATXModeMetadataConstants
+ (id)sharedInstance;
- (ATXModeMetadataConstants)init;
- (id)_invertDictionary:(id)dictionary;
- (id)defaultAppGenreModeAffinities;
- (id)defaultAppGenreModeAffinities_v2;
- (id)getCategoryScoresV1;
- (id)getCategoryScoresV2;
- (void)_populateDefaultAppGenreModeAffinities;
- (void)_populateDefaultAppGenreModeAffinities_v2;
@end

@implementation ATXModeMetadataConstants

- (ATXModeMetadataConstants)init
{
  v26[2] = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = ATXModeMetadataConstants;
  v2 = [(ATXModeMetadataConstants *)&v24 init];
  if (v2)
  {
    mEMORY[0x277CEB6A8] = [MEMORY[0x277CEB6A8] sharedInstance];
    modeEntityTrialClientWrapper = v2->_modeEntityTrialClientWrapper;
    v2->_modeEntityTrialClientWrapper = mEMORY[0x277CEB6A8];

    modeAffinityAppCategoryScores = [(ATXModeEntityTrialClientWrapper *)v2->_modeEntityTrialClientWrapper modeAffinityAppCategoryScores];
    v6 = [modeAffinityAppCategoryScores count];

    if (v6)
    {
      v7 = __atxlog_handle_modes();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "ATXModeMetadataConstants: Loaded mode affinity app category scores from Trial", v23, 2u);
      }

      modeAffinityAppCategoryScores2 = [(ATXModeEntityTrialClientWrapper *)v2->_modeEntityTrialClientWrapper modeAffinityAppCategoryScores];
      appCategoryScores_V2 = v2->_appCategoryScores_V2;
      v2->_appCategoryScores_V2 = modeAffinityAppCategoryScores2;
    }

    else
    {
      appCategoryScores_V2 = [MEMORY[0x277CEB3C0] rawDictionaryForResource:@"ATXAppCategoryScoresV2" ofType:@"plist"];
      v10 = [appCategoryScores_V2 objectForKeyedSubscript:@"Modes"];
      v11 = v2->_appCategoryScores_V2;
      v2->_appCategoryScores_V2 = v10;
    }

    v12 = [MEMORY[0x277CEB3C0] rawDictionaryForResource:@"ATXAppCategoryScoresV1" ofType:@"plist"];
    v13 = [v12 objectForKeyedSubscript:@"Modes"];
    appCategoryScores_V1 = v2->_appCategoryScores_V1;
    v2->_appCategoryScores_V1 = v13;

    v25[0] = @"DefaultAppGenreModeAffinities";
    getCategoryScoresV1 = [(ATXModeMetadataConstants *)v2 getCategoryScoresV1];
    v25[1] = @"DefaultAppGenreModeAffinities_v2";
    v26[0] = getCategoryScoresV1;
    getCategoryScoresV2 = [(ATXModeMetadataConstants *)v2 getCategoryScoresV2];
    v26[1] = getCategoryScoresV2;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
    parameters = v2->_parameters;
    v2->_parameters = v17;

    defaultAppGenreModeAffinities = v2->_defaultAppGenreModeAffinities;
    v2->_defaultAppGenreModeAffinities = 0;

    defaultAppGenreModeAffinities_v2 = v2->_defaultAppGenreModeAffinities_v2;
    v2->_defaultAppGenreModeAffinities_v2 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v2;
}

- (id)getCategoryScoresV2
{
  v34 = *MEMORY[0x277D85DE8];
  v20 = objc_opt_new();
  v3 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  selfCopy = self;
  obj = self->_appCategoryScores_V2;
  v21 = [(NSDictionary *)obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v21)
  {
    v19 = *v29;
    do
    {
      v4 = 0;
      v5 = v3;
      do
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v22 = v4;
        v6 = *(*(&v28 + 1) + 8 * v4);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v7 = [(NSDictionary *)selfCopy->_appCategoryScores_V2 objectForKeyedSubscript:v6];
        v8 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v25;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v25 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v24 + 1) + 8 * i);
              v13 = [(NSDictionary *)selfCopy->_appCategoryScores_V2 objectForKeyedSubscript:v6];
              v14 = [v13 objectForKeyedSubscript:v12];
              v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(MEMORY[0x277CEB350], "appDirectoryCategoryStringToAppDirectoryCategoryID:", v12)}];
              [v5 setObject:v14 forKey:v15];
            }

            v9 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v9);
        }

        [v20 setObject:v5 forKey:v6];
        v3 = objc_opt_new();

        v4 = v22 + 1;
        v5 = v3;
      }

      while (v22 + 1 != v21);
      v21 = [(NSDictionary *)obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v21);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)getCategoryScoresV1
{
  v34 = *MEMORY[0x277D85DE8];
  v20 = objc_opt_new();
  v3 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  selfCopy = self;
  obj = self->_appCategoryScores_V1;
  v21 = [(NSDictionary *)obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v21)
  {
    v19 = *v29;
    do
    {
      v4 = 0;
      v5 = v3;
      do
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v22 = v4;
        v6 = *(*(&v28 + 1) + 8 * v4);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v7 = [(NSDictionary *)selfCopy->_appCategoryScores_V1 objectForKeyedSubscript:v6];
        v8 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v25;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v25 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v24 + 1) + 8 * i);
              v13 = [(NSDictionary *)selfCopy->_appCategoryScores_V1 objectForKeyedSubscript:v6];
              v14 = [v13 objectForKeyedSubscript:v12];
              v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(MEMORY[0x277CEB350], "appDirectoryCategoryStringToAppDirectoryCategoryID:", v12)}];
              [v5 setObject:v14 forKey:v15];
            }

            v9 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v9);
        }

        [v20 setObject:v5 forKey:v6];
        v3 = objc_opt_new();

        v4 = v22 + 1;
        v5 = v3;
      }

      while (v22 + 1 != v21);
      v21 = [(NSDictionary *)obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v21);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken8 != -1)
  {
    +[ATXModeMetadataConstants sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_19;

  return v3;
}

void __42__ATXModeMetadataConstants_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_19;
  sharedInstance__pasExprOnceResult_19 = v1;

  objc_autoreleasePoolPop(v0);
}

- (id)defaultAppGenreModeAffinities
{
  defaultAppGenreModeAffinities = self->_defaultAppGenreModeAffinities;
  if (!defaultAppGenreModeAffinities)
  {
    [(ATXModeMetadataConstants *)self _populateDefaultAppGenreModeAffinities];
    defaultAppGenreModeAffinities = self->_defaultAppGenreModeAffinities;
  }

  return defaultAppGenreModeAffinities;
}

- (void)_populateDefaultAppGenreModeAffinities
{
  v3 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"DefaultAppGenreModeAffinities"];

  if (v3)
  {
    v7 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"DefaultAppGenreModeAffinities"];
    v4 = [(ATXModeMetadataConstants *)self _invertDictionary:v7];
    defaultAppGenreModeAffinities = self->_defaultAppGenreModeAffinities;
    self->_defaultAppGenreModeAffinities = v4;

    v6 = v7;
  }

  else
  {
    v6 = self->_defaultAppGenreModeAffinities;
    self->_defaultAppGenreModeAffinities = MEMORY[0x277CBEC10];
  }
}

- (id)defaultAppGenreModeAffinities_v2
{
  defaultAppGenreModeAffinities_v2 = self->_defaultAppGenreModeAffinities_v2;
  if (!defaultAppGenreModeAffinities_v2)
  {
    [(ATXModeMetadataConstants *)self _populateDefaultAppGenreModeAffinities_v2];
    defaultAppGenreModeAffinities_v2 = self->_defaultAppGenreModeAffinities_v2;
  }

  return defaultAppGenreModeAffinities_v2;
}

- (void)_populateDefaultAppGenreModeAffinities_v2
{
  v3 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"DefaultAppGenreModeAffinities_v2"];

  if (v3)
  {
    v7 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"DefaultAppGenreModeAffinities_v2"];
    v4 = [(ATXModeMetadataConstants *)self _invertDictionary:v7];
    defaultAppGenreModeAffinities_v2 = self->_defaultAppGenreModeAffinities_v2;
    self->_defaultAppGenreModeAffinities_v2 = v4;

    v6 = v7;
  }

  else
  {
    v6 = self->_defaultAppGenreModeAffinities_v2;
    self->_defaultAppGenreModeAffinities_v2 = MEMORY[0x277CBEC10];
  }
}

- (id)_invertDictionary:(id)dictionary
{
  v34 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v4 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = dictionaryCopy;
  v22 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v22)
  {
    v21 = *v29;
    do
    {
      v6 = 0;
      do
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(v5);
        }

        v23 = v6;
        v7 = *(*(&v28 + 1) + 8 * v6);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v8 = [v5 objectForKeyedSubscript:v7];
        v9 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v25;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v25 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v24 + 1) + 8 * i);
              v14 = [v4 objectForKeyedSubscript:v13];

              if (!v14)
              {
                v15 = objc_opt_new();
                [v4 setObject:v15 forKeyedSubscript:v13];
              }

              v16 = [v5 objectForKeyedSubscript:v7];
              v17 = [v16 objectForKeyedSubscript:v13];
              v18 = [v4 objectForKeyedSubscript:v13];
              [v18 setObject:v17 forKeyedSubscript:v7];
            }

            v10 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v10);
        }

        v6 = v23 + 1;
      }

      while (v23 + 1 != v22);
      v22 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v22);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v4;
}

@end