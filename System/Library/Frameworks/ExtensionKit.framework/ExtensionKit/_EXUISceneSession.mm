@interface _EXUISceneSession
- (_EXUISceneSession)initWithExtension:(id)a3;
- (id)makeConfigurationWithParameters:(id)a3;
- (id)makeConnectionResponse;
- (id)makeSceneWithError:(id *)a3;
- (void)connectToScene:(id)a3;
- (void)setRootViewController:(id)a3;
@end

@implementation _EXUISceneSession

- (_EXUISceneSession)initWithExtension:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _EXUISceneSession;
  v5 = [(_EXSceneSession *)&v15 initWithExtension:v4];
  if (!v5)
  {
LABEL_10:

    return v5;
  }

  v6 = [v4 identity];
  v7 = [v6 presentsUserInterface];

  if (v7)
  {
    v8 = _EXSignpostLog();
    if ([(_EXSceneSession *)v5 signpost]&& os_signpost_enabled(v8))
    {
      v9 = v8;
      v10 = [(_EXSceneSession *)v5 signpost];
      if ((v10 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v11 = v10;
        if (os_signpost_enabled(v9))
        {
          *v14 = 0;
        }
      }
    }

    goto LABEL_10;
  }

  v13 = _EXDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    [_EXUISceneSession initWithExtension:];
  }

  __break(1u);
  return result;
}

- (void)setRootViewController:(id)a3
{
  v5 = a3;
  if (self->_rootViewController == v5)
  {
LABEL_6:

    return;
  }

  v9 = v5;
  objc_storeStrong(&self->_rootViewController, a3);
  v6 = [(_EXSceneSession *)self scene];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 viewController];
    if (!v7)
    {
      v7 = [(_EXUISceneSession *)self viewController];
    }

    [(_EXExtensionRootViewController *)v9 setContentViewController:v7];

    v5 = v9;
    goto LABEL_6;
  }

  v8 = _EXDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    [_EXUISceneSession setRootViewController:];
  }

  __break(1u);
}

- (id)makeConfigurationWithParameters:(id)a3
{
  v4 = a3;
  v5 = [(_EXSceneSession *)self extension];
  v6 = [v5 identity];
  v7 = [v6 configurationWithParameters:v4];

  return v7;
}

- (id)makeSceneWithError:(id *)a3
{
  v5 = [(_EXSceneSession *)self extension];
  v6 = [v5 hasSwiftEntryPoint];

  v7 = [(_EXSceneSession *)self configuration];
  if (v6)
  {
    v8 = [(_EXSceneSession *)self extension];
    v9 = [v8 makeSceneWithConfiguration:v7];

LABEL_6:

    return v9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = _EXDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [(_EXUISceneSession *)v7 makeSceneWithError:v11];
    }

    goto LABEL_13;
  }

  if (!class_conformsToProtocol([v7 sceneClass], &unk_1F4E0B7B0))
  {
    v11 = _EXDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [_EXUISceneSession makeSceneWithError:v7];
    }

LABEL_13:

    __break(1u);
    goto LABEL_14;
  }

  v13.receiver = self;
  v13.super_class = _EXUISceneSession;
  v9 = [(_EXSceneSession *)&v13 makeSceneWithError:a3];
  if ([v9 conformsToProtocol:&unk_1F4E0B7B0])
  {
    goto LABEL_6;
  }

LABEL_14:
  v12 = _EXDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    [_EXUISceneSession makeSceneWithError:];
  }

  __break(1u);
  return result;
}

- (void)connectToScene:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _EXUISceneSession;
  [(_EXSceneSession *)&v10 connectToScene:v4];
  if (![v4 conformsToProtocol:&unk_1F4E0B7B0])
  {
    goto LABEL_5;
  }

  v5 = [v4 viewController];

  if (v5)
  {
    goto LABEL_5;
  }

  v6 = [(_EXSceneSession *)self configuration];
  v7 = [v6 viewControllerClass];
  if (v7)
  {
    v8 = objc_alloc_init(v7);
    [v4 setViewController:v8];

LABEL_5:
    return;
  }

  v9 = _EXDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    [_EXUISceneSession connectToScene:];
  }

  __break(1u);
}

- (id)makeConnectionResponse
{
  v4.receiver = self;
  v4.super_class = _EXUISceneSession;
  v2 = [(_EXSceneSession *)&v4 makeConnectionResponse];

  return v2;
}

- (void)initWithExtension:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = "extension.identity.presentsUserInterface";
  v4 = 2080;
  v2 = 136315650;
  OUTLINED_FUNCTION_0();
  v5 = 54;
  _os_log_fault_impl(&dword_1D29CC000, v0, OS_LOG_TYPE_FAULT, "%s - %s:%d: Extension point does not support user interface", &v2, 0x1Cu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)setRootViewController:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = NSStringFromProtocol(&unk_1F4E0B7B0);
  v1 = NSStringFromProtocol(&unk_1F4E17A48);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x30u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)makeSceneWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v8[0] = 136316162;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_1();
  v9 = v4;
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(&dword_1D29CC000, a2, OS_LOG_TYPE_FAULT, "%s - %s:%d: Unexpected configuration class '%@' expected '%@'", v8, 0x30u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)makeSceneWithError:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  [a1 sceneClass];
  v1 = NSStringFromProtocol(&unk_1F4E0B7B0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x30u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)makeSceneWithError:.cold.3()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = NSStringFromProtocol(&unk_1F4E0B7B0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x30u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)connectToScene:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = NSStringFromClass(0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x26u);

  v6 = *MEMORY[0x1E69E9840];
}

@end