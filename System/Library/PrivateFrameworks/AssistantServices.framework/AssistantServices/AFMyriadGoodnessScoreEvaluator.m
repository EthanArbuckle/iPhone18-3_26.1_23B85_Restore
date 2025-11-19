@interface AFMyriadGoodnessScoreEvaluator
- (AFMyriadGoodnessScoreEvaluator)initWithDeviceInstanceContext:(id)a3 preferences:(id)a4 queue:(id)a5 instrumentation:(id)a6;
- (id)_createSettingsConnectionIfRequired;
- (id)_readSidekickBoostsFile:(id)a3;
- (unsigned)_getRecentBump:(double)a3 ignoreAdjustedBoost:(BOOL)a4 recentlyWonBySmallAmount:(BOOL)a5;
- (unsigned)getMyriadAdjustedBoostForGoodnessScoreContext:(id)a3;
- (unsigned)getPlatformBias;
- (void)_fetchDevicePlatformBiasIfRequired;
- (void)_reloadTrialConfiguredBoostValues;
- (void)_settingsConnectionDidDisconnect;
- (void)_updateMediaPlaybackBoost:(unsigned __int8)a3;
- (void)_updatePlatformBias:(unsigned __int8)a3;
- (void)_updateRecentSiriBoostTrialEnabled:(BOOL)a3;
- (void)_updateRecentSiriExponentialBoostDefined:(BOOL)a3 withSecondDegree:(double)a4 andFirstDegree:(double)a5 andIntercept:(double)a6;
- (void)_updateSidekickBoosts:(id)a3;
- (void)dealloc;
- (void)myriadTrialBoostsUpdated:(id)a3;
- (void)preheat;
@end

@implementation AFMyriadGoodnessScoreEvaluator

- (void)_settingsConnectionDidDisconnect
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__AFMyriadGoodnessScoreEvaluator__settingsConnectionDidDisconnect__block_invoke;
  v4[3] = &unk_1E7348A80;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __66__AFMyriadGoodnessScoreEvaluator__settingsConnectionDidDisconnect__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v3 = WeakRetained[7];
      v6 = 136315394;
      v7 = "[AFMyriadGoodnessScoreEvaluator _settingsConnectionDidDisconnect]_block_invoke";
      v8 = 2048;
      v9 = v3;
      _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s #myriad platform bias acquisition state: %ld", &v6, 0x16u);
    }

    if (WeakRetained[7] == 1)
    {
      WeakRetained[7] = 0;
      v4 = WeakRetained[9];
      WeakRetained[9] = 0;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (unsigned)getMyriadAdjustedBoostForGoodnessScoreContext:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v17 = 136315138;
    v18 = "[AFMyriadGoodnessScoreEvaluator getMyriadAdjustedBoostForGoodnessScoreContext:]";
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s #myriad", &v17, 0xCu);
  }

  os_unfair_lock_lock(&self->_scoreEvaluationLock);
  v6 = [(AFPreferences *)self->_pref myriadShouldIgnoreAdjustedBoost];
  v7 = [(AFPreferences *)self->_pref ignoreMyriadPlatformBias];
  v8 = v7;
  if (v6 && v7)
  {
    v9 = 0;
  }

  else if (v6)
  {
    v9 = [(AFMyriadGoodnessScoreEvaluator *)self getPlatformBias];
  }

  else
  {
    v10 = [v4 reasons];
    lastActivationTime = self->_lastActivationTime;
    [v4 mediaPlaybackInterruptedTime];
    v9 = -[AFMyriadGoodnessScoreEvaluator _bumpGoodnessScore:lastActivationTime:mediaPlaybackInterruptedTime:ignoreAdjustedBoost:recentlyWonBySmallAmount:](self, "_bumpGoodnessScore:lastActivationTime:mediaPlaybackInterruptedTime:ignoreAdjustedBoost:recentlyWonBySmallAmount:", v10, 0, [v4 recentlyWonBySmallAmount], lastActivationTime, v12);

    if (!v8)
    {
      v13 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v17 = 136315394;
        v18 = "[AFMyriadGoodnessScoreEvaluator getMyriadAdjustedBoostForGoodnessScoreContext:]";
        v19 = 2048;
        v20 = 0;
        _os_log_impl(&dword_1912FE000, v13, OS_LOG_TYPE_INFO, "%s #myriad payload adjusted score: %ld", &v17, 0x16u);
      }

      v9 += [(AFMyriadGoodnessScoreEvaluator *)self getPlatformBias];
    }
  }

  v14 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v17 = 136315394;
    v18 = "[AFMyriadGoodnessScoreEvaluator getMyriadAdjustedBoostForGoodnessScoreContext:]";
    v19 = 2048;
    v20 = v9;
    _os_log_impl(&dword_1912FE000, v14, OS_LOG_TYPE_INFO, "%s #myriad adjusted score: %ld", &v17, 0x16u);
  }

  if (v9 >= 0xFF)
  {
    LOBYTE(v9) = -1;
  }

  os_unfair_lock_unlock(&self->_scoreEvaluationLock);

  v15 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)preheat
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__AFMyriadGoodnessScoreEvaluator_preheat__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_reloadTrialConfiguredBoostValues
{
  v17[1] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (+[AFFeatureFlags isSCDATrialEnabled])
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__30710;
    v14 = __Block_byref_object_dispose__30711;
    v15 = [[AFSettingsConnection alloc] initWithInstanceContext:self->_deviceInstanceContext];
    [v11[5] setXPCConnectionManagementQueue:self->_queue];
    objc_initWeak(&location, self);
    v3 = v11[5];
    v17[0] = @"RECENT_SIRI_BOOST_TRIAL_ENABLE";
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v16[0] = @"RECENT_PLAYBACK_BOOST";
    v16[1] = @"HOMEPOD_BOOST";
    v16[2] = @"RECENT_SIRI_BOOST_SECOND_DEGREE_COEFF";
    v16[3] = @"RECENT_SIRI_BOOST_FIRST_DEGREE_COEFF";
    v16[4] = @"RECENT_SIRI_BOOST_INTERCEPT";
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:5];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __67__AFMyriadGoodnessScoreEvaluator__reloadTrialConfiguredBoostValues__block_invoke;
    v7[3] = &unk_1E7346610;
    objc_copyWeak(&v8, &location);
    v7[4] = &v10;
    [v3 getTrialEnables:v4 doubleFactors:v5 withCompletion:v7];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
    _Block_object_dispose(&v10, 8);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __67__AFMyriadGoodnessScoreEvaluator__reloadTrialConfiguredBoostValues__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v49 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v9)
    {
      v11 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v42 = "[AFMyriadGoodnessScoreEvaluator _reloadTrialConfiguredBoostValues]_block_invoke";
        v43 = 2112;
        v44 = v9;
        _os_log_debug_impl(&dword_1912FE000, v11, OS_LOG_TYPE_DEBUG, "%s #myriad Error loading Trial factors: %@", buf, 0x16u);
      }
    }

    else
    {
      v12 = [v7 objectForKeyedSubscript:@"RECENT_SIRI_BOOST_TRIAL_ENABLE"];
      v13 = [v12 BOOLValue];
      v40 = v12;
      if (v12)
      {
        [WeakRetained _updateRecentSiriBoostTrialEnabled:v13];
      }

      else
      {
        v14 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v42 = "[AFMyriadGoodnessScoreEvaluator _reloadTrialConfiguredBoostValues]_block_invoke";
          _os_log_debug_impl(&dword_1912FE000, v14, OS_LOG_TYPE_DEBUG, "%s #myriad Recent Siri Boost Trial Enable Not Loaded", buf, 0xCu);
        }
      }

      v15 = [v8 objectForKeyedSubscript:@"RECENT_SIRI_BOOST_SECOND_DEGREE_COEFF"];
      v16 = [v8 objectForKeyedSubscript:@"RECENT_SIRI_BOOST_FIRST_DEGREE_COEFF"];
      v17 = [v8 objectForKeyedSubscript:@"RECENT_SIRI_BOOST_INTERCEPT"];
      v18 = v17;
      if (v15)
      {
        v19 = v13;
      }

      else
      {
        v19 = 0;
      }

      if (v19 == 1 && v16 && v17)
      {
        [v15 doubleValue];
        v21 = v20;
        [v16 doubleValue];
        v23 = v22;
        [v18 doubleValue];
        v25 = v24;
        v26 = WeakRetained;
        v27 = 1;
        v28 = v21;
        v29 = v23;
      }

      else
      {
        v30 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v42 = "[AFMyriadGoodnessScoreEvaluator _reloadTrialConfiguredBoostValues]_block_invoke";
          v43 = 2112;
          v44 = v15;
          v45 = 2112;
          v46 = v16;
          v47 = 2112;
          v48 = v18;
          _os_log_debug_impl(&dword_1912FE000, v30, OS_LOG_TYPE_DEBUG, "%s #myriad Recent Siri exponential factors not loaded: %@ %@ %@", buf, 0x2Au);
        }

        v28 = 0.0;
        v29 = 0.0;
        v25 = 0.0;
        v26 = WeakRetained;
        v27 = 0;
      }

      [v26 _updateRecentSiriExponentialBoostDefined:v27 withSecondDegree:v28 andFirstDegree:v29 andIntercept:v25];
      v31 = [v8 objectForKeyedSubscript:@"RECENT_PLAYBACK_BOOST"];
      v32 = [v31 unsignedIntValue];
      if (v31 && v32 <= 0xFF)
      {
        [WeakRetained _updateMediaPlaybackBoost:v32];
      }

      else
      {
        v33 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v42 = "[AFMyriadGoodnessScoreEvaluator _reloadTrialConfiguredBoostValues]_block_invoke";
          v43 = 2112;
          v44 = v31;
          _os_log_debug_impl(&dword_1912FE000, v33, OS_LOG_TYPE_DEBUG, "%s #myriad Trial Playback Boost not loaded: %@", buf, 0x16u);
        }
      }

      if (AFIsHorseman_onceToken != -1)
      {
        dispatch_once(&AFIsHorseman_onceToken, &__block_literal_global_226);
      }

      if (AFIsHorseman_isHorseman == 1)
      {
        v34 = [v8 objectForKeyedSubscript:@"HOMEPOD_BOOST"];
        v35 = [v34 unsignedIntValue];
        if (v34 && v35 <= 0xFF)
        {
          [WeakRetained _updatePlatformBias:v35];
        }

        else
        {
          log = AFSiriLogContextConnection;
          if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v42 = "[AFMyriadGoodnessScoreEvaluator _reloadTrialConfiguredBoostValues]_block_invoke";
            v43 = 2112;
            v44 = v34;
            _os_log_debug_impl(&dword_1912FE000, log, OS_LOG_TYPE_DEBUG, "%s #myriad Trial HomePod Boost not loaded: %@", buf, 0x16u);
          }
        }
      }

      v36 = *(*(a1 + 32) + 8);
      v37 = *(v36 + 40);
      *(v36 + 40) = 0;
    }
  }

  v38 = *MEMORY[0x1E69E9840];
}

- (id)_readSidekickBoostsFile:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    if (([v4 fileExistsAtPath:v3] & 1) == 0)
    {
      v11 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v21 = "[AFMyriadGoodnessScoreEvaluator _readSidekickBoostsFile:]";
        v22 = 2112;
        v23 = v3;
        _os_log_error_impl(&dword_1912FE000, v11, OS_LOG_TYPE_ERROR, "%s Unable to find sidekick boosts plist at path %@.", buf, 0x16u);
      }

      v10 = 0;
      goto LABEL_23;
    }

    v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v3];
    if (!v5)
    {
      v12 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v21 = "[AFMyriadGoodnessScoreEvaluator _readSidekickBoostsFile:]";
        v22 = 2112;
        v23 = v3;
        _os_log_error_impl(&dword_1912FE000, v12, OS_LOG_TYPE_ERROR, "%s Unable to read sidekick boosts plist file at path %@.", buf, 0x16u);
      }

      v10 = 0;
      goto LABEL_22;
    }

    v19 = 0;
    v6 = [MEMORY[0x1E696AE40] propertyListWithData:v5 options:0 format:0 error:&v19];
    v7 = v19;
    if (v7)
    {
      v8 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v21 = "[AFMyriadGoodnessScoreEvaluator _readSidekickBoostsFile:]";
        v22 = 2112;
        v23 = v3;
        v24 = 2112;
        v25 = v7;
        _os_log_error_impl(&dword_1912FE000, v8, OS_LOG_TYPE_ERROR, "%s Unable to initialize sidekick boosts from plist file at path %@ due to error %@", buf, 0x20u);
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v6;
LABEL_21:

LABEL_22:
LABEL_23:

        goto LABEL_24;
      }

      v13 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        v16 = v13;
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        *buf = 136315394;
        v21 = "[AFMyriadGoodnessScoreEvaluator _readSidekickBoostsFile:]";
        v22 = 2112;
        v23 = v18;
        _os_log_error_impl(&dword_1912FE000, v16, OS_LOG_TYPE_ERROR, "%s Unexpected type of initialized sidekick boosts plist %@.", buf, 0x16u);
      }
    }

    v10 = 0;
    goto LABEL_21;
  }

  v9 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v21 = "[AFMyriadGoodnessScoreEvaluator _readSidekickBoostsFile:]";
    _os_log_error_impl(&dword_1912FE000, v9, OS_LOG_TYPE_ERROR, "%s _readSidekickBoostsFile: called with empty filepath", buf, 0xCu);
  }

  v10 = 0;
LABEL_24:

  v14 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)_fetchDevicePlatformBiasIfRequired
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_platformBiasAcquisitionState != 2)
  {
    if (AFIsHorseman_onceToken != -1)
    {
      dispatch_once(&AFIsHorseman_onceToken, &__block_literal_global_226);
    }

    if (AFIsHorseman_isHorseman == 1)
    {
      [(AFMyriadGoodnessScoreEvaluator *)self _updatePlatformBias:12];
    }

    self->_platformBiasAcquisitionState = 2;
  }
}

- (id)_createSettingsConnectionIfRequired
{
  dispatch_assert_queue_V2(self->_queue);
  settingsConnection = self->_settingsConnection;
  if (!settingsConnection)
  {
    v4 = [[AFSettingsConnection alloc] initWithInstanceContext:self->_deviceInstanceContext];
    v5 = self->_settingsConnection;
    self->_settingsConnection = v4;

    [(AFSettingsConnection *)self->_settingsConnection setXPCConnectionManagementQueue:self->_queue];
    [(AFSettingsConnection *)self->_settingsConnection _setDelegate:self];
    settingsConnection = self->_settingsConnection;
  }

  v6 = settingsConnection;

  return v6;
}

- (void)_updateSidekickBoosts:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315138;
    v6 = "[AFMyriadGoodnessScoreEvaluator _updateSidekickBoosts:]";
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s #myriad Error updating sidekick boosts: unsupported platform", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_updateRecentSiriExponentialBoostDefined:(BOOL)a3 withSecondDegree:(double)a4 andFirstDegree:(double)a5 andIntercept:(double)a6
{
  v27 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_scoreEvaluationLock);
  self->_isExponentialBoostDefined = a3;
  self->_recentSiriSecondDegreeCoefficient = a4;
  self->_recentSiriFirstDegreeCoefficient = a5;
  self->_recentSiriIntercept = a6;
  os_unfair_lock_unlock(&self->_scoreEvaluationLock);
  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    isExponentialBoostDefined = self->_isExponentialBoostDefined;
    recentSiriSecondDegreeCoefficient = self->_recentSiriSecondDegreeCoefficient;
    recentSiriFirstDegreeCoefficient = self->_recentSiriFirstDegreeCoefficient;
    recentSiriIntercept = self->_recentSiriIntercept;
    v17 = 136316162;
    v18 = "[AFMyriadGoodnessScoreEvaluator _updateRecentSiriExponentialBoostDefined:withSecondDegree:andFirstDegree:andIntercept:]";
    v19 = 1024;
    v20 = isExponentialBoostDefined;
    v21 = 2048;
    v22 = recentSiriSecondDegreeCoefficient;
    v23 = 2048;
    v24 = recentSiriFirstDegreeCoefficient;
    v25 = 2048;
    v26 = recentSiriIntercept;
    _os_log_impl(&dword_1912FE000, v11, OS_LOG_TYPE_INFO, "%s #myriad updated Trial recent Siri exponential boost to %du %.12f %.12f %.12f", &v17, 0x30u);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_updateRecentSiriBoostTrialEnabled:(BOOL)a3
{
  v12 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_scoreEvaluationLock);
  self->_isRecentSiriBoostTrialEnabled = a3;
  os_unfair_lock_unlock(&self->_scoreEvaluationLock);
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v6 = @"NO";
    if (self->_isRecentSiriBoostTrialEnabled)
    {
      v6 = @"YES";
    }

    v8 = 136315394;
    v9 = "[AFMyriadGoodnessScoreEvaluator _updateRecentSiriBoostTrialEnabled:]";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s #myriad updated _isRecentSiriBoostTrialEnabled to %@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_updateMediaPlaybackBoost:(unsigned __int8)a3
{
  v12 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_scoreEvaluationLock);
  self->_mediaPlaybackBoost = a3;
  os_unfair_lock_unlock(&self->_scoreEvaluationLock);
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    mediaPlaybackBoost = self->_mediaPlaybackBoost;
    v8 = 136315394;
    v9 = "[AFMyriadGoodnessScoreEvaluator _updateMediaPlaybackBoost:]";
    v10 = 1024;
    v11 = mediaPlaybackBoost;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s #myriad updated _mediaPlaybackBoost to %d", &v8, 0x12u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_updatePlatformBias:(unsigned __int8)a3
{
  v3 = a3;
  v11 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_scoreEvaluationLock);
  self->_myriadPlatformBias = v3;
  os_unfair_lock_unlock(&self->_scoreEvaluationLock);
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[AFMyriadGoodnessScoreEvaluator _updatePlatformBias:]";
    v9 = 1024;
    v10 = v3;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s #myriad updated platform bias to %d", &v7, 0x12u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (unsigned)getPlatformBias
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    myriadPlatformBias = self->_myriadPlatformBias;
    v8 = 136315394;
    v9 = "[AFMyriadGoodnessScoreEvaluator getPlatformBias]";
    v10 = 1024;
    v11 = myriadPlatformBias;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s #myriad bumping goodness score (reason: platform bias, adjusted bias: %d)", &v8, 0x12u);
  }

  if (+[AFFeatureFlags isMyriadSelfMetricsEnabled])
  {
    myriadInstrumentation = self->_myriadInstrumentation;
    if (myriadInstrumentation)
    {
      [(AFMyriadInstrumentation *)myriadInstrumentation updateBoost:1 value:self->_myriadPlatformBias];
    }
  }

  result = self->_myriadPlatformBias;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)_getRecentBump:(double)a3 ignoreAdjustedBoost:(BOOL)a4 recentlyWonBySmallAmount:(BOOL)a5
{
  v36 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v30 = 136315138;
      v31 = "[AFMyriadGoodnessScoreEvaluator _getRecentBump:ignoreAdjustedBoost:recentlyWonBySmallAmount:]";
      _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s #myriad ignoring recent event bump", &v30, 0xCu);
    }

    LOBYTE(v6) = 0;
  }

  else
  {
    v7 = a5;
    if (softLinkMKBGetDeviceLockState(0) == 3 || (v10 = 0.0, !softLinkMKBGetDeviceLockState(0)))
    {
      v11 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v30 = 136315138;
        v31 = "[AFMyriadGoodnessScoreEvaluator _getRecentBump:ignoreAdjustedBoost:recentlyWonBySmallAmount:]";
        _os_log_impl(&dword_1912FE000, v11, OS_LOG_TYPE_INFO, "%s #myriad device is unlocked, compute bump", &v30, 0xCu);
      }

      v10 = 4.0;
      if (AFCDAFaceDetection())
      {
        if (AFAccessibilitySupportsAttentionAwareFeatures())
        {
          v12 = AFSiriLogContextConnection;
          v10 = 0.0;
          if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
          {
            v30 = 136315138;
            v31 = "[AFMyriadGoodnessScoreEvaluator _getRecentBump:ignoreAdjustedBoost:recentlyWonBySmallAmount:]";
            _os_log_debug_impl(&dword_1912FE000, v12, OS_LOG_TYPE_DEBUG, "%s #myriad unlock bump is ignored due to awareness being on", &v30, 0xCu);
          }
        }
      }
    }

    v13 = [MEMORY[0x1E696AE30] processInfo];
    [v13 systemUptime];
    v15 = v14;

    v16 = v15 - a3;
    v17 = v15 - a3 + -15.0;
    if (v17 < 0.0)
    {
      v17 = 0.0;
    }

    v18 = v17 * -0.0444444455 + 8.0;
    if (v18 >= 0.0)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0.0;
    }

    if (self->_isRecentSiriBoostTrialEnabled && self->_isExponentialBoostDefined)
    {
      v20 = AFMyriadGoodnessComputeExponentialBoost(a3, v15, self->_recentSiriSecondDegreeCoefficient, self->_recentSiriFirstDegreeCoefficient, self->_recentSiriIntercept);
      v21 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v30 = 136315650;
        v31 = "[AFMyriadGoodnessScoreEvaluator _getRecentBump:ignoreAdjustedBoost:recentlyWonBySmallAmount:]";
        v32 = 2048;
        v33 = v19;
        v34 = 1024;
        *v35 = v20;
        _os_log_impl(&dword_1912FE000, v21, OS_LOG_TYPE_INFO, "%s #myriad trial exponential boost configured, replacing %f with %du", &v30, 0x1Cu);
      }

      v19 = v20;
    }

    v22 = AFSiriLogContextConnection;
    if (v7 && v19 > v10)
    {
      v23 = 0.0;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v30 = 136316162;
        v31 = "[AFMyriadGoodnessScoreEvaluator _getRecentBump:ignoreAdjustedBoost:recentlyWonBySmallAmount:]";
        v32 = 2048;
        v33 = v16;
        v34 = 2048;
        *v35 = v10;
        *&v35[8] = 2048;
        *&v35[10] = v10;
        *&v35[18] = 2048;
        *&v35[20] = v19;
        _os_log_impl(&dword_1912FE000, v22, OS_LOG_TYPE_INFO, "%s #myriad previous close win: canceling recency bump from secsAgo=%f yields %f = %f(act) + %f(siri)", &v30, 0x34u);
        v22 = AFSiriLogContextConnection;
      }
    }

    else
    {
      v23 = v19;
    }

    if (v10 >= v23)
    {
      v24 = v10;
    }

    else
    {
      v24 = v23;
    }

    v6 = v24;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v30 = 136316162;
      v31 = "[AFMyriadGoodnessScoreEvaluator _getRecentBump:ignoreAdjustedBoost:recentlyWonBySmallAmount:]";
      v32 = 2048;
      v33 = v16;
      v34 = 1024;
      *v35 = v6;
      *&v35[4] = 2048;
      *&v35[6] = v10;
      *&v35[14] = 2048;
      *&v35[16] = v23;
      _os_log_impl(&dword_1912FE000, v22, OS_LOG_TYPE_INFO, "%s #myriad bumptoGoodness secsAgo=%f yields %d = %f(act) + %f(siri)", &v30, 0x30u);
    }

    if (+[AFFeatureFlags isMyriadSelfMetricsEnabled])
    {
      myriadInstrumentation = self->_myriadInstrumentation;
      if (myriadInstrumentation)
      {
        if (v6)
        {
          if (v10 <= v23)
          {
            v26 = v23;
            v27 = 4;
          }

          else
          {
            v26 = v10;
            v27 = 2;
          }

          [(AFMyriadInstrumentation *)myriadInstrumentation updateBoost:v27 value:v26];
        }
      }
    }
  }

  v28 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)myriadTrialBoostsUpdated:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__AFMyriadGoodnessScoreEvaluator_myriadTrialBoostsUpdated___block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __59__AFMyriadGoodnessScoreEvaluator_myriadTrialBoostsUpdated___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[AFMyriadGoodnessScoreEvaluator myriadTrialBoostsUpdated:]_block_invoke";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s Trial Boosts Updated Notification", &v5, 0xCu);
  }

  result = [*(a1 + 32) _reloadTrialConfiguredBoostValues];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = AFMyriadGoodnessScoreEvaluator;
  [(AFMyriadGoodnessScoreEvaluator *)&v4 dealloc];
}

- (AFMyriadGoodnessScoreEvaluator)initWithDeviceInstanceContext:(id)a3 preferences:(id)a4 queue:(id)a5 instrumentation:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v26.receiver = self;
  v26.super_class = AFMyriadGoodnessScoreEvaluator;
  v15 = [(AFMyriadGoodnessScoreEvaluator *)&v26 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_deviceInstanceContext, a3);
    if (v12)
    {
      v17 = v12;
    }

    else
    {
      v17 = [[AFPreferences alloc] initWithInstanceContext:v16->_deviceInstanceContext];
    }

    pref = v16->_pref;
    v16->_pref = v17;

    v16->_platformBiasAcquisitionState = 0;
    objc_storeStrong(&v16->_queue, a5);
    v16->_scoreEvaluationLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v16->_myriadInstrumentation, a6);
    v16->_mediaPlaybackBoost = 7;
    v16->_isSpeakerEndpoint = 0;
    endpointModelName = v16->_endpointModelName;
    v16->_endpointModelName = 0;

    v20 = MEMORY[0x1E69E9820];
    *(&v16->_recentSiriSecondDegreeCoefficient + 6) = 0.0;
    *&v16->_isRecentSiriBoostTrialEnabled = 0;
    HIWORD(v16->_recentSiriIntercept) = 0;
    *(&v16->_recentSiriFirstDegreeCoefficient + 6) = 0.0;
    block[0] = v20;
    block[1] = 3221225472;
    block[2] = __98__AFMyriadGoodnessScoreEvaluator_initWithDeviceInstanceContext_preferences_queue_instrumentation___block_invoke;
    block[3] = &unk_1E73497C8;
    v21 = v16;
    v25 = v21;
    dispatch_async(v13, block);
    v22 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v22 addObserver:v21 selector:sel_myriadTrialBoostsUpdated_ name:@"AFMyriadTrialBoostsUpdatedNotification" object:0];
  }

  return v16;
}

uint64_t __98__AFMyriadGoodnessScoreEvaluator_initWithDeviceInstanceContext_preferences_queue_instrumentation___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _fetchDevicePlatformBiasIfRequired];
  v2 = *(a1 + 32);

  return [v2 _reloadTrialConfiguredBoostValues];
}

@end