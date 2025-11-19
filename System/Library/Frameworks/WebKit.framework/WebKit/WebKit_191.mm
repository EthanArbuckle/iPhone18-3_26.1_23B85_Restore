uint64_t IPC::Connection::send<Messages::RemoteMediaResourceManager::LoadFailed>(uint64_t *a1, WebCore::ResourceError **a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 1466;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = a3;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v17 = v10;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, **a2);
  IPC::ArgumentCoder<WebCore::ResourceError,void>::encode(v10, a2[1]);
  v12 = IPC::Connection::sendMessageImpl(a1, &v17, a4, a5);
  v13 = v17;
  v17 = 0;
  if (v13)
  {
    IPC::Encoder::~Encoder(v13, v11);
    bmalloc::api::tzoneFree(v15, v16);
  }

  return v12;
}

atomic_ullong *WebKit::MediaPlayerPrivateRemote::sendH2Ping(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 176);
  if (v6)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v6, *(a1 + 168), &v23);
    if (v23)
    {
      WebCore::MediaPlayer::mediaResourceLoader(v24, v23);
      (*(*v24[0] + 16))(v24[0], a2, a3);
      v7 = v24[0];
      v24[0] = 0;
      if (v7)
      {
        WTF::ThreadSafeRefCounted<WebCore::PlatformMediaResourceLoader,(WTF::DestructionThread)1>::deref(v7 + 2);
      }

      goto LABEL_20;
    }
  }

  else
  {
    v23 = 0;
  }

  WebCore::internalError();
  v29 = v20;
  v28 = v19;
  *v24 = *v15;
  v25 = v16;
  v26 = v17;
  v27 = v18;
  v30 = cf;
  v31 = v22;
  v32 = 1;
  v8 = *a3;
  *a3 = 0;
  (*(*v8 + 16))(v8, v24);
  (*(*v8 + 8))(v8);
  if (v32 && v32 != 255)
  {
    v10 = v30;
    v30 = 0;
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = v27;
    v27 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v9);
    }

    v12 = v24[1];
    v24[1] = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v9);
    }

    v13 = v24[0];
    v24[0] = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v9);
    }
  }

  v32 = -1;
LABEL_20:
  result = v23;
  v23 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
  }

  return result;
}

atomic_uchar **WebKit::MediaPlayerPrivateRemote::removeResource(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v3 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( (a1 + 520),  &v8);
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take((a1 + 520), v3, &v7);
  result = v7;
  if (v7)
  {
    result = (*(*v7 + 3))(v7);
    v6 = v7;
    v7 = 0;
    if (v6)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::PlatformMediaResource,(WTF::DestructionThread)0>::deref(v6 + 1, v5);
    }
  }

  return result;
}

WebCore::MediaPlayer *WebKit::MediaPlayerPrivateRemote::resourceNotSupported(WebKit::MediaPlayerPrivateRemote *this)
{
  result = *(this + 22);
  if (result)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(this + 21), &v3);
    result = v3;
    if (v3)
    {
      WebCore::MediaPlayer::resourceNotSupported(v3);
      result = v3;
      v3 = 0;
      if (result)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
      }
    }
  }

  return result;
}

uint64_t WebCore::MediaPlayer::resourceNotSupported(WebCore::MediaPlayer *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      return (*(*v2 + 88))();
    }
  }

  result = 133;
  __break(0xC471u);
  return result;
}

WebCore::MediaPlayer *WebKit::MediaPlayerPrivateRemote::activeSourceBuffersChanged(WebKit::MediaPlayerPrivateRemote *this)
{
  result = *(this + 22);
  if (result)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(this + 21), &v3);
    result = v3;
    if (v3)
    {
      WebCore::MediaPlayer::activeSourceBuffersChanged(v3);
      result = v3;
      v3 = 0;
      if (result)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
      }
    }
  }

  return result;
}

uint64_t WebCore::MediaPlayer::activeSourceBuffersChanged(WebCore::MediaPlayer *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      return (*(*v2 + 160))();
    }
  }

  result = 133;
  __break(0xC471u);
  return result;
}

atomic_uchar *WebKit::MediaPlayerPrivateRemote::getRawCookies(uint64_t a1)
{
  result = *(a1 + 176);
  if (result)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(a1 + 168), &v3);
    result = v3;
    if (v3)
    {
      WebCore::MediaPlayer::getRawCookies();
      result = v3;
      v3 = 0;
      if (result)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
      }
    }
  }

  return result;
}

void WebKit::MediaPlayerPrivateRemote::requestHostingContext(uint64_t a1, uint64_t *a2)
{
  v2 = a2;
  if (*(a1 + 784))
  {
    v26 = *(a1 + 784);
    WTF::MachSendRight::MachSendRight(&v27, (a1 + 792));
    v4 = *(a1 + 800);
    if (v4)
    {
      WTF::EmbeddedFixedVector<unsigned char,WTF::FastMalloc>::create<unsigned char const*>(v4 + 4, &v4[*v4 + 4], v29);
      v5 = v29[0];
    }

    else
    {
      v5 = 0;
    }

    v28 = v5;
    WTF::CompletionHandler<void ()(WebCore::HostingContext)>::operator()(v2, &v26);
    v10 = v28;
    v28 = 0;
    if (v10)
    {
      WTF::fastFree(v10, v9);
    }

    WTF::MachSendRight::~MachSendRight(&v27);
  }

  else
  {
    v6 = (a1 + 768);
    v7 = *(a1 + 780);
    if (v7 == *(a1 + 776))
    {
      v2 = WTF::Vector<WTF::CompletionHandler<void ()(WebCore::HostingContext)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v6, v7 + 1, a2);
      v7 = *(a1 + 780);
      v8 = (*(a1 + 768) + 8 * v7);
    }

    else
    {
      v8 = (*v6 + 8 * v7);
    }

    v11 = *v2;
    *v2 = 0;
    *v8 = v11;
    *(a1 + 780) = v7 + 1;
    v12 = WebKit::MediaPlayerPrivateRemote::connection(a1, a2);
    v13 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::controlBlock((a1 + 48));
    v14 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v13);
    v15 = *(a1 + 224);
    v16 = WTF::fastMalloc(0x18);
    *v16 = &unk_1F1127DD8;
    *(v16 + 1) = a1;
    *(v16 + 2) = v14;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      __break(0xC471u);
    }

    else
    {
      v17 = v16;
      IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      v20 = IPC::Encoder::operator new(0x238, v19);
      *v20 = 1424;
      *(v20 + 2) = 0;
      *(v20 + 3) = 0;
      *(v20 + 1) = v15;
      *(v20 + 68) = 0;
      *(v20 + 70) = 0;
      *(v20 + 69) = 0;
      IPC::Encoder::encodeHeader(v20);
      v29[1] = IdentifierInternal;
      v30 = v20;
      v29[0] = v17;
      IPC::Connection::sendMessageWithAsyncReply(v12, &v30, v29, 0, 0);
      v22 = v29[0];
      v29[0] = 0;
      if (v22)
      {
        (*(*v22 + 8))(v22);
      }

      v23 = v30;
      v30 = 0;
      if (v23)
      {
        IPC::Encoder::~Encoder(v23, v21);
        bmalloc::api::tzoneFree(v24, v25);
      }
    }
  }
}

char *WebKit::MediaPlayerPrivateRemote::hostingContext@<X0>(WebKit::MediaPlayerPrivateRemote *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(this + 196);
  WTF::MachSendRight::MachSendRight((a2 + 8), (this + 792));
  result = *(this + 100);
  if (result)
  {
    result = WTF::EmbeddedFixedVector<unsigned char,WTF::FastMalloc>::create<unsigned char const*>(result + 4, &result[*result + 4], &v6);
    v5 = v6;
  }

  else
  {
    v5 = 0;
  }

  *(a2 + 16) = v5;
  return result;
}

uint64_t WebKit::MediaPlayerPrivateRemote::setLayerHostingContext(uint64_t result, int *a2)
{
  v4 = *a2;
  if (*(result + 784) != *a2)
  {
    v27[5] = v2;
    v27[6] = v3;
    v6 = result;
    *(result + 784) = v4;
    WTF::MachSendRight::operator=();
    v9 = *(a2 + 2);
    *(a2 + 2) = 0;
    v10 = *(v6 + 800);
    *(v6 + 800) = v9;
    if (v10)
    {
      WTF::fastFree(v10, v7);
    }

    v11 = *(v6 + 192);
    *(v6 + 192) = 0;
    if (v11)
    {
      CFRelease(v11);
    }

    *&v8 = 0;
    v12 = *(v6 + 768);
    v24 = v12;
    v13 = *(v6 + 780);
    v25 = *(v6 + 776);
    v26 = v13;
    v23 = v8;
    *(v6 + 768) = 0;
    *(v6 + 776) = 0;
    if (v13)
    {
      v14 = 8 * v13;
      do
      {
        v20 = *(v6 + 784);
        WTF::MachSendRight::MachSendRight(&v21, (v6 + 792));
        v15 = *(v6 + 800);
        if (v15)
        {
          WTF::EmbeddedFixedVector<unsigned char,WTF::FastMalloc>::create<unsigned char const*>(v15 + 4, &v15[*v15 + 4], v27);
          v16 = v27[0];
        }

        else
        {
          v16 = 0;
        }

        v22 = v16;
        WTF::CompletionHandler<void ()(WebCore::HostingContext)>::operator()(v12, &v20);
        v18 = v22;
        v22 = 0;
        if (v18)
        {
          WTF::fastFree(v18, v17);
        }

        WTF::MachSendRight::~MachSendRight(&v21);
        ++v12;
        v14 -= 8;
      }

      while (v14);
    }

    WTF::Vector<WTF::CompletionHandler<void ()(WebCore::HostingContext)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v24, v7);
    return WTF::Vector<WTF::CompletionHandler<void ()(WebCore::HostingContext)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v23, v19);
  }

  return result;
}

void *WebKit::MediaPlayerPrivateRemote::audioTrackPrivateRemote@<X0>(atomic_uchar *this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = 0;
  v12 = a2;
  v6 = this + 512;
  atomic_compare_exchange_strong_explicit(this + 512, &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    MEMORY[0x19EB01E30](this + 512);
  }

  result = std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>>>::find<unsigned long long>(this + 66, &v12);
  if (result)
  {
    v8 = result[3];
    while (1)
    {
      v9 = *(v8 + 8);
      if ((v9 & 1) == 0)
      {
        break;
      }

      v10 = *(v8 + 8);
      atomic_compare_exchange_strong_explicit((v8 + 8), &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v10 == v9)
      {
        goto LABEL_10;
      }
    }

    result = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v8 + 8));
  }

  else
  {
    v8 = 0;
  }

LABEL_10:
  *a3 = v8;
  v11 = 1;
  atomic_compare_exchange_strong_explicit(v6, &v11, 0, memory_order_release, memory_order_relaxed);
  if (v11 != 1)
  {
    return WTF::Lock::unlockSlow(v6);
  }

  return result;
}

void *WebKit::MediaPlayerPrivateRemote::videoTrackPrivateRemote@<X0>(atomic_uchar *this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = 0;
  v12 = a2;
  v6 = this + 512;
  atomic_compare_exchange_strong_explicit(this + 512, &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    MEMORY[0x19EB01E30](this + 512);
  }

  result = std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>>>::find<unsigned long long>(this + 71, &v12);
  if (result)
  {
    v8 = result[3];
    while (1)
    {
      v9 = *(v8 + 8);
      if ((v9 & 1) == 0)
      {
        break;
      }

      v10 = *(v8 + 8);
      atomic_compare_exchange_strong_explicit((v8 + 8), &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v10 == v9)
      {
        goto LABEL_10;
      }
    }

    result = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v8 + 8));
  }

  else
  {
    v8 = 0;
  }

LABEL_10:
  *a3 = v8;
  v11 = 1;
  atomic_compare_exchange_strong_explicit(v6, &v11, 0, memory_order_release, memory_order_relaxed);
  if (v11 != 1)
  {
    return WTF::Lock::unlockSlow(v6);
  }

  return result;
}

void *WebKit::MediaPlayerPrivateRemote::textTrackPrivateRemote@<X0>(atomic_uchar *this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = 0;
  v12 = a2;
  v6 = this + 512;
  atomic_compare_exchange_strong_explicit(this + 512, &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    MEMORY[0x19EB01E30](this + 512);
  }

  result = std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>>>::find<unsigned long long>(this + 76, &v12);
  if (result)
  {
    v8 = result[3];
    while (1)
    {
      v9 = *(v8 + 8);
      if ((v9 & 1) == 0)
      {
        break;
      }

      v10 = *(v8 + 8);
      atomic_compare_exchange_strong_explicit((v8 + 8), &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v10 == v9)
      {
        goto LABEL_10;
      }
    }

    result = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v8 + 8));
  }

  else
  {
    v8 = 0;
  }

LABEL_10:
  *a3 = v8;
  v11 = 1;
  atomic_compare_exchange_strong_explicit(v6, &v11, 0, memory_order_release, memory_order_relaxed);
  if (v11 != 1)
  {
    return WTF::Lock::unlockSlow(v6);
  }

  return result;
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::setShouldCheckHardwareSupport(WebKit::MediaPlayerPrivateRemote *this, void *a2)
{
  v2 = a2;
  v4 = WebKit::MediaPlayerPrivateRemote::connection(this, a2);
  v12 = v2;
  v5 = *(this + 28);
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 1440;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v5;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v13 = v7;
  IPC::Encoder::operator<<<BOOL &>(v7, &v12);
  IPC::Connection::sendMessageImpl(v4, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

atomic_uchar *WebKit::MediaPlayerPrivateRemote::soundStageSizeDidChange(WebKit::MediaPlayerPrivateRemote *this)
{
  result = *(this + 22);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(this + 21), &v13);
    if (v13)
    {
      v4 = WebKit::MediaPlayerPrivateRemote::connection(this, v3);
      v5 = WebCore::MediaPlayer::soundStageSize(v13);
      v6 = *(this + 28);
      v8 = IPC::Encoder::operator new(0x238, v7);
      *v8 = 1447;
      *(v8 + 2) = 0;
      *(v8 + 3) = 0;
      *(v8 + 1) = v6;
      *(v8 + 68) = 0;
      *(v8 + 70) = 0;
      *(v8 + 69) = 0;
      IPC::Encoder::encodeHeader(v8);
      v14 = v8;
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v8, v5);
      IPC::Connection::sendMessageImpl(v4, &v14, 0, 0);
      v10 = v14;
      v14 = 0;
      if (v10)
      {
        IPC::Encoder::~Encoder(v10, v9);
        bmalloc::api::tzoneFree(v11, v12);
      }

      result = v13;
      v13 = 0;
      if (result)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
      }
    }
  }

  return result;
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::isInFullscreenOrPictureInPictureChanged(WebKit::MediaPlayerPrivateRemote *this, void *a2)
{
  v2 = a2;
  v4 = WebKit::MediaPlayerPrivateRemote::connection(this, a2);
  v12 = v2;
  v5 = *(this + 28);
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 1409;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v5;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v13 = v7;
  IPC::Encoder::operator<<<BOOL &>(v7, &v12);
  IPC::Connection::sendMessageImpl(v4, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

atomic_uchar *WebKit::MediaPlayerPrivateRemote::audioOutputDeviceChanged(WebKit::MediaPlayerPrivateRemote *this)
{
  result = *(this + 22);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(this + 21), &v16);
    if (v16)
    {
      v5 = WebKit::MediaPlayerPrivateRemote::connection(this, v3);
      v6 = *(v16 + 1);
      if (v6 && (v7 = *(v6 + 8)) != 0)
      {
        (*(*v7 + 584))(&v15);
      }

      else
      {
        v15 = 0;
      }

      v8 = *(this + 28);
      v9 = IPC::Encoder::operator new(0x238, v4);
      *v9 = 1400;
      *(v9 + 2) = 0;
      *(v9 + 3) = 0;
      *(v9 + 1) = v8;
      *(v9 + 68) = 0;
      *(v9 + 70) = 0;
      *(v9 + 69) = 0;
      IPC::Encoder::encodeHeader(v9);
      v17 = v9;
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v9, &v15);
      IPC::Connection::sendMessageImpl(v5, &v17, 0, 0);
      v11 = v17;
      v17 = 0;
      if (v11)
      {
        IPC::Encoder::~Encoder(v11, v10);
        bmalloc::api::tzoneFree(v13, v14);
      }

      v12 = v15;
      v15 = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v10);
      }

      result = v16;
      v16 = 0;
      if (result)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
      }
    }
  }

  return result;
}

atomic_uchar *WebKit::MediaPlayerPrivateRemote::sceneIdentifierDidChange(WebKit::MediaPlayerPrivateRemote *this)
{
  result = *(this + 22);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(this + 21), &v13);
    if (v13)
    {
      v4 = WebKit::MediaPlayerPrivateRemote::connection(this, v3);
      v5 = v13;
      v6 = *(this + 28);
      v8 = IPC::Encoder::operator new(0x238, v7);
      *v8 = 1439;
      *(v8 + 2) = 0;
      *(v8 + 3) = 0;
      *(v8 + 1) = v6;
      *(v8 + 68) = 0;
      *(v8 + 70) = 0;
      *(v8 + 69) = 0;
      IPC::Encoder::encodeHeader(v8);
      v14 = v8;
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v8, v5 + 38);
      IPC::Connection::sendMessageImpl(v4, &v14, 0, 0);
      v10 = v14;
      v14 = 0;
      if (v10)
      {
        IPC::Encoder::~Encoder(v10, v9);
        bmalloc::api::tzoneFree(v11, v12);
      }

      result = v13;
      v13 = 0;
      if (result)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
      }
    }
  }

  return result;
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::setMessageClientForTesting(WebKit::MediaPlayerPrivateRemote *this, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *(this + 117);
  *(this + 117) = v3;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  v5 = WebKit::MediaPlayerPrivateRemote::connection(this, a2);
  v6 = *(this + 117);
  if (v6)
  {
    LOBYTE(v6) = *(v6 + 8) != 0;
  }

  v8 = v6;
  return IPC::Connection::send<Messages::RemoteMediaPlayerProxy::SetHasMessageClientForTesting>(v5, &v8, *(this + 28));
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::sendInternalMessage(WebKit::MediaPlayerPrivateRemote *this, void *a2)
{
  v3 = *(this + 117);
  if (v3 && (v4 = *(v3 + 8)) != 0)
  {
    (**v4)(v4);
    (*(*v4 + 32))(v4, a2);
    v6 = *(*v4 + 8);

    return v6(v4);
  }

  else
  {
    v8 = WebKit::MediaPlayerPrivateRemote::connection(this, a2);
    v9 = 0;
    return IPC::Connection::send<Messages::RemoteMediaPlayerProxy::SetHasMessageClientForTesting>(v8, &v9, *(this + 28));
  }
}

uint64_t WebKit::MediaSourcePrivateRemote::queueSingleton(WebKit::MediaSourcePrivateRemote *this)
{
  if (atomic_load_explicit(&_MergedGlobals_110, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&_MergedGlobals_110, &v5, std::__call_once_proxy[abi:sn200100]<std::tuple<WebKit::MediaSourcePrivateRemote::queueSingleton(void)::$_0 &&>>);
  }

  return qword_1ED642C20;
}

void WebKit::MediaSourcePrivateRemote::~MediaSourcePrivateRemote(WebKit::MediaSourcePrivateRemote *this)
{
  v2 = *(this + 29);
  atomic_fetch_add(v2 + 2, 1u);
  v3 = *(this + 30);
  v13[0] = "MediaSourcePrivateRemote";
  v13[1] = 25;
  v13[2] = "~MediaSourcePrivateRemote";
  v13[3] = v3;
  if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v2, &WebKit2LogMedia, 0, v13))
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogMedia, 0, v13);
  }

  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  v5 = *(this + 22);
  if (v5)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v5, *(this + 21), v13);
    if (v13[0])
    {
      IPC::Connection::removeWorkQueueMessageReceiver(*(v13[0] + 32), 0x19u, *(this + 24));
      v6 = v13[0];
      v13[0] = 0;
      if (v6)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v6 + 24), v4);
      }
    }
  }

  v7 = *(this + 29);
  *(this + 29) = 0;
  if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7 + 2);
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 27);
  *(this + 27) = 0;
  if (v8)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v8, v4);
  }

  v9 = *(this + 25);
  *(this + 25) = 0;
  if (v9)
  {
    if (!atomic_load(v9))
    {
      __break(0xC471u);
      return;
    }

    atomic_fetch_add(v9, 0xFFFFFFFF);
  }

  v11 = *(this + 23);
  *(this + 23) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(this + 22);
  *(this + 22) = 0;
  if (v12)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v12, v4);
  }

  WebCore::MediaSourcePrivate::~MediaSourcePrivate(this);
}

{
  WebKit::MediaSourcePrivateRemote::~MediaSourcePrivateRemote(this);

  WTF::fastFree(v1, v2);
}

void non-virtual thunk toWebKit::MediaSourcePrivateRemote::~MediaSourcePrivateRemote(WebKit::MediaSourcePrivateRemote *this)
{
  WebKit::MediaSourcePrivateRemote::~MediaSourcePrivateRemote((this - 160));
}

{
  WebKit::MediaSourcePrivateRemote::~MediaSourcePrivateRemote((this - 160));

  WTF::fastFree(v1, v2);
}

uint64_t WebKit::MediaSourcePrivateRemote::addSourceBuffer(uint64_t a1, void *a2, char *a3, uint64_t *a4)
{
  v80 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 216);
  if (v8)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v8, *(a1 + 208), &v71);
  }

  else
  {
    v71 = 0;
  }

  v9 = *(a1 + 176);
  if (v9)
  {
    v9 = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v9, *(a1 + 168), &v70);
  }

  else
  {
    v70 = 0;
  }

  v10 = atomic_load((a1 + 224));
  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v12 = v70;
    if (!v70)
    {
      v11 = 1;
      goto LABEL_95;
    }

    if (!v71)
    {
      v70 = 0;
      v11 = 1;
LABEL_94:
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v12 + 24), a2);
      goto LABEL_95;
    }

    v69 = 0;
    v13 = *(a1 + 232);
    atomic_fetch_add((v13 + 8), 1u);
    v14 = *(a1 + 240);
    v67[0] = "MediaSourcePrivateRemote";
    v67[1] = 25;
    v67[2] = "addSourceBuffer";
    v67[3] = v14;
    v68 = 0;
    v15 = MEMORY[0x1E696EBD0];
    while (1)
    {
      v16 = *v15;
      if (v16)
      {
        break;
      }

      v17 = *v15;
      atomic_compare_exchange_strong_explicit(v15, &v17, v16 | 1, memory_order_acquire, memory_order_acquire);
      if (v17 == v16)
      {
        v18 = WTF::Logger::messageHandlerObservers(v9);
        v19 = *(v18 + 12);
        if (v19)
        {
          v20 = *v18;
          v21 = *v18 + 8 * v19;
          do
          {
            v22 = *v20;
            *buf = 0;
            WTF::Logger::LogSiteIdentifier::toString(&buf[8], v67);
            LODWORD(v77[0]) = 1;
            WebCore::ContentType::toJSONString(&v77[1], a2);
            WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v72, buf, 2uLL);
            (*(*v22 + 16))(v22, &WebKit2LogMedia, 4, v72);
            WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v72, v23);
            for (i = 24; i != -8; i -= 16)
            {
              v26 = *&buf[i];
              *&buf[i] = 0;
              if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v26, v24);
              }
            }

            ++v20;
          }

          while (v20 != v21);
        }

        v27 = 1;
        atomic_compare_exchange_strong_explicit(v15, &v27, 0, memory_order_release, memory_order_relaxed);
        if (v27 != 1)
        {
          WTF::Lock::unlockSlow(MEMORY[0x1E696EBD0]);
        }

        if ((*(v13 + 12) & 1) == 0 || !WebKit2LogMedia || byte_1ED640D28 <= 3u)
        {
          goto LABEL_63;
        }

        WTF::Logger::LogSiteIdentifier::toString(&v74, v67);
        WebCore::ContentType::toJSONString(&v73, a2);
        *buf = v74;
        v72[0] = v73;
        result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v72, &v75);
        if (!v75)
        {
          __break(0xC471u);
          return result;
        }

        v30 = v73;
        v73 = 0;
        if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v30, v29);
        }

        v31 = v74;
        v74 = 0;
        if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v31, v29);
        }

        v32 = qword_1ED640D38;
        v33 = os_log_type_enabled(qword_1ED640D38, OS_LOG_TYPE_DEFAULT);
        if (v33)
        {
          WTF::String::utf8();
          v35 = v72[0] ? v72[0] + 16 : 0;
          *buf = 136446210;
          *&buf[4] = v35;
          _os_log_impl(&dword_19D52D000, v32, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
          v33 = v72[0];
          v72[0] = 0;
          if (v33)
          {
            if (*v33 == 1)
            {
              v33 = WTF::fastFree(v33, v34);
            }

            else
            {
              --*v33;
            }
          }
        }

        if (WebKit2LogMedia && byte_1ED640D28 >= 4u)
        {
          v36 = MEMORY[0x1E696EBC0];
          while (1)
          {
            v37 = *v36;
            if (v37)
            {
              break;
            }

            v38 = *v36;
            atomic_compare_exchange_strong_explicit(v36, &v38, v37 | 1, memory_order_acquire, memory_order_acquire);
            if (v38 == v37)
            {
              v39 = WTF::Logger::observers(v33);
              v40 = *(v39 + 12);
              if (v40)
              {
                v41 = *v39;
                v42 = *v39 + 8 * v40;
                do
                {
                  v43 = *v41;
                  *buf = 0;
                  WTF::Logger::LogSiteIdentifier::toString(&buf[8], v67);
                  LODWORD(v77[0]) = 1;
                  WebCore::ContentType::toJSONString(&v77[1], a2);
                  WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v72, buf, 2uLL);
                  (*(*v43 + 16))(v43, &WebKit2LogMedia, 4, v72);
                  WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v72, v44);
                  for (j = 24; j != -8; j -= 16)
                  {
                    v46 = *&buf[j];
                    *&buf[j] = 0;
                    if (v46 && atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v46, v34);
                    }
                  }

                  ++v41;
                }

                while (v41 != v42);
              }

              v47 = 1;
              atomic_compare_exchange_strong_explicit(v36, &v47, 0, memory_order_release, memory_order_relaxed);
              if (v47 != 1)
              {
                WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
              }

              break;
            }
          }
        }

        v48 = v75;
        v75 = 0;
        if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v48, v34);
        }

        break;
      }
    }

    if (!v13)
    {
      goto LABEL_65;
    }

LABEL_63:
    if (atomic_fetch_add((v13 + 8), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, (v13 + 8));
      (*(*v13 + 8))(v13);
    }

LABEL_65:
    *buf = a1;
    *&buf[8] = &v69;
    WTF::String::isolatedCopy();
    v77[1] = &v68;
    v49 = v70;
    if (v70)
    {
      while (1)
      {
        v59 = *(v49 + 24);
        if ((v59 & 1) == 0)
        {
          break;
        }

        v60 = *(v49 + 24);
        atomic_compare_exchange_strong_explicit((v49 + 24), &v60, v59 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v60 == v59)
        {
          goto LABEL_66;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v49 + 24));
    }

LABEL_66:
    v78 = v49;
    v79 = *a3;
    v50 = WTF::fastMalloc(0x38);
    *v50 = &unk_1F1127E00;
    *(v50 + 8) = *buf;
    *(v50 + 24) = *v77;
    v51 = v78;
    v77[0] = 0;
    v78 = 0;
    *(v50 + 40) = v51;
    *(v50 + 48) = v79;
    v67[0] = v50;
    WTF::callOnMainRunLoopAndWait();
    if (v67[0])
    {
      (*(*v67[0] + 8))(v67[0]);
    }

    v52 = v78;
    v78 = 0;
    if (v52)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v52 + 24), a2);
    }

    v53 = v77[0];
    v77[0] = 0;
    if (v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v53, a2);
    }

    v11 = v69;
    if (!v69)
    {
      while (1)
      {
        v55 = *(a1 + 8);
        if ((v55 & 1) == 0)
        {
          break;
        }

        v54 = *(a1 + 8);
        atomic_compare_exchange_strong_explicit((a1 + 8), &v54, v55 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v54 == v55)
        {
          goto LABEL_78;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 8));
LABEL_78:
      v56 = v68;
      if (v68)
      {
        while (1)
        {
          v57 = *(v56 + 8);
          if ((v57 & 1) == 0)
          {
            break;
          }

          v58 = *(v56 + 8);
          atomic_compare_exchange_strong_explicit((v56 + 8), &v58, v57 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v58 == v57)
          {
            goto LABEL_86;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v56 + 8));
      }

LABEL_86:
      v61 = WTF::fastMalloc(0x20);
      *v61 = &unk_1F1127E28;
      v61[1] = a1;
      v61[2] = a1;
      v61[3] = v56;
      *buf = v61;
      WebCore::MediaSourcePrivate::ensureOnDispatcher();
      v62 = *buf;
      *buf = 0;
      if (v62)
      {
        (*(*v62 + 8))(v62);
      }

      v63 = v68;
      v68 = 0;
      v64 = *a4;
      *a4 = v63;
      if (v64)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref((v64 + 8));
      }

      v11 = v69;
    }

    v65 = v68;
    v68 = 0;
    if (v65)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref((v65 + 8));
    }
  }

  v12 = v70;
  v70 = 0;
  if (v12)
  {
    goto LABEL_94;
  }

LABEL_95:
  v66 = v71;
  v71 = 0;
  if (v66)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref((v66 + 48));
  }

  return v11;
}

atomic_uchar *WebKit::MediaSourcePrivateRemote::player@<X0>(WebKit::MediaSourcePrivateRemote *this@<X0>, void *a2@<X8>)
{
  result = *(this + 27);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(this + 26), &v6);
    v5 = v6;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t WebKit::MediaSourcePrivateRemote::setPlayer(WebKit::MediaSourcePrivateRemote *this, atomic_ullong *a2)
{
  if (a2)
  {
    if ((*(*a2 + 32))(a2) != 11)
    {
      result = 105;
      __break(0xC471u);
      return result;
    }

    v4 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::controlBlock(a2 + 6);
    result = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v4);
  }

  else
  {
    result = 0;
  }

  v6 = *(this + 27);
  *(this + 27) = result;
  if (v6)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v6, a2);
  }

  *(this + 26) = a2;
  return result;
}

uint64_t WebKit::MediaSourcePrivateRemote::shutdown(WebKit::MediaSourcePrivateRemote *this)
{
  atomic_store(1u, this + 224);
  atomic_store(0, this + 225);
  while (1)
  {
    v2 = *(this + 1);
    if ((v2 & 1) == 0)
    {
      break;
    }

    v3 = *(this + 1);
    atomic_compare_exchange_strong_explicit(this + 1, &v3, v2 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v3 == v2)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 1));
LABEL_6:
  v4 = WTF::fastMalloc(0x18);
  *v4 = &unk_1F1127E50;
  v4[1] = this;
  v4[2] = this;
  v6 = v4;
  WebCore::MediaSourcePrivate::ensureOnDispatcher();
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

uint64_t WebKit::MediaSourcePrivateRemote::durationChanged(atomic_ullong *this, const WTF::MediaTime *a2)
{
  WebCore::MediaSourcePrivate::durationChanged(this, a2);
  while (1)
  {
    v4 = this[1];
    if ((v4 & 1) == 0)
    {
      break;
    }

    v5 = this[1];
    atomic_compare_exchange_strong_explicit(this + 1, &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v4)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(this[1]);
LABEL_6:
  *&v8 = *a2;
  *(&v8 + 5) = *(a2 + 5);
  v6 = WTF::fastMalloc(0x28);
  *v6 = &unk_1F1127E78;
  v6[1] = this;
  v6[2] = this;
  v6[3] = v8;
  *(v6 + 29) = *(&v8 + 5);
  v9 = v6;
  WebCore::MediaSourcePrivate::ensureOnDispatcher();
  result = v9;
  if (v9)
  {
    return (*(*v9 + 8))(v9);
  }

  return result;
}

WTF *WebKit::MediaSourcePrivateRemote::bufferedChanged(WebKit::MediaSourcePrivateRemote *this, const WebCore::PlatformTimeRanges *a2)
{
  WebCore::MediaSourcePrivate::bufferedChanged();
  while (1)
  {
    v4 = *(this + 1);
    if ((v4 & 1) == 0)
    {
      break;
    }

    v5 = *(this + 1);
    atomic_compare_exchange_strong_explicit(this + 1, &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v4)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 1));
LABEL_6:
  *&v10 = this;
  *(&v10 + 1) = this;
  WTF::Vector<WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v11, a2);
  v6 = WTF::fastMalloc(0x28);
  *v6 = &unk_1F1127EA0;
  *(v6 + 8) = v10;
  WTF::Vector<WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v6 + 24, &v11);
  v13 = v6;
  WebCore::MediaSourcePrivate::ensureOnDispatcher();
  v8 = v13;
  v13 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  result = v11;
  if (v11)
  {
    v11 = 0;
    v12 = 0;
    return WTF::fastFree(result, v7);
  }

  return result;
}

uint64_t WebKit::MediaSourcePrivateRemote::markEndOfStream(uint64_t a1, char a2)
{
  atomic_store(1u, (a1 + 48));
  while (1)
  {
    v4 = *(a1 + 8);
    if ((v4 & 1) == 0)
    {
      break;
    }

    v5 = *(a1 + 8);
    atomic_compare_exchange_strong_explicit((a1 + 8), &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v4)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 8));
LABEL_6:
  v6 = WTF::fastMalloc(0x20);
  *v6 = &unk_1F1127EC8;
  *(v6 + 8) = a1;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8 = v6;
  WebCore::MediaSourcePrivate::ensureOnDispatcher();
  result = v8;
  if (v8)
  {
    return (*(*v8 + 8))(v8);
  }

  return result;
}

uint64_t WebKit::MediaSourcePrivateRemote::unmarkEndOfStream(WebKit::MediaSourcePrivateRemote *this)
{
  atomic_store(0, this + 48);
  while (1)
  {
    v2 = *(this + 1);
    if ((v2 & 1) == 0)
    {
      break;
    }

    v3 = *(this + 1);
    atomic_compare_exchange_strong_explicit(this + 1, &v3, v2 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v3 == v2)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 1));
LABEL_6:
  v4 = WTF::fastMalloc(0x18);
  *v4 = &unk_1F1127EF0;
  v4[1] = this;
  v4[2] = this;
  v6 = v4;
  WebCore::MediaSourcePrivate::ensureOnDispatcher();
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

uint64_t WebKit::MediaSourcePrivateRemote::setMediaPlayerReadyState(uint64_t a1, void *a2)
{
  v2 = a2;
  v92[1] = *MEMORY[0x1E69E9840];
  v4 = (a1 + 225);
  v5 = atomic_load((a1 + 225));
  if (a2 == 2 && v5 >= 3)
  {
    v6 = *(a1 + 216);
    if (v6)
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v6, *(a1 + 208), &v65);
      v6 = v65;
    }

    else
    {
      v65 = 0;
    }

    v62 = WebKit::MediaPlayerPrivateRemote::currentTime(v6, a2);
    v63 = v7;
    v64 = v8;
    WebCore::MediaSourcePrivate::buffered(&v60, a1);
    v9 = WebCore::MediaSourcePrivate::duration(a1);
    v58 = v10;
    v59 = BYTE4(v10);
    v11 = *(a1 + 232);
    atomic_fetch_add((v11 + 8), 1u);
    v12 = *(a1 + 240);
    v56[0] = "MediaSourcePrivateRemote";
    v56[1] = 25;
    v56[2] = "setMediaPlayerReadyState";
    v56[3] = v12;
    v57 = v9;
    v13 = MEMORY[0x1E696EBD0];
    while (1)
    {
      v14 = *v13;
      if (v14)
      {
        break;
      }

      v15 = *v13;
      atomic_compare_exchange_strong_explicit(v13, &v15, v14 | 1, memory_order_acquire, memory_order_acquire);
      if (v15 == v14)
      {
        v55 = v4;
        v16 = WTF::Logger::messageHandlerObservers(v9);
        v17 = *(v16 + 12);
        if (v17)
        {
          v18 = *v16;
          v19 = *v16 + 8 * v17;
          do
          {
            v20 = *v18;
            *buf = 0;
            WTF::Logger::LogSiteIdentifier::toString(&buf[8], v56);
            v81 = 0;
            WTF::String::String(&v82, "stall detected at:");
            v83 = 1;
            WTF::MediaTime::toJSONString(&v84, &v62);
            v85 = 0;
            WTF::String::String(&v86, " duration:");
            v87 = 1;
            WTF::MediaTime::toJSONString(&v88, &v57);
            v89 = 0;
            WTF::String::String(&v90, " buffered:");
            v91 = 0;
            WebCore::PlatformTimeRanges::toString(v92, &v60);
            WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v66, buf, 7uLL);
            (*(*v20 + 16))(v20, &WebKit2LogMedia, 0, v66);
            WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v66, v21);
            for (i = 104; i != -8; i -= 16)
            {
              v23 = *&buf[i];
              *&buf[i] = 0;
              if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v23, v10);
              }
            }

            ++v18;
          }

          while (v18 != v19);
        }

        v24 = 1;
        atomic_compare_exchange_strong_explicit(v13, &v24, 0, memory_order_release, memory_order_relaxed);
        if (v24 != 1)
        {
          WTF::Lock::unlockSlow(MEMORY[0x1E696EBD0]);
        }

        v4 = v55;
        v2 = 2;
        if ((*(v11 + 12) & 1) == 0)
        {
          goto LABEL_67;
        }

        WTF::Logger::LogSiteIdentifier::toString(&v73, v56);
        WTF::String::String(&v72, "stall detected at:");
        WTF::MediaTime::toJSONString(&v71, &v62);
        WTF::String::String(&v70, " duration:");
        WTF::MediaTime::toJSONString(&v69, &v57);
        WTF::String::String(&v68, " buffered:");
        WebCore::PlatformTimeRanges::toString(&v67, &v60);
        v66[0] = v72;
        v79 = v71;
        *buf = v73;
        v77 = v69;
        v78 = v70;
        v75 = v67;
        v76 = v68;
        result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v66, &v79, &v78, &v77, &v76, &v75, &v74);
        if (!v74)
        {
          __break(0xC471u);
          return result;
        }

        v27 = v67;
        v67 = 0;
        if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v27, v26);
        }

        v28 = v68;
        v68 = 0;
        if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v28, v26);
        }

        v29 = v69;
        v69 = 0;
        if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v29, v26);
        }

        v30 = v70;
        v70 = 0;
        if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v30, v26);
        }

        v31 = v71;
        v71 = 0;
        if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v31, v26);
        }

        v32 = v72;
        v72 = 0;
        if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v32, v26);
        }

        v33 = v73;
        v73 = 0;
        if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v33, v26);
        }

        v34 = qword_1ED640D38;
        v35 = os_log_type_enabled(qword_1ED640D38, OS_LOG_TYPE_DEFAULT);
        if (v35)
        {
          WTF::String::utf8();
          v36 = v66[0] ? v66[0] + 16 : 0;
          *buf = 136446210;
          *&buf[4] = v36;
          _os_log_impl(&dword_19D52D000, v34, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
          v35 = v66[0];
          v66[0] = 0;
          if (v35)
          {
            if (*v35 == 1)
            {
              v35 = WTF::fastFree(v35, v10);
            }

            else
            {
              --*v35;
            }
          }
        }

        if (WebKit2LogMedia)
        {
          v37 = MEMORY[0x1E696EBC0];
          while (1)
          {
            v38 = *v37;
            if (v38)
            {
              break;
            }

            v39 = *v37;
            atomic_compare_exchange_strong_explicit(v37, &v39, v38 | 1, memory_order_acquire, memory_order_acquire);
            if (v39 == v38)
            {
              v40 = WTF::Logger::observers(v35);
              v41 = *(v40 + 12);
              if (v41)
              {
                v42 = *v40;
                v43 = *v40 + 8 * v41;
                do
                {
                  v44 = *v42;
                  *buf = 0;
                  WTF::Logger::LogSiteIdentifier::toString(&buf[8], v56);
                  v81 = 0;
                  WTF::String::String(&v82, "stall detected at:");
                  v83 = 1;
                  WTF::MediaTime::toJSONString(&v84, &v62);
                  v85 = 0;
                  WTF::String::String(&v86, " duration:");
                  v87 = 1;
                  WTF::MediaTime::toJSONString(&v88, &v57);
                  v89 = 0;
                  WTF::String::String(&v90, " buffered:");
                  v91 = 0;
                  WebCore::PlatformTimeRanges::toString(v92, &v60);
                  WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v66, buf, 7uLL);
                  (*(*v44 + 16))(v44, &WebKit2LogMedia, 0, v66);
                  WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v66, v45);
                  for (j = 104; j != -8; j -= 16)
                  {
                    v47 = *&buf[j];
                    *&buf[j] = 0;
                    if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v47, v10);
                    }
                  }

                  ++v42;
                }

                while (v42 != v43);
              }

              v48 = 1;
              atomic_compare_exchange_strong_explicit(v37, &v48, 0, memory_order_release, memory_order_relaxed);
              v2 = 2;
              v4 = v55;
              if (v48 != 1)
              {
                WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
              }

              break;
            }
          }
        }

        v49 = v74;
        v74 = 0;
        if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v49, v10);
        }

        break;
      }
    }

    if (!v11)
    {
      goto LABEL_69;
    }

LABEL_67:
    if (atomic_fetch_add((v11 + 8), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, (v11 + 8));
      (*(*v11 + 8))(v11);
    }

LABEL_69:
    v50 = v60;
    if (v60)
    {
      v60 = 0;
      v61 = 0;
      WTF::fastFree(v50, v10);
    }

    v51 = v65;
    v65 = 0;
    if (v51)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v51 + 6);
    }
  }

  atomic_store(v2, v4);
  while (1)
  {
    v52 = *(a1 + 8);
    if ((v52 & 1) == 0)
    {
      break;
    }

    v53 = *(a1 + 8);
    atomic_compare_exchange_strong_explicit((a1 + 8), &v53, v52 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v53 == v52)
    {
      goto LABEL_78;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 8));
LABEL_78:
  v54 = WTF::fastMalloc(0x20);
  *v54 = &unk_1F1127F18;
  *(v54 + 8) = a1;
  *(v54 + 16) = a1;
  *(v54 + 24) = v2;
  *buf = v54;
  WebCore::MediaSourcePrivate::ensureOnDispatcher();
  result = *buf;
  *buf = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t WebKit::MediaSourcePrivateRemote::setTimeFudgeFactor(WebKit::MediaSourcePrivateRemote *this, const WTF::MediaTime *a2)
{
  while (1)
  {
    v4 = *(this + 1);
    if ((v4 & 1) == 0)
    {
      break;
    }

    v5 = *(this + 1);
    atomic_compare_exchange_strong_explicit(this + 1, &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v4)
    {
      goto LABEL_5;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 1));
LABEL_5:
  *&v8 = *a2;
  *(&v8 + 5) = *(a2 + 5);
  v6 = WTF::fastMalloc(0x28);
  *v6 = &unk_1F1127F40;
  v6[1] = this;
  v6[2] = this;
  v6[3] = v8;
  *(v6 + 29) = *(&v8 + 5);
  v9 = v6;
  WebCore::MediaSourcePrivate::ensureOnDispatcher();
  result = v9;
  if (v9)
  {
    return (*(*v9 + 8))(v9);
  }

  return result;
}

atomic_uchar **WebKit::MediaSourcePrivateRemote::MessageReceiver::client(WebKit::MediaSourcePrivateRemote::MessageReceiver *this, uint64_t a2)
{
  result = *(a2 + 24);
  if (result)
  {
    v4 = 0;
    v5 = *(a2 + 16);
    atomic_compare_exchange_strong_explicit(result, &v4, 1u, memory_order_acquire, memory_order_acquire);
    if (v4)
    {
      v9 = result;
      MEMORY[0x19EB01E30]();
      result = v9;
    }

    if (result[3])
    {
      ++result[1];
    }

    else
    {
      v5 = 0;
    }

    v6 = 1;
    atomic_compare_exchange_strong_explicit(result, &v6, 0, memory_order_release, memory_order_relaxed);
    if (v6 == 1)
    {
      if (v5)
      {
        goto LABEL_9;
      }
    }

    else
    {
      result = WTF::Lock::unlockSlow(result);
      if (v5)
      {
LABEL_9:
        WebCore::MediaSourcePrivate::client(v5);
        v7 = *this;
        result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivate,(WTF::DestructionThread)0>::deref(v5 + 1, v8);
        if (v7)
        {
          return result;
        }
      }
    }
  }

  *this = 0;
  return result;
}

unsigned int *WebKit::MediaSourcePrivateRemote::MessageReceiver::proxyWaitForTarget(WebKit::MediaSourcePrivateRemote *a1, uint64_t a2, uint64_t *a3)
{
  WebKit::MediaSourcePrivateRemote::queueSingleton(a1);
  WebKit::MediaSourcePrivateRemote::MessageReceiver::client(&v17, a1);
  if (v17)
  {
    v5 = (*(*v17 + 32))(&v15);
    v6 = v15;
    v7 = WebKit::MediaSourcePrivateRemote::queueSingleton(v5);
    v12 = 0uLL;
    v13 = "proxyWaitForTarget";
    v14 = 0;
    WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::whenSettled<WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::MediaTime,WebCore::PlatformMediaError> &&)>>(v6, v7 + 24, a3, &v12, v16);
    WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::ThenCommand<WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::ThenCallback<false,void>>::~ThenCommand(v16);
    result = v15;
    v15 = 0;
    if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 2);
      result = (*(*result + 16))(result);
    }

    v10 = v17;
    v17 = 0;
    if (v10)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivateClient,(WTF::DestructionThread)0>::deref((v10 + 8), v8);
    }
  }

  else
  {
    v12.n128_u8[0] = 1;
    LOBYTE(v13) = 1;
    v11 = *a3;
    *a3 = 0;
    (*(*v11 + 16))(v11, &v12);
    return (*(*v11 + 8))(v11);
  }

  return result;
}

unsigned int *WebKit::MediaSourcePrivateRemote::MessageReceiver::proxySeekToTime(WebKit::MediaSourcePrivateRemote *a1, uint64_t a2, uint64_t *a3)
{
  WebKit::MediaSourcePrivateRemote::queueSingleton(a1);
  WebKit::MediaSourcePrivateRemote::MessageReceiver::client(&v17, a1);
  if (v17)
  {
    v5 = (*(*v17 + 40))(&v15);
    v6 = v15;
    v7 = WebKit::MediaSourcePrivateRemote::queueSingleton(v5);
    v12 = 0uLL;
    v13 = "proxySeekToTime";
    v14 = 0;
    WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::whenSettled<WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError> &&)>>(v6, v7 + 24, a3, &v12, v16);
    WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCommand<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallback<true,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>>::~ThenCommand(v16);
    result = v15;
    v15 = 0;
    if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 2);
      result = (*(*result + 16))(result);
    }

    v10 = v17;
    v17 = 0;
    if (v10)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivateClient,(WTF::DestructionThread)0>::deref((v10 + 8), v8);
    }
  }

  else
  {
    v12.n128_u16[0] = 259;
    v11 = *a3;
    *a3 = 0;
    (*(*v11 + 16))(v11, &v12);
    return (*(*v11 + 8))(v11);
  }

  return result;
}

__n128 WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::whenSettled<WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError> &&)>>@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, __n128 *a4@<X3>, __n128 *a5@<X8>)
{
  v9 = *a3;
  *a3 = 0;
  v10 = WTF::fastMalloc(0x50);
  while (1)
  {
    v11 = *(a2 + 8);
    if ((v11 & 1) == 0)
    {
      break;
    }

    v12 = *(a2 + 8);
    atomic_compare_exchange_strong_explicit((a2 + 8), &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v12 == v11)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a2 + 8));
LABEL_6:
  v13 = WTF::fastMalloc(0x10);
  *v13 = &unk_1F11280A8;
  v13[1] = v9;
  *(v10 + 8) = 1;
  *v10 = &unk_1F10FE050;
  *(v10 + 16) = a2;
  v14 = *a4;
  *(v10 + 40) = a4[1];
  *(v10 + 24) = v14;
  *(v10 + 56) = 0;
  *v10 = &unk_1F10FE020;
  *(v10 + 64) = 0;
  *(v10 + 72) = v13;
  atomic_fetch_add((a1 + 8), 1u);
  a5->n128_u64[0] = a1;
  a5->n128_u64[1] = v10;
  result = *a4;
  v16 = a4[1];
  a5[1] = *a4;
  a5[2] = v16;
  return result;
}

uint64_t WebKit::RemoteAudioDestinationProxy::RemoteAudioDestinationProxy(uint64_t a1, uint64_t a2)
{
  WebCore::AudioDestination::hardwareSampleRate(a1);
  WebCore::AudioDestinationResampler::AudioDestinationResampler();
  *a1 = &unk_1F1127570;
  *(a1 + 168) = &unk_1F1127600;
  *(a1 + 176) = 3;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0;
  v4 = semaphore_create(*MEMORY[0x1E69E9A60], (a1 + 236), 0, 0);
  v5 = **(a2 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  *(a1 + 240) = v5;
  *(a1 + 248) = *(a2 + 16);
  WebCore::AudioDestination::hardwareSampleRate(v4);
  *(a1 + 252) = v6;
  v7 = **(a2 + 32);
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 264) = v7;
  *(a1 + 285) = 0;
  return a1;
}

atomic_uint *WebKit::RemoteAudioDestinationProxy::stopRenderingThread(atomic_uint *this)
{
  v1 = *(this + 34);
  if (v1)
  {
    v2 = this;
    atomic_fetch_add(v1, 1u);
    v3 = (this + 73);
    atomic_store(1u, this + 292);
    MEMORY[0x19EB16320](this[59]);
    WTF::Thread::waitForCompletion(v1);
    v4 = *(v2 + 34);
    *(v2 + 34) = 0;
    if (v4)
    {
      WTF::ThreadSafeRefCounted<WTF::Thread,(WTF::DestructionThread)0>::deref(v4);
    }

    atomic_store(0, v3);

    return WTF::ThreadSafeRefCounted<WTF::Thread,(WTF::DestructionThread)0>::deref(v1);
  }

  return this;
}

void *WTF::ThreadSafeWeakPtr<WebKit::GPUProcessConnection,WTF::NoTaggingTraits<WebKit::GPUProcessConnection>>::operator=<WebKit::GPUProcessConnection>(void *a1, void *a2)
{
  if (*a2)
  {
    v4 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::controlBlock((*a2 + 24));
    v5 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = a1[1];
  a1[1] = v5;
  if (v6)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v6, a2);
  }

  *a1 = *a2;
  return a1;
}

IPC::Encoder *IPC::Connection::send<Messages::RemoteAudioDestinationManager::SetSceneIdentifier>(uint64_t *a1, uint64_t **a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 929;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v4, **a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v4, a2[1]);
  IPC::Connection::sendMessageImpl(a1, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void WebKit::RemoteAudioDestinationProxy::~RemoteAudioDestinationProxy(WebKit::RemoteAudioDestinationProxy *this)
{
  *this = &unk_1F1127570;
  *(this + 21) = &unk_1F1127600;
  v2 = *(this + 25);
  if (!v2)
  {
    goto LABEL_10;
  }

  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v2, *(this + 24), &v17);
  v4 = v17;
  if (!v17)
  {
    goto LABEL_10;
  }

  if (!*(this + 23))
  {
    v17 = 0;
LABEL_9:
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v4 + 24), v3);
    goto LABEL_10;
  }

  v5 = *(v17 + 32);
  v6 = IPC::Encoder::operator new(0x238, v3);
  *v6 = 928;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = 0;
  IPC::Encoder::encodeHeader(v6);
  v18 = v6;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, *(this + 23));
  IPC::Connection::sendMessageImpl(v5, &v18, 0, 0);
  v7 = v18;
  v18 = 0;
  if (v7)
  {
    IPC::Encoder::~Encoder(v7, v3);
    bmalloc::api::tzoneFree(v15, v16);
  }

  v4 = v17;
  v17 = 0;
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_10:
  WebKit::RemoteAudioDestinationProxy::stopRenderingThread(this);
  v9 = *(this + 35);
  *(this + 35) = 0;
  if (v9)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v9);
  }

  v10 = *(this + 34);
  *(this + 34) = 0;
  if (v10)
  {
    WTF::ThreadSafeRefCounted<WTF::Thread,(WTF::DestructionThread)0>::deref(v10);
  }

  v11 = *(this + 33);
  *(this + 33) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v8);
  }

  v12 = *(this + 30);
  *(this + 30) = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v8);
  }

  IPC::Semaphore::destroy((this + 232));
  WTF::MachSendRight::~MachSendRight((this + 232));
  std::unique_ptr<WebCore::WebAudioBufferList>::reset[abi:sn200100](this + 27, 0);
  std::unique_ptr<WebKit::ConsumerSharedCARingBuffer>::reset[abi:sn200100](this + 26, 0);
  v14 = *(this + 25);
  *(this + 25) = 0;
  if (v14)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v14, v13);
  }

  WebCore::AudioDestinationResampler::~AudioDestinationResampler(this);
}

{
  WebKit::RemoteAudioDestinationProxy::~RemoteAudioDestinationProxy(this);

  WTF::fastFree(v1, v2);
}

void non-virtual thunk toWebKit::RemoteAudioDestinationProxy::~RemoteAudioDestinationProxy(WebKit::RemoteAudioDestinationProxy *this)
{
  WebKit::RemoteAudioDestinationProxy::~RemoteAudioDestinationProxy((this - 168));
}

{
  WebKit::RemoteAudioDestinationProxy::~RemoteAudioDestinationProxy((this - 168));

  WTF::fastFree(v1, v2);
}

IPC::Encoder *WebKit::RemoteAudioDestinationProxy::startRendering(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 200);
  if (v4)
  {
    v5 = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v4, *(a1 + 192), &v84);
    v6 = v84;
    if (v84)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v84 = 0;
  }

  {
    v7 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v74 = WebKit::WebProcess::operator new(0x370, a2);
    v7 = WebKit::WebProcess::WebProcess(v74);
    WebKit::WebProcess::singleton(void)::process = v7;
  }

  v8 = WebKit::WebProcess::ensureGPUProcessConnection(v7);
  v10 = v8;
  while (1)
  {
    v11 = v8[3];
    if ((v11 & 1) == 0)
    {
      break;
    }

    v12 = v8[3];
    atomic_compare_exchange_strong_explicit(v8 + 3, &v12, (v11 + 2), memory_order_relaxed, memory_order_relaxed);
    if (v12 == v11)
    {
      goto LABEL_12;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(v8[3]);
LABEL_12:
  v13 = v84;
  v84 = v10;
  if (v13)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref(v13 + 3, v9);
  }

  WTF::ThreadSafeWeakPtr<WebKit::GPUProcessConnection,WTF::NoTaggingTraits<WebKit::GPUProcessConnection>>::operator=<WebKit::GPUProcessConnection>((a1 + 192), &v84);
  WTF::ThreadSafeWeakHashSet<WebKit::GPUProcessConnection::Client>::add<WebKit::GPUProcessConnection::Client>((v84 + 23), (a1 + 168));
  *(a1 + 184) = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  v14 = (a1 + 184);
  *(a1 + 288) = 0;
  v82[0] = 0;
  v83 = 0;
  WebCore::SharedMemory::allocate(4);
  if (v81)
  {
    atomic_fetch_add(v81, 1u);
  }

  v15 = *(a1 + 280);
  *(a1 + 280) = v81;
  if (v15)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v15);
  }

  if (v81)
  {
    WebCore::SharedMemory::createHandle();
    std::__optional_storage_base<WebCore::SharedMemoryHandle,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::SharedMemoryHandle,false>>(v82, &v85);
    if (v87 == 1)
    {
      WTF::MachSendRight::~MachSendRight(&v85);
    }
  }

  if ((v83 & 1) == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19E28B324);
  }

  if (!*v14)
  {
    __break(0xC471u);
    goto LABEL_86;
  }

  v16 = v84[4];
  v17 = *(a1 + 248);
  v18 = *(*(a1 + 56) + 28);
  (*(*a1 + 56))(a1);
  if ((v83 & 1) == 0)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v20 = v19;
  v21 = *(a1 + 252);
  while (1)
  {
    v22 = *(a1 + 176);
    if ((v22 & 1) == 0)
    {
      break;
    }

    v23 = *(a1 + 176);
    atomic_compare_exchange_strong_explicit((a1 + 176), &v23, v22 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v23 == v22)
    {
      goto LABEL_29;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 176));
LABEL_29:
  v24 = WTF::fastMalloc(0x10);
  *v24 = &unk_1F1127F90;
  *(v24 + 1) = a1;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
LABEL_87:
    __break(0xC471u);
    JUMPOUT(0x19E28B364);
  }

  v25 = v24;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v28 = IPC::Encoder::operator new(0x238, v27);
  *v28 = 927;
  *(v28 + 68) = 0;
  *(v28 + 70) = 0;
  *(v28 + 69) = 0;
  *(v28 + 2) = 0;
  *(v28 + 3) = 0;
  *(v28 + 1) = 0;
  IPC::Encoder::encodeHeader(v28);
  *&v80.mSampleRate = v28;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v28, *v14);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v28, (a1 + 240));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v28, v17);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v28, v18);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v28, v20);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v28, v21);
  IPC::ArgumentCoder<IPC::Semaphore,void>::encode(v28, (a1 + 232));
  IPC::ArgumentCoder<WebCore::SharedMemoryHandle,void>::encode(v28, v82);
  v85 = v25;
  v86 = IdentifierInternal;
  IPC::Connection::sendMessageWithAsyncReply(v16, &v80, &v85, 0, 0);
  v30 = v85;
  v85 = 0;
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  mSampleRate = v80.mSampleRate;
  v80.mSampleRate = 0.0;
  if (mSampleRate != 0.0)
  {
    IPC::Encoder::~Encoder(*&mSampleRate, v29);
    bmalloc::api::tzoneFree(v70, v71);
  }

  *(a1 + 224) = 0;
  memset(&v80, 0, sizeof(v80));
  WebCore::audioStreamBasicDescriptionForAudioBus();
  v32 = (*(a1 + 252) + *(a1 + 252));
  WebCore::CAAudioStreamDescription::CAAudioStreamDescription(&v85, &v80);
  WebKit::ProducerSharedCARingBuffer::allocate(&v85, v32, v77);
  WebCore::CAAudioStreamDescription::~CAAudioStreamDescription(&v85);
  if ((v79 & 1) == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19E28B384);
  }

  v33 = v77[0];
  v77[0] = 0;
  v75 = v33;
  WTF::MachSendRight::MachSendRight();
  *&v76[8] = v78;
  v34 = v75;
  v75 = 0;
  std::unique_ptr<WebKit::ConsumerSharedCARingBuffer>::reset[abi:sn200100]((a1 + 208), v34);
  if (!*(a1 + 184))
  {
    __break(0xC471u);
    JUMPOUT(0x19E28B3A4);
  }

  v36 = v84[4];
  v37 = IPC::Encoder::operator new(0x238, v35);
  *v37 = 926;
  *(v37 + 68) = 0;
  *(v37 + 70) = 0;
  *(v37 + 69) = 0;
  *(v37 + 2) = 0;
  *(v37 + 3) = 0;
  *(v37 + 1) = 0;
  IPC::Encoder::encodeHeader(v37);
  v85 = v37;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v37, *v14);
  IPC::ArgumentCoder<WebKit::ConsumerSharedCARingBufferHandle,void>::encode(v37, v76);
  IPC::Connection::sendMessageImpl(v36, &v85, 0, 0);
  v39 = v85;
  v85 = 0;
  if (v39)
  {
    IPC::Encoder::~Encoder(v39, v38);
    bmalloc::api::tzoneFree(v72, v73);
  }

  v40 = WebCore::WebAudioBufferList::operator new(0x48, v38);
  WebCore::CAAudioStreamDescription::CAAudioStreamDescription(&v85, &v80);
  MEMORY[0x19EB080E0](v40, &v85);
  WebCore::CAAudioStreamDescription::~CAAudioStreamDescription(&v85);
  std::unique_ptr<WebCore::WebAudioBufferList>::reset[abi:sn200100]((a1 + 216), v40);
  WebCore::WebAudioBufferList::setSampleCount(*(a1 + 216));
  if (!*(a1 + 184))
  {
    __break(0xC471u);
    JUMPOUT(0x19E28B3C4);
  }

  v41 = v84[4];
  v85 = (a1 + 184);
  v86 = a1 + 264;
  IPC::Connection::send<Messages::RemoteAudioDestinationManager::SetSceneIdentifier>(v41, &v85);
  while (1)
  {
    v42 = *(a1 + 176);
    if ((v42 & 1) == 0)
    {
      break;
    }

    v43 = *(a1 + 176);
    atomic_compare_exchange_strong_explicit((a1 + 176), &v43, v42 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v43 == v42)
    {
      goto LABEL_44;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 176));
LABEL_44:
  v44 = WTF::fastMalloc(0x18);
  *v44 = &unk_1F1127F68;
  v44[1] = a1;
  v44[2] = a1;
  v88 = v44;
  WebCore::createMaybeRealtimeAudioThread();
  v45 = v85;
  v85 = 0;
  v46 = *(a1 + 272);
  *(a1 + 272) = v45;
  if (v46)
  {
    WTF::ThreadSafeRefCounted<WTF::Thread,(WTF::DestructionThread)0>::deref(v46);
    v47 = v85;
    v85 = 0;
    if (v47)
    {
      WTF::ThreadSafeRefCounted<WTF::Thread,(WTF::DestructionThread)0>::deref(v47);
    }
  }

  v48 = v88;
  v88 = 0;
  if (v48)
  {
    (*(*v48 + 8))(v48);
  }

  WTF::MachSendRight::~MachSendRight(v76);
  std::unique_ptr<WebKit::ConsumerSharedCARingBuffer>::reset[abi:sn200100](&v75, 0);
  std::__optional_destruct_base<WebKit::ProducerSharedCARingBuffer::Pair,false>::~__optional_destruct_base[abi:sn200100](v77);
  v5 = v81;
  v81 = 0;
  if (v5)
  {
    v5 = WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v5);
  }

  if (v83 == 1)
  {
    WTF::MachSendRight::~MachSendRight(v82);
  }

  v6 = v84;
LABEL_54:
  if (*(a1 + 184))
  {
    v49 = v6[4];
    v84 = 0;
    v5 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref(v6 + 3, a2);
    if (v49)
    {
      while (1)
      {
        v50 = *v49;
        if ((*v49 & 1) == 0)
        {
          break;
        }

        v51 = *v49;
        atomic_compare_exchange_strong_explicit(v49, &v51, v50 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v51 == v50)
        {
          goto LABEL_60;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v49);
LABEL_60:
      if (!*(a1 + 184))
      {
        __break(0xC471u);
        JUMPOUT(0x19E28B2E4);
      }

      while (1)
      {
        v52 = *(a1 + 176);
        if ((v52 & 1) == 0)
        {
          break;
        }

        v53 = *(a1 + 176);
        atomic_compare_exchange_strong_explicit((a1 + 176), &v53, v52 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v53 == v52)
        {
          goto LABEL_71;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 176));
LABEL_71:
      v56 = *a2;
      *a2 = 0;
      v57 = WTF::fastMalloc(0x18);
      *v57 = &unk_1F1127FE0;
      *(v57 + 1) = a1;
      *(v57 + 2) = v56;
      if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E28B304);
      }

      v58 = v57;
      v59 = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      v61 = IPC::Encoder::operator new(0x238, v60);
      *v61 = 930;
      *(v61 + 68) = 0;
      *(v61 + 70) = 0;
      *(v61 + 69) = 0;
      *(v61 + 2) = 0;
      *(v61 + 3) = 0;
      *(v61 + 1) = 0;
      IPC::Encoder::encodeHeader(v61);
      *&v80.mSampleRate = v61;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v61, *(a1 + 184));
      v85 = v58;
      v86 = v59;
      IPC::Connection::sendMessageWithAsyncReply(v49, &v80, &v85, 0, 0);
      v63 = v85;
      v85 = 0;
      if (v63)
      {
        (*(*v63 + 8))(v63);
      }

      v64 = v80.mSampleRate;
      v80.mSampleRate = 0.0;
      if (v64 != 0.0)
      {
        IPC::Encoder::~Encoder(*&v64, v62);
        bmalloc::api::tzoneFree(v68, v69);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v49);
    }
  }

  else
  {
    v84 = 0;
    if (v6)
    {
      v5 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref(v6 + 3, a2);
    }
  }

  WTF::RunLoop::currentSingleton(v5);
  while (1)
  {
    v54 = *(a1 + 176);
    if ((v54 & 1) == 0)
    {
      break;
    }

    v55 = *(a1 + 176);
    atomic_compare_exchange_strong_explicit((a1 + 176), &v55, v54 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v55 == v54)
    {
      goto LABEL_78;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 176));
LABEL_78:
  v66 = *a2;
  *a2 = 0;
  v67 = WTF::fastMalloc(0x18);
  *v67 = &unk_1F1127FB8;
  *(v67 + 1) = a1;
  *(v67 + 2) = v66;
  v85 = v67;
  WTF::RunLoop::dispatch();
  result = v85;
  v85 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

atomic_ullong *WebKit::RemoteAudioDestinationProxy::stopRendering(atomic_ullong *a1, uint64_t *a2)
{
  v4 = a1[25];
  if (v4)
  {
    v4 = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v4, a1[24], v28);
    v6 = v28[0];
    if (v28[0])
    {
      if (a1[23])
      {
        v7 = *(v28[0] + 32);
        v28[0] = 0;
        v4 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v6 + 24), v5);
        if (v7)
        {
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
              goto LABEL_9;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v7);
LABEL_9:
          if (!a1[23])
          {
            goto LABEL_29;
          }

          while (1)
          {
            v10 = a1[22];
            if ((v10 & 1) == 0)
            {
              break;
            }

            v11 = a1[22];
            atomic_compare_exchange_strong_explicit(a1 + 22, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v11 == v10)
            {
              goto LABEL_22;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(a1[22]);
LABEL_22:
          v17 = *a2;
          *a2 = 0;
          v18 = WTF::fastMalloc(0x18);
          *v18 = &unk_1F1128030;
          v18[1] = a1;
          v18[2] = v17;
          if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
          {
LABEL_29:
            __break(0xC471u);
            JUMPOUT(0x19E28B66CLL);
          }

          v19 = v18;
          IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
          v22 = IPC::Encoder::operator new(0x238, v21);
          *v22 = 931;
          *(v22 + 68) = 0;
          *(v22 + 70) = 0;
          *(v22 + 69) = 0;
          *(v22 + 2) = 0;
          *(v22 + 3) = 0;
          *(v22 + 1) = 0;
          IPC::Encoder::encodeHeader(v22);
          v29 = v22;
          IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v22, a1[23]);
          v28[0] = v19;
          v28[1] = IdentifierInternal;
          IPC::Connection::sendMessageWithAsyncReply(v7, &v29, v28, 0, 0);
          v24 = v28[0];
          v28[0] = 0;
          if (v24)
          {
            (*(*v24 + 8))(v24);
          }

          v25 = v29;
          v29 = 0;
          if (v25)
          {
            IPC::Encoder::~Encoder(v25, v23);
            bmalloc::api::tzoneFree(v26, v27);
          }

          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v7);
        }
      }

      else
      {
        v28[0] = 0;
        v4 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v6 + 24), v5);
      }
    }
  }

  WTF::RunLoop::currentSingleton(v4);
  while (1)
  {
    v12 = a1[22];
    if ((v12 & 1) == 0)
    {
      break;
    }

    v13 = a1[22];
    atomic_compare_exchange_strong_explicit(a1 + 22, &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v13 == v12)
    {
      goto LABEL_19;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(a1[22]);
LABEL_19:
  v14 = *a2;
  *a2 = 0;
  v15 = WTF::fastMalloc(0x18);
  *v15 = &unk_1F1128008;
  v15[1] = a1;
  v15[2] = v14;
  v28[0] = v15;
  WTF::RunLoop::dispatch();
  result = v28[0];
  v28[0] = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t WebKit::RemoteAudioDestinationProxy::outputLatency(WebKit::RemoteAudioDestinationProxy *this)
{
  v1 = *(this + 32);
  v3 = (*(*this + 56))(this);
  v18 = v1;
  v19 = v3;
  v20 = 1;
  if (!v3)
  {
    v18 = v1 >> 63;
    if (v1 >= 0)
    {
      v4 = 5;
    }

    else
    {
      v4 = 9;
    }

    v19 = 1;
    v20 = v4;
  }

  WebKit::RemoteAudioSessionProxyManager::protectedSession(v2, &v14);
  v5 = (*(*v14 + 120))(v14);
  WebKit::RemoteAudioSessionProxyManager::protectedSession(v5, &v13);
  v6 = (*(*v13 + 72))(v13);
  v15 = v5;
  v16 = v6;
  v17 = 1;
  if (!v6)
  {
    if (v5 >= 0)
    {
      v7 = 5;
    }

    else
    {
      v7 = 9;
    }

    v15 = v5 >> 63;
    v16 = 1;
    v17 = v7;
  }

  v9 = WTF::MediaTime::operator+();
  v10 = v13;
  v13 = 0;
  if (v10)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::AudioSession,(WTF::DestructionThread)0>::deref((v10 + 8), v8);
  }

  v11 = v14;
  v14 = 0;
  if (v11)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::AudioSession,(WTF::DestructionThread)0>::deref((v11 + 8), v8);
  }

  return v9;
}

uint64_t WebKit::RemoteAudioDestinationProxy::setSceneIdentifier(WebKit::RemoteAudioDestinationProxy *this, WTF **a2, const WTF::StringImpl *a3)
{
  result = WTF::equal(*a2, *(this + 33), a3);
  if ((result & 1) == 0)
  {
    v6 = (this + 264);
    WTF::String::operator=(this + 33, a2);
    result = *(this + 25);
    if (result)
    {
      result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(this + 24), &v13);
      v8 = v13;
      if (v13)
      {
        v10 = *(this + 23);
        v9 = (this + 184);
        if (v10)
        {
          v11 = *(v13 + 32);
          v12[0] = v9;
          v12[1] = v6;
          result = IPC::Connection::send<Messages::RemoteAudioDestinationManager::SetSceneIdentifier>(v11, v12);
          v8 = v13;
          v13 = 0;
          if (!v8)
          {
            return result;
          }
        }

        else
        {
          v13 = 0;
        }

        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v8 + 24), v7);
      }
    }
  }

  return result;
}

atomic_uchar *WebKit::RemoteAudioDestinationProxy::gpuProcessConnectionDidClose(WebKit::RemoteAudioDestinationProxy *this, WebKit::GPUProcessConnection *a2)
{
  WebKit::RemoteAudioDestinationProxy::stopRenderingThread(this);
  result = *(this + 25);
  *(this + 25) = 0;
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::weakDeref(result, v3);
  }

  *(this + 23) = 0;
  *(this + 24) = 0;
  v5 = atomic_load(this + 160);
  if (v5)
  {
    v6 = WTF::fastMalloc(0x10);
    *v6 = &unk_1F1128058;
    v7 = v6;
    (*(*this + 88))(this, &v7);
    result = v7;
    v7 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t WebKit::RemoteAudioHardwareListener::operator new(WebKit::RemoteAudioHardwareListener *this, void *a2)
{
  if (this == 96 && WebKit::RemoteAudioHardwareListener::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteAudioHardwareListener::s_heapRef, a2);
  }

  else
  {
    return WebKit::RemoteAudioHardwareListener::operatorNewSlow(this);
  }
}

void *WebKit::RemoteAudioHardwareListener::RemoteAudioHardwareListener(void *a1)
{
  WebCore::AudioHardwareListener::AudioHardwareListener();
  IdentifierInternal = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  a1[8] = 0;
  a1[9] = 3;
  *a1 = &unk_1F1127648;
  a1[5] = IdentifierInternal;
  a1[6] = &unk_1F1127698;
  a1[7] = &unk_1F11276E0;
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v19 = WebKit::WebProcess::operator new(0x370, v3);
    v4 = WebKit::WebProcess::WebProcess(v19);
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  v5 = WebKit::WebProcess::ensureGPUProcessConnection(v4);
  a1[10] = v5;
  v6 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::controlBlock(v5 + 3);
  v7 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v6);
  a1[11] = v7;
  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v7, a1[10], &v20);
  WTF::ThreadSafeWeakHashSet<WebKit::GPUProcessConnection::Client>::add<WebKit::GPUProcessConnection::Client>(v20 + 184, (a1 + 6));
  v8 = a1[5];
  v22[0] = 56;
  v22[1] = v8;
  WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<IPC::ReceiverName,unsigned long long>,IPC::MessageReceiver&>((v20 + 48), v22, (a1 + 7), v21);
  v9 = *(v20 + 32);
  v10 = a1[5];
  v12 = IPC::Encoder::operator new(0x238, v11);
  *v12 = 38;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = 0;
  IPC::Encoder::encodeHeader(v12);
  v21[0] = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, v10);
  IPC::Connection::sendMessageImpl(v9, v21, 0, 0);
  v14 = v21[0];
  v21[0] = 0;
  if (v14)
  {
    IPC::Encoder::~Encoder(v14, v13);
    bmalloc::api::tzoneFree(v17, v18);
  }

  v15 = v20;
  v20 = 0;
  if (v15)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v15 + 24), v13);
  }

  return a1;
}

void WebKit::RemoteAudioHardwareListener::~RemoteAudioHardwareListener(WebKit::RemoteAudioHardwareListener *this, void *a2)
{
  v3 = *(this + 11);
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v3, *(this + 10), &v9);
    if (v9)
    {
      IPC::MessageReceiverMap::removeMessageReceiver((v9 + 40), (this + 56));
      v4 = *(v9 + 32);
      v7 = *(this + 5);
      v8 = &v7;
      IPC::Connection::send<Messages::GPUConnectionToWebProcess::ReleaseAudioHardwareListener>(v4, &v8, 0, 0, 0);
      v5 = v9;
      v9 = 0;
      if (v5)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v5 + 24), a2);
      }
    }

    v6 = *(this + 11);
    *(this + 11) = 0;
    if (v6)
    {
      WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v6, a2);
    }
  }

  *(this + 7) = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 8, a2);
}

{
  WebKit::RemoteAudioHardwareListener::~RemoteAudioHardwareListener(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

uint64_t IPC::Connection::send<Messages::GPUConnectionToWebProcess::ReleaseAudioHardwareListener>(uint64_t *a1, void **a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 47;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = a3;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v17 = v10;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, **a2);
  v12 = IPC::Connection::sendMessageImpl(a1, &v17, a4, a5);
  v13 = v17;
  v17 = 0;
  if (v13)
  {
    IPC::Encoder::~Encoder(v13, v11);
    bmalloc::api::tzoneFree(v15, v16);
  }

  return v12;
}

void non-virtual thunk toWebKit::RemoteAudioHardwareListener::~RemoteAudioHardwareListener(WebKit::RemoteAudioHardwareListener *this, void *a2)
{
  WebKit::RemoteAudioHardwareListener::~RemoteAudioHardwareListener((this - 48), a2);
}

{
  WebKit::RemoteAudioHardwareListener::~RemoteAudioHardwareListener((this - 56), a2);
}

{
  WebKit::RemoteAudioHardwareListener::~RemoteAudioHardwareListener((this - 48), a2);

  bmalloc::api::tzoneFree(v2, v3);
}

{
  WebKit::RemoteAudioHardwareListener::~RemoteAudioHardwareListener((this - 56), a2);

  bmalloc::api::tzoneFree(v2, v3);
}

atomic_uchar *WebKit::RemoteAudioHardwareListener::gpuProcessConnectionDidClose(WebKit::RemoteAudioHardwareListener *this, WebKit::GPUProcessConnection *a2)
{
  *(this + 4) = 2;
  (*(**(this + 1) + 24))(*(this + 1), a2);
  result = *(this + 11);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(this + 10), &v6);
    if (v6)
    {
      IPC::MessageReceiverMap::removeMessageReceiver((v6 + 40), (this + 56));
      result = *(this + 11);
      *(this + 11) = 0;
      if (result)
      {
        result = WTF::ThreadSafeWeakPtrControlBlock::weakDeref(result, v4);
      }

      *(this + 10) = 0;
      v5 = v6;
      v6 = 0;
      if (v5)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v5 + 24), v4);
      }
    }
  }

  return result;
}

WebKit::RemoteAudioSession *WebKit::RemoteAudioSession::create@<X0>(void *a1@<X1>, WebKit::RemoteAudioSession **a2@<X8>)
{
  v4 = WebKit::RemoteAudioSession::operator new(0xE8, a1);
  result = WebKit::RemoteAudioSession::RemoteAudioSession(v4);
  *a2 = result;
  return result;
}

uint64_t WebKit::RemoteAudioSession::operator new(WebKit::RemoteAudioSession *this, void *a2)
{
  if (WebKit::RemoteAudioSession::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteAudioSession::s_heapRef, a2);
  }

  else
  {
    return WebKit::RemoteAudioSession::operatorNewSlow(0xE8);
  }
}

WebKit::RemoteAudioSession *WebKit::RemoteAudioSession::RemoteAudioSession(WebKit::RemoteAudioSession *this)
{
  v2 = WebCore::AudioSession::AudioSession(this);
  *v2 = &unk_1F1127728;
  *(v2 + 56) = &unk_1F11278A8;
  *(v2 + 64) = 0;
  *(v2 + 72) = &unk_1F11278E0;
  *(v2 + 80) = &unk_1F1127928;
  *(v2 + 88) = 0;
  *(v2 + 120) = 0;
  *(v2 + 200) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 208) = 0;
  *(v2 + 216) = 0;
  *(v2 + 224) = 0;
  WebCore::AudioSession::addInterruptionObserver(v2, (v2 + 56));
  return this;
}

void WebKit::RemoteAudioSession::~RemoteAudioSession(WebKit::RemoteAudioSession *this)
{
  v2 = *(this + 27);
  if (v2)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v2, *(this + 26), &v11);
    if (v11)
    {
      IPC::MessageReceiverMap::removeMessageReceiver((v11 + 40), 0x3Au);
      v4 = v11;
      v11 = 0;
      if (v4)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v4 + 24), v3);
      }
    }
  }

  WebCore::AudioSession::removeInterruptionObserver(this, (this + 56));
  v6 = *(this + 27);
  *(this + 27) = 0;
  if (v6)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v6, v5);
  }

  if (*(this + 200) == 1)
  {
    v7 = *(this + 23);
    *(this + 23) = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v5);
    }

    v8 = *(this + 15);
    *(this + 15) = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v5);
    }
  }

  v9 = *(this + 12);
  if (v9)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v9, v5);
  }

  *(this + 10) = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 11, v5);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 8, v10);
  WebCore::AudioSession::~AudioSession(this);
}

{
  WebKit::RemoteAudioSession::~RemoteAudioSession(this);

  bmalloc::api::tzoneFree(v1, v2);
}

void non-virtual thunk toWebKit::RemoteAudioSession::~RemoteAudioSession(WebKit::RemoteAudioSession *this)
{
  WebKit::RemoteAudioSession::~RemoteAudioSession((this - 56));
}

{
  WebKit::RemoteAudioSession::~RemoteAudioSession((this - 72));
}

{
  WebKit::RemoteAudioSession::~RemoteAudioSession((this - 80));
}

{
  WebKit::RemoteAudioSession::~RemoteAudioSession((this - 56));

  bmalloc::api::tzoneFree(v1, v2);
}

{
  WebKit::RemoteAudioSession::~RemoteAudioSession((this - 72));

  bmalloc::api::tzoneFree(v1, v2);
}

{
  WebKit::RemoteAudioSession::~RemoteAudioSession((this - 80));

  bmalloc::api::tzoneFree(v1, v2);
}

unsigned int *WebKit::RemoteAudioSession::gpuProcessConnectionDidClose(WebKit::RemoteAudioSession *this, WebKit::GPUProcessConnection *a2)
{
  v4 = *(this + 27);
  *(this + 27) = 0;
  if (v4)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v4, a2);
  }

  *(this + 26) = 0;

  return IPC::MessageReceiverMap::removeMessageReceiver(a2 + 5, 0x3Au);
}

atomic_uchar *WebKit::RemoteAudioSession::ensureConnection(WebKit::RemoteAudioSession *this, void *a2)
{
  v6 = *(this + 27);
  if (!v6)
  {
    v46 = 0;
LABEL_5:
    {
      v8 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v40 = WebKit::WebProcess::operator new(0x370, a2);
      v8 = WebKit::WebProcess::WebProcess(v40);
      WebKit::WebProcess::singleton(void)::process = v8;
    }

    v9 = WebKit::WebProcess::ensureGPUProcessConnection(v8);
    v11 = v9;
    while (1)
    {
      v12 = v9[3];
      if ((v12 & 1) == 0)
      {
        break;
      }

      v13 = v9[3];
      atomic_compare_exchange_strong_explicit(v9 + 3, &v13, (v12 + 2), memory_order_relaxed, memory_order_relaxed);
      if (v13 == v12)
      {
        goto LABEL_12;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(v9[3]);
LABEL_12:
    v14 = v46;
    v46 = v11;
    if (v14)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref(v14 + 3, v10);
    }

    WTF::ThreadSafeWeakPtr<WebKit::GPUProcessConnection,WTF::NoTaggingTraits<WebKit::GPUProcessConnection>>::operator=<WebKit::GPUProcessConnection>(this + 26, &v46);
    WTF::ThreadSafeWeakHashSet<WebKit::GPUProcessConnection::Client>::add<WebKit::GPUProcessConnection::Client>((v46 + 23), (this + 72));
    LOBYTE(v42) = 58;
    WTF::HashMap<IPC::ReceiverName,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::IntHash<IPC::ReceiverName>,WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<IPC::ReceiverName const&,IPC::MessageReceiver&>(v46 + 5, &v42, this + 80, &v50);
    WebKit::RemoteAudioSession::ensureProtectedConnection(&v41);
    v15 = v41;
    IPC::Connection::createSyncMessageEncoder(0xF8F, 0, v49);
    v16 = IPC::Connection::sendSyncMessage(v15, v49[1], v49, 0, &v47, INFINITY);
    if (v48)
    {
      if (v48 != 1)
      {
        mpark::throw_bad_variant_access(v16);
      }

      v18 = v47;
      v19 = 1;
      goto LABEL_27;
    }

    v18 = v47;
    v47 = 0;
    if (*(v18 + 50) == 3194)
    {
      v20 = 11;
    }

    else
    {
      IPC::ArgumentCoder<std::tuple<WebKit::RemoteAudioSessionConfiguration>,void>::decode<IPC::Decoder>(v18, &v50);
      v21 = v54;
      if ((v54 & 1) == 0)
      {
        v17 = *v18;
        v38 = *(v18 + 8);
        *v18 = 0;
        *(v18 + 8) = 0;
        v39 = *(v18 + 24);
        if (v39)
        {
          if (v38)
          {
            (*(*v39 + 16))(v39, v17);
            v21 = v54;
          }
        }
      }

      if (v21)
      {
        v19 = 0;
        v2 = v50;
        v42 = *v51;
        v43 = *&v51[16];
        v44 = *&v51[32];
        v45 = *&v51[48];
        v4 = v52;
        v3 = v53;
LABEL_24:
        if (!v48)
        {
          v24 = v47;
          v47 = 0;
          if (v24)
          {
            IPC::Decoder::~Decoder(v24);
            bmalloc::api::tzoneFree(v32, v33);
          }
        }

LABEL_27:
        v25 = v49[0];
        v49[0] = 0;
        if (v25)
        {
          IPC::Encoder::~Encoder(v25, v17);
          bmalloc::api::tzoneFree(v30, v31);
          if (!v15)
          {
LABEL_30:
            if (v19)
            {
              v3 = 0;
              *v51 = 0;
              memset(&v51[8], 0, 42);
              v26 = v4;
              v27 = v2;
              v2 = 0;
              v4 = 0;
            }

            else
            {
              v26 = 0;
              v27 = 0;
              *v51 = v42;
              *&v51[16] = v43;
              *&v51[32] = v44;
              *&v51[48] = v45;
            }

            v50 = v2;
            v52 = v4;
            v53 = v3;
            std::optional<WebKit::RemoteAudioSessionConfiguration>::operator=[abi:sn200100]<WebKit::RemoteAudioSessionConfiguration,void>(this + 120, &v50);
            v28 = v52;
            if (v52 && atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v28, a2);
            }

            v29 = v50;
            if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v29, a2);
              if (!v19)
              {
                goto LABEL_39;
              }
            }

            else if (!v19)
            {
LABEL_39:
              if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v26, a2);
                if (v27)
                {
LABEL_42:
                  if (atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v27, a2);
                  }
                }
              }

              else if (v27)
              {
                goto LABEL_42;
              }

              if (v18)
              {
                IPC::Decoder::~Decoder(v18);
                bmalloc::api::tzoneFree(v36, v37);
              }
            }

            v7 = v46;
            goto LABEL_52;
          }
        }

        else if (!v15)
        {
          goto LABEL_30;
        }

        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v15);
        goto LABEL_30;
      }

      v20 = 14;
    }

    IPC::Decoder::~Decoder(v18);
    bmalloc::api::tzoneFree(v22, v23);
    v19 = 1;
    v18 = v20;
    goto LABEL_24;
  }

  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v6, *(this + 26), &v46);
  v7 = v46;
  if (!v46)
  {
    goto LABEL_5;
  }

LABEL_52:
  v34 = v7[4];
  v46 = 0;
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref(v7 + 3, a2);
  return v34;
}

atomic_ullong *WebKit::RemoteAudioSession::ensureProtectedConnection(WebKit::RemoteAudioSession *this, WebKit::RemoteAudioSession *a2)
{
  result = WebKit::RemoteAudioSession::ensureConnection(a2, a2);
  v4 = result;
  while (1)
  {
    v5 = *result;
    if ((*result & 1) == 0)
    {
      break;
    }

    v6 = *result;
    atomic_compare_exchange_strong_explicit(result, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v6 == v5)
    {
      goto LABEL_6;
    }
  }

  result = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*result);
LABEL_6:
  *this = v4;
  return result;
}

IPC::Encoder *WebKit::RemoteAudioSession::setCategory(IPC::Encoder *result, int a2, int a3, int a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  if (*(result + 112) != a2 || *(result + 113) != a3 || *(result + 114) != a4 || *(result + 115) == 1)
  {
    *(result + 112) = a2;
    *(result + 113) = a3;
    *(result + 114) = a4;
    *(result + 115) = 0;
    WebKit::RemoteAudioSession::ensureProtectedConnection(&v13, result);
    v7 = v13;
    v9 = IPC::Encoder::operator new(0x238, v8);
    *v9 = 942;
    *(v9 + 68) = 0;
    *(v9 + 70) = 0;
    *(v9 + 69) = 0;
    *(v9 + 2) = 0;
    *(v9 + 3) = 0;
    *(v9 + 1) = 0;
    IPC::Encoder::encodeHeader(v9);
    v14 = v9;
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v9, v6);
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v9, v5);
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v9, v4);
    IPC::Connection::sendMessageImpl(v7, &v14, 0, 0);
    result = v14;
    v14 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v10);
      result = bmalloc::api::tzoneFree(v11, v12);
      if (!v7)
      {
        return result;
      }
    }

    else if (!v7)
    {
      return result;
    }

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v7);
  }

  return result;
}

atomic_ullong *WebKit::RemoteAudioSession::setPreferredBufferSize(WebKit::RemoteAudioSession *this, void *a2)
{
  if ((*(this + 200) & 1) == 0)
  {
    result = WebKit::RemoteAudioSession::ensureConnection(this, a2);
    if ((*(this + 200) & 1) == 0)
    {
      __break(1u);
      return result;
    }
  }

  *(this + 20) = a2;
  WebKit::RemoteAudioSession::ensureProtectedConnection(&v11, this);
  v5 = v11;
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 944;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = 0;
  IPC::Encoder::encodeHeader(v7);
  v12 = v7;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, a2);
  IPC::Connection::sendMessageImpl(v5, &v12, 0, 0);
  result = v12;
  v12 = 0;
  if (!result)
  {
    if (!v5)
    {
      return result;
    }

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v5);
  }

  IPC::Encoder::~Encoder(result, v8);
  result = bmalloc::api::tzoneFree(v9, v10);
  if (v5)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v5);
  }

  return result;
}

uint64_t WebKit::RemoteAudioSession::tryToSetActiveInternal(WebKit::RemoteAudioSession *this, int a2)
{
  v3 = a2;
  if (a2 && (*(this + 224) & 1) != 0)
  {
    return 0;
  }

  WebKit::RemoteAudioSession::ensureProtectedConnection(&v25, this);
  v5 = v25;
  v24 = v3;
  IPC::Connection::createSyncMessageEncoder(0xFB1, 0, v28);
  IPC::Encoder::operator<<<BOOL &>(v28[0], &v24);
  v6 = IPC::Connection::sendSyncMessage(v5, v28[1], v28, 0, &v26, INFINITY);
  if (!v27)
  {
    v8 = v26;
    v26 = 0;
    if (*(v8 + 50) == 3194)
    {
      v10 = 11;
    }

    else
    {
      v13 = IPC::Decoder::decode<std::tuple<BOOL>>(v8);
      if (v13 >= 0x100u)
      {
        v2 = v13;
        v9 = 0;
        goto LABEL_11;
      }

      v10 = 14;
    }

    IPC::Decoder::~Decoder(v8);
    bmalloc::api::tzoneFree(v11, v12);
    v9 = 1;
    v8 = v10;
LABEL_11:
    if (!v27)
    {
      v14 = v26;
      v26 = 0;
      if (v14)
      {
        IPC::Decoder::~Decoder(v14);
        bmalloc::api::tzoneFree(v22, v23);
      }
    }

    goto LABEL_14;
  }

  if (v27 != 1)
  {
    goto LABEL_30;
  }

  v8 = v26;
  v9 = 1;
LABEL_14:
  v15 = v28[0];
  v28[0] = 0;
  if (!v15)
  {
    if (!v5)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  IPC::Encoder::~Encoder(v15, v7);
  bmalloc::api::tzoneFree(v18, v19);
  if (v5)
  {
LABEL_16:
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v5);
  }

LABEL_17:
  v16 = v2 & (v9 == 0);
  if (v16 == 1)
  {
    if (*(this + 200) & 1) != 0 || (v6 = WebKit::RemoteAudioSession::ensureConnection(this, v7), (*(this + 200)))
    {
      *(this + 177) = v3;
      goto LABEL_23;
    }

    __break(1u);
LABEL_30:
    mpark::throw_bad_variant_access(v6);
  }

  if (v9)
  {
    return 0;
  }

LABEL_23:
  if (v8)
  {
    IPC::Decoder::~Decoder(v8);
    bmalloc::api::tzoneFree(v20, v21);
  }

  return v16;
}

unsigned int *WebKit::RemoteAudioSession::addConfigurationChangeObserver(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 108);
  v5 = *(a1 + 104) + 1;
  *(a1 + 104) = v5;
  if (v5 > v4)
  {
    v6 = *(a1 + 96);
    if (v6)
    {
      v7 = *(v6 - 4);
      if (!v7)
      {
LABEL_15:
        v13 = *(v6 - 4);
        if (6 * *(v6 - 12) < v13 && v13 > 8)
        {
          WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::shrinkToBestSize((a1 + 96));
          v6 = *(a1 + 96);
          *(a1 + 104) = 0;
          if (!v6)
          {
            goto LABEL_22;
          }
        }

        else
        {
          *(a1 + 104) = 0;
        }

        LODWORD(v6) = *(v6 - 12);
        if (v6 > 0x7FFFFFFE)
        {
          v15 = -2;
          goto LABEL_24;
        }

LABEL_22:
        v15 = 2 * v6;
LABEL_24:
        *(a1 + 108) = v15;
        goto LABEL_25;
      }

      v8 = 0;
      v9 = 8 * v7;
      v10 = v6 - 8;
      do
      {
        v11 = *(v10 + v9);
        if ((v11 + 1) >= 2 && !*(v11 + 8))
        {
          *(v10 + v9) = 0;
          if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v11);
            WTF::fastFree(v11, a2);
          }

          *(v10 + v9) = -1;
          ++v8;
        }

        v9 -= 8;
      }

      while (v9);
      v6 = *(a1 + 96);
      if (v8)
      {
        v12 = *(v6 - 12) - v8;
        *(v6 - 16) += v8;
        *(v6 - 12) = v12;
        goto LABEL_15;
      }

      if (v6)
      {
        goto LABEL_15;
      }
    }

    LODWORD(v6) = 0;
    *(a1 + 104) = 0;
    goto LABEL_22;
  }

LABEL_25:
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 2, a2);
  v16 = *(a2 + 1);
  atomic_fetch_add(v16, 1u);
  v20 = v16;
  WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>((a1 + 96), &v20, &v19);
  result = v20;
  v20 = 0;
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, v17);
    }
  }

  return result;
}

unsigned int *WebKit::RemoteAudioSession::removeConfigurationChangeObserver(unsigned int *result, void *a2)
{
  v3 = result;
  v4 = result[27];
  v5 = result[26] + 1;
  result[26] = v5;
  if (v5 > v4)
  {
    v6 = *(result + 12);
    if (v6)
    {
      v7 = *(v6 - 4);
      if (!v7)
      {
LABEL_15:
        v12 = *(v6 - 4);
        if (6 * *(v6 - 12) < v12 && v12 > 8)
        {
          result = WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::shrinkToBestSize(v3 + 12);
          v6 = *(v3 + 12);
          v3[26] = 0;
          if (!v6)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v3[26] = 0;
        }

        LODWORD(v6) = *(v6 - 12);
        if (v6 > 0x7FFFFFFE)
        {
          v14 = -2;
          goto LABEL_24;
        }

LABEL_22:
        v14 = 2 * v6;
LABEL_24:
        v3[27] = v14;
        goto LABEL_25;
      }

      v8 = 0;
      v9 = 8 * v7;
      v10 = v6 - 8;
      do
      {
        result = *(v10 + v9);
        if (result + 1 >= 2 && !*(result + 1))
        {
          *(v10 + v9) = 0;
          if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, result);
            result = WTF::fastFree(result, a2);
          }

          *(v10 + v9) = -1;
          ++v8;
        }

        v9 -= 8;
      }

      while (v9);
      v6 = *(v3 + 12);
      if (v8)
      {
        v11 = *(v6 - 12) - v8;
        *(v6 - 16) += v8;
        *(v6 - 12) = v11;
        goto LABEL_15;
      }

      if (v6)
      {
        goto LABEL_15;
      }
    }

    LODWORD(v6) = 0;
    v3[26] = 0;
    goto LABEL_22;
  }

LABEL_25:
  v15 = a2[1];
  if (v15 && *(v15 + 8))
  {
    v18 = a2[1];
    result = WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::find<WTF::HashSetTranslator<WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,(WTF::ShouldValidateKey)1,WTF::DefaultWeakPtrImpl const*>(v3 + 12, &v18);
    v16 = *(v3 + 12);
    if (v16)
    {
      v17 = (v16 + 8 * *(v16 - 4));
      if (v17 == result)
      {
        return result;
      }
    }

    else
    {
      if (!result)
      {
        return result;
      }

      v17 = 0;
    }

    if (v17 != result)
    {
      return WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::remove(v3 + 12, result);
    }
  }

  return result;
}

IPC::Encoder *WebKit::RemoteAudioSession::setIsPlayingToBluetoothOverride(WebKit::RemoteAudioSession *a1, __int16 a2)
{
  v10 = a2;
  *(a1 + 115) = 1;
  WebKit::RemoteAudioSession::ensureProtectedConnection(&v9, a1);
  v2 = v9;
  v4 = IPC::Encoder::operator new(0x238, v3);
  *v4 = 943;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v11 = v4;
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(v4, &v10);
  IPC::Connection::sendMessageImpl(v2, &v11, 0, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    result = bmalloc::api::tzoneFree(v7, v8);
    if (!v2)
    {
      return result;
    }
  }

  else if (!v2)
  {
    return result;
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
}

void *WebKit::RemoteAudioSession::configurationChanged(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 200))
  {
    v3 = *(a2 + 56) != *(a1 + 176);
    v4 = *(a2 + 16) != *(a1 + 136);
    v5 = *(a2 + 8) != *(a1 + 128);
    v6 = *(a2 + 57) != *(a1 + 177);
  }

  else
  {
    v3 = 1;
    v4 = 1;
    v5 = 1;
    v6 = 1;
  }

  v41 = v3;
  v40 = v4;
  v39 = v5;
  std::optional<WebKit::RemoteAudioSessionConfiguration>::operator=[abi:sn200100]<WebKit::RemoteAudioSessionConfiguration,void>(a1 + 120, a2);
  result = WTF::fastMalloc(0x28);
  v8 = result;
  result[1] = &v41;
  result[2] = a1;
  result[3] = &v40;
  result[4] = &v39;
  v10 = (a1 + 96);
  v9 = *(a1 + 96);
  *result = &unk_1F1128080;
  v37 = a1;
  v38 = v6;
  if (v9 && (v11 = *(v9 - 12), v11))
  {
    if (v11 >> 29)
    {
      __break(0xC471u);
      return result;
    }

    v12 = WTF::fastMalloc((8 * v11));
  }

  else
  {
    v12 = 0;
  }

  v13 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin((a1 + 96));
  v15 = v13;
  v16 = v14;
  if (*v10)
  {
    v17 = *v10 + 8 * *(*v10 - 4);
  }

  else
  {
    v17 = 0;
  }

  if (v17 != v13)
  {
    v18 = 0;
    v19 = 1;
    do
    {
      v20 = v19;
      v21 = *(*v15 + 8);
      if (v21)
      {
        WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v21 + 8), *(*v15 + 8));
        v22 = *(v21 + 8);
        if (v22)
        {
          atomic_fetch_add(v22, 1u);
        }
      }

      else
      {
        v22 = 0;
      }

      *(v12 + v18) = v22;
      do
      {
        ++v15;
      }

      while (v15 != v16 && (*v15 + 1) <= 1);
      ++v18;
      v19 = v20 + 1;
    }

    while (v15 != v17);
    if (v18)
    {
      v23 = v12;
      do
      {
        v24 = *v23;
        if (*v23)
        {
          v14 = *(v24 + 8);
          if (v14)
          {
            v25 = *v10;
            if (*v10)
            {
              v26 = *(v25 - 8);
              v27 = (~(v24 << 32) + v24) ^ ((~(v24 << 32) + v24) >> 22);
              v28 = 9 * ((v27 + ~(v27 << 13)) ^ ((v27 + ~(v27 << 13)) >> 8));
              v29 = (v28 ^ (v28 >> 15)) + ~((v28 ^ (v28 >> 15)) << 27);
              v30 = v26 & ((v29 >> 31) ^ v29);
              for (i = 1; ; ++i)
              {
                v32 = *(v25 + 8 * v30);
                if (!v32)
                {
                  break;
                }

                if (v32 != -1 && v32 == v24)
                {
                  (*(*v8 + 16))(v8);
                  break;
                }

                v30 = (v30 + i) & v26;
              }
            }
          }
        }

        v23 = (v23 + 8);
      }

      while (v23 != (v12 + 8 * v18));
      v34 = 8 * v20;
      v35 = v12;
      do
      {
        v36 = *v35;
        *v35 = 0;
        if (v36 && atomic_fetch_add(v36, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v36);
          WTF::fastFree(v36, v14);
        }

        ++v35;
        v34 -= 8;
      }

      while (v34);
    }
  }

  if (v12)
  {
    WTF::fastFree(v12, v14);
  }

  result = (*(*v8 + 8))(v8);
  if (v38)
  {
    return WebCore::AudioSession::activeStateChanged(v37);
  }

  return result;
}

uint64_t std::optional<WebKit::RemoteAudioSessionConfiguration>::operator=[abi:sn200100]<WebKit::RemoteAudioSessionConfiguration,void>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 80);
  v5 = *a2;
  *a2 = 0;
  if (v4 == 1)
  {
    v6 = *a1;
    *a1 = v5;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }

    v7 = *(a2 + 1);
    v8 = *(a2 + 3);
    v9 = *(a2 + 5);
    *(a1 + 56) = *(a2 + 28);
    *(a1 + 40) = v9;
    *(a1 + 24) = v8;
    *(a1 + 8) = v7;
    v10 = a2[8];
    a2[8] = 0;
    v11 = *(a1 + 64);
    *(a1 + 64) = v10;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, a2);
    }

    *(a1 + 72) = *(a2 + 72);
  }

  else
  {
    *a1 = v5;
    v12 = *(a2 + 1);
    v13 = *(a2 + 3);
    v14 = *(a2 + 5);
    *(a1 + 56) = *(a2 + 28);
    *(a1 + 40) = v14;
    *(a1 + 24) = v13;
    *(a1 + 8) = v12;
    v15 = a2[8];
    a2[8] = 0;
    *(a1 + 64) = v15;
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 80) = 1;
  }

  return a1;
}

uint64_t WebKit::RemoteAudioSession::beginInterruptionRemote(WebKit::RemoteAudioSession *this)
{
  WebCore::AudioSession::removeInterruptionObserver(this, (this + 56));
  WebCore::AudioSession::beginInterruption(this);

  return WebCore::AudioSession::addInterruptionObserver(this, (this + 56));
}

uint64_t WebKit::RemoteAudioSession::endInterruptionRemote(uint64_t a1)
{
  WebCore::AudioSession::removeInterruptionObserver(a1, (a1 + 56));
  WebCore::AudioSession::endInterruption();

  return WebCore::AudioSession::addInterruptionObserver(a1, (a1 + 56));
}

IPC::Encoder *WebKit::RemoteAudioSession::beginAudioSessionInterruption(WebKit::RemoteAudioSession *this)
{
  WebKit::RemoteAudioSession::ensureProtectedConnection(&v8, this);
  v1 = v8;
  v3 = IPC::Encoder::operator new(0x238, v2);
  *v3 = 940;
  *(v3 + 68) = 0;
  *(v3 + 70) = 0;
  *(v3 + 69) = 0;
  *(v3 + 2) = 0;
  *(v3 + 3) = 0;
  *(v3 + 1) = 0;
  IPC::Encoder::encodeHeader(v3);
  v9 = v3;
  IPC::Connection::sendMessageImpl(v1, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v4);
    result = bmalloc::api::tzoneFree(v6, v7);
    if (!v1)
    {
      return result;
    }
  }

  else if (!v1)
  {
    return result;
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v1);
}

uint64_t WebKit::RemoteAudioSession::endAudioSessionInterruption(WebKit::RemoteAudioSession *a1, char a2)
{
  WebKit::RemoteAudioSession::ensureProtectedConnection(&v12, a1);
  v3 = v12;
  v5 = IPC::Encoder::operator new(0x238, v4);
  *v5 = 941;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = 0;
  IPC::Encoder::encodeHeader(v5);
  v13 = v5;
  v6 = IPC::Encoder::grow(v5, 1uLL, 1);
  if (!v7)
  {
    result = 1067;
    __break(0xC471u);
    return result;
  }

  *v6 = a2;
  IPC::Connection::sendMessageImpl(v3, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (!result)
  {
    if (!v3)
    {
      return result;
    }

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  IPC::Encoder::~Encoder(result, v8);
  result = bmalloc::api::tzoneFree(v10, v11);
  if (v3)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return result;
}

IPC::Encoder *WebKit::RemoteAudioSession::beginInterruptionForTesting(WebKit::RemoteAudioSession *this)
{
  *(this + 224) = 1;
  WebKit::RemoteAudioSession::ensureProtectedConnection(&v8, this);
  v1 = v8;
  v3 = IPC::Encoder::operator new(0x238, v2);
  *v3 = 947;
  *(v3 + 68) = 0;
  *(v3 + 70) = 0;
  *(v3 + 69) = 0;
  *(v3 + 2) = 0;
  *(v3 + 3) = 0;
  *(v3 + 1) = 0;
  IPC::Encoder::encodeHeader(v3);
  v9 = v3;
  IPC::Connection::sendMessageImpl(v1, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v4);
    result = bmalloc::api::tzoneFree(v6, v7);
    if (!v1)
    {
      return result;
    }
  }

  else if (!v1)
  {
    return result;
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v1);
}

atomic_ullong *WebKit::RemoteAudioSession::endInterruptionForTesting(atomic_ullong *this)
{
  if (*(this + 224) == 1)
  {
    v10[3] = v1;
    v10[4] = v2;
    *(this + 224) = 0;
    WebKit::RemoteAudioSession::ensureProtectedConnection(&v9, this);
    v3 = v9;
    v5 = IPC::Encoder::operator new(0x238, v4);
    *v5 = 948;
    *(v5 + 68) = 0;
    *(v5 + 70) = 0;
    *(v5 + 69) = 0;
    *(v5 + 2) = 0;
    *(v5 + 3) = 0;
    *(v5 + 1) = 0;
    IPC::Encoder::encodeHeader(v5);
    v10[0] = v5;
    IPC::Connection::sendMessageImpl(v3, v10, 0, 0);
    this = v10[0];
    v10[0] = 0;
    if (this)
    {
      IPC::Encoder::~Encoder(this, v6);
      this = bmalloc::api::tzoneFree(v7, v8);
      if (!v3)
      {
        return this;
      }
    }

    else if (!v3)
    {
      return this;
    }

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return this;
}

atomic_ullong *WebKit::RemoteAudioSession::setSceneIdentifier(WebKit::RemoteAudioSession *this, const WTF::String *a2)
{
  if ((*(this + 200) & 1) == 0)
  {
    result = WebKit::RemoteAudioSession::ensureConnection(this, a2);
    if ((*(this + 200) & 1) == 0)
    {
      __break(1u);
      return result;
    }
  }

  WTF::String::operator=(this + 23, a2);
  WebKit::RemoteAudioSession::ensureProtectedConnection(&v11, this);
  v5 = v11;
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 945;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = 0;
  IPC::Encoder::encodeHeader(v7);
  v12 = v7;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v7, a2);
  IPC::Connection::sendMessageImpl(v5, &v12, 0, 0);
  result = v12;
  v12 = 0;
  if (!result)
  {
    if (!v5)
    {
      return result;
    }

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v5);
  }

  IPC::Encoder::~Encoder(result, v8);
  result = bmalloc::api::tzoneFree(v9, v10);
  if (v5)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v5);
  }

  return result;
}

atomic_ullong *WebKit::RemoteAudioSession::setSoundStageSize(WebKit::RemoteAudioSession *this, void *a2)
{
  v2 = a2;
  if ((*(this + 200) & 1) == 0)
  {
    result = WebKit::RemoteAudioSession::ensureConnection(this, a2);
    if ((*(this + 200) & 1) == 0)
    {
      __break(1u);
      return result;
    }
  }

  *(this + 192) = v2;
  WebKit::RemoteAudioSession::ensureProtectedConnection(&v11, this);
  v5 = v11;
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 946;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = 0;
  IPC::Encoder::encodeHeader(v7);
  v12 = v7;
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v7, v2);
  IPC::Connection::sendMessageImpl(v5, &v12, 0, 0);
  result = v12;
  v12 = 0;
  if (!result)
  {
    if (!v5)
    {
      return result;
    }

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v5);
  }

  IPC::Encoder::~Encoder(result, v8);
  result = bmalloc::api::tzoneFree(v9, v10);
  if (v5)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v5);
  }

  return result;
}

void WebKit::ImageBufferShareableMappedIOSurfaceBackend::~ImageBufferShareableMappedIOSurfaceBackend(WebKit::ImageBufferShareableMappedIOSurfaceBackend *this)
{
  WebCore::ImageBufferIOSurfaceBackend::~ImageBufferIOSurfaceBackend(this);

  bmalloc::api::tzoneFree(v1, v2);
}

void non-virtual thunk toWebKit::ImageBufferShareableMappedIOSurfaceBackend::~ImageBufferShareableMappedIOSurfaceBackend(WebKit::ImageBufferShareableMappedIOSurfaceBackend *this)
{
  WebCore::ImageBufferIOSurfaceBackend::~ImageBufferIOSurfaceBackend((this - 88));
}

{
  WebCore::ImageBufferIOSurfaceBackend::~ImageBufferIOSurfaceBackend((this - 88));

  bmalloc::api::tzoneFree(v1, v2);
}

void WebKit::AudioTrackPrivateRemote::~AudioTrackPrivateRemote(WebKit::AudioTrackPrivateRemote *this, WTF::StringImpl *a2)
{
  WebKit::AudioTrackPrivateRemote::~AudioTrackPrivateRemote(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

{
  v3 = *(this + 17);
  *(this + 17) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 16);
  *(this + 16) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 13);
  *(this + 13) = 0;
  if (v5)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v5, a2);
  }

  *this = &unk_1F1127AB0;
  v6 = *(this + 11);
  *(this + 11) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 8);
  *(this + 8) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  WebCore::TrackPrivateBase::~TrackPrivateBase(this, a2);
}

uint64_t WebKit::AudioTrackPrivateRemote::label@<X0>(WTF::StringImpl **a1@<X8>)
{
  result = WTF::String::isolatedCopy();
  v4 = v6;
  if (v6)
  {
    if ((*(v6 + 16) & 0x10) == 0)
    {
      WTF::AtomStringImpl::addSlowCase();
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v5);
      }

      v4 = v7;
    }

    result = 0;
    *a1 = v4;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

uint64_t WebKit::AudioTrackPrivateRemote::language@<X0>(WTF::StringImpl **a1@<X8>)
{
  result = WTF::String::isolatedCopy();
  v4 = v6;
  if (v6)
  {
    if ((*(v6 + 16) & 0x10) == 0)
    {
      WTF::AtomStringImpl::addSlowCase();
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v5);
      }

      v4 = v7;
    }

    result = 0;
    *a1 = v4;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

uint64_t WebKit::MediaPlayerPrivateRemote::ref(uint64_t this)
{
  while (1)
  {
    v1 = *(this + 48);
    if ((v1 & 1) == 0)
    {
      break;
    }

    v2 = *(this + 48);
    atomic_compare_exchange_strong_explicit((this + 48), &v2, v1 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v1)
    {
      return this;
    }
  }

  return WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 48));
}

uint64_t WebKit::RemoteAudioDestinationProxy::ref(uint64_t this)
{
  while (1)
  {
    v1 = *(this + 176);
    if ((v1 & 1) == 0)
    {
      break;
    }

    v2 = *(this + 176);
    atomic_compare_exchange_strong_explicit((this + 176), &v2, v1 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v1)
    {
      return this;
    }
  }

  return WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 176));
}

uint64_t non-virtual thunk toWebKit::RemoteAudioDestinationProxy::ref(uint64_t this)
{
  while (1)
  {
    v1 = *(this + 8);
    if ((v1 & 1) == 0)
    {
      break;
    }

    v2 = *(this + 8);
    atomic_compare_exchange_strong_explicit((this + 8), &v2, v1 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v1)
    {
      return this;
    }
  }

  return WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 8));
}

uint64_t WebKit::RemoteAudioHardwareListener::ref(uint64_t this)
{
  while (1)
  {
    v1 = *(this + 72);
    if ((v1 & 1) == 0)
    {
      break;
    }

    v2 = *(this + 72);
    atomic_compare_exchange_strong_explicit((this + 72), &v2, v1 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v1)
    {
      return this;
    }
  }

  return WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 72));
}

uint64_t non-virtual thunk toWebKit::RemoteAudioHardwareListener::ref(uint64_t this)
{
  while (1)
  {
    v1 = *(this + 24);
    if ((v1 & 1) == 0)
    {
      break;
    }

    v2 = *(this + 24);
    atomic_compare_exchange_strong_explicit((this + 24), &v2, v1 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v1)
    {
      return this;
    }
  }

  return WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 24));
}

{
  while (1)
  {
    v1 = *(this + 16);
    if ((v1 & 1) == 0)
    {
      break;
    }

    v2 = *(this + 16);
    atomic_compare_exchange_strong_explicit((this + 16), &v2, v1 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v1)
    {
      return this;
    }
  }

  return WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 16));
}

atomic_ullong *non-virtual thunk toWebKit::RemoteAudioHardwareListener::deref(atomic_ullong *this, void *a2)
{
  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteAudioHardwareListener,(WTF::DestructionThread)0>::deref(this + 3, a2);
}

{
  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteAudioHardwareListener,(WTF::DestructionThread)0>::deref(this + 2, a2);
}

atomic_uchar *WebKit::RemoteAudioSession::routingContextUID@<X0>(atomic_uchar *this@<X0>, void *a2@<X1>, atomic_uint **a3@<X8>)
{
  v3 = this;
  if (this[200] & 1) != 0 || (this = WebKit::RemoteAudioSession::ensureConnection(this, a2), (v3[200]))
  {
    v5 = *(v3 + 15);
    if (v5)
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    }

    *a3 = v5;
  }

  else
  {
    __break(1u);
  }

  return this;
}

atomic_uchar *WebKit::RemoteAudioSession::sampleRate(atomic_uchar *this, void *a2)
{
  v2 = this;
  if ((this[200] & 1) == 0)
  {
    this = WebKit::RemoteAudioSession::ensureConnection(this, a2);
    if ((v2[200] & 1) == 0)
    {
      __break(1u);
    }
  }

  return this;
}

atomic_uchar *WebKit::RemoteAudioSession::bufferSize(WebKit::RemoteAudioSession *this, void *a2)
{
  if (*(this + 200))
  {
    return *(this + 17);
  }

  result = WebKit::RemoteAudioSession::ensureConnection(this, a2);
  if (*(this + 200))
  {
    return *(this + 17);
  }

  __break(1u);
  return result;
}

atomic_uchar *WebKit::RemoteAudioSession::numberOfOutputChannels(WebKit::RemoteAudioSession *this, void *a2)
{
  if (*(this + 200))
  {
    return *(this + 18);
  }

  result = WebKit::RemoteAudioSession::ensureConnection(this, a2);
  if (*(this + 200))
  {
    return *(this + 18);
  }

  __break(1u);
  return result;
}

atomic_uchar *WebKit::RemoteAudioSession::maximumNumberOfOutputChannels(WebKit::RemoteAudioSession *this, void *a2)
{
  if (*(this + 200))
  {
    return *(this + 19);
  }

  result = WebKit::RemoteAudioSession::ensureConnection(this, a2);
  if (*(this + 200))
  {
    return *(this + 19);
  }

  __break(1u);
  return result;
}

atomic_uchar *WebKit::RemoteAudioSession::preferredBufferSize(WebKit::RemoteAudioSession *this, void *a2)
{
  if (*(this + 200))
  {
    return *(this + 20);
  }

  result = WebKit::RemoteAudioSession::ensureConnection(this, a2);
  if (*(this + 200))
  {
    return *(this + 20);
  }

  __break(1u);
  return result;
}

atomic_uchar *WebKit::RemoteAudioSession::outputLatency(WebKit::RemoteAudioSession *this, void *a2)
{
  if (*(this + 200))
  {
    return *(this + 21);
  }

  result = WebKit::RemoteAudioSession::ensureConnection(this, a2);
  if (*(this + 200))
  {
    return *(this + 21);
  }

  __break(1u);
  return result;
}

atomic_uchar *WebKit::RemoteAudioSession::isMuted(WebKit::RemoteAudioSession *this, void *a2)
{
  if (*(this + 200))
  {
    return *(this + 176);
  }

  result = WebKit::RemoteAudioSession::ensureConnection(this, a2);
  if (*(this + 200))
  {
    return *(this + 176);
  }

  __break(1u);
  return result;
}

atomic_uchar *WebKit::RemoteAudioSession::isActive(WebKit::RemoteAudioSession *this, void *a2)
{
  if (*(this + 200))
  {
    return *(this + 177);
  }

  result = WebKit::RemoteAudioSession::ensureConnection(this, a2);
  if (*(this + 200))
  {
    return *(this + 177);
  }

  __break(1u);
  return result;
}

unsigned int *WebCore::AudioSession::setRoutingArbitrationClient(uint64_t a1, atomic_uint **a2)
{
  v3 = *a2;
  if (*a2)
  {
    atomic_fetch_add(v3, 1u);
  }

  result = *(a1 + 40);
  *(a1 + 40) = v3;
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, a2);
    }
  }

  return result;
}

atomic_uchar *WebKit::RemoteAudioSession::sceneIdentifier(WebKit::RemoteAudioSession *this, void *a2)
{
  if (*(this + 200))
  {
    return this + 184;
  }

  result = WebKit::RemoteAudioSession::ensureConnection(this, a2);
  if (*(this + 200))
  {
    return this + 184;
  }

  __break(1u);
  return result;
}

atomic_uchar *WebKit::RemoteAudioSession::soundStageSize(WebKit::RemoteAudioSession *this, void *a2)
{
  if (*(this + 200))
  {
    return *(this + 192);
  }

  result = WebKit::RemoteAudioSession::ensureConnection(this, a2);
  if (*(this + 200))
  {
    return *(this + 192);
  }

  __break(1u);
  return result;
}

uint64_t WebKit::RemoteAudioSession::ref(uint64_t this)
{
  while (1)
  {
    v1 = *(this + 8);
    if ((v1 & 1) == 0)
    {
      break;
    }

    v2 = *(this + 8);
    atomic_compare_exchange_strong_explicit((this + 8), &v2, v1 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v1)
    {
      return this;
    }
  }

  return WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 8));
}

uint64_t non-virtual thunk toWebKit::RemoteAudioSession::ref(uint64_t this)
{
  while (1)
  {
    v1 = *(this - 64);
    if ((v1 & 1) == 0)
    {
      break;
    }

    v2 = *(this - 64);
    atomic_compare_exchange_strong_explicit((this - 64), &v2, v1 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v1)
    {
      return this;
    }
  }

  return WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this - 64));
}

{
  while (1)
  {
    v1 = *(this - 72);
    if ((v1 & 1) == 0)
    {
      break;
    }

    v2 = *(this - 72);
    atomic_compare_exchange_strong_explicit((this - 72), &v2, v1 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v1)
    {
      return this;
    }
  }

  return WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this - 72));
}

atomic_uchar **non-virtual thunk toWebKit::RemoteAudioSession::deref(atomic_uchar **this, void *a2)
{
  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::AudioSession,(WTF::DestructionThread)0>::deref(this - 8, a2);
}

{
  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::AudioSession,(WTF::DestructionThread)0>::deref(this - 9, a2);
}

__IOSurface **WebCore::IOSurface::Locker<(WebCore::IOSurface::AccessMode)0>::~Locker(__IOSurface **a1)
{
  v2 = *a1;
  if (v2)
  {
    IOSurfaceUnlock(v2, 0, 0);
    v3 = *a1;
    *a1 = 0;
    if (v3)
    {
      CFRelease(v3);
    }
  }

  return a1;
}

uint64_t WebCore::GraphicsContextCG::operator new(WebCore::GraphicsContextCG *this, void *a2)
{
  if (*MEMORY[0x1E69E25D0])
  {
    return bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E25D0], a2);
  }

  else
  {
    return MEMORY[0x1EEE56B20](696);
  }
}

void WebCore::AudioTrackPrivate::~AudioTrackPrivate(WebCore::AudioTrackPrivate *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1127AB0;
  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  WebCore::TrackPrivateBase::~TrackPrivateBase(this, a2);
}

{
  *this = &unk_1F1127AB0;
  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  WebCore::TrackPrivateBase::~TrackPrivateBase(this, a2);

  bmalloc::api::tzoneFree(v5, v6);
}

void WebCore::TrackPrivateBase::label(atomic_uint **a1@<X8>)
{
  v2 = *MEMORY[0x1E696EB98];
  if (*MEMORY[0x1E696EB98])
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a1 = v2;
}

void WebCore::TrackPrivateBase::language(atomic_uint **a1@<X8>)
{
  v2 = *MEMORY[0x1E696EB98];
  if (*MEMORY[0x1E696EB98])
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a1 = v2;
}

void WebCore::TrackPrivateBase::~TrackPrivateBase(WebCore::TrackPrivateBase *this, void *a2)
{
  *this = MEMORY[0x1E69E2E50] + 16;
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  WTF::Vector<std::tuple<WTF::RefPtr<WebCore::TrackPrivateBase::Shared<WTF::Function<void ()(WTF::Function<void ()(void)> &&)>>,WTF::RawPtrTraits<WTF::Function<void ()(WTF::Function<void ()(void)> &&)>>,WTF::DefaultRefDerefTraits<WTF::Function<void ()(WTF::Function<void ()(void)> &&)>>>,WTF::WeakPtr<WebCore::TrackPrivateBaseClient,WTF::DefaultWeakPtrImpl,WebCore::TrackPrivateBase::Shared<WTF::Function<void ()(WTF::Function<void ()(void)> &&)>><WebCore::TrackPrivateBaseClient>>,BOOL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 6, a2);
}

unsigned int *WTF::Vector<std::tuple<WTF::RefPtr<WebCore::TrackPrivateBase::Shared<WTF::Function<void ()(WTF::Function<void ()(void)> &&)>>,WTF::RawPtrTraits<WTF::Function<void ()(WTF::Function<void ()(void)> &&)>>,WTF::DefaultRefDerefTraits<WTF::Function<void ()(WTF::Function<void ()(void)> &&)>>>,WTF::WeakPtr<WebCore::TrackPrivateBaseClient,WTF::DefaultWeakPtrImpl,WebCore::TrackPrivateBase::Shared<WTF::Function<void ()(WTF::Function<void ()(void)> &&)>><WebCore::TrackPrivateBaseClient>>,BOOL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(unsigned int *a1, void *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = 24 * v3;
    v5 = (*a1 + 8);
    do
    {
      v6 = *v5;
      *v5 = 0;
      if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v6);
        WTF::fastFree(v6, a2);
      }

      v7 = *(v5 - 1);
      *(v5 - 1) = 0;
      if (v7)
      {
        WTF::ThreadSafeRefCounted<WebCore::TrackPrivateBase::Shared<WTF::Function<void ()(WTF::Function<void ()(void)> &&)>>,(WTF::DestructionThread)0>::deref(v7, a2);
      }

      v5 += 3;
      v4 -= 24;
    }

    while (v4);
  }

  v8 = *a1;
  if (*a1)
  {
    *a1 = 0;
    a1[2] = 0;
    WTF::fastFree(v8, a2);
  }

  return a1;
}

uint64_t WTF::ThreadSafeRefCounted<WebCore::TrackPrivateBase::Shared<WTF::Function<void ()(WTF::Function<void ()(void)> &&)>>,(WTF::DestructionThread)0>::deref(uint64_t this, void *a2)
{
  add = atomic_fetch_add(this, 0xFFFFFFFF);
  if (add == 1)
  {
    v4 = this;
    atomic_store(add, this);
    v5 = *(this + 8);
    *(v4 + 1) = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    return WTF::fastFree(v4, a2);
  }

  return this;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN7WebCore17AudioTrackPrivate10setEnabledEbEUlRT_E_vJRNS2_22TrackPrivateBaseClientEEE4callES8_(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 16))(a2) == 1)
  {
    v4 = *(a1 + 8);
    v5 = *(*a2 + 56);

    return v5(a2, v4);
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN7WebCore17AudioTrackPrivate16setConfigurationEONS2_31PlatformAudioTrackConfigurationEEUlRT_E_vJRNS2_22TrackPrivateBaseClientEEED1Ev(void *a1, WTF::StringImpl *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1127B80;
  a1[1] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN7WebCore17AudioTrackPrivate16setConfigurationEONS2_31PlatformAudioTrackConfigurationEEUlRT_E_vJRNS2_22TrackPrivateBaseClientEEED0Ev(WTF *this, WTF::StringImpl *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1127B80;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN7WebCore17AudioTrackPrivate16setConfigurationEONS2_31PlatformAudioTrackConfigurationEEUlRT_E_vJRNS2_22TrackPrivateBaseClientEEE4callESA_(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 16))(a2) == 1)
  {
    v4 = *(*a2 + 64);

    return v4(a2, a1 + 8);
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
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
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::PlatformMediaResource,(WTF::DestructionThread)0>::deref((v5 + 8), a2);
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t std::__call_once_proxy[abi:sn200100]<std::tuple<WebCore::PlatformStrategies::mediaStrategy(void)::{lambda(void)#1} &&>>(void ***a1)
{
  v1 = ***a1;
  result = (*(*v1 + 32))(v1);
  v1[4] = result;
  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseIvN7WebCore18PlatformMediaErrorELj0EE11whenSettledINS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvS4_EEEEEEEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlSC_E_vJSC_EED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11280A8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseIvN7WebCore18PlatformMediaErrorELj0EE11whenSettledINS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvS4_EEEEEEEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlSC_E_vJSC_EED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11280A8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseIvN7WebCore18PlatformMediaErrorELj0EE11whenSettledINS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvS4_EEEEEEEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlSC_E_vJSC_EE4callESC_(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WTF::ThreadSafeWeakHashSet<WebKit::GPUProcessConnection::Client>::add<WebKit::GPUProcessConnection::Client>(uint64_t a1, WTF::ThreadSafeWeakPtrControlBlock *a2)
{
  v4 = (*(*a2 + 32))(a2);
  if (WTF::ThreadSafeWeakPtrControlBlock::objectHasStartedDeletion(v4))
  {
    result = 97;
    __break(0xC471u);
    return result;
  }

  v5 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 16), &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    MEMORY[0x19EB01E30](a1 + 16);
  }

  v6 = (*(*a2 + 32))(a2);
  v7 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v6);
  v8 = *(a1 + 12);
  v9 = *(a1 + 8) + 1;
  *(a1 + 8) = v9;
  if (v9 > v8)
  {
    v10 = *a1;
    if (*a1)
    {
      v11 = *(v10 - 4);
      if (!v11)
      {
LABEL_18:
        v17 = *(v10 - 4);
        if (6 * *(v10 - 12) < v17 && v17 > 8)
        {
          WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>>,WTF::FastMalloc>::shrinkToBestSize(a1);
          v10 = *a1;
          *(a1 + 8) = 0;
          if (!v10)
          {
            goto LABEL_26;
          }
        }

        else
        {
          *(a1 + 8) = 0;
        }

        LODWORD(v10) = *(v10 - 12);
        if (v10 > 0x7FFFFFFE)
        {
          v19 = -2;
          goto LABEL_28;
        }

LABEL_26:
        v19 = 2 * v10;
LABEL_28:
        *(a1 + 12) = v19;
        goto LABEL_29;
      }

      v12 = 0;
      v13 = (v10 + 16 * v11 - 16);
      do
      {
        if (*v13 != -1 && *v13 != 0 && WTF::ThreadSafeWeakPtrControlBlock::objectHasStartedDeletion(*v13))
        {
          v15 = *v13;
          *v13 = 0;
          if (v15)
          {
            WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v15, v14);
          }

          *v13 = -1;
          ++v12;
        }

        v13 -= 2;
        --v11;
      }

      while (v11);
      v10 = *a1;
      if (v12)
      {
        v16 = *(v10 - 12) - v12;
        *(v10 - 16) += v12;
        *(v10 - 12) = v16;
        goto LABEL_18;
      }

      if (v10)
      {
        goto LABEL_18;
      }
    }

    LODWORD(v10) = 0;
    *(a1 + 8) = 0;
    goto LABEL_26;
  }

LABEL_29:
  v24[0] = v7;
  v24[1] = a2;
  WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)0>(a1, v24, v23);
  result = v24[0];
  v24[0] = 0;
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::weakDeref(result, v20);
  }

  v22 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 16), &v22, 0, memory_order_release, memory_order_relaxed);
  if (v22 != 1)
  {
    return WTF::Lock::unlockSlow((a1 + 16));
  }

  return result;
}

unint64_t WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)0>@<X0>(uint64_t *a1@<X0>, atomic_uchar **a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  if (*a1 || (WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>>,WTF::FastMalloc>::expand(a1, 0), (v6 = *a1) != 0))
  {
    v7 = *(v6 - 8);
  }

  else
  {
    v7 = 0;
  }

  result = WTF::PairHash<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>::hash(a2);
  v10 = result & v7;
  v11 = (v6 + 16 * (result & v7));
  v12 = *v11;
  v13 = v11[1];
  v14 = *a2;
  if (*v11 != 0)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      if (v12 == v14 && v13 == a2[1])
      {
        v22 = *a1;
        if (*a1)
        {
          v23 = *(v22 - 4);
        }

        else
        {
          v23 = 0;
        }

        v25 = 0;
        v24 = v22 + 16 * v23;
        goto LABEL_29;
      }

      if (v12 == -1)
      {
        v15 = v11;
      }

      v10 = (v10 + v16) & v7;
      v11 = (v6 + 16 * v10);
      v12 = *v11;
      v13 = v11[1];
      ++v16;
    }

    while (*v11 != 0);
    if (v15)
    {
      *v15 = 0;
      v15[1] = 0;
      --*(*a1 - 16);
      v14 = *a2;
      v11 = v15;
    }
  }

  *a2 = 0;
  v17 = a2[1];
  result = *v11;
  *v11 = v14;
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::weakDeref(result, v9);
  }

  v11[1] = v17;
  v18 = *a1;
  if (*a1)
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
    if (v21 <= 2 * v20)
    {
LABEL_20:
      result = WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>>,WTF::FastMalloc>::expand(a1, v11);
      v11 = result;
      v18 = *a1;
      if (*a1)
      {
        v21 = *(v18 - 4);
      }

      else
      {
        v21 = 0;
      }
    }
  }

  else if (3 * v21 <= 4 * v20)
  {
    goto LABEL_20;
  }

  v24 = v18 + 16 * v21;
  v25 = 1;
LABEL_29:
  *a3 = v11;
  *(a3 + 8) = v24;
  *(a3 + 16) = v25;
  return result;
}

atomic_uchar **WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>>,WTF::FastMalloc>::expand(uint64_t *a1, atomic_uchar **a2)
{
  v3 = *a1;
  if (*a1 && (v4 = *(v3 - 4)) != 0)
  {
    v5 = v4 << (6 * *(v3 - 12) >= (2 * v4));
  }

  else
  {
    v5 = 8;
  }

  return WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

atomic_ullong *WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteAudioDestinationProxy,(WTF::DestructionThread)2>::deref(atomic_ullong *result)
{
  v1 = result;
  while (1)
  {
    v2 = *result;
    if ((*result & 1) == 0)
    {
      break;
    }

    v3 = *result;
    atomic_compare_exchange_strong_explicit(result, &v3, v2 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v3 == v2)
    {
      if (v2 != 3)
      {
        return result;
      }

      v4 = WTF::fastMalloc(0x10);
      *v4 = &unk_1F1127BA8;
      v4[1] = v1;
      goto LABEL_13;
    }
  }

  v5 = 0;
  v6 = *result;
  atomic_compare_exchange_strong_explicit(*result, &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    result = MEMORY[0x19EB01E30](v6);
  }

  v7 = *(v6 + 8) - 1;
  *(v6 + 8) = v7;
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(v6 + 24);
    ++*(v6 + 16);
    *(v6 + 24) = 0;
  }

  v9 = 1;
  atomic_compare_exchange_strong_explicit(v6, &v9, 0, memory_order_release, memory_order_relaxed);
  if (v9 == 1)
  {
    if (v7)
    {
      return result;
    }
  }

  else
  {
    v10 = v7;
    result = WTF::Lock::unlockSlow(v6);
    if (v10)
    {
      return result;
    }
  }

  v4 = WTF::fastMalloc(0x18);
  *v4 = &unk_1F1127BD0;
  v4[1] = v6;
  v4[2] = v8;
LABEL_13:
  v11 = v4;
  WTF::ensureOnMainRunLoop();
  result = v11;
  if (v11)
  {
    return (*(*v11 + 8))(v11);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<void WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::RemoteAudioDestinationProxy,(WTF::DestructionThread)2>(void)::{lambda(void)#1},void>::call(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  result = *(a1 + 16);
  if (result)
  {
    result = (*(*result + 24))(result);
  }

  v4 = 0;
  v5 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    result = MEMORY[0x19EB01E30](v3);
  }

  v6 = *(v3 + 16) - 1;
  *(v3 + 16) = v6;
  atomic_compare_exchange_strong_explicit(v3, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 == 1)
  {
    if (v6)
    {
      return result;
    }
  }

  else
  {
    v7 = v6;
    result = WTF::Lock::unlockSlow(v3);
    if (v7)
    {
      return result;
    }
  }

  return WTF::fastFree(v3, a2);
}

unint64_t WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteAudioDestinationProxy,(WTF::DestructionThread)2>::controlBlock(atomic_ullong *a1)
{
  result = *a1;
  if (result)
  {
    result = WTF::fastMalloc(0x20);
    *result = 0;
    *(result + 8) = xmmword_19E7014F0;
    *(result + 24) = a1 - 22;
    while (1)
    {
      v4 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      *(result + 8) = v4 >> 1;
      v5 = v4;
      atomic_compare_exchange_strong_explicit(a1, &v5, result, memory_order_release, memory_order_relaxed);
      if (v5 == v4)
      {
        return result;
      }
    }

    WTF::fastFree(result, v3);
    return *a1;
  }

  return result;
}

uint64_t WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteAudioDestinationProxy,(WTF::DestructionThread)2>::weakRefCount(atomic_ullong *a1)
{
  if (*a1)
  {
    return 0;
  }

  v1 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteAudioDestinationProxy,(WTF::DestructionThread)2>::controlBlock(a1);

  return WTF::ThreadSafeWeakPtrControlBlock::weakRefCount(v1);
}

uint64_t WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteAudioHardwareListener,(WTF::DestructionThread)0>::weakRefCount(atomic_ullong *a1)
{
  if (*a1)
  {
    return 0;
  }

  v1 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::PDFPluginBase,(WTF::DestructionThread)1>::controlBlock(a1);

  return WTF::ThreadSafeWeakPtrControlBlock::weakRefCount(v1);
}

uint64_t WTF::RefCounted<WebCore::InbandGenericCue>::deref(uint64_t result, void *a2)
{
  v2 = result;
  if (*result == 1)
  {
    WebCore::GenericCueData::~GenericCueData((result + 8), a2);
    if (*v2 == 1)
    {

      return WTF::fastFree(v2, v3);
    }

    else
    {
      result = 191;
      __break(0xC471u);
    }
  }

  else
  {
    --*result;
  }

  return result;
}

unint64_t WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::controlBlock(atomic_ullong *a1)
{
  result = *a1;
  if (result)
  {
    result = WTF::fastMalloc(0x20);
    *result = 0;
    *(result + 8) = xmmword_19E7014F0;
    *(result + 24) = a1 - 3;
    while (1)
    {
      v4 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      *(result + 8) = v4 >> 1;
      v5 = v4;
      atomic_compare_exchange_strong_explicit(a1, &v5, result, memory_order_release, memory_order_relaxed);
      if (v5 == v4)
      {
        return result;
      }
    }

    WTF::fastFree(result, v3);
    return *a1;
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::AudioTrackPrivateRemote::updateConfiguration(WebKit::AudioTrackPrivateRemoteConfiguration &&)::$_1,void,WebCore::TrackPrivateBaseClient &>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1127C20;
  a1[1] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::AudioTrackPrivateRemote::updateConfiguration(WebKit::AudioTrackPrivateRemoteConfiguration &&)::$_1,void,WebCore::TrackPrivateBaseClient &>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1127C20;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::AudioTrackPrivateRemote::updateConfiguration(WebKit::AudioTrackPrivateRemoteConfiguration &&)::$_1,void,WebCore::TrackPrivateBaseClient &>::call(uint64_t a1, uint64_t a2)
{
  WTF::String::isolatedCopy();
  v3 = 0;
  if (v10)
  {
    v3 = v10;
    if ((*(v10 + 16) & 0x10) == 0)
    {
      WTF::AtomStringImpl::addSlowCase();
      v8 = v11;
      v11 = 0;
      v9 = v8;
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v7);
      }

      v3 = v9;
    }
  }

  v11 = v3;
  (*(*a2 + 32))(a2, &v11);
  v5 = v11;
  v11 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  return 0;
}

void *WTF::Detail::CallableWrapper<WebKit::AudioTrackPrivateRemote::updateConfiguration(WebKit::AudioTrackPrivateRemoteConfiguration &&)::$_2,void,WebCore::TrackPrivateBaseClient &>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1127C48;
  a1[1] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::AudioTrackPrivateRemote::updateConfiguration(WebKit::AudioTrackPrivateRemoteConfiguration &&)::$_2,void,WebCore::TrackPrivateBaseClient &>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1127C48;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::AudioTrackPrivateRemote::updateConfiguration(WebKit::AudioTrackPrivateRemoteConfiguration &&)::$_2,void,WebCore::TrackPrivateBaseClient &>::call(uint64_t a1, uint64_t a2)
{
  WTF::String::isolatedCopy();
  v3 = 0;
  if (v10)
  {
    v3 = v10;
    if ((*(v10 + 16) & 0x10) == 0)
    {
      WTF::AtomStringImpl::addSlowCase();
      v8 = v11;
      v11 = 0;
      v9 = v8;
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v7);
      }

      v3 = v9;
    }
  }

  v11 = v3;
  (*(*a2 + 40))(a2, &v11);
  v5 = v11;
  v11 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  return 0;
}

atomic_uint *WTF::ThreadSafeRefCounted<WebCore::WebAudioSourceProvider,(WTF::DestructionThread)1>::deref(atomic_uint *result)
{
  add = atomic_fetch_add(result, 0xFFFFFFFF);
  if (add == 1)
  {
    v2 = result;
    atomic_store(add, result);
    v3 = WTF::fastMalloc(0x10);
    *v3 = &unk_1F11280D0;
    *(v3 + 1) = v2;
    v4 = v3;
    WTF::ensureOnMainThread();
    result = v4;
    if (v4)
    {
      return (*(*v4 + 8))(v4);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::MediaPlayerPrivateRemote::~MediaPlayerPrivateRemote()::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1127C70;
  v3 = a1[1];
  if (v3)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::MediaPlayerPrivateRemote::~MediaPlayerPrivateRemote()::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1127C70;
  v3 = *(this + 1);
  if (v3)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::MediaPlayerPrivateRemote::~MediaPlayerPrivateRemote()::$_0,void>::call(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = *(v1 - 4);
    v3 = v1 + 16 * v2;
    if (*(v1 - 12))
    {
      if (v2)
      {
        v4 = 16 * v2;
        v5 = *(result + 8);
        while ((*v5 + 1) <= 1)
        {
          v5 += 16;
          v4 -= 16;
          if (!v4)
          {
            v5 = v3;
            goto LABEL_13;
          }
        }
      }

      else
      {
        v5 = *(result + 8);
      }

      goto LABEL_13;
    }
  }

  else
  {
    v3 = 0;
    v2 = 0;
  }

  v5 = v3;
  v3 = v1 + 16 * v2;
  if (!v1)
  {
    v6 = 0;
    goto LABEL_14;
  }

LABEL_13:
  v6 = v1 + 16 * *(v1 - 4);
LABEL_14:
  while (v5 != v6)
  {
    result = (*(**(v5 + 8) + 24))(*(v5 + 8));
    do
    {
      v5 += 16;
    }

    while (v5 != v3 && (*v5 + 1) <= 1);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteMediaPlayerProxy::Load,WebKit::MediaPlayerPrivateRemote::load(WTF::URL const&,WebCore::MediaPlayerLoadOptions const&)::$_1>(WebKit::MediaPlayerPrivateRemote::load(WTF::URL const&,WebCore::MediaPlayerLoadOptions const&)::$_1 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1127C98;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteMediaPlayerProxy::Load,WebKit::MediaPlayerPrivateRemote::load(WTF::URL const&,WebCore::MediaPlayerLoadOptions const&)::$_1>(WebKit::MediaPlayerPrivateRemote::load(WTF::URL const&,WebCore::MediaPlayerLoadOptions const&)::$_1 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1127C98;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteMediaPlayerProxy::Load,WebKit::MediaPlayerPrivateRemote::load(WTF::URL const&,WebCore::MediaPlayerLoadOptions const&)::$_1>(WebKit::MediaPlayerPrivateRemote::load(WTF::URL const&,WebCore::MediaPlayerLoadOptions const&)::$_1 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3 && (IPC::Decoder::decode<std::tuple<WebKit::RemoteMediaPlayerConfiguration>>(v6, a3), v7 == 1))
  {
    result = std::apply[abi:sn200100]<WebKit::MediaPlayerPrivateRemote::load(WTF::URL const&,WebCore::MediaPlayerLoadOptions const&)::$_1,std::tuple<WebKit::RemoteMediaPlayerConfiguration>>(*(a1 + 8), *(a1 + 16), v6);
    if ((v7 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    v6[0] = 0;
    v6[1] = 0;
    std::apply[abi:sn200100]<WebKit::MediaPlayerPrivateRemote::load(WTF::URL const&,WebCore::MediaPlayerLoadOptions const&)::$_1,std::tuple<WebKit::RemoteMediaPlayerConfiguration>>(*(a1 + 8), *(a1 + 16), v6);
  }

  result = v6[0];
  if (v6[0])
  {
    if (atomic_fetch_add_explicit(v6[0], 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v5);
    }
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WebKit::RemoteMediaPlayerConfiguration>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebKit::RemoteMediaPlayerConfiguration,void>::decode(a2, v9);
  if (v10)
  {
    goto LABEL_2;
  }

  v6 = *a2;
  v7 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result)
  {
    if (v7)
    {
      result = (*(*result + 16))(result, v6);
      if (v10)
      {
LABEL_2:
        v5 = v9[1];
        *a1 = v9[0];
        *(a1 + 8) = v5;
        *(a1 + 16) = 1;
        return result;
      }

      v7 = *(a2 + 1);
      result = *(a2 + 3);
    }
  }

  else
  {
    v7 = 0;
  }

  *a1 = 0;
  *(a1 + 16) = 0;
  *a2 = 0;
  *(a2 + 1) = 0;
  if (result && v7)
  {
    v8 = *(*result + 16);

    return v8();
  }

  return result;
}

atomic_uchar *std::apply[abi:sn200100]<WebKit::MediaPlayerPrivateRemote::load(WTF::URL const&,WebCore::MediaPlayerLoadOptions const&)::$_1,std::tuple<WebKit::RemoteMediaPlayerConfiguration>>(atomic_uchar *result, atomic_uchar *this, uint64_t *a3)
{
  if (this)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(this, result, &v10);
    if (v10)
    {
      result = *(v10 + 176);
      if (result)
      {
        result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(v10 + 168), &v9);
        if (v9)
        {
          v5 = v10;
          v6 = *a3;
          *a3 = 0;
          v7 = *(v5 + 232);
          *(v5 + 232) = v6;
          if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v7, v4);
          }

          *(v5 + 240) = a3[1];
          WebCore::MediaPlayer::mediaEngineUpdated(*(v9 + 1));
          result = v9;
          v9 = 0;
          if (result)
          {
            result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
          }
        }
      }

      v8 = v10;
      v10 = 0;
      if (v8)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref((v8 + 48));
      }
    }
  }

  return result;
}

uint64_t WebCore::MediaPlayer::mediaEngineUpdated(WebCore::MediaPlayer *this)
{
  if (this)
  {
    v1 = *(this + 1);
    if (v1)
    {
      return (*(*v1 + 112))();
    }
  }

  result = 133;
  __break(0xC471u);
  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteMediaPlayerProxy::DidLoadingProgress,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1127CC0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteMediaPlayerProxy::DidLoadingProgress,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1127CC0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteMediaPlayerProxy::DidLoadingProgress,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    v4 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
    v5 = *&v4 & ((v4 & 0x100) >> 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v6 + 16))(v6, v5);
  v7 = *(*v6 + 8);

  return v7(v6);
}

void *WTF::Detail::CallableWrapper<WebKit::MediaPlayerPrivateRemote::setReadyState(WebCore::MediaPlayerReadyState)::$_0,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1127CE8;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref((v2 + 48));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::MediaPlayerPrivateRemote::setReadyState(WebCore::MediaPlayerReadyState)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1127CE8;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref((v3 + 48));
  }

  return WTF::fastFree(this, a2);
}

atomic_ullong *WTF::Detail::CallableWrapper<WebKit::MediaPlayerPrivateRemote::setReadyState(WebCore::MediaPlayerReadyState)::$_0,void>::call(atomic_ullong *result)
{
  v3 = result[2];
  v4 = *(v3 + 712);
  v5 = *(result + 24);
  *(v3 + 712) = v5;
  if (v4 != v5)
  {
    v6[1] = v1;
    v6[2] = v2;
    result = *(v3 + 176);
    if (result)
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(v3 + 168), v6);
      result = v6[0];
      if (v6[0])
      {
        WebCore::MediaPlayer::readyStateChanged(v6[0]);
        result = v6[0];
        v6[0] = 0;
        if (result)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
        }
      }
    }
  }

  return result;
}

BOOL WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,char [13],WTF::MediaTime,char [20],BOOL>(WTF::Logger *a1, _BYTE *a2, uint64_t a3, WTF::Logger::LogSiteIdentifier *a4, const char *a5, WTF::MediaTime *a6, const char *a7)
{
  v37 = *MEMORY[0x1E69E9840];
  v10 = MEMORY[0x1E696EBD0];
  do
  {
    v11 = *v10;
    if (v11)
    {
      return 0;
    }

    v12 = *v10;
    atomic_compare_exchange_strong_explicit(v10, &v12, v11 | 1, memory_order_acquire, memory_order_acquire);
  }

  while (v12 != v11);
  v14 = WTF::Logger::messageHandlerObservers(a1);
  v15 = *(v14 + 12);
  if (v15)
  {
    v16 = *v14;
    v17 = *v14 + 8 * v15;
    do
    {
      v18 = *v16;
      v30[0] = 0;
      WTF::Logger::LogSiteIdentifier::toString(&v31, a4);
      v32 = 0;
      WTF::String::String(v33, a5);
      v33[2] = 1;
      WTF::MediaTime::toJSONString(&v34, a6);
      v35 = 0;
      WTF::String::String(v36, a7);
      v36[2] = 0;
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v29, v30, 5uLL);
      (*(*v18 + 16))(v18, a2, a3, v29);
      WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v29, v19);
      for (i = 18; i != -2; i -= 4)
      {
        v22 = *&v30[i];
        *&v30[i] = 0;
        if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v22, v20);
        }
      }

      ++v16;
    }

    while (v16 != v17);
  }

  v23 = 1;
  atomic_compare_exchange_strong_explicit(v10, &v23, 0, memory_order_release, memory_order_relaxed);
  if (v23 != 1)
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBD0]);
  }

  if ((*(a1 + 12) & 1) == 0)
  {
    return 0;
  }

  if (a3 < 2)
  {
    return 1;
  }

  return *a2 && a2[16] >= a3;
}

WTF::StringImpl *WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [13],WTF::MediaTime,char [20],BOOL>(uint64_t a1, unsigned int a2, WTF::Logger::LogSiteIdentifier *this, const char *a4, WTF::MediaTime *a5, const char *a6)
{
  v51 = *MEMORY[0x1E69E9840];
  WTF::Logger::LogSiteIdentifier::toString(&v40, this);
  WTF::String::String(&v39, a4);
  WTF::MediaTime::toJSONString(&v38, a5);
  WTF::String::String(&v37, a6);
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v35[0] = v39;
  v44 = v38;
  *buf = v40;
  v42 = v36;
  v43 = v37;
  result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v35, &v44, &v43, &v42, &v41);
  if (v41)
  {
    v13 = v36;
    v36 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v12);
    }

    v14 = v37;
    v37 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v12);
    }

    v15 = v38;
    v38 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v12);
    }

    v16 = v39;
    v39 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v12);
    }

    v17 = v40;
    v40 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v12);
    }

    v18 = *(a1 + 32);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v19)
    {
      WTF::String::utf8();
      v21 = v35[0] ? v35[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v21;
      _os_log_impl(&dword_19D52D000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v19 = v35[0];
      v35[0] = 0;
      if (v19)
      {
        if (*v19 == 1)
        {
          v19 = WTF::fastFree(v19, v20);
        }

        else
        {
          --*v19;
        }
      }
    }

    if (*a1 && *(a1 + 16) >= a2)
    {
      v22 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v23 = *v22;
        if (v23)
        {
          break;
        }

        v24 = *v22;
        atomic_compare_exchange_strong_explicit(v22, &v24, v23 | 1, memory_order_acquire, memory_order_acquire);
        if (v24 == v23)
        {
          v25 = WTF::Logger::observers(v19);
          v26 = *(v25 + 12);
          if (v26)
          {
            v27 = *v25;
            v28 = *v25 + 8 * v26;
            do
            {
              v29 = *v27;
              *buf = 0;
              WTF::Logger::LogSiteIdentifier::toString(&buf[8], this);
              v46 = 0;
              WTF::String::String(v47, a4);
              v47[2] = 1;
              WTF::MediaTime::toJSONString(&v48, a5);
              v49 = 0;
              WTF::String::String(v50, a6);
              v50[2] = 0;
              WTF::StringImpl::createWithoutCopyingNonEmpty();
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v35, buf, 5uLL);
              (*(*v29 + 16))(v29, a1, a2, v35);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v35, v30);
              for (i = 72; i != -8; i -= 16)
              {
                v32 = *&buf[i];
                *&buf[i] = 0;
                if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v32, v20);
                }
              }

              ++v27;
            }

            while (v27 != v28);
          }

          v33 = 1;
          atomic_compare_exchange_strong_explicit(v22, &v33, 0, memory_order_release, memory_order_relaxed);
          if (v33 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    result = v41;
    v41 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v20);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>>>::__erase_unique<unsigned long long>(void *a1, unint64_t *a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>>>::find<unsigned long long>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>>>::erase(a1, result);
    return 1;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>>>::find<unsigned long long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v3 == v8)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>>>::erase(void *result, uint64_t *a2)
{
  if (a2)
  {
    v2 = *a2;
    std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>>>::remove(result, a2, &v4);
    v3 = v4;
    v4 = 0;
    if (v3)
    {
      std::__hash_node_destructor<WTF::FastAllocator<std::__hash_node<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,void *>>>::operator()[abi:sn200100](&v5, v3);
    }

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t std::__hash_node_destructor<WTF::FastAllocator<std::__hash_node<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,void *>>>::operator()[abi:sn200100](uint64_t result, WTF *this)
{
  if (*(result + 8) == 1)
  {
    v3 = *(this + 3);
    *(this + 3) = 0;
    if (v3)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::TrackPrivateBase,(WTF::DestructionThread)0>::deref((v3 + 8), this);
    }
  }

  else if (!this)
  {
    return result;
  }

  return WTF::fastFree(this, this);
}

WTF *std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>>>::__rehash<true>(WTF *result, size_t __n)
{
  v2 = result;
  if (__n == 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = __n;
    if ((__n & (__n - 1)) != 0)
    {
      result = std::__next_prime(__n);
      v3 = result;
    }
  }

  v4 = *(v2 + 8);
  if (v3 <= *&v4)
  {
    if (v3 >= *&v4)
    {
      return result;
    }

    result = vcvtps_u32_f32(*(v2 + 3) / *(v2 + 8));
    if (*&v4 < 3uLL || (v11 = vcnt_s8(v4), v11.i16[0] = vaddlv_u8(v11), v11.u32[0] > 1uLL))
    {
      result = std::__next_prime(result);
    }

    else
    {
      v12 = (1 << -__clz(result - 1));
      if (result >= 2)
      {
        result = v12;
      }
    }

    if (v3 <= result)
    {
      v3 = result;
    }

    if (v3 >= *&v4)
    {
      return result;
    }

    if (!v3)
    {
      result = *v2;
      *v2 = 0;
      if (result)
      {
        result = WTF::fastFree(result, __n);
      }

      *(v2 + 1) = 0;
      return result;
    }
  }

  v6 = WTF::fastMalloc((8 * v3));
  result = *v2;
  *v2 = v6;
  if (result)
  {
    result = WTF::fastFree(result, v5);
  }

  v7 = 0;
  *(v2 + 1) = v3;
  do
  {
    *(*v2 + 8 * v7++) = 0;
  }

  while (v3 != v7);
  v8 = *(v2 + 2);
  if (v8)
  {
    v9 = v8[1];
    v10 = vcnt_s8(v3);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      if (v9 >= v3)
      {
        v9 %= v3;
      }
    }

    else
    {
      v9 &= v3 - 1;
    }

    *(*v2 + 8 * v9) = v2 + 16;
    v13 = *v8;
    if (*v8)
    {
      do
      {
        v14 = v13[1];
        if (v10.u32[0] > 1uLL)
        {
          if (v14 >= v3)
          {
            v14 %= v3;
          }
        }

        else
        {
          v14 &= v3 - 1;
        }

        if (v14 != v9)
        {
          v15 = *v2;
          if (!*(*v2 + 8 * v14))
          {
            *(v15 + v14) = v8;
            goto LABEL_30;
          }

          *v8 = *v13;
          *v13 = **(v15 + v14);
          **(v15 + v14) = v13;
          v13 = v8;
        }

        v14 = v9;
LABEL_30:
        v8 = v13;
        v13 = *v13;
        v9 = v14;
      }

      while (v13);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteMediaPlayerProxy::LoadMediaSource,WebKit::MediaPlayerPrivateRemote::load(WTF::URL const&,WebCore::MediaPlayerLoadOptions const&,WebCore::MediaSourcePrivateClient &)::$_1>(WebKit::MediaPlayerPrivateRemote::load(WTF::URL const&,WebCore::MediaPlayerLoadOptions const&,WebCore::MediaSourcePrivateClient &)::$_1 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1127D10;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteMediaPlayerProxy::LoadMediaSource,WebKit::MediaPlayerPrivateRemote::load(WTF::URL const&,WebCore::MediaPlayerLoadOptions const&,WebCore::MediaSourcePrivateClient &)::$_1>(WebKit::MediaPlayerPrivateRemote::load(WTF::URL const&,WebCore::MediaPlayerLoadOptions const&,WebCore::MediaSourcePrivateClient &)::$_1 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1127D10;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteMediaPlayerProxy::LoadMediaSource,WebKit::MediaPlayerPrivateRemote::load(WTF::URL const&,WebCore::MediaPlayerLoadOptions const&,WebCore::MediaSourcePrivateClient &)::$_1>(WebKit::MediaPlayerPrivateRemote::load(WTF::URL const&,WebCore::MediaPlayerLoadOptions const&,WebCore::MediaSourcePrivateClient &)::$_1 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3 && (IPC::Decoder::decode<std::tuple<WebKit::RemoteMediaPlayerConfiguration>>(v17, a3), v18 == 1))
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v5, *(a1 + 8), &v20);
      if (v20)
      {
        v6 = *(v20 + 176);
        if (v6)
        {
          WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v6, *(v20 + 168), &v19);
          if (v19)
          {
            v7 = v20;
            v8 = v17[0];
            v17[0] = 0;
            v9 = *(v20 + 232);
            *(v20 + 232) = v8;
            if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v9, v4);
            }

            *(v7 + 240) = v17[1];
            WebCore::MediaPlayer::mediaEngineUpdated(*(v19 + 8));
            v10 = v19;
            v19 = 0;
            if (v10)
            {
              WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v10);
            }
          }
        }

        v11 = v20;
        v20 = 0;
        if (v11)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref((v11 + 48));
        }
      }
    }

    result = v17[0];
    if (v17[0])
    {
      if (atomic_fetch_add_explicit(v17[0], 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v4);
      }
    }
  }

  else
  {
    result = *(a1 + 16);
    if (result)
    {
      result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(a1 + 8), v17);
      if (v17[0])
      {
        result = *(v17[0] + 22);
        if (result)
        {
          result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(v17[0] + 21), &v20);
          if (v20)
          {
            v14 = v17[0];
            v15 = *(v17[0] + 29);
            *(v17[0] + 29) = 0;
            if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v15, v13);
            }

            *(v14 + 30) = 0;
            WebCore::MediaPlayer::mediaEngineUpdated(*(v20 + 8));
            result = v20;
            v20 = 0;
            if (result)
            {
              result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
            }
          }
        }

        v16 = v17[0];
        v17[0] = 0;
        if (v16)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v16 + 6);
        }
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::MediaPlayerPrivateRemote::load(WTF::URL const&,WebCore::MediaPlayerLoadOptions const&,WebCore::MediaSourcePrivateClient &)::$_2,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1127D38;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::MediaPlayerPrivateRemote::load(WTF::URL const&,WebCore::MediaPlayerLoadOptions const&,WebCore::MediaSourcePrivateClient &)::$_2,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1127D38;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_uchar *WTF::Detail::CallableWrapper<WebKit::MediaPlayerPrivateRemote::load(WTF::URL const&,WebCore::MediaPlayerLoadOptions const&,WebCore::MediaSourcePrivateClient &)::$_2,void>::call(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(a1 + 8), &v5);
    if (v5)
    {
      result = *(v5 + 176);
      if (result)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(v5 + 168), &v4);
        result = v4;
        if (v4)
        {
          *(v5 + 368) = 4;
          WebCore::MediaPlayer::networkStateChanged(result);
          result = v4;
          v4 = 0;
          if (result)
          {
            result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
          }
        }
      }

      v3 = v5;
      v5 = 0;
      if (v3)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref((v3 + 48));
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::MediaPlayerPrivateRemote::load(WebCore::MediaStreamPrivate &)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1127D60;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::MediaPlayerPrivateRemote::load(WebCore::MediaStreamPrivate &)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1127D60;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_uchar *WTF::Detail::CallableWrapper<WebKit::MediaPlayerPrivateRemote::load(WebCore::MediaStreamPrivate &)::$_0,void>::call(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(a1 + 8), &v5);
    if (v5)
    {
      result = *(v5 + 176);
      if (result)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(v5 + 168), &v4);
        result = v4;
        if (v4)
        {
          *(v5 + 368) = 4;
          WebCore::MediaPlayer::networkStateChanged(result);
          result = v4;
          v4 = 0;
          if (result)
          {
            result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
          }
        }
      }

      v3 = v5;
      v5 = 0;
      if (v3)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref((v3 + 48));
      }
    }
  }

  return result;
}

mpark *WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,std::optional<BOOL>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,std::optional<BOOL>>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,std::optional<BOOL>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<std::optional<BOOL>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 - 4);
    v4 = *(v2 - 12);
    if (v3)
    {
      v5 = v3 << (6 * v4 >= 2 * v3);
      goto LABEL_6;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v5 = 8;
LABEL_6:
  result = WTF::fastMalloc((40 * v5 + 16));
  if (v5)
  {
    v8 = v5;
    v9 = (result + 16);
    do
    {
      *(v9 + 16) = 0;
      *v9 = 0uLL;
      *(v9 + 1) = 0uLL;
      v9 += 10;
      --v8;
    }

    while (v8);
  }

  *a1 = result + 16;
  *(result + 2) = v5 - 1;
  *(result + 3) = v5;
  *result = 0;
  *(result + 1) = v4;
  if (v3)
  {
    v10 = 0;
    v11 = 0;
    v12 = v3;
    v27 = v3;
    while (1)
    {
      v13 = v2 + 40 * v10;
      if (*(v13 + 24))
      {
        break;
      }

      if (*v13 != -1)
      {
        goto LABEL_13;
      }

LABEL_44:
      if (++v10 == v12)
      {
        goto LABEL_49;
      }
    }

    if (*(v13 + 24) != 1)
    {
      mpark::throw_bad_variant_access(result);
    }

LABEL_13:
    result = WebCore::SecurityOriginData::isNull((v2 + 40 * v10));
    if (result)
    {
      if (!*(v13 + 24))
      {
        v14 = *(v13 + 8);
        *(v13 + 8) = 0;
        if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v14, v7);
        }

        result = *v13;
        *v13 = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v7);
        }
      }

      *(v13 + 24) = -1;
    }

    else
    {
      v15 = v11;
      v16 = *a1;
      if (*a1)
      {
        v17 = *(v16 - 8);
      }

      else
      {
        v17 = 0;
      }

      v30 = -1640531527;
      v31 = 0;
      v32 = 0;
      WTF::add<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(&v30, v2 + 40 * v10);
      v18 = WTF::SuperFastHash::hash(&v30);
      v19 = 0;
      do
      {
        v20 = v18 & v17;
        v21 = v16 + 40 * (v18 & v17);
        isNull = WebCore::SecurityOriginData::isNull(v21);
        v18 = ++v19 + v20;
      }

      while (!isNull);
      v11 = v15;
      if (!*(v21 + 24))
      {
        v24 = *(v21 + 8);
        *(v21 + 8) = 0;
        if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v24, v22);
        }

        v25 = *v21;
        *v21 = 0;
        if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v25, v22);
        }
      }

      *(v21 + 24) = -1;
      result = mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v21);
      *(v21 + 32) = *(v13 + 32);
      if (!*(v13 + 24))
      {
        v26 = *(v13 + 8);
        *(v13 + 8) = 0;
        if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v26, v7);
        }

        result = *v13;
        *v13 = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v7);
        }
      }

      *(v13 + 24) = -1;
      if (v13 == a2)
      {
        v11 = v21;
      }

      v12 = v27;
    }

    goto LABEL_44;
  }

  if (v2)
  {
LABEL_49:

    return WTF::fastFree((v2 - 16), v7);
  }

  return result;
}

IPC::Encoder *IPC::Connection::send<Messages::RemoteMediaPlayerProxy::SetLegacyCDMSession>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2;
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1428;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v14 = v6;
  v7 = *v4;
  LOBYTE(v4) = *(*v4 + 8);
  v8 = IPC::Encoder::grow(v6, 1uLL, 1);
  if (v4)
  {
    if (v9)
    {
      *v8 = 1;
      if (*(v7 + 8))
      {
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, *v7);
        goto LABEL_7;
      }

      std::__throw_bad_optional_access[abi:sn200100]();
    }

LABEL_11:
    __break(0xC471u);
    JUMPOUT(0x19E2910E0);
  }

  if (!v9)
  {
    goto LABEL_11;
  }

  *v8 = 0;
LABEL_7:
  IPC::Connection::sendMessageImpl(a1, &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v10);
    return bmalloc::api::tzoneFree(v12, v13);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteMediaPlayerProxy::PerformTaskAtTime,WebKit::MediaPlayerPrivateRemote::performTaskAtTime(WTF::Function<void ()(void)> &&,WTF::MediaTime const&)::$_0>(WebKit::MediaPlayerPrivateRemote::performTaskAtTime(WTF::Function<void ()(void)> &&,WTF::MediaTime const&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler,IPC::Decoder)#1},void,WTF::CompletionHandler,IPC::Decoder>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1127D88;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteMediaPlayerProxy::PerformTaskAtTime,WebKit::MediaPlayerPrivateRemote::performTaskAtTime(WTF::Function<void ()(void)> &&,WTF::MediaTime const&)::$_0>(WebKit::MediaPlayerPrivateRemote::performTaskAtTime(WTF::Function<void ()(void)> &&,WTF::MediaTime const&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler,IPC::Decoder)#1},void,WTF::CompletionHandler,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1127D88;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_uchar *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteMediaPlayerProxy::PerformTaskAtTime,WebKit::MediaPlayerPrivateRemote::performTaskAtTime(WTF::Function<void ()(void)> &&,WTF::MediaTime const&)::$_0>(WebKit::MediaPlayerPrivateRemote::performTaskAtTime(WTF::Function<void ()(void)> &&,WTF::MediaTime const&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler,IPC::Decoder)#1},void,WTF::CompletionHandler,IPC::Decoder>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (!a3)
  {
    goto LABEL_15;
  }

  v5 = *a3;
  if (!*a3)
  {
    goto LABEL_15;
  }

  v6 = *(a3 + 1);
  v7 = *(a3 + 2);
  if (v6 <= &v7[-v5])
  {
    *a3 = 0;
    *(a3 + 1) = 0;
    v20 = *(a3 + 3);
    if (v20)
    {
      if (v6)
      {
        (*(*v20 + 16))(v20);
        v5 = *a3;
        v6 = *(a3 + 1);
        goto LABEL_30;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_30:
    *a3 = 0;
    *(a3 + 1) = 0;
    v21 = *(a3 + 3);
    if (v21)
    {
      if (v6)
      {
        (*(*v21 + 16))(v21, v5);
        v5 = *a3;
        v6 = *(a3 + 1);
        goto LABEL_33;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_33:
    *a3 = 0;
    *(a3 + 1) = 0;
    v22 = *(a3 + 3);
    if (v22 && v6)
    {
      (*(*v22 + 16))(v22, v5);
    }

    goto LABEL_14;
  }

  *(a3 + 2) = v7 + 1;
  if (!v7)
  {
    goto LABEL_30;
  }

  v8 = *v7;
  if (v8 >= 2)
  {
    goto LABEL_33;
  }

  if (*v7)
  {
    IPC::ArgumentCoder<WTF::MediaTime,void>::decode(a3, v23);
    if ((v24 & 1) == 0)
    {
      v11 = *a3;
      v12 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v13 = *(a3 + 3);
      if (!v13 || !v12 || ((*(*v13 + 16))(v13, v11), (v24 & 1) == 0))
      {
LABEL_14:
        v14 = *a3;
        v15 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v16 = *(a3 + 3);
        if (v16)
        {
          if (v15)
          {
            (*(*v16 + 16))(v16, v14);
            v17 = *a3;
            v18 = *(a3 + 1);
            v19 = *(a3 + 3);
            *a3 = 0;
            *(a3 + 1) = 0;
            if (v19)
            {
              if (v18)
              {
                (*(*v19 + 16))(v19, v17);
              }
            }
          }
        }

LABEL_15:
        result = *(a1 + 16);
        if (result)
        {
          result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(a1 + 8), v23);
          v10 = v23[0];
          if (v23[0])
          {
            goto LABEL_17;
          }
        }

        return result;
      }
    }
  }

  result = *(a1 + 16);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(a1 + 8), v23);
    v10 = v23[0];
    if (v23[0])
    {
      if (v8)
      {
        result = (*(**(a1 + 24) + 16))(*(a1 + 24));
        v10 = v23[0];
        v23[0] = 0;
        if (!v10)
        {
          return result;
        }

        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref((v10 + 48));
      }

LABEL_17:
      v23[0] = 0;
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref((v10 + 48));
    }
  }

  return result;
}

atomic_uint *WTF::ThreadSafeRefCounted<WebCore::PlatformMediaResourceLoader,(WTF::DestructionThread)1>::deref(atomic_uint *result)
{
  add = atomic_fetch_add(result, 0xFFFFFFFF);
  if (add == 1)
  {
    v2 = result;
    atomic_store(add, result);
    v3 = WTF::fastMalloc(0x10);
    *v3 = &unk_1F1127DB0;
    *(v3 + 1) = v2;
    v4 = v3;
    WTF::ensureOnMainThread();
    result = v4;
    if (v4)
    {
      return (*(*v4 + 8))(v4);
    }
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  if (*a1 && (v4 = *(v3 - 4)) != 0)
  {
    v5 = v4 << (6 * *(v3 - 12) >= (2 * v4));
  }

  else
  {
    v5 = 8;
  }

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = WTF::fastZeroedMalloc((16 * a2 + 16));
  *a1 = (v9 + 4);
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  if (v7)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = (v6 + 16 * v11);
      v14 = *v13;
      if (*v13 != -1)
      {
        if (v14)
        {
          v16 = *a1;
          if (*a1)
          {
            v17 = *(v16 - 8);
          }

          else
          {
            v17 = 0;
          }

          v18 = (v14 + ~(v14 << 32)) ^ ((v14 + ~(v14 << 32)) >> 22);
          v19 = 9 * ((v18 + ~(v18 << 13)) ^ ((v18 + ~(v18 << 13)) >> 8));
          v20 = (v19 ^ (v19 >> 15)) + ~((v19 ^ (v19 >> 15)) << 27);
          v21 = v17 & ((v20 >> 31) ^ v20);
          v22 = 1;
          do
          {
            v23 = v21;
            v24 = *(v16 + 16 * v21);
            v21 = (v21 + v22++) & v17;
          }

          while (v24);
          v25 = (v16 + 16 * v23);
          v26 = v25[1];
          v25[1] = 0;
          if (v26)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::PlatformMediaResource,(WTF::DestructionThread)0>::deref((v26 + 8), v10);
          }

          *v25 = *v13;
          v27 = v13[1];
          v13[1] = 0;
          v25[1] = v27;
          v28 = v13[1];
          v13[1] = 0;
          if (v28)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::PlatformMediaResource,(WTF::DestructionThread)0>::deref((v28 + 8), v10);
          }

          if (v13 == a3)
          {
            v12 = v25;
          }
        }

        else
        {
          v15 = v13[1];
          v13[1] = 0;
          if (v15)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::PlatformMediaResource,(WTF::DestructionThread)0>::deref((v15 + 8), v10);
          }
        }
      }

      ++v11;
    }

    while (v11 != v7);
  }

  else
  {
    v12 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v12;
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take@<X0>(uint64_t *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = *result;
  if (*result)
  {
    v5 += 16 * *(v5 - 4);
  }

  if (v5 == a2)
  {
    v8[1] = v3;
    v8[2] = v4;
    v8[0] = 0;
    return WTF::GenericHashTraits<WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>::take<WebCore::PlatformMediaResource*>(v8, a3);
  }

  v6 = a2[1];
  a2[1] = 0;
  *a3 = v6;
  if (*result)
  {
    v7 = *result + 16 * *(*result - 4);
    if (v7 == a2)
    {
      return result;
    }
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v7 = 0;
  }

  if (v7 != a2)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(result, a2);
  }

  return result;
}

uint64_t *WTF::GenericHashTraits<WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>::take<WebCore::PlatformMediaResource*>@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result)
  {
    while (1)
    {
      v4 = *(v3 + 8);
      if ((v4 & 1) == 0)
      {
        break;
      }

      v5 = *(v3 + 8);
      atomic_compare_exchange_strong_explicit((v3 + 8), &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v5 == v4)
      {
        goto LABEL_6;
      }
    }

    result = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v3 + 8));
  }

LABEL_6:
  *a2 = v3;
  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *result, void *a2)
{
  v2 = result;
  v3 = a2[1];
  *a2 = -1;
  a2[1] = 0;
  if (v3)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::PlatformMediaResource,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  v4 = *v2;
  v5 = vadd_s32(*(*v2 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v2, v6 >> 1, 0);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = *a2;
  if (*a2 == -1 || !v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19E291990);
  }

  v4 = *(v2 - 8);
  v5 = (v3 + ~(v3 << 32)) ^ ((v3 + ~(v3 << 32)) >> 22);
  v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
  v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
  v8 = v4 & ((v7 >> 31) ^ v7);
  v9 = *(v2 + 16 * v8);
  if (v9 == v3)
  {
    return v2 + 16 * v8;
  }

  v10 = 1;
  while (v9)
  {
    v8 = (v8 + v10) & v4;
    v9 = *(v2 + 16 * v8);
    ++v10;
    if (v9 == v3)
    {
      return v2 + 16 * v8;
    }
  }

  return v2 + 16 * *(v2 - 4);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteMediaPlayerProxy::RequestHostingContext,WebKit::MediaPlayerPrivateRemote::requestHostingContext(WTF::CompletionHandler<void ()(WebCore::HostingContext)> &&)::$_0>(WebKit::MediaPlayerPrivateRemote::requestHostingContext(WTF::CompletionHandler<void ()(WebCore::HostingContext)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::MediaPlayerPrivateRemote::requestHostingContext(WTF::CompletionHandler<void ()(WebCore::HostingContext)> &&)::$_0,IPC::Decoder)#1},void,WebKit::MediaPlayerPrivateRemote::requestHostingContext(WTF::CompletionHandler<void ()(WebCore::HostingContext)> &&)::$_0,IPC::Decoder>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1127DD8;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteMediaPlayerProxy::RequestHostingContext,WebKit::MediaPlayerPrivateRemote::requestHostingContext(WTF::CompletionHandler<void ()(WebCore::HostingContext)> &&)::$_0>(WebKit::MediaPlayerPrivateRemote::requestHostingContext(WTF::CompletionHandler<void ()(WebCore::HostingContext)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::MediaPlayerPrivateRemote::requestHostingContext(WTF::CompletionHandler<void ()(WebCore::HostingContext)> &&)::$_0,IPC::Decoder)#1},void,WebKit::MediaPlayerPrivateRemote::requestHostingContext(WTF::CompletionHandler<void ()(WebCore::HostingContext)> &&)::$_0,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1127DD8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteMediaPlayerProxy::RequestHostingContext,WebKit::MediaPlayerPrivateRemote::requestHostingContext(WTF::CompletionHandler<void ()(WebCore::HostingContext)> &&)::$_0>(WebKit::MediaPlayerPrivateRemote::requestHostingContext(WTF::CompletionHandler<void ()(WebCore::HostingContext)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::MediaPlayerPrivateRemote::requestHostingContext(WTF::CompletionHandler<void ()(WebCore::HostingContext)> &&)::$_0,IPC::Decoder)#1},void,WebKit::MediaPlayerPrivateRemote::requestHostingContext(WTF::CompletionHandler<void ()(WebCore::HostingContext)> &&)::$_0,IPC::Decoder>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    IPC::ArgumentCoder<std::tuple<WebCore::HostingContext>,void>::decode<IPC::Decoder>(a3, &v14);
    if (v17 & 1) != 0 || (v11 = *a3, v12 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v13 = *(a3 + 3)) != 0) && v12 && ((*(*v13 + 16))(v13, v11), (v17))
    {
      v18 = v14;
      WTF::MachSendRight::MachSendRight();
      v6 = v16;
      v16 = 0;
      v20 = v6;
      if (*(a1 + 16))
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(a1 + 16), *(a1 + 8), &v21);
        if (v21)
        {
          WebKit::MediaPlayerPrivateRemote::setLayerHostingContext(v21, &v18);
          v7 = v21;
          v21 = 0;
          if (v7)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref((v7 + 48));
          }
        }

        v6 = v20;
      }

      v20 = 0;
      if (v6)
      {
        WTF::fastFree(v6, v5);
      }

      WTF::MachSendRight::~MachSendRight(&v19);
      if (v17)
      {
        v9 = v16;
        v16 = 0;
        if (v9)
        {
          WTF::fastFree(v9, v8);
        }

        WTF::MachSendRight::~MachSendRight(&v15);
      }
    }

    else
    {
      IPC::Connection::cancelReply<Messages::RemoteMediaPlayerProxy::RequestHostingContext,WebKit::MediaPlayerPrivateRemote::requestHostingContext(WTF::CompletionHandler<void ()(WebCore::HostingContext)> &&)::$_0>(a1 + 8);
    }
  }

  else
  {
    v10 = a1 + 8;

    IPC::Connection::cancelReply<Messages::RemoteMediaPlayerProxy::RequestHostingContext,WebKit::MediaPlayerPrivateRemote::requestHostingContext(WTF::CompletionHandler<void ()(WebCore::HostingContext)> &&)::$_0>(v10);
  }
}

void IPC::Connection::cancelReply<Messages::RemoteMediaPlayerProxy::RequestHostingContext,WebKit::MediaPlayerPrivateRemote::requestHostingContext(WTF::CompletionHandler<void ()(WebCore::HostingContext)> &&)::$_0>(uint64_t a1)
{
  v8 = 0;
  WTF::MachSendRight::MachSendRight();
  v9 = 0;
  WTF::MachSendRight::~MachSendRight(&v8);
  v7 = 0;
  WTF::MachSendRight::MachSendRight();
  v3 = 0;
  v6 = 0;
  v9 = 0;
  if (*(a1 + 8))
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(a1 + 8), *a1, &v10);
    if (v10)
    {
      WebKit::MediaPlayerPrivateRemote::setLayerHostingContext(v10, &v7);
      v4 = v10;
      v10 = 0;
      if (v4)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref((v4 + 48));
      }
    }

    v3 = v9;
  }

  v9 = 0;
  if (v3)
  {
    WTF::fastFree(v3, v2);
  }

  WTF::MachSendRight::~MachSendRight(&v8);
  v6 = 0;
  WTF::MachSendRight::~MachSendRight(&v5);
}

void IPC::ArgumentCoder<std::tuple<WebCore::HostingContext>,void>::decode<IPC::Decoder>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<WebCore::HostingContext,void>::decode(a1, &v9);
  if (v12 & 1) != 0 || ((v5 = *a1, v6 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v7 = *(a1 + 3)) != 0) ? (v8 = v6 == 0) : (v8 = 1), !v8 && ((*(*v7 + 16))(v7, v5), (v12)))
  {
    *a2 = v9;
    WTF::MachSendRight::MachSendRight();
    *(a2 + 16) = v11;
    v4 = v12;
    *(a2 + 24) = 1;
    if (v4)
    {
      v11 = 0;
      WTF::MachSendRight::~MachSendRight(&v10);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }
}

IPC::Encoder *IPC::Connection::send<Messages::RemoteMediaPlayerProxy::SetHasMessageClientForTesting>(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1427;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::Encoder::operator<<<BOOL &>(v6, a2);
  IPC::Connection::sendMessageImpl(a1, &v11, 0, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

uint64_t std::__call_once_proxy[abi:sn200100]<std::tuple<WebKit::MediaSourcePrivateRemote::queueSingleton(void)::$_0 &&>>()
{
  result = WTF::WorkQueue::create();
  qword_1ED642C20 = v1;
  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::MediaSourcePrivateRemote::addSourceBuffer(WebCore::ContentType const&,WebCore::MediaSourceConfiguration const&,WTF::RefPtr<WebCore::SourceBufferPrivate,WTF::RawPtrTraits<WebCore::SourceBufferPrivate>,WTF::DefaultRefDerefTraits<WebCore::SourceBufferPrivate>> &)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1127E00;
  v3 = a1[5];
  a1[5] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v3 + 24), a2);
  }

  v4 = a1[3];
  a1[3] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::MediaSourcePrivateRemote::addSourceBuffer(WebCore::ContentType const&,WebCore::MediaSourceConfiguration const&,WTF::RefPtr<WebCore::SourceBufferPrivate,WTF::RawPtrTraits<WebCore::SourceBufferPrivate>,WTF::DefaultRefDerefTraits<WebCore::SourceBufferPrivate>> &)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1127E00;
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v3 + 24), a2);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::MediaSourcePrivateRemote::addSourceBuffer(WebCore::ContentType const&,WebCore::MediaSourceConfiguration const&,WTF::RefPtr<WebCore::SourceBufferPrivate,WTF::RawPtrTraits<WebCore::SourceBufferPrivate>,WTF::DefaultRefDerefTraits<WebCore::SourceBufferPrivate>> &)::$_0,void>::call(uint64_t a1)
{
  v3 = *(a1 + 8);
  WebCore::ContentType::ContentType(&v60, (a1 + 24));
  v44 = 0;
  v45 = 0;
  v46[0] = 0;
  WTF::URL::invalidate(v46);
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v47 = 1;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v5 = v60;
  if (v60)
  {
    atomic_fetch_add_explicit(v60, 2u, memory_order_relaxed);
  }

  v44 = v5;
  v45 = v61;
  v6 = v3[25];
  if (!v6)
  {
    __break(0xC471u);
    JUMPOUT(0x19E29228CLL);
  }

  if (!WebKit::RemoteMediaPlayerMIMETypeCache::supportsTypeAndCodecs(v6, &v44, v4))
  {
LABEL_50:
    **(a1 + 16) = 1;
    goto LABEL_59;
  }

  v8 = *(*(a1 + 40) + 32);
  IPC::Connection::createSyncMessageEncoder(0x101A, v3[24], v64);
  v9 = v64[0];
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v64[0], &v60);
  LOBYTE(v62) = v61;
  IPC::Encoder::operator<<<BOOL>(v9, &v62);
  IPC::Encoder::operator<<<BOOL>(v9, (a1 + 48));
  v10 = IPC::Connection::sendSyncMessage(v8, v64[1], v64, 0, &v62, INFINITY);
  if (!v63)
  {
    v13 = v62;
    v62 = 0;
    if (*(v13 + 50) == 3194)
    {
      v1 = 11;
      goto LABEL_44;
    }

    v11 = *(v13 + 8);
    v15 = *(v13 + 16);
    v7 = *v13;
    if (v11 <= &v15[-*v13])
    {
      *v13 = 0;
      *(v13 + 8) = 0;
      v18 = *(v13 + 24);
      if (v18)
      {
        if (v11)
        {
          (*(*v18 + 16))(v18);
          v11 = *(v13 + 8);
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v16 = v15 + 1;
      *(v13 + 16) = v15 + 1;
      if (v15)
      {
        v12 = *v15;
        if (v12 >= 3)
        {
          goto LABEL_41;
        }

        if (v11 <= &v16[-v7])
        {
          v20 = 0;
          v21 = 0;
          *v13 = 0;
          *(v13 + 8) = 0;
          v22 = *(v13 + 24);
          if (v22)
          {
            (*(*v22 + 16))(v22);
            v21 = *v13;
            v20 = *(v13 + 8);
          }
        }

        else
        {
          *(v13 + 16) = v15 + 2;
          if (v15 != -1)
          {
            if (*v16 >= 2u)
            {
              goto LABEL_39;
            }

            if (!*v16)
            {
              v9 = 0;
              LOBYTE(v1) = 0;
              v14 = 0;
              goto LABEL_45;
            }

            v17 = IPC::ArgumentCoder<WTF::ObjectIdentifierGeneric<WebCore::BackgroundFetchRecordIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,void>::decode(v13);
            if (v7)
            {
              v9 = v17;
              v14 = 0;
              LOBYTE(v1) = 1;
              goto LABEL_45;
            }

            goto LABEL_38;
          }

          v20 = v11;
          v21 = v7;
        }

        *v13 = 0;
        *(v13 + 8) = 0;
        v23 = *(v13 + 24);
        if (!v23 || !v20)
        {
          v11 = 0;
          goto LABEL_39;
        }

        (*(*v23 + 16))(v23, v21, v20);
LABEL_38:
        v11 = *(v13 + 8);
LABEL_39:
        *v13 = 0;
        *(v13 + 8) = 0;
        v19 = *(v13 + 24);
        if (!v19)
        {
          goto LABEL_40;
        }

        goto LABEL_68;
      }
    }

    *v13 = 0;
    *(v13 + 8) = 0;
    v19 = *(v13 + 24);
    if (v19)
    {
      if (v11)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v11 = 0;
    }

    v7 = 0;
    goto LABEL_41;
  }

  if (v63 != 1)
  {
    mpark::throw_bad_variant_access(v10);
  }

  v12 = 0;
  v13 = v62;
  v14 = 1;
  while (1)
  {
    v19 = v64[0];
    v64[0] = 0;
    if (v19)
    {
      IPC::Encoder::~Encoder(v19, v7);
      v19 = bmalloc::api::tzoneFree(v31, v32);
      if (v14)
      {
        goto LABEL_50;
      }
    }

    else if (v14)
    {
      goto LABEL_50;
    }

    if (v12)
    {
      break;
    }

    if (v1)
    {
      v33 = *(a1 + 40);
      v34 = WebKit::SourceBufferPrivateRemote::operator new(0x1D8, v7);
      v35 = WebKit::SourceBufferPrivateRemote::SourceBufferPrivateRemote(v34, v33, v9, v3);
      v36 = *(a1 + 32);
      v37 = *v36;
      *v36 = v35;
      if (v37)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref((v37 + 8));
      }

      LOBYTE(v12) = 0;
      break;
    }

    __break(1u);
LABEL_68:
    if (v11)
    {
LABEL_69:
      (*(*v19 + 16))(v19);
    }

LABEL_40:
    v7 = *v13;
    v11 = *(v13 + 8);
LABEL_41:
    *v13 = 0;
    *(v13 + 8) = 0;
    v24 = *(v13 + 24);
    if (v24 && v11)
    {
      (*(*v24 + 16))(v24, v7);
    }

    v25 = *v13;
    v26 = *(v13 + 8);
    *v13 = 0;
    *(v13 + 8) = 0;
    v27 = *(v13 + 24);
    if (v27 && v26)
    {
      (*(*v27 + 16))(v27, v25);
    }

    v1 = 14;
LABEL_44:
    IPC::Decoder::~Decoder(v13);
    bmalloc::api::tzoneFree(v28, v29);
    v12 = 0;
    v14 = 1;
    v13 = v1;
LABEL_45:
    if (!v63)
    {
      v30 = v62;
      v62 = 0;
      if (v30)
      {
        IPC::Decoder::~Decoder(v30);
        bmalloc::api::tzoneFree(v40, v41);
      }
    }
  }

  **(a1 + 16) = v12;
  if (v13)
  {
    IPC::Decoder::~Decoder(v13);
    bmalloc::api::tzoneFree(v42, v43);
  }

LABEL_59:
  WebCore::MediaEngineSupportParameters::~MediaEngineSupportParameters(&v44, v7);
  result = v60;
  v60 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v38);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::MediaSourcePrivateRemote::addSourceBuffer(WebCore::ContentType const&,WebCore::MediaSourceConfiguration const&,WTF::RefPtr<WebCore::SourceBufferPrivate,WTF::RawPtrTraits<WebCore::SourceBufferPrivate>,WTF::DefaultRefDerefTraits<WebCore::SourceBufferPrivate>> &)::$_1,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1127E28;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref((v3 + 8));
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivate,(WTF::DestructionThread)0>::deref((v4 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::MediaSourcePrivateRemote::addSourceBuffer(WebCore::ContentType const&,WebCore::MediaSourceConfiguration const&,WTF::RefPtr<WebCore::SourceBufferPrivate,WTF::RawPtrTraits<WebCore::SourceBufferPrivate>,WTF::DefaultRefDerefTraits<WebCore::SourceBufferPrivate>> &)::$_1,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1127E28;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref((v3 + 8));
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivate,(WTF::DestructionThread)0>::deref((v4 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

unint64_t WTF::Detail::CallableWrapper<WebKit::MediaSourcePrivateRemote::addSourceBuffer(WebCore::ContentType const&,WebCore::MediaSourceConfiguration const&,WTF::RefPtr<WebCore::SourceBufferPrivate,WTF::RawPtrTraits<WebCore::SourceBufferPrivate>,WTF::DefaultRefDerefTraits<WebCore::SourceBufferPrivate>> &)::$_1,void>::call(unint64_t result)
{
  v1 = *(result + 16);
  v2 = (result + 24);
  v3 = *(v1 + 28);
  if (v3 == *(v1 + 24))
  {
    result = WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v1 + 16, v3 + 1, v2);
    v2 = result;
    v3 = *(v1 + 28);
  }

  v4 = (*(v1 + 16) + 8 * v3);
  v5 = *v2;
  *v2 = 0;
  *v4 = v5;
  *(v1 + 28) = v3 + 1;
  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::MediaSourcePrivateRemote::shutdown(void)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1127E50;
  a1[1] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivate,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::MediaSourcePrivateRemote::shutdown(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1127E50;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivate,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_uchar **WTF::Detail::CallableWrapper<WebKit::MediaSourcePrivateRemote::shutdown(void)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = v1[22];
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, v1[21], &v11);
    if (v11)
    {
      v4 = *(v11 + 32);
      v5 = v1[24];
      v6 = IPC::Encoder::operator new(0x238, v3);
      *v6 = 1501;
      *(v6 + 2) = 0;
      *(v6 + 3) = 0;
      *(v6 + 1) = v5;
      *(v6 + 68) = 0;
      *(v6 + 70) = 0;
      *(v6 + 69) = 0;
      IPC::Encoder::encodeHeader(v6);
      v12 = v6;
      IPC::Connection::sendMessageImpl(v4, &v12, 0, 0);
      result = v12;
      v12 = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v7);
        result = bmalloc::api::tzoneFree(v9, v10);
      }

      v8 = v11;
      v11 = 0;
      if (v8)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v8 + 24), v7);
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::MediaSourcePrivateRemote::durationChanged(WTF::MediaTime const&)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1127E78;
  a1[1] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivate,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::MediaSourcePrivateRemote::durationChanged(WTF::MediaTime const&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1127E78;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivate,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_uchar **WTF::Detail::CallableWrapper<WebKit::MediaSourcePrivateRemote::durationChanged(WTF::MediaTime const&)::$_0,void>::call(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  result = *(v3 + 176);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(v3 + 168), &v12);
  }

  else
  {
    v12 = 0;
  }

  v5 = atomic_load((v3 + 224));
  if ((v5 & 1) == 0)
  {
    if (!v12)
    {
      return result;
    }

    v6 = *(v12 + 32);
    v7 = *(v3 + 192);
    v8 = IPC::Encoder::operator new(0x238, a2);
    *v8 = 1497;
    *(v8 + 2) = 0;
    *(v8 + 3) = 0;
    *(v8 + 1) = v7;
    *(v8 + 68) = 0;
    *(v8 + 70) = 0;
    *(v8 + 69) = 0;
    IPC::Encoder::encodeHeader(v8);
    v13 = v8;
    IPC::ArgumentCoder<WTF::MediaTime,void>::encode(v8, (a1 + 24));
    IPC::Connection::sendMessageImpl(v6, &v13, 0, 0);
    result = v13;
    v13 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, a2);
      result = bmalloc::api::tzoneFree(v10, v11);
    }
  }

  v9 = v12;
  v12 = 0;
  if (v9)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v9 + 24), a2);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::MediaSourcePrivateRemote::bufferedChanged(WebCore::PlatformTimeRanges const&)::$_0,void>::~CallableWrapper(uint64_t a1, void *a2)
{
  *a1 = &unk_1F1127EA0;
  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    WTF::fastFree(v3, a2);
  }

  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivate,(WTF::DestructionThread)0>::deref((v4 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::MediaSourcePrivateRemote::bufferedChanged(WebCore::PlatformTimeRanges const&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1127EA0;
  v3 = *(this + 3);
  if (v3)
  {
    *(this + 3) = 0;
    *(this + 8) = 0;
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivate,(WTF::DestructionThread)0>::deref((v4 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_uchar **WTF::Detail::CallableWrapper<WebKit::MediaSourcePrivateRemote::bufferedChanged(WebCore::PlatformTimeRanges const&)::$_0,void>::call(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  result = *(v3 + 176);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(v3 + 168), &v12);
  }

  else
  {
    v12 = 0;
  }

  v5 = atomic_load((v3 + 224));
  if ((v5 & 1) == 0)
  {
    if (!v12)
    {
      return result;
    }

    v6 = *(v12 + 32);
    v7 = *(v3 + 192);
    v8 = IPC::Encoder::operator new(0x238, a2);
    *v8 = 1496;
    *(v8 + 2) = 0;
    *(v8 + 3) = 0;
    *(v8 + 1) = v7;
    *(v8 + 68) = 0;
    *(v8 + 70) = 0;
    *(v8 + 69) = 0;
    IPC::Encoder::encodeHeader(v8);
    v13 = v8;
    IPC::VectorArgumentCoder<false,WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v8, a1 + 24);
    IPC::Connection::sendMessageImpl(v6, &v13, 0, 0);
    result = v13;
    v13 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, a2);
      result = bmalloc::api::tzoneFree(v10, v11);
    }
  }

  v9 = v12;
  v12 = 0;
  if (v9)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v9 + 24), a2);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::MediaSourcePrivateRemote::markEndOfStream(WebCore::MediaSourcePrivateEndOfStreamStatus)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1127EC8;
  a1[1] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivate,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::MediaSourcePrivateRemote::markEndOfStream(WebCore::MediaSourcePrivateEndOfStreamStatus)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1127EC8;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivate,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_uchar **WTF::Detail::CallableWrapper<WebKit::MediaSourcePrivateRemote::markEndOfStream(WebCore::MediaSourcePrivateEndOfStreamStatus)::$_0,void>::call(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  result = *(v3 + 176);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(v3 + 168), &v13);
  }

  else
  {
    v13 = 0;
  }

  v5 = atomic_load((v3 + 224));
  if ((v5 & 1) == 0)
  {
    if (!v13)
    {
      return result;
    }

    v6 = *(v13 + 32);
    v7 = *(a1 + 24);
    v8 = *(v3 + 192);
    v9 = IPC::Encoder::operator new(0x238, a2);
    *v9 = 1498;
    *(v9 + 2) = 0;
    *(v9 + 3) = 0;
    *(v9 + 1) = v8;
    *(v9 + 68) = 0;
    *(v9 + 70) = 0;
    *(v9 + 69) = 0;
    IPC::Encoder::encodeHeader(v9);
    v14 = v9;
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v9, v7);
    IPC::Connection::sendMessageImpl(v6, &v14, 0, 0);
    result = v14;
    v14 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, a2);
      result = bmalloc::api::tzoneFree(v11, v12);
    }
  }

  v10 = v13;
  v13 = 0;
  if (v10)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v10 + 24), a2);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::MediaSourcePrivateRemote::unmarkEndOfStream(void)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1127EF0;
  a1[1] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivate,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::MediaSourcePrivateRemote::unmarkEndOfStream(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1127EF0;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivate,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_uchar **WTF::Detail::CallableWrapper<WebKit::MediaSourcePrivateRemote::unmarkEndOfStream(void)::$_0,void>::call(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  result = *(v2 + 176);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(v2 + 168), &v11);
  }

  else
  {
    v11 = 0;
  }

  v4 = atomic_load((v2 + 224));
  if ((v4 & 1) == 0)
  {
    if (!v11)
    {
      return result;
    }

    v5 = *(v11 + 32);
    v6 = *(v2 + 192);
    v7 = IPC::Encoder::operator new(0x238, a2);
    *v7 = 1502;
    *(v7 + 2) = 0;
    *(v7 + 3) = 0;
    *(v7 + 1) = v6;
    *(v7 + 68) = 0;
    *(v7 + 70) = 0;
    *(v7 + 69) = 0;
    IPC::Encoder::encodeHeader(v7);
    v12 = v7;
    IPC::Connection::sendMessageImpl(v5, &v12, 0, 0);
    result = v12;
    v12 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, a2);
      result = bmalloc::api::tzoneFree(v9, v10);
    }
  }

  v8 = v11;
  v11 = 0;
  if (v8)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v8 + 24), a2);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::MediaSourcePrivateRemote::setMediaPlayerReadyState(WebCore::MediaPlayerReadyState)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1127F18;
  a1[1] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivate,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::MediaSourcePrivateRemote::setMediaPlayerReadyState(WebCore::MediaPlayerReadyState)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1127F18;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivate,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_uchar **WTF::Detail::CallableWrapper<WebKit::MediaSourcePrivateRemote::setMediaPlayerReadyState(WebCore::MediaPlayerReadyState)::$_0,void>::call(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  result = *(v3 + 176);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(v3 + 168), &v13);
  }

  else
  {
    v13 = 0;
  }

  v5 = atomic_load((v3 + 224));
  if ((v5 & 1) == 0)
  {
    if (!v13)
    {
      return result;
    }

    v6 = *(v13 + 32);
    v7 = *(a1 + 24);
    v8 = *(v3 + 192);
    v9 = IPC::Encoder::operator new(0x238, a2);
    *v9 = 1499;
    *(v9 + 2) = 0;
    *(v9 + 3) = 0;
    *(v9 + 1) = v8;
    *(v9 + 68) = 0;
    *(v9 + 70) = 0;
    *(v9 + 69) = 0;
    IPC::Encoder::encodeHeader(v9);
    v14 = v9;
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v9, v7);
    IPC::Connection::sendMessageImpl(v6, &v14, 0, 0);
    result = v14;
    v14 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, a2);
      result = bmalloc::api::tzoneFree(v11, v12);
    }
  }

  v10 = v13;
  v13 = 0;
  if (v10)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v10 + 24), a2);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::MediaSourcePrivateRemote::setTimeFudgeFactor(WTF::MediaTime const&)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1127F40;
  a1[1] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivate,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::MediaSourcePrivateRemote::setTimeFudgeFactor(WTF::MediaTime const&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1127F40;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivate,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_uchar **WTF::Detail::CallableWrapper<WebKit::MediaSourcePrivateRemote::setTimeFudgeFactor(WTF::MediaTime const&)::$_0,void>::call(void *a1, void *a2)
{
  v3 = a1[2];
  result = *(v3 + 176);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(v3 + 168), &v13);
  }

  else
  {
    v13 = 0;
  }

  v5 = atomic_load((v3 + 224));
  if ((v5 & 1) == 0)
  {
    if (!v13)
    {
      return result;
    }

    v6 = *(v13 + 32);
    v7 = *(v3 + 192);
    v8 = IPC::Encoder::operator new(0x238, a2);
    *v8 = 1500;
    *(v8 + 2) = 0;
    *(v8 + 3) = 0;
    *(v8 + 1) = v7;
    *(v8 + 68) = 0;
    *(v8 + 70) = 0;
    *(v8 + 69) = 0;
    IPC::Encoder::encodeHeader(v8);
    v14 = v8;
    IPC::ArgumentCoder<WTF::MediaTime,void>::encode(v8, a1 + 3);
    IPC::Connection::sendMessageImpl(v6, &v14, 0, 0);
    result = v14;
    v14 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, a2);
      result = bmalloc::api::tzoneFree(v11, v12);
    }

    v9 = a1[3];
    *(v3 + 133) = *(a1 + 29);
    *(v3 + 128) = v9;
  }

  v10 = v13;
  v13 = 0;
  if (v10)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v10 + 24), a2);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteAudioDestinationProxy::startRenderingThread(void)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1127F68;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteAudioDestinationProxy,(WTF::DestructionThread)2>::deref((v2 + 176));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteAudioDestinationProxy::startRenderingThread(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1127F68;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteAudioDestinationProxy,(WTF::DestructionThread)2>::deref((v3 + 176));
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteAudioDestinationProxy::startRenderingThread(void)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  do
  {
    result = MEMORY[0x19EB16340](*(v1 + 236));
    v3 = atomic_load((v1 + 292));
    if (v3)
    {
      break;
    }

    v4 = *(v1 + 280);
    if (!v4)
    {
      break;
    }

    if (*(v4 + 8) != 4)
    {
      result = 84;
      __break(0xC471u);
      return result;
    }

    v5 = atomic_load(*(v4 + 16));
    v6 = *(v1 + 288);
    if (v5 < v6)
    {
      v7 = ~v6;
    }

    else
    {
      v7 = -v6;
    }

    *(v1 + 288) = v5;
    for (i = v7 + v5; i; *(v1 + 224) += v10)
    {
      v9 = mach_absolute_time();
      WTF::MonotonicTime::fromMachAbsoluteTime(v9);
      if (i >= 0x1000)
      {
        v10 = 4096;
      }

      else
      {
        v10 = i;
      }

      v11 = *(*(v1 + 216) + 40);
      v12 = *(*(v1 + 56) + 28);
      if (v12 >= *v11)
      {
        v13 = *v11;
      }

      else
      {
        v13 = v12;
      }

      if (v13)
      {
        v14 = 0;
        v15 = v11 + 4;
        do
        {
          WebCore::AudioBus::setChannelMemory();
          ++v14;
          v15 += 4;
        }

        while (v13 != v14);
      }

      i -= v10;
      WebCore::AudioDestinationResampler::pullRendered(v1);
      WebCore::CARingBuffer::store(*(v1 + 208), *(*(v1 + 216) + 40));
      result = WebCore::AudioDestinationResampler::render();
    }

    v16 = atomic_load((v1 + 292));
  }

  while ((v16 & 1) == 0);
  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteAudioDestinationManager::CreateAudioDestination,WebKit::RemoteAudioDestinationProxy::connection(void)::$_0>(WebKit::RemoteAudioDestinationProxy::connection(void)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1127F90;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteAudioDestinationProxy,(WTF::DestructionThread)2>::deref((v2 + 176));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteAudioDestinationManager::CreateAudioDestination,WebKit::RemoteAudioDestinationProxy::connection(void)::$_0>(WebKit::RemoteAudioDestinationProxy::connection(void)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1127F90;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteAudioDestinationProxy,(WTF::DestructionThread)2>::deref((v3 + 176));
  }

  return WTF::fastFree(this, a2);
}

unint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteAudioDestinationManager::CreateAudioDestination,WebKit::RemoteAudioDestinationProxy::connection(void)::$_0>(WebKit::RemoteAudioDestinationProxy::connection(void)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(unint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = result;
  if (a3)
  {
    v4 = *a3;
    if (*a3)
    {
      result = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
      if (v5)
      {
        v4 = result;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  *(*(v3 + 8) + 256) = v4;
  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteAudioDestinationProxy::startRendering(WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1127FB8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteAudioDestinationProxy,(WTF::DestructionThread)2>::deref((v3 + 176));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteAudioDestinationProxy::startRendering(WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1127FB8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteAudioDestinationProxy,(WTF::DestructionThread)2>::deref((v4 + 176));
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteAudioDestinationProxy::startRendering(WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void>::call(uint64_t a1)
{
  WebCore::AudioDestinationResampler::setIsPlaying(*(a1 + 8));
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v2 + 16))(v2, 0);
  v3 = *(*v2 + 8);

  return v3(v2);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteAudioDestinationManager::StartAudioDestination,WebKit::RemoteAudioDestinationProxy::startRendering(WTF::CompletionHandler<void ()(BOOL)> &&)::$_1>(WebKit::RemoteAudioDestinationProxy::startRendering(WTF::CompletionHandler<void ()(BOOL)> &&)::$_1 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::RemoteAudioDestinationProxy::startRendering(WTF::CompletionHandler<void ()(BOOL)> &&)::$_1,IPC::Decoder)#1},void,WebKit::RemoteAudioDestinationProxy::startRendering(WTF::CompletionHandler<void ()(BOOL)> &&)::$_1,IPC::Decoder>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1127FE0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteAudioDestinationProxy,(WTF::DestructionThread)2>::deref((v3 + 176));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteAudioDestinationManager::StartAudioDestination,WebKit::RemoteAudioDestinationProxy::startRendering(WTF::CompletionHandler<void ()(BOOL)> &&)::$_1>(WebKit::RemoteAudioDestinationProxy::startRendering(WTF::CompletionHandler<void ()(BOOL)> &&)::$_1 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::RemoteAudioDestinationProxy::startRendering(WTF::CompletionHandler<void ()(BOOL)> &&)::$_1,IPC::Decoder)#1},void,WebKit::RemoteAudioDestinationProxy::startRendering(WTF::CompletionHandler<void ()(BOOL)> &&)::$_1,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1127FE0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteAudioDestinationProxy,(WTF::DestructionThread)2>::deref((v4 + 176));
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteAudioDestinationManager::StartAudioDestination,WebKit::RemoteAudioDestinationProxy::startRendering(WTF::CompletionHandler<void ()(BOOL)> &&)::$_1>(WebKit::RemoteAudioDestinationProxy::startRendering(WTF::CompletionHandler<void ()(BOOL)> &&)::$_1 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::RemoteAudioDestinationProxy::startRendering(WTF::CompletionHandler<void ()(BOOL)> &&)::$_1,IPC::Decoder)#1},void,WebKit::RemoteAudioDestinationProxy::startRendering(WTF::CompletionHandler<void ()(BOOL)> &&)::$_1,IPC::Decoder>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3)
  {
    v5 = *a3;
    if (*a3)
    {
      v6 = a3[1];
      v7 = a3[2];
      if (v6 <= v7 - v5)
      {
        *a3 = 0;
        a3[1] = 0;
        v15 = a3;
        v18 = a3[3];
        if (v18)
        {
          if (v6)
          {
            (*(*v18 + 16))(v18);
            v5 = *v15;
            v6 = v15[1];
            goto LABEL_21;
          }
        }

        else
        {
          v6 = 0;
        }

        v5 = 0;
      }

      else
      {
        a3[2] = v7 + 1;
        if (v7)
        {
          v8 = *v7;
          if (v8 < 2)
          {
            v9 = v7 & 0xFFFFFFFFFFFFFFF8;
            v10 = ((v7 & 0xFFFFFFFFFFFFFFF8) + 8);
            if (v6 >= v10 - v5 && v6 - (v10 - v5) > 7)
            {
              a3[2] = v9 + 16;
              if (v10)
              {
                v12 = *v10;
                goto LABEL_28;
              }

              v15 = a3;
              v13 = v6;
              v14 = v5;
            }

            else
            {
              v13 = 0;
              v14 = 0;
              *a3 = 0;
              a3[1] = 0;
              v15 = a3;
              v16 = a3[3];
              if (v16)
              {
                (*(*v16 + 16))(v16);
                v14 = *v15;
                v13 = v15[1];
              }
            }

            *v15 = 0;
            v15[1] = 0;
            v17 = v15[3];
            if (v17 && v13)
            {
              (*(*v17 + 16))(v17, v14, v13);
            }

            goto LABEL_26;
          }

          v15 = a3;
          goto LABEL_25;
        }

        v15 = a3;
      }

LABEL_21:
      *v15 = 0;
      v15[1] = 0;
      v19 = v15[3];
      if (v19)
      {
        if (v6)
        {
          (*(*v19 + 16))(v19, v5);
          v5 = *v15;
          v6 = v15[1];
          goto LABEL_25;
        }
      }

      else
      {
        v6 = 0;
      }

      v5 = 0;
LABEL_25:
      *v15 = 0;
      v15[1] = 0;
      v20 = v15[3];
      if (v20 && v6)
      {
        (*(*v20 + 16))(v20, v5);
      }

LABEL_26:
      v21 = *v15;
      v22 = v15[1];
      *v15 = 0;
      v15[1] = 0;
      v23 = v15[3];
      if (v23 && v22)
      {
        (*(*v23 + 16))(v23, v21);
      }
    }
  }

  LOBYTE(v8) = 0;
  v12 = 0;
LABEL_28:
  WebCore::AudioDestinationResampler::setIsPlaying(*(a1 + 8));
  v24 = *(a1 + 16);
  *(*(a1 + 8) + 256) = v12;
  *(a1 + 16) = 0;
  (*(*v24 + 16))(v24, v8 & 1);
  v25 = *(*v24 + 8);

  return v25(v24);
}