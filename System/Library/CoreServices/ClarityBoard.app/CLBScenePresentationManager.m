@interface CLBScenePresentationManager
- (BOOL)canHandleOpenApplicationRequest:(id)a3;
- (BOOL)isPresented;
- (BOOL)supportsClarityUI;
- (CLBScenePresentationManager)initWithDelegate:(id)a3;
- (CLBScenePresentationManagerDelegate)delegate;
- (NSString)bundleIdentifier;
- (NSString)identifier;
- (NSString)requiredEntitlement;
- (UIApplicationSceneSpecification)sceneSpecification;
- (id)_process;
- (int)presentedPID;
- (int64_t)sceneCreationType;
- (int64_t)sceneLevel;
- (void)_continueOpenApplicationRequest:(id)a3 withResult:(id)a4;
- (void)_didDisableSecureMode:(id)a3;
- (void)_sendActions:(id)a3 toWorkspace:(id)a4 origin:(id)a5 targetProcess:(id)a6;
- (void)_tearDownAllScenesIfNeeded;
- (void)_willEnableSecureMode:(id)a3;
- (void)createSceneWithIdentifier:(id)a3 actions:(id)a4 completion:(id)a5;
- (void)handleOpenApplicationRequest:(id)a3 withResult:(id)a4;
- (void)tearDownScenesWithIdentifiers:(id)a3 completion:(id)a4;
@end

@implementation CLBScenePresentationManager

- (CLBScenePresentationManager)initWithDelegate:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CLBScenePresentationManager;
  v5 = [(CLBScenePresentationManager *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = +[NSMutableDictionary dictionary];
    scenePairsByIdentifier = v6->_scenePairsByIdentifier;
    v6->_scenePairsByIdentifier = v7;

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v6 selector:"_willEnableSecureMode:" name:CLBWillEnableSecureModeNotification object:0];
    [v9 addObserver:v6 selector:"_didDisableSecureMode:" name:CLBDidDisableSecureModeNotification object:0];
  }

  return v6;
}

- (UIApplicationSceneSpecification)sceneSpecification
{
  v2 = [(CLBScenePresentationManager *)self sceneSessionRole];
  v3 = [CLBScenePresentationManagerSpecification specificationWithSessionRole:v2];

  return v3;
}

- (NSString)requiredEntitlement
{
  v2 = [(CLBScenePresentationManager *)self entitlement_forStaging];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"com.apple.clarityboard.shows-scene";
  }

  return v4;
}

- (BOOL)canHandleOpenApplicationRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 application];
  v6 = [v5 bundleIdentifier];
  v7 = [(CLBScenePresentationManager *)self bundleIdentifier];
  if ([v6 isEqualToString:v7])
  {
    v8 = [v4 systemRequest];
    v9 = [v8 clientProcess];
    v10 = [v9 state];
    v11 = [v10 isRunning];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_continueOpenApplicationRequest:(id)a3 withResult:(id)a4
{
  v5 = a3;
  v29 = a4;
  BSDispatchQueueAssertMain();
  v6 = [v5 systemRequest];
  v7 = [v6 options];
  v8 = [v6 bundleIdentifier];
  v9 = +[FBProcessManager sharedInstanceIfExists];
  v28 = v8;
  v10 = [v9 applicationProcessesForBundleIdentifier:v8];

  v27 = v10;
  v11 = [v10 firstObject];
  v12 = [v7 url];
  v31 = v11;
  v30 = [v11 workspace];
  v26 = [v6 clientProcess];
  v13 = [v26 handle];
  v25 = [v7 dictionary];
  v14 = [v25 bs_safeArrayForKey:FBSOpenApplicationOptionKeyActions];
  v15 = +[CLFLog commonLog];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(CLBScenePresentationManager *)self identifier];
    *buf = 138412546;
    v35 = v16;
    v36 = 2112;
    v37 = v13;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@ open application request from origin %@", buf, 0x16u);
  }

  if (v12)
  {
    v17 = [[UIOpenURLAction alloc] initWithURL:v12];
    v18 = [NSSet setWithObject:v17];
    if ([v14 count])
    {
      v19 = +[CLFLog commonLog];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        sub_100283CC8();
      }
    }
  }

  else
  {
    if ([v14 count])
    {
      [NSSet setWithArray:v14];
    }

    else
    {
      +[NSSet set];
    }
    v18 = ;
  }

  v20 = [v5 application];
  v21 = [v20 alwaysDeliversOpenURLActionsUsingWorkspace];

  if (v21)
  {
    [(CLBScenePresentationManager *)self _sendActions:v18 toWorkspace:v30 origin:v13 targetProcess:v31];
  }

  if (([v5 requiresNewScene] & 1) != 0 || (objc_msgSend(v13, "bundleIdentifier"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "isEqualToString:", CLBClarityBoardBundleIdentifier), v22, v23))
  {
    v24 = v18;
    if (v21)
    {
      v24 = +[NSSet set];
    }

    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100007008;
    v33[3] = &unk_1002FC278;
    v33[4] = self;
    [(CLBScenePresentationManager *)self createSceneWithIdentifier:0 actions:v24 completion:v33];
    if (v21)
    {
    }
  }

  v29[2](v29, 0);
}

- (void)handleOpenApplicationRequest:(id)a3 withResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  BSDispatchQueueAssertMain();
  v8 = [v6 systemRequest];
  v9 = [v8 bundleIdentifier];
  v10 = +[FBProcessManager sharedInstanceIfExists];
  v11 = [v10 applicationProcessesForBundleIdentifier:v9];

  v12 = [v11 firstObject];
  if (v12)
  {
    [(CLBScenePresentationManager *)self _continueOpenApplicationRequest:v6 withResult:v7];
  }

  else
  {
    v13 = +[ClarityBoard sharedApplicationLibrary];
    v14 = [v13 applicationInfoForBundleIdentifier:v9];
    v15 = [v14 processIdentity];

    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = sub_100007304;
    v33 = sub_100007314;
    v16 = [FBApplicationProcessLaunchTransaction alloc];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10000731C;
    v27[3] = &unk_1002FC2A0;
    v17 = v15;
    v28 = v17;
    v34 = [v16 initWithProcessIdentity:v17 executionContextProvider:v27];
    v18 = v30[5];
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_100007370;
    v22 = &unk_1002FC2C8;
    v23 = self;
    v24 = v6;
    v25 = v7;
    v26 = &v29;
    [v18 setCompletionBlock:&v19];
    [v30[5] begin];

    _Block_object_dispose(&v29, 8);
  }
}

- (void)createSceneWithIdentifier:(id)a3 actions:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  BSDispatchQueueAssertMain();
  v11 = +[CLFLog commonLog];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(CLBScenePresentationManager *)self identifier];
    *buf = 138412546;
    v45 = v12;
    v46 = 2112;
    v47 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Creating scene for %@ with optional scene identifier: %@", buf, 0x16u);
  }

  if (!v8)
  {
    v13 = +[NSUUID UUID];
    v8 = [v13 UUIDString];

    v14 = +[CLFLog commonLog];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v45 = v8;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Assigned scene identifier: %@", buf, 0xCu);
    }
  }

  v15 = [(CLBScenePresentationManager *)self scenePairsByIdentifier];
  v16 = [v15 objectForKeyedSubscript:v8];

  if (v16)
  {
    v17 = +[CLFLog commonLog];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(CLBScenePresentationManager *)self identifier];
      *buf = 138412546;
      v45 = v18;
      v46 = 2112;
      v47 = v8;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Skipping scene request for %@ because it already has one with scene identifier: %@", buf, 0x16u);
    }

    v19 = [NSError errorWithDomain:@"CLBScenePresentationManagerErrorDomain" code:-2006 userInfo:0];
    v10[2](v10, 0, v19);
  }

  else
  {
    v19 = [(CLBScenePresentationManager *)self _process];
    if ([v19 isRunning])
    {
      v42 = v10;
      v41 = [CLBScenePresentationViewController alloc];
      v20 = [(CLBScenePresentationManager *)self identifier];
      v21 = [(CLBScenePresentationManager *)self bundleIdentifier];
      v22 = v9;
      v23 = [(CLBScenePresentationManager *)self supportsClarityUI];
      v24 = [(CLBScenePresentationManager *)self shouldDisableIdleTimer];
      v25 = [(CLBScenePresentationManager *)self avoidsBackButton];
      v26 = [(CLBScenePresentationManager *)self viewAssumesBoundsMatchDeviceBounds];
      v27 = [(CLBScenePresentationManager *)self displayLayoutStyle];
      BYTE1(v40) = v26;
      LOBYTE(v40) = v25;
      v28 = v23;
      v9 = v22;
      v29 = [(CLBScenePresentationViewController *)v41 initWithName:v20 bundleIdentifier:v21 sceneIdentifier:v8 supportsClarityUI:v28 actions:v22 shouldDisableIdleTimer:v24 avoidsBackButton:v40 viewAssumesBoundsMatchDeviceBounds:v27 displayLayoutStyle:?];

      if (v29)
      {
        v30 = [(CLBScenePresentationManager *)self delegate];
        v31 = [v30 windowForScenePresentationManager:self];

        v10 = v42;
        if (v31)
        {
          if ([(CLBScenePresentationManager *)self avoidsBackButton])
          {
            v32 = [UIViewController backButtonAvoidingHostingControllerWithContainedViewController:v29];
          }

          else
          {
            v32 = v29;
          }

          v34 = v32;
          [v31 setRootViewController:v32];
          [v31 makeKeyAndVisible];
          v35 = [[CLBScenePresentationViewControllerWindowPair alloc] initWithScenePresentationViewController:v29 window:v31];
          v36 = [(CLBScenePresentationManager *)self scenePairsByIdentifier];
          [v36 setObject:v35 forKeyedSubscript:v8];

          v37 = [(CLBScenePresentationManager *)self terminationWatcher];

          if (!v37)
          {
            v43[0] = _NSConcreteStackBlock;
            v43[1] = 3221225472;
            v43[2] = sub_100007A4C;
            v43[3] = &unk_1002FC2F0;
            v43[4] = self;
            v38 = [[BSProcessDeathWatcher alloc] initWithPID:objc_msgSend(v19 queue:"pid") deathHandler:{&_dispatch_main_q, v43}];
            [(CLBScenePresentationManager *)self setTerminationWatcher:v38];
          }

          v39 = [(CLBScenePresentationViewController *)v29 scene];
          (v42)[2](v42, v39, 0);
        }

        else
        {
          v34 = [NSError errorWithDomain:@"CLBScenePresentationManagerErrorDomain" code:-2005 userInfo:0];
          v42[2](v42, 0, v34);
        }

        v16 = 0;
      }

      else
      {
        v31 = [NSError errorWithDomain:@"CLBScenePresentationManagerErrorDomain" code:-2004 userInfo:0];
        v10 = v42;
        v42[2](v42, 0, v31);
        v16 = 0;
      }
    }

    else
    {
      v33 = +[CLFLog commonLog];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_100283E7C(self);
      }

      v29 = [NSError errorWithDomain:@"CLBScenePresentationManagerErrorDomain" code:-2003 userInfo:0];
      v10[2](v10, 0, v29);
    }
  }
}

- (void)_tearDownAllScenesIfNeeded
{
  BSDispatchQueueAssertMain();
  v3 = [(CLBScenePresentationManager *)self scenePairsByIdentifier];
  v4 = [v3 allKeys];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100007BF0;
  v5[3] = &unk_1002FC318;
  v5[4] = self;
  [(CLBScenePresentationManager *)self tearDownScenesWithIdentifiers:v4 completion:v5];
}

- (void)tearDownScenesWithIdentifiers:(id)a3 completion:(id)a4
{
  v6 = a3;
  v25 = a4;
  BSDispatchQueueAssertMain();
  v7 = +[NSMutableArray array];
  v8 = +[NSMutableArray array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      v13 = 0;
      do
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v26 + 1) + 8 * v13);
        v15 = [(CLBScenePresentationManager *)self scenePairsByIdentifier];
        v16 = [v15 objectForKeyedSubscript:v14];

        if (v16)
        {
          v17 = [v16 scenePresentationViewController];
          [v17 invalidateIfNeeded];

          v18 = [v16 window];
          [v18 setHidden:1];

          [v7 addObject:v14];
          v19 = [(CLBScenePresentationManager *)self scenePairsByIdentifier];
          [v19 setObject:0 forKeyedSubscript:v14];
        }

        else
        {
          v20 = +[CLFLog commonLog];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v33 = v14;
            _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Unable to tear down scene for identifier: %@", buf, 0xCu);
          }

          [v8 addObject:v14];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v26 objects:v36 count:16];
    }

    while (v11);
  }

  v21 = +[CLFLog commonLog];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [(CLBScenePresentationManager *)self identifier];
    *buf = 138412546;
    v33 = v22;
    v34 = 2112;
    v35 = v7;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Tore down %@ scenes: %@", buf, 0x16u);
  }

  if ([v8 count])
  {
    v30 = @"UnknownSceneIdentifiers";
    v31 = v8;
    v23 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v24 = [NSError errorWithDomain:@"CLBScenePresentationManagerErrorDomain" code:-2007 userInfo:v23];
    v25[2](v25, 0, v24);
  }

  else
  {
    v25[2](v25, 1, 0);
  }
}

- (BOOL)isPresented
{
  BSDispatchQueueAssertMain();
  v3 = [(CLBScenePresentationManager *)self scenePairsByIdentifier];
  v4 = [v3 count] != 0;

  return v4;
}

- (int)presentedPID
{
  v2 = [(CLBScenePresentationManager *)self _process];
  v3 = [v2 pid];

  return v3;
}

- (void)_sendActions:(id)a3 toWorkspace:(id)a4 origin:(id)a5 targetProcess:(id)a6
{
  v9 = a3;
  v33 = a4;
  v34 = a5;
  v32 = a6;
  v10 = [v9 mutableCopy];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v39;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v39 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v38 + 1) + 8 * i);
        if ([v16 UIActionType] == 1 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v17 = [UIOpenURLAction alloc];
          v18 = [v16 url];
          v19 = [v16 workspaceOriginatingProcess];
          v20 = v19;
          if (v19)
          {
            v21 = v19;
          }

          else
          {
            v21 = v34;
          }

          v22 = [v17 initWithURL:v18 workspaceOriginatingProcess:v21];

          [v10 removeObject:v16];
          [v10 addObject:v22];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v13);
  }

  v23 = [v32 pid];
  if (v23 != -1)
  {
    v24 = [RBSTarget targetWithPid:v23];
    v25 = [RBSDomainAttribute attributeWithDomain:@"com.apple.ClarityBoard" name:@"OpenApp"];
    v42 = v25;
    v26 = [NSArray arrayWithObjects:&v42 count:1];

    v27 = [[RBSAssertion alloc] initWithExplanation:@"CLBScenePresentationManagerHandlingOpenApplication" target:v24 attributes:v26];
    v37 = 0;
    LOBYTE(v25) = [v27 acquireWithError:&v37];
    v28 = v37;
    if ((v25 & 1) == 0)
    {
      v29 = +[CLFLog commonLog];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_100283FB0();
      }
    }

    v30 = dispatch_time(0, 2000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000083D8;
    block[3] = &unk_1002FC2F0;
    v36 = v27;
    v31 = v27;
    dispatch_after(v30, &_dispatch_main_q, block);
  }

  [v33 sendActions:v10];
}

- (id)_process
{
  v3 = +[FBProcessManager sharedInstanceIfExists];
  v4 = [(CLBScenePresentationManager *)self bundleIdentifier];
  v5 = [v3 processesForBundleIdentifier:v4];
  v6 = [v5 firstObject];

  return v6;
}

- (void)_willEnableSecureMode:(id)a3
{
  BSDispatchQueueAssertMain();
  if (![(CLBScenePresentationManager *)self isAllowedOnLockScreen])
  {
    v4 = [(CLBScenePresentationManager *)self scenePairsByIdentifier];
    v5 = [v4 count];

    if (v5)
    {
      v6 = +[CLFLog commonLog];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [(CLBScenePresentationManager *)self bundleIdentifier];
        *buf = 138412290;
        v21 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Hiding windows for %@ before enabling secure mode.", buf, 0xCu);
      }

      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v8 = [(CLBScenePresentationManager *)self scenePairsByIdentifier];
      v9 = [v8 allValues];

      v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v16;
        do
        {
          v13 = 0;
          do
          {
            if (*v16 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [*(*(&v15 + 1) + 8 * v13) window];
            [v14 setHidden:1];

            v13 = v13 + 1;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v11);
      }
    }
  }
}

- (void)_didDisableSecureMode:(id)a3
{
  BSDispatchQueueAssertMain();
  if (![(CLBScenePresentationManager *)self isAllowedOnLockScreen])
  {
    v4 = [(CLBScenePresentationManager *)self scenePairsByIdentifier];
    v5 = [v4 count];

    if (v5)
    {
      v6 = +[CLFLog commonLog];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [(CLBScenePresentationManager *)self bundleIdentifier];
        *buf = 138412290;
        v21 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Showing windows for %@ after disabling secure mode.", buf, 0xCu);
      }

      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v8 = [(CLBScenePresentationManager *)self scenePairsByIdentifier];
      v9 = [v8 allValues];

      v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v16;
        do
        {
          v13 = 0;
          do
          {
            if (*v16 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [*(*(&v15 + 1) + 8 * v13) window];
            [v14 setHidden:0];

            v13 = v13 + 1;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v11);
      }
    }
  }
}

- (CLBScenePresentationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSString)identifier
{
  sub_1000088BC();
  v2 = objc_opt_class();
  sub_100008884(v2);
  return &stru_100316DA0;
}

- (int64_t)sceneLevel
{
  sub_1000088BC();
  v2 = objc_opt_class();
  sub_100008884(v2);
  return 0;
}

- (NSString)bundleIdentifier
{
  sub_1000088BC();
  v2 = objc_opt_class();
  sub_100008884(v2);
  return &stru_100316DA0;
}

- (BOOL)supportsClarityUI
{
  sub_1000088BC();
  v2 = objc_opt_class();
  sub_100008884(v2);
  return 0;
}

- (int64_t)sceneCreationType
{
  sub_1000088BC();
  v2 = objc_opt_class();
  sub_100008884(v2);
  return 0;
}

@end