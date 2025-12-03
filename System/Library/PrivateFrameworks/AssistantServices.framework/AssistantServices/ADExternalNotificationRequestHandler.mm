@interface ADExternalNotificationRequestHandler
+ (id)sharedNotificationRequestHandler;
- (BOOL)_accessibleAnnounceIsEnabled;
- (BOOL)_announceOnDeviceSpeakerAllowedForRequest:(id)request;
- (BOOL)_canAnnounceInCarPlay;
- (BOOL)_deactivateWorkoutAnnouncementWithIdentifier:(id)identifier;
- (BOOL)_isDeviceSilent;
- (BOOL)speechManager:(id)manager detectedSpeechForListeningType:(int64_t)type atHostTime:(float)time shouldHandleActivation:(BOOL)activation;
- (id)_init;
- (int64_t)_getAnnouncementRequestFailureReasonFromError:(id)error;
- (int64_t)announcePlatformForCurrentRequest;
- (void)_adCallStateChangedCallIncoming:(BOOL)incoming;
- (void)_changeCurrentStateToState:(int64_t)state;
- (void)_clearCurrentNotificationTimer;
- (void)_clearRequestState;
- (void)_clearTriggerlessUserReplyTimer;
- (void)_completeNotificationsWithSuccess:(BOOL)success forReason:(int64_t)reason shouldEmitInstrumentationEvent:(BOOL)event;
- (void)_deactivateCarPlayNotificationAnnouncementRequestForReason:(int64_t)reason notification:(id)notification sourceAppId:(id)id completion:(id)completion;
- (void)_deactivateCurrentAnnouncementRequestForReason:(int64_t)reason;
- (void)_deactivateForReason:(int64_t)reason source:(int64_t)source event:(int64_t)event completion:(id)completion;
- (void)_deactivateNotificationAnnouncementRequestForReason:(int64_t)reason notification:(id)notification sourceAppId:(id)id platform:(int64_t)platform completion:(id)completion;
- (void)_deliverSummary:(id)summary forNotification:(id)notification completion:(id)completion;
- (void)_emitInstrumentationEventsForRequest:(id)request currentlyPlayingMediaType:(id)type;
- (void)_handleAnnounceIncomingCallRequest:(id)request;
- (void)_handleAnnounceNotificationRequest:(id)request;
- (void)_handleAnnouncementRequest:(id)request;
- (void)_handleNotificationWithRequiresOpportuneTime:(BOOL)time completion:(id)completion;
- (void)_markThreadCancellationForCurrentRequest:(id)request;
- (void)_processAnyQueuedAnnouncementsAfterUserSpeech;
- (void)_shouldAnnounceGivenCurrentClientConditionsForRequest:(id)request completion:(id)completion;
- (void)_startAnnouncementRequest:(id)request;
- (void)_startAnnouncementRequestIfOpportune:(id)opportune;
- (void)_startAnnouncementRequestWithRequestInfo:(id)info;
- (void)_startAttendingForSpeechIfNeededForRequest:(id)request completion:(id)completion;
- (void)_startObservingRouteChanges;
- (void)_startTimerToResetStateFrom:(int64_t)from;
- (void)_startTriggerlessFollowupRequestForSpeechObservingType:(int64_t)type hostTime:(float)time;
- (void)_stopCurrentRequestWithReason:(int64_t)reason shouldCancelRequest:(BOOL)request;
- (void)_stopObservingRouteChanges;
- (void)_triggerlessListeningTimerEnded;
- (void)_voicePromptStyleDidChange:(id)change;
- (void)_withdrawalAnnouncementRequestForNotification:(id)notification completion:(id)completion;
- (void)adCallStateChangedCallIncoming:(BOOL)incoming;
- (void)announcementRequestReadyToBeAnnounced:(id)announced;
- (void)audioPlaybackService:(id)service didStartRequest:(id)request;
- (void)audioSessionDidEnd;
- (void)currentAudioRouteDidChange:(id)change;
- (void)deactivateCurrentAnnouncementRequestForReason:(int64_t)reason;
- (void)deactivateNotificationAnnouncementRequestForReason:(int64_t)reason notification:(id)notification sourceAppId:(id)id platform:(int64_t)platform completion:(id)completion;
- (void)deactivateWorkoutAnnouncementWithIdentifier:(id)identifier completion:(id)completion;
- (void)deferAudioSessionDeactivationForAnnouncementRequest;
- (void)deliverSummary:(id)summary forNotification:(id)notification completion:(id)completion;
- (void)emitInstrumentationEventsForRequest:(id)request;
- (void)fetchUnreadNotificationsFromThreadAfterNotificationWithID:(id)d completion:(id)completion;
- (void)handleAnnouncementRequest:(id)request;
- (void)inEarDetectionStateDidChangeForBTAddress:(id)address fromState:(id)state toState:(id)toState;
- (void)markNotificationAsReadWithIdentifer:(id)identifer;
- (void)notifyObserver:(id)observer didChangeStateFrom:(unint64_t)from to:(unint64_t)to;
- (void)notifySpeechDetectedIsUndirected;
- (void)requestLifecycleObserver:(id)observer requestDidEndWithInfo:(id)info origin:(int64_t)origin client:(id)client;
- (void)requestLifecycleObserver:(id)observer requestWasCancelledWithInfo:(id)info forReason:(int64_t)reason origin:(int64_t)origin client:(id)client successorInfo:(id)successorInfo;
- (void)requestLifecycleObserver:(id)observer requestWillBeginWithInfo:(id)info origin:(int64_t)origin client:(id)client;
- (void)speechManager:(id)manager didStopUnexpectlyWithError:(id)error;
- (void)voicePromptStyleDidChange:(id)change;
- (void)withdrawalAnnouncementRequestForNotification:(id)notification completion:(id)completion;
@end

@implementation ADExternalNotificationRequestHandler

+ (id)sharedNotificationRequestHandler
{
  if (qword_100590AC8 != -1)
  {
    dispatch_once(&qword_100590AC8, &stru_10051C820);
  }

  v3 = qword_100590AD0;

  return v3;
}

- (void)_voicePromptStyleDidChange:(id)change
{
  changeCopy = change;
  _currentRequest = [(ADExternalNotificationRequestHandler *)self _currentRequest];

  if (_currentRequest)
  {
    _currentRequest2 = [(ADExternalNotificationRequestHandler *)self _currentRequest];
    platform = [_currentRequest2 platform];

    if (platform == 2 && [(ADExternalNotificationRequestHandler *)self _currentState]== 2)
    {
      userInfo = [changeCopy userInfo];
      v9 = [userInfo objectForKey:AVSystemController_VoicePromptStyleDidChangeNotificationParameter];

      if (v9 && ([v9 isEqualToString:AVSystemController_VoicePromptStyle_Normal] & 1) == 0)
      {
        v10 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v12 = 136315394;
          v13 = "[ADExternalNotificationRequestHandler _voicePromptStyleDidChange:]";
          v14 = 2112;
          v15 = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s CarPlay request in processing state encountered a %@ voice prompt style, marking request as interrupted.", &v12, 0x16u);
        }

        _currentRequest3 = [(ADExternalNotificationRequestHandler *)self _currentRequest];
        [_currentRequest3 setRequestWasInterrupted:1];
      }
    }
  }
}

- (void)voicePromptStyleDidChange:(id)change
{
  changeCopy = change;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100342610;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  dispatch_async(queue, v7);
}

- (void)_adCallStateChangedCallIncoming:(BOOL)incoming
{
  if (!incoming)
  {
    _currentRequest = [(ADExternalNotificationRequestHandler *)self _currentRequest];
    requestType = [_currentRequest requestType];

    if (requestType == 2)
    {
      v6 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v18 = 136315394;
        v19 = "[ADExternalNotificationRequestHandler _adCallStateChangedCallIncoming:]";
        v20 = 1024;
        v21 = 0;
        _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s Call incoming: %d", &v18, 0x12u);
      }

      if (self->_currentState != 6)
      {
        v7 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          v18 = 136315394;
          v19 = "[ADExternalNotificationRequestHandler _adCallStateChangedCallIncoming:]";
          v20 = 1024;
          v21 = 0;
          _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s Incoming call ended without user responding to announcement: %d", &v18, 0x12u);
        }
      }

      _sharedCommandCenter = [(ADExternalNotificationRequestHandler *)self _sharedCommandCenter];
      currentState = self->_currentState;
      if (currentState > 4)
      {
        if (currentState == 5)
        {
          v17 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
          {
            v18 = 136315138;
            v19 = "[ADExternalNotificationRequestHandler _adCallStateChangedCallIncoming:]";
            _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s Call ended during triggerless listening, transition back to Idle state", &v18, 0xCu);
          }

          goto LABEL_23;
        }

        if (currentState != 6)
        {
LABEL_24:

          return;
        }
      }

      else if ((currentState - 3) >= 2)
      {
        if (currentState == 2)
        {
          v10 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
          {
            v18 = 136315138;
            v19 = "[ADExternalNotificationRequestHandler _adCallStateChangedCallIncoming:]";
            _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s Call ended while setting up announcement request", &v18, 0xCu);
          }

          _currentRequest2 = [(ADExternalNotificationRequestHandler *)self _currentRequest];
          [_currentRequest2 setRequestWasInterrupted:1];
        }

        goto LABEL_24;
      }

      v12 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v18 = 136315138;
        v19 = "[ADExternalNotificationRequestHandler _adCallStateChangedCallIncoming:]";
        _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s Announcement request or reply ongoing shutting down request", &v18, 0xCu);
        currentState = self->_currentState;
      }

      _currentClient = [_sharedCommandCenter _currentClient];
      if (_currentClient)
      {
        v14 = _currentClient;
        _currentRequest3 = [(ADExternalNotificationRequestHandler *)self _currentRequest];
        requestInfo = [_currentRequest3 requestInfo];

        if (requestInfo)
        {
          [(ADExternalNotificationRequestHandler *)self _stopCurrentRequestWithReason:13 shouldCancelRequest:currentState == 3];
        }
      }

LABEL_23:
      [(ADExternalNotificationRequestHandler *)self _changeCurrentStateToState:1];
      goto LABEL_24;
    }
  }
}

- (void)adCallStateChangedCallIncoming:(BOOL)incoming
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003429B8;
  v4[3] = &unk_10051CBD8;
  v4[4] = self;
  incomingCopy = incoming;
  dispatch_async(queue, v4);
}

- (void)notifyObserver:(id)observer didChangeStateFrom:(unint64_t)from to:(unint64_t)to
{
  toCopy = to;
  observerCopy = observer;
  if (self->_clientStateObserver == observerCopy && self->_currentState == 6)
  {
    if ((toCopy & 4) != 0)
    {
      self->_triggerlessRequestEnteredListeningState = 1;
    }

    else if (self->_triggerlessRequestEnteredListeningState)
    {
      self->_triggerlessRequestEnteredListeningState = 0;
      v8 = observerCopy;
      [(ADRequestDelayManager *)self->_currentRequestDelayManager stopDelayingAndSendCommands:0 completion:0];
      observerCopy = v8;
    }
  }
}

- (void)audioPlaybackService:(id)service didStartRequest:(id)request
{
  requestCopy = request;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100342AF8;
  v8[3] = &unk_10051E010;
  v8[4] = self;
  v9 = requestCopy;
  v7 = requestCopy;
  dispatch_async(queue, v8);
}

- (void)speechManager:(id)manager didStopUnexpectlyWithError:(id)error
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100342CEC;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)speechManager:(id)manager detectedSpeechForListeningType:(int64_t)type atHostTime:(float)time shouldHandleActivation:(BOOL)activation
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100342EC4;
  v9[3] = &unk_10051CBB0;
  v9[5] = &v12;
  v9[6] = type;
  activationCopy = activation;
  timeCopy = time;
  v9[4] = self;
  dispatch_sync(queue, v9);
  v7 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return v7;
}

- (void)requestLifecycleObserver:(id)observer requestDidEndWithInfo:(id)info origin:(int64_t)origin client:(id)client
{
  clientCopy = client;
  v9 = [info copy];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100343398;
  block[3] = &unk_10051DB68;
  v14 = v9;
  selfCopy = self;
  v16 = clientCopy;
  v11 = clientCopy;
  v12 = v9;
  dispatch_async(queue, block);
}

- (void)requestLifecycleObserver:(id)observer requestWasCancelledWithInfo:(id)info forReason:(int64_t)reason origin:(int64_t)origin client:(id)client successorInfo:(id)successorInfo
{
  observerCopy = observer;
  infoCopy = info;
  clientCopy = client;
  successorInfoCopy = successorInfo;
  v17 = successorInfoCopy;
  if (reason == 7 && successorInfoCopy && [successorInfoCopy activationEvent] == 10)
  {
    v18 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v23 = v18;
      uuid = [infoCopy uuid];
      *buf = 136315394;
      v31 = "[ADExternalNotificationRequestHandler requestLifecycleObserver:requestWasCancelledWithInfo:forReason:origin:client:successorInfo:]";
      v32 = 2112;
      v33 = uuid;
      _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "%s Request (UUID: %@) cancelled as a result of a gesture-based follow-up", buf, 0x16u);
    }

    uuid2 = [infoCopy uuid];
    gestureInterruptedRequestUUID = self->_gestureInterruptedRequestUUID;
    self->_gestureInterruptedRequestUUID = uuid2;
  }

  else
  {
    v21 = [infoCopy copy];
    queue = self->_queue;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100343CEC;
    v25[3] = &unk_10051DBB8;
    v26 = v21;
    selfCopy = self;
    v28 = clientCopy;
    reasonCopy = reason;
    gestureInterruptedRequestUUID = v21;
    dispatch_async(queue, v25);
  }
}

- (void)requestLifecycleObserver:(id)observer requestWillBeginWithInfo:(id)info origin:(int64_t)origin client:(id)client
{
  infoCopy = info;
  clientCopy = client;
  v10 = [infoCopy copy];
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1003440BC;
  v15[3] = &unk_10051DB18;
  v15[4] = self;
  v16 = v10;
  v17 = clientCopy;
  v18 = infoCopy;
  v12 = infoCopy;
  v13 = clientCopy;
  v14 = v10;
  dispatch_async(queue, v15);
}

- (void)_triggerlessListeningTimerEnded
{
  self->_triggerlessUserReplyTimerTimedOut = 1;
  _currentRequest = [(ADExternalNotificationRequestHandler *)self _currentRequest];
  [ADExternalNotificationInstrumentationEmitter emitUserResponseSilenceForAnnouncementRequest:_currentRequest];

  [(ADExternalNotificationRequestHandler *)self _changeCurrentStateToState:1];
}

- (void)inEarDetectionStateDidChangeForBTAddress:(id)address fromState:(id)state toState:(id)toState
{
  addressCopy = address;
  stateCopy = state;
  toStateCopy = toState;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v19 = "[ADExternalNotificationRequestHandler inEarDetectionStateDidChangeForBTAddress:fromState:toState:]";
    v20 = 2112;
    v21 = stateCopy;
    v22 = 2112;
    v23 = toStateCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s 🎧 headphoneInEarDetectionStateDidChangeFrom from: %@ to: %@", buf, 0x20u);
  }

  if ([stateCopy primaryInEarStatus] == 3 && objc_msgSend(toStateCopy, "primaryInEarStatus") != 3)
  {
    v13 = AFSiriLogContextDaemon;
    v12 = 1;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v19 = "[ADExternalNotificationRequestHandler inEarDetectionStateDidChangeForBTAddress:fromState:toState:]";
      v20 = 2112;
      v21 = addressCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s 🎧 [%@] primary bud went out of ear, shutting down the request", buf, 0x16u);
    }
  }

  else
  {
    v12 = 0;
  }

  if ([stateCopy secondaryInEarStatus] == 3 && objc_msgSend(toStateCopy, "secondaryInEarStatus") != 3)
  {
    v14 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v19 = "[ADExternalNotificationRequestHandler inEarDetectionStateDidChangeForBTAddress:fromState:toState:]";
      v20 = 2112;
      v21 = addressCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s 🎧 [%@] secondary bud went out of ear, shutting down the request", buf, 0x16u);
    }
  }

  else if (!v12)
  {
    goto LABEL_15;
  }

  queue = self->_queue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100344AF0;
  v16[3] = &unk_10051E010;
  v16[4] = self;
  v17 = addressCopy;
  dispatch_async(queue, v16);

LABEL_15:
}

- (void)currentAudioRouteDidChange:(id)change
{
  changeCopy = change;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100344C60;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  dispatch_async(queue, v7);
}

- (void)_stopObservingRouteChanges
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100344E44;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_startObservingRouteChanges
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100344F10;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)deactivateCurrentAnnouncementRequestForReason:(int64_t)reason
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100344FDC;
  v4[3] = &unk_10051D770;
  v4[4] = self;
  v4[5] = reason;
  dispatch_async(queue, v4);
}

- (void)_deactivateCurrentAnnouncementRequestForReason:(int64_t)reason
{
  dispatch_assert_queue_V2(self->_queue);
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = AFSiriDeactivationReasonGetName();
    v8 = 136315394;
    v9 = "[ADExternalNotificationRequestHandler _deactivateCurrentAnnouncementRequestForReason:]";
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Deactivating current announcement request for reason: %@", &v8, 0x16u);
  }

  [(ADExternalNotificationRequestHandler *)self _stopCurrentRequestWithReason:reason shouldCancelRequest:1];
  [(ADExternalNotificationRequestHandler *)self _changeCurrentStateToState:1];
}

- (void)markNotificationAsReadWithIdentifer:(id)identifer
{
  identiferCopy = identifer;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100345188;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = identiferCopy;
  v6 = identiferCopy;
  dispatch_async(queue, v7);
}

- (void)fetchUnreadNotificationsFromThreadAfterNotificationWithID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003452C8;
  block[3] = &unk_10051E088;
  v12 = dCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)_startTriggerlessFollowupRequestForSpeechObservingType:(int64_t)type hostTime:(float)time
{
  [(ADRequestDelayManager *)self->_currentRequestDelayManager stopDelayingAndSendCommands:1 completion:0];
  [(ADExternalNotificationRequestHandler *)self _changeCurrentStateToState:6];
  v7 = +[ADCommandCenter sharedCommandCenter];
  v8 = [AFSetAudioSessionActiveContext newWithBuilder:&stru_10051CAE8];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100345528;
  v9[3] = &unk_10051CB38;
  v9[4] = self;
  v9[5] = type;
  v9[6] = time;
  [v7 forceAudioSessionActiveWithContext:v8 completion:v9];
}

- (void)deferAudioSessionDeactivationForAnnouncementRequest
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v7 = "[ADExternalNotificationRequestHandler deferAudioSessionDeactivationForAnnouncementRequest]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100345B14;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)notifySpeechDetectedIsUndirected
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v7 = "[ADExternalNotificationRequestHandler notifySpeechDetectedIsUndirected]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100345C50;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (int64_t)announcePlatformForCurrentRequest
{
  _currentRequest = [(ADExternalNotificationRequestHandler *)self _currentRequest];

  if (_currentRequest)
  {
    _currentRequest = [(ADAnnouncementRequest *)self->_currentRequest platform];
  }

  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = AFSiriAnnouncementPlatformGetName();
    _currentRequest2 = [(ADExternalNotificationRequestHandler *)self _currentRequest];
    v9 = 136315650;
    v10 = "[ADExternalNotificationRequestHandler announcePlatformForCurrentRequest]";
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = _currentRequest2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Platform: %@ for current request: %@", &v9, 0x20u);
  }

  return _currentRequest;
}

- (void)_processAnyQueuedAnnouncementsAfterUserSpeech
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    v5 = AFExternalNotificationRequestHandlerStateGetName();
    waitForUserInputAfterReading = self->_waitForUserInputAfterReading;
    v13 = 136315650;
    v14 = "[ADExternalNotificationRequestHandler _processAnyQueuedAnnouncementsAfterUserSpeech]";
    v15 = 2112;
    v16 = v5;
    v17 = 1024;
    v18 = waitForUserInputAfterReading;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s current state: %@, waitingForUserInput: %d", &v13, 0x1Cu);
  }

  if (self->_currentState == 6 || self->_waitForUserInputAfterReading)
  {
    self->_waitForUserInputAfterReading = 0;
    _requestQueue = [(ADExternalNotificationRequestHandler *)self _requestQueue];
    currentRequest = [_requestQueue currentRequest];

    completion = [currentRequest completion];

    if (completion)
    {
      if (currentRequest)
      {
LABEL_7:
        v10 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v13 = 136315138;
          v14 = "[ADExternalNotificationRequestHandler _processAnyQueuedAnnouncementsAfterUserSpeech]";
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s New request in the queue after reply request, starting new request, and reset attending", &v13, 0xCu);
        }

        ++self->_synchronousBurstIndex;
        [(ADAnnounceSpeechManager *)self->_announceSpeechManager stopAttending];
        [(ADExternalNotificationRequestHandler *)self _changeCurrentStateToState:2];
        [(ADExternalNotificationRequestHandler *)self _startAnnouncementRequest:currentRequest];
        goto LABEL_12;
      }
    }

    else
    {
      _requestQueue2 = [(ADExternalNotificationRequestHandler *)self _requestQueue];
      nextAnnouncementRequest = [_requestQueue2 nextAnnouncementRequest];

      currentRequest = nextAnnouncementRequest;
      if (nextAnnouncementRequest)
      {
        goto LABEL_7;
      }
    }

    [(ADExternalNotificationRequestHandler *)self _changeCurrentStateToState:1];
LABEL_12:
  }
}

- (void)audioSessionDidEnd
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v7 = "[ADExternalNotificationRequestHandler audioSessionDidEnd]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100346200;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_withdrawalAnnouncementRequestForNotification:(id)notification completion:(id)completion
{
  completionCopy = completion;
  notificationCopy = notification;
  _requestQueue = [(ADExternalNotificationRequestHandler *)self _requestQueue];
  request = [notificationCopy request];

  identifier = [request identifier];
  v11 = [_requestQueue notificationRequestForNotificationIdentifierInAnnouncementQueue:identifier];

  if (!v11)
  {
    v16 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v21 = 136315138;
      v22 = "[ADExternalNotificationRequestHandler _withdrawalAnnouncementRequestForNotification:completion:]";
      v17 = "%s Attempt to withdrawal request which is not in queue. Ignoring withdrawal.";
      goto LABEL_7;
    }

LABEL_8:
    v18 = 0;
    goto LABEL_9;
  }

  announcementIdentifier = [v11 announcementIdentifier];
  _currentRequest = [(ADExternalNotificationRequestHandler *)self _currentRequest];
  announcementIdentifier2 = [_currentRequest announcementIdentifier];
  v15 = [announcementIdentifier isEqual:announcementIdentifier2];

  if (v15)
  {
    v16 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v21 = 136315138;
      v22 = "[ADExternalNotificationRequestHandler _withdrawalAnnouncementRequestForNotification:completion:]";
      v17 = "%s Attempt to withdrawal current request. Ignoring withdrawal.";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, v17, &v21, 0xCu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  _requestQueue2 = [(ADExternalNotificationRequestHandler *)self _requestQueue];
  v18 = [_requestQueue2 removeAnnouncementRequest:v11];

  v20 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v21 = 136315650;
    v22 = "[ADExternalNotificationRequestHandler _withdrawalAnnouncementRequestForNotification:completion:]";
    v23 = 2112;
    v24 = v11;
    v25 = 1024;
    v26 = v18;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s Withdrawal for request: %@ successful: %{BOOL}d", &v21, 0x1Cu);
  }

LABEL_9:
  completionCopy[2](completionCopy, v18);
}

- (void)withdrawalAnnouncementRequestForNotification:(id)notification completion:(id)completion
{
  notificationCopy = notification;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100346544;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = notificationCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = notificationCopy;
  dispatch_async(queue, block);
}

- (void)_deactivateForReason:(int64_t)reason source:(int64_t)source event:(int64_t)event completion:(id)completion
{
  completionCopy = completion;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100346630;
  v12[3] = &unk_10051CAA8;
  v12[4] = mach_absolute_time();
  v12[5] = source;
  v12[6] = event;
  v10 = [AFSiriActivationContext newWithBuilder:v12];
  v11 = +[AFSiriActivationConnection sharedConnection];
  [v11 deactivateForReason:reason options:0 context:v10 completion:completionCopy];
}

- (void)_deactivateCarPlayNotificationAnnouncementRequestForReason:(int64_t)reason notification:(id)notification sourceAppId:(id)id completion:(id)completion
{
  notificationCopy = notification;
  idCopy = id;
  completionCopy = completion;
  if (completionCopy)
  {
    _sharedCommandCenter = [(ADExternalNotificationRequestHandler *)self _sharedCommandCenter];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100346828;
    v15[3] = &unk_10051CA88;
    v16 = idCopy;
    v17 = notificationCopy;
    selfCopy = self;
    v19 = completionCopy;
    reasonCopy = reason;
    [_sharedCommandCenter areAnnouncementRequestsPermittedByPresentationWhileActiveWithCompletion:v15];
  }

  else
  {
    v14 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v22 = "[ADExternalNotificationRequestHandler _deactivateCarPlayNotificationAnnouncementRequestForReason:notification:sourceAppId:completion:]";
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Ignoring deactivation, nil completion", buf, 0xCu);
    }
  }
}

- (void)_deactivateNotificationAnnouncementRequestForReason:(int64_t)reason notification:(id)notification sourceAppId:(id)id platform:(int64_t)platform completion:(id)completion
{
  notificationCopy = notification;
  idCopy = id;
  completionCopy = completion;
  _currentRequest = 0;
  if (platform > 2)
  {
    if (platform != 3)
    {
      if (platform == 4)
      {
        _currentRequest = [(ADExternalNotificationRequestHandler *)self _currentRequest];
        _currentRequest2 = [(ADExternalNotificationRequestHandler *)self _currentRequest];
        requestType = [_currentRequest2 requestType];

        if (requestType == 1 && ([_currentRequest announcementType] == 9 || objc_msgSend(_currentRequest, "platform") == 4))
        {
          [(ADExternalNotificationRequestHandler *)self _stopCurrentRequestWithReason:reason shouldCancelRequest:1];
        }
      }

      goto LABEL_15;
    }

LABEL_11:
    v18 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315138;
      v20 = "[ADExternalNotificationRequestHandler _deactivateNotificationAnnouncementRequestForReason:notification:sourceAppId:platform:completion:]";
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s Can only deactivate notification announcements in CarPlay.", &v19, 0xCu);
    }

    completionCopy[2](completionCopy, 0);
    goto LABEL_14;
  }

  if (platform < 2)
  {
    goto LABEL_11;
  }

  if (platform == 2)
  {
    [(ADExternalNotificationRequestHandler *)self _deactivateCarPlayNotificationAnnouncementRequestForReason:reason notification:notificationCopy sourceAppId:idCopy completion:completionCopy];
LABEL_14:
    _currentRequest = 0;
  }

LABEL_15:
}

- (void)deactivateNotificationAnnouncementRequestForReason:(int64_t)reason notification:(id)notification sourceAppId:(id)id platform:(int64_t)platform completion:(id)completion
{
  notificationCopy = notification;
  idCopy = id;
  completionCopy = completion;
  queue = self->_queue;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100346DC4;
  v19[3] = &unk_10051CA38;
  v19[4] = self;
  v20 = notificationCopy;
  reasonCopy = reason;
  platformCopy = platform;
  v21 = idCopy;
  v22 = completionCopy;
  v16 = completionCopy;
  v17 = idCopy;
  v18 = notificationCopy;
  dispatch_async(queue, v19);
}

- (BOOL)_deactivateWorkoutAnnouncementWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _currentRequest = [(ADExternalNotificationRequestHandler *)self _currentRequest];
  if ([_currentRequest requestType] != 1)
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v17 = 136315138;
      v18 = "[ADExternalNotificationRequestHandler _deactivateWorkoutAnnouncementWithIdentifier:]";
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s Current announcement not a ADAnnouncementRequestTypeNotification - ignoring", &v17, 0xCu);
    }

    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315138;
      v18 = "[ADExternalNotificationRequestHandler _deactivateWorkoutAnnouncementWithIdentifier:]";
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s requestType is ADAnnouncementRequestTypeNotification, but request is not ADAnnounceNotificationRequest", &v17, 0xCu);
    }

LABEL_14:
    v8 = 0;
    goto LABEL_22;
  }

  v6 = _currentRequest;
  if ([v6 announcementType] == 8 || objc_msgSend(v6, "announcementType") == 9)
  {
    announcementIdentifier = [v6 announcementIdentifier];
    v8 = [announcementIdentifier isEqual:identifierCopy];
    if (v8)
    {
      [(ADExternalNotificationRequestHandler *)self _stopCurrentRequestWithReason:12 shouldCancelRequest:1];
      [(ADExternalNotificationRequestHandler *)self _completeNotificationsWithSuccess:1 forReason:6 shouldEmitInstrumentationEvent:1];
      if (self->_currentState >= 5)
      {
        v9 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          v15 = v9;
          v16 = AFExternalNotificationRequestHandlerStateGetName();
          v17 = 136315394;
          v18 = "[ADExternalNotificationRequestHandler _deactivateWorkoutAnnouncementWithIdentifier:]";
          v19 = 2112;
          v20 = v16;
          _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s Transitioning from state %@ to idle for deactivation request", &v17, 0x16u);
        }

        [(ADExternalNotificationRequestHandler *)self _changeCurrentStateToState:1];
      }
    }

    else
    {
      v12 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v17 = 136315138;
        v18 = "[ADExternalNotificationRequestHandler _deactivateWorkoutAnnouncementWithIdentifier:]";
        _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s Current announcement does not match the requested deactivation request's announce id - ignoring", &v17, 0xCu);
      }
    }
  }

  else
  {
    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v17 = 136315138;
      v18 = "[ADExternalNotificationRequestHandler _deactivateWorkoutAnnouncementWithIdentifier:]";
      _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s Current announcement is not a workout announcement - ignoring", &v17, 0xCu);
    }

    v8 = 0;
  }

LABEL_22:
  return v8;
}

- (void)deactivateWorkoutAnnouncementWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003471E8;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = identifierCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  dispatch_async(queue, block);
}

- (void)_stopCurrentRequestWithReason:(int64_t)reason shouldCancelRequest:(BOOL)request
{
  requestCopy = request;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v14 = v7;
    v15 = AFSiriDeactivationReasonGetName();
    v16 = 136315394;
    v17 = "[ADExternalNotificationRequestHandler _stopCurrentRequestWithReason:shouldCancelRequest:]";
    v18 = 2112;
    reasonCopy = v15;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Deactivating Siri with reason: %@", &v16, 0x16u);
  }

  if (reason > 15)
  {
    if (reason <= 17)
    {
      v8 = 0;
      v10 = 0;
      v9 = 5;
      goto LABEL_18;
    }

    if (reason != 18)
    {
      if (reason != 20)
      {
        goto LABEL_23;
      }

      v8 = 1;
      v9 = 4;
      v10 = 22;
LABEL_18:
      [(ADExternalNotificationRequestHandler *)self _deactivateForReason:reason source:v9 event:v10 completion:&stru_10051CA10];
      if (requestCopy)
      {
        _sharedCommandCenter = [(ADExternalNotificationRequestHandler *)self _sharedCommandCenter];
        if (v8)
        {
          _currentRequest = [(ADExternalNotificationRequestHandler *)self _currentRequest];
          [(ADExternalNotificationRequestHandler *)self _markThreadCancellationForCurrentRequest:_currentRequest];
        }

        [_sharedCommandCenter cancelCurrentRequestForReason:11];
      }

      return;
    }

LABEL_16:
    v8 = 0;
    v10 = 0;
    v9 = 4;
    goto LABEL_18;
  }

  if (reason > 12)
  {
    if (reason != 13 && reason != 14)
    {
      goto LABEL_23;
    }

    goto LABEL_16;
  }

  if (reason == 2)
  {
    v8 = 1;
    v9 = 4;
    v10 = 11;
    goto LABEL_18;
  }

  if (reason == 12)
  {
    v8 = 1;
    v9 = 4;
    v10 = 2;
    goto LABEL_18;
  }

LABEL_23:
  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v16 = 136315394;
    v17 = "[ADExternalNotificationRequestHandler _stopCurrentRequestWithReason:shouldCancelRequest:]";
    v18 = 2048;
    reasonCopy = reason;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Unexpected announcement cancellation reason: %lu. Deactivation ignored.", &v16, 0x16u);
  }
}

- (void)_clearCurrentNotificationTimer
{
  [(AFWatchdogTimer *)self->_currentNotificationTimer cancel];
  currentNotificationTimer = self->_currentNotificationTimer;
  self->_currentNotificationTimer = 0;
}

- (void)_startTimerToResetStateFrom:(int64_t)from
{
  [(AFWatchdogTimer *)self->_stateTimer cancel];
  v5 = [AFWatchdogTimer alloc];
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100347744;
  v9[3] = &unk_10051D770;
  v9[4] = self;
  v9[5] = from;
  v7 = [v5 initWithTimeoutInterval:queue onQueue:v9 timeoutHandler:120.0];
  stateTimer = self->_stateTimer;
  self->_stateTimer = v7;

  [(AFWatchdogTimer *)self->_stateTimer start];
}

- (void)_startAttendingForSpeechIfNeededForRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  if (-[ADAnnounceSpeechManager isAttending](self->_announceSpeechManager, "isAttending") && (-[ADExternalNotificationRequestHandler _currentRequest](self, "_currentRequest"), v8 = objc_claimAutoreleasedReturnValue(), [v8 requestInfo], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "[ADExternalNotificationRequestHandler _startAttendingForSpeechIfNeededForRequest:completion:]";
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Already attending, proceeding with reading message", buf, 0xCu);
    }

    currentRequestDelayManager = self->_currentRequestDelayManager;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100347BC0;
    v23[3] = &unk_10051E038;
    v23[4] = self;
    v12 = &v24;
    v24 = completionCopy;
    [(ADRequestDelayManager *)currentRequestDelayManager dequeueDelayedCommandsAndSend:0 completion:v23];
  }

  else
  {
    requestType = [requestCopy requestType];
    if (requestType == 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2 * (requestType == 2);
    }

    if ([requestCopy platform] != 1)
    {
      v14 = 4;
    }

    if ([requestCopy requestType] == 1 && objc_msgSend(requestCopy, "announcementType") == 9)
    {
      v15 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v26 = "[ADExternalNotificationRequestHandler _startAttendingForSpeechIfNeededForRequest:completion:]";
        v27 = 2048;
        v28 = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Starting attending for speech with type: %lu", buf, 0x16u);
      }

      announceSpeechManager = self->_announceSpeechManager;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100347C50;
      v21[3] = &unk_10051DD98;
      v21[4] = self;
      v12 = &v22;
      v22 = completionCopy;
      [(ADAnnounceSpeechManager *)announceSpeechManager startAttendingForSpeechWithType:v14 forAnnouncementType:9 completion:v21];
    }

    else
    {
      v17 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v26 = "[ADExternalNotificationRequestHandler _startAttendingForSpeechIfNeededForRequest:completion:]";
        v27 = 2048;
        v28 = v14;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Starting attending for speech with type: %lu", buf, 0x16u);
      }

      v18 = self->_announceSpeechManager;
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100347D08;
      v19[3] = &unk_10051DD98;
      v19[4] = self;
      v12 = &v20;
      v20 = completionCopy;
      [(ADAnnounceSpeechManager *)v18 startAttendingForSpeechWithType:v14 completion:v19];
    }
  }
}

- (int64_t)_getAnnouncementRequestFailureReasonFromError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy)
  {
    if ([errorCopy code] == 7200)
    {
      v5 = 14;
    }

    else if ([v4 code] == 7201)
    {
      v5 = 15;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_startAnnouncementRequest:(id)request
{
  requestCopy = request;
  v5 = +[SOMediaNowPlayingObserver defaultObserver];
  playbackState = [v5 playbackState];

  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    previousRequest = self->_previousRequest;
    synchronousBurstIndex = self->_synchronousBurstIndex;
    *buf = 136316162;
    v20 = "[ADExternalNotificationRequestHandler _startAnnouncementRequest:]";
    v21 = 2112;
    v22 = requestCopy;
    v23 = 2112;
    v24 = previousRequest;
    v25 = 2048;
    v26 = synchronousBurstIndex;
    v27 = 1024;
    v28 = playbackState == 1;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s Starting announcement request: %@, previous request: %@, Sync Burst Index: %lu, isMediaPlaying: %d", buf, 0x30u);
  }

  v8 = [AFRequestInfo requestInfoFromAnnouncementRequest:requestCopy previousRequest:self->_previousRequest synchronousBurstIndex:self->_synchronousBurstIndex isMediaPlaying:playbackState == 1];
  [(ADExternalNotificationRequestHandler *)self _setCurrentRequest:requestCopy];
  _currentRequest = [(ADExternalNotificationRequestHandler *)self _currentRequest];
  [_currentRequest setRequestInfo:v8];

  [(ADExternalNotificationRequestHandler *)self emitInstrumentationEventsForRequest:requestCopy];
  currentRequestDelayManager = self->_currentRequestDelayManager;
  if (!currentRequestDelayManager || ![(ADRequestDelayManager *)currentRequestDelayManager isDelaying])
  {
    _sharedCommandCenter = [(ADExternalNotificationRequestHandler *)self _sharedCommandCenter];
    requestDelayManager = [_sharedCommandCenter requestDelayManager];
    v13 = self->_currentRequestDelayManager;
    self->_currentRequestDelayManager = requestDelayManager;

    [(ADRequestDelayManager *)self->_currentRequestDelayManager startDelaying];
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100348090;
  v17[3] = &unk_10051C9D0;
  v17[4] = self;
  v18 = v8;
  v14 = v8;
  [(ADExternalNotificationRequestHandler *)self _startAttendingForSpeechIfNeededForRequest:requestCopy completion:v17];
}

- (void)_emitInstrumentationEventsForRequest:(id)request currentlyPlayingMediaType:(id)type
{
  requestCopy = request;
  [ADExternalNotificationInstrumentationEmitter emitAnnouncementReceivedForAnnouncementRequest:requestCopy nowPlayingMediaType:type];
  [ADExternalNotificationInstrumentationEmitter emitRequestLinkForAnnouncementRequest:requestCopy];
}

- (void)emitInstrumentationEventsForRequest:(id)request
{
  requestCopy = request;
  instrumentationQueue = self->_instrumentationQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003482E4;
  v7[3] = &unk_10051E010;
  v8 = requestCopy;
  selfCopy = self;
  v6 = requestCopy;
  dispatch_async(instrumentationQueue, v7);
}

- (void)_startAnnouncementRequestWithRequestInfo:(id)info
{
  infoCopy = info;
  _sharedCommandCenter = [(ADExternalNotificationRequestHandler *)self _sharedCommandCenter];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100348590;
  v7[3] = &unk_10051C980;
  v7[4] = self;
  v8 = infoCopy;
  v6 = infoCopy;
  [_sharedCommandCenter handleExternalActivationRequest:v6 completion:v7];
}

- (void)_handleNotificationWithRequiresOpportuneTime:(BOOL)time completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    [(ADExternalNotificationRequestHandler *)self _changeCurrentStateToState:2];
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x2020000000;
    v34 = 0;
    v7 = [AFSafetyBlock alloc];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100348CF8;
    v30[3] = &unk_10051C8B8;
    v32 = v33;
    v30[4] = self;
    v31 = completionCopy;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100348D44;
    v28[3] = &unk_10051DFE8;
    v8 = [v7 initWithBlock:v30];
    v29 = v8;
    v9 = objc_retainBlock(v28);
    v10 = AFSiriLogContextDaemon;
    v11 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
    if (time)
    {
      if (v11)
      {
        *buf = 136315138;
        v36 = "[ADExternalNotificationRequestHandler _handleNotificationWithRequiresOpportuneTime:completion:]";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Going to check if there is an opportunity to announce", buf, 0xCu);
      }

      v12 = [AFWatchdogTimer alloc];
      queue = self->_queue;
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100348D6C;
      v24[3] = &unk_10051CF58;
      v14 = v9;
      v25 = v14;
      v15 = [v12 initWithTimeoutInterval:queue onQueue:v24 timeoutHandler:10.0];
      currentNotificationTimer = self->_currentNotificationTimer;
      self->_currentNotificationTimer = v15;

      [(AFWatchdogTimer *)self->_currentNotificationTimer start];
      v17 = +[AFSiriClientStateManager sharedManager];
      [v17 beginSessionForClient:self];

      announceSpeechManager = self->_announceSpeechManager;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100348E2C;
      v21[3] = &unk_10051C930;
      v21[4] = self;
      v23 = v33;
      v22 = v14;
      [(ADAnnounceSpeechManager *)announceSpeechManager startAttendingForPauseInSpeechWithType:1 completion:v21];

      v19 = &v25;
    }

    else
    {
      if (v11)
      {
        *buf = 136315138;
        v36 = "[ADExternalNotificationRequestHandler _handleNotificationWithRequiresOpportuneTime:completion:]";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Ignoring using Opportune Speaking Module since the request doesn't require it", buf, 0xCu);
      }

      v20 = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100348D4C;
      block[3] = &unk_10051C8E0;
      v27[1] = v33;
      v19 = v27;
      v27[0] = v9;
      dispatch_async(v20, block);
    }

    _Block_object_dispose(v33, 8);
  }
}

- (void)_shouldAnnounceGivenCurrentClientConditionsForRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  if (completionCopy)
  {
    _sharedCommandCenter = [(ADExternalNotificationRequestHandler *)self _sharedCommandCenter];
    _currentClient = [_sharedCommandCenter _currentClient];
    if (_currentClient)
    {
      v10 = _currentClient;
      requestInfo = [requestCopy requestInfo];

      if (!requestInfo)
      {
        _sharedCommandCenter2 = [(ADExternalNotificationRequestHandler *)self _sharedCommandCenter];
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_10034916C;
        v13[3] = &unk_10051E100;
        v14 = completionCopy;
        [_sharedCommandCenter2 areAnnouncementRequestsPermittedByPresentationWhileActiveWithCompletion:v13];

        goto LABEL_7;
      }
    }

    else
    {
    }

    (*(completionCopy + 2))(completionCopy, 1);
  }

LABEL_7:
}

- (void)_startAnnouncementRequestIfOpportune:(id)opportune
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100349214;
  v4[3] = &unk_10051C868;
  selfCopy = self;
  opportuneCopy = opportune;
  v3 = opportuneCopy;
  [(ADExternalNotificationRequestHandler *)selfCopy _shouldAnnounceGivenCurrentClientConditionsForRequest:v3 completion:v4];
}

- (void)_handleAnnounceIncomingCallRequest:(id)request
{
  requestCopy = request;
  _currentRequest = [(ADExternalNotificationRequestHandler *)self _currentRequest];
  requestType = [_currentRequest requestType];

  if (requestType == 2)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315138;
      v19 = "[ADExternalNotificationRequestHandler _handleAnnounceIncomingCallRequest:]";
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Currently announcing a call, ignoring overlapping announce call activation", &v18, 0xCu);
    }

    [requestCopy completeRequestWithSuccess:0 forReason:5 shouldEmitInstrumentationEvent:1];
  }

  else
  {
    [requestCopy completeRequestWithSuccess:1 forReason:1 shouldEmitInstrumentationEvent:1];
    call = [requestCopy call];
    callProviderBundleID = [call callProviderBundleID];
    v10 = callProviderBundleID;
    if (callProviderBundleID)
    {
      callProviderIdentifier = callProviderBundleID;
    }

    else
    {
      call2 = [requestCopy call];
      callProviderIdentifier = [call2 callProviderIdentifier];
    }

    v13 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v18 = 136315394;
      v19 = "[ADExternalNotificationRequestHandler _handleAnnounceIncomingCallRequest:]";
      v20 = 2112;
      v21 = callProviderIdentifier;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Announce incoming call request received from: %@", &v18, 0x16u);
    }

    _sharedCommandCenter = [(ADExternalNotificationRequestHandler *)self _sharedCommandCenter];
    [_sharedCommandCenter startObservingCallState];
    _currentClient = [_sharedCommandCenter _currentClient];

    if (_currentClient)
    {
      [(ADExternalNotificationRequestHandler *)self _stopCurrentRequestWithReason:14 shouldCancelRequest:1];
    }

    [(ADExternalNotificationRequestHandler *)self _clearRequestState];
    [(ADExternalNotificationRequestHandler *)self _changeCurrentStateToState:2];
    [(ADExternalNotificationRequestHandler *)self _startTimerToResetStateFrom:2];
    v16 = objc_alloc_init(ADCallObserver);
    callObserver = self->_callObserver;
    self->_callObserver = v16;

    [(ADCallObserver *)self->_callObserver startObservingCallStateWithDelegate:self];
    [(ADExternalNotificationRequestHandler *)self _startAnnouncementRequest:requestCopy];
  }
}

- (BOOL)_accessibleAnnounceIsEnabled
{
  if (_AFPreferencesAnnounceNotificationsOnBuiltInSpeakerEnabled())
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    v2 = _AFPreferencesAnnounceNotificationsOnHearingAidsEnabled();
    if (v2)
    {

      LOBYTE(v2) = __AFPreferencesAnnounceNotificationsOnHearingAidsSupported();
    }
  }

  return v2;
}

- (BOOL)_canAnnounceInCarPlay
{
  v2 = _AFPreferencesAnnounceNotificationsInCarPlayType();
  if (v2 - 2 >= 3)
  {
    if (v2 > 1)
    {
      goto LABEL_9;
    }

    v3 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    v8 = 136315138;
    v9 = "[ADExternalNotificationRequestHandler _canAnnounceInCarPlay]";
    goto LABEL_8;
  }

  if (_AFPreferencesAnnounceNotificationsInCarPlayTemporarilyDisabled())
  {
    v3 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
LABEL_9:
      LOBYTE(currentlyAbleToAnnounce) = 0;
      return currentlyAbleToAnnounce;
    }

    v8 = 136315138;
    v9 = "[ADExternalNotificationRequestHandler _canAnnounceInCarPlay]";
LABEL_8:
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Announce in CarPlay is disabled.", &v8, 0xCu);
    goto LABEL_9;
  }

  v5 = +[(AFCarPlayAnnouncementRequestCapabilityProvider *)ADCarPlayAnnouncementRequestCapabilityProvider];
  currentlyAbleToAnnounce = [v5 currentlyAbleToAnnounce];
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[ADExternalNotificationRequestHandler _canAnnounceInCarPlay]";
    v10 = 1024;
    v11 = currentlyAbleToAnnounce;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Announce in CarPlay setting is enabled, currentlyAbleToAnnounce: %d", &v8, 0x12u);
  }

  return currentlyAbleToAnnounce;
}

- (void)_handleAnnounceNotificationRequest:(id)request
{
  requestCopy = request;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    notification = [requestCopy notification];
    [requestCopy announcementType];
    v8 = AFSiriUserNotificationAnnouncementTypeGetName();
    appID = [requestCopy appID];
    [requestCopy platform];
    v10 = AFSiriAnnouncementPlatformGetName();
    v11 = AFExternalNotificationRequestHandlerStateGetName();
    *buf = 136316418;
    v75 = "[ADExternalNotificationRequestHandler _handleAnnounceNotificationRequest:]";
    v76 = 2112;
    v77 = notification;
    v78 = 2112;
    v79 = v8;
    v80 = 2112;
    v81 = appID;
    v82 = 2112;
    v83 = v10;
    v84 = 2112;
    v85 = v11;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s %@ announcementType: %@, from app: %@, on platform:, %@, Current state: %@", buf, 0x3Eu);
  }

  if (![requestCopy announcementType])
  {
    v35 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v36 = v35;
      appID2 = [requestCopy appID];
      [requestCopy platform];
      v38 = AFSiriAnnouncementPlatformGetName();
      *buf = 136315650;
      v75 = "[ADExternalNotificationRequestHandler _handleAnnounceNotificationRequest:]";
      v76 = 2112;
      v77 = appID2;
      v78 = 2112;
      v79 = v38;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "%s Notification is not announceable by app: %@ on platform: %@", buf, 0x20u);
    }

    v39 = requestCopy;
    v40 = 7;
    goto LABEL_66;
  }

  if ([requestCopy platform] == 4)
  {
    v12 = +[AFDeviceRingerSwitchObserver sharedObserver];
    state = [v12 state];

    if (state == 2)
    {
      v14 = +[(AFSiriHeadphonesMonitor *)ADSiriHeadphonesMonitor];
      currentAudioRoute = [v14 currentAudioRoute];
      isBluetoothHeadset = [currentAudioRoute isBluetoothHeadset];

      if ((isBluetoothHeadset & 1) == 0)
      {
        v53 = AFSiriLogContextDaemon;
        if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
LABEL_65:
          v39 = requestCopy;
          v40 = 8;
LABEL_66:
          v61 = 1;
          goto LABEL_67;
        }

        *buf = 136315138;
        v75 = "[ADExternalNotificationRequestHandler _handleAnnounceNotificationRequest:]";
        v54 = "%s Not announcing over phone speaker, ringer switch is on silent";
LABEL_64:
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, v54, buf, 0xCu);
        goto LABEL_65;
      }
    }
  }

  if ([requestCopy announcementType] == 6 && (+[AFFeatureFlags isAnnounceGroupFaceTimeInviteEnabled](AFFeatureFlags, "isAnnounceGroupFaceTimeInviteEnabled") & 1) == 0)
  {
    goto LABEL_56;
  }

  if ([requestCopy platform] == 1)
  {
    if ([(ADExternalNotificationRequestHandler *)self _accessibleAnnounceIsEnabled])
    {
      bbSettingsGateway = self->_bbSettingsGateway;
      if (bbSettingsGateway)
      {
        if ([(BBSettingsGateway *)bbSettingsGateway effectiveGlobalAnnounceHeadphonesSetting]!= 2)
        {
          v60 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v75 = "[ADExternalNotificationRequestHandler _handleAnnounceNotificationRequest:]";
            _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "%s Not announcing on headphones, global announce setting is off.", buf, 0xCu);
          }

LABEL_56:
          v39 = requestCopy;
          v40 = 0;
          goto LABEL_57;
        }
      }
    }
  }

  if ([requestCopy platform] != 3 || (_AFPreferencesAnnounceNotificationsOnHearingAidsEnabled() & 1) != 0)
  {
    if ([requestCopy platform] != 4 || -[ADExternalNotificationRequestHandler _announceOnDeviceSpeakerAllowedForRequest:](self, "_announceOnDeviceSpeakerAllowedForRequest:", requestCopy))
    {
      if ([requestCopy platform] != 4 || !-[ADExternalNotificationRequestHandler _isDeviceSilent](self, "_isDeviceSilent") || (+[AFSiriHeadphonesMonitor sharedMonitor](ADSiriHeadphonesMonitor, "sharedMonitor"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "currentAudioRoute"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isBluetoothHeadset"), v19, v18, (v20 & 1) != 0))
      {
        announcementType = [requestCopy announcementType];
        appID3 = [requestCopy appID];
        [requestCopy platform];
        v23 = _AFPreferencesAnnounceNotificationsTemporarilyDisabledEndDateForAppOnPlatform();

        if (announcementType != 9)
        {
          if (v23)
          {
            v24 = +[NSDate date];
            v25 = [v23 laterDate:v24];
            v26 = [v25 isEqualToDate:v23];

            if (v26)
            {
              [requestCopy platform];
              v27 = _AFPreferencesAnnounceNotificationsTemporarilyDisabledEndDateForPlatform();
              if (v27 && (+[NSDate date](NSDate, "date"), v28 = objc_claimAutoreleasedReturnValue(), [v27 laterDate:v28], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "isEqualToDate:", v27), v29, v28, v30))
              {
                v31 = AFSiriLogContextDaemon;
                if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
                {
                  v32 = v31;
                  [requestCopy platform];
                  v33 = AFSiriAnnouncementPlatformGetName();
                  *buf = 136315650;
                  v75 = "[ADExternalNotificationRequestHandler _handleAnnounceNotificationRequest:]";
                  v76 = 2112;
                  v77 = v27;
                  v78 = 2112;
                  v79 = v33;
                  _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "%s Announce Notifications is globally temporarily disabled until %@ on platform %@", buf, 0x20u);
                }

                v34 = 4;
              }

              else
              {
                v62 = AFSiriLogContextDaemon;
                if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
                {
                  v63 = v62;
                  appID4 = [requestCopy appID];
                  [requestCopy platform];
                  v65 = AFSiriAnnouncementPlatformGetName();
                  *buf = 136315906;
                  v75 = "[ADExternalNotificationRequestHandler _handleAnnounceNotificationRequest:]";
                  v76 = 2112;
                  v77 = v23;
                  v78 = 2112;
                  v79 = appID4;
                  v80 = 2112;
                  v81 = v65;
                  _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "%s Announce Notifications is temporarily disabled until %@ for app %@ on platform %@", buf, 0x2Au);
                }

                v34 = 3;
              }

              [requestCopy completeRequestWithSuccess:0 forReason:v34 shouldEmitInstrumentationEvent:1];

              goto LABEL_76;
            }
          }
        }

        if ([requestCopy platform] == 2 && !-[ADExternalNotificationRequestHandler _canAnnounceInCarPlay](self, "_canAnnounceInCarPlay"))
        {
          v59 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v75 = "[ADExternalNotificationRequestHandler _handleAnnounceNotificationRequest:]";
            _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "%s Not permitted to Announce in CarPlay, rejecting notification", buf, 0xCu);
          }

          v46 = requestCopy;
          v47 = 0;
          v48 = 0;
          goto LABEL_53;
        }

        _currentRequest = [(ADExternalNotificationRequestHandler *)self _currentRequest];
        if (_currentRequest)
        {
          v42 = _currentRequest;
          _currentRequest2 = [(ADExternalNotificationRequestHandler *)self _currentRequest];
          requestType = [_currentRequest2 requestType];

          if (requestType == 2)
          {
            v45 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
            {
              *buf = 136315138;
              v75 = "[ADExternalNotificationRequestHandler _handleAnnounceNotificationRequest:]";
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "%s In an announce call request, rejecting notification", buf, 0xCu);
            }

            v46 = requestCopy;
            v47 = 5;
            v48 = 1;
LABEL_53:
            [v46 completeRequestWithSuccess:0 forReason:v47 shouldEmitInstrumentationEvent:v48];
LABEL_76:

            goto LABEL_68;
          }
        }

        _currentRequest3 = [(ADExternalNotificationRequestHandler *)self _currentRequest];
        _sharedCommandCenter = [(ADExternalNotificationRequestHandler *)self _sharedCommandCenter];
        currentState = self->_currentState;
        if (currentState > 4)
        {
          if (currentState == 5)
          {
            waitForUserInputAfterReading = self->_waitForUserInputAfterReading;
            v66 = AFSiriLogContextDaemon;
            v70 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
            if (!waitForUserInputAfterReading)
            {
              if (v70)
              {
                *buf = 136315138;
                v75 = "[ADExternalNotificationRequestHandler _handleAnnounceNotificationRequest:]";
                _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_INFO, "%s Currently listening but new notification came in, starting new reading request", buf, 0xCu);
              }

              [(ADExternalNotificationRequestHandler *)self _clearTriggerlessUserReplyTimer];
              [(ADExternalNotificationRequestHandler *)self _changeCurrentStateToState:2];
              [(ADExternalNotificationRequestHandler *)self _setCurrentRequest:requestCopy];
              _requestQueue = [(ADExternalNotificationRequestHandler *)self _requestQueue];
              [_requestQueue enqueueAnnouncementRequest:requestCopy];

              [(ADExternalNotificationRequestHandler *)self _startAnnouncementRequest:requestCopy];
              goto LABEL_75;
            }

            if (!v70)
            {
              goto LABEL_74;
            }

            *buf = 136315138;
            v75 = "[ADExternalNotificationRequestHandler _handleAnnounceNotificationRequest:]";
            v67 = "%s Currently waiting for explicit user input";
            goto LABEL_73;
          }

          if (currentState != 6)
          {
LABEL_75:

            goto LABEL_76;
          }
        }

        else if ((currentState - 2) >= 3)
        {
          if (currentState == 1)
          {
            v72[0] = _NSConcreteStackBlock;
            v72[1] = 3221225472;
            v72[2] = sub_10034A4B4;
            v72[3] = &unk_10051C868;
            v72[4] = self;
            v73 = requestCopy;
            [(ADExternalNotificationRequestHandler *)self _shouldAnnounceGivenCurrentClientConditionsForRequest:v73 completion:v72];
          }

          goto LABEL_75;
        }

        v66 = AFSiriLogContextDaemon;
        if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
LABEL_74:
          _requestQueue2 = [(ADExternalNotificationRequestHandler *)self _requestQueue];
          [_requestQueue2 enqueueAnnouncementRequest:requestCopy];

          goto LABEL_75;
        }

        *buf = 136315138;
        v75 = "[ADExternalNotificationRequestHandler _handleAnnounceNotificationRequest:]";
        v67 = "%s Enqueueing announcement request";
LABEL_73:
        _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_INFO, v67, buf, 0xCu);
        goto LABEL_74;
      }

      v53 = AFSiriLogContextDaemon;
      if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        goto LABEL_65;
      }

      *buf = 136315138;
      v75 = "[ADExternalNotificationRequestHandler _handleAnnounceNotificationRequest:]";
      v54 = "%s Not announcing over device speaker, device is on silent";
      goto LABEL_64;
    }

    v58 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      goto LABEL_49;
    }

    *buf = 136315394;
    v75 = "[ADExternalNotificationRequestHandler _handleAnnounceNotificationRequest:]";
    v76 = 2112;
    v77 = requestCopy;
    v50 = "%s Not announcing on speaker, since the setting is disabled for %@";
    v51 = v58;
    v52 = 22;
    goto LABEL_48;
  }

  v49 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v75 = "[ADExternalNotificationRequestHandler _handleAnnounceNotificationRequest:]";
    v50 = "%s Not announcing on hearing aids, since the setting is disabled";
    v51 = v49;
    v52 = 12;
LABEL_48:
    _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, v50, buf, v52);
  }

LABEL_49:
  v39 = requestCopy;
  v40 = 13;
LABEL_57:
  v61 = 0;
LABEL_67:
  [v39 completeRequestWithSuccess:0 forReason:v40 shouldEmitInstrumentationEvent:v61];
LABEL_68:
}

- (BOOL)_announceOnDeviceSpeakerAllowedForRequest:(id)request
{
  requestCopy = request;
  v4 = _AFPreferencesAnnounceNotificationsOnBuiltInSpeakerEnabled();
  announcementType = [requestCopy announcementType];

  if (announcementType == 9)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

- (void)_deliverSummary:(id)summary forNotification:(id)notification completion:(id)completion
{
  requestQueue = self->_requestQueue;
  completionCopy = completion;
  summaryCopy = summary;
  request = [notification request];
  identifier = [request identifier];
  [(ADExternalNotificationRequestQueue *)requestQueue deliverSummary:summaryCopy forNotificationWithIdentifier:identifier completion:completionCopy];
}

- (void)deliverSummary:(id)summary forNotification:(id)notification completion:(id)completion
{
  summaryCopy = summary;
  notificationCopy = notification;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10034A7A8;
  v15[3] = &unk_10051E0D8;
  v15[4] = self;
  v16 = summaryCopy;
  v17 = notificationCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = notificationCopy;
  v14 = summaryCopy;
  dispatch_async(queue, v15);
}

- (void)announcementRequestReadyToBeAnnounced:(id)announced
{
  announcedCopy = announced;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10034A850;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = announcedCopy;
  v6 = announcedCopy;
  dispatch_async(queue, v7);
}

- (void)_handleAnnouncementRequest:(id)request
{
  requestCopy = request;
  requestType = [requestCopy requestType];
  if (requestType)
  {
    if (requestType == 2)
    {
      [(ADExternalNotificationRequestHandler *)self _handleAnnounceIncomingCallRequest:requestCopy];
    }

    else if (requestType == 1)
    {
      [(ADExternalNotificationRequestHandler *)self _handleAnnounceNotificationRequest:requestCopy];
    }
  }

  else
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[ADExternalNotificationRequestHandler _handleAnnouncementRequest:]";
      v9 = 2112;
      v10 = requestCopy;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Unknown announcement request type for request : %@", &v7, 0x16u);
    }
  }
}

- (void)handleAnnouncementRequest:(id)request
{
  requestCopy = request;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10034AB90;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(queue, v7);
}

- (void)_markThreadCancellationForCurrentRequest:(id)request
{
  requestCopy = request;
  if ([requestCopy requestType] == 1)
  {
    v4 = requestCopy;
    appID = [v4 appID];
    notification = [v4 notification];
    request = [notification request];
    content = [request content];
    threadIdentifier = [content threadIdentifier];

    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315650;
      v13 = "[ADExternalNotificationRequestHandler _markThreadCancellationForCurrentRequest:]";
      v14 = 2112;
      v15 = appID;
      v16 = 2112;
      v17 = threadIdentifier;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s Marking thread cancellation for app: %@ threadID: %@", &v12, 0x20u);
    }

    v11 = +[AFPreferences sharedPreferences];
    [v11 markLastAnnouncementInThreadAsCancelledForApp:appID threadID:threadIdentifier];
  }
}

- (void)_changeCurrentStateToState:(int64_t)state
{
  [(AFWatchdogTimer *)self->_stateTimer cancel];
  stateTimer = self->_stateTimer;
  self->_stateTimer = 0;

  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = AFExternalNotificationRequestHandlerStateGetName();
    v9 = AFExternalNotificationRequestHandlerStateGetName();
    v17 = 136315650;
    v18 = "[ADExternalNotificationRequestHandler _changeCurrentStateToState:]";
    v19 = 2112;
    v20 = v8;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Changing state from %@ to %@", &v17, 0x20u);
  }

  self->_currentState = state;
  _sharedCommandCenter = [(ADExternalNotificationRequestHandler *)self _sharedCommandCenter];
  [_sharedCommandCenter announceNotificationHandlingStateUpdatedToState:state];
  if (state > 4)
  {
    if (state == 5)
    {
      if (self->_waitForUserInputAfterReading)
      {
        v14 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v17 = 136315138;
          v18 = "[ADExternalNotificationRequestHandler _changeCurrentStateToState:]";
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Deferring Audio session deactivation since we are waiting for user input", &v17, 0xCu);
        }
      }

      else
      {
        _currentRequest = [(ADExternalNotificationRequestHandler *)self _currentRequest];
        requestType = [_currentRequest requestType];

        if (requestType != 2)
        {
          [_sharedCommandCenter forceAudioSessionInactiveWithOptions:0 completion:0];
        }
      }
    }

    else if (state == 6)
    {
      self->_synchronousBurstIndex = 0;
    }
  }

  else if (state == 1)
  {
    _currentRequest2 = [(ADExternalNotificationRequestHandler *)self _currentRequest];
    shouldSkipTriggerlessReply = [_currentRequest2 shouldSkipTriggerlessReply];

    if (shouldSkipTriggerlessReply)
    {
      v13 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v17 = 136315138;
        v18 = "[ADExternalNotificationRequestHandler _changeCurrentStateToState:]";
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Deactivating audio session since we skipped triggerless reply", &v17, 0xCu);
      }

      [_sharedCommandCenter forceAudioSessionInactiveWithOptions:0 completion:0];
    }

    [(ADExternalNotificationRequestHandler *)self _clearRequestState];
  }

  else if (state == 2)
  {
    self->_waitForUserInputAfterReading = 0;
  }
}

- (void)_clearTriggerlessUserReplyTimer
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[ADExternalNotificationRequestHandler _clearTriggerlessUserReplyTimer]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
  }

  [(AFWatchdogTimer *)self->_triggerlessUserReplyTimer cancel];
  triggerlessUserReplyTimer = self->_triggerlessUserReplyTimer;
  self->_triggerlessUserReplyTimer = 0;

  self->_triggerlessUserReplyTimerTimedOut = 0;
}

- (void)_clearRequestState
{
  currentRequestDelayManager = self->_currentRequestDelayManager;
  if (currentRequestDelayManager)
  {
    [(ADRequestDelayManager *)currentRequestDelayManager stopDelayingAndSendCommands:0 completion:0];
    [(ADRequestDelayManager *)self->_currentRequestDelayManager beginTimerForContextCommands];
    v4 = self->_currentRequestDelayManager;
    self->_currentRequestDelayManager = 0;
  }

  callObserver = self->_callObserver;
  if (callObserver)
  {
    self->_callObserver = 0;
  }

  v6 = +[AFSiriClientStateManager sharedManager];
  [v6 endSessionForClient:self];

  [(ADAnnounceSpeechManager *)self->_announceSpeechManager stopAttending];
  [(ADExternalNotificationRequestHandler *)self _clearTriggerlessUserReplyTimer];
  [(ADExternalNotificationRequestHandler *)self _clearCurrentNotificationTimer];
  _requestQueue = [(ADExternalNotificationRequestHandler *)self _requestQueue];
  [_requestQueue clearRequestQueue];

  [(ADExternalNotificationRequestHandler *)self _setCurrentRequest:0];
  self->_synchronousBurstIndex = 0;
  self->_waitForUserInputAfterReading = 0;
  instrumentationQueue = self->_instrumentationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10034B1D0;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(instrumentationQueue, block);
  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10034B1E0;
  v10[3] = &unk_10051DFE8;
  v10[4] = self;
  dispatch_async(queue, v10);
}

- (void)_completeNotificationsWithSuccess:(BOOL)success forReason:(int64_t)reason shouldEmitInstrumentationEvent:(BOOL)event
{
  eventCopy = event;
  successCopy = success;
  v9 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v11 = v9;
    if (reason > 0x10)
    {
      v12 = @"(unknown)";
    }

    else
    {
      v12 = *(&off_100514790 + reason);
    }

    v13 = v12;
    v14 = 136315650;
    v15 = "[ADExternalNotificationRequestHandler _completeNotificationsWithSuccess:forReason:shouldEmitInstrumentationEvent:]";
    v16 = 1024;
    v17 = successCopy;
    v18 = 2112;
    v19 = v13;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s success: %d, reason: %@", &v14, 0x1Cu);
  }

  _requestQueue = [(ADExternalNotificationRequestHandler *)self _requestQueue];
  [_requestQueue completeCurrentRequestWithSuccess:successCopy forReason:reason shouldEmitInstrumentationEvent:eventCopy];
}

- (BOOL)_isDeviceSilent
{
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    ringerStateObserver = self->_ringerStateObserver;
    v5 = v3;
    v7 = 136315394;
    v8 = "[ADExternalNotificationRequestHandler _isDeviceSilent]";
    v9 = 2048;
    state = [(AFNotifyObserver *)ringerStateObserver state];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Device RingerSwitchState : %ld", &v7, 0x16u);
  }

  return [(AFNotifyObserver *)self->_ringerStateObserver state]== 0;
}

- (id)_init
{
  v37.receiver = self;
  v37.super_class = ADExternalNotificationRequestHandler;
  v2 = [(ADExternalNotificationRequestHandler *)&v37 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("ADExternalRequestDelayedActionHandler", v3);

    v5 = *(v2 + 10);
    *(v2 + 10) = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("ADExternalNotificationRequestHandler Instrumentation Queue", v6);

    v8 = *(v2 + 11);
    *(v2 + 11) = v7;

    *(v2 + 5) = 1;
    v9 = objc_alloc_init(ADExternalNotificationRequestQueue);
    v10 = *(v2 + 16);
    *(v2 + 16) = v9;

    [*(v2 + 16) setDelgate:v2];
    *(v2 + 15) = 0;
    v11 = +[ADRequestLifecycleObserver sharedObserver];
    [v11 addListener:v2];

    v12 = +[ADSpeechManager sharedManager];
    audioPlaybackService = [v12 audioPlaybackService];
    [audioPlaybackService addListener:v2];

    v14 = [AFNotifyObserver alloc];
    v15 = [[NSString alloc] initWithUTF8String:"com.apple.siri.client-state-changed"];
    v16 = [v14 initWithName:v15 options:1 queue:*(v2 + 10) delegate:v2];
    v17 = *(v2 + 7);
    *(v2 + 7) = v16;

    v18 = objc_alloc_init(ADAnnounceSpeechManager);
    v19 = *(v2 + 9);
    *(v2 + 9) = v18;

    [*(v2 + 9) setDelegate:v2];
    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_attr_make_with_qos_class(v20, QOS_CLASS_DEFAULT, 0);

    v22 = dispatch_queue_create("com.apple.siri.systemstateaccess", v21);
    v23 = *(v2 + 12);
    *(v2 + 12) = v22;

    v24 = [[AFNotifyObserver alloc] initWithName:@"com.apple.springboard.ringerstate" options:1 queue:*(v2 + 12) delegate:0];
    v25 = *(v2 + 17);
    *(v2 + 17) = v24;

    v26 = +[AVSystemController sharedAVSystemController];
    v42 = AVSystemController_VoicePromptStyleDidChangeNotification;
    v27 = [NSArray arrayWithObjects:&v42 count:1];
    v36 = 0;
    [v26 setAttribute:v27 forKey:AVSystemController_SubscribeToNotificationsAttribute error:&v36];
    v28 = v36;

    if (v28)
    {
      v29 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[ADExternalNotificationRequestHandler _init]";
        *&buf[12] = 2114;
        *&buf[14] = v28;
        _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%s Unable to register for VoicePromptStyleDidChange Notification on AVSystemController: %{public}@", buf, 0x16u);
      }
    }

    v30 = +[NSNotificationCenter defaultCenter];
    [v30 addObserver:v2 selector:"voicePromptStyleDidChange:" name:AVSystemController_VoicePromptStyleDidChangeNotification object:0];

    v38 = 0;
    v39 = &v38;
    v40 = 0x2050000000;
    v31 = qword_100590AD8;
    v41 = qword_100590AD8;
    if (!qword_100590AD8)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10034B8B8;
      v44 = &unk_10051E1C8;
      v45 = &v38;
      sub_10034B8B8(buf);
      v31 = v39[3];
    }

    v32 = v31;
    _Block_object_dispose(&v38, 8);
    v33 = [[v31 alloc] initWithQueue:*(v2 + 10)];
    v34 = *(v2 + 18);
    *(v2 + 18) = v33;

    dispatch_async(*(v2 + 10), &stru_10051C840);
  }

  return v2;
}

@end