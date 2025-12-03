@interface ADArbitrationFeedbackManager
+ (id)sharedManager;
- (BOOL)_localDeviceIsSameAsLocationSharingDevice:(id)device;
- (id)_createDeviceContextUpdateOperationForParticipation:(id)participation;
- (id)_createDeviceInfoOperationForParticipation:(id)participation;
- (id)_createPeerInfoUpdateOperationForParticipation:(id)participation;
- (id)_createPublishOperationForParticipation:(id)participation;
- (id)_createRequestInfoUpdateOperationForParticipation:(id)participation forTurnId:(id)id withExecutionContxt:(id)contxt;
- (id)_findContextCollectorIn:(id)in withIDSIdentifier:(id)identifier;
- (id)_init;
- (id)_initForTesting;
- (id)_mediaStateFrom:(int64_t)from;
- (void)_findTargetDeviceInDeviceCircleLocalPeer:(id)peer remotePeers:(id)peers completion:(id)completion;
- (void)_forwardToContextCollectorMessage:(id)message From:(id)from completion:(id)completion;
- (void)_forwardToDevice:(id)device message:(id)message From:(id)from completion:(id)completion;
- (void)_handleArbitrationParticipationPush:(id)push from:(id)from completion:(id)completion;
- (void)_processAndSendUserFeedback;
- (void)assistantDismissed;
- (void)handle:(id)handle fromPeer:(id)peer completion:(id)completion;
- (void)handleUserFeedbackAction:(int64_t)action;
- (void)publishParticipation:(id)participation;
- (void)requestLifecycleObserver:(id)observer requestDidEndWithInfo:(id)info origin:(int64_t)origin client:(id)client;
- (void)requestLifecycleObserver:(id)observer requestWasCancelledWithInfo:(id)info forReason:(int64_t)reason origin:(int64_t)origin client:(id)client successorInfo:(id)successorInfo;
@end

@implementation ADArbitrationFeedbackManager

+ (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B204C;
  block[3] = &unk_10051E200;
  block[4] = self;
  if (qword_100590498 != -1)
  {
    dispatch_once(&qword_100590498, block);
  }

  v2 = qword_100590490;

  return v2;
}

- (void)_processAndSendUserFeedback
{
  completedTurnId = [(ADArbitrationFeedbackManager *)self completedTurnId];
  if (completedTurnId)
  {
    participation = self->_participation;

    if (participation)
    {
      v5 = [SCDAFParticipation alloc];
      dictionaryRepresentation = [(SCDAFParticipation *)self->_participation dictionaryRepresentation];
      v19 = [v5 initWithDictionaryRepresentation:dictionaryRepresentation];

      completedTurnId2 = [(ADArbitrationFeedbackManager *)self completedTurnId];
      v8 = [completedTurnId2 copy];

      executionContexts = [(ADArbitrationFeedbackManager *)self executionContexts];
      v10 = [executionContexts copy];

      v11 = self->_participation;
      self->_participation = 0;

      completedTurnId = self->_completedTurnId;
      self->_completedTurnId = 0;

      executionContexts = self->_executionContexts;
      self->_executionContexts = 0;

      v14 = [(ADArbitrationFeedbackManager *)self _createDeviceInfoOperationForParticipation:v19];
      v15 = [(ADArbitrationFeedbackManager *)self _createPeerInfoUpdateOperationForParticipation:v19];
      v16 = [(ADArbitrationFeedbackManager *)self _createRequestInfoUpdateOperationForParticipation:v19 forTurnId:v8 withExecutionContxt:v10];
      v17 = [(ADArbitrationFeedbackManager *)self _createDeviceContextUpdateOperationForParticipation:v19];
      [v15 addDependency:v14];
      [v16 addDependency:v15];
      [v17 addDependency:v16];
      [(NSOperationQueue *)self->_operationQueue addOperation:v14];
      [(NSOperationQueue *)self->_operationQueue addOperation:v15];
      [(NSOperationQueue *)self->_operationQueue addOperation:v16];
      [(NSOperationQueue *)self->_operationQueue addOperation:v17];
      v18 = [(ADArbitrationFeedbackManager *)self _createPublishOperationForParticipation:v19];
      [v18 addDependency:v14];
      [v18 addDependency:v15];
      [v18 addDependency:v16];
      [v18 addDependency:v17];
      [(NSOperationQueue *)self->_operationQueue addOperation:v18];
    }
  }
}

- (void)requestLifecycleObserver:(id)observer requestDidEndWithInfo:(id)info origin:(int64_t)origin client:(id)client
{
  turnIdentifier = [info turnIdentifier];
  [(ADArbitrationFeedbackManager *)self setCompletedTurnId:turnIdentifier];

  v8 = +[ADCommandCenter sharedCommandCenter];
  rootExecutionContexts = [v8 rootExecutionContexts];
  [(ADArbitrationFeedbackManager *)self setExecutionContexts:rootExecutionContexts];

  [(ADArbitrationFeedbackManager *)self _processAndSendUserFeedback];
}

- (void)requestLifecycleObserver:(id)observer requestWasCancelledWithInfo:(id)info forReason:(int64_t)reason origin:(int64_t)origin client:(id)client successorInfo:(id)successorInfo
{
  v10 = [ADCommandCenter sharedCommandCenter:observer];
  rootExecutionContexts = [v10 rootExecutionContexts];
  [(ADArbitrationFeedbackManager *)self setExecutionContexts:rootExecutionContexts];
}

- (void)_forwardToContextCollectorMessage:(id)message From:(id)from completion:(id)completion
{
  messageCopy = message;
  fromCopy = from;
  completionCopy = completion;
  deviceCircleManager = [(ADArbitrationFeedbackManager *)self deviceCircleManager];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001AE6C0;
  v15[3] = &unk_100514E08;
  v15[4] = self;
  v16 = messageCopy;
  v17 = fromCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = fromCopy;
  v14 = messageCopy;
  [deviceCircleManager getContextCollectorDeviceIdentifiersWithCompletion:v15];
}

- (void)_forwardToDevice:(id)device message:(id)message From:(id)from completion:(id)completion
{
  deviceCopy = device;
  messageCopy = message;
  completionCopy = completion;
  v12 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v21 = "[ADArbitrationFeedbackManager _forwardToDevice:message:From:completion:]";
    v22 = 2112;
    v23 = deviceCopy;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback Forward arbitration to device: %@", buf, 0x16u);
  }

  deviceCircleManager = [(ADArbitrationFeedbackManager *)self deviceCircleManager];
  queue = self->_queue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001AEA14;
  v17[3] = &unk_100514DE0;
  v18 = deviceCopy;
  v19 = completionCopy;
  v15 = completionCopy;
  v16 = deviceCopy;
  [deviceCircleManager sendRequestType:@"arbitration_info_push" data:messageCopy toDeviceWithAssistantIdentifier:v16 onQueue:queue completion:v17];
}

- (void)_handleArbitrationParticipationPush:(id)push from:(id)from completion:(id)completion
{
  pushCopy = push;
  fromCopy = from;
  completionCopy = completion;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v18 = 136315138;
    v19 = "[ADArbitrationFeedbackManager _handleArbitrationParticipationPush:from:completion:]";
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback Handle received arbitration request on this device.", &v18, 0xCu);
  }

  v12 = [pushCopy objectForKeyedSubscript:@"ADArbitrationParticipationMessage"];
  v13 = [[SCDAFParticipation alloc] initWithDictionaryRepresentation:v12];
  advertisement = [v13 advertisement];

  if (advertisement)
  {
    feedbackService = [(ADArbitrationFeedbackManager *)self feedbackService];
    [feedbackService handleReceivedArbitrationParticipation:v13];

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }

  else
  {
    v16 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v18 = 136315138;
      v19 = "[ADArbitrationFeedbackManager _handleArbitrationParticipationPush:from:completion:]";
      _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback Unable to parse SCDAFParticipation from request. Returning error.", &v18, 0xCu);
    }

    v17 = [AFError errorWithCode:30 description:@"Unable to parse SCDAFParticipation from request."];
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, v17);
    }
  }
}

- (id)_findContextCollectorIn:(id)in withIDSIdentifier:(id)identifier
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001AEDE0;
  v8[3] = &unk_100514DB8;
  identifierCopy = identifier;
  v5 = identifierCopy;
  v6 = [in af_firstObjectPassingTest:v8];

  return v6;
}

- (void)_findTargetDeviceInDeviceCircleLocalPeer:(id)peer remotePeers:(id)peers completion:(id)completion
{
  peerCopy = peer;
  peersCopy = peers;
  completionCopy = completion;
  if (completionCopy)
  {
    locationSharingDevice = [(ADDeviceCircleManager *)self->_deviceCircleManager locationSharingDevice];
    assistantIdentifier = [locationSharingDevice assistantIdentifier];

    if ([assistantIdentifier length])
    {
      v13 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v21 = "[ADArbitrationFeedbackManager _findTargetDeviceInDeviceCircleLocalPeer:remotePeers:completion:]";
        v22 = 2112;
        v23 = assistantIdentifier;
        _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback Target device is location sharing device: %@", buf, 0x16u);
      }

      assistantIdentifier2 = [peerCopy assistantIdentifier];
      completionCopy[2](completionCopy, assistantIdentifier, [assistantIdentifier2 isEqualToString:assistantIdentifier]);
    }

    else
    {
      deviceCircleManager = [(ADArbitrationFeedbackManager *)self deviceCircleManager];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1001AF0C0;
      v17[3] = &unk_100514EF8;
      v17[4] = self;
      v19 = completionCopy;
      v18 = peersCopy;
      [deviceCircleManager getContextCollectorDeviceIdentifiersWithCompletion:v17];
    }
  }

  else
  {
    v15 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v21 = "[ADArbitrationFeedbackManager _findTargetDeviceInDeviceCircleLocalPeer:remotePeers:completion:]";
      _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback completion is nil. Returning.", buf, 0xCu);
    }
  }
}

- (BOOL)_localDeviceIsSameAsLocationSharingDevice:(id)device
{
  deviceCopy = device;
  deviceCircleManager = [(ADArbitrationFeedbackManager *)self deviceCircleManager];
  localPeerInfo = [deviceCircleManager localPeerInfo];

  assistantIdentifier = [localPeerInfo assistantIdentifier];
  v8 = [deviceCopy isEqualToString:assistantIdentifier];

  return v8;
}

- (void)handle:(id)handle fromPeer:(id)peer completion:(id)completion
{
  handleCopy = handle;
  peerCopy = peer;
  completionCopy = completion;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v15 = 136315394;
    v16 = "[ADArbitrationFeedbackManager handle:fromPeer:completion:]";
    v17 = 2112;
    v18 = handleCopy;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback Received arbitration push message: %@", &v15, 0x16u);
  }

  deviceCircleManager = [(ADArbitrationFeedbackManager *)self deviceCircleManager];
  locationSharingDevice = [deviceCircleManager locationSharingDevice];
  assistantIdentifier = [locationSharingDevice assistantIdentifier];

  if (assistantIdentifier)
  {
    if ([(ADArbitrationFeedbackManager *)self _localDeviceIsSameAsLocationSharingDevice:assistantIdentifier])
    {
      [(ADArbitrationFeedbackManager *)self _handleArbitrationParticipationPush:handleCopy from:peerCopy completion:completionCopy];
    }

    else
    {
      [(ADArbitrationFeedbackManager *)self _forwardToDevice:assistantIdentifier message:handleCopy From:peerCopy completion:completionCopy];
    }
  }

  else
  {
    [(ADArbitrationFeedbackManager *)self _forwardToContextCollectorMessage:handleCopy From:peerCopy completion:completionCopy];
  }
}

- (id)_mediaStateFrom:(int64_t)from
{
  if ((from - 1) > 4)
  {
    return &off_100533A28;
  }

  else
  {
    return off_100514E28[from - 1];
  }
}

- (void)assistantDismissed
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[ADArbitrationFeedbackManager assistantDismissed]";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback assistantDismissed", &v5, 0xCu);
  }

  feedbackService = [(ADArbitrationFeedbackManager *)self feedbackService];
  [feedbackService handleAssistantDismissed];
}

- (id)_createDeviceInfoOperationForParticipation:(id)participation
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001AFB74;
  v7[3] = &unk_10051E010;
  participationCopy = participation;
  selfCopy = self;
  v4 = participationCopy;
  v5 = [NSBlockOperation blockOperationWithBlock:v7];

  return v5;
}

- (id)_createPublishOperationForParticipation:(id)participation
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001B01AC;
  v6[3] = &unk_10051E010;
  v6[4] = self;
  participationCopy = participation;
  v3 = participationCopy;
  v4 = [NSBlockOperation blockOperationWithBlock:v6];

  return v4;
}

- (id)_createPeerInfoUpdateOperationForParticipation:(id)participation
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001B095C;
  v6[3] = &unk_10051E010;
  v6[4] = self;
  participationCopy = participation;
  v3 = participationCopy;
  v4 = [NSBlockOperation blockOperationWithBlock:v6];

  return v4;
}

- (id)_createDeviceContextUpdateOperationForParticipation:(id)participation
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001B0E68;
  v6[3] = &unk_10051E010;
  v6[4] = self;
  participationCopy = participation;
  v3 = participationCopy;
  v4 = [NSBlockOperation blockOperationWithBlock:v6];

  return v4;
}

- (id)_createRequestInfoUpdateOperationForParticipation:(id)participation forTurnId:(id)id withExecutionContxt:(id)contxt
{
  participationCopy = participation;
  idCopy = id;
  contxtCopy = contxt;
  objc_initWeak(&location, self);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001B1784;
  v16[3] = &unk_100519FE8;
  objc_copyWeak(&v20, &location);
  v11 = contxtCopy;
  v17 = v11;
  v12 = idCopy;
  v18 = v12;
  v13 = participationCopy;
  v19 = v13;
  v14 = [NSBlockOperation blockOperationWithBlock:v16];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v14;
}

- (void)publishParticipation:(id)participation
{
  participationCopy = participation;
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315138;
    v9 = "[ADArbitrationFeedbackManager publishParticipation:]";
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback", &v8, 0xCu);
  }

  if ((+[AFFeatureFlags isCrossDeviceArbitrationFeedbackEnabled]& 1) != 0)
  {
    objc_storeStrong(&self->_participation, participation);
    [(ADArbitrationFeedbackManager *)self _processAndSendUserFeedback];
  }

  else
  {
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315138;
      v9 = "[ADArbitrationFeedbackManager publishParticipation:]";
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback Feature Disabled. Returning.", &v8, 0xCu);
    }
  }
}

- (void)handleUserFeedbackAction:(int64_t)action
{
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v8 = v4;
    v9 = [NSNumber numberWithInteger:action];
    *buf = 136315394;
    v11 = "[ADArbitrationFeedbackManager handleUserFeedbackAction:]";
    v12 = 2112;
    v13 = v9;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback handleUserFeedbackAction: %@", buf, 0x16u);
  }

  if (action != 2)
  {
    v5 = [NSURL alloc];
    sCDAFFeedbackAppBundleId = [NSString stringWithFormat:@"%@://open", SCDAFFeedbackAppBundleId];
    v7 = [v5 initWithString:sCDAFFeedbackAppBundleId];
    sub_100215118(v7);
  }
}

- (id)_init
{
  v15.receiver = self;
  v15.super_class = ADArbitrationFeedbackManager;
  v2 = [(ADArbitrationFeedbackManager *)&v15 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);

    v5 = dispatch_queue_create("ArbitrationFeedbackQueue", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = +[ADDeviceCircleManager sharedInstance];
    deviceCircleManager = v2->_deviceCircleManager;
    v2->_deviceCircleManager = v7;

    v9 = +[SCDAFFeedbackService sharedService];
    feedbackService = v2->_feedbackService;
    v2->_feedbackService = v9;

    [(SCDAFFeedbackService *)v2->_feedbackService setDelegate:v2];
    [(ADArbitrationFeedbackManager *)v2 setCompletedTurnId:0];
    v11 = +[ADRequestLifecycleObserver sharedObserver];
    [v11 addListener:v2];

    v12 = objc_alloc_init(NSOperationQueue);
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v12;
  }

  return v2;
}

- (id)_initForTesting
{
  v11.receiver = self;
  v11.super_class = ADArbitrationFeedbackManager;
  v2 = [(ADArbitrationFeedbackManager *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);

    v5 = dispatch_queue_create("ArbitrationFeedbackQueue", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = objc_alloc_init(NSOperationQueue);
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v7;

    [(NSOperationQueue *)v2->_operationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v2->_operationQueue setUnderlyingQueue:v2->_queue];
  }

  v10.receiver = v2;
  v10.super_class = ADArbitrationFeedbackManager;
  return [(ADArbitrationFeedbackManager *)&v10 init];
}

@end