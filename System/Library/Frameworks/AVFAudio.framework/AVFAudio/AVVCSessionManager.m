@interface AVVCSessionManager
- (AVVCSessionManager)initWithSession:(id)a3;
- (BOOL)activateAudioSessionWithPrewarm:(BOOL)a3 error:(id *)a4;
- (BOOL)clearInputPreferences:(id *)a3;
- (BOOL)deactivateAudioSessionWithOptions:(unsigned int)a3 error:(id *)a4;
- (BOOL)getClientRequestsRecording;
- (BOOL)getForceGetSessionProperties;
- (BOOL)getSiriInputSource:(unint64_t *)a3 withIdentifier:(id *)a4 withIsMicrophoneCheck:(BOOL *)a5 forActivationMode:(int64_t)a6;
- (BOOL)isAirplayOneOfTheOutputRoutes:(id)a3;
- (BOOL)isBTDeviceInEar;
- (BOOL)isCurrentInputBuiltInMic;
- (BOOL)isInputAvailable;
- (BOOL)isMiniDuckingEnabled;
- (BOOL)isPickedRouteW1;
- (BOOL)isSWVolumeSupportedOnPickedRoute;
- (BOOL)isSessionActive;
- (BOOL)isSessionInSiriCategory;
- (BOOL)isSessionInSiriCategoryModeAndOptions:(unsigned int)a3;
- (BOOL)isSessionOutputInWirelessSplitterMode;
- (BOOL)predictIfMicrophoneShouldBeUsedForActivationMode:(int64_t)a3;
- (BOOL)setActivationContext:(id)a3 error:(id *)a4;
- (BOOL)setAudioHardwareControlFlags:(unint64_t)a3 error:(id *)a4;
- (BOOL)setCategory:(id)a3 mode:(id)a4 options:(unint64_t)a5 error:(id *)a6;
- (BOOL)setCategory:(id)a3 mode:(id)a4 routeSharingPolicy:(unint64_t)a5 options:(unint64_t)a6 error:(id *)a7;
- (BOOL)setDuckOthers:(id)a3 mixWithOthers:(id)a4 error:(id *)a5;
- (BOOL)setDuckToLevelDB:(id)a3 error:(id *)a4;
- (BOOL)setDuckToLevelScalar:(id)a3 error:(id *)a4;
- (BOOL)setDuckingFadeOutDuration:(id)a3 fadeInDuration:(id)a4 error:(id *)a5;
- (BOOL)setPreferredSampleRate:(double)a3 error:(id *)a4;
- (double)inputLatency;
- (double)inputSafetyOffset;
- (double)outputLatency;
- (double)outputSafetyOffset;
- (double)outputVolume;
- (double)speechDetectionDeviceSampleRate;
- (float)getDeviceGain;
- (id)currentRoute;
- (id)getActiveSessionDisplayIDsAsString;
- (id)getPlaybackRoute;
- (id)pickedRoute;
- (id)sessionCurrentInputRoutes;
- (id)sessionCurrentOutputRoutes;
- (id)siriRemoteInputIdentifier;
- (int)sessionState;
- (int)setSessionActivationContext:(id)a3;
- (int)setSessionAudioHWControlFlagsForActivationMode:(int64_t)a3 withOptions:(unint64_t)a4;
- (int)setSessionBufferSize:(int)a3;
- (int)setSessionCategoryModeOptionsForActivationMode:(int64_t)a3 withOptions:(unint64_t)a4;
- (int)setSessionSampleRateForActivationMode:(int64_t)a3;
- (int)setupOneTimeSessionSettingsForClient:(int64_t)a3;
- (int64_t)inputNumberOfChannels;
- (int64_t)reporterID;
- (unint64_t)siriInputSource;
- (unsigned)getOpaqueSessionID;
- (unsigned)getSessionActivationOptions;
- (void)changeDuckOthersOption:(BOOL)a3;
- (void)dealloc;
- (void)getHypotheticalRouteAndUpdateStates;
- (void)removeSessionNotifications:(id)a3;
- (void)setClientRequestsRecording:(BOOL)a3;
- (void)setDeviceGain:(float)a3;
- (void)setForceGetSessionProperties:(BOOL)a3;
- (void)setPlaybackRoute:(id)a3;
- (void)setSessionActivationOptions:(unsigned int)a3;
- (void)setSessionState:(int)a3;
- (void)setSessionStateWithoutLock:(int)a3;
- (void)setupSessionNotifications:(id)a3;
- (void)shouldEnableMiniDucking:(BOOL)a3 withOptions:(unint64_t)a4;
@end

@implementation AVVCSessionManager

- (double)inputLatency
{
  v18 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
LABEL_17:
        v5 = 0.0;
        goto LABEL_18;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315906;
      v11 = "AVVCSessionManager.mm";
      v12 = 1024;
      v13 = 1482;
      v14 = 2080;
      v15 = "inputLatency";
      v16 = 1024;
      v17 = 0;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v10, 0x22u);
    }

    goto LABEL_17;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v3 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  [(AVAudioSession *)self->_audioSession inputLatency];
  v5 = v4;
  self->_inputLatency = v4;
  if (v3)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

LABEL_18:
  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isSWVolumeSupportedOnPickedRoute
{
  v23 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
LABEL_17:
        LOBYTE(v7) = 0;
        goto LABEL_34;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136315906;
      v16 = "AVVCSessionManager.mm";
      v17 = 1024;
      v18 = 2051;
      v19 = 2080;
      v20 = "isSWVolumeSupportedOnPickedRoute";
      v21 = 1024;
      v22 = 0;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v15, 0x22u);
    }

    goto LABEL_17;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v3 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  v4 = [(AVAudioSession *)self->_audioSession pickedRoute];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:@"SoftwareVolumeEnabled"];
    LODWORD(v7) = [v6 BOOLValue];

    goto LABEL_25;
  }

  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!v7)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v15 = 136315394;
    v16 = "AVVCSessionManager.mm";
    v17 = 1024;
    v18 = 2059;
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d isSWVolumeSupportedOnPickedRoute: Picked Route is nil", &v15, 0x12u);
  }

  LODWORD(v7) = 0;
LABEL_25:
  if (!kAVVCScope)
  {
    v11 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
    goto LABEL_29;
  }

  v11 = *kAVVCScope;
  if (v11)
  {
LABEL_29:
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315650;
      v16 = "AVVCSessionManager.mm";
      v17 = 1024;
      v18 = 2062;
      v19 = 1024;
      LODWORD(v20) = v7;
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d isSWVolumeSupportedOnPickedRoute: %d", &v15, 0x18u);
    }
  }

  if (v3)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

LABEL_34:
  v13 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)isCurrentInputBuiltInMic
{
  v18 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
LABEL_17:
        v6 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v11 = 136315906;
      *&v11[4] = "AVVCSessionManager.mm";
      v12 = 1024;
      v13 = 2142;
      v14 = 2080;
      v15 = "isCurrentInputBuiltInMic";
      v16 = 1024;
      v17 = 0;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", v11, 0x22u);
    }

    goto LABEL_17;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v3 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  v4 = [(AVAudioSession *)self->_audioSession currentRoute];
  extractFirstInputPortTypeFromRouteDescription(v4, v11);
  v5 = *v11;
  v6 = areNSStringsEqualOrBothNil(*v11, *MEMORY[0x1E698D660]);

  if (v3)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

LABEL_18:
  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (int64_t)reporterID
{
  v17 = *MEMORY[0x1E69E9840];
  ElapsedTime::ElapsedTime(v16, "[AVVCSessionManager reporterID]", "reporterID", 0);
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v4 = *kAVVCScope;
      if (!v4)
      {
LABEL_16:
        reporterID = 0;
        goto LABEL_17;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315906;
      v9 = "AVVCSessionManager.mm";
      v10 = 1024;
      v11 = 1606;
      v12 = 2080;
      v13 = "reporterID";
      v14 = 1024;
      v15 = 0;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v8, 0x22u);
    }

    goto LABEL_16;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
    reporterID = self->_reporterID;
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  else
  {
    reporterID = self->_reporterID;
  }

LABEL_17:
  ElapsedTime::~ElapsedTime(v16);
  v6 = *MEMORY[0x1E69E9840];
  return reporterID;
}

- (id)currentRoute
{
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if (isAudioSessionAvailable(void)::audioSessionAvailable == 1)
  {
    if (IsSerializationEnabled(void)::onceToken != -1)
    {
      dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
    }

    v3 = IsSerializationEnabled(void)::enable;
    if (IsSerializationEnabled(void)::enable == 1)
    {
      std::recursive_mutex::lock(&self->mSessionManagerLock);
    }

    v4 = [(AVAudioSession *)self->_audioSession currentRoute];
    if (v3)
    {
      std::recursive_mutex::unlock(&self->mSessionManagerLock);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)getHypotheticalRouteAndUpdateStates
{
  v25 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if (isAudioSessionAvailable(void)::audioSessionAvailable == 1)
  {
    ElapsedTime::ElapsedTime(v24, "[AVVCSessionManager getHypotheticalRouteAndUpdateStates]", "getHypotheticalRouteAndUpdateStates", 0);
    v3 = [(AVVCSessionManager *)self pickedRoute];
    if (kAVVCScope)
    {
      v4 = *kAVVCScope;
      if (!v4)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315650;
      v19 = "AVVCSessionManager.mm";
      v20 = 1024;
      v21 = 524;
      v22 = 2112;
      v23[0] = v3;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d pickedRoute from AudioSession: %@", &v18, 0x1Cu);
    }

LABEL_11:
    self->mIsOtherAudioPlaying = [(AVAudioSession *)self->_audioSession isOtherAudioPlaying];
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      mIsOtherAudioPlaying = self->mIsOtherAudioPlaying;
      v18 = 136315650;
      v19 = "AVVCSessionManager.mm";
      v20 = 1024;
      v21 = 527;
      v22 = 1024;
      LODWORD(v23[0]) = mIsOtherAudioPlaying;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d isSomeOtherAudioPlaying: %d", &v18, 0x18u);
    }

LABEL_18:
    v9 = [v3 objectForKey:@"BTDetails_SupportsDoAP"];
    self->mRouteHasDoAPSupport = [v9 BOOLValue];

    v10 = [v3 objectForKey:@"SoftwareVolumeEnabled"];
    self->mOutputSupportsSWVolume = [v10 BOOLValue];

    if (self->mIsOtherAudioPlaying)
    {
      if (self->mRouteHasDoAPSupport && self->mShouldEnableMiniDucking)
      {
        self->mShouldDuckOthers = 1;
        mOutputSupportsSWVolume = self->mOutputSupportsSWVolume;
        goto LABEL_26;
      }
    }

    else if (self->_sessionState == 7)
    {
      v12 = (LOBYTE(self->mPreviousSessionCategoryOptions) >> 1) & 1;
LABEL_25:
      self->mShouldDuckOthers = v12;
      mOutputSupportsSWVolume = 1;
LABEL_26:
      self->mSessionNeedsVolumeControl = mOutputSupportsSWVolume;
      if (kAVVCScope)
      {
        v13 = *kAVVCScope;
        if (!v13)
        {
LABEL_33:

          ElapsedTime::~ElapsedTime(v24);
          goto LABEL_34;
        }
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
        v14 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        mShouldDuckOthers = self->mShouldDuckOthers;
        mSessionNeedsVolumeControl = self->mSessionNeedsVolumeControl;
        v18 = 136315906;
        v19 = "AVVCSessionManager.mm";
        v20 = 1024;
        v21 = 583;
        v22 = 1024;
        LODWORD(v23[0]) = mShouldDuckOthers;
        WORD2(v23[0]) = 1024;
        *(v23 + 6) = mSessionNeedsVolumeControl;
        _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d shouldDuckOthers(%d), sessionNeedsVolumeControl(%d)", &v18, 0x1Eu);
      }

      goto LABEL_33;
    }

    LOBYTE(v12) = self->mOutputSupportsSWVolume;
    goto LABEL_25;
  }

LABEL_34:
  v17 = *MEMORY[0x1E69E9840];
}

- (id)pickedRoute
{
  v8 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if (isAudioSessionAvailable(void)::audioSessionAvailable == 1)
  {
    if (IsSerializationEnabled(void)::onceToken != -1)
    {
      dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
    }

    v3 = IsSerializationEnabled(void)::enable;
    if (IsSerializationEnabled(void)::enable == 1)
    {
      std::recursive_mutex::lock(&self->mSessionManagerLock);
    }

    ElapsedTime::ElapsedTime(v7, "[AVVCSessionManager pickedRoute]", "pickedRoute", 0);
    v4 = [(AVAudioSession *)self->_audioSession pickedRoute];
    ElapsedTime::~ElapsedTime(v7);
    if (v3)
    {
      std::recursive_mutex::unlock(&self->mSessionManagerLock);
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (int)sessionState
{
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  if ((IsSerializationEnabled(void)::enable & 1) == 0)
  {
    return self->_sessionState;
  }

  std::recursive_mutex::lock(&self->mSessionManagerLock);
  sessionState = self->_sessionState;
  std::recursive_mutex::unlock(&self->mSessionManagerLock);
  return sessionState;
}

- (double)outputLatency
{
  v18 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
LABEL_17:
        v5 = 0.0;
        goto LABEL_18;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315906;
      v11 = "AVVCSessionManager.mm";
      v12 = 1024;
      v13 = 1490;
      v14 = 2080;
      v15 = "outputLatency";
      v16 = 1024;
      v17 = 0;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v10, 0x22u);
    }

    goto LABEL_17;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v3 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  [(AVAudioSession *)self->_audioSession outputLatency];
  v5 = v4;
  self->_outputLatency = v4;
  if (v3)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

LABEL_18:
  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isSessionOutputInWirelessSplitterMode
{
  v46 = *MEMORY[0x1E69E9840];
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v3 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  if (self->mDeviceIsIOSAccessory)
  {
    LOBYTE(v4) = 0;
    if (!v3)
    {
      goto LABEL_8;
    }

LABEL_7:
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
    goto LABEL_8;
  }

  v25 = self;
  v26 = v3;
  ElapsedTime::ElapsedTime(v31, "[AVVCSessionManager isSessionOutputInWirelessSplitterMode]", "isSessionOutputInWirelessSplitterMode", 0);
  if (isAVOutputContextAvailable(void)::onceToken1 != -1)
  {
    dispatch_once(&isAVOutputContextAvailable(void)::onceToken1, &__block_literal_global);
  }

  if ((isAVOutputContextAvailable(void)::wirelessSplitterModeAPIAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
        LOBYTE(v4) = 0;
        goto LABEL_51;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v41 = "AVVCCarplayRuntimeAvailability.mm";
      v42 = 1024;
      v43 = 70;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVOutputContext API not available", buf, 0x12u);
    }

    goto LABEL_29;
  }

  v7 = [getAVOutputContextClass() sharedSystemAudioContext];
  v24 = v7;
  v8 = [v7 supportsMultipleBluetoothOutputDevices];
  if (kAVVCScope)
  {
    v9 = *kAVVCScope;
    if (!v9)
    {
      if (v8)
      {
        goto LABEL_26;
      }

LABEL_29:
      LOBYTE(v4) = 0;
      goto LABEL_50;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v41 = "AVVCCarplayRuntimeAvailability.mm";
    v42 = 1024;
    v43 = 78;
    v44 = 1024;
    LODWORD(v45) = v8;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d supportsMultipleBTDevices: %d", buf, 0x18u);
  }

  if (!v8)
  {
    goto LABEL_29;
  }

LABEL_26:
  v12 = [v7 outputDevices];
  if (!kAVVCScope)
  {
    v13 = MEMORY[0x1E69E9C10];
    v14 = MEMORY[0x1E69E9C10];
    goto LABEL_31;
  }

  v13 = *kAVVCScope;
  if (v13)
  {
LABEL_31:
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v41 = "AVVCCarplayRuntimeAvailability.mm";
      v42 = 1024;
      v43 = 82;
      v44 = 2112;
      v45 = v12;
      _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Wireless Output Devices: %@", buf, 0x1Cu);
    }
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = v12;
  v4 = [v15 countByEnumeratingWithState:&v27 objects:buf count:16];
  if (!v4)
  {
    goto LABEL_49;
  }

  v16 = 0;
  v17 = MEMORY[0x1E69E9C10];
  v18 = *v28;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v28 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v20 = *(*(&v27 + 1) + 8 * i);
      v21 = [v20 supportsBluetoothSharing];
      if (kAVVCScope)
      {
        v22 = *kAVVCScope;
        if (!v22)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v23 = v17;
        v22 = v17;
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *v32 = 136315906;
        v33 = "AVVCCarplayRuntimeAvailability.mm";
        v34 = 1024;
        v35 = 86;
        v36 = 2048;
        v37 = v20;
        v38 = 1024;
        v39 = v21;
        _os_log_impl(&dword_1BA5AC000, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVOutputDevice %p supports BT sharing: %d", v32, 0x22u);
      }

LABEL_46:
      v16 += v21;
    }

    v4 = [v15 countByEnumeratingWithState:&v27 objects:buf count:16];
  }

  while (v4);
  LOBYTE(v4) = v16 > 1;
LABEL_49:

  v7 = v24;
LABEL_50:

  self = v25;
  v3 = v26;
LABEL_51:
  self->mSessionOutputIsWirelessSplitter = v4;
  ElapsedTime::~ElapsedTime(v31);
  if (v3)
  {
    goto LABEL_7;
  }

LABEL_8:
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (double)speechDetectionDeviceSampleRate
{
  v18 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
LABEL_17:
        v5 = 16000.0;
        goto LABEL_18;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315906;
      v11 = "AVVCSessionManager.mm";
      v12 = 1024;
      v13 = 1522;
      v14 = 2080;
      v15 = "speechDetectionDeviceSampleRate";
      v16 = 1024;
      v17 = 16000;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v10, 0x22u);
    }

    goto LABEL_17;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v3 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  [(AVAudioSession *)self->_audioSession speechDetectionDeviceSampleRate];
  v5 = v4;
  if (v3)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

LABEL_18:
  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)siriInputSource
{
  v18 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if (isAudioSessionAvailable(void)::audioSessionAvailable)
  {
    if (IsSerializationEnabled(void)::onceToken != -1)
    {
      dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
    }

    v3 = IsSerializationEnabled(void)::enable;
    if (IsSerializationEnabled(void)::enable == 1)
    {
      std::recursive_mutex::lock(&self->mSessionManagerLock);
    }

    v4 = [(AVAudioSession *)self->_audioSession currentRoute];
    v5 = [v4 siriInputSource];

    if (v3)
    {
      std::recursive_mutex::unlock(&self->mSessionManagerLock);
    }
  }

  else
  {
    v5 = 1936289391;
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315906;
      v11 = "AVVCSessionManager.mm";
      v12 = 1024;
      v13 = 1683;
      v14 = 2080;
      v15 = "siriInputSource";
      v16 = 1024;
      v17 = 1936289391;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v10, 0x22u);
    }
  }

LABEL_17:
  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isSessionActive
{
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  if (IsSerializationEnabled(void)::enable)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
    sessionState = self->_sessionState;
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  else
  {
    sessionState = self->_sessionState;
  }

  return sessionState > 4;
}

- (BOOL)isInputAvailable
{
  v19 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
LABEL_18:
        LOBYTE(v4) = 0;
        goto LABEL_25;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v11 = 136315906;
      v12 = "AVVCSessionManager.mm";
      v13 = 1024;
      v14 = 2070;
      v15 = 2080;
      v16 = "isInputAvailable";
      v17 = 1024;
      v18 = 0;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v11, 0x22u);
    }

    goto LABEL_18;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v3 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  ElapsedTime::ElapsedTime(&v11, "[AVVCSessionManager isInputAvailable]", "isInputAvailable", 0);
  v4 = [(AVAudioSession *)self->_audioSession isInputAvailable];
  ElapsedTime::~ElapsedTime(&v11);
  if (!kAVVCScope)
  {
    v5 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
    goto LABEL_20;
  }

  v5 = *kAVVCScope;
  if (v5)
  {
LABEL_20:
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315650;
      v12 = "AVVCSessionManager.mm";
      v13 = 1024;
      v14 = 2078;
      v15 = 1024;
      LODWORD(v16) = v4;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d input available %d", &v11, 0x18u);
    }
  }

  if (v3)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

LABEL_25:
  v9 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)setDuckToLevelScalar:(id)a3 error:(id *)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
LABEL_12:
        v7 = 1;
        goto LABEL_13;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315906;
      v13 = "AVVCSessionManager.mm";
      v14 = 1024;
      v15 = 2043;
      v16 = 2080;
      v17 = "setDuckToLevelScalar";
      v18 = 1024;
      v19 = 1;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v12, 0x22u);
    }

    goto LABEL_12;
  }

  v7 = [(AVAudioSession *)self->_audioSession setDuckToLevelScalar:v6 error:a4];
LABEL_13:

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)setDuckToLevelDB:(id)a3 error:(id *)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
LABEL_12:
        v7 = 1;
        goto LABEL_13;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315906;
      v13 = "AVVCSessionManager.mm";
      v14 = 1024;
      v15 = 2036;
      v16 = 2080;
      v17 = "setDuckToLevelDB";
      v18 = 1024;
      v19 = 1;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v12, 0x22u);
    }

    goto LABEL_12;
  }

  v7 = [(AVAudioSession *)self->_audioSession setDuckToLevelDB:v6 error:a4];
LABEL_13:

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

- (int64_t)inputNumberOfChannels
{
  v17 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v5 = *kAVVCScope;
      if (!v5)
      {
LABEL_17:
        v4 = 1;
        goto LABEL_18;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136315906;
      v10 = "AVVCSessionManager.mm";
      v11 = 1024;
      v12 = 2028;
      v13 = 2080;
      v14 = "inputNumberOfChannels";
      v15 = 1024;
      v16 = 1;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v9, 0x22u);
    }

    goto LABEL_17;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v3 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  v4 = [(AVAudioSession *)self->_audioSession inputNumberOfChannels];
  if (v3)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

LABEL_18:
  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)removeSessionNotifications:(id)a3
{
  v7 = a3;
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if (isAudioSessionAvailable(void)::audioSessionAvailable == 1)
  {
    if (IsSerializationEnabled(void)::onceToken != -1)
    {
      dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
    }

    v4 = IsSerializationEnabled(void)::enable;
    if (IsSerializationEnabled(void)::enable == 1)
    {
      std::recursive_mutex::lock(&self->mSessionManagerLock);
    }

    if (v7 && self->_audioSession)
    {
      v5 = [MEMORY[0x1E696AD88] defaultCenter];
      [v5 removeObserver:v7 name:*MEMORY[0x1E698D550] object:self->_audioSession];

      v6 = [MEMORY[0x1E696AD88] defaultCenter];
      [v6 removeObserver:v7 name:*MEMORY[0x1E698D6C8] object:self->_audioSession];
    }

    if (v4)
    {
      std::recursive_mutex::unlock(&self->mSessionManagerLock);
    }
  }
}

- (void)setupSessionNotifications:(id)a3
{
  v7 = a3;
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if (isAudioSessionAvailable(void)::audioSessionAvailable == 1)
  {
    if (IsSerializationEnabled(void)::onceToken != -1)
    {
      dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
    }

    v4 = IsSerializationEnabled(void)::enable;
    if (IsSerializationEnabled(void)::enable == 1)
    {
      std::recursive_mutex::lock(&self->mSessionManagerLock);
    }

    if (v7 && self->_audioSession)
    {
      v5 = [MEMORY[0x1E696AD88] defaultCenter];
      [v5 addObserver:v7 selector:NSSelectorFromString(&cfstr_Handleinterrup_0.isa) name:*MEMORY[0x1E698D550] object:self->_audioSession];

      v6 = [MEMORY[0x1E696AD88] defaultCenter];
      [v6 addObserver:v7 selector:NSSelectorFromString(&cfstr_Handleroutecha_0.isa) name:*MEMORY[0x1E698D6C8] object:self->_audioSession];
    }

    if (v4)
    {
      std::recursive_mutex::unlock(&self->mSessionManagerLock);
    }
  }
}

- (id)getActiveSessionDisplayIDsAsString
{
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if (isAudioSessionAvailable(void)::audioSessionAvailable == 1)
  {
    if (IsSerializationEnabled(void)::onceToken != -1)
    {
      dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
    }

    v3 = IsSerializationEnabled(void)::enable;
    if (IsSerializationEnabled(void)::enable == 1)
    {
      std::recursive_mutex::lock(&self->mSessionManagerLock);
    }

    v4 = [(AVAudioSession *)self->_audioSession activeSessionDisplayIDs];
    v5 = [v4 componentsJoinedByString:{@", "}];

    v6 = v5;
    if (v3)
    {
      std::recursive_mutex::unlock(&self->mSessionManagerLock);
    }
  }

  else
  {
    v6 = &stru_1F384E730;
  }

  return v6;
}

- (unsigned)getOpaqueSessionID
{
  v17 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v5 = *kAVVCScope;
      if (!v5)
      {
LABEL_17:
        v4 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136315906;
      v10 = "AVVCSessionManager.mm";
      v11 = 1024;
      v12 = 1951;
      v13 = 2080;
      v14 = "getOpaqueSessionID";
      v15 = 1024;
      v16 = 0;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v9, 0x22u);
    }

    goto LABEL_17;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v3 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  v4 = [(AVAudioSession *)self->_audioSession opaqueSessionID];
  if (v3)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

LABEL_18:
  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)setActivationContext:(id)a3 error:(id *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v9 = *kAVVCScope;
      if (!v9)
      {
LABEL_17:
        v8 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v13 = 136315906;
      v14 = "AVVCSessionManager.mm";
      v15 = 1024;
      v16 = 1929;
      v17 = 2080;
      v18 = "setActivationContext";
      v19 = 1024;
      v20 = 0;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v13, 0x22u);
    }

    goto LABEL_17;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v7 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  v8 = [(AVAudioSession *)self->_audioSession setActivationContext:v6 error:a4];
  if (v7)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

LABEL_18:

  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)getSiriInputSource:(unint64_t *)a3 withIdentifier:(id *)a4 withIsMicrophoneCheck:(BOOL *)a5 forActivationMode:(int64_t)a6
{
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    *a3 = 1936289391;
    return 1;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v11 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  v12 = [(AVAudioSession *)self->_audioSession currentRoute];
  v13 = [v12 siriInputSource];
  v14 = 0;
  v15 = 0;
  *a3 = v13;
  if (v13 > 1936290659)
  {
    if (v13 == 1936290660)
    {
LABEL_23:
      v14 = [(AVVCSessionManager *)self predictIfMicrophoneShouldBeUsedForActivationMode:a6];
      v15 = 0;
      if (!a4)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    if (v13 != 1936679529)
    {
      goto LABEL_16;
    }

LABEL_15:
    v15 = [v12 siriRemoteInputIdentifier];
    v14 = 0;
    goto LABEL_16;
  }

  if (v13 == 1936024681)
  {
    goto LABEL_15;
  }

  if (v13 == 1936286822)
  {
    goto LABEL_23;
  }

LABEL_16:
  if (a4)
  {
LABEL_17:
    v16 = v15;
    *a4 = v15;
  }

LABEL_18:
  if (a5)
  {
    *a5 = v14;
  }

  if (v11)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  return 1;
}

- (BOOL)predictIfMicrophoneShouldBeUsedForActivationMode:(int64_t)a3
{
  v85 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
LABEL_20:
        LOBYTE(v7) = 0;
        goto LABEL_102;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v68 = "AVVCSessionManager.mm";
      v69 = 1024;
      v70 = 1762;
      v71 = 2080;
      v72 = "predictIfMicrophoneShouldBeUsedForActivationMode";
      v73 = 1024;
      LODWORD(v74) = 0;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", buf, 0x22u);
    }

    goto LABEL_20;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v50 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  if ((isHACProduct() & 1) == 0)
  {
    LOBYTE(v7) = 0;
    goto LABEL_100;
  }

  v4 = [(AVAudioSession *)self->_audioSession availableInputs];
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

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v68 = "AVVCSessionManager.mm";
    v69 = 1024;
    v70 = 1771;
    v71 = 2112;
    v72 = v4;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d availableInputs: %@", buf, 0x1Cu);
  }

LABEL_25:
  v66 = 0;
  v49 = [(AVAudioSession *)self->_audioSession currentRoute];
  extractFirstInputPortTypeFromRouteDescription(v49, &v66);
  if (![v4 count])
  {
    if (kAVVCScope)
    {
      v13 = *kAVVCScope;
      if (!v13)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v23 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v68 = "AVVCSessionManager.mm";
      v69 = 1024;
      v70 = 1778;
      _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d predictIfMicrophoneShouldBeUsedForActivationMode: No available inputs.", buf, 0x12u);
    }

    goto LABEL_86;
  }

  if ([v4 count] == 1)
  {
    v10 = [v4 objectAtIndexedSubscript:0];
    v11 = [v10 portType];

    if (kAVVCScope)
    {
      v12 = *kAVVCScope;
      v13 = v11;
      if (!v12)
      {
LABEL_57:
        if (v13 == *MEMORY[0x1E698D660])
        {
          LOBYTE(v7) = 1;
          goto LABEL_91;
        }

        if (kAVVCScope)
        {
          v25 = *kAVVCScope;
          if (!v25)
          {
            goto LABEL_86;
          }
        }

        else
        {
          v25 = MEMORY[0x1E69E9C10];
          v43 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v68 = "AVVCSessionManager.mm";
          v69 = 1024;
          v70 = 1786;
          _os_log_impl(&dword_1BA5AC000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d predictIfMicrophoneShouldBeUsedForActivationMode: Only one input available: Not Builtin Mic.", buf, 0x12u);
        }

        LOBYTE(v7) = 0;
        v13 = v11;
        goto LABEL_91;
      }
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v24 = MEMORY[0x1E69E9C10];
      v13 = v11;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v68 = "AVVCSessionManager.mm";
      v69 = 1024;
      v70 = 1782;
      v71 = 2112;
      v72 = v13;
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d predictIfMicrophoneShouldBeUsedForActivationMode: Only one input available: %@", buf, 0x1Cu);
    }

    v13 = v11;
    goto LABEL_57;
  }

  if (a3 == 1752132965)
  {
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v13 = v4;
    obj = v13;
    v26 = [v13 countByEnumeratingWithState:&v58 objects:v83 count:16];
    if (!v26)
    {
      goto LABEL_86;
    }

    v7 = 0;
    v27 = *v59;
    v56 = *MEMORY[0x1E698D658];
    v55 = *MEMORY[0x1E698D6A8];
    v54 = *MEMORY[0x1E698D690];
    v51 = v66;
LABEL_64:
    v57 = v26;
    v28 = 0;
    while (1)
    {
      if (*v59 != v27)
      {
        objc_enumerationMutation(obj);
      }

      v29 = *(*(&v58 + 1) + 8 * v28);
      v30 = [v29 portType];
      if (kAVVCScope)
      {
        v31 = *kAVVCScope;
        if (!v31)
        {
          goto LABEL_74;
        }
      }

      else
      {
        v32 = MEMORY[0x1E69E9C10];
        v33 = MEMORY[0x1E69E9C10];
        v31 = v32;
      }

      v34 = v31;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = v7;
        [v29 portName];
        v37 = v36 = v27;
        v38 = [v29 UID];
        v39 = [v29 portSubType];
        v40 = Get4CCFromInt([v29 endpointType]);
        v41 = [v29 isHeadphones];
        *buf = 136316930;
        v68 = "AVVCSessionManager.mm";
        v69 = 1024;
        v70 = 1833;
        v71 = 2112;
        v72 = v30;
        v73 = 2112;
        v74 = v37;
        v75 = 2112;
        v76 = v38;
        v77 = 2048;
        v78 = v39;
        v79 = 2112;
        v80 = v40;
        v81 = 1024;
        v82 = v41;
        _os_log_impl(&dword_1BA5AC000, v34, OS_LOG_TYPE_DEFAULT, "%25s:%-5d predictIfMicrophoneShouldBeUsedForActivationMode: Available input: [ portType(%@), portName(%@), portUID(%@), portSubType(%ld), endpointType(%@) isHeadphones(%d) ]", buf, 0x4Au);

        v27 = v36;
        v7 = v35;
      }

LABEL_74:
      if (v30 == v56)
      {
        if (![v29 isHeadphones])
        {
          v7 = 1;
          goto LABEL_83;
        }

        v42 = [(AVVCSessionManager *)self isBTDeviceInEar];
        goto LABEL_80;
      }

      if (v30 == v55)
      {
        v7 = 0;
        goto LABEL_83;
      }

      if (v30 == v54)
      {
        v42 = areNSStringsEqualOrBothNil(v51, v54);
LABEL_80:
        v7 = v42 ^ 1u;
      }

LABEL_83:

      if (v57 == ++v28)
      {
        v13 = obj;
        v26 = [obj countByEnumeratingWithState:&v58 objects:v83 count:16];
        if (!v26)
        {
          goto LABEL_91;
        }

        goto LABEL_64;
      }
    }
  }

  if (a3 != 1684628340)
  {
LABEL_49:
    LOBYTE(v7) = 0;
    goto LABEL_92;
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v13 = v4;
  v14 = v13;
  v15 = [v13 countByEnumeratingWithState:&v62 objects:v84 count:16];
  if (!v15)
  {
LABEL_86:
    LOBYTE(v7) = 0;
    goto LABEL_91;
  }

  LOBYTE(v7) = 0;
  v16 = *v63;
  v17 = *MEMORY[0x1E698D658];
  v18 = *MEMORY[0x1E698D660];
  do
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v63 != v16)
      {
        objc_enumerationMutation(v14);
      }

      v20 = *(*(&v62 + 1) + 8 * i);
      v21 = [v20 portType];
      v22 = v21;
      if (v21 == v17)
      {
        if ([v20 isHeadphones])
        {
          LOBYTE(v7) = ![(AVVCSessionManager *)self isBTDeviceInEar];
        }

        else
        {
          LOBYTE(v7) = 1;
        }
      }

      else if (v21 != v18)
      {
        LOBYTE(v7) = 0;
      }
    }

    v13 = v14;
    v15 = [v14 countByEnumeratingWithState:&v62 objects:v84 count:16];
  }

  while (v15);
LABEL_91:

LABEL_92:
  if (!kAVVCScope)
  {
    v44 = MEMORY[0x1E69E9C10];
    v45 = MEMORY[0x1E69E9C10];
    goto LABEL_96;
  }

  v44 = *kAVVCScope;
  if (v44)
  {
LABEL_96:
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v68 = "AVVCSessionManager.mm";
      v69 = 1024;
      v70 = 1873;
      v71 = 1024;
      LODWORD(v72) = v7 & 1;
      _os_log_impl(&dword_1BA5AC000, v44, OS_LOG_TYPE_DEFAULT, "%25s:%-5d predictIfMicrophoneShouldBeUsedForActivationMode: isMicrophoneBuiltin(%d)", buf, 0x18u);
    }
  }

LABEL_100:
  if (v50)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

LABEL_102:
  v46 = *MEMORY[0x1E69E9840];
  return v7 & 1;
}

- (BOOL)isBTDeviceInEar
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [(AVVCSessionManager *)self pickedRoute];
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
    v19 = 136315650;
    v20 = "AVVCSessionManager.mm";
    v21 = 1024;
    v22 = 1730;
    v23 = 2112;
    v24 = v2;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d isBTDeviceInEar: pickedRoute from AudioSession: %@", &v19, 0x1Cu);
  }

LABEL_8:
  if (v2)
  {
    v5 = [v2 objectForKey:@"IsBTRoute"];
    v6 = [v5 BOOLValue];

    if (v6)
    {
      v7 = [v2 objectForKey:@"PreferredExternalRouteDetails_InEarDetectSupported"];
      v8 = [v7 BOOLValue];

      v9 = [v2 objectForKey:@"PreferredExternalRouteDetails_InEarDetectEnabled"];
      LOBYTE(v7) = [v9 BOOLValue];

      v10 = [v2 objectForKey:@"PreferredExternalRouteDetails_IsActive"];
      v11 = [v10 BOOLValue];

      v12 = v8 & v7 ^ 1 | v11;
      goto LABEL_19;
    }

    if (kAVVCScope)
    {
      v13 = *kAVVCScope;
      if (!v13)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315394;
      v20 = "AVVCSessionManager.mm";
      v21 = 1024;
      v22 = 1750;
      _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d isBTDeviceInEar: pickedRoute is not a BT device", &v19, 0x12u);
    }
  }

LABEL_18:
  v12 = 0;
LABEL_19:
  if (kAVVCScope)
  {
    v15 = *kAVVCScope;
    if (!v15)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v15 = MEMORY[0x1E69E9C10];
    v16 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315650;
    v20 = "AVVCSessionManager.mm";
    v21 = 1024;
    v22 = 1754;
    v23 = 1024;
    LODWORD(v24) = v12 & 1;
    _os_log_impl(&dword_1BA5AC000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d isBTDeviceInEar: (%d)", &v19, 0x18u);
  }

LABEL_26:
  v17 = *MEMORY[0x1E69E9840];
  return v12 & 1;
}

- (BOOL)isPickedRouteW1
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [(AVVCSessionManager *)self pickedRoute];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKey:@"BTDetails_ProductID"];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 hasSuffix:@"76, 8194"];
    }

    else
    {
      v6 = 0;
    }

    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
LABEL_21:

        goto LABEL_22;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "NO";
      v14 = "AVVCSessionManager.mm";
      v15 = 1024;
      v16 = 1715;
      v13 = 136315906;
      if (v6)
      {
        v9 = "YES";
      }

      v17 = 2080;
      v18 = v9;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d isPickedRouteW1: %s, id: %@", &v13, 0x26u);
    }

    goto LABEL_21;
  }

  if (!kAVVCScope)
  {
    v5 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
    goto LABEL_18;
  }

  v5 = *kAVVCScope;
  if (v5)
  {
LABEL_18:
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "AVVCSessionManager.mm";
      v15 = 1024;
      v16 = 1718;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d isPickedRouteW1: NO. pickedRoute is nil", &v13, 0x12u);
    }

    LOBYTE(v6) = 0;
    goto LABEL_21;
  }

  LOBYTE(v6) = 0;
LABEL_22:

  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)siriRemoteInputIdentifier
{
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if (isAudioSessionAvailable(void)::audioSessionAvailable == 1)
  {
    if (IsSerializationEnabled(void)::onceToken != -1)
    {
      dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
    }

    v3 = IsSerializationEnabled(void)::enable;
    if (IsSerializationEnabled(void)::enable == 1)
    {
      std::recursive_mutex::lock(&self->mSessionManagerLock);
    }

    v4 = [(AVAudioSession *)self->_audioSession currentRoute];
    v5 = [v4 siriRemoteInputIdentifier];

    v6 = v5;
    if (v3)
    {
      std::recursive_mutex::unlock(&self->mSessionManagerLock);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)sessionCurrentInputRoutes
{
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if (isAudioSessionAvailable(void)::audioSessionAvailable == 1)
  {
    if (IsSerializationEnabled(void)::onceToken != -1)
    {
      dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
    }

    v3 = IsSerializationEnabled(void)::enable;
    if (IsSerializationEnabled(void)::enable == 1)
    {
      std::recursive_mutex::lock(&self->mSessionManagerLock);
    }

    v4 = [(AVAudioSession *)self->_audioSession currentRoute];
    v5 = [v4 inputs];

    v6 = v5;
    if (v3)
    {
      std::recursive_mutex::unlock(&self->mSessionManagerLock);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)sessionCurrentOutputRoutes
{
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if (isAudioSessionAvailable(void)::audioSessionAvailable == 1)
  {
    if (IsSerializationEnabled(void)::onceToken != -1)
    {
      dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
    }

    v3 = IsSerializationEnabled(void)::enable;
    if (IsSerializationEnabled(void)::enable == 1)
    {
      std::recursive_mutex::lock(&self->mSessionManagerLock);
    }

    v4 = [(AVAudioSession *)self->_audioSession currentRoute];
    v5 = [v4 outputs];

    v6 = v5;
    if (v3)
    {
      std::recursive_mutex::unlock(&self->mSessionManagerLock);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)setPreferredSampleRate:(double)a3 error:(id *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v9 = *kAVVCScope;
      if (!v9)
      {
LABEL_17:
        v8 = 1;
        goto LABEL_18;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v13 = 136315906;
      v14 = "AVVCSessionManager.mm";
      v15 = 1024;
      v16 = 1625;
      v17 = 2080;
      v18 = "setPreferredSampleRate:error";
      v19 = 1024;
      v20 = 1;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v13, 0x22u);
    }

    goto LABEL_17;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v7 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  v8 = [(AVAudioSession *)self->_audioSession setPreferredSampleRate:a4 error:a3];
  if (v7)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

LABEL_18:
  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)setAudioHardwareControlFlags:(unint64_t)a3 error:(id *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v9 = *kAVVCScope;
      if (!v9)
      {
LABEL_17:
        v8 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v13 = 136315906;
      v14 = "AVVCSessionManager.mm";
      v15 = 1024;
      v16 = 1592;
      v17 = 2080;
      v18 = "setAudioHardwareControlFlags";
      v19 = 1024;
      v20 = 0;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v13, 0x22u);
    }

    goto LABEL_17;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v7 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  v8 = [(AVAudioSession *)self->_audioSession setAudioHardwareControlFlags:a3 error:a4];
  if (v7)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

LABEL_18:
  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)isSessionInSiriCategory
{
  v17 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v5 = *kAVVCScope;
      if (!v5)
      {
LABEL_17:
        v4 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136315906;
      v10 = "AVVCSessionManager.mm";
      v11 = 1024;
      v12 = 1579;
      v13 = 2080;
      v14 = "isSessionInSiriCategory";
      v15 = 1024;
      v16 = 0;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v9, 0x22u);
    }

    goto LABEL_17;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v3 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  v4 = [(NSString *)self->mPreviousSessionCategory isEqualToString:*MEMORY[0x1E698D518]];
  if (v3)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

LABEL_18:
  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)isSessionInSiriCategoryModeAndOptions:(unsigned int)a3
{
  v27 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v10 = *kAVVCScope;
      if (!v10)
      {
LABEL_29:
        v13 = 0;
        goto LABEL_30;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v17 = 136315906;
      v18 = "AVVCSessionManager.mm";
      v19 = 1024;
      v20 = 1559;
      v21 = 2080;
      v22 = "speechDetectionDeviceSampleRate";
      v23 = 1024;
      LODWORD(v24) = 0;
      _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v17, 0x22u);
    }

    goto LABEL_29;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v5 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  v6 = self->mPreviousSessionCategory;
  v7 = self->mPreviousSessionMode;
  mPreviousSessionCategoryOptions = self->mPreviousSessionCategoryOptions;
  if (!kAVVCScope)
  {
    v9 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
    goto LABEL_15;
  }

  v9 = *kAVVCScope;
  if (v9)
  {
LABEL_15:
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v17 = 136316162;
      v18 = "AVVCSessionManager.mm";
      v19 = 1024;
      v20 = 1565;
      v21 = 2112;
      v22 = v6;
      v23 = 2112;
      v24 = v7;
      v25 = 1024;
      v26 = mPreviousSessionCategoryOptions;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d isSessionInSiriCategoryModeAndOptions: about to set Play&Record category, speech recognition/assistant mode. Current category: %@, mode: %@, options: 0x%x", &v17, 0x2Cu);
    }
  }

  if ([(NSString *)v6 isEqualToString:*MEMORY[0x1E698D518]])
  {
    v12 = [(NSString *)v7 isEqualToString:*MEMORY[0x1E698D600]];
    v13 = mPreviousSessionCategoryOptions == a3 && v12;
  }

  else
  {
    v13 = 0;
  }

  if (v5)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

LABEL_30:
  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)clearInputPreferences:(id *)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
LABEL_17:
        v6 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v11 = 136315906;
      v12 = "AVVCSessionManager.mm";
      v13 = 1024;
      v14 = 1548;
      v15 = 2080;
      v16 = "clearInputPreferences";
      v17 = 1024;
      v18 = 0;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v11, 0x22u);
    }

    goto LABEL_17;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v5 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  v6 = [(AVAudioSession *)self->_audioSession clearInputPreferences:a3];
  if (v5)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

LABEL_18:
  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)setCategory:(id)a3 mode:(id)a4 routeSharingPolicy:(unint64_t)a5 options:(unint64_t)a6 error:(id *)a7
{
  v28 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v16 = *kAVVCScope;
      if (!v16)
      {
LABEL_17:
        v15 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v20 = 136315906;
      v21 = "AVVCSessionManager.mm";
      v22 = 1024;
      v23 = 1540;
      v24 = 2080;
      v25 = "setCategory:mode:routeSharingPolicy:options";
      v26 = 1024;
      v27 = 0;
      _os_log_impl(&dword_1BA5AC000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v20, 0x22u);
    }

    goto LABEL_17;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v14 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  v15 = [(AVAudioSession *)self->_audioSession setCategory:v12 mode:v13 routeSharingPolicy:a5 options:a6 error:a7];
  if (v14)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

LABEL_18:

  v18 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)setCategory:(id)a3 mode:(id)a4 options:(unint64_t)a5 error:(id *)a6
{
  v26 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v14 = *kAVVCScope;
      if (!v14)
      {
LABEL_17:
        v13 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      v14 = MEMORY[0x1E69E9C10];
      v15 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v18 = 136315906;
      v19 = "AVVCSessionManager.mm";
      v20 = 1024;
      v21 = 1531;
      v22 = 2080;
      v23 = "setCategory:mode:options";
      v24 = 1024;
      v25 = 0;
      _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v18, 0x22u);
    }

    goto LABEL_17;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v12 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  v13 = [(AVAudioSession *)self->_audioSession setCategory:v10 mode:v11 options:a5 error:a6];
  if (v12)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

LABEL_18:

  v16 = *MEMORY[0x1E69E9840];
  return v13;
}

- (double)outputVolume
{
  v18 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
LABEL_17:
        v5 = 0.0;
        goto LABEL_18;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315906;
      v11 = "AVVCSessionManager.mm";
      v12 = 1024;
      v13 = 1514;
      v14 = 2080;
      v15 = "outputVolume";
      v16 = 1024;
      v17 = 0;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v10, 0x22u);
    }

    goto LABEL_17;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v3 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  [(AVAudioSession *)self->_audioSession outputVolume];
  v5 = v4;
  self->_outputVolume = v4;
  if (v3)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

LABEL_18:
  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (double)inputSafetyOffset
{
  v18 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
LABEL_17:
        v5 = 0.0;
        goto LABEL_18;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315906;
      v11 = "AVVCSessionManager.mm";
      v12 = 1024;
      v13 = 1506;
      v14 = 2080;
      v15 = "inputSafetyOffset";
      v16 = 1024;
      v17 = 0;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v10, 0x22u);
    }

    goto LABEL_17;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v3 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  [(AVAudioSession *)self->_audioSession inputSafetyOffset];
  v5 = v4;
  self->_inputSafetyOffset = v4;
  if (v3)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

LABEL_18:
  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (double)outputSafetyOffset
{
  v18 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
LABEL_17:
        v5 = 0.0;
        goto LABEL_18;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315906;
      v11 = "AVVCSessionManager.mm";
      v12 = 1024;
      v13 = 1498;
      v14 = 2080;
      v15 = "outputSafetyOffset";
      v16 = 1024;
      v17 = 0;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v10, 0x22u);
    }

    goto LABEL_17;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v3 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  [(AVAudioSession *)self->_audioSession outputSafetyOffset];
  v5 = v4;
  self->_outputSafetyOffset = v4;
  if (v3)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

LABEL_18:
  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)getForceGetSessionProperties
{
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  if (IsSerializationEnabled(void)::enable)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
    forceGetSessionProperties = self->_forceGetSessionProperties;
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  else
  {
    return self->_forceGetSessionProperties;
  }

  return forceGetSessionProperties;
}

- (void)setForceGetSessionProperties:(BOOL)a3
{
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  if (IsSerializationEnabled(void)::enable)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
    self->_forceGetSessionProperties = a3;

    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  else
  {
    self->_forceGetSessionProperties = a3;
  }
}

- (id)getPlaybackRoute
{
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  if (IsSerializationEnabled(void)::enable)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
    v3 = self->_playbackRoute;
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  else
  {
    v3 = self->_playbackRoute;
  }

  return v3;
}

- (void)setPlaybackRoute:(id)a3
{
  v4 = a3;
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
    playbackRoute = self->_playbackRoute;
    self->_playbackRoute = v4;

    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  else
  {
    v6 = self->_playbackRoute;
    self->_playbackRoute = v4;
  }
}

- (float)getDeviceGain
{
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  if ((IsSerializationEnabled(void)::enable & 1) == 0)
  {
    return self->_deviceGain;
  }

  std::recursive_mutex::lock(&self->mSessionManagerLock);
  deviceGain = self->_deviceGain;
  std::recursive_mutex::unlock(&self->mSessionManagerLock);
  return deviceGain;
}

- (void)setDeviceGain:(float)a3
{
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  if (IsSerializationEnabled(void)::enable)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
    self->_deviceGain = a3;

    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  else
  {
    self->_deviceGain = a3;
  }
}

- (BOOL)getClientRequestsRecording
{
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  if (IsSerializationEnabled(void)::enable)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
    clientRequestsRecording = self->_clientRequestsRecording;
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  else
  {
    return self->_clientRequestsRecording;
  }

  return clientRequestsRecording;
}

- (void)setClientRequestsRecording:(BOOL)a3
{
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  if (IsSerializationEnabled(void)::enable)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
    self->_clientRequestsRecording = a3;

    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  else
  {
    self->_clientRequestsRecording = a3;
  }
}

- (void)setSessionStateWithoutLock:(int)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v5 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  if (kAVVCScope)
  {
    v6 = *kAVVCScope;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    sessionState = self->_sessionState;
    if (sessionState > 7)
    {
      v9 = "ILLEGAL";
    }

    else
    {
      v9 = off_1E7EF63F8[sessionState];
    }

    if (a3 > 7)
    {
      v10 = "ILLEGAL";
    }

    else
    {
      v10 = off_1E7EF63F8[a3];
    }

    v12 = 136316162;
    v13 = "AVVCSessionManager.mm";
    v14 = 1024;
    v15 = 1396;
    v16 = 2048;
    v17 = self;
    v18 = 2080;
    v19 = v9;
    v20 = 2080;
    v21 = v10;
    _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d session(%p) state %s => %s", &v12, 0x30u);
  }

LABEL_18:
  self->_sessionState = a3;
  if (v5)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setSessionState:(int)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v5 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  if (kAVVCScope)
  {
    v6 = *kAVVCScope;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    sessionState = self->_sessionState;
    if (sessionState > 7)
    {
      v9 = "ILLEGAL";
    }

    else
    {
      v9 = off_1E7EF63F8[sessionState];
    }

    if (a3 > 7)
    {
      v10 = "ILLEGAL";
    }

    else
    {
      v10 = off_1E7EF63F8[a3];
    }

    v12 = 136316162;
    v13 = "AVVCSessionManager.mm";
    v14 = 1024;
    v15 = 1390;
    v16 = 2048;
    v17 = self;
    v18 = 2080;
    v19 = v9;
    v20 = 2080;
    v21 = v10;
    _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d session(%p) state %s => %s", &v12, 0x30u);
  }

LABEL_18:
  self->_sessionState = a3;
  if (v5)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)deactivateAudioSessionWithOptions:(unsigned int)a3 error:(id *)a4
{
  v38 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v10 = *kAVVCScope;
      if (!v10)
      {
LABEL_18:
        LOBYTE(v12) = 1;
        goto LABEL_44;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v31 = "AVVCSessionManager.mm";
      v32 = 1024;
      v33 = 1357;
      v34 = 2080;
      v35 = "deactivateAudioSessionWithOptions";
      v36 = 1024;
      v37 = 1;
      _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", buf, 0x22u);
    }

    goto LABEL_18;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v7 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  v8 = [(AVVCSessionManager *)self audioSession];
  [(AVVCSessionManager *)self setSessionStateWithoutLock:4];
  if (kAVVCScope)
  {
    v9 = *kAVVCScope;
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v13 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v31 = "AVVCSessionManager.mm";
    v32 = 1024;
    v33 = 1365;
    v34 = 1024;
    LODWORD(v35) = a3;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d deactivateAudioSession: session options : %d", buf, 0x18u);
  }

LABEL_23:
  v28 = 0;
  v12 = [v8 setActive:0 withOptions:a3 error:&v28];
  v14 = v28;
  v15 = [v14 code];
  if (!v12)
  {
    if (kAVVCScope)
    {
      v17 = *kAVVCScope;
      if (!v17)
      {
LABEL_39:
        v21 = v15 != 1836282486;
        goto LABEL_40;
      }
    }

    else
    {
      v17 = MEMORY[0x1E69E9C10];
      v22 = MEMORY[0x1E69E9C10];
    }

    v23 = v17;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(v29, v15);
      v24 = [(AVAudioSession *)self->_audioSession opaqueSessionID];
      *buf = 136315906;
      v31 = "AVVCSessionManager.mm";
      v32 = 1024;
      v33 = 1375;
      v34 = 2080;
      v35 = v29;
      v36 = 1024;
      v37 = v24;
      _os_log_impl(&dword_1BA5AC000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d deactivateAudioSession failed with error: %s, session id:0x%x", buf, 0x22u);
    }

    goto LABEL_39;
  }

  if (!kAVVCScope)
  {
    v16 = MEMORY[0x1E69E9C10];
    v18 = MEMORY[0x1E69E9C10];
    goto LABEL_31;
  }

  v16 = *kAVVCScope;
  if (v16)
  {
LABEL_31:
    v19 = v16;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      CAX4CCString::CAX4CCString(v29, v15);
      v20 = [(AVAudioSession *)self->_audioSession opaqueSessionID];
      *buf = 136315906;
      v31 = "AVVCSessionManager.mm";
      v32 = 1024;
      v33 = 1371;
      v34 = 2080;
      v35 = v29;
      v36 = 1024;
      v37 = v20;
      _os_log_impl(&dword_1BA5AC000, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d deactivateAudioSession succeeded error: %s, session id:0x%x", buf, 0x22u);
    }
  }

  v21 = 1;
LABEL_40:
  [(AVVCSessionManager *)self setSessionStateWithoutLock:v21];
  if (a4)
  {
    v25 = v14;
    *a4 = v14;
  }

  if (v7)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

LABEL_44:
  v26 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)activateAudioSessionWithPrewarm:(BOOL)a3 error:(id *)a4
{
  v5 = a3;
  v53 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v9 = *kAVVCScope;
      if (!v9)
      {
LABEL_21:
        LOBYTE(v12) = 1;
        goto LABEL_47;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v44 = "AVVCSessionManager.mm";
      v45 = 1024;
      v46 = 1301;
      v47 = 2080;
      v48 = "activateAudioSessionWithPrewarm";
      v49 = 1024;
      LODWORD(v50) = 1;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", buf, 0x22u);
    }

    goto LABEL_21;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v30 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__6402;
  v40 = __Block_byref_object_dispose__6403;
  v41 = 0;
  v31 = [(AVVCSessionManager *)self audioSession];
  if (v5)
  {
    [(AVVCSessionManager *)self setSessionStateWithoutLock:5];
    mSessionActivationOptions = 0x2000;
    v8 = @"prewarmAudioSession";
  }

  else
  {
    [(AVVCSessionManager *)self setSessionStateWithoutLock:6];
    mSessionActivationOptions = self->mSessionActivationOptions;
    v8 = @"activateAudioSession";
  }

  if (kAVVCScope)
  {
    v10 = *kAVVCScope;
    if (!v10)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v13 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v44 = "AVVCSessionManager.mm";
    v45 = 1024;
    v46 = 1320;
    v47 = 2112;
    v48 = v8;
    v49 = 1024;
    LODWORD(v50) = mSessionActivationOptions;
    _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %@: session options : %d", buf, 0x22u);
  }

LABEL_26:
  ProfileMetrics(&cfstr_AvvcProfilePro_6.isa);
  kdebug_trace();
  ElapsedTime::ElapsedTime(buf, "[AVVCSessionManager activateAudioSessionWithPrewarm:error:]", "AVAudioSessionSetActive", 0);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__AVVCSessionManager_activateAudioSessionWithPrewarm_error___block_invoke;
  aBlock[3] = &unk_1E7EF63D0;
  v14 = v31;
  v35 = mSessionActivationOptions;
  v33 = v14;
  v34 = &v36;
  v15 = _Block_copy(aBlock);
  v16 = objc_autoreleasePoolPush();
  v17 = +[AVVCMetricsManager sharedManager];
  v12 = [v17 measureElapseTimeForMetric:@"SetSessionActiveTime" block:v15];

  objc_autoreleasePoolPop(v16);
  ElapsedTime::~ElapsedTime(buf);
  kdebug_trace();
  ProfileMetrics(&cfstr_AvvcProfilePro_7.isa);
  v18 = [v37[5] code];
  if (!v12)
  {
    if (kAVVCScope)
    {
      v20 = *kAVVCScope;
      if (!v20)
      {
LABEL_42:
        v24 = v18 != 1836282486;
        goto LABEL_43;
      }
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
      v25 = MEMORY[0x1E69E9C10];
    }

    v26 = v20;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(v42, v18);
      v27 = [(AVAudioSession *)self->_audioSession opaqueSessionID];
      *buf = 136316162;
      v44 = "AVVCSessionManager.mm";
      v45 = 1024;
      v46 = 1344;
      v47 = 2112;
      v48 = v8;
      v49 = 2080;
      v50 = v42;
      v51 = 1024;
      v52 = v27;
      _os_log_impl(&dword_1BA5AC000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d %@ failed with error: %s, session id:0x%x", buf, 0x2Cu);
    }

    goto LABEL_42;
  }

  if (!kAVVCScope)
  {
    v19 = MEMORY[0x1E69E9C10];
    v21 = MEMORY[0x1E69E9C10];
    goto LABEL_34;
  }

  v19 = *kAVVCScope;
  if (v19)
  {
LABEL_34:
    v22 = v19;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      CAX4CCString::CAX4CCString(v42, v18);
      v23 = [(AVAudioSession *)self->_audioSession opaqueSessionID];
      *buf = 136316162;
      v44 = "AVVCSessionManager.mm";
      v45 = 1024;
      v46 = 1340;
      v47 = 2112;
      v48 = v8;
      v49 = 2080;
      v50 = v42;
      v51 = 1024;
      v52 = v23;
      _os_log_impl(&dword_1BA5AC000, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %@ succeeded error: %s, session id:0x%x", buf, 0x2Cu);
    }
  }

  v24 = 7;
LABEL_43:
  [(AVVCSessionManager *)self setSessionStateWithoutLock:v24];
  if (a4)
  {
    *a4 = v37[5];
  }

  _Block_object_dispose(&v36, 8);
  if (v30)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

LABEL_47:
  v28 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t __60__AVVCSessionManager_activateAudioSessionWithPrewarm_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  v4 = [v2 setActive:1 withOptions:v1 error:&obj];
  objc_storeStrong((v3 + 40), obj);
  return v4;
}

- (BOOL)isAirplayOneOfTheOutputRoutes:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = [v15 count];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v15;
  v3 = [obj countByEnumeratingWithState:&v18 objects:v32 count:16];
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = *v19;
    v7 = *MEMORY[0x1E698D648];
    while (1)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v18 + 1) + 8 * i) portType];
        if (kAVVCScope)
        {
          v10 = *kAVVCScope;
          if (!v10)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v10 = MEMORY[0x1E69E9C10];
          v11 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v23 = "AVVCSessionManager.mm";
          v24 = 1024;
          v25 = 1286;
          v26 = 1024;
          v27 = v4 + 1;
          v28 = 1024;
          v29 = v16;
          v30 = 2112;
          v31 = v9;
          _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Output Port[%d / %d] : %@", buf, 0x28u);
        }

LABEL_13:
        v12 = [v9 isEqualToString:v7];

        v5 |= v12;
        ++v4;
      }

      v3 = [obj countByEnumeratingWithState:&v18 objects:v32 count:16];
      if (!v3)
      {
        goto LABEL_17;
      }
    }
  }

  v5 = 0;
LABEL_17:

  v13 = *MEMORY[0x1E69E9840];
  return v5 & 1;
}

- (void)setSessionActivationOptions:(unsigned int)a3
{
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  if (IsSerializationEnabled(void)::enable)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
    self->mSessionActivationOptions = a3;

    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  else
  {
    self->mSessionActivationOptions = a3;
  }
}

- (unsigned)getSessionActivationOptions
{
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  if ((IsSerializationEnabled(void)::enable & 1) == 0)
  {
    return self->mSessionActivationOptions;
  }

  std::recursive_mutex::lock(&self->mSessionManagerLock);
  mSessionActivationOptions = self->mSessionActivationOptions;
  std::recursive_mutex::unlock(&self->mSessionManagerLock);
  return mSessionActivationOptions;
}

- (BOOL)setDuckingFadeOutDuration:(id)a3 fadeInDuration:(id)a4 error:(id *)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  ElapsedTime::ElapsedTime(v27, "[AVVCSessionManager setDuckingFadeOutDuration:fadeInDuration:error:]", "setDuckingFadeDuration", 0);
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v13 = *kAVVCScope;
      if (!v13)
      {
LABEL_20:
        v11 = 0;
        goto LABEL_27;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v21 = 136315906;
      v22 = "AVVCSessionManager.mm";
      v23 = 1024;
      v24 = 1190;
      v25 = 2080;
      *v26 = "setDuckingFadeDuration";
      *&v26[8] = 1024;
      *&v26[10] = 0;
      _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v21, 0x22u);
    }

    goto LABEL_20;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v10 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  v11 = [(AVAudioSession *)self->_audioSession setDuckingFadeOutDuration:v8 fadeInDuration:v9 error:a5];
  if ((v11 & 1) != 0 || !*a5)
  {
    goto LABEL_25;
  }

  if (!kAVVCScope)
  {
    v12 = MEMORY[0x1E69E9C10];
    v15 = MEMORY[0x1E69E9C10];
    goto LABEL_22;
  }

  v12 = *kAVVCScope;
  if (v12)
  {
LABEL_22:
    v16 = v12;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [*a5 code];
      v18 = [*a5 description];
      v21 = 136315906;
      v22 = "AVVCSessionManager.mm";
      v23 = 1024;
      v24 = 1195;
      v25 = 1024;
      *v26 = v17;
      *&v26[4] = 2112;
      *&v26[6] = v18;
      _os_log_impl(&dword_1BA5AC000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d Error in setDuckingFadeDuration %d, %@", &v21, 0x22u);
    }
  }

LABEL_25:
  if (v10)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

LABEL_27:
  ElapsedTime::~ElapsedTime(v27);

  v19 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)setDuckOthers:(id)a3 mixWithOthers:(id)a4 error:(id *)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  ElapsedTime::ElapsedTime(v36, "[AVVCSessionManager setDuckOthers:mixWithOthers:error:]", "setDuckOthersMixWithOthers", 0);
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v13 = *kAVVCScope;
      if (!v13)
      {
LABEL_20:
        v15 = 0;
        goto LABEL_49;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v30 = 136315906;
      v31 = "AVVCSessionManager.mm";
      v32 = 1024;
      v33 = 1139;
      v34 = 2080;
      *v35 = "setDuckOthers:mixWithOthers";
      *&v35[8] = 1024;
      *&v35[10] = 0;
      _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v30, 0x22u);
    }

    goto LABEL_20;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v10 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  mPreviousSessionCategoryOptions = self->mPreviousSessionCategoryOptions;
  v12 = mPreviousSessionCategoryOptions;
  if (!v8)
  {
LABEL_11:
    if (!v9)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if ([v8 BOOLValue])
  {
    v12 = mPreviousSessionCategoryOptions | 2;
    goto LABEL_11;
  }

  v12 = mPreviousSessionCategoryOptions & 0xFFFFFFFFFFFFFFFDLL;
  if (!v9)
  {
    goto LABEL_25;
  }

LABEL_22:
  v16 = [v9 BOOLValue];
  v17 = 17;
  if (!v16)
  {
    v17 = 0;
  }

  v12 = v17 | v12 & 0xFFFFFFFFFFFFFFEELL;
LABEL_25:
  if (mPreviousSessionCategoryOptions == v12)
  {
    if (kAVVCScope)
    {
      v18 = *kAVVCScope;
      if (!v18)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v18 = MEMORY[0x1E69E9C10];
      v20 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v21 = self->mPreviousSessionCategoryOptions;
      v30 = 136315650;
      v31 = "AVVCSessionManager.mm";
      v32 = 1024;
      v33 = 1177;
      v34 = 1024;
      *v35 = v21;
      _os_log_impl(&dword_1BA5AC000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager: No change - options are the same. No op. Current options: 0x%x.", &v30, 0x18u);
    }

LABEL_36:
    v15 = 1;
    if (!v10)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  if (!kAVVCScope)
  {
    v19 = MEMORY[0x1E69E9C10];
    v22 = MEMORY[0x1E69E9C10];
    goto LABEL_39;
  }

  v19 = *kAVVCScope;
  if (v19)
  {
LABEL_39:
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 136315906;
      v31 = "AVVCSessionManager.mm";
      v32 = 1024;
      v33 = 1166;
      v34 = 1024;
      *v35 = v12;
      *&v35[4] = 1024;
      *&v35[6] = mPreviousSessionCategoryOptions;
      _os_log_impl(&dword_1BA5AC000, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager: Setting new options: 0x%x. Previous options: 0x%x", &v30, 0x1Eu);
    }
  }

  v15 = [(AVAudioSession *)self->_audioSession setCategoryOptions:v12 error:a5];
  if ((v15 & 1) == 0 && *a5)
  {
    if (kAVVCScope)
    {
      v23 = *kAVVCScope;
      if (!v23)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v23 = MEMORY[0x1E69E9C10];
      v26 = MEMORY[0x1E69E9C10];
    }

    v27 = v23;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [*a5 code];
      v29 = [*a5 description];
      v30 = 136315906;
      v31 = "AVVCSessionManager.mm";
      v32 = 1024;
      v33 = 1170;
      v34 = 1024;
      *v35 = v28;
      *&v35[4] = 2112;
      *&v35[6] = v29;
      _os_log_impl(&dword_1BA5AC000, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: AVVCSessionManager::setDuckOthers:mixWithOthers failed with error: %d, %@", &v30, 0x22u);
    }

LABEL_54:
    v15 = 0;
    if (!v10)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  self->mPreviousSessionCategoryOptions = v12;
  if (v10)
  {
LABEL_48:
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

LABEL_49:
  ElapsedTime::~ElapsedTime(v36);

  v24 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)changeDuckOthersOption:(BOOL)a3
{
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  if (IsSerializationEnabled(void)::enable)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
    self->mShouldDuckOthers = a3;

    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  else
  {
    self->mShouldDuckOthers = a3;
  }
}

- (int)setSessionBufferSize:(int)a3
{
  v38 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
LABEL_21:
        v11 = 0;
        goto LABEL_44;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v31 = "AVVCSessionManager.mm";
      v32 = 1024;
      v33 = 1099;
      v34 = 2080;
      v35 = "setSessionBufferSize";
      v36 = 1024;
      v37 = 0;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", buf, 0x22u);
    }

    goto LABEL_21;
  }

  ElapsedTime::ElapsedTime(buf, "[AVVCSessionManager setSessionBufferSize:]", "setSessionBufferSize", 0);
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v5 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  if (self->mPreviousIOBufferFrameSize == a3)
  {
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
LABEL_29:
        v11 = 0;
        goto LABEL_34;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 136315394;
      v25 = "AVVCSessionManager.mm";
      v26 = 1024;
      v27 = 1116;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager::setSessionBufferSize: No change - not setting preferred IO buffer size. No op.", v24, 0x12u);
    }

    v6 = 0;
    goto LABEL_29;
  }

  audioSession = self->_audioSession;
  v23 = 0;
  v9 = [(AVAudioSession *)audioSession setPreferredIOBufferFrameSize:a3 error:&v23];
  v10 = v23;
  v6 = v10;
  if (v9)
  {
    v11 = 0;
    self->mPreviousIOBufferFrameSize = a3;
    goto LABEL_34;
  }

  v11 = [v10 code];
  if (kAVVCScope)
  {
    v13 = *kAVVCScope;
    if (!v13)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v13 = MEMORY[0x1E69E9C10];
    v15 = MEMORY[0x1E69E9C10];
  }

  v16 = v13;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = [v6 description];
    *v24 = 136315650;
    v25 = "AVVCSessionManager.mm";
    v26 = 1024;
    v27 = 1109;
    v28 = 2112;
    v29 = v17;
    _os_log_impl(&dword_1BA5AC000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: AVVCSessionManager::setSessionBufferSize failed: %@", v24, 0x1Cu);
  }

LABEL_34:
  if (!kAVVCScope)
  {
    v18 = MEMORY[0x1E69E9C10];
    v19 = MEMORY[0x1E69E9C10];
    goto LABEL_38;
  }

  v18 = *kAVVCScope;
  if (v18)
  {
LABEL_38:
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      mPreviousIOBufferFrameSize = self->mPreviousIOBufferFrameSize;
      *v24 = 136315650;
      v25 = "AVVCSessionManager.mm";
      v26 = 1024;
      v27 = 1119;
      v28 = 1024;
      LODWORD(v29) = mPreviousIOBufferFrameSize;
      _os_log_impl(&dword_1BA5AC000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager::setSessionBufferSize: Previous IO buffer size: %d", v24, 0x18u);
    }
  }

  if (v5)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  ElapsedTime::~ElapsedTime(buf);
LABEL_44:
  v21 = *MEMORY[0x1E69E9840];
  return v11;
}

- (int)setSessionSampleRateForActivationMode:(int64_t)a3
{
  v53 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v10 = *kAVVCScope;
      if (!v10)
      {
LABEL_22:
        v6 = 0;
        goto LABEL_64;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v46 = "AVVCSessionManager.mm";
      v47 = 1024;
      v48 = 1051;
      v49 = 2080;
      v50 = "setSessionSampleRateForActivationMode";
      v51 = 1024;
      v52 = 0;
      _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", buf, 0x22u);
    }

    goto LABEL_22;
  }

  ElapsedTime::ElapsedTime(buf, "[AVVCSessionManager setSessionSampleRateForActivationMode:]", "setSessionSampleRateForActivationMode", 0);
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v5 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  v6 = 0;
  if ((IsPluginActivationContext(a3) & 1) != 0 || a3 == 1684108899)
  {
    goto LABEL_61;
  }

  [(AVAudioSession *)self->_audioSession sampleRate];
  v8 = *&v7;
  if (a3 == 1986357346)
  {
    if (v7 != 24000.0)
    {
      if (kAVVCScope)
      {
        v9 = *kAVVCScope;
        if (!v9)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v9 = MEMORY[0x1E69E9C10];
        v15 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *v37 = 136315394;
        v38 = "AVVCSessionManager.mm";
        v39 = 1024;
        v40 = 1065;
        _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d AVVCSessionManager::setSessionSampleRateForActivationMode: forcing 22050k audio for car audio", v37, 0x12u);
      }

LABEL_37:
      audioSession = self->_audioSession;
      v36 = 0;
      v17 = [(AVAudioSession *)audioSession setPreferredSampleRate:&v36 error:24000.0];
      v18 = v36;
      v14 = v18;
      if (!v17)
      {
        v6 = [v18 code];
        v19 = CALog::LogObjIfEnabled(1, kAVVCScope);
        v13 = v19;
        if (!v19 || !os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_59;
        }

        *v37 = 136315650;
        v38 = "AVVCSessionManager.mm";
        v39 = 1024;
        v40 = 1068;
        v41 = 2112;
        v42 = v14;
        v20 = "%25s:%-5d ERROR: AVVCSessionManager::setPreferredSampleRate for VehicleButtonPress : %@";
        v21 = v13;
        v22 = 28;
        goto LABEL_50;
      }

      goto LABEL_46;
    }

    if (kAVVCScope)
    {
      v13 = *kAVVCScope;
      if (!v13)
      {
LABEL_32:
        v14 = 0;
        goto LABEL_46;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v32 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v37 = 136315394;
      v38 = "AVVCSessionManager.mm";
      v39 = 1024;
      v40 = 1072;
      v29 = "%25s:%-5d AVVCSessionManager::setSessionSampleRateForActivationMode: No change - not setting preferred sample rate. No op.";
      v30 = v13;
      v31 = 18;
      goto LABEL_57;
    }

    goto LABEL_58;
  }

  if (v7 >= 22050.0)
  {
    if (kAVVCScope)
    {
      v13 = *kAVVCScope;
      if (!v13)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v28 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v37 = 136315650;
      v38 = "AVVCSessionManager.mm";
      v39 = 1024;
      v40 = 1086;
      v41 = 2048;
      v42 = v8;
      v29 = "%25s:%-5d AVVCSessionManager::setSessionSampleRateForActivationMode: SR remains at %f";
      v30 = v13;
      v31 = 28;
LABEL_57:
      _os_log_impl(&dword_1BA5AC000, v30, OS_LOG_TYPE_DEFAULT, v29, v37, v31);
    }

LABEL_58:
    v14 = 0;
    v6 = 0;
    goto LABEL_59;
  }

  if (kAVVCScope)
  {
    v12 = *kAVVCScope;
    if (!v12)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
    v23 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v37 = 136315906;
    v38 = "AVVCSessionManager.mm";
    v39 = 1024;
    v40 = 1078;
    v41 = 2048;
    v42 = v8;
    v43 = 2048;
    v44 = 0x40D5888000000000;
    _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager::setSessionSampleRateForActivationMode: SR changes from %f to %f", v37, 0x26u);
  }

LABEL_45:
  v24 = self->_audioSession;
  v35 = 0;
  v25 = [(AVAudioSession *)v24 setPreferredSampleRate:&v35 error:22050.0];
  v26 = v35;
  v14 = v26;
  if (!v25)
  {
    v6 = [v26 code];
    v27 = CALog::LogObjIfEnabled(1, kAVVCScope);
    v13 = v27;
    if (!v27 || !os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_59;
    }

    *v37 = 136315906;
    v38 = "AVVCSessionManager.mm";
    v39 = 1024;
    v40 = 1082;
    v41 = 2048;
    v42 = 0x40D5888000000000;
    v43 = 2112;
    v44 = v14;
    v20 = "%25s:%-5d ERROR: AVVCSessionManager::setPreferredSampleRate to %f : %@";
    v21 = v13;
    v22 = 38;
LABEL_50:
    _os_log_impl(&dword_1BA5AC000, v21, OS_LOG_TYPE_ERROR, v20, v37, v22);
LABEL_59:

    goto LABEL_60;
  }

LABEL_46:
  v6 = 0;
LABEL_60:

LABEL_61:
  if (v5)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  ElapsedTime::~ElapsedTime(buf);
LABEL_64:
  v33 = *MEMORY[0x1E69E9840];
  return v6;
}

- (int)setSessionAudioHWControlFlagsForActivationMode:(int64_t)a3 withOptions:(unint64_t)a4
{
  v4 = a4;
  v108 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v10 = *kAVVCScope;
      if (!v10)
      {
LABEL_21:
        LODWORD(v12) = 0;
        goto LABEL_103;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v101 = "AVVCSessionManager.mm";
      v102 = 1024;
      v103 = 821;
      v104 = 2080;
      v105 = "setSessionAudioHWControlFlagsForActivationMode";
      v106 = 1024;
      v107 = 0;
      _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", buf, 0x22u);
    }

    goto LABEL_21;
  }

  ElapsedTime::ElapsedTime(buf, "[AVVCSessionManager setSessionAudioHWControlFlagsForActivationMode:withOptions:]", "setSessionAudioHWControlFlagsFromActivationMode", 0);
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v8 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  self->mSessionActivationOptions &= ~0x4000u;
  if (caulk::product::get_device_class(v7) == 4 && (MGGetBoolAnswer() & 1) == 0)
  {
    if (IsPluginActivationContext(a3))
    {
      if (self->mPreviousHardwareControlFlags != 0x100000)
      {
        audioSession = self->_audioSession;
        v92 = 0;
        v15 = [(AVAudioSession *)audioSession setAudioHardwareControlFlags:0x100000 error:&v92];
        v16 = v92;
        v17 = v16;
        if (v15)
        {
          LODWORD(v12) = 0;
          self->mPreviousHardwareControlFlags = 0x100000;
        }

        else
        {
          LODWORD(v12) = [(uint8_t *)v16 code];
          v45 = CALog::LogObjIfEnabled(1, kAVVCScope);
          v46 = v45;
          if (v45 && os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            *v94 = 136315650;
            v95 = "AVVCSessionManager.mm";
            v96 = 1024;
            v97 = 843;
            v98 = 2112;
            v99 = v17;
            _os_log_impl(&dword_1BA5AC000, v46, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: AVVCSessionManager::setAudioHardwareControlFlags (ATV + Plugin) : %@", v94, 0x1Cu);
          }
        }

        goto LABEL_100;
      }

      goto LABEL_99;
    }

    if (kAVVCScope)
    {
      v12 = *kAVVCScope;
      if (!v12)
      {
        goto LABEL_100;
      }
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v38 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v94 = 136315394;
      v95 = "AVVCSessionManager.mm";
      v96 = 1024;
      v97 = 849;
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setSessionAudioHWControlFlags: Take Audio HW control on tvOS", v94, 0x12u);
    }

    goto LABEL_74;
  }

  if (self->mDeviceIsIOSAccessory)
  {
    if (kAVVCScope)
    {
      v9 = *kAVVCScope;
      if (!v9)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v19 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v94 = 136315394;
      v95 = "AVVCSessionManager.mm";
      v96 = 1024;
      v97 = 856;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setSessionAudioHWControlFlags: iOS Audio Accessory Product (HomePod), setting volume desired HW control flag.", v94, 0x12u);
    }

LABEL_38:
    if (self->mPreviousHardwareControlFlags == 0x100000)
    {
LABEL_99:
      LODWORD(v12) = 0;
      goto LABEL_100;
    }

    v20 = self->_audioSession;
    v91 = 0;
    v21 = [(AVAudioSession *)v20 setAudioHardwareControlFlags:0x100000 error:&v91];
    v22 = v91;
    v23 = v22;
    if (v21)
    {
      self->mPreviousHardwareControlFlags = 0x100000;

      goto LABEL_99;
    }

    LODWORD(v12) = [v22 code];
    if (kAVVCScope)
    {
      v30 = *kAVVCScope;
      if (!v30)
      {
LABEL_86:

        goto LABEL_100;
      }
    }

    else
    {
      v30 = MEMORY[0x1E69E9C10];
      v44 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *v94 = 136315650;
      v95 = "AVVCSessionManager.mm";
      v96 = 1024;
      v97 = 862;
      v98 = 2112;
      v99 = v23;
      _os_log_impl(&dword_1BA5AC000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: AVVCSessionManager::setAudioHardwareControlFlags (HomePod) : %@", v94, 0x1Cu);
    }

    goto LABEL_86;
  }

  if (!self->mDeviceIsOlderWatch)
  {
    if (self->mSessionOutputIsWirelessSplitter)
    {
      if (kAVVCScope)
      {
        v18 = *kAVVCScope;
        if (!v18)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v18 = MEMORY[0x1E69E9C10];
        v39 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v94 = 136315394;
        v95 = "AVVCSessionManager.mm";
        v96 = 1024;
        v97 = 882;
        _os_log_impl(&dword_1BA5AC000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager::setSessionAudioHWControlFlags: wireless splitter mode, no volume control, yes routing control.", v94, 0x12u);
      }

LABEL_79:
      if (self->mPreviousHardwareControlFlags != 2)
      {
        v40 = self->_audioSession;
        v90 = 0;
        v41 = [(AVAudioSession *)v40 setAudioHardwareControlFlags:2 error:&v90];
        v42 = v90;
        v43 = v42;
        if ((v41 & 1) == 0)
        {
          LODWORD(v12) = [(uint8_t *)v42 code];
          v55 = CALog::LogObjIfEnabled(1, kAVVCScope);
          v56 = v55;
          if (v55 && os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            *v94 = 136315650;
            v95 = "AVVCSessionManager.mm";
            v96 = 1024;
            v97 = 888;
            v98 = 2112;
            v99 = v43;
            _os_log_impl(&dword_1BA5AC000, v56, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: AVVCSessionManager::setAudioHardwareControlFlags (wireless splitter) : %@", v94, 0x1Cu);
          }

          goto LABEL_100;
        }

        self->mPreviousHardwareControlFlags = 2;
      }

      goto LABEL_99;
    }

    v25 = a3 == 1987012963 || a3 == 1751414371;
    if ((v4 & 1) != 0 && v25)
    {
      if (self->mPreviousHardwareControlFlags)
      {
        v26 = self->_audioSession;
        v89 = 0;
        v27 = [(AVAudioSession *)v26 setAudioHardwareControlFlags:0 error:&v89];
        v28 = v89;
        v29 = v28;
        if (v27)
        {
          LODWORD(v12) = 0;
          self->mPreviousHardwareControlFlags = 0;
        }

        else
        {
          LODWORD(v12) = [(uint8_t *)v28 code];
          v57 = CALog::LogObjIfEnabled(1, kAVVCScope);
          v58 = v57;
          if (v57 && os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            *v94 = 136315650;
            v95 = "AVVCSessionManager.mm";
            v96 = 1024;
            v97 = 907;
            v98 = 2112;
            v99 = v29;
            _os_log_impl(&dword_1BA5AC000, v58, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: AVVCSessionManager::setAudioHardwareControlFlags : %@", v94, 0x1Cu);
          }
        }
      }

      else
      {
        v29 = 0;
        LODWORD(v12) = 0;
      }

      if (kAVVCScope)
      {
        v59 = *kAVVCScope;
        if (!v59)
        {
LABEL_120:

          goto LABEL_100;
        }
      }

      else
      {
        v59 = MEMORY[0x1E69E9C10];
        v60 = MEMORY[0x1E69E9C10];
      }

      v61 = v59;
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        CAX4CCString::CAX4CCString(v93, a3);
        *v94 = 136315650;
        v95 = "AVVCSessionManager.mm";
        v96 = 1024;
        v97 = 912;
        v98 = 2080;
        v99 = v93;
        _os_log_impl(&dword_1BA5AC000, v61, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager::setAudioHardwareControlFlags: announce mode for %s context - set HW control flags to 0", v94, 0x1Cu);
      }

      goto LABEL_120;
    }

    if (self->mShouldEnableMiniDucking)
    {
      v32 = CALog::LogObjIfEnabled(3, kAVVCScope);
      v33 = v32;
      if (v32 && os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *v94 = 136315394;
        v95 = "AVVCSessionManager.mm";
        v96 = 1024;
        v97 = 917;
        _os_log_impl(&dword_1BA5AC000, v33, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager::setSessionAudioHWControlFlags: mini-ducking enabled. Not setting volume control flag", v94, 0x12u);
      }

      if (self->mPreviousHardwareControlFlags != 2)
      {
        v34 = self->_audioSession;
        v88 = 0;
        v35 = [(AVAudioSession *)v34 setAudioHardwareControlFlags:2 error:&v88];
        v36 = v88;
        v37 = v36;
        if ((v35 & 1) == 0)
        {
          LODWORD(v12) = [(uint8_t *)v36 code];
          v69 = CALog::LogObjIfEnabled(1, kAVVCScope);
          v70 = v69;
          if (v69 && os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
          {
            *v94 = 136315650;
            v95 = "AVVCSessionManager.mm";
            v96 = 1024;
            v97 = 923;
            v98 = 2112;
            v99 = v37;
            _os_log_impl(&dword_1BA5AC000, v70, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: AVVCSessionManager::setAudioHardwareControlFlags (enable mini-ducking) : %@", v94, 0x1Cu);
          }

          goto LABEL_100;
        }

        self->mPreviousHardwareControlFlags = 2;
      }

      goto LABEL_99;
    }

    if (self->mShouldDisableMiniDucking)
    {
      v47 = CALog::LogObjIfEnabled(3, kAVVCScope);
      v48 = v47;
      if (v47 && os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *v94 = 136315394;
        v95 = "AVVCSessionManager.mm";
        v96 = 1024;
        v97 = 932;
        _os_log_impl(&dword_1BA5AC000, v48, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager::setSessionAudioHWControlFlags: disable mini-ducking. Set all HW control flags", v94, 0x12u);
      }

      if (self->mPreviousHardwareControlFlags != 18)
      {
        v49 = self->_audioSession;
        v87 = 0;
        v50 = [(AVAudioSession *)v49 setAudioHardwareControlFlags:18 error:&v87];
        v51 = v87;
        v52 = v51;
        if ((v50 & 1) == 0)
        {
          LODWORD(v12) = [(uint8_t *)v51 code];
          v74 = CALog::LogObjIfEnabled(1, kAVVCScope);
          v75 = v74;
          if (v74 && os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
          {
            *v94 = 136315650;
            v95 = "AVVCSessionManager.mm";
            v96 = 1024;
            v97 = 939;
            v98 = 2112;
            v99 = v52;
            _os_log_impl(&dword_1BA5AC000, v75, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: AVVCSessionManager::setAudioHardwareControlFlags (disable mini-ducking) : %@", v94, 0x1Cu);
          }

          goto LABEL_100;
        }

        self->mPreviousHardwareControlFlags = 18;
      }

      goto LABEL_99;
    }

    mSessionNeedsVolumeControl = self->mSessionNeedsVolumeControl;
    if (a3 == 1651795060)
    {
      if (mSessionNeedsVolumeControl)
      {
        goto LABEL_165;
      }

      goto LABEL_154;
    }

    if (a3 == 1987012963)
    {
      v63 = [(AVAudioSession *)self->_audioSession currentRoute];
      v64 = [v63 outputs];
      v65 = [(AVVCSessionManager *)self isAirplayOneOfTheOutputRoutes:v64];

      if (v65)
      {
        self->mSessionActivationOptions |= 0x4000u;
        v66 = CALog::LogObjIfEnabled(3, kAVVCScope);
        v67 = v66;
        if (v66 && os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          *v94 = 136315394;
          v95 = "AVVCSessionManager.mm";
          v96 = 1024;
          v97 = 973;
          _os_log_impl(&dword_1BA5AC000, v67, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager::setSessionAudioHWControlFlags: will not take control of hardware upon activation for AirPlay output (voic/rais)", v94, 0x12u);
        }

        v68 = 0;
        goto LABEL_166;
      }

      v76 = CALog::LogObjIfEnabled(3, kAVVCScope);
      v72 = v76;
      if (!v76 || !os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_164;
      }

      *v94 = 136315394;
      v95 = "AVVCSessionManager.mm";
      v96 = 1024;
      v97 = 981;
      v73 = "%25s:%-5d AVVCSessionManager::setSessionAudioHWControlFlags: setting volume/routing required hardware control flag for 'voic' activation mode (output is not Airplay)";
      goto LABEL_163;
    }

    if (IsPluginActivationContext(a3))
    {
LABEL_135:
      v71 = CALog::LogObjIfEnabled(3, kAVVCScope);
      v72 = v71;
      if (mSessionNeedsVolumeControl)
      {
        if (!v71 || !os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_164;
        }

        *v94 = 136315394;
        v95 = "AVVCSessionManager.mm";
        v96 = 1024;
        v97 = 998;
        v73 = "%25s:%-5d AVVCSessionManager::setSessionAudioHWControlFlags: (plugin activation context / (post->hdvc) : set all hw control flags";
LABEL_163:
        _os_log_impl(&dword_1BA5AC000, v72, OS_LOG_TYPE_DEFAULT, v73, v94, 0x12u);
LABEL_164:

LABEL_165:
        v68 = 18;
        goto LABEL_166;
      }

      if (v71 && os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        *v94 = 136315394;
        v95 = "AVVCSessionManager.mm";
        v96 = 1024;
        v97 = 1001;
        _os_log_impl(&dword_1BA5AC000, v72, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager::setSessionAudioHWControlFlags: (plugin activation context / (post->hdvc) : not setting volume control flag", v94, 0x12u);
      }

LABEL_154:
      v68 = 2;
LABEL_166:
      if (v68 == self->mPreviousHardwareControlFlags)
      {
        v79 = CALog::LogObjIfEnabled(3, kAVVCScope);
        v80 = v79;
        if (v79 && os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
        {
          *v94 = 136315394;
          v95 = "AVVCSessionManager.mm";
          v96 = 1024;
          v97 = 1036;
          _os_log_impl(&dword_1BA5AC000, v80, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager::setSessionAudioHWControlFlags: No change - not setting hardware control flags. No op.", v94, 0x12u);
        }

        LODWORD(v12) = 0;
      }

      else
      {
        v81 = self->_audioSession;
        v86 = 0;
        v82 = [(AVAudioSession *)v81 setAudioHardwareControlFlags:v68 error:&v86];
        v83 = v86;
        v80 = v83;
        if (v82)
        {
          LODWORD(v12) = 0;
          self->mPreviousHardwareControlFlags = v68;
        }

        else
        {
          LODWORD(v12) = [v83 code];
          v84 = CALog::LogObjIfEnabled(1, kAVVCScope);
          v85 = v84;
          if (v84 && os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
          {
            *v94 = 136315650;
            v95 = "AVVCSessionManager.mm";
            v96 = 1024;
            v97 = 1030;
            v98 = 2112;
            v99 = v80;
            _os_log_impl(&dword_1BA5AC000, v85, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: AVVCSessionManager::setAudioHardwareControlFlags : %@", v94, 0x1Cu);
          }
        }
      }

      goto LABEL_100;
    }

    if (a3 != 1635087471)
    {
      if (a3 == 1886352244 && self->mPreviousActivationMode == 1751414371)
      {
        goto LABEL_135;
      }

LABEL_160:
      v78 = CALog::LogObjIfEnabled(3, kAVVCScope);
      v72 = v78;
      if (!v78 || !os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_164;
      }

      *v94 = 136315394;
      v95 = "AVVCSessionManager.mm";
      v96 = 1024;
      v97 = 1012;
      v73 = "%25s:%-5d AVVCSessionManager::setSessionAudioHWControlFlags: default mode - set all HW control flags";
      goto LABEL_163;
    }

    if (!self->mIsMiniDuckingEnabled)
    {
      goto LABEL_160;
    }

    v77 = CALog::LogObjIfEnabled(3, kAVVCScope);
    v12 = v77;
    if (v77 && os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
    {
      *v94 = 136315394;
      v95 = "AVVCSessionManager.mm";
      v96 = 1024;
      v97 = 1006;
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager::setSessionAudioHWControlFlags: post followed by BluetoothVoiceTrigger (or auto context) should not control volume, so not setting any hw control flags.", v94, 0x12u);
    }

LABEL_74:

    goto LABEL_99;
  }

  if (!kAVVCScope)
  {
    v13 = MEMORY[0x1E69E9C10];
    v31 = MEMORY[0x1E69E9C10];
    goto LABEL_59;
  }

  v13 = *kAVVCScope;
  if (v13)
  {
LABEL_59:
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v94 = 136315394;
      v95 = "AVVCSessionManager.mm";
      v96 = 1024;
      v97 = 874;
      _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager::setSessionAudioHWControlFlags on older watch hardware: will never take control of HW on activation", v94, 0x12u);
    }
  }

  if (a3 == 1768780647)
  {
    goto LABEL_99;
  }

  LODWORD(v12) = 0;
  self->mSessionActivationOptions |= 0x4000u;
LABEL_100:
  if (v8)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  ElapsedTime::~ElapsedTime(buf);
LABEL_103:
  v53 = *MEMORY[0x1E69E9840];
  return v12;
}

- (int)setSessionCategoryModeOptionsForActivationMode:(int64_t)a3 withOptions:(unint64_t)a4
{
  v4 = a4;
  v99 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
LABEL_23:
        v10 = 0;
        goto LABEL_164;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v92 = "AVVCSessionManager.mm";
      v93 = 1024;
      v94 = 597;
      v95 = 2080;
      v96 = "setSessionCategoryModeOptionsForActivationMode";
      v97 = 1024;
      v98 = 0;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", buf, 0x22u);
    }

    goto LABEL_23;
  }

  ElapsedTime::ElapsedTime(buf, "[AVVCSessionManager setSessionCategoryModeOptionsForActivationMode:withOptions:]", "setSessionCategoryModeOptionsFromActivationMode", 0);
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v71 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  if (self->mDeviceIsIOSAccessory)
  {
    self->mShouldDuckOthers = 1;
    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v75 = 136315394;
      v76 = "AVVCSessionManager.mm";
      v77 = 1024;
      v78 = 608;
      v12 = "%25s:%-5d AVVCSessionManager::setSessionCategoryModeOptions: on 'audioOS'. Duck others.";
LABEL_38:
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, v12, v75, 0x12u);
      goto LABEL_39;
    }

    goto LABEL_39;
  }

  if (self->mDeviceIsOlderWatch)
  {
    self->mShouldDuckOthers = 0;
    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v13 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v75 = 136315394;
      v76 = "AVVCSessionManager.mm";
      v77 = 1024;
      v78 = 612;
      v12 = "%25s:%-5d AVVCSessionManager::setSessionCategoryModeOptions: on older watchOS. Interrupt others.";
      goto LABEL_38;
    }

LABEL_39:

    goto LABEL_40;
  }

  if (![(AVVCSessionManager *)self isSessionOutputInWirelessSplitterMode])
  {
    [(AVVCSessionManager *)self getHypotheticalRouteAndUpdateStates];
    goto LABEL_40;
  }

  self->mShouldDuckOthers = 0;
  if (!kAVVCScope)
  {
    v7 = MEMORY[0x1E69E9C10];
    v14 = MEMORY[0x1E69E9C10];
LABEL_36:
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v75 = 136315394;
      v76 = "AVVCSessionManager.mm";
      v77 = 1024;
      v78 = 617;
      v12 = "%25s:%-5d AVVCSessionManager::setSessionCategoryModeOptions: (wireless splitter mode). Interrupt others.";
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  v7 = *kAVVCScope;
  if (v7)
  {
    goto LABEL_36;
  }

LABEL_40:
  if (a3 > 1768764004)
  {
    if (a3 != 1768764005 && a3 != 1768780647)
    {
LABEL_54:
      LOBYTE(v19) = self->mShouldDuckOthers;
      if (self->mDeviceIsIOSAccessory || self->mDeviceIsOlderWatch)
      {
        goto LABEL_89;
      }

      if (isAVSystemControllerAvailable(void)::onceToken != -1)
      {
        dispatch_once(&isAVSystemControllerAvailable(void)::onceToken, &__block_literal_global_230);
      }

      if (isAVSystemControllerAvailable(void)::isAvailable)
      {
        v20 = [MEMORY[0x1E69AED08] sharedAVSystemController];
        v21 = [v20 attributeForKey:*MEMORY[0x1E69AEA70]];
        v22 = [v21 BOOLValue];

        if (!v22)
        {
LABEL_89:
          v15 = *MEMORY[0x1E698D518];
          v16 = *MEMORY[0x1E698D600];
          v25 = 0;
          goto LABEL_90;
        }

        v23 = CALog::LogObjIfEnabled(3, kAVVCScope);
        v24 = v23;
        if (v23 && os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *v75 = 136315394;
          v76 = "AVVCSessionManager.mm";
          v77 = 1024;
          v78 = 699;
          _os_log_impl(&dword_1BA5AC000, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager::setSessionCategoryModeOptions: Carplay Supports Mixable Siri", v75, 0x12u);
        }

        LOBYTE(v19) = 1;
      }

      else
      {
        if (kAVVCScope)
        {
          v24 = *kAVVCScope;
          if (!v24)
          {
            goto LABEL_89;
          }
        }

        else
        {
          v24 = MEMORY[0x1E69E9C10];
          v29 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          *v75 = 136315394;
          v76 = "AVVCCarplayRuntimeAvailability.mm";
          v77 = 1024;
          v78 = 21;
          _os_log_impl(&dword_1BA5AC000, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d CarPlay API not available", v75, 0x12u);
        }
      }

      goto LABEL_89;
    }

    v15 = *MEMORY[0x1E698D518];
    v16 = *MEMORY[0x1E698D630];
    if (_os_feature_enabled_impl())
    {
      v18 = 524300;
    }

    else
    {
      v18 = 12;
    }

    if (kAVVCScope)
    {
      v19 = *kAVVCScope;
      if (!v19)
      {
LABEL_71:
        v25 = 1;
        goto LABEL_91;
      }
    }

    else
    {
      v19 = MEMORY[0x1E69E9C10];
      v26 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *v75 = 136315394;
      v76 = "AVVCSessionManager.mm";
      v77 = 1024;
      v78 = 691;
      _os_log_impl(&dword_1BA5AC000, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d AVVCSessionManager::setSessionCategoryModeOptions: iMessage -- setting P&R category, clearing preferred input, etc.", v75, 0x12u);
    }

    LOBYTE(v19) = 0;
    goto LABEL_71;
  }

  if (a3 == 1651797093)
  {
    v15 = *MEMORY[0x1E698D520];
    v16 = *MEMORY[0x1E698D5C8];
    if (kAVVCScope)
    {
      v18 = *kAVVCScope;
      if (!v18)
      {
        v25 = 0;
LABEL_81:
        LOBYTE(v19) = 1;
        goto LABEL_91;
      }
    }

    else
    {
      v18 = MEMORY[0x1E69E9C10];
      v28 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *v75 = 136315394;
      v76 = "AVVCSessionManager.mm";
      v77 = 1024;
      v78 = 677;
      _os_log_impl(&dword_1BA5AC000, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d AVVCSessionManager::setSessionCategoryModeOptions: ATV Activation  -- setting Playback category and Duck/Mix Options.", v75, 0x12u);
    }

    v25 = 0;
    v18 = 0;
    goto LABEL_81;
  }

  if (a3 != 1752396914)
  {
    goto LABEL_54;
  }

  v15 = *MEMORY[0x1E698D518];
  v16 = *MEMORY[0x1E698D600];
  if (!kAVVCScope)
  {
    v17 = MEMORY[0x1E69E9C10];
    v27 = MEMORY[0x1E69E9C10];
    goto LABEL_73;
  }

  v17 = *kAVVCScope;
  if (v17)
  {
LABEL_73:
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v75 = 136315394;
      v76 = "AVVCSessionManager.mm";
      v77 = 1024;
      v78 = 657;
      _os_log_impl(&dword_1BA5AC000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager::setSessionCategoryModeOptions: Interrupt other audio during Siri Training", v75, 0x12u);
    }
  }

  v25 = 0;
  LOBYTE(v19) = 0;
LABEL_90:
  v18 = 4;
LABEL_91:
  v31 = a3 == 1987012963 || a3 == 1751414371;
  if ((v4 & 1) != 0 && v31)
  {
    if (kAVVCScope)
    {
      v32 = *kAVVCScope;
      if (!v32)
      {
        goto LABEL_108;
      }
    }

    else
    {
      v32 = MEMORY[0x1E69E9C10];
      v33 = MEMORY[0x1E69E9C10];
    }

    v34 = v32;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      CAX4CCString::CAX4CCString(v90, a3);
      *v75 = 136315650;
      v76 = "AVVCSessionManager.mm";
      v77 = 1024;
      v78 = 724;
      v79 = 2080;
      *v80 = v90;
      _os_log_impl(&dword_1BA5AC000, v34, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager::setSessionCategoryModeOptions: announce mode for %s context - duck others", v75, 0x1Cu);
    }

    goto LABEL_108;
  }

  if (v19)
  {
LABEL_108:
    v18 |= 0x13uLL;
  }

  v35 = [(NSString *)self->mPreviousSessionCategory isEqualToString:v15];
  if ((v35 & [(NSString *)self->mPreviousSessionMode isEqualToString:v16]& 1) == 0)
  {
    if (kAVVCScope)
    {
      v37 = *kAVVCScope;
      if (!v37)
      {
LABEL_124:
        audioSession = self->_audioSession;
        v74 = 0;
        v45 = [(AVAudioSession *)audioSession setCategory:v15 mode:v16 routeSharingPolicy:0 options:v18 error:&v74];
        v46 = v74;
        v36 = v46;
        if (v45)
        {
          objc_storeStrong(&self->mPreviousSessionCategory, v15);
          objc_storeStrong(&self->mPreviousSessionMode, v16);
LABEL_139:
          v10 = 0;
          self->mPreviousSessionCategoryOptions = v18;
          goto LABEL_151;
        }

        v10 = [v46 code];
        if (kAVVCScope)
        {
          v47 = *kAVVCScope;
          if (!v47)
          {
            goto LABEL_151;
          }
        }

        else
        {
          v47 = MEMORY[0x1E69E9C10];
          v62 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          *v75 = 136315650;
          v76 = "AVVCSessionManager.mm";
          v77 = 1024;
          v78 = 754;
          v79 = 2112;
          *v80 = v36;
          _os_log_impl(&dword_1BA5AC000, v47, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: AVVCSessionManager::setSessionCategoryModeOptions: setCategoryModeRouteSharingPolicyOptions failed with error: %@", v75, 0x1Cu);
        }

        goto LABEL_151;
      }
    }

    else
    {
      v37 = MEMORY[0x1E69E9C10];
      v39 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      mPreviousSessionCategory = self->mPreviousSessionCategory;
      mPreviousSessionMode = self->mPreviousSessionMode;
      mPreviousSessionCategoryOptions = self->mPreviousSessionCategoryOptions;
      mPreviousActivationMode = self->mPreviousActivationMode;
      *v75 = 136317442;
      v76 = "AVVCSessionManager.mm";
      v77 = 1024;
      v78 = 745;
      v79 = 2112;
      *v80 = v15;
      *&v80[8] = 2112;
      *&v80[10] = v16;
      *&v80[18] = 1024;
      *&v80[20] = v18;
      v81 = 2112;
      *v82 = mPreviousSessionCategory;
      *&v82[8] = 2112;
      v83 = mPreviousSessionMode;
      v84 = 1024;
      v85 = mPreviousSessionCategoryOptions;
      v86 = 1024;
      v87 = a3;
      v88 = 1024;
      v89 = mPreviousActivationMode;
      _os_log_impl(&dword_1BA5AC000, v37, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager::setSessionCategoryModeOptions: Setting new category: %@, mode: %@, options: 0x%x. Previous category: %@, mode: %@, options: 0x%x. (Current activation: %d, Previous activation: %d)", v75, 0x52u);
    }

    goto LABEL_124;
  }

  if (self->mPreviousSessionCategoryOptions == v18)
  {
    if (kAVVCScope)
    {
      v36 = *kAVVCScope;
      if (!v36)
      {
LABEL_133:
        v10 = 0;
        goto LABEL_151;
      }
    }

    else
    {
      v36 = MEMORY[0x1E69E9C10];
      v48 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v49 = self->mPreviousSessionCategory;
      v50 = self->mPreviousSessionMode;
      v51 = self->mPreviousSessionCategoryOptions;
      v52 = self->mPreviousActivationMode;
      *v75 = 136316674;
      v76 = "AVVCSessionManager.mm";
      v77 = 1024;
      v78 = 775;
      v79 = 2112;
      *v80 = v49;
      *&v80[8] = 2112;
      *&v80[10] = v50;
      *&v80[18] = 1024;
      *&v80[20] = v51;
      v81 = 1024;
      *v82 = a3;
      *&v82[4] = 1024;
      *&v82[6] = v52;
      _os_log_impl(&dword_1BA5AC000, v36, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager::setSessionCategoryModeOptions: No change - category, mode and options are the same. No op. Current category: %@, mode: %@, options: 0x%x. (Current activation: %d, Previous activation: %d)", v75, 0x38u);
    }

    v36 = 0;
    goto LABEL_133;
  }

  if (!kAVVCScope)
  {
    v38 = MEMORY[0x1E69E9C10];
    v53 = MEMORY[0x1E69E9C10];
    goto LABEL_135;
  }

  v38 = *kAVVCScope;
  if (v38)
  {
LABEL_135:
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v54 = self->mPreviousSessionCategory;
      v55 = self->mPreviousSessionMode;
      v56 = self->mPreviousSessionCategoryOptions;
      v57 = self->mPreviousActivationMode;
      *v75 = 136316930;
      v76 = "AVVCSessionManager.mm";
      v77 = 1024;
      v78 = 765;
      v79 = 1024;
      *v80 = v18;
      *&v80[4] = 2112;
      *&v80[6] = v54;
      *&v80[14] = 2112;
      *&v80[16] = v55;
      v81 = 1024;
      *v82 = v56;
      *&v82[4] = 1024;
      *&v82[6] = a3;
      LOWORD(v83) = 1024;
      *(&v83 + 2) = v57;
      _os_log_impl(&dword_1BA5AC000, v38, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager::setSessionCategoryModeOptions: Setting new options: 0x%x. Previous category: %@, mode: %@, options: 0x%x. (Current activation: %d, Previous activation: %d)", v75, 0x3Eu);
    }
  }

  v58 = self->_audioSession;
  v73 = 0;
  v59 = [(AVAudioSession *)v58 setCategoryOptions:v18 error:&v73];
  v60 = v73;
  v36 = v60;
  if (v59)
  {
    goto LABEL_139;
  }

  v10 = [v60 code];
  if (kAVVCScope)
  {
    v61 = *kAVVCScope;
    if (!v61)
    {
      goto LABEL_151;
    }
  }

  else
  {
    v61 = MEMORY[0x1E69E9C10];
    v63 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
  {
    *v75 = 136315650;
    v76 = "AVVCSessionManager.mm";
    v77 = 1024;
    v78 = 768;
    v79 = 2112;
    *v80 = v36;
    _os_log_impl(&dword_1BA5AC000, v61, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: AVVCSessionManager::setSessionCategoryModeOptions: setCategoryOptions failed with error: %@", v75, 0x1Cu);
  }

LABEL_151:
  if (v25)
  {
    v64 = self->_audioSession;
    v72 = v36;
    v65 = [(AVAudioSession *)v64 clearInputPreferences:&v72];
    v66 = v72;

    if ((v65 & 1) == 0)
    {
      v10 = [v66 code];
      if (kAVVCScope)
      {
        v67 = *kAVVCScope;
        if (!v67)
        {
          goto LABEL_161;
        }
      }

      else
      {
        v67 = MEMORY[0x1E69E9C10];
        v68 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        *v75 = 136315650;
        v76 = "AVVCSessionManager.mm";
        v77 = 1024;
        v78 = 781;
        v79 = 2112;
        *v80 = v66;
        _os_log_impl(&dword_1BA5AC000, v67, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: AVVCSessionManager::clearInputPreferences failed with error: %@", v75, 0x1Cu);
      }
    }
  }

  else
  {
    v66 = v36;
  }

LABEL_161:

  if (v71)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  ElapsedTime::~ElapsedTime(buf);
LABEL_164:
  v69 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)isMiniDuckingEnabled
{
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  if (IsSerializationEnabled(void)::enable)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
    mIsMiniDuckingEnabled = self->mIsMiniDuckingEnabled;
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  else
  {
    return self->mIsMiniDuckingEnabled;
  }

  return mIsMiniDuckingEnabled;
}

- (void)shouldEnableMiniDucking:(BOOL)a3 withOptions:(unint64_t)a4
{
  v4 = a4;
  v5 = a3;
  v28 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if (isAudioSessionAvailable(void)::audioSessionAvailable != 1)
  {
    goto LABEL_48;
  }

  if (caulk::product::get_device_class(self) != 4 && !self->mDeviceIsIOSAccessory)
  {
    ElapsedTime::ElapsedTime(buf, "[AVVCSessionManager shouldEnableMiniDucking:withOptions:]", "shouldEnableMiniDucking", 0);
    if (IsSerializationEnabled(void)::onceToken != -1)
    {
      dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
    }

    v9 = IsSerializationEnabled(void)::enable;
    if (IsSerializationEnabled(void)::enable == 1)
    {
      std::recursive_mutex::lock(&self->mSessionManagerLock);
    }

    if (self->mIsMiniDuckingEnabled == v5)
    {
      if (kAVVCScope)
      {
        v10 = *kAVVCScope;
        if (!v10)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v10 = MEMORY[0x1E69E9C10];
        v18 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 136315394;
        v21 = "AVVCSessionManager.mm";
        v22 = 1024;
        v23 = 473;
        _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d shouldEnableMiniDucking: No change, no-op", &v20, 0x12u);
      }

      goto LABEL_45;
    }

    if (v5)
    {
      v11 = 1;
      self->mShouldEnableMiniDucking = 1;
      p_mShouldDisableMiniDucking = &self->mShouldDisableMiniDucking;
    }

    else
    {
      if (!self->mShouldEnableMiniDucking)
      {
        v11 = 0;
LABEL_44:
        self->mIsMiniDuckingEnabled = v11;
LABEL_45:
        if (v9)
        {
          std::recursive_mutex::unlock(&self->mSessionManagerLock);
        }

        ElapsedTime::~ElapsedTime(buf);
        goto LABEL_48;
      }

      *&self->mShouldEnableMiniDucking = 256;
      p_mShouldDisableMiniDucking = &self->mShouldDisableMiniDucking;
      mPreviousActivationMode = self->mPreviousActivationMode;
      v15 = mPreviousActivationMode == 1987012963 || mPreviousActivationMode == 1751414371;
      if ((v4 & 1) != 0 && v15)
      {
        v16 = CALog::LogObjIfEnabled(3, kAVVCScope);
        v17 = v16;
        if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 136315394;
          v21 = "AVVCSessionManager.mm";
          v22 = 1024;
          v23 = 491;
          _os_log_impl(&dword_1BA5AC000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d shouldEnableMiniDucking: Announce calls enabled. Will not set session properties while disabling miniDucking", &v20, 0x12u);
        }
      }

      else
      {
        [AVVCSessionManager setSessionCategoryModeOptionsForActivationMode:"setSessionCategoryModeOptionsForActivationMode:withOptions:" withOptions:?];
        [(AVVCSessionManager *)self setSessionAudioHWControlFlagsForActivationMode:self->mPreviousActivationMode withOptions:0];
      }

      v11 = 0;
    }

    *p_mShouldDisableMiniDucking = 0;
    goto LABEL_44;
  }

  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!v7)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v25 = "AVVCSessionManager.mm";
    v26 = 1024;
    v27 = 464;
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d shouldEnableMiniDucking not available on this device", buf, 0x12u);
  }

LABEL_48:
  v19 = *MEMORY[0x1E69E9840];
}

- (int)setSessionActivationContext:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
LABEL_19:
        v9 = 0;
        goto LABEL_55;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v45 = "AVVCSessionManager.mm";
      v46 = 1024;
      v47 = 418;
      v48 = 2080;
      v49 = "setSessionActivationContext";
      v50 = 1024;
      v51 = 0;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", buf, 0x22u);
    }

    goto LABEL_19;
  }

  ElapsedTime::ElapsedTime(buf, "[AVVCSessionManager setSessionActivationContext:]", "setSessionActivationContext", 0);
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v5 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  if (!v4)
  {
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
LABEL_24:
        v4 = objc_alloc_init(MEMORY[0x1E695DF20]);
        goto LABEL_25;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 136315394;
      v35 = "AVVCSessionManager.mm";
      v36 = 1024;
      v37 = 424;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager::setSessionActivationContext : passed 'nil' dictionary, creating empty one.", v34, 0x12u);
    }

    goto LABEL_24;
  }

LABEL_25:
  v11 = [v4 objectForKey:@"activation trigger"];
  v12 = [v11 intValue];

  v13 = [v4 objectForKey:@"activation device uid"];
  p_mPreviousActivationDeviceUID = &self->mPreviousActivationDeviceUID;
  mPreviousActivationMode = self->mPreviousActivationMode;
  if (((mPreviousActivationMode == v12) & areDeviceUIDsSame(v13, self->mPreviousActivationDeviceUID)) == 0)
  {
    audioSession = self->_audioSession;
    v31 = 0;
    v18 = [(AVAudioSession *)audioSession setActivationContext:v4 error:&v31];
    v19 = v31;
    if (v18)
    {
      if (kAVVCScope)
      {
        v20 = *kAVVCScope;
        if (!v20)
        {
LABEL_44:
          self->mPreviousActivationMode = v12;
          objc_storeStrong(&self->mPreviousActivationDeviceUID, v13);
LABEL_45:
          v9 = 0;
LABEL_51:

          goto LABEL_52;
        }
      }

      else
      {
        v20 = MEMORY[0x1E69E9C10];
        v25 = MEMORY[0x1E69E9C10];
      }

      v26 = v20;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        CAX4CCString::CAX4CCString(v33, v12);
        CAX4CCString::CAX4CCString(v32, self->mPreviousActivationMode);
        v27 = *p_mPreviousActivationDeviceUID;
        *v34 = 136316418;
        v35 = "AVVCSessionManager.mm";
        v36 = 1024;
        v37 = 442;
        v38 = 2080;
        *v39 = v33;
        *&v39[8] = 2112;
        *&v39[10] = v13;
        v40 = 2080;
        v41 = v32;
        v42 = 2112;
        v43 = v27;
        _os_log_impl(&dword_1BA5AC000, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager::setSessionActivationContext : Setting new activation context. Current: { activationMode(%s), deviceUID(%@) }. Previous: { activationMode(%s), deviceUID(%@) }.", v34, 0x3Au);
      }

      goto LABEL_44;
    }

    v21 = [(AVAudioSession *)self->_audioSession opaqueSessionID];
    if (kAVVCScope)
    {
      v22 = *kAVVCScope;
      if (!v22)
      {
LABEL_50:
        v9 = [v19 code];
        goto LABEL_51;
      }
    }

    else
    {
      v22 = MEMORY[0x1E69E9C10];
      v28 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *v34 = 136315906;
      v35 = "AVVCSessionManager.mm";
      v36 = 1024;
      v37 = 438;
      v38 = 1024;
      *v39 = v21;
      *&v39[4] = 2112;
      *&v39[6] = v19;
      _os_log_impl(&dword_1BA5AC000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: AVVCSessionManager::setActivationContext of sessionID(0x%x) failed with error: %@", v34, 0x22u);
    }

    goto LABEL_50;
  }

  if (!kAVVCScope)
  {
    v16 = MEMORY[0x1E69E9C10];
    v23 = MEMORY[0x1E69E9C10];
    goto LABEL_37;
  }

  v16 = *kAVVCScope;
  if (v16)
  {
LABEL_37:
    v19 = v16;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      CAX4CCString::CAX4CCString(v33, v12);
      CAX4CCString::CAX4CCString(v32, self->mPreviousActivationMode);
      v24 = *p_mPreviousActivationDeviceUID;
      *v34 = 136316418;
      v35 = "AVVCSessionManager.mm";
      v36 = 1024;
      v37 = 448;
      v38 = 2080;
      *v39 = v33;
      *&v39[8] = 2112;
      *&v39[10] = v13;
      v40 = 2080;
      v41 = v32;
      v42 = 2112;
      v43 = v24;
      _os_log_impl(&dword_1BA5AC000, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager::setSessionActivationContext : No change - not setting activationMode and deviceUID. Current: { activationMode(%s), deviceUID(%@) }. Previous: { activationMode(%s), deviceUID(%@) }. No op.", v34, 0x3Au);
    }

    goto LABEL_45;
  }

  v9 = 0;
LABEL_52:

  if (v5)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  ElapsedTime::~ElapsedTime(buf);
LABEL_55:

  v29 = *MEMORY[0x1E69E9840];
  return v9;
}

- (int)setupOneTimeSessionSettingsForClient:(int64_t)a3
{
  v89 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v12 = *kAVVCScope;
      if (!v12)
      {
LABEL_24:
        v14 = 0;
        goto LABEL_116;
      }
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v13 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v82 = "AVVCSessionManager.mm";
      v83 = 1024;
      v84 = 216;
      v85 = 2080;
      v86 = "setupOneTimeSessionSettingsForClient";
      v87 = 1024;
      v88 = 0;
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", buf, 0x22u);
    }

    goto LABEL_24;
  }

  ElapsedTime::ElapsedTime(buf, "[AVVCSessionManager setupOneTimeSessionSettingsForClient:]", "setupOneTimeSessionSettingsForClient", 0);
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v5 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  if (IsMetricsOwnedByAVVC(void)::onceToken != -1)
  {
    dispatch_once(&IsMetricsOwnedByAVVC(void)::onceToken, &__block_literal_global_209);
  }

  if (IsMetricsOwnedByAVVC(void)::owned != 1)
  {
    v10 = 0;
    self->_reporterID = [(AVAudioSession *)self->_audioSession reporterID];
    goto LABEL_43;
  }

  v6 = +[AVVCMetricsManager sharedManager];
  v7 = [v6 reporterID];

  if (v7)
  {
    audioSession = self->_audioSession;
    v72 = 0;
    v9 = [(AVAudioSession *)audioSession setReporterID:v7 error:&v72];
    v10 = v72;
    if (v9)
    {
      if (kAVVCScope)
      {
        v11 = *kAVVCScope;
        if (!v11)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v11 = MEMORY[0x1E69E9C10];
        v17 = MEMORY[0x1E69E9C10];
      }

      v18 = v11;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [(AVAudioSession *)self->_audioSession opaqueSessionID];
        *v73 = 136315906;
        v74 = "AVVCSessionManager.mm";
        v75 = 1024;
        v76 = 235;
        v77 = 2048;
        v78 = v7;
        v79 = 1024;
        v80 = v19;
        _os_log_impl(&dword_1BA5AC000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Set reporterID(%lld) on session(0x%x)", v73, 0x22u);
      }
    }

    else
    {
      if (kAVVCScope)
      {
        v15 = *kAVVCScope;
        if (!v15)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v15 = MEMORY[0x1E69E9C10];
        v20 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v73 = 136315650;
        v74 = "AVVCSessionManager.mm";
        v75 = 1024;
        v76 = 232;
        v77 = 2112;
        v78 = v10;
        _os_log_impl(&dword_1BA5AC000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: setReporterID failed with error: %@", v73, 0x1Cu);
      }
    }
  }

  else
  {
    if (kAVVCScope)
    {
      v10 = *kAVVCScope;
      if (!v10)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v73 = 136315394;
      v74 = "AVVCSessionManager.mm";
      v75 = 1024;
      v76 = 239;
      _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: AVVCMetricsManager returned invalid reporterID", v73, 0x12u);
    }

    v10 = 0;
  }

LABEL_43:
  v21 = *MEMORY[0x1E698D5C8];
  v22 = *MEMORY[0x1E698D5C8];
  v23 = v22;
  if (a3 == 4)
  {
    goto LABEL_46;
  }

  if (a3 == 3)
  {
    v32 = *MEMORY[0x1E698D518];
    v25 = *MEMORY[0x1E698D518];
    v33 = *MEMORY[0x1E698D630];
    v34 = *MEMORY[0x1E698D630];

    v23 = v34;
    v35 = self->_audioSession;
    v66 = v10;
    LOBYTE(v34) = [(AVAudioSession *)v35 setCategory:v25 mode:v34 routeSharingPolicy:0 options:12 error:&v66];
    v36 = v66;

    v10 = v36;
    if (v34)
    {
      objc_storeStrong(&self->mPreviousSessionCategory, v32);
      objc_storeStrong(&self->mPreviousSessionMode, v33);
      self->mPreviousSessionCategoryOptions = 12;
      goto LABEL_112;
    }

    if (kAVVCScope)
    {
      v42 = *kAVVCScope;
      if (!v42)
      {
LABEL_74:
        v46 = [v36 code];
        goto LABEL_111;
      }
    }

    else
    {
      v42 = MEMORY[0x1E69E9C10];
      v45 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *v73 = 136315650;
      v74 = "AVVCSessionManager.mm";
      v75 = 1024;
      v76 = 390;
      v77 = 2112;
      v78 = v36;
      _os_log_impl(&dword_1BA5AC000, v42, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: AVVCSessionManager::setupOneTimeSessionSettings setCategoryModeRouteSharingPolicyOptions failed with error: %@", v73, 0x1Cu);
    }

    goto LABEL_74;
  }

  if (a3 != 1)
  {
    v25 = &stru_1F384E730;
    goto LABEL_112;
  }

LABEL_46:
  if (caulk::product::get_device_class(v22) != 4 || (MGGetBoolAnswer() & 1) != 0)
  {
    v24 = *MEMORY[0x1E698D518];
    v25 = *MEMORY[0x1E698D518];
    v26 = *MEMORY[0x1E698D600];
    v27 = *MEMORY[0x1E698D600];

    v23 = v27;
    v28 = self->_audioSession;
    v70 = v10;
    LOBYTE(v27) = [(AVAudioSession *)v28 setCategory:v25 mode:v27 routeSharingPolicy:0 options:4 error:&v70];
    v29 = v70;

    v30 = v29;
    if (v27)
    {
      objc_storeStrong(&self->mPreviousSessionCategory, v24);
      objc_storeStrong(&self->mPreviousSessionMode, v26);
      v14 = 0;
      v31 = 4;
LABEL_58:
      self->mPreviousSessionCategoryOptions = v31;
      goto LABEL_80;
    }

    if (kAVVCScope)
    {
      v37 = *kAVVCScope;
      if (!v37)
      {
LABEL_66:
        v14 = [v29 code];
        goto LABEL_80;
      }
    }

    else
    {
      v37 = MEMORY[0x1E69E9C10];
      v43 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *v73 = 136315650;
      v74 = "AVVCSessionManager.mm";
      v75 = 1024;
      v76 = 328;
      v77 = 2112;
      v78 = v29;
      _os_log_impl(&dword_1BA5AC000, v37, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: AVVCSessionManager::setupOneTimeSessionSettings setCategoryModeOptions failed with error: %@", v73, 0x1Cu);
    }

    goto LABEL_66;
  }

  v38 = *MEMORY[0x1E698D520];
  v25 = *MEMORY[0x1E698D520];
  v39 = self->_audioSession;
  v71 = v10;
  v40 = [(AVAudioSession *)v39 setCategory:v25 withOptions:19 error:&v71];
  v41 = v71;

  v30 = v41;
  if (v40)
  {
    objc_storeStrong(&self->mPreviousSessionCategory, v38);
    objc_storeStrong(&self->mPreviousSessionMode, v21);
    v14 = 0;
    v31 = 19;
    goto LABEL_58;
  }

  if (!kAVVCScope)
  {
    v44 = MEMORY[0x1E69E9C10];
    v47 = MEMORY[0x1E69E9C10];
    goto LABEL_76;
  }

  v44 = *kAVVCScope;
  if (v44)
  {
LABEL_76:
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *v73 = 136315650;
      v74 = "AVVCSessionManager.mm";
      v75 = 1024;
      v76 = 266;
      v77 = 2112;
      v78 = v41;
      _os_log_impl(&dword_1BA5AC000, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: AVVCSessionManager::setupOneTimeSessionSettings setCategoryModeOptions failed with error: %@", v73, 0x1Cu);
    }
  }

  v14 = [v41 code];
LABEL_80:
  v48 = self->_audioSession;
  v69 = v30;
  v49 = [(AVAudioSession *)v48 setIAmTheAssistant:1 error:&v69];
  v50 = v69;

  v51 = v50;
  if (v49)
  {
    goto LABEL_89;
  }

  if (!kAVVCScope)
  {
    v52 = MEMORY[0x1E69E9C10];
    v53 = MEMORY[0x1E69E9C10];
    goto LABEL_85;
  }

  v52 = *kAVVCScope;
  if (v52)
  {
LABEL_85:
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      *v73 = 136315650;
      v74 = "AVVCSessionManager.mm";
      v75 = 1024;
      v76 = 340;
      v77 = 2112;
      v78 = v50;
      _os_log_impl(&dword_1BA5AC000, v52, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: AVVCSessionManager::setIAmTheAssistant failed with error: %@", v73, 0x1Cu);
    }
  }

  v14 = [v50 code];
LABEL_89:
  v54 = self->_audioSession;
  v68 = v50;
  v55 = [(AVAudioSession *)v54 setAllowHapticsAndSystemSoundsDuringRecording:1 error:&v68];
  v56 = v68;

  v10 = v56;
  if (v55)
  {
    goto LABEL_98;
  }

  if (!kAVVCScope)
  {
    v57 = MEMORY[0x1E69E9C10];
    v58 = MEMORY[0x1E69E9C10];
    goto LABEL_94;
  }

  v57 = *kAVVCScope;
  if (v57)
  {
LABEL_94:
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      *v73 = 136315650;
      v74 = "AVVCSessionManager.mm";
      v75 = 1024;
      v76 = 347;
      v77 = 2112;
      v78 = v56;
      _os_log_impl(&dword_1BA5AC000, v57, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: AVVCSessionManager::setAllowHapticsAndSystemSoundsDuringRecording failed with error: %@", v73, 0x1Cu);
    }
  }

  v14 = [v56 code];
LABEL_98:
  if (a3 != 1)
  {
    goto LABEL_101;
  }

  v59 = self->_audioSession;
  v67 = v56;
  v60 = [(AVAudioSession *)v59 setEligibleForBTSmartRoutingConsideration:0 error:&v67];
  v61 = v67;

  v10 = v61;
  if ((v60 & 1) == 0)
  {
    if (kAVVCScope)
    {
      v62 = *kAVVCScope;
      if (!v62)
      {
LABEL_110:
        v46 = [v61 code];
LABEL_111:
        v14 = v46;
        if (v46)
        {
          goto LABEL_113;
        }

LABEL_112:
        [(AVVCSessionManager *)self setSessionStateWithoutLock:1];
        v14 = 0;
        goto LABEL_113;
      }
    }

    else
    {
      v62 = MEMORY[0x1E69E9C10];
      v63 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      *v73 = 136315650;
      v74 = "AVVCSessionManager.mm";
      v75 = 1024;
      v76 = 354;
      v77 = 2112;
      v78 = v61;
      _os_log_impl(&dword_1BA5AC000, v62, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ERROR: AVVCSessionManager::setEligibleForBTSmartRoutingConsideration failed with error: %@", v73, 0x1Cu);
    }

    goto LABEL_110;
  }

  self->mEnableSmartRoutingConsideration = 0;
LABEL_101:
  if (!v14)
  {
    goto LABEL_112;
  }

LABEL_113:

  if (v5)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  ElapsedTime::~ElapsedTime(buf);
LABEL_116:
  v64 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)dealloc
{
  audioSession = self->_audioSession;
  self->_audioSession = 0;

  playbackRoute = self->_playbackRoute;
  self->_playbackRoute = 0;

  v5.receiver = self;
  v5.super_class = AVVCSessionManager;
  [(AVVCSessionManager *)&v5 dealloc];
}

- (AVVCSessionManager)initWithSession:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = AVVCSessionManager;
  v6 = [(AVVCSessionManager *)&v19 init];
  if (v6)
  {
    if (isAudioSessionAvailable(void)::onceToken != -1)
    {
      dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
    }

    if (isAudioSessionAvailable(void)::audioSessionAvailable == 1)
    {
      objc_storeStrong(v6 + 25, a3);
      v6[8] = 0;
      *(v6 + 10) = 0;
      *(v6 + 9) = 0;
      *(v6 + 5) = 1;
      *(v6 + 36) = 0;
      v7 = [MEMORY[0x1E698D708] sharedInstance];
      v6[141] = v7 == v5;

      v6[142] = 0;
      *(v6 + 37) = 1065353216;
      v8 = *(v6 + 26);
      *(v6 + 26) = 0;

      v6[143] = 0;
      *(v6 + 152) = 0u;
      *(v6 + 168) = 0u;
      *(v6 + 184) = 0u;
      *(v6 + 88) = xmmword_1BA6CF4A0;
      v9 = *(v6 + 14);
      *(v6 + 14) = &stru_1F384E730;

      v10 = *(v6 + 15);
      *(v6 + 15) = &stru_1F384E730;

      *(v6 + 16) = -1;
      *(v6 + 34) = 0;
      v6[140] = [*(v6 + 25) eligibleForBTSmartRoutingConsideration];
      v11 = MGGetSInt32Answer();
      v12 = MGGetBoolAnswer();
      if (v11 == 7)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      v6[18] = v13;
      ProductType = PlatformUtilities_iOS::GetProductType(v12);
      v17 = ProductType == 123 || (v15 = PlatformUtilities_iOS::GetProductType(ProductType), v15 == 124) || (v16 = PlatformUtilities_iOS::GetProductType(v15), v16 == 108) || PlatformUtilities_iOS::GetProductType(v16) == 109;
      v6[19] = v17;
    }
  }

  return v6;
}

@end