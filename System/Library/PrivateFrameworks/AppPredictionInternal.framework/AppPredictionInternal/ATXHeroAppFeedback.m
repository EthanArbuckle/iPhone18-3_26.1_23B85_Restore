@interface ATXHeroAppFeedback
- (ATXHeroAppFeedback)init;
- (ATXHeroAppFeedback)initWithHistogram:(id)a3;
- (BOOL)shouldShowHeroAppPrediction:(id)a3;
- (double)_confirmsForHeroAppPrediction:(id)a3;
- (double)_engagementForHeroAppPrediction:(id)a3;
- (double)_rejectsForHeroAppPrediction:(id)a3;
- (void)addConfirmForHeroAppPredictionWithBundleId:(id)a3 weight:(float)a4;
- (void)addRejectForHeroAppPredictionWithBundleId:(id)a3 weight:(float)a4;
@end

@implementation ATXHeroAppFeedback

- (ATXHeroAppFeedback)init
{
  v3 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v4 = [v3 categoricalHistogramForLaunchType:49];
  v5 = [(ATXHeroAppFeedback *)self initWithHistogram:v4];

  return v5;
}

- (ATXHeroAppFeedback)initWithHistogram:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXHeroAppFeedback;
  v6 = [(ATXHeroAppFeedback *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_heroAppHistogram, a3);
  }

  return v7;
}

- (void)addConfirmForHeroAppPredictionWithBundleId:(id)a3 weight:(float)a4
{
  heroAppHistogram = self->_heroAppHistogram;
  v6 = MEMORY[0x277CBEAA8];
  v7 = a3;
  v9 = [v6 now];
  *&v8 = a4;
  [(_ATXAppLaunchCategoricalHistogram *)heroAppHistogram addLaunchWithBundleId:v7 date:v9 category:@"confirms_hero" weight:v8];
}

- (void)addRejectForHeroAppPredictionWithBundleId:(id)a3 weight:(float)a4
{
  heroAppHistogram = self->_heroAppHistogram;
  v6 = MEMORY[0x277CBEAA8];
  v7 = a3;
  v9 = [v6 now];
  *&v8 = a4;
  [(_ATXAppLaunchCategoricalHistogram *)heroAppHistogram addLaunchWithBundleId:v7 date:v9 category:@"rejects_hero" weight:v8];
}

- (BOOL)shouldShowHeroAppPrediction:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![MEMORY[0x277D42590] isInternalBuild] || (v5 = *MEMORY[0x277CEBDC8], LOBYTE(v25) = 0, !CFPreferencesGetAppBooleanValue(v5, *MEMORY[0x277CEBD00], &v25)))
  {
    v6 = +[ATXHeroAndClipConstants sharedInstance];
    [(ATXHeroAppFeedback *)self _rejectsForHeroAppPrediction:v4];
    v9 = v8;
    [(ATXHeroAppFeedback *)self _confirmsForHeroAppPrediction:v4];
    v11 = v10;
    [v6 heroAppMinimumRejects];
    if (v9 >= v12)
    {
      [(ATXHeroAppFeedback *)self _engagementForHeroAppPrediction:v4];
      v18 = v17;
      [v6 heroAppEngagementThreshold];
      v20 = v19;
      v13 = __atxlog_handle_hero();
      v21 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (v18 < v20)
      {
        if (v21)
        {
          [v6 heroAppEngagementThreshold];
          v25 = 138413058;
          v26 = v4;
          v27 = 2048;
          v28 = v9;
          v29 = 2048;
          v30 = v18;
          v31 = 2048;
          v32 = v22;
          _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "%@ has enough rejects: %f, and engagement is: %f which is less than the threshold: %f. Hence, not showing this suggestion.", &v25, 0x2Au);
        }

        v7 = 0;
        goto LABEL_17;
      }

      if (v21)
      {
        v25 = 134218496;
        v26 = v11;
        v27 = 2048;
        v28 = v9;
        v29 = 2048;
        v30 = v18;
        v14 = "All app clip specific thresholds passed. Confirms: %f, Rejects: %f,  engagement: %f";
        v15 = v13;
        v16 = 32;
        goto LABEL_15;
      }
    }

    else
    {
      v13 = __atxlog_handle_hero();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 134218240;
        v26 = v11;
        v27 = 2048;
        v28 = v9;
        v14 = "Not enough rejects to consider engagement. Allowing hero app. Confirms: %f Rejects: %f";
        v15 = v13;
        v16 = 22;
LABEL_15:
        _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, v14, &v25, v16);
      }
    }

    v7 = 1;
LABEL_17:

    goto LABEL_18;
  }

  v6 = __atxlog_handle_hero();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v25) = 0;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "Defaults for OverrideHeroAppPredictionEligibility set to True: Overriding hero app user engagement feedback", &v25, 2u);
  }

  v7 = 1;
LABEL_18:

  v23 = *MEMORY[0x277D85DE8];
  return v7;
}

- (double)_engagementForHeroAppPrediction:(id)a3
{
  v4 = a3;
  [(ATXHeroAppFeedback *)self _confirmsForHeroAppPrediction:v4];
  v6 = v5;
  [(ATXHeroAppFeedback *)self _rejectsForHeroAppPrediction:v4];
  v8 = v7;

  if (v8 == 0.0)
  {
    return 1.0;
  }

  else
  {
    return v6 / (v6 + v8);
  }
}

- (double)_confirmsForHeroAppPrediction:(id)a3
{
  heroAppHistogram = self->_heroAppHistogram;
  v4 = [a3 bundleId];
  [(_ATXAppLaunchCategoricalHistogram *)heroAppHistogram totalLaunchesForBundleId:v4 category:@"confirms_hero"];
  v6 = v5;

  return v6;
}

- (double)_rejectsForHeroAppPrediction:(id)a3
{
  heroAppHistogram = self->_heroAppHistogram;
  v4 = [a3 bundleId];
  [(_ATXAppLaunchCategoricalHistogram *)heroAppHistogram totalLaunchesForBundleId:v4 category:@"rejects_hero"];
  v6 = v5;

  return v6;
}

@end