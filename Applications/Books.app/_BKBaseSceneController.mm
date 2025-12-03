@interface _BKBaseSceneController
+ (id)sceneInfoFromSceneSession:(id)session;
- (BCExternalURLOpenPrompter)externalURLLoadPrompter;
- (BCExternalURLOpenPrompter)externalURLOpenPrompter;
- (BKSceneInfo)sceneInfo;
- (BOOL)_assetSupportsSnapshots:(id)snapshots;
- (BOOL)continueActivity:(id)activity sceneController:(id)controller;
- (BOOL)isStateRestorationDisabled;
- (BOOL)welcomePresenterIsPresentingWelcome;
- (BOOL)willContinueActivityWithType:(id)type sceneController:(id)controller;
- (_BKBaseSceneController)initWithSceneType:(unint64_t)type;
- (id)_assetPresenters;
- (id)_optionsForContinueOpenBookActivity:(BOOL)activity;
- (id)_viewControllerForWelcomePresenting;
- (id)_viewControllerFromWhichToPresentAlerts;
- (id)_windowWithScene:(id)scene sceneType:(unint64_t)type;
- (id)dataForStateRestoration;
- (id)newShowAssetTransactionWithTargetSceneDescriptor:(id)descriptor;
- (id)newShowURLTransactionWithTargetSceneDescriptor:(id)descriptor;
- (id)newTransactionWithName:(id)name targetSceneDescriptor:(id)descriptor;
- (id)stateRestorationActivityForScene:(id)scene;
- (void)_continueOpenBookActivity:(id)activity assetLogID:(id)d isStateRestoration:(BOOL)restoration;
- (void)_doInterruptReadAloud:(BOOL)aloud;
- (void)_handleOpenBookActivityWithAssetID:(id)d isStateRestoration:(BOOL)restoration;
- (void)_handleStateRestorationCompleted;
- (void)_interruptReadAloud:(BOOL)aloud;
- (void)_setupStatusBarBlurBackground;
- (void)dismissWelcomeViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)handleStateRestorationFromData:(id)data;
- (void)openURL:(id)l options:(id)options;
- (void)presentAlertController:(id)controller promptContext:(id)context;
- (void)presentModalViewController:(id)controller animated:(BOOL)animated;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)presentWelcomeViewController:(id)controller completion:(id)completion;
- (void)scene:(id)scene continueUserActivity:(id)activity;
- (void)scene:(id)scene didFailToContinueUserActivityWithType:(id)type error:(id)error;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willContinueUserActivityWithType:(id)type;
- (void)welcomePresenterFinishOngoingModalTransitionAnimations:(id)animations;
- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler;
@end

@implementation _BKBaseSceneController

- (void)_setupStatusBarBlurBackground
{
  bk_window = [(_BKBaseSceneController *)self bk_window];
  v3 = [[BCStatusBarBackgroundController alloc] initWithWindow:bk_window];
  [(_BKBaseSceneController *)self setStatusBarBackgroundController:v3];

  statusBarBackgroundController = [(_BKBaseSceneController *)self statusBarBackgroundController];
  [statusBarBackgroundController setup];
}

- (BOOL)isStateRestorationDisabled
{
  v3 = objc_opt_class();
  sceneType = [(_BKBaseSceneController *)self sceneType];

  return [v3 isStateRestorationDisabledForSceneType:sceneType];
}

- (_BKBaseSceneController)initWithSceneType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = _BKBaseSceneController;
  result = [(_BKBaseSceneController *)&v5 init];
  if (result)
  {
    result->_sceneType = type;
  }

  return result;
}

- (id)newTransactionWithName:(id)name targetSceneDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  nameCopy = name;
  v8 = +[BKAppDelegate sceneManager];
  v9 = [v8 newTransactionWithName:nameCopy originatingSceneController:self targetSceneDescriptor:descriptorCopy];

  return v9;
}

- (id)newShowAssetTransactionWithTargetSceneDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = +[BKAppDelegate sceneManager];
  v6 = [v5 newShowAssetTransactionWithOriginatingSceneController:self targetSceneDescriptor:descriptorCopy];

  return v6;
}

- (id)newShowURLTransactionWithTargetSceneDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = +[BKAppDelegate sceneManager];
  v6 = [v5 newShowURLTransactionWithOriginatingSceneController:self targetSceneDescriptor:descriptorCopy];

  return v6;
}

- (id)_windowWithScene:(id)scene sceneType:(unint64_t)type
{
  sceneCopy = scene;
  screen = [sceneCopy screen];
  [screen setWantsSoftwareDimming:1];

  v6 = [[UIWindow alloc] initWithWindowScene:sceneCopy];
  v7 = +[UIColor clearColor];
  [v6 setBackgroundColor:v7];

  [v6 setOpaque:0];

  return v6;
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  v10 = BCSceneLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = controllerCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "_BKBaseSceneController: presentViewController: %{public}@", buf, 0xCu);
  }

  if (animatedCopy)
  {
    launchCoordinator = [(_BKBaseSceneController *)self launchCoordinator];
    LOBYTE(animatedCopy) = [launchCoordinator appLaunchCoordinatorHasAppLaunched];
  }

  launchCoordinator2 = [(_BKBaseSceneController *)self launchCoordinator];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000A4D20;
  v15[3] = &unk_100A057C8;
  v15[4] = self;
  v16 = controllerCopy;
  v18 = animatedCopy;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = controllerCopy;
  [launchCoordinator2 appLaunchCoordinatorPerformWhenLaunched:@"presentVC" block:v15];
}

- (void)presentModalViewController:(id)controller animated:(BOOL)animated
{
  controllerCopy = controller;
  v6 = BCSceneLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = controllerCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "_BKBaseSceneController: presentModalViewController: %{public}@", &v8, 0xCu);
  }

  _viewControllerFromWhichToPresentAlerts = [(_BKBaseSceneController *)self _viewControllerFromWhichToPresentAlerts];
  [_viewControllerFromWhichToPresentAlerts presentModalViewController:controllerCopy withTransition:8];
}

- (BCExternalURLOpenPrompter)externalURLOpenPrompter
{
  externalURLOpenPrompter = self->_externalURLOpenPrompter;
  if (!externalURLOpenPrompter)
  {
    v4 = [BCExternalURLOpenPrompter alloc];
    v5 = +[BCExternalURLOpenPrompterContext sharedContextForOpening];
    v6 = [v4 initWithContext:v5];
    v7 = self->_externalURLOpenPrompter;
    self->_externalURLOpenPrompter = v6;

    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"Leave Books and open this link?" value:&stru_100A30A68 table:0];
    [(BCExternalURLOpenPrompter *)self->_externalURLOpenPrompter setPromptTitle:v9];

    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"Cancel" value:&stru_100A30A68 table:0];
    [(BCExternalURLOpenPrompter *)self->_externalURLOpenPrompter setCancelButtonTitle:v11];

    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"Open" value:&stru_100A30A68 table:0];
    [(BCExternalURLOpenPrompter *)self->_externalURLOpenPrompter setOkButtonTitle:v13];

    [(BCExternalURLOpenPrompter *)self->_externalURLOpenPrompter setDelegate:self];
    externalURLOpenPrompter = self->_externalURLOpenPrompter;
  }

  return externalURLOpenPrompter;
}

- (BCExternalURLOpenPrompter)externalURLLoadPrompter
{
  externalURLLoadPrompter = self->_externalURLLoadPrompter;
  if (!externalURLLoadPrompter)
  {
    v4 = objc_alloc_init(BCExternalURLOpenPrompter);
    v5 = self->_externalURLLoadPrompter;
    self->_externalURLLoadPrompter = v4;

    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"Allow Online Content?" value:&stru_100A30A68 table:0];
    [(BCExternalURLOpenPrompter *)self->_externalURLLoadPrompter setPromptTitle:v7];

    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"This book needs to access online content value:or it may not display as the publisher intended." table:{&stru_100A30A68, 0}];
    [(BCExternalURLOpenPrompter *)self->_externalURLLoadPrompter setPromptMessage:v9];

    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"Don’t Allow" value:&stru_100A30A68 table:0];
    [(BCExternalURLOpenPrompter *)self->_externalURLLoadPrompter setCancelButtonTitle:v11];

    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"Allow" value:&stru_100A30A68 table:0];
    [(BCExternalURLOpenPrompter *)self->_externalURLLoadPrompter setOkButtonTitle:v13];

    [(BCExternalURLOpenPrompter *)self->_externalURLLoadPrompter setCacheResponses:0];
    [(BCExternalURLOpenPrompter *)self->_externalURLLoadPrompter setDelegate:self];
    externalURLLoadPrompter = self->_externalURLLoadPrompter;
  }

  return externalURLLoadPrompter;
}

- (id)_viewControllerFromWhichToPresentAlerts
{
  bk_window = [(_BKBaseSceneController *)self bk_window];
  rootViewController = [bk_window rootViewController];
  bc_deepestPresentedViewController = [rootViewController bc_deepestPresentedViewController];

  if ([bc_deepestPresentedViewController isBeingDismissed])
  {
    do
    {
      presentingViewController = [bc_deepestPresentedViewController presentingViewController];

      bc_deepestPresentedViewController = presentingViewController;
    }

    while (([presentingViewController isBeingDismissed] & 1) != 0);
  }

  else
  {
    presentingViewController = bc_deepestPresentedViewController;
  }

  return presentingViewController;
}

- (void)_interruptReadAloud:(BOOL)aloud
{
  launchCoordinator = [(_BKBaseSceneController *)self launchCoordinator];
  if ([launchCoordinator appLaunchCoordinatorIsConditionSatisfied:6])
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000A528C;
    v6[3] = &unk_100A05D78;
    v6[4] = self;
    aloudCopy = aloud;
    [launchCoordinator appLaunchCoordinatorOnConditionMask:1 blockID:@"Interrupt ReadAloud" performBlock:v6];
  }
}

- (void)_doInterruptReadAloud:(BOOL)aloud
{
  aloudCopy = aloud;
  bk_window = [(_BKBaseSceneController *)self bk_window];
  rootViewController = [bk_window rootViewController];
  if (!rootViewController)
  {
    sub_10078C5B8();
  }

  v5 = [rootViewController im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKBookPresenting];
  if (!v5)
  {
    sub_10078C5F0();
  }

  v6 = BUProtocolCast();
  if (!v6)
  {
    sub_10078C628();
  }

  objc_opt_class();
  v7 = [v5 bookPresenterCurrentlyOpenBookForSingleScene:v6];
  assetPresenterAssetViewController = [v7 assetPresenterAssetViewController];
  v9 = BUDynamicCast();

  if (v9)
  {
    book = [v9 book];
    hasMediaOverlayElements = [book hasMediaOverlayElements];

    if (aloudCopy)
    {
      if (hasMediaOverlayElements)
      {
        [v9 pauseReadAloud];
      }

      [v9 stopSoundtrack];
      [v9 stopPlayingMedia:0];
    }

    else
    {
      if (hasMediaOverlayElements)
      {
        [v9 resumeReadAloud];
      }

      [v9 playCurrentSoundtrack];
    }
  }
}

- (BKSceneInfo)sceneInfo
{
  scene = [(_BKBaseSceneController *)self scene];

  if (!scene)
  {
    sub_10078C660();
  }

  dataForStateRestoration = [(_BKBaseSceneController *)self dataForStateRestoration];
  v5 = [_BKBaseSceneInfo alloc];
  scene2 = [(_BKBaseSceneController *)self scene];
  session = [scene2 session];
  v8 = [(_BKBaseSceneInfo *)v5 initWithSceneSession:session userData:dataForStateRestoration];

  v9 = BUProtocolCast();
  [(_BKBaseSceneInfo *)v8 setSceneController:v9];

  return v8;
}

+ (id)sceneInfoFromSceneSession:(id)session
{
  sessionCopy = session;
  v4 = +[BKAppDelegate sceneManager];
  v5 = [v4 _lastKnownStateRestorationUserInfoForSceneSession:sessionCopy];

  v6 = [[_BKBaseSceneInfo alloc] initWithSceneSession:sessionCopy userData:v5];

  return v6;
}

- (void)scene:(id)scene willContinueUserActivityWithType:(id)type
{
  typeCopy = type;
  v5 = BCSceneLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138543362;
    v9 = typeCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "scene willContinueUserActivityWithType: Preparing for activity with type %{public}@", &v8, 0xCu);
  }

  v6 = +[BKUserActivityManager sharedInstance];
  v7 = BUProtocolCast();
  [v6 willContinueActivityWithType:typeCopy sceneController:v7];
}

- (BOOL)willContinueActivityWithType:(id)type sceneController:(id)controller
{
  typeCopy = type;
  scene = [(_BKBaseSceneController *)self scene];
  session = [scene session];
  stateRestorationActivity = [session stateRestorationActivity];
  if (stateRestorationActivity && [typeCopy isEqualToString:@"com.apple.iBooks.sceneStateRestoration"])
  {
    v9 = ![(_BKBaseSceneController *)self isStateRestorationDisabled];
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (void)scene:(id)scene continueUserActivity:(id)activity
{
  activityCopy = activity;
  v5 = BCSceneLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    activityType = [activityCopy activityType];
    userInfo = [activityCopy userInfo];
    v10 = 138543618;
    v11 = activityType;
    v12 = 2112;
    v13 = userInfo;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "scene continueUserActivity: Handling activity activityType=%{public}@, userInfo=%@", &v10, 0x16u);
  }

  v8 = +[BKUserActivityManager sharedInstance];
  v9 = BUProtocolCast();
  [v8 continueActivity:activityCopy sceneController:v9];
}

- (BOOL)continueActivity:(id)activity sceneController:(id)controller
{
  activityCopy = activity;
  controllerCopy = controller;
  if (!activityCopy)
  {
    goto LABEL_4;
  }

  activityType = [activityCopy activityType];
  v9 = [activityType isEqualToString:@"com.apple.iBooks.sceneStateRestoration"];
  if (!v9)
  {
LABEL_6:

    goto LABEL_7;
  }

  isStateRestorationDisabled = [(_BKBaseSceneController *)self isStateRestorationDisabled];

  if ((isStateRestorationDisabled & 1) == 0)
  {
    activityType = [activityCopy userInfo];
    [(_BKBaseSceneController *)self handleStateRestorationFromData:activityType];
    goto LABEL_6;
  }

LABEL_4:
  LOBYTE(v9) = 0;
LABEL_7:

  return v9;
}

- (void)_handleStateRestorationCompleted
{
  v4 = +[BKAppDelegate sceneManager];
  scene = [(_BKBaseSceneController *)self scene];
  [v4 _didFinishSceneStateRestoration:scene];
}

- (void)handleStateRestorationFromData:(id)data
{
  dataCopy = data;
  if ([(_BKBaseSceneController *)self handledStateRestoration])
  {
    goto LABEL_16;
  }

  [(_BKBaseSceneController *)self setHandledStateRestoration:1];
  v5 = [dataCopy objectForKeyedSubscript:BCContinuationActivityAssetIDKey];
  if (!v5)
  {
    goto LABEL_10;
  }

  _lastOpenBookManager = [(_BKBaseSceneController *)self _lastOpenBookManager];
  v7 = [_lastOpenBookManager shouldAutoOpenAsset:v5];

  v8 = BCSceneLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v21[0] = 67109120;
    v21[1] = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "handleStateRestorationFromData: lastKnownSuccessfullyOpenedBook=%d", v21, 8u);
  }

  if (!v7)
  {
    v10 = BCSceneLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10078C698(v5, v10, v11, v12, v13, v14, v15, v16);
    }

LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v9 = 1;
  [(_BKBaseSceneController *)self setWillAttemptBookReopen:1];
  [(_BKBaseSceneController *)self _handleOpenBookActivityWithAssetID:v5 isStateRestoration:1];
LABEL_11:
  v17 = [dataCopy objectForKeyedSubscript:BCBookDisplayTitle];

  if (v17)
  {
    objc_opt_class();
    v18 = [dataCopy objectForKeyedSubscript:BCBookDisplayTitle];
    v19 = BUDynamicCast();
    scene = [(_BKBaseSceneController *)self scene];
    [scene setTitle:v19];
  }

  if ((v9 & 1) == 0)
  {
    [(_BKBaseSceneController *)self _handleStateRestorationCompleted];
  }

LABEL_16:
}

- (void)_handleOpenBookActivityWithAssetID:(id)d isStateRestoration:(BOOL)restoration
{
  dCopy = d;
  [(_BKBaseSceneController *)self launchCoordinator];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000A5C70;
  v9[3] = &unk_100A05DA0;
  v11 = v10 = dCopy;
  selfCopy = self;
  restorationCopy = restoration;
  v7 = v11;
  v8 = dCopy;
  [v7 appLaunchCoordinatorOnConditionMask:1 blockID:@"handle openBookActivity" performBlock:v9];
}

- (id)_optionsForContinueOpenBookActivity:(BOOL)activity
{
  activityCopy = activity;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = v4;
  if (activityCopy)
  {
    [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:AEAudiobookOptionsShouldNotAutoplayKey];
  }

  return v5;
}

- (BOOL)_assetSupportsSnapshots:(id)snapshots
{
  snapshotsCopy = snapshots;
  if ([snapshotsCopy length])
  {
    v4 = +[BKLibraryManager defaultManager];
    v5 = [v4 libraryAssetOnMainQueueWithAssetID:snapshotsCopy];

    v6 = +[BKAssetUtilities supportsRestorationSnapshots:](BKAssetUtilities, "supportsRestorationSnapshots:", [v5 contentType]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_continueOpenBookActivity:(id)activity assetLogID:(id)d isStateRestoration:(BOOL)restoration
{
  restorationCopy = restoration;
  activityCopy = activity;
  dCopy = d;
  bk_window = [(_BKBaseSceneController *)self bk_window];
  rootViewController = [bk_window rootViewController];
  v12 = [rootViewController im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL____BKEnqueuedBookPresenting];

  v13 = [(_BKBaseSceneController *)self _optionsForContinueOpenBookActivity:restorationCopy];
  v14 = [v13 mutableCopy];

  if ([(_BKBaseSceneController *)self _assetSupportsSnapshots:activityCopy])
  {
    v15 = [[BKRestorationScrimView alloc] initWithAssetID:activityCopy window:bk_window];
    [v14 setObject:&__kCFBooleanTrue forKeyedSubscript:@"BKBookPresentWithoutAnimations"];
  }

  else
  {
    v15 = 0;
  }

  [v14 setObject:dCopy forKeyedSubscript:AEAssetLogID];
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000A60F8;
  v17[3] = &unk_100A05DC8;
  v19 = v20;
  v17[4] = self;
  v16 = v15;
  v18 = v16;
  [v12 enqueueShowAssetWithTransactionProvider:self assetID:activityCopy location:0 options:v14 completion:v17];
  [(BKRestorationScrimView *)v16 show];

  _Block_object_dispose(v20, 8);
}

- (void)scene:(id)scene didFailToContinueUserActivityWithType:(id)type error:(id)error
{
  v6 = BCSceneLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "scene: Failure to get activity", v7, 2u);
  }

  [(_BKBaseSceneController *)self _handleStateRestorationCompleted];
}

- (id)dataForStateRestoration
{
  v3 = objc_alloc_init(NSMutableDictionary);
  [v3 setObject:&__kCFBooleanFalse forKeyedSubscript:@"BKSceneInfoIsAudiobookKey"];
  [v3 setObject:&__kCFBooleanFalse forKeyedSubscript:@"BKSceneInfoIsSupplementalContentKey"];
  launchCoordinator = [(_BKBaseSceneController *)self launchCoordinator];
  v5 = [launchCoordinator appLaunchCoordinatorIsConditionSatisfied:0];

  if (v5)
  {
    bk_window = [(_BKBaseSceneController *)self bk_window];
    rootViewController = [bk_window rootViewController];
    v8 = [rootViewController im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKBookPresenting];

    v9 = BUProtocolCast();
    v10 = [v8 bookPresenterCurrentlyOpenBookForSingleScene:v9];
    v11 = v10;
    if (v10)
    {
      assetPresenterAssetID = [v10 assetPresenterAssetID];
      if (assetPresenterAssetID)
      {
        [v3 setObject:assetPresenterAssetID forKeyedSubscript:BCContinuationActivityAssetIDKey];
        v13 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v11 assetPresenterIsAudiobook]);
        [v3 setObject:v13 forKeyedSubscript:@"BKSceneInfoIsAudiobookKey"];

        v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v11 isSupplementalContent]);
        [v3 setObject:v14 forKeyedSubscript:@"BKSceneInfoIsSupplementalContentKey"];

        assetPresenterAssetViewController = [v11 assetPresenterAssetViewController];
        asset = [assetPresenterAssetViewController asset];
        displayTitle = [asset displayTitle];
        [v3 setObject:displayTitle forKeyedSubscript:BCBookDisplayTitle];
      }
    }
  }

  return v3;
}

- (id)stateRestorationActivityForScene:(id)scene
{
  if ([(_BKBaseSceneController *)self isStateRestorationDisabled])
  {
    v4 = BCSceneLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 134217984;
      sceneType = [(_BKBaseSceneController *)self sceneType];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Not Saving Scene activity for scene type=%lu", &v20, 0xCu);
    }

    v5 = 0;
  }

  else if ([(_BKBaseSceneController *)self sceneType]== 2)
  {
    v5 = [[NSUserActivity alloc] initWithActivityType:@"com.apple.iBooks.sceneStateRestorationForAccountInfo"];
  }

  else
  {
    sceneType2 = [(_BKBaseSceneController *)self sceneType];
    v7 = [NSUserActivity alloc];
    if (sceneType2 == 3)
    {
      v5 = [v7 initWithActivityType:@"com.apple.iBooks.sceneStateRestorationForEndOfBook"];
      dataForStateRestoration = [(_BKBaseSceneController *)self dataForStateRestoration];
      [v5 setUserInfo:dataForStateRestoration];
    }

    else
    {
      v5 = [v7 initWithActivityType:@"com.apple.iBooks.sceneStateRestoration"];
      dataForStateRestoration = [(_BKBaseSceneController *)self dataForStateRestoration];
      [v5 setUserInfo:dataForStateRestoration];
      userInfo = [v5 userInfo];
      v10 = [userInfo objectForKeyedSubscript:BCContinuationActivityAssetIDKey];

      objc_opt_class();
      userInfo2 = [v5 userInfo];
      v12 = [userInfo2 objectForKeyedSubscript:@"BKSceneInfoIsSupplementalContentKey"];
      v13 = BUDynamicCast();
      bOOLValue = [v13 BOOLValue];

      if (v10 && (bOOLValue & 1) == 0)
      {
        _lastOpenBookManager = [(_BKBaseSceneController *)self _lastOpenBookManager];
        [_lastOpenBookManager updateSuccessfullyOpenedBookForAssetID:v10 successfullyOpenedBook:1];
      }

      v16 = BCSceneLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        activityType = [v5 activityType];
        userInfo3 = [v5 userInfo];
        v20 = 138543618;
        sceneType = activityType;
        v22 = 2112;
        v23 = userInfo3;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Scene save user activity: activityType=%{public}@, userInfo=%@", &v20, 0x16u);
      }
    }
  }

  return v5;
}

- (void)presentAlertController:(id)controller promptContext:(id)context
{
  controllerCopy = controller;
  v6 = BCSceneLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = controllerCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "_BKBaseSceneController: presentAlertController: %{public}@", &v7, 0xCu);
  }

  [(_BKBaseSceneController *)self presentViewController:controllerCopy animated:+[UIView completion:"areAnimationsEnabled"], 0];
}

- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler
{
  handlerCopy = handler;
  itemCopy = item;
  v9 = +[BKAppDelegate delegate];
  v8 = BUProtocolCast();
  [v9 performActionForShortcutItem:itemCopy sceneController:v8 completionHandler:handlerCopy];
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  contextsCopy = contexts;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [contextsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(contextsCopy);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [BKSceneUtilities URLContextOpenURLOptions:v10];
        v12 = [v10 URL];
        [(_BKBaseSceneController *)self openURL:v12 options:v11];
      }

      v7 = [contextsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)openURL:(id)l options:(id)options
{
  optionsCopy = options;
  lCopy = l;
  v8 = BUProtocolCast();
  v7 = +[BKAppDelegate delegate];
  [v7 applicationOpenURL:lCopy options:optionsCopy sceneController:v8];
}

- (id)_viewControllerForWelcomePresenting
{
  bk_window = [(_BKBaseSceneController *)self bk_window];
  rootViewController = [bk_window rootViewController];

  return rootViewController;
}

- (void)presentWelcomeViewController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  v8 = BCSceneLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = controllerCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "_BKBaseSceneController: presentWelcomeViewController: %{public}@", buf, 0xCu);
  }

  [(_BKBaseSceneController *)self setWelcomeViewController:controllerCopy];
  _viewControllerForWelcomePresenting = [(_BKBaseSceneController *)self _viewControllerForWelcomePresenting];
  welcomeViewController = [(_BKBaseSceneController *)self welcomeViewController];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000A6C1C;
  v12[3] = &unk_100A03920;
  v13 = completionCopy;
  v11 = completionCopy;
  [_viewControllerForWelcomePresenting presentViewController:welcomeViewController animated:0 completion:v12];
}

- (void)dismissWelcomeViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  _viewControllerForWelcomePresenting = [(_BKBaseSceneController *)self _viewControllerForWelcomePresenting];
  presentedViewController = [_viewControllerForWelcomePresenting presentedViewController];
  v9 = BCSceneLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v18 = _viewControllerForWelcomePresenting;
    v19 = 2114;
    v20 = presentedViewController;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "_BKBaseSceneController: dismissWelcomeViewControllerAnimated: presenter: %{public}@ presented: %{public}@", buf, 0x16u);
  }

  welcomeViewController = [(_BKBaseSceneController *)self welcomeViewController];
  if (welcomeViewController && (v11 = welcomeViewController, [(_BKBaseSceneController *)self welcomeViewController], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, presentedViewController == v12))
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000A6E34;
    v15[3] = &unk_100A03788;
    v15[4] = self;
    v16 = completionCopy;
    [_viewControllerForWelcomePresenting dismissViewControllerAnimated:animatedCopy completion:v15];
  }

  else
  {
    [(_BKBaseSceneController *)self setWelcomeViewController:0];
    v13 = objc_retainBlock(completionCopy);
    v14 = v13;
    if (v13)
    {
      (*(v13 + 2))(v13);
    }
  }
}

- (void)welcomePresenterFinishOngoingModalTransitionAnimations:(id)animations
{
  animationsCopy = animations;
  _viewControllerForWelcomePresenting = [(_BKBaseSceneController *)self _viewControllerForWelcomePresenting];
  v7 = _viewControllerForWelcomePresenting;
  if (_viewControllerForWelcomePresenting)
  {
    [_viewControllerForWelcomePresenting im_finishOngoingModalTransitionAnimations:animationsCopy];
  }

  else
  {
    v6 = objc_retainBlock(animationsCopy);

    if (v6)
    {
      v6[2](v6);
    }

    animationsCopy = v6;
  }
}

- (BOOL)welcomePresenterIsPresentingWelcome
{
  _viewControllerForWelcomePresenting = [(_BKBaseSceneController *)self _viewControllerForWelcomePresenting];
  welcomeViewController = [(_BKBaseSceneController *)self welcomeViewController];
  if (welcomeViewController)
  {
    presentedViewController = [_viewControllerForWelcomePresenting presentedViewController];
    v6 = welcomeViewController == presentedViewController;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_assetPresenters
{
  v2 = BUProtocolCast();
  bookFlowAssetPresenting = [v2 bookFlowAssetPresenting];

  v4 = [bookFlowAssetPresenting presenterViewControllersConformingToProtocol:&OBJC_PROTOCOL___BKAssetPresenting];

  return v4;
}

@end