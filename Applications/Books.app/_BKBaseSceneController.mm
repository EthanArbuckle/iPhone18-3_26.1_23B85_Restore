@interface _BKBaseSceneController
+ (id)sceneInfoFromSceneSession:(id)a3;
- (BCExternalURLOpenPrompter)externalURLLoadPrompter;
- (BCExternalURLOpenPrompter)externalURLOpenPrompter;
- (BKSceneInfo)sceneInfo;
- (BOOL)_assetSupportsSnapshots:(id)a3;
- (BOOL)continueActivity:(id)a3 sceneController:(id)a4;
- (BOOL)isStateRestorationDisabled;
- (BOOL)welcomePresenterIsPresentingWelcome;
- (BOOL)willContinueActivityWithType:(id)a3 sceneController:(id)a4;
- (_BKBaseSceneController)initWithSceneType:(unint64_t)a3;
- (id)_assetPresenters;
- (id)_optionsForContinueOpenBookActivity:(BOOL)a3;
- (id)_viewControllerForWelcomePresenting;
- (id)_viewControllerFromWhichToPresentAlerts;
- (id)_windowWithScene:(id)a3 sceneType:(unint64_t)a4;
- (id)dataForStateRestoration;
- (id)newShowAssetTransactionWithTargetSceneDescriptor:(id)a3;
- (id)newShowURLTransactionWithTargetSceneDescriptor:(id)a3;
- (id)newTransactionWithName:(id)a3 targetSceneDescriptor:(id)a4;
- (id)stateRestorationActivityForScene:(id)a3;
- (void)_continueOpenBookActivity:(id)a3 assetLogID:(id)a4 isStateRestoration:(BOOL)a5;
- (void)_doInterruptReadAloud:(BOOL)a3;
- (void)_handleOpenBookActivityWithAssetID:(id)a3 isStateRestoration:(BOOL)a4;
- (void)_handleStateRestorationCompleted;
- (void)_interruptReadAloud:(BOOL)a3;
- (void)_setupStatusBarBlurBackground;
- (void)dismissWelcomeViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)handleStateRestorationFromData:(id)a3;
- (void)openURL:(id)a3 options:(id)a4;
- (void)presentAlertController:(id)a3 promptContext:(id)a4;
- (void)presentModalViewController:(id)a3 animated:(BOOL)a4;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)presentWelcomeViewController:(id)a3 completion:(id)a4;
- (void)scene:(id)a3 continueUserActivity:(id)a4;
- (void)scene:(id)a3 didFailToContinueUserActivityWithType:(id)a4 error:(id)a5;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willContinueUserActivityWithType:(id)a4;
- (void)welcomePresenterFinishOngoingModalTransitionAnimations:(id)a3;
- (void)windowScene:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5;
@end

@implementation _BKBaseSceneController

- (void)_setupStatusBarBlurBackground
{
  v5 = [(_BKBaseSceneController *)self bk_window];
  v3 = [[BCStatusBarBackgroundController alloc] initWithWindow:v5];
  [(_BKBaseSceneController *)self setStatusBarBackgroundController:v3];

  v4 = [(_BKBaseSceneController *)self statusBarBackgroundController];
  [v4 setup];
}

- (BOOL)isStateRestorationDisabled
{
  v3 = objc_opt_class();
  v4 = [(_BKBaseSceneController *)self sceneType];

  return [v3 isStateRestorationDisabledForSceneType:v4];
}

- (_BKBaseSceneController)initWithSceneType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = _BKBaseSceneController;
  result = [(_BKBaseSceneController *)&v5 init];
  if (result)
  {
    result->_sceneType = a3;
  }

  return result;
}

- (id)newTransactionWithName:(id)a3 targetSceneDescriptor:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[BKAppDelegate sceneManager];
  v9 = [v8 newTransactionWithName:v7 originatingSceneController:self targetSceneDescriptor:v6];

  return v9;
}

- (id)newShowAssetTransactionWithTargetSceneDescriptor:(id)a3
{
  v4 = a3;
  v5 = +[BKAppDelegate sceneManager];
  v6 = [v5 newShowAssetTransactionWithOriginatingSceneController:self targetSceneDescriptor:v4];

  return v6;
}

- (id)newShowURLTransactionWithTargetSceneDescriptor:(id)a3
{
  v4 = a3;
  v5 = +[BKAppDelegate sceneManager];
  v6 = [v5 newShowURLTransactionWithOriginatingSceneController:self targetSceneDescriptor:v4];

  return v6;
}

- (id)_windowWithScene:(id)a3 sceneType:(unint64_t)a4
{
  v4 = a3;
  v5 = [v4 screen];
  [v5 setWantsSoftwareDimming:1];

  v6 = [[UIWindow alloc] initWithWindowScene:v4];
  v7 = +[UIColor clearColor];
  [v6 setBackgroundColor:v7];

  [v6 setOpaque:0];

  return v6;
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = BCSceneLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "_BKBaseSceneController: presentViewController: %{public}@", buf, 0xCu);
  }

  if (v6)
  {
    v11 = [(_BKBaseSceneController *)self launchCoordinator];
    LOBYTE(v6) = [v11 appLaunchCoordinatorHasAppLaunched];
  }

  v12 = [(_BKBaseSceneController *)self launchCoordinator];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000A4D20;
  v15[3] = &unk_100A057C8;
  v15[4] = self;
  v16 = v8;
  v18 = v6;
  v17 = v9;
  v13 = v9;
  v14 = v8;
  [v12 appLaunchCoordinatorPerformWhenLaunched:@"presentVC" block:v15];
}

- (void)presentModalViewController:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  v6 = BCSceneLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "_BKBaseSceneController: presentModalViewController: %{public}@", &v8, 0xCu);
  }

  v7 = [(_BKBaseSceneController *)self _viewControllerFromWhichToPresentAlerts];
  [v7 presentModalViewController:v5 withTransition:8];
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
  v2 = [(_BKBaseSceneController *)self bk_window];
  v3 = [v2 rootViewController];
  v4 = [v3 bc_deepestPresentedViewController];

  if ([v4 isBeingDismissed])
  {
    do
    {
      v5 = [v4 presentingViewController];

      v4 = v5;
    }

    while (([v5 isBeingDismissed] & 1) != 0);
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

- (void)_interruptReadAloud:(BOOL)a3
{
  v5 = [(_BKBaseSceneController *)self launchCoordinator];
  if ([v5 appLaunchCoordinatorIsConditionSatisfied:6])
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000A528C;
    v6[3] = &unk_100A05D78;
    v6[4] = self;
    v7 = a3;
    [v5 appLaunchCoordinatorOnConditionMask:1 blockID:@"Interrupt ReadAloud" performBlock:v6];
  }
}

- (void)_doInterruptReadAloud:(BOOL)a3
{
  v3 = a3;
  v12 = [(_BKBaseSceneController *)self bk_window];
  v4 = [v12 rootViewController];
  if (!v4)
  {
    sub_10078C5B8();
  }

  v5 = [v4 im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKBookPresenting];
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
  v8 = [v7 assetPresenterAssetViewController];
  v9 = BUDynamicCast();

  if (v9)
  {
    v10 = [v9 book];
    v11 = [v10 hasMediaOverlayElements];

    if (v3)
    {
      if (v11)
      {
        [v9 pauseReadAloud];
      }

      [v9 stopSoundtrack];
      [v9 stopPlayingMedia:0];
    }

    else
    {
      if (v11)
      {
        [v9 resumeReadAloud];
      }

      [v9 playCurrentSoundtrack];
    }
  }
}

- (BKSceneInfo)sceneInfo
{
  v3 = [(_BKBaseSceneController *)self scene];

  if (!v3)
  {
    sub_10078C660();
  }

  v4 = [(_BKBaseSceneController *)self dataForStateRestoration];
  v5 = [_BKBaseSceneInfo alloc];
  v6 = [(_BKBaseSceneController *)self scene];
  v7 = [v6 session];
  v8 = [(_BKBaseSceneInfo *)v5 initWithSceneSession:v7 userData:v4];

  v9 = BUProtocolCast();
  [(_BKBaseSceneInfo *)v8 setSceneController:v9];

  return v8;
}

+ (id)sceneInfoFromSceneSession:(id)a3
{
  v3 = a3;
  v4 = +[BKAppDelegate sceneManager];
  v5 = [v4 _lastKnownStateRestorationUserInfoForSceneSession:v3];

  v6 = [[_BKBaseSceneInfo alloc] initWithSceneSession:v3 userData:v5];

  return v6;
}

- (void)scene:(id)a3 willContinueUserActivityWithType:(id)a4
{
  v4 = a4;
  v5 = BCSceneLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "scene willContinueUserActivityWithType: Preparing for activity with type %{public}@", &v8, 0xCu);
  }

  v6 = +[BKUserActivityManager sharedInstance];
  v7 = BUProtocolCast();
  [v6 willContinueActivityWithType:v4 sceneController:v7];
}

- (BOOL)willContinueActivityWithType:(id)a3 sceneController:(id)a4
{
  v5 = a3;
  v6 = [(_BKBaseSceneController *)self scene];
  v7 = [v6 session];
  v8 = [v7 stateRestorationActivity];
  if (v8 && [v5 isEqualToString:@"com.apple.iBooks.sceneStateRestoration"])
  {
    v9 = ![(_BKBaseSceneController *)self isStateRestorationDisabled];
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (void)scene:(id)a3 continueUserActivity:(id)a4
{
  v4 = a4;
  v5 = BCSceneLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 activityType];
    v7 = [v4 userInfo];
    v10 = 138543618;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "scene continueUserActivity: Handling activity activityType=%{public}@, userInfo=%@", &v10, 0x16u);
  }

  v8 = +[BKUserActivityManager sharedInstance];
  v9 = BUProtocolCast();
  [v8 continueActivity:v4 sceneController:v9];
}

- (BOOL)continueActivity:(id)a3 sceneController:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    goto LABEL_4;
  }

  v8 = [v6 activityType];
  v9 = [v8 isEqualToString:@"com.apple.iBooks.sceneStateRestoration"];
  if (!v9)
  {
LABEL_6:

    goto LABEL_7;
  }

  v10 = [(_BKBaseSceneController *)self isStateRestorationDisabled];

  if ((v10 & 1) == 0)
  {
    v8 = [v6 userInfo];
    [(_BKBaseSceneController *)self handleStateRestorationFromData:v8];
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
  v3 = [(_BKBaseSceneController *)self scene];
  [v4 _didFinishSceneStateRestoration:v3];
}

- (void)handleStateRestorationFromData:(id)a3
{
  v4 = a3;
  if ([(_BKBaseSceneController *)self handledStateRestoration])
  {
    goto LABEL_16;
  }

  [(_BKBaseSceneController *)self setHandledStateRestoration:1];
  v5 = [v4 objectForKeyedSubscript:BCContinuationActivityAssetIDKey];
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(_BKBaseSceneController *)self _lastOpenBookManager];
  v7 = [v6 shouldAutoOpenAsset:v5];

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
  v17 = [v4 objectForKeyedSubscript:BCBookDisplayTitle];

  if (v17)
  {
    objc_opt_class();
    v18 = [v4 objectForKeyedSubscript:BCBookDisplayTitle];
    v19 = BUDynamicCast();
    v20 = [(_BKBaseSceneController *)self scene];
    [v20 setTitle:v19];
  }

  if ((v9 & 1) == 0)
  {
    [(_BKBaseSceneController *)self _handleStateRestorationCompleted];
  }

LABEL_16:
}

- (void)_handleOpenBookActivityWithAssetID:(id)a3 isStateRestoration:(BOOL)a4
{
  v6 = a3;
  [(_BKBaseSceneController *)self launchCoordinator];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000A5C70;
  v9[3] = &unk_100A05DA0;
  v11 = v10 = v6;
  v12 = self;
  v13 = a4;
  v7 = v11;
  v8 = v6;
  [v7 appLaunchCoordinatorOnConditionMask:1 blockID:@"handle openBookActivity" performBlock:v9];
}

- (id)_optionsForContinueOpenBookActivity:(BOOL)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = v4;
  if (v3)
  {
    [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:AEAudiobookOptionsShouldNotAutoplayKey];
  }

  return v5;
}

- (BOOL)_assetSupportsSnapshots:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = +[BKLibraryManager defaultManager];
    v5 = [v4 libraryAssetOnMainQueueWithAssetID:v3];

    v6 = +[BKAssetUtilities supportsRestorationSnapshots:](BKAssetUtilities, "supportsRestorationSnapshots:", [v5 contentType]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_continueOpenBookActivity:(id)a3 assetLogID:(id)a4 isStateRestoration:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(_BKBaseSceneController *)self bk_window];
  v11 = [v10 rootViewController];
  v12 = [v11 im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL____BKEnqueuedBookPresenting];

  v13 = [(_BKBaseSceneController *)self _optionsForContinueOpenBookActivity:v5];
  v14 = [v13 mutableCopy];

  if ([(_BKBaseSceneController *)self _assetSupportsSnapshots:v8])
  {
    v15 = [[BKRestorationScrimView alloc] initWithAssetID:v8 window:v10];
    [v14 setObject:&__kCFBooleanTrue forKeyedSubscript:@"BKBookPresentWithoutAnimations"];
  }

  else
  {
    v15 = 0;
  }

  [v14 setObject:v9 forKeyedSubscript:AEAssetLogID];
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
  [v12 enqueueShowAssetWithTransactionProvider:self assetID:v8 location:0 options:v14 completion:v17];
  [(BKRestorationScrimView *)v16 show];

  _Block_object_dispose(v20, 8);
}

- (void)scene:(id)a3 didFailToContinueUserActivityWithType:(id)a4 error:(id)a5
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
  v4 = [(_BKBaseSceneController *)self launchCoordinator];
  v5 = [v4 appLaunchCoordinatorIsConditionSatisfied:0];

  if (v5)
  {
    v6 = [(_BKBaseSceneController *)self bk_window];
    v7 = [v6 rootViewController];
    v8 = [v7 im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKBookPresenting];

    v9 = BUProtocolCast();
    v10 = [v8 bookPresenterCurrentlyOpenBookForSingleScene:v9];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 assetPresenterAssetID];
      if (v12)
      {
        [v3 setObject:v12 forKeyedSubscript:BCContinuationActivityAssetIDKey];
        v13 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v11 assetPresenterIsAudiobook]);
        [v3 setObject:v13 forKeyedSubscript:@"BKSceneInfoIsAudiobookKey"];

        v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v11 isSupplementalContent]);
        [v3 setObject:v14 forKeyedSubscript:@"BKSceneInfoIsSupplementalContentKey"];

        v15 = [v11 assetPresenterAssetViewController];
        v16 = [v15 asset];
        v17 = [v16 displayTitle];
        [v3 setObject:v17 forKeyedSubscript:BCBookDisplayTitle];
      }
    }
  }

  return v3;
}

- (id)stateRestorationActivityForScene:(id)a3
{
  if ([(_BKBaseSceneController *)self isStateRestorationDisabled])
  {
    v4 = BCSceneLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 134217984;
      v21 = [(_BKBaseSceneController *)self sceneType];
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
    v6 = [(_BKBaseSceneController *)self sceneType];
    v7 = [NSUserActivity alloc];
    if (v6 == 3)
    {
      v5 = [v7 initWithActivityType:@"com.apple.iBooks.sceneStateRestorationForEndOfBook"];
      v8 = [(_BKBaseSceneController *)self dataForStateRestoration];
      [v5 setUserInfo:v8];
    }

    else
    {
      v5 = [v7 initWithActivityType:@"com.apple.iBooks.sceneStateRestoration"];
      v8 = [(_BKBaseSceneController *)self dataForStateRestoration];
      [v5 setUserInfo:v8];
      v9 = [v5 userInfo];
      v10 = [v9 objectForKeyedSubscript:BCContinuationActivityAssetIDKey];

      objc_opt_class();
      v11 = [v5 userInfo];
      v12 = [v11 objectForKeyedSubscript:@"BKSceneInfoIsSupplementalContentKey"];
      v13 = BUDynamicCast();
      v14 = [v13 BOOLValue];

      if (v10 && (v14 & 1) == 0)
      {
        v15 = [(_BKBaseSceneController *)self _lastOpenBookManager];
        [v15 updateSuccessfullyOpenedBookForAssetID:v10 successfullyOpenedBook:1];
      }

      v16 = BCSceneLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v5 activityType];
        v18 = [v5 userInfo];
        v20 = 138543618;
        v21 = v17;
        v22 = 2112;
        v23 = v18;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Scene save user activity: activityType=%{public}@, userInfo=%@", &v20, 0x16u);
      }
    }
  }

  return v5;
}

- (void)presentAlertController:(id)a3 promptContext:(id)a4
{
  v5 = a3;
  v6 = BCSceneLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "_BKBaseSceneController: presentAlertController: %{public}@", &v7, 0xCu);
  }

  [(_BKBaseSceneController *)self presentViewController:v5 animated:+[UIView completion:"areAnimationsEnabled"], 0];
}

- (void)windowScene:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5
{
  v6 = a5;
  v7 = a4;
  v9 = +[BKAppDelegate delegate];
  v8 = BUProtocolCast();
  [v9 performActionForShortcutItem:v7 sceneController:v8 completionHandler:v6];
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  v5 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [BKSceneUtilities URLContextOpenURLOptions:v10];
        v12 = [v10 URL];
        [(_BKBaseSceneController *)self openURL:v12 options:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)openURL:(id)a3 options:(id)a4
{
  v5 = a4;
  v6 = a3;
  v8 = BUProtocolCast();
  v7 = +[BKAppDelegate delegate];
  [v7 applicationOpenURL:v6 options:v5 sceneController:v8];
}

- (id)_viewControllerForWelcomePresenting
{
  v2 = [(_BKBaseSceneController *)self bk_window];
  v3 = [v2 rootViewController];

  return v3;
}

- (void)presentWelcomeViewController:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = BCSceneLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "_BKBaseSceneController: presentWelcomeViewController: %{public}@", buf, 0xCu);
  }

  [(_BKBaseSceneController *)self setWelcomeViewController:v6];
  v9 = [(_BKBaseSceneController *)self _viewControllerForWelcomePresenting];
  v10 = [(_BKBaseSceneController *)self welcomeViewController];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000A6C1C;
  v12[3] = &unk_100A03920;
  v13 = v7;
  v11 = v7;
  [v9 presentViewController:v10 animated:0 completion:v12];
}

- (void)dismissWelcomeViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(_BKBaseSceneController *)self _viewControllerForWelcomePresenting];
  v8 = [v7 presentedViewController];
  v9 = BCSceneLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v18 = v7;
    v19 = 2114;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "_BKBaseSceneController: dismissWelcomeViewControllerAnimated: presenter: %{public}@ presented: %{public}@", buf, 0x16u);
  }

  v10 = [(_BKBaseSceneController *)self welcomeViewController];
  if (v10 && (v11 = v10, [(_BKBaseSceneController *)self welcomeViewController], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v8 == v12))
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000A6E34;
    v15[3] = &unk_100A03788;
    v15[4] = self;
    v16 = v6;
    [v7 dismissViewControllerAnimated:v4 completion:v15];
  }

  else
  {
    [(_BKBaseSceneController *)self setWelcomeViewController:0];
    v13 = objc_retainBlock(v6);
    v14 = v13;
    if (v13)
    {
      (*(v13 + 2))(v13);
    }
  }
}

- (void)welcomePresenterFinishOngoingModalTransitionAnimations:(id)a3
{
  v4 = a3;
  v5 = [(_BKBaseSceneController *)self _viewControllerForWelcomePresenting];
  v7 = v5;
  if (v5)
  {
    [v5 im_finishOngoingModalTransitionAnimations:v4];
  }

  else
  {
    v6 = objc_retainBlock(v4);

    if (v6)
    {
      v6[2](v6);
    }

    v4 = v6;
  }
}

- (BOOL)welcomePresenterIsPresentingWelcome
{
  v3 = [(_BKBaseSceneController *)self _viewControllerForWelcomePresenting];
  v4 = [(_BKBaseSceneController *)self welcomeViewController];
  if (v4)
  {
    v5 = [v3 presentedViewController];
    v6 = v4 == v5;
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
  v3 = [v2 bookFlowAssetPresenting];

  v4 = [v3 presenterViewControllersConformingToProtocol:&OBJC_PROTOCOL___BKAssetPresenting];

  return v4;
}

@end