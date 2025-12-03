@interface CLBScenePresentationManager
- (BOOL)canHandleOpenApplicationRequest:(id)request;
- (BOOL)isPresented;
- (BOOL)supportsClarityUI;
- (CLBScenePresentationManager)initWithDelegate:(id)delegate;
- (CLBScenePresentationManagerDelegate)delegate;
- (NSString)bundleIdentifier;
- (NSString)identifier;
- (NSString)requiredEntitlement;
- (UIApplicationSceneSpecification)sceneSpecification;
- (id)_process;
- (int)presentedPID;
- (int64_t)sceneCreationType;
- (int64_t)sceneLevel;
- (void)_continueOpenApplicationRequest:(id)request withResult:(id)result;
- (void)_didDisableSecureMode:(id)mode;
- (void)_sendActions:(id)actions toWorkspace:(id)workspace origin:(id)origin targetProcess:(id)process;
- (void)_tearDownAllScenesIfNeeded;
- (void)_willEnableSecureMode:(id)mode;
- (void)createSceneWithIdentifier:(id)identifier actions:(id)actions completion:(id)completion;
- (void)handleOpenApplicationRequest:(id)request withResult:(id)result;
- (void)tearDownScenesWithIdentifiers:(id)identifiers completion:(id)completion;
@end

@implementation CLBScenePresentationManager

- (CLBScenePresentationManager)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = CLBScenePresentationManager;
  v5 = [(CLBScenePresentationManager *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
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
  sceneSessionRole = [(CLBScenePresentationManager *)self sceneSessionRole];
  v3 = [CLBScenePresentationManagerSpecification specificationWithSessionRole:sceneSessionRole];

  return v3;
}

- (NSString)requiredEntitlement
{
  entitlement_forStaging = [(CLBScenePresentationManager *)self entitlement_forStaging];
  v3 = entitlement_forStaging;
  if (entitlement_forStaging)
  {
    v4 = entitlement_forStaging;
  }

  else
  {
    v4 = @"com.apple.clarityboard.shows-scene";
  }

  return v4;
}

- (BOOL)canHandleOpenApplicationRequest:(id)request
{
  requestCopy = request;
  application = [requestCopy application];
  bundleIdentifier = [application bundleIdentifier];
  bundleIdentifier2 = [(CLBScenePresentationManager *)self bundleIdentifier];
  if ([bundleIdentifier isEqualToString:bundleIdentifier2])
  {
    systemRequest = [requestCopy systemRequest];
    clientProcess = [systemRequest clientProcess];
    state = [clientProcess state];
    isRunning = [state isRunning];
  }

  else
  {
    isRunning = 0;
  }

  return isRunning;
}

- (void)_continueOpenApplicationRequest:(id)request withResult:(id)result
{
  requestCopy = request;
  resultCopy = result;
  BSDispatchQueueAssertMain();
  systemRequest = [requestCopy systemRequest];
  options = [systemRequest options];
  bundleIdentifier = [systemRequest bundleIdentifier];
  v9 = +[FBProcessManager sharedInstanceIfExists];
  v28 = bundleIdentifier;
  v10 = [v9 applicationProcessesForBundleIdentifier:bundleIdentifier];

  v27 = v10;
  firstObject = [v10 firstObject];
  v12 = [options url];
  v31 = firstObject;
  workspace = [firstObject workspace];
  clientProcess = [systemRequest clientProcess];
  handle = [clientProcess handle];
  dictionary = [options dictionary];
  v14 = [dictionary bs_safeArrayForKey:FBSOpenApplicationOptionKeyActions];
  v15 = +[CLFLog commonLog];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(CLBScenePresentationManager *)self identifier];
    *buf = 138412546;
    v35 = identifier;
    v36 = 2112;
    v37 = handle;
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

  application = [requestCopy application];
  alwaysDeliversOpenURLActionsUsingWorkspace = [application alwaysDeliversOpenURLActionsUsingWorkspace];

  if (alwaysDeliversOpenURLActionsUsingWorkspace)
  {
    [(CLBScenePresentationManager *)self _sendActions:v18 toWorkspace:workspace origin:handle targetProcess:v31];
  }

  if (([requestCopy requiresNewScene] & 1) != 0 || (objc_msgSend(handle, "bundleIdentifier"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "isEqualToString:", CLBClarityBoardBundleIdentifier), v22, v23))
  {
    v24 = v18;
    if (alwaysDeliversOpenURLActionsUsingWorkspace)
    {
      v24 = +[NSSet set];
    }

    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100007008;
    v33[3] = &unk_1002FC278;
    v33[4] = self;
    [(CLBScenePresentationManager *)self createSceneWithIdentifier:0 actions:v24 completion:v33];
    if (alwaysDeliversOpenURLActionsUsingWorkspace)
    {
    }
  }

  resultCopy[2](resultCopy, 0);
}

- (void)handleOpenApplicationRequest:(id)request withResult:(id)result
{
  requestCopy = request;
  resultCopy = result;
  BSDispatchQueueAssertMain();
  systemRequest = [requestCopy systemRequest];
  bundleIdentifier = [systemRequest bundleIdentifier];
  v10 = +[FBProcessManager sharedInstanceIfExists];
  v11 = [v10 applicationProcessesForBundleIdentifier:bundleIdentifier];

  firstObject = [v11 firstObject];
  if (firstObject)
  {
    [(CLBScenePresentationManager *)self _continueOpenApplicationRequest:requestCopy withResult:resultCopy];
  }

  else
  {
    v13 = +[ClarityBoard sharedApplicationLibrary];
    v14 = [v13 applicationInfoForBundleIdentifier:bundleIdentifier];
    processIdentity = [v14 processIdentity];

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
    v17 = processIdentity;
    v28 = v17;
    v34 = [v16 initWithProcessIdentity:v17 executionContextProvider:v27];
    v18 = v30[5];
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_100007370;
    v22 = &unk_1002FC2C8;
    selfCopy = self;
    v24 = requestCopy;
    v25 = resultCopy;
    v26 = &v29;
    [v18 setCompletionBlock:&v19];
    [v30[5] begin];

    _Block_object_dispose(&v29, 8);
  }
}

- (void)createSceneWithIdentifier:(id)identifier actions:(id)actions completion:(id)completion
{
  identifierCopy = identifier;
  actionsCopy = actions;
  completionCopy = completion;
  BSDispatchQueueAssertMain();
  v11 = +[CLFLog commonLog];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(CLBScenePresentationManager *)self identifier];
    *buf = 138412546;
    v45 = identifier;
    v46 = 2112;
    v47 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Creating scene for %@ with optional scene identifier: %@", buf, 0x16u);
  }

  if (!identifierCopy)
  {
    v13 = +[NSUUID UUID];
    identifierCopy = [v13 UUIDString];

    v14 = +[CLFLog commonLog];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v45 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Assigned scene identifier: %@", buf, 0xCu);
    }
  }

  scenePairsByIdentifier = [(CLBScenePresentationManager *)self scenePairsByIdentifier];
  v16 = [scenePairsByIdentifier objectForKeyedSubscript:identifierCopy];

  if (v16)
  {
    v17 = +[CLFLog commonLog];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [(CLBScenePresentationManager *)self identifier];
      *buf = 138412546;
      v45 = identifier2;
      v46 = 2112;
      v47 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Skipping scene request for %@ because it already has one with scene identifier: %@", buf, 0x16u);
    }

    _process = [NSError errorWithDomain:@"CLBScenePresentationManagerErrorDomain" code:-2006 userInfo:0];
    completionCopy[2](completionCopy, 0, _process);
  }

  else
  {
    _process = [(CLBScenePresentationManager *)self _process];
    if ([_process isRunning])
    {
      v42 = completionCopy;
      v41 = [CLBScenePresentationViewController alloc];
      identifier3 = [(CLBScenePresentationManager *)self identifier];
      bundleIdentifier = [(CLBScenePresentationManager *)self bundleIdentifier];
      v22 = actionsCopy;
      supportsClarityUI = [(CLBScenePresentationManager *)self supportsClarityUI];
      shouldDisableIdleTimer = [(CLBScenePresentationManager *)self shouldDisableIdleTimer];
      avoidsBackButton = [(CLBScenePresentationManager *)self avoidsBackButton];
      viewAssumesBoundsMatchDeviceBounds = [(CLBScenePresentationManager *)self viewAssumesBoundsMatchDeviceBounds];
      displayLayoutStyle = [(CLBScenePresentationManager *)self displayLayoutStyle];
      BYTE1(v40) = viewAssumesBoundsMatchDeviceBounds;
      LOBYTE(v40) = avoidsBackButton;
      v28 = supportsClarityUI;
      actionsCopy = v22;
      v29 = [(CLBScenePresentationViewController *)v41 initWithName:identifier3 bundleIdentifier:bundleIdentifier sceneIdentifier:identifierCopy supportsClarityUI:v28 actions:v22 shouldDisableIdleTimer:shouldDisableIdleTimer avoidsBackButton:v40 viewAssumesBoundsMatchDeviceBounds:displayLayoutStyle displayLayoutStyle:?];

      if (v29)
      {
        delegate = [(CLBScenePresentationManager *)self delegate];
        v31 = [delegate windowForScenePresentationManager:self];

        completionCopy = v42;
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
          scenePairsByIdentifier2 = [(CLBScenePresentationManager *)self scenePairsByIdentifier];
          [scenePairsByIdentifier2 setObject:v35 forKeyedSubscript:identifierCopy];

          terminationWatcher = [(CLBScenePresentationManager *)self terminationWatcher];

          if (!terminationWatcher)
          {
            v43[0] = _NSConcreteStackBlock;
            v43[1] = 3221225472;
            v43[2] = sub_100007A4C;
            v43[3] = &unk_1002FC2F0;
            v43[4] = self;
            v38 = [[BSProcessDeathWatcher alloc] initWithPID:objc_msgSend(_process queue:"pid") deathHandler:{&_dispatch_main_q, v43}];
            [(CLBScenePresentationManager *)self setTerminationWatcher:v38];
          }

          scene = [(CLBScenePresentationViewController *)v29 scene];
          (v42)[2](v42, scene, 0);
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
        completionCopy = v42;
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
      completionCopy[2](completionCopy, 0, v29);
    }
  }
}

- (void)_tearDownAllScenesIfNeeded
{
  BSDispatchQueueAssertMain();
  scenePairsByIdentifier = [(CLBScenePresentationManager *)self scenePairsByIdentifier];
  allKeys = [scenePairsByIdentifier allKeys];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100007BF0;
  v5[3] = &unk_1002FC318;
  v5[4] = self;
  [(CLBScenePresentationManager *)self tearDownScenesWithIdentifiers:allKeys completion:v5];
}

- (void)tearDownScenesWithIdentifiers:(id)identifiers completion:(id)completion
{
  identifiersCopy = identifiers;
  completionCopy = completion;
  BSDispatchQueueAssertMain();
  v7 = +[NSMutableArray array];
  v8 = +[NSMutableArray array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = identifiersCopy;
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
        scenePairsByIdentifier = [(CLBScenePresentationManager *)self scenePairsByIdentifier];
        v16 = [scenePairsByIdentifier objectForKeyedSubscript:v14];

        if (v16)
        {
          scenePresentationViewController = [v16 scenePresentationViewController];
          [scenePresentationViewController invalidateIfNeeded];

          window = [v16 window];
          [window setHidden:1];

          [v7 addObject:v14];
          scenePairsByIdentifier2 = [(CLBScenePresentationManager *)self scenePairsByIdentifier];
          [scenePairsByIdentifier2 setObject:0 forKeyedSubscript:v14];
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
    identifier = [(CLBScenePresentationManager *)self identifier];
    *buf = 138412546;
    v33 = identifier;
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
    completionCopy[2](completionCopy, 0, v24);
  }

  else
  {
    completionCopy[2](completionCopy, 1, 0);
  }
}

- (BOOL)isPresented
{
  BSDispatchQueueAssertMain();
  scenePairsByIdentifier = [(CLBScenePresentationManager *)self scenePairsByIdentifier];
  v4 = [scenePairsByIdentifier count] != 0;

  return v4;
}

- (int)presentedPID
{
  _process = [(CLBScenePresentationManager *)self _process];
  v3 = [_process pid];

  return v3;
}

- (void)_sendActions:(id)actions toWorkspace:(id)workspace origin:(id)origin targetProcess:(id)process
{
  actionsCopy = actions;
  workspaceCopy = workspace;
  originCopy = origin;
  processCopy = process;
  v10 = [actionsCopy mutableCopy];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v11 = actionsCopy;
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
          workspaceOriginatingProcess = [v16 workspaceOriginatingProcess];
          v20 = workspaceOriginatingProcess;
          if (workspaceOriginatingProcess)
          {
            v21 = workspaceOriginatingProcess;
          }

          else
          {
            v21 = originCopy;
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

  v23 = [processCopy pid];
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

  [workspaceCopy sendActions:v10];
}

- (id)_process
{
  v3 = +[FBProcessManager sharedInstanceIfExists];
  bundleIdentifier = [(CLBScenePresentationManager *)self bundleIdentifier];
  v5 = [v3 processesForBundleIdentifier:bundleIdentifier];
  firstObject = [v5 firstObject];

  return firstObject;
}

- (void)_willEnableSecureMode:(id)mode
{
  BSDispatchQueueAssertMain();
  if (![(CLBScenePresentationManager *)self isAllowedOnLockScreen])
  {
    scenePairsByIdentifier = [(CLBScenePresentationManager *)self scenePairsByIdentifier];
    v5 = [scenePairsByIdentifier count];

    if (v5)
    {
      v6 = +[CLFLog commonLog];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        bundleIdentifier = [(CLBScenePresentationManager *)self bundleIdentifier];
        *buf = 138412290;
        v21 = bundleIdentifier;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Hiding windows for %@ before enabling secure mode.", buf, 0xCu);
      }

      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      scenePairsByIdentifier2 = [(CLBScenePresentationManager *)self scenePairsByIdentifier];
      allValues = [scenePairsByIdentifier2 allValues];

      v10 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
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
              objc_enumerationMutation(allValues);
            }

            window = [*(*(&v15 + 1) + 8 * v13) window];
            [window setHidden:1];

            v13 = v13 + 1;
          }

          while (v11 != v13);
          v11 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v11);
      }
    }
  }
}

- (void)_didDisableSecureMode:(id)mode
{
  BSDispatchQueueAssertMain();
  if (![(CLBScenePresentationManager *)self isAllowedOnLockScreen])
  {
    scenePairsByIdentifier = [(CLBScenePresentationManager *)self scenePairsByIdentifier];
    v5 = [scenePairsByIdentifier count];

    if (v5)
    {
      v6 = +[CLFLog commonLog];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        bundleIdentifier = [(CLBScenePresentationManager *)self bundleIdentifier];
        *buf = 138412290;
        v21 = bundleIdentifier;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Showing windows for %@ after disabling secure mode.", buf, 0xCu);
      }

      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      scenePairsByIdentifier2 = [(CLBScenePresentationManager *)self scenePairsByIdentifier];
      allValues = [scenePairsByIdentifier2 allValues];

      v10 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
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
              objc_enumerationMutation(allValues);
            }

            window = [*(*(&v15 + 1) + 8 * v13) window];
            [window setHidden:0];

            v13 = v13 + 1;
          }

          while (v11 != v13);
          v11 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
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