@interface AFSpeechRequestOptions
- (AFSpeechRequestOptions)initWithActivationEvent:(int64_t)a3;
- (AFSpeechRequestOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initForTestWithTestRequestOptions:(id)a3;
- (unint64_t)computedActivationEventMachAbsoluteTime;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFSpeechRequestOptions

- (id)description
{
  if (self->_audioFileURL)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"audioFileURL = %@", self->_audioFileURL];
LABEL_3:
    v4 = v3;
    goto LABEL_12;
  }

  if (self->_endpointerOperationMode)
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    endpointerOperationMode = self->_endpointerOperationMode;
    if (endpointerOperationMode > 4)
    {
      v7 = @"(unknown)";
    }

    else
    {
      v7 = off_1E7342EF0[endpointerOperationMode];
    }

    v8 = v7;
    v4 = [v5 initWithFormat:@"endpointerOperationMode = %@", v8];
  }

  else
  {
    if (self->_useAutomaticEndpointing)
    {
      v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"useAutomaticEndpointing = %d", self->_useAutomaticEndpointing];
      goto LABEL_3;
    }

    v4 = 0;
  }

LABEL_12:
  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  v22.receiver = self;
  v22.super_class = AFSpeechRequestOptions;
  v10 = [(AFSpeechRequestOptions *)&v22 description];
  activationEvent = self->_activationEvent;
  if (activationEvent > 0x24)
  {
    v12 = @"Unknown";
  }

  else
  {
    v12 = off_1E7342A58[activationEvent];
  }

  v13 = v12;
  turnIdentifier = self->_turnIdentifier;
  presentationMode = self->_presentationMode;
  activationDeviceIdentifier = self->_activationDeviceIdentifier;
  activationEventTime = self->_activationEventTime;
  activationEventMachAbsoluteTime = self->_activationEventMachAbsoluteTime;
  if ([v4 length])
  {
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" %@", v4];
    v20 = [v9 initWithFormat:@"%@, {event = %ld (%@), presentationMode = %ld, turnId = %@, deviceIdentifier = %@, time = %f, hostTime = %llu%@}", v10, activationEvent, v13, presentationMode, turnIdentifier, activationDeviceIdentifier, *&activationEventTime, activationEventMachAbsoluteTime, v19];
  }

  else
  {
    v20 = [v9 initWithFormat:@"%@, {event = %ld (%@), presentationMode = %ld, turnId = %@, deviceIdentifier = %@, time = %f, hostTime = %llu%@}", v10, activationEvent, v13, presentationMode, turnIdentifier, activationDeviceIdentifier, *&activationEventTime, activationEventMachAbsoluteTime, &stru_1F0512680];
  }

  return v20;
}

- (unint64_t)computedActivationEventMachAbsoluteTime
{
  result = self->_activationEventMachAbsoluteTime;
  if (!result)
  {
    activationEventTime = self->_activationEventTime;
    if (activationEventTime <= 0.0)
    {
      return 0;
    }

    else
    {
      if (_AFMachAbsoluteTimeRate_onceToken != -1)
      {
        v5 = self->_activationEventTime;
        dispatch_once(&_AFMachAbsoluteTimeRate_onceToken, &__block_literal_global_1033);
        activationEventTime = v5;
      }

      return (activationEventTime * 1000000000.0 / *&_AFMachAbsoluteTimeRate_rate);
    }
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[AFSpeechRequestOptions alloc] initWithActivationEvent:self->_activationEvent];
  [(AFSpeechRequestOptions *)v4 setActivationDeviceIdentifier:self->_activationDeviceIdentifier];
  [(AFSpeechRequestOptions *)v4 setIsEyesFree:self->_isEyesFree];
  [(AFSpeechRequestOptions *)v4 setIsSystemApertureEnabled:self->_isSystemApertureEnabled];
  [(AFSpeechRequestOptions *)v4 setIsLiveActivitiesSupported:self->_isLiveActivitiesSupported];
  [(AFSpeechRequestOptions *)v4 setIsInAmbient:self->_isInAmbient];
  [(AFSpeechRequestOptions *)v4 setServerCommandId:self->_serverCommandId];
  [(AFSpeechRequestOptions *)v4 setUseAutomaticEndpointing:self->_useAutomaticEndpointing];
  [(AFSpeechRequestOptions *)v4 setEndpointerOperationMode:self->_endpointerOperationMode];
  [(AFSpeechRequestOptions *)v4 setRecordingAlertPolicy:self->_recordingAlertPolicy];
  [(AFSpeechRequestOptions *)v4 setDisableInputAudioPowerUpdate:self->_disableInputAudioPowerUpdate];
  [(AFSpeechRequestOptions *)v4 setDisableOutputAudioPowerUpdate:self->_disableOutputAudioPowerUpdate];
  [(AFSpeechRequestOptions *)v4 setUseStreamingDictation:self->_useStreamingDictation];
  [(AFSpeechRequestOptions *)v4 setHomeButtonDownEventTime:self->_homeButtonDownEventTime];
  [(AFSpeechRequestOptions *)v4 setHomeButtonDownEventMachAbsoluteTime:self->_homeButtonDownEventMachAbsoluteTime];
  [(AFSpeechRequestOptions *)v4 setActivationEventTime:self->_activationEventTime];
  [(AFSpeechRequestOptions *)v4 setActivationEventMachAbsoluteTime:self->_activationEventMachAbsoluteTime];
  [(AFSpeechRequestOptions *)v4 setExpectedActivationEventTime:self->_expectedActivationEventTime];
  [(AFSpeechRequestOptions *)v4 setStopRecordingHostTime:self->_stopRecordingHostTime];
  [(AFSpeechRequestOptions *)v4 setIsInitialBringUp:self->_isInitialBringUp];
  [(AFSpeechRequestOptions *)v4 setHomeButtonUpFromBeep:self->_homeButtonUpFromBeep];
  [(AFSpeechRequestOptions *)v4 setAcousticIdEnabled:self->_acousticIdEnabled];
  [(AFSpeechRequestOptions *)v4 setAudioFileType:self->_audioFileType];
  [(AFSpeechRequestOptions *)v4 setAudioFileHandle:self->_audioFileHandle];
  [(AFSpeechRequestOptions *)v4 setVoiceTriggerEventInfo:self->_voiceTriggerEventInfo];
  [(AFSpeechRequestOptions *)v4 setRaiseToSpeakEventInfo:self->_raiseToSpeakEventInfo];
  [(AFSpeechRequestOptions *)v4 setMyriadContext:self->_myriadContext];
  [(AFSpeechRequestOptions *)v4 setScdaContext:self->_scdaContext];
  [(AFSpeechRequestOptions *)v4 setReleaseAudioSessionOnRecordingCompletion:self->_releaseAudioSessionOnRecordingCompletion];
  [(AFSpeechRequestOptions *)v4 setRecordDeviceIdentifier:self->_recordDeviceIdentifier];
  [(AFSpeechRequestOptions *)v4 setSpeechRecordingEventListeningEndpoint:self->_speechRecordingEventListeningEndpoint];
  [(AFSpeechRequestOptions *)v4 setPendCallbacksUntilAfterContinuation:self->_pendCallbacksUntilAfterContinuation];
  [(AFSpeechRequestOptions *)v4 setUseBorealisBuffer:self->_useBorealisBuffer];
  [(AFSpeechRequestOptions *)v4 setNotifyState:self->_notifyState];
  [(AFSpeechRequestOptions *)v4 setAudioFileURL:self->_audioFileURL];
  [(AFSpeechRequestOptions *)v4 setSuppressStartAlert:self->_suppressStartAlert];
  [(AFSpeechRequestOptions *)v4 setSuppressStopAlert:self->_suppressStopAlert];
  [(AFSpeechRequestOptions *)v4 setHasPlayedStartAlert:self->_hasPlayedStartAlert];
  [(AFSpeechRequestOptions *)v4 setBargeInOptions:self->_bargeInOptions];
  [(AFSpeechRequestOptions *)v4 setSpeechSynthesisRecord:self->_speechSynthesisRecord];
  [(AFSpeechRequestOptions *)v4 setReloadSmartSiriVolume:self->_reloadSmartSiriVolume];
  [(AFSpeechRequestOptions *)v4 setSkipPersonalizedASR:self->_skipPersonalizedASR];
  [(AFSpeechRequestOptions *)v4 setDisableASR:self->_disableASR];
  [(AFSpeechRequestOptions *)v4 setClientAnalyticsContext:self->_clientAnalyticsContext];
  [(AFSpeechRequestOptions *)v4 setStartContext:self->_startContext];
  [(AFSpeechRequestOptions *)v4 setStopContext:self->_stopContext];
  [(AFSpeechRequestOptions *)v4 setIsOnPhoneCall:self->_isOnPhoneCall];
  [(AFSpeechRequestOptions *)v4 setIsMediaPlaying:self->_isMediaPlaying];
  *&v5 = self->_mediaPlaybackVolume;
  [(AFSpeechRequestOptions *)v4 setMediaPlaybackVolume:v5];
  [(AFSpeechRequestOptions *)v4 setTurnIdentifier:self->_turnIdentifier];
  [(AFSpeechRequestOptions *)v4 setLanguageDetectionUserContext:self->_languageDetectionUserContext];
  [(AFSpeechRequestOptions *)v4 setDictationInputOrigin:self->_dictationInputOrigin];
  [(AFSpeechRequestOptions *)v4 setApplicationDisplayName:self->_applicationDisplayName];
  [(AFSpeechRequestOptions *)v4 setApplicationBundleIdentifier:self->_applicationBundleIdentifier];
  [(AFSpeechRequestOptions *)v4 setPresentationMode:self->_presentationMode];
  [(AFSpeechRequestOptions *)v4 setPreheatLanguage:self->_preheatLanguage];
  [(AFSpeechRequestOptions *)v4 setPreheatTestModelPath:self->_preheatTestModelPath];
  [(AFSpeechRequestOptions *)v4 setDictationVoiceTriggerAbsStartSampleId:self->_dictationVoiceTriggerAbsStartSampleId];
  [(AFSpeechRequestOptions *)v4 setContinuousConversationInfo:self->_continuousConversationInfo];
  [(AFSpeechRequestOptions *)v4 setIntuitiveConversationRequestId:self->_intuitiveConversationRequestId];
  [(AFSpeechRequestOptions *)v4 setAnnouncementPlatform:self->_announcementPlatform];
  [(AFSpeechRequestOptions *)v4 setSmartSiriVolumeTTSType:self->_smartSiriVolumeTTSType];
  [(AFSpeechRequestOptions *)v4 setIsTest:self->_isTest];
  [(AFSpeechRequestOptions *)v4 setTestRequestOptions:self->_testRequestOptions];
  [(AFSpeechRequestOptions *)v4 setIsHeadphonesAuthenticated:self->_isHeadphonesAuthenticated];
  [(AFSpeechRequestOptions *)v4 setUserProfileConfidence:self->_userProfileConfidence];
  [(AFSpeechRequestOptions *)v4 setUserProfileHeadphoneConnected:self->_userProfileHeadphoneConnected];
  [(AFSpeechRequestOptions *)v4 setUserProfilePersonaId:self->_userProfilePersonaId];
  [(AFSpeechRequestOptions *)v4 setSpeechPackageOverride:self->_speechPackageOverride];
  return v4;
}

- (AFSpeechRequestOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v85.receiver = self;
  v85.super_class = AFSpeechRequestOptions;
  v5 = [(AFSpeechRequestOptions *)&v85 init];
  if (v5)
  {
    v5->_activationEvent = [v4 decodeIntegerForKey:@"_activationEvent"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_activationDeviceIdentifier"];
    activationDeviceIdentifier = v5->_activationDeviceIdentifier;
    v5->_activationDeviceIdentifier = v6;

    v5->_isEyesFree = [v4 decodeBoolForKey:@"_isEyesFree"];
    v5->_isSystemApertureEnabled = [v4 decodeBoolForKey:@"_isSystemApertureEnabled"];
    v5->_isLiveActivitiesSupported = [v4 decodeBoolForKey:@"_isLiveActivitiesSupported"];
    v5->_isInAmbient = [v4 decodeBoolForKey:@"_isInAmbient"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_serverCommandId"];
    serverCommandId = v5->_serverCommandId;
    v5->_serverCommandId = v8;

    v5->_useAutomaticEndpointing = [v4 decodeBoolForKey:@"_useAutomaticEndpointing"];
    v5->_endpointerOperationMode = [v4 decodeIntegerForKey:@"_endpointerOperationMode"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_recordingAlertPolicy"];
    recordingAlertPolicy = v5->_recordingAlertPolicy;
    v5->_recordingAlertPolicy = v10;

    v5->_disableInputAudioPowerUpdate = [v4 decodeBoolForKey:@"_disableInputAudioPowerUpdate"];
    v5->_disableOutputAudioPowerUpdate = [v4 decodeBoolForKey:@"_disableOutputAudioPowerUpdate"];
    v5->_useStreamingDictation = [v4 decodeBoolForKey:@"_useStreamingDictation"];
    [v4 decodeDoubleForKey:@"_homeButtonDownEventTime"];
    v5->_homeButtonDownEventTime = v12;
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_homeButtonDownEventMachAbsoluteTime"];
    v5->_homeButtonDownEventMachAbsoluteTime = [v13 unsignedLongLongValue];

    [v4 decodeDoubleForKey:@"_activationEventTime"];
    v5->_activationEventTime = v14;
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_activationEventMachAbsoluteTime"];
    v5->_activationEventMachAbsoluteTime = [v15 unsignedLongLongValue];

    [v4 decodeDoubleForKey:@"_expectedActivationEventTime"];
    v5->_expectedActivationEventTime = v16;
    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_stopRecordingHostTime"];
    v5->_stopRecordingHostTime = [v17 unsignedLongLongValue];

    v5->_isInitialBringUp = [v4 decodeBoolForKey:@"_isInitialBringUp"];
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_homeButtonUpFromBeep"];
    homeButtonUpFromBeep = v5->_homeButtonUpFromBeep;
    v5->_homeButtonUpFromBeep = v18;

    v5->_acousticIdEnabled = [v4 decodeBoolForKey:@"_acousticIdEnabled"];
    v5->_audioFileType = [v4 decodeIntegerForKey:@"_audioFileType"];
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_audioFileHandle"];
    audioFileHandle = v5->_audioFileHandle;
    v5->_audioFileHandle = v20;

    v22 = [v4 decodePropertyListForKey:@"_voiceTriggerEventInfo"];
    voiceTriggerEventInfo = v5->_voiceTriggerEventInfo;
    v5->_voiceTriggerEventInfo = v22;

    v24 = v5->_voiceTriggerEventInfo;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v25 = v5->_voiceTriggerEventInfo;
      v5->_voiceTriggerEventInfo = 0;
    }

    v26 = [v4 decodePropertyListForKey:@"_raiseToSpeakEventInfo"];
    raiseToSpeakEventInfo = v5->_raiseToSpeakEventInfo;
    v5->_raiseToSpeakEventInfo = v26;

    v28 = v5->_raiseToSpeakEventInfo;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v29 = v5->_raiseToSpeakEventInfo;
      v5->_raiseToSpeakEventInfo = 0;
    }

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_myriadContext"];
    myriadContext = v5->_myriadContext;
    v5->_myriadContext = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_scdaContext"];
    scdaContext = v5->_scdaContext;
    v5->_scdaContext = v32;

    v5->_releaseAudioSessionOnRecordingCompletion = [v4 decodeBoolForKey:@"_releaseAudioSessionOnRecordingCompletion"];
    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_recordDeviceIdentifier"];
    recordDeviceIdentifier = v5->_recordDeviceIdentifier;
    v5->_recordDeviceIdentifier = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_speechRecordingEventListeningEndpoint"];
    speechRecordingEventListeningEndpoint = v5->_speechRecordingEventListeningEndpoint;
    v5->_speechRecordingEventListeningEndpoint = v36;

    v5->_usePrelisteningMode = [v4 decodeBoolForKey:@"_usePrelisteningMode"];
    v5->_pendCallbacksUntilAfterContinuation = [v4 decodeBoolForKey:@"_pendCallbacksUntilAfterContinuation"];
    v5->_useBorealisBuffer = [v4 decodeBoolForKey:@"_useBorealisBuffer"];
    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_notifyState"];
    notifyState = v5->_notifyState;
    v5->_notifyState = v38;

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_audioFileURL"];
    audioFileURL = v5->_audioFileURL;
    v5->_audioFileURL = v40;

    v5->_suppressStartAlert = [v4 decodeBoolForKey:@"_suppressStartAlert"];
    v5->_suppressStopAlert = [v4 decodeBoolForKey:@"_suppressStopAlert"];
    v5->_hasPlayedStartAlert = [v4 decodeBoolForKey:@"_hasPlayedStartAlert"];
    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_bargeInOptions"];
    v5->_bargeInOptions = [v42 unsignedIntegerValue];

    v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_speechSynthesisRecord"];
    speechSynthesisRecord = v5->_speechSynthesisRecord;
    v5->_speechSynthesisRecord = v43;

    v5->_reloadSmartSiriVolume = [v4 decodeBoolForKey:@"_reloadSmartSiriVolume"];
    v5->_skipPersonalizedASR = [v4 decodeBoolForKey:@"_skipPersonalizedASR"];
    v5->_disableASR = [v4 decodeBoolForKey:@"_disableASR"];
    v45 = [v4 decodePropertyListForKey:@"_clientAnalyticsContext"];
    clientAnalyticsContext = v5->_clientAnalyticsContext;
    v5->_clientAnalyticsContext = v45;

    v47 = v5->_clientAnalyticsContext;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v48 = v5->_clientAnalyticsContext;
      v5->_clientAnalyticsContext = 0;
    }

    v49 = [v4 decodePropertyListForKey:@"_startContext"];
    startContext = v5->_startContext;
    v5->_startContext = v49;

    v51 = v5->_startContext;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v52 = v5->_startContext;
      v5->_startContext = 0;
    }

    v53 = [v4 decodePropertyListForKey:@"_stopContext"];
    stopContext = v5->_stopContext;
    v5->_stopContext = v53;

    v55 = v5->_stopContext;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v56 = v5->_stopContext;
      v5->_stopContext = 0;
    }

    v5->_isOnPhoneCall = [v4 decodeBoolForKey:@"_isOnPhoneCall"];
    v5->_isMediaPlaying = [v4 decodeBoolForKey:@"_isMediaPlaying"];
    [v4 decodeFloatForKey:@"_mediaPlaybackVolume"];
    v5->_mediaPlaybackVolume = v57;
    v58 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_turnIdentifier"];
    turnIdentifier = v5->_turnIdentifier;
    v5->_turnIdentifier = v58;

    v60 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_languageDetectionUserContext"];
    languageDetectionUserContext = v5->_languageDetectionUserContext;
    v5->_languageDetectionUserContext = v60;

    v5->_dictationInputOrigin = [v4 decodeIntegerForKey:@"_dictationInputOrigin"];
    v62 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_applicationDisplayName"];
    applicationDisplayName = v5->_applicationDisplayName;
    v5->_applicationDisplayName = v62;

    v64 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_applicationBundleIdentifier"];
    applicationBundleIdentifier = v5->_applicationBundleIdentifier;
    v5->_applicationBundleIdentifier = v64;

    v5->_presentationMode = [v4 decodeIntegerForKey:@"_presentationMode"];
    v66 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_preheatLanguage"];
    preheatLanguage = v5->_preheatLanguage;
    v5->_preheatLanguage = v66;

    v68 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_preheatTestModelPath"];
    preheatTestModelPath = v5->_preheatTestModelPath;
    v5->_preheatTestModelPath = v68;

    v70 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_dictationVoiceTriggerAbsStartSampleId"];
    v5->_dictationVoiceTriggerAbsStartSampleId = [v70 unsignedLongLongValue];

    v71 = [v4 decodePropertyListForKey:@"_continuousConversationInfo"];
    continuousConversationInfo = v5->_continuousConversationInfo;
    v5->_continuousConversationInfo = v71;

    v73 = v5->_continuousConversationInfo;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v74 = v5->_continuousConversationInfo;
      v5->_continuousConversationInfo = 0;
    }

    v75 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_intuitiveConversationRequestId"];
    intuitiveConversationRequestId = v5->_intuitiveConversationRequestId;
    v5->_intuitiveConversationRequestId = v75;

    v5->_announcementPlatform = [v4 decodeIntegerForKey:@"_announcementPlatform"];
    v77 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_smartSiriVolumeTTSType"];
    v5->_smartSiriVolumeTTSType = [v77 unsignedIntegerValue];

    v5->_isTest = [v4 decodeBoolForKey:@"_isTest"];
    v78 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_testRequestOptions"];
    testRequestOptions = v5->_testRequestOptions;
    v5->_testRequestOptions = v78;

    v5->_isHeadphonesAuthenticated = [v4 decodeBoolForKey:@"_isHeadphonesAuthenticated"];
    v80 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_speechPackageOverride"];
    speechPackageOverride = v5->_speechPackageOverride;
    v5->_speechPackageOverride = v80;

    v82 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_userProfilePersonaId"];
    userProfilePersonaId = v5->_userProfilePersonaId;
    v5->_userProfilePersonaId = v82;

    v5->_userProfileConfidence = [v4 decodeIntegerForKey:@"_userProfileConfidence"];
    v5->_userProfileHeadphoneConnected = [v4 decodeBoolForKey:@"_userProfileHeadphoneConnected"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  activationEvent = self->_activationEvent;
  v12 = a3;
  [v12 encodeInteger:activationEvent forKey:@"_activationEvent"];
  [v12 encodeObject:self->_activationDeviceIdentifier forKey:@"_activationDeviceIdentifier"];
  [v12 encodeBool:self->_isEyesFree forKey:@"_isEyesFree"];
  [v12 encodeBool:self->_isSystemApertureEnabled forKey:@"_isSystemApertureEnabled"];
  [v12 encodeBool:self->_isLiveActivitiesSupported forKey:@"_isLiveActivitiesSupported"];
  [v12 encodeBool:self->_isInAmbient forKey:@"_isInAmbient"];
  [v12 encodeObject:self->_serverCommandId forKey:@"_serverCommandId"];
  [v12 encodeBool:self->_useAutomaticEndpointing forKey:@"_useAutomaticEndpointing"];
  [v12 encodeInteger:self->_endpointerOperationMode forKey:@"_endpointerOperationMode"];
  [v12 encodeObject:self->_recordingAlertPolicy forKey:@"_recordingAlertPolicy"];
  [v12 encodeBool:self->_disableInputAudioPowerUpdate forKey:@"_disableInputAudioPowerUpdate"];
  [v12 encodeBool:self->_disableOutputAudioPowerUpdate forKey:@"_disableOutputAudioPowerUpdate"];
  [v12 encodeBool:self->_useStreamingDictation forKey:@"_useStreamingDictation"];
  [v12 encodeDouble:@"_homeButtonDownEventTime" forKey:self->_homeButtonDownEventTime];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_homeButtonDownEventMachAbsoluteTime];
  [v12 encodeObject:v5 forKey:@"_homeButtonDownEventMachAbsoluteTime"];

  [v12 encodeDouble:@"_activationEventTime" forKey:self->_activationEventTime];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_activationEventMachAbsoluteTime];
  [v12 encodeObject:v6 forKey:@"_activationEventMachAbsoluteTime"];

  [v12 encodeDouble:@"_expectedActivationEventTime" forKey:self->_expectedActivationEventTime];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_stopRecordingHostTime];
  [v12 encodeObject:v7 forKey:@"_stopRecordingHostTime"];

  [v12 encodeBool:self->_isInitialBringUp forKey:@"_isInitialBringUp"];
  [v12 encodeObject:self->_homeButtonUpFromBeep forKey:@"_homeButtonUpFromBeep"];
  [v12 encodeBool:self->_acousticIdEnabled forKey:@"_acousticIdEnabled"];
  [v12 encodeInteger:self->_audioFileType forKey:@"_audioFileType"];
  [v12 encodeObject:self->_audioFileHandle forKey:@"_audioFileHandle"];
  [v12 encodeObject:self->_voiceTriggerEventInfo forKey:@"_voiceTriggerEventInfo"];
  [v12 encodeObject:self->_raiseToSpeakEventInfo forKey:@"_raiseToSpeakEventInfo"];
  [v12 encodeObject:self->_myriadContext forKey:@"_myriadContext"];
  [v12 encodeObject:self->_scdaContext forKey:@"_scdaContext"];
  [v12 encodeBool:self->_releaseAudioSessionOnRecordingCompletion forKey:@"_releaseAudioSessionOnRecordingCompletion"];
  [v12 encodeObject:self->_recordDeviceIdentifier forKey:@"_recordDeviceIdentifier"];
  [v12 encodeObject:self->_speechRecordingEventListeningEndpoint forKey:@"_speechRecordingEventListeningEndpoint"];
  [v12 encodeBool:self->_usePrelisteningMode forKey:@"_usePrelisteningMode"];
  [v12 encodeBool:self->_pendCallbacksUntilAfterContinuation forKey:@"_pendCallbacksUntilAfterContinuation"];
  [v12 encodeBool:self->_useBorealisBuffer forKey:@"_useBorealisBuffer"];
  [v12 encodeObject:self->_notifyState forKey:@"_notifyState"];
  [v12 encodeObject:self->_audioFileURL forKey:@"_audioFileURL"];
  [v12 encodeBool:self->_suppressStartAlert forKey:@"_suppressStartAlert"];
  [v12 encodeBool:self->_suppressStopAlert forKey:@"_suppressStopAlert"];
  [v12 encodeBool:self->_hasPlayedStartAlert forKey:@"_hasPlayedStartAlert"];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_bargeInOptions];
  [v12 encodeObject:v8 forKey:@"_bargeInOptions"];

  [v12 encodeObject:self->_speechSynthesisRecord forKey:@"_speechSynthesisRecord"];
  [v12 encodeBool:self->_reloadSmartSiriVolume forKey:@"_reloadSmartSiriVolume"];
  [v12 encodeBool:self->_skipPersonalizedASR forKey:@"_skipPersonalizedASR"];
  [v12 encodeBool:self->_disableASR forKey:@"_disableASR"];
  [v12 encodeObject:self->_clientAnalyticsContext forKey:@"_clientAnalyticsContext"];
  [v12 encodeObject:self->_startContext forKey:@"_startContext"];
  [v12 encodeObject:self->_stopContext forKey:@"_stopContext"];
  [v12 encodeBool:self->_isOnPhoneCall forKey:@"_isOnPhoneCall"];
  [v12 encodeBool:self->_isMediaPlaying forKey:@"_isMediaPlaying"];
  *&v9 = self->_mediaPlaybackVolume;
  [v12 encodeFloat:@"_mediaPlaybackVolume" forKey:v9];
  [v12 encodeObject:self->_turnIdentifier forKey:@"_turnIdentifier"];
  [v12 encodeObject:self->_languageDetectionUserContext forKey:@"_languageDetectionUserContext"];
  [v12 encodeInteger:self->_dictationInputOrigin forKey:@"_dictationInputOrigin"];
  [v12 encodeObject:self->_applicationDisplayName forKey:@"_applicationDisplayName"];
  [v12 encodeObject:self->_applicationBundleIdentifier forKey:@"_applicationBundleIdentifier"];
  [v12 encodeInteger:self->_presentationMode forKey:@"_presentationMode"];
  [v12 encodeObject:self->_preheatLanguage forKey:@"_preheatLanguage"];
  [v12 encodeObject:self->_preheatTestModelPath forKey:@"_preheatTestModelPath"];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_dictationVoiceTriggerAbsStartSampleId];
  [v12 encodeObject:v10 forKey:@"_dictationVoiceTriggerAbsStartSampleId"];

  [v12 encodeObject:self->_continuousConversationInfo forKey:@"_continuousConversationInfo"];
  [v12 encodeObject:self->_intuitiveConversationRequestId forKey:@"_intuitiveConversationRequestId"];
  [v12 encodeInteger:self->_announcementPlatform forKey:@"_announcementPlatform"];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_smartSiriVolumeTTSType];
  [v12 encodeObject:v11 forKey:@"_smartSiriVolumeTTSType"];

  [v12 encodeBool:self->_isTest forKey:@"_isTest"];
  [v12 encodeObject:self->_testRequestOptions forKey:@"_testRequestOptions"];
  [v12 encodeBool:self->_isHeadphonesAuthenticated forKey:@"_isHeadphonesAuthenticated"];
  [v12 encodeObject:self->_speechPackageOverride forKey:@"_speechPackageOverride"];
  [v12 encodeObject:self->_userProfilePersonaId forKey:@"_userProfilePersonaId"];
  [v12 encodeInteger:self->_userProfileConfidence forKey:@"_userProfileConfidence"];
  [v12 encodeBool:self->_userProfileHeadphoneConnected forKey:@"_userProfileHeadphoneConnected"];
}

- (id)initForTestWithTestRequestOptions:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AFSpeechRequestOptions;
  v6 = [(AFSpeechRequestOptions *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_isTest = 1;
    objc_storeStrong(&v6->_testRequestOptions, a3);
  }

  return v7;
}

- (AFSpeechRequestOptions)initWithActivationEvent:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = AFSpeechRequestOptions;
  result = [(AFSpeechRequestOptions *)&v5 init];
  if (result)
  {
    result->_activationEvent = a3;
  }

  return result;
}

@end