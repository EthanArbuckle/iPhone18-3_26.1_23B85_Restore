@interface IOUIANSceneDelegateLDCM
- (void)emergencyDialerWasDismissed:(id)dismissed;
- (void)emergencyDialerWasPresented:(id)presented;
- (void)playSound;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:(id)active;
- (void)stopSound;
@end

@implementation IOUIANSceneDelegateLDCM

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v21 = 138412290;
    v22 = sceneCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Initializing LDCM critical UI scene... (scene: %@)", &v21, 0xCu);
  }

  v7 = [IOANUIWindowSecure alloc];
  v8 = +[UIScreen mainScreen];
  [v8 bounds];
  v9 = [(IOANUIWindowSecure *)v7 initWithFrame:?];
  [(IOUIANSceneDelegateLDCM *)self setWindow:v9];

  window = [(IOUIANSceneDelegateLDCM *)self window];
  [window setWindowScene:sceneCopy];

  v11 = objc_opt_new();
  [v11 setDelegate:self];
  v12 = [UIImageSymbolConfiguration configurationWithPointSize:3 weight:64.0];
  v13 = +[UIImageSymbolConfiguration configurationPreferringMulticolor];
  v14 = [v12 configurationByApplyingConfiguration:v13];

  [v11 setImageWithSystemImageNamed:@"drop.triangle.fill" andConfiguration:v14];
  v15 = +[NSBundle mainBundle];
  v16 = [v15 localizedStringForKey:@"Liquid Detected in USB‑C Connector" value:&stru_10000C608 table:0];
  [v11 setHeaderText:v16];

  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:@"Disconnect charging cable to prevent damage to iPhone. Allow the connector to dry. This may take several hours." value:&stru_10000C608 table:0];
  [v11 setMessageText:v18];

  window2 = [(IOUIANSceneDelegateLDCM *)self window];
  [window2 setRootViewController:v11];

  window3 = [(IOUIANSceneDelegateLDCM *)self window];
  [window3 makeKeyAndVisible];
}

- (void)sceneDidDisconnect:(id)disconnect
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100005584();
  }

  [(IOUIANSceneDelegateLDCM *)self stopSound];
}

- (void)sceneDidBecomeActive:(id)active
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_1000055F4();
  }
}

- (void)sceneWillResignActive:(id)active
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100005664();
  }
}

- (void)sceneWillEnterForeground:(id)foreground
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_1000056D4();
  }

  [(IOUIANSceneDelegateLDCM *)self playSound];
}

- (void)sceneDidEnterBackground:(id)background
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100005744();
  }

  [(IOUIANSceneDelegateLDCM *)self stopSound];
}

- (void)emergencyDialerWasPresented:(id)presented
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    presentedCopy = presented;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Emergency dialer was presented! (viewController: %@)", &v5, 0xCu);
  }

  [(IOUIANSceneDelegateLDCM *)self stopSound];
}

- (void)emergencyDialerWasDismissed:(id)dismissed
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    dismissedCopy = dismissed;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Emergency dialer was dismissed! (viewController: %@)", &v5, 0xCu);
  }

  [(IOUIANSceneDelegateLDCM *)self playSound];
}

- (void)playSound
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Playing sound...", v4, 2u);
  }

  if (![(IOUIANSceneDelegateLDCM *)self soundPlaying])
  {
    v5[0] = kAudioServicesPlaySystemSoundOptionIgnoreRingerSwitchKey;
    v5[1] = kAudioServicesPlaySystemSoundOptionLoopKey;
    v6[0] = &__kCFBooleanTrue;
    v6[1] = &__kCFBooleanTrue;
    v5[2] = kAudioServicesPlaySystemSoundOptionLoopPeriodKey;
    v5[3] = kAudioServicesPlaySystemSoundOptionVibrationPatternKey;
    v6[2] = &off_10000C748;
    v6[3] = &__kCFBooleanTrue;
    v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:4];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_1000057B4();
    }

    AudioServicesPlaySystemSoundWithOptions();
    [(IOUIANSceneDelegateLDCM *)self setSoundPlaying:1];
  }
}

- (void)stopSound
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Stopping sound...", v3, 2u);
  }

  if ([(IOUIANSceneDelegateLDCM *)self soundPlaying])
  {
    AudioServicesStopSystemSound();
    [(IOUIANSceneDelegateLDCM *)self setSoundPlaying:0];
  }
}

@end