@interface WKDownload
- (NSProgress)progress;
- (WKFrameInfo)originatingFrame;
- (WKWebView)webView;
- (id)delegate;
- (uint64_t)cancel:(const void *)cancel;
- (uint64_t)cancel:(uint64_t)cancel;
- (uint64_t)progress;
- (void)cancel:(void *)completionHandler;
- (void)dealloc;
- (void)progress;
- (void)setDelegate:(id)delegate;
@end

@implementation WKDownload

- (void)cancel:(void *)completionHandler
{
  v4 = _Block_copy(completionHandler);
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F10F4AF0;
  v5[1] = v4;
  v7 = v5;
  WebKit::DownloadProxy::cancel(&self->_download, &v7);
  v6 = v7;
  v7 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  _Block_release(0);
}

- (WKWebView)webView
{
  v2 = *&self->_anon_38[240];
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

- (WKFrameInfo)originatingFrame
{
  v2 = *(*&self->_anon_38[272] + 8);
  if (!v2)
  {
    return v2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

- (id)delegate
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
  NonCompactSlow = bmalloc::api::tzoneAllocateNonCompactSlow();
  *(NonCompactSlow + 8) = 1;
  *NonCompactSlow = &unk_1F10F4868;
  *(NonCompactSlow + 16) = 0;
  objc_initWeak((NonCompactSlow + 16), delegate);
  *(NonCompactSlow + 24) = *(NonCompactSlow + 24) & 0xFFFE | objc_opt_respondsToSelector() & 1;
  if (objc_opt_respondsToSelector())
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  *(NonCompactSlow + 24) = *(NonCompactSlow + 24) & 0xFFFD | v6;
  objc_loadWeak((NonCompactSlow + 16));
  if (objc_opt_respondsToSelector())
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  *(NonCompactSlow + 24) = *(NonCompactSlow + 24) & 0xFFFB | v7;
  if (objc_opt_respondsToSelector())
  {
    v8 = 8;
  }

  else
  {
    v8 = 0;
  }

  *(NonCompactSlow + 24) = *(NonCompactSlow + 24) & 0xFFF7 | v8;
  if (objc_opt_respondsToSelector())
  {
    v9 = 16;
  }

  else
  {
    v9 = 0;
  }

  *(NonCompactSlow + 24) = *(NonCompactSlow + 24) & 0xFFEF | v9;
  if (objc_opt_respondsToSelector())
  {
    v10 = 32;
  }

  else
  {
    v10 = 0;
  }

  *(NonCompactSlow + 24) = *(NonCompactSlow + 24) & 0xFFDF | v10;
  if (objc_opt_respondsToSelector())
  {
    v11 = 64;
  }

  else
  {
    v11 = 0;
  }

  *(NonCompactSlow + 24) = *(NonCompactSlow + 24) & 0xFFBF | v11;
  if (objc_opt_respondsToSelector())
  {
    v12 = 128;
  }

  else
  {
    v12 = 0;
  }

  *(NonCompactSlow + 24) = *(NonCompactSlow + 24) & 0xFF7F | v12;
  if (objc_opt_respondsToSelector())
  {
    v13 = 256;
  }

  else
  {
    v13 = 0;
  }

  *(NonCompactSlow + 24) = *(NonCompactSlow + 24) & 0xFEFF | v13;
  if (objc_opt_respondsToSelector())
  {
    v14 = 512;
  }

  else
  {
    v14 = 0;
  }

  *(NonCompactSlow + 24) = *(NonCompactSlow + 24) & 0xFDFF | v14;
  v15 = *self->_anon_38;
  *self->_anon_38 = NonCompactSlow;
  if (v15)
  {
    if (v15[2] == 1)
    {
      v16 = *(*v15 + 8);

      v16();
    }

    else
    {
      --v15[2];
    }
  }
}

- (NSProgress)progress
{
  v2 = *&self->_anon_38[288];
  if (v2)
  {
    v3 = v2;
LABEL_10:
    v10 = v2;
    return v2;
  }

  v5 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:-1];
  v2 = v5;
  if (v5)
  {
    v6 = v5;
  }

  [(NSProgress *)v2 setKind:*MEMORY[0x1E696A888]];
  [(NSProgress *)v2 setFileOperationKind:*MEMORY[0x1E696A848]];
  [(NSProgress *)v2 setCancellable:1];
  v12 = 0;
  objc_initWeak(&v12, self);
  to = 0;
  objc_moveWeak(&to, &v12);
  v7 = malloc_type_malloc(0x28uLL, 0x10E0040799C3B1DuLL);
  *v7 = MEMORY[0x1E69E9818];
  *(v7 + 1) = 50331650;
  *(v7 + 2) = WTF::BlockPtr<void ()(void)>::fromCallable<[WKDownload progress]::$_7>([WKDownload progress]::$_7)::{lambda(void *)#1}::__invoke;
  *(v7 + 3) = &WTF::BlockPtr<void ()(void)>::fromCallable<[WKDownload progress]::$_7>([WKDownload progress]::$_7)::descriptor;
  *(v7 + 4) = 0;
  objc_moveWeak(v7 + 4, &to);
  objc_destroyWeak(&to);
  [(NSProgress *)v2 setCancellationHandler:v7];
  _Block_release(v7);
  objc_destroyWeak(&v12);
  if (v2)
  {
    v8 = v2;
  }

  v9 = *&self->_anon_38[288];
  *&self->_anon_38[288] = v2;
  if (v9)
  {
  }

  if (v2)
  {
    goto LABEL_10;
  }

  return v2;
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    (**self->_download.m_storage.data)();
    v4.receiver = self;
    v4.super_class = WKDownload;
    [(WKDownload *)&v4 dealloc];
  }
}

- (void)progress
{
  v3 = 0;
  objc_moveWeak(&v3, (self + 32));
  v1 = WTF::fastMalloc(0x10);
  *v1 = &unk_1F10F49B0;
  *(v1 + 8) = 0;
  objc_moveWeak((v1 + 8), &v3);
  v4 = v1;
  WTF::ensureOnMainRunLoop();
  v2 = v4;
  v4 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  objc_destroyWeak(&v3);
}

- (uint64_t)progress
{
  Weak = objc_loadWeak((self + 8));

  return [Weak cancel:0];
}

- (uint64_t)cancel:(uint64_t)cancel
{
  result = *(cancel + 8);
  if (result)
  {
    if (a2 && *(a2 + 8))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        result = 117;
        __break(0xC471u);
        return result;
      }

      result = *(cancel + 8);
    }

    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (uint64_t)cancel:(const void *)cancel
{
  *cancel = &unk_1F10F4AF0;
  _Block_release(cancel[1]);

  return WTF::fastFree(cancel, v2);
}

@end