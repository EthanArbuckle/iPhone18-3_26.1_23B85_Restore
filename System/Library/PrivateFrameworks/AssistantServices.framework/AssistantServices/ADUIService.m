@interface ADUIService
+ (id)serviceIdentifierForRequestDelegate:(id)a3;
- (ADUIService)initWithRequestDelegate:(id)a3;
- (BOOL)_shouldWakeSystemForHandlingCommand:(id)a3 executionContext:(id)a4;
- (id)commandsForDomain:(id)a3;
- (id)domains;
- (void)cancelOperationsForRequestID:(id)a3 forAssistantID:(id)a4 fromRemote:(BOOL)a5 reason:(int64_t)a6;
- (void)handleCommand:(id)a3 forDomain:(id)a4 executionContext:(id)a5 reply:(id)a6;
@end

@implementation ADUIService

- (id)domains
{
  v4[0] = SAUIGroupIdentifier;
  v4[1] = SAGLGroupIdentifier;
  v4[2] = SAPhoneGroupIdentifier;
  v4[3] = SASettingGroupIdentifier;
  v4[4] = SASmsGroupIdentifier;
  v4[5] = SAGuidanceGroupIdentifier;
  v4[6] = SAVCSGroupIdentifier;
  v4[7] = SACardGroupIdentifier;
  v4[8] = SAGroupIdentifier;
  v4[9] = SADeviceControlGroupIdentifier;
  v2 = [NSArray arrayWithObjects:v4 count:10];

  return v2;
}

- (void)handleCommand:(id)a3 forDomain:(id)a4 executionContext:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v10;
  if (![v14 _adui_shouldBeHandledByAssistantd])
  {
    [(ADCommandCenterRequestDelegate *)self->_requestDelegate adRequestWillReceiveCommand:v14];
    if ([v14 _adui_shouldNotifyOthersOfArrival])
    {
      [v14 _adui_notifyOthersOfArrival];
    }

    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100284490;
    v50[3] = &unk_10051D2A0;
    v54 = v13;
    v50[4] = self;
    v15 = v14;
    v51 = v15;
    v52 = v12;
    v53 = v11;
    v16 = objc_retainBlock(v50);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);

    if (!WeakRetained)
    {
      (v16[2])(v16);
LABEL_27:

      goto LABEL_28;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_26:
        v35 = objc_loadWeakRetained(&self->_delegate);
        [v35 UIService:self executeHandler:v16 forCommand:v15];

        goto LABEL_27;
      }

      v44 = v16;
      v20 = v15;
      v21 = +[ADCommandCenter sharedCommandCenter];
      v22 = [v21 _responseModeProvider];
      v23 = [v22 fetchCurrentMode];
      [v20 setResponseMode:v23];

      v24 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v25 = v24;
        v26 = [v21 _responseModeProvider];
        v27 = [v26 fetchCurrentMode];
        *buf = 136315394;
        v57 = "[ADUIService handleCommand:forDomain:executionContext:reply:]";
        v58 = 2112;
        v59 = v27;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%s #modes Bridging addDialogs with Response Mode %@", buf, 0x16u);
      }

      goto LABEL_24;
    }

    v18 = v15;
    v19 = [v18 patternId];
    if (!v19)
    {
      v28 = [v18 responseMode];

      if (v28)
      {
        goto LABEL_14;
      }

      v45 = v16;
      v19 = +[ADCommandCenter sharedCommandCenter];
      v36 = [v19 _responseModeProvider];
      v37 = [v36 fetchCurrentMode];
      [v18 setResponseMode:v37];

      v38 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v39 = v38;
        v43 = [v19 _responseModeProvider];
        v40 = [v43 fetchCurrentMode];
        *buf = 136315394;
        v57 = "[ADUIService handleCommand:forDomain:executionContext:reply:]";
        v58 = 2112;
        v59 = v40;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "%s #modes Bridging addViews with Response Mode %@", buf, 0x16u);
      }

      v16 = v45;
    }

LABEL_14:
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v21 = [v18 views];
    v29 = [v21 countByEnumeratingWithState:&v46 objects:v55 count:16];
    if (!v29)
    {
LABEL_25:

      goto LABEL_26;
    }

    v30 = v29;
    v42 = v11;
    v44 = v16;
    v41 = v15;
    v31 = *v47;
    do
    {
      for (i = 0; i != v30; i = i + 1)
      {
        if (*v47 != v31)
        {
          objc_enumerationMutation(v21);
        }

        v33 = *(*(&v46 + 1) + 8 * i);
        if ([ADUserNotificationAnnouncementSpeakingStatePublisher supportsPublishingArrivalForAceObject:v33])
        {
          v34 = +[ADUserNotificationAnnouncementSpeakingStatePublisher sharedPublisher];
          [v34 publishObjectHasArrived:v33];
        }
      }

      v30 = [v21 countByEnumeratingWithState:&v46 objects:v55 count:16];
    }

    while (v30);
    v11 = v42;
    v15 = v41;
LABEL_24:
    v16 = v44;
    goto LABEL_25;
  }

  [v14 _adui_handleWithCompletion:v13];
LABEL_28:
}

- (BOOL)_shouldWakeSystemForHandlingCommand:(id)a3 executionContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (-[ADUIService _isWakeSystemSupportedOnPlatform](self, "_isWakeSystemSupportedOnPlatform") && [v7 isFromRemote])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (void)cancelOperationsForRequestID:(id)a3 forAssistantID:(id)a4 fromRemote:(BOOL)a5 reason:(int64_t)a6
{
  v8 = a3;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100284A64;
  block[3] = &unk_10051C890;
  v14 = a5;
  v12 = v8;
  v13 = self;
  v10 = v8;
  dispatch_async(queue, block);
}

- (id)commandsForDomain:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:SAGroupIdentifier])
  {
    v22 = SAPreSynthesizeTTSClassIdentifier;
    v4 = &v22;
LABEL_3:
    v5 = 1;
LABEL_4:
    v6 = [NSArray arrayWithObjects:v4 count:v5];
    goto LABEL_5;
  }

  if ([v3 isEqualToString:SAPhoneGroupIdentifier])
  {
    if ((AFIsHorseman() & 1) == 0)
    {
      v21 = SAPhonePlayVoiceMailClassIdentifier;
      v4 = &v21;
      goto LABEL_3;
    }

    v20[0] = SAPhonePlayVoiceMailClassIdentifier;
    v20[1] = SAPhoneClientCoordinationPhoneCallClassIdentifier;
    v4 = v20;
LABEL_11:
    v5 = 2;
    goto LABEL_4;
  }

  v8 = SAGLGroupIdentifier;
  if ([v3 isEqualToString:SAGLGroupIdentifier])
  {
    v19 = v8;
    v4 = &v19;
    goto LABEL_3;
  }

  if ([v3 isEqualToString:SAGuidanceGroupIdentifier])
  {
    v18 = SAGuidanceGuideUpdateClassIdentifier;
    v4 = &v18;
    goto LABEL_3;
  }

  if ([v3 isEqualToString:SASettingGroupIdentifier])
  {
    if (AFIsNano())
    {
      v17[0] = SASettingSetUIGuidedAccessClassIdentifier;
      v17[1] = SASettingGetFlashlightClassIdentifier;
      v17[2] = SASettingSetFlashlightClassIdentifier;
      v4 = v17;
      v5 = 3;
      goto LABEL_4;
    }

    v16 = SASettingSetUIGuidedAccessClassIdentifier;
    v4 = &v16;
    goto LABEL_3;
  }

  if ([v3 isEqualToString:SASmsGroupIdentifier])
  {
    v15 = SASmsPlayAudioClassIdentifier;
    v4 = &v15;
    goto LABEL_3;
  }

  if ([v3 isEqualToString:SAVCSGroupIdentifier])
  {
    v14 = SAVCSAddResultsToContentShelfClassIdentifier;
    v4 = &v14;
    goto LABEL_3;
  }

  v9 = SACardGroupIdentifier;
  if ([v3 isEqualToString:SACardGroupIdentifier])
  {
    v13 = v9;
    v4 = &v13;
    goto LABEL_3;
  }

  if ([v3 isEqualToString:SADeviceControlGroupIdentifier])
  {
    v12[0] = SADeviceControlStartScreenRecordingClassIdentifier;
    v12[1] = SADeviceControlStopScreenRecordingClassIdentifier;
    v4 = v12;
    goto LABEL_11;
  }

  v10 = SAUIGroupIdentifier;
  if ([v3 isEqualToString:SAUIGroupIdentifier])
  {
    v11 = v10;
    v4 = &v11;
    goto LABEL_3;
  }

  v6 = 0;
LABEL_5:

  return v6;
}

- (ADUIService)initWithRequestDelegate:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = ADUIService;
  v6 = [(ADUIService *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_requestDelegate, a3);
    v8 = [objc_opt_class() serviceIdentifierForRequestDelegate:v5];
    [(ADService *)v7 setIdentifier:v8];

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("ADUIServiceQueue", v9);

    queue = v7->_queue;
    v7->_queue = v10;
  }

  return v7;
}

+ (id)serviceIdentifierForRequestDelegate:(id)a3
{
  v3 = a3;
  v4 = [[NSString alloc] initWithFormat:@"com.apple.siri.uiservice.%p", v3];

  return v4;
}

@end