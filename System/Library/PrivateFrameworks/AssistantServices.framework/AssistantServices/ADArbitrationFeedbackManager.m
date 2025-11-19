@interface ADArbitrationFeedbackManager
+ (id)sharedManager;
- (BOOL)_localDeviceIsSameAsLocationSharingDevice:(id)a3;
- (id)_createDeviceContextUpdateOperationForParticipation:(id)a3;
- (id)_createDeviceInfoOperationForParticipation:(id)a3;
- (id)_createPeerInfoUpdateOperationForParticipation:(id)a3;
- (id)_createPublishOperationForParticipation:(id)a3;
- (id)_createRequestInfoUpdateOperationForParticipation:(id)a3 forTurnId:(id)a4 withExecutionContxt:(id)a5;
- (id)_findContextCollectorIn:(id)a3 withIDSIdentifier:(id)a4;
- (id)_init;
- (id)_initForTesting;
- (id)_mediaStateFrom:(int64_t)a3;
- (void)_findTargetDeviceInDeviceCircleLocalPeer:(id)a3 remotePeers:(id)a4 completion:(id)a5;
- (void)_forwardToContextCollectorMessage:(id)a3 From:(id)a4 completion:(id)a5;
- (void)_forwardToDevice:(id)a3 message:(id)a4 From:(id)a5 completion:(id)a6;
- (void)_handleArbitrationParticipationPush:(id)a3 from:(id)a4 completion:(id)a5;
- (void)_processAndSendUserFeedback;
- (void)assistantDismissed;
- (void)handle:(id)a3 fromPeer:(id)a4 completion:(id)a5;
- (void)handleUserFeedbackAction:(int64_t)a3;
- (void)publishParticipation:(id)a3;
- (void)requestLifecycleObserver:(id)a3 requestDidEndWithInfo:(id)a4 origin:(int64_t)a5 client:(id)a6;
- (void)requestLifecycleObserver:(id)a3 requestWasCancelledWithInfo:(id)a4 forReason:(int64_t)a5 origin:(int64_t)a6 client:(id)a7 successorInfo:(id)a8;
@end

@implementation ADArbitrationFeedbackManager

+ (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B204C;
  block[3] = &unk_10051E200;
  block[4] = a1;
  if (qword_100590498 != -1)
  {
    dispatch_once(&qword_100590498, block);
  }

  v2 = qword_100590490;

  return v2;
}

- (void)_processAndSendUserFeedback
{
  v3 = [(ADArbitrationFeedbackManager *)self completedTurnId];
  if (v3)
  {
    participation = self->_participation;

    if (participation)
    {
      v5 = [SCDAFParticipation alloc];
      v6 = [(SCDAFParticipation *)self->_participation dictionaryRepresentation];
      v19 = [v5 initWithDictionaryRepresentation:v6];

      v7 = [(ADArbitrationFeedbackManager *)self completedTurnId];
      v8 = [v7 copy];

      v9 = [(ADArbitrationFeedbackManager *)self executionContexts];
      v10 = [v9 copy];

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

- (void)requestLifecycleObserver:(id)a3 requestDidEndWithInfo:(id)a4 origin:(int64_t)a5 client:(id)a6
{
  v7 = [a4 turnIdentifier];
  [(ADArbitrationFeedbackManager *)self setCompletedTurnId:v7];

  v8 = +[ADCommandCenter sharedCommandCenter];
  v9 = [v8 rootExecutionContexts];
  [(ADArbitrationFeedbackManager *)self setExecutionContexts:v9];

  [(ADArbitrationFeedbackManager *)self _processAndSendUserFeedback];
}

- (void)requestLifecycleObserver:(id)a3 requestWasCancelledWithInfo:(id)a4 forReason:(int64_t)a5 origin:(int64_t)a6 client:(id)a7 successorInfo:(id)a8
{
  v10 = [ADCommandCenter sharedCommandCenter:a3];
  v9 = [v10 rootExecutionContexts];
  [(ADArbitrationFeedbackManager *)self setExecutionContexts:v9];
}

- (void)_forwardToContextCollectorMessage:(id)a3 From:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ADArbitrationFeedbackManager *)self deviceCircleManager];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001AE6C0;
  v15[3] = &unk_100514E08;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [v11 getContextCollectorDeviceIdentifiersWithCompletion:v15];
}

- (void)_forwardToDevice:(id)a3 message:(id)a4 From:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v21 = "[ADArbitrationFeedbackManager _forwardToDevice:message:From:completion:]";
    v22 = 2112;
    v23 = v9;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback Forward arbitration to device: %@", buf, 0x16u);
  }

  v13 = [(ADArbitrationFeedbackManager *)self deviceCircleManager];
  queue = self->_queue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001AEA14;
  v17[3] = &unk_100514DE0;
  v18 = v9;
  v19 = v11;
  v15 = v11;
  v16 = v9;
  [v13 sendRequestType:@"arbitration_info_push" data:v10 toDeviceWithAssistantIdentifier:v16 onQueue:queue completion:v17];
}

- (void)_handleArbitrationParticipationPush:(id)a3 from:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v18 = 136315138;
    v19 = "[ADArbitrationFeedbackManager _handleArbitrationParticipationPush:from:completion:]";
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback Handle received arbitration request on this device.", &v18, 0xCu);
  }

  v12 = [v8 objectForKeyedSubscript:@"ADArbitrationParticipationMessage"];
  v13 = [[SCDAFParticipation alloc] initWithDictionaryRepresentation:v12];
  v14 = [v13 advertisement];

  if (v14)
  {
    v15 = [(ADArbitrationFeedbackManager *)self feedbackService];
    [v15 handleReceivedArbitrationParticipation:v13];

    if (v10)
    {
      (*(v10 + 2))(v10, 0, 0);
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
    if (v10)
    {
      (*(v10 + 2))(v10, 0, v17);
    }
  }
}

- (id)_findContextCollectorIn:(id)a3 withIDSIdentifier:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001AEDE0;
  v8[3] = &unk_100514DB8;
  v9 = a4;
  v5 = v9;
  v6 = [a3 af_firstObjectPassingTest:v8];

  return v6;
}

- (void)_findTargetDeviceInDeviceCircleLocalPeer:(id)a3 remotePeers:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = [(ADDeviceCircleManager *)self->_deviceCircleManager locationSharingDevice];
    v12 = [v11 assistantIdentifier];

    if ([v12 length])
    {
      v13 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v21 = "[ADArbitrationFeedbackManager _findTargetDeviceInDeviceCircleLocalPeer:remotePeers:completion:]";
        v22 = 2112;
        v23 = v12;
        _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback Target device is location sharing device: %@", buf, 0x16u);
      }

      v14 = [v8 assistantIdentifier];
      v10[2](v10, v12, [v14 isEqualToString:v12]);
    }

    else
    {
      v16 = [(ADArbitrationFeedbackManager *)self deviceCircleManager];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1001AF0C0;
      v17[3] = &unk_100514EF8;
      v17[4] = self;
      v19 = v10;
      v18 = v9;
      [v16 getContextCollectorDeviceIdentifiersWithCompletion:v17];
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

- (BOOL)_localDeviceIsSameAsLocationSharingDevice:(id)a3
{
  v4 = a3;
  v5 = [(ADArbitrationFeedbackManager *)self deviceCircleManager];
  v6 = [v5 localPeerInfo];

  v7 = [v6 assistantIdentifier];
  v8 = [v4 isEqualToString:v7];

  return v8;
}

- (void)handle:(id)a3 fromPeer:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v15 = 136315394;
    v16 = "[ADArbitrationFeedbackManager handle:fromPeer:completion:]";
    v17 = 2112;
    v18 = v8;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback Received arbitration push message: %@", &v15, 0x16u);
  }

  v12 = [(ADArbitrationFeedbackManager *)self deviceCircleManager];
  v13 = [v12 locationSharingDevice];
  v14 = [v13 assistantIdentifier];

  if (v14)
  {
    if ([(ADArbitrationFeedbackManager *)self _localDeviceIsSameAsLocationSharingDevice:v14])
    {
      [(ADArbitrationFeedbackManager *)self _handleArbitrationParticipationPush:v8 from:v9 completion:v10];
    }

    else
    {
      [(ADArbitrationFeedbackManager *)self _forwardToDevice:v14 message:v8 From:v9 completion:v10];
    }
  }

  else
  {
    [(ADArbitrationFeedbackManager *)self _forwardToContextCollectorMessage:v8 From:v9 completion:v10];
  }
}

- (id)_mediaStateFrom:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    return &off_100533A28;
  }

  else
  {
    return off_100514E28[a3 - 1];
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

  v4 = [(ADArbitrationFeedbackManager *)self feedbackService];
  [v4 handleAssistantDismissed];
}

- (id)_createDeviceInfoOperationForParticipation:(id)a3
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001AFB74;
  v7[3] = &unk_10051E010;
  v8 = a3;
  v9 = self;
  v4 = v8;
  v5 = [NSBlockOperation blockOperationWithBlock:v7];

  return v5;
}

- (id)_createPublishOperationForParticipation:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001B01AC;
  v6[3] = &unk_10051E010;
  v6[4] = self;
  v7 = a3;
  v3 = v7;
  v4 = [NSBlockOperation blockOperationWithBlock:v6];

  return v4;
}

- (id)_createPeerInfoUpdateOperationForParticipation:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001B095C;
  v6[3] = &unk_10051E010;
  v6[4] = self;
  v7 = a3;
  v3 = v7;
  v4 = [NSBlockOperation blockOperationWithBlock:v6];

  return v4;
}

- (id)_createDeviceContextUpdateOperationForParticipation:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001B0E68;
  v6[3] = &unk_10051E010;
  v6[4] = self;
  v7 = a3;
  v3 = v7;
  v4 = [NSBlockOperation blockOperationWithBlock:v6];

  return v4;
}

- (id)_createRequestInfoUpdateOperationForParticipation:(id)a3 forTurnId:(id)a4 withExecutionContxt:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001B1784;
  v16[3] = &unk_100519FE8;
  objc_copyWeak(&v20, &location);
  v11 = v10;
  v17 = v11;
  v12 = v9;
  v18 = v12;
  v13 = v8;
  v19 = v13;
  v14 = [NSBlockOperation blockOperationWithBlock:v16];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v14;
}

- (void)publishParticipation:(id)a3
{
  v5 = a3;
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315138;
    v9 = "[ADArbitrationFeedbackManager publishParticipation:]";
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback", &v8, 0xCu);
  }

  if ((+[AFFeatureFlags isCrossDeviceArbitrationFeedbackEnabled]& 1) != 0)
  {
    objc_storeStrong(&self->_participation, a3);
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

- (void)handleUserFeedbackAction:(int64_t)a3
{
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v8 = v4;
    v9 = [NSNumber numberWithInteger:a3];
    *buf = 136315394;
    v11 = "[ADArbitrationFeedbackManager handleUserFeedbackAction:]";
    v12 = 2112;
    v13 = v9;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback handleUserFeedbackAction: %@", buf, 0x16u);
  }

  if (a3 != 2)
  {
    v5 = [NSURL alloc];
    v6 = [NSString stringWithFormat:@"%@://open", SCDAFFeedbackAppBundleId];
    v7 = [v5 initWithString:v6];
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