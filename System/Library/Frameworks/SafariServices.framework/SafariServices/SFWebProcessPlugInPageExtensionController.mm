@interface SFWebProcessPlugInPageExtensionController
- (SFWebProcessPlugInPageExtensionController)initWithBrowserContextController:(id)controller;
- (void)_clearExtensionControllerInterface;
- (void)_setUpExtensionControllerInterface;
- (void)clearExtensionScriptWorlds;
- (void)dealloc;
- (void)evaluateJavaScriptForSharingExtension:(id)extension extraArguments:(id)arguments completionHandler:(id)handler;
- (void)finalizeJavaScriptForSharingExtension:(id)extension arguments:(id)arguments;
- (void)prepareJavaScriptWorldForSharingExtension:(id)extension javaScript:(id)script;
@end

@implementation SFWebProcessPlugInPageExtensionController

- (SFWebProcessPlugInPageExtensionController)initWithBrowserContextController:(id)controller
{
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = SFWebProcessPlugInPageExtensionController;
  v5 = [(SFWebProcessPlugInPageExtensionController *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_browserContextController, controllerCopy);
    [(SFWebProcessPlugInPageExtensionController *)v6 _setUpExtensionControllerInterface];
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    extensionToScriptWorldMap = v6->_extensionToScriptWorldMap;
    v6->_extensionToScriptWorldMap = v7;

    v9 = v6;
  }

  return v6;
}

- (void)dealloc
{
  [(SFWebProcessPlugInPageExtensionController *)self clearExtensionScriptWorlds];
  [(SFWebProcessPlugInPageExtensionController *)self _clearExtensionControllerInterface];
  v3.receiver = self;
  v3.super_class = SFWebProcessPlugInPageExtensionController;
  [(SFWebProcessPlugInPageExtensionController *)&v3 dealloc];
}

- (void)_setUpExtensionControllerInterface
{
  v3 = [MEMORY[0x1E69853F8] remoteObjectInterfaceWithProtocol:&unk_1F50FE748];
  extensionControllerInterface = self->_extensionControllerInterface;
  self->_extensionControllerInterface = v3;

  WeakRetained = objc_loadWeakRetained(&self->_browserContextController);
  _remoteObjectRegistry = [WeakRetained _remoteObjectRegistry];
  [_remoteObjectRegistry registerExportedObject:self interface:self->_extensionControllerInterface];
}

- (void)_clearExtensionControllerInterface
{
  if (self->_extensionControllerInterface)
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserContextController);
    _remoteObjectRegistry = [WeakRetained _remoteObjectRegistry];

    [_remoteObjectRegistry unregisterExportedObject:self interface:self->_extensionControllerInterface];
    extensionControllerInterface = self->_extensionControllerInterface;
    self->_extensionControllerInterface = 0;
  }
}

- (void)prepareJavaScriptWorldForSharingExtension:(id)extension javaScript:(id)script
{
  extensionCopy = extension;
  scriptCopy = script;
  v8 = WBS_LOG_CHANNEL_PREFIXExtensions();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SFWebProcessPlugInPageExtensionController prepareJavaScriptWorldForSharingExtension:v8 javaScript:?];
  }

  world = [(NSMutableDictionary *)self->_extensionToScriptWorldMap objectForKey:extensionCopy];
  if (!world)
  {
    world = [MEMORY[0x1E6985398] world];
    [(NSMutableDictionary *)self->_extensionToScriptWorldMap setObject:world forKey:extensionCopy];
  }

  WeakRetained = objc_loadWeakRetained(&self->_browserContextController);
  mainFrame = [WeakRetained mainFrame];
  v12 = [mainFrame jsContextForWorld:world];

  v13 = [v12 evaluateScript:scriptCopy];
  v14 = WBS_LOG_CHANNEL_PREFIXExtensions();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *v15 = 0;
    _os_log_impl(&dword_1D4644000, v14, OS_LOG_TYPE_INFO, "Finished setting up JavaScript world", v15, 2u);
  }
}

- (void)evaluateJavaScriptForSharingExtension:(id)extension extraArguments:(id)arguments completionHandler:(id)handler
{
  v35[2] = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  argumentsCopy = arguments;
  handlerCopy = handler;
  v11 = WBS_LOG_CHANNEL_PREFIXExtensions();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [SFWebProcessPlugInPageExtensionController evaluateJavaScriptForSharingExtension:v11 extraArguments:? completionHandler:?];
  }

  v12 = [(NSMutableDictionary *)self->_extensionToScriptWorldMap objectForKey:extensionCopy];
  if (v12)
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserContextController);
    mainFrame = [WeakRetained mainFrame];
    v15 = [mainFrame jsContextForWorld:v12];

    globalObject = [v15 globalObject];
    v17 = [globalObject valueForProperty:@"ExtensionPreprocessingJS"];

    if (([v17 isUndefined] & 1) != 0 || (objc_msgSend(v17, "valueForProperty:", @"run"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isUndefined"), v18, v19))
    {
      handlerCopy[2](handlerCopy, MEMORY[0x1E695E0F8]);
    }

    else
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __116__SFWebProcessPlugInPageExtensionController_evaluateJavaScriptForSharingExtension_extraArguments_completionHandler___block_invoke;
      aBlock[3] = &unk_1E8493868;
      v32 = handlerCopy;
      v29 = _Block_copy(aBlock);
      v21 = objc_alloc(MEMORY[0x1E695DF90]);
      v34[0] = @"extensionName";
      v34[1] = @"completionFunction";
      v35[0] = extensionCopy;
      v22 = _Block_copy(v29);
      v35[1] = v22;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];
      v24 = [v21 initWithDictionary:v23];

      if (argumentsCopy)
      {
        [v24 setObject:argumentsCopy forKey:@"extraArguments"];
      }

      v25 = [v24 copy];
      v26 = WBS_LOG_CHANNEL_PREFIXExtensions();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1D4644000, v26, OS_LOG_TYPE_INFO, "Invoking extension's JavaScript", buf, 2u);
      }

      v33 = v25;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
      v28 = [v17 invokeMethod:@"run" withArguments:v27];
    }
  }

  else
  {
    v20 = WBS_LOG_CHANNEL_PREFIXExtensions();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [SFWebProcessPlugInPageExtensionController evaluateJavaScriptForSharingExtension:v20 extraArguments:? completionHandler:?];
    }

    handlerCopy[2](handlerCopy, 0);
  }
}

void __116__SFWebProcessPlugInPageExtensionController_evaluateJavaScriptForSharingExtension_extraArguments_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 toDictionary];
  v5 = WBS_LOG_CHANNEL_PREFIXExtensions();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 134217984;
    v7 = v4;
    _os_log_impl(&dword_1D4644000, v5, OS_LOG_TYPE_INFO, "Script returned results to native code: %p", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)finalizeJavaScriptForSharingExtension:(id)extension arguments:(id)arguments
{
  v19[1] = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  argumentsCopy = arguments;
  v8 = [(NSMutableDictionary *)self->_extensionToScriptWorldMap objectForKey:extensionCopy];
  if (v8)
  {
    [(NSMutableDictionary *)self->_extensionToScriptWorldMap removeObjectForKey:extensionCopy];
    WeakRetained = objc_loadWeakRetained(&self->_browserContextController);
    mainFrame = [WeakRetained mainFrame];
    v11 = [mainFrame jsContextForWorld:v8];

    globalObject = [v11 globalObject];
    v13 = [globalObject valueForProperty:@"ExtensionPreprocessingJS"];

    if (([v13 isUndefined] & 1) == 0)
    {
      v14 = [v13 valueForProperty:@"finalize"];
      isUndefined = [v14 isUndefined];

      if ((isUndefined & 1) == 0)
      {
        v19[0] = argumentsCopy;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
        v17 = [v13 invokeMethod:@"finalize" withArguments:v16];

        globalObject2 = [v11 globalObject];
        [globalObject2 deleteProperty:@"ExtensionPreprocessingJS"];
      }
    }

    [v8 clearWrappers];
  }
}

- (void)clearExtensionScriptWorlds
{
  [(NSMutableDictionary *)self->_extensionToScriptWorldMap enumerateKeysAndObjectsUsingBlock:&__block_literal_global_36];
  extensionToScriptWorldMap = self->_extensionToScriptWorldMap;

  [(NSMutableDictionary *)extensionToScriptWorldMap removeAllObjects];
}

@end