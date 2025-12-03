@interface CLBSystemService
- (BOOL)_openWebsiteInlineForRequest:(id)request;
- (CLBSystemService)initWithDelegate:(id)delegate;
- (CLBSystemServiceDelegate)delegate;
- (void)_attemptToDismissLockScreenWithCompletion:(id)completion;
- (void)_finishHandlingOpenApplicationRequest:(id)request verifierResult:(id)result completion:(id)completion;
- (void)_handleUpdatedScreenSizeForApplication:(id)application completion:(id)completion;
- (void)_performSceneUpdateForRequest:(id)request;
- (void)_reportInsecureProcessesForAction:(id)action;
- (void)dealloc;
- (void)systemService:(id)service canActivateApplication:(id)application withResult:(id)result;
- (void)systemService:(id)service handleActions:(id)actions origin:(id)origin withResult:(id)result;
- (void)systemService:(id)service handleOpenApplicationRequest:(id)request withCompletion:(id)completion;
- (void)systemService:(id)service isPasscodeLockedOrBlockedWithResult:(id)result;
@end

@implementation CLBSystemService

- (CLBSystemService)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = CLBSystemService;
  v5 = [(CLBSystemService *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = +[FBSystemService sharedInstance];
    [v7 setDelegate:v6];
  }

  return v6;
}

- (void)dealloc
{
  lockScreenDidCompleteToken = [(CLBSystemService *)self lockScreenDidCompleteToken];

  if (lockScreenDidCompleteToken)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    lockScreenDidCompleteToken2 = [(CLBSystemService *)self lockScreenDidCompleteToken];
    [v4 removeObserver:lockScreenDidCompleteToken2];
  }

  v6.receiver = self;
  v6.super_class = CLBSystemService;
  [(CLBSystemService *)&v6 dealloc];
}

- (void)systemService:(id)service canActivateApplication:(id)application withResult:(id)result
{
  if (result)
  {
    (*(result + 2))(result, 0);
  }
}

- (void)systemService:(id)service handleOpenApplicationRequest:(id)request withCompletion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  BSDispatchQueueAssertMain();
  v9 = +[CLFLog commonLog];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    systemServiceDescription = [requestCopy systemServiceDescription];
    *buf = 138412290;
    v21 = systemServiceDescription;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Handle open application request (%@)", buf, 0xCu);
  }

  lockScreenDidCompleteToken = [(CLBSystemService *)self lockScreenDidCompleteToken];

  if (lockScreenDidCompleteToken)
  {
    v12 = +[CLFLog commonLog];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10028574C(v12);
    }

    v13 = FBSOpenApplicationErrorCreate();
    completionCopy[2](completionCopy, v13);
  }

  else if ([(CLBSystemService *)self _openWebsiteInlineForRequest:requestCopy])
  {
    v14 = +[CLFLog commonLog];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Opened website URL within current app.", buf, 2u);
    }

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v15 = +[CLBOpenApplicationVerifier sharedInstance];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100025D2C;
    v16[3] = &unk_1002FD048;
    v17 = requestCopy;
    selfCopy = self;
    v19 = completionCopy;
    [v15 verifyRequest:v17 completionHandler:v16];
  }
}

- (BOOL)_openWebsiteInlineForRequest:(id)request
{
  requestCopy = request;
  v4 = +[CLBOpenApplicationVerifier sharedInstance];
  v5 = [v4 shouldOpenWebsiteInlineForRequest:requestCopy];

  if (!v5)
  {
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  v6 = qword_100336870;
  options = [requestCopy options];
  v8 = [options url];
  v9 = [CLBEvent eventWithType:5 context:v8];
  LOBYTE(v6) = [v6 handleEvent:v9];

  if ((v6 & 1) == 0)
  {
    v11 = +[CLFLog commonLog];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100285790(v11);
    }

    goto LABEL_7;
  }

  v10 = 1;
LABEL_8:

  return v10;
}

- (void)_attemptToDismissLockScreenWithCompletion:(id)completion
{
  completionCopy = completion;
  BSDispatchQueueAssertMain();
  v5 = +[CLFLog commonLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Attempting to dismiss lock screen.", buf, 2u);
  }

  objc_initWeak(buf, self);
  v6 = +[NSNotificationCenter defaultCenter];
  objc_initWeak(&location, v6);

  v7 = objc_loadWeakRetained(&location);
  v8 = +[NSOperationQueue mainQueue];
  v9 = CLBLockScreenDidCompleteNotification;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_10002625C;
  v17 = &unk_1002FD070;
  objc_copyWeak(&v19, buf);
  v10 = completionCopy;
  v18 = v10;
  objc_copyWeak(&v20, &location);
  v11 = [v7 addObserverForName:v9 object:0 queue:v8 usingBlock:&v14];
  [(CLBSystemService *)self setLockScreenDidCompleteToken:v11, v14, v15, v16, v17];

  v12 = qword_100336870;
  v13 = [CLBEvent eventWithType:8 context:&off_100319048];
  [v12 handleEvent:v13];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);
}

- (void)_finishHandlingOpenApplicationRequest:(id)request verifierResult:(id)result completion:(id)completion
{
  requestCopy = request;
  resultCopy = result;
  v10 = objc_retainBlock(completion);
  error = [resultCopy error];
  v12 = error;
  if (error)
  {
    [error code];
    errorDescription = [v12 errorDescription];
    v13 = FBSOpenApplicationErrorCreate();

    v14 = +[CLFLog commonLog];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Not handling open application request: %@", buf, 0xCu);
    }

    if (v10)
    {
LABEL_5:
      v10[2](v10, v13);
      goto LABEL_15;
    }
  }

  else
  {
    pptTestURL = [resultCopy pptTestURL];
    if (pptTestURL)
    {
      [UIApp handleTestURL:pptTestURL];
    }

    else
    {
      v16 = [[CLBOpenApplicationRequest alloc] initWithRequest:requestCopy completion:v10];
      v17 = qword_100336870;
      v18 = [CLBEvent eventWithType:4 context:v16];
      LOBYTE(v17) = [v17 handleEvent:v18];

      if ((v17 & 1) == 0)
      {
        [(CLBSystemService *)self _performSceneUpdateForRequest:v16];
      }

      v10 = 0;
    }

    v13 = 0;
    if (v10)
    {
      goto LABEL_5;
    }
  }

  v19 = +[CLBSiriPresentationController sharedPresentationController];
  if ([v19 isPresented])
  {
    [v19 dismissSiri:29];
  }

LABEL_15:
}

- (void)_handleUpdatedScreenSizeForApplication:(id)application completion:(id)completion
{
  applicationCopy = application;
  completionCopy = completion;
  BSDispatchQueueAssertMain();
  bundleIdentifier = [applicationCopy bundleIdentifier];
  delegate = [(CLBSystemService *)self delegate];
  v10 = [delegate systemService:self displayStyleForBundleIdentifier:bundleIdentifier];

  delegate2 = [(CLBSystemService *)self delegate];
  v12 = [delegate2 systemService:self lastUsedDisplayStyleForBundleIdentifier:bundleIdentifier];

  if (!v12 || [v12 integerValue] == v10)
  {
    goto LABEL_13;
  }

  v13 = +[CLFLog commonLog];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = sub_10001FE74([v12 integerValue]);
    v15 = sub_10001FE74(v10);
    *buf = 138412802;
    v25 = bundleIdentifier;
    v26 = 2112;
    v27 = v14;
    v28 = 2112;
    v29 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Display style for %@ changed: last %@, current %@", buf, 0x20u);
  }

  v16 = +[FBProcessManager sharedInstance];
  v17 = [v16 applicationProcessesForBundleIdentifier:bundleIdentifier];

  if ([v17 count] >= 2)
  {
    v18 = +[CLFLog commonLog];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      sub_1002857D4(bundleIdentifier, v18);
    }
  }

  firstObject = [v17 firstObject];

  if (firstObject)
  {
    v20 = +[CLFLog commonLog];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = bundleIdentifier;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Terminating to handle updated screen size: %@", buf, 0xCu);
    }

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100026888;
    v21[3] = &unk_1002FD098;
    v22 = applicationCopy;
    v23 = completionCopy;
    [firstObject killForReason:5 andReport:0 withDescription:@"scene frame changed" completion:v21];
  }

  else
  {
LABEL_13:
    (*(completionCopy + 2))(completionCopy, 1);
  }
}

- (void)_performSceneUpdateForRequest:(id)request
{
  requestCopy = request;
  systemRequest = [requestCopy systemRequest];
  bundleIdentifier = [systemRequest bundleIdentifier];

  if (bundleIdentifier)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100026B7C;
    v16[3] = &unk_1002FD0C0;
    v7 = requestCopy;
    v17 = v7;
    selfCopy = self;
    v8 = bundleIdentifier;
    v19 = v8;
    v9 = objc_retainBlock(v16);
    application = [v7 application];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100026C10;
    v13[3] = &unk_1002FD098;
    v14 = v8;
    v15 = v9;
    v11 = v9;
    [(CLBSystemService *)self _handleUpdatedScreenSizeForApplication:application completion:v13];

    v12 = v17;
  }

  else
  {
    v12 = +[CLFLog commonLog];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_10028584C(v12);
    }
  }
}

- (void)systemService:(id)service isPasscodeLockedOrBlockedWithResult:(id)result
{
  if (result)
  {
    (*(result + 2))(result, 0);
  }
}

- (void)systemService:(id)service handleActions:(id)actions origin:(id)origin withResult:(id)result
{
  actionsCopy = actions;
  resultCopy = result;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [actionsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    v13 = 1;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(actionsCopy);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(CLBSystemService *)self _reportInsecureProcessesForAction:v15];
        }

        else
        {
          v13 = 0;
        }
      }

      v11 = [actionsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
    if (resultCopy)
    {
      if (v13)
      {
        v16 = 0;
      }

      else
      {
        v16 = 8;
      }

      goto LABEL_17;
    }
  }

  else if (resultCopy)
  {
    v16 = 0;
LABEL_17:
    resultCopy[2](resultCopy, v16);
  }
}

- (void)_reportInsecureProcessesForAction:(id)action
{
  actionCopy = action;
  secureModeViolations = [actionCopy secureModeViolations];
  v5 = +[CLFLog commonLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v83 = actionCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received insecure drawing action %@", buf, 0xCu);
  }

  v48 = actionCopy;

  v54 = getpid();
  v52 = objc_alloc_init(NSMutableSet);
  v6 = objc_alloc_init(NSMutableSet);
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = secureModeViolations;
  v55 = [obj countByEnumeratingWithState:&v74 objects:v81 count:16];
  if (v55)
  {
    v53 = *v75;
    v50 = v6;
    do
    {
      v7 = 0;
      do
      {
        if (*v75 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v56 = v7;
        v8 = *(*(&v74 + 1) + 8 * v7);
        layerNamesByContext = [v8 layerNamesByContext];
        v10 = [layerNamesByContext count];

        if (v10)
        {
          layerNamesByContext2 = [v8 layerNamesByContext];
          v70[0] = _NSConcreteStackBlock;
          v70[1] = 3221225472;
          v70[2] = sub_1000274E0;
          v70[3] = &unk_1002FD0E8;
          v71 = v52;
          v72 = v6;
          v73 = v8;
          [layerNamesByContext2 enumerateKeysAndObjectsUsingBlock:v70];

          processId = v71;
        }

        else
        {
          processId = [v8 processId];
          [v6 addObject:processId];
        }

        processId2 = [v8 processId];
        v14 = [NSNumber numberWithInt:v54];
        v15 = [processId2 isEqualToNumber:v14];

        if (v15)
        {
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          contextIds = [v8 contextIds];
          v17 = [contextIds countByEnumeratingWithState:&v66 objects:v80 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v67;
            do
            {
              for (i = 0; i != v18; i = i + 1)
              {
                if (*v67 != v19)
                {
                  objc_enumerationMutation(contextIds);
                }

                v21 = *(*(&v66 + 1) + 8 * i);
                v22 = +[CLFLog commonLog];
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                {
                  v23 = +[UIWindow _windowWithContextId:](UIWindow, "_windowWithContextId:", [v21 intValue]);
                  *buf = 138412290;
                  v83 = v23;
                  _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Violating window: %@", buf, 0xCu);
                }
              }

              v18 = [contextIds countByEnumeratingWithState:&v66 objects:v80 count:16];
            }

            while (v18);
          }

          v6 = v50;
        }

        v7 = v56 + 1;
      }

      while ((v56 + 1) != v55);
      v55 = [obj countByEnumeratingWithState:&v74 objects:v81 count:16];
    }

    while (v55);
  }

  if ([v52 count])
  {
    v24 = v6;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v25 = v52;
    v26 = [v25 countByEnumeratingWithState:&v62 objects:v79 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v63;
      do
      {
        for (j = 0; j != v27; j = j + 1)
        {
          if (*v63 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v62 + 1) + 8 * j);
          v31 = +[CLFLog commonLog];
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v83 = v30;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Insecure layer: %@", buf, 0xCu);
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v62 objects:v79 count:16];
      }

      while (v27);
    }

    v6 = v24;
  }

  v32 = [obj bs_map:{&stru_1002FD128, v48}];
  v33 = [NSSet setWithArray:v32];

  v57 = +[FBProcessManager sharedInstance];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v34 = obj;
  v35 = [v34 countByEnumeratingWithState:&v58 objects:v78 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v59;
    do
    {
      for (k = 0; k != v36; k = k + 1)
      {
        if (*v59 != v37)
        {
          objc_enumerationMutation(v34);
        }

        processId3 = [*(*(&v58 + 1) + 8 * k) processId];
        intValue = [processId3 intValue];

        if (intValue >= 1)
        {
          v41 = [NSNumber numberWithInt:intValue];
          v42 = [v33 containsObject:v41];

          if (v42)
          {
            v43 = v33;
            v44 = [v57 processForPID:intValue];
            v45 = v44;
            if (v44)
            {
              bundleIdentifier = [v44 bundleIdentifier];
              v47 = +[CLFLog commonLog];
              if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v83 = bundleIdentifier;
                _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "Process had insecure drawing: %@", buf, 0xCu);
              }
            }

            v33 = v43;
          }
        }
      }

      v36 = [v34 countByEnumeratingWithState:&v58 objects:v78 count:16];
    }

    while (v36);
  }
}

- (CLBSystemServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end