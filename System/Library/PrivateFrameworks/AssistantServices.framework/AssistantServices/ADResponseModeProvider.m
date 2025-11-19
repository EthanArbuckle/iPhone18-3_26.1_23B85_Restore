@interface ADResponseModeProvider
- (ADResponseModeProvider)init;
- (BOOL)_deviceUnlockSignalEnabled;
- (BOOL)_isAudioAccessoryConnected;
- (BOOL)_isDeviceSilent;
- (BOOL)_isDeviceUnlocked;
- (BOOL)_isSteveNoteConnected;
- (BOOL)_overrideModeWhenInAmbient;
- (BOOL)_updateStickiness;
- (id)_computeModeForMacOS;
- (id)_computeModeForVisionOS;
- (id)_computeModeForWatchOS;
- (id)_computeModeForiOS;
- (id)_computeModeFortvOS;
- (id)fetchCurrentMode;
- (id)internalModeOverride:(id)a3;
- (int64_t)_isVoiceOverEnabled;
- (int64_t)_voiceFeedbackSetting;
- (void)_computeMode;
- (void)_connectedOutputDevicesDidChange:(id)a3;
- (void)_fetchConnectedAudioAccessoryState;
- (void)updateModesConfiguration:(id)a3;
@end

@implementation ADResponseModeProvider

- (BOOL)_updateStickiness
{
  if (([(AFModesConfiguration *)self->_currentModesConfiguration isSiriAutoPrompt]& 1) == 0 && ![(AFModesConfiguration *)self->_currentModesConfiguration isFlexibleFollowup])
  {
    return 0;
  }

  v3 = AFSiriLogContextConnection;
  v4 = 1;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    currentModesConfiguration = self->_currentModesConfiguration;
    v6 = v3;
    v7 = [(AFModesConfiguration *)currentModesConfiguration isSiriAutoPrompt];
    v8 = @"FlexibleFollowup";
    if (v7)
    {
      v8 = @"SiriAutoPrompt";
    }

    v10 = 136315394;
    v11 = "[ADResponseModeProvider _updateStickiness]";
    v12 = 2112;
    v13 = v8;
    v4 = 1;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s #modes Checking stickiness for %@", &v10, 0x16u);
  }

  return v4;
}

- (void)_computeMode
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C36C;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)_computeModeForiOS
{
  v3 = [(ADResponseModeProvider *)self _updateStickiness];
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = @"Not Sticky";
    if (v3)
    {
      v5 = @"Sticky";
    }

    v28 = 136315394;
    v29 = "[ADResponseModeProvider _computeModeForiOS]";
    v30 = 2112;
    v31 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s #modes Stickiness is %@", &v28, 0x16u);
  }

  v6 = [(AFModesConfiguration *)self->_currentModesConfiguration modeOverrideValue];
  v7 = [(ADResponseModeProvider *)self internalModeOverride:v6];

  if (v7 == @"None")
  {
    if ([(AFModesConfiguration *)self->_currentModesConfiguration userTypedInSiri])
    {
      v10 = AFSiriLogContextConnection;
      if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
LABEL_13:
        v14 = &SAUIResponseModeDisplayOnlyValue;
LABEL_23:
        v9 = *v14;
        goto LABEL_24;
      }

      v28 = 136315138;
      v29 = "[ADResponseModeProvider _computeModeForiOS]";
      v11 = "%s #modes User typed in Siri";
      goto LABEL_11;
    }

    if ([(ADResponseModeProvider *)self _isVoiceOverEnabled]== 2)
    {
      v15 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v28 = 136315138;
        v29 = "[ADResponseModeProvider _computeModeForiOS]";
        v16 = "%s #modes VoiceOver is Enabled";
LABEL_20:
        v17 = v15;
        v18 = OS_LOG_TYPE_INFO;
LABEL_21:
        _os_log_impl(&_mh_execute_header, v17, v18, v16, &v28, 0xCu);
        goto LABEL_22;
      }

      goto LABEL_22;
    }

    if ([(AFModesConfiguration *)self->_currentModesConfiguration isConnectedToCarPlay])
    {
      v15 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v28 = 136315138;
        v29 = "[ADResponseModeProvider _computeModeForiOS]";
        v16 = "%s #modes Connected to Carplay";
        goto LABEL_20;
      }

LABEL_22:
      v14 = &SAUIResponseModeVoiceForwardValue;
      goto LABEL_23;
    }

    if ([(AFModesConfiguration *)self->_currentModesConfiguration isUIFree])
    {
      v21 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v28 = 136315138;
        v29 = "[ADResponseModeProvider _computeModeForiOS]";
        v22 = "%s #modes UIFree session (likely Announce)";
LABEL_36:
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, v22, &v28, 0xCu);
        goto LABEL_37;
      }

      goto LABEL_37;
    }

    if ([(AFModesConfiguration *)self->_currentModesConfiguration isInAmbient]&& [(ADResponseModeProvider *)self _overrideModeWhenInAmbient])
    {
      v15 = AFSiriLogContextConnection;
      if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        goto LABEL_22;
      }

      v28 = 136315138;
      v29 = "[ADResponseModeProvider _computeModeForiOS]";
      v16 = "%s #modes Ambient session";
      goto LABEL_20;
    }

    if (([(AFModesConfiguration *)self->_currentModesConfiguration isForCarDND]& 1) != 0 || [(AFModesConfiguration *)self->_currentModesConfiguration isEyesFree])
    {
      v21 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v28 = 136315138;
        v29 = "[ADResponseModeProvider _computeModeForiOS]";
        v22 = "%s #modes CarDND or Eyesfree mode active";
        goto LABEL_36;
      }

LABEL_37:
      v14 = &SAUIResponseModeVoiceOnlyValue;
      goto LABEL_23;
    }

    if ([(ADResponseModeProvider *)self _isThirdPartyBTConnected])
    {
      v15 = AFSiriLogContextConnection;
      if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        goto LABEL_22;
      }

      v28 = 136315138;
      v29 = "[ADResponseModeProvider _computeModeForiOS]";
      v16 = "%s #modes ThirdPartyBTConnected";
      goto LABEL_20;
    }

    if ([(ADResponseModeProvider *)self _isNavigationActive])
    {
      v15 = AFSiriLogContextConnection;
      if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        goto LABEL_22;
      }

      v28 = 136315138;
      v29 = "[ADResponseModeProvider _computeModeForiOS]";
      v16 = "%s #modes Navigation is active";
      goto LABEL_20;
    }

    if ([(ADResponseModeProvider *)self _voiceFeedbackSetting]== 1)
    {
      v23 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v28 = 136315138;
        v29 = "[ADResponseModeProvider _computeModeForiOS]";
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s #modes PreferSilentResponses", &v28, 0xCu);
      }

      if (([(AFModesConfiguration *)self->_currentModesConfiguration isDeviceScreenON]& 1) != 0 || ![(ADResponseModeProvider *)self _isAudioAccessoryConnected])
      {
        goto LABEL_13;
      }

      v15 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v28 = 136315138;
        v29 = "[ADResponseModeProvider _computeModeForiOS]";
        v16 = "%s #modes PreferSilentResponses with headphones and screen off";
        goto LABEL_20;
      }

      goto LABEL_22;
    }

    if (![(ADResponseModeProvider *)self _isDeviceUnlocked])
    {
      v26 = AFSiriLogContextConnection;
      if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      v28 = 136315138;
      v29 = "[ADResponseModeProvider _computeModeForiOS]";
      v16 = "%s #modes device is locked";
      v17 = v26;
      v18 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_21;
    }

    if ([(ADResponseModeProvider *)self _voiceFeedbackSetting]== 3)
    {
      v24 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v28 = 136315138;
        v29 = "[ADResponseModeProvider _computeModeForiOS]";
        v25 = "%s #modes PreferSpokenResponses";
LABEL_55:
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, v25, &v28, 0xCu);
      }
    }

    else
    {
      if ([(ADResponseModeProvider *)self _deviceUnlockSignalEnabled])
      {
        v27 = AFSiriLogContextConnection;
        if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_13;
        }

        v28 = 136315138;
        v29 = "[ADResponseModeProvider _computeModeForiOS]";
        v11 = "%s #modes Unlock signal enabled && device is unlocked";
        v12 = v27;
        v13 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_12;
      }

      if ([(ADResponseModeProvider *)self _isAudioAccessoryConnected])
      {
        v24 = AFSiriLogContextConnection;
        if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
        {
          goto LABEL_56;
        }

        v28 = 136315138;
        v29 = "[ADResponseModeProvider _computeModeForiOS]";
        v25 = "%s #modes AudioAccessoryConnected";
        goto LABEL_55;
      }

      if ([(ADResponseModeProvider *)self _isDeviceSilent])
      {
        v10 = AFSiriLogContextConnection;
        if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
        {
          goto LABEL_13;
        }

        v28 = 136315138;
        v29 = "[ADResponseModeProvider _computeModeForiOS]";
        v11 = "%s #modes Device is in silent mode";
LABEL_11:
        v12 = v10;
        v13 = OS_LOG_TYPE_INFO;
LABEL_12:
        _os_log_impl(&_mh_execute_header, v12, v13, v11, &v28, 0xCu);
        goto LABEL_13;
      }
    }

LABEL_56:
    v14 = &SAUIResponseModeDisplayForwardValue;
    goto LABEL_23;
  }

  v8 = AFSiriLogContextConnection;
  v9 = v7;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v28 = 136315394;
    v29 = "[ADResponseModeProvider _computeModeForiOS]";
    v30 = 2112;
    v31 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s #modes Override value being used: %@", &v28, 0x16u);
    v9 = v7;
  }

LABEL_24:
  v19 = v9;

  return v9;
}

- (int64_t)_isVoiceOverEnabled
{
  v2 = +[AFAccessibilityObserver sharedObserver];
  v3 = [v2 state];
  v4 = [v3 isVoiceOverTouchEnabled];

  return v4;
}

- (id)fetchCurrentMode
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10007AA1C;
  v11 = sub_10007AA2C;
  v12 = SAUIResponseModeDisplayForwardValue;
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000F0E0;
  v6[3] = &unk_10051D4A0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)_fetchConnectedAudioAccessoryState
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100012D84;
  v4[3] = &unk_10051B5F0;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_connectedOutputDevicesDidChange:(id)a3
{
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[ADResponseModeProvider _connectedOutputDevicesDidChange:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s #modes: output devices changed, re-fetching connected audio accessory state", &v5, 0xCu);
  }

  [(ADResponseModeProvider *)self _fetchConnectedAudioAccessoryState];
}

- (id)internalModeOverride:(id)a3
{
  v3 = [a3 lowercaseString];
  if (([v3 isEqualToString:@"silent"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"displayonly"))
  {
    v4 = &SAUIResponseModeDisplayOnlyValue;
LABEL_4:
    v5 = *v4;
    goto LABEL_5;
  }

  if (([v3 isEqualToString:@"mixed"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"displayforward"))
  {
    v4 = &SAUIResponseModeDisplayForwardValue;
    goto LABEL_4;
  }

  if (([v3 isEqualToString:@"voice"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"voiceonly"))
  {
    v4 = &SAUIResponseModeVoiceOnlyValue;
    goto LABEL_4;
  }

  if ([v3 isEqualToString:@"voiceforward"])
  {
    v4 = &SAUIResponseModeVoiceForwardValue;
    goto LABEL_4;
  }

  if (v3)
  {
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "[ADResponseModeProvider internalModeOverride:]";
      v10 = 2112;
      v11 = v3;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s #modes Invalid mode override value: %@", &v8, 0x16u);
    }
  }

  v5 = @"None";
LABEL_5:

  return v5;
}

- (id)_computeModeFortvOS
{
  v3 = [(AFModesConfiguration *)self->_currentModesConfiguration modeOverrideValue];
  v4 = [(ADResponseModeProvider *)self internalModeOverride:v3];

  if (v4 == @"None")
  {
    if (AFIsHorseman())
    {
      v7 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v13 = 136315138;
        v14 = "[ADResponseModeProvider _computeModeFortvOS]";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s #modes Computing mode for Homepod as VoiceOnly", &v13, 0xCu);
      }

      v8 = &SAUIResponseModeVoiceOnlyValue;
    }

    else if (AFIsATV() && self->_isConnectedToAppleBTHeadphones && +[AFFeatureFlags isStateFeedbackEnabled])
    {
      v9 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v13 = 136315138;
        v14 = "[ADResponseModeProvider _computeModeFortvOS]";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s #modes Apple TV + Headphones : DisplayForward", &v13, 0xCu);
      }

      v8 = &SAUIResponseModeDisplayForwardValue;
    }

    else
    {
      v10 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v13 = 136315138;
        v14 = "[ADResponseModeProvider _computeModeFortvOS]";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s #modes Computing mode for tvOS as DisplayOnly", &v13, 0xCu);
      }

      v8 = &SAUIResponseModeDisplayOnlyValue;
    }

    v6 = *v8;
  }

  else
  {
    v5 = AFSiriLogContextConnection;
    v6 = v4;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v13 = 136315394;
      v14 = "[ADResponseModeProvider _computeModeFortvOS]";
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s #modes Override value being used: %@", &v13, 0x16u);
      v6 = v4;
    }
  }

  v11 = v6;

  return v6;
}

- (id)_computeModeForMacOS
{
  v3 = [(ADResponseModeProvider *)self _updateStickiness];
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = @"Not Sticky";
    if (v3)
    {
      v5 = @"Sticky";
    }

    v21 = 136315394;
    v22 = "[ADResponseModeProvider _computeModeForMacOS]";
    v23 = 2112;
    v24 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s #modes Stickiness is %@", &v21, 0x16u);
  }

  previousIsVoiceTriggerRequest = [(AFModesConfiguration *)self->_currentModesConfiguration isVoiceTriggerRequest];
  v7 = v3 ^ 1;
  if ((previousIsVoiceTriggerRequest & 1) == 0 && (v7 & 1) == 0)
  {
    previousIsVoiceTriggerRequest = self->_previousIsVoiceTriggerRequest;
  }

  self->_previousIsVoiceTriggerRequest = previousIsVoiceTriggerRequest & 1;
  v8 = [(AFModesConfiguration *)self->_currentModesConfiguration isAudioAccessoryButtonActivation];
  if (((v8 | v7) & 1) == 0)
  {
    LOBYTE(v8) = self->_previousIsAudioAccessoryButtonActivation;
  }

  self->_previousIsAudioAccessoryButtonActivation = v8 & 1;
  v9 = [(AFModesConfiguration *)self->_currentModesConfiguration modeOverrideValue];
  v10 = [(ADResponseModeProvider *)self internalModeOverride:v9];

  if (v10 != @"None")
  {
    v11 = v10;
    v12 = AFSiriLogContextConnection;
    if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      goto LABEL_24;
    }

    v21 = 136315394;
    v22 = "[ADResponseModeProvider _computeModeForMacOS]";
    v23 = 2112;
    v24 = v11;
    v13 = "%s #modes ModeOverride is set? Yes. mode = %@";
    goto LABEL_23;
  }

  v14 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v21 = 136315138;
    v22 = "[ADResponseModeProvider _computeModeForMacOS]";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s #modes ModeOverride is set? No", &v21, 0xCu);
  }

  if ([(AFModesConfiguration *)self->_currentModesConfiguration userTypedInSiri])
  {
    v11 = SAUIResponseModeDisplayOnlyValue;
    v12 = AFSiriLogContextConnection;
    if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      goto LABEL_24;
    }

    v21 = 136315394;
    v22 = "[ADResponseModeProvider _computeModeForMacOS]";
    v23 = 2112;
    v24 = v11;
    v13 = "%s #modes User typed in Siri? Yes. mode = %@";
    goto LABEL_23;
  }

  v15 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v21 = 136315138;
    v22 = "[ADResponseModeProvider _computeModeForMacOS]";
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s #modes User typed in Siri? No", &v21, 0xCu);
  }

  if ([(ADResponseModeProvider *)self _isVoiceOverEnabled]== 2)
  {
    v11 = SAUIResponseModeVoiceForwardValue;
    v12 = AFSiriLogContextConnection;
    if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      goto LABEL_24;
    }

    v21 = 136315394;
    v22 = "[ADResponseModeProvider _computeModeForMacOS]";
    v23 = 2112;
    v24 = v11;
    v13 = "%s #modes VoiceOver is enabled? Yes. mode = %@";
    goto LABEL_23;
  }

  v17 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v21 = 136315138;
    v22 = "[ADResponseModeProvider _computeModeForMacOS]";
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s #modes VoiceOver is enabled? No", &v21, 0xCu);
  }

  v18 = [(ADResponseModeProvider *)self _isDeviceUnlocked];
  v19 = AFSiriLogContextConnection;
  v20 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO);
  if (v18)
  {
    if (v20)
    {
      v21 = 136315138;
      v22 = "[ADResponseModeProvider _computeModeForMacOS]";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s #modes Screen is locked? No", &v21, 0xCu);
    }

    if ([(ADResponseModeProvider *)self _voiceFeedbackSetting]== 3)
    {
      v11 = SAUIResponseModeDisplayForwardValue;
      v12 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v21 = 136315394;
        v22 = "[ADResponseModeProvider _computeModeForMacOS]";
        v23 = 2112;
        v24 = v11;
        v13 = "%s #modes voiceFeedback setting is PreferSpokenResponses? Yes. mode = %@";
LABEL_23:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, v13, &v21, 0x16u);
      }
    }

    else
    {
      v11 = SAUIResponseModeDisplayOnlyValue;
      v12 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v21 = 136315394;
        v22 = "[ADResponseModeProvider _computeModeForMacOS]";
        v23 = 2112;
        v24 = v11;
        v13 = "%s #modes voiceFeedback setting is PreferSpokenResponses? No. mode = %@";
        goto LABEL_23;
      }
    }
  }

  else
  {
    if (v20)
    {
      v21 = 136315138;
      v22 = "[ADResponseModeProvider _computeModeForMacOS]";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s #modes Screen is locked? Yes", &v21, 0xCu);
    }

    if ([(ADResponseModeProvider *)self _voiceFeedbackSetting]== 1)
    {
      v11 = SAUIResponseModeDisplayOnlyValue;
      v12 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v21 = 136315394;
        v22 = "[ADResponseModeProvider _computeModeForMacOS]";
        v23 = 2112;
        v24 = v11;
        v13 = "%s #modes voiceFeedback setting is PreferSilentResponses? Yes. mode = %@";
        goto LABEL_23;
      }
    }

    else
    {
      v11 = SAUIResponseModeVoiceForwardValue;
      v12 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v21 = 136315394;
        v22 = "[ADResponseModeProvider _computeModeForMacOS]";
        v23 = 2112;
        v24 = v11;
        v13 = "%s #modes voiceFeedback setting is PreferSilentResponses? No. mode = %@";
        goto LABEL_23;
      }
    }
  }

LABEL_24:

  return v11;
}

- (id)_computeModeForWatchOS
{
  v3 = [(AFModesConfiguration *)self->_currentModesConfiguration modeOverrideValue];
  v4 = [(ADResponseModeProvider *)self internalModeOverride:v3];

  if (v4 == @"None")
  {
    if ([(AFModesConfiguration *)self->_currentModesConfiguration isUIFree])
    {
      v7 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v21 = 136315138;
        v22 = "[ADResponseModeProvider _computeModeForWatchOS]";
        v8 = "%s #modes UIFree session (likely Announce)";
LABEL_10:
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, v8, &v21, 0xCu);
        goto LABEL_11;
      }

      goto LABEL_11;
    }

    if ([(ADResponseModeProvider *)self _isAudioAccessoryConnected])
    {
      v7 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v21 = 136315138;
        v22 = "[ADResponseModeProvider _computeModeForWatchOS]";
        v8 = "%s #modes Audio accessory connected";
        goto LABEL_10;
      }

LABEL_11:
      v9 = &SAUIResponseModeVoiceForwardValue;
LABEL_12:
      v6 = *v9;
      goto LABEL_13;
    }

    if ([(ADResponseModeProvider *)self _voiceFeedbackSetting]== 3)
    {
      v12 = AFSiriLogContextConnection;
      if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
LABEL_18:
        v9 = &SAUIResponseModeDisplayForwardValue;
        goto LABEL_12;
      }

      v21 = 136315138;
      v22 = "[ADResponseModeProvider _computeModeForWatchOS]";
      v13 = "%s #modes Always On";
    }

    else
    {
      if ([(ADResponseModeProvider *)self _voiceFeedbackSetting]== 2)
      {
        v14 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
        {
          v15 = v14;
          v16 = [(ADResponseModeProvider *)self _isDeviceSilent];
          v17 = @"OFF";
          if (v16)
          {
            v17 = @"ON";
          }

          v21 = 136315394;
          v22 = "[ADResponseModeProvider _computeModeForWatchOS]";
          v23 = 2112;
          v24 = v17;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s #modes Control with Ringer Switch - Device silent mode = %@", &v21, 0x16u);
        }

        v18 = [(ADResponseModeProvider *)self _isDeviceSilent];
        v9 = &SAUIResponseModeDisplayOnlyValue;
        if (!v18)
        {
          v9 = &SAUIResponseModeDisplayForwardValue;
        }

        goto LABEL_12;
      }

      v19 = [(ADResponseModeProvider *)self _voiceFeedbackSetting];
      v12 = AFSiriLogContextConnection;
      v20 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO);
      if (v19 == 1)
      {
        if (v20)
        {
          v21 = 136315138;
          v22 = "[ADResponseModeProvider _computeModeForWatchOS]";
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s #modes Headphones Only", &v21, 0xCu);
        }

        v9 = &SAUIResponseModeDisplayOnlyValue;
        goto LABEL_12;
      }

      if (!v20)
      {
        goto LABEL_18;
      }

      v21 = 136315138;
      v22 = "[ADResponseModeProvider _computeModeForWatchOS]";
      v13 = "%s #modes Defaulting to DisplayForward";
    }

    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, v13, &v21, 0xCu);
    goto LABEL_18;
  }

  v5 = AFSiriLogContextConnection;
  v6 = v4;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v21 = 136315394;
    v22 = "[ADResponseModeProvider _computeModeForWatchOS]";
    v23 = 2112;
    v24 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s #modes Override value being used: %@", &v21, 0x16u);
    v6 = v4;
  }

LABEL_13:
  v10 = v6;

  return v6;
}

- (id)_computeModeForVisionOS
{
  v3 = [(AFModesConfiguration *)self->_currentModesConfiguration modeOverrideValue];
  v4 = [(ADResponseModeProvider *)self internalModeOverride:v3];

  if (v4 == @"None")
  {
    if ([(ADResponseModeProvider *)self _isVoiceOverEnabled]== 2)
    {
      v7 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v14 = 136315138;
        v15 = "[ADResponseModeProvider _computeModeForVisionOS]";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s #modes VoiceOver is Enabled", &v14, 0xCu);
      }

      v8 = &SAUIResponseModeVoiceForwardValue;
    }

    else
    {
      v9 = [(ADResponseModeProvider *)self _voiceFeedbackSetting];
      v10 = AFSiriLogContextConnection;
      v11 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO);
      if (v9 == 3)
      {
        if (v11)
        {
          v14 = 136315138;
          v15 = "[ADResponseModeProvider _computeModeForVisionOS]";
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s #modes PreferSpokenResponses", &v14, 0xCu);
        }

        v8 = &SAUIResponseModeDisplayForwardValue;
      }

      else
      {
        if (v11)
        {
          v14 = 136315138;
          v15 = "[ADResponseModeProvider _computeModeForVisionOS]";
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s #modes Defaulting to DisplayOnly for Device", &v14, 0xCu);
        }

        v8 = &SAUIResponseModeDisplayOnlyValue;
      }
    }

    v6 = *v8;
  }

  else
  {
    v5 = AFSiriLogContextConnection;
    v6 = v4;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v14 = 136315394;
      v15 = "[ADResponseModeProvider _computeModeForVisionOS]";
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s #modes Override value being used: %@", &v14, 0x16u);
      v6 = v4;
    }
  }

  v12 = v6;

  return v6;
}

- (BOOL)_isDeviceUnlocked
{
  v2 = [(AFModesConfiguration *)self->_currentModesConfiguration isDeviceUnlocked];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v4 = @"LOCKED";
    if (v2)
    {
      v4 = @"UNLOCKED";
    }

    v6 = 136315394;
    v7 = "[ADResponseModeProvider _isDeviceUnlocked]";
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s #modes Unlocked/Lock State: %@", &v6, 0x16u);
  }

  return v2;
}

- (int64_t)_voiceFeedbackSetting
{
  v2 = +[AFPreferences sharedPreferences];
  v3 = [v2 useDeviceSpeakerForTTS];
  if (v3 > 3)
  {
    v4 = 2;
  }

  else
  {
    v4 = qword_1003F0360[v3];
  }

  return v4;
}

- (BOOL)_deviceUnlockSignalEnabled
{
  v2 = +[AFPreferences sharedPreferences];
  v3 = [v2 deviceUnlockSignalEnabled];

  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (v3)
    {
      v5 = @"YES";
    }

    v7 = 136315394;
    v8 = "[ADResponseModeProvider _deviceUnlockSignalEnabled]";
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s #modes Turn on Unlock Signal: %@", &v7, 0x16u);
  }

  return v3;
}

- (BOOL)_overrideModeWhenInAmbient
{
  v2 = +[AFPreferences sharedPreferences];
  v3 = [v2 overrideModeWhileInAmbient];

  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = @"NO";
    if (v3)
    {
      v5 = @"YES";
    }

    v7 = 136315394;
    v8 = "[ADResponseModeProvider _overrideModeWhenInAmbient]";
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s #modes Override Mode When In Ambient: %@", &v7, 0x16u);
  }

  return v3;
}

- (BOOL)_isAudioAccessoryConnected
{
  if ([(ADResponseModeProvider *)self _isSteveNoteConnected])
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[ADResponseModeProvider _isAudioAccessoryConnected]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s #modes Steve Note is connected, ignoring AudioAccessoryConnected detection for Steve Note", &v6, 0xCu);
    }

    return 0;
  }

  else
  {
    return self->_isConnectedToAudioAccessory;
  }
}

- (BOOL)_isSteveNoteConnected
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.airplay"];
  v3 = [v2 BOOLForKey:@"TetheredDemoMode"];
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = @"notConnected";
    if (v3)
    {
      v5 = @"Connected";
    }

    v7 = 136315394;
    v8 = "[ADResponseModeProvider _isSteveNoteConnected]";
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s #modes Steve Note is = %@", &v7, 0x16u);
  }

  return v3;
}

- (BOOL)_isDeviceSilent
{
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    ringerStateObserver = self->_ringerStateObserver;
    v5 = v3;
    v7 = 136315394;
    v8 = "[ADResponseModeProvider _isDeviceSilent]";
    v9 = 2048;
    v10 = [(AFNotifyObserver *)ringerStateObserver state];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s #modes Device RingerSwitchState : %ld", &v7, 0x16u);
  }

  return [(AFNotifyObserver *)self->_ringerStateObserver state]== 0;
}

- (void)updateModesConfiguration:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_10007AADC;
  v10 = &unk_10051E010;
  v11 = self;
  v12 = v4;
  v6 = v4;
  dispatch_async(queue, &v7);
  [(ADResponseModeProvider *)self _computeMode:v7];
}

- (ADResponseModeProvider)init
{
  v19.receiver = self;
  v19.super_class = ADResponseModeProvider;
  v2 = [(ADResponseModeProvider *)&v19 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_DEFAULT, 0);

    v5 = dispatch_queue_create("com.apple.siri.mode", v4);
    v6 = *(v2 + 4);
    *(v2 + 4) = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_DEFAULT, 0);

    v9 = dispatch_queue_create("com.apple.siri.systemstateaccess", v8);
    v10 = *(v2 + 5);
    *(v2 + 5) = v9;

    v11 = +[AVOutputContext sharedSystemAudioContext];
    v12 = *(v2 + 3);
    *(v2 + 3) = v11;

    *(v2 + 32) = 0;
    v2[66] = 0;
    [v2 _fetchConnectedAudioAccessoryState];
    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v2 selector:"_connectedOutputDevicesDidChange:" name:AVOutputContextOutputDeviceDidChangeNotification object:0];

    v14 = [[AFNotifyObserver alloc] initWithName:@"com.apple.springboard.ringerstate" options:1 queue:*(v2 + 5) delegate:0];
    v15 = *(v2 + 2);
    *(v2 + 2) = v14;

    *(v2 + 67) = 0;
    v16 = [[GEONavigationListener alloc] initWithQueue:*(v2 + 4)];
    v17 = *(v2 + 10);
    *(v2 + 10) = v16;
  }

  return v2;
}

@end