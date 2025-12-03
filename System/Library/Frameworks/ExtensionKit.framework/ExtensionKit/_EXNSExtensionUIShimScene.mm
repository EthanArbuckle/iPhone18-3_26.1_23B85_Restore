@interface _EXNSExtensionUIShimScene
- (BOOL)shouldAcceptConnection:(id)connection;
- (id)makePrincipalObjectForExtension:(id)extension;
- (void)connectToSession:(id)session;
@end

@implementation _EXNSExtensionUIShimScene

- (id)makePrincipalObjectForExtension:(id)extension
{
  extensionCopy = extension;
  identity = [extensionCopy identity];
  principalClass = [identity principalClass];

  if (([(objc_class *)principalClass isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    v9 = _EXDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [_EXNSExtensionUIShimScene makePrincipalObjectForExtension:principalClass];
    }

    goto LABEL_10;
  }

  v6 = objc_alloc_init(principalClass);
  if (!v6)
  {
    v9 = _EXDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [_EXNSExtensionUIShimScene makePrincipalObjectForExtension:];
    }

LABEL_10:

    __break(1u);
    return result;
  }

  v7 = v6;

  return v7;
}

- (void)connectToSession:(id)session
{
  sessionCopy = session;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    extension = [sessionCopy extension];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10.receiver = self;
      v10.super_class = _EXNSExtensionUIShimScene;
      [(_EXNSExtensionShimScene *)&v10 connectToSession:sessionCopy];
      context = [(_EXNSExtensionShimScene *)self context];
      _principalObject = [context _principalObject];
      [(_EXNSExtensionUIShimScene *)self setViewController:_principalObject];

      return;
    }
  }

  else
  {
    v8 = _EXDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [_EXNSExtensionUIShimScene connectToSession:];
    }

    __break(1u);
  }

  v9 = _EXDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    [_EXNSExtensionUIShimScene connectToSession:];
  }

  __break(1u);
}

- (BOOL)shouldAcceptConnection:(id)connection
{
  connectionCopy = connection;
  context = [(_EXNSExtensionShimScene *)self context];
  v6 = [context conformsToProtocol:&unk_1F4E08D90];

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

- (void)makePrincipalObjectForExtension:(objc_class *)a1 .cold.1(objc_class *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromClass(a1);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_1D29CC000, v2, v3, "%s - %s:%d: Pricipal object is unexpected class '%@'", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)makePrincipalObjectForExtension:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = "principalObject!=nil";
  v4 = 2080;
  v2 = 136315650;
  OUTLINED_FUNCTION_0();
  v5 = 58;
  _os_log_fault_impl(&dword_1D29CC000, v0, OS_LOG_TYPE_FAULT, "%s - %s:%d: The principal object must not be NULL.", &v2, 0x1Cu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)connectToSession:.cold.1()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_1D29CC000, v2, v3, "%s - %s:%d: Unexpected extension class '%@'", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)connectToSession:.cold.2()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_1D29CC000, v2, v3, "%s - %s:%d: Unexpected extension class '%@'", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

@end