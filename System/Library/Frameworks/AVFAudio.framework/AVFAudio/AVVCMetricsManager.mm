@interface AVVCMetricsManager
+ (id)sharedManager;
+ (void)createSharedManager;
+ (void)destroySharedManager;
+ (void)getLock;
- (AVVCMetricsManager)init;
- (BOOL)measureElapseTimeForMetric:(id)a3 block:(id)a4;
- (id)getStringDate:(id)a3;
- (id)retrieveMetrics;
- (id)retrieveProfileMetrics;
- (int)_disposeADAM;
- (int)adamAnalyzeBuffer:(AudioBufferList *)a3 numFrames:(unsigned int)a4 timeStamp:(const AudioTimeStamp *)a5 shouldAnalyze:(BOOL)a6;
- (int)disposeADAM;
- (int)resetAudioIssueDetector;
- (int)setADAMFormat:(CAStreamBasicDescription *)a3 numFrames:(unsigned int)a4;
- (int64_t)reporterID;
- (void)checkAndUpdateReporterID:(int64_t)a3;
- (void)dealloc;
- (void)logProfileMetrics:(id)a3;
- (void)logRecordAudioFormat:(CAStreamBasicDescription *)a3 reporterID:(int64_t)a4;
- (void)logRecordRoute:(id)a3 andPlaybackRoute:(id)a4 reporterID:(int64_t)a5;
- (void)resetProfileMetrics;
- (void)updateWithReporterID:(int64_t)a3;
@end

@implementation AVVCMetricsManager

+ (id)sharedManager
{
  v12 = *MEMORY[0x1E69E9840];
  if (isAudioStatisticsAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioStatisticsAvailable(void)::onceToken, &__block_literal_global_161);
  }

  if (isAudioStatisticsAvailable(void)::audioStatisticsAvailable != 1)
  {
    v4 = 0;
    goto LABEL_15;
  }

  v2 = gSharedInstance;
  if (!gSharedInstance)
  {
    if (kAVVCScope)
    {
      v3 = *kAVVCScope;
      if (!v3)
      {
LABEL_13:
        v2 = gSharedInstance;
        goto LABEL_14;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "AVVCMetricsManager.mm";
      v10 = 1024;
      v11 = 174;
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d AVVCMetricsManager: sharedInstance is nil !!!!", &v8, 0x12u);
    }

    goto LABEL_13;
  }

LABEL_14:
  v4 = v2;
LABEL_15:
  v6 = *MEMORY[0x1E69E9840];

  return v4;
}

- (int)resetAudioIssueDetector
{
  v13 = *MEMORY[0x1E69E9840];
  mAudioIssueDetector = self->mAudioIssueDetector;
  if (mAudioIssueDetector)
  {
    if (AudioIssueDetectorLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_256);
    }

    if (AudioIssueDetectorLibraryLoader(void)::libSym)
    {
      LODWORD(mAudioIssueDetector) = AudioIssueDetectorLibraryLoader(void)::libSym(mAudioIssueDetector);
      if (!mAudioIssueDetector)
      {
        goto LABEL_15;
      }
    }

    else
    {
      LODWORD(mAudioIssueDetector) = -1;
    }

    if (kAVVCScope)
    {
      v3 = *kAVVCScope;
      if (!v3)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v4 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315650;
      v8 = "AVVCMetricsManager.mm";
      v9 = 1024;
      v10 = 545;
      v11 = 1024;
      v12 = mAudioIssueDetector;
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d AudioIssueDetectorClientReset Failed: %d", &v7, 0x18u);
    }
  }

LABEL_15:
  v5 = *MEMORY[0x1E69E9840];
  return mAudioIssueDetector;
}

- (id)retrieveProfileMetrics
{
  v119 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->mProfileAVVC)
  {
    goto LABEL_52;
  }

  v3 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
  v4 = [v3 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_PrepareStart"];
  if (v4)
  {
    v5 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
    v6 = [v5 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_PrepareEnd"];

    if (!v6)
    {
      goto LABEL_6;
    }

    v7 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
    v8 = [v7 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_PrepareEnd"];
    v9 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
    v10 = [v9 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_PrepareStart"];
    [v8 timeIntervalSinceDate:v10];
    v12 = v11;

    v3 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:v12 * 1000.0];
    [v3 setObject:v13 forKey:@"AVVC_PROFILE_Delta_PrepareAPIStartEnd"];
  }

LABEL_6:
  v14 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
  v15 = [v14 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_GetPropertiesStart"];
  if (v15)
  {
    v16 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
    v17 = [v16 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_GetPropertiesEnd"];

    if (!v17)
    {
      goto LABEL_10;
    }

    v18 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
    v19 = [v18 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_GetPropertiesEnd"];
    v20 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
    v21 = [v20 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_GetPropertiesStart"];
    [v19 timeIntervalSinceDate:v21];
    v23 = v22;

    v14 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
    v24 = [MEMORY[0x1E696AD98] numberWithDouble:v23 * 1000.0];
    [v14 setObject:v24 forKey:@"AVVC_PROFILE_Delta_GetSessionPropStartEnd"];
  }

LABEL_10:
  v25 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
  v26 = [v25 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_SetSessionActiveStart"];
  if (v26)
  {
    v27 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
    v28 = [v27 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_SetSessionActiveEnd"];

    if (!v28)
    {
      goto LABEL_14;
    }

    v29 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
    v30 = [v29 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_SetSessionActiveEnd"];
    v31 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
    v32 = [v31 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_SetSessionActiveStart"];
    [v30 timeIntervalSinceDate:v32];
    v34 = v33;

    v25 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
    v35 = [MEMORY[0x1E696AD98] numberWithDouble:v34 * 1000.0];
    [v25 setObject:v35 forKey:@"AVVC_PROFILE_Delta_SetSessionActiveStartEnd"];
  }

LABEL_14:
  v36 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
  v37 = [v36 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_SetupRecordQueueStart"];
  if (v37)
  {
    v38 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
    v39 = [v38 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_SetupRecordQueueEnd"];

    if (!v39)
    {
      goto LABEL_18;
    }

    v40 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
    v41 = [v40 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_SetupRecordQueueEnd"];
    v42 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
    v43 = [v42 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_SetupRecordQueueStart"];
    [v41 timeIntervalSinceDate:v43];
    v45 = v44;

    v36 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
    v46 = [MEMORY[0x1E696AD98] numberWithDouble:v45 * 1000.0];
    [v36 setObject:v46 forKey:@"AVVC_PROFILE_Delta_SetupRecordQueueStartEnd"];
  }

LABEL_18:
  v47 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
  v48 = [v47 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_StartRecordingStart"];
  if (v48)
  {
    v49 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
    v50 = [v49 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_StartRecordingEnd"];

    if (!v50)
    {
      goto LABEL_22;
    }

    v51 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
    v52 = [v51 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_StartRecordingEnd"];
    v53 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
    v54 = [v53 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_StartRecordingStart"];
    [v52 timeIntervalSinceDate:v54];
    v56 = v55;

    v47 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
    v57 = [MEMORY[0x1E696AD98] numberWithDouble:v56 * 1000.0];
    [v47 setObject:v57 forKey:@"AVVC_PROFILE_Delta_StartRecordAPIStartEnd"];
  }

LABEL_22:
  v58 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
  v59 = [v58 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_PlayAlertStart"];
  if (v59)
  {
    v60 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
    v61 = [v60 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_PlayAlertEnd"];

    if (!v61)
    {
      goto LABEL_26;
    }

    v62 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
    v63 = [v62 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_PlayAlertEnd"];
    v64 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
    v65 = [v64 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_PlayAlertStart"];
    [v63 timeIntervalSinceDate:v65];
    v67 = v66;

    v58 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
    v68 = [MEMORY[0x1E696AD98] numberWithDouble:v67 * 1000.0];
    [v58 setObject:v68 forKey:@"AVVC_PROFILE_Delta_PlayAlertQueueStartEnd"];
  }

LABEL_26:
  v69 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
  v70 = [v69 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_RecordQueueStart"];
  if (v70)
  {
    v71 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
    v72 = [v71 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_RecordQueueEnd"];

    if (!v72)
    {
      goto LABEL_30;
    }

    v73 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
    v74 = [v73 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_RecordQueueEnd"];
    v75 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
    v76 = [v75 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_RecordQueueStart"];
    [v74 timeIntervalSinceDate:v76];
    v78 = v77;

    v69 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
    v79 = [MEMORY[0x1E696AD98] numberWithDouble:v78 * 1000.0];
    [v69 setObject:v79 forKey:@"AVVC_PROFILE_Delta_StartRecordAudioQueueStartEnd"];
  }

LABEL_30:
  v80 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
  v81 = [v80 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_RecordQueueStart"];
  if (v81)
  {
    v82 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
    v83 = [v82 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_FirstBufferReceived"];

    if (!v83)
    {
      goto LABEL_34;
    }

    v84 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
    v85 = [v84 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_FirstBufferReceived"];
    v86 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
    v87 = [v86 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_RecordQueueStart"];
    [v85 timeIntervalSinceDate:v87];
    v89 = v88;

    v80 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
    v90 = [MEMORY[0x1E696AD98] numberWithDouble:v89 * 1000.0];
    [v80 setObject:v90 forKey:@"AVVC_PROFILE_Delta_RecordAudioQueueFirstBufferDelta"];
  }

LABEL_34:
  v91 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
  v92 = [v91 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_FirstBufferReceived"];
  if (v92)
  {
    v93 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
    v94 = [v93 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_RecordQueueStart"];

    if (!v94)
    {
      goto LABEL_38;
    }

    v95 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
    v96 = [v95 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_FirstBufferReceived"];
    v97 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
    v98 = [v97 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_RecordQueueStart"];
    [v96 timeIntervalSinceDate:v98];
    v100 = v99;

    v91 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
    v101 = [MEMORY[0x1E696AD98] numberWithDouble:v100 * 1000.0];
    [v91 setObject:v101 forKey:@"AVVC_PROFILE_Delta_RecordAudioQueueFirstBufferToDelegateCallDelta"];
  }

LABEL_38:
  v102 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
  v112[0] = MEMORY[0x1E69E9820];
  v112[1] = 3221225472;
  v112[2] = __44__AVVCMetricsManager_retrieveProfileMetrics__block_invoke;
  v112[3] = &unk_1E7EF5518;
  v112[4] = v2;
  [v102 enumerateKeysAndObjectsUsingBlock:v112];

  if (!kAVVCScope)
  {
    v103 = MEMORY[0x1E69E9C10];
    v104 = MEMORY[0x1E69E9C10];
    goto LABEL_42;
  }

  v103 = *kAVVCScope;
  if (v103)
  {
LABEL_42:
    if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v114 = "AVVCMetricsManager.mm";
      v115 = 1024;
      v116 = 465;
      _os_log_impl(&dword_1BA5AC000, v103, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController PERF_INFO ####", buf, 0x12u);
    }
  }

  if (kAVVCScope)
  {
    v105 = *kAVVCScope;
    if (!v105)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v105 = MEMORY[0x1E69E9C10];
    v106 = MEMORY[0x1E69E9C10];
  }

  v107 = v105;
  if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
  {
    v108 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
    *buf = 136315650;
    v114 = "AVVCMetricsManager.mm";
    v115 = 1024;
    v116 = 466;
    v117 = 2112;
    v118 = v108;
    _os_log_impl(&dword_1BA5AC000, v107, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PROFILE %@", buf, 0x1Cu);
  }

LABEL_52:
  v109 = [(AVVCMetricsManager *)v2 avvcProfilingInfoDictionary];
  objc_sync_exit(v2);

  v110 = *MEMORY[0x1E69E9840];

  return v109;
}

- (void)resetProfileMetrics
{
  if (self->mProfileAVVC)
  {
    v2 = [(AVVCMetricsManager *)self avvcProfilingInfoDictionary];
    [v2 removeAllObjects];
  }
}

- (int)disposeADAM
{
  mWorkQueue = self->mWorkQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__AVVCMetricsManager_disposeADAM__block_invoke;
  block[3] = &unk_1E7EF6628;
  block[4] = self;
  dispatch_async(mWorkQueue, block);
  return 0;
}

void __33__AVVCMetricsManager_disposeADAM__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2[4] != 561211748)
  {
    [v2 _disposeADAM];
  }

  if (kAVVCScope)
  {
    v3 = *kAVVCScope;
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "AVVCMetricsManager.mm";
    v10 = 1024;
    v11 = 638;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Releasing OS Transaction for ADAMSiriSession", &v8, 0x12u);
  }

LABEL_10:
  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = *MEMORY[0x1E69E9840];
}

- (int)_disposeADAM
{
  v15 = *MEMORY[0x1E69E9840];
  mAudioDataAnalysisSiriSession = self->mAudioDataAnalysisSiriSession;
  if (AudioDataAnalysisManagerLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioDataAnalysisManagerLibraryLoader(void)::once, &__block_literal_global_278);
  }

  if (AudioDataAnalysisManagerLibraryLoader(void)::libSym)
  {
    v4 = AudioDataAnalysisManagerLibraryLoader(void)::libSym(mAudioDataAnalysisSiriSession);
    if (!v4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v4 = 560033897;
  }

  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v9 = 136315650;
    v10 = "AVVCMetricsManager.mm";
    v11 = 1024;
    v12 = 623;
    v13 = 1024;
    v14 = v4;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d ADAMClientDispose Failed %d", &v9, 0x18u);
  }

LABEL_14:
  self->mAudioDataAnalysisSiriSession = 561211748;
  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)logProfileMetrics:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->mProfileAVVC)
  {
    if (kAVVCScope)
    {
      v5 = *kAVVCScope;
      if (!v5)
      {
LABEL_9:
        v7 = [(AVVCMetricsManager *)self avvcProfilingInfoDictionary];
        v8 = [MEMORY[0x1E695DF00] date];
        [v7 setObject:v8 forKey:v4];

        goto LABEL_10;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315650;
      v11 = "AVVCMetricsManager.mm";
      v12 = 1024;
      v13 = 732;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Logging PROFILE METRIC : %@", &v10, 0x1Cu);
    }

    goto LABEL_9;
  }

LABEL_10:

  v9 = *MEMORY[0x1E69E9840];
}

- (void)logRecordRoute:(id)a3 andPlaybackRoute:(id)a4 reporterID:(int64_t)a5
{
  v13[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v12[0] = @"avvcRecordRoute";
  v12[1] = @"avvcPlaybackRoute";
  v13[0] = v8;
  v13[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  if (self->mMetricsReporter)
  {
    [(AVVCMetricsManager *)self checkAndUpdateReporterID:a5];
    [(CAReporter *)self->mMetricsReporter sendMessage:v10 category:6 type:5];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)logRecordAudioFormat:(CAStreamBasicDescription *)a3 reporterID:(int64_t)a4
{
  v14[4] = *MEMORY[0x1E69E9840];
  v13[0] = @"avvcSampleRate";
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:a3->var0];
  v14[0] = v7;
  v13[1] = @"avvcBitDepth";
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a3->var7];
  v14[1] = v8;
  v13[2] = @"avvcChannels";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a3->var6];
  v14[2] = v9;
  v13[3] = @"avvcFormatID";
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a3->var1];
  v14[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];

  if (self->mMetricsReporter)
  {
    [(AVVCMetricsManager *)self checkAndUpdateReporterID:a4];
    [(CAReporter *)self->mMetricsReporter sendMessage:v11 category:2 type:5];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (int)adamAnalyzeBuffer:(AudioBufferList *)a3 numFrames:(unsigned int)a4 timeStamp:(const AudioTimeStamp *)a5 shouldAnalyze:(BOOL)a6
{
  v9 = *MEMORY[0x1E69E9840];
  if (a6 && self->mAudioDataAnalysisSiriSession != 561211748)
  {
    if (AudioDataAnalysisManagerLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioDataAnalysisManagerLibraryLoader(void)::once, &__block_literal_global_278);
    }

    v6 = 560033897;
    if (AudioDataAnalysisManagerLibraryLoader(void)::libSym)
    {
      v6 = AudioDataAnalysisManagerLibraryLoader(void)::libSym();
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (int)setADAMFormat:(CAStreamBasicDescription *)a3 numFrames:(unsigned int)a4
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v7 = [(CAReporter *)self->mMetricsReporter reporterID];
  v23 = v7;
  if (v7)
  {
    std::vector<long long>::push_back[abi:ne200100](&v24, &v23);
    v9 = v24;
    v8 = v25;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  mWorkQueue = self->mWorkQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3321888768;
  v14[2] = __46__AVVCMetricsManager_setADAMFormat_numFrames___block_invoke;
  v14[3] = &unk_1F384DA08;
  v14[4] = self;
  __p = 0;
  v16 = 0;
  v17 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, v9, v8, (v8 - v9) >> 3);
  v14[5] = &v27;
  v18 = v7;
  v11 = *&a3->var3;
  v19 = *&a3->var0;
  v20 = v11;
  v21 = *&a3->var7;
  v22 = a4;
  dispatch_async(mWorkQueue, v14);
  v12 = *(v28 + 6);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    operator delete(v9);
  }

  _Block_object_dispose(&v27, 8);
  return v12;
}

void __46__AVVCMetricsManager_setADAMFormat_numFrames___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  if (AudioDataAnalysisManagerLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioDataAnalysisManagerLibraryLoader(void)::once, &__block_literal_global_278);
  }

  if (AudioDataAnalysisManagerLibraryLoader(void)::libSym)
  {
    v2 = AudioDataAnalysisManagerLibraryLoader(void)::libSym(4, a1 + 48);
  }

  else
  {
    v2 = 560033897;
  }

  *(*(a1 + 32) + 32) = v2;
  v3 = *(*(a1 + 32) + 32);
  if (v3 != 561211748)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "avvc-recordQueue");
    v5 = *(a1 + 120);
    if (AudioDataAnalysisManagerLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioDataAnalysisManagerLibraryLoader(void)::once, &__block_literal_global_278);
    }

    v6 = 560033897;
    v7 = 560033897;
    if (AudioDataAnalysisManagerLibraryLoader(void)::libSym)
    {
      v7 = AudioDataAnalysisManagerLibraryLoader(void)::libSym(v3, 0, __p, a1 + 80, v5, 0);
    }

    *(*(*(a1 + 40) + 8) + 24) = v7;
    if (SHIBYTE(v27) < 0)
    {
      operator delete(*__p);
    }

    if (*(*(*(a1 + 40) + 8) + 24))
    {
      if (kAVVCScope)
      {
        v8 = *kAVVCScope;
        if (!v8)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v8 = MEMORY[0x1E69E9C10];
        v13 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v14 = *(*(*(a1 + 40) + 8) + 24);
        *__p = 136315650;
        *&__p[4] = "AVVCMetricsManager.mm";
        v24 = 1024;
        v25 = 574;
        v26 = 1024;
        v27 = v14;
        _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d ADAMClientCreateNodePCM returned error %d", __p, 0x18u);
      }

LABEL_35:

LABEL_36:
      [*(a1 + 32) _disposeADAM];
      goto LABEL_49;
    }

    v12 = *(*(a1 + 32) + 32);
    if (AudioDataAnalysisManagerLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioDataAnalysisManagerLibraryLoader(void)::once, &__block_literal_global_278);
    }

    if (AudioDataAnalysisManagerLibraryLoader(void)::libSym)
    {
      v6 = AudioDataAnalysisManagerLibraryLoader(void)::libSym(v12);
    }

    *(*(*(a1 + 40) + 8) + 24) = v6;
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      if (kAVVCScope)
      {
        v8 = *kAVVCScope;
        if (!v8)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v8 = MEMORY[0x1E69E9C10];
        v16 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v17 = *(*(*(a1 + 40) + 8) + 24);
        *__p = 136315650;
        *&__p[4] = "AVVCMetricsManager.mm";
        v24 = 1024;
        v25 = 580;
        v26 = 1024;
        v27 = v17;
        _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d ADAMClientInitialize returned error %d", __p, 0x18u);
      }

      goto LABEL_35;
    }

    if (kAVVCScope)
    {
      v15 = *kAVVCScope;
      if (!v15)
      {
LABEL_48:
        v19 = os_transaction_create();
        v20 = *(a1 + 32);
        v21 = *(v20 + 40);
        *(v20 + 40) = v19;

        goto LABEL_49;
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
      v18 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 136315394;
      *&__p[4] = "AVVCMetricsManager.mm";
      v24 = 1024;
      v25 = 584;
      _os_log_impl(&dword_1BA5AC000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Acquiring an OS Transaction for ADAMSiriSession", __p, 0x12u);
    }

    goto LABEL_48;
  }

  if (kAVVCScope)
  {
    v4 = *kAVVCScope;
    if (!v4)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = *(*(*(a1 + 40) + 8) + 24);
    v11 = *(a1 + 72);
    *__p = 136315906;
    *&__p[4] = "AVVCMetricsManager.mm";
    v24 = 1024;
    v25 = 569;
    v26 = 1024;
    v27 = v10;
    v28 = 2048;
    v29 = v11;
    _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: %d. Failed to create ADAM SiriSession with reporterID: %lld", __p, 0x22u);
  }

LABEL_49:
  v22 = *MEMORY[0x1E69E9840];
}

- (BOOL)measureElapseTimeForMetric:(id)a3 block:(id)a4
{
  v33[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = mach_absolute_time();
  v9 = v7[2](v7);
  v10 = mach_absolute_time();
  v11 = __udivti3();
  if (v10 >= v8)
  {
    v12 = v11;
  }

  else
  {
    v12 = -v11;
  }

  v13 = self;
  objc_sync_enter(v13);
  v32[0] = @"BeginHostTime";
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v8];
  v33[0] = v14;
  v32[1] = @"EndHostTime";
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v10];
  v16 = v12 / 1000000.0;
  v33[1] = v15;
  v32[2] = @"DurationMilliSeconds";
  v17 = [MEMORY[0x1E696AD98] numberWithDouble:v16];
  v33[2] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:3];

  v19 = [(AVVCMetricsManager *)v13 publicMetrics];
  [v19 setObject:v18 forKey:v6];

  objc_sync_exit(v13);
  if (kAVVCScope)
  {
    v20 = *kAVVCScope;
    if (!v20)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v20 = MEMORY[0x1E69E9C10];
    v21 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v24 = 136315906;
    v25 = "AVVCMetricsManager.mm";
    v26 = 1024;
    v27 = 490;
    v28 = 2112;
    v29 = v6;
    v30 = 2048;
    v31 = v16;
    _os_log_impl(&dword_1BA5AC000, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d Measuring Elapsed Time for %@ : %f ms", &v24, 0x26u);
  }

LABEL_11:
  v22 = *MEMORY[0x1E69E9840];
  return v9;
}

void __44__AVVCMetricsManager_retrieveProfileMetrics__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [*(a1 + 32) avvcProfilingInfoDictionary];
    v7 = [*(a1 + 32) getStringDate:v5];
    [v6 setObject:v7 forKey:v8];
  }
}

- (id)getStringDate:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v5 = [MEMORY[0x1E695DFE8] localTimeZone];
  [v4 setTimeZone:v5];

  [v4 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSSSSSZZZZZ"];
  v6 = [v4 stringFromDate:v3];

  return v6;
}

- (id)retrieveMetrics
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = MEMORY[0x1E695DF20];
  v4 = [(AVVCMetricsManager *)v2 publicMetrics];
  v5 = [v3 dictionaryWithDictionary:v4];

  objc_sync_exit(v2);

  return v5;
}

- (int64_t)reporterID
{
  v12 = *MEMORY[0x1E69E9840];
  mMetricsReporter = self->mMetricsReporter;
  if (!mMetricsReporter)
  {
    if (kAVVCScope)
    {
      v5 = *kAVVCScope;
      if (!v5)
      {
LABEL_12:
        v7 = *MEMORY[0x1E69E9840];
        return 0;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "AVVCMetricsManager.mm";
      v10 = 1024;
      v11 = 369;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d CAReporter object is nil", &v8, 0x12u);
    }

    goto LABEL_12;
  }

  v3 = *MEMORY[0x1E69E9840];

  return [(CAReporter *)mMetricsReporter reporterID];
}

- (void)checkAndUpdateReporterID:(int64_t)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (IsMetricsOwnedByAVVC(void)::onceToken != -1)
  {
    dispatch_once(&IsMetricsOwnedByAVVC(void)::onceToken, &__block_literal_global_209);
  }

  if ((IsMetricsOwnedByAVVC(void)::owned & 1) == 0 && [(CAReporter *)self->mMetricsReporter reporterID]<= 1)
  {
    if (kAVVCScope)
    {
      v5 = *kAVVCScope;
      if (!v5)
      {
LABEL_12:
        if (a3)
        {
          [(CAReporter *)self->mMetricsReporter updateWithReporterID:a3];
          v7 = [(AVVCMetricsManager *)self publicMetrics];
          v8 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
          [v7 setObject:v8 forKey:@"avvcReporterID"];
        }

        goto LABEL_14;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "AVVCMetricsManager.mm";
      v12 = 1024;
      v13 = 348;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d CAReporter reporterID is Invalid", &v10, 0x12u);
    }

    goto LABEL_12;
  }

LABEL_14:
  v9 = *MEMORY[0x1E69E9840];
}

- (void)updateWithReporterID:(int64_t)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v18 = a3;
  if (IsMetricsOwnedByAVVC(void)::onceToken != -1)
  {
    dispatch_once(&IsMetricsOwnedByAVVC(void)::onceToken, &__block_literal_global_209);
  }

  if ((IsMetricsOwnedByAVVC(void)::owned & 1) == 0)
  {
    if (!a3)
    {
      memset(buf, 0, 24);
      goto LABEL_14;
    }

    v5 = [(AVVCMetricsManager *)self publicMetrics];
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
    [v5 setObject:v6 forKey:@"avvcReporterID"];

    [(CAReporter *)self->mMetricsReporter updateWithReporterID:a3];
    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
LABEL_13:
        memset(buf, 0, 24);
        std::vector<long long>::push_back[abi:ne200100](buf, &v18);
LABEL_14:
        mAudioIssueDetector = self->mAudioIssueDetector;
        if (!mAudioIssueDetector)
        {
          goto LABEL_28;
        }

        if (AudioIssueDetectorLibraryLoader(void)::once != -1)
        {
          dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_256);
        }

        if (AudioIssueDetectorLibraryLoader(void)::libSym)
        {
          v10 = AudioIssueDetectorLibraryLoader(void)::libSym(mAudioIssueDetector, buf);
          if (!v10)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v10 = -1;
        }

        if (kAVVCScope)
        {
          v11 = *kAVVCScope;
          if (!v11)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v11 = MEMORY[0x1E69E9C10];
          v12 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *v19 = 136315650;
          v20 = "AVVCMetricsManager.mm";
          v21 = 1024;
          v22 = 329;
          v23 = 1024;
          v24 = v10;
          _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d AudioIssueDetectorClientUpdateReportingSessions returned error %d", v19, 0x18u);
        }

LABEL_28:
        mAudioDataAnalysisSiriSession = self->mAudioDataAnalysisSiriSession;
        if (mAudioDataAnalysisSiriSession == 561211748)
        {
          goto LABEL_42;
        }

        if (AudioDataAnalysisManagerLibraryLoader(void)::once != -1)
        {
          dispatch_once(&AudioDataAnalysisManagerLibraryLoader(void)::once, &__block_literal_global_278);
        }

        if (AudioDataAnalysisManagerLibraryLoader(void)::libSym)
        {
          v14 = AudioDataAnalysisManagerLibraryLoader(void)::libSym(mAudioDataAnalysisSiriSession, buf);
          if (!v14)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v14 = 560033897;
        }

        if (kAVVCScope)
        {
          v15 = *kAVVCScope;
          if (!v15)
          {
LABEL_42:
            if (*buf)
            {
              *&buf[8] = *buf;
              operator delete(*buf);
            }

            goto LABEL_44;
          }
        }

        else
        {
          v15 = MEMORY[0x1E69E9C10];
          v16 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *v19 = 136315650;
          v20 = "AVVCMetricsManager.mm";
          v21 = 1024;
          v22 = 335;
          v23 = 1024;
          v24 = v14;
          _os_log_impl(&dword_1BA5AC000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d ADAMClientUpdateReportingSessions returned error %d", v19, 0x18u);
        }

        goto LABEL_42;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "AVVCMetricsManager.mm";
      *&buf[12] = 1024;
      *&buf[14] = 321;
      *&buf[18] = 2048;
      *&buf[20] = a3;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCMetricsManager: UpdateWithReporterID: %lld", buf, 0x1Cu);
    }

    goto LABEL_13;
  }

LABEL_44:
  v17 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v17 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    v3 = *kAVVCScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "AVVCMetricsManager.mm";
    v15 = 1024;
    v16 = 281;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCMetricsManager: dealloc", buf, 0x12u);
  }

LABEL_8:
  mMetricsReporter = self->mMetricsReporter;
  if (mMetricsReporter)
  {
    [(CAReporter *)mMetricsReporter stop];
    v6 = self->mMetricsReporter;
    self->mMetricsReporter = 0;
  }

  mAudioIssueDetector = self->mAudioIssueDetector;
  if (mAudioIssueDetector)
  {
    if (AudioIssueDetectorLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_256);
    }

    if (AudioIssueDetectorLibraryLoader(void)::libSym)
    {
      AudioIssueDetectorLibraryLoader(void)::libSym(mAudioIssueDetector);
    }
  }

  mAudioDataAnalysisSiriSession = self->mAudioDataAnalysisSiriSession;
  if (mAudioDataAnalysisSiriSession != 561211748)
  {
    if (AudioDataAnalysisManagerLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioDataAnalysisManagerLibraryLoader(void)::once, &__block_literal_global_278);
    }

    if (AudioDataAnalysisManagerLibraryLoader(void)::libSym)
    {
      AudioDataAnalysisManagerLibraryLoader(void)::libSym(mAudioDataAnalysisSiriSession);
    }

    self->mAudioDataAnalysisSiriSession = 561211748;
  }

  mWorkQueue = self->mWorkQueue;
  if (mWorkQueue)
  {
    self->mWorkQueue = 0;
  }

  mADAMTransaction = self->mADAMTransaction;
  if (mADAMTransaction)
  {
    self->mADAMTransaction = 0;
  }

  [(AVVCMetricsManager *)self setPublicMetrics:0];
  [(AVVCMetricsManager *)self setAvvcProfilingInfoDictionary:0];
  v12.receiver = self;
  v12.super_class = AVVCMetricsManager;
  [(AVVCMetricsManager *)&v12 dealloc];
  v11 = *MEMORY[0x1E69E9840];
}

- (AVVCMetricsManager)init
{
  v58[3] = *MEMORY[0x1E69E9840];
  if (isAudioStatisticsAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioStatisticsAvailable(void)::onceToken, &__block_literal_global_161);
  }

  if (isAudioStatisticsAvailable(void)::audioStatisticsAvailable)
  {
    v47.receiver = self;
    v47.super_class = AVVCMetricsManager;
    v3 = [(AVVCMetricsManager *)&v47 init];
    if (!v3)
    {
LABEL_68:
      self = v3;
      v12 = self;
      goto LABEL_69;
    }

    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v3 setPublicMetrics:v4];

    v5 = [v3 publicMetrics];
    v57[0] = @"BeginHostTime";
    v57[1] = @"EndHostTime";
    v58[0] = &unk_1F385A288;
    v58[1] = &unk_1F385A288;
    v57[2] = @"DurationMilliSeconds";
    v58[2] = &unk_1F385A288;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:3];
    [v5 setObject:v6 forKey:@"SetSessionActiveTime"];

    v7 = [v3 publicMetrics];
    v55[0] = @"BeginHostTime";
    v55[1] = @"EndHostTime";
    v56[0] = &unk_1F385A288;
    v56[1] = &unk_1F385A288;
    v55[2] = @"DurationMilliSeconds";
    v56[2] = &unk_1F385A288;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:3];
    [v7 setObject:v8 forKey:@"SetSessionInactiveTime"];

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v3 setAvvcProfilingInfoDictionary:v9];

    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"profile_avvc", @"com.apple.avfoundation.avvc", 0);
    v3[48] = AppBooleanValue != 0;
    if (AppBooleanValue)
    {
      if (kAVVCScope)
      {
        v11 = *kAVVCScope;
        if (!v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v11 = MEMORY[0x1E69E9C10];
        v14 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AVVCMetricsManager.mm";
        *&buf[12] = 1024;
        *&buf[14] = 213;
        _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Profiling AVVC NOW.", buf, 0x12u);
      }
    }

LABEL_20:
    *(v3 + 24) = xmmword_1BA6CF3B0;
    v15 = *(v3 + 5);
    *(v3 + 5) = 0;

    if (IsMetricsOwnedByAVVC(void)::onceToken != -1)
    {
      dispatch_once(&IsMetricsOwnedByAVVC(void)::onceToken, &__block_literal_global_209);
    }

    if ((IsMetricsOwnedByAVVC(void)::owned & 1) == 0)
    {
      v27 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
      v28 = dispatch_queue_create("AVVCMetricsManager Work Queue", v27);
      v29 = *(v3 + 1);
      *(v3 + 1) = v28;

      v30 = [objc_alloc(MEMORY[0x1E69E4FE8]) initWithReporterID:1 serviceType:1];
      v31 = *(v3 + 2);
      *(v3 + 2) = v30;

      memset(buf, 0, 24);
      if (AudioIssueDetectorLibraryLoader(void)::once != -1)
      {
        dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_256);
      }

      if (AudioIssueDetectorLibraryLoader(void)::libSym)
      {
        v32 = AudioIssueDetectorLibraryLoader(void)::libSym(4, buf);
        *(v3 + 3) = v32;
        if (v32)
        {
          goto LABEL_61;
        }
      }

      else
      {
        *(v3 + 3) = 0;
      }

      if (kAVVCScope)
      {
        v34 = *kAVVCScope;
        if (!v34)
        {
LABEL_61:
          if (*buf)
          {
            *&buf[8] = *buf;
            operator delete(*buf);
          }

          goto LABEL_67;
        }
      }

      else
      {
        v34 = MEMORY[0x1E69E9C10];
        v41 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *v51 = 136315394;
        v52 = "AVVCMetricsManager.mm";
        v53 = 1024;
        v54 = 231;
        _os_log_impl(&dword_1BA5AC000, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create AudioIssueDetector.", v51, 0x12u);
      }

      goto LABEL_61;
    }

    v16 = [objc_alloc(MEMORY[0x1E69E4FE8]) initWithNewReporterID];
    v17 = *(v3 + 2);
    *(v3 + 2) = v16;

    v18 = *(v3 + 2);
    if (!v18)
    {
      if (kAVVCScope)
      {
        v33 = *kAVVCScope;
        if (!v33)
        {
LABEL_67:
          [v3 setVoiceTriggerStartHostTime:0];
          [v3 setCallToStartRecordHostTime:0];
          goto LABEL_68;
        }
      }

      else
      {
        v33 = MEMORY[0x1E69E9C10];
        v43 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "AVVCMetricsManager.mm";
        *&buf[12] = 1024;
        *&buf[14] = 239;
        _os_log_impl(&dword_1BA5AC000, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d Unable to create a CAReporter", buf, 0x12u);
      }

      goto LABEL_67;
    }

    [v18 setServiceType:1];
    v19 = *(v3 + 2);
    v49 = *MEMORY[0x1E69E4FE0];
    v20 = [MEMORY[0x1E696AAE8] mainBundle];
    v21 = [v20 bundleIdentifier];
    v50 = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    [v19 setConfiguration:v22];

    v23 = [*(v3 + 2) reporterID];
    v46 = v23;
    v24 = [v3 publicMetrics];
    v25 = [MEMORY[0x1E696AD98] numberWithLongLong:v23];
    [v24 setObject:v25 forKey:@"avvcReporterID"];

    if (kAVVCScope)
    {
      v26 = *kAVVCScope;
      if (!v26)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v26 = MEMORY[0x1E69E9C10];
      v35 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "AVVCMetricsManager.mm";
      *&buf[12] = 1024;
      *&buf[14] = 255;
      *&buf[18] = 2048;
      *&buf[20] = v23;
      _os_log_impl(&dword_1BA5AC000, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Created a reporter with id(%lld)", buf, 0x1Cu);
    }

LABEL_43:
    v36 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v37 = dispatch_queue_create("AVVCMetricsManager Work Queue", v36);
    v38 = *(v3 + 1);
    *(v3 + 1) = v37;

    memset(buf, 0, 24);
    std::vector<long long>::push_back[abi:ne200100](buf, &v46);
    if (AudioIssueDetectorLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_256);
    }

    if (AudioIssueDetectorLibraryLoader(void)::libSym)
    {
      v39 = AudioIssueDetectorLibraryLoader(void)::libSym(4, buf);
      *(v3 + 3) = v39;
      if (v39)
      {
LABEL_60:
        [*(v3 + 2) start];
        goto LABEL_61;
      }
    }

    else
    {
      *(v3 + 3) = 0;
    }

    if (kAVVCScope)
    {
      v40 = *kAVVCScope;
      if (!v40)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v40 = MEMORY[0x1E69E9C10];
      v42 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *v51 = 136315394;
      v52 = "AVVCMetricsManager.mm";
      v53 = 1024;
      v54 = 263;
      _os_log_impl(&dword_1BA5AC000, v40, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create AudioIssueDetector.", v51, 0x12u);
    }

    goto LABEL_60;
  }

  if (kAVVCScope)
  {
    v12 = *kAVVCScope;
    if (!v12)
    {
      goto LABEL_69;
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
    v13 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(&v12->super, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "AVVCMetricsManager.mm";
    *&buf[12] = 1024;
    *&buf[14] = 183;
    _os_log_impl(&dword_1BA5AC000, &v12->super, OS_LOG_TYPE_ERROR, "%25s:%-5d AVVCMetricsManager not supported on this platform", buf, 0x12u);
  }

  v12 = 0;
LABEL_69:

  v44 = *MEMORY[0x1E69E9840];
  return v12;
}

+ (void)destroySharedManager
{
  v17 = *MEMORY[0x1E69E9840];
  if (isAudioStatisticsAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioStatisticsAvailable(void)::onceToken, &__block_literal_global_161);
  }

  if (isAudioStatisticsAvailable(void)::audioStatisticsAvailable)
  {
    v2 = +[AVVCMetricsManager getLock];
    v3 = v2;
    if (v2)
    {
      v4 = (*(*v2 + 16))(v2);
    }

    else
    {
      v4 = 0;
    }

    --gReferenceCount;
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
LABEL_21:
        if (!gReferenceCount)
        {
          v9 = gSharedInstance;
          gSharedInstance = 0;
        }

        if (v4)
        {
          (*(*v3 + 24))(v3);
        }

        goto LABEL_25;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315650;
      v12 = "AVVCMetricsManager.mm";
      v13 = 1024;
      v14 = 152;
      v15 = 2048;
      v16 = gReferenceCount;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCMetricsManager: destroySharedManager : referenceCount after decrementing = %llu", &v11, 0x1Cu);
    }

    goto LABEL_21;
  }

  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v11 = 136315394;
    v12 = "AVVCMetricsManager.mm";
    v13 = 1024;
    v14 = 138;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d AVVCMetricsManager not supported on this platform", &v11, 0x12u);
  }

LABEL_25:
  v10 = *MEMORY[0x1E69E9840];
}

+ (void)createSharedManager
{
  v18 = *MEMORY[0x1E69E9840];
  if (isAudioStatisticsAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioStatisticsAvailable(void)::onceToken, &__block_literal_global_161);
  }

  if (isAudioStatisticsAvailable(void)::audioStatisticsAvailable)
  {
    v2 = +[AVVCMetricsManager getLock];
    v3 = v2;
    if (v2)
    {
      v4 = (*(*v2 + 16))(v2);
    }

    else
    {
      v4 = 0;
    }

    if (!gSharedInstance)
    {
      v6 = objc_alloc_init(AVVCMetricsManager);
      v7 = gSharedInstance;
      gSharedInstance = v6;
    }

    ++gReferenceCount;
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
LABEL_23:
        if (v4)
        {
          (*(*v3 + 24))(v3);
        }

        goto LABEL_25;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v13 = "AVVCMetricsManager.mm";
      v14 = 1024;
      v15 = 131;
      v16 = 2048;
      v17 = gReferenceCount;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCMetricsManager: createSharedManager: referenceCount after incrementing = %llu", buf, 0x1Cu);
    }

    goto LABEL_23;
  }

  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v13 = "AVVCMetricsManager.mm";
    v14 = 1024;
    v15 = 114;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d AVVCMetricsManager not supported on this platform", buf, 0x12u);
  }

LABEL_25:
  v11 = *MEMORY[0x1E69E9840];
}

+ (void)getLock
{
  if (gOnceLockToken != -1)
  {
    dispatch_once(&gOnceLockToken, &__block_literal_global_2544);
  }

  return gMutex;
}

@end