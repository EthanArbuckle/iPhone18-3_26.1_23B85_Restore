@interface _WKDataTask
- (WKWebView)webView;
- (void)cancel;
- (void)dealloc;
- (void)setDelegate:(id)delegate;
@end

@implementation _WKDataTask

- (void)cancel
{
  API::DataTask::cancel(&self->_dataTask, a2);
  m_ptr = self->_delegate.m_ptr;
  self->_delegate.m_ptr = 0;
  if (m_ptr)
  {
  }
}

- (WKWebView)webView
{
  v2 = *&self->_dataTask.m_storage.data[24];
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
  }

  CFRelease(*(v3 - 8));
  return v5;
}

- (void)setDelegate:(id)delegate
{
  if (delegate)
  {
    delegateCopy = delegate;
  }

  m_ptr = self->_delegate.m_ptr;
  self->_delegate.m_ptr = delegate;
  if (m_ptr)
  {
  }

  if (WKDataTaskClient::operator new(unsigned long)::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WKDataTaskClient::operator new(unsigned long)::s_heapRef, a2);
  }

  else
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompactSlow();
  }

  v8 = NonCompact;
  *(NonCompact + 8) = 1;
  *NonCompact = &unk_1F10FB330;
  *(NonCompact + 16) = 0;
  objc_initWeak((NonCompact + 16), delegate);
  *(v8 + 24) = *(v8 + 24) & 0xFE | objc_opt_respondsToSelector() & 1;
  if (objc_opt_respondsToSelector())
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  *(v8 + 24) = *(v8 + 24) & 0xFD | v9;
  if (objc_opt_respondsToSelector())
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  *(v8 + 24) = *(v8 + 24) & 0xFB | v10;
  if (objc_opt_respondsToSelector())
  {
    v11 = 8;
  }

  else
  {
    v11 = 0;
  }

  *(v8 + 24) = *(v8 + 24) & 0xF7 | v11;
  if (objc_opt_respondsToSelector())
  {
    v12 = 16;
  }

  else
  {
    v12 = 0;
  }

  *(v8 + 24) = *(v8 + 24) & 0xEF | v12;
  v13 = *&self->_anon_38[48];
  *&self->_anon_38[48] = v8;
  if (v13)
  {
    if (v13[2] == 1)
    {
      v14 = *(*v13 + 8);

      v14();
    }

    else
    {
      --v13[2];
    }
  }
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    (**self->_dataTask.m_storage.data)();
    v4.receiver = self;
    v4.super_class = _WKDataTask;
    [(_WKDataTask *)&v4 dealloc];
  }
}

@end