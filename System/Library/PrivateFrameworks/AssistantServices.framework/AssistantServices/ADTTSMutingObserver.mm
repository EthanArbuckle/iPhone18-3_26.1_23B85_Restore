@interface ADTTSMutingObserver
+ (id)sharedInstance;
- (ADTTSMutingObserver)init;
- (BOOL)_currentRouteIsHandsFree;
- (void)_cleanupAudioRouteOnMainThread;
- (void)_listenForAudioRouteChanges;
- (void)_listenForMuteStateChanges;
- (void)_muteStateChanged:(id)changed;
- (void)_notifyObservers:(BOOL)observers;
- (void)_stopListeningForAudioRouteChanges;
- (void)_stopListeningForMuteStateChanges;
- (void)_updateAudioRouteOnMainThread;
- (void)_useDeviceSpeakerForTTSPreferenceChanged;
- (void)addHandsFreeStateObserver:(id)observer;
- (void)audioSessionController:(id)controller didReceiveAudioSessionOwnerLostNotification:(id)notification;
- (void)audioSessionController:(id)controller didReceiveAudioSessionOwnerResetNotification:(id)notification;
- (void)audioSessionController:(id)controller didReceiveAudioSessionRouteChangeNotificationWithUserInfo:(id)info;
- (void)dealloc;
- (void)removeHandsFreeStateObserver:(id)observer;
@end

@implementation ADTTSMutingObserver

- (void)_listenForMuteStateChanges
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[ADTTSMutingObserver _listenForMuteStateChanges]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Listening for mute state changes", &v6, 0xCu);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  v5 = +[ADSystemMuteModeObserver sharedInstance];
  [v4 addObserver:self selector:"_muteStateChanged:" name:@"ADMuteModeDidChangeNotification" object:v5];
}

+ (id)sharedInstance
{
  if (qword_100590540 != -1)
  {
    dispatch_once(&qword_100590540, &stru_100516BF0);
  }

  v3 = qword_100590538;

  return v3;
}

- (BOOL)_currentRouteIsHandsFree
{
  os_unfair_lock_lock(&self->_handsFreeLock);
  currentRouteIsHandsFree = self->_currentRouteIsHandsFree;
  os_unfair_lock_unlock(&self->_handsFreeLock);
  return currentRouteIsHandsFree;
}

- (void)_updateAudioRouteOnMainThread
{
  v3 = +[ADSpeechManager sharedManager];
  audioSessionController = [v3 audioSessionController];
  getAudioSessionID = [audioSessionController getAudioSessionID];

  v6 = [AVAudioSession retrieveSessionWithID:getAudioSessionID];
  currentRoute = [v6 currentRoute];
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    outputs = [currentRoute outputs];
    lastObject = [outputs lastObject];
    portType = [lastObject portType];
    *buf = 136315394;
    v27 = "[ADTTSMutingObserver _updateAudioRouteOnMainThread]";
    v28 = 2112;
    v29 = portType;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Checking if route is hands free %@", buf, 0x16u);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  outputs2 = [currentRoute outputs];
  v14 = [outputs2 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    while (2)
    {
      v17 = 0;
      do
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(outputs2);
        }

        portType2 = [*(*(&v21 + 1) + 8 * v17) portType];
        v19 = [portType2 isEqualToString:AVAudioSessionPortBuiltInSpeaker];

        if (!v19)
        {
          v20 = 1;
          goto LABEL_13;
        }

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [outputs2 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v20 = 0;
LABEL_13:

  os_unfair_lock_lock(&self->_handsFreeLock);
  self->_currentRouteIsHandsFree = v20;
  os_unfair_lock_unlock(&self->_handsFreeLock);
}

- (void)audioSessionController:(id)controller didReceiveAudioSessionOwnerResetNotification:(id)notification
{
  notificationCopy = notification;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v9 = "[ADTTSMutingObserver audioSessionController:didReceiveAudioSessionOwnerResetNotification:]";
    v10 = 2112;
    v11 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Audio owner reset %@", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100213C90;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)audioSessionController:(id)controller didReceiveAudioSessionOwnerLostNotification:(id)notification
{
  notificationCopy = notification;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v9 = "[ADTTSMutingObserver audioSessionController:didReceiveAudioSessionOwnerLostNotification:]";
    v10 = 2112;
    v11 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Audio owner lost %@", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100213DFC;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)audioSessionController:(id)controller didReceiveAudioSessionRouteChangeNotificationWithUserInfo:(id)info
{
  infoCopy = info;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v9 = "[ADTTSMutingObserver audioSessionController:didReceiveAudioSessionRouteChangeNotificationWithUserInfo:]";
    v10 = 2112;
    v11 = infoCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Audio route changed %@", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100213F68;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)removeHandsFreeStateObserver:(id)observer
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100214048;
  v4[3] = &unk_10051E010;
  v4[4] = self;
  observerCopy = observer;
  v3 = observerCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)addHandsFreeStateObserver:(id)observer
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100214164;
  v4[3] = &unk_10051E010;
  v4[4] = self;
  observerCopy = observer;
  v3 = observerCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)_useDeviceSpeakerForTTSPreferenceChanged
{
  AFBackedUpPreferencesSynchronize();
  v3 = +[AFPreferences sharedPreferences];
  useDeviceSpeakerForTTS = [v3 useDeviceSpeakerForTTS];

  if (useDeviceSpeakerForTTS != self->_useDeviceSpeakerForTTSPreference)
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[ADTTSMutingObserver _useDeviceSpeakerForTTSPreferenceChanged]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Use device speaker for TTS preference changed!", &v6, 0xCu);
    }

    self->_useDeviceSpeakerForTTSPreference = useDeviceSpeakerForTTS;
    if (useDeviceSpeakerForTTS == 1)
    {
      [(ADTTSMutingObserver *)self _listenForMuteStateChanges];
    }

    else
    {
      [(ADTTSMutingObserver *)self _stopListeningForMuteStateChanges];
    }

    [(ADTTSMutingObserver *)self _notifyObservers:sub_100004CAC()];
  }
}

- (void)_stopListeningForMuteStateChanges
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[ADTTSMutingObserver _stopListeningForMuteStateChanges]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Stopping listening for mute state changes", &v5, 0xCu);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"ADMuteModeDidChangeNotification" object:0];
}

- (void)_stopListeningForAudioRouteChanges
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[ADTTSMutingObserver _stopListeningForAudioRouteChanges]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Stopping listening for audio route changes", &v6, 0xCu);
  }

  v4 = +[ADSpeechManager sharedManager];
  audioSessionController = [v4 audioSessionController];
  [audioSessionController unregisterObserver:self];
}

- (void)_listenForAudioRouteChanges
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[ADTTSMutingObserver _listenForAudioRouteChanges]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Listening for audio route changes", &v6, 0xCu);
  }

  v4 = +[ADSpeechManager sharedManager];
  audioSessionController = [v4 audioSessionController];
  [audioSessionController registerObserver:self];
}

- (void)_muteStateChanged:(id)changed
{
  changedCopy = changed;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v8 = "[ADTTSMutingObserver _muteStateChanged:]";
    v9 = 2112;
    v10 = changedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Mute state changed %@", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100214774;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_notifyObservers:(BOOL)observers
{
  observers = self->_observers;
  v4 = &kCFBooleanTrue;
  if (!observers)
  {
    v4 = &kCFBooleanFalse;
  }

  CFBagApplyFunction(observers, sub_100017398, *v4);
}

- (void)_cleanupAudioRouteOnMainThread
{
  os_unfair_lock_lock(&self->_handsFreeLock);
  self->_currentRouteIsHandsFree = 0;

  os_unfair_lock_unlock(&self->_handsFreeLock);
}

- (void)dealloc
{
  observers = self->_observers;
  if (observers)
  {
    CFRelease(observers);
  }

  v4.receiver = self;
  v4.super_class = ADTTSMutingObserver;
  [(ADTTSMutingObserver *)&v4 dealloc];
}

- (ADTTSMutingObserver)init
{
  v6.receiver = self;
  v6.super_class = ADTTSMutingObserver;
  v2 = [(ADTTSMutingObserver *)&v6 init];
  if (v2)
  {
    v2->_observers = CFBagCreateMutable(0, 0, 0);
    v2->_handsFreeLock._os_unfair_lock_opaque = 0;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10021493C;
    block[3] = &unk_10051DFE8;
    v5 = v2;
    dispatch_async(&_dispatch_main_q, block);
  }

  return v2;
}

@end