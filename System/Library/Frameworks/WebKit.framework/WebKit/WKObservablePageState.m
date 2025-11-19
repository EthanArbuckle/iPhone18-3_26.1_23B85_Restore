@interface WKObservablePageState
- (BOOL)_webProcessIsResponsive;
- (BOOL)isLoading;
- (NSString)title;
- (NSURL)URL;
- (WKObservablePageState)initWithPage:(void *)a3;
- (double)estimatedProgress;
- (id).cxx_construct;
- (uint64_t)dealloc;
- (void)dealloc;
@end

@implementation WKObservablePageState

- (WKObservablePageState)initWithPage:(void *)a3
{
  v13.receiver = self;
  v13.super_class = WKObservablePageState;
  v4 = [(WKObservablePageState *)&v13 init];
  v6 = v4;
  if (v4)
  {
    v7 = *a3;
    *a3 = 0;
    m_ptr = v4->_page.m_ptr;
    v4->_page.m_ptr = v7;
    if (m_ptr)
    {
      CFRelease(*(m_ptr + 1));
    }

    if (WebKit::PageLoadStateObserver::operator new(unsigned long)::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::PageLoadStateObserver::operator new(unsigned long)::s_heapRef, v5);
    }

    else
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompactSlow();
    }

    v10 = NonCompact;
    *(NonCompact + 16) = 1;
    *(NonCompact + 8) = 0;
    *NonCompact = &unk_1F10F3160;
    *(NonCompact + 24) = 0;
    objc_initWeak((NonCompact + 24), v6);
    *(v10 + 32) = [@"URL" copy];
    v11 = v6->_observer.m_ptr;
    v6->_observer.m_ptr = v10;
    if (v11 && atomic_fetch_add(v11 + 4, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v11 + 4);
      (*(*v11 + 24))(v11);
    }

    WTF::WeakHashSet<WebKit::FrameLoadStateObserver,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::FrameLoadStateObserver>(*(v6->_page.m_ptr + 4) + 1120, v6->_observer.m_ptr, v14);
  }

  return v6;
}

- (void)dealloc
{
  *a1 = &unk_1F10F3280;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 4);
    (*(*v2 + 24))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }

  return a1;
}

- (BOOL)isLoading
{
  v2 = *(self->_page.m_ptr + 4);
  if (*(v2 + 1160))
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v4 = *(v2 + 1144);
    if (v4 > 2)
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      v3 = 3u >> (v4 & 7);
    }
  }

  return v3 & 1;
}

- (NSString)title
{
  v2 = *(self->_page.m_ptr + 4);
  v3 = 1232;
  if (!*(v2 + 1232))
  {
    v3 = 1224;
  }

  v4 = *(v2 + v3);
  if (!v4)
  {
    v6 = &stru_1F1147748;
    v7 = &stru_1F1147748;
    v11 = 0;
LABEL_9:
    v8 = v6;
    v9 = v11;
    v11 = 0;
    if (v9)
    {
    }

    return &v6->isa;
  }

  atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  MEMORY[0x19EB00B70](&v11, v4, a2);
  if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v5);
  }

  v6 = v11;
  v11 = 0;
  if (v6)
  {
    goto LABEL_9;
  }

  return &v6->isa;
}

- (NSURL)URL
{
  v2 = MEMORY[0x1E695DFF8];
  WebKit::PageLoadState::activeURL((*(self->_page.m_ptr + 4) + 1144), &v7);
  v4 = [v2 _web_URLWithWTFString:&v7];
  v5 = v7;
  v7 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v3);
  }

  return v4;
}

- (BOOL)_webProcessIsResponsive
{
  v2 = *(self->_page.m_ptr + 44);
  atomic_fetch_add((v2 + 16), 1u);
  if (*(*(v2 + 56) + 72) == 1)
  {
    v3 = *(v2 + 536);
  }

  else
  {
    v3 = 0;
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v2 + 16));
  return v3 & 1;
}

- (double)estimatedProgress
{
  v2 = *(self->_page.m_ptr + 4);
  WebKit::PageLoadState::ref((v2 + 1120));
  if (*(v2 + 1160))
  {
    v3 = 0.1;
  }

  else
  {
    v3 = *(v2 + 1288);
  }

  WebKit::PageLoadState::deref((v2 + 1120));
  return v3;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (uint64_t)dealloc
{
  *this = &unk_1F10F3280;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 4);
    (*(*v3 + 24))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    CFRelease(*(v4 + 8));
  }

  return WTF::fastFree(this, a2);
}

@end