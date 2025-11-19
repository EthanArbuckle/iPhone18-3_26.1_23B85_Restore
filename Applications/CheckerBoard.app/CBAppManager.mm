@interface CBAppManager
+ (id)sharedInstance;
- (CBAppManager)init;
- (double)_effectiveKeyboardSceneLevelForClientSettings:(id)a3;
- (id)_appClientSettingsDiffInspector;
- (id)currentOpenAppBundleIDs;
- (id)primaryAppBundleID;
- (void)_createInputScene;
- (void)_terminateApps:(id)a3 reason:(int64_t)a4 reportCrash:(BOOL)a5 description:(id)a6 completion:(id)a7;
- (void)_updateLevelForScene:(id)a3 transitionContext:(id)a4;
- (void)_windowDidBecomeKey:(id)a3;
- (void)launchAppWithBundleID:(id)a3 suspended:(BOOL)a4 native:(BOOL)a5 completion:(id)a6;
- (void)processManager:(id)a3 didAddProcess:(id)a4;
- (void)processManager:(id)a3 didRemoveProcess:(id)a4;
- (void)scene:(id)a3 didUpdateClientSettings:(id)a4;
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
- (void)sceneManager:(id)a3 didAddScene:(id)a4;
- (void)systemService:(id)a3 canActivateApplication:(id)a4 withResult:(id)a5;
- (void)systemService:(id)a3 dataReset:(id)a4 completion:(id)a5;
- (void)systemService:(id)a3 handleActions:(id)a4 origin:(id)a5 withResult:(id)a6;
- (void)systemService:(id)a3 handleOpenApplicationRequest:(id)a4 withCompletion:(id)a5;
- (void)systemService:(id)a3 isPasscodeLockedOrBlockedWithResult:(id)a4;
- (void)terminateAppWithBundleID:(id)a3 reason:(int64_t)a4 reportCrash:(BOOL)a5 description:(id)a6 completion:(id)a7;
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
    v4 = [(CBAppManager *)v2 primaryAppBundleID];
    v5 = [NSSet setWithObjects:v4, @"com.apple.DiagnosticsService", 0];
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
    v18 = [v17 mainConfiguration];
    v19 = [v16 initWithPriority:0 displayConfiguration:v18];
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
  v3 = [v2 currentEnvironment];

  v4 = CheckerBoardLogHandleForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3 == 1)
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
    v9 = v3;
    v10 = 2112;
    v11 = @"com.apple.Diagnostics";
    v6 = "Unrecognized osenvironment %ld. Defaulting to %@";
    goto LABEL_6;
  }

  return @"com.apple.Diagnostics";
}

- (void)launchAppWithBundleID:(id)a3 suspended:(BOOL)a4 native:(BOOL)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [NSString stringWithFormat:@"FBSystemService-OpenApplicationRequest: %@", v10];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100014FFC;
  v16[3] = &unk_10007DBE8;
  v20 = a4;
  v21 = a5;
  v17 = v10;
  v18 = self;
  v19 = v11;
  v13 = v11;
  v14 = v10;
  v15 = [FBWorkspaceEvent eventWithName:v12 handler:v16];
  [v15 execute];
}

- (void)terminateAppWithBundleID:(id)a3 reason:(int64_t)a4 reportCrash:(BOOL)a5 description:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  if (v13)
  {
    v15 = v13;
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

  v19 = [NSString stringWithFormat:@"TerminateApp: %@ (%@)", v12, v16];
  objc_initWeak(&buf, self);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000153E0;
  v24[3] = &unk_10007DC10;
  objc_copyWeak(v28, &buf);
  v20 = v12;
  v25 = v20;
  v28[1] = a4;
  v29 = a5;
  v21 = v13;
  v26 = v21;
  v22 = v14;
  v27 = v22;
  v23 = [FBWorkspaceEvent eventWithName:v19 handler:v24];
  [v23 execute];

  objc_destroyWeak(v28);
  objc_destroyWeak(&buf);
}

- (void)_terminateApps:(id)a3 reason:(int64_t)a4 reportCrash:(BOOL)a5 description:(id)a6 completion:(id)a7
{
  v29 = a5;
  v9 = a3;
  v31 = a6;
  v10 = a7;
  v11 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v9 description];
    *buf = 138412802;
    v42 = v12;
    v43 = 2048;
    v44 = a4;
    v45 = 2112;
    v46 = v31;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Processes to be killed: (%@) for reason (%ld) and description (%@)", buf, 0x20u);
  }

  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1000158B0;
  v38[3] = &unk_10007DC38;
  v13 = v10;
  v39 = v13;
  v14 = objc_retainBlock(v38);
  v15 = [v9 count];
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

    v18 = +[BSBlockSentinel sentinelWithQueue:signalCount:completion:](BSBlockSentinel, "sentinelWithQueue:signalCount:completion:", &_dispatch_main_q, [v9 count], v14);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v19 = v9;
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
          v25 = [v24 isCurrentProcess];
          v26 = CheckerBoardLogHandleForCategory();
          v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
          if (v25)
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
            [v24 killForReason:a4 andReport:v29 withDescription:v31 completion:v32];
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
  v4 = [(CBAppManager *)self openApps];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) bundleID];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (void)processManager:(id)a3 didAddProcess:(id)a4
{
  v5 = a4;
  v6 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 bundleIdentifier];
    *buf = 138412290;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "processManager:didAddProcess: %@", buf, 0xCu);
  }

  v8 = [(CBAppManager *)self primaryAppBundleID];
  v9 = [v5 bundleIdentifier];
  v10 = [v9 isEqual:v8];

  if (v10)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100015C14;
    v11[3] = &unk_10007D640;
    v12 = v5;
    v13 = self;
    dispatch_async(&_dispatch_main_q, v11);
  }
}

- (void)processManager:(id)a3 didRemoveProcess:(id)a4
{
  v5 = a4;
  v6 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 bundleIdentifier];
    *buf = 138412290;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "processManager:didRemoveProcess: %@", buf, 0xCu);
  }

  v8 = [(CBAppManager *)self primaryAppBundleID];
  v9 = [v5 bundleIdentifier];
  v10 = [v9 isEqual:v8];

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
    v15 = v5;
    v16 = self;
    dispatch_async(&_dispatch_main_q, v14);
  }
}

- (void)sceneManager:(id)a3 didAddScene:(id)a4
{
  v5 = a4;
  [v5 addObserver:self];
  [(UIRootWindowScenePresentationBinder *)self->_rootWindowSceneBinder addScene:v5];
}

- (void)_windowDidBecomeKey:(id)a3
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

- (void)scene:(id)a3 didUpdateClientSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 clientHandle];
  v9 = [v8 processHandle];
  v10 = +[FBProcessManager sharedInstance];
  v11 = [v9 identity];
  v12 = [v10 processForIdentity:v11];

  if ([v12 isApplicationProcess] && (objc_msgSend(v12, "isCurrentProcess") & 1) == 0)
  {
    v20 = [v7 previousSettings];
    v19 = [v7 transitionContext];
    v13 = [v7 settingsDiff];
    v14 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Process is a non-system application.", buf, 2u);
    }

    v15 = objc_alloc_init(CBAppClientSettingObserverContext);
    [(CBAppClientSettingObserverContext *)v15 setScene:v6];
    v16 = [v6 settings];
    [(CBAppClientSettingObserverContext *)v15 setSettings:v16];

    [(CBAppClientSettingObserverContext *)v15 setOldClientSettings:v20];
    v17 = [v6 clientSettings];
    [(CBAppClientSettingObserverContext *)v15 setUpdatedClientSettings:v17];

    [(CBAppClientSettingObserverContext *)v15 setTransition:v19];
    v18 = [(CBAppManager *)self _appClientSettingsDiffInspector];
    [v18 inspectDiff:v13 withContext:v15];
  }
}

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  v8 = a3;
  v5 = [v8 identifier];
  v6 = [CBSceneManager sceneIdentifier:1];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    [(CBAppManager *)self _updateLevelForScene:v8 transitionContext:0];
  }
}

- (double)_effectiveKeyboardSceneLevelForClientSettings:(id)a3
{
  v3 = a3;
  v4 = [v3 preferredSceneHostIdentifier];
  if (![v4 length] || (FBSystemAppBundleID(), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "isEqualToString:", v5), v5, v7 = 11.0, v6))
  {
    v8 = +[UIWindow keyWindow];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 firstResponder];

      if (v10)
      {
        [v9 windowLevel];
        v7 = v11 + 2.0;
      }

      else
      {
        [v3 preferredLevel];
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

- (void)_updateLevelForScene:(id)a3 transitionContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  [CBSceneManager windowLevel:1];
  v8 = v7;
  v9 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = v5;
    v21 = 2048;
    v22 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Updating level for scene (%@) to client settings' preferred level %f", buf, 0x16u);
  }

  v10 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v5 settings];
    [v11 level];
    *buf = 134218240;
    v20 = v12;
    v21 = 2048;
    v22 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Comparing scene settings level (%f) to level (%f)", buf, 0x16u);
  }

  v13 = [v5 settings];
  [v13 level];
  v15 = v14;

  if (v15 != v8)
  {
    v16 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = v5;
      v21 = 2048;
      v22 = v8;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Scene (%@) is setting level to: %f", buf, 0x16u);
    }

    if (v6)
    {
      v17 = [v6 animationFence];
      [UIScene _synchronizeDrawingWithFence:v17];
    }

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100016730;
    v18[3] = &unk_10007DC58;
    *&v18[4] = v8;
    [v5 updateSettingsWithBlock:v18];
  }
}

- (id)_appClientSettingsDiffInspector
{
  v3 = [(CBAppManager *)self appClientSettingsDiffInspector];

  if (!v3)
  {
    v4 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Creating app client settings diff inspector…", v9, 2u);
    }

    v5 = objc_alloc_init(UIApplicationSceneClientSettingsDiffInspector);
    [(CBAppManager *)self setAppClientSettingsDiffInspector:v5];

    v6 = [(CBAppManager *)self appClientSettingsDiffInspector];
    [v6 observeIdleTimerDisabledWithBlock:&stru_10007DC98];
  }

  v7 = [(CBAppManager *)self appClientSettingsDiffInspector];

  return v7;
}

- (void)systemService:(id)a3 canActivateApplication:(id)a4 withResult:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(CBAppManager *)self whitelist];
  v10 = [v9 containsObject:v7];

  if (v10)
  {
    v11 = 0;
    if (!v8)
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
  if (v8)
  {
LABEL_7:
    v8[2](v8, v11);
  }

LABEL_8:
}

- (void)systemService:(id)a3 handleOpenApplicationRequest:(id)a4 withCompletion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v7 bundleIdentifier];
  v10 = [(CBAppManager *)self whitelist];
  v11 = [v10 containsObject:v9];

  if (v11)
  {
    v12 = [v7 clientProcess];
    v13 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = v9;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received open application request for [%@] from %@.", buf, 0x16u);
    }

    v14 = [v7 options];
    v15 = [v14 dictionary];
    v16 = [v15 bs_safeObjectForKey:FBSOpenApplicationOptionKeyActivateSuspended ofType:objc_opt_class()];

    v17 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Suspended request: %@", buf, 0xCu);
    }

    -[CBAppManager launchAppWithBundleID:suspended:native:completion:](self, "launchAppWithBundleID:suspended:native:completion:", v9, [v16 BOOLValue], 0, v8);
  }

  else
  {
    v18 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100046F54();
    }

    v12 = FBSOpenApplicationErrorCreate();
    (*(v8 + 2))(v8, v12);
    v16 = v8;
  }
}

- (void)systemService:(id)a3 isPasscodeLockedOrBlockedWithResult:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 1);
  }
}

- (void)systemService:(id)a3 handleActions:(id)a4 origin:(id)a5 withResult:(id)a6
{
  if (a6)
  {
    (*(a6 + 2))(a6, 0);
  }
}

- (void)systemService:(id)a3 dataReset:(id)a4 completion:(id)a5
{
  if (a5)
  {
    (*(a5 + 2))(a5, 1);
  }
}

- (void)_createInputScene
{
  v3 = +[NSUUID UUID];
  v4 = [v3 UUIDString];

  v5 = +[FBSMutableSceneDefinition definition];
  v6 = [FBSSceneIdentity identityForIdentifier:v4];
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