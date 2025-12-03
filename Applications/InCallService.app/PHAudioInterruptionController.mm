@interface PHAudioInterruptionController
+ (id)sharedInstance;
- (PHAudioInterruptionController)init;
- (id)bundleIdentifierForCall:(id)call;
- (id)handlesForCall:(id)call;
- (void)_callShouldSuppressRingtoneChanged:(id)changed;
- (void)_callStatusChanged:(id)changed;
- (void)_playAnnouncementForIncomingCallIfNecessary;
- (void)_playDowntimeStartingAnnouncementForCallIfNecessary;
- (void)_updateAudioInterruptionsForCall:(id)call;
- (void)dealloc;
- (void)handlePHRingtoneControllerAudioSessionIdentifierDidChangeNotification:(id)notification;
@end

@implementation PHAudioInterruptionController

+ (id)sharedInstance
{
  if (qword_1003B0C90 != -1)
  {
    sub_1002545C4();
  }

  v3 = qword_1003B0C88;

  return v3;
}

- (PHAudioInterruptionController)init
{
  v15.receiver = self;
  v15.super_class = PHAudioInterruptionController;
  v2 = [(PHAudioInterruptionController *)&v15 init];
  if (v2)
  {
    v3 = objc_alloc_init(PHRingtoneController);
    ringtoneController = v2->_ringtoneController;
    v2->_ringtoneController = v3;

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v2 selector:"_callStatusChanged:" name:TUCallCenterCallStatusChangedNotification object:0];
    [v5 addObserver:v2 selector:"_callShouldSuppressRingtoneChanged:" name:TUCallShouldSuppressRingingChangedNotification object:0];
    [v5 addObserver:v2 selector:"handlePHRingtoneControllerAudioSessionIdentifierDidChangeNotification:" name:@"PHRingtoneControllerAudioSessionIdentifierDidChangeNotification" object:v2->_ringtoneController];
    [v5 addObserver:v2 selector:"_callStatusChanged:" name:TUCallCenterVideoCallStatusChangedNotification object:0];
    v6 = sub_100004F84();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "INTERRUPT: PHAudioInterruptionController Created", buf, 2u);
    }

    v7 = +[TUCallCenter sharedInstance];
    frontmostAudioOrVideoCall = [v7 frontmostAudioOrVideoCall];

    if (frontmostAudioOrVideoCall)
    {
      v9 = sub_100004F84();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = frontmostAudioOrVideoCall;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "INTERRUPT: ... upon creation there was a current call, updating interruptions for %@", buf, 0xCu);
      }

      [(PHAudioInterruptionController *)v2 _updateAudioInterruptionsForCall:frontmostAudioOrVideoCall];
    }

    out_token = 0;
    objc_initWeak(buf, v2);
    v10 = &_dispatch_main_q;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100057ED4;
    v12[3] = &unk_100357198;
    objc_copyWeak(&v13, buf);
    notify_register_dispatch("com.apple.ScreenTimeAgent.CommunicationPolicyWarningNotification", &out_token, &_dispatch_main_q, v12);

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PHAudioInterruptionController;
  [(PHAudioInterruptionController *)&v4 dealloc];
}

- (void)_callStatusChanged:(id)changed
{
  object = [changed object];
  [(PHAudioInterruptionController *)self _updateAudioInterruptionsForCall:object];
}

- (void)handlePHRingtoneControllerAudioSessionIdentifierDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    selfCopy = self;
    v8 = 2112;
    v9 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v6, 0x16u);
  }

  [(PHAudioInterruptionController *)self _playAnnouncementForIncomingCallIfNecessary];
}

- (void)_updateAudioInterruptionsForCall:(id)call
{
  callCopy = call;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = [callCopy status];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "INTERRUPT: Call Status changing to: %d", v7, 8u);
  }

  ringtoneController = [(PHAudioInterruptionController *)self ringtoneController];
  [ringtoneController stopAnnouncement];

  if ([callCopy resolvedCallStatus] == 4)
  {
    [(PHAudioInterruptionController *)self _playAnnouncementForIncomingCallIfNecessary];
  }
}

- (void)_callShouldSuppressRingtoneChanged:(id)changed
{
  object = [changed object];
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = object;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "INTERRUPT: shouldSuppressRingtoneChanged notification for call: %@", &v7, 0xCu);
  }

  if (object && [object resolvedCallStatus] == 4)
  {
    if ([object shouldSuppressRingtone])
    {
      ringtoneController = [(PHAudioInterruptionController *)self ringtoneController];
      [ringtoneController stopAnnouncement];
    }

    else
    {
      [(PHAudioInterruptionController *)self _playAnnouncementForIncomingCallIfNecessary];
    }
  }
}

- (void)_playAnnouncementForIncomingCallIfNecessary
{
  v3 = +[TUCallCenter sharedInstance];
  resolvedIncomingCall = [v3 resolvedIncomingCall];
  v5 = resolvedIncomingCall;
  if (resolvedIncomingCall)
  {
    incomingVideoCall = resolvedIncomingCall;
  }

  else
  {
    v7 = +[TUCallCenter sharedInstance];
    incomingVideoCall = [v7 incomingVideoCall];
  }

  v8 = +[TUCallCenter sharedInstance];
  displayedAudioAndVideoCalls = [v8 displayedAudioAndVideoCalls];
  firstObject = [displayedAudioAndVideoCalls firstObject];

  v11 = sub_100004F84();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    *v18 = incomingVideoCall;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "INTERRUPT: incomingCall: %@", &v17, 0xCu);
  }

  if (firstObject)
  {
    if (firstObject != incomingVideoCall)
    {
      goto LABEL_15;
    }
  }

  else if (!incomingVideoCall)
  {
    goto LABEL_15;
  }

  if (([incomingVideoCall shouldSuppressRingtone] & 1) == 0)
  {
    announceProviderIdentifier = [incomingVideoCall announceProviderIdentifier];
    v13 = [announceProviderIdentifier isEqualToString:TUBundleIdentifierInCallServiceApplication];

    if (v13)
    {
      v14 = sub_100004F84();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        *v18 = incomingVideoCall;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Playing call announcement for incoming call %@", &v17, 0xCu);
      }

      ringtoneController = [(PHAudioInterruptionController *)self ringtoneController];
      [ringtoneController playAnnouncementForCall:incomingVideoCall];
      goto LABEL_17;
    }
  }

LABEL_15:
  ringtoneController = sub_100004F84();
  if (os_log_type_enabled(ringtoneController, OS_LOG_TYPE_DEFAULT))
  {
    shouldSuppressRingtone = [incomingVideoCall shouldSuppressRingtone];
    v17 = 67109632;
    *v18 = incomingVideoCall == 0;
    *&v18[4] = 1024;
    *&v18[6] = firstObject != 0;
    v19 = 1024;
    v20 = shouldSuppressRingtone;
    _os_log_impl(&_mh_execute_header, ringtoneController, OS_LOG_TYPE_DEFAULT, "Not playing call announcement since incomingCall is nil (%d) or activeCalls is non-nil (%d) or incomingCall shouldSuppressRingtone (%d)", &v17, 0x14u);
  }

LABEL_17:
}

- (void)_playDowntimeStartingAnnouncementForCallIfNecessary
{
  v3 = +[TUCallCenter sharedInstance];
  displayedAudioAndVideoCalls = [v3 displayedAudioAndVideoCalls];
  firstObject = [displayedAudioAndVideoCalls firstObject];
  v6 = firstObject;
  if (firstObject)
  {
    frontmostAudioOrVideoCall = firstObject;
  }

  else
  {
    v8 = +[TUCallCenter sharedInstance];
    frontmostAudioOrVideoCall = [v8 frontmostAudioOrVideoCall];
  }

  v9 = [(PHAudioInterruptionController *)self handlesForCall:frontmostAudioOrVideoCall];
  v10 = [(PHAudioInterruptionController *)self bundleIdentifierForCall:frontmostAudioOrVideoCall];
  if ([v9 count] && objc_msgSend(v10, "length"))
  {
    v11 = +[TUCallCenter sharedInstance];
    callFilterController = [v11 callFilterController];
    v13 = [callFilterController willRestrictAddresses:v9 forBundleIdentifier:v10];

    v14 = +[TUCallCenter sharedInstance];
    routeController = [v14 routeController];
    pickedRoute = [routeController pickedRoute];
    isSpeaker = [pickedRoute isSpeaker];

    v18 = +[TUCallCenter sharedInstance];
    v19 = [v18 countOfCallsPassingTest:&stru_1003571D8];

    ringtoneController = sub_100004F84();
    v21 = os_log_type_enabled(ringtoneController, OS_LOG_TYPE_DEFAULT);
    if (!frontmostAudioOrVideoCall || !v13 || (isSpeaker & 1) != 0 || v19)
    {
      if (v21)
      {
        v22 = 67109634;
        *v23 = v13;
        *&v23[4] = 1024;
        *&v23[6] = isSpeaker ^ 1;
        v24 = 2112;
        v25 = frontmostAudioOrVideoCall;
        _os_log_impl(&_mh_execute_header, ringtoneController, OS_LOG_TYPE_DEFAULT, "Not playing downtime starting alert: callWillEndDuringDowntime: %d currentRouteIsNotSpeaker: %d call: %@", &v22, 0x18u);
      }
    }

    else
    {
      if (v21)
      {
        v22 = 138412290;
        *v23 = frontmostAudioOrVideoCall;
        _os_log_impl(&_mh_execute_header, ringtoneController, OS_LOG_TYPE_DEFAULT, "Playing downtime starting alert for call %@", &v22, 0xCu);
      }

      ringtoneController = [(PHAudioInterruptionController *)self ringtoneController];
      [ringtoneController playDowntimeStartingAnnouncementForCall:frontmostAudioOrVideoCall];
    }
  }
}

- (id)handlesForCall:(id)call
{
  callCopy = call;
  remoteParticipantHandles = [callCopy remoteParticipantHandles];
  v5 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [remoteParticipantHandles count]);

  if ([callCopy isConversation])
  {
    v6 = +[TUCallCenter sharedInstance];
    v31 = callCopy;
    v7 = [v6 activeConversationForCall:callCopy];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v30 = v7;
    activeRemoteParticipants = [v7 activeRemoteParticipants];
    v9 = [activeRemoteParticipants countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v37;
      v12 = TUCallFilterUnknownCallerAddress;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v37 != v11)
          {
            objc_enumerationMutation(activeRemoteParticipants);
          }

          v14 = *(*(&v36 + 1) + 8 * i);
          handle = [v14 handle];
          value = [handle value];
          if ([value length])
          {
            handle2 = [v14 handle];
            value2 = [handle2 value];
          }

          else
          {
            value2 = v12;
          }

          [v5 addObject:value2];
        }

        v10 = [activeRemoteParticipants countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v10);
    }

    callCopy = v31;
  }

  if (![v5 count])
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    remoteParticipantHandles2 = [callCopy remoteParticipantHandles];
    v20 = [remoteParticipantHandles2 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v33;
      v23 = TUCallFilterUnknownCallerAddress;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v33 != v22)
          {
            objc_enumerationMutation(remoteParticipantHandles2);
          }

          v25 = *(*(&v32 + 1) + 8 * j);
          value3 = [v25 value];
          if ([value3 length])
          {
            value4 = [v25 value];
          }

          else
          {
            value4 = v23;
          }

          v28 = value4;

          [v5 addObject:v28];
        }

        v21 = [remoteParticipantHandles2 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v21);
    }
  }

  return v5;
}

- (id)bundleIdentifierForCall:(id)call
{
  callCopy = call;
  provider = [callCopy provider];
  isTelephonyProvider = [provider isTelephonyProvider];

  if (isTelephonyProvider)
  {
    v6 = TUBundleIdentifierMobilePhoneApplication;
LABEL_5:
    bundleIdentifier = v6;
    goto LABEL_7;
  }

  provider2 = [callCopy provider];
  isFaceTimeProvider = [provider2 isFaceTimeProvider];

  if (isFaceTimeProvider)
  {
    v6 = TUPreferredFaceTimeBundleIdentifier();
    goto LABEL_5;
  }

  provider3 = [callCopy provider];
  bundleIdentifier = [provider3 bundleIdentifier];

LABEL_7:

  return bundleIdentifier;
}

@end