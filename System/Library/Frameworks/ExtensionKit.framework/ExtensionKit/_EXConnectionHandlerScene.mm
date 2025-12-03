@interface _EXConnectionHandlerScene
- (BOOL)shouldAcceptConnection:(id)connection;
- (void)connectToSession:(id)session;
@end

@implementation _EXConnectionHandlerScene

- (BOOL)shouldAcceptConnection:(id)connection
{
  connectionCopy = connection;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52___EXConnectionHandlerScene_shouldAcceptConnection___block_invoke;
  block[3] = &unk_1E8401DC8;
  v9 = connectionCopy;
  v10 = &v11;
  block[4] = self;
  v5 = connectionCopy;
  dispatch_sync(MEMORY[0x1E69E96A0], block);
  v6 = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v6;
}

- (void)connectToSession:(id)session
{
  sessionCopy = session;
  configuration = [sessionCopy configuration];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    extension = [sessionCopy extension];
    identity = [extension identity];
    role = [sessionCopy role];
    v8 = [identity extensionViewControllerClassForSceneRole:role];

    v9 = objc_alloc_init(v8);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UIViewController *)v9 setSceneConfiguration:configuration];
      viewController = self->_viewController;
      self->_viewController = v9;

      return;
    }
  }

  else
  {
    v11 = _EXDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [_EXConnectionHandlerScene connectToSession:];
    }

    __break(1u);
  }

  v12 = _EXDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    [_EXConnectionHandlerScene connectToSession:];
  }

  __break(1u);
}

- (void)connectToSession:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = 136315906;
  v3 = "[configuration isKindOfClass:_EXViewControllerSceneConfiguration.class]";
  v4 = 2080;
  v5 = "/Library/Caches/com.apple.xbs/Sources/ExtensionKit/ExtensionKit/Source/Extension/EXConnectionHandlerExtension+UI.m";
  v6 = 1024;
  OUTLINED_FUNCTION_1();
  v1 = *MEMORY[0x1E69E9840];
}

- (void)connectToSession:.cold.2()
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = 136315906;
  v3 = "[viewController isKindOfClass:_EXExtensionViewController.class]";
  v4 = 2080;
  v5 = "/Library/Caches/com.apple.xbs/Sources/ExtensionKit/ExtensionKit/Source/Extension/EXConnectionHandlerExtension+UI.m";
  v6 = 1024;
  OUTLINED_FUNCTION_1();
  v1 = *MEMORY[0x1E69E9840];
}

@end