@interface WKUIWindowSceneObserver
- (WKUIWindowSceneObserver)initWithParent:(void *)a3;
- (id).cxx_construct;
- (uint64_t)observeValueForKeyPath:(WTF *)this ofObject:(void *)a2 change:context:;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)observeValueForKeyPath:(uint64_t)a1 ofObject:change:context:;
- (void)observeValueForKeyPath:(void *)a1 ofObject:change:context:;
- (void)setObservedWindow:(id)a3;
@end

@implementation WKUIWindowSceneObserver

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (WKUIWindowSceneObserver)initWithParent:(void *)a3
{
  v9.receiver = self;
  v9.super_class = WKUIWindowSceneObserver;
  v4 = [(WKUIWindowSceneObserver *)&v9 init];
  if (v4)
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a3, a3);
    v6 = *a3;
    atomic_fetch_add(*a3, 1u);
    m_ptr = v4->_parent.m_impl.m_ptr;
    v4->_parent.m_impl.m_ptr = v6;
    if (m_ptr)
    {
      if (atomic_fetch_add(m_ptr, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, m_ptr);
        WTF::fastFree(m_ptr, v5);
      }
    }
  }

  return v4;
}

- (void)setObservedWindow:(id)a3
{
  if (WTF::linkedOnOrAfterSDKWithBehavior())
  {
    if (a3)
    {
      v4 = a3;
    }

    WeakRetained = objc_loadWeakRetained(&self->_window.m_weakReference);
    if (WeakRetained != a3)
    {
      if (WeakRetained)
      {
        [WeakRetained removeObserver:self forKeyPath:@"windowScene"];
      }

      objc_storeWeak(&self->_window.m_weakReference, a3);
      if (a3)
      {
        [a3 addObserver:self forKeyPath:@"windowScene" options:1 context:WebKit::WKUIWindowSceneObserverContext];
      }
    }

    if (WeakRetained)
    {
    }

    if (a3)
    {
    }
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (WebKit::WKUIWindowSceneObserverContext == a6)
  {
    if (self)
    {
      v8 = self;
    }

    if (a5)
    {
      v9 = a5;
    }

    v10 = WTF::fastMalloc(0x20);
    *v10 = &unk_1F10F3258;
    v10[1] = self;
    v10[2] = self;
    v10[3] = a5;
    v11 = v10;
    WTF::ensureOnMainThread();
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }
}

- (void)observeValueForKeyPath:(void *)a1 ofObject:change:context:
{
  *a1 = &unk_1F10F3258;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
  }

  return a1;
}

- (uint64_t)observeValueForKeyPath:(WTF *)this ofObject:(void *)a2 change:context:
{
  *this = &unk_1F10F3258;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
  }

  return WTF::fastFree(this, a2);
}

- (void)observeValueForKeyPath:(uint64_t)a1 ofObject:change:context:
{
  v1 = *(*(a1 + 8) + 8);
  if (!v1 || !*(v1 + 8))
  {
    return;
  }

  v3 = [*(a1 + 24) valueForKey:*MEMORY[0x1E696A4F0]];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = *(*(a1 + 8) + 8);
  if ((isKindOfClass & 1) == 0)
  {
    if (v5)
    {
      v6 = *(v5 + 8);
      if (v6)
      {
        v7 = 0;
        goto LABEL_11;
      }
    }

LABEL_14:
    __break(0xC471u);
    JUMPOUT(0x19DA38B28);
  }

  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = v3;
LABEL_11:

  WebKit::ApplicationStateTracker::setScene(v6, v7);
}

@end