@interface _EXSceneSession
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)shouldAcceptXPCConnection:(id)connection;
- (NSXPCConnection)sessionXPCConnection;
- (_EXExtension)extension;
- (_EXSceneSession)initWithExtension:(id)extension;
- (id)makeConfigurationWithParameters:(id)parameters;
- (id)makeConnectionResponse;
- (id)makeSceneWithError:(id *)error;
- (id)makeXPCConnectionWithError:(id *)error;
- (void)connectSceneSessionWithRequest:(id)request reply:(id)reply;
- (void)connectToScene:(id)scene;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _EXSceneSession

- (_EXSceneSession)initWithExtension:(id)extension
{
  extensionCopy = extension;
  v10.receiver = self;
  v10.super_class = _EXSceneSession;
  v5 = [(_EXSceneSession *)&v10 init];
  if (v5)
  {
    v6 = _EXDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [_EXSceneSession initWithExtension:];
    }

    objc_storeWeak(&v5->_extension, extensionCopy);
    anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
    sceneConnectionListener = v5->_sceneConnectionListener;
    v5->_sceneConnectionListener = anonymousListener;

    [(NSXPCListener *)v5->_sceneConnectionListener setDelegate:v5];
  }

  return v5;
}

- (void)dealloc
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = _EXDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    *buf = 138412546;
    selfCopy = self;
    v14 = 2114;
    v15 = identifier;
    _os_log_impl(&dword_1847D1000, v3, OS_LOG_TYPE_DEFAULT, "%@ deallocated with identifier: '%{public}@'", buf, 0x16u);
  }

  v5 = _EXSignpostLog();
  v6 = v5;
  if (self->_signpost && os_signpost_enabled(v5))
  {
    v7 = v6;
    v8 = v7;
    signpost = self->_signpost;
    if (signpost - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1847D1000, v8, OS_SIGNPOST_EVENT, signpost, "extensionkit-lifecycle", "dealloc", buf, 2u);
    }
  }

  v11.receiver = self;
  v11.super_class = _EXSceneSession;
  [(_EXSceneSession *)&v11 dealloc];
  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  listenerCopy = listener;
  v8 = _EXDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [_EXSceneSession listener:connectionCopy shouldAcceptNewConnection:?];
  }

  sceneConnectionListener = self->_sceneConnectionListener;
  if (sceneConnectionListener == listenerCopy && ([(_EXSceneSession *)self setSceneXPCConnection:connectionCopy], scene = self->_scene, (objc_opt_respondsToSelector() & 1) != 0) && [(_EXScene *)self->_scene shouldAcceptConnection:connectionCopy])
  {
    v11 = _EXDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [_EXSceneSession listener:shouldAcceptNewConnection:];
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)shouldAcceptXPCConnection:(id)connection
{
  connectionCopy = connection;
  WeakRetained = objc_loadWeakRetained(&self->_sessionXPCConnection);

  if (!WeakRetained)
  {
    [connectionCopy setExportedObject:self];
    v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF2A1500];
    [connectionCopy setExportedInterface:v6];

    v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF2ABF98];
    [connectionCopy setRemoteObjectInterface:v7];

    [connectionCopy _setQueue:MEMORY[0x1E69E96A0]];
    objc_initWeak(&location, self);
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __45___EXSceneSession_shouldAcceptXPCConnection___block_invoke;
    v12 = &unk_1E6E4DDB8;
    objc_copyWeak(&v13, &location);
    [connectionCopy setInvalidationHandler:&v9];
    [(_EXSceneSession *)self setSessionXPCConnection:connectionCopy, v9, v10, v11, v12];
    [connectionCopy activate];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return WeakRetained == 0;
}

- (id)makeConfigurationWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v4 = [[_EXSceneConfiguration alloc] initWithParameters:parametersCopy];

  return v4;
}

- (id)makeSceneWithError:(id *)error
{
  v4 = _EXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [_EXSceneSession makeSceneWithError:];
  }

  configuration = [(_EXSceneSession *)self configuration];
  extension = [(_EXSceneSession *)self extension];
  [extension prepareForSceneConnectionWithConfiguration:configuration];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = _EXDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [(_EXSceneSession *)configuration makeSceneWithError:v9];
    }

    goto LABEL_33;
  }

  v7 = class_conformsToProtocol([configuration sceneClass], &unk_1EF2A3888);
  v8 = _EXDefaultLog();
  v9 = v8;
  if (!v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [_EXSceneSession makeSceneWithError:configuration];
    }

    goto LABEL_33;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [_EXSceneSession makeSceneWithError:configuration];
  }

  v10 = objc_alloc_init([configuration sceneClass]);
  v11 = _EXDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [_EXSceneSession makeSceneWithError:];
  }

  if (!v10)
  {
    v9 = _EXDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [_EXSceneSession makeSceneWithError:configuration];
    }

    goto LABEL_33;
  }

  if (([v10 conformsToProtocol:&unk_1EF2A3888] & 1) == 0)
  {
    configuration = _EXDefaultLog();
    if (os_log_type_enabled(configuration, OS_LOG_TYPE_FAULT))
    {
      [_EXSceneSession makeSceneWithError:];
    }

    __break(1u);
LABEL_31:
    v9 = _EXDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [_EXSceneSession makeSceneWithError:configuration];
    }

LABEL_33:

    __break(1u);
    return result;
  }

  if ([configuration sceneDelegateClass]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v12 = _EXDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [_EXSceneSession makeSceneWithError:configuration];
    }

    v13 = objc_alloc_init([configuration sceneDelegateClass]);
    v14 = _EXDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [_EXSceneSession makeSceneWithError:];
    }

    if (v13)
    {
      [v10 setDelegate:v13];

      goto LABEL_19;
    }

    goto LABEL_31;
  }

LABEL_19:

  return v10;
}

- (void)connectToScene:(id)scene
{
  sceneCopy = scene;
  if (sceneCopy)
  {
    v8 = sceneCopy;
    scene = [(_EXSceneSession *)self scene];
    v6 = objc_opt_respondsToSelector();

    sceneCopy = v8;
    if (v6)
    {
      scene2 = [(_EXSceneSession *)self scene];
      [scene2 connectToSession:self];

      sceneCopy = v8;
    }
  }
}

- (id)makeConnectionResponse
{
  v3 = objc_alloc_init(_EXSceneSessionConnectionResponse);
  sceneConnectionListener = [(_EXSceneSession *)self sceneConnectionListener];
  endpoint = [sceneConnectionListener endpoint];
  [(_EXSceneSessionConnectionResponse *)v3 setSceneEndpoint:endpoint];

  return v3;
}

- (void)connectSceneSessionWithRequest:(id)request reply:(id)reply
{
  v55 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  replyCopy = reply;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v8 = _EXDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [requestCopy identifier];
    *buf = 138543362;
    v54 = identifier;
    _os_log_impl(&dword_1847D1000, v8, OS_LOG_TYPE_DEFAULT, "Received UI session %{public}@ root view controller from UIKit", buf, 0xCu);
  }

  identifier2 = [requestCopy identifier];
  identifier = self->_identifier;
  self->_identifier = identifier2;

  v12 = _EXSignpostLog();
  v13 = os_signpost_id_make_with_pointer(v12, self->_identifier);
  if (v13)
  {
    v14 = v12;
    v15 = v14;
    if (v13 != -1 && os_signpost_enabled(v14))
    {
      v16 = self->_identifier;
      *buf = 138412290;
      v54 = v16;
      _os_signpost_emit_with_name_impl(&dword_1847D1000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "extensionkit-lifecycle", "ID: %@", buf, 0xCu);
    }
  }

  self->_signpost = v13;
  v17 = _EXSignpostLog();
  if ([(_EXSceneSession *)self signpost]&& os_signpost_enabled(v17))
  {
    v18 = v17;
    signpost = [(_EXSceneSession *)self signpost];
    if (signpost - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1847D1000, v18, OS_SIGNPOST_EVENT, signpost, "extensionkit-lifecycle", "[EXSceneSession shouldAcceptXPCConnection:]", buf, 2u);
    }
  }

  parameters = [requestCopy parameters];
  v21 = [(_EXSceneSession *)self makeConfigurationWithParameters:parameters];
  configuration = self->_configuration;
  self->_configuration = v21;

  hostEndpoint = [requestCopy hostEndpoint];
  hostEndpoint = self->_hostEndpoint;
  self->_hostEndpoint = hostEndpoint;

  extension = [(_EXSceneSession *)self extension];
  [extension prepareForSceneConnectionWithConfiguration:self->_configuration];

  v26 = +[_EXSceneSessionManager sharedInstance];
  [v26 addSession:self];

  v27 = _EXSignpostLog();
  if ([(_EXSceneSession *)self signpost]&& os_signpost_enabled(v27))
  {
    v28 = v27;
    signpost2 = [(_EXSceneSession *)self signpost];
    if (signpost2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1847D1000, v28, OS_SIGNPOST_EVENT, signpost2, "extensionkit-lifecycle", "PRE: [EXSceneSession makeSceneWithError:]", buf, 2u);
    }
  }

  v52 = 0;
  v30 = [(_EXSceneSession *)self makeSceneWithError:&v52];
  v31 = v52;
  v32 = _EXSignpostLog();
  if ([(_EXSceneSession *)self signpost]&& os_signpost_enabled(v32))
  {
    v33 = v32;
    signpost3 = [(_EXSceneSession *)self signpost];
    if (signpost3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1847D1000, v33, OS_SIGNPOST_EVENT, signpost3, "extensionkit-lifecycle", "POST: [EXSceneSession makeSceneWithError:]", buf, 2u);
    }
  }

  if (v30)
  {
    [(_EXSceneSession *)self setScene:v30];
    v35 = _EXSignpostLog();
    if ([(_EXSceneSession *)self signpost]&& os_signpost_enabled(v35))
    {
      v36 = v35;
      signpost4 = [(_EXSceneSession *)self signpost];
      if (signpost4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1847D1000, v36, OS_SIGNPOST_EVENT, signpost4, "extensionkit-lifecycle", "PRE: [EXSceneSession connectToScene:]", buf, 2u);
      }
    }

    [(_EXSceneSession *)self connectToScene:v30];
    v38 = _EXSignpostLog();
    if ([(_EXSceneSession *)self signpost]&& os_signpost_enabled(v38))
    {
      v39 = v38;
      signpost5 = [(_EXSceneSession *)self signpost];
      if (signpost5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1847D1000, v39, OS_SIGNPOST_EVENT, signpost5, "extensionkit-lifecycle", "POST: [EXSceneSession connectToScene:]", buf, 2u);
      }
    }

    [(NSXPCListener *)self->_sceneConnectionListener resume];
    makeConnectionResponse = [(_EXSceneSession *)self makeConnectionResponse];
    v42 = _EXSignpostLog();
    if ([(_EXSceneSession *)self signpost]&& os_signpost_enabled(v42))
    {
      v43 = v42;
      signpost6 = [(_EXSceneSession *)self signpost];
      if (signpost6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1847D1000, v43, OS_SIGNPOST_EVENT, signpost6, "extensionkit-lifecycle", "Initialized", buf, 2u);
      }
    }

    replyCopy[2](replyCopy, makeConnectionResponse, 0);
  }

  else
  {
    (replyCopy)[2](replyCopy, 0, v31);
    v45 = _EXSignpostLog();
    if ([(_EXSceneSession *)self signpost]&& os_signpost_enabled(v45))
    {
      v46 = v45;
      signpost7 = [(_EXSceneSession *)self signpost];
      if (signpost7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1847D1000, v46, OS_SIGNPOST_EVENT, signpost7, "extensionkit-lifecycle", "Failure", buf, 2u);
      }
    }

    objc_copyWeak(buf, &self->_sessionXPCConnection);
    WeakRetained = objc_loadWeakRetained(&self->_sessionXPCConnection);
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __56___EXSceneSession_connectSceneSessionWithRequest_reply___block_invoke;
    v50[3] = &unk_1E6E4DDB8;
    objc_copyWeak(&v51, buf);
    [WeakRetained addBarrierBlock:v50];

    objc_destroyWeak(&v51);
    objc_destroyWeak(buf);
  }

  v49 = *MEMORY[0x1E69E9840];
}

- (id)makeXPCConnectionWithError:(id *)error
{
  hostEndpoint = [(_EXSceneSession *)self hostEndpoint];
  if (hostEndpoint)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:hostEndpoint];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)invalidate
{
  v3 = _EXSignpostLog();
  if ([(_EXSceneSession *)self signpost]&& os_signpost_enabled(v3))
  {
    v4 = v3;
    signpost = [(_EXSceneSession *)self signpost];
    if (signpost - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = signpost;
      if (os_signpost_enabled(v4))
      {
        *v8 = 0;
        _os_signpost_emit_with_name_impl(&dword_1847D1000, v4, OS_SIGNPOST_EVENT, v6, "extensionkit-lifecycle", "invalidate", v8, 2u);
      }
    }
  }

  [(NSXPCListener *)self->_sceneConnectionListener invalidate];
  WeakRetained = objc_loadWeakRetained(&self->_sessionXPCConnection);
  [WeakRetained invalidate];
}

- (NSXPCConnection)sessionXPCConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionXPCConnection);

  return WeakRetained;
}

- (_EXExtension)extension
{
  WeakRetained = objc_loadWeakRetained(&self->_extension);

  return WeakRetained;
}

- (void)initWithExtension:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3(&dword_1847D1000, v0, v1, "%{public}@ allocated", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)listener:(void *)a1 shouldAcceptNewConnection:.cold.1(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [a1 processIdentifier];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)listener:shouldAcceptNewConnection:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3(&dword_1847D1000, v0, v1, "XPC interface successfully configured for session %{public}@, accepting connection.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)makeSceneWithError:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3(&dword_1847D1000, v0, v1, "Preparing for connection scene session extension: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)makeSceneWithError:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v10[0] = 136316162;
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_1();
  v11 = v4;
  v12 = v7;
  v13 = v8;
  _os_log_fault_impl(&dword_1847D1000, a2, OS_LOG_TYPE_FAULT, "%s - %s:%d: Unexpected configuration class '%{public}@' expected '%{public}@'", v10, 0x30u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)makeSceneWithError:(void *)a1 .cold.3(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  [a1 sceneClass];
  v1 = NSStringFromProtocol(&unk_1EF2A3888);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_2();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x30u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)makeSceneWithError:(void *)a1 .cold.4(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromClass([a1 sceneClass]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)makeSceneWithError:.cold.5()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3(&dword_1847D1000, v0, v1, "Scene is: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)makeSceneWithError:.cold.6()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = NSStringFromProtocol(&unk_1EF2A3888);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_2();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x30u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)makeSceneWithError:(void *)a1 .cold.7(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromClass([a1 sceneDelegateClass]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)makeSceneWithError:.cold.8()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3(&dword_1847D1000, v0, v1, "UI scene delegate is: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)makeSceneWithError:(void *)a1 .cold.9(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromClass([a1 sceneDelegateClass]);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_2();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x26u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)makeSceneWithError:(void *)a1 .cold.10(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromClass([a1 sceneClass]);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_2();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x26u);

  v7 = *MEMORY[0x1E69E9840];
}

@end