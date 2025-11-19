@interface ATXAppClipsFeedback
- (ATXAppClipsFeedback)init;
- (ATXAppClipsFeedback)initWithAppClipsHistogram:(id)a3 appClipsHistogramNoDecay:(id)a4;
- (BOOL)_shouldHideAppClipForLowEngagementNoDecay:(id)a3;
- (BOOL)shouldShowAppClipWithHeroAppPrediction:(id)a3;
- (BOOL)shouldShowAppClips;
- (double)_confirmsForAppClipWithHeroAppPrediction:(id)a3;
- (double)_confirmsForAppClipWithHeroAppPredictionNoDecay:(id)a3;
- (double)_engagementForAppClipWithHeroAppPrediction:(id)a3;
- (double)_engagementForAppClipWithHeroAppPredictionNoDecay:(id)a3;
- (double)_overallAppClipsengagement;
- (double)_rejectsForAppClipWithHeroAppPrediction:(id)a3;
- (double)_rejectsForAppClipWithHeroAppPredictionNoDecay:(id)a3;
- (double)feedbackScoreForAppClipWithHeroAppPrediction:(id)a3;
- (void)addConfirmForAppClipWithHeroAppPrediction:(id)a3 weight:(float)a4;
- (void)addRejectForAppClipWithHeroAppPrediction:(id)a3 weight:(float)a4;
@end

@implementation ATXAppClipsFeedback

- (ATXAppClipsFeedback)init
{
  v3 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v4 = [v3 categoricalHistogramForLaunchType:49];
  v5 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v6 = [v5 categoricalHistogramForLaunchType:94];
  v7 = [(ATXAppClipsFeedback *)self initWithAppClipsHistogram:v4 appClipsHistogramNoDecay:v6];

  return v7;
}

- (ATXAppClipsFeedback)initWithAppClipsHistogram:(id)a3 appClipsHistogramNoDecay:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ATXAppClipsFeedback;
  v9 = [(ATXAppClipsFeedback *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_appClipsAndHeroAppHistogram, a3);
    objc_storeStrong(&v10->_appClipsAndHeroAppHistogramNoDecay, a4);
  }

  return v10;
}

- (void)addConfirmForAppClipWithHeroAppPrediction:(id)a3 weight:(float)a4
{
  appClipsAndHeroAppHistogram = self->_appClipsAndHeroAppHistogram;
  v7 = a3;
  v8 = [v7 urlHash];
  v9 = [MEMORY[0x277CBEAA8] now];
  *&v10 = a4;
  [(_ATXAppLaunchCategoricalHistogram *)appClipsAndHeroAppHistogram addLaunchWithBundleId:v8 date:v9 category:@"confirms_clips" weight:v10];

  appClipsAndHeroAppHistogramNoDecay = self->_appClipsAndHeroAppHistogramNoDecay;
  v14 = [v7 urlHash];

  v12 = [MEMORY[0x277CBEAA8] now];
  *&v13 = a4;
  [(_ATXAppLaunchCategoricalHistogram *)appClipsAndHeroAppHistogramNoDecay addLaunchWithBundleId:v14 date:v12 category:@"confirms_clips" weight:v13];
}

- (void)addRejectForAppClipWithHeroAppPrediction:(id)a3 weight:(float)a4
{
  appClipsAndHeroAppHistogram = self->_appClipsAndHeroAppHistogram;
  v7 = a3;
  v8 = [v7 urlHash];
  v9 = [MEMORY[0x277CBEAA8] now];
  *&v10 = a4;
  [(_ATXAppLaunchCategoricalHistogram *)appClipsAndHeroAppHistogram addLaunchWithBundleId:v8 date:v9 category:@"rejects_clips" weight:v10];

  appClipsAndHeroAppHistogramNoDecay = self->_appClipsAndHeroAppHistogramNoDecay;
  v14 = [v7 urlHash];

  v12 = [MEMORY[0x277CBEAA8] now];
  *&v13 = a4;
  [(_ATXAppLaunchCategoricalHistogram *)appClipsAndHeroAppHistogramNoDecay addLaunchWithBundleId:v14 date:v12 category:@"rejects_clips" weight:v13];
}

- (BOOL)shouldShowAppClipWithHeroAppPrediction:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![MEMORY[0x277D42590] isInternalBuild] || (v5 = *MEMORY[0x277CEBDC8], LOBYTE(v33) = 0, !CFPreferencesGetAppBooleanValue(v5, *MEMORY[0x277CEBD00], &v33)))
  {
    v6 = +[ATXHeroAndClipConstants sharedInstance];
    if ([(ATXAppClipsFeedback *)self _shouldHideAppClipForLowEngagementNoDecay:v4])
    {
      [(ATXAppClipsFeedback *)self _rejectsForAppClipWithHeroAppPredictionNoDecay:v4];
      v9 = v8;
      [(ATXAppClipsFeedback *)self _engagementForAppClipWithHeroAppPredictionNoDecay:v4];
      v11 = v10;
      [(ATXAppClipsFeedback *)self _confirmsForAppClipWithHeroAppPredictionNoDecay:v4];
      v13 = v12;
      v14 = __atxlog_handle_hero();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
LABEL_10:
        v7 = 0;
LABEL_21:

        goto LABEL_22;
      }

      [v6 appClipsPerAppClipEngagementThresholdNoDecay];
      v33 = 138413314;
      v34 = v4;
      v35 = 2048;
      v36 = v9;
      v37 = 2048;
      v38 = v11;
      v39 = 2048;
      v40 = v15;
      v41 = 2048;
      v42 = v13;
      v16 = "%@ has enough non-decaying rejects: %f, and engagement is: %f which is less than the threshold: %f. Hence, not showing this suggestion. Confirms: %f.";
LABEL_9:
      _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, v16, &v33, 0x34u);
      goto LABEL_10;
    }

    [(ATXAppClipsFeedback *)self _rejectsForAppClipWithHeroAppPrediction:v4];
    v18 = v17;
    [(ATXAppClipsFeedback *)self _confirmsForAppClipWithHeroAppPrediction:v4];
    v20 = v19;
    [v6 appClipsPerAppClipMinRejects];
    if (v18 >= v21)
    {
      [(ATXAppClipsFeedback *)self _engagementForAppClipWithHeroAppPrediction:v4];
      v26 = v25;
      [v6 appClipsPerAppClipEngagementThreshold];
      v28 = v27;
      v14 = __atxlog_handle_hero();
      v29 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (v26 < v28)
      {
        if (!v29)
        {
          goto LABEL_10;
        }

        [v6 appClipsPerAppClipEngagementThreshold];
        v33 = 138413314;
        v34 = v4;
        v35 = 2048;
        v36 = v18;
        v37 = 2048;
        v38 = v26;
        v39 = 2048;
        v40 = v30;
        v41 = 2048;
        v42 = v20;
        v16 = "%@ has enough rejects: %f, and engagement is: %f which is less than the threshold: %f. Hence, not showing this suggestion. Confirms: %f.";
        goto LABEL_9;
      }

      if (v29)
      {
        v33 = 134218496;
        v34 = v20;
        v35 = 2048;
        v36 = v18;
        v37 = 2048;
        v38 = v26;
        v22 = "All app clip specific thresholds passed. Confirms: %f, Rejects: %f, Engagement: %f";
        v23 = v14;
        v24 = 32;
        goto LABEL_19;
      }
    }

    else
    {
      v14 = __atxlog_handle_hero();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v33 = 134218240;
        v34 = v20;
        v35 = 2048;
        v36 = v18;
        v22 = "Not enough app clip specific rejects to consider engagement.  Confirms: %f, Rejects: %f ";
        v23 = v14;
        v24 = 22;
LABEL_19:
        _os_log_impl(&dword_2263AA000, v23, OS_LOG_TYPE_DEFAULT, v22, &v33, v24);
      }
    }

    v7 = 1;
    goto LABEL_21;
  }

  v6 = __atxlog_handle_hero();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v33) = 0;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "Defaults for OverrideHeroAppPredictionEligibility set to True: Overriding app clip user engagement feedback", &v33, 2u);
  }

  v7 = 1;
LABEL_22:

  v31 = *MEMORY[0x277D85DE8];
  return v7;
}

- (double)feedbackScoreForAppClipWithHeroAppPrediction:(id)a3
{
  v4 = a3;
  v5 = +[ATXHeroAndClipConstants sharedInstance];
  [(ATXAppClipsFeedback *)self _rejectsForAppClipWithHeroAppPrediction:v4];
  v7 = v6;
  [v5 appClipsPerAppClipMinRejects];
  v8 = 1.0;
  if (v7 >= v9)
  {
    [(ATXAppClipsFeedback *)self _engagementForAppClipWithHeroAppPrediction:v4];
    v8 = v10;
  }

  return v8;
}

- (BOOL)shouldShowAppClips
{
  v31 = *MEMORY[0x277D85DE8];
  if (![MEMORY[0x277D42590] isInternalBuild] || (v3 = *MEMORY[0x277CEBDC8], LOBYTE(v23) = 0, !CFPreferencesGetAppBooleanValue(v3, *MEMORY[0x277CEBD00], &v23)))
  {
    v4 = +[ATXHeroAndClipConstants sharedInstance];
    [(ATXAppClipsFeedback *)self _overallConfirms];
    v7 = v6;
    [(ATXAppClipsFeedback *)self _overallRejects];
    v9 = v8;
    [v4 appClipsOverallMinRejects];
    if (v9 >= v10)
    {
      [(ATXAppClipsFeedback *)self _overallAppClipsengagement];
      v16 = v15;
      [v4 appClipsOverallEngagementThreshold];
      v18 = v17;
      v11 = __atxlog_handle_hero();
      v19 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if (v16 < v18)
      {
        if (v19)
        {
          [v4 appClipsOverallEngagementThreshold];
          v23 = 134218752;
          v24 = v9;
          v25 = 2048;
          v26 = v16;
          v27 = 2048;
          v28 = v20;
          v29 = 2048;
          v30 = v7;
          _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "There are enough overall rejects: %f, and overall App Clips Engagement is: %f which is less than the threshold: %f. Hence, not showing app clip suggestions. Confirms: %f", &v23, 0x2Au);
        }

        v5 = 0;
        goto LABEL_17;
      }

      if (v19)
      {
        v23 = 134218496;
        v24 = v7;
        v25 = 2048;
        v26 = v9;
        v27 = 2048;
        v28 = v16;
        v12 = "All overall app clip thresholds passed. Confirms: %f, Rejects: %f, Engagement: %f";
        v13 = v11;
        v14 = 32;
        goto LABEL_15;
      }
    }

    else
    {
      v11 = __atxlog_handle_hero();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 134218240;
        v24 = v7;
        v25 = 2048;
        v26 = v9;
        v12 = "Not enough overall rejects to consider engagement. Confirms: %f, Rejects: %f";
        v13 = v11;
        v14 = 22;
LABEL_15:
        _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, v12, &v23, v14);
      }
    }

    v5 = 1;
LABEL_17:

    goto LABEL_18;
  }

  v4 = __atxlog_handle_hero();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v23) = 0;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "Defaults for OverrideHeroAppPredictionEligibility set to True: Overriding app clip user engagement feedback", &v23, 2u);
  }

  v5 = 1;
LABEL_18:

  v21 = *MEMORY[0x277D85DE8];
  return v5;
}

- (double)_overallAppClipsengagement
{
  [(ATXAppClipsFeedback *)self _overallConfirms];
  v4 = v3;
  [(ATXAppClipsFeedback *)self _overallRejects];
  if (v5 == 0.0)
  {
    return 1.0;
  }

  else
  {
    return v4 / (v4 + v5);
  }
}

- (double)_engagementForAppClipWithHeroAppPrediction:(id)a3
{
  v4 = a3;
  [(ATXAppClipsFeedback *)self _confirmsForAppClipWithHeroAppPrediction:v4];
  v6 = v5;
  [(ATXAppClipsFeedback *)self _rejectsForAppClipWithHeroAppPrediction:v4];
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

- (double)_confirmsForAppClipWithHeroAppPrediction:(id)a3
{
  appClipsAndHeroAppHistogram = self->_appClipsAndHeroAppHistogram;
  v4 = [a3 urlHash];
  [(_ATXAppLaunchCategoricalHistogram *)appClipsAndHeroAppHistogram totalLaunchesForBundleId:v4 category:@"confirms_clips"];
  v6 = v5;

  return v6;
}

- (double)_rejectsForAppClipWithHeroAppPrediction:(id)a3
{
  appClipsAndHeroAppHistogram = self->_appClipsAndHeroAppHistogram;
  v4 = [a3 urlHash];
  [(_ATXAppLaunchCategoricalHistogram *)appClipsAndHeroAppHistogram totalLaunchesForBundleId:v4 category:@"rejects_clips"];
  v6 = v5;

  return v6;
}

- (BOOL)_shouldHideAppClipForLowEngagementNoDecay:(id)a3
{
  v4 = a3;
  v5 = +[ATXHeroAndClipConstants sharedInstance];
  [(ATXAppClipsFeedback *)self _rejectsForAppClipWithHeroAppPredictionNoDecay:v4];
  v7 = v6;
  [v5 appClipsPerAppClipMinRejectsNoDecay];
  if (v7 >= v8)
  {
    [(ATXAppClipsFeedback *)self _engagementForAppClipWithHeroAppPredictionNoDecay:v4];
    v11 = v10;
    [v5 appClipsPerAppClipEngagementThresholdNoDecay];
    v9 = v11 < v12;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (double)_engagementForAppClipWithHeroAppPredictionNoDecay:(id)a3
{
  v4 = a3;
  [(ATXAppClipsFeedback *)self _confirmsForAppClipWithHeroAppPredictionNoDecay:v4];
  v6 = v5;
  [(ATXAppClipsFeedback *)self _rejectsForAppClipWithHeroAppPredictionNoDecay:v4];
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

- (double)_confirmsForAppClipWithHeroAppPredictionNoDecay:(id)a3
{
  appClipsAndHeroAppHistogramNoDecay = self->_appClipsAndHeroAppHistogramNoDecay;
  v4 = [a3 urlHash];
  [(_ATXAppLaunchCategoricalHistogram *)appClipsAndHeroAppHistogramNoDecay totalLaunchesForBundleId:v4 category:@"confirms_clips"];
  v6 = v5;

  return v6;
}

- (double)_rejectsForAppClipWithHeroAppPredictionNoDecay:(id)a3
{
  appClipsAndHeroAppHistogramNoDecay = self->_appClipsAndHeroAppHistogramNoDecay;
  v4 = [a3 urlHash];
  [(_ATXAppLaunchCategoricalHistogram *)appClipsAndHeroAppHistogramNoDecay totalLaunchesForBundleId:v4 category:@"rejects_clips"];
  v6 = v5;

  return v6;
}

@end