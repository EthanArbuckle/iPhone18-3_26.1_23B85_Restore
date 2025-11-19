@interface PHAudioInterruptionController
+ (id)sharedInstance;
- (PHAudioInterruptionController)init;
- (id)bundleIdentifierForCall:(id)a3;
- (id)handlesForCall:(id)a3;
- (void)_callShouldSuppressRingtoneChanged:(id)a3;
- (void)_callStatusChanged:(id)a3;
- (void)_playAnnouncementForIncomingCallIfNecessary;
- (void)_playDowntimeStartingAnnouncementForCallIfNecessary;
- (void)_updateAudioInterruptionsForCall:(id)a3;
- (void)dealloc;
- (void)handlePHRingtoneControllerAudioSessionIdentifierDidChangeNotification:(id)a3;
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
    v8 = [v7 frontmostAudioOrVideoCall];

    if (v8)
    {
      v9 = sub_100004F84();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "INTERRUPT: ... upon creation there was a current call, updating interruptions for %@", buf, 0xCu);
      }

      [(PHAudioInterruptionController *)v2 _updateAudioInterruptionsForCall:v8];
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

- (void)_callStatusChanged:(id)a3
{
  v4 = [a3 object];
  [(PHAudioInterruptionController *)self _updateAudioInterruptionsForCall:v4];
}

- (void)handlePHRingtoneControllerAudioSessionIdentifierDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = self;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v6, 0x16u);
  }

  [(PHAudioInterruptionController *)self _playAnnouncementForIncomingCallIfNecessary];
}

- (void)_updateAudioInterruptionsForCall:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = [v4 status];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "INTERRUPT: Call Status changing to: %d", v7, 8u);
  }

  v6 = [(PHAudioInterruptionController *)self ringtoneController];
  [v6 stopAnnouncement];

  if ([v4 resolvedCallStatus] == 4)
  {
    [(PHAudioInterruptionController *)self _playAnnouncementForIncomingCallIfNecessary];
  }
}

- (void)_callShouldSuppressRingtoneChanged:(id)a3
{
  v4 = [a3 object];
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "INTERRUPT: shouldSuppressRingtoneChanged notification for call: %@", &v7, 0xCu);
  }

  if (v4 && [v4 resolvedCallStatus] == 4)
  {
    if ([v4 shouldSuppressRingtone])
    {
      v6 = [(PHAudioInterruptionController *)self ringtoneController];
      [v6 stopAnnouncement];
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
  v4 = [v3 resolvedIncomingCall];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = +[TUCallCenter sharedInstance];
    v6 = [v7 incomingVideoCall];
  }

  v8 = +[TUCallCenter sharedInstance];
  v9 = [v8 displayedAudioAndVideoCalls];
  v10 = [v9 firstObject];

  v11 = sub_100004F84();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    *v18 = v6;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "INTERRUPT: incomingCall: %@", &v17, 0xCu);
  }

  if (v10)
  {
    if (v10 != v6)
    {
      goto LABEL_15;
    }
  }

  else if (!v6)
  {
    goto LABEL_15;
  }

  if (([v6 shouldSuppressRingtone] & 1) == 0)
  {
    v12 = [v6 announceProviderIdentifier];
    v13 = [v12 isEqualToString:TUBundleIdentifierInCallServiceApplication];

    if (v13)
    {
      v14 = sub_100004F84();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        *v18 = v6;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Playing call announcement for incoming call %@", &v17, 0xCu);
      }

      v15 = [(PHAudioInterruptionController *)self ringtoneController];
      [v15 playAnnouncementForCall:v6];
      goto LABEL_17;
    }
  }

LABEL_15:
  v15 = sub_100004F84();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v6 shouldSuppressRingtone];
    v17 = 67109632;
    *v18 = v6 == 0;
    *&v18[4] = 1024;
    *&v18[6] = v10 != 0;
    v19 = 1024;
    v20 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Not playing call announcement since incomingCall is nil (%d) or activeCalls is non-nil (%d) or incomingCall shouldSuppressRingtone (%d)", &v17, 0x14u);
  }

LABEL_17:
}

- (void)_playDowntimeStartingAnnouncementForCallIfNecessary
{
  v3 = +[TUCallCenter sharedInstance];
  v4 = [v3 displayedAudioAndVideoCalls];
  v5 = [v4 firstObject];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = +[TUCallCenter sharedInstance];
    v7 = [v8 frontmostAudioOrVideoCall];
  }

  v9 = [(PHAudioInterruptionController *)self handlesForCall:v7];
  v10 = [(PHAudioInterruptionController *)self bundleIdentifierForCall:v7];
  if ([v9 count] && objc_msgSend(v10, "length"))
  {
    v11 = +[TUCallCenter sharedInstance];
    v12 = [v11 callFilterController];
    v13 = [v12 willRestrictAddresses:v9 forBundleIdentifier:v10];

    v14 = +[TUCallCenter sharedInstance];
    v15 = [v14 routeController];
    v16 = [v15 pickedRoute];
    v17 = [v16 isSpeaker];

    v18 = +[TUCallCenter sharedInstance];
    v19 = [v18 countOfCallsPassingTest:&stru_1003571D8];

    v20 = sub_100004F84();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (!v7 || !v13 || (v17 & 1) != 0 || v19)
    {
      if (v21)
      {
        v22 = 67109634;
        *v23 = v13;
        *&v23[4] = 1024;
        *&v23[6] = v17 ^ 1;
        v24 = 2112;
        v25 = v7;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Not playing downtime starting alert: callWillEndDuringDowntime: %d currentRouteIsNotSpeaker: %d call: %@", &v22, 0x18u);
      }
    }

    else
    {
      if (v21)
      {
        v22 = 138412290;
        *v23 = v7;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Playing downtime starting alert for call %@", &v22, 0xCu);
      }

      v20 = [(PHAudioInterruptionController *)self ringtoneController];
      [v20 playDowntimeStartingAnnouncementForCall:v7];
    }
  }
}

- (id)handlesForCall:(id)a3
{
  v3 = a3;
  v4 = [v3 remoteParticipantHandles];
  v5 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v4 count]);

  if ([v3 isConversation])
  {
    v6 = +[TUCallCenter sharedInstance];
    v31 = v3;
    v7 = [v6 activeConversationForCall:v3];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v30 = v7;
    v8 = [v7 activeRemoteParticipants];
    v9 = [v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
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
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v36 + 1) + 8 * i);
          v15 = [v14 handle];
          v16 = [v15 value];
          if ([v16 length])
          {
            v17 = [v14 handle];
            v18 = [v17 value];
          }

          else
          {
            v18 = v12;
          }

          [v5 addObject:v18];
        }

        v10 = [v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v10);
    }

    v3 = v31;
  }

  if (![v5 count])
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v19 = [v3 remoteParticipantHandles];
    v20 = [v19 countByEnumeratingWithState:&v32 objects:v40 count:16];
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
            objc_enumerationMutation(v19);
          }

          v25 = *(*(&v32 + 1) + 8 * j);
          v26 = [v25 value];
          if ([v26 length])
          {
            v27 = [v25 value];
          }

          else
          {
            v27 = v23;
          }

          v28 = v27;

          [v5 addObject:v28];
        }

        v21 = [v19 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v21);
    }
  }

  return v5;
}

- (id)bundleIdentifierForCall:(id)a3
{
  v3 = a3;
  v4 = [v3 provider];
  v5 = [v4 isTelephonyProvider];

  if (v5)
  {
    v6 = TUBundleIdentifierMobilePhoneApplication;
LABEL_5:
    v9 = v6;
    goto LABEL_7;
  }

  v7 = [v3 provider];
  v8 = [v7 isFaceTimeProvider];

  if (v8)
  {
    v6 = TUPreferredFaceTimeBundleIdentifier();
    goto LABEL_5;
  }

  v10 = [v3 provider];
  v9 = [v10 bundleIdentifier];

LABEL_7:

  return v9;
}

@end