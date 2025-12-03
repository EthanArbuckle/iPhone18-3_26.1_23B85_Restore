@interface SPUISearchViewWindowSceneDelegate
+ (id)restorationData;
+ (id)restorationDataQueue;
+ (id)restorationUrl;
+ (void)postMemoryWarningAndPerformBlockIfOverInactiveLimit:(id)limit;
+ (void)saveRestorationData:(id)data;
- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type;
- (void)backgroundSearchScene;
- (void)dismissSearchViewWithReason:(unint64_t)reason;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)updateSearchViewClientSceneSettingsIncludingKeyboard:(BOOL)keyboard dueToKeyboardLayout:(BOOL)layout;
@end

@implementation SPUISearchViewWindowSceneDelegate

+ (id)restorationData
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000038AC;
  v11 = sub_1000038BC;
  v12 = 0;
  restorationDataQueue = [self restorationDataQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000028C0;
  v6[3] = &unk_10000C520;
  v6[4] = &v7;
  v6[5] = self;
  dispatch_sync(restorationDataQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

+ (id)restorationDataQueue
{
  if (qword_100011F30 != -1)
  {
    sub_100002828();
  }

  v3 = qword_100011F38;

  return v3;
}

+ (id)restorationUrl
{
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v3 = [v2 objectAtIndex:0];

  v4 = [NSString stringWithFormat:@"%@/%@/%@.%@", v3, @"Saved Application State", @"com.apple.Spotlight", @"savedState"];
  v5 = +[NSFileManager defaultManager];
  v6 = [v5 fileExistsAtPath:v4];

  if ((v6 & 1) == 0)
  {
    v7 = +[NSFileManager defaultManager];
    [v7 createDirectoryAtPath:v4 withIntermediateDirectories:0 attributes:0 error:0];
  }

  v8 = [v4 stringByAppendingString:@"/spotlightRestorationData.data"];

  v9 = [[NSURL alloc] initFileURLWithPath:v8 isDirectory:1];

  return v9;
}

+ (void)saveRestorationData:(id)data
{
  dataCopy = data;
  restorationDataQueue = [self restorationDataQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003978;
  v7[3] = &unk_10000C548;
  v8 = dataCopy;
  selfCopy = self;
  v6 = dataCopy;
  dispatch_async(restorationDataQueue, v7);
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  [sceneCopy _setKeepContextAssociationInBackground:1];
  v7 = [[SPUISecureWindow alloc] initWithWindowScene:sceneCopy];
  [(SPUISecureWindow *)v7 setHidden:0];
  [(SPUISecureWindow *)v7 setBackgroundColor:0];
  v8 = +[SPUISearchViewControllerHolder sharedInstance];
  rootViewController = [v8 rootViewController];
  [(SPUISecureWindow *)v7 setRootViewController:rootViewController];

  _rootSheetPresentationController = [(SPUISecureWindow *)v7 _rootSheetPresentationController];
  [_rootSheetPresentationController _setShouldScaleDownBehindDescendantSheets:0];

  [(SPUISearchViewWindowSceneDelegate *)self setSearchViewWindow:v7];
  v11 = +[SPUISearchViewControllerHolder sharedInstance];
  searchViewController = [v11 searchViewController];
  [(SPUISearchViewWindowSceneDelegate *)self setSearchViewController:searchViewController];

  v13 = +[SPUISearchViewControllerHolder sharedInstance];
  unifiedFieldController = [v13 unifiedFieldController];
  [(SPUISearchViewWindowSceneDelegate *)self setUnifiedFieldViewController:unifiedFieldController];

  v15 = +[SPUISearchViewControllerHolder sharedInstance];
  navigationController = [v15 navigationController];
  [(SPUISearchViewWindowSceneDelegate *)self setNavController:navigationController];

  searchViewController2 = [(SPUISearchViewWindowSceneDelegate *)self searchViewController];
  [searchViewController2 setDelegate:self];

  unifiedFieldViewController = [(SPUISearchViewWindowSceneDelegate *)self unifiedFieldViewController];
  [unifiedFieldViewController setDelegate:self];

  selfCopy = self;
  v19 = [NSArray arrayWithObjects:&selfCopy count:1];
  _FBSScene = [sceneCopy _FBSScene];
  identifier = [_FBSScene identifier];
  [sceneCopy _registerSettingsDiffActionArray:v19 forKey:identifier];

  [(SPUISearchViewWindowSceneDelegate *)self updateSearchViewClientSceneSettings];
  searchViewWindow = [(SPUISearchViewWindowSceneDelegate *)self searchViewWindow];
  [searchViewWindow makeKeyWindow];
}

- (void)updateSearchViewClientSceneSettingsIncludingKeyboard:(BOOL)keyboard dueToKeyboardLayout:(BOOL)layout
{
  if ((+[SPUIDefaults enableFloatingWindow]& 1) == 0)
  {
    layoutCopy = layout;
    keyboardCopy = keyboard;
    searchViewController = [(SPUISearchViewWindowSceneDelegate *)self searchViewController];
    [searchViewController distanceToTopOfAppIcons];
    v62 = v8;

    searchViewController2 = [(SPUISearchViewWindowSceneDelegate *)self searchViewController];
    headerView = [searchViewController2 headerView];

    searchField = [headerView searchField];
    layer = [searchField layer];
    RenderId = CALayerGetRenderId();

    searchField2 = [headerView searchField];
    layer2 = [searchField2 layer];
    v15 = CALayerGetContext();
    contextId = [v15 contextId];

    v16 = +[SPUISearchViewControllerHolder sharedInstance];
    searchProtectorLayer = [v16 searchProtectorLayer];
    v59 = CALayerGetRenderId();

    v18 = +[SPUISearchViewControllerHolder sharedInstance];
    searchProtectorLayer2 = [v18 searchProtectorLayer];
    v20 = CALayerGetContext();
    contextId2 = [v20 contextId];

    backgroundBlurView = [headerView backgroundBlurView];
    if (backgroundBlurView)
    {
      backgroundBlurView2 = [headerView backgroundBlurView];
      layer3 = [backgroundBlurView2 layer];
      v25 = CALayerGetRenderId();
    }

    else
    {
      v25 = 0;
    }

    backgroundBlurView3 = [headerView backgroundBlurView];
    if (backgroundBlurView3)
    {
      backgroundBlurView4 = [headerView backgroundBlurView];
      layer4 = [backgroundBlurView4 layer];
      v29 = CALayerGetContext();
      contextId3 = [v29 contextId];
    }

    else
    {
      contextId3 = 0;
    }

    v31 = 0.0;
    if ((+[UIKeyboard isInHardwareKeyboardMode]& 1) == 0)
    {
      searchViewWindow = [(SPUISearchViewWindowSceneDelegate *)self searchViewWindow];
      interfaceOrientation = [searchViewWindow interfaceOrientation];
      searchField3 = [headerView searchField];
      [UIKeyboard sizeForInterfaceOrientation:interfaceOrientation inputDelegate:searchField3];
      v31 = v35;
    }

    unifiedFieldViewController = [(SPUISearchViewWindowSceneDelegate *)self unifiedFieldViewController];
    v37 = [unifiedFieldViewController isUnifiedFieldDocked] ^ 1;
    [unifiedFieldViewController unifiedFieldSize];
    v39 = v38;
    v41 = v40;
    [unifiedFieldViewController dockedUnifiedFieldSize];
    v43 = v42;
    v45 = v44;
    [unifiedFieldViewController unifiedFieldCornerRadius];
    v47 = v46;
    [unifiedFieldViewController unifiedFieldVerticalSpacing];
    v49 = v48;
    searchViewController3 = [(SPUISearchViewWindowSceneDelegate *)self searchViewController];
    view = [searchViewController3 view];
    tlks_screen = [view tlks_screen];
    [tlks_screen _referenceBounds];
    v53 = 2.0;
    if (v54 < 394.0)
    {
      v53 = 0.0;
    }

    v55 = v31 + v49 + v53;

    searchViewWindow2 = [(SPUISearchViewWindowSceneDelegate *)self searchViewWindow];
    _scene = [searchViewWindow2 _scene];
    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_100004180;
    v65[3] = &unk_10000C570;
    v77 = contextId;
    v78 = contextId2;
    v69 = v55;
    v70 = v62;
    v67 = RenderId;
    v68 = v59;
    v66 = unifiedFieldViewController;
    v80 = layoutCopy;
    v81 = keyboardCopy;
    v82 = v37;
    v71 = v39;
    v72 = v41;
    v73 = v43;
    v74 = v45;
    v75 = v47;
    v79 = contextId3;
    v76 = v25;
    v58 = unifiedFieldViewController;
    [_scene updateClientSettingsWithBlock:v65];
  }
}

- (void)sceneDidBecomeActive:(id)active
{
  searchViewWindow = [(SPUISearchViewWindowSceneDelegate *)self searchViewWindow];
  [searchViewWindow makeKeyWindow];
}

- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type
{
  sceneCopy = scene;
  sSceneCopy = sScene;
  diffCopy = diff;
  settingsCopy = settings;
  contextCopy = context;
  settings = [sSceneCopy settings];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v69 = contextCopy;
    v70 = sceneCopy;
    settings2 = [sSceneCopy settings];
    if ((+[SPUIDefaults enableFloatingWindow]& 1) == 0)
    {
      cornerRadiusConfiguration = [settings2 cornerRadiusConfiguration];
      searchViewWindow = [(SPUISearchViewWindowSceneDelegate *)self searchViewWindow];
      traitOverrides = [searchViewWindow traitOverrides];
      [cornerRadiusConfiguration bottomLeft];
      v25 = v24;
      v26 = objc_opt_self();
      [traitOverrides setCGFloatValue:v26 forTrait:v25];
    }

    v27 = settingsCopy;
    interfaceOrientation = [settings2 interfaceOrientation];
    searchViewController = [(SPUISearchViewWindowSceneDelegate *)self searchViewController];
    headerView = [searchViewController headerView];
    [headerView setActiveInterfaceOrientation:interfaceOrientation];

    presentationSource = [settings2 presentationSource];
    [(SPUISearchViewWindowSceneDelegate *)self currentRevealProgress];
    v33 = v32;
    [settings2 revealProgress];
    if (v33 != v34 && presentationSource != 6 && (+[UIKeyboard isInHardwareKeyboardMode](UIKeyboard, "isInHardwareKeyboardMode") & 1) == 0 && [settings2 presentationIntent] == 1)
    {
      [settings2 revealProgress];
      [(SPUISearchViewWindowSceneDelegate *)self setCurrentRevealProgress:?];
      searchViewController2 = [(SPUISearchViewWindowSceneDelegate *)self searchViewController];
      [(SPUISearchViewWindowSceneDelegate *)self currentRevealProgress];
      [searchViewController2 searchViewDidUpdatePresentationProgress:?];
    }

    legibilitySettings = [settings2 legibilitySettings];
    v71 = diffCopy;
    if (legibilitySettings)
    {
      v37 = legibilitySettings;
      searchViewController3 = [(SPUISearchViewWindowSceneDelegate *)self searchViewController];
      legibilitySettings2 = [searchViewController3 legibilitySettings];
      legibilitySettings3 = [settings2 legibilitySettings];
      v41 = [legibilitySettings2 isEqual:legibilitySettings3];

      diffCopy = v71;
      if ((v41 & 1) == 0)
      {
        searchViewController4 = [(SPUISearchViewWindowSceneDelegate *)self searchViewController];
        legibilitySettings4 = [settings2 legibilitySettings];
        [searchViewController4 setLegibilitySettings:legibilitySettings4];

        diffCopy = v71;
      }
    }

    currentPresentationSource = [(SPUISearchViewWindowSceneDelegate *)self currentPresentationSource];
    if (currentPresentationSource != [settings2 presentationSource])
    {
      -[SPUISearchViewWindowSceneDelegate setCurrentPresentationSource:](self, "setCurrentPresentationSource:", [settings2 presentationSource]);
    }

    currentIntent = [(SPUISearchViewWindowSceneDelegate *)self currentIntent];
    settingsCopy = v27;
    contextCopy = v69;
    sceneCopy = v70;
    if (currentIntent == [settings2 presentationIntent])
    {
      goto LABEL_36;
    }

    -[SPUISearchViewWindowSceneDelegate setCurrentIntent:](self, "setCurrentIntent:", [settings2 presentationIntent]);
    currentIntent2 = [(SPUISearchViewWindowSceneDelegate *)self currentIntent];
    if (currentIntent2 > 2)
    {
      if (currentIntent2 == 3)
      {
        searchViewController5 = [(SPUISearchViewWindowSceneDelegate *)self searchViewController];
        [searchViewController5 searchViewWillDismissWithReason:0];
LABEL_32:

        goto LABEL_36;
      }

      if (currentIntent2 != 4)
      {
LABEL_36:

        goto LABEL_37;
      }

      searchViewController6 = [(SPUISearchViewWindowSceneDelegate *)self searchViewController];
      searchViewRestorationContext = [searchViewController6 searchViewRestorationContext];

      searchViewController7 = [(SPUISearchViewWindowSceneDelegate *)self searchViewController];
      [searchViewController7 searchViewDidDismissWithReason:0];

      context = objc_autoreleasePoolPush();
      searchViewController8 = [(SPUISearchViewWindowSceneDelegate *)self searchViewController];
      [searchViewController8 setRestorationData:0];

      v73 = 0;
      v53 = [NSKeyedArchiver archivedDataWithRootObject:searchViewRestorationContext requiringSecureCoding:1 error:&v73];
      v54 = v73;
      v68 = searchViewRestorationContext;
      if (v54)
      {
        v55 = spuiLogHandles[0];
        if (!spuiLogHandles[0])
        {
          SPUIInitLogging();
          v55 = spuiLogHandles[0];
        }

        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          sub_100005754();
        }
      }

      else
      {
        [objc_opt_class() saveRestorationData:v53];
      }

      navController = [(SPUISearchViewWindowSceneDelegate *)self navController];
      v64 = [navController popToRootViewControllerAnimated:0];

      navController2 = [(SPUISearchViewWindowSceneDelegate *)self navController];
      view = [navController2 view];
      [view layoutIfNeeded];

      v72[0] = _NSConcreteStackBlock;
      v72[1] = 3221225472;
      v72[2] = sub_1000049D0;
      v72[3] = &unk_10000C598;
      v72[4] = self;
      [objc_opt_class() postMemoryWarningAndPerformBlockIfOverInactiveLimit:v72];
      +[SUIUtilities releaseVisionCachedResources];

      objc_autoreleasePoolPop(context);
      [objc_opt_class() postMemoryWarningAndPerformBlockIfOverInactiveLimit:0];
      [(SPUISearchViewWindowSceneDelegate *)self backgroundSearchScene];

      sceneCopy = v70;
    }

    else
    {
      if (currentIntent2 != 1)
      {
        if (currentIntent2 == 2)
        {
          if (presentationSource != 6)
          {
            searchViewController9 = [(SPUISearchViewWindowSceneDelegate *)self searchViewController];
            [searchViewController9 searchViewDidPresentFromSource:{-[SPUISearchViewWindowSceneDelegate currentPresentationSource](self, "currentPresentationSource")}];
          }

          searchViewController5 = [(SPUISearchViewWindowSceneDelegate *)self searchViewController];
          [searchViewController5 sendPresentationFeedback];
          goto LABEL_32;
        }

        goto LABEL_36;
      }

      restorationData = [objc_opt_class() restorationData];
      searchViewController10 = [(SPUISearchViewWindowSceneDelegate *)self searchViewController];
      [searchViewController10 setRestorationData:restorationData];

      v58 = objc_opt_class();
      v59 = objc_opt_new();
      [v58 saveRestorationData:v59];

      searchViewController11 = [(SPUISearchViewWindowSceneDelegate *)self searchViewController];
      [searchViewController11 searchViewWillPresentFromSource:{-[SPUISearchViewWindowSceneDelegate currentPresentationSource](self, "currentPresentationSource")}];

      if (presentationSource == 6)
      {
        searchViewController12 = [(SPUISearchViewWindowSceneDelegate *)self searchViewController];
        [searchViewController12 searchViewDidPresentFromSource:{-[SPUISearchViewWindowSceneDelegate currentPresentationSource](self, "currentPresentationSource")}];
      }

      searchViewController13 = [(SPUISearchViewWindowSceneDelegate *)self searchViewController];
      [searchViewController13 setRestorationData:0];
    }

    diffCopy = v71;
    goto LABEL_36;
  }

LABEL_37:
}

+ (void)postMemoryWarningAndPerformBlockIfOverInactiveLimit:(id)limit
{
  limitCopy = limit;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v4 = getpid();
  proc_pid_rusage(v4, 4, &v7);
  if (*(&v11 + 1) >> 21 >= 0x19uLL)
  {
    v5 = objc_autoreleasePoolPush();
    if (limitCopy)
    {
      limitCopy[2](limitCopy);
    }

    v6 = [NSNotificationCenter defaultCenter:v7];
    [v6 postNotificationName:UIApplicationDidReceiveMemoryWarningNotification object:0];

    objc_autoreleasePoolPop(v5);
  }
}

- (void)backgroundSearchScene
{
  searchViewWindow = [(SPUISearchViewWindowSceneDelegate *)self searchViewWindow];
  _scene = [searchViewWindow _scene];
  [_scene updateClientSettingsWithTransitionBlock:&stru_10000C5B8];
}

- (void)dismissSearchViewWithReason:(unint64_t)reason
{
  searchViewWindow = [(SPUISearchViewWindowSceneDelegate *)self searchViewWindow];
  _scene = [searchViewWindow _scene];
  [_scene updateClientSettingsWithTransitionBlock:&stru_10000C5D8];
}

@end