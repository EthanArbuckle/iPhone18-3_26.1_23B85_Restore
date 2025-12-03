@interface PBAAppDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (int64_t)_computeBootOrientation;
- (unint64_t)application:(id)application supportedInterfaceOrientationsForWindow:(id)window;
- (void)_createInitialAppScene;
- (void)_createInputUIScene;
- (void)_reconfigureHomeButton;
- (void)_resetIdleTimerForReason:(id)reason;
- (void)_setupHomeButtonRecognition;
- (void)_setupMouseButtonRecognition;
- (void)_setupTapToWakeRecognition;
- (void)authenticationPolicyEncounteredPolicyError:(id)error;
- (void)displayDidBlank:(id)blank;
- (void)displayWillUnblank:(id)unblank;
- (void)homeButtonSinglePressDown:(id)down;
- (void)homeButtonTriplePressUp:(id)up;
- (void)mouseButtonDown:(id)down;
- (void)presentDataRecovery;
- (void)presentDeviceUnlock;
- (void)presentLAPasscodeVerification;
- (void)sceneManager:(id)manager didAddScene:(id)scene;
- (void)setMainViewController:(id)controller;
- (void)tapToWake:(id)wake;
@end

@implementation PBAAppDelegate

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  applicationCopy = application;
  v6 = [[FBSceneWorkspace alloc] initWithIdentifier:@"com.apple.preboard"];
  sceneWorkspace = self->_sceneWorkspace;
  self->_sceneWorkspace = v6;

  v8 = +[FBSceneManager sharedInstance];
  [v8 addObserver:self];

  v9 = [UIRootWindowScenePresentationBinder alloc];
  v10 = +[FBDisplayManager sharedInstance];
  mainConfiguration = [v10 mainConfiguration];
  v12 = [v9 initWithPriority:0 displayConfiguration:mainConfiguration];
  rootWindowScenePresentationBinder = self->_rootWindowScenePresentationBinder;
  self->_rootWindowScenePresentationBinder = v12;

  [(PBAAppDelegate *)self _createInitialAppScene];
  _computeBootOrientation = [(PBAAppDelegate *)self _computeBootOrientation];
  v15 = +[UIDevice currentDevice];
  [v15 setOrientation:_computeBootOrientation];

  BKSHIDServicesLockOrientation();
  [applicationCopy setStatusBarHidden:1 withAnimation:0];

  v16 = [PBASecureWindow alloc];
  v17 = +[UIScreen mainScreen];
  [v17 _referenceBounds];
  v18 = [(PBASecureWindow *)v16 initWithFrame:?];
  window = self->_window;
  self->_window = v18;

  v20 = self->_window;
  v21 = +[UIColor whiteColor];
  [(UIWindow *)v20 setBackgroundColor:v21];

  [(UIWindow *)self->_window makeKeyAndVisible];
  v22 = +[NSUserDefaults standardUserDefaults];
  LODWORD(v21) = [v22 BOOLForKey:@"PBAForceMockRecovery"];

  if (v21)
  {
    v23 = [@"111111" dataUsingEncoding:4];
    v24 = [SBFShamMobileKeyBag shamKeyBagWithRecoveryRequired:1 correctPasscode:v23];
  }

  else
  {
    v24 = +[SBFMobileKeyBag sharedInstance];
  }

  v25 = [[PBADataRecoveryEngine alloc] initWithMobileKeyBag:v24];
  dataRecoveryEngine = self->_dataRecoveryEngine;
  self->_dataRecoveryEngine = v25;

  v27 = [[PBAStackViewController alloc] initWithNibName:0 bundle:0];
  stackViewController = self->_stackViewController;
  self->_stackViewController = v27;

  v29 = +[LAPreboard sharedInstance];
  isRequired = [v29 isRequired];

  v38 = _NSConcreteStackBlock;
  v39 = 3221225472;
  v40 = sub_10000B024;
  v41 = &unk_10001CBE0;
  v43 = isRequired;
  selfCopy = self;
  AnalyticsSendEventLazy();
  if (isRequired)
  {
    [(PBAAppDelegate *)self presentLAPasscodeVerification];
  }

  else if ([(PBADataRecoveryEngine *)self->_dataRecoveryEngine requiresDataRecovery])
  {
    [(PBAAppDelegate *)self presentDataRecovery];
  }

  else
  {
    [(PBAAppDelegate *)self presentDeviceUnlock];
  }

  [(UIWindow *)self->_window setRootViewController:self->_stackViewController];
  [(PBAAppDelegate *)self _setupTapToWakeRecognition];
  [(PBAAppDelegate *)self _reconfigureHomeButton];
  [(PBAAppDelegate *)self _setupHomeButtonRecognition];
  v31 = [_UIKeyboardArbiterHost launchAdvisorWithOmniscientDelegate:0 sceneDelegate:self];
  [(PBAAppDelegate *)self _createInputUIScene];
  v32 = +[PBAHIDEventController sharedController];
  [v32 startReceivingEvents];

  v33 = +[NSNotificationCenter defaultCenter];
  [v33 addObserver:self selector:"displayDidBlank:" name:@"PBAScreenDidBlankNotification" object:0];

  v34 = +[NSNotificationCenter defaultCenter];
  [v34 addObserver:self selector:"displayWillUnblank:" name:@"PBAScreenWillUnblankNotification" object:0];

  dispatch_async(&_dispatch_main_q, &stru_10001CC00);
  v35 = sub_10000A054();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "now running", v37, 2u);
  }

  return 1;
}

- (unint64_t)application:(id)application supportedInterfaceOrientationsForWindow:(id)window
{
  v4 = [(PBAAppDelegate *)self _computeBootOrientation:application];
  if ((v4 - 2) > 2)
  {
    return 2;
  }

  else
  {
    return qword_1000189D8[v4 - 2];
  }
}

- (void)authenticationPolicyEncounteredPolicyError:(id)error
{
  if ([(PBADataRecoveryEngine *)self->_dataRecoveryEngine requiresDataRecovery])
  {

    [(PBAAppDelegate *)self presentDataRecovery];
  }
}

- (void)_setupTapToWakeRecognition
{
  v3 = [[SBFTapToWakeGestureRecognizer alloc] initWithTarget:self action:"tapToWake:"];
  tapToWakeGestureRecognizer = self->_tapToWakeGestureRecognizer;
  self->_tapToWakeGestureRecognizer = v3;

  [(SBFTapToWakeGestureRecognizer *)self->_tapToWakeGestureRecognizer setEnabled:0];
  window = self->_window;
  v6 = self->_tapToWakeGestureRecognizer;

  [(UIWindow *)window addGestureRecognizer:v6];
}

- (void)_setupMouseButtonRecognition
{
  v3 = [[SBFMouseButtonDownGestureRecognizer alloc] initWithTarget:self action:"mouseButtonDown:"];
  mouseButtonDownGestureRecognizer = self->_mouseButtonDownGestureRecognizer;
  self->_mouseButtonDownGestureRecognizer = v3;

  window = self->_window;
  v6 = self->_mouseButtonDownGestureRecognizer;

  [(UIWindow *)window addGestureRecognizer:v6];
}

- (void)_setupHomeButtonRecognition
{
  v3 = [[UIHBClickGestureRecognizer alloc] initWithTarget:self action:"homeButtonSinglePressDown:"];
  singlePressDownGestureRecognizer = self->_singlePressDownGestureRecognizer;
  self->_singlePressDownGestureRecognizer = v3;

  [(UIHBClickGestureRecognizer *)self->_singlePressDownGestureRecognizer setRecognizesOnPressPhaseBegan:1];
  [(UIHBClickGestureRecognizer *)self->_singlePressDownGestureRecognizer setClickCount:1];
  [(UIHBClickGestureRecognizer *)self->_singlePressDownGestureRecognizer setEnabled:0];
  [(UIWindow *)self->_window addGestureRecognizer:self->_singlePressDownGestureRecognizer];
  v5 = [[UIHBClickGestureRecognizer alloc] initWithTarget:self action:"homeButtonTriplePressUp:"];
  triplePressUpGestureRecognizer = self->_triplePressUpGestureRecognizer;
  self->_triplePressUpGestureRecognizer = v5;

  [(UIHBClickGestureRecognizer *)self->_triplePressUpGestureRecognizer setClickCount:3];
  window = self->_window;
  v8 = self->_triplePressUpGestureRecognizer;

  [(UIWindow *)window addGestureRecognizer:v8];
}

- (void)presentDataRecovery
{
  v3 = [[PBADataRecoveryViewController alloc] initWithContainingStackViewController:self->_stackViewController];
  [(PBADataRecoveryViewController *)v3 setDataRecoveryEngine:self->_dataRecoveryEngine];
  [(PBAAppDelegate *)self setMainViewController:v3];
}

- (void)presentDeviceUnlock
{
  v4 = objc_alloc_init(PBAAuthenticationPolicy);
  [(PBAAuthenticationPolicy *)v4 setDelegate:self];
  v3 = [(PBADevicePasscodeViewController *)[PBADeviceUnlockViewController alloc] initWithContainingStackViewController:self->_stackViewController authenticationPolicy:v4];
  [(PBAAppDelegate *)self setMainViewController:v3];
}

- (void)presentLAPasscodeVerification
{
  v4 = objc_alloc_init(PBAAuthenticationPolicy);
  [(PBAAuthenticationPolicy *)v4 setDelegate:self];
  v3 = [(PBADevicePasscodeViewController *)[PBAProtectedOptionsViewController alloc] initWithContainingStackViewController:self->_stackViewController authenticationPolicy:v4];
  [(PBAAppDelegate *)self setMainViewController:v3];
}

- (void)setMainViewController:(id)controller
{
  stackViewController = self->_stackViewController;
  controllerCopy = controller;
  topViewController = [(PBAStackViewController *)stackViewController topViewController];
  v6 = topViewController != 0;

  [(PBAAppDelegate *)self setMainViewController:controllerCopy animated:v6];
}

- (void)_reconfigureHomeButton
{
  v2 = _AXSTripleClickCopyOptions();
  v3 = sub_10000A054();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10000D3D4(v2, v3);
  }

  if (v2)
  {
    if (CFArrayGetCount(v2) < 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 3;
    }

    CFRelease(v2);
  }

  else
  {
    v4 = 1;
  }

  _AXSHomeClickSpeed();
  v6 = 0.100000001;
  if (v5 <= 0.0)
  {
    v7 = 0.3;
  }

  else
  {
    v7 = v5;
    v8 = sub_10000A054();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "maximumMultiplePressInterval override from AX is:%g", buf, 0xCu);
    }

    if (v7 < 0.1)
    {
      v9 = sub_10000A054();
      v6 = v7;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 134218496;
        v16 = v7;
        v17 = 2048;
        v18 = v7;
        v19 = 2048;
        v20 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "multiplePressInterval: minimum > maximum, using maximum(%g): %g > %g", buf, 0x20u);
      }
    }
  }

  v10 = +[BKSButtonHapticsDefinition definitionForHomeButton];
  [v10 setMaximumPressCount:v4];
  [v10 setMinimumMultiplePressTimeInterval:v6];
  [v10 setMaximumMultiplePressTimeInterval:v7];
  v11 = sub_10000A054();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v16 = *&v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "new button definition:%{public}@", buf, 0xCu);
  }

  v12 = +[BKSButtonHapticsController sharedInstance];
  v14 = v10;
  v13 = [NSArray arrayWithObjects:&v14 count:1];
  [v12 applyDefinitions:v13];
}

- (void)_resetIdleTimerForReason:(id)reason
{
  reasonCopy = reason;
  v4 = sub_10000A054();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138543362;
    v7 = reasonCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Resetting idle timer if needed (reason:%{public}@)", &v6, 0xCu);
  }

  v5 = +[PBAIdleSleepController sharedController];
  if ([v5 isDisplayDim])
  {
    [v5 resetIdleTimerAndUndim:1];
  }
}

- (void)homeButtonSinglePressDown:(id)down
{
  if ([down state] == 3)
  {

    [(PBAAppDelegate *)self _resetIdleTimerForReason:@"home button single press down"];
  }
}

- (void)homeButtonTriplePressUp:(id)up
{
  if ([up state] == 3)
  {
    v3 = sub_10000A054();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "home button triple press up! Hello AX", v4, 2u);
    }

    _AXSHandleTripleClickHomeButtonPress();
  }
}

- (void)tapToWake:(id)wake
{
  if ([wake state] == 3)
  {

    [(PBAAppDelegate *)self _resetIdleTimerForReason:@"tap to wake"];
  }
}

- (void)mouseButtonDown:(id)down
{
  if ([down state] == 3)
  {

    [(PBAAppDelegate *)self _resetIdleTimerForReason:@"mouse button"];
  }
}

- (void)displayDidBlank:(id)blank
{
  v4 = [BKSTouchStream alloc];
  _contextId = [(UIWindow *)self->_window _contextId];
  v6 = objc_alloc_init(BKSTouchStreamPolicy);
  v7 = [v4 initWithContextID:_contextId displayUUID:0 identifier:1 policy:v6];
  touchStream = self->_touchStream;
  self->_touchStream = v7;

  [(SBFTapToWakeGestureRecognizer *)self->_tapToWakeGestureRecognizer setEnabled:1];
  singlePressDownGestureRecognizer = self->_singlePressDownGestureRecognizer;

  [(UIHBClickGestureRecognizer *)singlePressDownGestureRecognizer setEnabled:1];
}

- (void)displayWillUnblank:(id)unblank
{
  [(UIHBClickGestureRecognizer *)self->_singlePressDownGestureRecognizer setEnabled:0];
  [(SBFTapToWakeGestureRecognizer *)self->_tapToWakeGestureRecognizer setEnabled:0];
  [(BKSTouchStream *)self->_touchStream invalidate];
  touchStream = self->_touchStream;
  self->_touchStream = 0;
}

- (void)_createInitialAppScene
{
  sceneWorkspace = [(PBAAppDelegate *)self sceneWorkspace];
  v4 = [sceneWorkspace createScene:&stru_10001CC60];

  definition = [v4 definition];
  specification = [definition specification];
  v7 = [FBSMutableSceneParameters parametersForSpecification:specification];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000C078;
  v14[3] = &unk_10001CC88;
  v14[4] = self;
  [v7 updateSettingsWithBlock:v14];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000C168;
  v12[3] = &unk_10001CCB0;
  v8 = v7;
  v13 = v8;
  [v8 updateClientSettingsWithBlock:v12];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000C1E4;
  v10[3] = &unk_10001CCD8;
  v11 = v8;
  v9 = v8;
  [v4 configureParameters:v10];
  [v4 activateWithTransitionContext:0];
  [(UIRootWindowScenePresentationBinder *)self->_rootWindowScenePresentationBinder addScene:v4];
}

- (void)_createInputUIScene
{
  if (+[UIKeyboard usesInputSystemUI])
  {
    v3 = +[NSUUID UUID];
    uUIDString = [v3 UUIDString];

    v5 = [RBSProcessIdentity identityForAngelJobLabel:@"com.apple.InputUI"];
    if (v5)
    {
      sceneWorkspace = self->_sceneWorkspace;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10000C3E8;
      v16[3] = &unk_10001CD00;
      v17 = uUIDString;
      v18 = v5;
      v7 = [(FBSceneWorkspace *)sceneWorkspace createScene:v16];
      if (v7)
      {
        +[FBDisplayManager mainConfiguration];
        v10 = _NSConcreteStackBlock;
        v11 = 3221225472;
        v12 = sub_10000C48C;
        v14 = v13 = &unk_10001CD28;
        selfCopy = self;
        v8 = v14;
        [v7 performUpdate:&v10];
        [(UIRootWindowScenePresentationBinder *)self->_rootWindowScenePresentationBinder addScene:v7, v10, v11, v12, v13];
      }

      else
      {
        v8 = sub_10000A054();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_10000D44C(v8);
        }
      }

      v9 = v17;
    }

    else
    {
      v9 = sub_10000A054();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10000D490(v9);
      }
    }
  }
}

- (int64_t)_computeBootOrientation
{
  v2 = MGGetSInt32Answer();
  v3 = 1;
  if (v2 == 90)
  {
    v3 = 3;
  }

  if (v2 == 180)
  {
    v3 = 2;
  }

  if (v2 == 270)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

- (void)sceneManager:(id)manager didAddScene:(id)scene
{
  sceneCopy = scene;
  v6 = _UIKeyboardArbiter_SceneIdentifier;
  identifier = [sceneCopy identifier];
  if ([v6 isEqualToString:identifier])
  {
    v8 = +[UIKeyboard usesInputSystemUI];

    if ((v8 & 1) == 0)
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10000C664;
      v9[3] = &unk_10001CA50;
      v9[4] = self;
      v10 = sceneCopy;
      dispatch_async(&_dispatch_main_q, v9);
    }
  }

  else
  {
  }
}

@end