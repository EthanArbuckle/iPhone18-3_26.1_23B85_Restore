@interface _SFSafariSharingExtensionController
- (_SFSafariSharingExtensionController)initWithWebView:(id)a3;
- (id)_extensionControllerProxy;
- (void)finalizeJavaScriptForSharingExtension:(id)a3 arguments:(id)a4;
- (void)prepareJavaScriptWorldForSharingExtension:(id)a3 javaScript:(id)a4;
- (void)runJavaScriptForSharingExtension:(id)a3 extraArguments:(id)a4 completion:(id)a5;
@end

@implementation _SFSafariSharingExtensionController

- (_SFSafariSharingExtensionController)initWithWebView:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _SFSafariSharingExtensionController;
  v5 = [(_SFSafariSharingExtensionController *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_webView, v4);
    v7 = v6;
  }

  return v6;
}

- (id)_extensionControllerProxy
{
  extensionControllerProxy = self->_extensionControllerProxy;
  if (!extensionControllerProxy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_webView);
    v5 = [WeakRetained _remoteObjectRegistry];

    v6 = [MEMORY[0x1E69853F8] remoteObjectInterfaceWithProtocol:&unk_1F50FE748];
    v7 = [v5 remoteObjectProxyWithInterface:v6];
    v8 = self->_extensionControllerProxy;
    self->_extensionControllerProxy = v7;

    extensionControllerProxy = self->_extensionControllerProxy;
  }

  return extensionControllerProxy;
}

- (void)prepareJavaScriptWorldForSharingExtension:(id)a3 javaScript:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(_SFSafariSharingExtensionController *)self _extensionControllerProxy];
  [v7 prepareJavaScriptWorldForSharingExtension:v8 javaScript:v6];
}

- (void)runJavaScriptForSharingExtension:(id)a3 extraArguments:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__17;
  v22[4] = __Block_byref_object_dispose__17;
  v23 = _Block_copy(a5);
  v10 = [(_SFSafariSharingExtensionController *)self _extensionControllerProxy];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __98___SFSafariSharingExtensionController_runJavaScriptForSharingExtension_extraArguments_completion___block_invoke;
  v21[3] = &unk_1E8496878;
  v21[4] = v22;
  [v10 evaluateJavaScriptForSharingExtension:v8 extraArguments:v9 completionHandler:v21];

  v11 = dispatch_time(0, 2000000000);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __98___SFSafariSharingExtensionController_runJavaScriptForSharingExtension_extraArguments_completion___block_invoke_50;
  v20[3] = &unk_1E848F7D0;
  v20[4] = v22;
  dispatch_after(v11, MEMORY[0x1E69E96A0], v20);
  v12 = WBS_LOG_CHANNEL_PREFIXExtensions();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [(_SFSafariSharingExtensionController *)v12 runJavaScriptForSharingExtension:v13 extraArguments:v14 completion:v15, v16, v17, v18, v19];
  }

  _Block_object_dispose(v22, 8);
}

- (void)finalizeJavaScriptForSharingExtension:(id)a3 arguments:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(_SFSafariSharingExtensionController *)self _extensionControllerProxy];
  [v7 finalizeJavaScriptForSharingExtension:v8 arguments:v6];
}

@end