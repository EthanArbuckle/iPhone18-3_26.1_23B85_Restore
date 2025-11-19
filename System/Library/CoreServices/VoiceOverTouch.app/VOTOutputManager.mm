@interface VOTOutputManager
+ (NSArray)previousSoundsPlayed;
+ (id)outputManager;
+ (void)clearPreviousSoundsPlayed;
+ (void)initialize;
+ (void)logSoundPlayed:(id)a3;
- (BOOL)_isHeadphoneRoute:(id)a3;
- (BOOL)_isHeadsetRoute:(id)a3;
- (BOOL)_isRouteExternalHDMIRoute:(id)a3;
- (BOOL)airTunesRouteIsAirPlaying;
- (BOOL)externalAudioRouteSelected;
- (BOOL)isCurrentRouteConsideredExternal:(id)a3;
- (BOOL)isPaused;
- (BOOL)isRoutePicked:(id)a3;
- (BOOL)isRouteWireless:(id)a3;
- (BOOL)isSpeaking;
- (BOOL)isSystemMuted;
- (BOOL)isWirelessRoutePicked:(id)a3;
- (BOOL)replacesCharacterAsPunctuation:(unsigned __int16)a3;
- (NSArray)queuedRequests;
- (VOTOutputManager)init;
- (double)volume;
- (float)systemVolume;
- (void)_activeRouteChanged:(id)a3;
- (void)_dispatchNextQueuedRequest;
- (void)_handleProcessRequest:(id)a3;
- (void)_handleRequestFinished:(id)a3;
- (void)_holdCurrentRequest;
- (void)_notifyObserversOutputManagerDidFinishProcessingQueuedRequests;
- (void)_notifyObserversOutputManagerWillProcessNextRequest:(id)a3;
- (void)_resumeCurrentRequest;
- (void)_silenceRequestsForTimeInterval:(id)a3;
- (void)_systemVolumeDidChange:(id)a3;
- (void)_updateActiveRoutes;
- (void)_updateExternalRoutesAvailable;
- (void)_updateSoundCurtain;
- (void)addOutputManagerObserver:(id)a3;
- (void)addVOSEventFinishedHandler:(id)a3 forIdentifier:(id)a4;
- (void)addVOSEventStartedHandler:(id)a3 forIdentifier:(id)a4;
- (void)continueSpeaking;
- (void)dealloc;
- (void)disableAudioSession:(id)a3 userDelay:(double)a4;
- (void)dispatcher:(id)a3 handleEvent:(id)a4 soundPack:(id)a5 hapticPack:(id)a6;
- (void)enableAudioSession:(id)a3;
- (void)finishedOutputRequest:(id)a3;
- (void)handleEvent:(id)a3;
- (void)pauseSpeakingAtBoundary:(int)a3;
- (void)playSoundFast:(id)a3 startedBlock:(id)a4 completionBlock:(id)a5;
- (void)removeAllAudioSessionEnablers;
- (void)removeAllOutputManagerObservers;
- (void)removeOutputManagerObserver:(id)a3;
- (void)selectAudioRoute:(BOOL)a3;
- (void)sendEvent:(id)a3;
- (void)setSoundCurtainEnabled:(BOOL)a3;
- (void)setSystemVolume:(float)a3;
- (void)shutdown;
- (void)silenceOutputForTimeInterval:(double)a3;
- (void)speakSimpleString:(id)a3 braille:(BOOL)a4 language:(id)a5;
- (void)stopSpeakingAtBoundary:(int)a3 allRequests:(BOOL)a4 sessionDeactivationDelay:(id)a5;
- (void)toggleAudioSessionActive:(BOOL)a3;
- (void)toggleSystemMute;
- (void)updateAudioSessionProperties;
- (void)updateSupportedLanguageMap;
- (void)updateWithCurrentRoute;
@end

@implementation VOTOutputManager

+ (void)initialize
{
  if (qword_1001FE9C8 != -1)
  {
    sub_100127B20();
  }
}

- (VOTOutputManager)init
{
  v56.receiver = self;
  v56.super_class = VOTOutputManager;
  v2 = [(VOTOutputManager *)&v56 init];
  if (v2)
  {
    v3 = [[SCRCThreadKey alloc] initWithObject:v2];
    threadKey = v2->_threadKey;
    v2->_threadKey = v3;

    v2->_cachedRate = 3.40282347e38;
    v5 = objc_opt_new();
    queuedOutputRequests = v2->_queuedOutputRequests;
    v2->_queuedOutputRequests = v5;

    v7 = [objc_allocWithZone(NSMutableArray) init];
    requestRunners = v2->_requestRunners;
    v2->_requestRunners = v7;

    v9 = [objc_allocWithZone(VOTOutputRequestRunner) init];
    [(NSMutableArray *)v2->_requestRunners addObject:v9];
    v10 = [objc_allocWithZone(VOTOutputRequestRunner) init];
    [(NSMutableArray *)v2->_requestRunners addObject:v10];
    v11 = [objc_allocWithZone(AXIndexMap) init];
    components = v2->_components;
    v2->_components = v11;

    v13 = objc_alloc_init(AXAccessQueue);
    audioSessionQueue = v2->_audioSessionQueue;
    v2->_audioSessionQueue = v13;

    v15 = [[AXAccessQueueTimer alloc] initWithTargetAccessQueue:v2->_audioSessionQueue];
    inactivateAudioTimer = v2->_inactivateAudioTimer;
    v2->_inactivateAudioTimer = v15;

    [(AXAccessQueueTimer *)v2->_inactivateAudioTimer setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    v17 = objc_alloc_init(NSMutableSet);
    audioSessionUsers = v2->_audioSessionUsers;
    v2->_audioSessionUsers = v17;

    v19 = +[NSMutableArray array];
    currentlyRunningRequests = v2->_currentlyRunningRequests;
    v2->_currentlyRunningRequests = v19;

    if ([(VOTOutputManager *)v2 externalAudioRouteSelected])
    {
      if (v2->_currentExternalRoutingInfo.isHeadphoneBT || v2->_currentExternalRoutingInfo.isHeadsetBT)
      {
        v21 = VOTLogAudio();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Not auto-selecting external route at init because route is HeadphoneBT or HeadsetBT", buf, 2u);
        }
      }

      else
      {
        [VOTSharedWorkspace setAudioDestinationRequestExternal:1];
      }
    }

    [(VOTOutputManager *)v2 updateSupportedLanguageMap];
    v22 = +[NSNotificationCenter defaultCenter];
    [v22 addObserver:v2 selector:"updateSupportedLanguageMap" name:NSCurrentLocaleDidChangeNotification object:0];

    v23 = [objc_allocWithZone(VOTOutputSpeechComponent) init];
    if (v23)
    {
      [(AXIndexMap *)v2->_components setObject:v23 forIndex:0];
    }

    v24 = [objc_allocWithZone(VOTOutputSoundComponent) init];

    if (v24)
    {
      [(AXIndexMap *)v2->_components setObject:v24 forIndex:1];
    }

    v25 = [objc_allocWithZone(VOTOutputBrailleComponent) init];
    if (v25)
    {
      [(AXIndexMap *)v2->_components setObject:v25 forIndex:3];
    }

    v26 = dispatch_queue_create("voiceover.avaccessqueue.output", 0);
    avAccessQueue = v2->_avAccessQueue;
    v2->_avAccessQueue = v26;

    v28 = +[NSNotificationCenter defaultCenter];
    [v28 addObserver:v2 selector:"_voiceOverVolumeChanged:" name:kAXSVoiceOverTouchVolumeChangedNotification object:0];

    v29 = +[AXSettings sharedInstance];
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_10000ADD0;
    v53[3] = &unk_1001C76E8;
    v30 = v2;
    v54 = v30;
    [v29 registerUpdateBlock:v53 forRetrieveSelector:"voiceOverSoundCurtain" withListener:v30];

    v31 = +[NSNotificationCenter defaultCenter];
    v32 = +[NSOperationQueue mainQueue];
    v48 = _NSConcreteStackBlock;
    v49 = 3221225472;
    v50 = sub_10000ADD8;
    v51 = &unk_1001C7710;
    v33 = v30;
    v52 = v33;
    v34 = [v31 addObserverForName:@"VOTBrailleDisplayActiveStateChanged" object:0 queue:v32 usingBlock:&v48];

    [v33 _updateSoundCurtain];
    v35 = +[AVSystemController sharedAVSystemController];
    v57[0] = AVSystemController_SystemVolumeDidChangeNotification;
    v57[1] = AVSystemController_ActiveAudioRouteDidChangeNotification;
    v36 = [NSArray arrayWithObjects:v57 count:2];
    [v35 setAttribute:v36 forKey:AVSystemController_SubscribeToNotificationsAttribute error:0];

    v37 = +[NSNotificationCenter defaultCenter];
    [v37 addObserver:v33 selector:"_systemVolumeDidChange:" name:AVSystemController_SystemVolumeDidChangeNotification object:v35];
    [v37 addObserver:v33 selector:"_activeRouteChanged:" name:AVSystemController_ActiveAudioRouteDidChangeNotification object:v35];
    [v37 addObserver:v33 selector:"_activeRouteChanged:" name:TUCallCenterCallStartedConnectingNotification object:v35];
    [v33 callStatusChanged];
    v38 = +[NSHashTable weakObjectsHashTable];
    v39 = v33[18];
    v33[18] = v38;

    v40 = objc_alloc_init(NSLock);
    v41 = v33[19];
    v33[19] = v40;

    v42 = objc_opt_new();
    [v42 setComponents:4];
    [v42 setHapticEngineUsesAutoShutdown:1];
    [v42 setHapticEngineAutoShutdownTimeout:15.0];
    [v42 setHapticEngineUsesHapticsOnly:1];
    v43 = [[AXMOutputManager alloc] initWithConfiguration:v42];
    v44 = v33[20];
    v33[20] = v43;

    [v33[20] enableWithCompletion:&stru_1001C7730];
    v45 = +[VOSOutputEventDispatcher sharedInstance];
    [v45 addEventHandler:v33];

    v46 = v33;
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[VOSOutputEventDispatcher sharedInstance];
  [v3 removeEventHandler:self];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(LocalCenter, self, AXSpringBoardUserChangedAudioRouteNotification, 0);
  v6.receiver = self;
  v6.super_class = VOTOutputManager;
  [(VOTOutputManager *)&v6 dealloc];
}

+ (id)outputManager
{
  if (qword_1001FE9D0 != -1)
  {
    sub_100127B34();
  }

  v3 = qword_1001FE9B0;

  return v3;
}

- (NSArray)queuedRequests
{
  v2 = [(NSMutableArray *)self->_queuedOutputRequests copy];

  return v2;
}

- (void)handleEvent:(id)a3
{
  v10 = a3;
  v4 = [v10 objectForIndex:1];
  v5 = [v4 unsignedIntValue];

  if (v5 == 3)
  {
    [(VOTOutputManager *)self _handleRequestFinished:v10];
  }

  else
  {
    if (v5 != 2)
    {
      goto LABEL_8;
    }

    v6 = [(VOTOutputManager *)self dateToResumeRequests];

    if (v6)
    {
      v7 = +[NSDate date];
      v8 = [(VOTOutputManager *)self dateToResumeRequests];
      v9 = [v7 compare:v8];

      if (v9 == -1)
      {
        goto LABEL_8;
      }

      [(VOTOutputManager *)self setDateToResumeRequests:0];
    }

    [(VOTOutputManager *)self _handleProcessRequest:v10];
  }

LABEL_8:
}

- (void)updateSupportedLanguageMap
{
  v6 = [VOTSharedWorkspace systemSpokenLanguage];
  v3 = +[AXLanguageManager sharedInstance];
  v4 = [v3 dialectForLanguageID:v6];
  supportedLanguageMap = self->_supportedLanguageMap;
  self->_supportedLanguageMap = v4;

  if (!self->_supportedLanguageMap)
  {
    _AXAssert();
  }
}

- (void)_handleRequestFinished:(id)a3
{
  v4 = [a3 objectForIndex:14];
  v5 = [v4 completionDelegate];
  [v5 outputRequestFinished:v4];

  v6 = [v4 completionBlock];

  if (v6)
  {
    v7 = [v4 completionBlock];
    (v7)[2](v7, v4);
  }

  v8 = v4;
  AX_PERFORM_WITH_LOCK();
  v9 = [(NSMutableArray *)self->_requestRunners firstObject:_NSConcreteStackBlock];
  v10 = [v9 currentRequest];

  if (v8 && (!v10 || v10 == v8))
  {
    [(VOTOutputManager *)self _dispatchNextQueuedRequest];
  }
}

- (void)shutdown
{
  if ([VOTSharedWorkspace inUnitTestMode])
  {
    v3 = VOTLogAudio();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100127B48(v3);
    }
  }

  else
  {
    self->_shutdown = 1;
  }
}

- (void)_handleProcessRequest:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_shutdown)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v6 = [v4 objectForIndex:14];
    AX_PERFORM_WITH_LOCK();
    if (*(v8 + 24) == 1)
    {
      [(VOTOutputManager *)self _dispatchNextQueuedRequest];
    }

    _Block_object_dispose(&v7, 8);
  }
}

- (void)_dispatchNextQueuedRequest
{
  [(NSMutableArray *)self->_requestRunners objectAtIndex:0];
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10000BA1C;
  v9 = sub_10000BA2C;
  v3 = v10 = 0;
  AX_PERFORM_WITH_LOCK();
  v4 = v6[5];
  if (v4)
  {
    if ([v4 cancelRequest])
    {
      [(VOTOutputManager *)self _dispatchNextQueuedRequest];
    }

    else
    {
      AX_PERFORM_WITH_LOCK();
      [(VOTOutputManager *)self _notifyObserversOutputManagerWillProcessNextRequest:v6[5]];
      [v3 runOutputRequest:v6[5]];
    }
  }

  else
  {
    [(VOTOutputManager *)self _notifyObserversOutputManagerDidFinishProcessingQueuedRequests];
  }

  _Block_object_dispose(&v5, 8);
}

- (void)finishedOutputRequest:(id)a3
{
  v4 = a3;
  v6 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:3];
  v5 = [objc_allocWithZone(AXIndexMap) init];
  [v5 setObject:v6 forIndex:1];
  [v5 setObject:v4 forIndex:14];

  [(VOTOutputManager *)self performSelector:"handleEvent:" withThreadKey:self->_threadKey count:1 objects:v5];
}

- (void)setSystemVolume:(float)a3
{
  v6 = +[AVSystemController sharedAVSystemController];
  *&v4 = a3;
  [v6 setVolumeTo:@"Audio/Video" forCategory:v4];
  v5 = a3 * 0.8;
  *&v5 = v5;
  [v6 setVolumeTo:AVAudioSessionCategoryVoiceCommand forCategory:v5];
}

- (float)systemVolume
{
  v5 = 0.0;
  v2 = +[AVSystemController sharedAVSystemController];
  [v2 getVolume:&v5 forCategory:@"Audio/Video"];
  v3 = v5;

  return v3;
}

- (void)_systemVolumeDidChange:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:AVSystemController_AudioVolumeNotificationParameter];
  [v5 floatValue];
  v7 = v6;

  v8 = 1.0;
  if (v7 <= 1.0)
  {
    v8 = v7;
  }

  v9 = fmaxf(v8, 0.0);
  v10 = +[VOTExternalAccessoryManager accessoryManager];
  [v10 updateVolume:v9];

  [(VOTOutputManager *)self _updateSoundCurtain];
}

- (void)_updateSoundCurtain
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 voiceOverSoundCurtain];

  if (!v4)
  {
    goto LABEL_11;
  }

  if ([VOTSharedWorkspace telephonyIsActive])
  {
    v5 = VOTLogAudio();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v12 = 0;
      v6 = "Turning off sound curtain for active telephony";
      v7 = &v12;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, v6, v7, 2u);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v8 = +[VOTBrailleManager manager];
  v9 = [v8 brailleEnabled];

  if ((v9 & 1) == 0)
  {
    v5 = VOTLogAudio();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v11) = 0;
      v6 = "Turning off sound curtain for no braille display";
      v7 = &v11;
      goto LABEL_9;
    }

LABEL_10:

LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v10 = 1;
LABEL_12:
  [(VOTOutputManager *)self setSoundCurtainEnabled:v10, v11];
}

- (void)setSoundCurtainEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = +[AVSystemController sharedAVSystemController];
  if (v3 && [VOTSharedWorkspace voiceOverIsConfirmed])
  {
    v5 = [v4 attributeForKey:AVSystemController_FullMuteAttribute];
    v6 = [v5 BOOLValue];

    if ((v6 & 1) == 0)
    {
      v11 = 0;
      [v4 setAttribute:&__kCFBooleanTrue forKey:AVSystemController_FullMuteAttribute error:&v11];
      v7 = v11;
      if (!v7)
      {
        v9 = 1;
        goto LABEL_13;
      }

      v8 = VOTLogAudio();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100127C4C();
      }

      v9 = 1;
LABEL_12:

LABEL_13:
      byte_1001FE9D8 = v9;
    }
  }

  else if (byte_1001FE9D8 == 1)
  {
    v10 = 0;
    [v4 setAttribute:&__kCFBooleanFalse forKey:AVSystemController_FullMuteAttribute error:&v10];
    v7 = v10;
    v8 = VOTLogAudio();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100127BE4();
    }

    v9 = 0;
    goto LABEL_12;
  }
}

- (void)toggleSystemMute
{
  v2 = [(VOTOutputManager *)self isSystemMuted];
  v4 = +[AVSystemController sharedAVSystemController];
  v3 = [NSNumber numberWithBool:v2 ^ 1];
  [v4 setAttribute:v3 forKey:AVSystemController_FullMuteAttribute error:0];
}

- (BOOL)isSystemMuted
{
  v2 = +[AVSystemController sharedAVSystemController];
  v3 = [v2 attributeForKey:AVSystemController_FullMuteAttribute];
  v4 = [v3 BOOLValue];

  return v4;
}

- (double)volume
{
  v2 = [(VOTOutputManager *)self speechComponent];
  [v2 volume];
  v4 = v3;

  return v4;
}

- (BOOL)airTunesRouteIsAirPlaying
{
  v3 = [(VOTOutputManager *)self airTunesRouteIsAirPlayingTestingBlock];

  if (v3)
  {
    v4 = [(VOTOutputManager *)self airTunesRouteIsAirPlayingTestingBlock];
    LOBYTE(v5) = v4[2]();
  }

  else
  {
    v4 = +[AVSystemController sharedAVSystemController];
    v6 = [v4 attributeForKey:AVSystemController_CurrentExternalScreenAttribute];
    v5 = [v6 isEqualToString:AVSystemController_ExternalScreenType_AirPlay];
  }

  return v5;
}

- (BOOL)_isRouteExternalHDMIRoute:(id)a3
{
  v3 = [a3 objectForKey:AVController_RouteDescriptionKey_AVAudioRouteName];
  v4 = [v3 isEqualToString:@"HDMI"];

  return v4;
}

- (BOOL)isCurrentRouteConsideredExternal:(id)a3
{
  v4 = a3;
  v5 = [v4 valueForKey:AVController_RouteDescriptionKey_AVAudioRouteName];
  if ([v5 isEqualToString:@"AirTunes"])
  {
    v6 = [v4 objectForKey:AVController_RouteDescriptionKey_RouteSupportsAirPlayVideo];
    v7 = [v6 BOOLValue];

    v8 = [(VOTOutputManager *)self airTunesRouteIsAirPlaying];
    if (v7 && (v8 & 1) != 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    [(VOTOutputManager *)self airTunesRouteIsAirPlaying];
  }

  if (!-[VOTOutputManager _isRouteExternalHDMIRoute:](self, "_isRouteExternalHDMIRoute:", v4) || (+[AXSettings sharedInstance](AXSettings, "sharedInstance"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 voiceOverAudioFollowsHDMIAudio], v9, (v10 & 1) == 0))
  {
    if (([v5 isEqualToString:@"BluetoothLEOutput"] & 1) == 0)
    {
      v11 = [(VOTOutputManager *)self isWirelessRoutePicked:v4];
      goto LABEL_11;
    }
  }

LABEL_9:
  v11 = 1;
LABEL_11:

  return v11;
}

- (BOOL)_isHeadphoneRoute:(id)a3
{
  v3 = [a3 objectForKey:AVController_RouteDescriptionKey_AVAudioRouteName];
  v4 = [v3 isEqualToString:@"HeadphonesBT"];

  return v4;
}

- (BOOL)_isHeadsetRoute:(id)a3
{
  v3 = [a3 objectForKey:AVController_RouteDescriptionKey_AVAudioRouteName];
  v4 = [v3 isEqualToString:@"HeadsetBT"];

  return v4;
}

- (BOOL)isRoutePicked:(id)a3
{
  v3 = AVSystemController_RouteDescriptionKey_RouteCurrentlyPicked;
  v4 = a3;
  v5 = [v4 objectForKey:v3];
  v6 = [v5 BOOLValue];

  v7 = [v4 objectForKey:AVSystemController_RouteDescriptionKey_IsCurrentlyPickedOnPairedDevice];

  LOBYTE(v4) = [v7 BOOLValue];
  return v6 & (v4 ^ 1);
}

- (BOOL)isRouteWireless:(id)a3
{
  v3 = [a3 objectForKey:AVController_RouteDescriptionKey_RouteType];
  v4 = [v3 isEqualToString:AVController_PickableRouteType_Wireless];

  return v4;
}

- (BOOL)isWirelessRoutePicked:(id)a3
{
  v4 = a3;
  if ([(VOTOutputManager *)self isRouteWireless:v4])
  {
    v5 = [(VOTOutputManager *)self isRoutePicked:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_activeRouteChanged:(id)a3
{
  v4 = +[VOTWorkspace sharedWorkspace];
  v5 = [v4 currentCallState];

  if (v5 != 2)
  {
    avAccessQueue = self->_avAccessQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000C6A0;
    block[3] = &unk_1001C76E8;
    block[4] = self;
    dispatch_async(avAccessQueue, block);
  }
}

- (void)_updateActiveRoutes
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10000BA1C;
  v16 = sub_10000BA2C;
  v17 = 0;
  v3 = +[AVSystemController sharedAVSystemController];
  v4 = [v3 pickableRoutesForCategory:AVAudioSessionCategoryVoiceOver];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000C9C8;
  v11[3] = &unk_1001C7818;
  v11[4] = self;
  v11[5] = &v12;
  [v4 enumerateObjectsUsingBlock:v11];

  v5 = [v13[5] valueForKey:AVController_RouteDescriptionKey_AVAudioRouteName];
  if ([(VOTOutputManager *)self isCurrentRouteConsideredExternal:v13[5]])
  {
    v6 = VOTLogAudio();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Route considered external %{public}@", buf, 0xCu);
    }

    if ([(VOTOutputManager *)self _isHeadphoneRoute:v13[5]]|| [(VOTOutputManager *)self _isHeadsetRoute:v13[5]])
    {
      v7 = VOTLogAudio();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Not auto-selecting external route because route is HeadphoneBT or HeadsetBT", buf, 2u);
      }
    }

    else
    {
      [VOTSharedWorkspace setAudioDestinationRequestExternal:1];
    }
  }

  v8 = [(VOTOutputManager *)self currentRouteName];
  v9 = VOTLogAudio();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    state = self->_currentExternalRoutingInfo.state;
    *buf = 134218498;
    v19 = state;
    v20 = 2114;
    v21 = v5;
    v22 = 2114;
    v23 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Audio route changed %lu %{public}@-%{public}@", buf, 0x20u);
  }

  if (([v5 isEqualToString:v8] & 1) == 0)
  {
    [v5 isEqualToString:@"HDMI"];
    [(VOTOutputManager *)self updateAudioSessionProperties];
  }

  [(VOTOutputManager *)self _updateExternalRoutesAvailable];

  _Block_object_dispose(&v12, 8);
}

- (void)_updateExternalRoutesAvailable
{
  v2 = self;
  self->_externalAudioRouteIsHearingAid = 0;
  p_externalAudioRouteIsHearingAid = &self->_externalAudioRouteIsHearingAid;
  *&self->_externalRoutesAvailable = 0;
  v3 = +[AVSystemController sharedAVSystemController];
  v4 = [v3 pickableRoutesForCategory:@"Audio/Video"];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = &AVController_RouteDescriptionKey_AVAudioRouteName;
    v8 = @"AirTunes";
    v9 = *v28;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v12 = [v11 valueForKey:*v7];
        v13 = [(VOTOutputManager *)v2 isCurrentRouteConsideredExternal:v11];
        if ([v12 isEqualToString:v8])
        {
          [v11 objectForKey:AVController_RouteDescriptionKey_RouteCurrentlyPicked];
          v26 = v12;
          v14 = v2;
          v15 = v6;
          v16 = v9;
          v17 = v8;
          v19 = v18 = v7;
          v20 = [v19 BOOLValue];

          v7 = v18;
          v8 = v17;
          v9 = v16;
          v6 = v15;
          v2 = v14;
          v12 = v26;
          v13 &= v20;
        }

        if (![(VOTOutputManager *)v2 _isHeadphoneRoute:v11]&& ![(VOTOutputManager *)v2 _isHeadsetRoute:v11]&& ((v13 ^ 1) & 1) == 0)
        {
          v2->_externalRoutesAvailable = 1;
          v21 = [(VOTOutputManager *)v2 _isRouteExternalHDMIRoute:v11];
          v22 = p_externalAudioRouteIsHearingAid - 1;
          if ((v21 & 1) != 0 || (v23 = [v12 isEqualToString:@"BluetoothLEOutput"], v22 = p_externalAudioRouteIsHearingAid, v23))
          {
            *v22 = 1;
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v6);
  }
}

- (BOOL)externalAudioRouteSelected
{
  state = self->_currentExternalRoutingInfo.state;
  v3 = state == 2;
  if (!state)
  {
    self->_currentExternalRoutingInfo.state = 1;
    v5 = +[AVSystemController sharedAVSystemController];
    v6 = [v5 pickableRoutesForCategory:@"Audio/Video"];

    v7 = VOTLogAudio();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v28 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Pickable routes for A/V category: %{public}@", buf, 0xCu);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          if ([(VOTOutputManager *)self isCurrentRouteConsideredExternal:v13, v22])
          {
            v14 = [v13 objectForKey:AVController_RouteDescriptionKey_RouteCurrentlyPicked];
            v15 = [v14 BOOLValue];

            if (v15)
            {
              v16 = VOTLogAudio();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
              {
                *buf = 138543362;
                v28 = v13;
                _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Found external audio routes: %{public}@", buf, 0xCu);
              }

              self->_currentExternalRoutingInfo.state = 2;
              self->_selectedRouteIsHDMI = [(VOTOutputManager *)self _isRouteExternalHDMIRoute:v13];
              v17 = [v13 valueForKey:AVController_RouteDescriptionKey_RouteName];
              [(VOTOutputManager *)self setCurrentRouteName:v17];

              v18 = [v13 objectForKey:AVController_RouteDescriptionKey_RouteType];
              self->_currentExternalRoutingInfo.isWireless = [v18 isEqualToString:AVController_PickableRouteType_Wireless];

              v19 = [v13 objectForKey:AVController_RouteDescriptionKey_RouteSupportsAirPlayAudio];
              self->_currentExternalRoutingInfo.supportsAudio = [v19 BOOLValue];

              v20 = [v13 objectForKey:@"MirroringMode"];
              self->_currentExternalRoutingInfo.isMirroring = [v20 isEqualToString:@"MirroringMode_Default"];

              self->_currentExternalRoutingInfo.isHeadphoneBT = [(VOTOutputManager *)self _isHeadphoneRoute:v13];
              self->_currentExternalRoutingInfo.isHeadsetBT = [(VOTOutputManager *)self _isHeadsetRoute:v13];
              v3 = 1;
              goto LABEL_17;
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v3 = 0;
LABEL_17:

    [(VOTOutputManager *)self _updateExternalRoutesAvailable];
  }

  return v3;
}

- (void)selectAudioRoute:(BOOL)a3
{
  v3 = a3;
  v4 = +[AVSystemController sharedAVSystemController];
  v5 = [v4 pickableRoutesForCategory:@"Audio/Video"];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v30 = 0;
    v8 = 0;
    v9 = 0;
    v10 = *v32;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        v13 = [v12 valueForKey:AVController_RouteDescriptionKey_RouteType];
        v14 = [v12 objectForKey:AVController_RouteDescriptionKey_RouteCurrentlyPicked];
        v15 = [v14 BOOLValue];

        v16 = [(VOTOutputManager *)self isCurrentRouteConsideredExternal:v12];
        if ([v13 isEqual:AVController_PickableRouteType_Default])
        {
          v17 = v12;
          v18 = v8;
          v8 = v17;
        }

        if (v16)
        {
          v19 = v12;

          v30 = v19;
        }

        v9 |= v15 & v16 & v3 | (v15 ^ 1 | v16 | v3) ^ 1;
      }

      v7 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v7);
  }

  else
  {
    v30 = 0;
    v8 = 0;
    v9 = 0;
  }

  v20 = VOTLogAudio();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    LODWORD(v36[0]) = v9 & 1;
    WORD2(v36[0]) = 2114;
    *(v36 + 6) = obj;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "routes available [changing category:%d]: %{public}@", buf, 0x12u);
  }

  v21 = VOTLogAudio();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v36[0] = v8;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "default route: %{public}@", buf, 0xCu);
  }

  v22 = VOTLogAudio();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v36[0] = v30;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "external route: %{public}@", buf, 0xCu);
  }

  if (v9)
  {
    if (v3)
    {
      v23 = v8;
    }

    else
    {
      v23 = v30;
    }

    v24 = v23;
    if ([(VOTOutputManager *)self isRouteWireless:v24]&& ![(VOTOutputManager *)self isWirelessRoutePicked:v24])
    {
      v27 = VOTLogAudio();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v36[0] = v24;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "skipping wireless route selection: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, AXSpringBoardUserChangedAudioRouteNotification, 0, 0, 1u);
      v26 = VOTLogAudio();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v36[0] = v24;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Changed category: %{public}@", buf, 0xCu);
      }

      v27 = [v24 valueForKey:AVController_RouteDescriptionKey_RouteName];
      [(VOTOutputManager *)self setCurrentRouteName:v27];
    }
  }
}

- (void)updateWithCurrentRoute
{
  v4 = +[AVSystemController sharedAVSystemController];
  v3 = [v4 routeForCategory:AVAudioSessionCategoryVoiceOver];
  [(VOTOutputManager *)self setCurrentRouteName:v3];
}

- (void)updateAudioSessionProperties
{
  v2 = [(VOTOutputManager *)self speechComponent];
  [v2 updateAudioSessionProperties:0];
}

- (void)pauseSpeakingAtBoundary:(int)a3
{
  v3 = *&a3;
  v4 = [(VOTOutputManager *)self speechComponent];
  [v4 pauseSpeakingAtBoundary:v3];
}

- (void)continueSpeaking
{
  v2 = [(VOTOutputManager *)self speechComponent];
  [v2 continueSpeaking];
}

- (void)stopSpeakingAtBoundary:(int)a3 allRequests:(BOOL)a4 sessionDeactivationDelay:(id)a5
{
  v5 = a4;
  v6 = *&a3;
  v8 = a5;
  v9 = [(VOTOutputManager *)self speechComponent];
  [v9 stopSpeakingAtBoundary:v6 allRequests:v5 sessionDeactivationDelay:v8];
}

- (BOOL)isPaused
{
  v2 = [(VOTOutputManager *)self speechComponent];
  v3 = [v2 isPaused];

  return v3;
}

- (BOOL)isSpeaking
{
  v2 = [(VOTOutputManager *)self speechComponent];
  v3 = [v2 isSpeaking];

  return v3;
}

- (void)_holdCurrentRequest
{
  onHoldRunner = self->_onHoldRunner;
  if (onHoldRunner)
  {
    [(NSMutableArray *)self->_requestRunners insertObject:onHoldRunner atIndex:0];
    [(VOTOutputRequestRunner *)self->_onHoldRunner resume];
    v4 = self->_onHoldRunner;
    self->_onHoldRunner = 0;
  }

  [(VOTOutputManager *)self stopSpeakingAtBoundary:1];
  v5 = [(NSMutableArray *)self->_requestRunners objectAtIndex:0];
  v6 = self->_onHoldRunner;
  self->_onHoldRunner = v5;

  [(VOTOutputRequestRunner *)self->_onHoldRunner setOnHold:1];
  requestRunners = self->_requestRunners;

  [(NSMutableArray *)requestRunners removeObjectAtIndex:0];
}

- (void)_resumeCurrentRequest
{
  onHoldRunner = self->_onHoldRunner;
  if (onHoldRunner)
  {
    [(NSMutableArray *)self->_requestRunners insertObject:onHoldRunner atIndex:0];
    [(VOTOutputRequestRunner *)self->_onHoldRunner resume];
    v4 = self->_onHoldRunner;
    self->_onHoldRunner = 0;
  }
}

- (void)_silenceRequestsForTimeInterval:(id)a3
{
  v4 = a3;
  v8 = +[NSDate date];
  [v4 doubleValue];
  v6 = v5;

  v7 = [v8 dateByAddingTimeInterval:v6];
  [(VOTOutputManager *)self setDateToResumeRequests:v7];
}

- (void)silenceOutputForTimeInterval:(double)a3
{
  v5 = +[NSDate date];
  v6 = [v5 dateByAddingTimeInterval:a3];
  [(VOTOutputManager *)self setDateToResumeSounds:v6];

  threadKey = self->_threadKey;
  v8 = [NSNumber numberWithDouble:a3];
  [(VOTOutputManager *)self performSelector:"_silenceRequestsForTimeInterval:" withThreadKey:threadKey count:1 objects:v8];
}

- (void)toggleAudioSessionActive:(BOOL)a3
{
  v3 = a3;
  v5 = VOTLogAudio();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Toggle audio session: %d", buf, 8u);
  }

  v6 = +[AVAudioSession sharedInstance];
  v12 = 0;
  v7 = [v6 setActive:v3 withOptions:0 error:&v12];
  v8 = v12;

  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    v10 = VOTLogAudio();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100127CB4();
    }
  }

  self->_audioSessionActive = v3;
  v11 = VOTLogAudio();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_100127D1C();
  }
}

- (void)enableAudioSession:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    audioSessionQueue = self->_audioSessionQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000DBA4;
    v7[3] = &unk_1001C7778;
    v7[4] = self;
    v8 = v4;
    [(AXAccessQueue *)audioSessionQueue performSynchronousWritingBlock:v7];
  }
}

- (void)removeAllAudioSessionEnablers
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10000BA1C;
  v17 = sub_10000BA2C;
  v18 = 0;
  audioSessionQueue = self->_audioSessionQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000DEB4;
  v12[3] = &unk_1001C77F0;
  v12[4] = self;
  v12[5] = &v13;
  [(AXAccessQueue *)audioSessionQueue performSynchronousWritingBlock:v12];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v4 = v14[5];
  v5 = [v4 countByEnumeratingWithState:&v8 objects:v19 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [(VOTOutputManager *)self disableAudioSession:*(*(&v8 + 1) + 8 * v7), v8];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v8 objects:v19 count:16];
    }

    while (v5);
  }

  _Block_object_dispose(&v13, 8);
}

- (void)disableAudioSession:(id)a3 userDelay:(double)a4
{
  v6 = a3;
  audioSessionQueue = self->_audioSessionQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000DFB0;
  v9[3] = &unk_1001C7840;
  v9[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  [(AXAccessQueue *)audioSessionQueue performSynchronousWritingBlock:v9];
}

- (void)speakSimpleString:(id)a3 braille:(BOOL)a4 language:(id)a5
{
  v6 = a4;
  v10 = a3;
  v7 = a5;
  if ([v10 length])
  {
    v8 = [objc_allocWithZone(VOTOutputRequest) init];
    v9 = [v8 addString:v10 withLanguage:v7];
    if (v6)
    {
      sub_100009588(v8);
    }

    [v8 send];
  }
}

+ (NSArray)previousSoundsPlayed
{
  [qword_1001FE9C0 lock];
  v2 = [qword_1001FE9B8 copy];
  [qword_1001FE9C0 unlock];

  return v2;
}

+ (void)clearPreviousSoundsPlayed
{
  [qword_1001FE9C0 lock];
  [qword_1001FE9B8 removeAllObjects];
  v2 = qword_1001FE9C0;

  [v2 unlock];
}

- (void)playSoundFast:(id)a3 startedBlock:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![v8 length])
  {
    v17 = VOTLogAudio();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100127F24(v17);
    }

    goto LABEL_17;
  }

  [objc_opt_class() logSoundPlayed:v8];
  if ([v8 isEqualToString:@"Sounds/WrapBoundary.aiff"] && _AXSAutomationEnabled())
  {
    v11 = +[NSDistributedNotificationCenter defaultCenter];
    [v11 postNotificationName:@"VoiceOverEventOccurred" object:@"BoundaryEncountered"];
  }

  v12 = VOTLogAudio();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_100127E6C();
  }

  if (([VOTSharedWorkspace screenOn] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"Sounds/ScreenOff.aiff") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"Sounds/LockScreenTouchIDAuthenticated.aiff") & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"Sounds/BrailleDisplayDisconnected.aiff"))
  {
    v13 = [(VOTOutputManager *)self dateToResumeSounds];

    if (!v13)
    {
LABEL_14:
      v17 = [objc_allocWithZone(VOTOutputAction) initWithSoundPath:v8];
      v18 = [VOTSharedWorkspace applicationForCurrentElement];
      v19 = [v18 bundleIdentifier];
      [v17 setObject:v19 forVariant:43];

      v20 = [(VOTOutputManager *)self componentForType:1];
      [v20 playSoundFast:v17 startedBlock:v9 completionBlock:v10];

LABEL_17:
      goto LABEL_18;
    }

    v14 = +[NSDate date];
    v15 = [(VOTOutputManager *)self dateToResumeSounds];
    v16 = [v14 compare:v15];

    if (v16 != -1)
    {
      [(VOTOutputManager *)self setDateToResumeSounds:0];
      goto LABEL_14;
    }
  }

LABEL_18:
}

+ (void)logSoundPlayed:(id)a3
{
  v3 = a3;
  [qword_1001FE9C0 lock];
  if ([qword_1001FE9B8 count] >= 0xB)
  {
    [qword_1001FE9B8 removeObjectsInRange:{0, objc_msgSend(qword_1001FE9B8, "count") - 10}];
  }

  [qword_1001FE9B8 addObject:v3];
  [qword_1001FE9C0 unlock];
}

- (BOOL)replacesCharacterAsPunctuation:(unsigned __int16)a3
{
  v3 = a3;
  v4 = [(VOTOutputManager *)self speechComponent];
  LOBYTE(v3) = [v4 replacesCharacterAsPunctuation:v3];

  return v3;
}

- (void)sendEvent:(id)a3
{
  v6 = a3;
  if (([VOTSharedWorkspace outputDisabled] & 1) == 0)
  {
    v3 = +[VOSOutputEventDispatcher sharedInstance];
    [v3 sendEvent:v6];

    if ([v6 supportsSoundEffect])
    {
      v4 = objc_opt_class();
      v5 = [v6 rawValue];
      [v4 logSoundPlayed:v5];
    }
  }
}

- (void)addVOSEventFinishedHandler:(id)a3 forIdentifier:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (!self->_vosEventHandlers)
  {
    v7 = +[NSMutableDictionary dictionary];
    vosEventHandlers = self->_vosEventHandlers;
    self->_vosEventHandlers = v7;
  }

  v9 = objc_retainBlock(v10);
  [(NSMutableDictionary *)self->_vosEventHandlers setObject:v9 forKeyedSubscript:v6];
}

- (void)addVOSEventStartedHandler:(id)a3 forIdentifier:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (!self->_vosEventStartedHandlers)
  {
    v7 = +[NSMutableDictionary dictionary];
    vosEventStartedHandlers = self->_vosEventStartedHandlers;
    self->_vosEventStartedHandlers = v7;
  }

  v9 = objc_retainBlock(v10);
  [(NSMutableDictionary *)self->_vosEventStartedHandlers setObject:v9 forKeyedSubscript:v6];
}

- (void)dispatcher:(id)a3 handleEvent:(id)a4 soundPack:(id)a5 hapticPack:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([VOTSharedWorkspace pauseSpeechAndHaptics])
  {
    v14 = VOTLogAudio();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Not dispatching event because speech and haptics is currently paused", buf, 2u);
    }

LABEL_18:

    goto LABEL_19;
  }

  v15 = VOTLogCommon();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_100127F68();
  }

  if ([v10 shouldPlaySoundForEvent:v11])
  {
    v16 = [v12 soundAssetURLForOutputEvent:v11];
    v17 = VOTLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_100127FD0();
    }

    if (v16)
    {
      v18 = [v16 lastPathComponent];
      v19 = [NSString stringWithFormat:@"Sounds/%@", v18];

      v24[4] = self;
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10000EE70;
      v25[3] = &unk_1001C7890;
      v25[4] = self;
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10000EF38;
      v24[3] = &unk_1001C7890;
      [(VOTOutputManager *)self playSoundFast:v19 startedBlock:v25 completionBlock:v24];
    }
  }

  if ([v10 shouldPlayHapticForEvent:v11])
  {
    v14 = objc_alloc_init(AXMOutputRequest);
    v20 = [v13 hapticAssetURLForOutputEvent:v11];
    v21 = VOTLogCommon();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      sub_100128038();
    }

    if (v20)
    {
      v22 = +[AXSettings sharedInstance];
      [v22 voiceOverHapticIntensity];
      [v14 addHapticItemWithURL:v20 intensity:?];
    }

    v23 = [(AXMOutputManager *)self->_axmOutputManager dispatchRequest:v14];

    goto LABEL_18;
  }

LABEL_19:
}

- (void)addOutputManagerObserver:(id)a3
{
  if (a3)
  {
    outputManagerObserversLock = self->_outputManagerObserversLock;
    v5 = a3;
    [(NSLock *)outputManagerObserversLock lock];
    [(NSHashTable *)self->_outputManagerObservers addObject:v5];

    v6 = self->_outputManagerObserversLock;

    [(NSLock *)v6 unlock];
  }
}

- (void)removeOutputManagerObserver:(id)a3
{
  if (a3)
  {
    outputManagerObserversLock = self->_outputManagerObserversLock;
    v5 = a3;
    [(NSLock *)outputManagerObserversLock lock];
    [(NSHashTable *)self->_outputManagerObservers removeObject:v5];

    v6 = self->_outputManagerObserversLock;

    [(NSLock *)v6 unlock];
  }
}

- (void)removeAllOutputManagerObservers
{
  [(NSLock *)self->_outputManagerObserversLock lock];
  [(NSHashTable *)self->_outputManagerObservers removeAllObjects];
  outputManagerObserversLock = self->_outputManagerObserversLock;

  [(NSLock *)outputManagerObserversLock unlock];
}

- (void)_notifyObserversOutputManagerDidFinishProcessingQueuedRequests
{
  [(NSLock *)self->_outputManagerObserversLock lock];
  v3 = [(NSHashTable *)self->_outputManagerObservers allObjects];
  [(NSLock *)self->_outputManagerObserversLock unlock];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8) outputManagerDidFinishProcessingQueuedRequests:{self, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_notifyObserversOutputManagerWillProcessNextRequest:(id)a3
{
  v4 = a3;
  [(NSLock *)self->_outputManagerObserversLock lock];
  v5 = [(NSHashTable *)self->_outputManagerObservers allObjects];
  [(NSLock *)self->_outputManagerObserversLock unlock];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) outputManager:self willProcessNextRequest:{v4, v11}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

@end