@interface _WKInspector
- (WKWebView)webView;
- (_WKInspectorDelegate)delegate;
- (id)inspectorWebView;
- (void)_fetchURLForTesting:(id)testing;
- (void)_openURLExternallyForTesting:(id)testing useFrontendAPI:(BOOL)i;
- (void)_setDiagnosticLoggingDelegate:(id)delegate;
- (void)dealloc;
- (void)hide;
- (void)printErrorToConsole:(id)console;
- (void)registerExtensionWithID:(id)d extensionBundleIdentifier:(id)identifier displayName:(id)name completionHandler:(id)handler;
- (void)setDelegate:(id)delegate;
- (void)showMainResourceForFrame:(id)frame;
- (void)unregisterExtension:(id)extension completionHandler:(id)handler;
@end

@implementation _WKInspector

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    (**self->_inspector.m_storage.data)();
    v4.receiver = self;
    v4.super_class = _WKInspector;
    [(_WKInspector *)&v4 dealloc];
  }
}

- (_WKInspectorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate.m_weakReference);
  v3 = WeakRetained;
  if (WeakRetained)
  {
  }

  return v3;
}

- (void)setDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate.m_weakReference, delegate);
  if (InspectorClient::operator new(unsigned long)::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(InspectorClient::operator new(unsigned long)::s_heapRef, v5);
  }

  else
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompactSlow();
  }

  v7 = NonCompact;
  *NonCompact = &unk_1F10FB630;
  *(NonCompact + 8) = 0;
  objc_initWeak((NonCompact + 8), delegate);
  *(v7 + 16) = *(v7 + 16) & 0xFE | objc_opt_respondsToSelector() & 1;
  if (objc_opt_respondsToSelector())
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  *(v7 + 16) = *(v7 + 16) & 0xFD | v8;
  v9 = *&self->_anon_38[8];
  *&self->_anon_38[8] = v7;
  if (v9)
  {
    v10 = *(*v9 + 8);

    v10();
  }
}

- (WKWebView)webView
{
  v2 = *&self->_inspector.m_storage.data[40];
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return 0;
  }

  CFRetain(*(v3 - 8));
  WeakRetained = objc_loadWeakRetained((*(v3 + 16) + 2248));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
  }

  CFRelease(*(v3 - 8));
  return v5;
}

- (void)hide
{
  v2 = *&self->_inspector.m_storage.data[40];
  if (v2)
  {
    if (*(v2 + 8))
    {
      self->_anon_38[25] = 0;
    }
  }
}

- (void)showMainResourceForFrame:(id)frame
{
  if (frame)
  {
    v3 = *(frame + 3);
    if (v3)
    {
      WebKit::WebInspectorUIProxy::showMainResourceForFrame(&self->_inspector, v3);
    }
  }
}

- (void)printErrorToConsole:(id)console
{
  webView = [(_WKInspector *)self webView];
  console = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"console.error(\"%@\"", console];
  [WKWebView evaluateJavaScript:webView completionHandler:"evaluateJavaScript:completionHandler:"];
  if (console)
  {
  }
}

- (void)_setDiagnosticLoggingDelegate:(id)delegate
{
  inspectorWebView = [(_WKInspector *)self inspectorWebView];
  if (inspectorWebView)
  {
    [inspectorWebView _setDiagnosticLoggingDelegate:delegate];

    WebKit::WebInspectorUIProxy::setDiagnosticLoggingAvailable(&self->_inspector, delegate != 0);
  }
}

- (void)registerExtensionWithID:(id)d extensionBundleIdentifier:(id)identifier displayName:(id)name completionHandler:(id)handler
{
  v7 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"WKErrorDomain" code:1 userInfo:0];
  (*(handler + 2))(handler);
  if (v7)
  {
  }
}

- (void)unregisterExtension:(id)extension completionHandler:(id)handler
{
  v5 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"WKErrorDomain" code:1 userInfo:0];
  (*(handler + 2))(handler);
  if (v5)
  {
  }
}

- (id)inspectorWebView
{
  v2 = *self->_anon_38;
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return 0;
  }

  CFRetain(*(v3 - 8));
  WeakRetained = objc_loadWeakRetained((*(v3 + 16) + 2248));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
  }

  CFRelease(*(v3 - 8));
  return v5;
}

- (void)_fetchURLForTesting:(id)testing
{
  MEMORY[0x19EB02040](&v6, [MEMORY[0x1E696AEC0] stringWithFormat:@"fetch(\"%@\", objc_msgSend(testing, "absoluteString"")]);
  WebKit::WebInspectorUIProxy::evaluateInFrontendForTesting(&self->_inspector, &v6);
  v5 = v6;
  v6 = 0;
  if (v5)
  {
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v4);
    }
  }
}

- (void)_openURLExternallyForTesting:(id)testing useFrontendAPI:(BOOL)i
{
  if (i)
  {
    MEMORY[0x19EB02040](&v10, [MEMORY[0x1E696AEC0] stringWithFormat:@"InspectorFrontendHost.openURLExternally(\"%@\", objc_msgSend(testing, "absoluteString"")]);
    WebKit::WebInspectorUIProxy::evaluateInFrontendForTesting(&self->_inspector, &v10);
    v7 = v10;
    v10 = 0;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v6);
      }
    }
  }

  else
  {
    inspectorWebView = [(_WKInspector *)self inspectorWebView];
    v9 = [MEMORY[0x1E695AC68] requestWithURL:testing];

    [inspectorWebView loadRequest:v9];
  }
}

@end