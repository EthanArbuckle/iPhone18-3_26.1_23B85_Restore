@interface ADExternalNotificationRequestHandler
+ (id)sharedNotificationRequestHandler;
- (BOOL)_accessibleAnnounceIsEnabled;
- (BOOL)_announceOnDeviceSpeakerAllowedForRequest:(id)a3;
- (BOOL)_canAnnounceInCarPlay;
- (BOOL)_deactivateWorkoutAnnouncementWithIdentifier:(id)a3;
- (BOOL)_isDeviceSilent;
- (BOOL)speechManager:(id)a3 detectedSpeechForListeningType:(int64_t)a4 atHostTime:(float)a5 shouldHandleActivation:(BOOL)a6;
- (id)_init;
- (int64_t)_getAnnouncementRequestFailureReasonFromError:(id)a3;
- (int64_t)announcePlatformForCurrentRequest;
- (void)_adCallStateChangedCallIncoming:(BOOL)a3;
- (void)_changeCurrentStateToState:(int64_t)a3;
- (void)_clearCurrentNotificationTimer;
- (void)_clearRequestState;
- (void)_clearTriggerlessUserReplyTimer;
- (void)_completeNotificationsWithSuccess:(BOOL)a3 forReason:(int64_t)a4 shouldEmitInstrumentationEvent:(BOOL)a5;
- (void)_deactivateCarPlayNotificationAnnouncementRequestForReason:(int64_t)a3 notification:(id)a4 sourceAppId:(id)a5 completion:(id)a6;
- (void)_deactivateCurrentAnnouncementRequestForReason:(int64_t)a3;
- (void)_deactivateForReason:(int64_t)a3 source:(int64_t)a4 event:(int64_t)a5 completion:(id)a6;
- (void)_deactivateNotificationAnnouncementRequestForReason:(int64_t)a3 notification:(id)a4 sourceAppId:(id)a5 platform:(int64_t)a6 completion:(id)a7;
- (void)_deliverSummary:(id)a3 forNotification:(id)a4 completion:(id)a5;
- (void)_emitInstrumentationEventsForRequest:(id)a3 currentlyPlayingMediaType:(id)a4;
- (void)_handleAnnounceIncomingCallRequest:(id)a3;
- (void)_handleAnnounceNotificationRequest:(id)a3;
- (void)_handleAnnouncementRequest:(id)a3;
- (void)_handleNotificationWithRequiresOpportuneTime:(BOOL)a3 completion:(id)a4;
- (void)_markThreadCancellationForCurrentRequest:(id)a3;
- (void)_processAnyQueuedAnnouncementsAfterUserSpeech;
- (void)_shouldAnnounceGivenCurrentClientConditionsForRequest:(id)a3 completion:(id)a4;
- (void)_startAnnouncementRequest:(id)a3;
- (void)_startAnnouncementRequestIfOpportune:(id)a3;
- (void)_startAnnouncementRequestWithRequestInfo:(id)a3;
- (void)_startAttendingForSpeechIfNeededForRequest:(id)a3 completion:(id)a4;
- (void)_startObservingRouteChanges;
- (void)_startTimerToResetStateFrom:(int64_t)a3;
- (void)_startTriggerlessFollowupRequestForSpeechObservingType:(int64_t)a3 hostTime:(float)a4;
- (void)_stopCurrentRequestWithReason:(int64_t)a3 shouldCancelRequest:(BOOL)a4;
- (void)_stopObservingRouteChanges;
- (void)_triggerlessListeningTimerEnded;
- (void)_voicePromptStyleDidChange:(id)a3;
- (void)_withdrawalAnnouncementRequestForNotification:(id)a3 completion:(id)a4;
- (void)adCallStateChangedCallIncoming:(BOOL)a3;
- (void)announcementRequestReadyToBeAnnounced:(id)a3;
- (void)audioPlaybackService:(id)a3 didStartRequest:(id)a4;
- (void)audioSessionDidEnd;
- (void)currentAudioRouteDidChange:(id)a3;
- (void)deactivateCurrentAnnouncementRequestForReason:(int64_t)a3;
- (void)deactivateNotificationAnnouncementRequestForReason:(int64_t)a3 notification:(id)a4 sourceAppId:(id)a5 platform:(int64_t)a6 completion:(id)a7;
- (void)deactivateWorkoutAnnouncementWithIdentifier:(id)a3 completion:(id)a4;
- (void)deferAudioSessionDeactivationForAnnouncementRequest;
- (void)deliverSummary:(id)a3 forNotification:(id)a4 completion:(id)a5;
- (void)emitInstrumentationEventsForRequest:(id)a3;
- (void)fetchUnreadNotificationsFromThreadAfterNotificationWithID:(id)a3 completion:(id)a4;
- (void)handleAnnouncementRequest:(id)a3;
- (void)inEarDetectionStateDidChangeForBTAddress:(id)a3 fromState:(id)a4 toState:(id)a5;
- (void)markNotificationAsReadWithIdentifer:(id)a3;
- (void)notifyObserver:(id)a3 didChangeStateFrom:(unint64_t)a4 to:(unint64_t)a5;
- (void)notifySpeechDetectedIsUndirected;
- (void)requestLifecycleObserver:(id)a3 requestDidEndWithInfo:(id)a4 origin:(int64_t)a5 client:(id)a6;
- (void)requestLifecycleObserver:(id)a3 requestWasCancelledWithInfo:(id)a4 forReason:(int64_t)a5 origin:(int64_t)a6 client:(id)a7 successorInfo:(id)a8;
- (void)requestLifecycleObserver:(id)a3 requestWillBeginWithInfo:(id)a4 origin:(int64_t)a5 client:(id)a6;
- (void)speechManager:(id)a3 didStopUnexpectlyWithError:(id)a4;
- (void)voicePromptStyleDidChange:(id)a3;
- (void)withdrawalAnnouncementRequestForNotification:(id)a3 completion:(id)a4;
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

- (void)_voicePromptStyleDidChange:(id)a3
{
  v4 = a3;
  v5 = [(ADExternalNotificationRequestHandler *)self _currentRequest];

  if (v5)
  {
    v6 = [(ADExternalNotificationRequestHandler *)self _currentRequest];
    v7 = [v6 platform];

    if (v7 == 2 && [(ADExternalNotificationRequestHandler *)self _currentState]== 2)
    {
      v8 = [v4 userInfo];
      v9 = [v8 objectForKey:AVSystemController_VoicePromptStyleDidChangeNotificationParameter];

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

        v11 = [(ADExternalNotificationRequestHandler *)self _currentRequest];
        [v11 setRequestWasInterrupted:1];
      }
    }
  }
}

- (void)voicePromptStyleDidChange:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100342610;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_adCallStateChangedCallIncoming:(BOOL)a3
{
  if (!a3)
  {
    v4 = [(ADExternalNotificationRequestHandler *)self _currentRequest];
    v5 = [v4 requestType];

    if (v5 == 2)
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

      v8 = [(ADExternalNotificationRequestHandler *)self _sharedCommandCenter];
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

          v11 = [(ADExternalNotificationRequestHandler *)self _currentRequest];
          [v11 setRequestWasInterrupted:1];
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

      v13 = [v8 _currentClient];
      if (v13)
      {
        v14 = v13;
        v15 = [(ADExternalNotificationRequestHandler *)self _currentRequest];
        v16 = [v15 requestInfo];

        if (v16)
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

- (void)adCallStateChangedCallIncoming:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003429B8;
  v4[3] = &unk_10051CBD8;
  v4[4] = self;
  v5 = a3;
  dispatch_async(queue, v4);
}

- (void)notifyObserver:(id)a3 didChangeStateFrom:(unint64_t)a4 to:(unint64_t)a5
{
  v5 = a5;
  v7 = a3;
  if (self->_clientStateObserver == v7 && self->_currentState == 6)
  {
    if ((v5 & 4) != 0)
    {
      self->_triggerlessRequestEnteredListeningState = 1;
    }

    else if (self->_triggerlessRequestEnteredListeningState)
    {
      self->_triggerlessRequestEnteredListeningState = 0;
      v8 = v7;
      [(ADRequestDelayManager *)self->_currentRequestDelayManager stopDelayingAndSendCommands:0 completion:0];
      v7 = v8;
    }
  }
}

- (void)audioPlaybackService:(id)a3 didStartRequest:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100342AF8;
  v8[3] = &unk_10051E010;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)speechManager:(id)a3 didStopUnexpectlyWithError:(id)a4
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100342CEC;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)speechManager:(id)a3 detectedSpeechForListeningType:(int64_t)a4 atHostTime:(float)a5 shouldHandleActivation:(BOOL)a6
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
  v9[6] = a4;
  v11 = a6;
  v10 = a5;
  v9[4] = self;
  dispatch_sync(queue, v9);
  v7 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return v7;
}

- (void)requestLifecycleObserver:(id)a3 requestDidEndWithInfo:(id)a4 origin:(int64_t)a5 client:(id)a6
{
  v8 = a6;
  v9 = [a4 copy];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100343398;
  block[3] = &unk_10051DB68;
  v14 = v9;
  v15 = self;
  v16 = v8;
  v11 = v8;
  v12 = v9;
  dispatch_async(queue, block);
}

- (void)requestLifecycleObserver:(id)a3 requestWasCancelledWithInfo:(id)a4 forReason:(int64_t)a5 origin:(int64_t)a6 client:(id)a7 successorInfo:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v16 = a8;
  v17 = v16;
  if (a5 == 7 && v16 && [v16 activationEvent] == 10)
  {
    v18 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v23 = v18;
      v24 = [v14 uuid];
      *buf = 136315394;
      v31 = "[ADExternalNotificationRequestHandler requestLifecycleObserver:requestWasCancelledWithInfo:forReason:origin:client:successorInfo:]";
      v32 = 2112;
      v33 = v24;
      _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "%s Request (UUID: %@) cancelled as a result of a gesture-based follow-up", buf, 0x16u);
    }

    v19 = [v14 uuid];
    gestureInterruptedRequestUUID = self->_gestureInterruptedRequestUUID;
    self->_gestureInterruptedRequestUUID = v19;
  }

  else
  {
    v21 = [v14 copy];
    queue = self->_queue;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100343CEC;
    v25[3] = &unk_10051DBB8;
    v26 = v21;
    v27 = self;
    v28 = v15;
    v29 = a5;
    gestureInterruptedRequestUUID = v21;
    dispatch_async(queue, v25);
  }
}

- (void)requestLifecycleObserver:(id)a3 requestWillBeginWithInfo:(id)a4 origin:(int64_t)a5 client:(id)a6
{
  v8 = a4;
  v9 = a6;
  v10 = [v8 copy];
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1003440BC;
  v15[3] = &unk_10051DB18;
  v15[4] = self;
  v16 = v10;
  v17 = v9;
  v18 = v8;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  dispatch_async(queue, v15);
}

- (void)_triggerlessListeningTimerEnded
{
  self->_triggerlessUserReplyTimerTimedOut = 1;
  v3 = [(ADExternalNotificationRequestHandler *)self _currentRequest];
  [ADExternalNotificationInstrumentationEmitter emitUserResponseSilenceForAnnouncementRequest:v3];

  [(ADExternalNotificationRequestHandler *)self _changeCurrentStateToState:1];
}

- (void)inEarDetectionStateDidChangeForBTAddress:(id)a3 fromState:(id)a4 toState:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v19 = "[ADExternalNotificationRequestHandler inEarDetectionStateDidChangeForBTAddress:fromState:toState:]";
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s 🎧 headphoneInEarDetectionStateDidChangeFrom from: %@ to: %@", buf, 0x20u);
  }

  if ([v9 primaryInEarStatus] == 3 && objc_msgSend(v10, "primaryInEarStatus") != 3)
  {
    v13 = AFSiriLogContextDaemon;
    v12 = 1;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v19 = "[ADExternalNotificationRequestHandler inEarDetectionStateDidChangeForBTAddress:fromState:toState:]";
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s 🎧 [%@] primary bud went out of ear, shutting down the request", buf, 0x16u);
    }
  }

  else
  {
    v12 = 0;
  }

  if ([v9 secondaryInEarStatus] == 3 && objc_msgSend(v10, "secondaryInEarStatus") != 3)
  {
    v14 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v19 = "[ADExternalNotificationRequestHandler inEarDetectionStateDidChangeForBTAddress:fromState:toState:]";
      v20 = 2112;
      v21 = v8;
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
  v17 = v8;
  dispatch_async(queue, v16);

LABEL_15:
}

- (void)currentAudioRouteDidChange:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100344C60;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)deactivateCurrentAnnouncementRequestForReason:(int64_t)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100344FDC;
  v4[3] = &unk_10051D770;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

- (void)_deactivateCurrentAnnouncementRequestForReason:(int64_t)a3
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

  [(ADExternalNotificationRequestHandler *)self _stopCurrentRequestWithReason:a3 shouldCancelRequest:1];
  [(ADExternalNotificationRequestHandler *)self _changeCurrentStateToState:1];
}

- (void)markNotificationAsReadWithIdentifer:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100345188;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)fetchUnreadNotificationsFromThreadAfterNotificationWithID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003452C8;
  block[3] = &unk_10051E088;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)_startTriggerlessFollowupRequestForSpeechObservingType:(int64_t)a3 hostTime:(float)a4
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
  v9[5] = a3;
  v9[6] = a4;
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
  v3 = [(ADExternalNotificationRequestHandler *)self _currentRequest];

  if (v3)
  {
    v3 = [(ADAnnouncementRequest *)self->_currentRequest platform];
  }

  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = AFSiriAnnouncementPlatformGetName();
    v7 = [(ADExternalNotificationRequestHandler *)self _currentRequest];
    v9 = 136315650;
    v10 = "[ADExternalNotificationRequestHandler announcePlatformForCurrentRequest]";
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Platform: %@ for current request: %@", &v9, 0x20u);
  }

  return v3;
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
    v7 = [(ADExternalNotificationRequestHandler *)self _requestQueue];
    v8 = [v7 currentRequest];

    v9 = [v8 completion];

    if (v9)
    {
      if (v8)
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
        [(ADExternalNotificationRequestHandler *)self _startAnnouncementRequest:v8];
        goto LABEL_12;
      }
    }

    else
    {
      v11 = [(ADExternalNotificationRequestHandler *)self _requestQueue];
      v12 = [v11 nextAnnouncementRequest];

      v8 = v12;
      if (v12)
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

- (void)_withdrawalAnnouncementRequestForNotification:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ADExternalNotificationRequestHandler *)self _requestQueue];
  v9 = [v7 request];

  v10 = [v9 identifier];
  v11 = [v8 notificationRequestForNotificationIdentifierInAnnouncementQueue:v10];

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

  v12 = [v11 announcementIdentifier];
  v13 = [(ADExternalNotificationRequestHandler *)self _currentRequest];
  v14 = [v13 announcementIdentifier];
  v15 = [v12 isEqual:v14];

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

  v19 = [(ADExternalNotificationRequestHandler *)self _requestQueue];
  v18 = [v19 removeAnnouncementRequest:v11];

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
  v6[2](v6, v18);
}

- (void)withdrawalAnnouncementRequestForNotification:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100346544;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)_deactivateForReason:(int64_t)a3 source:(int64_t)a4 event:(int64_t)a5 completion:(id)a6
{
  v9 = a6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100346630;
  v12[3] = &unk_10051CAA8;
  v12[4] = mach_absolute_time();
  v12[5] = a4;
  v12[6] = a5;
  v10 = [AFSiriActivationContext newWithBuilder:v12];
  v11 = +[AFSiriActivationConnection sharedConnection];
  [v11 deactivateForReason:a3 options:0 context:v10 completion:v9];
}

- (void)_deactivateCarPlayNotificationAnnouncementRequestForReason:(int64_t)a3 notification:(id)a4 sourceAppId:(id)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v12)
  {
    v13 = [(ADExternalNotificationRequestHandler *)self _sharedCommandCenter];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100346828;
    v15[3] = &unk_10051CA88;
    v16 = v11;
    v17 = v10;
    v18 = self;
    v19 = v12;
    v20 = a3;
    [v13 areAnnouncementRequestsPermittedByPresentationWhileActiveWithCompletion:v15];
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

- (void)_deactivateNotificationAnnouncementRequestForReason:(int64_t)a3 notification:(id)a4 sourceAppId:(id)a5 platform:(int64_t)a6 completion:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = 0;
  if (a6 > 2)
  {
    if (a6 != 3)
    {
      if (a6 == 4)
      {
        v15 = [(ADExternalNotificationRequestHandler *)self _currentRequest];
        v16 = [(ADExternalNotificationRequestHandler *)self _currentRequest];
        v17 = [v16 requestType];

        if (v17 == 1 && ([v15 announcementType] == 9 || objc_msgSend(v15, "platform") == 4))
        {
          [(ADExternalNotificationRequestHandler *)self _stopCurrentRequestWithReason:a3 shouldCancelRequest:1];
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

    v14[2](v14, 0);
    goto LABEL_14;
  }

  if (a6 < 2)
  {
    goto LABEL_11;
  }

  if (a6 == 2)
  {
    [(ADExternalNotificationRequestHandler *)self _deactivateCarPlayNotificationAnnouncementRequestForReason:a3 notification:v12 sourceAppId:v13 completion:v14];
LABEL_14:
    v15 = 0;
  }

LABEL_15:
}

- (void)deactivateNotificationAnnouncementRequestForReason:(int64_t)a3 notification:(id)a4 sourceAppId:(id)a5 platform:(int64_t)a6 completion:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a7;
  queue = self->_queue;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100346DC4;
  v19[3] = &unk_10051CA38;
  v19[4] = self;
  v20 = v12;
  v23 = a3;
  v24 = a6;
  v21 = v13;
  v22 = v14;
  v16 = v14;
  v17 = v13;
  v18 = v12;
  dispatch_async(queue, v19);
}

- (BOOL)_deactivateWorkoutAnnouncementWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(ADExternalNotificationRequestHandler *)self _currentRequest];
  if ([v5 requestType] != 1)
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

  v6 = v5;
  if ([v6 announcementType] == 8 || objc_msgSend(v6, "announcementType") == 9)
  {
    v7 = [v6 announcementIdentifier];
    v8 = [v7 isEqual:v4];
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

- (void)deactivateWorkoutAnnouncementWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003471E8;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)_stopCurrentRequestWithReason:(int64_t)a3 shouldCancelRequest:(BOOL)a4
{
  v4 = a4;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v14 = v7;
    v15 = AFSiriDeactivationReasonGetName();
    v16 = 136315394;
    v17 = "[ADExternalNotificationRequestHandler _stopCurrentRequestWithReason:shouldCancelRequest:]";
    v18 = 2112;
    v19 = v15;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Deactivating Siri with reason: %@", &v16, 0x16u);
  }

  if (a3 > 15)
  {
    if (a3 <= 17)
    {
      v8 = 0;
      v10 = 0;
      v9 = 5;
      goto LABEL_18;
    }

    if (a3 != 18)
    {
      if (a3 != 20)
      {
        goto LABEL_23;
      }

      v8 = 1;
      v9 = 4;
      v10 = 22;
LABEL_18:
      [(ADExternalNotificationRequestHandler *)self _deactivateForReason:a3 source:v9 event:v10 completion:&stru_10051CA10];
      if (v4)
      {
        v11 = [(ADExternalNotificationRequestHandler *)self _sharedCommandCenter];
        if (v8)
        {
          v12 = [(ADExternalNotificationRequestHandler *)self _currentRequest];
          [(ADExternalNotificationRequestHandler *)self _markThreadCancellationForCurrentRequest:v12];
        }

        [v11 cancelCurrentRequestForReason:11];
      }

      return;
    }

LABEL_16:
    v8 = 0;
    v10 = 0;
    v9 = 4;
    goto LABEL_18;
  }

  if (a3 > 12)
  {
    if (a3 != 13 && a3 != 14)
    {
      goto LABEL_23;
    }

    goto LABEL_16;
  }

  if (a3 == 2)
  {
    v8 = 1;
    v9 = 4;
    v10 = 11;
    goto LABEL_18;
  }

  if (a3 == 12)
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
    v19 = a3;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Unexpected announcement cancellation reason: %lu. Deactivation ignored.", &v16, 0x16u);
  }
}

- (void)_clearCurrentNotificationTimer
{
  [(AFWatchdogTimer *)self->_currentNotificationTimer cancel];
  currentNotificationTimer = self->_currentNotificationTimer;
  self->_currentNotificationTimer = 0;
}

- (void)_startTimerToResetStateFrom:(int64_t)a3
{
  [(AFWatchdogTimer *)self->_stateTimer cancel];
  v5 = [AFWatchdogTimer alloc];
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100347744;
  v9[3] = &unk_10051D770;
  v9[4] = self;
  v9[5] = a3;
  v7 = [v5 initWithTimeoutInterval:queue onQueue:v9 timeoutHandler:120.0];
  stateTimer = self->_stateTimer;
  self->_stateTimer = v7;

  [(AFWatchdogTimer *)self->_stateTimer start];
}

- (void)_startAttendingForSpeechIfNeededForRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v24 = v7;
    [(ADRequestDelayManager *)currentRequestDelayManager dequeueDelayedCommandsAndSend:0 completion:v23];
  }

  else
  {
    v13 = [v6 requestType];
    if (v13 == 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2 * (v13 == 2);
    }

    if ([v6 platform] != 1)
    {
      v14 = 4;
    }

    if ([v6 requestType] == 1 && objc_msgSend(v6, "announcementType") == 9)
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
      v22 = v7;
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
      v20 = v7;
      [(ADAnnounceSpeechManager *)v18 startAttendingForSpeechWithType:v14 completion:v19];
    }
  }
}

- (int64_t)_getAnnouncementRequestFailureReasonFromError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 code] == 7200)
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

- (void)_startAnnouncementRequest:(id)a3
{
  v4 = a3;
  v5 = +[SOMediaNowPlayingObserver defaultObserver];
  v6 = [v5 playbackState];

  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    previousRequest = self->_previousRequest;
    synchronousBurstIndex = self->_synchronousBurstIndex;
    *buf = 136316162;
    v20 = "[ADExternalNotificationRequestHandler _startAnnouncementRequest:]";
    v21 = 2112;
    v22 = v4;
    v23 = 2112;
    v24 = previousRequest;
    v25 = 2048;
    v26 = synchronousBurstIndex;
    v27 = 1024;
    v28 = v6 == 1;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s Starting announcement request: %@, previous request: %@, Sync Burst Index: %lu, isMediaPlaying: %d", buf, 0x30u);
  }

  v8 = [AFRequestInfo requestInfoFromAnnouncementRequest:v4 previousRequest:self->_previousRequest synchronousBurstIndex:self->_synchronousBurstIndex isMediaPlaying:v6 == 1];
  [(ADExternalNotificationRequestHandler *)self _setCurrentRequest:v4];
  v9 = [(ADExternalNotificationRequestHandler *)self _currentRequest];
  [v9 setRequestInfo:v8];

  [(ADExternalNotificationRequestHandler *)self emitInstrumentationEventsForRequest:v4];
  currentRequestDelayManager = self->_currentRequestDelayManager;
  if (!currentRequestDelayManager || ![(ADRequestDelayManager *)currentRequestDelayManager isDelaying])
  {
    v11 = [(ADExternalNotificationRequestHandler *)self _sharedCommandCenter];
    v12 = [v11 requestDelayManager];
    v13 = self->_currentRequestDelayManager;
    self->_currentRequestDelayManager = v12;

    [(ADRequestDelayManager *)self->_currentRequestDelayManager startDelaying];
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100348090;
  v17[3] = &unk_10051C9D0;
  v17[4] = self;
  v18 = v8;
  v14 = v8;
  [(ADExternalNotificationRequestHandler *)self _startAttendingForSpeechIfNeededForRequest:v4 completion:v17];
}

- (void)_emitInstrumentationEventsForRequest:(id)a3 currentlyPlayingMediaType:(id)a4
{
  v5 = a3;
  [ADExternalNotificationInstrumentationEmitter emitAnnouncementReceivedForAnnouncementRequest:v5 nowPlayingMediaType:a4];
  [ADExternalNotificationInstrumentationEmitter emitRequestLinkForAnnouncementRequest:v5];
}

- (void)emitInstrumentationEventsForRequest:(id)a3
{
  v4 = a3;
  instrumentationQueue = self->_instrumentationQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003482E4;
  v7[3] = &unk_10051E010;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(instrumentationQueue, v7);
}

- (void)_startAnnouncementRequestWithRequestInfo:(id)a3
{
  v4 = a3;
  v5 = [(ADExternalNotificationRequestHandler *)self _sharedCommandCenter];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100348590;
  v7[3] = &unk_10051C980;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 handleExternalActivationRequest:v6 completion:v7];
}

- (void)_handleNotificationWithRequiresOpportuneTime:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  if (v6)
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
    v31 = v6;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100348D44;
    v28[3] = &unk_10051DFE8;
    v8 = [v7 initWithBlock:v30];
    v29 = v8;
    v9 = objc_retainBlock(v28);
    v10 = AFSiriLogContextDaemon;
    v11 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
    if (a3)
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

- (void)_shouldAnnounceGivenCurrentClientConditionsForRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(ADExternalNotificationRequestHandler *)self _sharedCommandCenter];
    v9 = [v8 _currentClient];
    if (v9)
    {
      v10 = v9;
      v11 = [v6 requestInfo];

      if (!v11)
      {
        v12 = [(ADExternalNotificationRequestHandler *)self _sharedCommandCenter];
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_10034916C;
        v13[3] = &unk_10051E100;
        v14 = v7;
        [v12 areAnnouncementRequestsPermittedByPresentationWhileActiveWithCompletion:v13];

        goto LABEL_7;
      }
    }

    else
    {
    }

    (*(v7 + 2))(v7, 1);
  }

LABEL_7:
}

- (void)_startAnnouncementRequestIfOpportune:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100349214;
  v4[3] = &unk_10051C868;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(ADExternalNotificationRequestHandler *)v5 _shouldAnnounceGivenCurrentClientConditionsForRequest:v3 completion:v4];
}

- (void)_handleAnnounceIncomingCallRequest:(id)a3
{
  v4 = a3;
  v5 = [(ADExternalNotificationRequestHandler *)self _currentRequest];
  v6 = [v5 requestType];

  if (v6 == 2)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315138;
      v19 = "[ADExternalNotificationRequestHandler _handleAnnounceIncomingCallRequest:]";
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Currently announcing a call, ignoring overlapping announce call activation", &v18, 0xCu);
    }

    [v4 completeRequestWithSuccess:0 forReason:5 shouldEmitInstrumentationEvent:1];
  }

  else
  {
    [v4 completeRequestWithSuccess:1 forReason:1 shouldEmitInstrumentationEvent:1];
    v8 = [v4 call];
    v9 = [v8 callProviderBundleID];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v12 = [v4 call];
      v11 = [v12 callProviderIdentifier];
    }

    v13 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v18 = 136315394;
      v19 = "[ADExternalNotificationRequestHandler _handleAnnounceIncomingCallRequest:]";
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Announce incoming call request received from: %@", &v18, 0x16u);
    }

    v14 = [(ADExternalNotificationRequestHandler *)self _sharedCommandCenter];
    [v14 startObservingCallState];
    v15 = [v14 _currentClient];

    if (v15)
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
    [(ADExternalNotificationRequestHandler *)self _startAnnouncementRequest:v4];
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
      LOBYTE(v4) = 0;
      return v4;
    }

    v8 = 136315138;
    v9 = "[ADExternalNotificationRequestHandler _canAnnounceInCarPlay]";
LABEL_8:
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Announce in CarPlay is disabled.", &v8, 0xCu);
    goto LABEL_9;
  }

  v5 = +[(AFCarPlayAnnouncementRequestCapabilityProvider *)ADCarPlayAnnouncementRequestCapabilityProvider];
  v4 = [v5 currentlyAbleToAnnounce];
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[ADExternalNotificationRequestHandler _canAnnounceInCarPlay]";
    v10 = 1024;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Announce in CarPlay setting is enabled, currentlyAbleToAnnounce: %d", &v8, 0x12u);
  }

  return v4;
}

- (void)_handleAnnounceNotificationRequest:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = [v4 notification];
    [v4 announcementType];
    v8 = AFSiriUserNotificationAnnouncementTypeGetName();
    v9 = [v4 appID];
    [v4 platform];
    v10 = AFSiriAnnouncementPlatformGetName();
    v11 = AFExternalNotificationRequestHandlerStateGetName();
    *buf = 136316418;
    v75 = "[ADExternalNotificationRequestHandler _handleAnnounceNotificationRequest:]";
    v76 = 2112;
    v77 = v7;
    v78 = 2112;
    v79 = v8;
    v80 = 2112;
    v81 = v9;
    v82 = 2112;
    v83 = v10;
    v84 = 2112;
    v85 = v11;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s %@ announcementType: %@, from app: %@, on platform:, %@, Current state: %@", buf, 0x3Eu);
  }

  if (![v4 announcementType])
  {
    v35 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v36 = v35;
      v37 = [v4 appID];
      [v4 platform];
      v38 = AFSiriAnnouncementPlatformGetName();
      *buf = 136315650;
      v75 = "[ADExternalNotificationRequestHandler _handleAnnounceNotificationRequest:]";
      v76 = 2112;
      v77 = v37;
      v78 = 2112;
      v79 = v38;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "%s Notification is not announceable by app: %@ on platform: %@", buf, 0x20u);
    }

    v39 = v4;
    v40 = 7;
    goto LABEL_66;
  }

  if ([v4 platform] == 4)
  {
    v12 = +[AFDeviceRingerSwitchObserver sharedObserver];
    v13 = [v12 state];

    if (v13 == 2)
    {
      v14 = +[(AFSiriHeadphonesMonitor *)ADSiriHeadphonesMonitor];
      v15 = [v14 currentAudioRoute];
      v16 = [v15 isBluetoothHeadset];

      if ((v16 & 1) == 0)
      {
        v53 = AFSiriLogContextDaemon;
        if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
LABEL_65:
          v39 = v4;
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

  if ([v4 announcementType] == 6 && (+[AFFeatureFlags isAnnounceGroupFaceTimeInviteEnabled](AFFeatureFlags, "isAnnounceGroupFaceTimeInviteEnabled") & 1) == 0)
  {
    goto LABEL_56;
  }

  if ([v4 platform] == 1)
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
          v39 = v4;
          v40 = 0;
          goto LABEL_57;
        }
      }
    }
  }

  if ([v4 platform] != 3 || (_AFPreferencesAnnounceNotificationsOnHearingAidsEnabled() & 1) != 0)
  {
    if ([v4 platform] != 4 || -[ADExternalNotificationRequestHandler _announceOnDeviceSpeakerAllowedForRequest:](self, "_announceOnDeviceSpeakerAllowedForRequest:", v4))
    {
      if ([v4 platform] != 4 || !-[ADExternalNotificationRequestHandler _isDeviceSilent](self, "_isDeviceSilent") || (+[AFSiriHeadphonesMonitor sharedMonitor](ADSiriHeadphonesMonitor, "sharedMonitor"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "currentAudioRoute"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isBluetoothHeadset"), v19, v18, (v20 & 1) != 0))
      {
        v21 = [v4 announcementType];
        v22 = [v4 appID];
        [v4 platform];
        v23 = _AFPreferencesAnnounceNotificationsTemporarilyDisabledEndDateForAppOnPlatform();

        if (v21 != 9)
        {
          if (v23)
          {
            v24 = +[NSDate date];
            v25 = [v23 laterDate:v24];
            v26 = [v25 isEqualToDate:v23];

            if (v26)
            {
              [v4 platform];
              v27 = _AFPreferencesAnnounceNotificationsTemporarilyDisabledEndDateForPlatform();
              if (v27 && (+[NSDate date](NSDate, "date"), v28 = objc_claimAutoreleasedReturnValue(), [v27 laterDate:v28], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "isEqualToDate:", v27), v29, v28, v30))
              {
                v31 = AFSiriLogContextDaemon;
                if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
                {
                  v32 = v31;
                  [v4 platform];
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
                  v64 = [v4 appID];
                  [v4 platform];
                  v65 = AFSiriAnnouncementPlatformGetName();
                  *buf = 136315906;
                  v75 = "[ADExternalNotificationRequestHandler _handleAnnounceNotificationRequest:]";
                  v76 = 2112;
                  v77 = v23;
                  v78 = 2112;
                  v79 = v64;
                  v80 = 2112;
                  v81 = v65;
                  _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "%s Announce Notifications is temporarily disabled until %@ for app %@ on platform %@", buf, 0x2Au);
                }

                v34 = 3;
              }

              [v4 completeRequestWithSuccess:0 forReason:v34 shouldEmitInstrumentationEvent:1];

              goto LABEL_76;
            }
          }
        }

        if ([v4 platform] == 2 && !-[ADExternalNotificationRequestHandler _canAnnounceInCarPlay](self, "_canAnnounceInCarPlay"))
        {
          v59 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v75 = "[ADExternalNotificationRequestHandler _handleAnnounceNotificationRequest:]";
            _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "%s Not permitted to Announce in CarPlay, rejecting notification", buf, 0xCu);
          }

          v46 = v4;
          v47 = 0;
          v48 = 0;
          goto LABEL_53;
        }

        v41 = [(ADExternalNotificationRequestHandler *)self _currentRequest];
        if (v41)
        {
          v42 = v41;
          v43 = [(ADExternalNotificationRequestHandler *)self _currentRequest];
          v44 = [v43 requestType];

          if (v44 == 2)
          {
            v45 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
            {
              *buf = 136315138;
              v75 = "[ADExternalNotificationRequestHandler _handleAnnounceNotificationRequest:]";
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "%s In an announce call request, rejecting notification", buf, 0xCu);
            }

            v46 = v4;
            v47 = 5;
            v48 = 1;
LABEL_53:
            [v46 completeRequestWithSuccess:0 forReason:v47 shouldEmitInstrumentationEvent:v48];
LABEL_76:

            goto LABEL_68;
          }
        }

        v55 = [(ADExternalNotificationRequestHandler *)self _currentRequest];
        v56 = [(ADExternalNotificationRequestHandler *)self _sharedCommandCenter];
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
              [(ADExternalNotificationRequestHandler *)self _setCurrentRequest:v4];
              v71 = [(ADExternalNotificationRequestHandler *)self _requestQueue];
              [v71 enqueueAnnouncementRequest:v4];

              [(ADExternalNotificationRequestHandler *)self _startAnnouncementRequest:v4];
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
            v73 = v4;
            [(ADExternalNotificationRequestHandler *)self _shouldAnnounceGivenCurrentClientConditionsForRequest:v73 completion:v72];
          }

          goto LABEL_75;
        }

        v66 = AFSiriLogContextDaemon;
        if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
LABEL_74:
          v68 = [(ADExternalNotificationRequestHandler *)self _requestQueue];
          [v68 enqueueAnnouncementRequest:v4];

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
    v77 = v4;
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
  v39 = v4;
  v40 = 13;
LABEL_57:
  v61 = 0;
LABEL_67:
  [v39 completeRequestWithSuccess:0 forReason:v40 shouldEmitInstrumentationEvent:v61];
LABEL_68:
}

- (BOOL)_announceOnDeviceSpeakerAllowedForRequest:(id)a3
{
  v3 = a3;
  v4 = _AFPreferencesAnnounceNotificationsOnBuiltInSpeakerEnabled();
  v5 = [v3 announcementType];

  if (v5 == 9)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

- (void)_deliverSummary:(id)a3 forNotification:(id)a4 completion:(id)a5
{
  requestQueue = self->_requestQueue;
  v8 = a5;
  v9 = a3;
  v11 = [a4 request];
  v10 = [v11 identifier];
  [(ADExternalNotificationRequestQueue *)requestQueue deliverSummary:v9 forNotificationWithIdentifier:v10 completion:v8];
}

- (void)deliverSummary:(id)a3 forNotification:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10034A7A8;
  v15[3] = &unk_10051E0D8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

- (void)announcementRequestReadyToBeAnnounced:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10034A850;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_handleAnnouncementRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 requestType];
  if (v5)
  {
    if (v5 == 2)
    {
      [(ADExternalNotificationRequestHandler *)self _handleAnnounceIncomingCallRequest:v4];
    }

    else if (v5 == 1)
    {
      [(ADExternalNotificationRequestHandler *)self _handleAnnounceNotificationRequest:v4];
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
      v10 = v4;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Unknown announcement request type for request : %@", &v7, 0x16u);
    }
  }
}

- (void)handleAnnouncementRequest:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10034AB90;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_markThreadCancellationForCurrentRequest:(id)a3
{
  v3 = a3;
  if ([v3 requestType] == 1)
  {
    v4 = v3;
    v5 = [v4 appID];
    v6 = [v4 notification];
    v7 = [v6 request];
    v8 = [v7 content];
    v9 = [v8 threadIdentifier];

    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315650;
      v13 = "[ADExternalNotificationRequestHandler _markThreadCancellationForCurrentRequest:]";
      v14 = 2112;
      v15 = v5;
      v16 = 2112;
      v17 = v9;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s Marking thread cancellation for app: %@ threadID: %@", &v12, 0x20u);
    }

    v11 = +[AFPreferences sharedPreferences];
    [v11 markLastAnnouncementInThreadAsCancelledForApp:v5 threadID:v9];
  }
}

- (void)_changeCurrentStateToState:(int64_t)a3
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

  self->_currentState = a3;
  v10 = [(ADExternalNotificationRequestHandler *)self _sharedCommandCenter];
  [v10 announceNotificationHandlingStateUpdatedToState:a3];
  if (a3 > 4)
  {
    if (a3 == 5)
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
        v15 = [(ADExternalNotificationRequestHandler *)self _currentRequest];
        v16 = [v15 requestType];

        if (v16 != 2)
        {
          [v10 forceAudioSessionInactiveWithOptions:0 completion:0];
        }
      }
    }

    else if (a3 == 6)
    {
      self->_synchronousBurstIndex = 0;
    }
  }

  else if (a3 == 1)
  {
    v11 = [(ADExternalNotificationRequestHandler *)self _currentRequest];
    v12 = [v11 shouldSkipTriggerlessReply];

    if (v12)
    {
      v13 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v17 = 136315138;
        v18 = "[ADExternalNotificationRequestHandler _changeCurrentStateToState:]";
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Deactivating audio session since we skipped triggerless reply", &v17, 0xCu);
      }

      [v10 forceAudioSessionInactiveWithOptions:0 completion:0];
    }

    [(ADExternalNotificationRequestHandler *)self _clearRequestState];
  }

  else if (a3 == 2)
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
  v7 = [(ADExternalNotificationRequestHandler *)self _requestQueue];
  [v7 clearRequestQueue];

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

- (void)_completeNotificationsWithSuccess:(BOOL)a3 forReason:(int64_t)a4 shouldEmitInstrumentationEvent:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v9 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v11 = v9;
    if (a4 > 0x10)
    {
      v12 = @"(unknown)";
    }

    else
    {
      v12 = *(&off_100514790 + a4);
    }

    v13 = v12;
    v14 = 136315650;
    v15 = "[ADExternalNotificationRequestHandler _completeNotificationsWithSuccess:forReason:shouldEmitInstrumentationEvent:]";
    v16 = 1024;
    v17 = v7;
    v18 = 2112;
    v19 = v13;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s success: %d, reason: %@", &v14, 0x1Cu);
  }

  v10 = [(ADExternalNotificationRequestHandler *)self _requestQueue];
  [v10 completeCurrentRequestWithSuccess:v7 forReason:a4 shouldEmitInstrumentationEvent:v5];
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
    v10 = [(AFNotifyObserver *)ringerStateObserver state];
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
    v13 = [v12 audioPlaybackService];
    [v13 addListener:v2];

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