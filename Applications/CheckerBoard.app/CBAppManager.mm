@interface CBAppManager
+ (id)sharedInstance;
- (CBAppManager)init;
- (double)_effectiveKeyboardSceneLevelForClientSettings:(id)settings;
- (id)_appClientSettingsDiffInspector;
- (id)currentOpenAppBundleIDs;
- (id)primaryAppBundleID;
- (void)_createInputScene;
- (void)_terminateApps:(id)apps reason:(int64_t)reason reportCrash:(BOOL)crash description:(id)description completion:(id)completion;
- (void)_updateLevelForScene:(id)scene transitionContext:(id)context;
- (void)_windowDidBecomeKey:(id)key;
- (void)launchAppWithBundleID:(id)d suspended:(BOOL)suspended native:(BOOL)native completion:(id)completion;
- (void)processManager:(id)manager didAddProcess:(id)process;
- (void)processManager:(id)manager didRemoveProcess:(id)process;
- (void)scene:(id)scene didUpdateClientSettings:(id)settings;
- (void)scene:(id)scene didUpdateSettings:(id)settings;
- (void)sceneManager:(id)manager didAddScene:(id)scene;
- (void)systemService:(id)service canActivateApplication:(id)application withResult:(id)result;
- (void)systemService:(id)service dataReset:(id)reset completion:(id)completion;
- (void)systemService:(id)service handleActions:(id)actions origin:(id)origin withResult:(id)result;
- (void)systemService:(id)service handleOpenApplicationRequest:(id)request withCompletion:(id)completion;
- (void)systemService:(id)service isPasscodeLockedOrBlockedWithResult:(id)result;
- (void)terminateAppWithBundleID:(id)d reason:(int64_t)reason reportCrash:(BOOL)crash description:(id)description completion:(id)completion;
@end

@implementation CBAppManager

+ (id)sharedInstance
{
  if (qword_100092350 != -1)
  {
    sub_100046F00();
  }

  v3 = qword_100092348;

  return v3;
}

- (CBAppManager)init
{
  v28.receiver = self;
  v28.super_class = CBAppManager;
  v2 = [(CBAppManager *)&v28 init];
  v3 = v2;
  if (v2)
  {
    primaryAppBundleID = [(CBAppManager *)v2 primaryAppBundleID];
    v5 = [NSSet setWithObjects:primaryAppBundleID, @"com.apple.DiagnosticsService", 0];
    whitelist = v3->_whitelist;
    v3->_whitelist = v5;

    v7 = [CBEmergencyCallManager setByAddingEmergencyCallAppToSet:v3->_whitelist];
    v8 = v3->_whitelist;
    v3->_whitelist = v7;

    v9 = [NSSet setWithObject:@"com.apple.DiagnosticsService."];
    whitelistPrefixes = v3->_whitelistPrefixes;
    v3->_whitelistPrefixes = v9;

    v11 = +[NSMutableSet set];
    openApps = v3->_openApps;
    v3->_openApps = v11;

    v13 = +[FBSystemService sharedInstance];
    [v13 setDelegate:v3];

    v14 = +[FBProcessManager sharedInstance];
    [v14 addObserver:v3];

    v15 = +[FBSceneManager sharedInstance];
    [v15 addObserver:v3];
    v16 = [UIRootWindowScenePresentationBinder alloc];
    v17 = +[FBDisplayManager sharedInstance];
    mainConfiguration = [v17 mainConfiguration];
    v19 = [v16 initWithPriority:0 displayConfiguration:mainConfiguration];
    rootWindowSceneBinder = v3->_rootWindowSceneBinder;
    v3->_rootWindowSceneBinder = v19;

    v21 = +[FBSceneManager sharedInstance];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100014DA0;
    v26[3] = &unk_10007DBC0;
    v22 = v3;
    v27 = v22;
    [v21 enumerateScenesWithBlock:v26];

    v23 = +[NSNotificationCenter defaultCenter];
    [v23 addObserver:v22 selector:"_windowDidBecomeKey:" name:UIWindowDidBecomeKeyNotification object:0];

    v24 = [_UIKeyboardArbiterHost launchAdvisorWithOmniscientDelegate:0 sceneDelegate:v22];
    [(CBAppManager *)v22 _createInputScene];
  }

  return v3;
}

- (id)primaryAppBundleID
{
  v2 = +[CBEnvironmentManager sharedInstance];
  currentEnvironment = [v2 currentEnvironment];

  v4 = CheckerBoardLogHandleForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (currentEnvironment == 1)
  {
    if (v5)
    {
      v8 = 138412546;
      v9 = @"com.apple.Diagnostics";
      v10 = 2048;
      v11 = 1;
      v6 = "Primary application designated as %@ for osenvironment %ld";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v6, &v8, 0x16u);
    }
  }

  else if (v5)
  {
    v8 = 134218242;
    v9 = currentEnvironment;
    v10 = 2112;
    v11 = @"com.apple.Diagnostics";
    v6 = "Unrecognized osenvironment %ld. Defaulting to %@";
    goto LABEL_6;
  }

  return @"com.apple.Diagnostics";
}

- (void)launchAppWithBundleID:(id)d suspended:(BOOL)suspended native:(BOOL)native completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  dCopy = [NSString stringWithFormat:@"FBSystemService-OpenApplicationRequest: %@", dCopy];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100014FFC;
  v16[3] = &unk_10007DBE8;
  suspendedCopy = suspended;
  nativeCopy = native;
  v17 = dCopy;
  selfCopy = self;
  v19 = completionCopy;
  v13 = completionCopy;
  v14 = dCopy;
  v15 = [FBWorkspaceEvent eventWithName:dCopy handler:v16];
  [v15 execute];
}

- (void)terminateAppWithBundleID:(id)d reason:(int64_t)reason reportCrash:(BOOL)crash description:(id)description completion:(id)completion
{
  dCopy = d;
  descriptionCopy = description;
  completionCopy = completion;
  if (descriptionCopy)
  {
    v15 = descriptionCopy;
  }

  else
  {
    v15 = FBSApplicationTerminationReasonDescription();
  }

  v16 = v15;
  IsGraceful = FBSApplicationTerminationReasonIsGraceful();
  v18 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109378;
    HIDWORD(buf) = IsGraceful;
    v31 = 2112;
    v32 = v16;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Terminating application (gracefully %d) because %@", &buf, 0x12u);
  }

  v19 = [NSString stringWithFormat:@"TerminateApp: %@ (%@)", dCopy, v16];
  objc_initWeak(&buf, self);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000153E0;
  v24[3] = &unk_10007DC10;
  objc_copyWeak(v28, &buf);
  v20 = dCopy;
  v25 = v20;
  v28[1] = reason;
  crashCopy = crash;
  v21 = descriptionCopy;
  v26 = v21;
  v22 = completionCopy;
  v27 = v22;
  v23 = [FBWorkspaceEvent eventWithName:v19 handler:v24];
  [v23 execute];

  objc_destroyWeak(v28);
  objc_destroyWeak(&buf);
}

- (void)_terminateApps:(id)apps reason:(int64_t)reason reportCrash:(BOOL)crash description:(id)description completion:(id)completion
{
  crashCopy = crash;
  appsCopy = apps;
  descriptionCopy = description;
  completionCopy = completion;
  v11 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [appsCopy description];
    *buf = 138412802;
    v42 = v12;
    v43 = 2048;
    reasonCopy = reason;
    v45 = 2112;
    v46 = descriptionCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Processes to be killed: (%@) for reason (%ld) and description (%@)", buf, 0x20u);
  }

  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1000158B0;
  v38[3] = &unk_10007DC38;
  v13 = completionCopy;
  v39 = v13;
  v14 = objc_retainBlock(v38);
  v15 = [appsCopy count];
  v16 = CheckerBoardLogHandleForCategory();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    v28 = v13;
    if (v17)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "We have at least one process to kill", buf, 2u);
    }

    v18 = +[BSBlockSentinel sentinelWithQueue:signalCount:completion:](BSBlockSentinel, "sentinelWithQueue:signalCount:completion:", &_dispatch_main_q, [appsCopy count], v14);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v19 = appsCopy;
    v20 = [v19 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v35;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v35 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v34 + 1) + 8 * i);
          isCurrentProcess = [v24 isCurrentProcess];
          v26 = CheckerBoardLogHandleForCategory();
          v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
          if (isCurrentProcess)
          {
            if (v27)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Process is the system application. Let's leave it be.", buf, 2u);
            }

            [v18 signal];
          }

          else
          {
            if (v27)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Process is a non-system application. Killing process…", buf, 2u);
            }

            v32[0] = _NSConcreteStackBlock;
            v32[1] = 3221225472;
            v32[2] = sub_1000158CC;
            v32[3] = &unk_10007D618;
            v33 = v18;
            [v24 killForReason:reason andReport:crashCopy withDescription:descriptionCopy completion:v32];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v21);
    }

    v13 = v28;
  }

  else
  {
    if (v17)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "There are no processes to kill…", buf, 2u);
    }

    (v14[2])(v14);
  }
}

- (id)currentOpenAppBundleIDs
{
  v3 = objc_alloc_init(NSMutableSet);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  openApps = [(CBAppManager *)self openApps];
  v5 = [openApps countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(openApps);
        }

        bundleID = [*(*(&v12 + 1) + 8 * i) bundleID];
        [v3 addObject:bundleID];
      }

      v6 = [openApps countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (void)processManager:(id)manager didAddProcess:(id)process
{
  processCopy = process;
  v6 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [processCopy bundleIdentifier];
    *buf = 138412290;
    v15 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "processManager:didAddProcess: %@", buf, 0xCu);
  }

  primaryAppBundleID = [(CBAppManager *)self primaryAppBundleID];
  bundleIdentifier2 = [processCopy bundleIdentifier];
  v10 = [bundleIdentifier2 isEqual:primaryAppBundleID];

  if (v10)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100015C14;
    v11[3] = &unk_10007D640;
    v12 = processCopy;
    selfCopy = self;
    dispatch_async(&_dispatch_main_q, v11);
  }
}

- (void)processManager:(id)manager didRemoveProcess:(id)process
{
  processCopy = process;
  v6 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [processCopy bundleIdentifier];
    *buf = 138412290;
    v18 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "processManager:didRemoveProcess: %@", buf, 0xCu);
  }

  primaryAppBundleID = [(CBAppManager *)self primaryAppBundleID];
  bundleIdentifier2 = [processCopy bundleIdentifier];
  v10 = [bundleIdentifier2 isEqual:primaryAppBundleID];

  if (v10)
  {
    v11 = +[CBIdleSleepManager sharedInstance];
    [v11 setIdleTimerDisabled:0 forReason:@"AppRequest"];

    v12 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100046F14();
    }

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 postNotificationName:@"AppManagerPrimaryAppDidExit" object:self];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100015F68;
    v14[3] = &unk_10007D640;
    v15 = processCopy;
    selfCopy = self;
    dispatch_async(&_dispatch_main_q, v14);
  }
}

- (void)sceneManager:(id)manager didAddScene:(id)scene
{
  sceneCopy = scene;
  [sceneCopy addObserver:self];
  [(UIRootWindowScenePresentationBinder *)self->_rootWindowSceneBinder addScene:sceneCopy];
}

- (void)_windowDidBecomeKey:(id)key
{
  v4 = +[FBSceneManager sharedInstance];
  v5 = [CBSceneManager sceneIdentifier:1];
  v7 = [v4 sceneWithIdentifier:v5];

  v6 = v7;
  if (v7)
  {
    [(CBAppManager *)self _updateLevelForScene:v7 transitionContext:0];
    v6 = v7;
  }
}

- (void)scene:(id)scene didUpdateClientSettings:(id)settings
{
  sceneCopy = scene;
  settingsCopy = settings;
  clientHandle = [sceneCopy clientHandle];
  processHandle = [clientHandle processHandle];
  v10 = +[FBProcessManager sharedInstance];
  identity = [processHandle identity];
  v12 = [v10 processForIdentity:identity];

  if ([v12 isApplicationProcess] && (objc_msgSend(v12, "isCurrentProcess") & 1) == 0)
  {
    previousSettings = [settingsCopy previousSettings];
    transitionContext = [settingsCopy transitionContext];
    settingsDiff = [settingsCopy settingsDiff];
    v14 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Process is a non-system application.", buf, 2u);
    }

    v15 = objc_alloc_init(CBAppClientSettingObserverContext);
    [(CBAppClientSettingObserverContext *)v15 setScene:sceneCopy];
    settings = [sceneCopy settings];
    [(CBAppClientSettingObserverContext *)v15 setSettings:settings];

    [(CBAppClientSettingObserverContext *)v15 setOldClientSettings:previousSettings];
    clientSettings = [sceneCopy clientSettings];
    [(CBAppClientSettingObserverContext *)v15 setUpdatedClientSettings:clientSettings];

    [(CBAppClientSettingObserverContext *)v15 setTransition:transitionContext];
    _appClientSettingsDiffInspector = [(CBAppManager *)self _appClientSettingsDiffInspector];
    [_appClientSettingsDiffInspector inspectDiff:settingsDiff withContext:v15];
  }
}

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  sceneCopy = scene;
  identifier = [sceneCopy identifier];
  v6 = [CBSceneManager sceneIdentifier:1];
  v7 = [identifier isEqualToString:v6];

  if (v7)
  {
    [(CBAppManager *)self _updateLevelForScene:sceneCopy transitionContext:0];
  }
}

- (double)_effectiveKeyboardSceneLevelForClientSettings:(id)settings
{
  settingsCopy = settings;
  preferredSceneHostIdentifier = [settingsCopy preferredSceneHostIdentifier];
  if (![preferredSceneHostIdentifier length] || (FBSystemAppBundleID(), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(preferredSceneHostIdentifier, "isEqualToString:", v5), v5, v7 = 11.0, v6))
  {
    v8 = +[UIWindow keyWindow];
    v9 = v8;
    if (v8)
    {
      firstResponder = [v8 firstResponder];

      if (firstResponder)
      {
        [v9 windowLevel];
        v7 = v11 + 2.0;
      }

      else
      {
        [settingsCopy preferredLevel];
        v7 = v12;
      }
    }

    else
    {
      v7 = 11.0;
    }
  }

  return v7;
}

- (void)_updateLevelForScene:(id)scene transitionContext:(id)context
{
  sceneCopy = scene;
  contextCopy = context;
  [CBSceneManager windowLevel:1];
  v8 = v7;
  v9 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = sceneCopy;
    v21 = 2048;
    v22 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Updating level for scene (%@) to client settings' preferred level %f", buf, 0x16u);
  }

  v10 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    settings = [sceneCopy settings];
    [settings level];
    *buf = 134218240;
    v20 = v12;
    v21 = 2048;
    v22 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Comparing scene settings level (%f) to level (%f)", buf, 0x16u);
  }

  settings2 = [sceneCopy settings];
  [settings2 level];
  v15 = v14;

  if (v15 != v8)
  {
    v16 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = sceneCopy;
      v21 = 2048;
      v22 = v8;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Scene (%@) is setting level to: %f", buf, 0x16u);
    }

    if (contextCopy)
    {
      animationFence = [contextCopy animationFence];
      [UIScene _synchronizeDrawingWithFence:animationFence];
    }

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100016730;
    v18[3] = &unk_10007DC58;
    *&v18[4] = v8;
    [sceneCopy updateSettingsWithBlock:v18];
  }
}

- (id)_appClientSettingsDiffInspector
{
  appClientSettingsDiffInspector = [(CBAppManager *)self appClientSettingsDiffInspector];

  if (!appClientSettingsDiffInspector)
  {
    v4 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Creating app client settings diff inspector…", v9, 2u);
    }

    v5 = objc_alloc_init(UIApplicationSceneClientSettingsDiffInspector);
    [(CBAppManager *)self setAppClientSettingsDiffInspector:v5];

    appClientSettingsDiffInspector2 = [(CBAppManager *)self appClientSettingsDiffInspector];
    [appClientSettingsDiffInspector2 observeIdleTimerDisabledWithBlock:&stru_10007DC98];
  }

  appClientSettingsDiffInspector3 = [(CBAppManager *)self appClientSettingsDiffInspector];

  return appClientSettingsDiffInspector3;
}

- (void)systemService:(id)service canActivateApplication:(id)application withResult:(id)result
{
  applicationCopy = application;
  resultCopy = result;
  whitelist = [(CBAppManager *)self whitelist];
  v10 = [whitelist containsObject:applicationCopy];

  if (v10)
  {
    v11 = 0;
    if (!resultCopy)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v12 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_100046F54();
  }

  v11 = 3;
  if (resultCopy)
  {
LABEL_7:
    resultCopy[2](resultCopy, v11);
  }

LABEL_8:
}

- (void)systemService:(id)service handleOpenApplicationRequest:(id)request withCompletion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  bundleIdentifier = [requestCopy bundleIdentifier];
  whitelist = [(CBAppManager *)self whitelist];
  v11 = [whitelist containsObject:bundleIdentifier];

  if (v11)
  {
    clientProcess = [requestCopy clientProcess];
    v13 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = bundleIdentifier;
      v21 = 2112;
      v22 = clientProcess;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received open application request for [%@] from %@.", buf, 0x16u);
    }

    options = [requestCopy options];
    dictionary = [options dictionary];
    v16 = [dictionary bs_safeObjectForKey:FBSOpenApplicationOptionKeyActivateSuspended ofType:objc_opt_class()];

    v17 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Suspended request: %@", buf, 0xCu);
    }

    -[CBAppManager launchAppWithBundleID:suspended:native:completion:](self, "launchAppWithBundleID:suspended:native:completion:", bundleIdentifier, [v16 BOOLValue], 0, completionCopy);
  }

  else
  {
    v18 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100046F54();
    }

    clientProcess = FBSOpenApplicationErrorCreate();
    (*(completionCopy + 2))(completionCopy, clientProcess);
    v16 = completionCopy;
  }
}

- (void)systemService:(id)service isPasscodeLockedOrBlockedWithResult:(id)result
{
  if (result)
  {
    (*(result + 2))(result, 1);
  }
}

- (void)systemService:(id)service handleActions:(id)actions origin:(id)origin withResult:(id)result
{
  if (result)
  {
    (*(result + 2))(result, 0);
  }
}

- (void)systemService:(id)service dataReset:(id)reset completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 1);
  }
}

- (void)_createInputScene
{
  v3 = +[NSUUID UUID];
  uUIDString = [v3 UUIDString];

  v5 = +[FBSMutableSceneDefinition definition];
  v6 = [FBSSceneIdentity identityForIdentifier:uUIDString];
  [v5 setIdentity:v6];

  v7 = [RBSProcessIdentity identityForAngelJobLabel:@"com.apple.InputUI"];
  if (v7)
  {
    v8 = [FBSSceneClientIdentity identityForProcessIdentity:v7];
    [v5 setClientIdentity:v8];

    v9 = +[UIApplicationSceneSpecification specification];
    [v5 setSpecification:v9];

    v10 = +[FBSceneManager sharedInstance];
    v11 = [v10 createSceneWithDefinition:v5];

    if (v11)
    {
      +[FBDisplayManager mainConfiguration];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100016FE8;
      v14 = v13[3] = &unk_10007DCC0;
      v12 = v14;
      [v11 performUpdate:v13];
      [(UIRootWindowScenePresentationBinder *)self->_rootWindowSceneBinder addScene:v11];
    }

    else
    {
      v12 = CheckerBoardLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100046FC8();
      }
    }
  }

  else
  {
    v11 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100047008();
    }
  }
}

@end