void WebKit::RemoteMediaPlayerProxy::~RemoteMediaPlayerProxy(WebKit::RemoteMediaPlayerProxy *this)
{
  v2 = *(this + 97);
  if (v2)
  {
    *(this + 97) = 0;
    LOBYTE(v56) = 0;
    v59 = 0;
    (*(*v2 + 16))(v2, &v56);
    (*(*v2 + 8))(v2);
  }

  WebKit::RemoteMediaPlayerProxy::setShouldEnableAudioSourceProvider(this, 0);
  *&v4 = 0;
  v5 = *(this + 18);
  v56 = v5;
  v6 = *(this + 39);
  v57 = *(this + 38);
  v58 = v6;
  v55 = v4;
  *(this + 18) = 0;
  *(this + 19) = 0;
  if (v6)
  {
    v7 = 8 * v6;
    do
    {
      v52 = 0;
      v53 = 0;
      v54 = 0;
      WTF::CompletionHandler<void ()(WebCore::HostingContext)>::operator()(v5, &v52);
      v9 = v54;
      v54 = 0;
      if (v9)
      {
        WTF::fastFree(v9, v8);
      }

      WTF::MachSendRight::~MachSendRight(&v53);
      ++v5;
      v7 -= 8;
    }

    while (v7);
  }

  WTF::Vector<WTF::CompletionHandler<void ()(WebCore::HostingContext)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v56, v3);
  WTF::Vector<WTF::CompletionHandler<void ()(WebCore::HostingContext)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v55, v10);
  v12 = *(this + 113);
  *(this + 113) = 0;
  if (v12 && atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v12 + 2);
    (*(*v12 + 8))(v12);
  }

  v13 = *(this + 111);
  *(this + 111) = 0;
  if (v13 && atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v13 + 2);
    v13 = (*(*v13 + 8))(v13);
  }

  v14 = *(this + 110);
  *(this + 110) = 0;
  if (v14)
  {
    v13 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v14 + 8), v11);
  }

  if (*(this + 872) == 1)
  {
    atomic_fetch_add(WebKit::ScopedRenderingResourcesRequest::s_requests, 0xFFFFFFFF);
    if (!atomic_load(WebKit::ScopedRenderingResourcesRequest::s_requests))
    {
      WebKit::ScopedRenderingResourcesRequest::scheduleFreeRenderingResources(v13);
    }
  }

  v16 = *(this + 108);
  *(this + 108) = 0;
  if (v16 && atomic_fetch_add(v16 + 4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v16 + 4);
    (*(*v16 + 16))(v16);
  }

  v17 = *(this + 98);
  *(this + 98) = 0;
  if (v17)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivateClient,(WTF::DestructionThread)0>::deref((v17 + 8), v11);
  }

  v18 = *(this + 97);
  *(this + 97) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  WebKit::RemoteMediaPlayerProxyConfiguration::~RemoteMediaPlayerProxyConfiguration((this + 488));
  if (*(this + 368) == 1)
  {
    v20 = *(this + 44);
    if (v20)
    {
      *(this + 44) = 0;
      *(this + 90) = 0;
      WTF::fastFree(v20, v19);
    }
  }

  v21 = *(this + 43);
  *(this + 43) = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v19);
  }

  v22 = *(this + 42);
  *(this + 42) = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v19);
  }

  *(this + 26) = &unk_1F10E6DC8;
  v23 = *(this + 31);
  *(this + 31) = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  WTF::RunLoop::TimerBase::~TimerBase((this + 208));
  WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 192, v24);
  v26 = *(this + 22);
  *(this + 22) = 0;
  if (v26 && atomic_fetch_add(v26, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v26);
    WTF::fastFree(v26, v25);
  }

  std::unique_ptr<WebKit::LayerHostingContext>::reset[abi:sn200100](this + 21, 0);
  std::unique_ptr<WebKit::LayerHostingContext>::reset[abi:sn200100](this + 20, 0);
  WTF::Vector<WTF::CompletionHandler<void ()(WebCore::HostingContext)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 144, v27);
  v29 = *(this + 17);
  *(this + 17) = 0;
  if (v29)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v29);
  }

  v30 = *(this + 16);
  *(this + 16) = 0;
  if (v30)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v30);
  }

  v31 = *(this + 15);
  *(this + 15) = 0;
  if (v31)
  {
    WTF::RefCounted<WebKit::SandboxExtension>::deref(v31);
  }

  v32 = *(this + 25);
  if (v32)
  {
    v33 = *(this + 11);
    v34 = 8 * v32;
    do
    {
      v35 = *v33;
      *v33 = 0;
      if (v35)
      {
        WTF::ThreadSafeRefCounted<WebKit::RemoteTextTrackProxy,(WTF::DestructionThread)1>::deref((v35 + 16));
      }

      ++v33;
      v34 -= 8;
    }

    while (v34);
  }

  v36 = *(this + 11);
  if (v36)
  {
    *(this + 11) = 0;
    *(this + 24) = 0;
    WTF::fastFree(v36, v28);
  }

  v37 = *(this + 21);
  if (v37)
  {
    v38 = *(this + 9);
    v39 = 8 * v37;
    do
    {
      v40 = *v38;
      *v38 = 0;
      if (v40)
      {
        WTF::ThreadSafeRefCounted<WebKit::RemoteVideoTrackProxy,(WTF::DestructionThread)1>::deref((v40 + 16));
      }

      ++v38;
      v39 -= 8;
    }

    while (v39);
  }

  v41 = *(this + 9);
  if (v41)
  {
    *(this + 9) = 0;
    *(this + 20) = 0;
    WTF::fastFree(v41, v28);
  }

  v42 = *(this + 17);
  if (v42)
  {
    v43 = *(this + 7);
    v44 = 8 * v42;
    do
    {
      v45 = *v43;
      *v43 = 0;
      if (v45)
      {
        WTF::ThreadSafeRefCounted<WebKit::RemoteAudioTrackProxy,(WTF::DestructionThread)1>::deref((v45 + 16));
      }

      ++v43;
      v44 -= 8;
    }

    while (v44);
  }

  v46 = *(this + 7);
  if (v46)
  {
    *(this + 7) = 0;
    *(this + 16) = 0;
    WTF::fastFree(v46, v28);
  }

  *(this + 5) = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 6, v28);
  v48 = *(this + 4);
  if (v48)
  {
    *(v48 + 8) = 0;
    v49 = *(this + 4);
    *(this + 4) = 0;
    if (v49)
    {
      if (atomic_fetch_add(v49, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v49);
        WTF::fastFree(v49, v47);
      }
    }
  }

  v50 = *(this + 1);
  if (v50)
  {
    *(v50 + 8) = 0;
    v51 = *(this + 1);
    *(this + 1) = 0;
    if (v51)
    {
      if (atomic_fetch_add(v51, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v51);
        WTF::fastFree(v51, v47);
      }
    }
  }

  if (*(this + 4) != 1)
  {
    __break(0xC471u);
  }
}

{
  WebKit::RemoteMediaPlayerProxy::~RemoteMediaPlayerProxy(this);

  bmalloc::api::tzoneFree(v1, v2);
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::setShouldEnableAudioSourceProvider(WebKit::RemoteMediaPlayerProxy *this, int a2)
{
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(this, &v9);
  v4 = WebCore::MediaPlayer::audioSourceProvider(v9);
  result = v9;
  v9 = 0;
  if (result)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
  }

  if (v4)
  {
    if (a2 && (v6 = *(this + 108)) != 0)
    {
      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v6 + 8), v6);
      v7 = *(v6 + 8);
      if (v7)
      {
        atomic_fetch_add(v7, 1u);
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = v7;
    (*(*v4 + 8))(v4, &v9);
    result = v9;
    v9 = 0;
    if (result)
    {
      if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result);
        return WTF::fastFree(result, v8);
      }
    }
  }

  return result;
}

void non-virtual thunk toWebKit::RemoteMediaPlayerProxy::~RemoteMediaPlayerProxy(WebKit::RemoteMediaPlayerProxy *this)
{
  WebKit::RemoteMediaPlayerProxy::~RemoteMediaPlayerProxy((this - 24));
}

{
  WebKit::RemoteMediaPlayerProxy::~RemoteMediaPlayerProxy((this - 40));
}

{
  WebKit::RemoteMediaPlayerProxy::~RemoteMediaPlayerProxy((this - 24));

  bmalloc::api::tzoneFree(v1, v2);
}

{
  WebKit::RemoteMediaPlayerProxy::~RemoteMediaPlayerProxy((this - 40));

  bmalloc::api::tzoneFree(v1, v2);
}

void *WebKit::RemoteMediaPlayerProxy::commitAllTransactions@<X0>(WebKit::RemoteMediaPlayerProxy *this@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(this + 22);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_18;
  }

  v4 = *(v3 + 8);
  if (!v4)
  {
LABEL_18:
    v7 = 1;
LABEL_5:
    v14 = 1;
    v13[0] = 0;
    v13[1] = 0;
    v13[2] = "commitAllTransactions";
    v13[3] = 0;
    result = WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::createAndReject<WebCore::PlatformMediaError,std::enable_if<true,void>>(&v14, v13, a2);
    if (v7)
    {
      return result;
    }

    goto LABEL_6;
  }

  ++*(v4 + 16);
  v6 = *(v4 + 40);
  if (!v6 || (WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v6, *(v4 + 32), v13), v9 = v13[0], v13[0] = 0, !v9))
  {
    v7 = 0;
    goto LABEL_5;
  }

  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v9 + 16));
  v10 = *(this + 16);
  while (1)
  {
    v11 = *v10;
    if ((*v10 & 1) == 0)
    {
      break;
    }

    v12 = *v10;
    atomic_compare_exchange_strong_explicit(v10, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v12 == v11)
    {
      goto LABEL_15;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
LABEL_15:
  IPC::Connection::sendWithPromisedReply<WebCore::MediaPromiseConverter,Messages::MediaPlayerPrivateRemote::CommitAllTransactions,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(v10, *(this + 13), 0, a2);
  result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v10);
LABEL_6:
  if (*(v4 + 16) == 1)
  {
    return (*(*v4 + 24))(v4);
  }

  --*(v4 + 16);
  return result;
}

WTF::Lock *WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::createAndReject<WebCore::PlatformMediaError,std::enable_if<true,void>>@<X0>(unsigned __int8 *a1@<X0>, WTF::Logger::LogSiteIdentifier *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = WTF::fastMalloc(0x78);
  v7 = WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::NativePromise(v6, a2);
  *a3 = v7;

  return WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::reject<WebCore::PlatformMediaError,std::enable_if<true,void>>(v7, a1, a2);
}

void WebKit::RemoteMediaPlayerProxy::getConfiguration(uint64_t a1, uint64_t a2)
{
  v11[4] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 136);
  if (v4)
  {
    while (1)
    {
      v5 = *v4;
      if ((*v4 & 1) == 0)
      {
        break;
      }

      v6 = *v4;
      atomic_compare_exchange_strong_explicit(v4, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v6 == v5)
      {
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
  }

LABEL_6:
  WebCore::MediaPlayer::engineDescription(v11, v4);
  v8 = v11[0];
  v11[0] = 0;
  v9 = *a2;
  *a2 = v8;
  if (v9)
  {
    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v7);
    }

    v10 = v11[0];
    v11[0] = 0;
    if (v10)
    {
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v7);
      }
    }
  }

  *(a2 + 8) = WebCore::MediaPlayer::supportsScanning(v4);
  *(a2 + 9) = WebCore::MediaPlayer::supportsFullscreen(v4);
  *(a2 + 10) = WebCore::MediaPlayer::supportsPictureInPicture(v4);
  *(a2 + 11) = WebCore::MediaPlayer::supportsAcceleratedRendering(v4);
  *(a2 + 12) = WebCore::MediaPlayer::supportsPlayAtHostTime(v4);
  *(a2 + 13) = WebCore::MediaPlayer::supportsPauseAtHostTime(v4);
  *(a2 + 14) = WebCore::MediaPlayer::canPlayToWirelessPlaybackTarget(v4);
  *(a2 + 15) = WebCore::MediaPlayer::shouldIgnoreIntrinsicSize(v4);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
  atomic_fetch_add(*(a1 + 8), 1u);
  operator new();
}

void WebKit::RemoteMediaPlayerProxy::load(WebKit::RemoteMediaPlayerProxy *this, uint64_t a2, uint64_t *a3)
{
  v11[0] = 0;
  v11[1] = 0;
  if (*(a3 + 8) != 1)
  {
    goto LABEL_8;
  }

  if (*a3)
  {
    v5 = WTF::fastMalloc(0x18);
    *v5 = 1;
    v6 = *a3;
    *a3 = 0;
    *(v5 + 8) = v6;
    *(v5 + 16) = 0;
  }

  else
  {
    v5 = 0;
  }

  v7 = *(this + 15);
  *(this + 15) = v5;
  if (v7)
  {
    WTF::RefCounted<WebKit::SandboxExtension>::deref(v7);
    v5 = *(this + 15);
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  else if (!v5)
  {
LABEL_7:
    WTFLogAlways();
    goto LABEL_8;
  }

  ++*v5;
  v9 = *(v5 + 16);
  *(v5 + 16) = v9 + 1;
  if (!v9)
  {
    WebKit::SandboxExtensionImpl::consume(*(v5 + 8));
  }

  WTF::RefCounted<WebKit::SandboxExtension>::deref(v5);
LABEL_8:
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(this, &v10);
  WebCore::MediaPlayer::load();
  v8 = v10;
  v10 = 0;
  if (v8)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v8);
  }

  WebKit::RemoteMediaPlayerProxy::getConfiguration(this, v11);
}

WTF::StringImpl *WebKit::RemoteMediaPlayerProxy::loadMediaSource(WebKit::RemoteMediaPlayerProxy *a1, uint64_t a2, uint64_t a3, WebCore::MediaPlayerPrivateInterface *a4, uint64_t *a5)
{
  v6 = *(a1 + 22);
  if (v6 && (v7 = *(v6 + 8)) != 0)
  {
    ++*(v7 + 16);
    v38 = 0;
    v39 = 0;
    v9 = *(v7 + 40);
    if (v9)
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v9, *(v7 + 32), &v40);
      v15 = v40;
      v40 = 0;
      if (v15)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref(v15 + 2);
        v40 = a4;
        v16 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( (v7 + 48),  &v40);
        v18 = *(v7 + 48);
        if (v18)
        {
          v18 += 16 * *(v18 - 4);
        }

        if (v18 == v16 || (v19 = *(v16 + 8)) == 0)
        {
          if (WebKit::RemoteMediaSourceProxy::s_heapRef)
          {
            NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteMediaSourceProxy::s_heapRef, v17);
          }

          else
          {
            NonCompact = WebKit::RemoteMediaSourceProxy::operatorNewSlow(0x50);
          }

          v23 = WebKit::RemoteMediaSourceProxy::RemoteMediaSourceProxy(NonCompact, v7, a4, a1);
          v24 = 0;
          v25 = *(a1 + 98);
          *(a1 + 98) = v23;
          if (v25)
          {
LABEL_28:
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivateClient,(WTF::DestructionThread)0>::deref((v25 + 8), v17);
          }
        }

        else
        {
          while (1)
          {
            v20 = *(v19 + 8);
            if ((v20 & 1) == 0)
            {
              break;
            }

            v21 = *(v19 + 8);
            atomic_compare_exchange_strong_explicit((v19 + 8), &v21, v20 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v21 == v20)
            {
              goto LABEL_27;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v19 + 8));
LABEL_27:
          v25 = *(a1 + 98);
          *(a1 + 98) = v19;
          v24 = 1;
          if (v25)
          {
            goto LABEL_28;
          }
        }

        v26 = *(a1 + 17);
        if (v26)
        {
          while (1)
          {
            v27 = *v26;
            if ((*v26 & 1) == 0)
            {
              break;
            }

            v28 = *v26;
            atomic_compare_exchange_strong_explicit(v26, &v28, v27 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v28 == v27)
            {
              goto LABEL_34;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v26);
        }

LABEL_34:
        v29 = *(a1 + 98);
        if (v29)
        {
          while (1)
          {
            v30 = *(v29 + 8);
            if ((v30 & 1) == 0)
            {
              break;
            }

            v31 = *(v29 + 8);
            atomic_compare_exchange_strong_explicit((v29 + 8), &v31, v30 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v31 == v30)
            {
              goto LABEL_39;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v29 + 8));
        }

LABEL_39:
        WebCore::MediaPlayer::load();
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivateClient,(WTF::DestructionThread)0>::deref((v29 + 8), v32);
        if (v24)
        {
          v33 = *(a1 + 98);
          if (v33)
          {
            while (1)
            {
              v34 = v33[1];
              if ((v34 & 1) == 0)
              {
                break;
              }

              v35 = v33[1];
              atomic_compare_exchange_strong_explicit(v33 + 1, &v35, v34 + 2, memory_order_relaxed, memory_order_relaxed);
              if (v35 == v34)
              {
                goto LABEL_45;
              }
            }

            WTF::ThreadSafeWeakPtrControlBlock::strongRef(v33[1]);
          }

LABEL_45:
          WebCore::MediaPlayer::protectedPlayerPrivate(&v40, v26);
          WebKit::RemoteMediaSourceProxy::setMediaPlayers(v33, a1, v40);
          v37 = v40;
          v40 = 0;
          if (v37)
          {
            (*(*v37 + 8))(v37);
          }

          if (v33)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivateClient,(WTF::DestructionThread)0>::deref(v33 + 1, v36);
          }
        }

        WebKit::RemoteMediaPlayerProxy::getConfiguration(a1, &v38);
      }
    }

    v10 = 0;
  }

  else
  {
    v7 = 0;
    v38 = 0;
    v39 = 0;
    v10 = 1;
  }

  v11 = *a5;
  *a5 = 0;
  (*(*v11 + 16))(v11, &v38);
  (*(*v11 + 8))(v11);
  result = v38;
  v38 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v12);
    if (v10)
    {
      return result;
    }
  }

  else if (v10)
  {
    return result;
  }

  if (*(v7 + 16) == 1)
  {
    return (*(*v7 + 24))(v7);
  }

  --*(v7 + 16);
  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::cancelLoad(WebKit::RemoteMediaPlayerProxy *this)
{
  WTF::RunLoop::TimerBase::stop((this + 208));
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(this, &v3);
  WebCore::MediaPlayer::cancelLoad(v3);
  result = v3;
  v3 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::prepareForPlayback(uint64_t a1, BOOL a2, int a3, int a4, int a5, int a6, int a7, IntSize a8, float a9, char a10, char a11)
{
  v19 = a8;
  v15 = *(a1 + 136);
  if (v15)
  {
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
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v15);
  }

LABEL_6:
  WebCore::MediaPlayer::setPrivateBrowsingMode(v15);
  WebCore::MediaPlayer::setPreload();
  WebCore::MediaPlayer::setPreservesPitch(v15);
  WebCore::MediaPlayer::setPitchCorrectionAlgorithm();
  WebCore::MediaPlayer::setPreferredDynamicRangeMode();
  WebCore::MediaPlayer::setPlatformDynamicRangeLimit();
  WebCore::MediaPlayer::setPresentationSize(v15, &v19);
  result = WebCore::MediaPlayer::setInFullscreenOrPictureInPicture(v15);
  if (a6)
  {
    result = WebCore::MediaPlayer::prepareToPlay(v15);
  }

  if (a7)
  {
    result = WebCore::MediaPlayer::prepareForRendering(v15);
  }

  *(a1 + 812) = a9;
  if (v15)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v15);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::prepareToPlay(WebKit::RemoteMediaPlayerProxy *this)
{
  v2 = *(this + 113);
  atomic_fetch_add(v2 + 2, 1u);
  v3 = *(this + 95);
  v5[0] = "RemoteMediaPlayerProxy";
  v5[1] = 23;
  v5[2] = "prepareToPlay";
  v5[3] = v3;
  if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v2, &WebKit2LogMedia, 0, v5))
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogMedia, 0, v5);
  }

  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  WebKit::RemoteMediaPlayerProxy::protectedPlayer(this, v5);
  WebCore::MediaPlayer::prepareToPlay(v5[0]);
  result = v5[0];
  v5[0] = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
  }

  return result;
}

WTF *WebKit::RemoteMediaPlayerProxy::play(WebKit::RemoteMediaPlayerProxy *this)
{
  v2 = *(this + 17);
  if (v2)
  {
    while (1)
    {
      v3 = *v2;
      if ((*v2 & 1) == 0)
      {
        break;
      }

      v4 = *v2;
      atomic_compare_exchange_strong_explicit(v2, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v4 == v3)
      {
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
  }

LABEL_6:
  if (WebCore::MediaPlayer::movieLoadType(v2) != 3)
  {
    WebKit::RemoteMediaPlayerProxy::startUpdateCachedStateMessageTimer(this);
  }

  WebCore::MediaPlayer::play(v2);
  result = WebKit::RemoteMediaPlayerProxy::sendCachedState(this);
  if (v2)
  {

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v2);
  }

  return result;
}

uint64_t WebKit::RemoteMediaPlayerProxy::startUpdateCachedStateMessageTimer(WebKit::RemoteMediaPlayerProxy *this)
{
  result = WTF::RunLoop::TimerBase::isActive((this + 208));
  if ((result & 1) == 0)
  {

    return WTF::RunLoop::TimerBase::start();
  }

  return result;
}

WTF *WebKit::RemoteMediaPlayerProxy::sendCachedState(WebKit::RemoteMediaPlayerProxy *this)
{
  WebKit::RemoteMediaPlayerProxy::updateCachedState(this, 0);
  v2 = *(this + 16);
  while (1)
  {
    v3 = *v2;
    if ((*v2 & 1) == 0)
    {
      break;
    }

    v4 = *v2;
    atomic_compare_exchange_strong_explicit(v2, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_6:
  v7 = this + 256;
  IPC::Connection::send<Messages::MediaPlayerPrivateRemote::UpdateCachedState>(v2, &v7, *(this + 13), 0, 0);
  result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  if (*(this + 368) == 1)
  {
    result = *(this + 44);
    if (result)
    {
      *(this + 44) = 0;
      *(this + 90) = 0;
      result = WTF::fastFree(result, v6);
    }

    *(this + 368) = 0;
  }

  return result;
}

WTF *WebKit::RemoteMediaPlayerProxy::pause(WebKit::RemoteMediaPlayerProxy *this)
{
  WTF::RunLoop::TimerBase::stop((this + 208));
  WebKit::RemoteMediaPlayerProxy::updateCachedVideoMetrics(this);
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(this, &v4);
  WebCore::MediaPlayer::pause(v4);
  v2 = v4;
  v4 = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v2);
  }

  return WebKit::RemoteMediaPlayerProxy::sendCachedState(this);
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::updateCachedVideoMetrics(WebKit::RemoteMediaPlayerProxy *this)
{
  v89[1] = *MEMORY[0x1E69E9840];
  v2 = *(this + 113);
  atomic_fetch_add(v2 + 2, 1u);
  v3 = *(this + 95);
  *&buf = "RemoteMediaPlayerProxy";
  *(&buf + 1) = 23;
  v82 = "updateCachedVideoMetrics";
  v83 = v3;
  v4 = WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v2, &WebKit2LogMedia, 0, &buf);
  if (v4)
  {
    v4 = WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogMedia, 0, &buf);
  }

  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    v4 = (*(*v2 + 8))(v2);
  }

  result = WTF::MonotonicTime::now(v4);
  *(this + 100) = *(this + 99) + v6;
  if ((*(this + 808) & 1) == 0)
  {
    *(this + 808) = 1;
    WebKit::RemoteMediaPlayerProxy::protectedPlayer(this, &v63);
    v7 = WebCore::MediaPlayer::asyncVideoPlaybackQualityMetrics(&v64, v63);
    v8 = v64;
    v9 = WTF::RunLoop::currentSingleton(v7);
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 2, this);
    v10 = *(this + 1);
    atomic_fetch_add(v10, 1u);
    v11 = WTF::fastMalloc(0x50);
    while (1)
    {
      v12 = *(v9 + 8);
      if ((v12 & 1) == 0)
      {
        break;
      }

      v13 = *(v9 + 8);
      atomic_compare_exchange_strong_explicit((v9 + 8), &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v13 == v12)
      {
        goto LABEL_12;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v9 + 8));
LABEL_12:
    v14 = WTF::fastMalloc(0x10);
    v15 = 0;
    *v14 = &unk_1F10FCB70;
    *(v14 + 1) = v10;
    *(v11 + 8) = 1;
    *(v11 + 16) = v9;
    *(v11 + 24) = 0uLL;
    *(v11 + 40) = "updateCachedVideoMetrics";
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    *v11 = &unk_1F10FCB98;
    *(v11 + 64) = 0;
    *(v11 + 72) = v14;
    atomic_fetch_add((v8 + 8), 1u);
    v67 = 0uLL;
    v68 = "updateCachedVideoMetrics";
    v69 = 0;
    v65 = v8;
    v66 = 0;
    v70 = v11;
    v16 = (v8 + 48);
    atomic_compare_exchange_strong_explicit((v8 + 48), &v15, 1u, memory_order_acquire, memory_order_acquire);
    if (v15)
    {
      v14 = MEMORY[0x19EB01E30](v8 + 48);
    }

    *(v8 + 144) = 1;
    v17 = WTF::NativePromiseBase::logChannel(v14);
    if (*v17)
    {
      v18 = v17;
      if (v17[16] >= 4u)
      {
        WTF::Logger::LogSiteIdentifier::toString(&v79, &v67);
        WTF::String::String(&v78, " invoking maybeSettle() [");
        WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v77, v8);
        WTF::String::String(&v76, " callback:");
        WTF::LogArgument<void const*>::toString();
        WTF::String::String(&v74, " isNothing:");
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        WTF::String::String(&v72, "]");
        result = WTF::tryMakeString<WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String>(&v79, &v78, &v77, &v76, &v75, &v74, &v73, &v72, &v80);
        if (!v80)
        {
          __break(0xC471u);
          return result;
        }

        v20 = v72;
        v72 = 0;
        if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v20, v19);
        }

        v21 = v73;
        v73 = 0;
        if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v21, v19);
        }

        v22 = v74;
        v74 = 0;
        if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v22, v19);
        }

        v23 = v75;
        v75 = 0;
        if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v23, v19);
        }

        v24 = v76;
        v76 = 0;
        if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v24, v19);
        }

        v25 = v77;
        v77 = 0;
        if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v25, v19);
        }

        v26 = v78;
        v78 = 0;
        if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v26, v19);
        }

        v27 = v79;
        v79 = 0;
        if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v27, v19);
        }

        v28 = *(v18 + 4);
        v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
        if (v29)
        {
          WTF::String::utf8();
          v31 = v71[0] ? v71[0] + 16 : 0;
          LODWORD(buf) = 136446210;
          *(&buf + 4) = v31;
          _os_log_impl(&dword_19D52D000, v28, OS_LOG_TYPE_DEFAULT, "%{public}s", &buf, 0xCu);
          v29 = v71[0];
          v71[0] = 0;
          if (v29)
          {
            if (*v29 == 1)
            {
              v29 = WTF::fastFree(v29, v30);
            }

            else
            {
              --*v29;
            }
          }
        }

        if (*v18 && v18[16] >= 4u)
        {
          v32 = MEMORY[0x1E696EBC0];
          while (1)
          {
            v33 = *v32;
            if (v33)
            {
              break;
            }

            v34 = *v32;
            atomic_compare_exchange_strong_explicit(v32, &v34, v33 | 1, memory_order_acquire, memory_order_acquire);
            if (v34 == v33)
            {
              v35 = WTF::Logger::observers(v29);
              v36 = *(v35 + 12);
              if (v36)
              {
                v37 = *v35;
                v38 = *v35 + 8 * v36;
                do
                {
                  v39 = *v37;
                  LODWORD(buf) = 0;
                  WTF::Logger::LogSiteIdentifier::toString(&buf + 1, &v67);
                  LODWORD(v82) = 0;
                  WTF::String::String(&v83, " invoking maybeSettle() [");
                  v84 = 0;
                  WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v85, v8);
                  v86 = 0;
                  WTF::String::String(v87, " callback:");
                  v87[2] = 0;
                  WTF::LogArgument<void const*>::toString();
                  v87[6] = 0;
                  WTF::String::String(v88, " isNothing:");
                  v88[2] = 0;
                  WTF::StringImpl::createWithoutCopyingNonEmpty();
                  v88[6] = 0;
                  WTF::String::String(v89, "]");
                  WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v71, &buf, 8uLL);
                  (*(*v39 + 16))(v39, v18, 4, v71);
                  WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v71, v40);
                  for (i = 120; i != -8; i -= 16)
                  {
                    v42 = *(&buf + i);
                    *(&buf + i) = 0;
                    if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v42, v30);
                    }
                  }

                  ++v37;
                }

                while (v37 != v38);
              }

              v43 = 1;
              atomic_compare_exchange_strong_explicit(v32, &v43, 0, memory_order_release, memory_order_relaxed);
              v16 = (v8 + 48);
              if (v43 != 1)
              {
                WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
              }

              break;
            }
          }
        }

        v17 = v80;
        v80 = 0;
        if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v17 = WTF::StringImpl::destroy(v17, v30);
        }
      }
    }

    if (*(v8 + 96))
    {
      v44 = v70;
      if (!*(v70 + 16) || (v45 = atomic_load((v8 + 145)), v45 == 1) && (v17 = (*(**(v70 + 16) + 24))(*(v70 + 16)), v17))
      {
        if (*(v44 + 56) == 1)
        {
          *&buf = v44;
          v59 = WTF::NativePromiseBase::logChannel(v17);
          if (*v59 && v59[16] >= 4u)
          {
            WTF::Logger::log<char [32],WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(v59, v8, &buf, (v44 + 24));
          }
        }

        else
        {
          v60 = 1;
          atomic_compare_exchange_strong_explicit(v16, &v60, 0, memory_order_release, memory_order_relaxed);
          if (v60 != 1)
          {
            WTF::Lock::unlockSlow(v16);
          }

          if (WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::hasRunnable(v8))
          {
            WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::takeResultRunnable(v71, v8);
            v61 = v71[0];
            (*(*v71[0] + 16))(&buf, v71[0]);
            (*(*v44 + 24))(v44, v8, &buf);
            (*(*v61 + 8))(v61);
          }

          else
          {
            WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::takeResult(&buf, v8);
            (*(*v44 + 24))(v44, v8, &buf);
          }

          v62 = 0;
          atomic_compare_exchange_strong_explicit(v16, &v62, 1u, memory_order_acquire, memory_order_acquire);
          if (v62)
          {
            MEMORY[0x19EB01E30](v16);
          }
        }
      }

      else
      {
        v46 = *(v44 + 16);
        atomic_fetch_add((v44 + 8), 1u);
        atomic_fetch_add((v8 + 8), 1u);
        v47 = WTF::fastMalloc(0x18);
        *v47 = &unk_1F10FCE70;
        v47[1] = v44;
        v47[2] = v8;
        *&buf = v47;
        (*(*v46 + 16))(v46, &buf);
        v48 = buf;
        *&buf = 0;
        if (v48)
        {
          (*(*v48 + 8))(v48);
        }
      }
    }

    else
    {
      v49 = *(v8 + 116);
      if (v49 == *(v8 + 112))
      {
        v50 = WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v8 + 104, v49 + 1, &v70);
        v49 = *(v8 + 116);
        v51 = v49 + 1;
        v52 = *(v8 + 104);
        v53 = *v50;
        *v50 = 0;
      }

      else
      {
        v51 = v49 + 1;
        v52 = *(v8 + 104);
        v53 = v70;
        v70 = 0;
      }

      *(v52 + 8 * v49) = v53;
      *(v8 + 116) = v51;
    }

    v54 = 1;
    atomic_compare_exchange_strong_explicit(v16, &v54, 0, memory_order_release, memory_order_relaxed);
    if (v54 != 1)
    {
      WTF::Lock::unlockSlow(v16);
    }

    v55 = v70;
    v70 = 0;
    if (v55 && atomic_fetch_add(v55 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v55 + 2);
      (*(*v55 + 8))(v55);
    }

    v56 = v66;
    v66 = 0;
    if (v56 && atomic_fetch_add(v56 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v56 + 2);
      (*(*v56 + 8))(v56);
    }

    v57 = v65;
    v65 = 0;
    if (v57 && atomic_fetch_add(v57 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v57 + 2);
      (*(*v57 + 16))(v57);
    }

    v58 = v64;
    v64 = 0;
    if (v58 && atomic_fetch_add(v58 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v58 + 2);
      (*(*v58 + 16))(v58);
    }

    result = v63;
    v63 = 0;
    if (result)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
    }
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::seekToTarget(WebKit::RemoteMediaPlayerProxy *this, const WebCore::SeekTarget *a2)
{
  v4 = *(this + 113);
  atomic_fetch_add(v4 + 2, 1u);
  v5 = *(this + 95);
  v7[0] = "RemoteMediaPlayerProxy";
  v7[1] = 23;
  v7[2] = "seekToTarget";
  v7[3] = v5;
  if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,WebCore::SeekTarget>(v4, &WebKit2LogMedia, 0, v7, a2))
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,WebCore::SeekTarget>(&WebKit2LogMedia, 0, v7, a2);
  }

  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  WebKit::RemoteMediaPlayerProxy::protectedPlayer(this, v7);
  WebCore::MediaPlayer::seekToTarget();
  result = v7[0];
  v7[0] = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::setVolumeLocked(WebKit::RemoteMediaPlayerProxy *this)
{
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(this, &v2);
  WebCore::MediaPlayer::setVolumeLocked(v2);
  result = v2;
  v2 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::setVolume(WebKit::RemoteMediaPlayerProxy *this, double a2)
{
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(this, &v4);
  WebCore::MediaPlayer::setVolume(v4, a2);
  result = v4;
  v4 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::setMuted(WebKit::RemoteMediaPlayerProxy *this)
{
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(this, &v2);
  WebCore::MediaPlayer::setMuted(v2);
  result = v2;
  v2 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::setPreload(uint64_t a1)
{
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(a1, &v2);
  WebCore::MediaPlayer::setPreload();
  result = v2;
  v2 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::setPrivateBrowsingMode(WebKit::RemoteMediaPlayerProxy *this)
{
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(this, &v2);
  WebCore::MediaPlayer::setPrivateBrowsingMode(v2);
  result = v2;
  v2 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::setPreservesPitch(WebKit::RemoteMediaPlayerProxy *this)
{
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(this, &v2);
  WebCore::MediaPlayer::setPreservesPitch(v2);
  result = v2;
  v2 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::setPitchCorrectionAlgorithm(uint64_t a1)
{
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(a1, &v2);
  WebCore::MediaPlayer::setPitchCorrectionAlgorithm();
  result = v2;
  v2 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::prepareForRendering(WebKit::RemoteMediaPlayerProxy *this)
{
  v2 = *(this + 113);
  atomic_fetch_add(v2 + 2, 1u);
  v3 = *(this + 95);
  v5[0] = "RemoteMediaPlayerProxy";
  v5[1] = 23;
  v5[2] = "prepareForRendering";
  v5[3] = v3;
  if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v2, &WebKit2LogMedia, 0, v5))
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogMedia, 0, v5);
  }

  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  WebKit::RemoteMediaPlayerProxy::protectedPlayer(this, v5);
  WebCore::MediaPlayer::prepareForRendering(v5[0]);
  result = v5[0];
  v5[0] = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::setPageIsVisible(WebKit::RemoteMediaPlayerProxy *this, char a2)
{
  v7 = a2;
  v3 = *(this + 113);
  atomic_fetch_add(v3 + 2, 1u);
  v4 = *(this + 95);
  v6[0] = "RemoteMediaPlayerProxy";
  v6[1] = 23;
  v6[2] = "setPageIsVisible";
  v6[3] = v4;
  if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,BOOL>(v3, &WebKit2LogMedia, 0, v6))
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,BOOL>(&WebKit2LogMedia, 0, v6);
  }

  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  WebKit::RemoteMediaPlayerProxy::protectedPlayer(this, v6);
  WebCore::MediaPlayer::setPageIsVisible(v6[0]);
  result = v6[0];
  v6[0] = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::setShouldMaintainAspectRatio(WebKit::RemoteMediaPlayerProxy *this)
{
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(this, &v2);
  WebCore::MediaPlayer::setShouldMaintainAspectRatio(v2);
  result = v2;
  v2 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::setVideoFullscreenGravity(uint64_t a1)
{
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(a1, &v2);
  WebCore::MediaPlayer::setVideoFullscreenGravity();
  result = v2;
  v2 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::acceleratedRenderingStateChanged(WebKit::RemoteMediaPlayerProxy *this, char a2)
{
  v7 = a2;
  v3 = *(this + 113);
  atomic_fetch_add(v3 + 2, 1u);
  v4 = *(this + 95);
  v6[0] = "RemoteMediaPlayerProxy";
  v6[1] = 23;
  v6[2] = "acceleratedRenderingStateChanged";
  v6[3] = v4;
  if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,BOOL>(v3, &WebKit2LogMedia, 0, v6))
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,BOOL>(&WebKit2LogMedia, 0, v6);
  }

  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  *(this + 833) = v7;
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(this, v6);
  WebCore::MediaPlayer::acceleratedRenderingStateChanged(v6[0]);
  result = v6[0];
  v6[0] = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::setShouldDisableSleep(WebKit::RemoteMediaPlayerProxy *this)
{
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(this, &v2);
  WebCore::MediaPlayer::setShouldDisableSleep(v2);
  result = v2;
  v2 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::setRate(WebKit::RemoteMediaPlayerProxy *this, double a2)
{
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(this, &v4);
  WebCore::MediaPlayer::setRate(v4, a2);
  result = v4;
  v4 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::didLoadingProgress(uint64_t a1)
{
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(a1, &v15);
  WebCore::MediaPlayer::didLoadingProgress();
  v2 = v15;
  v15 = 0;
  if (v2)
  {
    v2 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v2);
  }

  v3 = *(a1 + 128);
  while (1)
  {
    v4 = *v3;
    if ((*v3 & 1) == 0)
    {
      break;
    }

    v5 = *v3;
    atomic_compare_exchange_strong_explicit(v3, &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v4)
    {
      goto LABEL_8;
    }
  }

  v2 = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v3);
LABEL_8:
  v6 = WTF::memoryFootprint(v2);
  v7 = *(a1 + 104);
  v9 = IPC::Encoder::operator new(0x238, v8);
  *v9 = 364;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = v7;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  IPC::Encoder::encodeHeader(v9);
  v15 = v9;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v9, v6);
  IPC::Connection::sendMessageImpl(v3, &v15, 0, 0);
  v11 = v15;
  v15 = 0;
  if (v11)
  {
    IPC::Encoder::~Encoder(v11, v10);
    bmalloc::api::tzoneFree(v13, v14);
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::setPresentationSize(atomic_ullong *this, const IntSize *a2)
{
  if (a2->m_width != *(this + 186) || a2->m_height != *(this + 187))
  {
    v6[3] = v2;
    v6[4] = v3;
    this[93] = *a2;
    WebKit::RemoteMediaPlayerProxy::protectedPlayer(this, v6);
    WebCore::MediaPlayer::setPresentationSize(v6[0], a2);
    this = v6[0];
    v6[0] = 0;
    if (this)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(this);
    }
  }

  return this;
}

atomic_uchar *WebKit::RemoteMediaPlayerProxy::requestResource@<X0>(atomic_uchar *result@<X0>, WebCore::ResourceRequest *a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v5 = *(result + 22);
  if (v5 && (v6 = *(v5 + 8)) != 0)
  {
    v7 = result;
    ++*(v6 + 16);
    result = *(v6 + 40);
    if (result && (result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(v6 + 32), &v35), v10 = v35, v35 = 0, v10))
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref(v10 + 2);
      v12 = *(v6 + 40);
      if (v12)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v12, *(v6 + 32), &v35);
        v12 = v35;
      }

      else
      {
        v35 = 0;
      }

      v13 = WebKit::GPUConnectionToWebProcess::remoteMediaResourceManager(v12, v11);
      v14 = (v13 + 8);
      while (1)
      {
        v15 = *v14;
        if ((*v14 & 1) == 0)
        {
          break;
        }

        v16 = *v14;
        atomic_compare_exchange_strong_explicit(v14, &v16, v15 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v16 == v15)
        {
          goto LABEL_15;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v14);
LABEL_15:
      v17 = v35;
      v35 = 0;
      if (v17)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref(v17 + 2);
      }

      IdentifierInternal = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
      if (WebKit::RemoteMediaResource::s_heapRef)
      {
        NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteMediaResource::s_heapRef, v18);
      }

      else
      {
        NonCompact = WebKit::RemoteMediaResource::operatorNewSlow(0);
      }

      v21 = NonCompact;
      *(NonCompact + 8) = 3;
      *(NonCompact + 16) = 0;
      *(NonCompact + 24) = 0;
      *NonCompact = &unk_1F10FCB40;
      *(NonCompact + 32) = v13;
      v22 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::controlBlock(v14);
      *(v21 + 40) = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v22);
      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v7 + 8), v7);
      v23 = *(v7 + 8);
      atomic_fetch_add(v23, 1u);
      *(v21 + 48) = v23;
      *(v21 + 56) = IdentifierInternal;
      *(v21 + 64) = 0;
      WebKit::RemoteMediaResourceManager::addMediaResource(v13, IdentifierInternal, v21);
      v25 = *(v7 + 128);
      while (1)
      {
        v26 = *v25;
        if ((*v25 & 1) == 0)
        {
          break;
        }

        v27 = *v25;
        atomic_compare_exchange_strong_explicit(v25, &v27, v26 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v27 == v26)
        {
          goto LABEL_24;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v25);
LABEL_24:
      v28 = *(v7 + 104);
      v29 = IPC::Encoder::operator new(0x238, v24);
      *v29 = 365;
      *(v29 + 2) = 0;
      *(v29 + 3) = 0;
      *(v29 + 1) = v28;
      *(v29 + 68) = 0;
      *(v29 + 70) = 0;
      *(v29 + 69) = 0;
      IPC::Encoder::encodeHeader(v29);
      v35 = v29;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v29, IdentifierInternal);
      IPC::ArgumentCoder<WebCore::ResourceRequest,void>::encode(v29, a2);
      IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v29, a3);
      IPC::Connection::sendMessageImpl(v25, &v35, 0, 0);
      v31 = v35;
      v35 = 0;
      if (v31)
      {
        IPC::Encoder::~Encoder(v31, v30);
        bmalloc::api::tzoneFree(v33, v34);
      }

      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v25);
      *a4 = v21;
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v14, v32);
    }

    else
    {
      *a4 = 0;
    }

    if (*(v6 + 16) == 1)
    {
      return (*(*v6 + 24))(v6);
    }

    else
    {
      --*(v6 + 16);
    }
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::sendH2Ping(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *(a1 + 128);
  while (1)
  {
    v7 = *v6;
    if ((*v6 & 1) == 0)
    {
      break;
    }

    v8 = *v6;
    atomic_compare_exchange_strong_explicit(v6, &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v8 == v7)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_6:
  v10 = a2;
  IPC::Connection::sendWithAsyncReply<Messages::MediaPlayerPrivateRemote::SendH2Ping,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)>>(v6, &v10, a3, *(a1 + 104), 0);
  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v6);
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::updateVideoFullscreenInlineImage(WebKit::RemoteMediaPlayerProxy *this)
{
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(this, &v2);
  WebCore::MediaPlayer::updateVideoFullscreenInlineImage(v2);
  result = v2;
  v2 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::setVideoFullscreenMode(WebKit::RemoteMediaPlayerProxy *this, int a2)
{
  *(this + 209) = a2;
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(this, &v3);
  WebCore::MediaPlayer::setVideoFullscreenMode(v3);
  result = v3;
  v3 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::videoFullscreenStandbyChanged(WebKit::RemoteMediaPlayerProxy *this, char a2)
{
  *(this + 840) = a2;
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(this, &v3);
  WebCore::MediaPlayer::videoFullscreenStandbyChanged(v3);
  result = v3;
  v3 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::setBufferingPolicy(uint64_t a1)
{
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(a1, &v2);
  WebCore::MediaPlayer::setBufferingPolicy();
  result = v2;
  v2 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::accessLog(uint64_t a1, uint64_t *a2)
{
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(a1, &v6);
  WebCore::MediaPlayer::accessLog(&v7, v6);
  WTF::CompletionHandler<void ()(WTF::String)>::operator()(a2, &v7);
  v4 = v7;
  v7 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v3);
  }

  result = v6;
  v6 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
  }

  return result;
}

uint64_t WTF::CompletionHandler<void ()(WTF::String)>::operator()(uint64_t *a1, WTF::StringImpl **a2)
{
  v2 = *a1;
  *a1 = 0;
  v3 = *a2;
  *a2 = 0;
  v7 = v3;
  v8 = v2;
  WTF::Function<void ()(WTF::String)>::operator()(&v8, &v7);
  v5 = v7;
  v7 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::errorLog(uint64_t a1, uint64_t *a2)
{
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(a1, &v6);
  WebCore::MediaPlayer::errorLog(&v7, v6);
  WTF::CompletionHandler<void ()(WTF::String)>::operator()(a2, &v7);
  v4 = v7;
  v7 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v3);
  }

  result = v6;
  v6 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::setSceneIdentifier(uint64_t a1, const WTF::String *a2)
{
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(a1, &v4);
  WebCore::MediaPlayer::setSceneIdentifier(v4, a2);
  result = v4;
  v4 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::mediaPlayerNetworkStateChanged(atomic_ullong **this)
{
  WebKit::RemoteMediaPlayerProxy::updateCachedState(this, 1);
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(this, &v14);
  *(this + 376) = WebCore::MediaPlayer::networkState(v14);
  v3 = v14;
  v14 = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v3);
  }

  v4 = this[16];
  while (1)
  {
    v5 = *v4;
    if ((*v4 & 1) == 0)
    {
      break;
    }

    v6 = *v4;
    atomic_compare_exchange_strong_explicit(v4, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v6 == v5)
    {
      goto LABEL_8;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_8:
  v7 = this[13];
  v8 = IPC::Encoder::operator new(0x238, v2);
  *v8 = 346;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v7;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v14 = v8;
  IPC::ArgumentCoder<WebKit::RemoteMediaPlayerState,void>::encode(v8, (this + 32));
  IPC::Connection::sendMessageImpl(v4, &v14, 0, 0);
  v10 = v14;
  v14 = 0;
  if (v10)
  {
    IPC::Encoder::~Encoder(v10, v9);
    bmalloc::api::tzoneFree(v12, v13);
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v4);
}

uint64_t WebKit::RemoteMediaPlayerProxy::updateCachedState(WebKit::RemoteMediaPlayerProxy *this, int a2)
{
  v4 = *(this + 17);
  if (v4)
  {
    while (1)
    {
      v5 = *v4;
      if ((*v4 & 1) == 0)
      {
        break;
      }

      v6 = *v4;
      atomic_compare_exchange_strong_explicit(v4, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v6 == v5)
      {
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
  }

LABEL_6:
  if (*(this + 873) != 1 || a2 != 0)
  {
    v14 = WebCore::MediaPlayer::currentTime(v4);
    v15 = v8;
    v16 = v9;
    WebKit::RemoteMediaPlayerProxy::currentTimeChanged(this, &v14);
  }

  result = WebCore::MediaPlayer::paused(v4);
  *(this + 474) = result;
  if ((result & 1) == 0 && *(this + 99) != 0.0)
  {
    result = WTF::MonotonicTime::now(result);
    if (v11 >= *(this + 100) && (*(this + 808) & 1) == 0)
    {
      result = WebKit::RemoteMediaPlayerProxy::updateCachedVideoMetrics(this);
    }
  }

  if (*(this + 832) == 1)
  {
    *(this + 832) = 0;
    v12 = *(this + 184);
    if (v12 != 1 && v12 != 8)
    {
      v13 = WebCore::MediaPlayer::buffered(v4);
      if (*(this + 368) == 1)
      {
        result = WTF::Vector<WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(this + 352, v13);
      }

      else
      {
        result = WTF::Vector<WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(this + 352, v13);
        *(this + 368) = 1;
      }
    }
  }

  if (v4)
  {

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v4);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::mediaPlayerReadyStateChanged(WebKit::RemoteMediaPlayerProxy *this)
{
  v2 = *(this + 17);
  if (v2)
  {
    while (1)
    {
      v3 = *v2;
      if ((*v2 & 1) == 0)
      {
        break;
      }

      v4 = *v2;
      atomic_compare_exchange_strong_explicit(v2, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v4 == v3)
      {
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
  }

LABEL_6:
  ready = WebCore::MediaPlayer::readyState(v2);
  v5 = *(this + 113);
  atomic_fetch_add(v5 + 2, 1u);
  v6 = *(this + 95);
  v36[0] = "RemoteMediaPlayerProxy";
  v36[1] = 23;
  v36[2] = "mediaPlayerReadyStateChanged";
  v36[3] = v6;
  if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,WebCore::MediaPlayerReadyState>(v5, &WebKit2LogMedia, 0, v36))
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,WebCore::MediaPlayerReadyState>(&WebKit2LogMedia, 0, v36);
  }

  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5 + 2);
    (*(*v5 + 8))(v5);
  }

  WebKit::RemoteMediaPlayerProxy::updateCachedVideoMetrics(this);
  WebKit::RemoteMediaPlayerProxy::updateCachedState(this, 1);
  *(this + 376) = WebCore::MediaPlayer::networkState(v2);
  *(this + 32) = WebCore::MediaPlayer::duration(v2);
  *(this + 66) = v7;
  *(this + 268) = v8;
  *(this + 377) = WebCore::MediaPlayer::movieLoadType(v2);
  *(this + 34) = WebCore::MediaPlayer::minTimeSeekable(v2);
  *(this + 70) = v9;
  *(this + 284) = v10;
  *(this + 36) = WebCore::MediaPlayer::maxTimeSeekable(v2);
  *(this + 74) = v11;
  *(this + 300) = v12;
  *(this + 38) = WebCore::MediaPlayer::getStartDate(v2);
  *(this + 78) = v13;
  *(this + 316) = v14;
  *(this + 40) = WebCore::MediaPlayer::startTime(v2);
  *(this + 82) = v15;
  *(this + 332) = v16;
  WebCore::MediaPlayer::naturalSize(v2);
  *(this + 95) = v17;
  *(this + 96) = v18;
  WebCore::MediaPlayer::maxFastForwardRate(v2);
  *(this + 49) = v19;
  WebCore::MediaPlayer::minFastReverseRate(v2);
  *(this + 50) = v20;
  WebCore::MediaPlayer::seekableTimeRangesLastModifiedTime(v2);
  *(this + 51) = v21;
  WebCore::MediaPlayer::liveUpdateInterval(v2);
  *(this + 52) = v22;
  *(this + 479) = WebCore::MediaPlayer::hasAvailableVideoFrame(v2);
  *(this + 480) = WebCore::MediaPlayer::wirelessVideoPlaybackDisabled(v2);
  *(this + 475) = WebCore::MediaPlayer::canSaveMediaData(v2);
  *(this + 481) = WebCore::MediaPlayer::didPassCORSAccessCheck(v2);
  WebCore::SecurityOriginData::securityOrigin(v36, (this + 712));
  *(this + 236) = WebCore::MediaPlayer::isCrossOrigin(v2, v36[0]) | 0x100;
  v24 = v36[0];
  v36[0] = 0;
  if (v24)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v24, v23);
  }

  v25 = *(this + 16);
  while (1)
  {
    v26 = *v25;
    if ((*v25 & 1) == 0)
    {
      break;
    }

    v27 = *v25;
    atomic_compare_exchange_strong_explicit(v25, &v27, v26 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v27 == v26)
    {
      goto LABEL_18;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v25);
LABEL_18:
  v28 = ready;
  v29 = *(this + 13);
  v30 = IPC::Encoder::operator new(0x238, v23);
  *v30 = 353;
  *(v30 + 2) = 0;
  *(v30 + 3) = 0;
  *(v30 + 1) = v29;
  *(v30 + 68) = 0;
  *(v30 + 70) = 0;
  *(v30 + 69) = 0;
  IPC::Encoder::encodeHeader(v30);
  v36[0] = v30;
  IPC::ArgumentCoder<WebKit::RemoteMediaPlayerState,void>::encode(v30, this + 256);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v30, v28);
  IPC::Connection::sendMessageImpl(v25, v36, 0, 0);
  v32 = v36[0];
  v36[0] = 0;
  if (v32)
  {
    IPC::Encoder::~Encoder(v32, v31);
    bmalloc::api::tzoneFree(v34, v35);
  }

  result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v25);
  if (v2)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v2);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::mediaPlayerVolumeChanged(WebKit::RemoteMediaPlayerProxy *this)
{
  v2 = *(this + 16);
  while (1)
  {
    v3 = *v2;
    if ((*v2 & 1) == 0)
    {
      break;
    }

    v4 = *v2;
    atomic_compare_exchange_strong_explicit(v2, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_6:
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(this, &v16);
  WebCore::MediaPlayer::volume(v16);
  v6 = v5;
  v7 = *(this + 13);
  v9 = IPC::Encoder::operator new(0x238, v8);
  *v9 = 376;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = v7;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  IPC::Encoder::encodeHeader(v9);
  v17 = v9;
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v9, v6);
  IPC::Connection::sendMessageImpl(v2, &v17, 0, 0);
  v11 = v17;
  v17 = 0;
  if (v11)
  {
    IPC::Encoder::~Encoder(v11, v10);
    bmalloc::api::tzoneFree(v14, v15);
  }

  v12 = v16;
  v16 = 0;
  if (v12)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v12);
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::mediaPlayerMuteChanged(WebKit::RemoteMediaPlayerProxy *this)
{
  v2 = *(this + 16);
  while (1)
  {
    v3 = *v2;
    if ((*v2 & 1) == 0)
    {
      break;
    }

    v4 = *v2;
    atomic_compare_exchange_strong_explicit(v2, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_6:
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(this, &v14);
  v15 = WebCore::MediaPlayer::muted(v14);
  v5 = *(this + 13);
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 345;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v5;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v16 = v7;
  IPC::Encoder::operator<<<BOOL &>(v7, &v15);
  IPC::Connection::sendMessageImpl(v2, &v16, 0, 0);
  v9 = v16;
  v16 = 0;
  if (v9)
  {
    IPC::Encoder::~Encoder(v9, v8);
    bmalloc::api::tzoneFree(v12, v13);
  }

  v10 = v14;
  v14 = 0;
  if (v10)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v10);
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::mediaPlayerSeeked(WebKit::RemoteMediaPlayerProxy *this, const WTF::MediaTime *a2)
{
  v62[2] = *MEMORY[0x1E69E9840];
  v4 = *(this + 113);
  atomic_fetch_add((v4 + 8), 1u);
  v5 = *(this + 95);
  v54[0] = "RemoteMediaPlayerProxy";
  v54[1] = 23;
  v54[2] = "mediaPlayerSeeked";
  v54[3] = v5;
  v6 = MEMORY[0x1E696EBD0];
  while (1)
  {
    v7 = *v6;
    if (v7)
    {
      break;
    }

    v8 = *v6;
    atomic_compare_exchange_strong_explicit(v6, &v8, v7 | 1, memory_order_acquire, memory_order_acquire);
    if (v8 == v7)
    {
      v9 = WTF::Logger::messageHandlerObservers(this);
      v10 = *(v9 + 12);
      if (v10)
      {
        v11 = *v9;
        v12 = *v9 + 8 * v10;
        do
        {
          v13 = *v11;
          *buf = 0;
          WTF::Logger::LogSiteIdentifier::toString(&buf[8], v54);
          v61 = 1;
          WTF::MediaTime::toJSONString(v62, a2);
          WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v55, buf, 2uLL);
          (*(*v13 + 16))(v13, &WebKit2LogMedia, 0, v55);
          WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v55, v14);
          for (i = 24; i != -8; i -= 16)
          {
            v17 = *&buf[i];
            *&buf[i] = 0;
            if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v17, v15);
            }
          }

          ++v11;
        }

        while (v11 != v12);
      }

      v18 = 1;
      atomic_compare_exchange_strong_explicit(v6, &v18, 0, memory_order_release, memory_order_relaxed);
      if (v18 != 1)
      {
        WTF::Lock::unlockSlow(MEMORY[0x1E696EBD0]);
      }

      if ((*(v4 + 12) & 1) == 0)
      {
        goto LABEL_47;
      }

      WTF::Logger::LogSiteIdentifier::toString(&v57, v54);
      WTF::MediaTime::toJSONString(&v56, a2);
      *buf = v57;
      v55[0] = v56;
      result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v55, &v58);
      if (!v58)
      {
        __break(0xC471u);
        return result;
      }

      v21 = v56;
      v56 = 0;
      if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v21, v20);
      }

      v22 = v57;
      v57 = 0;
      if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v20);
      }

      v23 = qword_1ED640D38;
      v24 = os_log_type_enabled(qword_1ED640D38, OS_LOG_TYPE_DEFAULT);
      if (v24)
      {
        WTF::String::utf8();
        v26 = v55[0] ? v55[0] + 16 : 0;
        *buf = 136446210;
        *&buf[4] = v26;
        _os_log_impl(&dword_19D52D000, v23, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
        v24 = v55[0];
        v55[0] = 0;
        if (v24)
        {
          if (*v24 == 1)
          {
            v24 = WTF::fastFree(v24, v25);
          }

          else
          {
            --*v24;
          }
        }
      }

      if (WebKit2LogMedia)
      {
        v27 = MEMORY[0x1E696EBC0];
        while (1)
        {
          v28 = *v27;
          if (v28)
          {
            break;
          }

          v29 = *v27;
          atomic_compare_exchange_strong_explicit(v27, &v29, v28 | 1, memory_order_acquire, memory_order_acquire);
          if (v29 == v28)
          {
            v30 = WTF::Logger::observers(v24);
            v31 = *(v30 + 12);
            if (v31)
            {
              v32 = *v30;
              v33 = *v30 + 8 * v31;
              do
              {
                v34 = *v32;
                *buf = 0;
                WTF::Logger::LogSiteIdentifier::toString(&buf[8], v54);
                v61 = 1;
                WTF::MediaTime::toJSONString(v62, a2);
                WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v55, buf, 2uLL);
                (*(*v34 + 16))(v34, &WebKit2LogMedia, 0, v55);
                WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v55, v35);
                for (j = 24; j != -8; j -= 16)
                {
                  v37 = *&buf[j];
                  *&buf[j] = 0;
                  if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v37, v25);
                  }
                }

                ++v32;
              }

              while (v32 != v33);
            }

            v38 = 1;
            atomic_compare_exchange_strong_explicit(v27, &v38, 0, memory_order_release, memory_order_relaxed);
            if (v38 != 1)
            {
              WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
            }

            break;
          }
        }
      }

      v39 = v58;
      v58 = 0;
      if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v39, v25);
      }

      break;
    }
  }

  if (!v4)
  {
    goto LABEL_49;
  }

LABEL_47:
  if (atomic_fetch_add((v4 + 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v4 + 8));
    (*(*v4 + 8))(v4);
  }

LABEL_49:
  v40 = *(this + 16);
  while (1)
  {
    v41 = *v40;
    if ((*v40 & 1) == 0)
    {
      break;
    }

    v42 = *v40;
    atomic_compare_exchange_strong_explicit(v40, &v42, v41 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v42 == v41)
    {
      goto LABEL_54;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v40);
LABEL_54:
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(this, v55);
  v43 = *(a2 + 1);
  *buf = *a2;
  *&buf[8] = v43;
  v60 = BYTE4(v43);
  IsProgressing = WebCore::MediaPlayer::timeIsProgressing(v55[0]);
  LOBYTE(v61) = IsProgressing;
  WTF::MonotonicTime::now(IsProgressing);
  v62[0] = v45;
  v46 = *(this + 13);
  v48 = IPC::Encoder::operator new(0x238, v47);
  *v48 = 367;
  *(v48 + 2) = 0;
  *(v48 + 3) = 0;
  *(v48 + 1) = v46;
  *(v48 + 68) = 0;
  *(v48 + 70) = 0;
  *(v48 + 69) = 0;
  IPC::Encoder::encodeHeader(v48);
  v54[0] = v48;
  IPC::ArgumentCoder<WebKit::MediaTimeUpdateData,void>::encode(v48, buf);
  IPC::Connection::sendMessageImpl(v40, v54, 0, 0);
  v50 = v54[0];
  v54[0] = 0;
  if (v50)
  {
    IPC::Encoder::~Encoder(v50, v49);
    bmalloc::api::tzoneFree(v52, v53);
  }

  v51 = v55[0];
  v55[0] = 0;
  if (v51)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v51);
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v40);
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::mediaPlayerTimeChanged(atomic_ullong **this)
{
  WebKit::RemoteMediaPlayerProxy::updateCachedState(this, 1);
  v2 = this[17];
  if (v2)
  {
    while (1)
    {
      v3 = *v2;
      if ((*v2 & 1) == 0)
      {
        break;
      }

      v4 = *v2;
      atomic_compare_exchange_strong_explicit(v2, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v4 == v3)
      {
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
  }

LABEL_6:
  this[32] = WebCore::MediaPlayer::duration(v2);
  *(this + 66) = v5;
  *(this + 268) = v6;
  v7 = this[16];
  while (1)
  {
    v8 = *v7;
    if ((*v7 & 1) == 0)
    {
      break;
    }

    v9 = *v7;
    atomic_compare_exchange_strong_explicit(v7, &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v9 == v8)
    {
      goto LABEL_11;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v7);
LABEL_11:
  v22 = WebCore::MediaPlayer::currentTime(v2);
  v23 = v10;
  v24 = v11;
  IsProgressing = WebCore::MediaPlayer::timeIsProgressing(v2);
  v25 = IsProgressing;
  WTF::MonotonicTime::now(IsProgressing);
  v26 = v13;
  v14 = this[13];
  v16 = IPC::Encoder::operator new(0x238, v15);
  *v16 = 371;
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 1) = v14;
  *(v16 + 68) = 0;
  *(v16 + 70) = 0;
  *(v16 + 69) = 0;
  IPC::Encoder::encodeHeader(v16);
  v27 = v16;
  IPC::ArgumentCoder<WebKit::RemoteMediaPlayerState,void>::encode(v16, (this + 32));
  IPC::ArgumentCoder<WebKit::MediaTimeUpdateData,void>::encode(v16, &v22);
  IPC::Connection::sendMessageImpl(v7, &v27, 0, 0);
  v18 = v27;
  v27 = 0;
  if (v18)
  {
    IPC::Encoder::~Encoder(v18, v17);
    bmalloc::api::tzoneFree(v20, v21);
  }

  result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v7);
  if (v2)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v2);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::mediaPlayerDurationChanged(atomic_ullong **this)
{
  WebKit::RemoteMediaPlayerProxy::updateCachedState(this, 1);
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(this, &v14);
  this[32] = WebCore::MediaPlayer::duration(v14);
  *(this + 66) = v2;
  *(this + 268) = BYTE4(v2);
  v3 = v14;
  v14 = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v3);
  }

  v4 = this[16];
  while (1)
  {
    v5 = *v4;
    if ((*v4 & 1) == 0)
    {
      break;
    }

    v6 = *v4;
    atomic_compare_exchange_strong_explicit(v4, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v6 == v5)
    {
      goto LABEL_8;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_8:
  v7 = this[13];
  v8 = IPC::Encoder::operator new(0x238, v2);
  *v8 = 338;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v7;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v14 = v8;
  IPC::ArgumentCoder<WebKit::RemoteMediaPlayerState,void>::encode(v8, (this + 32));
  IPC::Connection::sendMessageImpl(v4, &v14, 0, 0);
  v10 = v14;
  v14 = 0;
  if (v10)
  {
    IPC::Encoder::~Encoder(v10, v9);
    bmalloc::api::tzoneFree(v12, v13);
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v4);
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::mediaPlayerRateChanged(atomic_ullong **this)
{
  WebKit::RemoteMediaPlayerProxy::updateCachedVideoMetrics(this);
  WebKit::RemoteMediaPlayerProxy::sendCachedState(this);
  v2 = this[17];
  if (v2)
  {
    while (1)
    {
      v3 = *v2;
      if ((*v2 & 1) == 0)
      {
        break;
      }

      v4 = *v2;
      atomic_compare_exchange_strong_explicit(v2, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v4 == v3)
      {
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
  }

LABEL_6:
  v5 = this[16];
  while (1)
  {
    v6 = *v5;
    if ((*v5 & 1) == 0)
    {
      break;
    }

    v7 = *v5;
    atomic_compare_exchange_strong_explicit(v5, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v6)
    {
      goto LABEL_11;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_11:
  WebCore::MediaPlayer::effectiveRate(v2);
  v9 = v8;
  v22 = WebCore::MediaPlayer::currentTime(v2);
  v23 = v10;
  v24 = v11;
  IsProgressing = WebCore::MediaPlayer::timeIsProgressing(v2);
  v25 = IsProgressing;
  WTF::MonotonicTime::now(IsProgressing);
  v26 = v13;
  v14 = this[13];
  v16 = IPC::Encoder::operator new(0x238, v15);
  *v16 = 352;
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 1) = v14;
  *(v16 + 68) = 0;
  *(v16 + 70) = 0;
  *(v16 + 69) = 0;
  IPC::Encoder::encodeHeader(v16);
  v27 = v16;
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v16, v9);
  IPC::ArgumentCoder<WebKit::MediaTimeUpdateData,void>::encode(v16, &v22);
  IPC::Connection::sendMessageImpl(v5, &v27, 0, 0);
  v18 = v27;
  v27 = 0;
  if (v18)
  {
    IPC::Encoder::~Encoder(v18, v17);
    bmalloc::api::tzoneFree(v20, v21);
  }

  result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v5);
  if (v2)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v2);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::mediaPlayerEngineFailedToLoad(WebKit::RemoteMediaPlayerProxy *this)
{
  v2 = *(this + 16);
  while (1)
  {
    v3 = *v2;
    if ((*v2 & 1) == 0)
    {
      break;
    }

    v4 = *v2;
    atomic_compare_exchange_strong_explicit(v2, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_6:
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(this, &v15);
  v5 = WebCore::MediaPlayer::platformErrorCode(v15);
  v6 = *(this + 13);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 339;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v16 = v8;
  IPC::ArgumentCoder<API::Int64,void>::encode(v8, v5);
  IPC::Connection::sendMessageImpl(v2, &v16, 0, 0);
  v10 = v16;
  v16 = 0;
  if (v10)
  {
    IPC::Encoder::~Encoder(v10, v9);
    bmalloc::api::tzoneFree(v13, v14);
  }

  v11 = v15;
  v15 = 0;
  if (v11)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v11);
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
}

atomic_uchar *WebKit::RemoteMediaPlayerProxy::mediaPlayerMediaKeysStorageDirectory@<X0>(atomic_uchar *this@<X0>, atomic_uint **a2@<X8>)
{
  v3 = *(this + 22);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_6;
  }

  v4 = *(v3 + 8);
  if (!v4)
  {
LABEL_6:
    LOBYTE(v5) = 1;
    goto LABEL_7;
  }

  ++*(v4 + 16);
  this = *(v4 + 40);
  if (this)
  {
    this = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(this, *(v4 + 32), &v10);
    v5 = v10;
    v10 = 0;
    if (v5)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref(v5 + 2);
      v7 = *(v4 + 40);
      if (v7)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v7, *(v4 + 32), &v10);
        v7 = v10;
      }

      else
      {
        v10 = 0;
      }

      this = WebKit::GPUConnectionToWebProcess::mediaKeysStorageDirectory(v7);
      v8 = *this;
      if (*this)
      {
        atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
      }

      *a2 = v8;
      v9 = v10;
      v10 = 0;
      if (v9)
      {
        this = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref(v9 + 2);
      }

      goto LABEL_10;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

LABEL_7:
  v6 = *MEMORY[0x1E696EBA8];
  if (*MEMORY[0x1E696EBA8])
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  *a2 = v6;
  if ((v5 & 1) == 0)
  {
LABEL_10:
    if (*(v4 + 16) == 1)
    {
      return (*(*v4 + 24))(v4);
    }

    else
    {
      --*(v4 + 16);
    }
  }

  return this;
}

uint64_t WebKit::RemoteMediaPlayerProxy::mediaPlayerReferrer@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(this + 488);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a2 = v2;
  return this;
}

uint64_t WebKit::RemoteMediaPlayerProxy::mediaPlayerUserAgent@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(this + 496);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a2 = v2;
  return this;
}

uint64_t WebKit::RemoteMediaPlayerProxy::mediaPlayerSourceApplicationIdentifier@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(this + 504);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a2 = v2;
  return this;
}

uint64_t WebKit::RemoteMediaPlayerProxy::mediaPlayerNetworkInterfaceName@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(this + 512);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a2 = v2;
  return this;
}

uint64_t WebKit::RemoteMediaPlayerProxy::mediaPlayerGetRawCookies(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *(a1 + 128);
  while (1)
  {
    v7 = *v6;
    if ((*v6 & 1) == 0)
    {
      break;
    }

    v8 = *v6;
    atomic_compare_exchange_strong_explicit(v6, &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v8 == v7)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_6:
  v9 = *(a1 + 104);
  v10 = *a3;
  *a3 = 0;
  v11 = WTF::fastMalloc(0x10);
  *v11 = &unk_1F10FCE00;
  v11[1] = v10;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v12 = v11;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v15 = IPC::Encoder::operator new(0x238, v14);
    *v15 = 341;
    *(v15 + 2) = 0;
    *(v15 + 3) = 0;
    *(v15 + 1) = v9;
    *(v15 + 68) = 0;
    *(v15 + 70) = 0;
    *(v15 + 69) = 0;
    IPC::Encoder::encodeHeader(v15);
    v23 = v15;
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v15, a2);
    v22[0] = v12;
    v22[1] = IdentifierInternal;
    IPC::Connection::sendMessageWithAsyncReply(v6, &v23, v22, 0, 0);
    v17 = v22[0];
    v22[0] = 0;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    v18 = v23;
    v23 = 0;
    if (v18)
    {
      IPC::Encoder::~Encoder(v18, v16);
      bmalloc::api::tzoneFree(v20, v21);
    }

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v6);
  }

  return result;
}

uint64_t *WebKit::RemoteMediaPlayerProxy::mediaPlayerMediaCacheDirectory(WebKit::RemoteMediaPlayerProxy *this)
{
  v1 = *(this + 22);
  if (!v1)
  {
    return MEMORY[0x1E696EBA8];
  }

  v2 = *(v1 + 8);
  if (!v2)
  {
    return MEMORY[0x1E696EBA8];
  }

  ++*(v2 + 16);
  v3 = *(v2 + 40);
  if (v3 && (WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v3, *(v2 + 32), &v9), v6 = v9, v9 = 0, v6))
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref(v6 + 2);
    v7 = *(v2 + 40);
    if (v7)
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v7, *(v2 + 32), &v9);
      v7 = v9;
    }

    else
    {
      v9 = 0;
    }

    v4 = WebKit::GPUConnectionToWebProcess::mediaCacheDirectory(v7);
    v8 = v9;
    v9 = 0;
    if (v8)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref(v8 + 2);
    }
  }

  else
  {
    v4 = MEMORY[0x1E696EBA8];
  }

  if (*(v2 + 16) == 1)
  {
    (*(*v2 + 24))(v2);
  }

  else
  {
    --*(v2 + 16);
  }

  return v4;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::mediaPlayerPlaybackStateChanged(WebKit::RemoteMediaPlayerProxy *this)
{
  v2 = *(this + 17);
  if (v2)
  {
    while (1)
    {
      v3 = *v2;
      if ((*v2 & 1) == 0)
      {
        break;
      }

      v4 = *v2;
      atomic_compare_exchange_strong_explicit(v2, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v4 == v3)
      {
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
  }

LABEL_6:
  *(this + 474) = WebCore::MediaPlayer::paused(v2);
  v5 = *(this + 16);
  while (1)
  {
    v6 = *v5;
    if ((*v5 & 1) == 0)
    {
      break;
    }

    v7 = *v5;
    atomic_compare_exchange_strong_explicit(v5, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v6)
    {
      goto LABEL_11;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_11:
  v8 = *(this + 474);
  v21 = WebCore::MediaPlayer::currentTime(v2);
  v22 = v9;
  v23 = v10;
  IsProgressing = WebCore::MediaPlayer::timeIsProgressing(v2);
  v24 = IsProgressing;
  WTF::MonotonicTime::now(IsProgressing);
  v25 = v12;
  v26[0] = v8;
  v27 = &v21;
  v13 = *(this + 13);
  v15 = IPC::Encoder::operator new(0x238, v14);
  *v15 = 350;
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 1) = v13;
  *(v15 + 68) = 0;
  *(v15 + 70) = 0;
  *(v15 + 69) = 0;
  IPC::Encoder::encodeHeader(v15);
  v28 = v15;
  IPC::Encoder::operator<<<BOOL &>(v15, v26);
  IPC::ArgumentCoder<WebKit::MediaTimeUpdateData,void>::encode(v15, v27);
  IPC::Connection::sendMessageImpl(v5, &v28, 0, 0);
  v17 = v28;
  v28 = 0;
  if (v17)
  {
    IPC::Encoder::~Encoder(v17, v16);
    bmalloc::api::tzoneFree(v19, v20);
  }

  result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v5);
  if (v2)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v2);
  }

  return result;
}

uint64_t WebKit::RemoteMediaPlayerProxy::mediaPlayerSeekableTimeRangesChanged(WebKit::RemoteMediaPlayerProxy *this)
{
  v2 = this + 280;
  v3 = *(this + 17);
  if (v3)
  {
    while (1)
    {
      v4 = *v3;
      if ((*v3 & 1) == 0)
      {
        break;
      }

      v5 = *v3;
      atomic_compare_exchange_strong_explicit(v3, &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v5 == v4)
      {
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v3);
  }

LABEL_6:
  *(this + 34) = WebCore::MediaPlayer::minTimeSeekable(v3);
  *v2 = v6;
  v2[4] = v7;
  *(this + 36) = WebCore::MediaPlayer::maxTimeSeekable(v3);
  *(v2 + 4) = v8;
  v2[20] = v9;
  WebCore::MediaPlayer::seekableTimeRangesLastModifiedTime(v3);
  *(this + 51) = v10;
  WebCore::MediaPlayer::liveUpdateInterval(v3);
  *(this + 52) = v11;
  result = WTF::RunLoop::TimerBase::isActive((this + 208));
  if ((result & 1) == 0)
  {
    result = WebKit::RemoteMediaPlayerProxy::sendCachedState(this);
  }

  if (v3)
  {

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v3);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::mediaPlayerCharacteristicChanged(WebKit::RemoteMediaPlayerProxy *this)
{
  WebKit::RemoteMediaPlayerProxy::updateCachedVideoMetrics(this);
  WebKit::RemoteMediaPlayerProxy::updateCachedState(this, 0);
  v2 = *(this + 17);
  if (v2)
  {
    while (1)
    {
      v3 = *v2;
      if ((*v2 & 1) == 0)
      {
        break;
      }

      v4 = *v2;
      atomic_compare_exchange_strong_explicit(v2, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v4 == v3)
      {
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
  }

LABEL_6:
  *(this + 476) = WebCore::MediaPlayer::hasAudio(v2);
  *(this + 477) = WebCore::MediaPlayer::hasVideo(v2);
  *(this + 478) = WebCore::MediaPlayer::hasClosedCaptions(v2);
  WebCore::MediaPlayer::languageOfPrimaryAudioTrack(&v19, v2);
  v6 = v19;
  v19 = 0;
  v7 = *(this + 42);
  *(this + 42) = v6;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v5);
    }

    v8 = v19;
    v19 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v5);
    }
  }

  v9 = *(this + 16);
  while (1)
  {
    v10 = *v9;
    if ((*v9 & 1) == 0)
    {
      break;
    }

    v11 = *v9;
    atomic_compare_exchange_strong_explicit(v9, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v11 == v10)
    {
      goto LABEL_17;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_17:
  v12 = *(this + 13);
  v13 = IPC::Encoder::operator new(0x238, v5);
  *v13 = 334;
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 1) = v12;
  *(v13 + 68) = 0;
  *(v13 + 70) = 0;
  *(v13 + 69) = 0;
  IPC::Encoder::encodeHeader(v13);
  v19 = v13;
  IPC::ArgumentCoder<WebKit::RemoteMediaPlayerState,void>::encode(v13, this + 256);
  IPC::Connection::sendMessageImpl(v9, &v19, 0, 0);
  v15 = v19;
  v19 = 0;
  if (v15)
  {
    IPC::Encoder::~Encoder(v15, v14);
    bmalloc::api::tzoneFree(v17, v18);
  }

  result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v9);
  if (v2)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v2);
  }

  return result;
}

atomic_uchar *WebKit::RemoteMediaPlayerProxy::addRemoteAudioTrackProxy(atomic_uchar *this, atomic_ullong *a2)
{
  v2 = *(this + 22);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v4 = this;
      ++*(v3 + 16);
      this = *(v3 + 40);
      if (this)
      {
        this = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(this, *(v3 + 32), &v32);
        v6 = v32;
        v32 = 0;
        if (v6)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v6 + 16));
          v7 = *(v4 + 904);
          atomic_fetch_add(v7 + 2, 1u);
          (*(*a2 + 112))(a2, v7, *(v4 + 760));
          if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v7 + 2);
            (*(*v7 + 8))(v7);
          }

          v9 = *(v4 + 56);
          v10 = *(v4 + 68);
          if (v10)
          {
            v11 = 8 * v10;
            while (1)
            {
              v12 = *(*v9 + 5);
              if (WebCore::TrackPrivateBase::operator==())
              {
                if (WebCore::operator==((a2 + 8), v12 + 64, v13))
                {
                  v14 = (*(*a2 + 128))(a2);
                  this = (*(*v12 + 128))(v12);
                  if (v14 == this)
                  {
                    break;
                  }
                }
              }

              v15 = (*(**(*v9 + 5) + 48))(*(*v9 + 5));
              if (v15 == (*(*a2 + 48))(a2))
              {
                v26 = *(v3 + 40);
                if (v26)
                {
                  v26 = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v26, *(v3 + 32), &v32);
                  v27 = v32;
                }

                else
                {
                  v27 = 0;
                  v32 = 0;
                }

                v28 = *(v4 + 104);
                v29 = WebKit::RemoteAudioTrackProxy::operator new(v26, v8);
                this = WebKit::RemoteAudioTrackProxy::RemoteAudioTrackProxy(v29, v27, a2, v28);
                v30 = *v9;
                *v9 = this;
                if (v30)
                {
                  this = WTF::ThreadSafeRefCounted<WebKit::RemoteAudioTrackProxy,(WTF::DestructionThread)1>::deref(v30 + 4);
                }

                v25 = v32;
                v32 = 0;
                if (!v25)
                {
                  break;
                }

                goto LABEL_31;
              }

              ++v9;
              v11 -= 8;
              if (!v11)
              {
                goto LABEL_18;
              }
            }
          }

          else
          {
LABEL_18:
            v16 = *(v3 + 40);
            if (v16)
            {
              v16 = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v16, *(v3 + 32), &v31);
              v17 = v31;
            }

            else
            {
              v17 = 0;
              v31 = 0;
            }

            v18 = *(v4 + 104);
            v19 = WebKit::RemoteAudioTrackProxy::operator new(v16, v8);
            this = WebKit::RemoteAudioTrackProxy::RemoteAudioTrackProxy(v19, v17, a2, v18);
            v32 = this;
            v20 = *(v4 + 68);
            if (v20 == *(v4 + 64))
            {
              this = WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v4 + 56, v20 + 1, &v32);
              v21 = *(v4 + 68);
              v22 = *(v4 + 56);
              v23 = *this;
              *this = 0;
              *(v22 + 8 * v21) = v23;
              v24 = v32;
              *(v4 + 68) = v21 + 1;
              v32 = 0;
              if (v24)
              {
                this = WTF::ThreadSafeRefCounted<WebKit::RemoteAudioTrackProxy,(WTF::DestructionThread)1>::deref((v24 + 16));
              }
            }

            else
            {
              *(*(v4 + 56) + 8 * v20) = this;
              *(v4 + 68) = v20 + 1;
              v32 = 0;
            }

            v25 = v31;
            v31 = 0;
            if (v25)
            {
LABEL_31:
              this = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v25 + 16));
            }
          }
        }
      }

      if (*(v3 + 16) == 1)
      {
        return (*(*v3 + 24))(v3, a2);
      }

      else
      {
        --*(v3 + 16);
      }
    }
  }

  return this;
}

uint64_t WebKit::RemoteMediaPlayerProxy::audioTrackSetEnabled(uint64_t this, uint64_t a2, char a3)
{
  v3 = *(this + 68);
  if (v3)
  {
    v6 = *(this + 56);
    v7 = 8 * v3;
    while (1)
    {
      this = (*(**(*v6 + 40) + 48))(*(*v6 + 40));
      if (this == a2)
      {
        break;
      }

      ++v6;
      v7 -= 8;
      if (!v7)
      {
        return this;
      }
    }

    v8 = *v6;
    *(v8 + 64) = a3;
    v9 = *(**(v8 + 40) + 120);

    return v9();
  }

  return this;
}

atomic_uchar *WebKit::RemoteMediaPlayerProxy::addRemoteVideoTrackProxy(atomic_uchar *this, atomic_ullong *a2)
{
  v2 = *(this + 22);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v4 = this;
      ++*(v3 + 16);
      this = *(v3 + 40);
      if (this)
      {
        this = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(this, *(v3 + 32), &v32);
        v6 = v32;
        v32 = 0;
        if (v6)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v6 + 16));
          v7 = *(v4 + 904);
          atomic_fetch_add(v7 + 2, 1u);
          (*(*a2 + 112))(a2, v7, *(v4 + 760));
          if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v7 + 2);
            (*(*v7 + 8))(v7);
          }

          v9 = *(v4 + 72);
          v10 = *(v4 + 84);
          if (v10)
          {
            v11 = 8 * v10;
            while (1)
            {
              v12 = *(*v9 + 5);
              if (WebCore::TrackPrivateBase::operator==())
              {
                if (WebCore::operator==((a2 + 8), v12 + 64, v13))
                {
                  v14 = (*(*a2 + 136))(a2);
                  this = (*(*v12 + 136))(v12);
                  if (v14 == this)
                  {
                    break;
                  }
                }
              }

              v15 = (*(**(*v9 + 5) + 48))(*(*v9 + 5));
              if (v15 == (*(*a2 + 48))(a2))
              {
                v26 = *(v3 + 40);
                if (v26)
                {
                  v26 = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v26, *(v3 + 32), &v32);
                  v27 = v32;
                }

                else
                {
                  v27 = 0;
                  v32 = 0;
                }

                v28 = *(v4 + 104);
                v29 = WebKit::RemoteVideoTrackProxy::operator new(v26, v8);
                this = WebKit::RemoteVideoTrackProxy::RemoteVideoTrackProxy(v29, v27, a2, v28);
                v30 = *v9;
                *v9 = this;
                if (v30)
                {
                  this = WTF::ThreadSafeRefCounted<WebKit::RemoteVideoTrackProxy,(WTF::DestructionThread)1>::deref(v30 + 4);
                }

                v25 = v32;
                v32 = 0;
                if (!v25)
                {
                  break;
                }

                goto LABEL_31;
              }

              ++v9;
              v11 -= 8;
              if (!v11)
              {
                goto LABEL_18;
              }
            }
          }

          else
          {
LABEL_18:
            v16 = *(v3 + 40);
            if (v16)
            {
              v16 = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v16, *(v3 + 32), &v31);
              v17 = v31;
            }

            else
            {
              v17 = 0;
              v31 = 0;
            }

            v18 = *(v4 + 104);
            v19 = WebKit::RemoteVideoTrackProxy::operator new(v16, v8);
            this = WebKit::RemoteVideoTrackProxy::RemoteVideoTrackProxy(v19, v17, a2, v18);
            v32 = this;
            v20 = *(v4 + 84);
            if (v20 == *(v4 + 80))
            {
              this = WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v4 + 72, v20 + 1, &v32);
              v21 = *(v4 + 84);
              v22 = *(v4 + 72);
              v23 = *this;
              *this = 0;
              *(v22 + 8 * v21) = v23;
              v24 = v32;
              *(v4 + 84) = v21 + 1;
              v32 = 0;
              if (v24)
              {
                this = WTF::ThreadSafeRefCounted<WebKit::RemoteVideoTrackProxy,(WTF::DestructionThread)1>::deref((v24 + 16));
              }
            }

            else
            {
              *(*(v4 + 72) + 8 * v20) = this;
              *(v4 + 84) = v20 + 1;
              v32 = 0;
            }

            v25 = v31;
            v31 = 0;
            if (v25)
            {
LABEL_31:
              this = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v25 + 16));
            }
          }
        }
      }

      if (*(v3 + 16) == 1)
      {
        return (*(*v3 + 24))(v3, a2);
      }

      else
      {
        --*(v3 + 16);
      }
    }
  }

  return this;
}

uint64_t WebKit::RemoteMediaPlayerProxy::videoTrackSetSelected(uint64_t this, uint64_t a2, char a3)
{
  v3 = *(this + 84);
  if (v3)
  {
    v6 = *(this + 72);
    v7 = 8 * v3;
    while (1)
    {
      this = (*(**(*v6 + 40) + 48))(*(*v6 + 40));
      if (this == a2)
      {
        break;
      }

      ++v6;
      v7 -= 8;
      if (!v7)
      {
        return this;
      }
    }

    v8 = *v6;
    *(v8 + 64) = a3;
    v9 = *(**(v8 + 40) + 120);

    return v9();
  }

  return this;
}

atomic_uchar *WebKit::RemoteMediaPlayerProxy::addRemoteTextTrackProxy(atomic_uchar *this, WebCore::InbandTextTrackPrivate *a2)
{
  v2 = *(this + 22);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v4 = this;
      ++*(v3 + 16);
      this = *(v3 + 40);
      if (this)
      {
        this = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(this, *(v3 + 32), &v39);
        v6 = v39;
        v39 = 0;
        if (v6)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref(v6 + 2);
          v7 = *(v4 + 904);
          atomic_fetch_add(v7 + 2, 1u);
          (*(*a2 + 112))(a2, v7, *(v4 + 760));
          if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v7 + 2);
            (*(*v7 + 8))(v7);
          }

          v9 = *(v4 + 88);
          v10 = *(v4 + 100);
          if (v10)
          {
            v11 = 8 * v10;
            while (1)
            {
              v12 = *(*v9 + 5);
              if (WebCore::TrackPrivateBase::operator==())
              {
                if (*(a2 + 56) == v12[56])
                {
                  v13 = (*(*a2 + 136))(a2);
                  if (v13 == (*(*v12 + 136))(v12))
                  {
                    v14 = (*(*a2 + 144))(a2);
                    if (v14 == (*(*v12 + 144))(v12))
                    {
                      v15 = (*(*a2 + 152))(a2);
                      if (v15 == (*(*v12 + 152))(v12))
                      {
                        v16 = (*(*a2 + 160))(a2);
                        if (v16 == (*(*v12 + 160))(v12))
                        {
                          v17 = (*(*a2 + 168))(a2);
                          if (v17 == (*(*v12 + 168))(v12))
                          {
                            v18 = (*(*a2 + 176))(a2);
                            if (v18 == (*(*v12 + 176))(v12))
                            {
                              v19 = (*(*a2 + 184))(a2);
                              if (v19 == (*(*v12 + 184))(v12))
                              {
                                (*(*a2 + 192))(&v39, a2);
                                (*(*v12 + 192))(&v38, v12);
                                v20 = v38;
                                v21 = v39;
                                v38 = 0;
                                this = v39;
                                if (v20)
                                {
                                  if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                  {
                                    WTF::StringImpl::destroy(v20, a2);
                                  }

                                  this = v39;
                                }

                                v39 = 0;
                                if (this && atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                {
                                  this = WTF::StringImpl::destroy(this, a2);
                                }

                                if (v21 == v20)
                                {
                                  break;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }

              v22 = (*(**(*v9 + 5) + 48))(*(*v9 + 5));
              if (v22 == (*(*a2 + 48))(a2))
              {
                v33 = *(v3 + 40);
                if (v33)
                {
                  v33 = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v33, *(v3 + 32), &v39);
                  v34 = v39;
                }

                else
                {
                  v34 = 0;
                  v39 = 0;
                }

                v35 = *(v4 + 104);
                v36 = WebKit::RemoteTextTrackProxy::operator new(v33, v8);
                this = WebKit::RemoteTextTrackProxy::RemoteTextTrackProxy(v36, v34, a2, v35);
                v37 = *v9;
                *v9 = this;
                if (v37)
                {
                  this = WTF::ThreadSafeRefCounted<WebKit::RemoteTextTrackProxy,(WTF::DestructionThread)1>::deref(v37 + 4);
                }

                v32 = v39;
                v39 = 0;
                if (!v32)
                {
                  break;
                }

                goto LABEL_45;
              }

              ++v9;
              v11 -= 8;
              if (!v11)
              {
                goto LABEL_32;
              }
            }
          }

          else
          {
LABEL_32:
            v23 = *(v3 + 40);
            if (v23)
            {
              v23 = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v23, *(v3 + 32), &v38);
              v24 = v38;
            }

            else
            {
              v24 = 0;
              v38 = 0;
            }

            v25 = *(v4 + 104);
            v26 = WebKit::RemoteTextTrackProxy::operator new(v23, v8);
            this = WebKit::RemoteTextTrackProxy::RemoteTextTrackProxy(v26, v24, a2, v25);
            v39 = this;
            v27 = *(v4 + 100);
            if (v27 == *(v4 + 96))
            {
              this = WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v4 + 88, v27 + 1, &v39);
              v28 = *(v4 + 100);
              v29 = *(v4 + 88);
              v30 = *this;
              *this = 0;
              *(v29 + 8 * v28) = v30;
              v31 = v39;
              *(v4 + 100) = v28 + 1;
              v39 = 0;
              if (v31)
              {
                this = WTF::ThreadSafeRefCounted<WebKit::RemoteTextTrackProxy,(WTF::DestructionThread)1>::deref(v31 + 4);
              }
            }

            else
            {
              *(*(v4 + 88) + 8 * v27) = this;
              *(v4 + 100) = v27 + 1;
              v39 = 0;
            }

            v32 = v38;
            v38 = 0;
            if (v32)
            {
LABEL_45:
              this = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref(v32 + 2);
            }
          }
        }
      }

      if (*(v3 + 16) == 1)
      {
        return (*(*v3 + 24))(v3, a2);
      }

      else
      {
        --*(v3 + 16);
      }
    }
  }

  return this;
}

uint64_t WebKit::RemoteMediaPlayerProxy::textTrackSetMode(uint64_t result, uint64_t a2)
{
  v2 = *(result + 100);
  if (v2)
  {
    v4 = *(result + 88);
    v5 = 8 * v2;
    while (1)
    {
      result = (*(**(*v4 + 40) + 48))(*(*v4 + 40));
      if (result == a2)
      {
        break;
      }

      v4 += 8;
      v5 -= 8;
      if (!v5)
      {
        return result;
      }
    }

    v6 = *(**(*v4 + 40) + 120);

    return v6();
  }

  return result;
}

void *WebKit::RemoteMediaPlayerProxy::mediaPlayerDidRemoveAudioTrack(WebKit::RemoteMediaPlayerProxy *this, WebCore::AudioTrackPrivate *a2)
{
  v4 = *(this + 16);
  while (1)
  {
    v5 = *v4;
    if ((*v4 & 1) == 0)
    {
      break;
    }

    v6 = *v4;
    atomic_compare_exchange_strong_explicit(v4, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v6 == v5)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_6:
  v7 = (*(*a2 + 48))(a2);
  v8 = *(this + 13);
  v10 = IPC::Encoder::operator new(0x238, v9);
  *v10 = 359;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = v8;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v24 = v10;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, v7);
  IPC::Connection::sendMessageImpl(v4, &v24, 0, 0);
  v12 = v24;
  v24 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v11);
    bmalloc::api::tzoneFree(v22, v23);
  }

  result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v4);
  if (*(this + 17))
  {
    v14 = 0;
    v15 = 1;
    while (1)
    {
      v16 = *(this + 7);
      v17 = (*(*a2 + 48))(a2);
      result = (*(**(*(v16 + v14) + 40) + 48))(*(*(v16 + v14) + 40));
      if (v17 == result)
      {
        break;
      }

      v14 += 8;
      if (v15++ >= *(this + 17))
      {
        return result;
      }
    }

    v19 = *(this + 17);
    if (v15 - 1 > v19 || 8 * v19 == v14)
    {
      __break(1u);
    }

    else
    {
      v20 = *(this + 7);
      v21 = *(v20 + v14);
      *(v20 + v14) = 0;
      if (v21)
      {
        WTF::ThreadSafeRefCounted<WebKit::RemoteAudioTrackProxy,(WTF::DestructionThread)1>::deref((v21 + 16));
        v19 = *(this + 17);
      }

      result = memmove((v20 + v14), (v20 + v14 + 8), *(this + 7) + 8 * v19 - v20 - v14 - 8);
      --*(this + 17);
    }
  }

  return result;
}

void *WebKit::RemoteMediaPlayerProxy::mediaPlayerDidRemoveVideoTrack(WebKit::RemoteMediaPlayerProxy *this, WebCore::VideoTrackPrivate *a2)
{
  v4 = *(this + 16);
  while (1)
  {
    v5 = *v4;
    if ((*v4 & 1) == 0)
    {
      break;
    }

    v6 = *v4;
    atomic_compare_exchange_strong_explicit(v4, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v6 == v5)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_6:
  v7 = (*(*a2 + 48))(a2);
  v8 = *(this + 13);
  v10 = IPC::Encoder::operator new(0x238, v9);
  *v10 = 361;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = v8;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v24 = v10;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, v7);
  IPC::Connection::sendMessageImpl(v4, &v24, 0, 0);
  v12 = v24;
  v24 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v11);
    bmalloc::api::tzoneFree(v22, v23);
  }

  result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v4);
  if (*(this + 21))
  {
    v14 = 0;
    v15 = 1;
    while (1)
    {
      v16 = *(this + 9);
      v17 = (*(*a2 + 48))(a2);
      result = (*(**(*(v16 + v14) + 40) + 48))(*(*(v16 + v14) + 40));
      if (v17 == result)
      {
        break;
      }

      v14 += 8;
      if (v15++ >= *(this + 21))
      {
        return result;
      }
    }

    v19 = *(this + 21);
    if (v15 - 1 > v19 || 8 * v19 == v14)
    {
      __break(1u);
    }

    else
    {
      v20 = *(this + 9);
      v21 = *(v20 + v14);
      *(v20 + v14) = 0;
      if (v21)
      {
        WTF::ThreadSafeRefCounted<WebKit::RemoteVideoTrackProxy,(WTF::DestructionThread)1>::deref((v21 + 16));
        v19 = *(this + 21);
      }

      result = memmove((v20 + v14), (v20 + v14 + 8), *(this + 9) + 8 * v19 - v20 - v14 - 8);
      --*(this + 21);
    }
  }

  return result;
}

void *WebKit::RemoteMediaPlayerProxy::mediaPlayerDidRemoveTextTrack(WebKit::RemoteMediaPlayerProxy *this, WebCore::InbandTextTrackPrivate *a2)
{
  v4 = *(this + 16);
  while (1)
  {
    v5 = *v4;
    if ((*v4 & 1) == 0)
    {
      break;
    }

    v6 = *v4;
    atomic_compare_exchange_strong_explicit(v4, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v6 == v5)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_6:
  v7 = (*(*a2 + 48))(a2);
  v8 = *(this + 13);
  v10 = IPC::Encoder::operator new(0x238, v9);
  *v10 = 360;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = v8;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v24 = v10;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, v7);
  IPC::Connection::sendMessageImpl(v4, &v24, 0, 0);
  v12 = v24;
  v24 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v11);
    bmalloc::api::tzoneFree(v22, v23);
  }

  result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v4);
  if (*(this + 25))
  {
    v14 = 0;
    v15 = 1;
    while (1)
    {
      v16 = *(this + 11);
      v17 = (*(*a2 + 48))(a2);
      result = (*(**(*(v16 + v14) + 40) + 48))(*(*(v16 + v14) + 40));
      if (v17 == result)
      {
        break;
      }

      v14 += 8;
      if (v15++ >= *(this + 25))
      {
        return result;
      }
    }

    v19 = *(this + 25);
    if (v15 - 1 > v19 || 8 * v19 == v14)
    {
      __break(1u);
    }

    else
    {
      v20 = *(this + 11);
      v21 = *(v20 + v14);
      *(v20 + v14) = 0;
      if (v21)
      {
        WTF::ThreadSafeRefCounted<WebKit::RemoteTextTrackProxy,(WTF::DestructionThread)1>::deref((v21 + 16));
        v19 = *(this + 25);
      }

      result = memmove((v20 + v14), (v20 + v14 + 8), *(this + 11) + 8 * v19 - v20 - v14 - 8);
      --*(this + 25);
    }
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::mediaPlayerResourceNotSupported(WebKit::RemoteMediaPlayerProxy *this, void *a2)
{
  v3 = *(this + 16);
  while (1)
  {
    v4 = *v3;
    if ((*v3 & 1) == 0)
    {
      break;
    }

    v5 = *v3;
    atomic_compare_exchange_strong_explicit(v3, &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v4)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v3);
LABEL_6:
  v6 = *(this + 13);
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 366;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v6;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v13 = v7;
  IPC::Connection::sendMessageImpl(v3, &v13, 0, 0);
  v9 = v13;
  v13 = 0;
  if (v9)
  {
    IPC::Encoder::~Encoder(v9, v8);
    bmalloc::api::tzoneFree(v11, v12);
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::mediaPlayerSizeChanged(WebKit::RemoteMediaPlayerProxy *this)
{
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(this, &v16);
  WebCore::MediaPlayer::naturalSize(v16);
  *(this + 95) = v3;
  *(this + 96) = v4;
  v5 = v16;
  v16 = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v5);
  }

  v6 = *(this + 16);
  while (1)
  {
    v7 = *v6;
    if ((*v6 & 1) == 0)
    {
      break;
    }

    v8 = *v6;
    atomic_compare_exchange_strong_explicit(v6, &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v8 == v7)
    {
      goto LABEL_8;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_8:
  v9 = *(this + 13);
  v10 = IPC::Encoder::operator new(0x238, v2);
  *v10 = 370;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = v9;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v16 = v10;
  IPC::ArgumentCoder<WebCore::FloatPoint,void>::encode(v10, this + 95);
  IPC::Connection::sendMessageImpl(v6, &v16, 0, 0);
  v12 = v16;
  v16 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v11);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v6);
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::mediaPlayerActiveSourceBuffersChanged(WebKit::RemoteMediaPlayerProxy *this)
{
  v2 = *(this + 16);
  while (1)
  {
    v3 = *v2;
    if ((*v2 & 1) == 0)
    {
      break;
    }

    v4 = *v2;
    atomic_compare_exchange_strong_explicit(v2, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_6:
  IPC::Connection::send<Messages::MediaPlayerPrivateRemote::ActiveSourceBuffersChanged>(v2, &v6, *(this + 13), 0, 0);
  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
}

uint64_t WebKit::RemoteMediaPlayerProxy::mediaPlayerCachedKeyForKeyId@<X0>(uint64_t this@<X0>, const WTF::String *a2@<X1>, void *a3@<X8>)
{
  v4 = *(this + 176);
  if (v4 && (v5 = *(v4 + 8)) != 0)
  {
    v6 = this;
    ++*(v5 + 16);
    this = *(v5 + 40);
    if (!this)
    {
      goto LABEL_4;
    }

    this = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(this, *(v5 + 32), &v17);
    v8 = v17;
    v17 = 0;
    if (!v8)
    {
      goto LABEL_4;
    }

    this = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref(v8 + 2);
    if ((*(v6 + 856) & 1) == 0)
    {
      goto LABEL_4;
    }

    v9 = *(v5 + 40);
    if (v9)
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v9, *(v5 + 32), &v17);
      v9 = v17;
    }

    else
    {
      v17 = 0;
    }

    this = WebKit::GPUConnectionToWebProcess::legacyCdmFactoryProxy(v9, a2);
    v10 = (this + 16);
    ++*(this + 16);
    if ((*(v6 + 856) & 1) == 0)
    {
      __break(1u);
      return this;
    }

    v11 = this;
    v12 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( *(this + 40),  *(v6 + 848));
    v14 = *(v11 + 40);
    if (v14)
    {
      v14 += 16 * *(v14 - 4);
    }

    if (v14 == v12)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(v12 + 8);
      if (v15)
      {
        ++*(v15 + 32);
      }
    }

    this = WTF::RefCounted<WebKit::RemoteLegacyCDMFactoryProxy>::deref(v10, v13);
    v16 = v17;
    v17 = 0;
    if (v16)
    {
      this = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref(v16 + 2);
    }

    if (v15)
    {
      this = WebKit::RemoteLegacyCDMSessionProxy::getCachedKeyForKeyId(a3, *(v15 + 72), a2);
      if (*(v15 + 32) == 1)
      {
        this = (*(*v15 + 24))(v15);
      }

      else
      {
        --*(v15 + 32);
      }
    }

    else
    {
LABEL_4:
      *a3 = 0;
    }

    if (*(v5 + 16) == 1)
    {
      return (*(*v5 + 24))(v5, a2);
    }

    else
    {
      --*(v5 + 16);
    }
  }

  else
  {
    *a3 = 0;
  }

  return this;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::mediaPlayerKeyNeeded(WebKit::RemoteMediaPlayerProxy *this, const WebCore::SharedBuffer *a2)
{
  v4 = *(this + 16);
  while (1)
  {
    v5 = *v4;
    if ((*v4 & 1) == 0)
    {
      break;
    }

    v6 = *v4;
    atomic_compare_exchange_strong_explicit(v4, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v6 == v5)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_6:
  v7 = WebCore::SharedBuffer::span(a2);
  v9 = v8;
  v10 = *(this + 13);
  v11 = IPC::Encoder::operator new(0x238, v8);
  *v11 = 344;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = v10;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v17 = v11;
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v11, v7, v9);
  IPC::Connection::sendMessageImpl(v4, &v17, 0, 0);
  v13 = v17;
  v17 = 0;
  if (v13)
  {
    IPC::Encoder::~Encoder(v13, v12);
    bmalloc::api::tzoneFree(v15, v16);
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v4);
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::mediaPlayerInitializationDataEncountered(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = *(a1 + 128);
  while (1)
  {
    v7 = *v6;
    if ((*v6 & 1) == 0)
    {
      break;
    }

    v8 = *v6;
    atomic_compare_exchange_strong_explicit(v6, &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v8 == v7)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_6:
  v9 = *a3;
  v10 = *(*a3 + 16);
  if (v10)
  {
    v11 = *(MEMORY[0x1E696EBF0] + 56);
    if (v11)
    {
      if ((*(MEMORY[0x1E696EBF0] + 34) & 1) != 0 || (*MEMORY[0x1E696EBE8] & 1) == 0)
      {
        v10 = (v10 & 0x3FFFFFFFFLL) + v11;
      }
    }
  }

  if (*(v9 + 64) == 1 && (v12 = *(v9 + 32)) != 0)
  {
    v13 = *(v12 + 32);
  }

  else
  {
    v13 = *(v9 + 48);
  }

  v14 = *(a1 + 104);
  v15 = IPC::Encoder::operator new(0x238, a2);
  *v15 = 342;
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 1) = v14;
  *(v15 + 68) = 0;
  *(v15 + 70) = 0;
  *(v15 + 69) = 0;
  IPC::Encoder::encodeHeader(v15);
  v21 = v15;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v15, a2);
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v15, v10, v13);
  IPC::Connection::sendMessageImpl(v6, &v21, 0, 0);
  v17 = v21;
  v21 = 0;
  if (v17)
  {
    IPC::Encoder::~Encoder(v17, v16);
    bmalloc::api::tzoneFree(v19, v20);
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v6);
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::mediaPlayerWaitingForKeyChanged(WebKit::RemoteMediaPlayerProxy *this)
{
  v2 = *(this + 16);
  while (1)
  {
    v3 = *v2;
    if ((*v2 & 1) == 0)
    {
      break;
    }

    v4 = *v2;
    atomic_compare_exchange_strong_explicit(v2, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_6:
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(this, &v14);
  v15 = WebCore::MediaPlayer::waitingForKey(v14);
  v5 = *(this + 13);
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 377;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v5;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v16 = v7;
  IPC::Encoder::operator<<<BOOL &>(v7, &v15);
  IPC::Connection::sendMessageImpl(v2, &v16, 0, 0);
  v9 = v16;
  v16 = 0;
  if (v9)
  {
    IPC::Encoder::~Encoder(v9, v8);
    bmalloc::api::tzoneFree(v12, v13);
  }

  v10 = v14;
  v14 = 0;
  if (v10)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v10);
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::mediaPlayerCurrentPlaybackTargetIsWirelessChanged(WebKit::RemoteMediaPlayerProxy *this, char a2)
{
  v4 = *(this + 17);
  if (v4)
  {
    while (1)
    {
      v5 = *v4;
      if ((*v4 & 1) == 0)
      {
        break;
      }

      v6 = *v4;
      atomic_compare_exchange_strong_explicit(v4, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v6 == v5)
      {
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
  }

LABEL_6:
  WebCore::MediaPlayer::wirelessPlaybackTargetName(&v23, v4);
  v8 = v23;
  v23 = 0;
  v9 = *(this + 43);
  *(this + 43) = v8;
  if (v9)
  {
    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v7);
    }

    v10 = v23;
    v23 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v7);
    }
  }

  *(this + 378) = WebCore::MediaPlayer::wirelessPlaybackTargetType(v4);
  WebKit::RemoteMediaPlayerProxy::sendCachedState(this);
  v12 = *(this + 16);
  while (1)
  {
    v13 = *v12;
    if ((*v12 & 1) == 0)
    {
      break;
    }

    v14 = *v12;
    atomic_compare_exchange_strong_explicit(v12, &v14, v13 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v14 == v13)
    {
      goto LABEL_17;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v12);
LABEL_17:
  v22 = a2;
  v15 = *(this + 13);
  v16 = IPC::Encoder::operator new(0x238, v11);
  *v16 = 336;
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 1) = v15;
  *(v16 + 68) = 0;
  *(v16 + 70) = 0;
  *(v16 + 69) = 0;
  IPC::Encoder::encodeHeader(v16);
  v23 = v16;
  IPC::Encoder::operator<<<BOOL &>(v16, &v22);
  IPC::Connection::sendMessageImpl(v12, &v23, 0, 0);
  v18 = v23;
  v23 = 0;
  if (v18)
  {
    IPC::Encoder::~Encoder(v18, v17);
    bmalloc::api::tzoneFree(v20, v21);
  }

  result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v12);
  if (v4)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v4);
  }

  return result;
}

WTF *WebKit::RemoteMediaPlayerProxy::setWirelessVideoPlaybackDisabled(WebKit::RemoteMediaPlayerProxy *this)
{
  v2 = *(this + 17);
  if (v2)
  {
    while (1)
    {
      v3 = *v2;
      if ((*v2 & 1) == 0)
      {
        break;
      }

      v4 = *v2;
      atomic_compare_exchange_strong_explicit(v2, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v4 == v3)
      {
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_6:
    WebCore::MediaPlayer::setWirelessVideoPlaybackDisabled(v2);
    *(this + 480) = WebCore::MediaPlayer::wirelessVideoPlaybackDisabled(v2);
    WebKit::RemoteMediaPlayerProxy::sendCachedState(this);

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v2);
  }

  else
  {
    WebCore::MediaPlayer::setWirelessVideoPlaybackDisabled(0);
    *(this + 480) = WebCore::MediaPlayer::wirelessVideoPlaybackDisabled(0);

    return WebKit::RemoteMediaPlayerProxy::sendCachedState(this);
  }
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::setShouldPlayToPlaybackTarget(WebKit::RemoteMediaPlayerProxy *this)
{
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(this, &v2);
  WebCore::MediaPlayer::setShouldPlayToPlaybackTarget(v2);
  result = v2;
  v2 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
  }

  return result;
}

void WebKit::RemoteMediaPlayerProxy::setWirelessPlaybackTarget(uint64_t a1, WebKit::MediaPlaybackTargetContextSerialized *this)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 136);
  if (v3)
  {
    while (1)
    {
      v4 = *v3;
      if ((*v3 & 1) == 0)
      {
        break;
      }

      v5 = *v3;
      atomic_compare_exchange_strong_explicit(v3, &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v5 == v4)
      {
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v3);
  }

LABEL_6:
  WebKit::MediaPlaybackTargetContextSerialized::platformContext(this, v10);
  if (v12 == 1)
  {
    WebCore::MediaPlaybackTargetMock::create();
  }

  else
  {
    if (v12)
    {
      mpark::throw_bad_variant_access(v6);
    }

    WebCore::MediaPlaybackTargetCocoa::create();
  }

  WebCore::MediaPlayer::setWirelessPlaybackTarget();
  if (v9)
  {
    if (v9[2] == 1)
    {
      (*(*v9 + 8))();
    }

    else
    {
      --v9[2];
    }
  }

  if (v12 != 255)
  {
    if (v12)
    {
      v8 = v11;
      v11 = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v7);
      }
    }

    else
    {
      WebCore::MediaPlaybackTargetContextCocoa::~MediaPlaybackTargetContextCocoa(v10);
    }
  }

  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v3);
  }
}

unsigned int *WebKit::RemoteMediaPlayerProxy::mediaPlayerCreateResourceLoader@<X0>(WebKit::RemoteMediaPlayerProxy *this@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  if (WebKit::RemoteMediaResourceLoader::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteMediaResourceLoader::s_heapRef, a2);
  }

  else
  {
    NonCompact = WebKit::RemoteMediaResourceLoader::operatorNewSlow(0x18);
  }

  v6 = NonCompact;
  *(NonCompact + 8) = 1;
  *NonCompact = &unk_1F10FD670;
  result = WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 2, this);
  v8 = *(this + 1);
  atomic_fetch_add(v8, 1u);
  *(v6 + 16) = v8;
  *a3 = v6;
  return result;
}

uint64_t WebKit::RemoteMediaPlayerProxy::outOfBandTrackSources@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  v2 = *(this + 708);
  if (v2)
  {
    if (v2 >> 29)
    {
      __break(0xC471u);
    }

    else
    {
      v4 = this;
      this = WTF::fastMalloc((8 * v2));
      *(a2 + 8) = v2;
      *a2 = this;
      v5 = *(v4 + 708);
      if (v5)
      {
        v6 = this;
        v7 = 0;
        v8 = *(v4 + 696);
        v9 = &v8[5 * v5];
        do
        {
          v10 = v7;
          this = WTF::fastMalloc(0x40);
          *(this + 8) = 1;
          *this = &unk_1F10FCE28;
          v11 = *v8;
          *v8 = 0;
          *(this + 16) = v11;
          v12 = v8[1];
          v8[1] = 0;
          *(this + 24) = v12;
          v13 = v8[2];
          v8[2] = 0;
          *(this + 32) = v13;
          v14 = v8[3];
          *(this + 48) = *(v8 + 32);
          *(this + 40) = v14;
          v7 = v10 + 1;
          *(v6 + 8 * v10) = this;
          v8 += 5;
        }

        while (v8 != v9);
        *(a2 + 12) = v7;
      }
    }
  }

  return this;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::currentTimeChanged(WebKit::RemoteMediaPlayerProxy *this, const WTF::MediaTime *a2)
{
  v4 = *(this + 16);
  while (1)
  {
    v5 = *v4;
    if ((*v4 & 1) == 0)
    {
      break;
    }

    v6 = *v4;
    atomic_compare_exchange_strong_explicit(v4, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v6 == v5)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_6:
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(this, &v19);
  v7 = *(a2 + 1);
  v20 = *a2;
  v21 = v7;
  v22 = BYTE4(v7);
  IsProgressing = WebCore::MediaPlayer::timeIsProgressing(v19);
  v23 = IsProgressing;
  WTF::MonotonicTime::now(IsProgressing);
  v24 = v9;
  v10 = *(this + 13);
  v12 = IPC::Encoder::operator new(0x238, v11);
  *v12 = 337;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = v10;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v25 = v12;
  IPC::ArgumentCoder<WebKit::MediaTimeUpdateData,void>::encode(v12, &v20);
  IPC::Connection::sendMessageImpl(v4, &v25, 0, 0);
  v14 = v25;
  v25 = 0;
  if (v14)
  {
    IPC::Encoder::~Encoder(v14, v13);
    bmalloc::api::tzoneFree(v17, v18);
  }

  v15 = v19;
  v19 = 0;
  if (v15)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v15);
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v4);
}

uint64_t WebKit::RemoteMediaPlayerProxy::videoFrameForCurrentTimeIfChanged(void *a1, uint64_t *a2)
{
  LOBYTE(v21[0]) = 0;
  v23 = 0;
  v4 = a1[17];
  if (v4)
  {
    while (1)
    {
      v5 = *v4;
      if ((*v4 & 1) == 0)
      {
        break;
      }

      v6 = *v4;
      atomic_compare_exchange_strong_explicit(v4, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v6 == v5)
      {
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_6:
    WebCore::MediaPlayer::videoFrameForCurrentTime(v19, v4);
    v7 = *&v19[0];
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v4);
    v8 = a1[111];
    if (v8 != v7)
    {
      if (v7)
      {
        atomic_fetch_add(v7 + 2, 1u);
        v8 = a1[111];
      }

      a1[111] = v7;
      if (!v8)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v8 = a1[111];
    if (v8)
    {
      v7 = 0;
      a1[111] = 0;
LABEL_10:
      if (atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v8 + 2);
        (*(*v8 + 8))(v8);
        if (v7)
        {
LABEL_12:
          v9 = a1[110];
          v10 = (v9 + 8);
          while (1)
          {
            v11 = *v10;
            if ((*v10 & 1) == 0)
            {
              break;
            }

            v12 = *v10;
            atomic_compare_exchange_strong_explicit(v10, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v12 == v11)
            {
              goto LABEL_17;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
LABEL_17:
          v18 = v7;
          WebKit::RemoteVideoFrameObjectHeap::add(v9, &v18, v19);
          v21[0] = v19[0];
          v21[1] = v19[1];
          v21[2] = v19[2];
          v22 = v20;
          if ((v23 & 1) == 0)
          {
            v23 = 1;
          }

          v14 = v18;
          v18 = 0;
          if (v14 && atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v14 + 2);
            (*(*v14 + 8))(v14);
          }

          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v9 + 8), v13);
          v7 = 0;
        }

LABEL_23:
        v15 = 1;
        goto LABEL_30;
      }

LABEL_11:
      if (v7)
      {
        goto LABEL_12;
      }

      goto LABEL_23;
    }

    v7 = 0;
  }

  v15 = 0;
LABEL_30:
  v16 = *a2;
  *a2 = 0;
  (*(*v16 + 16))(v16, v21, v15);
  result = (*(*v16 + 8))(v16);
  if (v7)
  {
    if (atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v7 + 2);
      return (*(*v7 + 8))(v7);
    }
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::setShouldDisableHDR(atomic_ullong *this, int a2)
{
  if (*(this + 771) != a2)
  {
    *(this + 771) = a2;
    v2 = this[17];
    if (v2)
    {
      while (1)
      {
        v3 = *v2;
        if ((*v2 & 1) == 0)
        {
          break;
        }

        v4 = *v2;
        atomic_compare_exchange_strong_explicit(v2, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v4 == v3)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_8:
      WebCore::MediaPlayer::setShouldDisableHDR(v2);

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v2);
    }
  }

  return this;
}

atomic_uchar *WebKit::RemoteMediaPlayerProxy::setLegacyCDMSession(atomic_uchar *result, uint64_t a2)
{
  v3 = *(result + 22);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v5 = result;
      ++*(v4 + 16);
      result = *(v4 + 40);
      if (result)
      {
        result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(v4 + 32), &v36);
        v7 = v36;
        v36 = 0;
        if (v7)
        {
          result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref(v7 + 2);
          v9 = (v5 + 848);
          v10 = *(v5 + 856);
          v11 = *(a2 + 8);
          if (v10 == 1 && (v11 & 1) != 0)
          {
            if (*v9 != *a2)
            {
LABEL_13:
              v12 = *(v5 + 136);
              if (v12)
              {
                while (1)
                {
                  v13 = *v12;
                  if ((*v12 & 1) == 0)
                  {
                    break;
                  }

                  v14 = *v12;
                  atomic_compare_exchange_strong_explicit(v12, &v14, v13 + 2, memory_order_relaxed, memory_order_relaxed);
                  if (v14 == v13)
                  {
                    goto LABEL_18;
                  }
                }

                result = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v12);
              }

LABEL_18:
              if (*(v5 + 856) != 1)
              {
                goto LABEL_37;
              }

              v15 = *(v4 + 40);
              if (v15)
              {
                WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v15, *(v4 + 32), &v36);
                v15 = v36;
              }

              else
              {
                v36 = 0;
              }

              v16 = WebKit::GPUConnectionToWebProcess::legacyCdmFactoryProxy(v15, v8);
              v2 = (v16 + 16);
              ++*(v16 + 16);
              if ((*(v5 + 856) & 1) == 0)
              {
                goto LABEL_69;
              }

              v17 = v16;
              v18 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( *(v16 + 40),  *v9);
              v20 = *(v17 + 40);
              if (v20)
              {
                v20 += 16 * *(v20 - 4);
              }

              if (v20 == v18)
              {
                v21 = 0;
              }

              else
              {
                v21 = *(v18 + 8);
                if (v21)
                {
                  v22 = 0;
                  ++*(v21 + 32);
LABEL_29:
                  result = WTF::RefCounted<WebKit::RemoteLegacyCDMFactoryProxy>::deref(v2, v19);
                  v23 = v36;
                  v36 = 0;
                  if (v23)
                  {
                    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref(v23 + 2);
                  }

                  if (v21 && (WebCore::MediaPlayer::setCDMSession(), result = *(v21 + 80), *(v21 + 80) = 0, result) && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
                  {
                    atomic_store(1u, result);
                    result = WTF::fastFree(result, v8);
                    if (v22)
                    {
                      goto LABEL_37;
                    }
                  }

                  else if (v22)
                  {
                    goto LABEL_37;
                  }

                  if (*(v21 + 32) == 1)
                  {
                    result = (*(*v21 + 24))(v21);
                  }

                  else
                  {
                    --*(v21 + 32);
                  }

LABEL_37:
                  v24 = *a2;
                  *(v5 + 856) = *(a2 + 8);
                  *v9 = v24;
                  if (*(v5 + 856) != 1)
                  {
                    goto LABEL_58;
                  }

                  v25 = *(v4 + 40);
                  if (v25)
                  {
                    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v25, *(v4 + 32), &v36);
                    v25 = v36;
                  }

                  else
                  {
                    v36 = 0;
                  }

                  v26 = WebKit::GPUConnectionToWebProcess::legacyCdmFactoryProxy(v25, v8);
                  v27 = (v26 + 16);
                  ++*(v26 + 16);
                  if (*(v5 + 856))
                  {
                    v28 = v26;
                    v29 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( *(v26 + 40),  *v9);
                    v31 = *(v28 + 40);
                    if (v31)
                    {
                      v31 += 16 * *(v31 - 4);
                    }

                    if (v31 == v29)
                    {
                      a2 = 0;
                    }

                    else
                    {
                      a2 = *(v29 + 8);
                      if (a2)
                      {
                        LOBYTE(v2) = 0;
                        ++*(a2 + 32);
                        goto LABEL_48;
                      }
                    }

                    LOBYTE(v2) = 1;
LABEL_48:
                    result = WTF::RefCounted<WebKit::RemoteLegacyCDMFactoryProxy>::deref(v27, v30);
                    v32 = v36;
                    v36 = 0;
                    if (v32)
                    {
                      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref(v32 + 2);
                    }

                    if (!a2)
                    {
                      goto LABEL_55;
                    }

                    v33 = *(a2 + 72);
                    if (v33)
                    {
                      (**v33)(*(a2 + 72));
                      WebCore::MediaPlayer::setCDMSession();
                      (*(*v33 + 8))(v33);
LABEL_53:
                      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v5 + 8), v5);
                      v35 = *(v5 + 8);
                      atomic_fetch_add(v35, 1u);
                      result = *(a2 + 80);
                      *(a2 + 80) = v35;
                      if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
                      {
                        atomic_store(1u, result);
                        result = WTF::fastFree(result, v34);
                        if (v2)
                        {
                          goto LABEL_58;
                        }

                        goto LABEL_56;
                      }

LABEL_55:
                      if (v2)
                      {
                        goto LABEL_58;
                      }

LABEL_56:
                      if (*(a2 + 32) == 1)
                      {
                        result = (*(*a2 + 24))(a2);
                      }

                      else
                      {
                        --*(a2 + 32);
                      }

LABEL_58:
                      if (v12)
                      {
                        result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v12);
                      }

                      goto LABEL_4;
                    }

LABEL_70:
                    WebCore::MediaPlayer::setCDMSession();
                    goto LABEL_53;
                  }

LABEL_69:
                  __break(1u);
                  goto LABEL_70;
                }
              }

              v22 = 1;
              goto LABEL_29;
            }
          }

          else if (v10 != v11)
          {
            goto LABEL_13;
          }
        }
      }

LABEL_4:
      if (*(v4 + 16) == 1)
      {
        return (*(*v4 + 24))(v4);
      }

      else
      {
        --*(v4 + 16);
      }
    }
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::keyAdded(WebKit::RemoteMediaPlayerProxy *this)
{
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(this, &v2);
  WebCore::MediaPlayer::keyAdded(v2);
  result = v2;
  v2 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
  }

  return result;
}

atomic_uchar *WebKit::RemoteMediaPlayerProxy::cdmInstanceAttached(atomic_uchar *result, uint64_t *a2)
{
  v2 = *(result + 22);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v4 = result;
      ++*(v3 + 16);
      result = *(v3 + 40);
      if (result)
      {
        result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(v3 + 32), &v15);
        v6 = v15;
        v15 = 0;
        if (v6)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref(v6 + 2);
          v8 = *(v3 + 40);
          if (v8)
          {
            WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v8, *(v3 + 32), &v15);
            v8 = v15;
          }

          else
          {
            v15 = 0;
          }

          v9 = WebKit::GPUConnectionToWebProcess::cdmFactoryProxy(v8, v7);
          v10 = (v9 + 16);
          ++*(v9 + 4);
          v11 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v9 + 7, a2);
          v13 = v11;
          if (v11)
          {
            ++*(v11 + 32);
          }

          result = WTF::RefCounted<WebKit::RemoteCDMFactoryProxy>::deref(v10, v12);
          v14 = v15;
          v15 = 0;
          if (v14)
          {
            result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref(v14 + 2);
          }

          if (v13)
          {
            WebKit::RemoteMediaPlayerProxy::protectedPlayer(v4, &v15);
            WebCore::MediaPlayer::cdmInstanceAttached(v15, *(v13 + 48));
            result = v15;
            v15 = 0;
            if (result)
            {
              result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
            }

            if (*(v13 + 32) == 1)
            {
              result = (*(*v13 + 24))(v13);
            }

            else
            {
              --*(v13 + 32);
            }
          }
        }
      }

      if (*(v3 + 16) == 1)
      {
        return (*(*v3 + 24))(v3);
      }

      else
      {
        --*(v3 + 16);
      }
    }
  }

  return result;
}

atomic_uchar *WebKit::RemoteMediaPlayerProxy::cdmInstanceDetached(atomic_uchar *result, uint64_t *a2)
{
  v2 = *(result + 22);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v4 = result;
      ++*(v3 + 16);
      result = *(v3 + 40);
      if (result)
      {
        result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(v3 + 32), &v15);
        v6 = v15;
        v15 = 0;
        if (v6)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref(v6 + 2);
          v8 = *(v3 + 40);
          if (v8)
          {
            WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v8, *(v3 + 32), &v15);
            v8 = v15;
          }

          else
          {
            v15 = 0;
          }

          v9 = WebKit::GPUConnectionToWebProcess::cdmFactoryProxy(v8, v7);
          v10 = (v9 + 16);
          ++*(v9 + 4);
          v11 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v9 + 7, a2);
          v13 = v11;
          if (v11)
          {
            ++*(v11 + 32);
          }

          result = WTF::RefCounted<WebKit::RemoteCDMFactoryProxy>::deref(v10, v12);
          v14 = v15;
          v15 = 0;
          if (v14)
          {
            result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref(v14 + 2);
          }

          if (v13)
          {
            WebKit::RemoteMediaPlayerProxy::protectedPlayer(v4, &v15);
            WebCore::MediaPlayer::cdmInstanceDetached(v15, *(v13 + 48));
            result = v15;
            v15 = 0;
            if (result)
            {
              result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
            }

            if (*(v13 + 32) == 1)
            {
              result = (*(*v13 + 24))(v13);
            }

            else
            {
              --*(v13 + 32);
            }
          }
        }
      }

      if (*(v3 + 16) == 1)
      {
        return (*(*v3 + 24))(v3);
      }

      else
      {
        --*(v3 + 16);
      }
    }
  }

  return result;
}

atomic_uchar *WebKit::RemoteMediaPlayerProxy::attemptToDecryptWithInstance(atomic_uchar *result, uint64_t *a2)
{
  v2 = *(result + 22);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v4 = result;
      ++*(v3 + 16);
      result = *(v3 + 40);
      if (result)
      {
        result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(v3 + 32), &v15);
        v6 = v15;
        v15 = 0;
        if (v6)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref(v6 + 2);
          v8 = *(v3 + 40);
          if (v8)
          {
            WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v8, *(v3 + 32), &v15);
            v8 = v15;
          }

          else
          {
            v15 = 0;
          }

          v9 = WebKit::GPUConnectionToWebProcess::cdmFactoryProxy(v8, v7);
          v10 = (v9 + 16);
          ++*(v9 + 4);
          v11 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v9 + 7, a2);
          v13 = v11;
          if (v11)
          {
            ++*(v11 + 32);
          }

          result = WTF::RefCounted<WebKit::RemoteCDMFactoryProxy>::deref(v10, v12);
          v14 = v15;
          v15 = 0;
          if (v14)
          {
            result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref(v14 + 2);
          }

          if (v13)
          {
            WebKit::RemoteMediaPlayerProxy::protectedPlayer(v4, &v15);
            WebCore::MediaPlayer::attemptToDecryptWithInstance(v15, *(v13 + 48));
            result = v15;
            v15 = 0;
            if (result)
            {
              result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
            }

            if (*(v13 + 32) == 1)
            {
              result = (*(*v13 + 24))(v13);
            }

            else
            {
              --*(v13 + 32);
            }
          }
        }
      }

      if (*(v3 + 16) == 1)
      {
        return (*(*v3 + 24))(v3);
      }

      else
      {
        --*(v3 + 16);
      }
    }
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::setShouldContinueAfterKeyNeeded(WebKit::RemoteMediaPlayerProxy *this)
{
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(this, &v2);
  WebCore::MediaPlayer::setShouldContinueAfterKeyNeeded(v2);
  result = v2;
  v2 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::beginSimulatedHDCPError(WebKit::RemoteMediaPlayerProxy *this)
{
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(this, &v2);
  WebCore::MediaPlayer::beginSimulatedHDCPError(v2);
  result = v2;
  v2 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::endSimulatedHDCPError(WebKit::RemoteMediaPlayerProxy *this)
{
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(this, &v2);
  WebCore::MediaPlayer::endSimulatedHDCPError(v2);
  result = v2;
  v2 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::notifyActiveSourceBuffersChanged(WebKit::RemoteMediaPlayerProxy *this)
{
  v2 = *(this + 16);
  while (1)
  {
    v3 = *v2;
    if ((*v2 & 1) == 0)
    {
      break;
    }

    v4 = *v2;
    atomic_compare_exchange_strong_explicit(v2, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_6:
  IPC::Connection::send<Messages::MediaPlayerPrivateRemote::ActiveSourceBuffersChanged>(v2, &v6, *(this + 13), 0, 0);
  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::applicationWillResignActive(WebKit::RemoteMediaPlayerProxy *this)
{
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(this, &v2);
  WebCore::MediaPlayer::applicationWillResignActive(v2);
  result = v2;
  v2 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::applicationDidBecomeActive(WebKit::RemoteMediaPlayerProxy *this)
{
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(this, &v2);
  WebCore::MediaPlayer::applicationDidBecomeActive(v2);
  result = v2;
  v2 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::notifyTrackModeChanged(WebKit::RemoteMediaPlayerProxy *this)
{
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(this, &v2);
  WebCore::MediaPlayer::notifyTrackModeChanged(v2);
  result = v2;
  v2 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::tracksChanged(WebKit::RemoteMediaPlayerProxy *this)
{
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(this, &v2);
  WebCore::MediaPlayer::tracksChanged(v2);
  result = v2;
  v2 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::performTaskAtTime(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(a1 + 776);
  if (v5)
  {
    *(a1 + 776) = 0;
    LOBYTE(v18) = 0;
    v19 = 0;
    (*(*v5 + 16))(v5, &v18);
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 136);
  if (v6)
  {
    while (1)
    {
      v7 = *v6;
      if ((*v6 & 1) == 0)
      {
        break;
      }

      v8 = *v6;
      atomic_compare_exchange_strong_explicit(v6, &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v8 == v7)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
  }

LABEL_8:
  *&v17 = WebCore::MediaPlayer::currentTime(v6);
  DWORD2(v17) = v9;
  BYTE12(v17) = v10;
  if (WTF::operator<=>() <= 0)
  {
    v18 = v17;
    v16 = *a3;
    *a3 = 0;
    v19 = 1;
    (*(*v16 + 16))(v16, &v18);
    result = (*(*v16 + 8))(v16);
  }

  else
  {
    v11 = *a3;
    *a3 = 0;
    v12 = *(a1 + 776);
    *(a1 + 776) = v11;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
    v13 = *(a1 + 8);
    atomic_fetch_add(v13, 1u);
    v14 = WTF::fastMalloc(0x10);
    *v14 = &unk_1F10FCE48;
    v14[1] = v13;
    *&v18 = v14;
    WebCore::MediaPlayer::performTaskAtTime();
    result = v18;
    *&v18 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  if (v6)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v6);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::isCrossOrigin(uint64_t a1, WebCore::SecurityOriginData *a2, uint64_t *a3)
{
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(a1, &v12);
  v5 = v12;
  WebCore::SecurityOriginData::securityOrigin(&v11, a2);
  isCrossOrigin = WebCore::MediaPlayer::isCrossOrigin(v5, v11);
  v7 = *a3;
  *a3 = 0;
  (*(*v7 + 16))(v7, isCrossOrigin | 0x100);
  (*(*v7 + 8))(v7);
  v9 = v11;
  v11 = 0;
  if (v9)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v9, v8);
  }

  result = v12;
  v12 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
  }

  return result;
}

double WebKit::RemoteMediaPlayerProxy::setVideoPlaybackMetricsUpdateInterval(WebKit::RemoteMediaPlayerProxy *this, double a2)
{
  v9 = a2;
  v3 = *(this + 113);
  atomic_fetch_add(v3 + 2, 1u);
  v4 = *(this + 95);
  v8[0] = "RemoteMediaPlayerProxy";
  v8[1] = 23;
  v8[2] = "setVideoPlaybackMetricsUpdateInterval";
  v8[3] = v4;
  if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,double>(v3, &WebKit2LogMedia, 0, v8, &v9))
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,double>(&WebKit2LogMedia, 0, v8, &v9);
  }

  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  updated = WebKit::RemoteMediaPlayerProxy::updateCachedVideoMetrics(this);
  *(this + 99) = v9;
  WTF::MonotonicTime::now(updated);
  result = v9 + v6 + -0.25;
  *(this + 100) = result;
  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::setPreferredDynamicRangeMode(atomic_ullong *result)
{
  v1 = result[17];
  if (v1)
  {
    while (1)
    {
      v2 = *v1;
      if ((*v1 & 1) == 0)
      {
        break;
      }

      v3 = *v1;
      atomic_compare_exchange_strong_explicit(v1, &v3, v2 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v3 == v2)
      {
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v1);
LABEL_6:
    WebCore::MediaPlayer::setPreferredDynamicRangeMode();

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v1);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::setPlatformDynamicRangeLimit(atomic_ullong *result)
{
  v1 = result[17];
  if (v1)
  {
    while (1)
    {
      v2 = *v1;
      if ((*v1 & 1) == 0)
      {
        break;
      }

      v3 = *v1;
      atomic_compare_exchange_strong_explicit(v1, &v3, v2 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v3 == v2)
      {
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v1);
LABEL_6:
    WebCore::MediaPlayer::setPlatformDynamicRangeLimit();

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v1);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::createAudioSourceProvider(atomic_ullong *this)
{
  v1 = this[17];
  if (v1)
  {
    v2 = this;
    while (1)
    {
      v3 = *v1;
      if ((*v1 & 1) == 0)
      {
        break;
      }

      v4 = *v1;
      atomic_compare_exchange_strong_explicit(v1, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v4 == v3)
      {
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v1);
LABEL_7:
    v5 = WebCore::MediaPlayer::audioSourceProvider(v1);
    if (v5)
    {
      v6 = v5;
      if ((*(*v5 + 16))(v5))
      {
        atomic_fetch_add(v6 + 2, 1u);
        v7 = v2[13];
        v8 = v2[16];
        while (1)
        {
          v9 = *v8;
          if ((*v8 & 1) == 0)
          {
            break;
          }

          v10 = *v8;
          atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v10 == v9)
          {
            goto LABEL_14;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_14:
        v14 = v8;
        WebKit::RemoteAudioSourceProviderProxy::create(v7, &v14, &v15);
        v11 = v15;
        v15 = 0;
        v12 = v2[108];
        v2[108] = v11;
        if (v12)
        {
          if (atomic_fetch_add(v12 + 4, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v12 + 4);
            (*(*v12 + 16))(v12);
          }

          v13 = v15;
          v15 = 0;
          if (v13 && atomic_fetch_add(v13 + 4, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v13 + 4);
            (*(*v13 + 16))(v13);
          }
        }

        if (v14)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v14);
        }

        if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v6 + 2);
          (*(*v6 + 32))(v6);
        }
      }
    }

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v1);
  }

  return this;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::playAtHostTime(atomic_ullong *result, double a2)
{
  v5 = a2;
  v2 = result[17];
  if (v2)
  {
    while (1)
    {
      v3 = *v2;
      if ((*v2 & 1) == 0)
      {
        break;
      }

      v4 = *v2;
      atomic_compare_exchange_strong_explicit(v2, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v4 == v3)
      {
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_6:
    WebCore::MediaPlayer::playAtHostTime(v2, &v5);
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v2);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::pauseAtHostTime(atomic_ullong *result, double a2)
{
  v5 = a2;
  v2 = result[17];
  if (v2)
  {
    while (1)
    {
      v3 = *v2;
      if ((*v2 & 1) == 0)
      {
        break;
      }

      v4 = *v2;
      atomic_compare_exchange_strong_explicit(v2, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v4 == v3)
      {
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_6:
    WebCore::MediaPlayer::pauseAtHostTime(v2, &v5);
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v2);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::startVideoFrameMetadataGathering(atomic_ullong *this)
{
  v1 = this[17];
  if (v1)
  {
    while (1)
    {
      v2 = *v1;
      if ((*v1 & 1) == 0)
      {
        break;
      }

      v3 = *v1;
      atomic_compare_exchange_strong_explicit(v1, &v3, v2 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v3 == v2)
      {
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v1);
LABEL_6:
    WebCore::MediaPlayer::startVideoFrameMetadataGathering(v1);

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v1);
  }

  return this;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::stopVideoFrameMetadataGathering(atomic_ullong *this)
{
  v1 = this[17];
  if (v1)
  {
    while (1)
    {
      v2 = *v1;
      if ((*v1 & 1) == 0)
      {
        break;
      }

      v3 = *v1;
      atomic_compare_exchange_strong_explicit(v1, &v3, v2 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v3 == v2)
      {
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v1);
LABEL_6:
    WebCore::MediaPlayer::stopVideoFrameMetadataGathering(v1);

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v1);
  }

  return this;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::playerContentBoxRectChanged(atomic_ullong *this, const WebCore::LayoutRect *a2)
{
  v3 = *(this + 204) == *a2 && *(this + 205) == *(a2 + 1);
  if (!v3 || (*(this + 206) == *(a2 + 2) ? (v4 = *(this + 207) == *(a2 + 3)) : (v4 = 0), !v4))
  {
    *(this + 51) = *a2;
    v5 = this[17];
    if (v5)
    {
      while (1)
      {
        v6 = *v5;
        if ((*v5 & 1) == 0)
        {
          break;
        }

        v7 = *v5;
        atomic_compare_exchange_strong_explicit(v5, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v7 == v6)
        {
          goto LABEL_15;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_15:
      WebCore::MediaPlayer::playerContentBoxRectChanged(v5, a2);

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v5);
    }
  }

  return this;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::setShouldCheckHardwareSupport(WebKit::RemoteMediaPlayerProxy *this, char a2)
{
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(this, &v5);
  WebCore::MediaPlayer::setShouldCheckHardwareSupport(v5);
  result = v5;
  v5 = 0;
  if (result)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
  }

  *(this + 896) = a2;
  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::isInFullscreenOrPictureInPictureChanged(WebKit::RemoteMediaPlayerProxy *this)
{
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(this, &v2);
  WebCore::MediaPlayer::setInFullscreenOrPictureInPicture(v2);
  result = v2;
  v2 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
  }

  return result;
}

atomic_uchar *WebKit::RemoteMediaPlayerProxy::sharedPreferencesForWebProcess@<X0>(atomic_uchar *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 22);
  if (v3 && (v4 = *(v3 + 8)) != 0)
  {
    ++*(v4 + 16);
    this = *(v4 + 40);
    if (this && (this = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(this, *(v4 + 32), &v6), (v5 = v6) != 0))
    {
      *a2 = *(v6 + 336);
      *(a2 + 16) = *(v5 + 352);
      *(a2 + 24) = 1;
      v6 = 0;
      this = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v5 + 16));
    }

    else
    {
      *a2 = 0;
      *(a2 + 24) = 0;
    }

    if (*(v4 + 16) == 1)
    {
      return (*(*v4 + 24))(v4);
    }

    else
    {
      --*(v4 + 16);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  return this;
}

uint64_t WebKit::RemoteMediaPlayerProxy::audioOutputDeviceChanged(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *(a1 + 520);
  *(a1 + 520) = v3;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(a1 + 136);
  if (v5)
  {
    while (1)
    {
      v6 = *v5;
      if ((*v5 & 1) == 0)
      {
        break;
      }

      v7 = *v5;
      atomic_compare_exchange_strong_explicit(v5, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v7 == v6)
      {
        goto LABEL_9;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_9:
    WebCore::MediaPlayer::audioOutputDeviceChanged(v5);
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v5);
  }

  v8 = *(a1 + 176);
  if (v8)
  {
    v9 = *(v8 + 8);
    if (v9)
    {
      v10 = 0;
      ++*(v9 + 16);
      goto LABEL_15;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = 1;
LABEL_15:
  v11 = *(v9 + 40);
  if (v11)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v11, *(v9 + 32), &v16);
    v11 = v16;
  }

  else
  {
    v16 = 0;
  }

  v12 = WebKit::GPUConnectionToWebProcess::audioSessionProxy(v11, a2);
  ++*(v12 + 16);
  result = WebKit::RemoteAudioSessionProxy::setPreferredSpeakerID(v12, (a1 + 520), v13);
  if (*(v12 + 16) == 1)
  {
    result = (*(*v12 + 24))(v12);
  }

  else
  {
    --*(v12 + 16);
  }

  v15 = v16;
  v16 = 0;
  if (v15)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref(v15 + 2);
  }

  if ((v10 & 1) == 0)
  {
    if (*(v9 + 16) == 1)
    {
      return (*(*v9 + 24))(v9);
    }

    else
    {
      --*(v9 + 16);
    }
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::setSoundStageSize(atomic_ullong *result, int a2)
{
  if (*(result + 897) != a2)
  {
    v4[1] = v2;
    v4[2] = v3;
    *(result + 897) = a2;
    WebKit::RemoteMediaPlayerProxy::protectedPlayer(result, v4);
    WebCore::MediaPlayer::soundStageSizeDidChange(v4[0]);
    result = v4[0];
    v4[0] = 0;
    if (result)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
    }
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::setHasMessageClientForTesting(WebKit::RemoteMediaPlayerProxy *this, int a2)
{
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(this, &v8);
  v4 = 0;
  if (this)
  {
    if (a2)
    {
      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 8, this + 24);
      v4 = *(this + 4);
      if (v4)
      {
        atomic_fetch_add(v4, 1u);
      }
    }
  }

  v7 = v4;
  WebCore::MediaPlayer::setMessageClientForTesting();
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    WTF::fastFree(v7, v5);
  }

  result = v8;
  v8 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::sendInternalMessage(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 128);
  while (1)
  {
    v5 = *v4;
    if ((*v4 & 1) == 0)
    {
      break;
    }

    v6 = *v4;
    atomic_compare_exchange_strong_explicit(v4, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v6 == v5)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_6:
  v7 = *(a1 + 104);
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 369;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v7;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v14 = v8;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v8, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v8, a2 + 1);
  IPC::Connection::sendMessageImpl(v4, &v14, 0, 0);
  v10 = v14;
  v14 = 0;
  if (v10)
  {
    IPC::Encoder::~Encoder(v10, v9);
    bmalloc::api::tzoneFree(v12, v13);
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v4);
}

void WebKit::RemoteMediaResource::~RemoteMediaResource(WebKit::RemoteMediaResource *this, void *a2)
{
  *this = &unk_1F10FCB40;
  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 5);
  *(this + 5) = 0;
  if (v4)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v4, a2);
  }

  WebCore::PlatformMediaResource::~PlatformMediaResource(this);
}

{
  WebKit::RemoteMediaResource::~RemoteMediaResource(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void WebCore::PlatformMediaResource::~PlatformMediaResource(WebCore::PlatformMediaResource *this)
{
  *this = &unk_1F10FCBF8;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2 + 2);
      (*(*v2 + 8))(v2);
    }
  }
}

{
  WebCore::PlatformMediaResource::~PlatformMediaResource(this);

  bmalloc::api::tzoneFree(v1, v2);
}

atomic_uchar *WebKit::RemoteMediaResource::shutdown(atomic_uchar *this)
{
  if ((atomic_exchange(this + 65, 1u) & 1) == 0)
  {
    v1 = this;
    v9 = 0;
    WebCore::PlatformMediaResource::setClient(this, &v9);
    v2 = v9;
    v9 = 0;
    if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2 + 2);
      (*(*v2 + 8))(v2);
    }

    v3 = v1[5];
    if (v3)
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v3, v1[4], &v9);
      if (v9)
      {
        WebKit::RemoteMediaResourceManager::removeMediaResource(v9, v1[7]);
        v5 = v9;
        v9 = 0;
        if (v5)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v5 + 8), v4);
        }
      }
    }

    v6 = v1[6];
    v7 = v1[7];
    v1[6] = 0;
    v8 = WTF::fastMalloc(0x18);
    *v8 = &unk_1F10FCE98;
    *(v8 + 1) = v6;
    *(v8 + 2) = v7;
    v9 = v8;
    WTF::ensureOnMainRunLoop();
    this = v9;
    v9 = 0;
    if (this)
    {
      return (*(*this + 8))(this);
    }
  }

  return this;
}

unsigned int *WebCore::PlatformMediaResource::setClient(uint64_t a1, uint64_t *a2)
{
  v4 = 0;
  v5 = (a1 + 24);
  atomic_compare_exchange_strong_explicit((a1 + 24), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x19EB01E30](a1 + 24);
  }

  v6 = *a2;
  *a2 = 0;
  result = *(a1 + 16);
  *(a1 + 16) = v6;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    result = (*(*result + 8))(result);
  }

  v8 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

unsigned int *WebKit::RemoteMediaResource::responseReceived(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t *a4)
{
  WebKit::RemoteMediaResourceLoader::defaultQueue(&v18);
  v8 = v18;
  v18 = 0;
  if (v8)
  {
    (*(*v8 + 40))(v8);
  }

  WebCore::PlatformMediaResource::client(a1, &v18);
  v9 = v18;
  if (v18)
  {
    atomic_store(a3, (a1 + 64));
    while (1)
    {
      v10 = *(a1 + 8);
      if ((v10 & 1) == 0)
      {
        break;
      }

      v11 = *(a1 + 8);
      atomic_compare_exchange_strong_explicit((a1 + 8), &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_10;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 8));
LABEL_10:
    v13 = *a4;
    *a4 = 0;
    v14 = WTF::fastMalloc(0x18);
    *v14 = &unk_1F10FCEC0;
    v14[1] = a1;
    v14[2] = v13;
    v17 = v14;
    (*(*v9 + 16))(v9, a1, a2, &v17);
    v15 = v17;
    v17 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }
  }

  else
  {
    v12 = *a4;
    *a4 = 0;
    (*(*v12 + 16))(v12, 0);
    (*(*v12 + 8))(v12);
  }

  result = v18;
  v18 = 0;
  if (result)
  {
    if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 2);
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t WebKit::RemoteMediaResourceLoader::defaultQueue@<X0>(void *a1@<X8>)
{
  if (atomic_load_explicit(&WebKit::RemoteMediaResourceLoader::defaultQueue(void)::onceKey, memory_order_acquire) != -1)
  {
    v7 = &v5;
    v6 = &v7;
    std::__call_once(&WebKit::RemoteMediaResourceLoader::defaultQueue(void)::onceKey, &v6, std::__call_once_proxy[abi:sn200100]<std::tuple<WebKit::RemoteMediaResourceLoader::defaultQueue(void)::{lambda(void)#1} &&>>);
  }

  v3 = WebKit::RemoteMediaResourceLoader::defaultQueue(void)::messageQueue;
  result = (*(*WebKit::RemoteMediaResourceLoader::defaultQueue(void)::messageQueue + 32))(WebKit::RemoteMediaResourceLoader::defaultQueue(void)::messageQueue);
  *a1 = v3;
  return result;
}

uint64_t WebCore::PlatformMediaResource::client@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = this;
  v4 = 0;
  v5 = (this + 24);
  atomic_compare_exchange_strong_explicit((this + 24), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    this = MEMORY[0x19EB01E30](this + 24);
  }

  v6 = *(v2 + 16);
  if (v6)
  {
    atomic_fetch_add((v6 + 8), 1u);
  }

  *a2 = v6;
  v7 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return this;
}

unsigned int *WebKit::RemoteMediaResource::redirectReceived(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WebKit::RemoteMediaResourceLoader::defaultQueue(&v10);
  v8 = v10;
  v10 = 0;
  if (v8)
  {
    (*(*v8 + 40))(v8);
  }

  WebCore::PlatformMediaResource::client(a1, &v10);
  result = v10;
  if (v10)
  {
    (*(*v10 + 24))(v10, a1, a2, a3, a4);
    result = v10;
    v10 = 0;
    if (result)
    {
      if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result + 2);
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

unsigned int *WebKit::RemoteMediaResource::dataSent(WebKit::RemoteMediaResource *this, uint64_t a2, uint64_t a3)
{
  WebKit::RemoteMediaResourceLoader::defaultQueue(&v8);
  v6 = v8;
  v8 = 0;
  if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  WebCore::PlatformMediaResource::client(this, &v8);
  result = v8;
  if (v8)
  {
    (*(*v8 + 40))(v8, this, a2, a3);
    result = v8;
    v8 = 0;
    if (result)
    {
      if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result + 2);
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

unsigned int *WebKit::RemoteMediaResource::dataReceived(WebKit::RemoteMediaResource *this, const WebCore::SharedBuffer *a2)
{
  WebKit::RemoteMediaResourceLoader::defaultQueue(&v6);
  v4 = v6;
  v6 = 0;
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  WebCore::PlatformMediaResource::client(this, &v6);
  result = v6;
  if (v6)
  {
    (*(*v6 + 48))(v6, this, a2);
    result = v6;
    v6 = 0;
    if (result)
    {
      if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result + 2);
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

unsigned int *WebKit::RemoteMediaResource::accessControlCheckFailed(WebKit::RemoteMediaResource *this, const WebCore::ResourceError *a2)
{
  WebKit::RemoteMediaResourceLoader::defaultQueue(&v6);
  v4 = v6;
  v6 = 0;
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  atomic_store(0, this + 64);
  WebCore::PlatformMediaResource::client(this, &v6);
  result = v6;
  if (v6)
  {
    (*(*v6 + 56))(v6, this, a2);
    result = v6;
    v6 = 0;
    if (result)
    {
      if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result + 2);
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

unsigned int *WebKit::RemoteMediaResource::loadFailed(WebKit::RemoteMediaResource *this, const WebCore::ResourceError *a2)
{
  WebKit::RemoteMediaResourceLoader::defaultQueue(&v6);
  v4 = v6;
  v6 = 0;
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  WebCore::PlatformMediaResource::client(this, &v6);
  result = v6;
  if (v6)
  {
    (*(*v6 + 64))(v6, this, a2);
    result = v6;
    v6 = 0;
    if (result)
    {
      if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result + 2);
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

unsigned int *WebKit::RemoteMediaResource::loadFinished(WebKit::RemoteMediaResource *this, const WebCore::NetworkLoadMetrics *a2)
{
  WebKit::RemoteMediaResourceLoader::defaultQueue(&v6);
  v4 = v6;
  v6 = 0;
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  WebCore::PlatformMediaResource::client(this, &v6);
  result = v6;
  if (v6)
  {
    (*(*v6 + 72))(v6, this, a2);
    result = v6;
    v6 = 0;
    if (result)
    {
      if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result + 2);
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

_DWORD *WebKit::RemoteCDMProxy::deref(_DWORD *this)
{
  if (this[4] == 1)
  {
    return (*(*this + 24))();
  }

  --this[4];
  return this;
}

_DWORD *WebKit::RemoteLegacyCDMProxy::deref(_DWORD *this)
{
  if (this[7] == 1)
  {
    return (*(*this + 24))();
  }

  --this[7];
  return this;
}

_DWORD *WebKit::RemoteLegacyCDMSessionProxy::deref(_DWORD *this)
{
  if (this[8] == 1)
  {
    return (*(*this + 24))();
  }

  --this[8];
  return this;
}

uint64_t WebKit::RemoteLegacyCDMSessionProxy::mediaKeysHashSalt@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(this + 88);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a2 = v2;
  return this;
}

uint64_t non-virtual thunk toWebKit::RemoteLegacyCDMSessionProxy::mediaKeysHashSalt@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(this + 72);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a2 = v2;
  return this;
}

_DWORD *WebKit::RemoteMediaPlayerManagerProxy::deref(_DWORD *this)
{
  if (this[4] == 1)
  {
    return (*(*this + 24))();
  }

  --this[4];
  return this;
}

void WebCore::MediaPlayerClient::mediaPlayerElementId(atomic_uint **a1@<X8>)
{
  v2 = *MEMORY[0x1E696EBA8];
  if (*MEMORY[0x1E696EBA8])
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a1 = v2;
}

double WebCore::MediaPlayerClient::documentSecurityOrigin@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t WebKit::RemoteMediaPlayerProxy::audioOutputDeviceId@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(this + 520);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a2 = v2;
  return this;
}

uint64_t WebKit::RemoteMediaPlayerProxy::audioOutputDeviceIdOverride@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(this + 520);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a2 = v2;
  return this;
}

uint64_t non-virtual thunk toWebKit::RemoteMediaPlayerProxy::ref(uint64_t this)
{
  ++*(this - 8);
  return this;
}

{
  ++*(this - 24);
  return this;
}

_DWORD *non-virtual thunk toWebKit::RemoteMediaPlayerProxy::deref(WebKit::RemoteMediaPlayerProxy *this)
{
  return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(this - 2);
}

{
  return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(this - 6);
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLegacyCDMProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 1) != -1)
      {
        v5 = *v4;
        *v4 = 0;
        if (v5)
        {
          if (v5[7] == 1)
          {
            (*(*v5 + 24))(v5);
          }

          else
          {
            --v5[7];
          }
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t JSC::GenericTypedArrayView<JSC::Uint8Adaptor>::create@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  result = JSC::GenericTypedArrayView<JSC::Uint8Adaptor>::tryCreate(a1, a2, a3, a4, &v7);
  if (v7)
  {
    *a5 = v7;
  }

  else
  {
    result = 78;
    __break(0xC471u);
  }

  return result;
}

uint64_t JSC::GenericTypedArrayView<JSC::Uint8Adaptor>::tryCreate@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v6 = *a1;
  if (*a1)
  {
    if (*(v6 + 64) == 1 && (v7 = *(v6 + 32)) != 0)
    {
      v8 = *(v7 + 32);
    }

    else
    {
      v8 = *(v6 + 48);
    }

    result = 0;
    if (v8 >= a2 && (a4 ^ 1) & 1 | (a3 <= v8 - a2))
    {
      WTF::fastMalloc(0x28);
      result = JSC::ArrayBufferView::ArrayBufferView();
    }
  }

  else
  {
    result = 0;
  }

  *a5 = result;
  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 1) != -1)
      {
        v5 = *v4;
        *v4 = 0;
        if (v5)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivateClient,(WTF::DestructionThread)0>::deref((v5 + 8), a2);
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 1) != -1)
      {
        v5 = *v4;
        *v4 = 0;
        if (v5)
        {
          WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref((v5 + 16));
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 12);
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = v3;
  if (!v3)
  {
    return v2;
  }

  if (!(v3 >> 30))
  {
    v5 = WTF::fastMalloc((4 * v3));
    *(v2 + 8) = v3;
    *v2 = v5;
    v6 = *(a2 + 12);
    if (v6)
    {
      v7 = *a2;
      v8 = 4 * v6;
      do
      {
        v9 = *v7++;
        *v5++ = v9;
        v8 -= 4;
      }

      while (v8);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

WebKit::LayerHostingContext *std::unique_ptr<WebKit::LayerHostingContext>::reset[abi:sn200100](WebKit::LayerHostingContext **a1, WebKit::LayerHostingContext *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    WebKit::LayerHostingContext::~LayerHostingContext(result);

    return bmalloc::api::tzoneFree(v5, v6);
  }

  return result;
}

uint64_t WebCore::operator==(uint64_t a1, uint64_t a2, const WTF::StringImpl *a3)
{
  result = WTF::equal(*a1, *a2, a3);
  if (result)
  {
    return *(a1 + 8) == *(a2 + 8) && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16);
  }

  return result;
}

{
  if (!WTF::equal(*a1, *a2, a3) || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12) || !WebCore::operator==((a1 + 16), (a2 + 16)) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32))
  {
    goto LABEL_10;
  }

  v5 = *(a1 + 60);
  if (v5 == 1 && *(a2 + 60))
  {
    if (!WebCore::operator==(a1 + 40, a2 + 40))
    {
LABEL_10:
      v6 = 0;
      return v6 & 1;
    }
  }

  else if (v5 != *(a2 + 60))
  {
    goto LABEL_10;
  }

  v8 = *(a1 + 80);
  v6 = v8 ^ *(a2 + 80) ^ 1;
  if (v8 == 1 && (*(a2 + 80) & 1) != 0)
  {
    v6 = *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72);
  }

  return v6 & 1;
}

{
  result = WTF::equal(*a1, *a2, a3);
  if (result)
  {
    result = WebCore::operator==();
    if (result)
    {
      result = WebCore::operator==();
      if (result)
      {
        return *(a1 + 72) == *(a2 + 72);
      }
    }
  }

  return result;
}

uint64_t WebKit::RemoteAudioTrackProxy::operator new(WebKit::RemoteAudioTrackProxy *this, void *a2)
{
  if (WebKit::RemoteAudioTrackProxy::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteAudioTrackProxy::s_heapRef, a2);
  }

  else
  {
    return WebKit::RemoteAudioTrackProxy::operatorNewSlow(0x50);
  }
}

uint64_t WebCore::operator==(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2 == 1 && v3 != 0)
  {
    v2 = *a1;
    v3 = *a2;
  }

  if (v2 != v3)
  {
    goto LABEL_17;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5 == 1 && v6 != 0)
  {
    v5 = a1[2];
    v6 = a2[2];
  }

  if (v5 != v6)
  {
    goto LABEL_17;
  }

  v8 = a1[5];
  v9 = a2[5];
  if (v8 == 1 && a2[5])
  {
    v8 = a1[4];
    v9 = a2[4];
  }

  if (v8 == v9)
  {
    v12 = a1[7];
    v10 = v12 ^ a2[7] ^ 1;
    if (v12 == 1 && (a2[7] & 1) != 0)
    {
      v10 = a1[6] == a2[6];
    }
  }

  else
  {
LABEL_17:
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t WebKit::RemoteVideoTrackProxy::operator new(WebKit::RemoteVideoTrackProxy *this, void *a2)
{
  if (WebKit::RemoteVideoTrackProxy::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteVideoTrackProxy::s_heapRef, a2);
  }

  else
  {
    return WebKit::RemoteVideoTrackProxy::operatorNewSlow(0x50);
  }
}

uint64_t WebKit::RemoteTextTrackProxy::operator new(WebKit::RemoteTextTrackProxy *this, void *a2)
{
  if (WebKit::RemoteTextTrackProxy::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteTextTrackProxy::s_heapRef, a2);
  }

  else
  {
    return WebKit::RemoteTextTrackProxy::operatorNewSlow(0x48);
  }
}

uint64_t WTF::Vector<WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    v4 = *(a1 + 12);
    v5 = *(a2 + 12);
    if (v4 <= v5)
    {
      if (v5 > *(a1 + 8))
      {
        WTF::Vector<WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(a1, 0);
        WTF::Vector<WebKit::DocumentEditingContext::TextRectAndRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, *(a2 + 12));
        v4 = *(a1 + 12);
      }
    }

    else
    {
      *(a1 + 12) = v5;
      v4 = v5;
    }

    if (v4)
    {
      memmove(*a1, *a2, 32 * v4);
      v4 = *(a1 + 12);
    }

    v6 = *(a2 + 12);
    if (v4 != v6)
    {
      v7 = v4;
      v8 = (*a1 + 32 * v4);
      v9 = (*a2 + 32 * v7);
      v10 = 32 * v6 - 32 * v7;
      do
      {
        v11 = *v9;
        v12 = v9[1];
        v9 += 2;
        *v8 = v11;
        v8[1] = v12;
        v8 += 2;
        v10 -= 32;
      }

      while (v10);
      v4 = *(a2 + 12);
    }

    *(a1 + 12) = v4;
  }

  return a1;
}

uint64_t WTF::Vector<WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 12);
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = v3;
  if (!v3)
  {
    return v2;
  }

  if (!(v3 >> 27))
  {
    v5 = WTF::fastMalloc((32 * v3));
    *(v2 + 8) = v3;
    *v2 = v5;
    v6 = *(a2 + 12);
    if (v6)
    {
      v7 = *a2;
      v8 = 32 * v6;
      do
      {
        v9 = *v7;
        v10 = v7[1];
        v7 += 2;
        *v5 = v9;
        v5[1] = v10;
        v5 += 2;
        v8 -= 32;
      }

      while (v8);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseIN7WebCore27VideoPlaybackQualityMetricsENS3_18PlatformMediaErrorELj0EE11whenSettledIZN6WebKit22RemoteMediaPlayerProxy24updateCachedVideoMetricsEvE3__0EEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedIS4_S5_EEE_vJSO_EED1Ev(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10FCB70;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseIN7WebCore27VideoPlaybackQualityMetricsENS3_18PlatformMediaErrorELj0EE11whenSettledIZN6WebKit22RemoteMediaPlayerProxy24updateCachedVideoMetricsEvE3__0EEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedIS4_S5_EEE_vJSO_EED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FCB70;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

mpark *_ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseIN7WebCore27VideoPlaybackQualityMetricsENS3_18PlatformMediaErrorELj0EE11whenSettledIZN6WebKit22RemoteMediaPlayerProxy24updateCachedVideoMetricsEvE3__0EEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedIS4_S5_EEE_vJSO_EE4callESO_(mpark *result, _BYTE *a2)
{
  v2 = *(result + 1);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      ++*(v3 + 16);
      if (a2[32])
      {
        if (*(v3 + 464) == 1)
        {
          *(v3 + 464) = 0;
        }
      }

      else
      {
        v5 = (v3 + 432);
        if (*(v3 + 464) == 1)
        {
          v6 = *a2;
          *(v3 + 444) = *(a2 + 12);
          *v5 = v6;
        }

        else
        {
          v7 = *(a2 + 1);
          *v5 = *a2;
          *(v3 + 448) = v7;
          *(v3 + 464) = 1;
        }

        v8 = *(v3 + 128);
        while (1)
        {
          v9 = *v8;
          if ((*v8 & 1) == 0)
          {
            break;
          }

          v10 = *v8;
          atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v10 == v9)
          {
            goto LABEL_14;
          }
        }

        result = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_14:
        if (a2[32])
        {
          mpark::throw_bad_variant_access(result);
        }

        v11 = *(v3 + 104);
        v12 = IPC::Encoder::operator new(0x238, a2);
        *v12 = 375;
        *(v12 + 2) = 0;
        *(v12 + 3) = 0;
        *(v12 + 1) = v11;
        *(v12 + 68) = 0;
        *(v12 + 70) = 0;
        *(v12 + 69) = 0;
        IPC::Encoder::encodeHeader(v12);
        v17 = v12;
        IPC::ArgumentCoder<WebCore::VideoPlaybackQualityMetrics,void>::encode(v12, a2);
        IPC::Connection::sendMessageImpl(v8, &v17, 0, 0);
        v14 = v17;
        v17 = 0;
        if (v14)
        {
          IPC::Encoder::~Encoder(v14, v13);
          bmalloc::api::tzoneFree(v15, v16);
        }

        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v8);
      }

      *(v3 + 808) = 0;
      return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref((v3 + 16));
    }
  }

  return result;
}

uint64_t WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallback<false,void>::~ThenCallback(uint64_t a1)
{
  *a1 = &unk_1F10FCB98;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F10FCBC8;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v3 + 8));
  }

  return a1;
}

{
  *a1 = &unk_1F10FCB98;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F10FCBC8;
  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v4 + 8));
  }

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallback<false,void>::disconnect(uint64_t a1)
{
  *(a1 + 56) = 1;
  result = *(a1 + 72);
  *(a1 + 72) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallback<false,void>::processResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64[1] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 32);
  v7 = WTF::NativePromiseBase::logChannel(a1);
  if (*v7)
  {
    v8 = v7[16] >= 4u;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = v7;
    if (v6)
    {
      v10 = "Rejecting";
    }

    else
    {
      v10 = "Resolving";
    }

    v43 = v10;
    WTF::String::String(&v52, v10);
    WTF::String::String(&v51, " then() call made from ");
    WTF::Logger::LogSiteIdentifier::toString(&v50, (a1 + 24));
    WTF::String::String(&v49, "[");
    WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v48, a2);
    WTF::String::String(&v47, " callback:");
    WTF::LogArgument<void const*>::toString();
    WTF::String::String(&v45, "]");
    result = WTF::tryMakeString<WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String>(&v52, &v51, &v50, &v49, &v48, &v47, &v46, &v45, &v53);
    if (!v53)
    {
      __break(0xC471u);
      return result;
    }

    v13 = v45;
    v45 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v12);
    }

    v14 = v46;
    v46 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v12);
    }

    v15 = v47;
    v47 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v12);
    }

    v16 = v48;
    v48 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v12);
    }

    v17 = v49;
    v49 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v12);
    }

    v18 = v50;
    v50 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v12);
    }

    v19 = v51;
    v51 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v12);
    }

    v20 = v52;
    v52 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v12);
    }

    v21 = *(v9 + 4);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (v22)
    {
      WTF::String::utf8();
      v24 = v44[0] ? v44[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v24;
      _os_log_impl(&dword_19D52D000, v21, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v22 = v44[0];
      v44[0] = 0;
      if (v22)
      {
        if (*v22 == 1)
        {
          v22 = WTF::fastFree(v22, v23);
        }

        else
        {
          --*v22;
        }
      }
    }

    if (*v9 && v9[16] >= 4u)
    {
      v25 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v26 = *v25;
        if (v26)
        {
          break;
        }

        v27 = *v25;
        atomic_compare_exchange_strong_explicit(v25, &v27, v26 | 1, memory_order_acquire, memory_order_acquire);
        if (v27 == v26)
        {
          v28 = WTF::Logger::observers(v22);
          v29 = *(v28 + 12);
          if (v29)
          {
            v30 = *v28;
            v31 = *v28 + 8 * v29;
            do
            {
              v32 = *v30;
              *buf = 0;
              WTF::String::String(&buf[8], v43);
              LODWORD(v55) = 0;
              WTF::String::String(&v56, " then() call made from ");
              v57 = 0;
              WTF::Logger::LogSiteIdentifier::toString(&v58, (a1 + 24));
              v59 = 0;
              WTF::String::String(v60, "[");
              v60[2] = 0;
              WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v61, a2);
              v62 = 0;
              WTF::String::String(v63, " callback:");
              v63[2] = 0;
              WTF::LogArgument<void const*>::toString();
              v63[6] = 0;
              WTF::String::String(v64, "]");
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v44, buf, 8uLL);
              (*(*v32 + 16))(v32, v9, 4, v44);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v44, v33);
              for (i = 120; i != -8; i -= 16)
              {
                v35 = *&buf[i];
                *&buf[i] = 0;
                if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v35, v23);
                }
              }

              ++v30;
            }

            while (v30 != v31);
          }

          v36 = 1;
          atomic_compare_exchange_strong_explicit(v25, &v36, 0, memory_order_release, memory_order_relaxed);
          if (v36 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v37 = v53;
    v53 = 0;
    if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v37, v23);
    }
  }

  v38 = 0;
  v39 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 57), &v38, 1u, memory_order_acquire, memory_order_acquire);
  if (v38)
  {
    MEMORY[0x19EB01E30](a1 + 57);
  }

  v40 = *(a1 + 64);
  *(a1 + 64) = 0;
  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  atomic_compare_exchange_strong_explicit((a1 + 57), &v39, 0, memory_order_release, memory_order_relaxed);
  if (v39 != 1)
  {
    WTF::Lock::unlockSlow((a1 + 57));
  }

  (*(**(a1 + 72) + 16))(*(a1 + 72), a3);
  if (v40)
  {
    *buf = 0uLL;
    v55 = "<chained completion promise>";
    v56 = 0;
    WTF::NativePromiseProducer<void,void,0u>::resolve<std::enable_if<true,void>>(v40, buf);
  }

  result = *(a1 + 72);
  *(a1 + 72) = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v40)
  {
    v41 = WTF::NativePromiseProducer<void,void,0u>::~NativePromiseProducer(v40);
    return WTF::fastFree(v41, v42);
  }

  return result;
}

atomic_uint **std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100](atomic_uint ***a1, atomic_uint **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    v4 = WTF::NativePromiseProducer<void,void,0u>::~NativePromiseProducer(result);

    return WTF::fastFree(v4, v5);
  }

  return result;
}

atomic_uint **WTF::NativePromiseProducer<void,void,0u>::~NativePromiseProducer(atomic_uint **a1)
{
  WTF::NativePromiseProducer<void,void,0u>::assertIsDead(a1);
  v2 = *a1;
  *a1 = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
  }

  return a1;
}

atomic_uint **WTF::NativePromiseProducer<void,void,0u>::assertIsDead(atomic_uint **result)
{
  v1 = *result;
  if (*result)
  {
    atomic_fetch_add(v1 + 2, 1u);
    result = WTF::NativePromise<void,void,0u>::assertIsDead(v1);
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v1 + 2);
      v2 = *(*v1 + 16);

      return v2(v1);
    }
  }

  return result;
}

WTF::Lock *WTF::NativePromiseProducer<void,void,0u>::resolve<std::enable_if<true,void>>(atomic_uint **a1, WTF::NativePromiseBase *a2)
{
  isNothing = WTF::NativePromiseProducer<void,void,0u>::isNothing(a1);
  v5 = *a1;
  if (isNothing)
  {
    if (v5)
    {
      atomic_fetch_add(v5 + 2, 1u);
      result = WTF::NativePromise<void,void,0u>::resolve<std::enable_if<true,void>>(v5, a2);
      if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) != 1)
      {
        return result;
      }

      goto LABEL_16;
    }

    return WTF::NativePromise<void,void,0u>::resolve<std::enable_if<true,void>>(0, a2);
  }

  else
  {
    if (v5)
    {
      atomic_fetch_add(v5 + 2, 1u);
    }

    result = WTF::NativePromiseBase::logChannel(isNothing);
    if (*result)
    {
      v7 = *(result + 16) >= 4u;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      result = WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [39],WTF::NativePromise<void,void,0u>>(result, 4u, a2, " ignored already resolved or rejected ", v5);
    }

    if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
    {
LABEL_16:
      atomic_store(1u, v5 + 2);
      v8 = *(*v5 + 16);

      return v8(v5);
    }
  }

  return result;
}

WTF::StringImpl *WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(void *a1, uint64_t a2)
{
  WTF::LogArgument<void const*>::toString();
  WTF::Logger::LogSiteIdentifier::toString(&v7, (a2 + 16));
  WTF::makeString<WTF::ASCIILiteral,WTF::String,char,WTF::String,char>("NativePromise", 14, &v8, 60, &v7, 0x3Eu, a1);
  v5 = v7;
  v7 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  result = v8;
  v8 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v4);
    }
  }

  return result;
}

uint64_t WTF::tryMakeString<WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String>@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, _DWORD **a3@<X2>, uint64_t *a4@<X3>, unint64_t *a5@<X4>, unint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, void *a9@<X8>)
{
  v9 = *a1;
  v19 = *a2;
  v20 = v9;
  v18 = *a3;
  v10 = *a4;
  v16 = *a5;
  v17 = v10;
  v11 = *a6;
  v14 = *a7;
  v15 = v11;
  v13 = *a8;
  return WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(&v20, &v19, &v18, &v17, &v16, &v15, &v14, &v13, a9);
}

uint64_t WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, _DWORD **a3@<X2>, uint64_t *a4@<X3>, unint64_t *a5@<X4>, unint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, void *a9@<X8>)
{
  if (*a1)
  {
    v18 = *(*a1 + 4);
  }

  else
  {
    v18 = 0;
  }

  if (*a2)
  {
    v19 = *(*a2 + 4);
  }

  else
  {
    v19 = 0;
  }

  if (*a3)
  {
    v20 = (*a3)[1];
  }

  else
  {
    v20 = 0;
  }

  if (*a4)
  {
    v21 = *(*a4 + 4);
  }

  else
  {
    v21 = 0;
  }

  if (*a5)
  {
    v22 = *(*a5 + 4);
  }

  else
  {
    v22 = 0;
  }

  if (*a6)
  {
    v23 = *(*a6 + 4);
  }

  else
  {
    v23 = 0;
  }

  if (*a7)
  {
    v24 = *(*a7 + 4);
  }

  else
  {
    v24 = 0;
  }

  if (*a8)
  {
    v25 = *(*a8 + 4);
  }

  else
  {
    v25 = 0;
  }

  result = WTF::checkedSum<int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int>(v19, v20, v21, v22, v23, v24, v25, v30);
  if (v18 < 0 || v30[0] || (result = (v18 + v31), __OFADD__(v18, v31)))
  {
    *a9 = 0;
  }

  else
  {
    v27 = *a1;
    if (!*a1 || (*(v27 + 16) & 4) != 0)
    {
      v29 = *a2;
      if ((!*a2 || (*(v29 + 16) & 4) != 0) && (!*a3 || ((*a3)[4] & 4) != 0) && (!*a4 || (*(*a4 + 16) & 4) != 0) && (!*a5 || (*(*a5 + 16) & 4) != 0) && (!*a6 || (*(*a6 + 16) & 4) != 0) && (!*a7 || (*(*a7 + 16) & 4) != 0))
      {
        if (*a8)
        {
          v28 = (*(*a8 + 16) >> 2) & 1;
        }

        else
        {
          v28 = 1;
        }
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      v28 = 0;
      v29 = *a2;
    }

    return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(result, v28, v27, v29, *a3, *a4, *a5, *a6, a9, *a7, *a8);
  }

  return result;
}

uint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, _DWORD *a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v16 = result;
  v18 = a11;
  v19 = result;
  if (!a2)
  {
    if (result)
    {
      if (result <= 0x7FFFFFEF)
      {
        v36 = a10;
        v37 = a6;
        result = WTF::tryFastCompactMalloc((2 * result + 20));
        v20 = v40;
        if (!v40)
        {
          goto LABEL_24;
        }

        v27 = (v40 + 5);
        *v40 = 2;
        v20[1] = v16;
        *(v20 + 1) = v20 + 5;
        v20[4] = 0;
        v38 = a3;
        v34 = a8;
        v35 = v20 + 5;
        WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v38, v27);
        if (!v38)
        {
          goto LABEL_26;
        }

        v28 = *(v38 + 4);
        if (v28 <= v16)
        {
          goto LABEL_19;
        }

        goto LABEL_25;
      }

LABEL_14:
      v20 = 0;
      goto LABEL_24;
    }

LABEL_15:
    v20 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_24;
  }

  if (!result)
  {
    goto LABEL_15;
  }

  if ((result & 0x80000000) != 0)
  {
    goto LABEL_14;
  }

  v36 = a10;
  v37 = a6;
  result = WTF::tryFastCompactMalloc((result + 20));
  v20 = v40;
  if (!v40)
  {
    goto LABEL_24;
  }

  v35 = a9;
  a9 = a11;
  v18 = a7;
  a7 = a8;
  *v40 = 2;
  v20[1] = v16;
  *(v20 + 1) = v20 + 5;
  v20[4] = 4;
  v38 = a3;
  WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v38, v20 + 20);
  v21 = v38;
  if (!v38 || (v21 = *(v38 + 4), v21 <= v16))
  {
    v22 = v19 - v21;
    v23 = v20 + v21 + 20;
    v39 = a4;
    WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v39, v23);
    v24 = v39;
    if (!v39 || (v24 = *(v39 + 4), v22 >= v24))
    {
      a4 = v22 - v24;
      v25 = &v23[v24];
      v40 = a5;
      WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v40, &v23[v24]);
      v26 = v40;
      if (!v40 || (v26 = v40[1], a4 >= v26))
      {
        result = WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(&v25[v26], a4 - v26, v37, v18, a7, a10, a11);
        a9 = v35;
        goto LABEL_24;
      }
    }
  }

  while (1)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    v28 = 0;
LABEL_19:
    v29 = v19 - v28;
    v19 = v35;
    v39 = a4;
    WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v39, v35 + 2 * v28);
    v30 = v39;
    if (v39)
    {
      v30 = *(v39 + 4);
      if (v29 < v30)
      {
        continue;
      }
    }

    v31 = v29 - v30;
    v32 = v30 + v28;
    v40 = a5;
    WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v40, v35 + 2 * v32);
    v33 = v40;
    if (!v40)
    {
      break;
    }

    v33 = v40[1];
    if (v31 >= v33)
    {
      break;
    }
  }

  result = WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(v35 + 2 * v33 + 2 * v32, v31 - v33, v37, a7, v34, v36, v18);
LABEL_24:
  *a9 = v20;
  return result;
}

BOOL WTF::NativePromiseProducer<void,void,0u>::isNothing(atomic_uint **a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  atomic_fetch_add(v1 + 2, 1u);
  v2 = !WTF::NativePromise<void,void,0u>::isSettled(v1);
  if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    (*(*v1 + 16))(v1);
  }

  return v2;
}

BOOL WTF::NativePromise<void,void,0u>::isSettled(uint64_t a1)
{
  v2 = 0;
  v3 = (a1 + 48);
  v4 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 48), &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    MEMORY[0x19EB01E30](a1 + 48);
  }

  v5 = *(a1 + 64);
  atomic_compare_exchange_strong_explicit(v3, &v4, 0, memory_order_release, memory_order_relaxed);
  if (v4 != 1)
  {
    WTF::Lock::unlockSlow(v3);
  }

  return v5 != 0;
}

WTF::StringImpl *WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [39],WTF::NativePromise<void,void,0u>>(uint64_t a1, unsigned int a2, WTF::Logger::LogSiteIdentifier *this, const char *a4, uint64_t a5)
{
  v40[2] = *MEMORY[0x1E69E9840];
  WTF::Logger::LogSiteIdentifier::toString(&v34, this);
  WTF::String::String(&v33, a4);
  WTF::LogArgument<WTF::NativePromise<void,void,0u>>::toString(a5, &v32);
  WTF::makeString<WTF::String,WTF::String,WTF::String>(&v34, &v33, &v32, &v35);
  v10 = v32;
  v32 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v9);
  }

  v11 = v33;
  v33 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v9);
  }

  v12 = v34;
  v34 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v9);
  }

  v13 = *(a1 + 32);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    WTF::String::utf8();
    v16 = v31[0] ? v31[0] + 16 : 0;
    *buf = 136446210;
    v37 = v16;
    _os_log_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    v14 = v31[0];
    v31[0] = 0;
    if (v14)
    {
      if (*v14 == 1)
      {
        v14 = WTF::fastFree(v14, v15);
      }

      else
      {
        --*v14;
      }
    }
  }

  if (*a1 && *(a1 + 16) >= a2)
  {
    v17 = MEMORY[0x1E696EBC0];
    while (1)
    {
      v18 = *v17;
      if (v18)
      {
        break;
      }

      v19 = *v17;
      atomic_compare_exchange_strong_explicit(v17, &v19, v18 | 1, memory_order_acquire, memory_order_acquire);
      if (v19 == v18)
      {
        v20 = WTF::Logger::observers(v14);
        v21 = *(v20 + 12);
        if (v21)
        {
          v22 = *v20;
          v23 = *v20 + 8 * v21;
          do
          {
            v24 = *v22;
            *buf = 0;
            WTF::Logger::LogSiteIdentifier::toString((&v37 + 4), this);
            v38 = 0;
            WTF::String::String(v39, a4);
            v39[2] = 0;
            WTF::LogArgument<WTF::NativePromise<void,void,0u>>::toString(a5, v40);
            WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v31, buf, 3uLL);
            (*(*v24 + 16))(v24, a1, a2, v31);
            WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v31, v25);
            for (i = 40; i != -8; i -= 16)
            {
              v27 = *&buf[i];
              *&buf[i] = 0;
              if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v27, v15);
              }
            }

            ++v22;
          }

          while (v22 != v23);
        }

        v28 = 1;
        atomic_compare_exchange_strong_explicit(v17, &v28, 0, memory_order_release, memory_order_relaxed);
        if (v28 != 1)
        {
          WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
        }

        break;
      }
    }
  }

  result = v35;
  v35 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v15);
    }
  }

  return result;
}

WTF::StringImpl *WTF::LogArgument<WTF::NativePromise<void,void,0u>>::toString@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  WTF::LogArgument<void const*>::toString();
  WTF::Logger::LogSiteIdentifier::toString(&v7, (a1 + 16));
  WTF::makeString<WTF::ASCIILiteral,WTF::String,char,WTF::String,char>("GenericPromise", 15, &v8, 60, &v7, 0x3Eu, a2);
  v5 = v7;
  v7 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  result = v8;
  v8 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v4);
    }
  }

  return result;
}

WTF::StringImpl *WTF::NativePromiseBase::log<WTF::Logger::LogSiteIdentifier,char [12],WTF::NativePromise<void,void,0u>>(WTF::NativePromiseBase *a1, const char *a2, uint64_t a3)
{
  result = WTF::NativePromiseBase::logChannel(a1);
  if (*result)
  {
    v7 = *(result + 16) >= 4u;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {

    return WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [39],WTF::NativePromise<void,void,0u>>(result, 4u, a1, a2, a3);
  }

  return result;
}

unsigned __int8 *mpark::detail::destructor<mpark::detail::traits<WTF::NativePromise<void,void,0u>::Storage::NoResult,std::experimental::fundamentals_v3::expected<void,WTF::detail::VoidPlaceholder>,WTF::Function<std::experimental::fundamentals_v3::expected<void,WTF::detail::VoidPlaceholder> ()(void)>>,(mpark::detail::Trait)1>::destroy(unsigned __int8 *result)
{
  v1 = result;
  v2 = result[8];
  if (v2 >= 2 && v2 != 255)
  {
    result = *result;
    *v1 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[8] = -1;
  return result;
}

unsigned int **std::exchange[abi:sn200100]<WTF::Vector<WTF::Ref<WTF::NativePromise<void,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WTF::Ref<WTF::NativePromise<void,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>@<X0>(unsigned int **a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a3 + 16;
  *(a3 + 8) = 1;
  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<void,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt(a3, a1);

  return WTF::Vector<WTF::Ref<WTF::NativePromise<void,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(a1, a2);
}

unsigned __int8 *WTF::NativePromise<void,void,0u>::ThenCallbackBase::dispatch(WTF::NativePromiseBase *a1, uint64_t a2, atomic_uchar *volatile *a3)
{
  v5 = a1;
  if (!*(a1 + 2) || (v6 = atomic_load((a2 + 113)), v6 == 1) && (a1 = (*(**(a1 + 2) + 24))(*(a1 + 2)), a1))
  {
    if (*(v5 + 56) == 1)
    {
      v16 = v5;
      result = WTF::NativePromiseBase::logChannel(a1);
      if (*result)
      {
        v10 = result[16] >= 4u;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        return WTF::Logger::log<char [32],WTF::NativePromise<void,void,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, 4u, "ThenCallback disconnected from ", a2, " aborting [callback:", &v16, " callSite:", (v5 + 24), "]");
      }
    }

    else
    {
      v11 = *a3;
      v12 = 1;
      atomic_compare_exchange_strong_explicit(*a3, &v12, 0, memory_order_release, memory_order_relaxed);
      if (v12 != 1)
      {
        WTF::Lock::unlockSlow(v11);
      }

      if (WTF::NativePromise<void,void,0u>::hasRunnable(a2))
      {
        WTF::NativePromise<void,void,0u>::takeResultRunnable(a2, &v16);
        (*(*v16 + 16))(v15);
        (*(*v5 + 24))(v5, a2, v15);
        v13 = v16;
        v16 = 0;
        if (v13)
        {
          (*(*v13 + 8))(v13);
        }
      }

      else
      {
        WTF::NativePromise<void,void,0u>::takeResult(a2, &v16);
        (*(*v5 + 24))(v5, a2, &v16);
      }

      v14 = 0;
      result = *a3;
      atomic_compare_exchange_strong_explicit(*a3, &v14, 1u, memory_order_acquire, memory_order_acquire);
      if (v14)
      {
        return MEMORY[0x19EB01E30]();
      }
    }
  }

  else
  {
    v7 = *(v5 + 2);
    atomic_fetch_add(v5 + 2, 1u);
    atomic_fetch_add((a2 + 8), 1u);
    v8 = WTF::fastMalloc(0x18);
    *v8 = &unk_1F10FCF60;
    *(v8 + 1) = v5;
    *(v8 + 2) = a2;
    v16 = v8;
    (*(*v7 + 16))(v7, &v16);
    result = v16;
    v16 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

atomic_uint **WTF::NativePromise<void,void,0u>::settleChainedPromise(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  *a2 = 0;
  v9 = v2;
  v3 = *(a2 + 24);
  v10 = *(a2 + 8);
  v11 = v3;
  if (v2)
  {
    atomic_fetch_add(v2 + 2, 1u);
    v5 = 0;
    v6 = 0;
    v7 = "<chained promise>";
    v8 = 0;
    WTF::NativePromise<void,void,0u>::settleAsChainedPromise<WTF::NativePromise<void,void,0u>::Storage>(v2, (a1 + 56), &v5);
    if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2 + 2);
      (*(*v2 + 16))(v2);
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = "<chained promise>";
    v8 = 0;
    WTF::NativePromise<void,void,0u>::settleAsChainedPromise<WTF::NativePromise<void,void,0u>::Storage>(0, (a1 + 56), &v5);
  }

  return WTF::NativePromiseProducer<void,void,0u>::~NativePromiseProducer(&v9);
}

unsigned int **WTF::Vector<WTF::Ref<WTF::NativePromise<void,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(unsigned int **__dst, _DWORD *a2)
{
  v4 = *(__dst + 3);
  if (v4)
  {
    WTF::VectorDestructor<true,WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>>::destruct(*__dst, &(*__dst)[2 * v4]);
  }

  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<void,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt(__dst, a2);
  return __dst;
}

uint64_t WTF::Vector<WTF::NativePromiseProducer<void,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 12);
  if (v4)
  {
    v6 = *a1;
    v7 = 40 * v4;
    do
    {
      v6 = WTF::NativePromiseProducer<void,void,0u>::~NativePromiseProducer(v6) + 5;
      v7 -= 40;
    }

    while (v7);
  }

  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  return a1;
}

BOOL WTF::NativePromise<void,void,0u>::hasRunnable(uint64_t a1)
{
  v2 = 0;
  v3 = (a1 + 48);
  v4 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 48), &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    MEMORY[0x19EB01E30](a1 + 48);
  }

  v5 = *(a1 + 64);
  atomic_compare_exchange_strong_explicit(v3, &v4, 0, memory_order_release, memory_order_relaxed);
  if (v4 != 1)
  {
    WTF::Lock::unlockSlow(v3);
  }

  return v5 == 2;
}

atomic_uchar *WTF::NativePromise<void,void,0u>::takeResultRunnable@<X0>(atomic_uchar *result@<X0>, void *a2@<X8>)
{
  v2 = result;
  v4 = 0;
  v5 = (result + 48);
  atomic_compare_exchange_strong_explicit(result + 48, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    result = MEMORY[0x19EB01E30](result + 48);
  }

  if (v2[64] != 2)
  {
    mpark::throw_bad_variant_access(result);
  }

  v6 = *(v2 + 7);
  *(v2 + 7) = 0;
  *a2 = v6;
  v7 = 1;
  atomic_compare_exchange_strong_explicit(v2 + 48, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

atomic_uchar *WTF::NativePromise<void,void,0u>::takeResult@<X0>(atomic_uchar *result@<X0>, _WORD *a2@<X8>)
{
  v2 = result;
  v4 = 0;
  v5 = (result + 48);
  atomic_compare_exchange_strong_explicit(result + 48, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    result = MEMORY[0x19EB01E30](result + 48);
  }

  if (v2[64] != 1)
  {
    mpark::throw_bad_variant_access(result);
  }

  *a2 = *(v2 + 28);
  v6 = 1;
  atomic_compare_exchange_strong_explicit(v2 + 48, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

WTF::StringImpl *WTF::Logger::log<char [32],WTF::NativePromise<void,void,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(uint64_t a1, unsigned int a2, char *a3, uint64_t a4, const char *a5, int a6, const char *a7, WTF::Logger::LogSiteIdentifier *a8, const char *a9)
{
  v65[1] = *MEMORY[0x1E69E9840];
  WTF::String::String(&v50, a3);
  WTF::LogArgument<WTF::NativePromise<void,void,0u>>::toString(a4, &v49);
  WTF::String::String(&v48, a5);
  WTF::LogArgument<void const*>::toString();
  v40 = a7;
  WTF::String::String(&v46, a7);
  v41 = a8;
  WTF::Logger::LogSiteIdentifier::toString(&v45, a8);
  WTF::String::String(&v44, a9);
  v43[0] = v49;
  v56 = v48;
  *buf = v50;
  v54 = v46;
  v55 = v47;
  v52 = v44;
  v53 = v45;
  result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v43, &v56, &v55, &v54, &v53, &v52, &v51);
  if (v51)
  {
    v17 = v44;
    v44 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v16);
    }

    v18 = v45;
    v45 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v16);
    }

    v19 = v46;
    v46 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v16);
    }

    v20 = v47;
    v47 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v16);
    }

    v21 = v48;
    v48 = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v16);
    }

    v22 = v49;
    v49 = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v16);
    }

    v23 = v50;
    v50 = 0;
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v16);
    }

    v24 = *(a1 + 32);
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (v25)
    {
      WTF::String::utf8();
      v27 = v43[0] ? v43[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v27;
      _os_log_impl(&dword_19D52D000, v24, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v25 = v43[0];
      v43[0] = 0;
      if (v25)
      {
        if (*v25 == 1)
        {
          v25 = WTF::fastFree(v25, v26);
        }

        else
        {
          --*v25;
        }
      }
    }

    if (*a1 && *(a1 + 16) >= a2)
    {
      v28 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v29 = *v28;
        if (v29)
        {
          break;
        }

        v30 = *v28;
        atomic_compare_exchange_strong_explicit(v28, &v30, v29 | 1, memory_order_acquire, memory_order_acquire);
        if (v30 == v29)
        {
          v31 = WTF::Logger::observers(v25);
          v32 = *(v31 + 12);
          if (v32)
          {
            v33 = *v31;
            v34 = *v31 + 8 * v32;
            do
            {
              v35 = *v33;
              *buf = 0;
              WTF::String::String(&buf[8], a3);
              v58 = 0;
              WTF::LogArgument<WTF::NativePromise<void,void,0u>>::toString(a4, &v59);
              v60 = 0;
              WTF::String::String(v61, a5);
              v61[2] = 0;
              WTF::LogArgument<void const*>::toString();
              v61[6] = 0;
              WTF::String::String(v62, v40);
              v62[2] = 0;
              WTF::Logger::LogSiteIdentifier::toString(&v63, v41);
              v64 = 0;
              WTF::String::String(v65, a9);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v43, buf, 7uLL);
              (*(*v35 + 16))(v35, a1, a2, v43);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v43, v36);
              for (i = 104; i != -8; i -= 16)
              {
                v38 = *&buf[i];
                *&buf[i] = 0;
                if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v38, v26);
                }
              }

              ++v33;
            }

            while (v33 != v34);
          }

          v39 = 1;
          atomic_compare_exchange_strong_explicit(v28, &v39, 0, memory_order_release, memory_order_relaxed);
          if (v39 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    result = v51;
    v51 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v26);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::NativePromise<void,void,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<void,void,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F10FCF60;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::NativePromise<void,void,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<void,void,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10FCF60;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 16))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

unsigned __int8 *WTF::NativePromise<void,void,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<void,void,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1}::operator()(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (*(*a1 + 56) == 1)
  {
    v10 = *a1;
    result = WTF::NativePromiseBase::logChannel(a1);
    if (*result)
    {
      v4 = result[16] >= 4u;
    }

    else
    {
      v4 = 0;
    }

    if (v4)
    {
      return WTF::Logger::log<char [32],WTF::NativePromise<void,void,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, 4u, "ThenCallback disconnected from ", v1, " aborting [callback:", &v10, " callSite:", (v2 + 24), "]");
    }
  }

  else
  {
    hasRunnable = WTF::NativePromise<void,void,0u>::hasRunnable(a1[1]);
    v7 = *a1;
    v8 = a1[1];
    if (hasRunnable)
    {
      WTF::NativePromise<void,void,0u>::takeResultRunnable(v8, &v10);
      (*(*v10 + 16))(v9);
      (*(*v7 + 24))(v7, v8, v9);
      result = v10;
      v10 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }

    else
    {
      WTF::NativePromise<void,void,0u>::takeResult(v8, &v10);
      return (*(*v7 + 24))(v7, v8, &v10);
    }
  }

  return result;
}

WTF::Lock *WTF::NativePromise<void,void,0u>::settleAsChainedPromise<WTF::NativePromise<void,void,0u>::Storage>(unsigned __int8 *a1, uint64_t *a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v6 = 0;
  v7 = (a1 + 48);
  v21 = v7;
  v22 = 1;
  atomic_compare_exchange_strong_explicit(v7, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    v7 = MEMORY[0x19EB01E30]();
  }

  v8 = WTF::NativePromiseBase::logChannel(v7);
  if (*v8)
  {
    v9 = v8[16] >= 4u;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [39],WTF::NativePromise<void,void,0u>>(v8, 4u, a3, " settling chained promise ", a1);
  }

  v10 = a1[64];
  v11 = *(a2 + 8);
  if (v10 == 255 && v11 == 255)
  {
    goto LABEL_27;
  }

  if (v11 == 255)
  {
    mpark::detail::destructor<mpark::detail::traits<WTF::NativePromise<void,void,0u>::Storage::NoResult,std::experimental::fundamentals_v3::expected<void,WTF::detail::VoidPlaceholder>,WTF::Function<std::experimental::fundamentals_v3::expected<void,WTF::detail::VoidPlaceholder> ()(void)>>,(mpark::detail::Trait)1>::destroy(a1 + 56);
    goto LABEL_27;
  }

  if (v11 == 2)
  {
    if (v10 == 2)
    {
      v15 = *a2;
      *a2 = 0;
      v16 = *(a1 + 7);
      *(a1 + 7) = v15;
      if (v16)
      {
        (*(*v16 + 8))(v16);
      }

      goto LABEL_27;
    }

    mpark::detail::destructor<mpark::detail::traits<WTF::NativePromise<void,void,0u>::Storage::NoResult,std::experimental::fundamentals_v3::expected<void,WTF::detail::VoidPlaceholder>,WTF::Function<std::experimental::fundamentals_v3::expected<void,WTF::detail::VoidPlaceholder> ()(void)>>,(mpark::detail::Trait)1>::destroy(a1 + 56);
    v18 = *a2;
    *a2 = 0;
    *(a1 + 7) = v18;
    v17 = 2;
LABEL_26:
    a1[64] = v17;
    goto LABEL_27;
  }

  if (v11 != 1)
  {
    if (a1[64])
    {
      mpark::detail::destructor<mpark::detail::traits<WTF::NativePromise<void,void,0u>::Storage::NoResult,std::experimental::fundamentals_v3::expected<void,WTF::detail::VoidPlaceholder>,WTF::Function<std::experimental::fundamentals_v3::expected<void,WTF::detail::VoidPlaceholder> ()(void)>>,(mpark::detail::Trait)1>::destroy(a1 + 56);
      a1[64] = 0;
    }

    goto LABEL_27;
  }

  if (v10 != 1)
  {
    mpark::detail::destructor<mpark::detail::traits<WTF::NativePromise<void,void,0u>::Storage::NoResult,std::experimental::fundamentals_v3::expected<void,WTF::detail::VoidPlaceholder>,WTF::Function<std::experimental::fundamentals_v3::expected<void,WTF::detail::VoidPlaceholder> ()(void)>>,(mpark::detail::Trait)1>::destroy(a1 + 56);
    *(a1 + 28) = *a2;
    v17 = 1;
    goto LABEL_26;
  }

  v12 = *(a2 + 1);
  v13 = (a1 + 57);
  v14 = a1[57];
  if (v12 == v14)
  {
    goto LABEL_27;
  }

  if (v12)
  {
    *v13 = 1;
    v13 = &v23;
  }

  else if ((v14 & 1) == 0)
  {
    goto LABEL_27;
  }

  *v13 = 0;
LABEL_27:
  result = WTF::NativePromise<void,void,0u>::dispatchAll(a1, &v21);
  v20 = v22;
  if (v22 == 1)
  {
    result = v21;
    atomic_compare_exchange_strong_explicit(v21, &v20, 0, memory_order_release, memory_order_relaxed);
    if (v20 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

uint64_t std::__call_once_proxy[abi:sn200100]<std::tuple<WebKit::RemoteMediaResourceLoader::defaultQueue(void)::{lambda(void)#1} &&>>()
{
  result = WTF::WorkQueue::create();
  WebKit::RemoteMediaResourceLoader::defaultQueue(void)::messageQueue = v1;
  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(std::optional<WebCore::CDMKeySystemConfiguration>)>,void,std::optional<WebCore::CDMKeySystemConfiguration>>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10FCC28;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(std::optional<WebCore::CDMKeySystemConfiguration>)>,void,std::optional<WebCore::CDMKeySystemConfiguration>>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FCC28;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(std::optional<WebCore::CDMKeySystemConfiguration>)>,void,std::optional<WebCore::CDMKeySystemConfiguration>>::call(uint64_t a1, uint64_t *a2)
{
  std::optional<WebCore::CDMKeySystemConfiguration>::optional[abi:sn200100](&v13, a2);
  v27 = *(a1 + 8);
  *(a1 + 8) = 0;
  std::optional<WebCore::CDMKeySystemConfiguration>::optional[abi:sn200100](&v20, &v13);
  WTF::Function<void ()(std::optional<WebCore::CDMKeySystemConfiguration>)>::operator()(&v27, &v20);
  if (v26 == 1)
  {
    v4 = v24;
    if (v24)
    {
      v24 = 0;
      v25 = 0;
      WTF::fastFree(v4, v3);
    }

    WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v23, v3);
    WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v22, v5);
    WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v21, v6);
    v7 = v20;
    v20 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v3);
    }
  }

  result = v27;
  v27 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v19 == 1)
  {
    v9 = v17;
    if (v17)
    {
      v17 = 0;
      v18 = 0;
      WTF::fastFree(v9, v3);
    }

    WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v16, v3);
    WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v15, v10);
    WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v14, v11);
    result = v13;
    v13 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v12);
      }
    }
  }

  return result;
}

uint64_t std::optional<WebCore::CDMKeySystemConfiguration>::optional[abi:sn200100](uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 80) = 0;
  if (*(a2 + 80) == 1)
  {
    v4 = *a2;
    *a2 = 0;
    *a1 = v4;
    *(a1 + 16) = 0;
    *(a1 + 8) = 0;
    WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 8, a2 + 2);
    *(a1 + 32) = 0;
    *(a1 + 24) = 0;
    WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 24, a2 + 6);
    *(a1 + 48) = 0;
    *(a1 + 40) = 0;
    WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 40, a2 + 10);
    v5 = *(a2 + 28);
    *(a1 + 64) = 0;
    *(a1 + 56) = v5;
    *(a1 + 72) = 0;
    WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 64, a2 + 16);
    *(a1 + 80) = 1;
  }

  return a1;
}

WTF::StringImpl *WTF::Function<void ()(std::optional<WebCore::CDMKeySystemConfiguration>)>::operator()(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  std::optional<WebCore::CDMKeySystemConfiguration>::optional[abi:sn200100](&v9, a2);
  result = (*(*v2 + 16))(v2, &v9);
  if (v15 == 1)
  {
    v5 = v13;
    if (v13)
    {
      v13 = 0;
      v14 = 0;
      WTF::fastFree(v5, v4);
    }

    WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v12, v4);
    WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v11, v6);
    WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v10, v7);
    result = v9;
    v9 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v8);
      }
    }
  }

  return result;
}

_DWORD *WTF::RefCounted<WebCore::LegacyCDM>::deref(_DWORD *result)
{
  if (*result == 1)
  {
    v2 = MEMORY[0x19EB10240](result - 2);

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLegacyCDMProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLegacyCDMProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 == -1 || !v2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DBB4538);
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 - 8);
    v5 = (v2 + ~(v2 << 32)) ^ ((v2 + ~(v2 << 32)) >> 22);
    v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
    v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
    v8 = v4 & ((v7 >> 31) ^ v7);
    v9 = *(v3 + 16 * v8);
    if (v9 == v2)
    {
      return *(v3 + 16 * v8 + 8);
    }

    v10 = 1;
    while (v9)
    {
      v8 = (v8 + v10) & v4;
      v9 = *(v3 + 16 * v8);
      ++v10;
      if (v9 == v2)
      {
        return *(v3 + 16 * v8 + 8);
      }
    }
  }

  return 0;
}