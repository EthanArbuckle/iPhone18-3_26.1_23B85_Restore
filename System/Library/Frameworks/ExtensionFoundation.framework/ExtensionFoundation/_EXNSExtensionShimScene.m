@interface _EXNSExtensionShimScene
- (BOOL)shouldAcceptConnection:(id)a3;
- (_EXNSExtensionShimScene)init;
- (id)makePrincipalObjectForExtension:(id)a3;
- (void)connectToSession:(id)a3;
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

- (id)makePrincipalObjectForExtension:(id)a3
{
  v3 = objc_alloc_init([a3 principalClass]);

  return v3;
}

- (void)connectToSession:(id)a3
{
  v12 = a3;
  v4 = [v12 extension];
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

  v5 = [(_EXNSExtensionShimScene *)self makePrincipalObjectForExtension:v4];
  v6 = [_EXNSExtensionContextShimImplementation makeContextWithSceneSession:v12];
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

  v8 = [MEMORY[0x1E696B0F8] _sharedExtensionContextVendor];
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

  [v8 _addExtensionContext:v6];
  [(_EXNSExtensionShimScene *)self setContext:v6];
  v9 = [v6 internalImplementation];
  [v9 set__principalObject:v5];
  if ([v5 conformsToProtocol:&unk_1EF2ABFF8])
  {
    [v5 beginRequestWithExtensionContext:v6];
  }
}

- (BOOL)shouldAcceptConnection:(id)a3
{
  v4 = a3;
  v5 = [(_EXNSExtensionShimScene *)self context];
  v6 = [v5 conformsToProtocol:&unk_1EF2A1588];

  if (v6)
  {
    v7 = [(_EXNSExtensionShimScene *)self context];
    v8 = [v7 shouldAcceptXPCConnection:v4];
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