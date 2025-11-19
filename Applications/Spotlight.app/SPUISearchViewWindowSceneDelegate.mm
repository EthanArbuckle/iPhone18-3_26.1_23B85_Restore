@interface SPUISearchViewWindowSceneDelegate
+ (id)restorationData;
+ (id)restorationDataQueue;
+ (id)restorationUrl;
+ (void)postMemoryWarningAndPerformBlockIfOverInactiveLimit:(id)a3;
+ (void)saveRestorationData:(id)a3;
- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8;
- (void)backgroundSearchScene;
- (void)dismissSearchViewWithReason:(unint64_t)a3;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)updateSearchViewClientSceneSettingsIncludingKeyboard:(BOOL)a3 dueToKeyboardLayout:(BOOL)a4;
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
  v3 = [a1 restorationDataQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000028C0;
  v6[3] = &unk_10000C520;
  v6[4] = &v7;
  v6[5] = a1;
  dispatch_sync(v3, v6);

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

+ (void)saveRestorationData:(id)a3
{
  v4 = a3;
  v5 = [a1 restorationDataQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003978;
  v7[3] = &unk_10000C548;
  v8 = v4;
  v9 = a1;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v6 = a3;
  [v6 _setKeepContextAssociationInBackground:1];
  v7 = [[SPUISecureWindow alloc] initWithWindowScene:v6];
  [(SPUISecureWindow *)v7 setHidden:0];
  [(SPUISecureWindow *)v7 setBackgroundColor:0];
  v8 = +[SPUISearchViewControllerHolder sharedInstance];
  v9 = [v8 rootViewController];
  [(SPUISecureWindow *)v7 setRootViewController:v9];

  v10 = [(SPUISecureWindow *)v7 _rootSheetPresentationController];
  [v10 _setShouldScaleDownBehindDescendantSheets:0];

  [(SPUISearchViewWindowSceneDelegate *)self setSearchViewWindow:v7];
  v11 = +[SPUISearchViewControllerHolder sharedInstance];
  v12 = [v11 searchViewController];
  [(SPUISearchViewWindowSceneDelegate *)self setSearchViewController:v12];

  v13 = +[SPUISearchViewControllerHolder sharedInstance];
  v14 = [v13 unifiedFieldController];
  [(SPUISearchViewWindowSceneDelegate *)self setUnifiedFieldViewController:v14];

  v15 = +[SPUISearchViewControllerHolder sharedInstance];
  v16 = [v15 navigationController];
  [(SPUISearchViewWindowSceneDelegate *)self setNavController:v16];

  v17 = [(SPUISearchViewWindowSceneDelegate *)self searchViewController];
  [v17 setDelegate:self];

  v18 = [(SPUISearchViewWindowSceneDelegate *)self unifiedFieldViewController];
  [v18 setDelegate:self];

  v23 = self;
  v19 = [NSArray arrayWithObjects:&v23 count:1];
  v20 = [v6 _FBSScene];
  v21 = [v20 identifier];
  [v6 _registerSettingsDiffActionArray:v19 forKey:v21];

  [(SPUISearchViewWindowSceneDelegate *)self updateSearchViewClientSceneSettings];
  v22 = [(SPUISearchViewWindowSceneDelegate *)self searchViewWindow];
  [v22 makeKeyWindow];
}

- (void)updateSearchViewClientSceneSettingsIncludingKeyboard:(BOOL)a3 dueToKeyboardLayout:(BOOL)a4
{
  if ((+[SPUIDefaults enableFloatingWindow]& 1) == 0)
  {
    v63 = a4;
    v64 = a3;
    v7 = [(SPUISearchViewWindowSceneDelegate *)self searchViewController];
    [v7 distanceToTopOfAppIcons];
    v62 = v8;

    v9 = [(SPUISearchViewWindowSceneDelegate *)self searchViewController];
    v10 = [v9 headerView];

    v11 = [v10 searchField];
    v12 = [v11 layer];
    RenderId = CALayerGetRenderId();

    v13 = [v10 searchField];
    v14 = [v13 layer];
    v15 = CALayerGetContext();
    v60 = [v15 contextId];

    v16 = +[SPUISearchViewControllerHolder sharedInstance];
    v17 = [v16 searchProtectorLayer];
    v59 = CALayerGetRenderId();

    v18 = +[SPUISearchViewControllerHolder sharedInstance];
    v19 = [v18 searchProtectorLayer];
    v20 = CALayerGetContext();
    v21 = [v20 contextId];

    v22 = [v10 backgroundBlurView];
    if (v22)
    {
      v23 = [v10 backgroundBlurView];
      v24 = [v23 layer];
      v25 = CALayerGetRenderId();
    }

    else
    {
      v25 = 0;
    }

    v26 = [v10 backgroundBlurView];
    if (v26)
    {
      v27 = [v10 backgroundBlurView];
      v28 = [v27 layer];
      v29 = CALayerGetContext();
      v30 = [v29 contextId];
    }

    else
    {
      v30 = 0;
    }

    v31 = 0.0;
    if ((+[UIKeyboard isInHardwareKeyboardMode]& 1) == 0)
    {
      v32 = [(SPUISearchViewWindowSceneDelegate *)self searchViewWindow];
      v33 = [v32 interfaceOrientation];
      v34 = [v10 searchField];
      [UIKeyboard sizeForInterfaceOrientation:v33 inputDelegate:v34];
      v31 = v35;
    }

    v36 = [(SPUISearchViewWindowSceneDelegate *)self unifiedFieldViewController];
    v37 = [v36 isUnifiedFieldDocked] ^ 1;
    [v36 unifiedFieldSize];
    v39 = v38;
    v41 = v40;
    [v36 dockedUnifiedFieldSize];
    v43 = v42;
    v45 = v44;
    [v36 unifiedFieldCornerRadius];
    v47 = v46;
    [v36 unifiedFieldVerticalSpacing];
    v49 = v48;
    v50 = [(SPUISearchViewWindowSceneDelegate *)self searchViewController];
    v51 = [v50 view];
    v52 = [v51 tlks_screen];
    [v52 _referenceBounds];
    v53 = 2.0;
    if (v54 < 394.0)
    {
      v53 = 0.0;
    }

    v55 = v31 + v49 + v53;

    v56 = [(SPUISearchViewWindowSceneDelegate *)self searchViewWindow];
    v57 = [v56 _scene];
    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_100004180;
    v65[3] = &unk_10000C570;
    v77 = v60;
    v78 = v21;
    v69 = v55;
    v70 = v62;
    v67 = RenderId;
    v68 = v59;
    v66 = v36;
    v80 = v63;
    v81 = v64;
    v82 = v37;
    v71 = v39;
    v72 = v41;
    v73 = v43;
    v74 = v45;
    v75 = v47;
    v79 = v30;
    v76 = v25;
    v58 = v36;
    [v57 updateClientSettingsWithBlock:v65];
  }
}

- (void)sceneDidBecomeActive:(id)a3
{
  v3 = [(SPUISearchViewWindowSceneDelegate *)self searchViewWindow];
  [v3 makeKeyWindow];
}

- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = [v14 settings];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v69 = v17;
    v70 = v13;
    v20 = [v14 settings];
    if ((+[SPUIDefaults enableFloatingWindow]& 1) == 0)
    {
      v21 = [v20 cornerRadiusConfiguration];
      v22 = [(SPUISearchViewWindowSceneDelegate *)self searchViewWindow];
      v23 = [v22 traitOverrides];
      [v21 bottomLeft];
      v25 = v24;
      v26 = objc_opt_self();
      [v23 setCGFloatValue:v26 forTrait:v25];
    }

    v27 = v16;
    v28 = [v20 interfaceOrientation];
    v29 = [(SPUISearchViewWindowSceneDelegate *)self searchViewController];
    v30 = [v29 headerView];
    [v30 setActiveInterfaceOrientation:v28];

    v31 = [v20 presentationSource];
    [(SPUISearchViewWindowSceneDelegate *)self currentRevealProgress];
    v33 = v32;
    [v20 revealProgress];
    if (v33 != v34 && v31 != 6 && (+[UIKeyboard isInHardwareKeyboardMode](UIKeyboard, "isInHardwareKeyboardMode") & 1) == 0 && [v20 presentationIntent] == 1)
    {
      [v20 revealProgress];
      [(SPUISearchViewWindowSceneDelegate *)self setCurrentRevealProgress:?];
      v35 = [(SPUISearchViewWindowSceneDelegate *)self searchViewController];
      [(SPUISearchViewWindowSceneDelegate *)self currentRevealProgress];
      [v35 searchViewDidUpdatePresentationProgress:?];
    }

    v36 = [v20 legibilitySettings];
    v71 = v15;
    if (v36)
    {
      v37 = v36;
      v38 = [(SPUISearchViewWindowSceneDelegate *)self searchViewController];
      v39 = [v38 legibilitySettings];
      v40 = [v20 legibilitySettings];
      v41 = [v39 isEqual:v40];

      v15 = v71;
      if ((v41 & 1) == 0)
      {
        v42 = [(SPUISearchViewWindowSceneDelegate *)self searchViewController];
        v43 = [v20 legibilitySettings];
        [v42 setLegibilitySettings:v43];

        v15 = v71;
      }
    }

    v44 = [(SPUISearchViewWindowSceneDelegate *)self currentPresentationSource];
    if (v44 != [v20 presentationSource])
    {
      -[SPUISearchViewWindowSceneDelegate setCurrentPresentationSource:](self, "setCurrentPresentationSource:", [v20 presentationSource]);
    }

    v45 = [(SPUISearchViewWindowSceneDelegate *)self currentIntent];
    v16 = v27;
    v17 = v69;
    v13 = v70;
    if (v45 == [v20 presentationIntent])
    {
      goto LABEL_36;
    }

    -[SPUISearchViewWindowSceneDelegate setCurrentIntent:](self, "setCurrentIntent:", [v20 presentationIntent]);
    v46 = [(SPUISearchViewWindowSceneDelegate *)self currentIntent];
    if (v46 > 2)
    {
      if (v46 == 3)
      {
        v48 = [(SPUISearchViewWindowSceneDelegate *)self searchViewController];
        [v48 searchViewWillDismissWithReason:0];
LABEL_32:

        goto LABEL_36;
      }

      if (v46 != 4)
      {
LABEL_36:

        goto LABEL_37;
      }

      v49 = [(SPUISearchViewWindowSceneDelegate *)self searchViewController];
      v50 = [v49 searchViewRestorationContext];

      v51 = [(SPUISearchViewWindowSceneDelegate *)self searchViewController];
      [v51 searchViewDidDismissWithReason:0];

      context = objc_autoreleasePoolPush();
      v52 = [(SPUISearchViewWindowSceneDelegate *)self searchViewController];
      [v52 setRestorationData:0];

      v73 = 0;
      v53 = [NSKeyedArchiver archivedDataWithRootObject:v50 requiringSecureCoding:1 error:&v73];
      v54 = v73;
      v68 = v50;
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

      v63 = [(SPUISearchViewWindowSceneDelegate *)self navController];
      v64 = [v63 popToRootViewControllerAnimated:0];

      v65 = [(SPUISearchViewWindowSceneDelegate *)self navController];
      v66 = [v65 view];
      [v66 layoutIfNeeded];

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

      v13 = v70;
    }

    else
    {
      if (v46 != 1)
      {
        if (v46 == 2)
        {
          if (v31 != 6)
          {
            v47 = [(SPUISearchViewWindowSceneDelegate *)self searchViewController];
            [v47 searchViewDidPresentFromSource:{-[SPUISearchViewWindowSceneDelegate currentPresentationSource](self, "currentPresentationSource")}];
          }

          v48 = [(SPUISearchViewWindowSceneDelegate *)self searchViewController];
          [v48 sendPresentationFeedback];
          goto LABEL_32;
        }

        goto LABEL_36;
      }

      v56 = [objc_opt_class() restorationData];
      v57 = [(SPUISearchViewWindowSceneDelegate *)self searchViewController];
      [v57 setRestorationData:v56];

      v58 = objc_opt_class();
      v59 = objc_opt_new();
      [v58 saveRestorationData:v59];

      v60 = [(SPUISearchViewWindowSceneDelegate *)self searchViewController];
      [v60 searchViewWillPresentFromSource:{-[SPUISearchViewWindowSceneDelegate currentPresentationSource](self, "currentPresentationSource")}];

      if (v31 == 6)
      {
        v61 = [(SPUISearchViewWindowSceneDelegate *)self searchViewController];
        [v61 searchViewDidPresentFromSource:{-[SPUISearchViewWindowSceneDelegate currentPresentationSource](self, "currentPresentationSource")}];
      }

      v62 = [(SPUISearchViewWindowSceneDelegate *)self searchViewController];
      [v62 setRestorationData:0];
    }

    v15 = v71;
    goto LABEL_36;
  }

LABEL_37:
}

+ (void)postMemoryWarningAndPerformBlockIfOverInactiveLimit:(id)a3
{
  v3 = a3;
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
    if (v3)
    {
      v3[2](v3);
    }

    v6 = [NSNotificationCenter defaultCenter:v7];
    [v6 postNotificationName:UIApplicationDidReceiveMemoryWarningNotification object:0];

    objc_autoreleasePoolPop(v5);
  }
}

- (void)backgroundSearchScene
{
  v3 = [(SPUISearchViewWindowSceneDelegate *)self searchViewWindow];
  v2 = [v3 _scene];
  [v2 updateClientSettingsWithTransitionBlock:&stru_10000C5B8];
}

- (void)dismissSearchViewWithReason:(unint64_t)a3
{
  v4 = [(SPUISearchViewWindowSceneDelegate *)self searchViewWindow];
  v3 = [v4 _scene];
  [v3 updateClientSettingsWithTransitionBlock:&stru_10000C5D8];
}

@end