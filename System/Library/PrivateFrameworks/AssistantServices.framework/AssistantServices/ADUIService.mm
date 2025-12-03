@interface ADUIService
+ (id)serviceIdentifierForRequestDelegate:(id)delegate;
- (ADUIService)initWithRequestDelegate:(id)delegate;
- (BOOL)_shouldWakeSystemForHandlingCommand:(id)command executionContext:(id)context;
- (id)commandsForDomain:(id)domain;
- (id)domains;
- (void)cancelOperationsForRequestID:(id)d forAssistantID:(id)iD fromRemote:(BOOL)remote reason:(int64_t)reason;
- (void)handleCommand:(id)command forDomain:(id)domain executionContext:(id)context reply:(id)reply;
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

- (void)handleCommand:(id)command forDomain:(id)domain executionContext:(id)context reply:(id)reply
{
  commandCopy = command;
  domainCopy = domain;
  contextCopy = context;
  replyCopy = reply;
  v14 = commandCopy;
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
    v54 = replyCopy;
    v50[4] = self;
    v15 = v14;
    v51 = v15;
    v52 = contextCopy;
    v53 = domainCopy;
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
      views = +[ADCommandCenter sharedCommandCenter];
      _responseModeProvider = [views _responseModeProvider];
      fetchCurrentMode = [_responseModeProvider fetchCurrentMode];
      [v20 setResponseMode:fetchCurrentMode];

      v24 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v25 = v24;
        _responseModeProvider2 = [views _responseModeProvider];
        fetchCurrentMode2 = [_responseModeProvider2 fetchCurrentMode];
        *buf = 136315394;
        v57 = "[ADUIService handleCommand:forDomain:executionContext:reply:]";
        v58 = 2112;
        v59 = fetchCurrentMode2;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%s #modes Bridging addDialogs with Response Mode %@", buf, 0x16u);
      }

      goto LABEL_24;
    }

    v18 = v15;
    patternId = [v18 patternId];
    if (!patternId)
    {
      responseMode = [v18 responseMode];

      if (responseMode)
      {
        goto LABEL_14;
      }

      v45 = v16;
      patternId = +[ADCommandCenter sharedCommandCenter];
      _responseModeProvider3 = [patternId _responseModeProvider];
      fetchCurrentMode3 = [_responseModeProvider3 fetchCurrentMode];
      [v18 setResponseMode:fetchCurrentMode3];

      v38 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v39 = v38;
        _responseModeProvider4 = [patternId _responseModeProvider];
        fetchCurrentMode4 = [_responseModeProvider4 fetchCurrentMode];
        *buf = 136315394;
        v57 = "[ADUIService handleCommand:forDomain:executionContext:reply:]";
        v58 = 2112;
        v59 = fetchCurrentMode4;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "%s #modes Bridging addViews with Response Mode %@", buf, 0x16u);
      }

      v16 = v45;
    }

LABEL_14:
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    views = [v18 views];
    v29 = [views countByEnumeratingWithState:&v46 objects:v55 count:16];
    if (!v29)
    {
LABEL_25:

      goto LABEL_26;
    }

    v30 = v29;
    v42 = domainCopy;
    v44 = v16;
    v41 = v15;
    v31 = *v47;
    do
    {
      for (i = 0; i != v30; i = i + 1)
      {
        if (*v47 != v31)
        {
          objc_enumerationMutation(views);
        }

        v33 = *(*(&v46 + 1) + 8 * i);
        if ([ADUserNotificationAnnouncementSpeakingStatePublisher supportsPublishingArrivalForAceObject:v33])
        {
          v34 = +[ADUserNotificationAnnouncementSpeakingStatePublisher sharedPublisher];
          [v34 publishObjectHasArrived:v33];
        }
      }

      v30 = [views countByEnumeratingWithState:&v46 objects:v55 count:16];
    }

    while (v30);
    domainCopy = v42;
    v15 = v41;
LABEL_24:
    v16 = v44;
    goto LABEL_25;
  }

  [v14 _adui_handleWithCompletion:replyCopy];
LABEL_28:
}

- (BOOL)_shouldWakeSystemForHandlingCommand:(id)command executionContext:(id)context
{
  commandCopy = command;
  contextCopy = context;
  if (-[ADUIService _isWakeSystemSupportedOnPlatform](self, "_isWakeSystemSupportedOnPlatform") && [contextCopy isFromRemote])
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

- (void)cancelOperationsForRequestID:(id)d forAssistantID:(id)iD fromRemote:(BOOL)remote reason:(int64_t)reason
{
  dCopy = d;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100284A64;
  block[3] = &unk_10051C890;
  remoteCopy = remote;
  v12 = dCopy;
  selfCopy = self;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (id)commandsForDomain:(id)domain
{
  domainCopy = domain;
  if ([domainCopy isEqualToString:SAGroupIdentifier])
  {
    v22 = SAPreSynthesizeTTSClassIdentifier;
    v4 = &v22;
LABEL_3:
    v5 = 1;
LABEL_4:
    v6 = [NSArray arrayWithObjects:v4 count:v5];
    goto LABEL_5;
  }

  if ([domainCopy isEqualToString:SAPhoneGroupIdentifier])
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
  if ([domainCopy isEqualToString:SAGLGroupIdentifier])
  {
    v19 = v8;
    v4 = &v19;
    goto LABEL_3;
  }

  if ([domainCopy isEqualToString:SAGuidanceGroupIdentifier])
  {
    v18 = SAGuidanceGuideUpdateClassIdentifier;
    v4 = &v18;
    goto LABEL_3;
  }

  if ([domainCopy isEqualToString:SASettingGroupIdentifier])
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

  if ([domainCopy isEqualToString:SASmsGroupIdentifier])
  {
    v15 = SASmsPlayAudioClassIdentifier;
    v4 = &v15;
    goto LABEL_3;
  }

  if ([domainCopy isEqualToString:SAVCSGroupIdentifier])
  {
    v14 = SAVCSAddResultsToContentShelfClassIdentifier;
    v4 = &v14;
    goto LABEL_3;
  }

  v9 = SACardGroupIdentifier;
  if ([domainCopy isEqualToString:SACardGroupIdentifier])
  {
    v13 = v9;
    v4 = &v13;
    goto LABEL_3;
  }

  if ([domainCopy isEqualToString:SADeviceControlGroupIdentifier])
  {
    v12[0] = SADeviceControlStartScreenRecordingClassIdentifier;
    v12[1] = SADeviceControlStopScreenRecordingClassIdentifier;
    v4 = v12;
    goto LABEL_11;
  }

  v10 = SAUIGroupIdentifier;
  if ([domainCopy isEqualToString:SAUIGroupIdentifier])
  {
    v11 = v10;
    v4 = &v11;
    goto LABEL_3;
  }

  v6 = 0;
LABEL_5:

  return v6;
}

- (ADUIService)initWithRequestDelegate:(id)delegate
{
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = ADUIService;
  v6 = [(ADUIService *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_requestDelegate, delegate);
    v8 = [objc_opt_class() serviceIdentifierForRequestDelegate:delegateCopy];
    [(ADService *)v7 setIdentifier:v8];

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("ADUIServiceQueue", v9);

    queue = v7->_queue;
    v7->_queue = v10;
  }

  return v7;
}

+ (id)serviceIdentifierForRequestDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegateCopy = [[NSString alloc] initWithFormat:@"com.apple.siri.uiservice.%p", delegateCopy];

  return delegateCopy;
}

@end