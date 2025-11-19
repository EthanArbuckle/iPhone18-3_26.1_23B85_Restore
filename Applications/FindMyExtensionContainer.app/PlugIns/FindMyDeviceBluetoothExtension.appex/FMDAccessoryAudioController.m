@interface FMDAccessoryAudioController
+ (id)_audioCategory;
- (BOOL)isAccessoryBeingMonitored:(id)a3;
- (BOOL)setVolume:(float)a3 forRoute:(id)a4;
- (FMDAccessoryAudioController)init;
- (FMDAccessoryAudioControllerDelegate)delegate;
- (float)setMaxVolumeForRoute:(id)a3;
- (id)pickRoute:(id)a3;
- (id)pickedRoute;
- (id)routeForAccessoryIdentifier:(id)a3;
- (id)setupAudioSession;
- (void)fade;
- (void)pickableRoutesChangedNotification:(id)a3;
- (void)playSound:(id)a3 channels:(id)a4;
- (void)routeChanged:(id)a3;
- (void)setPanForChannels:(id)a3;
- (void)startMonitoringRoutableAccessory:(id)a3 completion:(id)a4;
- (void)startPlayingSoundForAccessory:(id)a3 channels:(id)a4 completion:(id)a5;
- (void)stopMonitoringRoutableAccessory:(id)a3 completion:(id)a4;
- (void)stopPlayingForAccessory:(id)a3 completion:(id)a4;
- (void)stopSound;
@end

@implementation FMDAccessoryAudioController

- (FMDAccessoryAudioController)init
{
  v13.receiver = self;
  v13.super_class = FMDAccessoryAudioController;
  v2 = [(FMDAccessoryAudioController *)&v13 init];
  v3 = sub_100003BEC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "FMDAccessoryAudioController: init", v12, 2u);
  }

  if (v2)
  {
    v4 = objc_alloc_init(NSMutableArray);
    [(FMDAccessoryAudioController *)v2 setMonitoredAccessories:v4];

    v5 = objc_opt_new();
    [(FMDAccessoryAudioController *)v2 setMonitoredAccessoriesCompletionBlocks:v5];

    v6 = +[AVSystemController sharedAVSystemController];
    v14[0] = AVSystemController_ActiveAudioRouteDidChangeNotification;
    v14[1] = AVSystemController_PickableRoutesDidChangeNotification;
    v7 = [NSArray arrayWithObjects:v14 count:2];
    [v6 setAttribute:v7 forKey:AVSystemController_SubscribeToNotificationsAttribute error:0];
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v2 selector:"routeChanged:" name:AVSystemController_ActiveAudioRouteDidChangeNotification object:v6];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v2 selector:"pickableRoutesChangedNotification:" name:AVSystemController_PickableRoutesDidChangeNotification object:v6];

    v10 = +[FMDAVRouteControllerFactory routeController];
    [v10 initializeNotifications];
  }

  return v2;
}

- (void)startPlayingSoundForAccessory:(id)a3 channels:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [@"PlaySoundTransaction" UTF8String];
  v11 = os_transaction_create();
  [(FMDAccessoryAudioController *)self setSoundTransaction:v11];

  if ([(FMDAccessoryAudioController *)self isSoundPlaying])
  {
    v12 = [v8 audioRoutingIdentifier];
    v13 = [(FMDAccessoryAudioController *)self lastAccessory];
    v14 = [v13 audioRoutingIdentifier];
    v15 = [v12 isEqualToString:v14];

    if (v15)
    {
      v16 = sub_100003BEC();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "FMDAccessoryAudioController: Sound already playing updating pan", buf, 2u);
      }

      [(FMDAccessoryAudioController *)self setPanForChannels:v9];
      if (v10)
      {
        v10[2](v10, 0);
      }
    }

    else
    {
      v19 = [NSError alloc];
      v20 = kFMDAccessoryPlaySoundErrorDomain;
      v37 = NSLocalizedFailureReasonErrorKey;
      v38 = @"FMDAccessoryAudioController only one sound can play at the time, stop sound before playing";
      v21 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v22 = [v19 initWithDomain:v20 code:1 userInfo:v21];

      if (v10)
      {
        (v10)[2](v10, v22);
      }
    }
  }

  else
  {
    [(FMDAccessoryAudioController *)self setLastAccessory:v8];
    v17 = [(FMDAccessoryAudioController *)self setupAudioSession];
    if (v17)
    {
      v18 = v17;
      v10[2](v10, v17);
    }

    else
    {
      v23 = [v8 audioRoutingIdentifier];
      v24 = [(FMDAccessoryAudioController *)self routeForAccessoryIdentifier:v23];

      v25 = [(FMDAccessoryAudioController *)self pickRoute:v24];
      v26 = sub_100003BEC();
      v27 = v26;
      if (v25)
      {
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_10000D334();
        }

        (v10)[2](v10, v25);
      }

      else
      {
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v40 = *&v24;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "FMDAccessoryAudioController accessory currently picked route = %@", buf, 0xCu);
        }

        [(FMDAccessoryAudioController *)self setMaxVolumeForRoute:v24];
        v29 = v28;
        [(FMDAccessoryAudioController *)self setOriginalRoute:v24];
        v30 = [(FMDAccessoryAudioController *)self originalState];

        if (!v30)
        {
          v31 = objc_opt_new();
          LODWORD(v32) = v29;
          [v31 setVolume:v32];
          [(FMDAccessoryAudioController *)self setOriginalState:v31];
        }

        v33 = sub_100003BEC();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = [(FMDAccessoryAudioController *)self originalState];
          [v34 volume];
          *buf = 134217984;
          v40 = v35;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "FMDAccessoryAudioController: Original state - volume: %f", buf, 0xCu);
        }

        v10[2](v10, 0);
        v36 = [v8 audioURL];
        [(FMDAccessoryAudioController *)self playSound:v36 channels:v9];
      }
    }
  }
}

- (void)stopPlayingForAccessory:(id)a3 completion:(id)a4
{
  v5 = a4;
  if ([(FMDAccessoryAudioController *)self isSoundPlaying])
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000052D0;
    v6[3] = &unk_10001D308;
    v6[4] = self;
    v7 = v5;
    dispatch_async(&_dispatch_main_q, v6);
  }

  else if (v5)
  {
    (*(v5 + 2))(v5, 0);
  }
}

- (void)playSound:(id)a3 channels:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100003BEC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Play sound for channels %@", buf, 0xCu);
  }

  v9 = v6;
  v29 = 0;
  v10 = [FMDAudioPlayerFactory initWithContentsOfURL:v9 error:&v29];
  v11 = v29;
  [(FMDAccessoryAudioController *)self setAudioPlayer:v10];

  if (v11)
  {
    v12 = sub_100003BEC();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v31 = v9;
      v32 = 2112;
      v33 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Error reading the sound URL %@ falling back to default %@", buf, 0x16u);
    }

    v13 = +[NSBundle mainBundle];
    v14 = [v13 pathForResource:@"accessory_locateSound" ofType:@"wav"];
    v15 = [NSURL fileURLWithPath:v14];
    v28 = v11;
    v16 = [FMDAudioPlayerFactory initWithContentsOfURL:v15 error:&v28];
    v17 = v28;

    [(FMDAccessoryAudioController *)self setAudioPlayer:v16];
  }

  else
  {
    v17 = 0;
  }

  v18 = [(FMDAccessoryAudioController *)self audioPlayer];
  [v18 setNumberOfLoops:-1];

  [(FMDAccessoryAudioController *)self setPanForChannels:v7];
  v19 = [(FMDAccessoryAudioController *)self audioPlayer];
  [v19 prepareToPlay];

  [(FMDAccessoryAudioController *)self setIsSoundPlaying:1];
  [(FMDAccessoryAudioController *)self setWasSoundPlayed:1];
  LODWORD(v20) = 1.0;
  [(FMDAccessoryAudioController *)self setVolumeTargetValue:v20];
  [(FMDAccessoryAudioController *)self rampUpDuration];
  [(FMDAccessoryAudioController *)self setFadeDuration:?];
  [(FMDAccessoryAudioController *)self rampUpDuration];
  if (v21 <= 0.0)
  {
    [(FMDAccessoryAudioController *)self volumeTargetValue];
    v24 = v23;
    v25 = [(FMDAccessoryAudioController *)self audioPlayer];
    LODWORD(v26) = v24;
    [v25 setVolume:v26];
  }

  else
  {
    v22 = [(FMDAccessoryAudioController *)self audioPlayer];
    [v22 setVolume:0.0];

    [(FMDAccessoryAudioController *)self fade];
  }

  v27 = [(FMDAccessoryAudioController *)self audioPlayer];
  [v27 play];
}

- (void)stopSound
{
  v3 = sub_100003BEC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v23) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stopping sound", &v23, 2u);
  }

  if ([(FMDAccessoryAudioController *)self wasSoundPlayed])
  {
    v4 = [(FMDAccessoryAudioController *)self originalState];

    if (v4)
    {
      [(FMDAccessoryAudioController *)self setWasSoundPlayed:0];
      v5 = [(FMDAccessoryAudioController *)self originalState];
      [v5 volume];
      v7 = v6;
      v8 = [(FMDAccessoryAudioController *)self originalRoute];
      LODWORD(v9) = v7;
      [(FMDAccessoryAudioController *)self setVolume:v8 forRoute:v9];

      v10 = sub_100003BEC();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(FMDAccessoryAudioController *)self originalState];
        [v11 volume];
        v23 = 134217984;
        v24 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "AccessoryAudioController volume set back to original %f", &v23, 0xCu);
      }

      v13 = [(FMDAccessoryAudioController *)self audioPlayer];
      [v13 stop];

      [(FMDAccessoryAudioController *)self setAudioPlayer:0];
      [(FMDAccessoryAudioController *)self setSoundTransaction:0];
      [(FMDAccessoryAudioController *)self setOriginalState:0];
      [(FMDAccessoryAudioController *)self setOriginalRoute:0];
      v14 = [(FMDAccessoryAudioController *)self delegate];
      [v14 soundDidStop];

      if (qword_100028D38)
      {
        v15 = sub_100003BEC();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v23) = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Stopping fade timer", &v23, 2u);
        }

        dispatch_source_cancel(qword_100028D38);
        v16 = qword_100028D38;
        qword_100028D38 = 0;
      }

      v17 = [(FMDAccessoryAudioController *)self lastAccessory];
      [(FMDAccessoryAudioController *)self setLastAccessory:0];
      if ([v17 conformsToProtocol:&OBJC_PROTOCOL___FMDAccessory])
      {
        v18 = v17;
        v19 = +[FMDFMIPManager sharedInstance];
        v20 = [v18 accessoryIdentifier];

        v21 = [v20 stringValue];
        [v19 soundStoppedForAccessoryIdentifier:v21];
      }

      v22 = +[AVAudioSession sharedInstance];
      [v22 setActive:0 withOptions:1 error:0];
    }
  }
}

- (void)setPanForChannels:(id)a3
{
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v18;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if ([v10 isEqualToString:@"left"])
        {
          v11 = -1;
        }

        else
        {
          v11 = [v10 isEqualToString:@"right"];
        }

        v7 += v11;
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v27 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v12 = sub_100003BEC();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(FMDAccessoryAudioController *)self isSoundPlaying];
    *buf = 67109634;
    v22 = v13;
    v23 = 1024;
    v24 = v7;
    v25 = 2112;
    v26 = v4;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Audio Player pan %i %i %@", buf, 0x18u);
  }

  *&v14 = v7;
  [(FMDAccessoryAudioController *)self setPanTargetValue:v14];
  if ([(FMDAccessoryAudioController *)self isSoundPlaying])
  {
    [(FMDAccessoryAudioController *)self fade];
  }

  else
  {
    v15 = [(FMDAccessoryAudioController *)self audioPlayer];
    *&v16 = v7;
    [v15 setPan:v16];
  }
}

- (id)routeForAccessoryIdentifier:(id)a3
{
  v21 = a3;
  v3 = +[FMDAVRouteControllerFactory routeController];
  v4 = +[FMDAccessoryAudioController _audioCategory];
  v5 = [v3 pickableRoutesForCategory:v4];

  v6 = sub_100003BEC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = +[FMDAccessoryAudioController _audioCategory];
    *buf = 138412546;
    v28 = v7;
    v29 = 2112;
    v30 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FMDAccessoryAudioController: Category %@ Pickables routes %@", buf, 0x16u);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v23;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = [v14 routeID];
        if (v15)
        {
          v16 = v15;
          v17 = [v14 routeID];
          v18 = [v17 rangeOfString:v21];

          if (v18 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v19 = v14;

            v11 = v19;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)pickedRoute
{
  v2 = +[FMDAVRouteControllerFactory routeController];
  v3 = +[FMDAccessoryAudioController _audioCategory];
  v4 = [v2 pickableRoutesForCategory:v3];

  v5 = sub_100003BEC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FMDAccessoryAudioController: Pickables routes %@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([v12 currentlyPicked])
        {
          v13 = v12;

          v9 = v13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)pickRoute:(id)a3
{
  v3 = a3;
  v4 = +[FMDAVRouteControllerFactory routeController];
  v5 = [v4 setPickedRoute:v3];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = sub_100003BEC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10000D3A8();
    }

    v8 = [NSError alloc];
    v9 = kFMDAccessoryPlaySoundErrorDomain;
    v12 = NSLocalizedFailureReasonErrorKey;
    v13 = @"FMDAccessoryAudioController cannot route audio to accessory. Aborting";
    v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v6 = [v8 initWithDomain:v9 code:0 userInfo:v10];
  }

  return v6;
}

- (id)setupAudioSession
{
  v2 = sub_100003BEC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "FMDAccessoryAudioController: Setting up audio session", buf, 2u);
  }

  v3 = +[AVAudioSession sharedInstance];
  v19 = 0;
  [v3 setCategory:AVAudioSessionCategoryFindMyDevice error:&v19];
  v4 = v19;
  if (v4)
  {
    v5 = v4;
    v6 = sub_100003BEC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FMDAccessoryAudioController: couldn't set session's audio category %@", buf, 0xCu);
    }

    v7 = 0;
LABEL_7:

    goto LABEL_8;
  }

  v18 = 0;
  [v3 setPreferredIOBufferDuration:&v18 error:0.005];
  v9 = v18;
  if (v9)
  {
    v10 = v9;
    v11 = sub_100003BEC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "FMDAccessoryAudioController: couldn't set session's I/O buffer duration %@", buf, 0xCu);
    }
  }

  v17 = 0;
  [v3 setPreferredSampleRate:&v17 error:44100.0];
  v12 = v17;
  if (v12)
  {
    v13 = v12;
    v14 = sub_100003BEC();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "FMDAccessoryAudioController: couldn't set session's preferred sample rate %@", buf, 0xCu);
    }
  }

  v15 = +[AVAudioSession sharedInstance];
  v16 = 0;
  [v15 setActive:1 error:&v16];
  v7 = v16;

  if (v7)
  {
    v5 = sub_100003BEC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FMDAccessoryAudioController: couldn't set session active, %@", buf, 0xCu);
    }

    goto LABEL_7;
  }

LABEL_8:

  return v7;
}

- (BOOL)setVolume:(float)a3 forRoute:(id)a4
{
  v5 = a4;
  v6 = +[FMDAVRouteControllerFactory routeController];
  v7 = +[FMDAccessoryAudioController _audioCategory];
  *&v8 = a3;
  v9 = [v6 setVolume:v7 forCategory:v5 route:v8];

  return v9;
}

- (float)setMaxVolumeForRoute:(id)a3
{
  v4 = a3;
  v18 = 0.0;
  v5 = +[FMDAVRouteControllerFactory routeController];
  v6 = +[FMDAccessoryAudioController _audioCategory];
  v7 = [v5 getVolume:&v18 forCategory:v6 route:v4];

  v8 = sub_100003BEC();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v4 routeID];
      *buf = 138412546;
      v20 = v10;
      v21 = 2048;
      v22 = v18;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "AccessoryAudioController %@ original volume %f", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_10000D41C(v4);
  }

  LODWORD(v11) = 1.0;
  v12 = [(FMDAccessoryAudioController *)self setVolume:v4 forRoute:v11];
  v13 = sub_100003BEC();
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v4 routeID];
      *buf = 138412290;
      v20 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "AccessoryAudioController %@ new volume 1.0f", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_10000D4A0(v4);
  }

  v16 = v18;
  return v16;
}

- (void)fade
{
  v3 = [(FMDAccessoryAudioController *)self audioPlayer];

  if (v3)
  {
    [(FMDAccessoryAudioController *)self fadeDuration];
    v5 = 1.0 / (v4 * 15.0);
    v6 = [(FMDAccessoryAudioController *)self audioPlayer];
    [v6 volume];
    v8 = v7;
    [(FMDAccessoryAudioController *)self volumeTargetValue];
    v10 = vabds_f32(v8, v9);

    v11 = v5 < v10;
    if (v5 < v10)
    {
      v12 = [(FMDAccessoryAudioController *)self audioPlayer];
      [v12 volume];
      v14 = v13;
      [(FMDAccessoryAudioController *)self volumeTargetValue];
      v16 = v15;

      v17 = [(FMDAccessoryAudioController *)self audioPlayer];
      [v17 volume];
      v19 = v18;
      v20 = v5;
      v21 = [(FMDAccessoryAudioController *)self audioPlayer];
      v22 = v21;
      *&v23 = -v20;
      if (v14 <= v16)
      {
        *&v23 = v5;
      }

      *&v23 = v19 + *&v23;
      [v21 setVolume:v23];

      v24 = sub_100003BEC();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        sub_10000D5D4(self);
      }
    }

    else
    {
      [(FMDAccessoryAudioController *)self volumeTargetValue];
      v26 = v25;
      v27 = [(FMDAccessoryAudioController *)self audioPlayer];
      LODWORD(v28) = v26;
      [v27 setVolume:v28];

      v29 = sub_100003BEC();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        sub_10000D524(self);
      }

      v31 = [(FMDAccessoryAudioController *)self audioPlayer];
      [v31 volume];
      v33 = v32;

      if (v33 == 0.0)
      {
        [(FMDAccessoryAudioController *)self stopSound];
      }
    }

    v34 = [(FMDAccessoryAudioController *)self audioPlayer];
    [v34 pan];
    v36 = v35;
    [(FMDAccessoryAudioController *)self panTargetValue];
    v38 = vabds_f32(v36, v37);

    if (v38 <= 0.0266666667)
    {
      [(FMDAccessoryAudioController *)self panTargetValue];
      v51 = v50;
      v52 = [(FMDAccessoryAudioController *)self audioPlayer];
      LODWORD(v53) = v51;
      [v52 setPan:v53];

      v49 = sub_100003BEC();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        sub_10000D6A4(self);
      }
    }

    else
    {
      v39 = [(FMDAccessoryAudioController *)self audioPlayer];
      [v39 pan];
      v41 = v40;
      [(FMDAccessoryAudioController *)self panTargetValue];
      v43 = v41 > v42;

      v44 = [(FMDAccessoryAudioController *)self audioPlayer];
      [v44 pan];
      v46 = v45;
      v47 = [(FMDAccessoryAudioController *)self audioPlayer];
      *&v48 = v46 + flt_100011B50[v43];
      [v47 setPan:v48];

      v49 = sub_100003BEC();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        sub_10000D754(self);
      }

      v11 = 1;
    }

    v54 = qword_100028D38;
    if (v11 && qword_100028D38 == 0)
    {
      v56 = sub_100003BEC();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
      {
        sub_10000D804(v56);
      }

      objc_initWeak(location, self);
      v57 = dispatch_source_create(&_dispatch_source_type_timer, 0, 1uLL, &_dispatch_main_q);
      v58 = qword_100028D38;
      qword_100028D38 = v57;

      v59 = qword_100028D38;
      v60 = dispatch_time(0, 0);
      dispatch_source_set_timer(v59, v60, 0x3F940AEuLL, 0);
      v61 = qword_100028D38;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100006A78;
      handler[3] = &unk_10001D330;
      objc_copyWeak(&v66, location);
      dispatch_source_set_event_handler(v61, handler);
      dispatch_resume(qword_100028D38);
      objc_destroyWeak(&v66);
      objc_destroyWeak(location);
      v54 = qword_100028D38;
    }

    if (v54)
    {
      v62 = v11;
    }

    else
    {
      v62 = 1;
    }

    if ((v62 & 1) == 0)
    {
      v63 = sub_100003BEC();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Stopping fade timer", location, 2u);
      }

      dispatch_source_cancel(qword_100028D38);
      v64 = qword_100028D38;
      qword_100028D38 = 0;
    }
  }
}

- (void)startMonitoringRoutableAccessory:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(FMDAccessoryAudioController *)self isAccessoryBeingMonitored:v6])
  {
    if (v7)
    {
      v8 = [NSError alloc];
      v9 = kFMDAccessoryPlaySoundErrorDomain;
      v18 = NSLocalizedFailureReasonErrorKey;
      v19 = @"FMDAccessoryAudioController is already monitoring that accessory";
      v10 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v11 = [v8 initWithDomain:v9 code:2 userInfo:v10];
      v7[2](v7, v11);
    }
  }

  else
  {
    v12 = [v6 audioRoutingIdentifier];
    v13 = [(FMDAccessoryAudioController *)self routeForAccessoryIdentifier:v12];

    if (v13)
    {
      if (v7)
      {
        v7[2](v7, 0);
      }
    }

    else
    {
      v14 = [(FMDAccessoryAudioController *)self monitoredAccessoriesCompletionBlocks];
      v15 = objc_retainBlock(v7);
      v16 = [v6 audioRoutingIdentifier];
      [v14 setObject:v15 forKey:v16];

      v17 = [(FMDAccessoryAudioController *)self monitoredAccessories];
      [v17 addObject:v6];
    }
  }
}

- (void)stopMonitoringRoutableAccessory:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100003BEC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FMDAccessoryAudioController stopMonitoringRoutableAccessory %@", buf, 0xCu);
  }

  if ([(FMDAccessoryAudioController *)self isAccessoryBeingMonitored:v6])
  {
    v26 = v7;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v9 = [(FMDAccessoryAudioController *)self monitoredAccessories];
    v10 = [v9 copy];

    v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v28;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v27 + 1) + 8 * i);
          v16 = [v15 audioRoutingIdentifier];
          v17 = [v6 audioRoutingIdentifier];
          v18 = [v16 isEqualToString:v17];

          if (v18)
          {
            v23 = [(FMDAccessoryAudioController *)self monitoredAccessories];
            [v23 removeObject:v15];

            v24 = [(FMDAccessoryAudioController *)self monitoredAccessoriesCompletionBlocks];
            v25 = [v15 audioRoutingIdentifier];
            [v24 removeObjectForKey:v25];

            goto LABEL_16;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:

    v7 = v26;
    if (v26)
    {
      v26[2](v26, 0);
    }
  }

  else if (v7)
  {
    v19 = [NSError alloc];
    v20 = kFMDAccessoryPlaySoundErrorDomain;
    v32 = NSLocalizedFailureReasonErrorKey;
    v33 = @"FMDAccessoryAudioController is not monitoring that accessory";
    v21 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v22 = [v19 initWithDomain:v20 code:3 userInfo:v21];
    v7[2](v7, v22);
  }
}

- (void)routeChanged:(id)a3
{
  v4 = [(FMDAccessoryAudioController *)self pickedRoute];
  v5 = sub_100003BEC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FMDAccessoryAudioController Route changed notification current route: %@", buf, 0xCu);
  }

  v6 = [(FMDAccessoryAudioController *)self lastAccessory];
  v7 = [v6 audioRoutingIdentifier];

  if (v7)
  {
    v8 = [v4 routeID];
    if (v8)
    {
      v9 = v8;
      v10 = [v4 routeID];
      v11 = [v10 rangeOfString:v7];

      if (v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([(FMDAccessoryAudioController *)self isSoundPlaying])
        {
          goto LABEL_11;
        }

        v15 = [(FMDAccessoryAudioController *)self monitoredAccessoriesCompletionBlocks];
        v16 = [v15 objectForKey:v7];

        v17 = [(FMDAccessoryAudioController *)self lastAccessory];
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_1000071F8;
        v18[3] = &unk_10001D358;
        v19 = v16;
        v14 = v16;
        [(FMDAccessoryAudioController *)self stopMonitoringRoutableAccessory:v17 completion:v18];

        goto LABEL_10;
      }
    }
  }

  if ([(FMDAccessoryAudioController *)self isSoundPlaying])
  {
    v12 = sub_100003BEC();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(FMDAccessoryAudioController *)self lastAccessory];
      *buf = 138412290;
      v21 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FMDAccessoryAudioController Stopping sound for accessory %@", buf, 0xCu);
    }

    [(FMDAccessoryAudioController *)self setRampDownDuration:0.0];
    v14 = [(FMDAccessoryAudioController *)self lastAccessory];
    [(FMDAccessoryAudioController *)self stopPlayingForAccessory:v14 completion:0];
LABEL_10:
  }

LABEL_11:
}

- (void)pickableRoutesChangedNotification:(id)a3
{
  v4 = sub_100003BEC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FMDAccessoryAudioController pickableRoutesChangedNotification", buf, 2u);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [(FMDAccessoryAudioController *)self monitoredAccessories];
  v5 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        v10 = [v9 audioRoutingIdentifier];
        v11 = [(FMDAccessoryAudioController *)self routeForAccessoryIdentifier:v10];

        if (v11)
        {
          v12 = [(FMDAccessoryAudioController *)self monitoredAccessoriesCompletionBlocks];
          v13 = [v9 audioRoutingIdentifier];
          v14 = [v12 objectForKey:v13];

          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_10000761C;
          v27[3] = &unk_10001D358;
          v28 = v14;
          v15 = v14;
          [(FMDAccessoryAudioController *)self stopMonitoringRoutableAccessory:v9 completion:v27];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v6);
  }

  v16 = [(FMDAccessoryAudioController *)self pickedRoute];
  v17 = [(FMDAccessoryAudioController *)self lastAccessory];
  v18 = [v17 audioRoutingIdentifier];

  if (!v18)
  {
    goto LABEL_22;
  }

  v19 = [v16 routeID];
  if (!v19 || (v20 = v19, [v16 routeID], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "rangeOfString:", v18), v21, v20, v22 == 0x7FFFFFFFFFFFFFFFLL))
  {
LABEL_22:
    if ([(FMDAccessoryAudioController *)self isSoundPlaying])
    {
      v23 = sub_100003BEC();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [(FMDAccessoryAudioController *)self lastAccessory];
        *buf = 138412290;
        v34 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "FMDAccessoryAudioController Stopping sound for accessory %@", buf, 0xCu);
      }

      [(FMDAccessoryAudioController *)self setRampDownDuration:0.0];
      v25 = [(FMDAccessoryAudioController *)self lastAccessory];
      [(FMDAccessoryAudioController *)self stopPlayingForAccessory:v25 completion:0];
    }
  }
}

- (BOOL)isAccessoryBeingMonitored:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(FMDAccessoryAudioController *)self monitoredAccessories];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) audioRoutingIdentifier];
        v10 = [v4 audioRoutingIdentifier];
        v11 = [v9 isEqualToString:v10];

        if (v11)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

+ (id)_audioCategory
{
  v2 = sub_100003BEC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = @"FindMyAudioDevice";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "FMDAccessoryAudioController Audio Category %@", &v4, 0xCu);
  }

  return @"FindMyAudioDevice";
}

- (FMDAccessoryAudioControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end