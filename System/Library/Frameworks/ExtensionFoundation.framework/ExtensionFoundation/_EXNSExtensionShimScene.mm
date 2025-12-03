@interface _EXNSExtensionShimScene
- (BOOL)shouldAcceptConnection:(id)connection;
- (_EXNSExtensionShimScene)init;
- (id)makePrincipalObjectForExtension:(id)extension;
- (void)connectToSession:(id)session;
- (void)dealloc;
@end

@implementation _EXNSExtensionShimScene

- (_EXNSExtensionShimScene)init
{
  v3.receiver = self;
  v3.super_class = _EXNSExtensionShimScene;
  return [(_EXNSExtensionShimScene *)&v3 init];
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_3();

  v8 = *MEMORY[0x1E69E9840];
}

- (id)makePrincipalObjectForExtension:(id)extension
{
  v3 = objc_alloc_init([extension principalClass]);

  return v3;
}

- (void)connectToSession:(id)session
{
  sessionCopy = session;
  extension = [sessionCopy extension];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = _EXDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [_EXNSExtensionShimScene connectToSession:];
    }

    __break(1u);
    goto LABEL_13;
  }

  v5 = [(_EXNSExtensionShimScene *)self makePrincipalObjectForExtension:extension];
  v6 = [_EXNSExtensionContextShimImplementation makeContextWithSceneSession:sessionCopy];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_13:
    v11 = _EXDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [_EXNSExtensionShimScene connectToSession:];
    }

    goto LABEL_19;
  }

  v7 = objc_opt_class();
  if (v7 == objc_opt_class())
  {
    v11 = _EXDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [_EXNSExtensionShimScene connectToSession:];
    }

    goto LABEL_19;
  }

  _sharedExtensionContextVendor = [MEMORY[0x1E696B0F8] _sharedExtensionContextVendor];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = _EXDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [_EXNSExtensionShimScene connectToSession:];
    }

LABEL_19:

    __break(1u);
    return;
  }

  [_sharedExtensionContextVendor _addExtensionContext:v6];
  [(_EXNSExtensionShimScene *)self setContext:v6];
  internalImplementation = [v6 internalImplementation];
  [internalImplementation set__principalObject:v5];
  if ([v5 conformsToProtocol:&unk_1EF2ABFF8])
  {
    [v5 beginRequestWithExtensionContext:v6];
  }
}

- (BOOL)shouldAcceptConnection:(id)connection
{
  connectionCopy = connection;
  context = [(_EXNSExtensionShimScene *)self context];
  v6 = [context conformsToProtocol:&unk_1EF2A1588];

  if (v6)
  {
    context2 = [(_EXNSExtensionShimScene *)self context];
    v8 = [context2 shouldAcceptXPCConnection:connectionCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)connectToSession:.cold.1()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_3(&dword_1847D1000, v2, v3, "%s - %s:%d: Unexpected extension class '%@'", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)connectToSession:.cold.2()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_3();

  v8 = *MEMORY[0x1E69E9840];
}

- (void)connectToSession:.cold.3()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_3();

  v8 = *MEMORY[0x1E69E9840];
}

- (void)connectToSession:.cold.4()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_3();

  v8 = *MEMORY[0x1E69E9840];
}

@end