@interface _EXHostSessionDriver
- (BOOL)shouldAcceptXPCConnection:(id)connection;
- (_EXHostSessionDriver)initWithHostViewController:(id)controller;
- (_EXHostViewControllerProtocol)hostViewController;
- (_EXHostViewControllerSession)session;
- (id)extensionProcess;
- (id)hostSessionHostView:(id)view;
- (id)makeXPCConnectionWithError:(id *)error;
- (void)dealloc;
- (void)hostSessionDidInvalidate:(id)invalidate;
- (void)hostSessionDidPrepareForHosting:(id)hosting;
- (void)hostSessionViewControllerReady:(id)ready;
- (void)invalidateDeactivatingSessions;
- (void)notifyHostViewControllerDidEndHosting:(id)hosting;
- (void)notifyHostViewControllerWillDeactivate:(id)deactivate;
- (void)resume;
- (void)scheduleInvalidations;
- (void)setSession:(id)session;
- (void)startSessionWithProcessConfiguration:(id)configuration configuration:(id)a4;
@end

@implementation _EXHostSessionDriver

- (_EXHostSessionDriver)initWithHostViewController:(id)controller
{
  controllerCopy = controller;
  v15.receiver = self;
  v15.super_class = _EXHostSessionDriver;
  v5 = [(_EXHostSessionDriver *)&v15 init];
  if (v5)
  {
    objc_initWeak(&location, v5);
    v6 = objc_opt_new();
    v7 = *(v5 + 7);
    *(v5 + 7) = v6;

    v8 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
    v9 = *(v5 + 6);
    *(v5 + 6) = v8;

    dispatch_source_set_timer(*(v5 + 6), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
    v10 = *(v5 + 6);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __51___EXHostSessionDriver_initWithHostViewController___block_invoke;
    v12[3] = &unk_1E8401C20;
    objc_copyWeak(&v13, &location);
    dispatch_source_set_event_handler(v10, v12);
    dispatch_resume(*(v5 + 6));
    objc_storeWeak(v5 + 8, controllerCopy);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *self;
  WeakRetained = objc_loadWeakRetained((a2 + 64));
  delegate = [WeakRetained delegate];
  v8 = 138543618;
  v9 = v4;
  v10 = 2048;
  v11 = delegate;
  _os_log_debug_impl(&dword_1D29CC000, a3, OS_LOG_TYPE_DEBUG, "end hosting session %{public}@ without calling delegate %p", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)resume
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v3 = self->_session;
  if (v3)
  {
    v6 = v3;
    if (![(_EXHostViewControllerSession *)v3 detached])
    {
      configuration = [(_EXHostViewControllerSession *)v6 configuration];
      beginHostingImmediately = [configuration beginHostingImmediately];

      if ((beginHostingImmediately & 1) == 0)
      {
        [(_EXHostViewControllerSession *)v6 resume];
      }
    }
  }

  self->_active = 1;

  MEMORY[0x1EEE66BB8]();
}

- (void)startSessionWithProcessConfiguration:(id)configuration configuration:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v7 = a4;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (configurationCopy)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (v8 && configurationCopy | v7)
  {
    v10 = _EXDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [_EXHostSessionDriver startSessionWithProcessConfiguration:configuration:];
    }
  }

  v11 = _EXDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [_EXHostSessionDriver startSessionWithProcessConfiguration:configuration:];
  }

  retryProcessConfiguration = self->_retryProcessConfiguration;
  self->_retryProcessConfiguration = 0;

  retrySessionConfiguration = self->_retrySessionConfiguration;
  self->_retrySessionConfiguration = 0;

  p_session = &self->_session;
  session = self->_session;
  v16 = session;
  v17 = v16;
  p_activeSession = &self->_activeSession;
  if (!self->_activeSession)
  {
    v37 = v9;
    v19 = v7;
    v20 = configurationCopy;
    extensionProcess = [(_EXHostViewControllerSession *)v16 extensionProcess];
    extensionIdentity = [extensionProcess extensionIdentity];
    if ([extensionIdentity requiresUIKitSceneHosting] && (-[_EXHostViewControllerSession sceneViewController](v17, "sceneViewController"), (v23 = objc_claimAutoreleasedReturnValue()) != 0))
    {

      configurationCopy = v20;
      v7 = v19;
      v9 = v37;
    }

    else
    {
      remoteViewController = [(_EXHostViewControllerSession *)v17 remoteViewController];

      configurationCopy = v20;
      v7 = v19;
      v9 = v37;
      if (!remoteViewController)
      {
        goto LABEL_21;
      }
    }

    objc_storeStrong(&self->_activeSession, session);
  }

LABEL_21:
  if (v17)
  {
    if ([(_EXHostViewControllerSession *)v17 state]>= 2)
    {
      [(_EXHostSessionDriver *)self notifyHostViewControllerWillDeactivate:v17];
    }

    [(_EXHostViewControllerSession *)v17 setDelegate:0];
    if (v17 != *p_activeSession)
    {
      v25 = _EXDefaultLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [_EXHostSessionDriver startSessionWithProcessConfiguration:configuration:];
      }

      [(_EXHostViewControllerSession *)v17 invalidate];
    }
  }

  if (v9)
  {
    hostViewController2 = [[_EXHostViewControllerSession alloc] initWithProcessConfiguration:configurationCopy configuration:v7];
    [(_EXHostViewControllerSession *)hostViewController2 setDelegate:self];
    objc_storeStrong(&self->_session, hostViewController2);
    [(_EXHostViewControllerSession *)hostViewController2 setDetached:1];
    hostViewController = [(_EXHostSessionDriver *)self hostViewController];
    [hostViewController setSession:self->_session];

    [(_EXHostViewControllerSession *)self->_session setDetached:0];
    configuration = [(_EXHostViewControllerSession *)self->_session configuration];
    beginHostingImmediately = [configuration beginHostingImmediately];

    if (beginHostingImmediately)
    {
      v30 = _EXDefaultLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v39 = v7;
        _os_log_impl(&dword_1D29CC000, v30, OS_LOG_TYPE_DEFAULT, "Client has requested immediate hosting for configuration: %{public}@", buf, 0xCu);
      }

      goto LABEL_42;
    }

    if (self->_active)
    {
LABEL_42:
      [(_EXHostViewControllerSession *)*p_session resume];
    }
  }

  else
  {
    v31 = _EXDefaultLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      [_EXHostSessionDriver startSessionWithProcessConfiguration:? configuration:?];
    }

    [(_EXHostViewControllerSession *)*p_session invalidate];
    v32 = *p_activeSession;
    if (*p_activeSession != *p_session)
    {
      v33 = _EXDefaultLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        [_EXHostSessionDriver startSessionWithProcessConfiguration:? configuration:?];
      }

      [*p_activeSession invalidate];
      v32 = *p_activeSession;
    }

    if (v32)
    {
      [(_EXHostSessionDriver *)self notifyHostViewControllerDidEndHosting:?];
      activeSession = self->_activeSession;
    }

    else
    {
      activeSession = 0;
    }

    self->_activeSession = 0;

    v35 = self->_session;
    self->_session = 0;

    hostViewController2 = [(_EXHostSessionDriver *)self hostViewController];
    [(_EXHostViewControllerSession *)hostViewController2 embedViewController:0];
  }

  v36 = *MEMORY[0x1E69E9840];
}

- (_EXHostViewControllerSession)session
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  session = self->_session;

  return session;
}

- (void)setSession:(id)session
{
  sessionCopy = session;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v6 = _EXDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [_EXHostSessionDriver setSession:];
  }

  p_session = &self->_session;
  session = self->_session;
  if (session == sessionCopy)
  {
    sessionCopy2 = _EXDefaultLog();
    if (os_log_type_enabled(&sessionCopy2->super, OS_LOG_TYPE_DEBUG))
    {
      [_EXHostSessionDriver setSession:];
    }
  }

  else
  {
    sessionCopy2 = session;
    retryProcessConfiguration = self->_retryProcessConfiguration;
    self->_retryProcessConfiguration = 0;

    retrySessionConfiguration = self->_retrySessionConfiguration;
    self->_retrySessionConfiguration = 0;

    if (sessionCopy2)
    {
      if ([(_EXHostViewControllerSession *)sessionCopy2 state]>= 2)
      {
        [(_EXHostSessionDriver *)self notifyHostViewControllerWillDeactivate:sessionCopy];
      }

      [(_EXHostViewControllerSession *)sessionCopy2 setDelegate:0];
      if (sessionCopy2 != self->_activeSession && ![(_EXHostViewControllerSession *)sessionCopy2 detached])
      {
        v12 = _EXDefaultLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [_EXHostSessionDriver setSession:];
        }

        [(_EXHostViewControllerSession *)sessionCopy2 invalidate];
      }
    }

    v13 = *p_session;
    *p_session = 0;

    if (sessionCopy)
    {
      extensionProcess = [(_EXHostViewControllerSession *)sessionCopy extensionProcess];
      extensionIdentity = [extensionProcess extensionIdentity];
      if ([extensionIdentity requiresUIKitSceneHosting])
      {
        sceneViewController = [(_EXHostViewControllerSession *)sessionCopy sceneViewController];
        if (sceneViewController)
        {

LABEL_19:
          objc_storeStrong(&self->_session, session);
          [(_EXHostSessionDriver *)self hostSessionViewControllerReady:sessionCopy];
          goto LABEL_35;
        }
      }

      remoteViewController = [(_EXHostViewControllerSession *)sessionCopy remoteViewController];

      if (remoteViewController)
      {
        goto LABEL_19;
      }

      [(_EXHostSessionDriver *)self notifyHostViewControllerDidEndHosting:sessionCopy];
    }

    if (![(_EXHostViewControllerSession *)sessionCopy2 detached])
    {
      v18 = _EXDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [_EXHostSessionDriver setSession:];
      }

      [(_EXHostViewControllerSession *)sessionCopy2 invalidate];
    }

    p_activeSession = &self->_activeSession;
    activeSession = self->_activeSession;
    if (activeSession != sessionCopy2)
    {
      if (![(_EXHostViewControllerSession *)self->_activeSession detached])
      {
        v21 = _EXDefaultLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          [_EXHostSessionDriver setSession:?];
        }

        [(_EXHostViewControllerSession *)*p_activeSession invalidate];
      }

      activeSession = *p_activeSession;
    }

    if (activeSession)
    {
      [(_EXHostSessionDriver *)self notifyHostViewControllerDidEndHosting:?];
      v22 = self->_activeSession;
    }

    else
    {
      v22 = 0;
    }

    self->_activeSession = 0;

    hostViewController = [(_EXHostSessionDriver *)self hostViewController];
    [hostViewController embedViewController:0];
  }

LABEL_35:
}

- (void)scheduleInvalidations
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v3 = _EXDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [_EXHostSessionDriver scheduleInvalidations];
  }

  deactivateSessionTimer = self->_deactivateSessionTimer;
  v5 = dispatch_time(0, 100000000);
  dispatch_source_set_timer(deactivateSessionTimer, v5, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
}

- (void)invalidateDeactivatingSessions
{
  v21 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  dispatch_source_set_timer(self->_deactivateSessionTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  selfCopy = self;
  v3 = self->_deactivatingSessions;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (([v8 detached] & 1) == 0)
        {
          v9 = _EXDefaultLog();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446466;
            v17 = "[_EXHostSessionDriver invalidateDeactivatingSessions]";
            v18 = 2114;
            v19 = v8;
          }

          [v8 invalidate];
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)selfCopy->_deactivatingSessions removeAllObjects];
  v10 = *MEMORY[0x1E69E9840];
}

- (id)makeXPCConnectionWithError:(id *)error
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  session = self->_session;
  if (session)
  {
    v6 = [(_EXHostViewControllerSession *)session _makeXPCConnectionWithError:error];
  }

  else if (error)
  {
    v7 = _EXDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [_EXHostSessionDriver makeXPCConnectionWithError:v7];
    }

    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6966C98] code:6 userInfo:MEMORY[0x1E695E0F8]];
    v9 = v8;
    v6 = 0;
    *error = v8;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)extensionProcess
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  session = [(_EXHostSessionDriver *)self session];
  extensionProcess = [session extensionProcess];

  return extensionProcess;
}

- (void)hostSessionDidPrepareForHosting:(id)hosting
{
  hostingCopy = hosting;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  session = [(_EXHostSessionDriver *)self session];

  if (session == hostingCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_hostViewController);
    delegate = [WeakRetained delegate];
    v8 = objc_loadWeakRetained(&self->_hostViewController);
    placeholderView = [v8 placeholderView];

    v10 = _EXDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [_EXHostSessionDriver hostSessionDidPrepareForHosting:];
    }

    if (objc_opt_respondsToSelector())
    {
      [delegate hostViewControllerDidActivate:WeakRetained];
    }

    if (objc_opt_respondsToSelector())
    {
      [placeholderView hostViewControllerDidActivate:WeakRetained];
    }

    v11 = _EXDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [_EXHostSessionDriver hostSessionDidPrepareForHosting:];
    }

    configuration = [hostingCopy configuration];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = objc_opt_respondsToSelector();

      if ((v13 & 1) == 0)
      {
LABEL_14:

        return;
      }

      configuration = [hostingCopy configuration];
      [delegate hostViewController:WeakRetained didPrepareToHost:configuration];
    }

    goto LABEL_14;
  }

  v14 = _EXDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    [_EXHostSessionDriver hostSessionDidPrepareForHosting:];
  }

  __break(1u);
}

- (void)hostSessionViewControllerReady:(id)ready
{
  readyCopy = ready;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  session = [(_EXHostSessionDriver *)self session];

  if (session != readyCopy)
  {
    v11 = _EXDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [_EXHostSessionDriver hostSessionViewControllerReady:];
    }

    goto LABEL_32;
  }

  session2 = [(_EXHostSessionDriver *)self session];
  extensionProcess = [session2 extensionProcess];
  extensionIdentity = [extensionProcess extensionIdentity];
  requiresUIKitSceneHosting = [extensionIdentity requiresUIKitSceneHosting];

  if (requiresUIKitSceneHosting)
  {
    sceneViewController = [readyCopy sceneViewController];

    if (!sceneViewController)
    {
      v11 = _EXDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        [_EXHostSessionDriver hostSessionViewControllerReady:];
      }

LABEL_32:

      __break(1u);
      return;
    }
  }

  else
  {
    remoteViewController = [readyCopy remoteViewController];

    if (!remoteViewController)
    {
      v11 = _EXDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        [_EXHostSessionDriver hostSessionViewControllerReady:];
      }

      goto LABEL_32;
    }
  }

  v13 = _EXDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [_EXHostSessionDriver hostSessionViewControllerReady:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);
  delegate = [WeakRetained delegate];
  p_activeSession = &self->_activeSession;
  if (self->_activeSession)
  {
    if ([readyCopy maxState] == 4)
    {
      v17 = _EXDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [(_EXHostSessionDriver *)delegate hostSessionViewControllerReady:?];
      }

      configuration = [(_EXHostViewControllerSession *)*p_activeSession configuration];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_16;
      }

      v19 = objc_opt_respondsToSelector();

      if (v19)
      {
        configuration = [(_EXHostViewControllerSession *)*p_activeSession configuration];
        error = [(_EXHostViewControllerSession *)*p_activeSession error];
        [delegate hostViewController:WeakRetained didEndHosting:configuration error:error];

LABEL_16:
      }
    }

    [(NSMutableArray *)self->_deactivatingSessions addObject:self->_activeSession];
    [(_EXHostSessionDriver *)self scheduleInvalidations];
    activeSession = self->_activeSession;
    self->_activeSession = 0;
  }

  v22 = _EXDefaultLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    [_EXHostSessionDriver hostSessionViewControllerReady:];
  }

  configuration2 = [readyCopy configuration];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_23;
  }

  v24 = objc_opt_respondsToSelector();

  if (v24)
  {
    configuration2 = [readyCopy configuration];
    [delegate hostViewController:WeakRetained didBeginHosting:configuration2];
LABEL_23:
  }

  session3 = [(_EXHostSessionDriver *)self session];
  extensionProcess2 = [session3 extensionProcess];
  extensionIdentity2 = [extensionProcess2 extensionIdentity];
  requiresUIKitSceneHosting2 = [extensionIdentity2 requiresUIKitSceneHosting];

  hostViewController = [(_EXHostSessionDriver *)self hostViewController];
  if (requiresUIKitSceneHosting2)
  {
    [readyCopy sceneViewController];
  }

  else
  {
    [readyCopy remoteViewController];
  }
  v30 = ;
  [hostViewController embedViewController:v30];
}

- (void)notifyHostViewControllerWillDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);
  delegate = [WeakRetained delegate];
  v7 = objc_loadWeakRetained(&self->_hostViewController);
  placeholderView = [v7 placeholderView];

  v9 = _EXDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [_EXHostSessionDriver notifyHostViewControllerWillDeactivate:];
  }

  if (objc_opt_respondsToSelector())
  {
    error = [deactivateCopy error];
    [delegate hostViewControllerWillDeactivate:WeakRetained error:error];
  }

  if (objc_opt_respondsToSelector())
  {
    error2 = [deactivateCopy error];
    [placeholderView hostViewControllerWillDeactivate:WeakRetained error:error2];
  }
}

- (void)notifyHostViewControllerDidEndHosting:(id)hosting
{
  hostingCopy = hosting;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);
  delegate = [WeakRetained delegate];
  if ([hostingCopy maxState] == 4)
  {
    v7 = _EXDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [_EXHostSessionDriver notifyHostViewControllerDidEndHosting:];
    }

    configuration = [hostingCopy configuration];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_14;
    }

    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      configuration = [hostingCopy configuration];
      error = [hostingCopy error];
      [delegate hostViewController:WeakRetained didEndHosting:configuration error:error];
LABEL_13:

LABEL_14:
    }
  }

  else
  {
    error2 = [hostingCopy error];

    if (error2)
    {
      v12 = _EXDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [_EXHostSessionDriver notifyHostViewControllerDidEndHosting:];
      }

      configuration = [hostingCopy configuration];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_14;
      }

      v13 = objc_opt_respondsToSelector();

      if (v13)
      {
        configuration = [hostingCopy configuration];
        error = [hostingCopy error];
        [delegate hostViewController:WeakRetained didFailToHost:configuration error:error];
        goto LABEL_13;
      }
    }
  }
}

- (void)hostSessionDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  session = [(_EXHostSessionDriver *)self session];

  if (session == invalidateCopy)
  {
    [(_EXHostSessionDriver *)self setSession:0];
    [(_EXHostSessionDriver *)self notifyHostViewControllerWillDeactivate:invalidateCopy];
    [(_EXHostSessionDriver *)self notifyHostViewControllerDidEndHosting:invalidateCopy];
    hostViewController = [(_EXHostSessionDriver *)self hostViewController];
    [hostViewController embedViewController:0];

    configuration = [invalidateCopy configuration];
    retryOnHostingFailure = [configuration retryOnHostingFailure];

    if (retryOnHostingFailure)
    {
      processConfiguration = [invalidateCopy processConfiguration];
      retryProcessConfiguration = self->_retryProcessConfiguration;
      self->_retryProcessConfiguration = processConfiguration;

      configuration2 = [invalidateCopy configuration];
    }

    else
    {
      v12 = self->_retryProcessConfiguration;
      self->_retryProcessConfiguration = 0;

      configuration2 = 0;
    }

    retrySessionConfiguration = self->_retrySessionConfiguration;
    self->_retrySessionConfiguration = configuration2;

    if (self->_retryProcessConfiguration)
    {
      if (self->_retrySessionConfiguration)
      {
        objc_initWeak(&location, self);
        mEMORY[0x1E6966CA0] = [MEMORY[0x1E6966CA0] sharedInstance];
        [mEMORY[0x1E6966CA0] defaultRetryFailedSessionDelay];
        v16 = dispatch_time(0, (v15 * 1000000000.0));
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __49___EXHostSessionDriver_hostSessionDidInvalidate___block_invoke;
        block[3] = &unk_1E8401DF0;
        objc_copyWeak(&v20, &location);
        block[4] = self;
        v17 = MEMORY[0x1E69E96A0];
        dispatch_after(v16, MEMORY[0x1E69E96A0], block);

        objc_destroyWeak(&v20);
        objc_destroyWeak(&location);
      }
    }
  }

  else
  {
    v18 = _EXDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [_EXHostSessionDriver hostSessionDidInvalidate:];
    }

    __break(1u);
  }
}

- (id)hostSessionHostView:(id)view
{
  viewCopy = view;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  session = [(_EXHostSessionDriver *)self session];

  if (session == viewCopy)
  {
    hostViewController = [(_EXHostSessionDriver *)self hostViewController];
    view = [hostViewController view];

    return view;
  }

  else
  {
    v9 = _EXDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [_EXHostSessionDriver hostSessionHostView:];
    }

    __break(1u);
  }

  return result;
}

- (BOOL)shouldAcceptXPCConnection:(id)connection
{
  connectionCopy = connection;
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);
  delegate = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate shouldAcceptXPCConnection:connectionCopy];
  }

  else
  {
    v8 = _EXDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [_EXHostSessionDriver shouldAcceptXPCConnection:];
    }

    v7 = 0;
  }

  return v7;
}

- (_EXHostViewControllerProtocol)hostViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);

  return WeakRetained;
}

- (void)startSessionWithProcessConfiguration:configuration:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)startSessionWithProcessConfiguration:configuration:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)startSessionWithProcessConfiguration:configuration:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)startSessionWithProcessConfiguration:(uint64_t *)a1 configuration:.cold.4(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)startSessionWithProcessConfiguration:(uint64_t *)a1 configuration:.cold.5(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)setSession:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setSession:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setSession:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setSession:(uint64_t *)a1 .cold.4(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setSession:.cold.5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)hostSessionDidPrepareForHosting:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)hostSessionDidPrepareForHosting:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_2(&dword_1D29CC000, v0, v1, "EXHostViewController: Will try to call delegate %p 'hostViewControllerDidActivate:' for session: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)hostSessionDidPrepareForHosting:.cold.3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_2(&dword_1D29CC000, v0, v1, "EXHostViewController: Will try to call delegate %p 'hostViewController:didPrepareToHost:' for session: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)hostSessionViewControllerReady:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)hostSessionViewControllerReady:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)hostSessionViewControllerReady:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)hostSessionViewControllerReady:(uint64_t)a1 .cold.4(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_2(&dword_1D29CC000, v3, v4, "EXHostViewController: Will try to call delegate %p 'hostViewController:didEndHosting:error:' for session: %{public}@");
  v5 = *MEMORY[0x1E69E9840];
}

- (void)hostSessionViewControllerReady:.cold.5()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_2(&dword_1D29CC000, v0, v1, "EXHostViewController: Will try to call delegate %p 'hostViewController:didBeginHosting:' for session: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)hostSessionViewControllerReady:.cold.6()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)notifyHostViewControllerWillDeactivate:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_2(&dword_1D29CC000, v0, v1, "EXHostViewController: Will try to call delegate %p 'hostViewControllerWillDeactivate:error:' for session: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)notifyHostViewControllerDidEndHosting:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_2(&dword_1D29CC000, v0, v1, "EXHostViewController: Will try to call delegate %p 'hostViewController:didFailToHost:error:' for session: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)notifyHostViewControllerDidEndHosting:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_2(&dword_1D29CC000, v0, v1, "EXHostViewController: Will try to call delegate %p 'hostViewController:didEndHosting:error:' for session: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)hostSessionDidInvalidate:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)hostSessionHostView:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)shouldAcceptXPCConnection:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end