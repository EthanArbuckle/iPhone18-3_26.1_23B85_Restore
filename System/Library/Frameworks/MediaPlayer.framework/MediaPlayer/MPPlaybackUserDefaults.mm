@interface MPPlaybackUserDefaults
+ (MPPlaybackUserDefaults)standardUserDefaults;
- (BOOL)allowScreenRecording;
- (BOOL)archiveSessionArtwork;
- (BOOL)areTransitionsEnabledForUserWithCatalogPlaybackCapability:(BOOL)capability;
- (BOOL)autoPlayEnabledForUserIdentity:(id)identity;
- (BOOL)disableAssetCaching;
- (BOOL)disableAudioAnalysis;
- (BOOL)disableAudioProcessing;
- (BOOL)disableHLSAssetCaching;
- (BOOL)disableMiniSINF;
- (BOOL)disablePeriodicStateRestore;
- (BOOL)disableQHO;
- (BOOL)disableStateRestoration;
- (BOOL)forceDisableUpNext;
- (BOOL)forceLibrarySupplementalContexts;
- (BOOL)forceMusicResolution;
- (BOOL)ignoreDisableUpNext;
- (BOOL)includeContentItemDebugFields;
- (BOOL)isProcessTapEnabled;
- (BOOL)prerollEnabled;
- (BOOL)shouldBypassVocalAttenuationDenoising;
- (BOOL)shouldBypassVocalAttenuationSupportFlag;
- (BOOL)shouldPurgeSideLoadedVocalAttenuationModels;
- (BOOL)shouldRecordVocalAttenuationStatistics;
- (BOOL)shouldSkipNextStateRestoration;
- (BOOL)shouldUseRemoteVocalAttenuationModel;
- (BOOL)shouldUseSideLoadedVocalAttenuationModel;
- (BOOL)showDebugUI;
- (BOOL)sonicHijack;
- (BOOL)speakerRouteEnabled;
- (BOOL)vocalAttenuationLogInputAndOuputRMSValues;
- (MPPlaybackEQSetting)musicEQSetting;
- (NSDictionary)rewrittenAssetInfo;
- (NSNumber)delayAssetLoadDuration;
- (NSNumber)delayQueueLoadDuration;
- (NSNumber)forcedIntentDestination;
- (NSNumber)isDevicePrivateListeningEnabled;
- (NSNumber)isPrivateListeningEnabled;
- (NSNumber)progressiveDownloadAssetRatio;
- (NSString)vocalAttenuationStatisticsName;
- (double)activationDelay;
- (double)assetURLExpirationDuration;
- (double)forwardBufferDuration;
- (double)unloadingPlaybackAssetsOnIdleDuration;
- (double)vocalAttenuationGracePeriodAfterPause;
- (float)audioTapTimeOutRatioForFailureDetection;
- (id)_init;
- (int64_t)maximumQueueHandOffSize;
- (int64_t)musicRepeatType;
- (int64_t)musicShuffleType;
- (int64_t)preferredMusicHighBandwidthResolution;
- (int64_t)preferredMusicLowBandwidthResolution;
- (int64_t)preferredVideoHighBandwidthResolution;
- (int64_t)preferredVideoLowBandwidthResolution;
- (int64_t)spatialAudioPreference;
- (int64_t)transitionStyleForUserWithCatalogPlaybackCapability:(BOOL)capability;
- (unint64_t)audioAnalysisRefreshRate;
- (void)_accountStoreChangedNotification:(id)notification;
- (void)_loadAccountProperties;
- (void)_migrateUserDefaults;
- (void)dealloc;
- (void)resetAllInternalSettings;
- (void)setAutoPlayEnabled:(BOOL)enabled forUserIdentity:(id)identity;
- (void)setCrossFadeDuration:(double)duration;
- (void)setCrossFadeEnabled:(BOOL)enabled;
- (void)setFocusModePrivateListeningEnabled:(id)enabled;
- (void)setMusicRepeatType:(int64_t)type;
- (void)setMusicShuffleType:(int64_t)type;
- (void)setPlaybackRate:(float)rate;
- (void)setPreferredMusicDownloadResolution:(int64_t)resolution;
- (void)setPreferredMusicHighBandwidthResolution:(int64_t)resolution;
- (void)setPreferredMusicLowBandwidthResolution:(int64_t)resolution;
- (void)setPrefersSpatialAudio:(BOOL)audio;
- (void)setPrefersSpatialDownloads:(BOOL)downloads;
- (void)setPrivateListeningEnabled:(id)enabled;
- (void)setSoundCheckEnabled:(BOOL)enabled;
- (void)setSpatialAudioPreference:(int64_t)preference;
- (void)setTransitionStyle:(int64_t)style;
- (void)setTransitionsEnabled:(BOOL)enabled;
@end

@implementation MPPlaybackUserDefaults

void __48__MPPlaybackUserDefaults__loadAccountProperties__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69E4680] activeAccount];
  v3 = [MEMORY[0x1E69E4688] defaultIdentityStore];
  v13 = 0;
  v4 = [v3 getPropertiesForUserIdentity:v2 error:&v13];
  v5 = v13;

  if (v5)
  {
    v6 = os_log_create("com.apple.amp.mediaplayer", "Playback");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [v5 msv_description];
      *buf = 138543618;
      v15 = v2;
      v16 = 2114;
      v17 = v7;
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_ERROR, "MPPlaybackUserDefaults: _loadAccountProperties: getPropertiesForUserIdentity: identity=%{public}@ error=%{public}@", buf, 0x16u);
    }
  }

  if (v4)
  {
    v8 = [v4 privateListeningEnabled];
    v9 = [*(a1 + 32) isDevicePrivateListeningEnabled];
    if (v8 == v9 || ([v8 isEqual:v9] & 1) != 0)
    {
    }

    else
    {
      IsAudioAccessory = MSVDeviceIsAudioAccessory();

      if ((IsAudioAccessory & 1) == 0)
      {
        [*(*(a1 + 32) + 24) setObject:v8 forKey:@"MPCPlaybackPrivateListeningEnabled"];
        v10 = [MEMORY[0x1E696AD88] defaultCenter];
        [v10 postNotificationName:@"MPPlaybackUserDefaultsPrivateListeningEnabledDidChangeNotification" object:*(a1 + 32)];
        goto LABEL_13;
      }
    }

    if (v8)
    {
LABEL_14:

      goto LABEL_15;
    }

    v10 = [MEMORY[0x1E69E4688] defaultIdentityStore];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __48__MPPlaybackUserDefaults__loadAccountProperties__block_invoke_282;
    v12[3] = &unk_1E7677CE0;
    v12[4] = *(a1 + 32);
    [v10 updatePropertiesForUserIdentity:v2 usingBlock:v12];
LABEL_13:

    goto LABEL_14;
  }

LABEL_15:
}

void __46__MPPlaybackUserDefaults_standardUserDefaults__block_invoke()
{
  v0 = [[MPPlaybackUserDefaults alloc] _init];
  v1 = standardUserDefaults___defaults;
  standardUserDefaults___defaults = v0;
}

- (id)_init
{
  v45[24] = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = MPPlaybackUserDefaults;
  v2 = [(MPPlaybackUserDefaults *)&v37 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v4 = dispatch_queue_create("com.apple.MediaPlayer/MPPlaybackUserDefaults", v3);
    accountsQueue = v2->_accountsQueue;
    v2->_accountsQueue = v4;

    v2->_lock._os_unfair_lock_opaque = 0;
    v6 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.mobileipod"];
    iPodUserDefaults = v2->_iPodUserDefaults;
    v2->_iPodUserDefaults = v6;

    v8 = v2->_iPodUserDefaults;
    v44[0] = @"MusicRepeatSetting";
    v44[1] = @"MusicShuffleSetting";
    v45[0] = @"Off";
    v45[1] = @"Off";
    v44[2] = @"PodcastsPlaybackRate";
    v44[3] = @"MusicLowBandwidthResolution";
    v45[2] = &unk_1F150AC88;
    v45[3] = &unk_1F1509838;
    v44[4] = @"MusicHighBandwidthResolution";
    v44[5] = @"MusicDownloadResolution";
    v45[4] = &unk_1F1509838;
    v45[5] = &unk_1F1509838;
    v9 = MEMORY[0x1E695E118];
    v44[6] = @"MusicSoundCheckEnabledSetting";
    v44[7] = @"CrossFadeEnabled";
    v45[6] = MEMORY[0x1E695E118];
    v45[7] = MEMORY[0x1E695E110];
    v44[8] = @"CrossFadeDuration";
    v44[9] = @"SpatialAudioPreference";
    v45[8] = &unk_1F1509850;
    v45[9] = &unk_1F1509868;
    v44[10] = @"MusicMinVocalLevel";
    v44[11] = @"MusicDefaultVocalLevel";
    v45[10] = &unk_1F1509880;
    v45[11] = &unk_1F1509898;
    v44[12] = @"AllowScreenRecording";
    v44[13] = @"QHOMaximumSize";
    v45[12] = MEMORY[0x1E695E110];
    v45[13] = &unk_1F15098B0;
    v44[14] = @"EnableProcessTap";
    v44[15] = @"AudioAnalysisRefreshRate";
    v45[14] = MEMORY[0x1E695E118];
    v45[15] = &unk_1F15098C8;
    v44[16] = @"PrerollEnabled";
    v44[17] = @"AssetURLExpirationDuration";
    v45[16] = MEMORY[0x1E695E110];
    v45[17] = &unk_1F15098E0;
    v44[18] = @"PurgeSideLoadedVocalAttenuationModels";
    v44[19] = @"BypassVocalAttenuationDenoising";
    v45[18] = MEMORY[0x1E695E118];
    v45[19] = MEMORY[0x1E695E118];
    v44[20] = @"BypassVocalAttenuationSupportFlag";
    v44[21] = @"UseRemoteVocalAttenuationModel";
    v45[20] = MEMORY[0x1E695E110];
    v45[21] = MEMORY[0x1E695E110];
    v44[22] = @"AudioTapTimeOutRatioForFailureDetection";
    v44[23] = @"VocalAttenuationGracePeriodAfterPause";
    v45[22] = &unk_1F150AC88;
    v45[23] = &unk_1F15098F8;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:24];
    [(NSUserDefaults *)v8 registerDefaults:v10];

    v11 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.videos-preferences"];
    videoUserDefaults = v2->_videoUserDefaults;
    v2->_videoUserDefaults = v11;

    v13 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.mediaplaybackcore"];
    mediaPlaybackCoreUserDefaults = v2->_mediaPlaybackCoreUserDefaults;
    v2->_mediaPlaybackCoreUserDefaults = v13;

    if (MSVCurrentProcessIsNonUIPlaybackService())
    {
      v15 = 20;
    }

    else
    {
      v15 = 200;
    }

    v16 = v2->_mediaPlaybackCoreUserDefaults;
    v43[0] = &unk_1F1509910;
    v42[0] = @"HomePodPFSQForcedLeaseRenewThreshold";
    v42[1] = @"ArtworkCacheLimit";
    v17 = [MEMORY[0x1E696AD98] numberWithInteger:v15];
    v43[1] = v17;
    v42[2] = @"ExportableArtworkCacheLimit";
    v18 = [MEMORY[0x1E696AD98] numberWithInteger:v15];
    v43[2] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:3];
    [(NSUserDefaults *)v16 registerDefaults:v19];

    if (MSVDeviceIsAudioAccessory())
    {
      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      v40 = @"MPUnloadingPlaybackAssetsOnIdleDuration";
      v41 = &unk_1F15098F8;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      [standardUserDefaults registerDefaults:v21];
    }

    if (MSVDeviceIsAudioAccessory())
    {
      v22 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.airplay"];
      airplayUserDefaults = v2->_airplayUserDefaults;
      v2->_airplayUserDefaults = v22;

      v24 = v2->_airplayUserDefaults;
      v38 = @"BufferedSurroundSwitch";
      v39 = v9;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      [(NSUserDefaults *)v24 registerDefaults:v25];
    }

    [(MPPlaybackUserDefaults *)v2 _migrateUserDefaults];
    v26 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    autoplaySettingCache = v2->_autoplaySettingCache;
    v2->_autoplaySettingCache = v26;

    v32 = MEMORY[0x1E69E9820];
    v33 = 3221225472;
    v34 = __31__MPPlaybackUserDefaults__init__block_invoke;
    v35 = &unk_1E7677C98;
    v28 = v2;
    v36 = v28;
    v29 = MEMORY[0x1E69E96A0];
    notify_register_dispatch("com.apple.mobileipod-prefsChanged", &v2->_notifyTokens.mobileiPodPrefsChanged, MEMORY[0x1E69E96A0], &v32);
    notify_register_dispatch("com.apple.videos-preferences-changed", v28 + 17, v29, &__block_literal_global_261);

    if (MSVDeviceIsAudioAccessory())
    {
      notify_register_dispatch("com.apple.airplay.prefsChanged", v28 + 18, v29, &__block_literal_global_263);
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v28 selector:sel__accountStoreChangedNotification_ name:*MEMORY[0x1E69E4380] object:0];

    [v28 _loadAccountProperties];
  }

  return v2;
}

- (void)_migrateUserDefaults
{
  if ((MSVDeviceOSIsInternalInstall() & 1) == 0)
  {
    [(MPPlaybackUserDefaults *)self resetAllInternalSettings];
  }

  v8 = [(NSUserDefaults *)self->_iPodUserDefaults objectForKey:@"MusicAllowsCellularData"];
  if (v8)
  {
    bOOLValue = [v8 BOOLValue];
    if (bOOLValue && ![(MPPlaybackUserDefaults *)self preferredMusicLowBandwidthResolution])
    {
      [(MPPlaybackUserDefaults *)self setPreferredMusicLowBandwidthResolution:64];
    }

    [(NSUserDefaults *)self->_iPodUserDefaults removeObjectForKey:@"MusicAllowsCellularData"];
    v4 = [(NSUserDefaults *)self->_iPodUserDefaults objectForKey:@"MusicAllowsHighQualityStreamingOnCellular"];
    v5 = v4;
    if (v4)
    {
      if ((bOOLValue & [v4 BOOLValue]) == 1 && -[MPPlaybackUserDefaults preferredMusicLowBandwidthResolution](self, "preferredMusicLowBandwidthResolution") <= 255)
      {
        [(MPPlaybackUserDefaults *)self setPreferredMusicLowBandwidthResolution:256];
      }

      [(NSUserDefaults *)self->_iPodUserDefaults removeObjectForKey:@"MusicAllowsHighQualityStreamingOnCellular"];
    }
  }

  v6 = [(NSUserDefaults *)self->_iPodUserDefaults objectForKey:@"TransitionStyle"];
  v7 = v6;
  if (v6 && [v6 integerValue] >= 2)
  {
    [(NSUserDefaults *)self->_iPodUserDefaults setInteger:1 forKey:@"TransitionStyle"];
    [(NSUserDefaults *)self->_iPodUserDefaults setBool:1 forKey:@"TransitionsEnabled"];
  }

  if (_os_feature_enabled_impl() && [(MPPlaybackUserDefaults *)self isCrossFadeEnabled]&& ![(MPPlaybackUserDefaults *)self areTransitionsEnabled])
  {
    [(NSUserDefaults *)self->_iPodUserDefaults setBool:1 forKey:@"TransitionsEnabled"];
    [(NSUserDefaults *)self->_iPodUserDefaults removeObjectForKey:@"CrossFadeEnabled"];
  }

  [(NSUserDefaults *)self->_iPodUserDefaults removeObjectForKey:@"MusicVocalLevel"];
}

- (void)_loadAccountProperties
{
  accountsQueue = self->_accountsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__MPPlaybackUserDefaults__loadAccountProperties__block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(accountsQueue, block);
}

- (BOOL)disableQHO
{
  v3 = MSVDeviceOSIsInternalInstall();
  if (v3)
  {
    iPodUserDefaults = self->_iPodUserDefaults;

    LOBYTE(v3) = [(NSUserDefaults *)iPodUserDefaults BOOLForKey:@"DisableQHO"];
  }

  return v3;
}

+ (MPPlaybackUserDefaults)standardUserDefaults
{
  if (standardUserDefaults_onceToken != -1)
  {
    dispatch_once(&standardUserDefaults_onceToken, &__block_literal_global_11302);
  }

  v3 = standardUserDefaults___defaults;

  return v3;
}

- (BOOL)sonicHijack
{
  v3 = MSVDeviceOSIsInternalInstall();
  if (v3)
  {
    iPodUserDefaults = self->_iPodUserDefaults;

    LOBYTE(v3) = [(NSUserDefaults *)iPodUserDefaults BOOLForKey:@"SonicHijack"];
  }

  return v3;
}

- (NSNumber)isPrivateListeningEnabled
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [(NSUserDefaults *)self->_mediaPlaybackCoreUserDefaults BOOLForKey:@"MPCPlaybackPrivateListeningEnabled"];

  return [v2 numberWithBool:v3];
}

- (float)audioTapTimeOutRatioForFailureDetection
{
  if (!MSVDeviceOSIsInternalInstall())
  {
    return 1.0;
  }

  iPodUserDefaults = self->_iPodUserDefaults;

  [(NSUserDefaults *)iPodUserDefaults floatForKey:@"AudioTapTimeOutRatioForFailureDetection"];
  return result;
}

- (BOOL)disableAudioAnalysis
{
  if (MSVDeviceIsAppleTV())
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = MSVDeviceOSIsInternalInstall();
    if (v3)
    {
      iPodUserDefaults = self->_iPodUserDefaults;

      LOBYTE(v3) = [(NSUserDefaults *)iPodUserDefaults BOOLForKey:@"DisableAudioAnalysis"];
    }
  }

  return v3;
}

- (BOOL)shouldUseRemoteVocalAttenuationModel
{
  v3 = MSVDeviceOSIsInternalInstall();
  if (v3)
  {
    iPodUserDefaults = self->_iPodUserDefaults;

    LOBYTE(v3) = [(NSUserDefaults *)iPodUserDefaults BOOLForKey:@"UseRemoteVocalAttenuationModel"];
  }

  return v3;
}

- (BOOL)shouldUseSideLoadedVocalAttenuationModel
{
  v3 = MSVDeviceOSIsInternalInstall();
  if (v3)
  {
    iPodUserDefaults = self->_iPodUserDefaults;

    LOBYTE(v3) = [(NSUserDefaults *)iPodUserDefaults BOOLForKey:@"UseSideLoadedVocalAttenuationModel"];
  }

  return v3;
}

- (BOOL)isProcessTapEnabled
{
  if (!MSVDeviceOSIsInternalInstall())
  {
    return 1;
  }

  iPodUserDefaults = self->_iPodUserDefaults;

  return [(NSUserDefaults *)iPodUserDefaults BOOLForKey:@"EnableProcessTap"];
}

- (unint64_t)audioAnalysisRefreshRate
{
  if (!MSVDeviceOSIsInternalInstall())
  {
    return 30;
  }

  iPodUserDefaults = self->_iPodUserDefaults;

  return [(NSUserDefaults *)iPodUserDefaults integerForKey:@"AudioAnalysisRefreshRate"];
}

- (int64_t)spatialAudioPreference
{
  if (!MSVDeviceSupportsMultiChannelMusic())
  {
    return 0;
  }

  iPodUserDefaults = self->_iPodUserDefaults;

  return [(NSUserDefaults *)iPodUserDefaults integerForKey:@"SpatialAudioPreference"];
}

- (BOOL)shouldBypassVocalAttenuationSupportFlag
{
  v3 = MSVDeviceOSIsInternalInstall();
  if (v3)
  {
    iPodUserDefaults = self->_iPodUserDefaults;

    LOBYTE(v3) = [(NSUserDefaults *)iPodUserDefaults BOOLForKey:@"BypassVocalAttenuationSupportFlag"];
  }

  return v3;
}

- (int64_t)maximumQueueHandOffSize
{
  if (!MSVDeviceOSIsInternalInstall())
  {
    return 2000;
  }

  iPodUserDefaults = self->_iPodUserDefaults;

  return [(NSUserDefaults *)iPodUserDefaults integerForKey:@"QHOMaximumSize"];
}

- (void)_accountStoreChangedNotification:(id)notification
{
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_autoplaySettingCache removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);

  [(MPPlaybackUserDefaults *)self _loadAccountProperties];
}

void __48__MPPlaybackUserDefaults__loadAccountProperties__block_invoke_282(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 isDevicePrivateListeningEnabled];
  [v3 setPrivateListeningEnabled:v4];
}

- (void)resetAllInternalSettings
{
  [(NSUserDefaults *)self->_iPodUserDefaults removeObjectForKey:@"AudioAnalysisRefreshRate"];
  [(NSUserDefaults *)self->_iPodUserDefaults removeObjectForKey:@"DisableAssetCaching"];
  [(NSUserDefaults *)self->_iPodUserDefaults removeObjectForKey:@"DisableHLSAssetCaching"];
  [(NSUserDefaults *)self->_iPodUserDefaults removeObjectForKey:@"DisableAudioAnalysis"];
  [(NSUserDefaults *)self->_iPodUserDefaults removeObjectForKey:@"DisableAudioProcessing"];
  [(NSUserDefaults *)self->_iPodUserDefaults removeObjectForKey:@"DisableMiniSINF"];
  [(NSUserDefaults *)self->_iPodUserDefaults removeObjectForKey:@"DisablePeriodicRestore"];
  [(NSUserDefaults *)self->_iPodUserDefaults removeObjectForKey:@"DisableQHO"];
  [(NSUserDefaults *)self->_iPodUserDefaults removeObjectForKey:@"DisableStateRestoration"];
  [(NSUserDefaults *)self->_iPodUserDefaults removeObjectForKey:@"EnableProcessTap"];
  [(NSUserDefaults *)self->_iPodUserDefaults removeObjectForKey:@"ForceMusicResolution"];
  [(NSUserDefaults *)self->_iPodUserDefaults removeObjectForKey:@"ForceLibrarySupplemental"];
  [(NSUserDefaults *)self->_iPodUserDefaults removeObjectForKey:@"IncludeContentItemDebugFields"];
  [(NSUserDefaults *)self->_iPodUserDefaults removeObjectForKey:@"ProgressiveDownloadAssetRatio"];
  [(NSUserDefaults *)self->_iPodUserDefaults removeObjectForKey:@"QHOMaximumSize"];
  [(NSUserDefaults *)self->_iPodUserDefaults removeObjectForKey:@"ShowDebugUI"];
  [(NSUserDefaults *)self->_iPodUserDefaults removeObjectForKey:@"SpeakerRouteEnabled"];
  [(NSUserDefaults *)self->_iPodUserDefaults removeObjectForKey:@"AssetURLExpirationDuration"];
  [(NSUserDefaults *)self->_iPodUserDefaults removeObjectForKey:@"ActivationDelay"];
  [(NSUserDefaults *)self->_iPodUserDefaults removeObjectForKey:@"ForwardBufferDuration"];
  [(NSUserDefaults *)self->_iPodUserDefaults removeObjectForKey:@"PrerollEnabled"];
  [(NSUserDefaults *)self->_iPodUserDefaults removeObjectForKey:@"ArchiveSessionArtwork"];
  [(NSUserDefaults *)self->_iPodUserDefaults removeObjectForKey:@"PurgeSideLoadedVocalAttenuationModels"];
  [(NSUserDefaults *)self->_iPodUserDefaults removeObjectForKey:@"RecordVocalAttenuationStatistics"];
  [(NSUserDefaults *)self->_iPodUserDefaults removeObjectForKey:@"VocalAttenuationStatisticsName"];
  [(NSUserDefaults *)self->_iPodUserDefaults removeObjectForKey:@"BypassVocalAttenuationDenoising"];
  [(NSUserDefaults *)self->_iPodUserDefaults removeObjectForKey:@"BypassVocalAttenuationSupportFlag"];
  [(NSUserDefaults *)self->_iPodUserDefaults removeObjectForKey:@"UseRemoteVocalAttenuationModel"];
  [(NSUserDefaults *)self->_iPodUserDefaults removeObjectForKey:@"UseSideLoadedVocalAttenuationModel"];
  [(NSUserDefaults *)self->_iPodUserDefaults removeObjectForKey:@"AudioTapTimeOutRatioForFailureDetection"];
  [(NSUserDefaults *)self->_iPodUserDefaults removeObjectForKey:@"VocalAttenuationGracePeriodAfterPause"];
  [(NSUserDefaults *)self->_iPodUserDefaults removeObjectForKey:@"VocalAttenuationLogInputAndOuputRMSValues"];
  [(NSUserDefaults *)self->_iPodUserDefaults removeObjectForKey:@"ForceIntentDestination"];
  [(NSUserDefaults *)self->_iPodUserDefaults removeObjectForKey:@"DelayQueueLoad"];
  [(NSUserDefaults *)self->_iPodUserDefaults removeObjectForKey:@"DelayAssetLoad"];
  [(NSUserDefaults *)self->_iPodUserDefaults removeObjectForKey:@"ForceDisableUpNext"];
  [(NSUserDefaults *)self->_iPodUserDefaults removeObjectForKey:@"IgnoreDisableUpNext"];
  [(NSUserDefaults *)self->_iPodUserDefaults removeObjectForKey:@"_MPCSkipNextStateRestoration"];
  [(NSUserDefaults *)self->_iPodUserDefaults removeObjectForKey:@"SonicHijack"];
  [(NSUserDefaults *)self->_mediaPlaybackCoreUserDefaults removeObjectForKey:@"MPCRewrittenAssetInfo"];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults removeObjectForKey:@"MPUnloadingPlaybackAssetsOnIdleDuration"];
}

- (NSDictionary)rewrittenAssetInfo
{
  if (MSVDeviceOSIsInternalInstall())
  {
    v3 = [(NSUserDefaults *)self->_mediaPlaybackCoreUserDefaults objectForKey:@"MPCRewrittenAssetInfo"];
    if (_NSIsNSDictionary())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)unloadingPlaybackAssetsOnIdleDuration
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"MPUnloadingPlaybackAssetsOnIdleDuration"];
  v4 = v3;

  return v4;
}

- (BOOL)shouldSkipNextStateRestoration
{
  v3 = MSVDeviceOSIsInternalInstall();
  if (v3)
  {
    iPodUserDefaults = self->_iPodUserDefaults;

    LOBYTE(v3) = [(NSUserDefaults *)iPodUserDefaults BOOLForKey:@"_MPCSkipNextStateRestoration"];
  }

  return v3;
}

- (BOOL)ignoreDisableUpNext
{
  v3 = MSVDeviceOSIsInternalInstall();
  if (v3)
  {
    iPodUserDefaults = self->_iPodUserDefaults;

    LOBYTE(v3) = [(NSUserDefaults *)iPodUserDefaults BOOLForKey:@"IgnoreDisableUpNext"];
  }

  return v3;
}

- (BOOL)forceDisableUpNext
{
  v3 = MSVDeviceOSIsInternalInstall();
  if (v3)
  {
    iPodUserDefaults = self->_iPodUserDefaults;

    LOBYTE(v3) = [(NSUserDefaults *)iPodUserDefaults BOOLForKey:@"ForceDisableUpNext"];
  }

  return v3;
}

- (NSNumber)delayAssetLoadDuration
{
  if (MSVDeviceOSIsInternalInstall())
  {
    v3 = [(NSUserDefaults *)self->_iPodUserDefaults objectForKey:@"DelayAssetLoad"];
    if (_NSIsNSNumber())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSNumber)delayQueueLoadDuration
{
  if (MSVDeviceOSIsInternalInstall())
  {
    v3 = [(NSUserDefaults *)self->_iPodUserDefaults objectForKey:@"DelayQueueLoad"];
    if (_NSIsNSNumber())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSNumber)forcedIntentDestination
{
  if (MSVDeviceOSIsInternalInstall())
  {
    v3 = [(NSUserDefaults *)self->_iPodUserDefaults objectForKey:@"ForceIntentDestination"];
    if (_NSIsNSNumber())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)vocalAttenuationLogInputAndOuputRMSValues
{
  v3 = MSVDeviceOSIsInternalInstall();
  if (v3)
  {
    iPodUserDefaults = self->_iPodUserDefaults;

    LOBYTE(v3) = [(NSUserDefaults *)iPodUserDefaults BOOLForKey:@"VocalAttenuationLogInputAndOuputRMSValues"];
  }

  return v3;
}

- (double)vocalAttenuationGracePeriodAfterPause
{
  if (!MSVDeviceOSIsInternalInstall())
  {
    return 480.0;
  }

  iPodUserDefaults = self->_iPodUserDefaults;

  [(NSUserDefaults *)iPodUserDefaults doubleForKey:@"VocalAttenuationGracePeriodAfterPause"];
  return result;
}

- (BOOL)shouldBypassVocalAttenuationDenoising
{
  if (!MSVDeviceOSIsInternalInstall())
  {
    return 1;
  }

  iPodUserDefaults = self->_iPodUserDefaults;

  return [(NSUserDefaults *)iPodUserDefaults BOOLForKey:@"BypassVocalAttenuationDenoising"];
}

- (NSString)vocalAttenuationStatisticsName
{
  if (MSVDeviceOSIsInternalInstall())
  {
    v3 = [(NSUserDefaults *)self->_iPodUserDefaults stringForKey:@"VocalAttenuationStatisticsName"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)shouldRecordVocalAttenuationStatistics
{
  v3 = MSVDeviceOSIsInternalInstall();
  if (v3)
  {
    iPodUserDefaults = self->_iPodUserDefaults;

    LOBYTE(v3) = [(NSUserDefaults *)iPodUserDefaults BOOLForKey:@"RecordVocalAttenuationStatistics"];
  }

  return v3;
}

- (BOOL)shouldPurgeSideLoadedVocalAttenuationModels
{
  if (!MSVDeviceOSIsInternalInstall())
  {
    return 1;
  }

  iPodUserDefaults = self->_iPodUserDefaults;

  return [(NSUserDefaults *)iPodUserDefaults BOOLForKey:@"PurgeSideLoadedVocalAttenuationModels"];
}

- (BOOL)archiveSessionArtwork
{
  v3 = MSVDeviceOSIsInternalInstall();
  if (v3)
  {
    iPodUserDefaults = self->_iPodUserDefaults;

    LOBYTE(v3) = [(NSUserDefaults *)iPodUserDefaults BOOLForKey:@"ArchiveSessionArtwork"];
  }

  return v3;
}

- (BOOL)prerollEnabled
{
  if (MSVDeviceIsAudioAccessory())
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = MSVDeviceOSIsInternalInstall();
    if (v3)
    {
      iPodUserDefaults = self->_iPodUserDefaults;

      LOBYTE(v3) = [(NSUserDefaults *)iPodUserDefaults BOOLForKey:@"PrerollEnabled"];
    }
  }

  return v3;
}

- (double)forwardBufferDuration
{
  if (!MSVDeviceOSIsInternalInstall())
  {
    return 0.0;
  }

  iPodUserDefaults = self->_iPodUserDefaults;

  [(NSUserDefaults *)iPodUserDefaults doubleForKey:@"ForwardBufferDuration"];
  return result;
}

- (double)activationDelay
{
  if (!MSVDeviceOSIsInternalInstall())
  {
    return 0.0;
  }

  iPodUserDefaults = self->_iPodUserDefaults;

  [(NSUserDefaults *)iPodUserDefaults doubleForKey:@"ActivationDelay"];
  return result;
}

- (double)assetURLExpirationDuration
{
  if (!MSVDeviceOSIsInternalInstall())
  {
    return 604800.0;
  }

  iPodUserDefaults = self->_iPodUserDefaults;

  [(NSUserDefaults *)iPodUserDefaults doubleForKey:@"AssetURLExpirationDuration"];
  return result;
}

- (BOOL)speakerRouteEnabled
{
  v3 = MSVDeviceOSIsInternalInstall();
  if (v3)
  {
    iPodUserDefaults = self->_iPodUserDefaults;

    LOBYTE(v3) = [(NSUserDefaults *)iPodUserDefaults BOOLForKey:@"SpeakerRouteEnabled"];
  }

  return v3;
}

- (BOOL)showDebugUI
{
  v3 = MSVDeviceOSIsInternalInstall();
  if (v3)
  {
    iPodUserDefaults = self->_iPodUserDefaults;

    LOBYTE(v3) = [(NSUserDefaults *)iPodUserDefaults BOOLForKey:@"ShowDebugUI"];
  }

  return v3;
}

- (BOOL)includeContentItemDebugFields
{
  v3 = MSVDeviceOSIsInternalInstall();
  if (v3)
  {
    iPodUserDefaults = self->_iPodUserDefaults;

    LOBYTE(v3) = [(NSUserDefaults *)iPodUserDefaults BOOLForKey:@"IncludeContentItemDebugFields"];
  }

  return v3;
}

- (BOOL)forceLibrarySupplementalContexts
{
  v3 = MSVDeviceOSIsInternalInstall();
  if (v3)
  {
    iPodUserDefaults = self->_iPodUserDefaults;

    LOBYTE(v3) = [(NSUserDefaults *)iPodUserDefaults BOOLForKey:@"ForceLibrarySupplemental"];
  }

  return v3;
}

- (BOOL)forceMusicResolution
{
  v3 = MSVDeviceOSIsInternalInstall();
  if (v3)
  {
    iPodUserDefaults = self->_iPodUserDefaults;

    LOBYTE(v3) = [(NSUserDefaults *)iPodUserDefaults BOOLForKey:@"ForceMusicResolution"];
  }

  return v3;
}

- (BOOL)disableStateRestoration
{
  v3 = MSVDeviceOSIsInternalInstall();
  if (v3)
  {
    iPodUserDefaults = self->_iPodUserDefaults;

    LOBYTE(v3) = [(NSUserDefaults *)iPodUserDefaults BOOLForKey:@"DisableStateRestoration"];
  }

  return v3;
}

- (BOOL)disablePeriodicStateRestore
{
  v3 = MSVDeviceOSIsInternalInstall();
  if (v3)
  {
    iPodUserDefaults = self->_iPodUserDefaults;

    LOBYTE(v3) = [(NSUserDefaults *)iPodUserDefaults BOOLForKey:@"DisablePeriodicRestore"];
  }

  return v3;
}

- (BOOL)disableMiniSINF
{
  v3 = MSVDeviceOSIsInternalInstall();
  if (v3)
  {
    iPodUserDefaults = self->_iPodUserDefaults;

    LOBYTE(v3) = [(NSUserDefaults *)iPodUserDefaults BOOLForKey:@"DisableMiniSINF"];
  }

  return v3;
}

- (BOOL)disableAudioProcessing
{
  v3 = MSVDeviceOSIsInternalInstall();
  if (v3)
  {
    iPodUserDefaults = self->_iPodUserDefaults;

    LOBYTE(v3) = [(NSUserDefaults *)iPodUserDefaults BOOLForKey:@"DisableAudioProcessing"];
  }

  return v3;
}

- (NSNumber)progressiveDownloadAssetRatio
{
  if (MSVDeviceOSIsInternalInstall())
  {
    v3 = [(NSUserDefaults *)self->_iPodUserDefaults objectForKey:@"ProgressiveDownloadAssetRatio"];
    if (_NSIsNSNumber())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)disableHLSAssetCaching
{
  v3 = MSVDeviceOSIsInternalInstall();
  if (v3)
  {
    iPodUserDefaults = self->_iPodUserDefaults;

    LOBYTE(v3) = [(NSUserDefaults *)iPodUserDefaults BOOLForKey:@"DisableHLSAssetCaching"];
  }

  return v3;
}

- (BOOL)disableAssetCaching
{
  v3 = MSVDeviceOSIsInternalInstall();
  if (v3)
  {
    iPodUserDefaults = self->_iPodUserDefaults;

    LOBYTE(v3) = [(NSUserDefaults *)iPodUserDefaults BOOLForKey:@"DisableAssetCaching"];
  }

  return v3;
}

- (BOOL)allowScreenRecording
{
  v3 = MSVDeviceOSIsInternalInstall();
  if (v3)
  {
    iPodUserDefaults = self->_iPodUserDefaults;

    LOBYTE(v3) = [(NSUserDefaults *)iPodUserDefaults BOOLForKey:@"AllowScreenRecording"];
  }

  return v3;
}

- (int64_t)preferredVideoHighBandwidthResolution
{
  v2 = 1000000;
  v3 = [(NSUserDefaults *)self->_videoUserDefaults stringForKey:@"PlaybackQuality"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    if (v5 != @"BestQuality")
    {
      v6 = v5;
      v7 = [(__CFString *)v5 isEqual:@"BestQuality"];

      if (!v7)
      {
        v2 = 1000;
      }
    }
  }

  return v2;
}

- (int64_t)preferredVideoLowBandwidthResolution
{
  v2 = [(NSUserDefaults *)self->_videoUserDefaults stringForKey:@"PlaybackQualityCellular"];
  v3 = v2;
  if (v2 == @"BestQuality" || (v4 = [(__CFString *)v2 isEqual:@"BestQuality"], v3, v4))
  {
    v5 = 1000000;
  }

  else
  {
    v5 = 1000;
  }

  return v5;
}

- (void)setPrefersSpatialDownloads:(BOOL)downloads
{
  downloadsCopy = downloads;
  if ([(MPPlaybackUserDefaults *)self prefersSpatialDownloads]!= downloads)
  {
    [(NSUserDefaults *)self->_iPodUserDefaults setBool:downloadsCopy forKey:@"PrefersSpatialDownloads"];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"MPPlaybackUserDefaultsPreferredResolutionsDidChangeNotification" object:self];

    notify_post("com.apple.mobileipod-prefsChanged");
  }
}

- (void)setPrefersSpatialAudio:(BOOL)audio
{
  if (audio)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  [(MPPlaybackUserDefaults *)self setSpatialAudioPreference:v3];
}

- (void)setSpatialAudioPreference:(int64_t)preference
{
  v13 = *MEMORY[0x1E69E9840];
  if ([(MPPlaybackUserDefaults *)self spatialAudioPreference]!= preference)
  {
    iPodUserDefaults = self->_iPodUserDefaults;
    if (preference)
    {
      v6 = &v13 + 1;
      quot = preference;
      do
      {
        v8 = ldiv(quot, 10);
        quot = v8.quot;
        if (v8.rem >= 0)
        {
          LOBYTE(v9) = v8.rem;
        }

        else
        {
          v9 = -v8.rem;
        }

        *(v6 - 2) = v9 + 48;
        v10 = (v6 - 2);
        --v6;
      }

      while (v8.quot);
      if (preference < 0)
      {
        *(v6 - 2) = 45;
        v10 = (v6 - 2);
      }

      v11 = CFStringCreateWithBytes(0, v10, &v13 - v10, 0x8000100u, 0);
    }

    else
    {
      v11 = @"0";
    }

    [(NSUserDefaults *)iPodUserDefaults setObject:v11 forKey:@"SpatialAudioPreference"];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"MPPlaybackUserDefaultsPreferredResolutionsDidChangeNotification" object:self];

    notify_post("com.apple.mobileipod-prefsChanged");
  }
}

- (void)setPreferredMusicDownloadResolution:(int64_t)resolution
{
  v13 = *MEMORY[0x1E69E9840];
  if ([(MPPlaybackUserDefaults *)self preferredMusicDownloadResolution]!= resolution)
  {
    iPodUserDefaults = self->_iPodUserDefaults;
    if (resolution)
    {
      v6 = &v13 + 1;
      quot = resolution;
      do
      {
        v8 = ldiv(quot, 10);
        quot = v8.quot;
        if (v8.rem >= 0)
        {
          LOBYTE(v9) = v8.rem;
        }

        else
        {
          v9 = -v8.rem;
        }

        *(v6 - 2) = v9 + 48;
        v10 = (v6 - 2);
        --v6;
      }

      while (v8.quot);
      if (resolution < 0)
      {
        *(v6 - 2) = 45;
        v10 = (v6 - 2);
      }

      v11 = CFStringCreateWithBytes(0, v10, &v13 - v10, 0x8000100u, 0);
    }

    else
    {
      v11 = @"0";
    }

    [(NSUserDefaults *)iPodUserDefaults setObject:v11 forKey:@"MusicDownloadResolution"];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"MPPlaybackUserDefaultsPreferredResolutionsDidChangeNotification" object:self];

    notify_post("com.apple.mobileipod-prefsChanged");
  }
}

- (void)setPreferredMusicHighBandwidthResolution:(int64_t)resolution
{
  v13 = *MEMORY[0x1E69E9840];
  if ([(MPPlaybackUserDefaults *)self preferredMusicHighBandwidthResolution]!= resolution)
  {
    iPodUserDefaults = self->_iPodUserDefaults;
    if (resolution)
    {
      v6 = &v13 + 1;
      quot = resolution;
      do
      {
        v8 = ldiv(quot, 10);
        quot = v8.quot;
        if (v8.rem >= 0)
        {
          LOBYTE(v9) = v8.rem;
        }

        else
        {
          v9 = -v8.rem;
        }

        *(v6 - 2) = v9 + 48;
        v10 = (v6 - 2);
        --v6;
      }

      while (v8.quot);
      if (resolution < 0)
      {
        *(v6 - 2) = 45;
        v10 = (v6 - 2);
      }

      v11 = CFStringCreateWithBytes(0, v10, &v13 - v10, 0x8000100u, 0);
    }

    else
    {
      v11 = @"0";
    }

    [(NSUserDefaults *)iPodUserDefaults setObject:v11 forKey:@"MusicHighBandwidthResolution"];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"MPPlaybackUserDefaultsPreferredResolutionsDidChangeNotification" object:self];

    notify_post("com.apple.mobileipod-prefsChanged");
  }
}

- (int64_t)preferredMusicHighBandwidthResolution
{
  if (MSVDeviceIsAudioAccessory() && [(NSUserDefaults *)self->_airplayUserDefaults BOOLForKey:@"BufferedLosslessSwitch"])
  {
    return 48000;
  }

  iPodUserDefaults = self->_iPodUserDefaults;

  return [(NSUserDefaults *)iPodUserDefaults integerForKey:@"MusicHighBandwidthResolution"];
}

- (void)setPreferredMusicLowBandwidthResolution:(int64_t)resolution
{
  v13 = *MEMORY[0x1E69E9840];
  if ([(MPPlaybackUserDefaults *)self preferredMusicLowBandwidthResolution]!= resolution)
  {
    iPodUserDefaults = self->_iPodUserDefaults;
    if (resolution)
    {
      v6 = &v13 + 1;
      quot = resolution;
      do
      {
        v8 = ldiv(quot, 10);
        quot = v8.quot;
        if (v8.rem >= 0)
        {
          LOBYTE(v9) = v8.rem;
        }

        else
        {
          v9 = -v8.rem;
        }

        *(v6 - 2) = v9 + 48;
        v10 = (v6 - 2);
        --v6;
      }

      while (v8.quot);
      if (resolution < 0)
      {
        *(v6 - 2) = 45;
        v10 = (v6 - 2);
      }

      v11 = CFStringCreateWithBytes(0, v10, &v13 - v10, 0x8000100u, 0);
    }

    else
    {
      v11 = @"0";
    }

    [(NSUserDefaults *)iPodUserDefaults setObject:v11 forKey:@"MusicLowBandwidthResolution"];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"MPPlaybackUserDefaultsPreferredResolutionsDidChangeNotification" object:self];

    notify_post("com.apple.mobileipod-prefsChanged");
  }
}

- (int64_t)preferredMusicLowBandwidthResolution
{
  if (MSVDeviceIsAudioAccessory() && [(NSUserDefaults *)self->_airplayUserDefaults BOOLForKey:@"BufferedLosslessSwitch"])
  {
    return 48000;
  }

  iPodUserDefaults = self->_iPodUserDefaults;

  return [(NSUserDefaults *)iPodUserDefaults integerForKey:@"MusicLowBandwidthResolution"];
}

- (void)setFocusModePrivateListeningEnabled:(id)enabled
{
  [(NSUserDefaults *)self->_mediaPlaybackCoreUserDefaults setObject:enabled forKey:@"MPCPlaybackFocusModePrivateListeningEnabled"];
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter postNotificationName:@"MPPlaybackUserDefaultsPrivateListeningEnabledDidChangeNotification" object:0];
}

- (NSNumber)isDevicePrivateListeningEnabled
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [(NSUserDefaults *)self->_mediaPlaybackCoreUserDefaults BOOLForKey:@"MPCPlaybackPrivateListeningEnabled"];

  return [v2 numberWithBool:v3];
}

- (void)setPrivateListeningEnabled:(id)enabled
{
  enabledCopy = enabled;
  [(NSUserDefaults *)self->_mediaPlaybackCoreUserDefaults setObject:enabledCopy forKey:@"MPCPlaybackPrivateListeningEnabled"];
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter postNotificationName:@"MPPlaybackUserDefaultsPrivateListeningEnabledDidChangeNotification" object:0];

  accountsQueue = self->_accountsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__MPPlaybackUserDefaults_setPrivateListeningEnabled___block_invoke;
  block[3] = &unk_1E7682518;
  v9 = enabledCopy;
  v7 = enabledCopy;
  dispatch_async(accountsQueue, block);
}

void __53__MPPlaybackUserDefaults_setPrivateListeningEnabled___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69E4688] defaultIdentityStore];
  v3 = [MEMORY[0x1E69E4680] activeAccount];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__MPPlaybackUserDefaults_setPrivateListeningEnabled___block_invoke_2;
  v4[3] = &unk_1E7677CE0;
  v5 = *(a1 + 32);
  [v2 updatePropertiesForUserIdentity:v3 usingBlock:v4];
}

- (void)setTransitionsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v13 = *MEMORY[0x1E69E9840];
  v5 = [(NSUserDefaults *)self->_iPodUserDefaults objectForKey:@"TransitionsEnabled"];
  if (!v5 || (v6 = v5, v7 = [(MPPlaybackUserDefaults *)self areTransitionsEnabled], v6, v7 != enabledCopy))
  {
    v8 = os_log_create("com.apple.amp.mediaplayer", "Playback");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109376;
      v10[1] = [(MPPlaybackUserDefaults *)self areTransitionsEnabled];
      v11 = 1024;
      v12 = enabledCopy;
      _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_DEFAULT, "[PlaybackUserDefaults] setTransitionsEnabled: %{BOOL}u -> %{BOOL}u", v10, 0xEu);
    }

    [(NSUserDefaults *)self->_iPodUserDefaults setBool:enabledCopy forKey:@"TransitionsEnabled"];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"MPPlaybackUserDefaultsTransitionsEnabledDidChangeNotification" object:self];

    notify_post("com.apple.mobileipod-prefsChanged");
  }
}

- (BOOL)areTransitionsEnabledForUserWithCatalogPlaybackCapability:(BOOL)capability
{
  v5 = [(NSUserDefaults *)self->_iPodUserDefaults objectForKey:@"TransitionsEnabled"];

  if (!v5)
  {
    return capability;
  }

  return [(MPPlaybackUserDefaults *)self areTransitionsEnabled];
}

- (void)setTransitionStyle:(int64_t)style
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = [(NSUserDefaults *)self->_iPodUserDefaults objectForKey:@"TransitionStyle"];
  if (!v5 || (v6 = v5, v7 = [(MPPlaybackUserDefaults *)self transitionStyle], v6, v7 != style))
  {
    v8 = os_log_create("com.apple.amp.mediaplayer", "Playback");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134218240;
      transitionStyle = [(MPPlaybackUserDefaults *)self transitionStyle];
      v12 = 2048;
      styleCopy = style;
      _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_DEFAULT, "[PlaybackUserDefaults] setTransitionStyle: %ld -> %ld", &v10, 0x16u);
    }

    [(NSUserDefaults *)self->_iPodUserDefaults setInteger:style forKey:@"TransitionStyle"];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"MPPlaybackUserDefaultsTransitionStyleDidChangeNotification" object:self];

    notify_post("com.apple.mobileipod-prefsChanged");
  }
}

- (int64_t)transitionStyleForUserWithCatalogPlaybackCapability:(BOOL)capability
{
  capabilityCopy = capability;
  v5 = [(NSUserDefaults *)self->_iPodUserDefaults objectForKey:@"TransitionStyle"];

  if (!v5)
  {
    return capabilityCopy;
  }

  return [(MPPlaybackUserDefaults *)self transitionStyle];
}

- (void)setCrossFadeDuration:(double)duration
{
  v12 = *MEMORY[0x1E69E9840];
  [(MPPlaybackUserDefaults *)self crossFadeDuration];
  if (v5 != duration)
  {
    v6 = os_log_create("com.apple.amp.mediaplayer", "Playback");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      [(MPPlaybackUserDefaults *)self crossFadeDuration];
      v8 = 134218240;
      v9 = v7;
      v10 = 2048;
      durationCopy = duration;
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "[PlaybackUserDefaults] setCrossFadeDuration: %2.1fs -> %2.1fs", &v8, 0x16u);
    }

    [(NSUserDefaults *)self->_iPodUserDefaults setDouble:@"CrossFadeDuration" forKey:duration];
  }
}

- (void)setCrossFadeEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v9 = *MEMORY[0x1E69E9840];
  if ([(MPPlaybackUserDefaults *)self isCrossFadeEnabled]!= enabled)
  {
    v5 = os_log_create("com.apple.amp.mediaplayer", "Playback");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109376;
      v6[1] = [(MPPlaybackUserDefaults *)self isCrossFadeEnabled];
      v7 = 1024;
      v8 = enabledCopy;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "[PlaybackUserDefaults] setCrossFadeEnabled: %{BOOL}u -> %{BOOL}u", v6, 0xEu);
    }

    [(NSUserDefaults *)self->_iPodUserDefaults setBool:enabledCopy forKey:@"CrossFadeEnabled"];
  }
}

- (void)setSoundCheckEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v11 = *MEMORY[0x1E69E9840];
  if ([(MPPlaybackUserDefaults *)self soundCheckEnabled]!= enabled)
  {
    v5 = os_log_create("com.apple.amp.mediaplayer", "Playback");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109376;
      v8[1] = [(MPPlaybackUserDefaults *)self soundCheckEnabled];
      v9 = 1024;
      v10 = enabledCopy;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "[PlaybackUserDefaults] setSoundCheckEnable: %{BOOL}u -> %{BOOL}u", v8, 0xEu);
    }

    [(NSUserDefaults *)self->_iPodUserDefaults setBool:enabledCopy forKey:@"MusicSoundCheckEnabledSetting"];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"MPPlaybackUserDefaultsSoundCheckEnabledDidChangeNotification" object:self];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mobileipod-prefsChanged", 0, 0, 1u);
  }
}

- (void)setMusicShuffleType:(int64_t)type
{
  if (type != 1000)
  {
    v6 = MPNSStringFromShuffleType(type);
    [(NSUserDefaults *)self->_iPodUserDefaults setObject:v6 forKey:@"MusicShuffleSetting"];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"MPPlaybackUserDefaultsMusicShuffleTypeDidChangeNotification" object:self];

    notify_post("com.apple.mobileipod-prefsChanged");
  }
}

- (int64_t)musicShuffleType
{
  v2 = [(NSUserDefaults *)self->_iPodUserDefaults stringForKey:@"MusicShuffleSetting"];
  v3 = MPShuffleTypeFromNSString(v2);

  return v3;
}

- (void)setMusicRepeatType:(int64_t)type
{
  if (type != 3)
  {
    v6 = MPNSStringFromRepeatType(type);
    [(NSUserDefaults *)self->_iPodUserDefaults setObject:v6 forKey:@"MusicRepeatSetting"];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"MPPlaybackUserDefaultsMusicRepeatTypeDidChangeNotification" object:self];

    notify_post("com.apple.mobileipod-prefsChanged");
  }
}

- (void)setPlaybackRate:(float)rate
{
  [(MPPlaybackUserDefaults *)self playbackRate];
  if (*&v5 != rate)
  {
    iPodUserDefaults = self->_iPodUserDefaults;
    *&v5 = rate;

    [(NSUserDefaults *)iPodUserDefaults setFloat:@"PodcastsPlaybackRate" forKey:v5];
  }
}

- (int64_t)musicRepeatType
{
  v2 = [(NSUserDefaults *)self->_iPodUserDefaults stringForKey:@"MusicRepeatSetting"];
  v3 = MPRepeatTypeFromNSString(v2);

  return v3;
}

- (MPPlaybackEQSetting)musicEQSetting
{
  v2 = [(NSUserDefaults *)self->_iPodUserDefaults stringForKey:@"MusicEQPresetName"];
  v3 = [MPPlaybackEQSetting settingWithName:v2];

  return v3;
}

- (void)setAutoPlayEnabled:(BOOL)enabled forUserIdentity:(id)identity
{
  enabledCopy = enabled;
  v26 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  v7 = identityCopy;
  if (identityCopy)
  {
    activeAccount = identityCopy;
  }

  else
  {
    activeAccount = [MEMORY[0x1E69E4680] activeAccount];
  }

  v9 = activeAccount;
  v10 = os_log_create("com.apple.amp.mediaplayer", "Playback");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *v25 = enabledCopy;
    *&v25[4] = 2114;
    *&v25[6] = v9;
    _os_log_impl(&dword_1A238D000, v10, OS_LOG_TYPE_DEFAULT, "[PlaybackUserDefaults] setAutoPlayEnabled:forUserIdentity: %{BOOL}u userIdentity=%{public}@", buf, 0x12u);
  }

  v11 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_autoplaySettingCache setObject:v11 forKey:v9];
  os_unfair_lock_unlock(&self->_lock);
  v12 = v9;
  if (!v12)
  {
    mEMORY[0x1E69E4470] = [MEMORY[0x1E69E4470] sharedAccountStore];
    v23 = 0;
    v17 = [mEMORY[0x1E69E4470] activeStoreAccountWithError:&v23];
    v15 = v23;
LABEL_10:

    if (v17)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  defaultIdentityStore = [MEMORY[0x1E69E4688] defaultIdentityStore];
  v23 = 0;
  mEMORY[0x1E69E4470] = [defaultIdentityStore DSIDForUserIdentity:v12 outError:&v23];
  v15 = v23;

  if (mEMORY[0x1E69E4470])
  {
    mEMORY[0x1E69E4470]2 = [MEMORY[0x1E69E4470] sharedAccountStore];
    v22 = v15;
    v17 = [mEMORY[0x1E69E4470]2 storeAccountForDSID:mEMORY[0x1E69E4470] error:&v22];
    v18 = v22;

    v15 = v18;
    goto LABEL_10;
  }

LABEL_11:
  v19 = os_log_create("com.apple.amp.mediaplayer", "Playback");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    *v25 = v12;
    *&v25[8] = 2114;
    *&v25[10] = v15;
    _os_log_impl(&dword_1A238D000, v19, OS_LOG_TYPE_ERROR, "[PlaybackUserDefaults] _MPACAccountForUserIdentity failed to resolve account for identity %{public}@. err=%{public}@", buf, 0x16u);
  }

  v17 = 0;
LABEL_14:

  [v17 ams_setAccountFlagValue:v11 forAccountFlag:*MEMORY[0x1E698C4A0]];
  ic_sharedAccountStore = [MEMORY[0x1E6959A48] ic_sharedAccountStore];
  v21 = [ic_sharedAccountStore ams_saveAccount:v17];
}

- (BOOL)autoPlayEnabledForUserIdentity:(id)identity
{
  v25 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  os_unfair_lock_lock(&self->_lock);
  if (identityCopy)
  {
    activeAccount = identityCopy;
  }

  else
  {
    activeAccount = [MEMORY[0x1E69E4680] activeAccount];
  }

  v6 = activeAccount;
  v7 = [(NSMutableDictionary *)self->_autoplaySettingCache objectForKey:activeAccount];
  if (v7)
  {
    goto LABEL_18;
  }

  v8 = v6;
  if (v8)
  {
    defaultIdentityStore = [MEMORY[0x1E69E4688] defaultIdentityStore];
    v22 = 0;
    mEMORY[0x1E69E4470]2 = [defaultIdentityStore DSIDForUserIdentity:v8 outError:&v22];
    v11 = v22;

    if (!mEMORY[0x1E69E4470]2)
    {
LABEL_10:
      v15 = os_log_create("com.apple.amp.mediaplayer", "Playback");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        *v24 = v8;
        *&v24[8] = 2114;
        *&v24[10] = v11;
        _os_log_impl(&dword_1A238D000, v15, OS_LOG_TYPE_ERROR, "[PlaybackUserDefaults] _MPACAccountForUserIdentity failed to resolve account for identity %{public}@. err=%{public}@", buf, 0x16u);
      }

      v13 = 0;
      goto LABEL_13;
    }

    mEMORY[0x1E69E4470] = [MEMORY[0x1E69E4470] sharedAccountStore];
    v21 = v11;
    v13 = [mEMORY[0x1E69E4470] storeAccountForDSID:mEMORY[0x1E69E4470]2 error:&v21];
    v14 = v21;

    v11 = v14;
  }

  else
  {
    mEMORY[0x1E69E4470]2 = [MEMORY[0x1E69E4470] sharedAccountStore];
    v22 = 0;
    v13 = [mEMORY[0x1E69E4470]2 activeStoreAccountWithError:&v22];
    v11 = v22;
  }

  if (!v13)
  {
    goto LABEL_10;
  }

LABEL_13:

  v7 = [v13 ams_accountFlagValueForAccountFlag:*MEMORY[0x1E698C4A0]];
  if (!v7)
  {
    v16 = os_log_create("com.apple.amp.mediaplayer", "Playback");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A238D000, v16, OS_LOG_TYPE_INFO, "[PlaybackUserDefaults] Returning NO as [account ams_accountFlagValueForAccountFlag:AMSAccountFlagAutoPlay] could not resolve.", buf, 2u);
    }

    v7 = MEMORY[0x1E695E110];
  }

  [(NSMutableDictionary *)self->_autoplaySettingCache setObject:v7 forKey:v8];

LABEL_18:
  os_unfair_lock_unlock(&self->_lock);
  v17 = os_log_create("com.apple.amp.mediaplayer", "Playback");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    bOOLValue = [v7 BOOLValue];
    *buf = 67109378;
    *v24 = bOOLValue;
    *&v24[4] = 2114;
    *&v24[6] = v6;
    _os_log_impl(&dword_1A238D000, v17, OS_LOG_TYPE_INFO, "[PlaybackUserDefaults] autoPlayEnabledForUserIdentity: %{BOOL}u userIdentity=%{public}@", buf, 0x12u);
  }

  bOOLValue2 = [v7 BOOLValue];
  return bOOLValue2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69E4380] object:0];

  notify_cancel(self->_notifyTokens.mobileiPodPrefsChanged);
  notify_cancel(self->_notifyTokens.videoPrefsChanged);
  if (MSVDeviceIsAudioAccessory())
  {
    notify_cancel(self->_notifyTokens.airplayPrefsChanged);
  }

  v4.receiver = self;
  v4.super_class = MPPlaybackUserDefaults;
  [(MPPlaybackUserDefaults *)&v4 dealloc];
}

void __31__MPPlaybackUserDefaults__init__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = +[MPPlaybackUserDefaults standardUserDefaults];
  [v2 postNotificationName:@"MPPlaybackUserDefaultsMusicRepeatTypeDidChangeNotification" object:v3];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v5 = +[MPPlaybackUserDefaults standardUserDefaults];
  [v4 postNotificationName:@"MPPlaybackUserDefaultsMusicShuffleTypeDidChangeNotification" object:v5];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:@"MPPlaybackUserDefaultsSoundCheckEnabledDidChangeNotification" object:*(a1 + 32)];

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = +[MPPlaybackUserDefaults standardUserDefaults];
  [v7 postNotificationName:@"MPPlaybackUserDefaultsPreferredResolutionsDidChangeNotification" object:v8];

  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  v10 = +[MPPlaybackUserDefaults standardUserDefaults];
  [v9 postNotificationName:@"MPPlaybackUserDefaultsMusicEQPresetDidChangeNotification" object:v10];

  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  v12 = +[MPPlaybackUserDefaults standardUserDefaults];
  [v11 postNotificationName:@"MPPlaybackUserDefaultsTransitionStyleDidChangeNotification" object:v12];

  v14 = [MEMORY[0x1E696AD88] defaultCenter];
  v13 = +[MPPlaybackUserDefaults standardUserDefaults];
  [v14 postNotificationName:@"MPPlaybackUserDefaultsTransitionsEnabledDidChangeNotification" object:v13];
}

void __31__MPPlaybackUserDefaults__init__block_invoke_3()
{
  v1 = [MEMORY[0x1E696AD88] defaultCenter];
  v0 = +[MPPlaybackUserDefaults standardUserDefaults];
  [v1 postNotificationName:@"MPPlaybackUserDefaultsPreferredResolutionsDidChangeNotification" object:v0];
}

void __31__MPPlaybackUserDefaults__init__block_invoke_2()
{
  v1 = [MEMORY[0x1E696AD88] defaultCenter];
  v0 = +[MPPlaybackUserDefaults standardUserDefaults];
  [v1 postNotificationName:@"MPPlaybackUserDefaultsPreferredResolutionsDidChangeNotification" object:v0];
}

@end