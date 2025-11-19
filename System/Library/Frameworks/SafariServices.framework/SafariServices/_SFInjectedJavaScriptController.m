@interface _SFInjectedJavaScriptController
- (_SFInjectedJavaScriptController)initWithWebView:(id)a3;
- (id)_webProcessActivityProxy;
- (void)runJavaScriptForActivity:(id)a3 withScript:(id)a4 object:(id)a5 invokeMethod:(id)a6 completionHandler:(id)a7;
@end

@implementation _SFInjectedJavaScriptController

- (_SFInjectedJavaScriptController)initWithWebView:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _SFInjectedJavaScriptController;
  v5 = [(_SFInjectedJavaScriptController *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_webView, v4);
    v7 = v6;
  }

  return v6;
}

- (id)_webProcessActivityProxy
{
  activityProxy = self->_activityProxy;
  if (!activityProxy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_webView);
    v5 = [WeakRetained _remoteObjectRegistry];

    v6 = [MEMORY[0x1E69853F8] remoteObjectInterfaceWithProtocol:&unk_1F5097DF0];
    v7 = [v5 remoteObjectProxyWithInterface:v6];
    v8 = self->_activityProxy;
    self->_activityProxy = v7;

    activityProxy = self->_activityProxy;
  }

  return activityProxy;
}

- (void)runJavaScriptForActivity:(id)a3 withScript:(id)a4 object:(id)a5 invokeMethod:(id)a6 completionHandler:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [(_SFInjectedJavaScriptController *)self _webProcessActivityProxy];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __109___SFInjectedJavaScriptController_runJavaScriptForActivity_withScript_object_invokeMethod_completionHandler___block_invoke;
  v19[3] = &unk_1E8495480;
  v20 = v12;
  v18 = v12;
  [v17 runJavaScriptForActivity:v16 withScript:v15 object:v14 invokeMethod:v13 completionHandler:v19];
}

@end