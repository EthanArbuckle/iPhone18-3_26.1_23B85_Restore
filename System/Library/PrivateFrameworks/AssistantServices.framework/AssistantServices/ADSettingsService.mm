@interface ADSettingsService
- (ADSettingsService)initWithRecordingInfoProvider:(id)provider instanceContext:(id)context;
- (id)_wrapBoolSettingValue:(BOOL)value;
- (void)_getNoiseManagement:(id)management completion:(id)completion;
- (void)_getPlaybackAudioRoute:(id)route completion:(id)completion;
- (void)_getVoiceOver:(id)over completion:(id)completion;
- (void)_getVoiceTriggerEnabled:(id)enabled completion:(id)completion;
- (void)_registerCommandHandlersWithRegistry:(id)registry;
- (void)_setBoolSetting:(id)setting currentValueBlock:(id)block setValueBlock:(id)valueBlock completion:(id)completion;
- (void)_setNoiseManagement:(id)management completion:(id)completion;
- (void)_setVoiceOver:(id)over completion:(id)completion;
- (void)_setVoiceTriggerEnabled:(id)enabled completion:(id)completion;
@end

@implementation ADSettingsService

- (void)_setBoolSetting:(id)setting currentValueBlock:(id)block setValueBlock:(id)valueBlock completion:(id)completion
{
  settingCopy = setting;
  valueBlockCopy = valueBlock;
  completionCopy = completion;
  v12 = (*(block + 2))(block);
  if ([settingCopy toggle])
  {
    value = (v12 ^ 1);
  }

  else
  {
    value = [settingCopy value];
  }

  if (v12 == value)
  {
    v14 = [SACommandFailed alloc];
    v15 = &SASettingValueUnchangedErrorCode;
    goto LABEL_9;
  }

  if ((value & 1) == 0 && [settingCopy failOnSiriDisconnectWarnings])
  {
    v14 = [SACommandFailed alloc];
    v15 = &SASettingSiriDisconnectErrorCode;
LABEL_9:
    v16 = [v14 initWithErrorCode:*v15];
    goto LABEL_13;
  }

  if (([settingCopy dryRun] & 1) == 0)
  {
    valueBlockCopy[2](valueBlockCopy, value);
  }

  v16 = objc_alloc_init(SASettingSetBoolResponse);
  v17 = objc_alloc_init(SASettingBooleanEntity);
  v18 = [NSNumber numberWithBool:v12];
  [v17 setPreviousValue:v18];

  [v17 setValue:value];
  [v16 setSetting:v17];

LABEL_13:
  v19 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v20 = v19;
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    dryRun = [settingCopy dryRun];
    v24 = @"Set";
    v27 = 136316418;
    v28 = "[ADSettingsService _setBoolSetting:currentValueBlock:setValueBlock:completion:]";
    if (dryRun)
    {
      v24 = @"Dry Run";
    }

    v29 = 2112;
    v32 = v24;
    v25 = @"ON";
    v30 = v22;
    v31 = 2112;
    if (v12)
    {
      v26 = @"ON";
    }

    else
    {
      v26 = @"OFF";
    }

    v33 = 2112;
    v34 = v26;
    if (!value)
    {
      v25 = @"OFF";
    }

    v35 = 2112;
    v36 = v25;
    v37 = 2112;
    v38 = v16;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s %@ (%@ / prev: %@ / value: %@ / %@)", &v27, 0x3Eu);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v16, 0);
  }
}

- (id)_wrapBoolSettingValue:(BOOL)value
{
  valueCopy = value;
  v4 = objc_alloc_init(SASettingGetBoolResponse);
  v5 = objc_alloc_init(SASettingBooleanEntity);
  [v5 setValue:valueCopy];
  [v4 setSetting:v5];

  return v4;
}

- (void)_setNoiseManagement:(id)management completion:(id)completion
{
  managementCopy = management;
  completionCopy = completion;
  if (!completionCopy)
  {
    goto LABEL_40;
  }

  if (AFIsHorseman())
  {
    v7 = [SACommandFailed alloc];
    v8 = [v7 initWithErrorCode:SASettingConnectedHeadsetNoiseManagementSiriControlUnsupportedErrorCode];
    v9 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", kAFAssistantErrorDomain, [v8 errorCode], 0);
    completionCopy[2](completionCopy, v8, v9);

    goto LABEL_40;
  }

  v75 = 0;
  v76 = &v75;
  v77 = 0x3032000000;
  v78 = sub_100154A3C;
  v79 = sub_100154A4C;
  v80 = objc_alloc_init(AFQueue);
  v10 = dispatch_group_create();
  v71 = 0;
  v72 = &v71;
  v73 = 0x2020000000;
  v74 = 0;
  noiseManagementOption = [managementCopy noiseManagementOption];
  if ([noiseManagementOption isEqualToString:SASettingNoiseManagementOptionNOISE_CANCELLATIONValue])
  {
    v12 = 3;
LABEL_12:
    v72[3] = v12;
    goto LABEL_13;
  }

  if ([noiseManagementOption isEqualToString:SASettingNoiseManagementOptionAUDIO_TRANSPARENCYValue])
  {
    v12 = 4;
    goto LABEL_12;
  }

  if ([noiseManagementOption isEqualToString:SASettingNoiseManagementOptionAUTOMATICValue])
  {
    v12 = 5;
    goto LABEL_12;
  }

  if ([noiseManagementOption isEqualToString:SASettingNoiseManagementOptionOFFValue])
  {
    v12 = 2;
    goto LABEL_12;
  }

LABEL_13:
  dispatch_group_enter(v10);
  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3221225472;
  v67[2] = sub_100154A54;
  v67[3] = &unk_1005136C0;
  v69 = &v71;
  v70 = &v75;
  v13 = v10;
  v68 = v13;
  [ADCoreBluetoothManager retrieveConnectedDevicesInfoWithCompletion:v67];
  v14 = dispatch_time(0, 4000000000);
  dispatch_group_wait(v13, v14);
  if ([v76[5] count])
  {
    dequeueObject = [v76[5] dequeueObject];
    v63 = 0;
    v64 = &v63;
    v65 = 0x2020000000;
    v66 = 1;
    dispatch_group_enter(v13);
    v59 = 0;
    v60 = &v59;
    v61 = 0x2020000000;
    v62 = 0;
    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v55[2] = sub_1001551A8;
    v55[3] = &unk_100513698;
    v57 = &v59;
    v58 = &v63;
    v16 = v13;
    v56 = v16;
    [dequeueObject getHeadphoneListeningMode:v55];
    v17 = dispatch_time(0, 4000000000);
    dispatch_group_wait(v16, v17);
    if (*(v64 + 24) == 1)
    {
      v18 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v87) = 136315138;
        *(&v87 + 4) = "[ADSettingsService _setNoiseManagement:completion:]";
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s Bluetooth device time outed while checking current listening mode", &v87, 0xCu);
      }

      v19 = [NSError errorWithDomain:kAFAssistantErrorDomain code:SASettingNoHeadsetConnectedErrorCode userInfo:0];
      v20 = [[SACommandFailed alloc] initWithErrorCode:{objc_msgSend(v19, "code")}];
      completionCopy[2](completionCopy, v20, v19);
    }

    else
    {
      v21 = v60[3];
      if (v21 > 1)
      {
        v26 = SASettingNoiseManagementOptionOFFValue;
        v27 = v21 - 3;
        if (v21 - 3 > 2)
        {
          v44 = v26;
        }

        else
        {
          v28 = v26;
          v29 = **(&off_100513758 + v27);

          v44 = v29;
        }

        v51 = 0;
        v52 = &v51;
        v53 = 0x2020000000;
        v54 = 1;
        dispatch_group_enter(v16);
        *&v87 = 0;
        *(&v87 + 1) = &v87;
        v88 = 0x3032000000;
        v89 = sub_100154A3C;
        v90 = sub_100154A4C;
        v91 = 0;
        v30 = v72[3];
        v47[0] = _NSConcreteStackBlock;
        v47[1] = 3221225472;
        v47[2] = sub_1001551C8;
        v47[3] = &unk_1005136E8;
        v49 = &v87;
        v50 = &v51;
        v31 = v16;
        v48 = v31;
        [dequeueObject setHeadphoneListeningMode:v30 completion:v47];
        v32 = dispatch_time(0, 4000000000);
        dispatch_group_wait(v31, v32);
        v43 = [v76[5] count];
        while (!*(*(&v87 + 1) + 40))
        {
          if (![v76[5] count])
          {
            break;
          }

          dispatch_group_enter(v31);
          dequeueObject2 = [v76[5] dequeueObject];
          v34 = dequeueObject;
          v35 = noiseManagementOption;
          v36 = v72[3];
          v45[0] = _NSConcreteStackBlock;
          v45[1] = 3221225472;
          v45[2] = sub_1001552F0;
          v45[3] = &unk_10051C498;
          v46 = v31;
          v37 = v36;
          noiseManagementOption = v35;
          dequeueObject = v34;
          [dequeueObject2 setHeadphoneListeningMode:v37 completion:v45];
        }

        v38 = dispatch_time(0, 1000000000 * v43);
        dispatch_group_wait(v31, v38);
        if (*(v52 + 24) == 1)
        {
          v19 = [NSError errorWithDomain:kAFAssistantErrorDomain code:SASettingNoHeadsetConnectedErrorCode userInfo:0];
          v39 = [[SACommandFailed alloc] initWithErrorCode:{objc_msgSend(v19, "code")}];
          completionCopy[2](completionCopy, v39, v19);
        }

        else
        {
          if (*(*(&v87 + 1) + 40))
          {
            v40 = [SACommandFailed alloc];
            v39 = [v40 initWithErrorCode:{objc_msgSend(*(*(&v87 + 1) + 40), "code")}];
            completionCopy[2](completionCopy, v39, *(*(&v87 + 1) + 40));
          }

          else
          {
            v41 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
            {
              *buf = 136315650;
              v82 = "[ADSettingsService _setNoiseManagement:completion:]";
              v83 = 2112;
              v84 = v44;
              v85 = 2112;
              v86 = noiseManagementOption;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "%s Done setting bluetooth device noise management from %@ to %@", buf, 0x20u);
            }

            v39 = objc_alloc_init(SASettingNoiseManagementEntity);
            [v39 setPreviousValue:v44];
            [v39 setValue:noiseManagementOption];
            v42 = objc_alloc_init(SASettingSetValueResponse);
            [v42 setSetting:v39];
            completionCopy[2](completionCopy, v42, 0);
          }

          v19 = 0;
        }

        _Block_object_dispose(&v87, 8);
        _Block_object_dispose(&v51, 8);
        v20 = v44;
      }

      else
      {
        v22 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v87) = 136315138;
          *(&v87 + 4) = "[ADSettingsService _setNoiseManagement:completion:]";
          _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s Unable to determine bluetooth device's current listening mode", &v87, 0xCu);
        }

        v23 = [SACommandFailed alloc];
        v20 = [v23 initWithErrorCode:SASettingConnectedHeadsetNoiseManagementUnsupportedErrorCode];
        errorCode = [v20 errorCode];
        v25 = [NSError errorWithDomain:kAFAssistantErrorDomain code:errorCode userInfo:0];
        completionCopy[2](completionCopy, v20, v25);

        v19 = 0;
      }
    }

    _Block_object_dispose(&v59, 8);
    _Block_object_dispose(&v63, 8);
  }

  else
  {
    v19 = sub_100154C58(0, v72[3]);
    dequeueObject = [[SACommandFailed alloc] initWithErrorCode:{objc_msgSend(v19, "code")}];
    completionCopy[2](completionCopy, dequeueObject, v19);
  }

  _Block_object_dispose(&v71, 8);
  _Block_object_dispose(&v75, 8);

LABEL_40:
}

- (void)_getNoiseManagement:(id)management completion:(id)completion
{
  managementCopy = management;
  completionCopy = completion;
  if (completionCopy)
  {
    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = sub_100154A3C;
    v45 = sub_100154A4C;
    v46 = 0;
    if (AFIsHorseman())
    {
      v7 = [SACommandFailed alloc];
      v8 = [v7 initWithErrorCode:SASettingConnectedHeadsetNoiseManagementSiriControlUnsupportedErrorCode];
      errorCode = [v8 errorCode];
      v10 = [NSError errorWithDomain:kAFAssistantErrorDomain code:errorCode userInfo:0];
      completionCopy[2](completionCopy, v8, v10);
LABEL_29:

      _Block_object_dispose(&v41, 8);
      goto LABEL_30;
    }

    v11 = dispatch_group_create();
    dispatch_group_enter(v11);
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100155C4C;
    v38[3] = &unk_100513E68;
    v40 = &v41;
    v10 = v11;
    v39 = v10;
    [ADCoreBluetoothManager retrieveConnectedDevicesInfoWithCompletion:v38];
    v12 = dispatch_time(0, 4000000000);
    dispatch_group_wait(v10, v12);
    if (!v42[5])
    {
      v8 = sub_100154C58(0, 0);
      v18 = [[SACommandFailed alloc] initWithErrorCode:{-[NSObject code](v8, "code")}];
      completionCopy[2](completionCopy, v18, v8);

LABEL_28:
      goto LABEL_29;
    }

    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 1;
    dispatch_group_enter(v10);
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v13 = v42[5];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100155E48;
    v26[3] = &unk_100513698;
    v28 = &v30;
    v29 = &v34;
    v14 = v10;
    v27 = v14;
    [v13 getHeadphoneListeningMode:v26];
    v15 = dispatch_time(0, 4000000000);
    dispatch_group_wait(v14, v15);
    if (*(v35 + 24) == 1)
    {
      v16 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v48 = "[ADSettingsService _getNoiseManagement:completion:]";
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Bluetooth device time outed while checking current listening mode", buf, 0xCu);
      }

      v8 = [NSError errorWithDomain:kAFAssistantErrorDomain code:SASettingNoHeadsetConnectedErrorCode userInfo:0];
      v17 = [[SACommandFailed alloc] initWithErrorCode:{-[NSObject code](v8, "code")}];
      completionCopy[2](completionCopy, v17, v8);
      goto LABEL_27;
    }

    v17 = SASettingNoiseManagementOptionOFFValue;
    v19 = v31[3];
    if (v19 > 3)
    {
      if (v19 == 4)
      {
        v22 = &SASettingNoiseManagementOptionAUDIO_TRANSPARENCYValue;
      }

      else
      {
        if (v19 != 5)
        {
          goto LABEL_23;
        }

        v22 = &SASettingNoiseManagementOptionAUTOMATICValue;
      }
    }

    else
    {
      if (v19 < 2)
      {
        v20 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v48 = "[ADSettingsService _getNoiseManagement:completion:]";
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s Bluetooth device does not support Siri noise management", buf, 0xCu);
        }

        v8 = [NSError errorWithDomain:kAFAssistantErrorDomain code:SASettingConnectedHeadsetNoiseManagementSiriControlUnsupportedErrorCode userInfo:0];
        if (v8)
        {
          v21 = [[SACommandFailed alloc] initWithErrorCode:{-[NSObject code](v8, "code")}];
          completionCopy[2](completionCopy, v21, v8);
LABEL_26:

LABEL_27:
          _Block_object_dispose(&v30, 8);
          _Block_object_dispose(&v34, 8);
          goto LABEL_28;
        }

LABEL_23:
        v24 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v48 = "[ADSettingsService _getNoiseManagement:completion:]";
          v49 = 2112;
          v50 = v17;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s Done getting bluetooth device noise management: %@", buf, 0x16u);
        }

        v21 = objc_alloc_init(SASettingNoiseManagementEntity);
        [v21 setValue:v17];
        v25 = objc_alloc_init(SASettingGetNoiseManagementResponse);
        [v25 setSetting:v21];
        completionCopy[2](completionCopy, v25, 0);

        v8 = 0;
        goto LABEL_26;
      }

      if (v19 != 3)
      {
        goto LABEL_23;
      }

      v22 = &SASettingNoiseManagementOptionNOISE_CANCELLATIONValue;
    }

    v23 = *v22;

    v17 = v23;
    goto LABEL_23;
  }

LABEL_30:
}

- (void)_getPlaybackAudioRoute:(id)route completion:(id)completion
{
  completionCopy = completion;
  audioCategory = [route audioCategory];
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "[ADSettingsService _getPlaybackAudioRoute:completion:]";
    v14 = 2112;
    v15 = audioCategory;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s audioCategory = %@", buf, 0x16u);
  }

  if (completionCopy)
  {
    v8 = +[ADAVSystemControllerLifecycleManager sharedManager];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100155FD8;
    v9[3] = &unk_100513670;
    v10 = audioCategory;
    v11 = completionCopy;
    [v8 getAVSystemControllerWithTimeout:v9 completion:2.0];
  }
}

- (void)_setVoiceOver:(id)over completion:(id)completion
{
  overCopy = over;
  completionCopy = completion;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[ADSettingsService _setVoiceOver:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s ", &v9, 0xCu);
  }

  [(ADSettingsService *)self _setBoolSetting:overCopy currentValueBlock:&stru_100513628 setValueBlock:&stru_100513648 completion:completionCopy];
}

- (void)_getVoiceOver:(id)over completion:(id)completion
{
  overCopy = over;
  completionCopy = completion;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[ADSettingsService _getVoiceOver:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s ", &v10, 0xCu);
  }

  if (completionCopy)
  {
    v9 = [(ADSettingsService *)self _wrapBoolSettingValue:_AXSVoiceOverTouchEnabled() != 0];
    completionCopy[2](completionCopy, v9, 0);
  }
}

- (void)_getVoiceTriggerEnabled:(id)enabled completion:(id)completion
{
  enabledCopy = enabled;
  completionCopy = completion;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[ADSettingsService _getVoiceTriggerEnabled:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s ", &v10, 0xCu);
  }

  if (completionCopy)
  {
    v9 = [(ADSettingsService *)self _wrapBoolSettingValue:sub_10000F1C0()];
    completionCopy[2](completionCopy, v9, 0);
  }
}

- (void)_setVoiceTriggerEnabled:(id)enabled completion:(id)completion
{
  enabledCopy = enabled;
  completionCopy = completion;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v14 = "[ADSettingsService _setVoiceTriggerEnabled:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001567F0;
  v12[3] = &unk_1005135E8;
  v12[4] = self;
  v9 = objc_retainBlock(v12);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001567F4;
  v11[3] = &unk_10051B778;
  v11[4] = self;
  v10 = objc_retainBlock(v11);
  [(ADSettingsService *)self _setBoolSetting:enabledCopy currentValueBlock:v9 setValueBlock:v10 completion:completionCopy];
}

- (void)_registerCommandHandlersWithRegistry:(id)registry
{
  registryCopy = registry;
  v4 = AFIsHorseman();
  v5 = SASettingGroupIdentifier;
  if (v4)
  {
    [(ADBaseService *)self _registerCommandClass:SASettingSetVoiceTriggerEnabledStateClassIdentifier forDomain:SASettingGroupIdentifier withSelector:"_setVoiceTriggerEnabled:completion:" forRegistry:registryCopy];
    [(ADBaseService *)self _registerCommandClass:SASettingGetVoiceTriggerEnabledStateClassIdentifier forDomain:v5 withSelector:"_getVoiceTriggerEnabled:completion:" forRegistry:registryCopy];
    [(ADBaseService *)self _registerCommandClass:SASettingGetVoiceOverClassIdentifier forDomain:v5 withSelector:"_getVoiceOver:completion:" forRegistry:registryCopy];
    [(ADBaseService *)self _registerCommandClass:SASettingSetVoiceOverClassIdentifier forDomain:v5 withSelector:"_setVoiceOver:completion:" forRegistry:registryCopy];
  }

  [(ADBaseService *)self _registerCommandClass:SASettingGetPlaybackAudioRouteClassIdentifier forDomain:v5 withSelector:"_getPlaybackAudioRoute:completion:" forRegistry:registryCopy];
  [(ADBaseService *)self _registerCommandClass:SASettingGetNoiseManagementClassIdentifier forDomain:v5 withSelector:"_getNoiseManagement:completion:" forRegistry:registryCopy];
  [(ADBaseService *)self _registerCommandClass:SASettingSetNoiseManagementClassIdentifier forDomain:v5 withSelector:"_setNoiseManagement:completion:" forRegistry:registryCopy];
}

- (ADSettingsService)initWithRecordingInfoProvider:(id)provider instanceContext:(id)context
{
  providerCopy = provider;
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = ADSettingsService;
  v9 = [(ADBaseService *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_recordingInfoProvider, provider);
    v11 = contextCopy;
    if (!contextCopy)
    {
      v11 = +[AFInstanceContext defaultContext];
    }

    objc_storeStrong(&v10->_instanceContext, v11);
    if (!contextCopy)
    {
    }
  }

  return v10;
}

@end