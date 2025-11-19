@interface _EXNSExtensionUIShimScene
- (BOOL)shouldAcceptConnection:(id)a3;
- (id)makePrincipalObjectForExtension:(id)a3;
- (void)connectToSession:(id)a3;
@end

@implementation _EXNSExtensionUIShimScene

- (id)makePrincipalObjectForExtension:(id)a3
{
  v3 = a3;
  v4 = [v3 identity];
  v5 = [v4 principalClass];

  if (([(objc_class *)v5 isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    v9 = _EXDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [_EXNSExtensionUIShimScene makePrincipalObjectForExtension:v5];
    }

    goto LABEL_10;
  }

  v6 = objc_alloc_init(v5);
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

- (void)connectToSession:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 extension];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10.receiver = self;
      v10.super_class = _EXNSExtensionUIShimScene;
      [(_EXNSExtensionShimScene *)&v10 connectToSession:v4];
      v6 = [(_EXNSExtensionShimScene *)self context];
      v7 = [v6 _principalObject];
      [(_EXNSExtensionUIShimScene *)self setViewController:v7];

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

- (BOOL)shouldAcceptConnection:(id)a3
{
  v4 = a3;
  v5 = [(_EXNSExtensionShimScene *)self context];
  v6 = [v5 conformsToProtocol:&unk_1F4E08D90];

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