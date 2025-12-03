@interface AFSpeechRequestOptions
- (AFSpeechRequestOptions)initWithActivationEvent:(int64_t)event;
- (AFSpeechRequestOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initForTestWithTestRequestOptions:(id)options;
- (unint64_t)computedActivationEventMachAbsoluteTime;
- (void)encodeWithCoder:(id)coder;
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

- (id)copyWithZone:(_NSZone *)zone
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

- (AFSpeechRequestOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v85.receiver = self;
  v85.super_class = AFSpeechRequestOptions;
  v5 = [(AFSpeechRequestOptions *)&v85 init];
  if (v5)
  {
    v5->_activationEvent = [coderCopy decodeIntegerForKey:@"_activationEvent"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_activationDeviceIdentifier"];
    activationDeviceIdentifier = v5->_activationDeviceIdentifier;
    v5->_activationDeviceIdentifier = v6;

    v5->_isEyesFree = [coderCopy decodeBoolForKey:@"_isEyesFree"];
    v5->_isSystemApertureEnabled = [coderCopy decodeBoolForKey:@"_isSystemApertureEnabled"];
    v5->_isLiveActivitiesSupported = [coderCopy decodeBoolForKey:@"_isLiveActivitiesSupported"];
    v5->_isInAmbient = [coderCopy decodeBoolForKey:@"_isInAmbient"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_serverCommandId"];
    serverCommandId = v5->_serverCommandId;
    v5->_serverCommandId = v8;

    v5->_useAutomaticEndpointing = [coderCopy decodeBoolForKey:@"_useAutomaticEndpointing"];
    v5->_endpointerOperationMode = [coderCopy decodeIntegerForKey:@"_endpointerOperationMode"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_recordingAlertPolicy"];
    recordingAlertPolicy = v5->_recordingAlertPolicy;
    v5->_recordingAlertPolicy = v10;

    v5->_disableInputAudioPowerUpdate = [coderCopy decodeBoolForKey:@"_disableInputAudioPowerUpdate"];
    v5->_disableOutputAudioPowerUpdate = [coderCopy decodeBoolForKey:@"_disableOutputAudioPowerUpdate"];
    v5->_useStreamingDictation = [coderCopy decodeBoolForKey:@"_useStreamingDictation"];
    [coderCopy decodeDoubleForKey:@"_homeButtonDownEventTime"];
    v5->_homeButtonDownEventTime = v12;
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_homeButtonDownEventMachAbsoluteTime"];
    v5->_homeButtonDownEventMachAbsoluteTime = [v13 unsignedLongLongValue];

    [coderCopy decodeDoubleForKey:@"_activationEventTime"];
    v5->_activationEventTime = v14;
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_activationEventMachAbsoluteTime"];
    v5->_activationEventMachAbsoluteTime = [v15 unsignedLongLongValue];

    [coderCopy decodeDoubleForKey:@"_expectedActivationEventTime"];
    v5->_expectedActivationEventTime = v16;
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_stopRecordingHostTime"];
    v5->_stopRecordingHostTime = [v17 unsignedLongLongValue];

    v5->_isInitialBringUp = [coderCopy decodeBoolForKey:@"_isInitialBringUp"];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_homeButtonUpFromBeep"];
    homeButtonUpFromBeep = v5->_homeButtonUpFromBeep;
    v5->_homeButtonUpFromBeep = v18;

    v5->_acousticIdEnabled = [coderCopy decodeBoolForKey:@"_acousticIdEnabled"];
    v5->_audioFileType = [coderCopy decodeIntegerForKey:@"_audioFileType"];
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_audioFileHandle"];
    audioFileHandle = v5->_audioFileHandle;
    v5->_audioFileHandle = v20;

    v22 = [coderCopy decodePropertyListForKey:@"_voiceTriggerEventInfo"];
    voiceTriggerEventInfo = v5->_voiceTriggerEventInfo;
    v5->_voiceTriggerEventInfo = v22;

    v24 = v5->_voiceTriggerEventInfo;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v25 = v5->_voiceTriggerEventInfo;
      v5->_voiceTriggerEventInfo = 0;
    }

    v26 = [coderCopy decodePropertyListForKey:@"_raiseToSpeakEventInfo"];
    raiseToSpeakEventInfo = v5->_raiseToSpeakEventInfo;
    v5->_raiseToSpeakEventInfo = v26;

    v28 = v5->_raiseToSpeakEventInfo;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v29 = v5->_raiseToSpeakEventInfo;
      v5->_raiseToSpeakEventInfo = 0;
    }

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_myriadContext"];
    myriadContext = v5->_myriadContext;
    v5->_myriadContext = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_scdaContext"];
    scdaContext = v5->_scdaContext;
    v5->_scdaContext = v32;

    v5->_releaseAudioSessionOnRecordingCompletion = [coderCopy decodeBoolForKey:@"_releaseAudioSessionOnRecordingCompletion"];
    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_recordDeviceIdentifier"];
    recordDeviceIdentifier = v5->_recordDeviceIdentifier;
    v5->_recordDeviceIdentifier = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_speechRecordingEventListeningEndpoint"];
    speechRecordingEventListeningEndpoint = v5->_speechRecordingEventListeningEndpoint;
    v5->_speechRecordingEventListeningEndpoint = v36;

    v5->_usePrelisteningMode = [coderCopy decodeBoolForKey:@"_usePrelisteningMode"];
    v5->_pendCallbacksUntilAfterContinuation = [coderCopy decodeBoolForKey:@"_pendCallbacksUntilAfterContinuation"];
    v5->_useBorealisBuffer = [coderCopy decodeBoolForKey:@"_useBorealisBuffer"];
    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_notifyState"];
    notifyState = v5->_notifyState;
    v5->_notifyState = v38;

    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_audioFileURL"];
    audioFileURL = v5->_audioFileURL;
    v5->_audioFileURL = v40;

    v5->_suppressStartAlert = [coderCopy decodeBoolForKey:@"_suppressStartAlert"];
    v5->_suppressStopAlert = [coderCopy decodeBoolForKey:@"_suppressStopAlert"];
    v5->_hasPlayedStartAlert = [coderCopy decodeBoolForKey:@"_hasPlayedStartAlert"];
    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_bargeInOptions"];
    v5->_bargeInOptions = [v42 unsignedIntegerValue];

    v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_speechSynthesisRecord"];
    speechSynthesisRecord = v5->_speechSynthesisRecord;
    v5->_speechSynthesisRecord = v43;

    v5->_reloadSmartSiriVolume = [coderCopy decodeBoolForKey:@"_reloadSmartSiriVolume"];
    v5->_skipPersonalizedASR = [coderCopy decodeBoolForKey:@"_skipPersonalizedASR"];
    v5->_disableASR = [coderCopy decodeBoolForKey:@"_disableASR"];
    v45 = [coderCopy decodePropertyListForKey:@"_clientAnalyticsContext"];
    clientAnalyticsContext = v5->_clientAnalyticsContext;
    v5->_clientAnalyticsContext = v45;

    v47 = v5->_clientAnalyticsContext;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v48 = v5->_clientAnalyticsContext;
      v5->_clientAnalyticsContext = 0;
    }

    v49 = [coderCopy decodePropertyListForKey:@"_startContext"];
    startContext = v5->_startContext;
    v5->_startContext = v49;

    v51 = v5->_startContext;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v52 = v5->_startContext;
      v5->_startContext = 0;
    }

    v53 = [coderCopy decodePropertyListForKey:@"_stopContext"];
    stopContext = v5->_stopContext;
    v5->_stopContext = v53;

    v55 = v5->_stopContext;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v56 = v5->_stopContext;
      v5->_stopContext = 0;
    }

    v5->_isOnPhoneCall = [coderCopy decodeBoolForKey:@"_isOnPhoneCall"];
    v5->_isMediaPlaying = [coderCopy decodeBoolForKey:@"_isMediaPlaying"];
    [coderCopy decodeFloatForKey:@"_mediaPlaybackVolume"];
    v5->_mediaPlaybackVolume = v57;
    v58 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_turnIdentifier"];
    turnIdentifier = v5->_turnIdentifier;
    v5->_turnIdentifier = v58;

    v60 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_languageDetectionUserContext"];
    languageDetectionUserContext = v5->_languageDetectionUserContext;
    v5->_languageDetectionUserContext = v60;

    v5->_dictationInputOrigin = [coderCopy decodeIntegerForKey:@"_dictationInputOrigin"];
    v62 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_applicationDisplayName"];
    applicationDisplayName = v5->_applicationDisplayName;
    v5->_applicationDisplayName = v62;

    v64 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_applicationBundleIdentifier"];
    applicationBundleIdentifier = v5->_applicationBundleIdentifier;
    v5->_applicationBundleIdentifier = v64;

    v5->_presentationMode = [coderCopy decodeIntegerForKey:@"_presentationMode"];
    v66 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_preheatLanguage"];
    preheatLanguage = v5->_preheatLanguage;
    v5->_preheatLanguage = v66;

    v68 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_preheatTestModelPath"];
    preheatTestModelPath = v5->_preheatTestModelPath;
    v5->_preheatTestModelPath = v68;

    v70 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_dictationVoiceTriggerAbsStartSampleId"];
    v5->_dictationVoiceTriggerAbsStartSampleId = [v70 unsignedLongLongValue];

    v71 = [coderCopy decodePropertyListForKey:@"_continuousConversationInfo"];
    continuousConversationInfo = v5->_continuousConversationInfo;
    v5->_continuousConversationInfo = v71;

    v73 = v5->_continuousConversationInfo;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v74 = v5->_continuousConversationInfo;
      v5->_continuousConversationInfo = 0;
    }

    v75 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_intuitiveConversationRequestId"];
    intuitiveConversationRequestId = v5->_intuitiveConversationRequestId;
    v5->_intuitiveConversationRequestId = v75;

    v5->_announcementPlatform = [coderCopy decodeIntegerForKey:@"_announcementPlatform"];
    v77 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_smartSiriVolumeTTSType"];
    v5->_smartSiriVolumeTTSType = [v77 unsignedIntegerValue];

    v5->_isTest = [coderCopy decodeBoolForKey:@"_isTest"];
    v78 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_testRequestOptions"];
    testRequestOptions = v5->_testRequestOptions;
    v5->_testRequestOptions = v78;

    v5->_isHeadphonesAuthenticated = [coderCopy decodeBoolForKey:@"_isHeadphonesAuthenticated"];
    v80 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_speechPackageOverride"];
    speechPackageOverride = v5->_speechPackageOverride;
    v5->_speechPackageOverride = v80;

    v82 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_userProfilePersonaId"];
    userProfilePersonaId = v5->_userProfilePersonaId;
    v5->_userProfilePersonaId = v82;

    v5->_userProfileConfidence = [coderCopy decodeIntegerForKey:@"_userProfileConfidence"];
    v5->_userProfileHeadphoneConnected = [coderCopy decodeBoolForKey:@"_userProfileHeadphoneConnected"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  activationEvent = self->_activationEvent;
  coderCopy = coder;
  [coderCopy encodeInteger:activationEvent forKey:@"_activationEvent"];
  [coderCopy encodeObject:self->_activationDeviceIdentifier forKey:@"_activationDeviceIdentifier"];
  [coderCopy encodeBool:self->_isEyesFree forKey:@"_isEyesFree"];
  [coderCopy encodeBool:self->_isSystemApertureEnabled forKey:@"_isSystemApertureEnabled"];
  [coderCopy encodeBool:self->_isLiveActivitiesSupported forKey:@"_isLiveActivitiesSupported"];
  [coderCopy encodeBool:self->_isInAmbient forKey:@"_isInAmbient"];
  [coderCopy encodeObject:self->_serverCommandId forKey:@"_serverCommandId"];
  [coderCopy encodeBool:self->_useAutomaticEndpointing forKey:@"_useAutomaticEndpointing"];
  [coderCopy encodeInteger:self->_endpointerOperationMode forKey:@"_endpointerOperationMode"];
  [coderCopy encodeObject:self->_recordingAlertPolicy forKey:@"_recordingAlertPolicy"];
  [coderCopy encodeBool:self->_disableInputAudioPowerUpdate forKey:@"_disableInputAudioPowerUpdate"];
  [coderCopy encodeBool:self->_disableOutputAudioPowerUpdate forKey:@"_disableOutputAudioPowerUpdate"];
  [coderCopy encodeBool:self->_useStreamingDictation forKey:@"_useStreamingDictation"];
  [coderCopy encodeDouble:@"_homeButtonDownEventTime" forKey:self->_homeButtonDownEventTime];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_homeButtonDownEventMachAbsoluteTime];
  [coderCopy encodeObject:v5 forKey:@"_homeButtonDownEventMachAbsoluteTime"];

  [coderCopy encodeDouble:@"_activationEventTime" forKey:self->_activationEventTime];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_activationEventMachAbsoluteTime];
  [coderCopy encodeObject:v6 forKey:@"_activationEventMachAbsoluteTime"];

  [coderCopy encodeDouble:@"_expectedActivationEventTime" forKey:self->_expectedActivationEventTime];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_stopRecordingHostTime];
  [coderCopy encodeObject:v7 forKey:@"_stopRecordingHostTime"];

  [coderCopy encodeBool:self->_isInitialBringUp forKey:@"_isInitialBringUp"];
  [coderCopy encodeObject:self->_homeButtonUpFromBeep forKey:@"_homeButtonUpFromBeep"];
  [coderCopy encodeBool:self->_acousticIdEnabled forKey:@"_acousticIdEnabled"];
  [coderCopy encodeInteger:self->_audioFileType forKey:@"_audioFileType"];
  [coderCopy encodeObject:self->_audioFileHandle forKey:@"_audioFileHandle"];
  [coderCopy encodeObject:self->_voiceTriggerEventInfo forKey:@"_voiceTriggerEventInfo"];
  [coderCopy encodeObject:self->_raiseToSpeakEventInfo forKey:@"_raiseToSpeakEventInfo"];
  [coderCopy encodeObject:self->_myriadContext forKey:@"_myriadContext"];
  [coderCopy encodeObject:self->_scdaContext forKey:@"_scdaContext"];
  [coderCopy encodeBool:self->_releaseAudioSessionOnRecordingCompletion forKey:@"_releaseAudioSessionOnRecordingCompletion"];
  [coderCopy encodeObject:self->_recordDeviceIdentifier forKey:@"_recordDeviceIdentifier"];
  [coderCopy encodeObject:self->_speechRecordingEventListeningEndpoint forKey:@"_speechRecordingEventListeningEndpoint"];
  [coderCopy encodeBool:self->_usePrelisteningMode forKey:@"_usePrelisteningMode"];
  [coderCopy encodeBool:self->_pendCallbacksUntilAfterContinuation forKey:@"_pendCallbacksUntilAfterContinuation"];
  [coderCopy encodeBool:self->_useBorealisBuffer forKey:@"_useBorealisBuffer"];
  [coderCopy encodeObject:self->_notifyState forKey:@"_notifyState"];
  [coderCopy encodeObject:self->_audioFileURL forKey:@"_audioFileURL"];
  [coderCopy encodeBool:self->_suppressStartAlert forKey:@"_suppressStartAlert"];
  [coderCopy encodeBool:self->_suppressStopAlert forKey:@"_suppressStopAlert"];
  [coderCopy encodeBool:self->_hasPlayedStartAlert forKey:@"_hasPlayedStartAlert"];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_bargeInOptions];
  [coderCopy encodeObject:v8 forKey:@"_bargeInOptions"];

  [coderCopy encodeObject:self->_speechSynthesisRecord forKey:@"_speechSynthesisRecord"];
  [coderCopy encodeBool:self->_reloadSmartSiriVolume forKey:@"_reloadSmartSiriVolume"];
  [coderCopy encodeBool:self->_skipPersonalizedASR forKey:@"_skipPersonalizedASR"];
  [coderCopy encodeBool:self->_disableASR forKey:@"_disableASR"];
  [coderCopy encodeObject:self->_clientAnalyticsContext forKey:@"_clientAnalyticsContext"];
  [coderCopy encodeObject:self->_startContext forKey:@"_startContext"];
  [coderCopy encodeObject:self->_stopContext forKey:@"_stopContext"];
  [coderCopy encodeBool:self->_isOnPhoneCall forKey:@"_isOnPhoneCall"];
  [coderCopy encodeBool:self->_isMediaPlaying forKey:@"_isMediaPlaying"];
  *&v9 = self->_mediaPlaybackVolume;
  [coderCopy encodeFloat:@"_mediaPlaybackVolume" forKey:v9];
  [coderCopy encodeObject:self->_turnIdentifier forKey:@"_turnIdentifier"];
  [coderCopy encodeObject:self->_languageDetectionUserContext forKey:@"_languageDetectionUserContext"];
  [coderCopy encodeInteger:self->_dictationInputOrigin forKey:@"_dictationInputOrigin"];
  [coderCopy encodeObject:self->_applicationDisplayName forKey:@"_applicationDisplayName"];
  [coderCopy encodeObject:self->_applicationBundleIdentifier forKey:@"_applicationBundleIdentifier"];
  [coderCopy encodeInteger:self->_presentationMode forKey:@"_presentationMode"];
  [coderCopy encodeObject:self->_preheatLanguage forKey:@"_preheatLanguage"];
  [coderCopy encodeObject:self->_preheatTestModelPath forKey:@"_preheatTestModelPath"];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_dictationVoiceTriggerAbsStartSampleId];
  [coderCopy encodeObject:v10 forKey:@"_dictationVoiceTriggerAbsStartSampleId"];

  [coderCopy encodeObject:self->_continuousConversationInfo forKey:@"_continuousConversationInfo"];
  [coderCopy encodeObject:self->_intuitiveConversationRequestId forKey:@"_intuitiveConversationRequestId"];
  [coderCopy encodeInteger:self->_announcementPlatform forKey:@"_announcementPlatform"];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_smartSiriVolumeTTSType];
  [coderCopy encodeObject:v11 forKey:@"_smartSiriVolumeTTSType"];

  [coderCopy encodeBool:self->_isTest forKey:@"_isTest"];
  [coderCopy encodeObject:self->_testRequestOptions forKey:@"_testRequestOptions"];
  [coderCopy encodeBool:self->_isHeadphonesAuthenticated forKey:@"_isHeadphonesAuthenticated"];
  [coderCopy encodeObject:self->_speechPackageOverride forKey:@"_speechPackageOverride"];
  [coderCopy encodeObject:self->_userProfilePersonaId forKey:@"_userProfilePersonaId"];
  [coderCopy encodeInteger:self->_userProfileConfidence forKey:@"_userProfileConfidence"];
  [coderCopy encodeBool:self->_userProfileHeadphoneConnected forKey:@"_userProfileHeadphoneConnected"];
}

- (id)initForTestWithTestRequestOptions:(id)options
{
  optionsCopy = options;
  v9.receiver = self;
  v9.super_class = AFSpeechRequestOptions;
  v6 = [(AFSpeechRequestOptions *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_isTest = 1;
    objc_storeStrong(&v6->_testRequestOptions, options);
  }

  return v7;
}

- (AFSpeechRequestOptions)initWithActivationEvent:(int64_t)event
{
  v5.receiver = self;
  v5.super_class = AFSpeechRequestOptions;
  result = [(AFSpeechRequestOptions *)&v5 init];
  if (result)
  {
    result->_activationEvent = event;
  }

  return result;
}

@end