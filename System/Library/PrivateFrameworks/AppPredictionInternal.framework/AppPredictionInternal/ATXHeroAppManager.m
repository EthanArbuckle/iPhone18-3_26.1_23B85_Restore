@interface ATXHeroAppManager
- (ATXHeroAppManager)init;
- (ATXHeroAppManager)initWithFeedback:(id)a3;
- (void)donateHeroAppPredictions:(id)a3;
@end

@implementation ATXHeroAppManager

- (ATXHeroAppManager)init
{
  v3 = objc_opt_new();
  v4 = [(ATXHeroAppManager *)self initWithFeedback:v3];

  return v4;
}

- (ATXHeroAppManager)initWithFeedback:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXHeroAppManager;
  v6 = [(ATXHeroAppManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_heroFeedback, a3);
  }

  return v7;
}

- (void)donateHeroAppPredictions:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __46__ATXHeroAppManager_donateHeroAppPredictions___block_invoke;
  v17[3] = &unk_278598D10;
  v17[4] = self;
  v3 = [a3 _pas_filteredArrayWithTest:v17];
  v4 = __atxlog_handle_hero();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 count];
    *buf = 134217984;
    v19 = *&v5;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "Left with %lu predictions after removing predictions based on feedback.", buf, 0xCu);
  }

  if ([v3 count])
  {
    v6 = [MEMORY[0x277CBEAA8] now];
    v7 = [MEMORY[0x277D41BF8] sharedInstance];
    v8 = [v7 getCurrentPreciseLocation];

    v9 = __atxlog_handle_hero();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      [v6 timeIntervalSinceNow];
      *buf = 134217984;
      v19 = -v10;
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "Took %f seconds to fetch precise location", buf, 0xCu);
    }

    if (v8)
    {
      v11 = [ATXHeroDataServerHelper inRadiusPredictionsFrom:v3 currentLocation:v8];

      v3 = __atxlog_handle_hero();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v11 count];
        *buf = 134217984;
        v19 = *&v12;
        _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Left with %lu predictions after removing predictions based on gps location.", buf, 0xCu);
      }
    }

    else
    {
      v13 = __atxlog_handle_hero();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [ATXHeroAppManager donateHeroAppPredictions:v13];
      }

      v11 = objc_opt_new();
    }

    v3 = v11;
  }

  else
  {
    v8 = 0;
  }

  v14 = __atxlog_handle_hero();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v3 description];
    *buf = 138412290;
    v19 = *&v15;
    _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "Sending hero app predictions to blending layer. Predictions: %@", buf, 0xCu);
  }

  [ATXHeroAppBlendingUpdater updateBlendingLayerWithHeroAppPredictions:v3 currentLocation:v8];
  v16 = *MEMORY[0x277D85DE8];
}

@end