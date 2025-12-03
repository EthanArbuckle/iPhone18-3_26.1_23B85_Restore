@interface _SFInjectedJavaScriptController
- (_SFInjectedJavaScriptController)initWithWebView:(id)view;
- (id)_webProcessActivityProxy;
- (void)runJavaScriptForActivity:(id)activity withScript:(id)script object:(id)object invokeMethod:(id)method completionHandler:(id)handler;
@end

@implementation _SFInjectedJavaScriptController

- (_SFInjectedJavaScriptController)initWithWebView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = _SFInjectedJavaScriptController;
  v5 = [(_SFInjectedJavaScriptController *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_webView, viewCopy);
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
    _remoteObjectRegistry = [WeakRetained _remoteObjectRegistry];

    v6 = [MEMORY[0x1E69853F8] remoteObjectInterfaceWithProtocol:&unk_1F5097DF0];
    v7 = [_remoteObjectRegistry remoteObjectProxyWithInterface:v6];
    v8 = self->_activityProxy;
    self->_activityProxy = v7;

    activityProxy = self->_activityProxy;
  }

  return activityProxy;
}

- (void)runJavaScriptForActivity:(id)activity withScript:(id)script object:(id)object invokeMethod:(id)method completionHandler:(id)handler
{
  handlerCopy = handler;
  methodCopy = method;
  objectCopy = object;
  scriptCopy = script;
  activityCopy = activity;
  _webProcessActivityProxy = [(_SFInjectedJavaScriptController *)self _webProcessActivityProxy];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __109___SFInjectedJavaScriptController_runJavaScriptForActivity_withScript_object_invokeMethod_completionHandler___block_invoke;
  v19[3] = &unk_1E8495480;
  v20 = handlerCopy;
  v18 = handlerCopy;
  [_webProcessActivityProxy runJavaScriptForActivity:activityCopy withScript:scriptCopy object:objectCopy invokeMethod:methodCopy completionHandler:v19];
}

@end