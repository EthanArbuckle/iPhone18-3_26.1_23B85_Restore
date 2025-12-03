@interface WKReloadFrameErrorRecoveryAttempter
- (BOOL)attemptRecovery;
- (WKReloadFrameErrorRecoveryAttempter)initWithCoder:(id)coder;
- (WKReloadFrameErrorRecoveryAttempter)initWithWebView:(id)view frameHandle:(id)handle urlString:(const void *)string;
- (id).cxx_construct;
@end

@implementation WKReloadFrameErrorRecoveryAttempter

- (WKReloadFrameErrorRecoveryAttempter)initWithWebView:(id)view frameHandle:(id)handle urlString:(const void *)string
{
  v13.receiver = self;
  v13.super_class = WKReloadFrameErrorRecoveryAttempter;
  v8 = [(WKReloadFrameErrorRecoveryAttempter *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_webView.m_weakReference, view);
    if (handle)
    {
      handleCopy = handle;
    }

    m_ptr = v9->_frameHandle.m_ptr;
    v9->_frameHandle.m_ptr = handle;
    if (m_ptr)
    {
    }

    WTF::String::operator=(&v9->_urlString, string);
  }

  return v9;
}

- (BOOL)attemptRecovery
{
  WeakRetained = objc_loadWeakRetained(&self->_webView.m_weakReference);
  if (!WeakRetained)
  {
    return 0;
  }

  v4 = WeakRetained;
  v5 = WebKit::WebFrameProxy::webFrame(*&self->_frameHandle.m_ptr->_frameHandle.m_storage.data[16], *&self->_frameHandle.m_ptr->_frameHandle.m_storage.data[16] != 0);
  v6 = v5 != 0;
  if (v5)
  {
    v7 = v5;
    CFRetain(*(v5 + 8));
    WTF::URL::URL(v13, &self->_urlString);
    v12 = 0;
    WebKit::WebFrameProxy::loadURL(v7, v13, &v12);
    v9 = v12;
    v12 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v8);
    }

    v10 = v13[0];
    v13[0] = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v8);
    }

    CFRelease(v7[1]);
  }

  return v6;
}

- (WKReloadFrameErrorRecoveryAttempter)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = WKReloadFrameErrorRecoveryAttempter;
  return [(WKReloadFrameErrorRecoveryAttempter *)&v4 init];
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end