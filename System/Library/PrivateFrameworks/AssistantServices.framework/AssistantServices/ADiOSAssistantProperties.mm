@interface ADiOSAssistantProperties
- (ADiOSAssistantProperties)initWithQueue:(id)queue;
- (BOOL)_getIsAllowSiriWhenLockedEnabled;
- (BOOL)_getIsAlwaysListenForHeySiriEnabled;
- (BOOL)_getIsAlwaysShowSiriCaptionsEnabled;
- (BOOL)_getIsAlwaysShowSpeechEnabled;
- (BOOL)_getIsAnnounceCallsEnabledForAnnounceProperties;
- (BOOL)_getIsAnnounceNotificationsEnabled;
- (BOOL)_getIsAtypicalSpeechEnabled;
- (BOOL)_getIsEnabledForHeadphones;
- (BOOL)_getIsPressSideButtonForSiriEnabled;
- (BOOL)_getIsShowAppsBehindSiriEnabled;
- (BOOL)_getIsSiriCapableDigitalCarKeyAvailable;
- (double)_getSiriSpeechRate;
- (id)_getODDAutoSendMessageProperties;
- (id)_getODDCarPlayProperties;
- (id)_getODDHeadGestureProperties;
- (id)_getODDSiriInCallProperties;
- (id)_getODDiOSAccessibilityProperties;
- (id)_getODDiOSResponseProperties;
- (int)_getAnnounceCarPlayStatus;
- (int)_getSiriPauseTimeState;
- (int)_headGestureMappingFromGestureType:(int64_t)type;
- (void)_getIsSpokenNotificationsControlCenterModuleEnabledWithCompletion:(id)completion;
- (void)_getODDAnnouncePropertiesWithCompletion:(id)completion;
- (void)getODDiOSAssistantPropertiesWithCompletion:(id)completion;
@end

@implementation ADiOSAssistantProperties

- (void)_getIsSpokenNotificationsControlCenterModuleEnabledWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[ADiOSAssistantProperties _getIsSpokenNotificationsControlCenterModuleEnabledWithCompletion:]";
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s Retrieving", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v33 = 0x3032000000;
  v34 = sub_100139E7C;
  v35 = sub_100139E8C;
  v36 = 0;
  v6 = [AFOneArgumentSafetyBlock alloc];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100139E94;
  v24[3] = &unk_100512B30;
  v24[4] = self;
  p_buf = &buf;
  v7 = completionCopy;
  v25 = v7;
  v8 = [v6 initWithBlock:v24];
  v9 = [AFWatchdogTimer alloc];
  queue = self->_queue;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100139F5C;
  v22[3] = &unk_10051DFE8;
  v11 = v8;
  v23 = v11;
  v12 = [v9 initWithTimeoutInterval:queue onQueue:v22 timeoutHandler:3.0];
  v13 = *(*(&buf + 1) + 40);
  *(*(&buf + 1) + 40) = v12;

  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v14 = qword_1005902C8;
  v31 = qword_1005902C8;
  if (!qword_1005902C8)
  {
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10013A028;
    v27[3] = &unk_10051E1C8;
    v27[4] = &v28;
    sub_10013A028(v27);
    v14 = v29[3];
  }

  v15 = v14;
  _Block_object_dispose(&v28, 8);
  sharedInstance = [v14 sharedInstance];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10013A128;
  v20[3] = &unk_10051C2E0;
  v17 = v11;
  v21 = v17;
  [sharedInstance getEnabledStateOfModuleWithIdentifier:@"com.apple.siri.SpokenNotificationsModule" completionHandler:v20];
  v18 = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013A188;
  block[3] = &unk_10051E1C8;
  block[4] = &buf;
  dispatch_async(v18, block);

  _Block_object_dispose(&buf, 8);
}

- (BOOL)_getIsEnabledForHeadphones
{
  currentNotificationSettingsCenter = [sub_10013A384() currentNotificationSettingsCenter];
  notificationSystemSettings = [currentNotificationSettingsCenter notificationSystemSettings];
  v4 = [notificationSystemSettings announcementHeadphonesSetting] == 2;

  return v4;
}

- (BOOL)_getIsAnnounceNotificationsEnabled
{
  currentNotificationSettingsCenter = [sub_10013A384() currentNotificationSettingsCenter];
  notificationSystemSettings = [currentNotificationSettingsCenter notificationSystemSettings];
  v4 = [notificationSystemSettings announcementSetting] == 2;

  return v4;
}

- (BOOL)_getIsAnnounceCallsEnabledForAnnounceProperties
{
  v2 = objc_alloc_init(TUUserConfiguration);
  v3 = [v2 announceCalls] != 0;

  return v3;
}

- (int)_getAnnounceCarPlayStatus
{
  v2 = _AFPreferencesAnnounceNotificationsInCarPlayType();

  return [ADiOSAssistantPropertiesUtilities getODDCarPlayAnnounceStatusFrom:v2];
}

- (BOOL)_getIsSiriCapableDigitalCarKeyAvailable
{
  v2 = objc_alloc_init(PKPassLibrary);
  v3 = [v2 passesOfType:1];
  [v3 pk_objectsPassingTest:&stru_100512B08];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if (![*(*(&v9 + 1) + 8 * i) passActivationState])
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (int)_getSiriPauseTimeState
{
  v2 = +[AFPreferences sharedPreferences];
  accessibleEndpointerThreshold = [v2 accessibleEndpointerThreshold];

  return [ADiOSAssistantPropertiesUtilities getSiriPauseTimeStateFrom:accessibleEndpointerThreshold];
}

- (BOOL)_getIsAlwaysListenForHeySiriEnabled
{
  v2 = +[AFPreferences sharedPreferences];
  alwaysAllowVoiceActivation = [v2 alwaysAllowVoiceActivation];

  return alwaysAllowVoiceActivation;
}

- (BOOL)_getIsAtypicalSpeechEnabled
{
  v2 = +[AFPreferences sharedPreferences];
  useAtypicalSpeechModel = [v2 useAtypicalSpeechModel];

  return useAtypicalSpeechModel;
}

- (double)_getSiriSpeechRate
{
  v2 = +[AFPreferences sharedPreferences];
  siriSpeechRate = [v2 siriSpeechRate];
  [siriSpeechRate doubleValue];
  v5 = v4;

  return v5;
}

- (BOOL)_getIsShowAppsBehindSiriEnabled
{
  v2 = +[AFPreferences sharedPreferences];
  alwaysObscureBackgroundContentWhenActive = [v2 alwaysObscureBackgroundContentWhenActive];

  return alwaysObscureBackgroundContentWhenActive ^ 1;
}

- (BOOL)_getIsAlwaysShowSpeechEnabled
{
  v2 = +[AFPreferences sharedPreferences];
  alwaysShowRecognizedSpeech = [v2 alwaysShowRecognizedSpeech];

  return alwaysShowRecognizedSpeech;
}

- (BOOL)_getIsAlwaysShowSiriCaptionsEnabled
{
  v2 = +[AFPreferences sharedPreferences];
  siriResponseShouldAlwaysPrintWithoutOverride = [v2 siriResponseShouldAlwaysPrintWithoutOverride];

  return siriResponseShouldAlwaysPrintWithoutOverride;
}

- (BOOL)_getIsAllowSiriWhenLockedEnabled
{
  v2 = +[AFPreferences sharedPreferences];
  disableAssistantWhilePasscodeLocked = [v2 disableAssistantWhilePasscodeLocked];

  return disableAssistantWhilePasscodeLocked ^ 1;
}

- (BOOL)_getIsPressSideButtonForSiriEnabled
{
  v2 = +[AFPreferences sharedPreferences];
  assistantIsEnabled = [v2 assistantIsEnabled];

  return assistantIsEnabled;
}

- (id)_getODDHeadGestureProperties
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315138;
    v9 = "[ADiOSAssistantProperties _getODDHeadGestureProperties]";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s ", &v8, 0xCu);
  }

  v4 = objc_alloc_init(ODDSiriSchemaODDHeadGestureProperties);
  v5 = +[AFPreferences sharedPreferences];
  storedHeadGestureConfigurationForDevice = [v5 storedHeadGestureConfigurationForDevice];

  [v4 setHeadGesturesSupported:{objc_msgSend(storedHeadGestureConfigurationForDevice, "isSupported")}];
  [v4 setHeadGesturesEnabled:{objc_msgSend(storedHeadGestureConfigurationForDevice, "isEnabled")}];
  [v4 setAcceptProceedGesture:{-[ADiOSAssistantProperties _headGestureMappingFromGestureType:](self, "_headGestureMappingFromGestureType:", objc_msgSend(storedHeadGestureConfigurationForDevice, "acceptGesture"))}];
  [v4 setDeclineDismissGesture:{-[ADiOSAssistantProperties _headGestureMappingFromGestureType:](self, "_headGestureMappingFromGestureType:", objc_msgSend(storedHeadGestureConfigurationForDevice, "rejectGesture"))}];

  return v4;
}

- (int)_headGestureMappingFromGestureType:(int64_t)type
{
  if (type == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (type == 1);
  }
}

- (id)_getODDAutoSendMessageProperties
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315138;
    v7 = "[ADiOSAssistantProperties _getODDAutoSendMessageProperties]";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s ", &v6, 0xCu);
  }

  v4 = objc_alloc_init(ODDSiriSchemaODDAutoSendMessageProperties);
  [v4 setIsAutomaticallySendMessagesEnabled:{-[ADiOSAssistantProperties _getIsAutomaticallySendMessagesEnabled](self, "_getIsAutomaticallySendMessagesEnabled")}];
  [v4 setIsEnabledForHeadphones:{-[ADiOSAssistantProperties _getIsAutomaticallySendMessagesEnabledForHeadphones](self, "_getIsAutomaticallySendMessagesEnabledForHeadphones")}];
  [v4 setIsEnabledForCarPlay:{-[ADiOSAssistantProperties _getIsAutomaticallySendMessagesEnabledForCarPlay](self, "_getIsAutomaticallySendMessagesEnabledForCarPlay")}];

  return v4;
}

- (void)_getODDAnnouncePropertiesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v13 = "[ADiOSAssistantProperties _getODDAnnouncePropertiesWithCompletion:]";
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  v6 = objc_alloc_init(ODDSiriSchemaODDAnnounceProperties);
  [v6 setIsAnnounceCallsEnabled:{-[ADiOSAssistantProperties _getIsAnnounceCallsEnabledForAnnounceProperties](self, "_getIsAnnounceCallsEnabledForAnnounceProperties")}];
  [v6 setIsAnnounceNotificationsEnabled:{-[ADiOSAssistantProperties _getIsAnnounceNotificationsEnabled](self, "_getIsAnnounceNotificationsEnabled")}];
  [v6 setIsEnabledForHeadphones:{-[ADiOSAssistantProperties _getIsEnabledForHeadphones](self, "_getIsEnabledForHeadphones")}];
  [v6 setIsProximityCardSeen:{-[ADiOSAssistantProperties _getAnnounceIsProximityCardSeen](self, "_getAnnounceIsProximityCardSeen")}];
  [v6 setIsReplyWithoutConfirmationEnabled:{-[ADiOSAssistantProperties _getAnnounceIsReplyWithoutConfirmationEnabled](self, "_getAnnounceIsReplyWithoutConfirmationEnabled")}];
  [v6 setIsCarPlayMuted:{-[ADiOSAssistantProperties _getAnnounceIsCarPlayMuted](self, "_getAnnounceIsCarPlayMuted")}];
  [v6 setCarPlayStatus:{-[ADiOSAssistantProperties _getAnnounceCarPlayStatus](self, "_getAnnounceCarPlayStatus")}];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10013AF34;
  v9[3] = &unk_10051C718;
  v10 = v6;
  v11 = completionCopy;
  v7 = completionCopy;
  v8 = v6;
  [(ADiOSAssistantProperties *)self _getIsSpokenNotificationsControlCenterModuleEnabledWithCompletion:v9];
}

- (id)_getODDSiriInCallProperties
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315138;
    v7 = "[ADiOSAssistantProperties _getODDSiriInCallProperties]";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s ", &v6, 0xCu);
  }

  v4 = objc_alloc_init(ODDSiriSchemaODDSiriInCallProperties);
  [v4 setHeySiriHangupEnablementState:{-[ADiOSAssistantProperties _getHeySiriHangupEnablementState](self, "_getHeySiriHangupEnablementState")}];
  [v4 setSiriInCallEnablementState:{-[ADiOSAssistantProperties _getSiriInCallEnablementState](self, "_getSiriInCallEnablementState")}];

  return v4;
}

- (id)_getODDCarPlayProperties
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315138;
    v7 = "[ADiOSAssistantProperties _getODDCarPlayProperties]";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s ", &v6, 0xCu);
  }

  v4 = objc_alloc_init(ODDSiriSchemaODDCarPlayProperties);
  [v4 setIsShowAppsBehindSiriEnabledOnCarPlay:{-[ADiOSAssistantProperties _getIsShowAppsBehindSiriEnabledOnCarPlay](self, "_getIsShowAppsBehindSiriEnabledOnCarPlay")}];
  [v4 setIsSiriCapableDigitalCarKeyAvailable:{-[ADiOSAssistantProperties _getIsSiriCapableDigitalCarKeyAvailable](self, "_getIsSiriCapableDigitalCarKeyAvailable")}];

  return v4;
}

- (id)_getODDiOSAccessibilityProperties
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315138;
    v7 = "[ADiOSAssistantProperties _getODDiOSAccessibilityProperties]";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s ", &v6, 0xCu);
  }

  v4 = objc_alloc_init(ODDSiriSchemaODDiOSAccessibilityProperties);
  [v4 setIsShowAppsBehindSiriEnabled:{-[ADiOSAssistantProperties _getIsShowAppsBehindSiriEnabled](self, "_getIsShowAppsBehindSiriEnabled")}];
  [(ADiOSAssistantProperties *)self _getSiriSpeechRate];
  [v4 setSiriSpeechRate:?];
  [v4 setIsVoiceOverEnabled:{-[ADiOSAssistantProperties _getIsVoiceOverEnabled](self, "_getIsVoiceOverEnabled")}];
  [v4 setIsTypeToSiriEnabled:{-[ADiOSAssistantProperties _getIsTypeToSiriEnabled](self, "_getIsTypeToSiriEnabled")}];
  [v4 setVoiceFeedback:{-[ADiOSAssistantProperties _getVoiceFeedback](self, "_getVoiceFeedback")}];
  [v4 setIsAtypicalSpeechEnabled:{-[ADiOSAssistantProperties _getIsAtypicalSpeechEnabled](self, "_getIsAtypicalSpeechEnabled")}];
  [v4 setIsAlwaysListenForHeySiriEnabled:{-[ADiOSAssistantProperties _getIsAlwaysListenForHeySiriEnabled](self, "_getIsAlwaysListenForHeySiriEnabled")}];
  [v4 setSiriPauseTimeState:{-[ADiOSAssistantProperties _getSiriPauseTimeState](self, "_getSiriPauseTimeState")}];

  return v4;
}

- (id)_getODDiOSResponseProperties
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315138;
    v7 = "[ADiOSAssistantProperties _getODDiOSResponseProperties]";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s ", &v6, 0xCu);
  }

  v4 = objc_alloc_init(ODDSiriSchemaODDiOSResponseProperties);
  [v4 setIsAlwaysShowSiriCaptionsEnabled:{-[ADiOSAssistantProperties _getIsAlwaysShowSiriCaptionsEnabled](self, "_getIsAlwaysShowSiriCaptionsEnabled")}];
  [v4 setIsAlwaysShowSpeechEnabled:{-[ADiOSAssistantProperties _getIsAlwaysShowSpeechEnabled](self, "_getIsAlwaysShowSpeechEnabled")}];

  return v4;
}

- (void)getODDiOSAssistantPropertiesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v32 = "[ADiOSAssistantProperties getODDiOSAssistantPropertiesWithCompletion:]";
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  v6 = dispatch_group_create();
  v7 = objc_alloc_init(ODDSiriSchemaODDiOSAssistantProperties);
  [v7 setIsPressSideButtonForSiriEnabled:{-[ADiOSAssistantProperties _getIsPressSideButtonForSiriEnabled](self, "_getIsPressSideButtonForSiriEnabled")}];
  [v7 setIsAllowSiriWhenLockedEnabled:{-[ADiOSAssistantProperties _getIsAllowSiriWhenLockedEnabled](self, "_getIsAllowSiriWhenLockedEnabled")}];
  _getODDiOSResponseProperties = [(ADiOSAssistantProperties *)self _getODDiOSResponseProperties];
  [v7 setResponse:_getODDiOSResponseProperties];

  _getODDiOSAccessibilityProperties = [(ADiOSAssistantProperties *)self _getODDiOSAccessibilityProperties];
  [v7 setAccessibility:_getODDiOSAccessibilityProperties];

  _getODDCarPlayProperties = [(ADiOSAssistantProperties *)self _getODDCarPlayProperties];
  [v7 setCarPlay:_getODDCarPlayProperties];

  _getODDSiriInCallProperties = [(ADiOSAssistantProperties *)self _getODDSiriInCallProperties];
  [v7 setSiriInCall:_getODDSiriInCallProperties];

  _getODDAutoSendMessageProperties = [(ADiOSAssistantProperties *)self _getODDAutoSendMessageProperties];
  [v7 setAutoSendMessage:_getODDAutoSendMessageProperties];

  _getODDHeadGestureProperties = [(ADiOSAssistantProperties *)self _getODDHeadGestureProperties];
  [v7 setHeadGestures:_getODDHeadGestureProperties];

  dispatch_group_enter(v6);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10013B750;
  v28[3] = &unk_100512AC8;
  v14 = v7;
  v29 = v14;
  v15 = v6;
  v30 = v15;
  [(ADiOSAssistantProperties *)self _getODDAnnouncePropertiesWithCompletion:v28];
  dispatch_group_enter(v15);
  queue = self->_queue;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10013B790;
  v25[3] = &unk_100516750;
  v17 = v14;
  v26 = v17;
  v27 = v15;
  v18 = v15;
  [ADDevicePropertiesUtils fetchActiveSubscriptionsWithQueue:queue completion:v25];
  v19 = self->_queue;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10013B7D0;
  v22[3] = &unk_10051E038;
  v23 = v17;
  v24 = completionCopy;
  v20 = v17;
  v21 = completionCopy;
  dispatch_group_notify(v18, v19, v22);
}

- (ADiOSAssistantProperties)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = ADiOSAssistantProperties;
  v6 = [(ADiOSAssistantProperties *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

@end