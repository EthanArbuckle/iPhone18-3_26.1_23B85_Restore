@interface _WKInspector
- (WKWebView)webView;
- (_WKInspectorDelegate)delegate;
- (id)inspectorWebView;
- (void)_fetchURLForTesting:(id)a3;
- (void)_openURLExternallyForTesting:(id)a3 useFrontendAPI:(BOOL)a4;
- (void)_setDiagnosticLoggingDelegate:(id)a3;
- (void)dealloc;
- (void)hide;
- (void)printErrorToConsole:(id)a3;
- (void)registerExtensionWithID:(id)a3 extensionBundleIdentifier:(id)a4 displayName:(id)a5 completionHandler:(id)a6;
- (void)setDelegate:(id)a3;
- (void)showMainResourceForFrame:(id)a3;
- (void)unregisterExtension:(id)a3 completionHandler:(id)a4;
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

- (void)setDelegate:(id)a3
{
  objc_storeWeak(&self->_delegate.m_weakReference, a3);
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
  objc_initWeak((NonCompact + 8), a3);
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

- (void)showMainResourceForFrame:(id)a3
{
  if (a3)
  {
    v3 = *(a3 + 3);
    if (v3)
    {
      WebKit::WebInspectorUIProxy::showMainResourceForFrame(&self->_inspector, v3);
    }
  }
}

- (void)printErrorToConsole:(id)a3
{
  v4 = [(_WKInspector *)self webView];
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"console.error(\"%@\"", a3];
  [WKWebView evaluateJavaScript:v4 completionHandler:"evaluateJavaScript:completionHandler:"];
  if (v5)
  {
  }
}

- (void)_setDiagnosticLoggingDelegate:(id)a3
{
  v5 = [(_WKInspector *)self inspectorWebView];
  if (v5)
  {
    [v5 _setDiagnosticLoggingDelegate:a3];

    WebKit::WebInspectorUIProxy::setDiagnosticLoggingAvailable(&self->_inspector, a3 != 0);
  }
}

- (void)registerExtensionWithID:(id)a3 extensionBundleIdentifier:(id)a4 displayName:(id)a5 completionHandler:(id)a6
{
  v7 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"WKErrorDomain" code:1 userInfo:0];
  (*(a6 + 2))(a6);
  if (v7)
  {
  }
}

- (void)unregisterExtension:(id)a3 completionHandler:(id)a4
{
  v5 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"WKErrorDomain" code:1 userInfo:0];
  (*(a4 + 2))(a4);
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

- (void)_fetchURLForTesting:(id)a3
{
  MEMORY[0x19EB02040](&v6, [MEMORY[0x1E696AEC0] stringWithFormat:@"fetch(\"%@\", objc_msgSend(a3, "absoluteString"")]);
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

- (void)_openURLExternallyForTesting:(id)a3 useFrontendAPI:(BOOL)a4
{
  if (a4)
  {
    MEMORY[0x19EB02040](&v10, [MEMORY[0x1E696AEC0] stringWithFormat:@"InspectorFrontendHost.openURLExternally(\"%@\", objc_msgSend(a3, "absoluteString"")]);
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
    v8 = [(_WKInspector *)self inspectorWebView];
    v9 = [MEMORY[0x1E695AC68] requestWithURL:a3];

    [v8 loadRequest:v9];
  }
}

@end