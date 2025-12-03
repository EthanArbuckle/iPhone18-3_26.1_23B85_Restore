@interface WKUIWindowSceneObserver
- (WKUIWindowSceneObserver)initWithParent:(void *)parent;
- (id).cxx_construct;
- (uint64_t)observeValueForKeyPath:(WTF *)this ofObject:(void *)object change:context:;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)observeValueForKeyPath:(uint64_t)path ofObject:change:context:;
- (void)observeValueForKeyPath:(void *)path ofObject:change:context:;
- (void)setObservedWindow:(id)window;
@end

@implementation WKUIWindowSceneObserver

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (WKUIWindowSceneObserver)initWithParent:(void *)parent
{
  v9.receiver = self;
  v9.super_class = WKUIWindowSceneObserver;
  v4 = [(WKUIWindowSceneObserver *)&v9 init];
  if (v4)
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(parent, parent);
    v6 = *parent;
    atomic_fetch_add(*parent, 1u);
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

- (void)setObservedWindow:(id)window
{
  if (WTF::linkedOnOrAfterSDKWithBehavior())
  {
    if (window)
    {
      windowCopy = window;
    }

    WeakRetained = objc_loadWeakRetained(&self->_window.m_weakReference);
    if (WeakRetained != window)
    {
      if (WeakRetained)
      {
        [WeakRetained removeObserver:self forKeyPath:@"windowScene"];
      }

      objc_storeWeak(&self->_window.m_weakReference, window);
      if (window)
      {
        [window addObserver:self forKeyPath:@"windowScene" options:1 context:WebKit::WKUIWindowSceneObserverContext];
      }
    }

    if (WeakRetained)
    {
    }

    if (window)
    {
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (WebKit::WKUIWindowSceneObserverContext == context)
  {
    if (self)
    {
      selfCopy = self;
    }

    if (change)
    {
      changeCopy = change;
    }

    v10 = WTF::fastMalloc(0x20);
    *v10 = &unk_1F10F3258;
    v10[1] = self;
    v10[2] = self;
    v10[3] = change;
    v11 = v10;
    WTF::ensureOnMainThread();
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }
}

- (void)observeValueForKeyPath:(void *)path ofObject:change:context:
{
  *path = &unk_1F10F3258;
  v2 = path[3];
  path[3] = 0;
  if (v2)
  {
  }

  v3 = path[2];
  path[2] = 0;
  if (v3)
  {
  }

  return path;
}

- (uint64_t)observeValueForKeyPath:(WTF *)this ofObject:(void *)object change:context:
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

  return WTF::fastFree(this, object);
}

- (void)observeValueForKeyPath:(uint64_t)path ofObject:change:context:
{
  v1 = *(*(path + 8) + 8);
  if (!v1 || !*(v1 + 8))
  {
    return;
  }

  v3 = [*(path + 24) valueForKey:*MEMORY[0x1E696A4F0]];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = *(*(path + 8) + 8);
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