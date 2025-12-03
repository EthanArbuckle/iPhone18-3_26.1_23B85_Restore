@interface ADOpportuneSpeakingModule
+ (id)sharedModule;
- (id)_connectionToOSMService;
- (id)_init;
- (id)_remoteOSMService;
- (void)_cleanUpAllModels;
- (void)_finishRunningCurrentSpeakableWithResult:(int64_t)result error:(id)error;
- (void)_loadModelWithType:(int64_t)type completion:(id)completion;
- (void)_processEnqueuedSpeakables;
- (void)_recordImmediateNotificationInteractionAfterRecommendation:(int64_t)recommendation forSpeakable:(id)speakable;
- (void)_resetConnectionToOSMService;
- (void)_withAllModelsExecute:(id)execute;
- (void)modelWithIdentifier:(id)identifier didUpdateScore:(float)score forSpeakable:(id)speakable;
- (void)recordSpokenRequestCancelledForSpeakable:(id)speakable;
- (void)recordSpokenRequestCompletedForSpeakable:(id)speakable;
- (void)requestsToSpeak:(id)speak withHandler:(id)handler;
@end

@implementation ADOpportuneSpeakingModule

- (void)modelWithIdentifier:(id)identifier didUpdateScore:(float)score forSpeakable:(id)speakable
{
  identifierCopy = identifier;
  speakableCopy = speakable;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v14 = v10;
    speakableDescription = [speakableCopy speakableDescription];
    *buf = 136315906;
    v22 = "[ADOpportuneSpeakingModule modelWithIdentifier:didUpdateScore:forSpeakable:]";
    v23 = 2112;
    v24 = identifierCopy;
    v25 = 2048;
    scoreCopy = score;
    v27 = 2112;
    v28 = speakableDescription;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s model with identifier %@ returned score: %f speakable: %@", buf, 0x2Au);
  }

  queue = self->_queue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100296400;
  v16[3] = &unk_10051B508;
  v17 = speakableCopy;
  selfCopy = self;
  scoreCopy2 = score;
  v19 = identifierCopy;
  v12 = identifierCopy;
  v13 = speakableCopy;
  dispatch_async(queue, v16);
}

- (id)_remoteOSMService
{
  _connectionToOSMService = [(ADOpportuneSpeakingModule *)self _connectionToOSMService];
  v3 = [_connectionToOSMService remoteObjectProxyWithErrorHandler:&stru_100519528];

  return v3;
}

- (id)_connectionToOSMService
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [[NSXPCConnection alloc] initWithServiceName:@"com.apple.siri.OpportuneSpeakingModelService"];
    v5 = self->_connection;
    self->_connection = v4;

    v6 = self->_connection;
    v7 = AFOpportuneSpeakingModelServiceInterface();
    [(NSXPCConnection *)v6 setRemoteObjectInterface:v7];

    objc_initWeak(&location, self);
    v8 = self->_connection;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100296838;
    v13[3] = &unk_10051B5F0;
    objc_copyWeak(&v14, &location);
    [(NSXPCConnection *)v8 setInterruptionHandler:v13];
    v9 = self->_connection;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1002968FC;
    v11[3] = &unk_10051B5F0;
    objc_copyWeak(&v12, &location);
    [(NSXPCConnection *)v9 setInvalidationHandler:v11];
    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  return connection;
}

- (void)_cleanUpAllModels
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allValues = [(NSMutableDictionary *)self->_modelMap allValues];
  v4 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v14 + 1) + 8 * v7) stop];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v8 = [[NSMutableDictionary alloc] initWithCapacity:4];
  modelMap = self->_modelMap;
  self->_modelMap = v8;

  v10 = [[NSMutableDictionary alloc] initWithCapacity:4];
  typeMap = self->_typeMap;
  self->_typeMap = v10;

  self->_modelLoading = 0;
  executionModelIdentifier = self->_executionModelIdentifier;
  self->_executionModelIdentifier = 0;

  self->_executionModelType = 0;
  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;
}

- (void)_resetConnectionToOSMService
{
  v3 = [[NSMutableDictionary alloc] initWithCapacity:{-[NSMutableDictionary count](self->_typeMap, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  allKeys = [(NSMutableDictionary *)self->_typeMap allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_typeMap objectForKey:v9];
        v11 = [(NSMutableDictionary *)self->_modelMap objectForKey:v10];
        integerValue = [v9 integerValue];
        if ((integerValue - 2) >= 2)
        {
          if (integerValue == 1)
          {
            [(NSMutableDictionary *)v3 setObject:v10 forKey:v9];
          }
        }

        else
        {
          [v11 stop];
          [(NSMutableDictionary *)self->_modelMap removeObjectForKey:v10];
          executionModelIdentifier = self->_executionModelIdentifier;
          if (executionModelIdentifier == v10)
          {
            self->_executionModelIdentifier = 0;

            self->_executionModelType = 0;
          }
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  typeMap = self->_typeMap;
  self->_typeMap = v3;
  v15 = v3;

  self->_modelLoading = 0;
  connection = self->_connection;
  self->_connection = 0;
}

- (void)_loadModelWithType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  v7 = AFOpportuneSpeakingModelTypeGetDescription();
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v20 = "[ADOpportuneSpeakingModule _loadModelWithType:completion:]";
    v21 = 2112;
    v22 = v7;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s loading model with type: %@", buf, 0x16u);
  }

  if ((type - 2) >= 2)
  {
    if (type != 1)
    {
      v12 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v20 = "[ADOpportuneSpeakingModule _loadModelWithType:completion:]";
        v21 = 2112;
        v22 = v7;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Unsupported model type: %@", buf, 0x16u);
        if (!completionCopy)
        {
          goto LABEL_8;
        }
      }

      else if (!completionCopy)
      {
        goto LABEL_8;
      }

      completionCopy[2](completionCopy);
      goto LABEL_8;
    }

    queue = self->_queue;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100297044;
    v13[3] = &unk_10051BFA8;
    v13[4] = self;
    v15 = 1;
    v14 = completionCopy;
    dispatch_async(queue, v13);
    v10 = v14;
  }

  else
  {
    _remoteOSMService = [(ADOpportuneSpeakingModule *)self _remoteOSMService];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100296F60;
    v16[3] = &unk_100519508;
    v16[4] = self;
    typeCopy = type;
    v17 = completionCopy;
    [_remoteOSMService createModelWithType:type completion:v16];

    v10 = v17;
  }

LABEL_8:
}

- (void)_withAllModelsExecute:(id)execute
{
  executeCopy = execute;
  v5 = executeCopy;
  if (executeCopy)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100297628;
    v22[3] = &unk_10051E038;
    v22[4] = self;
    v23 = executeCopy;
    v6 = objc_retainBlock(v22);
    if (AFIsInternalInstall())
    {
      v7 = 4;
    }

    else
    {
      v7 = 1;
    }

    if ([(NSMutableDictionary *)self->_modelMap count]>= v7)
    {
      (v6[2])(v6);
    }

    else if (self->_modelLoading)
    {
      v8 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v25 = "[ADOpportuneSpeakingModule _withAllModelsExecute:]";
        _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s Already loading models", buf, 0xCu);
      }

      dispatch_group_notify(self->_modelLoadingGroup, self->_queue, v6);
    }

    else
    {
      self->_modelLoading = 1;
      if (AFIsInternalInstall())
      {
        for (i = 1; i != 4; ++i)
        {
          typeMap = self->_typeMap;
          v11 = [NSNumber numberWithInteger:i];
          v12 = [(NSMutableDictionary *)typeMap objectForKey:v11];

          if (!v12)
          {
            dispatch_group_enter(self->_modelLoadingGroup);
            v21[0] = _NSConcreteStackBlock;
            v21[1] = 3221225472;
            v21[2] = sub_100297784;
            v21[3] = &unk_10051DFE8;
            v21[4] = self;
            [(ADOpportuneSpeakingModule *)self _loadModelWithType:i completion:v21];
          }
        }
      }

      else
      {
        v13 = self->_typeMap;
        v14 = [NSNumber numberWithInteger:1];
        v15 = [(NSMutableDictionary *)v13 objectForKey:v14];

        if (!v15)
        {
          dispatch_group_enter(self->_modelLoadingGroup);
          v20[0] = _NSConcreteStackBlock;
          v20[1] = 3221225472;
          v20[2] = sub_100297790;
          v20[3] = &unk_10051DFE8;
          v20[4] = self;
          [(ADOpportuneSpeakingModule *)self _loadModelWithType:1 completion:v20];
        }
      }

      queue = self->_queue;
      modelLoadingGroup = self->_modelLoadingGroup;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10029779C;
      v18[3] = &unk_10051E038;
      v18[4] = self;
      v19 = v6;
      dispatch_group_notify(modelLoadingGroup, queue, v18);
    }
  }
}

- (void)recordSpokenRequestCompletedForSpeakable:(id)speakable
{
  speakableCopy = speakable;
  if (AFIsInternalInstall())
  {
    _remoteOSMService = [(ADOpportuneSpeakingModule *)self _remoteOSMService];
    speakableIdentifier = [speakableCopy speakableIdentifier];
    [_remoteOSMService recordFeedbackOfType:1 forSpeakableId:speakableIdentifier];
  }

  v6 = [(NSMutableDictionary *)self->_modelMap objectForKey:self->_executionModelIdentifier];
  [v6 recordFeedbackOfType:1 forSpeakable:speakableCopy];
}

- (void)recordSpokenRequestCancelledForSpeakable:(id)speakable
{
  speakableCopy = speakable;
  if (AFIsInternalInstall())
  {
    _remoteOSMService = [(ADOpportuneSpeakingModule *)self _remoteOSMService];
    speakableIdentifier = [speakableCopy speakableIdentifier];
    [_remoteOSMService recordFeedbackOfType:2 forSpeakableId:speakableIdentifier];
  }

  v6 = [(NSMutableDictionary *)self->_modelMap objectForKey:self->_executionModelIdentifier];
  [v6 recordFeedbackOfType:2 forSpeakable:speakableCopy];
}

- (void)requestsToSpeak:(id)speak withHandler:(id)handler
{
  speakCopy = speak;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v10 = v8;
      speakableDescription = [speakCopy speakableDescription];
      *buf = 136315394;
      v16 = "[ADOpportuneSpeakingModule requestsToSpeak:withHandler:]";
      v17 = 2112;
      v18 = speakableDescription;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s %@", buf, 0x16u);
    }

    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100297A98;
    block[3] = &unk_10051E088;
    block[4] = self;
    v14 = handlerCopy;
    v13 = speakCopy;
    dispatch_async(queue, block);
  }
}

- (void)_processEnqueuedSpeakables
{
  if (!self->_currentSpeakable && [(NSMutableArray *)self->_queuedSpeakables count])
  {
    firstObject = [(NSMutableArray *)self->_queuedSpeakables firstObject];
    currentSpeakable = self->_currentSpeakable;
    self->_currentSpeakable = firstObject;

    [(NSMutableArray *)self->_queuedSpeakables removeObjectAtIndex:0];
    if (AFIsInternalInstall() && _AFPreferencesSpokenNotificationIsAlwaysOpportune())
    {
      v5 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v15 = "[ADOpportuneSpeakingModule _processEnqueuedSpeakables]";
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s Always Opportune: Forcing all speakables to be spoken", buf, 0xCu);
      }

      [(ADOpportuneSpeakingModule *)self _finishRunningCurrentSpeakableWithResult:2 error:0];
    }

    else if (_AFPreferencesOpportuneSpeakingModuleEnabled())
    {
      _AFPreferencesOpportuneSpeakingTimeout();
      v7 = v6 + 1.0;
      v8 = [AFWatchdogTimer alloc];
      queue = self->_queue;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100297D5C;
      v13[3] = &unk_10051D770;
      *&v13[5] = v7;
      v13[4] = self;
      v10 = [v8 initWithTimeoutInterval:queue onQueue:v13 timeoutHandler:v7];
      timer = self->_timer;
      self->_timer = v10;

      [(AFWatchdogTimer *)self->_timer start];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100297E48;
      v12[3] = &unk_1005194B8;
      v12[4] = self;
      *&v12[5] = v7;
      [(ADOpportuneSpeakingModule *)self _withAllModelsExecute:v12];
    }

    else
    {

      [(ADOpportuneSpeakingModule *)self _finishRunningCurrentSpeakableWithResult:2 error:0];
    }
  }
}

- (void)_recordImmediateNotificationInteractionAfterRecommendation:(int64_t)recommendation forSpeakable:(id)speakable
{
  speakableCopy = speakable;
  speakableDate = [speakableCopy speakableDate];
  v8 = [speakableDate dateByAddingTimeInterval:60.0];
  if (AFIsInternalInstall())
  {
    _remoteOSMService = [(ADOpportuneSpeakingModule *)self _remoteOSMService];
    speakableIdentifier = [speakableCopy speakableIdentifier];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100298060;
    v11[3] = &unk_100519490;
    recommendationCopy = recommendation;
    v11[4] = self;
    v12 = speakableCopy;
    [_remoteOSMService recordNotificationUsageForSpeakableId:speakableIdentifier withStartDate:speakableDate withEndDate:v8 withCompletion:v11];
  }
}

- (void)_finishRunningCurrentSpeakableWithResult:(int64_t)result error:(id)error
{
  errorCopy = error;
  speakableIdentifier = [(AFOpportuneSpeakable *)self->_currentSpeakable speakableIdentifier];
  v8 = [(NSMutableDictionary *)self->_handlersBySpeakableID objectForKey:speakableIdentifier];
  v9 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8, result, errorCopy);
    [(ADOpportuneSpeakingModule *)self _recordImmediateNotificationInteractionAfterRecommendation:result forSpeakable:self->_currentSpeakable];
    [(NSMutableDictionary *)self->_handlersBySpeakableID removeObjectForKey:speakableIdentifier];
  }

  currentSpeakable = self->_currentSpeakable;
  self->_currentSpeakable = 0;

  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v12 = self->_currentSpeakable;
    v13 = 136315394;
    v14 = "[ADOpportuneSpeakingModule _finishRunningCurrentSpeakableWithResult:error:]";
    v15 = 2112;
    v16 = v12;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s _currentSpeakable: %@", &v13, 0x16u);
  }

  [(ADOpportuneSpeakingModule *)self _processEnqueuedSpeakables];
}

- (id)_init
{
  v19.receiver = self;
  v19.super_class = ADOpportuneSpeakingModule;
  v2 = [(ADOpportuneSpeakingModule *)&v19 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("ADOpportuneSpeakingModule", v3);

    queue = v2->_queue;
    v2->_queue = v4;

    v6 = dispatch_group_create();
    modelLoadingGroup = v2->_modelLoadingGroup;
    v2->_modelLoadingGroup = v6;

    v8 = objc_alloc_init(NSMutableArray);
    queuedSpeakables = v2->_queuedSpeakables;
    v2->_queuedSpeakables = v8;

    v10 = objc_alloc_init(NSMutableDictionary);
    handlersBySpeakableID = v2->_handlersBySpeakableID;
    v2->_handlersBySpeakableID = v10;

    v12 = [[NSMutableDictionary alloc] initWithCapacity:4];
    modelMap = v2->_modelMap;
    v2->_modelMap = v12;

    v14 = [[NSMutableDictionary alloc] initWithCapacity:4];
    typeMap = v2->_typeMap;
    v2->_typeMap = v14;

    v16 = [[ADOpportuneSpeakingStateManager alloc] initWithQueue:v2->_queue];
    stateManager = v2->_stateManager;
    v2->_stateManager = v16;
  }

  return v2;
}

+ (id)sharedModule
{
  if (qword_100590798 != -1)
  {
    dispatch_once(&qword_100590798, &stru_100519468);
  }

  v3 = qword_1005907A0;

  return v3;
}

@end