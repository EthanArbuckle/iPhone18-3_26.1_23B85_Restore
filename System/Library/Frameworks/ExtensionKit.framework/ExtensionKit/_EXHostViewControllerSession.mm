@interface _EXHostViewControllerSession
+ (void)sessionWithProcess:(id)process configuration:(id)configuration completion:(id)completion;
+ (void)sessionWithProcessConfiguration:(id)configuration configuration:(id)a4 completion:(id)completion;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (UIView)hostView;
- (_EXHostViewControllerSession)initWithProcessConfiguration:(id)configuration configuration:(id)a4 detached:(BOOL)detached;
- (_EXHostViewControllerSessionDelegate)delegate;
- (_UIRemoteSheet)remoteSheet;
- (id)_makeXPCConnectionWithError:(id *)error;
- (id)makeXPCConnectionWithError:(id *)error;
- (void)_internalQueue_prepareToHost;
- (void)_invalidateSession;
- (void)clientIsReady;
- (void)dealloc;
- (void)invalidate;
- (void)makeSceneHostViewController;
- (void)processDidInvalidate;
- (void)requestRemoteViewController;
- (void)resume;
- (void)resumeWithReadyNotification:(id)notification;
- (void)setDelegate:(id)delegate;
- (void)setRemoteViewController:(id)controller;
- (void)setSceneViewController:(id)controller;
- (void)setState:(unint64_t)state;
@end

@implementation _EXHostViewControllerSession

+ (void)sessionWithProcess:(id)process configuration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  configurationCopy = configuration;
  configuration = [process configuration];
  [self sessionWithProcessConfiguration:configuration configuration:configurationCopy completion:completionCopy];
}

+ (void)sessionWithProcessConfiguration:(id)configuration configuration:(id)a4 completion:(id)completion
{
  completionCopy = completion;
  v8 = a4;
  configurationCopy = configuration;
  v10 = [[_EXHostViewControllerSession alloc] initWithProcessConfiguration:configurationCopy configuration:v8 detached:1];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __89___EXHostViewControllerSession_sessionWithProcessConfiguration_configuration_completion___block_invoke;
  v13[3] = &unk_1E8401BA8;
  v14 = v10;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = v10;
  dispatch_async(MEMORY[0x1E69E96A0], v13);
}

- (_EXHostViewControllerSession)initWithProcessConfiguration:(id)configuration configuration:(id)a4 detached:(BOOL)detached
{
  v32 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v9 = a4;
  v29.receiver = self;
  v29.super_class = _EXHostViewControllerSession;
  v10 = [(_EXHostViewControllerSession *)&v29 init];
  if (v10)
  {
    v11 = objc_opt_new();
    uuid = v10->_uuid;
    v10->_uuid = v11;

    v13 = _EXSignpostLog();
    v14 = os_signpost_id_make_with_pointer(v13, v10->_uuid);
    if (v14)
    {
      v15 = v13;
      v16 = v15;
      if (v14 != -1 && os_signpost_enabled(v15))
      {
        v17 = v10->_uuid;
        *buf = 138412290;
        v31 = v17;
        _os_signpost_emit_with_name_impl(&dword_1D29CC000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "extensionkit-lifecycle", "ID: %@", buf, 0xCu);
      }
    }

    v10->_signpost = v14;
    v18 = [configurationCopy copy];
    processConfiguration = v10->_processConfiguration;
    v10->_processConfiguration = v18;

    v20 = [v9 copy];
    configuration = v10->_configuration;
    v10->_configuration = v20;

    v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v23 = dispatch_queue_create("_EXHostSession", v22);
    internalQueue = v10->_internalQueue;
    v10->_internalQueue = v23;

    v10->_state = 0;
    extensionIdentity = [configurationCopy extensionIdentity];
    v10->_requiresFBSceneHosting = [extensionIdentity requiresFBSceneHosting];

    extensionIdentity2 = [configurationCopy extensionIdentity];
    v10->_requiresUIKitSceneHosting = [extensionIdentity2 requiresUIKitSceneHosting];

    v10->_detached = detached;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_sceneSessionConnection invalidate];
  if (self->_signpost)
  {
    v3 = _EXSignpostLog();
    v4 = v3;
    if (self->_signpost && os_signpost_enabled(v3))
    {
      v5 = v4;
      v6 = v5;
      signpost = self->_signpost;
      if (signpost - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1D29CC000, v6, OS_SIGNPOST_INTERVAL_END, signpost, "extensionkit-lifecycle", "dealloc", buf, 2u);
      }
    }
  }

  v8.receiver = self;
  v8.super_class = _EXHostViewControllerSession;
  [(_EXHostViewControllerSession *)&v8 dealloc];
}

- (void)setRemoteViewController:(id)controller
{
  controllerCopy = controller;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  remoteViewController = self->_remoteViewController;
  self->_remoteViewController = controllerCopy;
}

- (void)setSceneViewController:(id)controller
{
  controllerCopy = controller;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  sceneViewController = self->_sceneViewController;
  self->_sceneViewController = controllerCopy;
}

- (_UIRemoteSheet)remoteSheet
{
  hostingController = self->_hostingController;
  if (hostingController)
  {
    remoteViewController = hostingController;
  }

  else
  {
    remoteViewController = [(_EXHostViewControllerSession *)self remoteViewController];
  }

  return remoteViewController;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    v5 = obj;
  }
}

- (id)makeXPCConnectionWithError:(id *)error
{
  v3 = [(_EXHostViewControllerSession *)self _makeXPCConnectionWithError:error];
  if (!v3)
  {
    v3 = objc_opt_new();
  }

  return v3;
}

- (id)_makeXPCConnectionWithError:(id *)error
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (self->_requiresFBSceneHosting)
  {
    if (error)
    {
      v4 = MEMORY[0x1E696ABC0];
      v5 = *MEMORY[0x1E6966C98];
      v22 = *MEMORY[0x1E696A278];
      v23[0] = @"XPC connection is not available for extension points that require scene hosting.";
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v7 = [v4 errorWithDomain:v5 code:6 userInfo:v6];
      v8 = 0;
LABEL_14:
      *error = v7;

      goto LABEL_16;
    }

    v8 = 0;
    goto LABEL_16;
  }

  if (self->_state - 2 > 2)
  {
    remoteViewControllerEndpoint = _EXDefaultLog();
    if (os_log_type_enabled(remoteViewControllerEndpoint, OS_LOG_TYPE_ERROR))
    {
      [_EXHostViewControllerSession _makeXPCConnectionWithError:];
    }

    goto LABEL_9;
  }

  remoteViewControllerEndpoint = [(_EXHostViewControllerSession *)self remoteViewControllerEndpoint];
  if (!remoteViewControllerEndpoint)
  {
    v14 = _EXDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [_EXHostViewControllerSession _makeXPCConnectionWithError:];
    }

    if (error)
    {
      v15 = MEMORY[0x1E696ABC0];
      v16 = *MEMORY[0x1E6966C98];
      v20 = *MEMORY[0x1E696A278];
      v21 = @"Remote view controller XPC connection endpoint is nil, the extension probably exited.";
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      *error = [v15 errorWithDomain:v16 code:6 userInfo:v17];
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  v8 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:remoteViewControllerEndpoint];
LABEL_10:

  if (error && !v8 && !*error)
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E6966C98];
    v18 = *MEMORY[0x1E696A278];
    v19 = @"Attempt to make XPC connection on session in unsupported state.";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v7 = [v10 errorWithDomain:v11 code:6 userInfo:v6];
    goto LABEL_14;
  }

LABEL_16:
  v12 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)setState:(unint64_t)state
{
  v68 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (self->_state == state)
  {
    goto LABEL_35;
  }

  v5 = _EXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    state = self->_state;
    uuid = self->_uuid;
    *buf = 138543874;
    selfCopy = uuid;
    v64 = 2048;
    stateCopy3 = state;
    v66 = 2048;
    stateCopy2 = state;
  }

  v8 = self->_state;
  if (v8 != 5)
  {
    self->_state = state;
    if (state == 5)
    {
      v11 = _EXSignpostLog();
      v12 = v11;
      if (self->_signpost && os_signpost_enabled(v11))
      {
        v13 = v12;
        v14 = v13;
        signpost = self->_signpost;
        if (signpost - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1D29CC000, v14, OS_SIGNPOST_EVENT, signpost, "extensionkit-lifecycle", "_EXHostSessionStateInvalidated", buf, 2u);
        }
      }

      [(NSXPCListener *)self->_hostListener invalidate];
      [(NSXPCConnection *)self->_sceneSessionConnection invalidate];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained hostSessionDidInvalidate:self];

      v17 = _Block_copy(self->_invalidationHandler);
      invalidationHandler = self->_invalidationHandler;
      self->_invalidationHandler = 0;

      if (v17)
      {
        v17[2](v17);
      }

      hostListener = self->_hostListener;
      self->_hostListener = 0;

      sceneSessionConnection = self->_sceneSessionConnection;
      self->_sceneSessionConnection = 0;

      extensionProcess = self->_extensionProcess;
      self->_extensionProcess = 0;

      objc_storeWeak(&self->_delegate, 0);
      remoteViewController = self->_remoteViewController;
      self->_remoteViewController = 0;

      remoteViewControllerEndpoint = self->_remoteViewControllerEndpoint;
      self->_remoteViewControllerEndpoint = 0;

      sceneViewController = self->_sceneViewController;
      self->_sceneViewController = 0;

      hostingController = self->_hostingController;
      self->_hostingController = 0;

      v26 = _EXSignpostLog();
      v27 = v26;
      if (self->_signpost && os_signpost_enabled(v26))
      {
        v28 = v27;
        v29 = v28;
        v30 = self->_signpost;
        if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1D29CC000, v29, OS_SIGNPOST_INTERVAL_END, v30, "extensionkit-lifecycle", "invalidated", buf, 2u);
        }
      }

      self->_signpost = 0;
      os_activity_scope_leave(&self->_activity.state);
    }

    else
    {
      self->_maxState = state;
      if (state == 1 && !v8)
      {
        v31 = _EXSignpostLog();
        v32 = v31;
        if (self->_signpost && os_signpost_enabled(v31))
        {
          v33 = v32;
          v34 = v33;
          v35 = self->_signpost;
          if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1D29CC000, v34, OS_SIGNPOST_EVENT, v35, "extensionkit-lifecycle", "_EXHostSessionStatePreparing", buf, 2u);
          }
        }

        v36 = _os_activity_create(&dword_1D29CC000, "View session", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
        self->_activity.state.opaque[0] = 0;
        osActivity = self->_activity.osActivity;
        self->_activity.state.opaque[1] = 0;
        self->_activity.osActivity = v36;

        os_activity_scope_enter(self->_activity.osActivity, &self->_activity.state);
        invalidationHandler = [(_EXHostViewControllerSessionConfiguration *)self->_configuration invalidationHandler];
        v39 = self->_invalidationHandler;
        self->_invalidationHandler = invalidationHandler;

        internalQueue = self->_internalQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __41___EXHostViewControllerSession_setState___block_invoke;
        block[3] = &unk_1E8401BD0;
        block[4] = self;
        dispatch_async(internalQueue, block);
        goto LABEL_35;
      }

      if (state == 2 && v8 == 1)
      {
        v42 = _EXSignpostLog();
        v43 = v42;
        if (self->_signpost && os_signpost_enabled(v42))
        {
          v44 = v43;
          v45 = v44;
          v46 = self->_signpost;
          if (v46 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1D29CC000, v45, OS_SIGNPOST_EVENT, v46, "extensionkit-lifecycle", "_EXHostSessionStatePrepared", buf, 2u);
          }
        }

        v47 = objc_loadWeakRetained(&self->_delegate);
        [v47 hostSessionDidPrepareForHosting:self];

        if (self->_requiresFBSceneHosting)
        {
          [(_EXHostViewControllerSession *)self makeSceneHostViewController];
        }

        else
        {
          [(_EXHostViewControllerSession *)self requestRemoteViewController];
        }

        goto LABEL_35;
      }

      if (state != 3 || v8 != 2)
      {
        if (state == 4 && v8 == 3)
        {
          v52 = _EXSignpostLog();
          v53 = v52;
          if (self->_signpost && os_signpost_enabled(v52))
          {
            v54 = v53;
            v55 = v54;
            v56 = self->_signpost;
            if (v56 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v54))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_1D29CC000, v55, OS_SIGNPOST_EVENT, v56, "extensionkit-lifecycle", "_EXHostSessionStateViewControllerReady", buf, 2u);
            }
          }

          v57 = objc_loadWeakRetained(&self->_delegate);
          [v57 hostSessionViewControllerReady:self];

          readyBlock = self->_readyBlock;
          if (readyBlock)
          {
            readyBlock[2]();
            v59 = self->_readyBlock;
            self->_readyBlock = 0;
          }

          goto LABEL_35;
        }

        goto LABEL_68;
      }

      v48 = _EXSignpostLog();
      v17 = v48;
      if (self->_signpost && os_signpost_enabled(v48))
      {
        v49 = v17;
        v50 = v49;
        v51 = self->_signpost;
        if (v51 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v49))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1D29CC000, v50, OS_SIGNPOST_EVENT, v51, "extensionkit-lifecycle", "_EXHostSessionStateViewControllerRequested", buf, 2u);
        }
      }
    }

LABEL_35:
    v41 = *MEMORY[0x1E69E9840];
    return;
  }

  v9 = _EXDefaultLog();
  v10 = v9;
  if (state != 1)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v64 = 2048;
      stateCopy3 = state;
      _os_log_impl(&dword_1D29CC000, v10, OS_LOG_TYPE_DEFAULT, "Attempted transition of invalidated session %{public}@ to state %lu", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    [_EXHostViewControllerSession setState:];
  }

  __break(1u);
LABEL_68:
  v60 = _EXDefaultLog();
  if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
  {
    [_EXHostViewControllerSession setState:];
  }

  __break(1u);
}

- (void)resume
{
  OUTLINED_FUNCTION_7(self, *MEMORY[0x1E69E9840]);
  v4 = 136315906;
  v5 = "_processConfiguration.extensionIdentity";
  v6 = 2080;
  v7 = "/Library/Caches/com.apple.xbs/Sources/ExtensionKit/ExtensionKit/Source/HostViewController/EXHostViewControllerSession.m";
  v8 = 1024;
  v9 = 362;
  v10 = 2114;
  v11 = v1;
  _os_log_fault_impl(&dword_1D29CC000, v2, OS_LOG_TYPE_FAULT, "%s - %s:%d: extension is nil for configuration: %{public}@", &v4, 0x26u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)resumeWithReadyNotification:(id)notification
{
  v4 = _Block_copy(notification);
  readyBlock = self->_readyBlock;
  self->_readyBlock = v4;

  [(_EXHostViewControllerSession *)self resume];
}

- (void)invalidate
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);

  [(_EXHostViewControllerSession *)self setState:5];
}

- (void)processDidInvalidate
{
  v8 = *MEMORY[0x1E69E9840];
  extensionProcess = [self extensionProcess];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_invalidateSession
{
  v10 = *MEMORY[0x1E69E9840];
  extensionProcess = [self extensionProcess];
  uuid = [self uuid];
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_internalQueue_prepareToHost
{
  OUTLINED_FUNCTION_7(self, *MEMORY[0x1E69E9840]);
  v2 = *(v1 + 40);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)requestRemoteViewController
{
  OUTLINED_FUNCTION_7(self, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)makeSceneHostViewController
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = "_requiresFBSceneHosting";
  v4 = 2080;
  v2 = 136315650;
  OUTLINED_FUNCTION_0();
  v5 = 696;
  _os_log_fault_impl(&dword_1D29CC000, v0, OS_LOG_TYPE_FAULT, "%s - %s:%d: Cannot vend a scene to an extension when the extension point does not require FBScene hosting", &v2, 0x1Cu);
  v1 = *MEMORY[0x1E69E9840];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  dispatch_assert_queue_V2(self->_internalQueue);
  v8 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if (self->_hostListener == listenerCopy)
  {
    delegate = [(_EXHostViewControllerSession *)self delegate];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67___EXHostViewControllerSession_listener_shouldAcceptNewConnection___block_invoke;
    block[3] = &unk_1E8401D58;
    v15 = &v16;
    v13 = delegate;
    v14 = connectionCopy;
    v10 = delegate;
    dispatch_sync(MEMORY[0x1E69E96A0], block);

    v8 = *(v17 + 24);
  }

  _Block_object_dispose(&v16, 8);

  return v8 & 1;
}

- (void)clientIsReady
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (_EXHostViewControllerSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIView)hostView
{
  WeakRetained = objc_loadWeakRetained(&self->_hostView);

  return WeakRetained;
}

- (void)_makeXPCConnectionWithError:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_makeXPCConnectionWithError:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setState:.cold.1()
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = 136316162;
  v5 = "false";
  v6 = 2080;
  OUTLINED_FUNCTION_0();
  v7 = 350;
  v8 = 2048;
  v9 = v0;
  v10 = 2048;
  v11 = v1;
  _os_log_fault_impl(&dword_1D29CC000, v2, OS_LOG_TYPE_FAULT, "%s - %s:%d: Unhandled state transition %lu -> %lu", &v4, 0x30u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)setState:.cold.2()
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = "state != _EXHostSessionStatePreparing";
  v5 = 2080;
  OUTLINED_FUNCTION_0();
  v6 = 354;
  v7 = 2114;
  v8 = v0;
  _os_log_fault_impl(&dword_1D29CC000, v1, OS_LOG_TYPE_FAULT, "%s - %s:%d: Attempt to resume invalidated session %{public}@", &v3, 0x26u);
  v2 = *MEMORY[0x1E69E9840];
}

@end