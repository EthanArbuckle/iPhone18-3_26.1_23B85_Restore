@interface SRModeProvider
- (BOOL)displayOnlyModeForInterstitialsAndErrors;
- (SRModeProvider)init;
- (unint64_t)_modeForSiriSettings;
- (unint64_t)currentMode;
- (unint64_t)internalModeOverride;
@end

@implementation SRModeProvider

- (SRModeProvider)init
{
  v6.receiver = self;
  v6.super_class = SRModeProvider;
  v2 = [(SRModeProvider *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SRModeSystemState);
    systemState = v2->_systemState;
    v2->_systemState = v3;
  }

  return v2;
}

- (unint64_t)currentMode
{
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    systemState = self->_systemState;
    v13 = 136315394;
    v14 = "[SRModeProvider currentMode]";
    v15 = 2112;
    v16 = systemState;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s #modes %@", &v13, 0x16u);
  }

  v5 = [(SRModeProvider *)self internalModeOverride];
  if (v5 == -1)
  {
    if ([(SRModeSystemState *)self->_systemState isVoiceTriggerRequest]|| ![(SRModeSystemState *)self->_systemState userTypedInSiri]&& ![(SRModeSystemState *)self->_systemState userTouchedSnippet]&& ([(SRModeSystemState *)self->_systemState isConnectedToCarPlay]|| [(SRModeSystemState *)self->_systemState isForCarDND]|| [(SRModeSystemState *)self->_systemState isEyesFree]|| [(SRModeSystemState *)self->_systemState isConnectedToAudioAccessory]|| [(SRModeSystemState *)self->_systemState isScreenOffBeforeRequest]))
    {
      return 0;
    }

    else
    {
      return [(SRModeProvider *)self _modeForSiriSettings];
    }
  }

  else
  {
    v6 = v5;
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"Voice";
      if (v6 == 1)
      {
        v8 = @"Mixed";
      }

      if (v6 == 2)
      {
        v9 = @"Silent";
      }

      else
      {
        v9 = v8;
      }

      v10 = v7;
      v11 = [@"SRMode" stringByAppendingString:v9];
      v13 = 136315394;
      v14 = "[SRModeProvider currentMode]";
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s #modes Override value being used: %@", &v13, 0x16u);
    }
  }

  return v6;
}

- (unint64_t)_modeForSiriSettings
{
  if ([(SRModeSystemState *)self->_systemState isRequestEmergencyCall])
  {
    return 0;
  }

  v4 = [(SRModeSystemState *)self->_systemState voiceFeedbackSetting];
  if (v4 != 1)
  {
    if (v4 || [(SRModeSystemState *)self->_systemState isScreenOffBeforeRequest]&& [(SRModeSystemState *)self->_systemState isConnectedToAudioAccessory])
    {
      return 1;
    }

    return 2;
  }

  if ([(SRModeSystemState *)self->_systemState isDeviceSilentMode])
  {
    return 2;
  }

  if ([(SRModeSystemState *)self->_systemState isRequestMadeWithPhysicalDeviceInteraction])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (BOOL)displayOnlyModeForInterstitialsAndErrors
{
  v3 = +[AFAccessibilityObserver sharedObserver];
  v4 = [v3 state];
  v5 = [v4 isVoiceOverTouchEnabled];

  if (v5 == 2)
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "[SRModeProvider displayOnlyModeForInterstitialsAndErrors]";
      v7 = "%s #errorHandling #modes Enabling interstitial and error TTS for voiceover";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, &v12, 0xCu);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if ([(SRModeSystemState *)self->_systemState isConnectedToCarPlay]|| [(SRModeSystemState *)self->_systemState isForCarDND]|| [(SRModeSystemState *)self->_systemState isEyesFree])
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "[SRModeProvider displayOnlyModeForInterstitialsAndErrors]";
      v7 = "%s #errorHandling #modes Enabling interstitial and error TTS for automotive config";
      goto LABEL_9;
    }

LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  if (![(SRModeSystemState *)self->_systemState isRequestMadeWithPhysicalDeviceInteraction])
  {
    v6 = AFSiriLogContextConnection;
    if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v12 = 136315138;
    v13 = "[SRModeProvider displayOnlyModeForInterstitialsAndErrors]";
    v7 = "%s #errorHandling #modes Enabling interstitial and error TTS for no screen engagement";
    goto LABEL_9;
  }

  if ([(SRModeSystemState *)self->_systemState voiceFeedbackSetting]== 2)
  {
    v6 = AFSiriLogContextConnection;
    if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v12 = 136315138;
    v13 = "[SRModeProvider displayOnlyModeForInterstitialsAndErrors]";
    v7 = "%s #errorHandling #modes Enabling interstitial and error TTS for PreferSpokenResponses";
    goto LABEL_9;
  }

  if ([(SRModeSystemState *)self->_systemState isConnectedToAudioAccessory])
  {
    v6 = AFSiriLogContextConnection;
    if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v12 = 136315138;
    v13 = "[SRModeProvider displayOnlyModeForInterstitialsAndErrors]";
    v7 = "%s #errorHandling #modes Enabling interstitial and error TTS for audio accessory connected";
    goto LABEL_9;
  }

  v10 = [(SRModeSystemState *)self->_systemState isDeviceSilentMode];
  v6 = AFSiriLogContextConnection;
  v11 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT);
  if ((v10 & 1) == 0)
  {
    if (!v11)
    {
      goto LABEL_10;
    }

    v12 = 136315138;
    v13 = "[SRModeProvider displayOnlyModeForInterstitialsAndErrors]";
    v7 = "%s #errorHandling #modes Enabling interstitial and error TTS for device not in silent mode";
    goto LABEL_9;
  }

  if (v11)
  {
    v12 = 136315138;
    v13 = "[SRModeProvider displayOnlyModeForInterstitialsAndErrors]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s #errorHandling #modes Suppressing interstitial and error TTS for DisplayOnly mode", &v12, 0xCu);
  }

  v8 = 1;
LABEL_11:

  return v8;
}

- (unint64_t)internalModeOverride
{
  if (!AFIsInternalInstall())
  {
    return -1;
  }

  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.siri.internal"];
  v3 = [v2 stringForKey:@"ModeOverride"];
  v4 = [v3 lowercaseString];

  if ([v4 isEqualToString:@"silent"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"displayonly"))
  {
    v5 = 2;
  }

  else if ([v4 isEqualToString:@"mixed"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"displayforward"))
  {
    v5 = 1;
  }

  else if ([v4 isEqualToString:@"voice"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"voiceonly") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"voiceforward"))
  {
    v5 = 0;
  }

  else
  {
    if (v4)
    {
      v7 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        sub_1000CC200(v4, v7);
      }
    }

    v5 = -1;
  }

  return v5;
}

@end