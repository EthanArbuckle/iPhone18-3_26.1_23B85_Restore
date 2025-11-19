@interface ATXModeSuggestionScorer
+ (BOOL)_areConfiguredTriggers:(id)a3 conflictingWithSuggestedTriggers:(id)a4;
- (ATXModeSuggestionScorer)initWithModeUUID:(id)a3 modeType:(int)a4 origin:(int)a5 originBundleId:(id)a6 originAnchorType:(id)a7 confidenceScore:(double)a8 secondsSinceSuggested:(double)a9 serializedTriggers:(id)a10;
- (ATXModeSuggestionScorer)initWithModeUUID:(id)a3 modeType:(int)a4 origin:(int)a5 originBundleId:(id)a6 originAnchorType:(id)a7 confidenceScore:(double)a8 secondsSinceSuggested:(double)a9 serializedTriggers:(id)a10 configuredModeService:(id)a11 feedbackStream:(id)a12 feedbackHistogramHelper:(id)a13 appLaunchStream:(id)a14 groundTruthModeStream:(id)a15;
- (BOOL)_hasHadEarlyExitTodayForModeWithUUID:(id)a3;
- (BOOL)_hasUserSetUpModeBefore;
- (BOOL)_hasUserSetUpSmartActivationForThisModeBefore;
- (BOOL)_inValidLocaleForDrivingSuggestions;
- (BOOL)_isSameActivityAndSource:(id)a3;
- (BOOL)_isUserCurrentlyInSuggestedMode:(id)a3;
- (BOOL)_shouldSuggestOnLockScreenWithDefaults:(id)a3;
- (BOOL)isModeConfigured;
- (BOOL)isUserCurrentlyInADifferentMode;
- (BOOL)isUserCurrentlyInMode;
- (BOOL)shouldAllowSmartEntry;
- (BOOL)shouldSuggestOnLockScreen;
- (BOOL)shouldSuggestTriggers;
- (double)score;
- (id)_lockScreenSuggestionThresholds;
- (id)_scoringWeights;
- (void)_populateCachedDataAboutUsersCurrentMode;
- (void)_populateFeedbackScores;
- (void)_populateFeedbackScoresIfNeeded;
@end

@implementation ATXModeSuggestionScorer

- (ATXModeSuggestionScorer)initWithModeUUID:(id)a3 modeType:(int)a4 origin:(int)a5 originBundleId:(id)a6 originAnchorType:(id)a7 confidenceScore:(double)a8 secondsSinceSuggested:(double)a9 serializedTriggers:(id)a10
{
  v28 = a10;
  v15 = a7;
  v16 = a6;
  v17 = a3;
  v26 = objc_opt_new();
  v25 = [objc_alloc(MEMORY[0x277CEB328]) initWithStoreConfig:0];
  v18 = objc_opt_new();
  v19 = objc_opt_new();
  v20 = BiomeLibrary();
  v21 = [v20 UserFocus];
  v22 = [v21 ComputedMode];
  v23 = [(ATXModeSuggestionScorer *)self initWithModeUUID:v17 modeType:a4 origin:a5 originBundleId:v16 originAnchorType:v15 confidenceScore:v28 secondsSinceSuggested:a8 serializedTriggers:a9 configuredModeService:v26 feedbackStream:v25 feedbackHistogramHelper:v18 appLaunchStream:v19 groundTruthModeStream:v22];

  return v23;
}

- (ATXModeSuggestionScorer)initWithModeUUID:(id)a3 modeType:(int)a4 origin:(int)a5 originBundleId:(id)a6 originAnchorType:(id)a7 confidenceScore:(double)a8 secondsSinceSuggested:(double)a9 serializedTriggers:(id)a10 configuredModeService:(id)a11 feedbackStream:(id)a12 feedbackHistogramHelper:(id)a13 appLaunchStream:(id)a14 groundTruthModeStream:(id)a15
{
  v37 = a3;
  v36 = a6;
  v35 = a7;
  v21 = a10;
  v34 = a11;
  v33 = a12;
  v32 = a13;
  v22 = a14;
  v23 = a15;
  v38.receiver = self;
  v38.super_class = ATXModeSuggestionScorer;
  v24 = [(ATXModeSuggestionScorer *)&v38 init];
  if (v24)
  {
    v25 = [v37 copy];
    modeUUID = v24->_modeUUID;
    v24->_modeUUID = v25;

    v24->_modeType = a4;
    v24->_origin = a5;
    objc_storeStrong(&v24->_originBundleId, a6);
    objc_storeStrong(&v24->_originAnchorType, a7);
    v24->_confidenceScore = a8;
    v24->_secondsSinceSuggested = a9;
    v27 = ATXDeserializeTriggers();
    triggers = v24->_triggers;
    v24->_triggers = v27;

    objc_storeStrong(&v24->_configuredModeService, a11);
    objc_storeStrong(&v24->_feedbackStream, a12);
    objc_storeStrong(&v24->_feedbackHistogramHelper, a13);
    objc_storeStrong(&v24->_appLaunchStream, a14);
    objc_storeStrong(&v24->_groundTruthModeStream, a15);
  }

  return v24;
}

- (BOOL)isModeConfigured
{
  cachedIsModeConfigured = self->_cachedIsModeConfigured;
  if (!cachedIsModeConfigured)
  {
    if (self->_modeUUID)
    {
      v4 = [(ATXConfiguredModeService *)self->_configuredModeService DNDModeConfigurationForActivityWithUUID:?];
      cachedDNDMode = self->_cachedDNDMode;
      self->_cachedDNDMode = v4;

      v6 = [MEMORY[0x277CCABB0] numberWithInt:self->_cachedDNDMode != 0];
    }

    else
    {
      v6 = MEMORY[0x277CBEC28];
    }

    v7 = self->_cachedIsModeConfigured;
    self->_cachedIsModeConfigured = v6;

    cachedIsModeConfigured = self->_cachedIsModeConfigured;
  }

  return [(NSNumber *)cachedIsModeConfigured BOOLValue];
}

- (BOOL)isUserCurrentlyInMode
{
  if (self->_cachedIsUserCurrentlyInMode)
  {
    [(ATXModeSuggestionScorer *)self _populateCachedDataAboutUsersCurrentMode];
    cachedIsUserCurrentlyInMode = self->_cachedIsUserCurrentlyInMode;
  }

  else
  {
    cachedIsUserCurrentlyInMode = 0;
  }

  return [(NSNumber *)cachedIsUserCurrentlyInMode BOOLValue];
}

- (BOOL)isUserCurrentlyInADifferentMode
{
  cachedIsUserCurrentlyInADifferentMode = self->_cachedIsUserCurrentlyInADifferentMode;
  if (!cachedIsUserCurrentlyInADifferentMode)
  {
    [(ATXModeSuggestionScorer *)self _populateCachedDataAboutUsersCurrentMode];
    cachedIsUserCurrentlyInADifferentMode = self->_cachedIsUserCurrentlyInADifferentMode;
  }

  return [(NSNumber *)cachedIsUserCurrentlyInADifferentMode BOOLValue];
}

- (void)_populateCachedDataAboutUsersCurrentMode
{
  v3 = [objc_alloc(MEMORY[0x277D41C60]) initWithStream:self->_groundTruthModeStream];
  v8 = [v3 currentMode];

  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeSuggestionScorer _isUserCurrentlyInSuggestedMode:](self, "_isUserCurrentlyInSuggestedMode:", v8)}];
  cachedIsUserCurrentlyInMode = self->_cachedIsUserCurrentlyInMode;
  self->_cachedIsUserCurrentlyInMode = v4;

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeSuggestionScorer _isUserCurrentlyInDifferentModeFromSuggestedMode:](self, "_isUserCurrentlyInDifferentModeFromSuggestedMode:", v8)}];
  cachedIsUserCurrentlyInADifferentMode = self->_cachedIsUserCurrentlyInADifferentMode;
  self->_cachedIsUserCurrentlyInADifferentMode = v6;
}

- (BOOL)_isUserCurrentlyInSuggestedMode:(id)a3
{
  if (!a3 || !self->_modeUUID)
  {
    return 0;
  }

  v4 = [a3 mode];
  v5 = [v4 isEqualToString:self->_modeUUID];

  return v5;
}

- (double)score
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = [(ATXModeSuggestionScorer *)self _scoringWeights];
  v4 = [v3 objectForKeyedSubscript:@"confidenceScoreWeight"];
  [v4 doubleValue];
  v6 = v5;

  v7 = [v3 objectForKeyedSubscript:@"feedbackScoreWeight"];
  [v7 doubleValue];
  v9 = v8;

  v10 = [v3 objectForKeyedSubscript:@"secondsSinceSuggestedWeight"];
  [v10 doubleValue];
  v12 = v11;

  v13 = [v3 objectForKeyedSubscript:@"isModeConfiguredWeight"];
  [v13 doubleValue];
  v15 = v14;

  v16 = [v3 objectForKeyedSubscript:@"isUserCurrentlyInModeWeight"];
  [v16 doubleValue];
  v18 = v17;

  [(ATXModeSuggestionScorer *)self _populateFeedbackScoresIfNeeded];
  confidenceScore = self->_confidenceScore;
  [(NSNumber *)self->_feedbackScore doubleValue];
  v21 = v9 * v20 + v6 * confidenceScore + v12 * self->_secondsSinceSuggested;
  v22 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeSuggestionScorer isModeConfigured](self, "isModeConfigured")}];
  [v22 doubleValue];
  v24 = v21 + v15 * v23;
  v25 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeSuggestionScorer isUserCurrentlyInMode](self, "isUserCurrentlyInMode")}];
  [v25 doubleValue];
  v27 = v24 + v18 * v26;

  v28 = __atxlog_handle_modes();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    modeUUID = self->_modeUUID;
    modeType = self->_modeType;
    feedbackScore = self->_feedbackScore;
    v32 = self->_confidenceScore;
    secondsSinceSuggested = self->_secondsSinceSuggested;
    v36 = 138545154;
    v37 = modeUUID;
    v38 = 2048;
    v39 = modeType;
    v40 = 2048;
    v41 = v27;
    v42 = 2048;
    v43 = v32;
    v44 = 2112;
    v45 = feedbackScore;
    v46 = 2048;
    v47 = secondsSinceSuggested;
    v48 = 1024;
    v49 = [(ATXModeSuggestionScorer *)self isModeConfigured];
    v50 = 1024;
    v51 = [(ATXModeSuggestionScorer *)self isUserCurrentlyInMode];
    _os_log_impl(&dword_2263AA000, v28, OS_LOG_TYPE_DEFAULT, "ATXModeSuggestionScorer: Calculating combined score for modeUUID: %{public}@, modeType: %lu combinedScore: %f, confidenceScore: %f, feedbackScore: %@, secondsSinceSuggested: %f, isActivityConfigured: %d, isUserCurrentlyInActivity: %d", &v36, 0x4Au);
  }

  v34 = *MEMORY[0x277D85DE8];
  return v27;
}

- (id)_scoringWeights
{
  v2 = [MEMORY[0x277CEB3C0] dictionaryForClass:objc_opt_class()];
  v3 = [v2 objectForKeyedSubscript:@"rankingScoreWeights"];

  return v3;
}

- (BOOL)shouldSuggestOnLockScreen
{
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v4 = [v3 initWithSuiteName:*MEMORY[0x277CEBD00]];
  LOBYTE(self) = [(ATXModeSuggestionScorer *)self _shouldSuggestOnLockScreenWithDefaults:v4];

  return self;
}

- (BOOL)_shouldSuggestOnLockScreenWithDefaults:(id)a3
{
  v132 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![MEMORY[0x277D42590] isInternalBuild] || (objc_msgSend(v4, "BOOLForKey:", *MEMORY[0x277D41CE8]) & 1) == 0)
  {
    if (![(ATXModeSuggestionScorer *)self isModeConfigured]&& self->_modeType != 6)
    {
      v6 = __atxlog_handle_modes();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v7 = "ATXModeSuggestionScorer: Mode is not configured and type is not driving, should suppress mode set-up suggestion from lockscreen";
        goto LABEL_37;
      }

LABEL_65:
      v5 = 0;
LABEL_66:

      goto LABEL_67;
    }

    if (![(ATXModeSuggestionScorer *)self isModeConfigured]&& [(ATXModeSuggestionScorer *)self _hasUserSetUpModeBefore])
    {
      v6 = __atxlog_handle_modes();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v7 = "ATXModeSuggestionScorer: User has configured mode before, should suppress mode set-up suggestion from lockscreen";
LABEL_37:
        _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 2u);
        goto LABEL_65;
      }

      goto LABEL_65;
    }

    if (![(ATXModeSuggestionScorer *)self isModeConfigured]&& self->_modeType == 6 && ![(ATXModeSuggestionScorer *)self _inValidLocaleForDrivingSuggestions])
    {
      v6 = __atxlog_handle_modes();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v7 = "ATXModeSuggestionScorer: Mode is not configured and type is driving, should suppress mode set-up suggestion from lockscreen because user is not in valid locale";
        goto LABEL_37;
      }

      goto LABEL_65;
    }

    v6 = [(ATXModeSuggestionScorer *)self _lockScreenSuggestionThresholds];
    [(ATXModeSuggestionScorer *)self _populateFeedbackScoresIfNeeded];
    v8 = [v6 objectForKeyedSubscript:@"confidenceScoreThreshold"];
    [v8 doubleValue];
    v10 = v9;

    v11 = [v6 objectForKeyedSubscript:@"rejectionsInPastWeekThreshold"];
    [v11 doubleValue];
    v13 = v12;

    v14 = [v6 objectForKeyedSubscript:@"totalRejectionsThreshold"];
    [v14 doubleValue];
    v16 = v15;

    v17 = [v6 objectForKeyedSubscript:@"totalIgnoresAndRejectionsThreshold"];
    [v17 doubleValue];
    v19 = v18;

    v20 = [v6 objectForKeyedSubscript:@"timesShownInLastDayThreshold"];
    [v20 doubleValue];
    v103 = v21;

    v22 = [v6 objectForKeyedSubscript:@"rejectionsAcrossAllModesInPastDayThreshold"];
    [v22 doubleValue];
    v24 = v23;

    v25 = [v6 objectForKeyedSubscript:@"timesShownAcrossAllModesInPastDayThreshold"];
    [v25 doubleValue];
    v27 = v26;

    v28 = [v6 objectForKeyedSubscript:@"timesShownAcrossAllModesInPastWeekThreshold"];
    [v28 doubleValue];
    v30 = v29;

    v31 = [v6 objectForKeyedSubscript:@"rejectionsAcrossAllModesInPastWeekThreshold"];
    [v31 doubleValue];
    v33 = v32;

    v34 = [v6 objectForKeyedSubscript:@"shouldSuppressIfUserIsInADifferentMode"];
    v35 = [v34 BOOLValue];

    v36 = __atxlog_handle_modes();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      modeUUID = self->_modeUUID;
      *&v38 = self->_modeType;
      BMUserFocusInferredModeTypeToActivity();
      ATXActivityTypeToString();
      v39 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      confidenceScore = self->_confidenceScore;
      feedbackScore = self->_feedbackScore;
      rejectionsInPastWeek = self->_rejectionsInPastWeek;
      totalRejections = self->_totalRejections;
      totalIgnores = self->_totalIgnores;
      timesShownInLastDay = self->_timesShownInLastDay;
      timesShown = self->_timesShown;
      rejectionsAcrossAllModesInPastDay = self->_rejectionsAcrossAllModesInPastDay;
      timesShownAcrossAllModesInPastDay = self->_timesShownAcrossAllModesInPastDay;
      timesShownAcrossAllModesInPastWeek = self->_timesShownAcrossAllModesInPastWeek;
      rejectionsAcrossAllModesInPastWeek = self->_rejectionsAcrossAllModesInPastWeek;
      *buf = 138546690;
      v105 = modeUUID;
      v106 = 2048;
      v107 = v38;
      v108 = 2114;
      v109 = v39;
      v110 = 2048;
      v111 = confidenceScore;
      v112 = 2112;
      v113 = feedbackScore;
      v114 = 2112;
      v115 = rejectionsInPastWeek;
      v116 = 2112;
      v117 = totalRejections;
      v118 = 2112;
      v119 = totalIgnores;
      v120 = 2112;
      v121 = timesShownInLastDay;
      v122 = 2114;
      v123 = timesShown;
      v124 = 2112;
      v125 = rejectionsAcrossAllModesInPastDay;
      v126 = 2112;
      v127 = timesShownAcrossAllModesInPastDay;
      v128 = 2112;
      v129 = timesShownAcrossAllModesInPastWeek;
      v130 = 2112;
      v131 = rejectionsAcrossAllModesInPastWeek;
      _os_log_impl(&dword_2263AA000, v36, OS_LOG_TYPE_DEFAULT, "ATXModeSuggestionScorer: Determining if mode should be suggestion on lock screen. uuid: %{public}@, modeType: %lu, modeString: %{public}@, confidenceScore: %f, feedbackScore: %@, rejectionsInPastWeek: %@, totalRejections: %@, totalIgnores: %@, timesShownInLastDay: %@, timesShown: %{public}@, rejectionsAcrossAllModesInPastDay: %@, timesShownAcrossAllModesInPastDay: %@, timesShownAcrossAllModesInPastWeek: %@, rejectionsAcrossAllModesInPastWeek: %@", buf, 0x8Eu);
    }

    if ([(ATXModeSuggestionScorer *)self isModeConfigured]|| self->_modeType != 6)
    {
LABEL_24:
      if (self->_confidenceScore >= v10)
      {
        [(NSNumber *)self->_rejectionsInPastWeek doubleValue];
        if (v63 <= v13)
        {
          [(NSNumber *)self->_totalRejections doubleValue];
          if (v66 <= v16)
          {
            [(NSNumber *)self->_totalIgnores doubleValue];
            v70 = v69;
            [(NSNumber *)self->_totalRejections doubleValue];
            v72 = v70 + v71;
            if (v72 <= v19)
            {
              [(NSNumber *)self->_timesShownInLastDay doubleValue];
              if (v74 <= v103)
              {
                [(NSNumber *)self->_rejectionsAcrossAllModesInPastDay doubleValue];
                if (v77 <= v24)
                {
                  [(NSNumber *)self->_timesShownAcrossAllModesInPastDay doubleValue];
                  if (v80 <= v27)
                  {
                    [(NSNumber *)self->_timesShownAcrossAllModesInPastWeek doubleValue];
                    if (v83 <= v30)
                    {
                      [(NSNumber *)self->_rejectionsAcrossAllModesInPastWeek doubleValue];
                      if (v86 <= v33)
                      {
                        if (v35 && [(ATXModeSuggestionScorer *)self isUserCurrentlyInADifferentMode])
                        {
                          v59 = __atxlog_handle_modes();
                          if (!os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                          {
                            goto LABEL_64;
                          }

                          v93 = self->_modeUUID;
                          *buf = 138543362;
                          v105 = v93;
                          v62 = "ATXModeSuggestionScorer: mode: %{public}@ should NOT be suggested on lock screen because user is currently in another mode";
                          v89 = v59;
                          v90 = 12;
                          goto LABEL_63;
                        }

                        if ([MEMORY[0x277D42590] isInternalBuild] && (v94 = *MEMORY[0x277D41CE0], buf[0] = 0, CFPreferencesGetAppBooleanValue(v94, *MEMORY[0x277CEBD00], buf)))
                        {
                          v95 = __atxlog_handle_modes();
                          if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
                          {
                            v96 = self->_modeUUID;
                            *buf = 138543362;
                            v105 = v96;
                            _os_log_impl(&dword_2263AA000, v95, OS_LOG_TYPE_DEFAULT, "ATXModeSuggestionScorer: mode: %{public}@ skipping check to see if app has been launched on two separate days", buf, 0xCu);
                          }
                        }

                        else if ([(NSString *)self->_originBundleId length]&& ![(ATXModeSuggestionScorer *)self _hasLaunchedAppOnAtLeastTwoSeparateDays])
                        {
                          v59 = __atxlog_handle_modes();
                          if (!os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                          {
                            goto LABEL_64;
                          }

                          v99 = self->_modeUUID;
                          originBundleId = self->_originBundleId;
                          *buf = 138543618;
                          v105 = v99;
                          v106 = 2112;
                          v107 = *&originBundleId;
                          v62 = "ATXModeSuggestionScorer: mode: %{public}@ should NOT be suggested on lock screen because user has not launched bundleId: %@ on two seperate days";
                          v89 = v59;
                          v90 = 22;
                          goto LABEL_63;
                        }

                        v97 = __atxlog_handle_modes();
                        if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
                        {
                          v98 = self->_modeUUID;
                          *buf = 138543362;
                          v105 = v98;
                          _os_log_impl(&dword_2263AA000, v97, OS_LOG_TYPE_DEFAULT, "ATXModeSuggestionScorer: mode: %{public}@ should be suggested on lock screen", buf, 0xCu);
                        }

                        v5 = 1;
                        goto LABEL_66;
                      }

                      v59 = __atxlog_handle_modes();
                      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                      {
                        v87 = self->_modeUUID;
                        v88 = self->_rejectionsAcrossAllModesInPastWeek;
                        *buf = 138543874;
                        v105 = v87;
                        v106 = 2112;
                        v107 = *&v88;
                        v108 = 2048;
                        v109 = v33;
                        v62 = "ATXModeSuggestionScorer: mode: %{public}@ should NOT be suggested on lock screen because rejectionsAcrossAllModesInPastWeek: %@ does not pass threshold: %f";
                        goto LABEL_62;
                      }
                    }

                    else
                    {
                      v59 = __atxlog_handle_modes();
                      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                      {
                        v84 = self->_modeUUID;
                        v85 = self->_timesShownAcrossAllModesInPastWeek;
                        *buf = 138543874;
                        v105 = v84;
                        v106 = 2112;
                        v107 = *&v85;
                        v108 = 2048;
                        v109 = v30;
                        v62 = "ATXModeSuggestionScorer: mode: %{public}@ should NOT be suggested on lock screen because timesShownAcrossAllModesInPastWeek: %@ does not pass threshold: %f";
                        goto LABEL_62;
                      }
                    }
                  }

                  else
                  {
                    v59 = __atxlog_handle_modes();
                    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                    {
                      v81 = self->_modeUUID;
                      v82 = self->_timesShownAcrossAllModesInPastDay;
                      *buf = 138543874;
                      v105 = v81;
                      v106 = 2112;
                      v107 = *&v82;
                      v108 = 2048;
                      v109 = v27;
                      v62 = "ATXModeSuggestionScorer: mode: %{public}@ should NOT be suggested on lock screen because timesShownAcrossAllModesInPastDay: %@ does not pass threshold: %f";
                      goto LABEL_62;
                    }
                  }
                }

                else
                {
                  v59 = __atxlog_handle_modes();
                  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                  {
                    v78 = self->_modeUUID;
                    v79 = self->_rejectionsAcrossAllModesInPastDay;
                    *buf = 138543874;
                    v105 = v78;
                    v106 = 2112;
                    v107 = *&v79;
                    v108 = 2048;
                    v109 = v24;
                    v62 = "ATXModeSuggestionScorer: mode: %{public}@ should NOT be suggested on lock screen because rejectionsAcrossAllModesInPastDay: %@ does not pass threshold: %f";
                    goto LABEL_62;
                  }
                }
              }

              else
              {
                v59 = __atxlog_handle_modes();
                if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                {
                  v75 = self->_modeUUID;
                  v76 = self->_timesShownInLastDay;
                  *buf = 138543874;
                  v105 = v75;
                  v106 = 2112;
                  v107 = *&v76;
                  v108 = 2048;
                  v109 = v103;
                  v62 = "ATXModeSuggestionScorer: mode: %{public}@ should NOT be suggested on lock screen because timesShownInLastDay: %@ does not pass threshold: %f";
                  goto LABEL_62;
                }
              }
            }

            else
            {
              v59 = __atxlog_handle_modes();
              if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
              {
                v73 = self->_modeUUID;
                *buf = 138543874;
                v105 = v73;
                v106 = 2048;
                v107 = v72;
                v108 = 2048;
                v109 = v19;
                v62 = "ATXModeSuggestionScorer: mode: %{public}@ should NOT be suggested on lock screen because totalIgnoresAndRejections: %f does not pass threshold: %f";
                goto LABEL_62;
              }
            }
          }

          else
          {
            v59 = __atxlog_handle_modes();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
            {
              v67 = self->_modeUUID;
              v68 = self->_totalRejections;
              *buf = 138543874;
              v105 = v67;
              v106 = 2112;
              v107 = *&v68;
              v108 = 2048;
              v109 = v16;
              v62 = "ATXModeSuggestionScorer: mode: %{public}@ should NOT be suggested on lock screen because totalRejections: %@ does not pass threshold: %f";
              goto LABEL_62;
            }
          }
        }

        else
        {
          v59 = __atxlog_handle_modes();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
          {
            v64 = self->_modeUUID;
            v65 = self->_rejectionsInPastWeek;
            *buf = 138543874;
            v105 = v64;
            v106 = 2112;
            v107 = *&v65;
            v108 = 2048;
            v109 = v13;
            v62 = "ATXModeSuggestionScorer: mode: %{public}@ should NOT be suggested on lock screen because rejectionsInPastWeek: %@ does not pass threshold: %f";
            goto LABEL_62;
          }
        }
      }

      else
      {
        v59 = __atxlog_handle_modes();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          v60 = self->_modeUUID;
          v61 = self->_confidenceScore;
          *buf = 138543874;
          v105 = v60;
          v106 = 2048;
          v107 = v61;
          v108 = 2048;
          v109 = v10;
          v62 = "ATXModeSuggestionScorer: mode: %{public}@ should NOT be suggested on lock screen because confidenceScore: %f does not pass threshold: %f";
LABEL_62:
          v89 = v59;
          v90 = 32;
LABEL_63:
          _os_log_impl(&dword_2263AA000, v89, OS_LOG_TYPE_DEFAULT, v62, buf, v90);
        }
      }

LABEL_64:

      goto LABEL_65;
    }

    v51 = [v4 objectForKey:@"dateDrivingSetupSuggestionLastShown"];
    if (v51)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v101 = v27;
        v102 = v24;
        [v4 doubleForKey:*MEMORY[0x277CEBD40]];
        v53 = v52;
        *&v54 = COERCE_DOUBLE([objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:v52]);
        [v51 timeIntervalSinceReferenceDate];
        v56 = v55;
        v57 = __atxlog_handle_modes();
        v58 = os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT);
        if (v56 <= v53)
        {
          v27 = v101;
          v24 = v102;
          if (v58)
          {
            *buf = 138543618;
            v105 = v51;
            v106 = 2114;
            v107 = *&v54;
            _os_log_impl(&dword_2263AA000, v57, OS_LOG_TYPE_DEFAULT, "ATXModeSuggestionScorer: Driving setup suggestion was shown on %{public}@ and the last major OS upgrade was on approximately %{public}@", buf, 0x16u);
          }

          goto LABEL_23;
        }

        if (v58)
        {
          *buf = 138543618;
          v105 = v51;
          v106 = 2114;
          v107 = *&v54;
          _os_log_impl(&dword_2263AA000, v57, OS_LOG_TYPE_DEFAULT, "ATXModeSuggestionScorer: Not showing Driving setup suggestion because suggestion was already shown once (%{public}@) since last major os upgrade (%{public}@)", buf, 0x16u);
        }
      }

      else
      {
        __atxlog_handle_modes();
        *&v54 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
        {
          [ATXModeSuggestionScorer _shouldSuggestOnLockScreenWithDefaults:v54];
        }
      }

      goto LABEL_65;
    }

LABEL_23:

    goto LABEL_24;
  }

  v5 = 1;
LABEL_67:

  v91 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)_hasUserSetUpModeBefore
{
  modeType = self->_modeType;
  BMUserFocusInferredModeTypeToActivity();
  v3 = ATXActivityTypeToModeSemanticType();
  v4 = objc_alloc(MEMORY[0x277CBEBD0]);
  v5 = [v4 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v6 = [v5 objectForKey:*MEMORY[0x277CEBD28]];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEB98] setWithArray:v6];
    v8 = [v7 containsObject:v3];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_hasUserSetUpSmartActivationForThisModeBefore
{
  modeType = self->_modeType;
  BMUserFocusInferredModeTypeToActivity();
  v3 = ATXActivityTypeToModeSemanticType();
  v4 = objc_alloc(MEMORY[0x277CBEBD0]);
  v5 = [v4 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v6 = [v5 objectForKey:*MEMORY[0x277CEBD30]];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEB98] setWithArray:v6];
    v8 = [v7 containsObject:v3];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)shouldSuggestTriggers
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(ATXModeSuggestionScorer *)self shouldSuggestOnLockScreen];
  if (v3)
  {
    if ([(ATXModeSuggestionScorer *)self _hasUserSetUpSmartActivationForThisModeBefore])
    {
      v4 = __atxlog_handle_modes();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        modeUUID = self->_modeUUID;
        v15 = 138543362;
        v16 = modeUUID;
        _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "ATXModeSuggestionScorer: mode: %{public}@ trigger should not be suggested because smart activation was previously ON for this mode", &v15, 0xCu);
      }
    }

    else
    {
      if (![(ATXModeSuggestionScorer *)self isModeConfigured])
      {
        goto LABEL_11;
      }

      v6 = [(DNDModeConfiguration *)self->_cachedDNDMode triggers];
      v7 = [v6 count];

      if (!v7 || (v8 = objc_opt_class(), -[DNDModeConfiguration triggers](self->_cachedDNDMode, "triggers"), v9 = objc_claimAutoreleasedReturnValue(), LODWORD(v8) = [v8 _areConfiguredTriggers:v9 conflictingWithSuggestedTriggers:self->_triggers], v9, !v8))
      {
LABEL_11:
        LOBYTE(v3) = 1;
        goto LABEL_12;
      }

      v4 = __atxlog_handle_modes();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v10 = self->_modeUUID;
        v11 = [(DNDModeConfiguration *)self->_cachedDNDMode triggers];
        triggers = self->_triggers;
        v15 = 138543874;
        v16 = v10;
        v17 = 2114;
        v18 = v11;
        v19 = 2114;
        v20 = triggers;
        _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "ATXModeSuggestionScorer: mode: %{public}@ trigger should not be suggested because existing triggers %{public}@ conflict with predicted triggers: %{public}@", &v15, 0x20u);
      }
    }

    LOBYTE(v3) = 0;
  }

LABEL_12:
  v13 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)shouldAllowSmartEntry
{
  v10 = *MEMORY[0x277D85DE8];
  if (!self->_modeUUID)
  {
LABEL_8:
    LOBYTE(v3) = 0;
    goto LABEL_9;
  }

  v3 = [(ATXModeSuggestionScorer *)self isModeConfigured];
  if (v3)
  {
    if ([(DNDModeConfiguration *)self->_cachedDNDMode allowSmartEntry]== 2)
    {
      if (![(ATXModeSuggestionScorer *)self _hasHadEarlyExitTodayForModeWithUUID:self->_modeUUID])
      {
        LOBYTE(v3) = 1;
        goto LABEL_9;
      }

      v4 = __atxlog_handle_modes();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        modeUUID = self->_modeUUID;
        v8 = 138543362;
        v9 = modeUUID;
        _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "ATXModeSuggestionScorer: mode: %{public}@ not allowing smart entry because we already had an early exit today", &v8, 0xCu);
      }
    }

    goto LABEL_8;
  }

LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)_hasHadEarlyExitTodayForModeWithUUID:(id)a3
{
  v3 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v4 = [MEMORY[0x277CBEA80] currentCalendar];
  v5 = [MEMORY[0x277CBEAA8] now];
  v6 = [v4 startOfDayForDate:v5];

  v7 = objc_opt_new();
  [v6 timeIntervalSinceReferenceDate];
  v8 = [v7 publisherFromStartTime:?];
  v9 = [v8 filterWithIsIncluded:&__block_literal_global_44];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__ATXModeSuggestionScorer__hasHadEarlyExitTodayForModeWithUUID___block_invoke_3;
  v13[3] = &unk_278596F10;
  v10 = v3;
  v14 = v10;
  v15 = &v16;
  v11 = [v9 sinkWithCompletion:&__block_literal_global_90 receiveInput:v13];

  LOBYTE(v7) = *(v17 + 24);
  _Block_object_dispose(&v16, 8);

  return v7;
}

BOOL __64__ATXModeSuggestionScorer__hasHadEarlyExitTodayForModeWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBody];
  v3 = [v2 eventType] == 5;

  return v3;
}

void __64__ATXModeSuggestionScorer__hasHadEarlyExitTodayForModeWithUUID___block_invoke_3(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 activity];
    v7 = [v6 modeUUID];

    if (v7 && [v7 isEqualToString:*(a1 + 32)])
    {
      v8 = __atxlog_handle_modes();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 32);
        [v3 timestamp];
        v12 = 138543618;
        v13 = v9;
        v14 = 2048;
        v15 = v10;
        _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "ATXModeSuggestionScorer: mode: %{public}@ has an early exit detected at %f", &v12, 0x16u);
      }

      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)_inValidLocaleForDrivingSuggestions
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"US", @"CA", @"GB", 0}];
  objc_autoreleasePoolPop(v2);
  v4 = [MEMORY[0x277CBEAF8] currentLocale];
  v5 = [v4 objectForKey:*MEMORY[0x277CBE690]];

  if (v5 && ([v3 containsObject:v5] & 1) != 0)
  {
    v6 = 1;
  }

  else
  {
    v7 = __atxlog_handle_modes();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "ATXModeSuggestionScorer: user is in locale: %@", buf, 0xCu);
    }

    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (BOOL)_areConfiguredTriggers:(id)a3 conflictingWithSuggestedTriggers:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 _pas_filteredArrayWithTest:&__block_literal_global_95_0];
  if ([v7 count])
  {
    v8 = 1;
  }

  else
  {
    v9 = MEMORY[0x277CBEB58];
    v10 = [v6 _pas_mappedArrayWithTransform:&__block_literal_global_100];
    v11 = [v9 setWithArray:v10];

    v12 = MEMORY[0x277CBEB58];
    v13 = [v5 _pas_mappedArrayWithTransform:&__block_literal_global_104];
    v14 = [v12 setWithArray:v13];

    [v14 intersectSet:v11];
    v8 = [v14 count] != 0;
  }

  return v8;
}

BOOL __83__ATXModeSuggestionScorer__areConfiguredTriggers_conflictingWithSuggestedTriggers___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = (objc_opt_isKindOfClass() & 1) != 0 && [v2 enabledSetting] == 2;

  return v3;
}

- (BOOL)_isSameActivityAndSource:(id)a3
{
  v4 = a3;
  v5 = [v4 modeUUID];
  if (v5 && (modeUUID = self->_modeUUID, v5, modeUUID))
  {
    v7 = [v4 modeUUID];
    v8 = [v7 isEqualToString:self->_modeUUID];

    if ((v8 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v9 = [v4 modeUUID];
    if (v9)
    {
      goto LABEL_6;
    }

    if (self->_modeUUID)
    {
      goto LABEL_15;
    }
  }

  v10 = [v4 origin];
  origin = self->_origin;
  if (v10 != BMUserFocusInferredModeOriginToLegacy())
  {
    goto LABEL_15;
  }

  v12 = [v4 originAnchorType];
  if (!v12 || (originAnchorType = self->_originAnchorType, v12, !originAnchorType))
  {
    v9 = [v4 originAnchorType];
    if (!v9)
    {
      if (!self->_originAnchorType)
      {
        goto LABEL_12;
      }

LABEL_15:
      v16 = 0;
      goto LABEL_16;
    }

LABEL_6:

    goto LABEL_15;
  }

  v14 = [v4 originAnchorType];
  v15 = [v14 isEqualToString:self->_originAnchorType];

  if ((v15 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  v16 = 1;
LABEL_16:

  return v16;
}

- (void)_populateFeedbackScoresIfNeeded
{
  if (!self->_feedbackScore || !self->_rejectionsInPastWeek)
  {
    [(ATXModeSuggestionScorer *)self _populateFeedbackScores];
  }
}

- (void)_populateFeedbackScores
{
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 0;
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 0;
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v68 = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v3 = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = [MEMORY[0x277CBEAA8] now];
  v5 = [v3 dateByAddingUnit:16 value:-7 toDate:v4 options:0];

  v6 = [MEMORY[0x277CBEA80] currentCalendar];
  v7 = [MEMORY[0x277CBEAA8] now];
  v8 = [v6 dateByAddingUnit:16 value:-1 toDate:v7 options:0];

  feedbackStream = self->_feedbackStream;
  [v5 timeIntervalSinceReferenceDate];
  v10 = [(ATXActivitySuggestionFeedbackStream *)feedbackStream publisherFromStartTime:?];
  v11 = [v10 filterWithIsIncluded:&__block_literal_global_106];
  v41 = MEMORY[0x277D85DD0];
  v42 = 3221225472;
  v43 = __50__ATXModeSuggestionScorer__populateFeedbackScores__block_invoke_3;
  v44 = &unk_278599098;
  v45 = self;
  v47 = &v73;
  v12 = v8;
  v46 = v12;
  v48 = &v69;
  v49 = &v61;
  v50 = &v65;
  v51 = &v53;
  v52 = &v57;
  v13 = [v11 sinkWithCompletion:&__block_literal_global_108 receiveInput:&v41];

  v14 = [MEMORY[0x277CCABB0] numberWithDouble:{v74[3], v41, v42, v43, v44, v45}];
  rejectionsInPastWeek = self->_rejectionsInPastWeek;
  self->_rejectionsInPastWeek = v14;

  v16 = [MEMORY[0x277CCABB0] numberWithDouble:v70[3]];
  timesShownInLastDay = self->_timesShownInLastDay;
  self->_timesShownInLastDay = v16;

  v18 = [[ATXActivitySuggestionsFeedbackProcessor alloc] initWithFeedbackStream:self->_feedbackStream feedbackHistogramHelper:self->_feedbackHistogramHelper];
  [(ATXActivitySuggestionsFeedbackProcessor *)v18 processFeedbackWithXPCActivity:0];

  v19 = [MEMORY[0x277CCABB0] numberWithDouble:v66[3]];
  rejectionsAcrossAllModesInPastDay = self->_rejectionsAcrossAllModesInPastDay;
  self->_rejectionsAcrossAllModesInPastDay = v19;

  v21 = [MEMORY[0x277CCABB0] numberWithDouble:v58[3]];
  timesShownAcrossAllModesInPastDay = self->_timesShownAcrossAllModesInPastDay;
  self->_timesShownAcrossAllModesInPastDay = v21;

  v23 = [MEMORY[0x277CCABB0] numberWithDouble:v54[3]];
  timesShownAcrossAllModesInPastWeek = self->_timesShownAcrossAllModesInPastWeek;
  self->_timesShownAcrossAllModesInPastWeek = v23;

  v25 = [MEMORY[0x277CCABB0] numberWithDouble:v62[3]];
  rejectionsAcrossAllModesInPastWeek = self->_rejectionsAcrossAllModesInPastWeek;
  self->_rejectionsAcrossAllModesInPastWeek = v25;

  [(ATXActivitySuggestionsFeedbackHistogramHelper *)self->_feedbackHistogramHelper suggestionsGivenForLockScreenSuggestionWithModeUUID:self->_modeUUID modeType:self->_modeType origin:self->_origin originAnchorType:self->_originAnchorType];
  v28 = v27;
  [(ATXActivitySuggestionsFeedbackHistogramHelper *)self->_feedbackHistogramHelper acceptancesForLockScreenSuggestionWithModeUUID:self->_modeUUID modeType:self->_modeType origin:self->_origin originAnchorType:self->_originAnchorType];
  v30 = v29;
  [(ATXActivitySuggestionsFeedbackHistogramHelper *)self->_feedbackHistogramHelper rejectionsForLockScreenSuggestionWithModeUUID:self->_modeUUID modeType:self->_modeType origin:self->_origin originAnchorType:self->_originAnchorType];
  v32 = v31;
  v33 = [MEMORY[0x277CCABB0] numberWithDouble:(v30 + 1.0) / (v28 + 1.0)];
  feedbackScore = self->_feedbackScore;
  self->_feedbackScore = v33;

  v35 = [MEMORY[0x277CCABB0] numberWithDouble:v32];
  totalRejections = self->_totalRejections;
  self->_totalRejections = v35;

  v37 = [MEMORY[0x277CCABB0] numberWithDouble:v28 - v30 - v32];
  totalIgnores = self->_totalIgnores;
  self->_totalIgnores = v37;

  v39 = [MEMORY[0x277CCABB0] numberWithDouble:v28];
  timesShown = self->_timesShown;
  self->_timesShown = v39;

  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(&v65, 8);
  _Block_object_dispose(&v69, 8);
  _Block_object_dispose(&v73, 8);
}

BOOL __50__ATXModeSuggestionScorer__populateFeedbackScores__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBody];
  v3 = [v2 location] == 1;

  return v3;
}

void __50__ATXModeSuggestionScorer__populateFeedbackScores__block_invoke_3(void *a1, void *a2)
{
  v17 = a2;
  v3 = [v17 eventBody];
  v4 = a1[4];
  v5 = [v3 activity];
  LODWORD(v4) = [v4 _isSameActivityAndSource:v5];

  if (!v4)
  {
    v6 = MEMORY[0x277CBEAA8];
    [v17 timestamp];
    v7 = [v6 dateWithTimeIntervalSinceReferenceDate:?];
    if ([v3 eventType] == 3)
    {
      *(*(a1[8] + 8) + 24) = *(*(a1[8] + 8) + 24) + 1.0;
      v8 = [v7 earlierDate:a1[5]];
      v9 = a1[5];

      if (v8 != v9)
      {
        goto LABEL_15;
      }

      v10 = 9;
    }

    else
    {
      if ([v3 eventType])
      {
        goto LABEL_15;
      }

      *(*(a1[10] + 8) + 24) = *(*(a1[10] + 8) + 24) + 1.0;
      v15 = [v7 earlierDate:a1[5]];
      v16 = a1[5];

      if (v15 != v16)
      {
        goto LABEL_15;
      }

      v10 = 11;
    }

    v14 = a1[v10];
    goto LABEL_14;
  }

  if ([v3 eventType] == 3)
  {
    *(*(a1[6] + 8) + 24) = *(*(a1[6] + 8) + 24) + 1.0;
    goto LABEL_16;
  }

  if (![v3 eventType])
  {
    v11 = MEMORY[0x277CBEAA8];
    [v17 timestamp];
    v7 = [v11 dateWithTimeIntervalSinceReferenceDate:?];
    v12 = [v7 earlierDate:a1[5]];
    v13 = a1[5];

    if (v12 == v13)
    {
      v14 = a1[7];
LABEL_14:
      *(*(v14 + 8) + 24) = *(*(v14 + 8) + 24) + 1.0;
    }

LABEL_15:
  }

LABEL_16:
}

- (id)_lockScreenSuggestionThresholds
{
  v3 = [MEMORY[0x277CEB3C0] dictionaryForClass:objc_opt_class()];
  v4 = [v3 objectForKeyedSubscript:@"lockScreenSuggestionThresholds"];
  if ([(ATXModeSuggestionScorer *)self isModeConfigured])
  {
    v5 = @"modeIsConfiguredThresholds";
  }

  else
  {
    v5 = @"modeIsNotConfiguredThresholds";
  }

  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

@end