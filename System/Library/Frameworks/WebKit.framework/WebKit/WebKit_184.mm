uint64_t WebKit::RemoteRenderingBackendProxy::RemoteRenderingBackendProxy(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F11251E8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x100000000;
  v4 = (a1 + 16);
  *(a1 + 32) = 3;
  WTF::FunctionDispatcher::FunctionDispatcher((a1 + 24));
  *a1 = &unk_1F1125248;
  *(a1 + 24) = &unk_1F11252B8;
  *(a1 + 40) = a2;
  v5 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock((a2 + 8));
  *(a1 + 48) = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v5);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  *(a1 + 96) = 0;
  *(a1 + 80) = IdentifierInternal;
  *(a1 + 88) = &unk_1F11252E8;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = a1;
  atomic_fetch_add(v4, 1u);
  *(a1 + 192) = 0;
  WebCore::Timer::Timer<WebKit::RemoteRenderingBackendProxy,WebKit::RemoteRenderingBackendProxy>((a1 + 200), a1);
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  WTF::WorkQueue::create();
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 1;
  return a1;
}

double WebKit::RemoteRenderingBackendProxy::destroyGetPixelBufferSharedMemory(WebKit::RemoteRenderingBackendProxy *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    *(this + 24) = 0;
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v2);
    v3 = *(this + 10);

    return WebKit::RemoteRenderingBackendProxy::send<Messages::RemoteRenderingBackend::DestroyGetPixelBufferSharedMemory,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(this, v3);
  }

  return result;
}

void WebKit::RemoteRenderingBackendProxy::~RemoteRenderingBackendProxy(WebKit::RemoteRenderingBackendProxy *this)
{
  *this = &unk_1F1125248;
  v2 = (this + 24);
  *(this + 3) = &unk_1F11252B8;
  v3 = *(this + 32);
  v4 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CompletionHandler<void ()(void)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(v3);
  v6 = v4;
  v7 = v5;
  if (v3)
  {
    v8 = &v3[2 * *(v3 - 1)];
  }

  else
  {
    v8 = 0;
  }

  if (v8 != v4)
  {
    do
    {
      v24 = v6[1];
      v6[1] = 0;
      (*(*v24 + 16))(v24, 0);
      (*(*v24 + 8))(v24);
      do
      {
        v6 += 2;
      }

      while (v6 != v7 && (*v6 + 1) <= 1);
    }

    while (v6 != v8);
  }

  if (*(this + 8))
  {
    v9 = *(this + 10);
    v10 = *(this + 7);
    *(this + 7) = 0;
    v11 = WTF::fastMalloc(0x18);
    *v11 = &unk_1F11256D0;
    v11[1] = v9;
    v11[2] = v10;
    v25 = v11;
    WTF::ensureOnMainRunLoop();
    if (v25)
    {
      (*(*v25 + 8))(v25);
    }

    WebKit::RemoteRenderingBackendProxy::disconnectGPUProcess(this);
  }

  v12 = *(this + 35);
  *(this + 35) = 0;
  if (v12)
  {
    (*(*v12 + 40))(v12);
  }

  v13 = *(this + 34);
  if (v13)
  {
    WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::deallocateTable(v13, v5);
  }

  v14 = *(this + 33);
  if (v14)
  {
    WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::deallocateTable(v14, v5);
  }

  v15 = *(this + 32);
  if (v15)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(BOOL)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(BOOL)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(BOOL)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CompletionHandler<void ()(BOOL)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v15, v5);
  }

  WebCore::Timer::~Timer((this + 200));
  v17 = *(this + 24);
  *(this + 24) = 0;
  if (v17)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v17);
  }

  WebKit::RemoteResourceCacheProxy::~RemoteResourceCacheProxy((this + 88), v16);
  v19 = *(this + 9);
  *(this + 9) = 0;
  if (v19 && atomic_fetch_add(v19 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v19 + 2);
    (*(*v19 + 8))(v19);
  }

  v20 = *(this + 8);
  *(this + 8) = 0;
  if (v20 && atomic_fetch_add(v20, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v20);
    IPC::StreamClientConnection::operator delete(v20);
  }

  v21 = *(this + 7);
  *(this + 7) = 0;
  if (v21 && atomic_fetch_add(v21, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v21);
    WTF::fastFree(v21, v18);
  }

  v22 = *(this + 6);
  *(this + 6) = 0;
  if (v22)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v22, v18);
  }

  WTF::FunctionDispatcher::~FunctionDispatcher(v2);
  if (*(this + 5) == 1)
  {
    *this = &unk_1F10EA5E0;
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v23);
  }

  else
  {
    __break(0xC471u);
  }
}

unsigned int *WebKit::RemoteRenderingBackendProxy::disconnectGPUProcess(WebKit::RemoteRenderingBackendProxy *this)
{
  if ((*(this + 29) & 0xFFFFFFFFFFFFLL) != 0 && *((*(this + 29) & 0xFFFFFFFFFFFFLL) + 8) != 0.0)
  {
    WebCore::TimerBase::stopSlowCase((this + 200));
  }

  v2 = *(this + 24);
  *(this + 24) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v2);
  }

  *(this + 36) = 0;
  *(this + 37) = 0;
  v3 = *(this + 8);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::invalidate(v3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);
      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    IPC::StreamClientConnection::invalidate(0);
  }

  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    IPC::StreamClientConnection::operator delete(v5);
  }

  *(this + 304) = 0;
  result = *(this + 7);
  *(this + 7) = 0;
  if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result);

    return WTF::fastFree(result, v4);
  }

  return result;
}

void non-virtual thunk toWebKit::RemoteRenderingBackendProxy::~RemoteRenderingBackendProxy(WebKit::RemoteRenderingBackendProxy *this)
{
  WebKit::RemoteRenderingBackendProxy::~RemoteRenderingBackendProxy((this - 24));
}

{
  WebKit::RemoteRenderingBackendProxy::operator delete((this - 24));
}

double WebKit::RemoteRenderingBackendProxy::operator delete(WebKit::RemoteRenderingBackendProxy *a1)
{
  WebKit::RemoteRenderingBackendProxy::~RemoteRenderingBackendProxy(a1);
  if (atomic_load((v1 + 16)))
  {
    *(v1 + 304) = 0;
    result = 0.0;
    *(v1 + 272) = 0u;
    *(v1 + 288) = 0u;
    *(v1 + 240) = 0u;
    *(v1 + 256) = 0u;
    *(v1 + 208) = 0u;
    *(v1 + 224) = 0u;
    *(v1 + 176) = 0u;
    *(v1 + 192) = 0u;
    *(v1 + 144) = 0u;
    *(v1 + 160) = 0u;
    *(v1 + 112) = 0u;
    *(v1 + 128) = 0u;
    *(v1 + 80) = 0u;
    *(v1 + 96) = 0u;
    *(v1 + 48) = 0u;
    *(v1 + 64) = 0u;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
    *v1 = 0u;
  }

  else
  {

    WTF::fastFree(v1, v2);
  }

  return result;
}

void WebKit::RemoteRenderingBackendProxy::ensureGPUProcessConnection(WebKit::RemoteRenderingBackendProxy *this, void *a2)
{
  if (!*(this + 8))
  {
    v6 = (this + 64);
    v3 = WebKit::WebProcess::singleton(this, a2);
    v4 = WebKit::WebProcess::gpuProcessTimeoutDuration(v3);
    IPC::StreamClientConnection::create(21, v12, v4);
    if (v13)
    {
      IPC::StreamClientConnection::StreamConnectionPair::StreamConnectionPair(&v10, v12);
      WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=(v6, v10);
      IPC::StreamClientConnection::open(v10, this, this + 24);
      *(this + 304) = 1;
      IPC::StreamServerConnectionHandle::StreamServerConnectionHandle(v7, &v11);
      v8[2] = this;
      WTF::Function<void ()(void)>::Function<WebKit::RemoteRenderingBackendProxy::ensureGPUProcessConnection(void)::$_0,void>(&v9, v7);
      WTF::callOnMainRunLoopAndWait();
      v5 = v9;
      v9 = 0;
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      WTF::MachSendRight::~MachSendRight(v8);
      WTF::MachSendRight::~MachSendRight(v7);
      IPC::StreamClientConnection::StreamConnectionPair::~StreamConnectionPair(&v10);
      std::optional<IPC::StreamClientConnection::StreamConnectionPair>::~optional(v12);
    }

    else
    {
      __break(0xC471u);
    }
  }
}

void *WTF::Function<void ()(void)>::Function<WebKit::RemoteRenderingBackendProxy::ensureGPUProcessConnection(void)::$_0,void>(void *a1, uint64_t a2)
{
  v4 = WTF::fastMalloc(0x28);
  *v4 = &unk_1F11256F8;
  WTF::MachSendRight::MachSendRight();
  WTF::MachSendRight::MachSendRight();
  v5 = *(a2 + 24);
  v4[3] = *(a2 + 16);
  v4[4] = v5;
  *a1 = v4;
  return a1;
}

atomic_uchar *WebKit::RemoteRenderingBackendProxy::dispatch(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 48);
  if (result)
  {
    v8[1] = v2;
    v8[2] = v3;
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(result, *(a1 + 40), v8);
    result = v8[0];
    if (v8[0])
    {
      result = (*(*v8[0] + 16))(v8[0], a2);
      v6 = v8[0];
      v8[0] = 0;
      if (v6)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v6 + 8));
      }
    }
  }

  return result;
}

atomic_uchar *WebKit::RemoteRenderingBackendProxy::isCurrent(WebKit::RemoteRenderingBackendProxy *this)
{
  result = *(this + 6);
  if (result)
  {
    v7[1] = v1;
    v7[2] = v2;
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(result, *(this + 5), v7);
    result = v7[0];
    if (v7[0])
    {
      v6 = (*(*v7[0] + 24))(v7[0]);
      v5 = v7[0];
      v7[0] = 0;
      if (v5)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v5 + 8));
      }

      return v6;
    }
  }

  return result;
}

uint64_t *WebKit::RemoteRenderingBackendProxy::didClose(uint64_t *this, IPC::Connection *a2)
{
  if (this[8])
  {
    v2 = this;
    WebKit::RemoteRenderingBackendProxy::disconnectGPUProcess(this);
    WebKit::RemoteResourceCacheProxy::releaseMemory((v2 + 11), v3);
    v4 = v2[33];
    v5 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(v4);
    v6 = v5;
    v8 = v7;
    if (v4)
    {
      v4 += 3 * *(v4 - 1);
    }

    if (v4 != v5)
    {
      do
      {
        v11 = v6[2];
        if (v11)
        {
          WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v11, v6[1], &v43);
          if (v43)
          {
            WebKit::RemoteImageBufferProxy::disconnect(v43);
            v10 = v43;
            v43 = 0;
            if (v10)
            {
              WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref(v10 + 1, v9);
            }
          }
        }

        do
        {
          v6 += 3;
        }

        while (v6 != v8 && (*v6 + 1) <= 1);
      }

      while (v6 != v4);
    }

    v12 = v2[34];
    v13 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(v12);
    v14 = v13;
    v16 = v15;
    if (v12)
    {
      v17 = &v12[3 * *(v12 - 1)];
    }

    else
    {
      v17 = 0;
    }

    if (v17 != v13)
    {
      do
      {
        v19 = v14[2];
        if (v19)
        {
          WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::NetworkCache::Storage>(&v43, v19, v14[1]);
          v18 = v43;
          if (v43)
          {
            WebKit::RemoteImageBufferSetProxy::disconnect(v43);
            (*(*v18 + 8))(v18);
          }
        }

        do
        {
          v14 += 3;
        }

        while (v14 != v16 && (*v14 + 1) <= 1);
      }

      while (v14 != v17);
    }

    v20 = v2[33];
    v21 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(v20);
    if (v20)
    {
      v20 += 3 * *(v20 - 1);
    }

    while (v21 != v20)
    {
      if (v21[2])
      {
        v23 = v21;
        v24 = v22;
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v21[2], v21[1], &v51);
        v22 = v24;
        v21 = v23;
        v25 = v51;
        if (v51)
        {
          v42 = *(v51 + 16);
          v41 = *(v51 + 48);
          v40 = *(v51 + 42);
          v26 = *(v51 + 24);
          v27 = *(v51 + 32);
          cf = v27;
          if (v27)
          {
            CFRetain(v27);
            v25 = v51;
          }

          v38[0] = *(v25 + 40);
          v38[1] = 0;
          v37 = *(v25 + 3640);
          v43 = &v42;
          v44 = &v41;
          v45 = &v40;
          v46 = v26;
          p_cf = &cf;
          v48 = v38;
          v49 = v23;
          v50 = &v37;
          WebKit::RemoteRenderingBackendProxy::send<Messages::RemoteRenderingBackend::CreateImageBuffer,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, &v43, v2[10]);
          v28 = cf;
          cf = 0;
          if (v28)
          {
            CFRelease(v28);
          }

          v29 = v51;
          v51 = 0;
          v21 = v23;
          v22 = v24;
          if (v29)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v29 + 8), v24);
            v22 = v24;
            v21 = v23;
          }
        }
      }

      do
      {
        v21 += 3;
      }

      while (v21 != v22 && (*v21 + 1) <= 1);
    }

    v30 = v2[34];
    this = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(v30);
    v31 = this;
    v33 = v32;
    if (v30)
    {
      v34 = &v30[3 * *(v30 - 1)];
    }

    else
    {
      v34 = 0;
    }

    if (v34 != this)
    {
      do
      {
        v35 = v31[2];
        if (v35)
        {
          this = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::NetworkCache::Storage>(&v51, v35, v31[1]);
          v36 = v51;
          if (v51)
          {
            v42 = *(v51 + 24);
            v43 = v31;
            v44 = &v42;
            WebKit::RemoteRenderingBackendProxy::send<Messages::RemoteRenderingBackend::CreateImageBufferSet,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, &v43, v2[10]);
            this = (*(*v36 + 8))(v36);
          }
        }

        do
        {
          v31 += 3;
        }

        while (v31 != v33 && (*v31 + 1) <= 1);
      }

      while (v31 != v34);
    }
  }

  return this;
}

uint64_t WebKit::RemoteResourceCacheProxy::releaseMemory(WebKit::RemoteResourceCacheProxy *this, void *a2)
{
  WTF::WeakPtrFactory<WebCore::RenderingResourceObserver,WTF::DefaultWeakPtrImpl>::revokeAll(this + 6, a2);
  v4 = *(this + 4);
  if (v4)
  {
    *(this + 4) = 0;
    WTF::fastFree((v4 - 16), v3);
  }

  v5 = *(this + 5);
  if (v5)
  {
    *(this + 5) = 0;
    WTF::fastFree((v5 - 16), v3);
  }

  v6 = *(this + 3);
  if (v6)
  {
    *(this + 3) = 0;
    WTF::fastFree((v6 - 16), v3);
  }

  result = WebKit::RemoteResourceCacheProxy::releaseNativeImages(this, v3);
  v9 = *(this + 8);
  if (v9)
  {
    *(this + 8) = 0;
    result = WTF::fastFree((v9 - 16), v8);
  }

  *(this + 20) = 0;
  v10 = *(this + 9);
  if (v10)
  {
    *(this + 9) = 0;
    result = WTF::fastFree((v10 - 16), v8);
  }

  *(this + 21) = 0;
  return result;
}

_BYTE *WebKit::RemoteRenderingBackendProxy::didBecomeUnresponsive(_BYTE *this)
{
  v6[3] = *MEMORY[0x1E69E9840];
  if (this[304] == 1)
  {
    v1 = this;
    v2 = qword_1ED6410D0;
    if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(v1 + 10);
      LODWORD(v6[0]) = 134217984;
      *(v6 + 4) = v3;
      _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "[renderingBackend=%llu] RemoteRenderingBackendProxy::didBecomeUnresponsive", v6, 0xCu);
    }

    v1[304] = 0;
    v4 = *(v1 + 7);
    *(v1 + 7) = 0;
    v5 = WTF::fastMalloc(0x10);
    *v5 = &unk_1F1125720;
    v5[1] = v4;
    v6[0] = v5;
    WTF::ensureOnMainRunLoop();
    this = v6[0];
    v6[0] = 0;
    if (this)
    {
      return (*(*this + 8))(this);
    }
  }

  return this;
}

BOOL WebKit::RemoteRenderingBackendProxy::canMapRemoteImageBufferBackendBackingStore(WebKit::RemoteRenderingBackendProxy *this, void *a2)
{
  {
    v2 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v4 = WebKit::WebProcess::operator new(0x370, a2);
    v2 = WebKit::WebProcess::WebProcess(v4);
    WebKit::WebProcess::singleton(void)::process = v2;
  }

  return (*(v2 + 802) & 1) == 0;
}

void WebKit::RemoteRenderingBackendProxy::createImageBuffer(uint64_t *a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, char a4@<W3>, CFTypeRef *a5@<X4>, __int16 a6@<W5>, void *a7@<X8>, float a8@<S0>)
{
  *a7 = 0;
  if (a3 != 1)
  {
    if (a3)
    {
      if (a3 == 2)
      {
        WebKit::RemoteImageBufferProxy::create<WebKit::ImageBufferRemotePDFDocumentBackend>(v67, *a2, *a5, a6, a4, a1, a8);
      }

      else
      {
        if (a3 != 3)
        {
          return;
        }

        WebKit::RemoteImageBufferProxy::create<WebKit::ImageBufferRemoteDisplayListBackend>(v67, *a2, *a5, a6, a4, a1, a8);
      }

      v18 = v67[0];
LABEL_52:
      *a7 = v18;
      if (!v18)
      {
        return;
      }

      goto LABEL_16;
    }

LABEL_42:
    v46 = *a5;
    v75 = *a2;
    v76 = a8;
    v77 = v46;
    if (v46)
    {
      CFRetain(v46);
    }

    v78 = a6;
    v79 = a4;
    WebCore::ImageBuffer::backendParameters();
    v49 = WebKit::ImageBufferShareableBitmapBackend::calculateSafeBackendSize(v73, v47, v48);
    v18 = 0;
    if (v49.m_width >= 1 && v49.m_height >= 1)
    {
      LOBYTE(v67[0]) = 0;
      WebCore::ImageBufferBackend::calculateBaseTransform();
      v72 = WebKit::ImageBufferShareableBitmapBackend::calculateMemoryCost(v73, v50, v51);
      v53 = WebKit::RemoteImageBufferProxy::operator new(0xE98, v52);
      v18 = v53;
      v62 = v75;
      v63 = v76;
      v54 = v77;
      v64 = v77;
      if (v77)
      {
        CFRetain(v77);
        v65 = v78;
        v66 = v79;
        WebKit::RemoteImageBufferProxy::RemoteImageBufferProxy(v18, &v62, v67, a1);
        CFRelease(v54);
      }

      else
      {
        v65 = v78;
        v66 = v79;
        WebKit::RemoteImageBufferProxy::RemoteImageBufferProxy(v53, &v62, v67, a1);
      }
    }

    v55 = cf;
    cf = 0;
    if (v55)
    {
      CFRelease(v55);
    }

    v56 = v77;
    v77 = 0;
    if (v56)
    {
      CFRelease(v56);
    }

    goto LABEL_52;
  }

  {
    v15 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v57 = WebKit::WebProcess::operator new(0x370, a2);
    v15 = WebKit::WebProcess::WebProcess(v57);
    WebKit::WebProcess::singleton(void)::process = v15;
  }

  if (*(v15 + 802))
  {
    v16 = *a5;
    v75 = *a2;
    v76 = a8;
    v77 = v16;
    if (v16)
    {
      CFRetain(v16);
    }

    v78 = a6;
    v79 = a4;
    WebCore::ImageBuffer::backendParameters();
    v17 = WebCore::ImageBufferIOSurfaceBackend::calculateSafeBackendSize();
    v18 = 0;
    if (v17 >= 1 && SHIDWORD(v17) >= 1)
    {
      LOBYTE(v67[0]) = 1;
      WebCore::ImageBufferBackend::calculateBaseTransform();
      v72 = WebCore::ImageBufferIOSurfaceBackend::calculateMemoryCost();
      v20 = WebKit::RemoteImageBufferProxy::operator new(0xE98, v19);
      v18 = v20;
      v62 = v75;
      v63 = v76;
      v21 = v77;
      v64 = v77;
      if (v77)
      {
        CFRetain(v77);
        v65 = v78;
        v66 = v79;
        WebKit::RemoteImageBufferProxy::RemoteImageBufferProxy(v18, &v62, v67, a1);
        CFRelease(v21);
      }

      else
      {
        v65 = v78;
        v66 = v79;
        WebKit::RemoteImageBufferProxy::RemoteImageBufferProxy(v20, &v62, v67, a1);
      }
    }

    v22 = cf;
    cf = 0;
    if (v22)
    {
      CFRelease(v22);
    }

    v23 = v77;
    v77 = 0;
    if (v23)
    {
      CFRelease(v23);
    }
  }

  else
  {
    WebKit::RemoteImageBufferProxy::create<WebKit::ImageBufferShareableMappedIOSurfaceBackend>(v67, *a2, *a5, a6, a4, a1, a8);
    v18 = v67[0];
  }

  *a7 = v18;
  if (!v18)
  {
    goto LABEL_42;
  }

LABEL_16:
  v75 = *(v18 + 15);
  v73[0] = *(v18 + 4);
  v61 = *(v18 + 48);
  v60 = *(v18 + 42);
  v24 = v18[6];
  v25 = *(v18 + 4);
  v62 = v25;
  if (v25)
  {
    CFRetain(v25);
  }

  v59[0] = *(v18 + 40);
  v59[1] = HIBYTE(a6) & 1;
  v58 = *(v18 + 455);
  v67[0] = v73;
  v67[1] = &v61;
  v67[2] = &v60;
  v68 = v24;
  v69 = &v62;
  v70 = v59;
  v71 = &v75;
  v72 = &v58;
  WebKit::RemoteRenderingBackendProxy::send<Messages::RemoteRenderingBackend::CreateImageBuffer,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(a1, v67, a1[10]);
  v26 = v62;
  v62 = 0;
  if (v26)
  {
    CFRelease(v26);
  }

  v27 = v75;
  if (v75 == -1 || !v75)
  {
    __break(0xC471u);
    JUMPOUT(0x19E236B68);
  }

  v28 = a1[33];
  if (!v28)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1 + 33, 0);
    v28 = a1[33];
    v27 = v75;
  }

  v29 = *(v28 - 8);
  v30 = (v27 + ~(v27 << 32)) ^ ((v27 + ~(v27 << 32)) >> 22);
  v31 = 9 * ((v30 + ~(v30 << 13)) ^ ((v30 + ~(v30 << 13)) >> 8));
  v32 = (v31 ^ (v31 >> 15)) + ~((v31 ^ (v31 >> 15)) << 27);
  v33 = v29 & ((v32 >> 31) ^ v32);
  v34 = (v28 + 24 * v33);
  v35 = *v34;
  if (!*v34)
  {
LABEL_32:
    *v34 = v27;
    v38 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::controlBlock(v18 + 1);
    v40 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v38);
    v41 = v34[2];
    v34[2] = v40;
    if (v41)
    {
      WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v41, v39);
    }

    v34[1] = v18;
    v42 = a1[33];
    if (v42)
    {
      v43 = *(v42 - 12) + 1;
    }

    else
    {
      v43 = 1;
    }

    *(v42 - 12) = v43;
    v44 = (*(v42 - 16) + v43);
    v45 = *(v42 - 4);
    if (v45 > 0x400)
    {
      if (v45 > 2 * v44)
      {
        return;
      }
    }

    else if (3 * v45 > 4 * v44)
    {
      return;
    }

    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1 + 33, v34);
    return;
  }

  v36 = 0;
  v37 = 1;
  while (v35 != v27)
  {
    if (v35 == -1)
    {
      v36 = v34;
    }

    v33 = (v33 + v37) & v29;
    v34 = (v28 + 24 * v33);
    v35 = *v34;
    ++v37;
    if (!*v34)
    {
      if (v36)
      {
        *v36 = 0;
        v36[1] = 0;
        v36[2] = 0;
        --*(a1[33] - 16);
        v27 = v75;
        v34 = v36;
      }

      goto LABEL_32;
    }
  }
}

void WebKit::RemoteImageBufferProxy::create<WebKit::ImageBufferShareableMappedIOSurfaceBackend>(uint64_t *a1, uint64_t a2, CFTypeRef cf, __int16 a4, char a5, uint64_t a6, float a7)
{
  v26 = a2;
  v27 = a7;
  v28 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v29 = a4;
  v30 = a5;
  WebCore::ImageBuffer::backendParameters();
  v11 = WebCore::ImageBufferIOSurfaceBackend::calculateSafeBackendSize();
  if (v11 < 1 || v11 <= 0)
  {
    *a1 = 0;
  }

  else
  {
    v23[0] = 1;
    WebCore::ImageBufferBackend::calculateBaseTransform();
    v24 = WebCore::ImageBufferIOSurfaceBackend::calculateMemoryCost();
    v13 = WebKit::RemoteImageBufferProxy::operator new(0xE98, v12);
    v14 = v13;
    v18 = v26;
    v19 = v27;
    v15 = v28;
    v20 = v28;
    if (v28)
    {
      CFRetain(v28);
      v21 = v29;
      v22 = v30;
      WebKit::RemoteImageBufferProxy::RemoteImageBufferProxy(v14, &v18, v23, a6);
      CFRelease(v15);
    }

    else
    {
      v21 = v29;
      v22 = v30;
      WebKit::RemoteImageBufferProxy::RemoteImageBufferProxy(v13, &v18, v23, a6);
    }

    *a1 = v14;
  }

  v16 = cfa;
  cfa = 0;
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = v28;
  v28 = 0;
  if (v17)
  {
    CFRelease(v17);
  }
}

void WebKit::RemoteImageBufferProxy::create<WebKit::ImageBufferRemotePDFDocumentBackend>(uint64_t *a1, uint64_t a2, CFTypeRef cf, __int16 a4, char a5, uint64_t a6, float a7)
{
  v27 = a2;
  v28 = a7;
  v29 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v30 = a4;
  v31 = a5;
  WebCore::ImageBuffer::backendParameters();
  v11 = WebCore::ImageBufferBackend::calculateSafeBackendSize();
  if (v11 < 1 || v11 <= 0)
  {
    *a1 = 0;
  }

  else
  {
    v23[0] = 2;
    WebCore::ImageBufferBackend::calculateBaseTransform();
    if (v25[0] >> 30)
    {
      __break(0xC471u);
      return;
    }

    v24 = WebCore::ImageBufferBackend::calculateMemoryCost(v25, (4 * v25[0]));
    v13 = WebKit::RemoteImageBufferProxy::operator new(0xE98, v12);
    v14 = v13;
    v18 = v27;
    v19 = v28;
    v15 = v29;
    v20 = v29;
    if (v29)
    {
      CFRetain(v29);
      v21 = v30;
      v22 = v31;
      WebKit::RemoteImageBufferProxy::RemoteImageBufferProxy(v14, &v18, v23, a6);
      CFRelease(v15);
    }

    else
    {
      v21 = v30;
      v22 = v31;
      WebKit::RemoteImageBufferProxy::RemoteImageBufferProxy(v13, &v18, v23, a6);
    }

    *a1 = v14;
  }

  v16 = cfa;
  cfa = 0;
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = v29;
  v29 = 0;
  if (v17)
  {
    CFRelease(v17);
  }
}

void WebKit::RemoteImageBufferProxy::create<WebKit::ImageBufferRemoteDisplayListBackend>(uint64_t *a1, uint64_t a2, CFTypeRef cf, __int16 a4, char a5, uint64_t a6, float a7)
{
  v26 = a2;
  v27 = a7;
  v28 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v29 = a4;
  v30 = a5;
  WebCore::ImageBuffer::backendParameters();
  v11 = WebCore::ImageBufferBackend::calculateSafeBackendSize();
  if (v11 < 1 || v11 <= 0)
  {
    *a1 = 0;
  }

  else
  {
    v23[0] = 3;
    WebCore::ImageBufferBackend::calculateBaseTransform();
    v24 = 0;
    v13 = WebKit::RemoteImageBufferProxy::operator new(0xE98, v12);
    v14 = v13;
    v18 = v26;
    v19 = v27;
    v15 = v28;
    v20 = v28;
    if (v28)
    {
      CFRetain(v28);
      v21 = v29;
      v22 = v30;
      WebKit::RemoteImageBufferProxy::RemoteImageBufferProxy(v14, &v18, v23, a6);
      CFRelease(v15);
    }

    else
    {
      v21 = v29;
      v22 = v30;
      WebKit::RemoteImageBufferProxy::RemoteImageBufferProxy(v13, &v18, v23, a6);
    }

    *a1 = v14;
  }

  v16 = cfa;
  cfa = 0;
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = v28;
  v28 = 0;
  if (v17)
  {
    CFRelease(v17);
  }
}

uint64_t WebKit::RemoteRenderingBackendProxy::releaseImageBuffer(WebKit::RemoteRenderingBackendProxy *this, WebKit::RemoteImageBufferProxy *a2)
{
  v8 = *(a2 + 15);
  v3 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(this + 33, &v8);
  v4 = *(this + 33);
  if (v4)
  {
    v5 = (v4 + 24 * *(v4 - 4));
    if (v5 == v3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_5;
    }

    v5 = 0;
  }

  if (v5 != v3)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(this + 33, v3);
  }

LABEL_5:
  v7 = &v8;
  return WebKit::RemoteRenderingBackendProxy::send<Messages::RemoteRenderingBackend::ReleaseImageBuffer,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(this, &v7, *(this + 10));
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(uint64_t *a1, uint64_t *a2)
{
  v3 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1, a2);
  if (!*a1)
  {
    if (v3)
    {
      v4 = 0;
      goto LABEL_3;
    }

    return 0;
  }

  v4 = *a1 + 24 * *(*a1 - 4);
  if (v4 == v3)
  {
    return 0;
  }

LABEL_3:
  if (v4 != v3)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(a1, v3);
  }

  return 1;
}

uint64_t *WebKit::RemoteRenderingBackendProxy::createImageBufferSet@<X0>(WebKit::RemoteRenderingBackendProxy *this@<X0>, uint64_t *a2@<X8>)
{
  v4 = WTF::fastMalloc(0xE80);
  v5 = WebKit::RemoteImageBufferSetProxy::RemoteImageBufferSetProxy(v4, this);
  *a2 = v5;
  v6 = *(v5 + 2);
  v9 = *(v5 + 3);
  v10 = v6;
  v8[0] = &v10;
  v8[1] = &v9;
  WebKit::RemoteRenderingBackendProxy::send<Messages::RemoteRenderingBackend::CreateImageBufferSet,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(this, v8, *(this + 10));
  v10 = *(v4 + 2);
  return WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Ref<WebKit::RemoteImageBufferSetProxy,WTF::RawPtrTraits<WebKit::RemoteImageBufferSetProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSetProxy>> &>(this + 34, &v10, a2, v8);
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Ref<WebKit::RemoteImageBufferSetProxy,WTF::RawPtrTraits<WebKit::RemoteImageBufferSetProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSetProxy>> &>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  if (*a2 == -1 || !v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19E23733CLL);
  }

  v8 = result;
  v9 = *result;
  if (!*result)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(result, 0);
    v9 = *v8;
    v5 = *a2;
  }

  v10 = *(v9 - 8);
  v11 = (v5 + ~(v5 << 32)) ^ ((v5 + ~(v5 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = (v9 + 24 * v14);
  v16 = *v15;
  if (*v15)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      if (v16 == v5)
      {
        v28 = 0;
        v27 = v9 + 24 * *(v9 - 4);
        goto LABEL_20;
      }

      if (v16 == -1)
      {
        v17 = v15;
      }

      v14 = (v14 + v18) & v10;
      v15 = (v9 + 24 * v14);
      v16 = *v15;
      ++v18;
    }

    while (*v15);
    if (v17)
    {
      *v17 = 0;
      v17[1] = 0;
      v17[2] = 0;
      --*(*v8 - 16);
      v5 = *a2;
      v15 = v17;
    }
  }

  *v15 = v5;
  v19 = *a3;
  v20 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::controlBlock((v19 + 8));
  v22 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v20);
  result = v15[2];
  v15[2] = v22;
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::weakDeref(result, v21);
  }

  v15[1] = v19;
  v23 = *v8;
  if (*v8)
  {
    v24 = *(v23 - 12) + 1;
  }

  else
  {
    v24 = 1;
  }

  *(v23 - 12) = v24;
  v25 = (*(v23 - 16) + v24);
  v26 = *(v23 - 4);
  if (v26 > 0x400)
  {
    if (v26 > 2 * v25)
    {
      goto LABEL_19;
    }

LABEL_22:
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v8, v15);
    v15 = result;
    v23 = *v8;
    if (*v8)
    {
      LODWORD(v26) = *(v23 - 4);
    }

    else
    {
      LODWORD(v26) = 0;
    }

    goto LABEL_19;
  }

  if (3 * v26 <= 4 * v25)
  {
    goto LABEL_22;
  }

LABEL_19:
  v27 = v23 + 24 * v26;
  v28 = 1;
LABEL_20:
  *a4 = v15;
  *(a4 + 8) = v27;
  *(a4 + 16) = v28;
  return result;
}

uint64_t WebKit::RemoteRenderingBackendProxy::releaseImageBufferSet(WebKit::RemoteRenderingBackendProxy *this, WebKit::RemoteImageBufferSetProxy *a2)
{
  v8 = *(a2 + 2);
  v3 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( this + 34,  &v8);
  v4 = *(this + 34);
  if (v4)
  {
    v5 = (v4 + 24 * *(v4 - 4));
    if (v5 == v3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_5;
    }

    v5 = 0;
  }

  if (v5 != v3)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(this + 34, v3);
  }

LABEL_5:
  v7 = &v8;
  return WebKit::RemoteRenderingBackendProxy::send<Messages::RemoteRenderingBackend::ReleaseImageBufferSet,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(this, &v7, *(this + 10));
}

uint64_t WebKit::RemoteRenderingBackendProxy::moveToSerializedBuffer@<X0>(WebKit::RemoteRenderingBackendProxy *this@<X0>, WebKit::RemoteImageBufferProxy *a2@<X1>, uint64_t *a3@<X8>)
{
  v12 = *(a2 + 15);
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(this + 33, &v12);
  v7 = WebKit::RemoteSerializedImageBufferProxy::operator new(0x78, v6);
  v8 = v7;
  v13 = *(a2 + 2);
  LODWORD(v14) = *(a2 + 6);
  v9 = *(a2 + 4);
  v15 = v9;
  if (v9)
  {
    CFRetain(v9);
    v16 = *(a2 + 20);
    v17 = *(a2 + 42);
    WebKit::RemoteSerializedImageBufferProxy::RemoteSerializedImageBufferProxy(v8, &v13, a2 + 3);
    CFRelease(v9);
  }

  else
  {
    v16 = *(a2 + 20);
    v17 = *(a2 + 42);
    WebKit::RemoteSerializedImageBufferProxy::RemoteSerializedImageBufferProxy(v7, &v13, a2 + 3);
  }

  *a3 = v8;
  v11 = *(v8 + 8);
  v13 = &v12;
  v14 = &v11;
  return WebKit::RemoteRenderingBackendProxy::send<Messages::RemoteRenderingBackend::MoveToSerializedBuffer,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(this, &v13, *(this + 10));
}

uint64_t WebKit::RemoteRenderingBackendProxy::moveToImageBuffer@<X0>(WebKit::RemoteRenderingBackendProxy *this@<X0>, WebKit::RemoteSerializedImageBufferProxy *a2@<X1>, uint64_t *a3@<X8>)
{
  WebKit::RemoteImageBufferProxy::create(a2 + 2, a2 + 48, this, a3);
  v12 = *(*a3 + 120);
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Ref<WebKit::RemoteImageBufferProxy,WTF::RawPtrTraits<WebKit::RemoteImageBufferProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferProxy>> &>(this + 33, &v12, a3, v11);
  v6 = *(a2 + 1);
  v8 = *(*a3 + 3640);
  v9 = v6;
  v10[0] = &v9;
  v10[1] = &v12;
  v10[2] = &v8;
  return WebKit::RemoteRenderingBackendProxy::send<Messages::RemoteRenderingBackend::MoveToImageBuffer,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(this, v10, *(this + 10));
}

void WebKit::RemoteImageBufferProxy::create(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = WebKit::RemoteImageBufferProxy::operator new(0xE98, a2);
  v9 = v8;
  v11 = *a1;
  v12 = *(a1 + 2);
  v10 = a1[2];
  v13 = v10;
  if (v10)
  {
    CFRetain(v10);
    v14 = *(a1 + 12);
    v15 = *(a1 + 26);
    WebKit::RemoteImageBufferProxy::RemoteImageBufferProxy(v9, &v11, a2, a3);
    CFRelease(v10);
  }

  else
  {
    v14 = *(a1 + 12);
    v15 = *(a1 + 26);
    WebKit::RemoteImageBufferProxy::RemoteImageBufferProxy(v8, &v11, a2, a3);
  }

  *a4 = v9;
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Ref<WebKit::RemoteImageBufferProxy,WTF::RawPtrTraits<WebKit::RemoteImageBufferProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferProxy>> &>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(*a2);
  v8 = *a1;
  if (!*a1)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1, 0);
    v8 = *a1;
  }

  v9 = *(v8 - 8);
  v10 = *a2;
  result = WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(*a2);
  v12 = result & v9;
  v13 = (v8 + 24 * (result & v9));
  v14 = *v13;
  if (*v13)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      if (v14 == v10)
      {
        v26 = 0;
        v25 = v8 + 24 * *(v8 - 4);
        goto LABEL_21;
      }

      if (v14 == -1)
      {
        v15 = v13;
      }

      v12 = (v12 + v16) & v9;
      v13 = (v8 + 24 * v12);
      v14 = *v13;
      ++v16;
    }

    while (*v13);
    if (v15)
    {
      *v15 = 0;
      v15[1] = 0;
      v15[2] = 0;
      --*(*a1 - 16);
      v10 = *a2;
      v13 = v15;
    }
  }

  *v13 = v10;
  v17 = *a3;
  v18 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::controlBlock((v17 + 8));
  v20 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v18);
  result = v13[2];
  v13[2] = v20;
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::weakDeref(result, v19);
  }

  v13[1] = v17;
  v21 = *a1;
  if (*a1)
  {
    v22 = *(v21 - 12) + 1;
  }

  else
  {
    v22 = 1;
  }

  *(v21 - 12) = v22;
  v23 = (*(v21 - 16) + v22);
  v24 = *(v21 - 4);
  if (v24 > 0x400)
  {
    if (v24 <= 2 * v23)
    {
LABEL_17:
      result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1, v13);
      v13 = result;
      v21 = *a1;
      if (*a1)
      {
        LODWORD(v24) = *(v21 - 4);
      }

      else
      {
        LODWORD(v24) = 0;
      }
    }
  }

  else if (3 * v24 <= 4 * v23)
  {
    goto LABEL_17;
  }

  v25 = v21 + 24 * v24;
  v26 = 1;
LABEL_21:
  *a4 = v13;
  *(a4 + 8) = v25;
  *(a4 + 16) = v26;
  return result;
}

uint64_t WebKit::RemoteRenderingBackendProxy::getPixelBufferForImageBuffer(WebKit::RemoteRenderingBackendProxy *this, uint64_t a2, uint64_t a3, uint64_t IdentifierInternal, void *a5, WebCore::SharedMemory *a6)
{
  v89 = *MEMORY[0x1E69E9840];
  if ((*(this + 29) & 0xFFFFFFFFFFFFLL) != 0 && *((*(this + 29) & 0xFFFFFFFFFFFFLL) + 8) != 0.0)
  {
    WebCore::TimerBase::stopSlowCase((this + 200));
  }

  v12 = *(this + 24);
  if (v12 && *(v12 + 8) >= a6)
  {
    WebCore::TimerBase::start();
    v77[0] = 0;
    v79 = 0;
  }

  else
  {
    WebKit::RemoteRenderingBackendProxy::destroyGetPixelBufferSharedMemory(this);
    WebCore::SharedMemory::allocate(a6);
    if (v86)
    {
      WebCore::SharedMemory::createHandle();
      if (buf[16])
      {
        v57 = v86;
        v86 = 0;
        v58 = *(this + 24);
        *(this + 24) = v57;
        if (v58)
        {
          WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v58);
          LODWORD(v22) = buf[16];
          if ((buf[16] & 1) == 0)
          {
            goto LABEL_58;
          }
        }

        WebCore::SharedMemoryHandle::takeOwnershipOfMemory();
        WebCore::TimerBase::start();
        v77[0] = 0;
        v79 = 0;
        if (buf[16] == 1)
        {
          WTF::MachSendRight::MachSendRight();
          v78 = *&buf[8];
          v79 = 1;
          if (buf[16])
          {
            WTF::MachSendRight::~MachSendRight(buf);
          }
        }
      }

      else
      {
        v77[0] = 0;
        v79 = 0;
      }

      v59 = v86;
      v86 = 0;
      if (v59)
      {
        WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v59);
      }
    }

    else
    {
      v77[0] = 0;
      v79 = 0;
    }

    if (v79)
    {
      v60 = *(IdentifierInternal + 8);
      v83 = *IdentifierInternal;
      v74 = v60;
      *buf = v77;
      *&buf[8] = a3;
      *&buf[16] = &v83;
      v82 = &v74;
      WebKit::RemoteRenderingBackendProxy::sendSync<Messages::RemoteImageBuffer::GetPixelBufferWithNewMemory,WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(&v86, this, buf, a2);
      if (v88)
      {
        goto LABEL_93;
      }

      v41 = v86;
      v86 = 0;
      if (v41)
      {
        goto LABEL_61;
      }

      goto LABEL_47;
    }
  }

  if (!*(this + 24))
  {
    goto LABEL_93;
  }

  v14 = *IdentifierInternal;
  v72 = *(IdentifierInternal + 8);
  v73 = v14;
  v74 = a3;
  v75 = &v73;
  v76 = &v72;
  WebKit::RemoteRenderingBackendProxy::connection(this, v13, &v80);
  a3 = v80;
  if (!v80)
  {
    goto LABEL_48;
  }

  v16 = *(v80 + 128);
  v17 = INFINITY;
  if (fabs(v16) != INFINITY)
  {
    WTF::ApproximateTime::now(v15);
    v17 = v16 + v18;
  }

  if (*(a3 + 64) != a2)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a3 + 72, buf, v17);
    if (buf[16] != 1)
    {
      goto LABEL_95;
    }

    v44 = *&buf[8];
    if (*&buf[8] <= 1uLL)
    {
LABEL_123:
      __break(0xC471u);
      JUMPOUT(0x19E238008);
    }

    v45 = *buf;
    **buf = 3198;
    v46 = v45 + 2;
    if (v44 - 2 < (-v46 & 7 | 8uLL))
    {
      v61 = 18;
      goto LABEL_96;
    }

    v47 = -v46 & 7;
    *(v46 + v47) = a2;
    v48 = 6;
    if (v47 > 6)
    {
      v48 = v47;
    }

    v49 = v48 + 10;
    v50 = (*(a3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v51 = *(a3 + 72);
    if (v50 + 16 >= v51)
    {
      v50 = 0;
    }

    v22 = v49 + v50;
    if (v51 <= v22)
    {
      v22 = 0;
    }

    *(a3 + 88) = v22;
    v52 = *(a3 + 80);
    if (*(v52 + 8) <= 0xFFuLL)
    {
      goto LABEL_58;
    }

    v53 = atomic_exchange((*(v52 + 16) + 128), v22);
    v54 = *(a3 + 124);
    if (v53 == 0x80000000 || v54 != 0)
    {
      v56 = v54 + 1;
      *(a3 + 124) = v56;
      if (v56 >= *(a3 + 120))
      {
        if (*(a3 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a3 + 100));
        }

        *(a3 + 124) = 0;
      }
    }

    *(a3 + 64) = a2;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a3 + 72, &v86, v17);
  if ((v88 & 1) == 0)
  {
LABEL_95:
    v61 = 16;
LABEL_96:
    LOBYTE(v83) = v61;
    v32 = 1;
    v85 = 1;
    goto LABEL_97;
  }

  if (WTF::ObjectIdentifierGeneric<IPC::SyncRequestIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    goto LABEL_123;
  }

  v19 = v86;
  v20 = v87;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  if (!IPC::Connection::pushPendingSyncRequestID(*(a3 + 8), IdentifierInternal))
  {
    v31 = 12;
    goto LABEL_35;
  }

  *&buf[16] = v20;
  if (v20 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E238028);
  }

  *v19 = 4100;
  v21 = v19 + 1;
  *buf = v21;
  *&buf[8] = v20 - 2;
  v22 = -v21 & 7 | 8;
  if (v20 - 2 < v22)
  {
    *buf = 0;
    *&buf[8] = 0;
  }

  else
  {
    *(v21 + (-v21 & 7)) = IdentifierInternal;
    if (*&buf[8] < v22)
    {
      goto LABEL_58;
    }

    *buf += v22;
    *&buf[8] -= v22;
  }

  IPC::ArgumentCoder<WebCore::PixelBufferFormat,void>::encode(buf, v74);
  IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(buf, v75);
  IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(buf, v76);
  if (*buf)
  {
    v24 = *&buf[16] - *&buf[8];
    if (*&buf[16] - *&buf[8] <= 0x10uLL)
    {
      v24 = 16;
    }

    v25 = (*(a3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v26 = *(a3 + 72);
    if (v25 + 16 >= v26)
    {
      v25 = 0;
    }

    v22 = v25 + v24;
    if (v26 <= v22)
    {
      v22 = 0;
    }

    *(a3 + 88) = v22;
    v27 = *(a3 + 80);
    if (*(v27 + 8) <= 0xFFuLL)
    {
      goto LABEL_58;
    }

    if (atomic_exchange((*(v27 + 16) + 128), v22) == 0x80000000 || *(a3 + 124))
    {
      if (*(a3 + 112) == 1)
      {
        MEMORY[0x19EB16320](*(a3 + 100));
      }

      *(a3 + 124) = 0;
    }

    a2 = 0x80000000;
    while (1)
    {
      v22 = *(a3 + 80);
      if (*(v22 + 8) <= 0xFFuLL)
      {
        goto LABEL_58;
      }

      v22 = atomic_exchange(*(v22 + 16), 0x80000000uLL);
      v28 = *(a3 + 80);
      if (*(v28 + 8) <= 0xFFuLL)
      {
        goto LABEL_58;
      }

      if (!(v22 | atomic_load_explicit((*(v28 + 16) + 128), memory_order_acquire) & 0xFFFFFFFF7FFFFFFFLL))
      {
        break;
      }

      if (*(a3 + 112) == 1)
      {
        v29 = IPC::Semaphore::waitFor((a3 + 104), v17);
        if (v29)
        {
          WTF::ApproximateTime::now(v29);
          if (v30 < v17)
          {
            continue;
          }
        }
      }

      IPC::Connection::popPendingSyncRequestID(*(a3 + 8));
      v31 = 17;
      goto LABEL_35;
    }

    v22 = *(a3 + 80);
    if (*(v22 + 8) <= 0xFFuLL)
    {
      goto LABEL_58;
    }

    v22 = *(v22 + 16);
    atomic_store(0, v22);
    *(a3 + 88) = 0;
    v33 = *(a3 + 80);
    v34 = *(v33 + 8);
    if (v34 <= 0xFF)
    {
      goto LABEL_58;
    }

    v35 = *(a3 + 72);
    v36 = *(v33 + 16);
    v37 = v34 - 256;
    if (v35)
    {
      v22 = v35 - 1;
      v40 = v37 >= v22;
      v37 = v22;
      if (!v40)
      {
        goto LABEL_58;
      }
    }

    v38 = IPC::Decoder::operator new(0x58, v23);
    if (*(IPC::Decoder::Decoder(v38, v36 + 256, v37, *(a3 + 64)) + 25) == 3197)
    {
      IPC::Decoder::~Decoder(v38);
      bmalloc::api::tzoneFree(v66, v67);
      IPC::Connection::waitForSyncReply(*(a3 + 8), IdentifierInternal, 0x1004u, &v83, v17);
      v68 = v84;
      if (v84)
      {
        if (v84 == 255)
        {
          v71 = IPC::Connection::popPendingSyncRequestID(*(a3 + 8));
          mpark::throw_bad_variant_access(v71);
        }

        v31 = v83;
        v63 = IPC::Connection::popPendingSyncRequestID(*(a3 + 8));
        if (v68 != 1)
        {
          goto LABEL_107;
        }

        goto LABEL_35;
      }

      v38 = v83;
    }

    IPC::Connection::popPendingSyncRequestID(*(a3 + 8));
    if (*(v38 + 25) != 3194)
    {
      v32 = 0;
      v83 = v38;
      goto LABEL_42;
    }

    IPC::Decoder::~Decoder(v38);
    bmalloc::api::tzoneFree(v69, v70);
    v31 = 11;
LABEL_35:
    LOBYTE(v83) = v31;
    v32 = 1;
    goto LABEL_42;
  }

  IPC::Connection::popPendingSyncRequestID(*(a3 + 8));
  LODWORD(v22) = v88;
  if ((v88 & 1) == 0)
  {
    goto LABEL_58;
  }

  IPC::StreamClientConnection::sendProcessOutOfStreamMessage(a3, v86, v87);
  IPC::Connection::sendSync<Messages::RemoteImageBuffer::GetPixelBuffer>(&v83, *(a3 + 8), &v74, a2, v17);
  v32 = v85;
LABEL_42:
  if (!v32)
  {
    LODWORD(IdentifierInternal) = 1;
    a2 = v83;
    goto LABEL_44;
  }

LABEL_97:
  v62 = qword_1ED6410D0;
  v63 = os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT);
  if (v63)
  {
    if (v32 == 1)
    {
      v64 = *(this + 10);
      LODWORD(a2) = v83;
      v65 = IPC::errorAsString();
      *buf = 134218498;
      *&buf[4] = v64;
      *&buf[12] = 2082;
      *&buf[14] = "RemoteImageBuffer_GetPixelBuffer";
      *&buf[22] = 2082;
      v82 = v65;
      _os_log_impl(&dword_19D52D000, v62, OS_LOG_TYPE_DEFAULT, "[renderingBackend=%llu] RemoteRenderingBackendProxy::sendSync - failed, name:%{public}s, error:%{public}s", buf, 0x20u);
      WebKit::RemoteRenderingBackendProxy::didBecomeUnresponsive(this);
LABEL_100:
      LODWORD(IdentifierInternal) = 0;
      a2 = a2;
      goto LABEL_44;
    }

LABEL_107:
    mpark::throw_bad_variant_access(v63);
  }

  WebKit::RemoteRenderingBackendProxy::didBecomeUnresponsive(this);
  if (v32 != 255)
  {
    LODWORD(a2) = v83;
    goto LABEL_100;
  }

  LODWORD(IdentifierInternal) = 0;
  a2 = 0;
LABEL_44:
  v80 = 0;
  LODWORD(v22) = atomic_fetch_add(a3, 0xFFFFFFFF);
  if (v22 == 1)
  {
    goto LABEL_59;
  }

  while (1)
  {
    if (IdentifierInternal)
    {
      if (a2)
      {
        v41 = a2;
LABEL_61:
        IPC::Decoder::~Decoder(v41);
        bmalloc::api::tzoneFree(v42, v43);
      }

LABEL_47:
      a3 = 1;
    }

    else
    {
LABEL_93:
      a3 = 0;
    }

LABEL_48:
    if (v79 == 1)
    {
      WTF::MachSendRight::~MachSendRight(v77);
    }

    if (!a3)
    {
      break;
    }

    v22 = *(this + 24);
    if (*(v22 + 8) >= a6)
    {
      memcpy(a5, *(v22 + 16), a6);
      return a3;
    }

LABEL_58:
    __break(1u);
LABEL_59:
    atomic_store(v22, a3);
    IPC::StreamClientConnection::operator delete(a3);
  }

  return a3;
}

void WebKit::RemoteRenderingBackendProxy::sendSync<Messages::RemoteImageBuffer::GetPixelBufferWithNewMemory,WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(IPC::Decoder *a1, WebKit::RemoteRenderingBackendProxy *a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x1E69E9840];
  WebKit::RemoteRenderingBackendProxy::connection(a2, a2, &v16);
  v8 = v16;
  if (v16)
  {
    IPC::StreamClientConnection::sendSync<Messages::RemoteImageBuffer::GetPixelBufferWithNewMemory,WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v23, v16, a3, a4);
    v9 = v24;
    if (v24)
    {
      v10 = qword_1ED6410D0;
      v11 = os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        if (v9 != 1)
        {
          mpark::throw_bad_variant_access(v11);
        }

        v12 = *(a2 + 10);
        v13 = IPC::errorAsString();
        *buf = 134218498;
        v18 = v12;
        v19 = 2082;
        v20 = "RemoteImageBuffer_GetPixelBufferWithNewMemory";
        v21 = 2082;
        v22 = v13;
        _os_log_impl(&dword_19D52D000, v10, OS_LOG_TYPE_DEFAULT, "[renderingBackend=%llu] RemoteRenderingBackendProxy::sendSync - failed, name:%{public}s, error:%{public}s", buf, 0x20u);
      }

      WebKit::RemoteRenderingBackendProxy::didBecomeUnresponsive(a2);
    }

    *a1 = 0;
    *(a1 + 16) = -1;
    mpark::detail::constructor<mpark::detail::traits<IPC::ConnectionSendSyncResult<Messages::RemoteImageBuffer::GetPixelBufferWithNewMemory>::ReplyData,IPC::Error>>::generic_construct<mpark::detail::move_constructor<mpark::detail::traits<IPC::ConnectionSendSyncResult<Messages::RemoteImageBuffer::GetPixelBufferWithNewMemory>::ReplyData,IPC::Error>,(mpark::detail::Trait)1>>(a1, v23);
    if (!v24 && v23[0])
    {
      IPC::Decoder::~Decoder(v23[0]);
      bmalloc::api::tzoneFree(v14, v15);
    }

    v16 = 0;
    if (atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v8);
      IPC::StreamClientConnection::operator delete(v8);
    }
  }

  else
  {
    *a1 = 1;
    *(a1 + 16) = 1;
  }
}

void WebKit::RemoteRenderingBackendProxy::getShareableBitmap(WebKit::RemoteRenderingBackendProxy *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v10[0] = a3;
  WebKit::RemoteRenderingBackendProxy::sendSync<Messages::RemoteImageBuffer::GetShareableBitmap,WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(a1, v10, a2, &v14);
  if (v19)
  {
    *a4 = 0;
    return;
  }

  IPC::ConnectionSendSyncResult<Messages::RemoteImageBuffer::GetShareableBitmap>::takeReply(&v14, v10);
  if (v13 == 1)
  {
    WebCore::SharedMemoryHandle::takeOwnershipOfMemory();
    if ((v13 & 1) == 0)
    {
      __break(1u);
      return;
    }

    WebCore::ShareableBitmap::create();
    if (v13)
    {
      if (v12 == 1)
      {
        v5 = cf;
        cf = 0;
        if (v5)
        {
          CFRelease(v5);
        }
      }

      WTF::MachSendRight::~MachSendRight(v10);
    }
  }

  else
  {
    *a4 = 0;
  }

  if (!v19)
  {
    if (v18 == 1)
    {
      if (v17 == 1)
      {
        v6 = v16;
        v16 = 0;
        if (v6)
        {
          CFRelease(v6);
        }
      }

      WTF::MachSendRight::~MachSendRight(&v15);
    }

    v7 = v14;
    v14 = 0;
    if (v7)
    {
      IPC::Decoder::~Decoder(v7);
      bmalloc::api::tzoneFree(v8, v9);
    }
  }
}

void WebKit::RemoteRenderingBackendProxy::sendSync<Messages::RemoteImageBuffer::GetShareableBitmap,WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(WebKit::RemoteRenderingBackendProxy *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v113 = *MEMORY[0x1E69E9840];
  WebKit::RemoteRenderingBackendProxy::connection(a1, a2, &v86);
  v9 = v86;
  if (!v86)
  {
    *a4 = 1;
    a4[96] = 1;
    return;
  }

  v10 = *(v86 + 128);
  v11 = INFINITY;
  if (fabs(v10) != INFINITY)
  {
    WTF::ApproximateTime::now(v8);
    v11 = v10 + v12;
  }

  if (*(v9 + 64) == a3)
  {
    goto LABEL_5;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, buf, v11);
  if (buf[16] != 1)
  {
    v85 = 16;
LABEL_149:
    LOBYTE(v95) = v85;
    v100 = 1;
    v81 = qword_1ED6410D0;
    if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_137;
    }

    goto LABEL_138;
  }

  v65 = *&buf[8];
  if (*&buf[8] <= 1uLL)
  {
    __break(0xC471u);
    goto LABEL_155;
  }

  v66 = *buf;
  **buf = 3198;
  v67 = v66 + 2;
  if (v65 - 2 < (-v67 & 7 | 8uLL))
  {
    v85 = 18;
    goto LABEL_149;
  }

  v68 = -v67 & 7;
  *(v67 + v68) = a3;
  v69 = 6;
  if (v68 > 6)
  {
    v69 = v68;
  }

  v70 = v69 + 10;
  v71 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v72 = *(v9 + 72);
  if (v71 + 16 >= v72)
  {
    v71 = 0;
  }

  v73 = v70 + v71;
  if (v72 <= v73)
  {
    v73 = 0;
  }

  *(v9 + 88) = v73;
  v74 = *(v9 + 80);
  if (*(v74 + 8) <= 0xFFuLL)
  {
    goto LABEL_155;
  }

  v75 = atomic_exchange((*(v74 + 16) + 128), v73);
  v76 = *(v9 + 124);
  if (v75 == 0x80000000 || v76 != 0)
  {
    v78 = v76 + 1;
    *(v9 + 124) = v78;
    if (v78 >= *(v9 + 120))
    {
      if (*(v9 + 112) == 1)
      {
        MEMORY[0x19EB16320](*(v9 + 100));
      }

      *(v9 + 124) = 0;
    }
  }

  *(v9 + 64) = a3;
LABEL_5:
  IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, &v87, v11);
  if ((v89 & 1) == 0)
  {
    LOBYTE(v95) = 16;
    v28 = 1;
LABEL_29:
    v100 = v28;
    goto LABEL_101;
  }

  if (WTF::ObjectIdentifierGeneric<IPC::SyncRequestIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_156;
  }

  v13 = v87;
  v14 = v88;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  if ((IPC::Connection::pushPendingSyncRequestID(*(v9 + 8), IdentifierInternal) & 1) == 0)
  {
    LOBYTE(v95) = 12;
    v100 = 1;
    std::optional<IPC::ConnectionSendSyncResult<Messages::RemoteImageBuffer::FilteredNativeImage>>::optional[abi:sn200100]<IPC::ConnectionSendSyncResult<Messages::RemoteImageBuffer::FilteredNativeImage>,0>(buf, &v95);
    if (v100)
    {
      goto LABEL_59;
    }

    if (v99 == 1)
    {
      if (v98 == 1)
      {
        v29 = cf;
        cf = 0;
        if (v29)
        {
          CFRelease(v29);
        }
      }

      WTF::MachSendRight::~MachSendRight(v96);
    }

    v30 = v95;
    v95 = 0;
    if (!v30)
    {
      goto LABEL_59;
    }

LABEL_41:
    IPC::Decoder::~Decoder(v30);
    bmalloc::api::tzoneFree(v32, v33);
    goto LABEL_59;
  }

  if (v14 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E238CA8);
  }

  *v13 = 4102;
  v16 = v13 + 1;
  v17 = -v16 & 7 | 8;
  if (v14 - 2 < v17 || (v18 = -v16 & 7, *(v16 + v18) = IdentifierInternal, v14 - 2 == v17))
  {
    IPC::Connection::popPendingSyncRequestID(*(v9 + 8));
    buf[0] = 0;
    v112 = 0;
    goto LABEL_59;
  }

  *(v16 + v17) = *a2;
  v19 = 5;
  if (v18 > 5)
  {
    v19 = -v16 & 7;
  }

  v20 = v19 + 11;
  v21 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v22 = *(v9 + 72);
  if (v21 + 16 >= v22)
  {
    v21 = 0;
  }

  v23 = v20 + v21;
  if (v22 <= v23)
  {
    v23 = 0;
  }

  *(v9 + 88) = v23;
  v24 = *(v9 + 80);
  if (*(v24 + 8) <= 0xFFuLL)
  {
LABEL_155:
    __break(1u);
LABEL_156:
    JUMPOUT(0x19E238C88);
  }

  if (atomic_exchange((*(v24 + 16) + 128), v23) == 0x80000000 || *(v9 + 124))
  {
    if (*(v9 + 112) == 1)
    {
      MEMORY[0x19EB16320](*(v9 + 100));
    }

    *(v9 + 124) = 0;
  }

  *(v9 + 88) = 0;
  IPC::Connection::waitForSyncReply(*(v9 + 8), IdentifierInternal, 0x1006u, &v95, v11);
  v25 = v96[0];
  if (!v96[0])
  {
    v31 = v95;
    IPC::Connection::popPendingSyncRequestID(*(v9 + 8));
    v102 = v31;
    if (*(v31 + 25) == 3194)
    {
      buf[0] = 11;
      v111 = 1;
      v112 = 1;
    }

    else
    {
      LOBYTE(v90[0]) = 0;
      v94 = 0;
      IPC::Decoder::operator>><std::tuple<std::optional<WebCore::ShareableBitmapHandle>>>(v31, v90);
      if (v94 == 1)
      {
        IPC::ConnectionSendSyncResult<Messages::RemoteImageBuffer::FilteredNativeImage>::ConnectionSendSyncResult(&v95, &v102, v90);
        std::optional<IPC::ConnectionSendSyncResult<Messages::RemoteImageBuffer::FilteredNativeImage>>::optional[abi:sn200100]<IPC::ConnectionSendSyncResult<Messages::RemoteImageBuffer::FilteredNativeImage>,0>(buf, &v95);
        if (!v100)
        {
          if (v99 == 1)
          {
            if (v98 == 1)
            {
              v34 = cf;
              cf = 0;
              if (v34)
              {
                CFRelease(v34);
              }
            }

            WTF::MachSendRight::~MachSendRight(v96);
          }

          v35 = v95;
          v95 = 0;
          if (v35)
          {
            IPC::Decoder::~Decoder(v35);
            bmalloc::api::tzoneFree(v79, v80);
          }
        }

        if ((v94 & 1) != 0 && v93 == 1)
        {
          if (v92 == 1)
          {
            v36 = v91;
            v91 = 0;
            if (v36)
            {
              CFRelease(v36);
            }
          }

          WTF::MachSendRight::~MachSendRight(v90);
        }
      }

      else
      {
        buf[0] = 14;
        v111 = 1;
        v112 = 1;
      }

      v31 = v102;
      if (!v102)
      {
        goto LABEL_59;
      }
    }

    v30 = v31;
    goto LABEL_41;
  }

  if (v96[0] == 255)
  {
    v84 = IPC::Connection::popPendingSyncRequestID(*(v9 + 8));
    mpark::throw_bad_variant_access(v84);
  }

  v26 = v95;
  v27 = IPC::Connection::popPendingSyncRequestID(*(v9 + 8));
  if (v25 != 1)
  {
    goto LABEL_145;
  }

  buf[0] = v26;
  v111 = 1;
  v112 = 1;
LABEL_59:
  if (v112 != 1)
  {
    if (v89)
    {
      if (v88 <= 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E238CC8);
      }

      *v87 = 3197;
      v39 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v40 = *(v9 + 72);
      if (v39 + 16 >= v40)
      {
        v39 = 0;
      }

      v41 = v39 + 16;
      v42 = v40 <= v41 ? 0 : v41;
      *(v9 + 88) = v42;
      v43 = *(v9 + 80);
      if (*(v43 + 8) > 0xFFuLL)
      {
        atomic_exchange((*(v43 + 16) + 128), v42);
        *(v9 + 124) = 0;
        v44 = *(v9 + 8);
        IPC::Connection::createSyncMessageEncoder(0x1006, a3, v90);
        buf[0] = *a2;
        IPC::Encoder::operator<<<BOOL>(v90[0], buf);
        v27 = IPC::Connection::sendSyncMessage(v44, v90[1], v90, 0, &v102, v11);
        if (v103)
        {
          if (v103 != 1)
          {
            goto LABEL_145;
          }

          LOBYTE(v95) = v102;
          v100 = 1;
          goto LABEL_100;
        }

        v46 = v102;
        v101 = v102;
        v102 = 0;
        if (*(v101 + 25) == 3194)
        {
          LOBYTE(v95) = 11;
          v100 = 1;
        }

        else
        {
          buf[0] = 0;
          v110 = 0;
          IPC::Decoder::operator>><std::tuple<std::optional<WebCore::ShareableBitmapHandle>>>(v46, buf);
          if (v110 == 1)
          {
            IPC::ConnectionSendSyncResult<Messages::RemoteImageBuffer::FilteredNativeImage>::ConnectionSendSyncResult(&v95, &v101, buf);
            if ((v110 & 1) != 0 && v109 == 1)
            {
              if (v107 == 1)
              {
                v49 = v106;
                v106 = 0;
                if (v49)
                {
                  CFRelease(v49);
                }
              }

              WTF::MachSendRight::~MachSendRight(buf);
            }
          }

          else
          {
            LOBYTE(v95) = 14;
            v100 = 1;
          }

          v46 = v101;
          if (!v101)
          {
            goto LABEL_97;
          }
        }

        IPC::Decoder::~Decoder(v46);
        bmalloc::api::tzoneFree(v47, v48);
LABEL_97:
        if (!v103)
        {
          v53 = v102;
          v102 = 0;
          if (v53)
          {
            IPC::Decoder::~Decoder(v53);
            bmalloc::api::tzoneFree(v63, v64);
          }
        }

LABEL_100:
        v54 = v90[0];
        v90[0] = 0;
        if (!v54)
        {
          goto LABEL_101;
        }

        IPC::Encoder::~Encoder(v54, v45);
        goto LABEL_118;
      }
    }

    goto LABEL_155;
  }

  LOBYTE(v95) = 0;
  v100 = -1;
  v28 = v111;
  if (v111 == 255)
  {
    goto LABEL_101;
  }

  if (v111)
  {
    LOBYTE(v95) = buf[0];
    goto LABEL_29;
  }

  v37 = *buf;
  *buf = 0;
  v95 = v37;
  v96[0] = 0;
  v99 = 0;
  if (v110 != 1)
  {
    v100 = 0;
LABEL_93:
    v50 = *buf;
    *buf = 0;
    if (!v50)
    {
      goto LABEL_101;
    }

    IPC::Decoder::~Decoder(v50);
LABEL_118:
    bmalloc::api::tzoneFree(v51, v52);
    goto LABEL_101;
  }

  WebCore::ShareableBitmapHandle::ShareableBitmapHandle(v96, &buf[8]);
  v99 = 1;
  v100 = v111;
  if ((v112 & 1) != 0 && !v111)
  {
    if (v110)
    {
      if (v108 == 1)
      {
        v38 = v107;
        v107 = 0;
        if (v38)
        {
          CFRelease(v38);
        }
      }

      WTF::MachSendRight::~MachSendRight(&buf[8]);
    }

    goto LABEL_93;
  }

LABEL_101:
  v55 = v100;
  if (!v100)
  {
    a4[96] = -1;
    v56 = a4 + 96;
    goto LABEL_103;
  }

  v81 = qword_1ED6410D0;
  v27 = os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT);
  if (v27)
  {
    if (v55 == 1)
    {
LABEL_137:
      v82 = *(a1 + 10);
      v83 = IPC::errorAsString();
      *buf = 134218498;
      *&buf[4] = v82;
      *&buf[12] = 2082;
      *&buf[14] = "RemoteImageBuffer_GetShareableBitmap";
      v105 = 2082;
      v106 = v83;
      _os_log_impl(&dword_19D52D000, v81, OS_LOG_TYPE_DEFAULT, "[renderingBackend=%llu] RemoteRenderingBackendProxy::sendSync - failed, name:%{public}s, error:%{public}s", buf, 0x20u);
      goto LABEL_138;
    }

LABEL_145:
    mpark::throw_bad_variant_access(v27);
  }

LABEL_138:
  WebKit::RemoteRenderingBackendProxy::didBecomeUnresponsive(a1);
  v58 = v100;
  *a4 = 0;
  a4[96] = -1;
  v56 = a4 + 96;
  if (v58 != 255)
  {
    if (v58)
    {
      *a4 = v95;
      goto LABEL_106;
    }

LABEL_103:
    v57 = v95;
    v95 = 0;
    *a4 = v57;
    a4[8] = 0;
    a4[88] = 0;
    if (v99 == 1)
    {
      WebCore::ShareableBitmapHandle::ShareableBitmapHandle((a4 + 8), v96);
      a4[88] = 1;
      LOBYTE(v58) = v100;
    }

    else
    {
      LOBYTE(v58) = 0;
    }

LABEL_106:
    *v56 = v58;
    if (!v100)
    {
      if (v99 == 1)
      {
        if (v98 == 1)
        {
          v59 = cf;
          cf = 0;
          if (v59)
          {
            CFRelease(v59);
          }
        }

        WTF::MachSendRight::~MachSendRight(v96);
      }

      v60 = v95;
      v95 = 0;
      if (v60)
      {
        IPC::Decoder::~Decoder(v60);
        bmalloc::api::tzoneFree(v61, v62);
      }
    }
  }

  v86 = 0;
  if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    IPC::StreamClientConnection::operator delete(v9);
  }
}

void IPC::ConnectionSendSyncResult<Messages::RemoteImageBuffer::GetShareableBitmap>::takeReply(mpark *a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 96))
  {
    mpark::throw_bad_variant_access(a1);
  }

  *a2 = 0;
  a2[80] = 0;
  if (*(a1 + 88) == 1)
  {
    WebCore::ShareableBitmapHandle::ShareableBitmapHandle(a2, a1 + 8);
    a2[80] = 1;
  }
}

void WebKit::RemoteRenderingBackendProxy::releaseFontCustomPlatformData(WebKit::RemoteRenderingBackendProxy *a1, void *a2)
{
  v54 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8))
  {
    v2 = a2;
    v4 = *(a1 + 10);
    WebKit::RemoteRenderingBackendProxy::connection(a1, a2, &v49);
    v6 = v49;
    if (v49)
    {
      v7 = *(v49 + 128);
      v8 = INFINITY;
      if (fabs(v7) != INFINITY)
      {
        WTF::ApproximateTime::now(v5);
        v8 = v7 + v9;
      }

      if (*(v6 + 64) != v4)
      {
        v10 = IPC::StreamClientConnectionBuffer::tryAcquire(v6 + 72, buf, v8);
        if (buf[16] != 1)
        {
          goto LABEL_37;
        }

        v22 = *&buf[8];
        if (*&buf[8] <= 1uLL)
        {
          __break(0xC471u);
          JUMPOUT(0x19E2391C0);
        }

        v23 = *buf;
        **buf = 3198;
        v24 = v23 + 2;
        if (v22 - 2 < (-v24 & 7 | 8uLL))
        {
          goto LABEL_37;
        }

        v25 = -v24 & 7;
        *(v24 + v25) = v4;
        v26 = 6;
        if (v25 > 6)
        {
          v26 = v25;
        }

        v27 = v26 + 10;
        v28 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v29 = *(v6 + 72);
        if (v28 + 16 >= v29)
        {
          v28 = 0;
        }

        v30 = v27 + v28;
        if (v29 <= v30)
        {
          v30 = 0;
        }

        *(v6 + 88) = v30;
        v31 = *(v6 + 80);
        if (*(v31 + 8) <= 0xFFuLL)
        {
          goto LABEL_57;
        }

        v32 = atomic_exchange((*(v31 + 16) + 128), v30);
        v33 = *(v6 + 124);
        if (v32 == 0x80000000 || v33 != 0)
        {
          v35 = v33 + 1;
          *(v6 + 124) = v35;
          if (v35 >= *(v6 + 120))
          {
            if (*(v6 + 112) == 1)
            {
              MEMORY[0x19EB16320](*(v6 + 100));
            }

            *(v6 + 124) = 0;
          }
        }

        *(v6 + 64) = v4;
      }

      v10 = IPC::StreamClientConnectionBuffer::tryAcquire(v6 + 72, buf, v8);
      if ((buf[16] & 1) == 0)
      {
LABEL_37:
        v36 = qword_1ED6410D0;
        if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
        {
          v37 = *(a1 + 10);
          v38 = IPC::errorAsString();
          *buf = 134218498;
          *&buf[4] = v37;
          *&buf[12] = 2082;
          *&buf[14] = "RemoteRenderingBackend_ReleaseFontCustomPlatformData";
          v52 = 2082;
          v53 = v38;
          _os_log_impl(&dword_19D52D000, v36, OS_LOG_TYPE_DEFAULT, "[renderingBackend=%llu] RemoteRenderingBackendProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x20u);
        }

        WebKit::RemoteRenderingBackendProxy::didBecomeUnresponsive(a1);
        goto LABEL_40;
      }

      v12 = *&buf[8];
      if (*&buf[8] > 1uLL)
      {
        v13 = *buf;
        **buf = 1594;
        v14 = v13 + 2;
        if (v12 - 2 >= (-v14 & 7 | 8uLL))
        {
          v15 = -v14 & 7;
          *(v14 + v15) = v2;
          v16 = 6;
          if (v15 > 6)
          {
            v16 = v15;
          }

          v17 = v16 + 10;
          v18 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v19 = *(v6 + 72);
          if (v18 + 16 >= v19)
          {
            v18 = 0;
          }

          v20 = v17 + v18;
          if (v19 <= v20)
          {
            v20 = 0;
          }

          *(v6 + 88) = v20;
          v21 = *(v6 + 80);
          if (*(v21 + 8) > 0xFFuLL)
          {
            if (atomic_exchange((*(v21 + 16) + 128), v20) == 0x80000000 || *(v6 + 124))
            {
              if (*(v6 + 112) == 1)
              {
                MEMORY[0x19EB16320](*(v6 + 100));
              }

              *(v6 + 124) = 0;
            }

            goto LABEL_40;
          }

          goto LABEL_57;
        }

        v48 = v4;
        if ((buf[16] & 1) == 0)
        {
          goto LABEL_57;
        }

        if (*&buf[8] > 1uLL)
        {
          **buf = 3197;
          v39 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v40 = *(v6 + 72);
          if (v39 + 16 >= v40)
          {
            v39 = 0;
          }

          v41 = v39 + 16;
          if (v40 <= v41)
          {
            v42 = 0;
          }

          else
          {
            v42 = v41;
          }

          *(v6 + 88) = v42;
          v43 = *(v6 + 80);
          if (*(v43 + 8) > 0xFFuLL)
          {
            atomic_exchange((*(v43 + 16) + 128), v42);
            *(v6 + 124) = 0;
            v44 = *(v6 + 8);
            v45 = IPC::Encoder::operator new(0x238, v11);
            *v45 = 1594;
            *(v45 + 2) = 0;
            *(v45 + 3) = 0;
            *(v45 + 1) = v48;
            *(v45 + 68) = 0;
            *(v45 + 70) = 0;
            *(v45 + 69) = 0;
            IPC::Encoder::encodeHeader(v45);
            v50 = v45;
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v45, v2);
            LODWORD(v2) = IPC::Connection::sendMessageImpl(v44, &v50, 1, 0);
            v10 = v50;
            v50 = 0;
            if (v10)
            {
              goto LABEL_58;
            }

            if (!v2)
            {
              goto LABEL_40;
            }

            goto LABEL_37;
          }

LABEL_57:
          __break(1u);
LABEL_58:
          IPC::Encoder::~Encoder(v10, v11);
          bmalloc::api::tzoneFree(v46, v47);
          if (v2)
          {
            goto LABEL_37;
          }

LABEL_40:
          v49 = 0;
          if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v6);
            IPC::StreamClientConnection::operator delete(v6);
          }

          return;
        }
      }

      __break(0xC471u);
      JUMPOUT(0x19E239198);
    }
  }
}

WTF *WebKit::RemoteRenderingBackendProxy::cacheDecomposedGlyphs(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  result = WTF::Vector<WebCore::FloatSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<CGSize const,18446744073709551615ul>(&v10, *(a2 + 64), *(a2 + 76));
  v6 = *(a2 + 60);
  v13 = 0;
  v14 = 0;
  v12 = v6;
  if (v6)
  {
    v13 = v4;
    v14 = v10;
  }

  if (*(a2 + 40))
  {
    v7 = *(a2 + 88);
    v9 = *(a2 + 32);
    v15[0] = &v12;
    v15[1] = a2 + 80;
    v16 = v7;
    v17 = &v9;
    WebKit::RemoteRenderingBackendProxy::send<Messages::RemoteRenderingBackend::CacheDecomposedGlyphs,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(a1, v15, a1[10]);
    result = v10;
    if (v10)
    {
      v10 = 0;
      v11 = 0;
      return WTF::fastFree(result, v8);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t WebKit::RemoteRenderingBackendProxy::releaseMemory(WebKit::RemoteRenderingBackendProxy *this, void *a2)
{
  result = WebKit::RemoteResourceCacheProxy::releaseMemory((this + 88), a2);
  if (*(this + 8))
  {
    return WebKit::RemoteRenderingBackendProxy::send<Messages::RemoteRenderingBackend::ReleaseMemory,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(this, &v4, *(this + 10));
  }

  return result;
}

uint64_t WebKit::RemoteRenderingBackendProxy::releaseNativeImages(WebKit::RemoteRenderingBackendProxy *this, void *a2)
{
  result = WebKit::RemoteResourceCacheProxy::releaseNativeImages((this + 88), a2);
  if (*(this + 8))
  {
    return WebKit::RemoteRenderingBackendProxy::send<Messages::RemoteRenderingBackend::ReleaseNativeImages,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(this, &v4, *(this + 10));
  }

  return result;
}

uint64_t WebKit::RemoteResourceCacheProxy::releaseNativeImages(WebKit::RemoteResourceCacheProxy *this, void *a2)
{
  result = WTF::WeakPtrFactory<WebCore::RenderingResourceObserver,WTF::DefaultWeakPtrImpl>::revokeAll(this + 7, a2);
  v5 = *(this + 2);
  if (v5)
  {
    *(this + 2) = 0;

    return WTF::fastFree((v5 - 16), v4);
  }

  return result;
}

unsigned int *WebKit::RemoteRenderingBackendProxy::prepareImageBufferSetsForDisplay@<X0>(unsigned int *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 12);
  if (v4)
  {
    v54 = 0;
    if (v4 >= 0x6666667)
    {
      __break(0xC471u);
      goto LABEL_70;
    }

    v6 = result;
    v7 = 40 * v4;
    v8 = WTF::fastMalloc((40 * v4));
    LODWORD(v54) = v7 / 0x28;
    v53 = v8;
    v10 = *(a2 + 12);
    if (v10)
    {
      v11 = 0;
      v12 = 0;
      v13 = *a2 + 40 * v10;
      v14 = v8 + 32;
      v15 = *a2 + 8;
      do
      {
        v17 = v15 - 8;
        v16 = *(v15 - 8);
        if (*(v16 + 3640))
        {
          v12 = 1;
        }

        *(v16 + 3640) = 0;
        WebKit::RemoteImageBufferSetProxy::willPrepareForDisplay(*(v15 - 8), v9);
        *buf = *(*(v15 - 8) + 16);
        WebCore::Region::Region(&buf[8], v15);
        v61[0] = *(v15 + 24);
        *&v61[1] = *(v15 + 25);
        *(v14 - 32) = *buf;
        WebCore::Region::Region();
        v18 = *v61;
        *(v14 + 2) = v61[2];
        *v14 = v18;
        v14 += 40;
        WebCore::Region::~Region(&buf[8]);
        ++v11;
        v15 += 40;
      }

      while (v17 + 40 != v13);
      HIDWORD(v54) = v11;
      *a3 = 0;
      *(a3 + 8) = 0;
      if (v12)
      {
        v56 = &v53;
        WebKit::RemoteRenderingBackendProxy::sendSync<Messages::RemoteRenderingBackend::PrepareImageBufferSetsForDisplaySync,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(buf, v6, &v56, v6[10]);
        if (v60)
        {
          WTF::Vector<WebKit::SwapBuffersDisplayRequirement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::growImpl<(WTF::FailureAction)0>(a3, HIDWORD(v54));
          v50 = *(a3 + 12);
          if (v50)
          {
            bzero(*a3, v50);
          }
        }

        else
        {
          IPC::ConnectionSendSyncResult<Messages::RemoteRenderingBackend::PrepareImageBufferSetsForDisplaySync>::takeReply(&v56, buf);
          v51 = *a3;
          if (*a3)
          {
            *a3 = 0;
            *(a3 + 8) = 0;
            WTF::fastFree(v51, v50);
          }

          *a3 = v56;
          *(a3 + 8) = v57;
        }

        IPC::ConnectionSendSyncResult<Messages::RemoteRenderingBackend::PrepareImageBufferSetsForDisplaySync>::~ConnectionSendSyncResult(buf, v50);
        return WTF::Vector<WebKit::ImageBufferSetPrepareBufferForDisplayInputData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v53, v32);
      }
    }

    else
    {
      *a3 = 0;
      *(a3 + 8) = 0;
    }

    v52 = &v53;
    v19 = v6[10];
    WebKit::RemoteRenderingBackendProxy::connection(v6, v9, &v55);
    v21 = v55;
    if (!v55)
    {
LABEL_27:
      WTF::Vector<WebKit::SwapBuffersDisplayRequirement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::growImpl<(WTF::FailureAction)0>(a3, HIDWORD(v54));
      v33 = *(a3 + 12);
      if (v33)
      {
        memset(*a3, 1, v33);
      }

      return WTF::Vector<WebKit::ImageBufferSetPrepareBufferForDisplayInputData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v53, v32);
    }

    v22 = *(v55 + 128);
    v23 = INFINITY;
    if (fabs(v22) != INFINITY)
    {
      WTF::ApproximateTime::now(v20);
      v23 = v22 + v24;
    }

    if (*(v21 + 64) != v19)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v21 + 72, buf, v23);
      if (buf[16] != 1)
      {
        goto LABEL_54;
      }

      v34 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
LABEL_69:
        __break(0xC471u);
LABEL_70:
        JUMPOUT(0x19E2398DCLL);
      }

      v35 = *buf;
      **buf = 3198;
      v36 = v35 + 2;
      if (v34 - 2 < (-v36 & 7 | 8uLL))
      {
LABEL_54:
        v47 = qword_1ED6410D0;
        if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
        {
          v48 = v6[10];
          v49 = IPC::errorAsString();
          *buf = 134218498;
          *&buf[4] = v48;
          *&buf[12] = 2082;
          *&buf[14] = "RemoteRenderingBackend_PrepareImageBufferSetsForDisplay";
          *&buf[22] = 2082;
          v60 = v49;
          _os_log_impl(&dword_19D52D000, v47, OS_LOG_TYPE_DEFAULT, "[renderingBackend=%llu] RemoteRenderingBackendProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x20u);
        }

        WebKit::RemoteRenderingBackendProxy::didBecomeUnresponsive(v6);
        goto LABEL_25;
      }

      v37 = -v36 & 7;
      *(v36 + v37) = v19;
      v38 = 6;
      if (v37 > 6)
      {
        v38 = v37;
      }

      v39 = v38 + 10;
      v40 = (*(v21 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v41 = *(v21 + 72);
      if (v40 + 16 >= v41)
      {
        v40 = 0;
      }

      v42 = v39 + v40;
      if (v41 <= v42)
      {
        v42 = 0;
      }

      *(v21 + 88) = v42;
      v43 = *(v21 + 80);
      if (*(v43 + 8) <= 0xFFuLL)
      {
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      v44 = atomic_exchange((*(v43 + 16) + 128), v42);
      v45 = *(v21 + 124);
      if (v44 == 0x80000000 || v45)
      {
        v46 = v45 + 1;
        *(v21 + 124) = v46;
        if (v46 >= *(v21 + 120))
        {
          if (*(v21 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v21 + 100));
          }

          *(v21 + 124) = 0;
        }
      }

      *(v21 + 64) = v19;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(v21 + 72, &v56, v23);
    if ((v58 & 1) == 0)
    {
      goto LABEL_54;
    }

    v25 = v56;
    v26 = v57;
    *&buf[16] = v57;
    if (v57 <= 1)
    {
      __break(0xC471u);
    }

    else
    {
      *v56 = 1590;
      *buf = v25 + 2;
      *&buf[8] = v26 - 2;
      IPC::VectorArgumentCoder<false,WebKit::ImageBufferSetPrepareBufferForDisplayInputData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::StreamConnectionEncoder,WTF::Vector<WebKit::ImageBufferSetPrepareBufferForDisplayInputData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(buf, v52);
      if (*buf)
      {
        v27 = *&buf[16] - *&buf[8];
        if (*&buf[16] - *&buf[8] <= 0x10uLL)
        {
          v27 = 16;
        }

        v28 = (*(v21 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v29 = *(v21 + 72);
        if (v28 + 16 >= v29)
        {
          v28 = 0;
        }

        v30 = v28 + v27;
        if (v29 <= v30)
        {
          v30 = 0;
        }

        *(v21 + 88) = v30;
        v31 = *(v21 + 80);
        if (*(v31 + 8) > 0xFFuLL)
        {
          if (atomic_exchange((*(v31 + 16) + 128), v30) == 0x80000000 || *(v21 + 124))
          {
            if (*(v21 + 112) == 1)
            {
              MEMORY[0x19EB16320](*(v21 + 100));
            }

            *(v21 + 124) = 0;
          }

          goto LABEL_25;
        }

        goto LABEL_68;
      }

      if (v58)
      {
        IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v21, v56, v57);
        if (!IPC::Connection::send<Messages::RemoteRenderingBackend::PrepareImageBufferSetsForDisplay>(*(v21 + 8), &v52, v19))
        {
LABEL_25:
          v55 = 0;
          if (atomic_fetch_add(v21, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v21);
            IPC::StreamClientConnection::operator delete(v21);
          }

          goto LABEL_27;
        }

        goto LABEL_54;
      }
    }

    goto LABEL_68;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  return result;
}

WTF *IPC::ConnectionSendSyncResult<Messages::RemoteRenderingBackend::PrepareImageBufferSetsForDisplaySync>::takeReply(mpark *a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    mpark::throw_bad_variant_access(a1);
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v3 = (a2 + 8);

  return WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, v3);
}

WTF *WebKit::RemoteRenderingBackendProxy::markSurfacesVolatile(uint64_t *a1, uint64_t a2, uint64_t *a3, char a4)
{
  v86 = *MEMORY[0x1E69E9840];
  v80 = 0;
  v81 = 0;
  v7 = *(a2 + 12);
  if (v7)
  {
    v8 = 0;
    v9 = *a2;
    v10 = *a2 + 16 * v7;
    do
    {
      v11 = v9[8];
      *buf = *(*v9 + 16);
      buf[8] = v11;
      if (v8 == v81)
      {
        v12 = WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::OptionSet<WebKit::BufferInSetType>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v80, v8 + 1, buf);
        *(v80 + HIDWORD(v81)) = *v12;
      }

      else
      {
        *(v80 + v8) = *buf;
      }

      v8 = ++HIDWORD(v81);
      *(*v9 + 3640) |= v9[8];
      v9 += 16;
    }

    while (v9 != v10);
  }

  IdentifierInternal = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  p_IdentifierInternal = &IdentifierInternal;
  v77 = &v80;
  v78 = a4;
  v13 = a1[10];
  v16.n128_f64[0] = WebKit::RemoteRenderingBackendProxy::connection(a1, v14, &v82);
  v17 = v82;
  if (!v82)
  {
    goto LABEL_75;
  }

  v18 = *(v82 + 128);
  v19 = INFINITY;
  if (fabs(v18) != INFINITY)
  {
    WTF::ApproximateTime::now(v15);
    v19 = v18 + v20;
  }

  if (*(v17 + 64) != v13)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v17 + 72, buf, v19);
    if (buf[16] != 1)
    {
      goto LABEL_76;
    }

    v63 = *&buf[8];
    if (*&buf[8] <= 1uLL)
    {
      __break(0xC471u);
LABEL_91:
      JUMPOUT(0x19E23A000);
    }

    v64 = *buf;
    **buf = 3198;
    v65 = v64 + 2;
    if (v63 - 2 < (-v65 & 7 | 8uLL))
    {
      goto LABEL_76;
    }

    v66 = -v65 & 7;
    *(v65 + v66) = v13;
    v67 = 6;
    if (v66 > 6)
    {
      v67 = v66;
    }

    v68 = v67 + 10;
    v69 = (*(v17 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v70 = *(v17 + 72);
    if (v69 + 16 >= v70)
    {
      v69 = 0;
    }

    v22 = v68 + v69;
    if (v70 <= v22)
    {
      v22 = 0;
    }

    *(v17 + 88) = v22;
    v71 = *(v17 + 80);
    if (*(v71 + 8) <= 0xFFuLL)
    {
      goto LABEL_83;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(v17, atomic_exchange((*(v71 + 16) + 128), v22) == 0x80000000);
    *(v17 + 64) = v13;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v17 + 72, buf, v19);
  if ((buf[16] & 1) == 0)
  {
    goto LABEL_76;
  }

  v22 = *&buf[8];
  if (*&buf[8] <= 1uLL)
  {
    __break(0xC471u);
    JUMPOUT(0x19E23A040);
  }

  v23 = *buf;
  **buf = 1587;
  v24 = v23 + 2;
  v25 = -v24 & 7 | 8;
  v26 = v22 - 2 - v25;
  if (v22 - 2 < v25)
  {
    goto LABEL_84;
  }

  *(v24 + (-v24 & 7)) = *p_IdentifierInternal;
  v27 = v24 + v25;
  v28 = v77;
  v29 = -v27 & 7 | 8;
  v30 = v26 - v29;
  if (v26 < v29)
  {
    v31 = 0;
    v30 = 0;
  }

  else
  {
    *(v27 + (-v27 & 7)) = *(v77 + 3);
    v31 = (v27 + v29);
  }

  while (1)
  {
    v32 = *(v28 + 3);
    if (v32)
    {
      v33 = *v28;
      v34 = 16 * v32;
      v35 = v33 + 8;
      do
      {
        v36 = -v31 & 7 | 8;
        if (v30 < v36 || (v37 = -v31 & 7, *&v31[v37] = *(v35 - 1), v30 == v36))
        {
          v31 = 0;
          v30 = 0;
        }

        else
        {
          v38 = &v31[v36];
          *v38 = *v35;
          v31 = v38 + 1;
          v30 += v37 ^ 0xFFFFFFFFFFFFFFF7;
        }

        v35 += 16;
        v34 -= 16;
      }

      while (v34);
    }

    if (!v30)
    {
      break;
    }

    *v31 = v78;
    v39 = v22 - v30;
    v40 = 16;
    if (v39 + 1 > 0x10)
    {
      v40 = v39 + 1;
    }

    v41 = (*(v17 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v42 = *(v17 + 72);
    v22 = *(v17 + 80);
    if (v41 + 16 >= v42)
    {
      v41 = 0;
    }

    v43 = v41 + v40;
    if (v42 <= v43)
    {
      v43 = 0;
    }

    *(v17 + 88) = v43;
    if (*(v22 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v22 + 16) + 128), v43) == 0x80000000 || *(v17 + 124))
      {
        if (*(v17 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v17 + 100));
        }

        *(v17 + 124) = 0;
      }

      goto LABEL_33;
    }

LABEL_83:
    __break(1u);
LABEL_84:
    v31 = 0;
    v30 = 0;
    v28 = v77;
  }

  v22 = buf[16];
  if ((buf[16] & 1) == 0)
  {
    goto LABEL_83;
  }

  IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v17, *buf, *&buf[8]);
  if (!IPC::Connection::send<Messages::RemoteRenderingBackend::MarkSurfacesVolatile>(*(v17 + 8), &p_IdentifierInternal, v13))
  {
LABEL_33:
    v44 = 1;
    goto LABEL_34;
  }

LABEL_76:
  v73 = qword_1ED6410D0;
  if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
  {
    v74 = a1[10];
    v75 = IPC::errorAsString();
    *buf = 134218498;
    *&buf[4] = v74;
    *&buf[12] = 2082;
    *&buf[14] = "RemoteRenderingBackend_MarkSurfacesVolatile";
    v84 = 2082;
    v85 = v75;
    _os_log_impl(&dword_19D52D000, v73, OS_LOG_TYPE_DEFAULT, "[renderingBackend=%llu] RemoteRenderingBackendProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x20u);
  }

  WebKit::RemoteRenderingBackendProxy::didBecomeUnresponsive(a1);
  v44 = 0;
LABEL_34:
  v82 = 0;
  if (atomic_fetch_add(v17, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v17);
    v16.n128_f64[0] = IPC::StreamClientConnection::operator delete(v17);
  }

  if ((v44 & 1) == 0)
  {
LABEL_75:
    v72 = *a3;
    *a3 = 0;
    (*(*v72 + 16))(v72, 0, v16);
    (*(*v72 + 8))(v72);
    goto LABEL_55;
  }

  v45 = IdentifierInternal;
  if (IdentifierInternal == -1)
  {
    __break(0xC471u);
    goto LABEL_91;
  }

  if (!IdentifierInternal)
  {
    __break(0xC471u);
    JUMPOUT(0x19E23A020);
  }

  v46 = a1[32];
  if (!v46)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(BOOL)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(BOOL)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(BOOL)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CompletionHandler<void ()(BOOL)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1 + 32);
    v46 = a1[32];
    v45 = IdentifierInternal;
  }

  v47 = *(v46 - 8);
  v48 = (v45 + ~(v45 << 32)) ^ ((v45 + ~(v45 << 32)) >> 22);
  v49 = 9 * ((v48 + ~(v48 << 13)) ^ ((v48 + ~(v48 << 13)) >> 8));
  v50 = (v49 ^ (v49 >> 15)) + ~((v49 ^ (v49 >> 15)) << 27);
  v51 = v47 & ((v50 >> 31) ^ v50);
  v52 = (v46 + 16 * v51);
  v53 = *v52;
  if (*v52)
  {
    v54 = 0;
    v55 = 1;
    while (v53 != v45)
    {
      if (v53 == -1)
      {
        v54 = v52;
      }

      v51 = (v51 + v55) & v47;
      v52 = (v46 + 16 * v51);
      v53 = *v52;
      ++v55;
      if (!*v52)
      {
        if (v54)
        {
          *v54 = 0;
          v54[1] = 0;
          --*(a1[32] - 16);
          v45 = IdentifierInternal;
          v52 = v54;
        }

        goto LABEL_49;
      }
    }
  }

  else
  {
LABEL_49:
    *v52 = v45;
    v56 = *a3;
    *a3 = 0;
    v57 = v52[1];
    v52[1] = v56;
    if (v57)
    {
      (*(*v57 + 8))(v57);
    }

    v58 = a1[32];
    if (v58)
    {
      v59 = *(v58 - 12) + 1;
    }

    else
    {
      v59 = 1;
    }

    *(v58 - 12) = v59;
    v60 = (*(v58 - 16) + v59);
    v61 = *(v58 - 4);
    if (v61 > 0x400)
    {
      if (v61 > 2 * v60)
      {
        goto LABEL_55;
      }
    }

    else if (3 * v61 > 4 * v60)
    {
      goto LABEL_55;
    }

    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(BOOL)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(BOOL)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(BOOL)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CompletionHandler<void ()(BOOL)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1 + 32);
  }

LABEL_55:
  result = v80;
  if (v80)
  {
    v80 = 0;
    LODWORD(v81) = 0;
    return WTF::fastFree(result, v21);
  }

  return result;
}

void WebKit::RemoteRenderingBackendProxy::didMarkLayersAsVolatile(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  v4 = *(a1 + 256);
  if (!v4)
  {
    return;
  }

  if (a2 == -1)
  {
    __break(0xC471u);
    goto LABEL_41;
  }

  if (!a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19E23A390);
  }

  v8 = *(v4 - 8);
  v9 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
  v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
  v12 = v8 & ((v11 >> 31) ^ v11);
  v13 = *(v4 + 16 * v12);
  if (v13 != a2)
  {
    v35 = 1;
    while (v13)
    {
      v12 = (v12 + v35) & v8;
      v13 = *(v4 + 16 * v12);
      ++v35;
      if (v13 == a2)
      {
        goto LABEL_5;
      }
    }

    v12 = *(v4 - 4);
  }

LABEL_5:
  v14 = *(v4 - 4);
  if (v12 != v14)
  {
    v15 = (v4 + 16 * v12);
    v16 = v15[1];
    *v15 = -1;
    v15[1] = 0;
    v17 = vadd_s32(*(v4 - 16), 0xFFFFFFFF00000001);
    *(v4 - 16) = v17;
    if (6 * v17.i32[1] < v14 && v14 >= 9)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(BOOL)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(BOOL)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(BOOL)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CompletionHandler<void ()(BOOL)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash((a1 + 256), v14 >> 1);
    }

    if (v16)
    {
      v19 = *(a3 + 3);
      if (!v19)
      {
LABEL_13:
        (*(*v16 + 16))(v16, a4);
        v20 = *(*v16 + 8);

        v20(v16);
        return;
      }

      v21 = *a3;
      v22 = &(*a3)[2 * v19];
      while (1)
      {
        v23 = *v21;
        if (*v21 == -1)
        {
          __break(0xC471u);
          JUMPOUT(0x19E23A3B0);
        }

        if (!v23)
        {
          break;
        }

        v24 = *(a1 + 272);
        if (v24)
        {
          v25 = *(v24 - 8);
          v26 = (v23 + ~(v23 << 32)) ^ ((v23 + ~(v23 << 32)) >> 22);
          v27 = 9 * ((v26 + ~(v26 << 13)) ^ ((v26 + ~(v26 << 13)) >> 8));
          v28 = (v27 ^ (v27 >> 15)) + ~((v27 ^ (v27 >> 15)) << 27);
          v29 = v25 & ((v28 >> 31) ^ v28);
          v30 = *(v24 + 24 * v29);
          if (v30 == v23)
          {
LABEL_21:
            v31 = v24 + 24 * v29;
            v32 = *(v31 + 16);
            if (v32)
            {
              v33 = *(v31 + 8);
              v34 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v32);
              if (v34)
              {
                v37 = v34;
                WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::NetworkCache::Storage>(&v40, v34, v33);
                WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v37, v38);
                v39 = v40;
                if (v40)
                {
                  WebKit::RemoteImageBufferSetProxy::setConfirmedVolatility(v40, *(v21 + 8));
                  (*(*v39 + 8))(v39);
                }
              }
            }
          }

          else
          {
            v36 = 1;
            while (v30)
            {
              v29 = (v29 + v36) & v25;
              v30 = *(v24 + 24 * v29);
              ++v36;
              if (v30 == v23)
              {
                goto LABEL_21;
              }
            }
          }
        }

        v21 += 2;
        if (v21 == v22)
        {
          goto LABEL_13;
        }
      }

      __break(0xC471u);
LABEL_41:
      JUMPOUT(0x19E23A370);
    }
  }
}

void *WebKit::RemoteRenderingBackendProxy::finalizeRenderingUpdate(void *this)
{
  if (this[8])
  {
    v1 = this;
    v2 = this + 36;
    this = WebKit::RemoteRenderingBackendProxy::send<Messages::RemoteRenderingBackend::FinalizeRenderingUpdate,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(this, &v2, this[10]);
    ++v1[36];
  }

  return this;
}

uint64_t WebKit::RemoteRenderingBackendProxy::dispatchMessage(atomic_uchar *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v3 = *(a3 + 25);
  if (v3 >= 0x107F)
  {
    v3 = 4223;
  }

  v4 = LOBYTE((&IPC::Detail::messageDescriptions)[3 * v3 + 2]);
  if (v4 != 86)
  {
    return v4 == 86;
  }

  v12 = *(a3 + 7);
  if ((v12 - 1) < 0xFFFFFFFFFFFFFFFELL)
  {
    WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(this + 264, &v12, &v13);
    if (v14)
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v14, v13, &v15);
      v9 = v14;
      v14 = 0;
      if (v9)
      {
        WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v9, v8);
      }

      if (v15)
      {
        WebKit::RemoteImageBufferProxy::didReceiveMessage(v15, a2, a3);
        v11 = v15;
        v15 = 0;
        if (v11)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref(v11 + 1, v10);
        }
      }
    }

    return v4 == 86;
  }

  result = 153;
  __break(0xC471u);
  return result;
}

double WebKit::RemoteRenderingBackendProxy::connection@<D0>(WebKit::RemoteRenderingBackendProxy *this@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  WebKit::RemoteRenderingBackendProxy::ensureGPUProcessConnection(this, a2);
  if (*(this + 304))
  {
    v6 = *(this + 8);
    if (v6)
    {
      atomic_fetch_add(v6, 1u);
    }

    if ((*(v6 + 112) & 1) == 0)
    {
      v10 = v6;
      v7 = IPC::StreamClientConnection::waitForAndDispatchImmediately<Messages::RemoteRenderingBackendProxy::DidInitialize,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v6, *(this + 10));
      v6 = v10;
      if (v7)
      {
        v8 = qword_1ED6410D0;
        if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(this + 10);
          *buf = 134218242;
          v12 = v9;
          v13 = 2082;
          v14 = IPC::errorAsString();
          _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "[renderingBackend=%llu] RemoteRenderingBackendProxy::connection() - waitForAndDispatchImmediately returned error: %{public}s", buf, 0x16u);
        }

        WebKit::RemoteRenderingBackendProxy::didBecomeUnresponsive(this);
        v6 = v10;
      }
    }

    if (*(this + 304) == 1)
    {
      *a3 = v6;
    }

    else
    {
      *a3 = 0;
      if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v6);
        return IPC::StreamClientConnection::operator delete(v6);
      }
    }
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t IPC::StreamClientConnection::waitForAndDispatchImmediately<Messages::RemoteRenderingBackendProxy::DidInitialize,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 128);
  v5 = INFINITY;
  if (fabs(v4) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v5 = v4 + v6;
  }

  v7 = *(a1 + 8);

  return IPC::Connection::waitForAndDispatchImmediately<Messages::RemoteRenderingBackendProxy::DidInitialize>(v7, a2, v5);
}

double WebKit::RemoteRenderingBackendProxy::didInitialize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 64);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::setSemaphores(v3, a2, a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      return IPC::StreamClientConnection::operator delete(v3);
    }
  }

  return result;
}

WTF::ThreadSafeWeakPtrControlBlock *WebKit::RemoteRenderingBackendProxy::isCached(atomic_uchar *this, const WebCore::ImageBuffer *a2)
{
  v6 = *(a2 + 15);
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(this + 264, &v6, &v7);
  result = v8;
  if (v8)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v8, v7, &v9);
    v4 = v8;
    v8 = 0;
    if (v4)
    {
      WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v4, v3);
    }

    v5 = v9;
    result = (v9 != 0);
    v9 = 0;
    if (v5)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v5 + 8), v3);
      return 1;
    }
  }

  return result;
}

void WebKit::RemoteResourceCacheProxy::~RemoteResourceCacheProxy(WebKit::RemoteResourceCacheProxy *this, void *a2)
{
  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    v4 = (v3 + 16);
    if (!atomic_load(v4))
    {
      __break(0xC471u);
      return;
    }

    atomic_fetch_add(v4, 0xFFFFFFFF);
  }

  v6 = *(this + 9);
  if (v6)
  {
    WTF::fastFree((v6 - 16), a2);
  }

  v7 = *(this + 8);
  if (v7)
  {
    WTF::fastFree((v7 - 16), a2);
  }

  WTF::WeakPtrFactory<WebKit::SessionSet,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 7, a2);
  WTF::WeakPtrFactory<WebKit::SessionSet,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 6, v8);
  v10 = *(this + 5);
  if (v10)
  {
    WTF::fastFree((v10 - 16), v9);
  }

  v11 = *(this + 4);
  if (v11)
  {
    WTF::fastFree((v11 - 16), v9);
  }

  v12 = *(this + 3);
  if (v12)
  {
    WTF::fastFree((v12 - 16), v9);
  }

  v13 = *(this + 2);
  if (v13)
  {
    WTF::fastFree((v13 - 16), v9);
  }

  WTF::WeakPtrFactory<WebKit::SessionSet,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v9);
}

{
  WebKit::RemoteResourceCacheProxy::~RemoteResourceCacheProxy(this, a2);

  JUMPOUT(0x19EB14CF0);
}

unsigned int *WebCore::RenderingResource::addObserver(uint64_t a1, unsigned int **a2)
{
  v2 = *a2;
  *a2 = 0;
  v6 = v2;
  WTF::WeakHashSet<WebCore::RenderingResourceObserver,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add((a1 + 16), &v6, &v5);
  result = v6;
  v6 = 0;
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, v3);
    }
  }

  return result;
}

uint64_t WebKit::RemoteResourceCacheProxy::recordGradientUse(uint64_t result, uint64_t a2)
{
  v55 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 40) & 1) == 0)
  {
    goto LABEL_65;
  }

  v3 = result;
  v50 = *(a2 + 32);
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>((result + 24), &v50, buf);
  if (buf[16] != 1)
  {
    return result;
  }

  WTF::WeakPtrFactory<WebCore::RenderingResourceObserver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v3 + 48), v3);
  v4 = *(v3 + 48);
  atomic_fetch_add(v4, 1u);
  *buf = v4;
  WebCore::RenderingResource::addObserver(a2, buf);
  result = *buf;
  *buf = 0;
  if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result);
    result = WTF::fastFree(result, a2);
  }

  v5 = *(v3 + 88);
  if (!v5)
  {
    __break(0xC471u);
    goto LABEL_71;
  }

  while (1)
  {
    v6 = *(a2 + 8);
    if ((v6 & 1) == 0)
    {
      break;
    }

    v7 = *(a2 + 8);
    atomic_compare_exchange_strong_explicit((a2 + 8), &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v6)
    {
      goto LABEL_8;
    }
  }

  result = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a2 + 8));
LABEL_8:
  v45 = a2;
  if ((*(a2 + 40) & 1) == 0)
  {
    goto LABEL_65;
  }

  v8 = *(a2 + 32);
  v46 = &v45;
  v47 = &v48;
  v48 = v8;
  v9 = *(v5 + 10);
  v11.n128_f64[0] = WebKit::RemoteRenderingBackendProxy::connection(v5, a2, &v49);
  v12 = v49;
  if (!v49)
  {
    goto LABEL_28;
  }

  v13 = *(v49 + 128);
  v14 = INFINITY;
  if (fabs(v13) != INFINITY)
  {
    WTF::ApproximateTime::now(v10);
    v14 = v13 + v15;
  }

  if (*(v12 + 64) == v9)
  {
    goto LABEL_13;
  }

  v44 = v14;
  result = IPC::StreamClientConnectionBuffer::tryAcquire(v12 + 72, buf, v14);
  if (buf[16] != 1)
  {
    goto LABEL_58;
  }

  v27 = *&buf[8];
  if (*&buf[8] <= 1uLL)
  {
    __break(0xC471u);
LABEL_71:
    JUMPOUT(0x19E23AE54);
  }

  v28 = *buf;
  **buf = 3198;
  v29 = v28 + 2;
  if (v27 - 2 < (-v29 & 7 | 8uLL))
  {
    goto LABEL_58;
  }

  v30 = -v29 & 7;
  *(v29 + v30) = v9;
  v31 = 6;
  if (v30 > 6)
  {
    v31 = v30;
  }

  v32 = v31 + 10;
  v33 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v34 = *(v12 + 72);
  if (v33 + 16 >= v34)
  {
    v33 = 0;
  }

  v35 = v32 + v33;
  if (v34 <= v35)
  {
    v35 = 0;
  }

  *(v12 + 88) = v35;
  v36 = *(v12 + 80);
  if (*(v36 + 8) <= 0xFFuLL)
  {
    goto LABEL_65;
  }

  v37 = atomic_exchange((*(v36 + 16) + 128), v35);
  v38 = *(v12 + 124);
  if (v37 == 0x80000000 || v38 != 0)
  {
    v40 = v38 + 1;
    *(v12 + 124) = v40;
    if (v40 >= *(v12 + 120))
    {
      if (*(v12 + 112) == 1)
      {
        MEMORY[0x19EB16320](*(v12 + 100));
      }

      *(v12 + 124) = 0;
    }
  }

  *(v12 + 64) = v9;
  v14 = v44;
LABEL_13:
  IPC::StreamClientConnectionBuffer::tryAcquire(v12 + 72, &v50, v14);
  if ((v52 & 1) == 0)
  {
    goto LABEL_58;
  }

  v16 = v50;
  v17 = v51;
  *&buf[16] = v51;
  if (v51 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E23AE74);
  }

  *v50 = 1575;
  *buf = v16 + 1;
  *&buf[8] = v17 - 2;
  result = IPC::ArgumentCoder<WebCore::Gradient,void>::encode(buf, *v46);
  v18 = -*buf & 7 | 8;
  if (*&buf[8] >= v18)
  {
    *(*buf + (-*buf & 7)) = *v47;
    v19 = *&buf[8] - v18;
    if (*&buf[8] >= v18)
    {
      *buf += v18;
      *&buf[8] -= v18;
      v20 = *&buf[16] - v19;
      if (v20 <= 0x10)
      {
        v20 = 16;
      }

      v21 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v22 = *(v12 + 72);
      if (v21 + 16 >= v22)
      {
        v21 = 0;
      }

      v23 = v21 + v20;
      if (v22 <= v23)
      {
        v23 = 0;
      }

      *(v12 + 88) = v23;
      v24 = *(v12 + 80);
      if (*(v24 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v24 + 16) + 128), v23) == 0x80000000 || *(v12 + 124))
        {
          if (*(v12 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v12 + 100));
          }

          *(v12 + 124) = 0;
        }

        goto LABEL_26;
      }
    }

LABEL_65:
    __break(1u);
    return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::RenderingResource,(WTF::DestructionThread)0>(*(result + 8), a2);
  }

  if ((v52 & 1) == 0)
  {
    goto LABEL_65;
  }

  IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v12, v50, v51);
  if (IPC::Connection::send<Messages::RemoteRenderingBackend::CacheGradient>(*(v12 + 8), &v46, v9))
  {
LABEL_58:
    v41 = qword_1ED6410D0;
    if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
    {
      v42 = *(v5 + 10);
      v43 = IPC::errorAsString();
      *buf = 134218498;
      *&buf[4] = v42;
      *&buf[12] = 2082;
      *&buf[14] = "RemoteRenderingBackend_CacheGradient";
      *&buf[22] = 2082;
      v54 = v43;
      _os_log_impl(&dword_19D52D000, v41, OS_LOG_TYPE_DEFAULT, "[renderingBackend=%llu] RemoteRenderingBackendProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x20u);
    }

    WebKit::RemoteRenderingBackendProxy::didBecomeUnresponsive(v5);
  }

LABEL_26:
  v49 = 0;
  if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v12);
    v11.n128_f64[0] = IPC::StreamClientConnection::operator delete(v12);
  }

LABEL_28:
  result = v45;
  v45 = 0;
  if (result)
  {
    while (1)
    {
      v25 = *(result + 8);
      if ((v25 & 1) == 0)
      {
        break;
      }

      v26 = *(result + 8);
      atomic_compare_exchange_strong_explicit((result + 8), &v26, v25 - 2, memory_order_relaxed, memory_order_relaxed);
      if (v26 == v25)
      {
        if (v25 == 3)
        {
          return (*(*result + 8))(result, v11);
        }

        return result;
      }
    }

    return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::RenderingResource,(WTF::DestructionThread)0>(*(result + 8), a2);
  }

  return result;
}

uint64_t WebKit::RemoteResourceCacheProxy::recordFilterUse(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40))
  {
    v2 = a2;
    v13 = *(a2 + 32);
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>((a1 + 40), &v13, v14);
    if (v15 != 1)
    {
      return result;
    }

    WTF::WeakPtrFactory<WebCore::RenderingResourceObserver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 48), a1);
    v6 = *(a1 + 48);
    atomic_fetch_add(v6, 1u);
    v14[0] = v6;
    WebCore::RenderingResource::addObserver(v2, v14);
    v8 = v14[0];
    v14[0] = 0;
    if (v8 && atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v8);
      WTF::fastFree(v8, v7);
    }

    v3 = *(a1 + 88);
    if (!v3)
    {
      result = 120;
      __break(0xC471u);
      return result;
    }

    while (1)
    {
      v9 = *(v2 + 8);
      if ((v9 & 1) == 0)
      {
        break;
      }

      v10 = *(v2 + 8);
      atomic_compare_exchange_strong_explicit((v2 + 8), &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v10 == v9)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    __break(1u);
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v2 + 8));
LABEL_8:
  v13 = v2;
  v14[0] = &v13;
  result = WebKit::RemoteRenderingBackendProxy::send<Messages::RemoteRenderingBackend::CacheFilter,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, v14, v3[10]);
  v12 = v13;
  v13 = 0;
  if (v12)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::RenderingResource,(WTF::DestructionThread)0>::deref((v12 + 8), v11);
  }

  return result;
}

void WebKit::RemoteResourceCacheProxy::recordNativeImageUse(WebKit::RemoteResourceCacheProxy *this, WebCore::NativeImage *a2, const WebCore::DestinationColorSpace *a3)
{
  v6 = this;
  v71 = *MEMORY[0x1E69E9840];
  if (WTF::isMainRunLoop(this))
  {
    v3 = &qword_1ED643000;
    {
      v8 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v57 = WebKit::WebProcess::operator new(0x370, v7);
      v8 = WebKit::WebProcess::WebProcess(v57);
      WebKit::WebProcess::singleton(void)::process = v8;
    }

    if (*(v8 + 624) == 1)
    {
      WebCore::DeferrableOneShotTimer::restart(v8 + 560);
    }
  }

  LODWORD(v9) = *(a2 + 40);
  if ((v9 & 1) == 0)
  {
    goto LABEL_67;
  }

  v10 = *(a2 + 4);
  v63 = v10;
  v3 = (v6 + 16);
  v11 = *(v6 + 2);
  if (!v11)
  {
LABEL_16:
    if ((*(**(a2 + 6) + 56))(*(a2 + 6)))
    {
      v20 = 0;
      LOBYTE(v59[0]) = 0;
      v62 = 0;
    }

    else
    {
      WebKit::RemoteNativeImageBackendProxy::create(v59);
      v19 = v59[0];
      LOBYTE(v59[0]) = 0;
      v62 = 0;
      v20 = v19;
      if (!v19)
      {
        return;
      }
    }

    WebCore::ShareableBitmap::createHandle();
    std::__optional_storage_base<WebCore::ShareableBitmapHandle,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::ShareableBitmapHandle,false>>(v59, buf);
    if (v70 == 1)
    {
      if (v69 == 1)
      {
        v21 = cf;
        cf = 0;
        if (v21)
        {
          CFRelease(v21);
        }
      }

      WTF::MachSendRight::~MachSendRight(buf);
    }

    if ((v62 & 1) == 0)
    {
      if (v20)
      {
        WebKit::RemoteNativeImageBackendProxy::~RemoteNativeImageBackendProxy(v20);
        MEMORY[0x19EB14CF0]();
      }

      return;
    }

    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(buf, v6 + 2, &v63);
    WTF::WeakPtrFactory<WebCore::RenderingResourceObserver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v6 + 14, v6);
    v22 = *(v6 + 7);
    atomic_fetch_add(v22, 1u);
    *buf = v22;
    WebCore::RenderingResource::addObserver(a2, buf);
    v24 = *buf;
    *buf = 0;
    if (v24 && atomic_fetch_add(v24, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v24);
      WTF::fastFree(v24, v23);
    }

    LODWORD(v9) = v62;
    if ((v62 & 1) == 0)
    {
      goto LABEL_67;
    }

    WebCore::SharedMemoryHandle::takeOwnershipOfMemory();
    if (v20)
    {
      WebCore::NativeImage::replaceBackend();
      (*(*v20 + 8))(v20);
    }

    v6 = *(v6 + 11);
    if (!v6)
    {
      __break(0xC471u);
      JUMPOUT(0x19E23B664);
    }

    LODWORD(v9) = v62;
    if ((v62 & 1) == 0)
    {
      goto LABEL_67;
    }

    v3 = v63;
    v4 = *(v6 + 10);
    WebKit::RemoteRenderingBackendProxy::connection(v6, v25, &v64);
    a2 = v64;
    if (!v64)
    {
LABEL_47:
      if (v62)
      {
        if (v61 == 1)
        {
          v40 = v60;
          v60 = 0;
          if (v40)
          {
            CFRelease(v40);
          }
        }

        WTF::MachSendRight::~MachSendRight(v59);
      }

      return;
    }

    v27 = v64[16];
    v28 = INFINITY;
    if (fabs(v27) != INFINITY)
    {
      WTF::ApproximateTime::now(v26);
      v28 = v27 + v29;
    }

    if (*(a2 + 8) == v4)
    {
      while (1)
      {
        IPC::StreamClientConnectionBuffer::tryAcquire(a2 + 72, buf, v28);
        if ((buf[16] & 1) == 0)
        {
          goto LABEL_73;
        }

        if (*&buf[8] <= 1uLL)
        {
          __break(0xC471u);
          JUMPOUT(0x19E23B684);
        }

        **buf = 3197;
        v31 = (*(a2 + 11) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v32 = *(a2 + 9);
        if (v31 + 16 >= v32)
        {
          v31 = 0;
        }

        v33 = v31 + 16;
        if (v32 <= v33)
        {
          v9 = 0;
        }

        else
        {
          v9 = v33;
        }

        *(a2 + 11) = v9;
        v34 = *(a2 + 10);
        if (*(v34 + 8) > 0xFFuLL)
        {
          atomic_exchange((*(v34 + 16) + 128), v9);
          *(a2 + 31) = 0;
          v35 = *(a2 + 1);
          v36 = IPC::Encoder::operator new(0x238, v30);
          *v36 = 1576;
          *(v36 + 2) = 0;
          *(v36 + 3) = 0;
          *(v36 + 1) = v4;
          *(v36 + 68) = 0;
          *(v36 + 70) = 0;
          *(v36 + 69) = 0;
          IPC::Encoder::encodeHeader(v36);
          v65 = v36;
          IPC::ArgumentCoder<WebCore::ShareableBitmapHandle,void>::encode(v36, v59);
          IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v36, v3);
          v38 = IPC::Connection::sendMessageImpl(v35, &v65, 1, 0);
          v39 = v65;
          v65 = 0;
          if (v39)
          {
            IPC::Encoder::~Encoder(v39, v37);
            bmalloc::api::tzoneFree(v41, v42);
          }

          if (v38)
          {
            goto LABEL_73;
          }

          goto LABEL_45;
        }

LABEL_67:
        __break(1u);
LABEL_68:
        v53 = v9 + 1;
        *(a2 + 31) = v53;
        if (v53 >= *(a2 + 30))
        {
          if (*(a2 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(a2 + 25));
          }

          *(a2 + 31) = 0;
        }

LABEL_66:
        *(a2 + 8) = v4;
        v28 = v58;
      }
    }

    v58 = v28;
    IPC::StreamClientConnectionBuffer::tryAcquire(a2 + 72, buf, v28);
    if (buf[16] != 1)
    {
LABEL_73:
      v54 = qword_1ED6410D0;
      if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
      {
        v55 = *(v6 + 10);
        v56 = IPC::errorAsString();
        *buf = 134218498;
        *&buf[4] = v55;
        *&buf[12] = 2082;
        *&buf[14] = "RemoteRenderingBackend_CacheNativeImage";
        v67 = 2082;
        cf = v56;
        _os_log_impl(&dword_19D52D000, v54, OS_LOG_TYPE_DEFAULT, "[renderingBackend=%llu] RemoteRenderingBackendProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x20u);
      }

      WebKit::RemoteRenderingBackendProxy::didBecomeUnresponsive(v6);
LABEL_45:
      v64 = 0;
      if (atomic_fetch_add(a2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, a2);
        IPC::StreamClientConnection::operator delete(a2);
      }

      goto LABEL_47;
    }

    v43 = *&buf[8];
    if (*&buf[8] > 1uLL)
    {
      v44 = *buf;
      **buf = 3198;
      v45 = v44 + 2;
      if (v43 - 2 >= (-v45 & 7 | 8uLL))
      {
        v46 = -v45 & 7;
        *(v45 + v46) = v4;
        v47 = 6;
        if (v46 > 6)
        {
          v47 = v46;
        }

        v48 = v47 + 10;
        v49 = (*(a2 + 11) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v50 = *(a2 + 9);
        if (v49 + 16 >= v50)
        {
          v49 = 0;
        }

        v9 = v48 + v49;
        if (v50 <= v9)
        {
          v9 = 0;
        }

        *(a2 + 11) = v9;
        v51 = *(a2 + 10);
        if (*(v51 + 8) <= 0xFFuLL)
        {
          goto LABEL_67;
        }

        v52 = atomic_exchange((*(v51 + 16) + 128), v9);
        LODWORD(v9) = *(a2 + 31);
        if (v52 == 0x80000000 || v9)
        {
          goto LABEL_68;
        }

        goto LABEL_66;
      }

      goto LABEL_73;
    }

    __break(0xC471u);
LABEL_85:
    JUMPOUT(0x19E23B5F8);
  }

  if (v10 == -1)
  {
    __break(0xC471u);
    goto LABEL_85;
  }

  if (!v10)
  {
    __break(0xC471u);
    JUMPOUT(0x19E23B618);
  }

  v12 = *(v11 - 8);
  v13 = (v10 + ~(v10 << 32)) ^ ((v10 + ~(v10 << 32)) >> 22);
  v14 = 9 * ((v13 + ~(v13 << 13)) ^ ((v13 + ~(v13 << 13)) >> 8));
  v15 = (v14 ^ (v14 >> 15)) + ~((v14 ^ (v14 >> 15)) << 27);
  v16 = v12 & ((v15 >> 31) ^ v15);
  v17 = *(v11 + 8 * v16);
  if (v17 != v10)
  {
    v18 = 1;
    while (v17)
    {
      v16 = (v16 + v18) & v12;
      v17 = *(v11 + 8 * v16);
      ++v18;
      if (v17 == v10)
      {
        return;
      }
    }

    goto LABEL_16;
  }
}

void WebKit::RemoteResourceCacheProxy::recordFontUse(WebKit::RemoteResourceCacheProxy *this, WebCore::Font *a2)
{
  v4 = *(a2 + 13);
  if (v4)
  {
    ++*v4;
    WebKit::RemoteResourceCacheProxy::recordFontCustomPlatformDataUse(this, v4);
    WTF::RefCounted<WebCore::FontCustomPlatformData>::deref(v4);
  }

  v13[0] = WebCore::Font::renderingResourceIdentifier(a2);
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<unsigned long long &>(this + 8, v13, this + 12, &v17);
  if (v18 != 1)
  {
    v5 = *(this + 12);
    if (*(v17 + 8) == v5)
    {
      return;
    }

    *(v17 + 8) = v5;
    goto LABEL_6;
  }

  v6 = *(a2 + 13);
  if (v6)
  {
    v8 = *(v6 + 32);
    v7 = 1;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = *(this + 11);
  if (v9)
  {
    WebCore::FontPlatformData::attributes(v13, (a2 + 88));
    v20[0] = v8;
    v20[1] = v7;
    v19[0] = a2 + 240;
    v19[1] = v13;
    v19[2] = v20;
    WebKit::RemoteRenderingBackendProxy::send<Messages::RemoteRenderingBackend::CacheFont,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v9, v19, v9[10]);
    v10 = cf;
    cf = 0;
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = v15;
    v15 = 0;
    if (v11)
    {
      CFRelease(v11);
    }

    v12 = v14;
    v14 = 0;
    if (v12)
    {
      CFRelease(v12);
    }

LABEL_6:
    ++*(this + 20);
    return;
  }

  __break(0xC471u);
}

uint64_t *WebKit::RemoteResourceCacheProxy::recordFontCustomPlatformDataUse(uint64_t *this, const WebCore::FontCustomPlatformData *a2)
{
  v67 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 4);
  if (v2 == -1)
  {
    __break(0xC471u);
    goto LABEL_79;
  }

  if (!v2)
  {
    __break(0xC471u);
    JUMPOUT(0x19E23BD9CLL);
  }

  v4 = this;
  v5 = this[9];
  if (!v5)
  {
    this = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(this + 9, 0);
    v5 = v4[9];
    v2 = *(a2 + 4);
  }

  v6 = *(v5 - 8);
  v7 = (v2 + ~(v2 << 32)) ^ ((v2 + ~(v2 << 32)) >> 22);
  v8 = 9 * ((v7 + ~(v7 << 13)) ^ ((v7 + ~(v7 << 13)) >> 8));
  v9 = (v8 ^ (v8 >> 15)) + ~((v8 ^ (v8 >> 15)) << 27);
  v10 = v6 & ((v9 >> 31) ^ v9);
  v11 = (v5 + 16 * v10);
  v12 = *v11;
  if (!*v11)
  {
LABEL_13:
    *v11 = v2;
    v11[1] = v4[12];
    v15 = v4[9];
    if (v15)
    {
      v16 = *(v15 - 12) + 1;
    }

    else
    {
      v16 = 1;
    }

    *(v15 - 12) = v16;
    v18 = (*(v15 - 16) + v16);
    v19 = *(v15 - 4);
    if (v19 > 0x400)
    {
      if (v19 > 2 * v18)
      {
        goto LABEL_21;
      }
    }

    else if (3 * v19 > 4 * v18)
    {
LABEL_21:
      v20 = v4[11];
      if (!v20)
      {
        __break(0xC471u);
        JUMPOUT(0x19E23BDBCLL);
      }

      ++*a2;
      WebCore::FontCustomPlatformData::serializedData(&v60, a2);
      v21 = *(v20 + 10);
      v25.n128_f64[0] = WebKit::RemoteRenderingBackendProxy::connection(v20, v22, &v62);
      v26 = v62;
      if (!v62)
      {
LABEL_60:
        v58 = v61;
        v61 = 0;
        if (v58 && atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v58, v24);
        }

        v59 = v60;
        v60 = 0;
        if (v59)
        {
          if (atomic_fetch_add(v59 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v59 + 2);
            (*(*v59 + 8))(v59, v25);
          }
        }

        this = WTF::RefCounted<WebCore::FontCustomPlatformData>::deref(a2);
        goto LABEL_67;
      }

      v27 = *(v62 + 128);
      v28 = INFINITY;
      if (fabs(v27) != INFINITY)
      {
        WTF::ApproximateTime::now(v23);
        v28 = v27 + v29;
      }

      if (*(v26 + 64) == v21)
      {
        while (1)
        {
          IPC::StreamClientConnectionBuffer::tryAcquire(v26 + 72, buf, v28);
          if ((buf[16] & 1) == 0)
          {
            goto LABEL_55;
          }

          if (*&buf[8] <= 1uLL)
          {
            __break(0xC471u);
            JUMPOUT(0x19E23BDDCLL);
          }

          **buf = 3197;
          v31 = (*(v26 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v32 = *(v26 + 72);
          if (v31 + 16 >= v32)
          {
            v31 = 0;
          }

          v33 = v31 + 16;
          if (v32 <= v33)
          {
            v34 = 0;
          }

          else
          {
            v34 = v33;
          }

          *(v26 + 88) = v34;
          v35 = *(v26 + 80);
          if (*(v35 + 8) > 0xFFuLL)
          {
            atomic_exchange((*(v35 + 16) + 128), v34);
            *(v26 + 124) = 0;
            v36 = *(v26 + 8);
            v37 = IPC::Encoder::operator new(0x238, v30);
            *v37 = 1574;
            *(v37 + 2) = 0;
            *(v37 + 3) = 0;
            *(v37 + 1) = v21;
            *(v37 + 68) = 0;
            *(v37 + 70) = 0;
            *(v37 + 69) = 0;
            IPC::Encoder::encodeHeader(v37);
            v63 = v37;
            IPC::ArgumentCoder<WebCore::FontCustomPlatformSerializedData,void>::encode(v37, &v60);
            v38 = IPC::Connection::sendMessageImpl(v36, &v63, 1, 0);
            v39 = v63;
            v63 = 0;
            if (v39)
            {
              IPC::Encoder::~Encoder(v39, v24);
              bmalloc::api::tzoneFree(v40, v41);
              if (!v38)
              {
                goto LABEL_58;
              }
            }

            else if (!v38)
            {
              goto LABEL_58;
            }

            goto LABEL_55;
          }

LABEL_69:
          __break(1u);
LABEL_70:
          if (*(v26 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v26 + 100));
          }

          *(v26 + 124) = 0;
LABEL_54:
          *(v26 + 64) = v21;
        }
      }

      IPC::StreamClientConnectionBuffer::tryAcquire(v26 + 72, buf, v28);
      if (buf[16] != 1)
      {
LABEL_55:
        v55 = qword_1ED6410D0;
        if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
        {
          v56 = *(v20 + 10);
          v57 = IPC::errorAsString();
          *buf = 134218498;
          *&buf[4] = v56;
          *&buf[12] = 2082;
          *&buf[14] = "RemoteRenderingBackend_CacheFontCustomPlatformData";
          v65 = 2082;
          v66 = v57;
          _os_log_impl(&dword_19D52D000, v55, OS_LOG_TYPE_DEFAULT, "[renderingBackend=%llu] RemoteRenderingBackendProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x20u);
        }

        WebKit::RemoteRenderingBackendProxy::didBecomeUnresponsive(v20);
LABEL_58:
        v62 = 0;
        if (atomic_fetch_add(v26, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v26);
          v25.n128_f64[0] = IPC::StreamClientConnection::operator delete(v26);
        }

        goto LABEL_60;
      }

      v42 = *&buf[8];
      if (*&buf[8] > 1uLL)
      {
        v43 = *buf;
        **buf = 3198;
        v44 = v43 + 2;
        if (v42 - 2 >= (-v44 & 7 | 8uLL))
        {
          v45 = -v44 & 7;
          *(v44 + v45) = v21;
          v46 = 6;
          if (v45 > 6)
          {
            v46 = v45;
          }

          v47 = v46 + 10;
          v48 = (*(v26 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v49 = *(v26 + 72);
          if (v48 + 16 >= v49)
          {
            v48 = 0;
          }

          v50 = v47 + v48;
          if (v49 <= v50)
          {
            v50 = 0;
          }

          *(v26 + 88) = v50;
          v51 = *(v26 + 80);
          if (*(v51 + 8) <= 0xFFuLL)
          {
            goto LABEL_69;
          }

          v52 = atomic_exchange((*(v51 + 16) + 128), v50);
          v53 = *(v26 + 124);
          if (v52 == 0x80000000 || v53)
          {
            v54 = v53 + 1;
            *(v26 + 124) = v54;
            if (v54 >= *(v26 + 120))
            {
              goto LABEL_70;
            }
          }

          goto LABEL_54;
        }

        goto LABEL_55;
      }

      __break(0xC471u);
LABEL_79:
      JUMPOUT(0x19E23BD7CLL);
    }

    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v4 + 9, v11);
    goto LABEL_21;
  }

  v13 = 0;
  v14 = 1;
  while (v12 != v2)
  {
    if (v12 == -1)
    {
      v13 = v11;
    }

    v10 = (v10 + v14) & v6;
    v11 = (v5 + 16 * v10);
    v12 = *v11;
    ++v14;
    if (!*v11)
    {
      if (v13)
      {
        *v13 = 0;
        v13[1] = 0;
        --*(v4[9] - 16);
        v2 = *(a2 + 4);
        v11 = v13;
      }

      goto LABEL_13;
    }
  }

  v17 = v4[12];
  if (v11[1] != v17)
  {
    v11[1] = v17;
LABEL_67:
    ++*(v4 + 21);
  }

  return this;
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<unsigned long long &>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  if (*a2 == -1 || !v4)
  {
    __break(0xC471u);
    JUMPOUT(0x19E23BFBCLL);
  }

  v5 = a2;
  v6 = *result;
  if (!*result)
  {
    v25 = result;
    v27 = a4;
    v23 = a3;
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(result, 0);
    v5 = a2;
    result = v25;
    a3 = v23;
    a4 = v27;
    v6 = *v25;
    v4 = *a2;
  }

  v7 = *(v6 - 8);
  v8 = (v4 + ~(v4 << 32)) ^ ((v4 + ~(v4 << 32)) >> 22);
  v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
  v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
  v11 = v7 & ((v10 >> 31) ^ v10);
  v12 = (v6 + 16 * v11);
  v13 = *v12;
  if (*v12)
  {
    v14 = 0;
    v15 = 1;
    do
    {
      if (v13 == v4)
      {
        v16 = 0;
        v17 = v6 + 16 * *(v6 - 4);
        goto LABEL_9;
      }

      if (v13 == -1)
      {
        v14 = v12;
      }

      v11 = (v11 + v15) & v7;
      v12 = (v6 + 16 * v11);
      v13 = *v12;
      ++v15;
    }

    while (*v12);
    if (v14)
    {
      *v14 = 0;
      v14[1] = 0;
      --*(*result - 16);
      v4 = *v5;
      v12 = v14;
    }
  }

  *v12 = v4;
  v12[1] = *a3;
  v18 = *result;
  if (*result)
  {
    v19 = *(v18 - 12) + 1;
  }

  else
  {
    v19 = 1;
  }

  *(v18 - 12) = v19;
  v20 = (*(v18 - 16) + v19);
  v21 = *(v18 - 4);
  if (v21 > 0x400)
  {
    if (v21 > 2 * v20)
    {
      goto LABEL_19;
    }

LABEL_22:
    v26 = a4;
    v22 = result;
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(result, v12);
    v12 = result;
    v18 = *v22;
    if (*v22)
    {
      v21 = *(v18 - 4);
    }

    else
    {
      v21 = 0;
    }

    a4 = v26;
    goto LABEL_19;
  }

  if (3 * v21 <= 4 * v20)
  {
    goto LABEL_22;
  }

LABEL_19:
  v17 = v18 + 16 * v21;
  v16 = 1;
LABEL_9:
  *a4 = v12;
  *(a4 + 8) = v17;
  *(a4 + 16) = v16;
  return result;
}

void WebKit::RemoteResourceCacheProxy::willDestroyNativeImage(uint64_t a1, uint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = (a1 + 16);
  v5 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(*(a1 + 16), a2);
  v6 = v5;
  if (*v4)
  {
    v7 = *v4 + 8 * *(*v4 - 4);
    if (v7 != v5)
    {
      goto LABEL_3;
    }

LABEL_50:
    __break(0xC471u);
    goto LABEL_54;
  }

  if (!v5)
  {
    goto LABEL_50;
  }

  v7 = 0;
LABEL_3:
  if (v7 != v5)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(v4, v5);
  }

  v8 = *(a1 + 88);
  if (!v8)
  {
    __break(0xC471u);
    JUMPOUT(0x19E23C3D0);
  }

  v39 = a2;
  if (*(v8 + 8))
  {
    v38 = &v39;
    v9 = *(v8 + 10);
    WebKit::RemoteRenderingBackendProxy::connection(v8, v6, &v40);
    v11 = v40;
    if (v40)
    {
      v12 = *(v40 + 128);
      v13 = INFINITY;
      if (fabs(v12) != INFINITY)
      {
        WTF::ApproximateTime::now(v10);
        v13 = v12 + v14;
      }

      if (*(v11 + 64) == v9)
      {
LABEL_11:
        IPC::StreamClientConnectionBuffer::tryAcquire(v11 + 72, buf, v13);
        if (buf[16])
        {
          v15 = *&buf[8];
          if (*&buf[8] <= 1uLL)
          {
            __break(0xC471u);
            JUMPOUT(0x19E23C3F0);
          }

          v16 = *buf;
          **buf = 1599;
          v17 = v16 + 2;
          if (v15 - 2 >= (-v17 & 7 | 8uLL))
          {
            v18 = -v17 & 7;
            *(v17 + v18) = *v38;
            v19 = 6;
            if (v18 > 6)
            {
              v19 = v18;
            }

            v20 = v19 + 10;
            v21 = (*(v11 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v22 = *(v11 + 72);
            if (v21 + 16 >= v22)
            {
              v21 = 0;
            }

            v23 = v20 + v21;
            if (v22 <= v23)
            {
              v23 = 0;
            }

            *(v11 + 88) = v23;
            v24 = *(v11 + 80);
            if (*(v24 + 8) > 0xFFuLL)
            {
              if (atomic_exchange((*(v24 + 16) + 128), v23) == 0x80000000 || *(v11 + 124))
              {
                if (*(v11 + 112) == 1)
                {
                  MEMORY[0x19EB16320](*(v11 + 100));
                }

                *(v11 + 124) = 0;
              }

              goto LABEL_23;
            }

LABEL_48:
            __break(1u);
          }

          if ((buf[16] & 1) == 0)
          {
            goto LABEL_48;
          }

          IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v11, *buf, *&buf[8]);
          if (!IPC::Connection::send<Messages::RemoteRenderingBackend::ReleaseNativeImage>(*(v11 + 8), &v38, v9))
          {
LABEL_23:
            v40 = 0;
            if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v11);
              IPC::StreamClientConnection::operator delete(v11);
            }

            return;
          }
        }

LABEL_40:
        v35 = qword_1ED6410D0;
        if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
        {
          v36 = *(v8 + 10);
          v37 = IPC::errorAsString();
          *buf = 134218498;
          *&buf[4] = v36;
          *&buf[12] = 2082;
          *&buf[14] = "RemoteRenderingBackend_ReleaseNativeImage";
          v42 = 2082;
          v43 = v37;
          _os_log_impl(&dword_19D52D000, v35, OS_LOG_TYPE_DEFAULT, "[renderingBackend=%llu] RemoteRenderingBackendProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x20u);
        }

        WebKit::RemoteRenderingBackendProxy::didBecomeUnresponsive(v8);
        goto LABEL_23;
      }

      IPC::StreamClientConnectionBuffer::tryAcquire(v11 + 72, buf, v13);
      if (buf[16] != 1)
      {
        goto LABEL_40;
      }

      v25 = *&buf[8];
      if (*&buf[8] > 1uLL)
      {
        v26 = *buf;
        **buf = 3198;
        v27 = v26 + 2;
        if (v25 - 2 < (-v27 & 7 | 8uLL))
        {
          goto LABEL_40;
        }

        v28 = -v27 & 7;
        *(v27 + v28) = v9;
        v29 = 6;
        if (v28 > 6)
        {
          v29 = v28;
        }

        v30 = v29 + 10;
        v31 = (*(v11 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v32 = *(v11 + 72);
        if (v31 + 16 >= v32)
        {
          v31 = 0;
        }

        v33 = v30 + v31;
        if (v32 <= v33)
        {
          v33 = 0;
        }

        *(v11 + 88) = v33;
        v34 = *(v11 + 80);
        if (*(v34 + 8) <= 0xFFuLL)
        {
          goto LABEL_48;
        }

        IPC::StreamClientConnection::wakeUpServerBatched(v11, atomic_exchange((*(v34 + 16) + 128), v33) == 0x80000000);
        *(v11 + 64) = v9;
        goto LABEL_11;
      }

      __break(0xC471u);
LABEL_54:
      JUMPOUT(0x19E23C3B0);
    }
  }
}

void WebKit::RemoteResourceCacheProxy::willDestroyGradient(uint64_t a1, uint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = (a1 + 24);
  v5 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(*(a1 + 24), a2);
  v6 = v5;
  if (*v4)
  {
    v7 = *v4 + 8 * *(*v4 - 4);
    if (v7 != v5)
    {
      goto LABEL_3;
    }

LABEL_59:
    __break(0xC471u);
    goto LABEL_63;
  }

  if (!v5)
  {
    goto LABEL_59;
  }

  v7 = 0;
LABEL_3:
  if (v7 != v5)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(v4, v5);
  }

  v8 = *(a1 + 88);
  if (!v8)
  {
    __break(0xC471u);
    JUMPOUT(0x19E23C834);
  }

  v43 = a2;
  if (*(v8 + 8))
  {
    v42 = &v43;
    v9 = *(v8 + 10);
    WebKit::RemoteRenderingBackendProxy::connection(v8, v6, &v44);
    v11 = v44;
    if (v44)
    {
      v12 = *(v44 + 128);
      v13 = INFINITY;
      if (fabs(v12) != INFINITY)
      {
        WTF::ApproximateTime::now(v10);
        v13 = v12 + v14;
      }

      if (*(v11 + 64) == v9)
      {
LABEL_11:
        IPC::StreamClientConnectionBuffer::tryAcquire(v11 + 72, buf, v13);
        if (buf[16])
        {
          v15 = *&buf[8];
          if (*&buf[8] <= 1uLL)
          {
            __break(0xC471u);
            JUMPOUT(0x19E23C854);
          }

          v16 = *buf;
          **buf = 1595;
          v17 = v16 + 2;
          if (v15 - 2 >= (-v17 & 7 | 8uLL))
          {
            v18 = -v17 & 7;
            *(v17 + v18) = *v42;
            v19 = 6;
            if (v18 > 6)
            {
              v19 = v18;
            }

            v20 = v19 + 10;
            v21 = (*(v11 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v22 = *(v11 + 72);
            if (v21 + 16 >= v22)
            {
              v21 = 0;
            }

            v23 = v20 + v21;
            if (v22 <= v23)
            {
              v23 = 0;
            }

            *(v11 + 88) = v23;
            v24 = *(v11 + 80);
            if (*(v24 + 8) > 0xFFuLL)
            {
              if (atomic_exchange((*(v24 + 16) + 128), v23) == 0x80000000 || *(v11 + 124))
              {
                if (*(v11 + 112) == 1)
                {
                  MEMORY[0x19EB16320](*(v11 + 100));
                }

                *(v11 + 124) = 0;
              }

              goto LABEL_23;
            }

LABEL_57:
            __break(1u);
          }

          if ((buf[16] & 1) == 0)
          {
            goto LABEL_57;
          }

          IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v11, *buf, *&buf[8]);
          if (!IPC::Connection::send<Messages::RemoteRenderingBackend::ReleaseGradient>(*(v11 + 8), &v42, v9))
          {
LABEL_23:
            v44 = 0;
            if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v11);
              IPC::StreamClientConnection::operator delete(v11);
            }

            return;
          }
        }

LABEL_51:
        v39 = qword_1ED6410D0;
        if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
        {
          v40 = *(v8 + 10);
          v41 = IPC::errorAsString();
          *buf = 134218498;
          *&buf[4] = v40;
          *&buf[12] = 2082;
          *&buf[14] = "RemoteRenderingBackend_ReleaseGradient";
          v46 = 2082;
          v47 = v41;
          _os_log_impl(&dword_19D52D000, v39, OS_LOG_TYPE_DEFAULT, "[renderingBackend=%llu] RemoteRenderingBackendProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x20u);
        }

        WebKit::RemoteRenderingBackendProxy::didBecomeUnresponsive(v8);
        goto LABEL_23;
      }

      IPC::StreamClientConnectionBuffer::tryAcquire(v11 + 72, buf, v13);
      if (buf[16] != 1)
      {
        goto LABEL_51;
      }

      v25 = *&buf[8];
      if (*&buf[8] > 1uLL)
      {
        v26 = *buf;
        **buf = 3198;
        v27 = v26 + 2;
        if (v25 - 2 < (-v27 & 7 | 8uLL))
        {
          goto LABEL_51;
        }

        v28 = -v27 & 7;
        *(v27 + v28) = v9;
        v29 = 6;
        if (v28 > 6)
        {
          v29 = v28;
        }

        v30 = v29 + 10;
        v31 = (*(v11 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v32 = *(v11 + 72);
        if (v31 + 16 >= v32)
        {
          v31 = 0;
        }

        v33 = v30 + v31;
        if (v32 <= v33)
        {
          v33 = 0;
        }

        *(v11 + 88) = v33;
        v34 = *(v11 + 80);
        if (*(v34 + 8) <= 0xFFuLL)
        {
          goto LABEL_57;
        }

        v35 = atomic_exchange((*(v34 + 16) + 128), v33);
        v36 = *(v11 + 124);
        if (v35 == 0x80000000 || v36 != 0)
        {
          v38 = v36 + 1;
          *(v11 + 124) = v38;
          if (v38 >= *(v11 + 120))
          {
            if (*(v11 + 112) == 1)
            {
              MEMORY[0x19EB16320](*(v11 + 100));
            }

            *(v11 + 124) = 0;
          }
        }

        *(v11 + 64) = v9;
        goto LABEL_11;
      }

      __break(0xC471u);
LABEL_63:
      JUMPOUT(0x19E23C814);
    }
  }
}

void WebKit::RemoteResourceCacheProxy::willDestroyDecomposedGlyphs(uint64_t a1, uint64_t a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = (a1 + 32);
  v5 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(*(a1 + 32), a2);
  v6 = v5;
  if (*v4)
  {
    v7 = *v4 + 8 * *(*v4 - 4);
    if (v7 != v5)
    {
      goto LABEL_3;
    }

LABEL_63:
    __break(0xC471u);
    goto LABEL_67;
  }

  if (!v5)
  {
    goto LABEL_63;
  }

  v7 = 0;
LABEL_3:
  if (v7 != v5)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(v4, v5);
  }

  v8 = *(a1 + 88);
  if (!v8)
  {
    __break(0xC471u);
    JUMPOUT(0x19E23CCACLL);
  }

  v47 = a2;
  if (*(v8 + 8))
  {
    v46 = &v47;
    v9 = *(v8 + 10);
    WebKit::RemoteRenderingBackendProxy::connection(v8, v6, &v48);
    v11 = v48;
    if (v48)
    {
      v12 = *(v48 + 128);
      v13 = INFINITY;
      if (fabs(v12) != INFINITY)
      {
        WTF::ApproximateTime::now(v10);
        v13 = v12 + v14;
      }

      if (*(v11 + 64) == v9)
      {
LABEL_11:
        IPC::StreamClientConnectionBuffer::tryAcquire(v11 + 72, buf, v13);
        if (buf[16])
        {
          v15 = *&buf[8];
          if (*&buf[8] <= 1uLL)
          {
            __break(0xC471u);
            JUMPOUT(0x19E23CCCCLL);
          }

          v16 = *buf;
          **buf = 1591;
          v17 = v16 + 2;
          if (v15 - 2 >= (-v17 & 7 | 8uLL))
          {
            v18 = -v17 & 7;
            *(v17 + v18) = *v46;
            v19 = 6;
            if (v18 > 6)
            {
              v19 = v18;
            }

            v20 = v19 + 10;
            v21 = (*(v11 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v22 = *(v11 + 72);
            if (v21 + 16 >= v22)
            {
              v21 = 0;
            }

            v23 = v20 + v21;
            if (v22 <= v23)
            {
              v23 = 0;
            }

            *(v11 + 88) = v23;
            v24 = *(v11 + 80);
            if (*(v24 + 8) > 0xFFuLL)
            {
              v25 = atomic_exchange((*(v24 + 16) + 128), v23);
              v26 = *(v11 + 124);
              if (v25 == 0x80000000 || v26 != 0)
              {
                v28 = v26 + 1;
                *(v11 + 124) = v28;
                if (v28 >= *(v11 + 120))
                {
                  if (*(v11 + 112) == 1)
                  {
                    MEMORY[0x19EB16320](*(v11 + 100));
                  }

                  *(v11 + 124) = 0;
                }
              }

              goto LABEL_26;
            }

LABEL_61:
            __break(1u);
          }

          if ((buf[16] & 1) == 0)
          {
            goto LABEL_61;
          }

          IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v11, *buf, *&buf[8]);
          if (!IPC::Connection::send<Messages::RemoteRenderingBackend::ReleaseDecomposedGlyphs>(*(v11 + 8), &v46, v9))
          {
LABEL_26:
            v48 = 0;
            if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v11);
              IPC::StreamClientConnection::operator delete(v11);
            }

            return;
          }
        }

LABEL_55:
        v43 = qword_1ED6410D0;
        if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
        {
          v44 = *(v8 + 10);
          v45 = IPC::errorAsString();
          *buf = 134218498;
          *&buf[4] = v44;
          *&buf[12] = 2082;
          *&buf[14] = "RemoteRenderingBackend_ReleaseDecomposedGlyphs";
          v50 = 2082;
          v51 = v45;
          _os_log_impl(&dword_19D52D000, v43, OS_LOG_TYPE_DEFAULT, "[renderingBackend=%llu] RemoteRenderingBackendProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x20u);
        }

        WebKit::RemoteRenderingBackendProxy::didBecomeUnresponsive(v8);
        goto LABEL_26;
      }

      IPC::StreamClientConnectionBuffer::tryAcquire(v11 + 72, buf, v13);
      if (buf[16] != 1)
      {
        goto LABEL_55;
      }

      v29 = *&buf[8];
      if (*&buf[8] > 1uLL)
      {
        v30 = *buf;
        **buf = 3198;
        v31 = v30 + 2;
        if (v29 - 2 < (-v31 & 7 | 8uLL))
        {
          goto LABEL_55;
        }

        v32 = -v31 & 7;
        *(v31 + v32) = v9;
        v33 = 6;
        if (v32 > 6)
        {
          v33 = v32;
        }

        v34 = v33 + 10;
        v35 = (*(v11 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v36 = *(v11 + 72);
        if (v35 + 16 >= v36)
        {
          v35 = 0;
        }

        v37 = v34 + v35;
        if (v36 <= v37)
        {
          v37 = 0;
        }

        *(v11 + 88) = v37;
        v38 = *(v11 + 80);
        if (*(v38 + 8) <= 0xFFuLL)
        {
          goto LABEL_61;
        }

        v39 = atomic_exchange((*(v38 + 16) + 128), v37);
        v40 = *(v11 + 124);
        if (v39 == 0x80000000 || v40 != 0)
        {
          v42 = v40 + 1;
          *(v11 + 124) = v42;
          if (v42 >= *(v11 + 120))
          {
            if (*(v11 + 112) == 1)
            {
              MEMORY[0x19EB16320](*(v11 + 100));
            }

            *(v11 + 124) = 0;
          }
        }

        *(v11 + 64) = v9;
        goto LABEL_11;
      }

      __break(0xC471u);
LABEL_67:
      JUMPOUT(0x19E23CC8CLL);
    }
  }
}

void WebKit::RemoteResourceCacheProxy::willDestroyFilter(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v59 = *MEMORY[0x1E69E9840];
  v4 = (a1 + 40);
  v5 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(*(a1 + 40), a2);
  v6 = v5;
  if (*v4)
  {
    v7 = *v4 + 8 * *(*v4 - 4);
    if (v7 != v5)
    {
      goto LABEL_3;
    }

LABEL_68:
    __break(0xC471u);
    goto LABEL_73;
  }

  if (!v5)
  {
    goto LABEL_68;
  }

  v7 = 0;
LABEL_3:
  if (v7 != v5)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(v4, v5);
  }

  v8 = *(a1 + 88);
  if (!v8)
  {
    __break(0xC471u);
    JUMPOUT(0x19E23D1B8);
  }

  if (*(v8 + 64))
  {
    v9 = *(v8 + 80);
    WebKit::RemoteRenderingBackendProxy::connection(*(a1 + 88), v6, &v54);
    v11 = v54;
    if (v54)
    {
      v12 = *(v54 + 128);
      v13 = INFINITY;
      if (fabs(v12) != INFINITY)
      {
        WTF::ApproximateTime::now(v10);
        v13 = v12 + v14;
      }

      if (*(v11 + 64) != v9)
      {
        v15 = IPC::StreamClientConnectionBuffer::tryAcquire(v11 + 72, buf, v13);
        if (buf[16] != 1)
        {
          goto LABEL_42;
        }

        v27 = *&buf[8];
        if (*&buf[8] <= 1uLL)
        {
          __break(0xC471u);
          JUMPOUT(0x19E23D200);
        }

        v28 = *buf;
        **buf = 3198;
        v29 = v28 + 2;
        if (v27 - 2 < (-v29 & 7 | 8uLL))
        {
          goto LABEL_42;
        }

        v30 = -v29 & 7;
        *(v29 + v30) = v9;
        v31 = 6;
        if (v30 > 6)
        {
          v31 = v30;
        }

        v32 = v31 + 10;
        v33 = (*(v11 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v34 = *(v11 + 72);
        if (v33 + 16 >= v34)
        {
          v33 = 0;
        }

        v35 = v32 + v33;
        if (v34 <= v35)
        {
          v35 = 0;
        }

        *(v11 + 88) = v35;
        v36 = *(v11 + 80);
        if (*(v36 + 8) <= 0xFFuLL)
        {
          goto LABEL_64;
        }

        v37 = atomic_exchange((*(v36 + 16) + 128), v35);
        v38 = *(v11 + 124);
        if (v37 == 0x80000000 || v38 != 0)
        {
          v40 = v38 + 1;
          *(v11 + 124) = v40;
          if (v40 >= *(v11 + 120))
          {
            if (*(v11 + 112) == 1)
            {
              MEMORY[0x19EB16320](*(v11 + 100));
            }

            *(v11 + 124) = 0;
          }
        }

        *(v11 + 64) = v9;
      }

      v15 = IPC::StreamClientConnectionBuffer::tryAcquire(v11 + 72, buf, v13);
      if ((buf[16] & 1) == 0)
      {
LABEL_42:
        v41 = qword_1ED6410D0;
        if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
        {
          v42 = *(v8 + 80);
          v43 = IPC::errorAsString();
          *buf = 134218498;
          *&buf[4] = v42;
          *&buf[12] = 2082;
          *&buf[14] = "RemoteRenderingBackend_ReleaseFilter";
          v57 = 2082;
          v58 = v43;
          _os_log_impl(&dword_19D52D000, v41, OS_LOG_TYPE_DEFAULT, "[renderingBackend=%llu] RemoteRenderingBackendProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x20u);
        }

        WebKit::RemoteRenderingBackendProxy::didBecomeUnresponsive(v8);
        goto LABEL_45;
      }

      v17 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
        __break(0xC471u);
        JUMPOUT(0x19E23D1D8);
      }

      v18 = *buf;
      **buf = 1592;
      v19 = v18 + 2;
      if (v17 - 2 >= (-v19 & 7 | 8uLL))
      {
        v20 = -v19 & 7;
        *(v19 + v20) = v2;
        v21 = 6;
        if (v20 > 6)
        {
          v21 = v20;
        }

        v22 = v21 + 10;
        v23 = (*(v11 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v24 = *(v11 + 72);
        if (v23 + 16 >= v24)
        {
          v23 = 0;
        }

        v25 = v22 + v23;
        if (v24 <= v25)
        {
          v25 = 0;
        }

        *(v11 + 88) = v25;
        v26 = *(v11 + 80);
        if (*(v26 + 8) > 0xFFuLL)
        {
          if (atomic_exchange((*(v26 + 16) + 128), v25) == 0x80000000 || *(v11 + 124))
          {
            if (*(v11 + 112) == 1)
            {
              MEMORY[0x19EB16320](*(v11 + 100));
            }

            *(v11 + 124) = 0;
          }

          goto LABEL_45;
        }

        goto LABEL_64;
      }

      v53 = v9;
      if ((buf[16] & 1) == 0)
      {
LABEL_64:
        __break(1u);
LABEL_65:
        IPC::Encoder::~Encoder(v15, v16);
        bmalloc::api::tzoneFree(v51, v52);
        if (v2)
        {
          goto LABEL_42;
        }

LABEL_45:
        v54 = 0;
        if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v11);
          IPC::StreamClientConnection::operator delete(v11);
        }

        return;
      }

      if (*&buf[8] > 1uLL)
      {
        **buf = 3197;
        v44 = (*(v11 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v45 = *(v11 + 72);
        if (v44 + 16 >= v45)
        {
          v44 = 0;
        }

        v46 = v44 + 16;
        if (v45 <= v46)
        {
          v47 = 0;
        }

        else
        {
          v47 = v46;
        }

        *(v11 + 88) = v47;
        v48 = *(v11 + 80);
        if (*(v48 + 8) > 0xFFuLL)
        {
          atomic_exchange((*(v48 + 16) + 128), v47);
          *(v11 + 124) = 0;
          v49 = *(v11 + 8);
          v50 = IPC::Encoder::operator new(0x238, v16);
          *v50 = 1592;
          *(v50 + 2) = 0;
          *(v50 + 3) = 0;
          *(v50 + 1) = v53;
          *(v50 + 68) = 0;
          *(v50 + 70) = 0;
          *(v50 + 69) = 0;
          IPC::Encoder::encodeHeader(v50);
          v55 = v50;
          IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v50, v2);
          LODWORD(v2) = IPC::Connection::sendMessageImpl(v49, &v55, 1, 0);
          v15 = v55;
          v55 = 0;
          if (v15)
          {
            goto LABEL_65;
          }

          if (!v2)
          {
            goto LABEL_45;
          }

          goto LABEL_42;
        }

        goto LABEL_64;
      }

      __break(0xC471u);
LABEL_73:
      JUMPOUT(0x19E23D198);
    }
  }
}

uint64_t WTF::WeakPtrFactory<WebCore::RenderingResourceObserver,WTF::DefaultWeakPtrImpl>::revokeAll(uint64_t *a1, void *a2)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    *(result + 8) = 0;
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, a2);
    }
  }

  return result;
}

void WebKit::RemoteResourceCacheProxy::finalizeRenderingUpdateForFonts(WebKit::RemoteResourceCacheProxy *this, uint64_t a2)
{
  v74 = *MEMORY[0x1E69E9840];
  v4 = (this + 64);
  v3 = *(this + 8);
  if (v3)
  {
    v5 = *(v3 - 12);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(this + 20);
  if (v6 > v5)
  {
    __break(0xC471u);
    goto LABEL_117;
  }

  if (v5 == v6)
  {
    goto LABEL_5;
  }

  v67 = 0;
  if (!v3)
  {
    v11 = 0;
    v10 = 0;
    goto LABEL_20;
  }

  v10 = *(v3 - 4);
  v11 = (v3 + 16 * v10);
  if (!*(v3 - 12))
  {
LABEL_20:
    v13 = v11;
    v11 = (v3 + 16 * v10);
    goto LABEL_21;
  }

  if (!v10)
  {
    v13 = v3;
    goto LABEL_22;
  }

  v12 = 16 * v10;
  v13 = v3;
  while ((*v13 + 1) <= 1)
  {
    v13 += 2;
    v12 -= 16;
    if (!v12)
    {
      v13 = v11;
      break;
    }
  }

LABEL_21:
  if (!v3)
  {
    v14 = 0;
    goto LABEL_23;
  }

LABEL_22:
  v14 = (v3 + 16 * *(v3 - 4));
LABEL_23:
  if (v14 == v13)
  {
    goto LABEL_54;
  }

  v15 = *(this + 12);
  do
  {
    if ((v15 - v13[1]) >= 4)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(buf, &v67, v13);
      v16 = *(this + 11);
      if (!v16)
      {
        __break(0xC471u);
        JUMPOUT(0x19E23D938);
      }

      v69 = *v13;
      if (*(v16 + 8))
      {
        v68 = &v69;
        v17 = *(v16 + 10);
        WebKit::RemoteRenderingBackendProxy::connection(v16, a2, &v70);
        v19 = v70;
        if (v70)
        {
          v20 = *(v70 + 128);
          v21 = INFINITY;
          if (fabs(v20) != INFINITY)
          {
            WTF::ApproximateTime::now(v18);
            v21 = v20 + v22;
          }

          if (*(v19 + 64) != v17)
          {
            IPC::StreamClientConnectionBuffer::tryAcquire(v19 + 72, buf, v21);
            if (buf[16] != 1)
            {
              goto LABEL_100;
            }

            v47 = *&buf[8];
            if (*&buf[8] <= 1uLL)
            {
              __break(0xC471u);
              JUMPOUT(0x19E23D918);
            }

            v48 = *buf;
            **buf = 3198;
            v49 = v48 + 2;
            if (v47 - 2 < (-v49 & 7 | 8uLL))
            {
              goto LABEL_110;
            }

            v50 = -v49 & 7;
            *(v49 + v50) = v17;
            if (v50 != 7)
            {
              v50 = 6;
            }

            v51 = (*(v19 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v53 = *(v19 + 72);
            v52 = *(v19 + 80);
            v54 = v50 + 10;
            if (v51 + 16 >= v53)
            {
              v51 = 0;
            }

            v55 = v54 + v51;
            if (v53 <= v55)
            {
              v55 = 0;
            }

            *(v19 + 88) = v55;
            if (*(v52 + 8) <= 0xFFuLL)
            {
              goto LABEL_109;
            }

            IPC::StreamClientConnection::wakeUpServerBatched(v19, atomic_exchange((*(v52 + 16) + 128), v55) == 0x80000000);
            *(v19 + 64) = v17;
          }

          IPC::StreamClientConnectionBuffer::tryAcquire(v19 + 72, buf, v21);
          if (buf[16])
          {
            v23 = *&buf[8];
            if (*&buf[8] <= 1uLL)
            {
              __break(0xC471u);
              JUMPOUT(0x19E23D958);
            }

            v24 = *buf;
            **buf = 1593;
            v25 = v24 + 2;
            if (v23 - 2 >= (-v25 & 7 | 8uLL))
            {
              v26 = -v25 & 7;
              *(v25 + v26) = *v68;
              v27 = 6;
              if (v26 > 6)
              {
                v27 = v26;
              }

              v28 = (*(v19 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
              v29 = *(v19 + 72);
              if (v28 + 16 >= v29)
              {
                v28 = 0;
              }

              v30 = v27 + 10 + v28;
              if (v29 <= v30)
              {
                v30 = 0;
              }

              *(v19 + 88) = v30;
              v31 = *(v19 + 80);
              if (*(v31 + 8) > 0xFFuLL)
              {
                if (atomic_exchange((*(v31 + 16) + 128), v30) == 0x80000000 || *(v19 + 124))
                {
                  if (*(v19 + 112) == 1)
                  {
                    MEMORY[0x19EB16320](*(v19 + 100));
                  }

                  *(v19 + 124) = 0;
                }

                goto LABEL_48;
              }

              goto LABEL_109;
            }

            v66 = v11;
            if (buf[16])
            {
              IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v19, *buf, *&buf[8]);
              if (!IPC::Connection::send<Messages::RemoteRenderingBackend::ReleaseFont>(*(v19 + 8), &v68, v17))
              {
LABEL_48:
                v70 = 0;
                if (atomic_fetch_add(v19, 0xFFFFFFFF) == 1)
                {
                  atomic_store(1u, v19);
                  IPC::StreamClientConnection::operator delete(v19);
                }

                goto LABEL_26;
              }

LABEL_101:
              v63 = qword_1ED6410D0;
              if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
              {
                v64 = *(v16 + 10);
                v65 = IPC::errorAsString();
                *buf = 134218498;
                *&buf[4] = v64;
                *&buf[12] = 2082;
                *&buf[14] = "RemoteRenderingBackend_ReleaseFont";
                v72 = 2082;
                v73 = v65;
                _os_log_impl(&dword_19D52D000, v63, OS_LOG_TYPE_DEFAULT, "[renderingBackend=%llu] RemoteRenderingBackendProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x20u);
              }

              WebKit::RemoteRenderingBackendProxy::didBecomeUnresponsive(v16);
              v11 = v66;
              goto LABEL_48;
            }

LABEL_109:
            __break(1u);
LABEL_110:
            v66 = v11;
            goto LABEL_101;
          }

LABEL_100:
          v66 = v11;
          goto LABEL_101;
        }
      }
    }

    do
    {
LABEL_26:
      v13 += 2;
    }

    while (v13 != v11 && (*v13 + 1) <= 1);
  }

  while (v13 != v14);
  v3 = *v4;
LABEL_54:
  if (v3)
  {
    v32 = *(v3 - 4);
    if (!v32)
    {
      goto LABEL_71;
    }

    v33 = 0;
    v34 = v67;
    v35 = *(v3 - 4);
    do
    {
      --v35;
      v36 = (v3 + 16 * v35);
      v37 = *v36;
      if ((*v36 + 1) >= 2 && v34 != 0)
      {
        v39 = *(v34 - 8);
        v40 = (v37 + ~(v37 << 32)) ^ ((v37 + ~(v37 << 32)) >> 22);
        v41 = 9 * ((v40 + ~(v40 << 13)) ^ ((v40 + ~(v40 << 13)) >> 8));
        v42 = (v41 ^ (v41 >> 15)) + ~((v41 ^ (v41 >> 15)) << 27);
        v43 = v39 & ((v42 >> 31) ^ v42);
        v44 = *(v34 + 8 * v43);
        if (v44 == v37)
        {
LABEL_65:
          *v36 = -1;
          ++v33;
        }

        else
        {
          a2 = 1;
          while (v44)
          {
            v43 = (v43 + a2) & v39;
            v44 = *(v34 + 8 * v43);
            a2 = (a2 + 1);
            if (v44 == v37)
            {
              goto LABEL_65;
            }
          }
        }
      }
    }

    while (v35);
    if (v33)
    {
      v46 = *(v3 - 16) + v33;
      v45 = *(v3 - 12) - v33;
      *(v3 - 16) = v46;
      *(v3 - 12) = v45;
    }

    else
    {
LABEL_71:
      v45 = *(v3 - 12);
    }

    if (v32 >= 9 && 6 * v45 < v32)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::shrinkToBestSize(v4);
    }
  }

  if (v67)
  {
    WTF::fastFree((v67 - 16), a2);
  }

LABEL_5:
  v7 = *(this + 9);
  if (v7)
  {
    v8 = *(v7 - 3);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(this + 21);
  if (v9 > v8)
  {
    __break(0xC471u);
    JUMPOUT(0x19E23D8F8);
  }

  if (v8 != v9)
  {
    v70 = 0;
    v56 = *(this + 12);
    v57 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(v7);
    v58 = v57;
    v60 = v59;
    if (v7)
    {
      v7 += 2 * *(v7 - 1);
    }

    if (v7 != v57)
    {
      do
      {
        if ((v56 - v58[1]) >= 4)
        {
          WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(buf, &v70, v58);
          v61 = *(this + 11);
          if (!v61)
          {
            __break(0xC471u);
LABEL_117:
            JUMPOUT(0x19E23D8D8);
          }

          WebKit::RemoteRenderingBackendProxy::releaseFontCustomPlatformData(v61, *v58);
        }

        do
        {
          v58 += 2;
        }

        while (v58 != v60 && (*v58 + 1) <= 1);
      }

      while (v58 != v7);
    }

    WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::removeIf<WebKit::RemoteResourceCacheProxy::finalizeRenderingUpdateForFonts(void)::$_1>(this + 9, &v70);
    if (v70)
    {
      WTF::fastFree((v70 - 16), v62);
    }
  }
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::removeIf<WebKit::RemoteResourceCacheProxy::finalizeRenderingUpdateForFonts(void)::$_1>(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = *(v2 - 4);
    if (!v3)
    {
      goto LABEL_14;
    }

    v4 = 0;
    v5 = *(v2 - 4);
    do
    {
      --v5;
      v6 = (v2 + 16 * v5);
      v7 = *v6;
      if ((*v6 + 1) >= 2)
      {
        v8 = *a2;
        if (*a2)
        {
          v9 = *(v8 - 8);
          v10 = (v7 + ~(v7 << 32)) ^ ((v7 + ~(v7 << 32)) >> 22);
          v11 = 9 * ((v10 + ~(v10 << 13)) ^ ((v10 + ~(v10 << 13)) >> 8));
          v12 = (v11 ^ (v11 >> 15)) + ~((v11 ^ (v11 >> 15)) << 27);
          v13 = v9 & ((v12 >> 31) ^ v12);
          v14 = *(v8 + 8 * v13);
          if (v14 == v7)
          {
LABEL_10:
            *v6 = -1;
            ++v4;
          }

          else
          {
            v15 = 1;
            while (v14)
            {
              v13 = (v13 + v15) & v9;
              v14 = *(v8 + 8 * v13);
              ++v15;
              if (v14 == v7)
              {
                goto LABEL_10;
              }
            }
          }
        }
      }
    }

    while (v5);
    if (v4)
    {
      v16 = *(v2 - 16) + v4;
      v17 = *(v2 - 12) - v4;
      *(v2 - 16) = v16;
      *(v2 - 12) = v17;
    }

    else
    {
LABEL_14:
      v17 = *(v2 - 12);
    }

    if (v3 >= 9 && 6 * v17 < v3)
    {
      return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::shrinkToBestSize(result);
    }
  }

  return result;
}

void WebKit::WebGPU::RemoteAdapterProxy::~RemoteAdapterProxy(WebKit::WebGPU::RemoteAdapterProxy *this)
{
  v2 = *(*(this + 9) + 80);
  atomic_fetch_add(v2, 1u);
  v3 = *(this + 7);
  v4 = *(v2 + 128);
  v5 = INFINITY;
  if (fabs(v4) != INFINITY)
  {
    WTF::ApproximateTime::now(this);
    v5 = v4 + v6;
  }

  if (*(v2 + 64) != v3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v2 + 72, &v33, v5);
    if (v35 != 1)
    {
      goto LABEL_16;
    }

    v20 = v34;
    if (v34 <= 1)
    {
LABEL_61:
      __break(0xC471u);
      JUMPOUT(0x19E23DE20);
    }

    v21 = v33;
    *v33 = 3198;
    v22 = v21 + 1;
    if (v20 - 2 < (-v22 & 7 | 8uLL))
    {
      goto LABEL_16;
    }

    v23 = -v22 & 7;
    *(v22 + v23) = v3;
    if (v23 != 7)
    {
      v23 = 6;
    }

    v24 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v26 = *(v2 + 72);
    v25 = *(v2 + 80);
    v27 = v23 + 10;
    if (v24 + 16 >= v26)
    {
      v24 = 0;
    }

    v28 = v27 + v24;
    if (v26 <= v28)
    {
      v28 = 0;
    }

    *(v2 + 88) = v28;
    if (*(v25 + 8) <= 0xFFuLL)
    {
      goto LABEL_60;
    }

    v29 = atomic_exchange((*(v25 + 16) + 128), v28);
    v30 = *(v2 + 124);
    if (v29 == 0x80000000 || v30 != 0)
    {
      v32 = v30 + 1;
      *(v2 + 124) = v32;
      if (v32 >= *(v2 + 120))
      {
        if (*(v2 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v2 + 100));
        }

        *(v2 + 124) = 0;
      }
    }

    *(v2 + 64) = v3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v2 + 72, &v33, v5);
  if (v35 != 1)
  {
    goto LABEL_16;
  }

  if (v34 <= 1)
  {
    goto LABEL_61;
  }

  *v33 = 925;
  v9 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v11 = *(v2 + 72);
  v10 = *(v2 + 80);
  if (v9 + 16 >= v11)
  {
    v9 = 0;
  }

  v12 = v9 + 16;
  if (v11 <= v12)
  {
    v12 = 0;
  }

  *(v2 + 88) = v12;
  if (*(v10 + 8) <= 0xFFuLL)
  {
    goto LABEL_60;
  }

  if (atomic_exchange((*(v10 + 16) + 128), v12) == 0x80000000 || *(v2 + 124))
  {
    if (*(v2 + 112) == 1)
    {
      MEMORY[0x19EB16320](*(v2 + 100));
    }

    *(v2 + 124) = 0;
  }

LABEL_16:
  if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2);
    v8.n128_f64[0] = IPC::StreamClientConnection::operator delete(v2);
  }

  v13 = *(this + 9);
  *(this + 9) = 0;
  if (v13 && atomic_fetch_add(v13 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v13 + 7);
    (*(*v13 + 24))(v13, v8);
  }

  v14 = *(this + 8);
  *(this + 8) = 0;
  if (v14)
  {
    if (v14[2] == 1)
    {
      (*(*v14 + 8))(v14, v8);
    }

    else
    {
      --v14[2];
    }
  }

  *this = &unk_1F1125510;
  v15 = *(this + 5);
  *(this + 5) = 0;
  if (v15)
  {
    if (*v15 == 1)
    {
      WTF::fastFree(v15, v7);
    }

    else
    {
      --*v15;
    }
  }

  v16 = *(this + 4);
  *(this + 4) = 0;
  if (v16)
  {
    WTF::RefCounted<WebCore::WebGPU::SupportedFeatures>::deref(v16, v7);
  }

  v17 = *(this + 3);
  *(this + 3) = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v7);
  }

  if (*(this + 4) != 1)
  {
    __break(0xC471u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v18 = *(this + 1);
  if (v18)
  {
    *(v18 + 8) = 0;
    v19 = *(this + 1);
    *(this + 1) = 0;
    if (v19)
    {
      if (atomic_fetch_add(v19, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v19);
        WTF::fastFree(v19, v7);
      }
    }
  }
}

{
  WebKit::WebGPU::RemoteAdapterProxy::~RemoteAdapterProxy(this);

  bmalloc::api::tzoneFree(v1, v2);
}

WTF::StringImpl *WebKit::WebGPU::RemoteAdapterProxy::requestDevice(void *a1, uint64_t a2, uint64_t *a3)
{
  v5 = a1[8];
  ++v5[2];
  WebKit::WebGPU::ConvertToBackingContext::convertToBacking(a2, &v125);
  if (v129)
  {
    if (WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected != 1)
    {
      IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      if (WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
      {
        __break(0xC471u);
        goto LABEL_160;
      }

      v7 = IdentifierInternal;
      v8 = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      if ((v129 & 1) == 0)
      {
LABEL_160:
        __break(1u);
        goto LABEL_161;
      }

      v9 = v8;
      v10 = *(a1[9] + 80);
      atomic_fetch_add(v10, 1u);
      v11 = a1[7];
      v12 = *(v10 + 128);
      v13 = INFINITY;
      if (fabs(v12) != INFINITY)
      {
        WTF::ApproximateTime::now(v8);
        v13 = v12 + v14;
      }

      if (*(v10 + 64) == v11)
      {
        goto LABEL_8;
      }

      IPC::StreamClientConnectionBuffer::tryAcquire(v10 + 72, &v130, v13);
      if (v131[0] != 1)
      {
        v115 = 16;
        goto LABEL_157;
      }

      v101 = *(&v130 + 1);
      if (*(&v130 + 1) > 1uLL)
      {
        v102 = v130;
        *v130 = 3198;
        v103 = v102 + 2;
        if (v101 - 2 >= (-v103 & 7 | 8uLL))
        {
          v104 = -v103 & 7;
          *(v103 + v104) = v11;
          v105 = 6;
          if (v104 > 6)
          {
            v105 = v104;
          }

          v106 = v105 + 10;
          v107 = (*(v10 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v108 = *(v10 + 72);
          if (v107 + 16 >= v108)
          {
            v107 = 0;
          }

          v109 = v106 + v107;
          if (v108 <= v109)
          {
            v109 = 0;
          }

          *(v10 + 88) = v109;
          v110 = *(v10 + 80);
          if (*(v110 + 8) <= 0xFFuLL)
          {
            goto LABEL_160;
          }

          v111 = atomic_exchange((*(v110 + 16) + 128), v109);
          v112 = *(v10 + 124);
          if (v111 == 0x80000000 || v112 != 0)
          {
            v114 = v112 + 1;
            *(v10 + 124) = v114;
            if (v114 >= *(v10 + 120))
            {
              if (*(v10 + 112) == 1)
              {
                MEMORY[0x19EB16320](*(v10 + 100));
              }

              *(v10 + 124) = 0;
            }
          }

          *(v10 + 64) = v11;
LABEL_8:
          IPC::StreamClientConnectionBuffer::tryAcquire(v10 + 72, &v134, v13);
          if (v136)
          {
            if (WTF::ObjectIdentifierGeneric<IPC::SyncRequestIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
            {
LABEL_161:
              __break(0xC471u);
              JUMPOUT(0x19E23EC90);
            }

            v15 = v134;
            v16 = v135;
            v17 = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
            if ((IPC::Connection::pushPendingSyncRequestID(*(v10 + 8), v17) & 1) == 0)
            {
              LOBYTE(v140) = 12;
              v152 = 1;
              std::optional<IPC::ConnectionSendSyncResult<Messages::RemoteAdapter::RequestDevice>>::optional[abi:sn200100]<IPC::ConnectionSendSyncResult<Messages::RemoteAdapter::RequestDevice>,0>(&v130, &v140);
              mpark::detail::move_constructor<mpark::detail::traits<IPC::ConnectionSendSyncResult<Messages::RemoteAdapter::RequestDevice>::ReplyData,IPC::Error>,(mpark::detail::Trait)1>::~move_constructor(&v140, v42);
              goto LABEL_62;
            }

            v141 = v16;
            if (v16 <= 1)
            {
              __break(0xC471u);
              JUMPOUT(0x19E23ECB0);
            }

            *v15 = 4016;
            v18 = v15 + 2;
            *&v140 = v18;
            *(&v140 + 1) = v16 - 2;
            v19 = -v18 & 7 | 8;
            if (v16 - 2 < v19)
            {
              v140 = 0uLL;
            }

            else
            {
              *&v18[-v18 & 7] = v17;
              if (*(&v140 + 1) < v19)
              {
                goto LABEL_160;
              }

              *&v140 = v140 + v19;
              *(&v140 + 1) -= v19;
            }

            IPC::ArgumentCoder<WebKit::WebGPU::DeviceDescriptor,void>::encode(&v140, &v125);
            v21 = -v140 & 7 | 8;
            if (*(&v140 + 1) < v21)
            {
              goto LABEL_152;
            }

            *(v140 + (-v140 & 7)) = v7;
            v22 = *(&v140 + 1) - v21;
            if (*(&v140 + 1) < v21)
            {
              goto LABEL_160;
            }

            v23 = v140 + v21;
            *&v140 = v23;
            *(&v140 + 1) = v22;
            v24 = -v23 & 7 | 8;
            if (v22 < v24)
            {
LABEL_152:
              IPC::Connection::popPendingSyncRequestID(*(v10 + 8));
              LOBYTE(v130) = 0;
              v133 = 0;
              goto LABEL_62;
            }

            *(v23 + (-v23 & 7)) = v9;
            v25 = *(&v140 + 1) - v24;
            if (*(&v140 + 1) < v24)
            {
              goto LABEL_160;
            }

            *&v140 = v140 + v24;
            *(&v140 + 1) -= v24;
            v26 = v141 - v25;
            if (v141 - v25 <= 0x10)
            {
              v26 = 16;
            }

            v27 = (*(v10 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v28 = *(v10 + 72);
            if (v27 + 16 >= v28)
            {
              v27 = 0;
            }

            v29 = v27 + v26;
            if (v28 <= v29)
            {
              v29 = 0;
            }

            *(v10 + 88) = v29;
            v30 = *(v10 + 80);
            if (*(v30 + 8) <= 0xFFuLL)
            {
              goto LABEL_160;
            }

            if (atomic_exchange((*(v30 + 16) + 128), v29) == 0x80000000 || *(v10 + 124))
            {
              if (*(v10 + 112) == 1)
              {
                MEMORY[0x19EB16320](*(v10 + 100));
              }

              *(v10 + 124) = 0;
            }

            v123 = v9;
            while (1)
            {
              v31 = *(v10 + 80);
              if (*(v31 + 8) <= 0xFFuLL)
              {
                goto LABEL_160;
              }

              v32 = atomic_exchange(*(v31 + 16), 0x80000000uLL);
              v33 = *(v10 + 80);
              if (*(v33 + 8) <= 0xFFuLL)
              {
                goto LABEL_160;
              }

              if (!(v32 | atomic_load_explicit((*(v33 + 16) + 128), memory_order_acquire) & 0xFFFFFFFF7FFFFFFFLL))
              {
                break;
              }

              if (*(v10 + 112) == 1)
              {
                v34 = IPC::Semaphore::waitFor((v10 + 104), v13);
                if (v34)
                {
                  WTF::ApproximateTime::now(v34);
                  if (v35 < v13)
                  {
                    continue;
                  }
                }
              }

              v36 = v7;
              IPC::Connection::popPendingSyncRequestID(*(v10 + 8));
              v38 = 17;
              goto LABEL_51;
            }

            v43 = *(v10 + 80);
            if (*(v43 + 8) <= 0xFFuLL)
            {
              goto LABEL_160;
            }

            atomic_store(0, *(v43 + 16));
            *(v10 + 88) = 0;
            v44 = *(v10 + 80);
            v45 = *(v44 + 8);
            if (v45 <= 0xFF)
            {
              goto LABEL_160;
            }

            v36 = v7;
            v46 = *(v10 + 72);
            v47 = *(v44 + 16);
            v48 = v45 - 256;
            if (v46)
            {
              v68 = v46 - 1;
              v69 = v48 >= v68;
              v48 = v68;
              if (!v69)
              {
                goto LABEL_160;
              }
            }

            v49 = IPC::Decoder::operator new(0x58, v20);
            if (*(IPC::Decoder::Decoder(v49, v47 + 256, v48, *(v10 + 64)) + 25) == 3197)
            {
              IPC::Decoder::~Decoder(v49);
              bmalloc::api::tzoneFree(v50, v51);
              IPC::Connection::waitForSyncReply(*(v10 + 8), v17, 0xFB0u, &v137, v13);
              v52 = v138;
              if (v138)
              {
                if (v138 == 255)
                {
                  v53 = IPC::Connection::popPendingSyncRequestID(*(v10 + 8));
                  goto LABEL_154;
                }

                v38 = v137;
                v53 = IPC::Connection::popPendingSyncRequestID(*(v10 + 8));
                if (v52 != 1)
                {
                  goto LABEL_154;
                }

LABEL_51:
                LOBYTE(v130) = v38;
                v132 = 1;
                v133 = 1;
                v7 = v36;
                v9 = v123;
LABEL_62:
                if (v133 == 1)
                {
                  LOBYTE(v140) = 0;
                  v152 = -1;
                  if (v132 != 255)
                  {
                    if (v132)
                    {
                      LOBYTE(v140) = v130;
                    }

                    else
                    {
                      v57 = v130;
                      v130 = 0uLL;
                      v140 = v57;
                      *&v57 = *v131;
                      *v131 = 0;
                      v141 = v57;
                      v148 = *&v131[104];
                      v149 = *&v131[120];
                      v150 = *&v131[136];
                      v151 = *&v131[152];
                      v144 = *&v131[40];
                      v145 = *&v131[56];
                      v146 = *&v131[72];
                      v147 = *&v131[88];
                      v142 = *&v131[8];
                      v143 = *&v131[24];
                    }

                    v152 = v132;
                  }

                  mpark::detail::move_constructor<mpark::detail::traits<IPC::ConnectionSendSyncResult<Messages::RemoteAdapter::RequestDevice>::ReplyData,IPC::Error>,(mpark::detail::Trait)1>::~move_constructor(&v130, v37);
                  goto LABEL_94;
                }

                if ((v136 & 1) == 0)
                {
                  goto LABEL_160;
                }

                if (v135 <= 1)
                {
                  __break(0xC471u);
                  JUMPOUT(0x19E23ECD0);
                }

                *v134 = 3197;
                v58 = (*(v10 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
                v60 = *(v10 + 72);
                v59 = *(v10 + 80);
                if (v58 + 16 >= v60)
                {
                  v58 = 0;
                }

                v61 = v58 + 16;
                if (v60 <= v61)
                {
                  v61 = 0;
                }

                *(v10 + 88) = v61;
                if (*(v59 + 8) <= 0xFFuLL)
                {
                  goto LABEL_160;
                }

                atomic_exchange((*(v59 + 16) + 128), v61);
                *(v10 + 124) = 0;
                v62 = *(v10 + 8);
                IPC::Connection::createSyncMessageEncoder(0xFB0, v11, &v137);
                v63 = v137;
                IPC::ArgumentCoder<WebKit::WebGPU::DeviceDescriptor,void>::encode(v137, &v125);
                IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v63, v7);
                IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v63, v9);
                v53 = IPC::Connection::sendSyncMessage(v62, v138, &v137, 0, &v154, v13);
                if (v155)
                {
                  if (v155 == 1)
                  {
                    LOBYTE(v140) = v154;
                    v152 = 1;
LABEL_92:
                    v71 = v137;
                    v137 = 0;
                    if (v71)
                    {
                      IPC::Encoder::~Encoder(v71, v64);
                      bmalloc::api::tzoneFree(v97, v98);
                    }

                    goto LABEL_94;
                  }

LABEL_154:
                  mpark::throw_bad_variant_access(v53);
                }

                v65 = v154;
                v153 = v154;
                v154 = 0;
                if (*(v153 + 25) == 3194)
                {
                  LOBYTE(v140) = 11;
                  v152 = 1;
                }

                else
                {
                  LOBYTE(v130) = 0;
                  v131[160] = 0;
                  IPC::Decoder::operator>><std::tuple<WebKit::WebGPU::SupportedFeatures,WebKit::WebGPU::SupportedLimits>>(v65, &v130);
                  if (v131[160] == 1)
                  {
                    IPC::ConnectionSendSyncResult<Messages::RemoteAdapter::RequestDevice>::ConnectionSendSyncResult(&v140, &v153, &v130);
                    if (v131[160])
                    {
                      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v130, v64);
                    }
                  }

                  else
                  {
                    LOBYTE(v140) = 14;
                    v152 = 1;
                  }

                  v65 = v153;
                  if (!v153)
                  {
                    goto LABEL_89;
                  }
                }

                IPC::Decoder::~Decoder(v65);
                bmalloc::api::tzoneFree(v66, v67);
LABEL_89:
                if (!v155)
                {
                  v70 = v154;
                  v154 = 0;
                  if (v70)
                  {
                    IPC::Decoder::~Decoder(v70);
                    bmalloc::api::tzoneFree(v99, v100);
                  }
                }

                goto LABEL_92;
              }

              v7 = v36;
              v49 = v137;
            }

            else
            {
              v7 = v36;
            }

            IPC::Connection::popPendingSyncRequestID(*(v10 + 8));
            v154 = v49;
            v9 = v123;
            if (*(v49 + 25) == 3194)
            {
              LOBYTE(v130) = 11;
              v132 = 1;
              v133 = 1;
              v154 = 0;
            }

            else
            {
              LOBYTE(v137) = 0;
              v139 = 0;
              IPC::Decoder::operator>><std::tuple<WebKit::WebGPU::SupportedFeatures,WebKit::WebGPU::SupportedLimits>>(v49, &v137);
              if (v139 == 1)
              {
                IPC::ConnectionSendSyncResult<Messages::RemoteAdapter::RequestDevice>::ConnectionSendSyncResult(&v140, &v154, &v137);
                std::optional<IPC::ConnectionSendSyncResult<Messages::RemoteAdapter::RequestDevice>>::optional[abi:sn200100]<IPC::ConnectionSendSyncResult<Messages::RemoteAdapter::RequestDevice>,0>(&v130, &v140);
                mpark::detail::move_constructor<mpark::detail::traits<IPC::ConnectionSendSyncResult<Messages::RemoteAdapter::RequestDevice>::ReplyData,IPC::Error>,(mpark::detail::Trait)1>::~move_constructor(&v140, v56);
                if (v139)
                {
                  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v137, v37);
                }
              }

              else
              {
                LOBYTE(v130) = 14;
                v132 = 1;
                v133 = 1;
              }

              v49 = v154;
              v154 = 0;
              if (!v49)
              {
                goto LABEL_62;
              }
            }

            IPC::Decoder::~Decoder(v49);
            bmalloc::api::tzoneFree(v54, v55);
            goto LABEL_62;
          }

          LOBYTE(v140) = 16;
          v152 = 1;
LABEL_94:
          if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v10);
            IPC::StreamClientConnection::operator delete(v10);
          }

          if (v152)
          {
            *&v130 = 0;
            v72 = *a3;
            *a3 = 0;
            (*(*v72 + 16))(v72, &v130);
            (*(*v72 + 8))(v72);
            v74 = v130;
            *&v130 = 0;
            if (v74)
            {
              if (v74[4] == 1)
              {
                (*(*v74 + 8))(v74);
              }

              else
              {
                --v74[4];
              }
            }

            goto LABEL_116;
          }

          v124 = v9;
          v75 = *(&v140 + 1);
          *(&v140 + 1) = 0;
          *&v130 = v75;
          v76 = v141;
          v77 = HIDWORD(v141);
          v141 = 0;
          *(&v130 + 1) = __PAIR64__(v77, v76);
          *&v131[96] = v148;
          *&v131[112] = v149;
          *&v131[128] = v150;
          *&v131[144] = v151;
          *&v131[32] = v144;
          *&v131[48] = v145;
          *&v131[64] = v146;
          *&v131[80] = v147;
          *v131 = v142;
          *&v131[16] = v143;
          v78 = DWORD1(v142);
          if (!DWORD1(v142))
          {
            v137 = 0;
            v93 = *a3;
            *a3 = 0;
            (*(*v93 + 16))(v93, &v137);
            (*(*v93 + 8))(v93);
            v94 = v137;
            v137 = 0;
            if (v94)
            {
              if (*(v94 + 4) == 1)
              {
                (*(*v94 + 8))(v94);
              }

              else
              {
                --*(v94 + 4);
              }
            }

            goto LABEL_115;
          }

          v79 = WTF::fastMalloc(0x18);
          *&v80 = 0;
          *v79 = 1;
          v130 = v80;
          *(v79 + 8) = v75;
          *(v79 + 16) = v76;
          *(v79 + 20) = v77;
          v137 = v79;
          v81 = *v131;
          v82 = *&v131[56];
          v83 = *&v131[80];
          v84 = *&v131[88];
          v121 = *&v131[112];
          v122 = *&v131[96];
          v119 = *&v131[144];
          v120 = *&v131[128];
          v85 = *&v131[72];
          v117 = *&v131[24];
          v118 = *&v131[8];
          v116 = *&v131[40];
          v86 = WTF::fastMalloc(0xA8);
          *v86 = 1;
          *(v86 + 4) = v81;
          *(v86 + 8) = v78;
          *(v86 + 12) = v118;
          *(v86 + 28) = v117;
          *(v86 + 44) = v116;
          *(v86 + 64) = v82;
          *(v86 + 80) = v85;
          *(v86 + 88) = v83;
          *(v86 + 96) = v84;
          *(v86 + 104) = v122;
          *(v86 + 120) = v121;
          *(v86 + 136) = v120;
          *(v86 + 152) = v119;
          v134 = v86;
          if (WebKit::WebGPU::RemoteDeviceProxy::s_heapRef)
          {
            NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::WebGPU::RemoteDeviceProxy::s_heapRef, v87);
          }

          else
          {
            NonCompact = WebKit::WebGPU::RemoteDeviceProxy::operatorNewSlow(0x98);
          }

          v89 = NonCompact;
          WebKit::WebGPU::RemoteDeviceProxy::RemoteDeviceProxy(NonCompact, &v137, &v134, a1, v5, v7, v124);
          if (v129)
          {
            WebCore::WebGPU::Device::setLabel(v89, &v125);
            v154 = v89;
            v90 = *a3;
            *a3 = 0;
            (*(*v90 + 16))(v90, &v154);
            (*(*v90 + 8))(v90);
            v92 = v154;
            v154 = 0;
            if (v92)
            {
              if (*(v92 + 4) == 1)
              {
                (*(*v92 + 8))(v92);
              }

              else
              {
                --*(v92 + 4);
              }
            }

            if (v134)
            {
              if (*v134 == 1)
              {
                WTF::fastFree(v134, v91);
              }

              else
              {
                --*v134;
              }
            }

            if (v137)
            {
              WTF::RefCounted<WebCore::WebGPU::SupportedFeatures>::deref(v137, v91);
            }

LABEL_115:
            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v130, v91);
LABEL_116:
            result = mpark::detail::move_constructor<mpark::detail::traits<IPC::ConnectionSendSyncResult<Messages::RemoteAdapter::RequestDevice>::ReplyData,IPC::Error>,(mpark::detail::Trait)1>::~move_constructor(&v140, v73);
            goto LABEL_117;
          }

          goto LABEL_160;
        }

        v115 = 18;
LABEL_157:
        LOBYTE(v140) = v115;
        v152 = 1;
        goto LABEL_94;
      }
    }

    __break(0xC471u);
    JUMPOUT(0x19E23EC50);
  }

  *&v130 = 0;
  v39 = *a3;
  *a3 = 0;
  (*(*v39 + 16))(v39, &v130);
  (*(*v39 + 8))(v39);
  result = v130;
  *&v130 = 0;
  if (result)
  {
    if (*(result + 4) == 1)
    {
      result = (*(*result + 8))(result);
    }

    else
    {
      --*(result + 4);
    }
  }

LABEL_117:
  if (v129 == 1)
  {
    WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v128, v40);
    v96 = v126;
    if (v126)
    {
      v126 = 0;
      v127 = 0;
      WTF::fastFree(v96, v95);
    }

    result = v125;
    v125 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v95);
    }
  }

  if (v5[2] == 1)
  {
    return (*(*v5 + 8))(v5);
  }

  --v5[2];
  return result;
}

void WebKit::WebGPU::RemoteBindGroupLayoutProxy::~RemoteBindGroupLayoutProxy(WebKit::WebGPU::RemoteBindGroupLayoutProxy *this)
{
  v2 = *(*(this + 6) + 80);
  atomic_fetch_add(v2, 1u);
  v3 = *(this + 4);
  v4 = *(v2 + 128);
  v5 = INFINITY;
  if (fabs(v4) != INFINITY)
  {
    WTF::ApproximateTime::now(this);
    v5 = v4 + v6;
  }

  if (*(v2 + 64) != v3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v2 + 72, &v31, v5);
    if (v33 != 1)
    {
      goto LABEL_16;
    }

    v18 = v32;
    if (v32 <= 1)
    {
LABEL_55:
      __break(0xC471u);
      JUMPOUT(0x19E23F088);
    }

    v19 = v31;
    *v31 = 3198;
    v20 = v19 + 1;
    if (v18 - 2 < (-v20 & 7 | 8uLL))
    {
      goto LABEL_16;
    }

    v21 = -v20 & 7;
    *(v20 + v21) = v3;
    if (v21 != 7)
    {
      v21 = 6;
    }

    v22 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v24 = *(v2 + 72);
    v23 = *(v2 + 80);
    v25 = v21 + 10;
    if (v22 + 16 >= v24)
    {
      v22 = 0;
    }

    v26 = v25 + v22;
    if (v24 <= v26)
    {
      v26 = 0;
    }

    *(v2 + 88) = v26;
    if (*(v23 + 8) <= 0xFFuLL)
    {
      goto LABEL_54;
    }

    v27 = atomic_exchange((*(v23 + 16) + 128), v26);
    v28 = *(v2 + 124);
    if (v27 == 0x80000000 || v28 != 0)
    {
      v30 = v28 + 1;
      *(v2 + 124) = v30;
      if (v30 >= *(v2 + 120))
      {
        if (*(v2 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v2 + 100));
        }

        *(v2 + 124) = 0;
      }
    }

    *(v2 + 64) = v3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v2 + 72, &v31, v5);
  if (v33 != 1)
  {
    goto LABEL_16;
  }

  if (v32 <= 1)
  {
    goto LABEL_55;
  }

  *v31 = 955;
  v9 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v11 = *(v2 + 72);
  v10 = *(v2 + 80);
  if (v9 + 16 >= v11)
  {
    v9 = 0;
  }

  v12 = v9 + 16;
  if (v11 <= v12)
  {
    v12 = 0;
  }

  *(v2 + 88) = v12;
  if (*(v10 + 8) <= 0xFFuLL)
  {
    goto LABEL_54;
  }

  if (atomic_exchange((*(v10 + 16) + 128), v12) == 0x80000000 || *(v2 + 124))
  {
    if (*(v2 + 112) == 1)
    {
      MEMORY[0x19EB16320](*(v2 + 100));
    }

    *(v2 + 124) = 0;
  }

LABEL_16:
  if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2);
    v8.n128_f64[0] = IPC::StreamClientConnection::operator delete(v2);
  }

  v13 = *(this + 6);
  *(this + 6) = 0;
  if (v13 && atomic_fetch_add(v13 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v13 + 7);
    (*(*v13 + 24))(v13, v8);
  }

  v14 = *(this + 5);
  *(this + 5) = 0;
  if (v14)
  {
    if (v14[2] == 1)
    {
      (*(*v14 + 8))(v14, v8);
    }

    else
    {
      --v14[2];
    }
  }

  *this = &unk_1F1125540;
  v15 = *(this + 3);
  *(this + 3) = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v7);
  }

  if (*(this + 4) != 1)
  {
    __break(0xC471u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v16 = *(this + 1);
  if (v16)
  {
    *(v16 + 8) = 0;
    v17 = *(this + 1);
    *(this + 1) = 0;
    if (v17)
    {
      if (atomic_fetch_add(v17, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v17);
        WTF::fastFree(v17, v7);
      }
    }
  }
}

{
  WebKit::WebGPU::RemoteBindGroupLayoutProxy::~RemoteBindGroupLayoutProxy(this);

  bmalloc::api::tzoneFree(v1, v2);
}

void WebKit::WebGPU::RemoteBindGroupLayoutProxy::setLabelInternal(WebKit::WebGPU::RemoteBindGroupLayoutProxy *this, const WTF::String *a2)
{
  v3 = *(*(this + 6) + 80);
  atomic_fetch_add(v3, 1u);
  v4 = *(this + 4);
  v5 = *(v3 + 128);
  v6 = INFINITY;
  if (fabs(v5) != INFINITY)
  {
    WTF::ApproximateTime::now(this);
    v6 = v5 + v7;
  }

  if (*(v3 + 64) != v4)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v42, v6);
    if (v44 != 1)
    {
      goto LABEL_28;
    }

    v26 = v43;
    if (v43 <= 1)
    {
LABEL_53:
      __break(0xC471u);
      JUMPOUT(0x19E23F438);
    }

    v27 = v42;
    *v42 = 3198;
    v28 = v27 + 2;
    if (v26 - 2 < (-v28 & 7 | 8uLL))
    {
      goto LABEL_28;
    }

    v29 = -v28 & 7;
    *&v28[v29] = v4;
    if (v29 != 7)
    {
      v29 = 6;
    }

    v30 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v32 = *(v3 + 72);
    v31 = *(v3 + 80);
    v33 = v29 + 10;
    if (v30 + 16 >= v32)
    {
      v30 = 0;
    }

    v34 = v33 + v30;
    if (v32 <= v34)
    {
      v34 = 0;
    }

    *(v3 + 88) = v34;
    if (*(v31 + 8) <= 0xFFuLL)
    {
      goto LABEL_52;
    }

    v35 = atomic_exchange((*(v31 + 16) + 128), v34);
    v36 = *(v3 + 124);
    if (v35 == 0x80000000 || v36 != 0)
    {
      v38 = v36 + 1;
      *(v3 + 124) = v38;
      if (v38 >= *(v3 + 120))
      {
        if (*(v3 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v3 + 100));
        }

        *(v3 + 124) = 0;
      }
    }

    *(v3 + 64) = v4;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v39, v6);
  if (v41 != 1)
  {
    goto LABEL_28;
  }

  v8 = v39;
  v9 = v40;
  v44 = v40;
  if (v40 <= 1)
  {
    goto LABEL_53;
  }

  *v39 = 956;
  v42 = (v8 + 1);
  v43 = v9 - 2;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(&v42, a2);
  if (v42)
  {
    v11 = 16;
    if (v44 - v43 > 0x10)
    {
      v11 = v44 - v43;
    }

    v12 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v14 = *(v3 + 72);
    v13 = *(v3 + 80);
    if (v12 + 16 >= v14)
    {
      v12 = 0;
    }

    v15 = v12 + v11;
    if (v14 <= v15)
    {
      v15 = 0;
    }

    *(v3 + 88) = v15;
    if (*(v13 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v13 + 16) + 128), v15) == 0x80000000 || *(v3 + 124))
      {
        if (*(v3 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v3 + 100));
        }

        *(v3 + 124) = 0;
      }

      goto LABEL_28;
    }

    goto LABEL_52;
  }

  if ((v41 & 1) == 0)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v40 <= 1)
  {
    __break(0xC471u);
    goto LABEL_52;
  }

  *v39 = 3197;
  v16 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v18 = *(v3 + 72);
  v17 = *(v3 + 80);
  if (v16 + 16 >= v18)
  {
    v16 = 0;
  }

  v19 = v16 + 16;
  if (v18 <= v19)
  {
    v19 = 0;
  }

  *(v3 + 88) = v19;
  if (*(v17 + 8) <= 0xFFuLL)
  {
    goto LABEL_52;
  }

  atomic_exchange((*(v17 + 16) + 128), v19);
  *(v3 + 124) = 0;
  v20 = *(v3 + 8);
  v21 = IPC::Encoder::operator new(0x238, v10);
  *v21 = 956;
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 1) = v4;
  *(v21 + 68) = 0;
  *(v21 + 70) = 0;
  *(v21 + 69) = 0;
  IPC::Encoder::encodeHeader(v21);
  v42 = v21;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v21, a2);
  IPC::Connection::sendMessageImpl(v20, &v42, 1, 0);
  v23 = v42;
  v42 = 0;
  if (v23)
  {
    IPC::Encoder::~Encoder(v23, v22);
    bmalloc::api::tzoneFree(v24, v25);
  }

LABEL_28:
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    IPC::StreamClientConnection::operator delete(v3);
  }
}

void WebKit::WebGPU::RemoteBindGroupProxy::~RemoteBindGroupProxy(WebKit::WebGPU::RemoteBindGroupProxy *this)
{
  v2 = *(*(*(*(this + 6) + 64) + 72) + 80);
  atomic_fetch_add(v2, 1u);
  v3 = *(this + 4);
  v4 = *(v2 + 128);
  v5 = INFINITY;
  if (fabs(v4) != INFINITY)
  {
    WTF::ApproximateTime::now(this);
    v5 = v4 + v6;
  }

  if (*(v2 + 64) != v3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v2 + 72, &v31, v5);
    if (v33 != 1)
    {
      goto LABEL_16;
    }

    v18 = v32;
    if (v32 <= 1)
    {
LABEL_56:
      __break(0xC471u);
      JUMPOUT(0x19E23F808);
    }

    v19 = v31;
    *v31 = 3198;
    v20 = v19 + 1;
    if (v18 - 2 < (-v20 & 7 | 8uLL))
    {
      goto LABEL_16;
    }

    v21 = -v20 & 7;
    *(v20 + v21) = v3;
    if (v21 != 7)
    {
      v21 = 6;
    }

    v22 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v24 = *(v2 + 72);
    v23 = *(v2 + 80);
    v25 = v21 + 10;
    if (v22 + 16 >= v24)
    {
      v22 = 0;
    }

    v26 = v25 + v22;
    if (v24 <= v26)
    {
      v26 = 0;
    }

    *(v2 + 88) = v26;
    if (*(v23 + 8) <= 0xFFuLL)
    {
      goto LABEL_55;
    }

    v27 = atomic_exchange((*(v23 + 16) + 128), v26);
    v28 = *(v2 + 124);
    if (v27 == 0x80000000 || v28 != 0)
    {
      v30 = v28 + 1;
      *(v2 + 124) = v30;
      if (v30 >= *(v2 + 120))
      {
        if (*(v2 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v2 + 100));
        }

        *(v2 + 124) = 0;
      }
    }

    *(v2 + 64) = v3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v2 + 72, &v31, v5);
  if (v33 != 1)
  {
    goto LABEL_16;
  }

  if (v32 <= 1)
  {
    goto LABEL_56;
  }

  *v31 = 957;
  v9 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v11 = *(v2 + 72);
  v10 = *(v2 + 80);
  if (v9 + 16 >= v11)
  {
    v9 = 0;
  }

  v12 = v9 + 16;
  if (v11 <= v12)
  {
    v12 = 0;
  }

  *(v2 + 88) = v12;
  if (*(v10 + 8) <= 0xFFuLL)
  {
    goto LABEL_55;
  }

  if (atomic_exchange((*(v10 + 16) + 128), v12) == 0x80000000 || *(v2 + 124))
  {
    if (*(v2 + 112) == 1)
    {
      MEMORY[0x19EB16320](*(v2 + 100));
    }

    *(v2 + 124) = 0;
  }

LABEL_16:
  if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2);
    v8.n128_f64[0] = IPC::StreamClientConnection::operator delete(v2);
  }

  v13 = *(this + 6);
  *(this + 6) = 0;
  if (v13)
  {
    if (v13[4] == 1)
    {
      (*(*v13 + 8))(v13, v8);
    }

    else
    {
      --v13[4];
    }
  }

  v14 = *(this + 5);
  *(this + 5) = 0;
  if (v14)
  {
    if (v14[2] == 1)
    {
      (*(*v14 + 8))(v14, v8);
    }

    else
    {
      --v14[2];
    }
  }

  *this = &unk_1F1125568;
  v15 = *(this + 3);
  *(this + 3) = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v7);
  }

  if (*(this + 4) != 1)
  {
    __break(0xC471u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v16 = *(this + 1);
  if (v16)
  {
    *(v16 + 8) = 0;
    v17 = *(this + 1);
    *(this + 1) = 0;
    if (v17)
    {
      if (atomic_fetch_add(v17, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v17);
        WTF::fastFree(v17, v7);
      }
    }
  }
}

{
  WebKit::WebGPU::RemoteBindGroupProxy::~RemoteBindGroupProxy(this);

  bmalloc::api::tzoneFree(v1, v2);
}

void WebKit::WebGPU::RemoteBindGroupProxy::setLabelInternal(WebKit::WebGPU::RemoteBindGroupProxy *this, const WTF::String *a2)
{
  v3 = *(*(*(*(this + 6) + 64) + 72) + 80);
  atomic_fetch_add(v3, 1u);
  v4 = *(this + 4);
  v5 = *(v3 + 128);
  v6 = INFINITY;
  if (fabs(v5) != INFINITY)
  {
    WTF::ApproximateTime::now(this);
    v6 = v5 + v7;
  }

  if (*(v3 + 64) != v4)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v43, v6);
    if (v45 != 1)
    {
      goto LABEL_29;
    }

    v27 = v44;
    if (v44 <= 1)
    {
LABEL_54:
      __break(0xC471u);
      JUMPOUT(0x19E23FBCCLL);
    }

    v28 = v43;
    *v43 = 3198;
    v29 = v28 + 2;
    if (v27 - 2 < (-v29 & 7 | 8uLL))
    {
      goto LABEL_29;
    }

    v30 = -v29 & 7;
    *&v29[v30] = v4;
    if (v30 != 7)
    {
      v30 = 6;
    }

    v31 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v33 = *(v3 + 72);
    v32 = *(v3 + 80);
    v34 = v30 + 10;
    if (v31 + 16 >= v33)
    {
      v31 = 0;
    }

    v35 = v34 + v31;
    if (v33 <= v35)
    {
      v35 = 0;
    }

    *(v3 + 88) = v35;
    if (*(v32 + 8) <= 0xFFuLL)
    {
      goto LABEL_53;
    }

    v36 = atomic_exchange((*(v32 + 16) + 128), v35);
    v37 = *(v3 + 124);
    if (v36 == 0x80000000 || v37 != 0)
    {
      v39 = v37 + 1;
      *(v3 + 124) = v39;
      if (v39 >= *(v3 + 120))
      {
        if (*(v3 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v3 + 100));
        }

        *(v3 + 124) = 0;
      }
    }

    *(v3 + 64) = v4;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v40, v6);
  if (v42 != 1)
  {
    goto LABEL_29;
  }

  v8 = v40;
  v9 = v41;
  v45 = v41;
  if (v41 <= 1)
  {
    goto LABEL_54;
  }

  *v40 = 958;
  v43 = (v8 + 1);
  v44 = v9 - 2;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(&v43, a2);
  if (v43)
  {
    v11 = 16;
    if (v45 - v44 > 0x10)
    {
      v11 = v45 - v44;
    }

    v12 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v14 = *(v3 + 72);
    v13 = *(v3 + 80);
    if (v12 + 16 >= v14)
    {
      v12 = 0;
    }

    v15 = v12 + v11;
    if (v14 <= v15)
    {
      v15 = 0;
    }

    *(v3 + 88) = v15;
    if (*(v13 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v13 + 16) + 128), v15) == 0x80000000 || *(v3 + 124))
      {
        if (*(v3 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v3 + 100));
        }

        *(v3 + 124) = 0;
      }

      goto LABEL_29;
    }

    goto LABEL_53;
  }

  if ((v42 & 1) == 0)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v41 <= 1)
  {
    __break(0xC471u);
    goto LABEL_53;
  }

  *v40 = 3197;
  v16 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v17 = *(v3 + 72);
  if (v16 + 16 >= v17)
  {
    v16 = 0;
  }

  v18 = v16 + 16;
  if (v17 <= v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  *(v3 + 88) = v19;
  v20 = *(v3 + 80);
  if (*(v20 + 8) <= 0xFFuLL)
  {
    goto LABEL_53;
  }

  atomic_exchange((*(v20 + 16) + 128), v19);
  *(v3 + 124) = 0;
  v21 = *(v3 + 8);
  v22 = IPC::Encoder::operator new(0x238, v10);
  *v22 = 958;
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 1) = v4;
  *(v22 + 68) = 0;
  *(v22 + 70) = 0;
  *(v22 + 69) = 0;
  IPC::Encoder::encodeHeader(v22);
  v43 = v22;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v22, a2);
  IPC::Connection::sendMessageImpl(v21, &v43, 1, 0);
  v24 = v43;
  v43 = 0;
  if (v24)
  {
    IPC::Encoder::~Encoder(v24, v23);
    bmalloc::api::tzoneFree(v25, v26);
  }

LABEL_29:
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    IPC::StreamClientConnection::operator delete(v3);
  }
}

uint64_t WebKit::WebGPU::RemoteBindGroupProxy::updateExternalTextures(WebKit::WebGPU::RemoteBindGroupProxy *this, WebCore::WebGPU::ExternalTexture *a2)
{
  IdentifierInternal = this;
  v3 = *(this + 5);
  ++v3[2];
  v4 = (*(*v3 + 104))(v3, a2);
  v5 = v4;
  if (v3[2] == 1)
  {
    v4 = (*(*v3 + 8))(v3);
  }

  else
  {
    --v3[2];
  }

  v6 = *(*(*(*(IdentifierInternal + 6) + 64) + 72) + 80);
  atomic_fetch_add(v6, 1u);
  v7 = *(IdentifierInternal + 4);
  v8 = *(v6 + 128);
  v9 = INFINITY;
  if (fabs(v8) != INFINITY)
  {
    WTF::ApproximateTime::now(v4);
    v9 = v8 + v10;
  }

  if (*(v6 + 64) == v7)
  {
    goto LABEL_6;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v6 + 72, &v82, v9);
  if (v84 != 1)
  {
    v5 = 16;
    goto LABEL_106;
  }

  v50 = v83;
  if (v83 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E240330);
  }

  v51 = v82;
  *v82 = 3198;
  v52 = v51 + 1;
  if (v50 - 2 < (-v52 & 7 | 8uLL))
  {
    v5 = 18;
LABEL_106:
    v30 = 0;
    goto LABEL_47;
  }

  v53 = -v52 & 7;
  *(v52 + v53) = v7;
  v54 = 6;
  if (v53 > 6)
  {
    v54 = v53;
  }

  v55 = v54 + 10;
  v56 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v57 = *(v6 + 72);
  if (v56 + 16 >= v57)
  {
    v56 = 0;
  }

  v58 = v55 + v56;
  if (v57 <= v58)
  {
    v58 = 0;
  }

  *(v6 + 88) = v58;
  v59 = *(v6 + 80);
  if (*(v59 + 8) <= 0xFFuLL)
  {
    goto LABEL_58;
  }

  v60 = atomic_exchange((*(v59 + 16) + 128), v58);
  v61 = *(v6 + 124);
  if (v60 == 0x80000000 || v61 != 0)
  {
    v63 = v61 + 1;
    *(v6 + 124) = v63;
    if (v63 >= *(v6 + 120))
    {
      if (*(v6 + 112) == 1)
      {
        MEMORY[0x19EB16320](*(v6 + 100));
      }

      *(v6 + 124) = 0;
    }
  }

  *(v6 + 64) = v7;
LABEL_6:
  IPC::StreamClientConnectionBuffer::tryAcquire(v6 + 72, &v82, v9);
  if (v84 != 1)
  {
    v30 = 0;
    v5 = 16;
    goto LABEL_47;
  }

  if (WTF::ObjectIdentifierGeneric<IPC::SyncRequestIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    goto LABEL_110;
  }

  v12 = v82;
  v11 = v83;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  if (!IPC::Connection::pushPendingSyncRequestID(*(v6 + 8), IdentifierInternal))
  {
    v29 = 12;
LABEL_46:
    v30 = 0;
    v5 = v29;
    goto LABEL_47;
  }

  if (v11 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E240308);
  }

  *v12 = 4018;
  v14 = v12 + 1;
  v15 = -v14 & 7 | 8;
  v16 = v11 - 2 - v15;
  if (v11 - 2 < v15 || (*(v14 + (-v14 & 7)) = IdentifierInternal, v17 = v14 + v15, v18 = -v17 & 7 | 8, v16 < v18))
  {
    IPC::Connection::popPendingSyncRequestID(*(v6 + 8));
    if ((v84 & 1) == 0)
    {
      goto LABEL_58;
    }

    if (v83 > 1)
    {
      *v82 = 3197;
      v64 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v65 = *(v6 + 72);
      if (v64 + 16 >= v65)
      {
        v64 = 0;
      }

      v66 = v64 + 16;
      if (v65 <= v66)
      {
        v67 = 0;
      }

      else
      {
        v67 = v66;
      }

      *(v6 + 88) = v67;
      v68 = *(v6 + 80);
      if (*(v68 + 8) > 0xFFuLL)
      {
        atomic_exchange((*(v68 + 16) + 128), v67);
        *(v6 + 124) = 0;
        IdentifierInternal = *(v6 + 8);
        IPC::Connection::createSyncMessageEncoder(0xFB2, v7, &v87);
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v87, v5);
        v40 = IPC::Connection::sendSyncMessage(IdentifierInternal, v88, &v87, 0, &v85, v9);
        if (v86)
        {
          if (v86 != 1)
          {
            goto LABEL_41;
          }

          v5 = v85;
          v70 = 1;
          goto LABEL_99;
        }

        v5 = v85;
        v85 = 0;
        if (*(v5 + 50) == 3194)
        {
          v71 = 11;
        }

        else
        {
          v74 = IPC::Decoder::decode<std::tuple<BOOL>>(v5);
          if (v74 >= 0x100u)
          {
            LODWORD(IdentifierInternal) = v74;
            v70 = 0;
            goto LABEL_96;
          }

          v71 = 14;
        }

        IPC::Decoder::~Decoder(v5);
        bmalloc::api::tzoneFree(v72, v73);
        v70 = 1;
        v5 = v71;
LABEL_96:
        if (!v86)
        {
          v75 = v85;
          v85 = 0;
          if (v75)
          {
            IPC::Decoder::~Decoder(v75);
            bmalloc::api::tzoneFree(v80, v81);
          }
        }

LABEL_99:
        v76 = v87;
        v87 = 0;
        if (v76)
        {
          IPC::Encoder::~Encoder(v76, v69);
          bmalloc::api::tzoneFree(v77, v78);
        }

        v30 = v70 == 0;
        goto LABEL_47;
      }

LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

LABEL_110:
    __break(0xC471u);
    JUMPOUT(0x19E2402E8);
  }

  *&v17[-v17 & 7] = v5;
  v19 = v11 - v16 + v18;
  if (v19 <= 0x10)
  {
    v19 = 16;
  }

  v20 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v21 = *(v6 + 72);
  if (v20 + 16 >= v21)
  {
    v20 = 0;
  }

  v22 = v20 + v19;
  if (v21 <= v22)
  {
    v22 = 0;
  }

  *(v6 + 88) = v22;
  v23 = *(v6 + 80);
  if (*(v23 + 8) <= 0xFFuLL)
  {
    goto LABEL_58;
  }

  if (atomic_exchange((*(v23 + 16) + 128), v22) == 0x80000000 || *(v6 + 124))
  {
    if (*(v6 + 112) == 1)
    {
      MEMORY[0x19EB16320](*(v6 + 100));
    }

    *(v6 + 124) = 0;
  }

  v5 = 0x80000000;
  while (1)
  {
    v24 = *(v6 + 80);
    if (*(v24 + 8) <= 0xFFuLL)
    {
      goto LABEL_58;
    }

    v25 = atomic_exchange(*(v24 + 16), 0x80000000uLL);
    v26 = *(v6 + 80);
    if (*(v26 + 8) <= 0xFFuLL)
    {
      goto LABEL_58;
    }

    if (!(v25 | atomic_load_explicit((*(v26 + 16) + 128), memory_order_acquire) & 0xFFFFFFFF7FFFFFFFLL))
    {
      break;
    }

    if (*(v6 + 112) == 1)
    {
      v27 = IPC::Semaphore::waitFor((v6 + 104), v9);
      if (v27)
      {
        WTF::ApproximateTime::now(v27);
        if (v28 < v9)
        {
          continue;
        }
      }
    }

    IPC::Connection::popPendingSyncRequestID(*(v6 + 8));
    v29 = 17;
    goto LABEL_46;
  }

  v31 = *(v6 + 80);
  if (*(v31 + 8) <= 0xFFuLL)
  {
    goto LABEL_58;
  }

  atomic_store(0, *(v31 + 16));
  *(v6 + 88) = 0;
  v32 = *(v6 + 80);
  v33 = *(v32 + 8);
  if (v33 <= 0xFF)
  {
    goto LABEL_58;
  }

  v34 = *(v6 + 72);
  v35 = *(v32 + 16);
  v36 = v33 - 256;
  if (v34)
  {
    v48 = v34 - 1;
    v49 = v36 >= v48;
    v36 = v48;
    if (!v49)
    {
      goto LABEL_58;
    }
  }

  v5 = IPC::Decoder::operator new(0x58, v13);
  if (*(IPC::Decoder::Decoder(v5, v35 + 256, v36, *(v6 + 64)) + 25) == 3197)
  {
    IPC::Decoder::~Decoder(v5);
    bmalloc::api::tzoneFree(v37, v38);
    IPC::Connection::waitForSyncReply(*(v6 + 8), IdentifierInternal, 0xFB2u, &v87, v9);
    v39 = v88;
    if (v88)
    {
      if (v88 == 255)
      {
        v79 = IPC::Connection::popPendingSyncRequestID(*(v6 + 8));
        mpark::throw_bad_variant_access(v79);
      }

      v29 = v87;
      v40 = IPC::Connection::popPendingSyncRequestID(*(v6 + 8));
      if (v39 == 1)
      {
        goto LABEL_46;
      }

LABEL_41:
      mpark::throw_bad_variant_access(v40);
    }

    v5 = v87;
  }

  IPC::Connection::popPendingSyncRequestID(*(v6 + 8));
  if (*(v5 + 50) == 3194)
  {
    v29 = 11;
LABEL_45:
    IPC::Decoder::~Decoder(v5);
    bmalloc::api::tzoneFree(v41, v42);
    goto LABEL_46;
  }

  v45 = IPC::Decoder::decode<std::tuple<BOOL>>(v5);
  if (v45 <= 0xFFu)
  {
LABEL_59:
    v29 = 14;
    goto LABEL_45;
  }

  LODWORD(IdentifierInternal) = v45;
  v30 = 1;
LABEL_47:
  if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    IPC::StreamClientConnection::operator delete(v6);
  }

  if (v5)
  {
    v43 = v30;
  }

  else
  {
    v43 = 0;
  }

  if (v43)
  {
    IPC::Decoder::~Decoder(v5);
    bmalloc::api::tzoneFree(v46, v47);
  }

  return IdentifierInternal & v30;
}

void WebKit::WebGPU::RemoteBufferProxy::~RemoteBufferProxy(WebKit::WebGPU::RemoteBufferProxy *this)
{
  v2 = *(*(*(*(this + 6) + 64) + 72) + 80);
  atomic_fetch_add(v2, 1u);
  v3 = *(this + 4);
  v4 = *(v2 + 128);
  v5 = INFINITY;
  if (fabs(v4) != INFINITY)
  {
    WTF::ApproximateTime::now(this);
    v5 = v4 + v6;
  }

  if (*(v2 + 64) != v3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v2 + 72, &v31, v5);
    if (v33 != 1)
    {
      goto LABEL_16;
    }

    v18 = v32;
    if (v32 <= 1)
    {
LABEL_56:
      __break(0xC471u);
      JUMPOUT(0x19E2406E0);
    }

    v19 = v31;
    *v31 = 3198;
    v20 = v19 + 1;
    if (v18 - 2 < (-v20 & 7 | 8uLL))
    {
      goto LABEL_16;
    }

    v21 = -v20 & 7;
    *(v20 + v21) = v3;
    if (v21 != 7)
    {
      v21 = 6;
    }

    v22 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v24 = *(v2 + 72);
    v23 = *(v2 + 80);
    v25 = v21 + 10;
    if (v22 + 16 >= v24)
    {
      v22 = 0;
    }

    v26 = v25 + v22;
    if (v24 <= v26)
    {
      v26 = 0;
    }

    *(v2 + 88) = v26;
    if (*(v23 + 8) <= 0xFFuLL)
    {
      goto LABEL_55;
    }

    v27 = atomic_exchange((*(v23 + 16) + 128), v26);
    v28 = *(v2 + 124);
    if (v27 == 0x80000000 || v28 != 0)
    {
      v30 = v28 + 1;
      *(v2 + 124) = v30;
      if (v30 >= *(v2 + 120))
      {
        if (*(v2 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v2 + 100));
        }

        *(v2 + 124) = 0;
      }
    }

    *(v2 + 64) = v3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v2 + 72, &v31, v5);
  if (v33 != 1)
  {
    goto LABEL_16;
  }

  if (v32 <= 1)
  {
    goto LABEL_56;
  }

  *v31 = 962;
  v9 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v11 = *(v2 + 72);
  v10 = *(v2 + 80);
  if (v9 + 16 >= v11)
  {
    v9 = 0;
  }

  v12 = v9 + 16;
  if (v11 <= v12)
  {
    v12 = 0;
  }

  *(v2 + 88) = v12;
  if (*(v10 + 8) <= 0xFFuLL)
  {
    goto LABEL_55;
  }

  if (atomic_exchange((*(v10 + 16) + 128), v12) == 0x80000000 || *(v2 + 124))
  {
    if (*(v2 + 112) == 1)
    {
      MEMORY[0x19EB16320](*(v2 + 100));
    }

    *(v2 + 124) = 0;
  }

LABEL_16:
  if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2);
    v8.n128_f64[0] = IPC::StreamClientConnection::operator delete(v2);
  }

  v13 = *(this + 6);
  *(this + 6) = 0;
  if (v13)
  {
    if (v13[4] == 1)
    {
      (*(*v13 + 8))(v13, v8);
    }

    else
    {
      --v13[4];
    }
  }

  v14 = *(this + 5);
  *(this + 5) = 0;
  if (v14)
  {
    if (v14[2] == 1)
    {
      (*(*v14 + 8))(v14, v8);
    }

    else
    {
      --v14[2];
    }
  }

  *this = &unk_1F1125598;
  v15 = *(this + 3);
  *(this + 3) = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v7);
  }

  if (*(this + 4) != 1)
  {
    __break(0xC471u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v16 = *(this + 1);
  if (v16)
  {
    *(v16 + 8) = 0;
    v17 = *(this + 1);
    *(this + 1) = 0;
    if (v17)
    {
      if (atomic_fetch_add(v17, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v17);
        WTF::fastFree(v17, v7);
      }
    }
  }
}

{
  WebKit::WebGPU::RemoteBufferProxy::~RemoteBufferProxy(this);

  bmalloc::api::tzoneFree(v1, v2);
}

void WebKit::WebGPU::RemoteBufferProxy::mapAsync(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v8 = a1;
  v66[0] = a4;
  v66[1] = a5;
  v9 = *a6;
  *a6 = 0;
  ++*(a1 + 16);
  v10 = *(*(*(*(a1 + 48) + 64) + 72) + 80);
  atomic_fetch_add(v10, 1u);
  v11 = *(a1 + 32);
  v12 = *(v10 + 128);
  v13 = INFINITY;
  if (fabs(v12) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v13 = v12 + v14;
  }

  if (*(v10 + 64) != v11)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v10 + 72, &v73, v13);
    if (v75 != 1)
    {
      goto LABEL_35;
    }

    v37 = v74;
    if (v74 <= 1)
    {
      __break(0xC471u);
      goto LABEL_85;
    }

    v38 = v73;
    *v73 = 3198;
    v39 = v38 + 2;
    if (v37 - 2 < (-v39 & 7 | 8uLL))
    {
      goto LABEL_35;
    }

    v40 = -v39 & 7;
    *&v39[v40] = v11;
    v41 = 6;
    if (v40 > 6)
    {
      v41 = v40;
    }

    v42 = v41 + 10;
    v43 = (*(v10 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v44 = *(v10 + 72);
    if (v43 + 16 >= v44)
    {
      v43 = 0;
    }

    v45 = v42 + v43;
    if (v44 <= v45)
    {
      v45 = 0;
    }

    *(v10 + 88) = v45;
    v46 = *(v10 + 80);
    if (*(v46 + 8) <= 0xFFuLL)
    {
      goto LABEL_85;
    }

    v47 = atomic_exchange((*(v46 + 16) + 128), v45);
    v48 = *(v10 + 124);
    if (v47 == 0x80000000 || v48 != 0)
    {
      v50 = v48 + 1;
      *(v10 + 124) = v50;
      if (v50 >= *(v10 + 120))
      {
        if (*(v10 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v10 + 100));
        }

        *(v10 + 124) = 0;
      }
    }

    *(v10 + 64) = v11;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v10 + 72, &v70, v13);
  if ((v72 & 1) == 0)
  {
    goto LABEL_35;
  }

  v15 = *(v10 + 8);
  while (1)
  {
    v16 = *v15;
    if ((*v15 & 1) == 0)
    {
      break;
    }

    v17 = *v15;
    atomic_compare_exchange_strong_explicit(v15, &v17, v16 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v17 == v16)
    {
      goto LABEL_10;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v15);
LABEL_10:
  v18 = WTF::fastMalloc(0x20);
  *v18 = &unk_1F1125748;
  *(v18 + 8) = v9;
  *(v18 + 16) = a2;
  *(v18 + 24) = v8;
  v69[0] = v18;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_87;
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v69[1] = IdentifierInternal;
  if (!IdentifierInternal)
  {
    __break(0xC471u);
    JUMPOUT(0x19E240D88);
  }

  v20 = IdentifierInternal;
  IPC::Connection::addAsyncReplyHandler(v15, v69);
  if ((v72 & 1) == 0)
  {
    goto LABEL_85;
  }

  v21 = v70;
  v22 = v71;
  v75 = v71;
  if (v71 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E240DA8);
  }

  *v70 = 963;
  if (v22 != 2 && (*(v21 + 2) = a2, v23 = v22 - 3, v24 = v21 + 3, v25 = -v24 & 7 | 8, v26 = v23 >= v25, v27 = v23 - v25, v26))
  {
    *&v24[-v24 & 7] = a3;
    v73 = &v24[v25];
    v74 = v27;
  }

  else
  {
    v73 = 0;
    v74 = 0;
  }

  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> const&>(&v73, v66);
  v29 = -v73 & 7 | 8;
  if (v74 < v29)
  {
    if (v72)
    {
      if (v71 <= 1)
      {
LABEL_86:
        __break(0xC471u);
LABEL_87:
        JUMPOUT(0x19E240D68);
      }

      *v70 = 3197;
      v51 = (*(v10 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v52 = *(v10 + 72);
      if (v51 + 16 >= v52)
      {
        v51 = 0;
      }

      v53 = v51 + 16;
      if (v52 <= v53)
      {
        v54 = 0;
      }

      else
      {
        v54 = v53;
      }

      *(v10 + 88) = v54;
      v55 = *(v10 + 80);
      if (*(v55 + 8) > 0xFFuLL)
      {
        atomic_exchange((*(v55 + 16) + 128), v54);
        *(v10 + 124) = 0;
        v56 = IPC::Encoder::operator new(0x238, v28);
        *v56 = 963;
        *(v56 + 2) = 0;
        *(v56 + 3) = 0;
        *(v56 + 1) = v11;
        *(v56 + 68) = 0;
        *(v56 + 70) = 0;
        *(v56 + 69) = 0;
        IPC::Encoder::encodeHeader(v56);
        v73 = v56;
        IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v56, a2);
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v56, a3);
        IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long> const&>(v56, v66);
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v56, v20);
        if (IPC::Connection::sendMessageImpl(v15, &v73, 1, 0))
        {
          IPC::Connection::takeAsyncReplyHandler(v15, v20, &v68);
          if (v68)
          {
            WTF::RunLoop::mainSingleton(v58);
            v59 = v68;
            v68 = 0;
            v60 = WTF::fastMalloc(0x10);
            *v60 = &unk_1F1125770;
            v60[1] = v59;
            v67 = v60;
            WTF::RunLoop::dispatch();
            v61 = v67;
            v67 = 0;
            if (v61)
            {
              (*(*v61 + 8))(v61);
            }

            v62 = v68;
            v68 = 0;
            if (v62)
            {
              (*(*v62 + 8))(v62);
            }
          }
        }

        v63 = v73;
        v73 = 0;
        if (v63)
        {
          IPC::Encoder::~Encoder(v63, v57);
          bmalloc::api::tzoneFree(v64, v65);
        }

        goto LABEL_32;
      }
    }

LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  *(v73 + (-v73 & 7)) = v20;
  v30 = v74 - v29;
  if (v74 < v29)
  {
    goto LABEL_85;
  }

  v73 = (v73 + v29);
  v74 -= v29;
  v31 = v75 - v30;
  if (v31 <= 0x10)
  {
    v31 = 16;
  }

  v32 = (*(v10 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v33 = *(v10 + 72);
  if (v32 + 16 >= v33)
  {
    v32 = 0;
  }

  v34 = v32 + v31;
  if (v33 <= v34)
  {
    v34 = 0;
  }

  *(v10 + 88) = v34;
  v35 = *(v10 + 80);
  if (*(v35 + 8) <= 0xFFuLL)
  {
    goto LABEL_85;
  }

  if (atomic_exchange((*(v35 + 16) + 128), v34) == 0x80000000 || *(v10 + 124))
  {
    if (*(v10 + 112) == 1)
    {
      MEMORY[0x19EB16320](*(v10 + 100));
    }

    *(v10 + 124) = 0;
  }

LABEL_32:
  v36 = v69[0];
  v69[0] = 0;
  if (v36)
  {
    (*(*v36 + 8))(v36);
  }

  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v15);
  v8 = 0;
  v9 = 0;
LABEL_35:
  if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v10);
    IPC::StreamClientConnection::operator delete(v10);
    if (v8)
    {
LABEL_37:
      if (v8[4] == 1)
      {
        (*(*v8 + 8))(v8);
      }

      else
      {
        --v8[4];
      }
    }
  }

  else if (v8)
  {
    goto LABEL_37;
  }

  if (v9)
  {
    (*(*v9 + 8))(v9);
  }
}