void WebKit::WebProcess::processDidResume(WebKit::WebProcess *this)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED641030;
  if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 712) == 1)
    {
      v3 = *(this + 88);
    }

    else
    {
      v3 = 0;
    }

    v6 = 134218240;
    v7 = this;
    v8 = 2048;
    v9 = v3;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [sessionID=%llu] WebProcess::processDidResume:", &v6, 0x16u);
  }

  *(this + 544) = 0;
  if (*(this + 159) != 2)
  {
    WebKit::WebProcess::cancelMarkAllLayersVolatile(this);
    WebKit::WebProcess::unfreezeAllLayerTrees(this);
    WebKit::WebProcess::accessibilityRelayProcessSuspended(this, 0);
    v5 = WebCore::PlatformMediaSessionManager::singletonIfExists(v4);
    if (v5)
    {
      WebCore::PlatformMediaSessionManager::processDidResume(v5);
    }

    WebKit::WebProcess::resumeAllMediaBuffering(this);
  }
}

void *WebKit::WebProcess::resumeAllMediaBuffering(WebKit::WebProcess *this)
{
  result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(this + 17);
  v3 = result;
  v5 = v4;
  v6 = *(this + 17);
  if (v6)
  {
    v7 = (v6 + 16 * *(v6 - 4));
  }

  else
  {
    v7 = 0;
  }

  if (v7 != result)
  {
    do
    {
      result = WebKit::WebPage::resumeAllMediaBuffering(*(v3 + 8));
      do
      {
        v3 += 16;
      }

      while (v3 != v5 && (*v3 + 1) <= 1);
    }

    while (v3 != v7);
  }

  return result;
}

WTF::StringImpl *WebKit::WebProcess::sendPrewarmInformation(WebKit::WebProcess *this, const WTF::URL *a2)
{
  WebCore::RegistrableDomain::RegistrableDomain(&v14, a2);
  result = v14;
  if (v14)
  {
    if (*(v14 + 1))
    {
      if ((MEMORY[0x19EB01EF0]() & 1) == 0)
      {
        v5 = WebKit::AuxiliaryProcess::protectedParentProcessConnection(this, &v13);
        v6 = v13;
        WebCore::ProcessWarming::collectPrewarmInformation(v10, v5);
        v12[0] = &v14;
        v12[1] = v10;
        IPC::Connection::send<Messages::WebProcessProxy::DidCollectPrewarmInformation>(v6, v12, 0, 0, 0);
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v11, v7);
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v10, v8);
        v9 = v13;
        v13 = 0;
        if (v9)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v9);
        }
      }
    }

    result = v14;
    v14 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v3);
      }
    }
  }

  return result;
}

uint64_t IPC::Connection::send<Messages::WebProcessProxy::DidCollectPrewarmInformation>(uint64_t *a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 2907;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = a3;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v17 = v10;
  Messages::WebProcessProxy::DidCollectPrewarmInformation::encode<IPC::Encoder>(a2, v10);
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

void WebKit::WebProcess::pageDidEnterWindow(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v3, (a1 + 552), &v4);
  if (*(a1 + 624) == 1)
  {
    WebCore::DeferrableOneShotTimer::~DeferrableOneShotTimer((a1 + 560));
    *(a1 + 624) = 0;
  }

  *(a1 + 635) = 1;
}

uint64_t std::optional<WebCore::DeferrableOneShotTimer>::emplace[abi:sn200100]<WebKit::WebProcess &,void (WebKit::WebProcess::*)(void),WTF::Seconds const&,void>(WebCore::DeferrableOneShotTimer *a1, uint64_t a2, uint64_t *a3)
{
  if (*(a1 + 64) == 1)
  {
    WebCore::DeferrableOneShotTimer::~DeferrableOneShotTimer(a1);
    *(a1 + 64) = 0;
  }

  result = WebCore::DeferrableOneShotTimer::DeferrableOneShotTimer<WebKit::WebProcess>(a1, a2, *a3, a3[1], 10.0);
  *(result + 64) = 1;
  return result;
}

WebKit::WebProcess *WebKit::WebProcess::nonVisibleProcessEarlyMemoryCleanupTimerFired(WebKit::WebProcess *this)
{
  v1 = this;
  v2 = *(this + 69);
  if (!v2 || !*(v2 - 12))
  {
    WebKit::WebProcess::destroyDecodedDataForAllImages(this);
    WebKit::WebProcess::destroyRenderingResources(v1);

    return WTF::isIntegralOrPointerType(v1);
  }

  return this;
}

uint64_t WebKit::WebProcess::destroyDecodedDataForAllImages(WebKit::WebProcess *this)
{
  v2 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(this + 17);
  v3 = v2;
  v5 = v4;
  v6 = *(this + 17);
  if (v6)
  {
    v7 = (v6 + 16 * *(v6 - 4));
  }

  else
  {
    v7 = 0;
  }

  if (v7 == v2)
  {
LABEL_4:
    v8 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(this + 17);
    v10 = v8;
    v11 = v9;
    v12 = *(this + 17);
    if (v12)
    {
      v13 = (v12 + 16 * *(v12 - 4));
    }

    else
    {
      v13 = 0;
    }

    if (v13 != v8)
    {
      do
      {
        v8 = WebKit::WebPage::willDestroyDecodedDataForAllImages(*(v10 + 1), v9);
        do
        {
          v10 = (v10 + 16);
        }

        while (v10 != v11 && (*v10 + 1) <= 1);
      }

      while (v10 != v13);
    }

    v14 = WebCore::MemoryCache::singleton(v8);

    return MEMORY[0x1EEE54820](v14);
  }

  else
  {
    while (1)
    {
      result = WebKit::WebPage::isUsingUISideCompositing(v3[1]);
      if (!result)
      {
        break;
      }

      do
      {
        v3 += 2;
      }

      while (v3 != v5 && (*v3 + 1) <= 1);
      if (v3 == v7)
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::StorageAreaMap&>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v24 = a4;
  WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(*a3);
  v7 = *a2;
  if (*a2 || (WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, 0), (v7 = *a2) != 0))
  {
    v8 = *(v7 - 8);
  }

  else
  {
    v8 = 0;
  }

  result = WTF::ObjectIdentifierGenericBaseHash<unsigned long long>::hash(a3);
  v10 = result & v8;
  v11 = (v7 + 16 * (result & v8));
  v12 = *v11;
  v13 = *a3;
  if (*v11)
  {
    v20 = 0;
    v21 = 1;
    do
    {
      if (v12 == v13)
      {
        v22 = *a2;
        if (*a2)
        {
          v23 = *(v22 - 4);
        }

        else
        {
          v23 = 0;
        }

        v19 = 0;
        v18 = v22 + 16 * v23;
        goto LABEL_10;
      }

      if (v12 == -1)
      {
        v20 = v11;
      }

      v10 = (v10 + v21) & v8;
      v11 = (v7 + 16 * v10);
      v12 = *v11;
      ++v21;
    }

    while (*v11);
    if (v20)
    {
      *v20 = 0;
      v20[1] = 0;
      --*(*a2 - 16);
      v13 = *a3;
      v11 = v20;
    }
  }

  result = WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::translate<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>> WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WebKit::StorageAreaMap&>(WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WebKit::StorageAreaMap&)::{lambda(void)#1}>( v11,  v13,  &v24);
  v14 = *a2;
  if (*a2)
  {
    v15 = *(v14 - 12) + 1;
  }

  else
  {
    v15 = 1;
  }

  *(v14 - 12) = v15;
  v16 = (*(v14 - 16) + v15);
  v17 = *(v14 - 4);
  if (v17 > 0x400)
  {
    if (v17 > 2 * v16)
    {
      goto LABEL_9;
    }

LABEL_21:
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, v11);
    v11 = result;
    v14 = *a2;
    if (*a2)
    {
      v17 = *(v14 - 4);
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_9;
  }

  if (3 * v17 <= 4 * v16)
  {
    goto LABEL_21;
  }

LABEL_9:
  v18 = v14 + 16 * v17;
  v19 = 1;
LABEL_10:
  *a1 = v11;
  *(a1 + 8) = v18;
  *(a1 + 16) = v19;
  return result;
}

unsigned int *WebKit::WebProcess::unregisterStorageAreaMap(WebKit::WebProcess *this, WebKit::StorageAreaMap *a2)
{
  v6 = *(a2 + 3);
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(this + 87, &v6);
  v4 = *(this + 87);
  if (v4)
  {
    v5 = (v4 + 16 * *(v4 - 4));
    if (v5 == result)
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

    v5 = 0;
  }

  if (v5 != result)
  {
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(this + 87, result);
  }

  return result;
}

uint64_t WebKit::WebProcess::seedResourceLoadStatisticsForTesting(WebCore::ResourceLoadObserver *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = WebCore::ResourceLoadObserver::sharedIfExists(a1);
  if (v9)
  {
    (*(*v9 + 80))(v9, a2, a3, a4);
  }

  v10 = *a5;
  *a5 = 0;
  (*(*v10 + 16))(v10);
  v11 = *(*v10 + 8);

  return v11(v10);
}

unsigned int *WebKit::WebProcess::ensureAutomationSessionProxy(WebKit::WebProcess *this, const WTF::String *a2)
{
  v4 = WebKit::WebAutomationSessionProxy::operator new(0x48, a2);
  WebKit::WebAutomationSessionProxy::WebAutomationSessionProxy(v4, a2);
  result = *(this + 67);
  *(this + 67) = v4;
  if (result && atomic_fetch_add(result + 8, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 8);
    v6 = *(*result + 24);

    return v6();
  }

  return result;
}

unsigned int *WebKit::WebProcess::destroyAutomationSessionProxy(WebKit::WebProcess *this)
{
  result = *(this + 67);
  *(this + 67) = 0;
  if (result)
  {
    if (atomic_fetch_add(result + 8, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 8);
      return (*(*result + 24))();
    }
  }

  return result;
}

uint64_t *WebKit::WebProcess::prefetchDNS(uint64_t *this, WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  if (*a2 && *(*a2 + 1))
  {
    v4 = this;
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(this + 57, a2, a3, v6);
    if (v7 == 1)
    {
      v5 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v4) + 24);
      v6[0] = a2;
      IPC::Connection::send<Messages::NetworkConnectionToWebProcess::PrefetchDNS>(v5, v6);
    }

    return PAL::HysteresisActivity::impulse((v4 + 464));
  }

  return this;
}

IPC::Encoder *IPC::Connection::send<Messages::NetworkConnectionToWebProcess::PrefetchDNS>(uint64_t *a1, uint64_t **a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 466;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v4, *a2);
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

uint64_t WebKit::WebProcess::clearCachedPage(WebCore::BackForwardCache *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  WebCore::BackForwardCache::singleton(a1);
  WebCore::BackForwardCache::remove();
  v5 = *a4;
  *a4 = 0;
  (*(*v5 + 16))(v5);
  v6 = *(*v5 + 8);

  return v6(v5);
}

uint64_t WebKit::WebProcess::libWebRTCNetwork(WebKit::WebProcess *this, void *a2)
{
  result = *(this + 56);
  if (!result)
  {
    v4 = WebKit::LibWebRTCNetwork::operator new(0xF0, a2);
    WebKit::LibWebRTCNetwork::LibWebRTCNetwork(v4, this);
    if (*(this + 56))
    {
      result = 1469;
      __break(0xC471u);
    }

    else
    {
      std::unique_ptr<WebKit::LibWebRTCNetwork>::reset[abi:sn200100](this + 56, v4);
      return *(this + 56);
    }
  }

  return result;
}

uint64_t WebKit::WebProcess::protectedLibWebRTCNetwork@<X0>(WebKit::WebProcess *this@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = WebKit::WebProcess::libWebRTCNetwork(this, a2);
  if (*(result + 24))
  {
    *a3 = result;
  }

  else
  {
    result = 120;
    __break(0xC471u);
  }

  return result;
}

atomic_ullong *WebKit::WebProcess::establishRemoteWorkerContextConnectionToNetworkProcess(atomic_ullong **a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, WebKit::WebPage *a6, atomic_uint **a7, __int128 *a8, uint64_t *a9, uint64_t a10)
{
  v33 = *MEMORY[0x1E69E9840];
  v17 = WebKit::WebProcess::ensureNetworkProcessConnection(a1);
  v18 = *(v17 + 3);
  while (1)
  {
    v19 = *v18;
    if ((*v18 & 1) == 0)
    {
      break;
    }

    v20 = *v18;
    atomic_compare_exchange_strong_explicit(v18, &v20, v19 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v20 == v19)
    {
      goto LABEL_6;
    }
  }

  v17 = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v18);
LABEL_6:
  v31 = v18;
  if (a2 == 2)
  {
    WebCore::SharedWorkerContextManager::singleton(v17);
    v27 = WebKit::WebSharedWorkerContextManagerConnection::operator new(0xA0, v26);
    *&v32[0] = WebKit::WebSharedWorkerContextManagerConnection::WebSharedWorkerContextManagerConnection(v27, &v31, a7, a3, a4, a5, a6, a9);
    WebCore::SharedWorkerContextManager::setConnection();
    v28 = *&v32[0];
    *&v32[0] = 0;
    if (v28)
    {
      v28 = (*(*v28 + 8))(v28);
    }

    v29 = WebCore::SharedWorkerContextManager::singleton(v28);
    v25 = *v29;
    if (*v29)
    {
      (**v25)(*v29);
    }

LABEL_16:
    (*(*v25 + 32))(v25, a10);
    result = (*(*v25 + 8))(v25);
    v18 = v31;
    if (!v31)
    {
      return result;
    }

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v18);
  }

  if (a2 == 1)
  {
    WebCore::SWContextManager::singleton(v17);
    v21 = a8[1];
    v32[0] = *a8;
    v32[1] = v21;
    v32[2] = a8[2];
    v22 = WTF::fastMalloc(0x100);
    *&v32[0] = WebKit::WebSWContextManagerConnection::WebSWContextManagerConnection(v22, &v31, a7, v32, a3, a4, a5, a6, a9);
    WebCore::SWContextManager::setConnection();
    v23 = *&v32[0];
    *&v32[0] = 0;
    if (v23)
    {
      v23 = (*(*v23 + 8))(v23);
    }

    v24 = WebCore::SWContextManager::singleton(v23);
    v25 = *(v24 + 16);
    if (v25)
    {
      (**v25)(*(v24 + 16));
    }

    goto LABEL_16;
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v18);
}

uint64_t WebKit::WebProcess::registerServiceWorkerClients(atomic_ullong **a1, uint64_t *a2)
{
  v3 = *(WebKit::WebProcess::ensureNetworkProcessConnection(a1) + 24);
  v4 = *a2;
  *a2 = 0;
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F1122708;
  v5[1] = v4;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v6 = v5;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v9 = IPC::Encoder::operator new(0x238, v8);
    *v9 = 463;
    *(v9 + 68) = 0;
    *(v9 + 70) = 0;
    *(v9 + 69) = 0;
    *(v9 + 2) = 0;
    *(v9 + 3) = 0;
    *(v9 + 1) = 0;
    IPC::Encoder::encodeHeader(v9);
    v15[1] = IdentifierInternal;
    v16 = v9;
    v15[0] = v6;
    IPC::Connection::sendMessageWithAsyncReply(v3, &v16, v15, 0, 0);
    v11 = v15[0];
    v15[0] = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    result = v16;
    v16 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v10);
      return bmalloc::api::tzoneFree(v13, v14);
    }
  }

  return result;
}

uint64_t WebKit::WebProcess::removeServiceWorkerRegistration(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  v3 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned int>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned int,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned int,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>((a1 + 688), &v10);
  v4 = v3;
  v5 = *(a1 + 688);
  if (v5)
  {
    v6 = v5 + 16 * *(v5 - 4);
  }

  else
  {
    v6 = 0;
  }

  if (v6 == v3)
  {
    return 0;
  }

  v7 = *(v3 + 8) - 1;
  if (*(v3 + 8) != 1)
  {
    result = 0;
    *(v4 + 8) = v7;
    return result;
  }

  if (v5)
  {
    v9 = v5 + 16 * *(v5 - 4);
    if (v9 == v3)
    {
      return 1;
    }

LABEL_13:
    if (v9 != v3)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned int>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned int,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove((a1 + 688), v3);
    }

    return 1;
  }

  if (v3)
  {
    v9 = 0;
    goto LABEL_13;
  }

  return 1;
}

WebKit::SandboxExtension *WebKit::WebProcess::grantUserMediaDeviceSandboxExtensions(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v47 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 12))
  {
    goto LABEL_64;
  }

  v4 = 0;
  v5 = (a1 + 664);
  do
  {
    WebKit::MediaDeviceSandboxExtensions::operator[](a2, v4, &v39);
    v6 = v40;
    if (v40)
    {
      ++*v40;
      v32 = *(v6 + 2);
      *(v6 + 2) = v32 + 1;
      if (!v32)
      {
        WebKit::SandboxExtensionImpl::consume(*(v6 + 1));
      }

      WTF::RefCounted<WebKit::SandboxExtension>::deref(v6);
    }

    else if (!MEMORY[0x10]++)
    {
      WebKit::SandboxExtensionImpl::consume(MEMORY[8]);
    }

    v8 = qword_1ED641580;
    if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(v3 + 712) == 1 ? *(v3 + 704) : 0;
      WTF::String::utf8();
      v12 = v38 ? v38 + 16 : 0;
      *buf = 134218498;
      v42 = v3;
      v43 = 2048;
      v44 = v11;
      v45 = 2080;
      v46 = v12;
      _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "%p - [sessionID=%llu] WebProcess::grantUserMediaDeviceSandboxExtensions: granted extension %s", buf, 0x20u);
      v13 = v38;
      v38 = 0;
      if (v13)
      {
        if (*v13 == 1)
        {
          WTF::fastFree(v13, v9);
        }

        else
        {
          --*v13;
        }
      }
    }

    v14 = v40;
    if (v40)
    {
      ++*v40;
    }

    if (v39 == -1 || !v39)
    {
      __break(0xC471u);
      JUMPOUT(0x19E172870);
    }

    v15 = *v5;
    if (*v5 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebKit::SandboxExtension,WTF::RawPtrTraits<WebKit::SandboxExtension>,WTF::DefaultRefDerefTraits<WebKit::SandboxExtension>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebKit::SandboxExtension,WTF::RawPtrTraits<WebKit::SandboxExtension>,WTF::DefaultRefDerefTraits<WebKit::SandboxExtension>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<WebKit::SandboxExtension,WTF::RawPtrTraits<WebKit::SandboxExtension>,WTF::DefaultRefDerefTraits<WebKit::SandboxExtension>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<WebKit::SandboxExtension,WTF::RawPtrTraits<WebKit::SandboxExtension>,WTF::DefaultRefDerefTraits<WebKit::SandboxExtension>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(v5), (v15 = *v5) != 0))
    {
      v16 = *(v15 - 8);
    }

    else
    {
      v16 = 0;
    }

    v17 = *(v39 + 4);
    if (v17 < 0x100)
    {
      v18 = WTF::StringImpl::hashSlowCase(v39);
    }

    else
    {
      v18 = v17 >> 8;
    }

    v19 = 0;
    for (i = 1; ; ++i)
    {
      v21 = v18 & v16;
      v22 = (v15 + 16 * (v18 & v16));
      v23 = *v22;
      if (*v22 == -1)
      {
        v19 = (v15 + 16 * v21);
        goto LABEL_31;
      }

      if (!v23)
      {
        if (v19)
        {
          v23 = 0;
          *v19 = 0;
          v19[1] = 0;
          --*(*v5 - 16);
          v22 = v19;
        }

        v24 = v39;
        v3 = a1;
        if (v39)
        {
          atomic_fetch_add_explicit(v39, 2u, memory_order_relaxed);
          v23 = *v22;
        }

        *v22 = v24;
        if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v23, v9);
        }

        v25 = v22[1];
        v22[1] = v14;
        if (v25)
        {
          WTF::RefCounted<WebKit::SandboxExtension>::deref(v25);
        }

        v26 = *v5;
        if (*v5)
        {
          v27 = *(v26 - 12) + 1;
        }

        else
        {
          v27 = 1;
        }

        *(v26 - 12) = v27;
        v28 = (*(v26 - 16) + v27);
        v29 = *(v26 - 4);
        if (v29 > 0x400)
        {
          if (v29 > 2 * v28)
          {
            goto LABEL_49;
          }
        }

        else if (3 * v29 > 4 * v28)
        {
          goto LABEL_49;
        }

        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebKit::SandboxExtension,WTF::RawPtrTraits<WebKit::SandboxExtension>,WTF::DefaultRefDerefTraits<WebKit::SandboxExtension>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebKit::SandboxExtension,WTF::RawPtrTraits<WebKit::SandboxExtension>,WTF::DefaultRefDerefTraits<WebKit::SandboxExtension>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<WebKit::SandboxExtension,WTF::RawPtrTraits<WebKit::SandboxExtension>,WTF::DefaultRefDerefTraits<WebKit::SandboxExtension>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<WebKit::SandboxExtension,WTF::RawPtrTraits<WebKit::SandboxExtension>,WTF::DefaultRefDerefTraits<WebKit::SandboxExtension>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(v5);
        goto LABEL_49;
      }

      if (WTF::equal(v23, v39, v10))
      {
        break;
      }

LABEL_31:
      v18 = i + v21;
    }

    v3 = a1;
    if (v14)
    {
      WTF::RefCounted<WebKit::SandboxExtension>::deref(v14);
    }

LABEL_49:
    v30 = v40;
    v40 = 0;
    if (v30)
    {
      WTF::RefCounted<WebKit::SandboxExtension>::deref(v30);
    }

    v31 = v39;
    v39 = 0;
    if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v31, v9);
    }

    ++v4;
  }

  while (v4 < *(a2 + 12));
LABEL_64:
  if (*(a2 + 32))
  {
    v33 = WTF::fastMalloc(0x18);
    *v33 = 1;
    v34 = *(a2 + 32);
    *(a2 + 32) = 0;
    *(v33 + 8) = v34;
    *(v33 + 16) = 0;
  }

  else
  {
    v33 = 0;
  }

  result = *(v3 + 672);
  *(v3 + 672) = v33;
  if (result)
  {
    result = WTF::RefCounted<WebKit::SandboxExtension>::deref(result);
    v33 = *(v3 + 672);
    if (v33)
    {
      goto LABEL_71;
    }
  }

  else
  {
    if (!v33)
    {
      return result;
    }

LABEL_71:
    ++*v33;
    v36 = *(v33 + 16);
    *(v33 + 16) = v36 + 1;
    if (!v36)
    {
      WebKit::SandboxExtensionImpl::consume(*(v33 + 8));
    }

    return WTF::RefCounted<WebKit::SandboxExtension>::deref(v33);
  }

  return result;
}

WTF *WebKit::WebProcess::revokeUserMediaDeviceSandboxExtensions(WTF *result, unsigned int *a2, const WTF::StringImpl *a3)
{
  v3 = result;
  v39 = *MEMORY[0x1E69E9840];
  v4 = a2[3];
  if (v4)
  {
    v5 = *a2;
    v6 = *a2 + 8 * v4;
    v7 = (result + 664);
    do
    {
      v8 = *v7;
      if (*v7)
      {
        v9 = *v5;
        if (*v5 == -1 || !v9)
        {
          __break(0xC471u);
          JUMPOUT(0x19E172BC0);
        }

        v10 = *(v8 - 2);
        v11 = *(v9 + 4);
        if (v11 < 0x100)
        {
          v12 = WTF::StringImpl::hashSlowCase(v9);
        }

        else
        {
          v12 = v11 >> 8;
        }

        for (i = 0; ; v12 = i + v14)
        {
          v14 = v12 & v10;
          result = v8[2 * v14];
          if (result != -1)
          {
            if (!result)
            {
              v15 = *v7;
              if (!*v7)
              {
                goto LABEL_46;
              }

              v16 = &v15[2 * *(v15 - 1)];
              goto LABEL_16;
            }

            result = WTF::equal(result, *v5, a3);
            if (result)
            {
              break;
            }
          }

          ++i;
        }

        v16 = &v8[2 * v14];
        v15 = *v7;
        if (!*v7)
        {
          goto LABEL_17;
        }

LABEL_16:
        v15 += 2 * *(v15 - 1);
LABEL_17:
        if (v15 != v16)
        {
          v17 = v16[1];
          v16[1] = 0;
          v18 = *v7;
          if (!*v7 || (v18 += 2 * *(v18 - 1), v18 != v16))
          {
            if (v18 != v16)
            {
              v19 = *v16;
              *v16 = -1;
              if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v19, a2);
              }

              result = v16[1];
              v16[1] = 0;
              if (result)
              {
                result = WTF::RefCounted<WebKit::SandboxExtension>::deref(result);
              }

              v20 = *v7;
              v21 = vadd_s32(*(*v7 - 2), 0xFFFFFFFF00000001);
              *(v20 - 2) = v21;
              v22 = *(v20 - 1);
              if (6 * v21.i32[1] < v22 && v22 >= 9)
              {
                result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebKit::SandboxExtension,WTF::RawPtrTraits<WebKit::SandboxExtension>,WTF::DefaultRefDerefTraits<WebKit::SandboxExtension>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebKit::SandboxExtension,WTF::RawPtrTraits<WebKit::SandboxExtension>,WTF::DefaultRefDerefTraits<WebKit::SandboxExtension>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<WebKit::SandboxExtension,WTF::RawPtrTraits<WebKit::SandboxExtension>,WTF::DefaultRefDerefTraits<WebKit::SandboxExtension>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<WebKit::SandboxExtension,WTF::RawPtrTraits<WebKit::SandboxExtension>,WTF::DefaultRefDerefTraits<WebKit::SandboxExtension>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(v3 + 83, v22 >> 1);
              }
            }
          }

          if (v17)
          {
            v24 = *(v17 + 2) - 1;
            *(v17 + 2) = v24;
            if (!v24)
            {
              *(*(v17 + 1) + 8) = 0;
              sandbox_extension_release();
            }

            v25 = qword_1ED641580;
            if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_DEFAULT))
            {
              v26 = *(v3 + 712) == 1 ? *(v3 + 88) : 0;
              WTF::String::utf8();
              v27 = v32 ? v32 + 16 : 0;
              *buf = 134218498;
              v34 = v3;
              v35 = 2048;
              v36 = v26;
              v37 = 2080;
              v38 = v27;
              _os_log_impl(&dword_19D52D000, v25, OS_LOG_TYPE_DEFAULT, "%p - [sessionID=%llu] WebProcess::revokeUserMediaDeviceSandboxExtensions: revoked extension %s", buf, 0x20u);
              v29 = v32;
              v32 = 0;
              if (v29)
              {
                if (*v29 == 1)
                {
                  WTF::fastFree(v29, v28);
                }

                else
                {
                  --*v29;
                }
              }
            }

            result = WTF::RefCounted<WebKit::SandboxExtension>::deref(v17);
          }
        }
      }

LABEL_46:
      ++v5;
    }

    while (v5 != v6);
  }

  v30 = *(v3 + 84);
  if (v30)
  {
    ++*v30;
    v31 = *(v30 + 2) - 1;
    *(v30 + 2) = v31;
    if (!v31)
    {
      *(*(v30 + 1) + 8) = 0;
      sandbox_extension_release();
    }

    return WTF::RefCounted<WebKit::SandboxExtension>::deref(v30);
  }

  return result;
}

uint64_t WebKit::WebProcess::areAllPagesThrottleable(WebKit::WebProcess *this)
{
  v2 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(this + 17);
  v4 = *(this + 17);
  if (v4)
  {
    v5 = (v4 + 16 * *(v4 - 4));
  }

  else
  {
    v5 = 0;
  }

  return std::__all_of[abi:sn200100]<WTF::HashTableConstValuesIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableConstValuesIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,std::identity,WebKit::WebProcess::areAllPagesThrottleable(void)::$_0>( v2,  v3,  v5);
}

void WebKit::WebProcess::setAppBadge(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = a4;
  v16 = a5;
  if (WebCore::DeprecatedGlobalSettings::builtInNotificationsEnabled(a1))
  {
    if (*(a1 + 712) == 1)
    {
      v8 = *(WebKit::WebProcess::ensureNetworkProcessConnection(a1) + 24);
      v13 = a3;
      v14 = &v15;
      if (*(a1 + 712))
      {
        IPC::Connection::send<Messages::NotificationManagerMessageHandler::SetAppBadge>(v8, &v13, *(a1 + 704), 0, 0);
      }

      else
      {
        __break(1u);
      }
    }
  }

  else if (a2)
  {
    ++a2[4];
    WebKit::WebFrame::fromCoreFrame(a2, &v13);
    v9 = v13;
    if (v13)
    {
      WebKit::WebFrame::setAppBadge(v13, a3, v15, v16);
      CFRelease(*(v9 + 8));
    }

    if (a2[4] == 1)
    {
      v11 = *(*a2 + 8);

      v11(a2);
    }

    else
    {
      --a2[4];
    }
  }

  else
  {
    WebKit::AuxiliaryProcess::protectedParentProcessConnection(a1, &v12);
    v13 = a3;
    v14 = &v15;
    IPC::Connection::send<Messages::WebProcessProxy::SetAppBadgeFromWorker>(v12, &v13, 0, 0, 0);
    v10 = v12;
    v12 = 0;
    if (v10)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v10);
    }
  }
}

uint64_t IPC::Connection::send<Messages::NotificationManagerMessageHandler::SetAppBadge>(uint64_t *a1, uint64_t *a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 828;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = a3;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v17 = v10;
  IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::encode(v10, *a2);
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long> const&>(v10, a2[1]);
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

uint64_t IPC::Connection::send<Messages::WebProcessProxy::SetAppBadgeFromWorker>(uint64_t *a1, uint64_t *a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 2920;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = a3;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v17 = v10;
  IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::encode(v10, *a2);
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long> const&>(v10, a2[1]);
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

uint64_t WebKit::WebProcess::setThirdPartyCookieBlockingMode(WebKit::WebProcess *a1, int a2, uint64_t *a3)
{
  if (*(a1 + 720) != a2)
  {
    *(a1 + 720) = a2;
    if (a2)
    {
      WebKit::WebProcess::updateCachedCookiesEnabled(a1);
    }
  }

  v4 = *a3;
  *a3 = 0;
  (*(*v4 + 16))(v4);
  v5 = *(*v4 + 8);

  return v5(v4);
}

uint64_t WebKit::WebProcess::updateCachedCookiesEnabled(WebKit::WebProcess *this)
{
  result = WebCore::Document::allDocuments(&v8, this);
  v2 = v9;
  v3 = v11;
  if (v9 != v11)
  {
    v4 = v10;
    while (1)
    {
      v5 = *(v2[4] + 8);
      if (!v5)
      {
        break;
      }

      result = WebCore::Document::updateCachedCookiesEnabled(v5);
      do
      {
        v2 += 6;
        if (v2 == v4)
        {
          break;
        }

        v6 = v2[2];
      }

      while (!(*v2 | v2[1] | v6) || v6 == -1);
      if (v2 == v3)
      {
        return result;
      }
    }

    result = 92;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::WebProcess::setDomainsWithUserInteraction(WebCore::ResourceLoadObserver *a1)
{
  v1 = *(*WebCore::ResourceLoadObserver::shared(a1) + 120);

  return v1();
}

uint64_t WebKit::WebProcess::setDomainsWithCrossPageStorageAccess(uint64_t a1, uint64_t *a2, const WTF::StringImpl *a3)
{
  v6 = WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin(a2, a2, a3);
  v9 = v6;
  v21[0] = v6;
  v21[1] = v7;
  if (*a2)
  {
    v10 = *a2 + 24 * *(*a2 - 4);
  }

  else
  {
    v10 = 0;
  }

  if (v10 != v6)
  {
    do
    {
      v11 = *(v9 + 5);
      if (v11)
      {
        v12 = *(v9 + 1);
        v13 = &v12[v11];
        do
        {
          v14 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin((a1 + 136));
          v15 = v14;
          v16 = v7;
          v17 = *(a1 + 136);
          if (v17)
          {
            v18 = (v17 + 16 * *(v17 - 4));
          }

          else
          {
            v18 = 0;
          }

          if (v18 != v14)
          {
            do
            {
              WebKit::WebPage::addDomainWithPageLevelStorageAccess(v15[1], v9, v12);
              do
              {
                v15 += 2;
              }

              while (v15 != v16 && (*v15 + 1) <= 1);
            }

            while (v15 != v18);
          }

          ++v12;
        }

        while (v12 != v13);
        v9 = v21[0];
      }

      v21[0] = v9 + 24;
      v6 = WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(v21, v7, v8);
      v9 = v21[0];
    }

    while (v21[0] != v10);
  }

  v19 = WebCore::ResourceLoadObserver::shared(v6);
  return (*(*v19 + 128))(v19, a2, a3);
}

uint64_t WebKit::WebProcess::haveStorageAccessQuirksForDomain(WebKit::WebProcess *this, WTF **a2, const WTF::StringImpl *a3)
{
  if (!*(this + 106))
  {
    return 0;
  }

  if (WTF::equal(*a2, 0, a3) || *a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E17330CLL);
  }

  v6 = *(this + 106);
  if (!v6)
  {
    return 0;
  }

  v7 = *(v6 - 8);
  v8 = WTF::ASCIICaseInsensitiveHash::hash(*a2, v5) & v7;
  v9 = (v6 + 8 * v8);
  if (WTF::equal(*v9, 0, v10))
  {
    return 0;
  }

  v12 = 1;
  while (*v9 == -1 || (WTF::equalIgnoringASCIICase(*v9, *a2, v11) & 1) == 0)
  {
    v8 = (v8 + v12) & v7;
    v9 = (v6 + 8 * v8);
    v14 = WTF::equal(*v9, 0, v11);
    result = 0;
    ++v12;
    if (v14)
    {
      return result;
    }
  }

  return 1;
}

uint64_t *WebKit::WebProcess::setUseGPUProcessForMedia(uint64_t *this, int a2)
{
  v34 = *MEMORY[0x1E69E9840];
  if (*(this + 803) != a2)
  {
    v3 = this;
    *(this + 803) = a2;
    v4 = WebCore::CDMFactory::registeredFactories(this);
    WTF::Vector<WebCore::CDMFactory *,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(v4, v5);
    if (a2)
    {
      v6 = WebKit::WebProcess::supplement<WebKit::RemoteCDMFactory>(v3);
      WebKit::RemoteCDMFactory::ref(v6);
      WebKit::RemoteCDMFactory::registerFactory(v6, v4);
      WebKit::RemoteCDMFactory::ref(v6);
      WebKit::RemoteAudioSession::create(v7, &v31);
      v8 = v31;
      v31 = 0;
      v32[0] = v8;
      WebCore::AudioSession::setSharedSession();
      v10 = v32[0];
      v32[0] = 0;
      if (v10)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::AudioSession,(WTF::DestructionThread)0>::deref(v10 + 1, v9);
      }

      v11 = v31;
      v31 = 0;
      if (v11)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::AudioSession,(WTF::DestructionThread)0>::deref(v11 + 1, v9);
      }

      v12 = WTF::fastMalloc(0x60);
      v32[0] = WebKit::RemoteMediaSessionHelper::RemoteMediaSessionHelper(v12);
      WebCore::MediaSessionHelper::setSharedHelper();
      v14 = v32[0];
      v32[0] = 0;
      if (v14)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSessionHelper,(WTF::DestructionThread)0>::deref(v14 + 1, v13);
      }

      v15 = WebKit::WebProcess::supplement<WebKit::RemoteLegacyCDMFactory>(v3);
      WebKit::RemoteLegacyCDMFactory::ref(v15);
      WebKit::RemoteLegacyCDMFactory::registerFactory(v15);
      WebKit::RemoteLegacyCDMFactory::ref(v15);
      v16 = WebKit::WebProcess::supplement<WebKit::RemoteMediaEngineConfigurationFactory>(v3);
      WebKit::RemoteMediaEngineConfigurationFactory::registerFactory(v16);
      v17 = WTF::fastMalloc(0x10);
      *v17 = &unk_1F1122730;
      v32[0] = v17;
      WebCore::AudioHardwareListener::setCreationFunction();
      v18 = v32[0];
      v32[0] = 0;
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }

      v19 = WTF::fastMalloc(0x10);
      *v19 = &unk_1F1122758;
      v32[0] = v19;
      WebCore::RemoteCommandListener::setCreationFunction();
      v20 = v32[0];
      v32[0] = 0;
      if (v20)
      {
        v20 = (*(*v20 + 8))(v20);
      }

      WebCore::SystemBatteryStatusTestingOverrides::singleton(v20);
      operator new();
    }

    v21 = WebCore::CDMFactory::platformRegisterFactories();
    MEMORY[0x19EB03F20](v32, v21);
    v22 = WebCore::AudioSession::setSharedSession();
    v24 = v32[0];
    v32[0] = 0;
    if (v24)
    {
      v22 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::AudioSession,(WTF::DestructionThread)0>::deref(v24 + 1, v23);
    }

    v25 = WebCore::MediaSessionHelper::resetSharedHelper(v22);
    v26 = WebCore::LegacyCDM::resetFactories(v25);
    v27 = WebCore::MediaEngineConfigurationFactory::resetFactories(v26);
    v28 = WebCore::AudioHardwareListener::resetCreationFunction(v27);
    v29 = WebCore::RemoteCommandListener::resetCreationFunction(v28);
    WebCore::SystemBatteryStatusTestingOverrides::singleton(v29);
    v33 = 0;
    WebCore::SystemBatteryStatusTestingOverrides::setConfigurationChangedCallback();
    v30 = std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:sn200100](v32);
    WebCore::VP9TestingOverrides::singleton(v30);
    v33 = 0;
    WebCore::VP9TestingOverrides::setConfigurationChangedCallback();
    return std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:sn200100](v32);
  }

  return this;
}

uint64_t WebKit::WebProcess::shouldUseRemoteRenderingFor(_BYTE *a1, int a2)
{
  if ((a2 - 2) >= 4)
  {
    if (a2 == 1)
    {
      v2 = a1[801];
    }

    else if (a2 == 7)
    {
      v2 = a1[803];
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = a1[802];
  }

  return v2 & 1;
}

uint64_t WebKit::WebProcess::ensureSpeechRecognitionRealtimeMediaSourceManager(WebKit::WebProcess *this, void *a2)
{
  result = *(this + 101);
  if (!result)
  {
    v4 = WebKit::SpeechRecognitionRealtimeMediaSourceManager::operator new(0x40, a2);
    WebKit::SpeechRecognitionRealtimeMediaSourceManager::SpeechRecognitionRealtimeMediaSourceManager(v4, this);
    if (*(this + 101))
    {
      result = 1469;
      __break(0xC471u);
    }

    else
    {
      v5 = (this + 808);
      std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager>::reset[abi:sn200100](v5, v4);
      return *v5;
    }
  }

  return result;
}

uint64_t WebKit::WebProcess::supplement<WebKit::RemoteLegacyCDMFactory>(uint64_t *a1)
{
  v4[0] = WebKit::RemoteLegacyCDMFactory::supplementName(a1);
  v4[1] = v2;
  return WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::WebProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::WebProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::WebProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::WebProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ASCIILiteral>>,WTF::ASCIILiteral>(a1 + 39, v4);
}

uint64_t WebKit::WebProcess::supplement<WebKit::RemoteCDMFactory>(uint64_t *a1)
{
  v5[0] = WebKit::RemoteCDMFactory::supplementName(a1);
  v5[1] = v2;
  v3 = WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::WebProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::WebProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::WebProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::WebProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ASCIILiteral>>,WTF::ASCIILiteral>(a1 + 39, v5);
  if (v3)
  {
    return v3 - 8;
  }

  else
  {
    return 0;
  }
}

uint64_t WebKit::WebProcess::supplement<WebKit::RemoteMediaEngineConfigurationFactory>(uint64_t *a1)
{
  v4[0] = WebKit::RemoteMediaEngineConfigurationFactory::supplementName(a1);
  v4[1] = v2;
  return WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::WebProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::WebProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::WebProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::WebProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ASCIILiteral>>,WTF::ASCIILiteral>(a1 + 39, v4);
}

uint64_t WebKit::WebProcess::protectedNotificationManager@<X0>(WebKit::WebProcess *this@<X0>, void *a2@<X8>)
{
  v4[0] = "WebNotificationManager";
  v4[1] = 23;
  result = WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::WebProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::WebProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::WebProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::WebProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ASCIILiteral>>,WTF::ASCIILiteral>(this + 39, v4);
  if (*(*(result + 24) + 8))
  {
    *a2 = result;
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

atomic_uchar *WebKit::WebProcess::webTransportSession@<X0>(atomic_uchar *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19E173958);
  }

  v4 = *(result + 105);
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = *(v4 - 8);
  v6 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
  v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
  v9 = v5 & ((v8 >> 31) ^ v8);
  v10 = *(v4 + 24 * v9);
  if (v10 != a2)
  {
    v11 = 1;
    while (v10)
    {
      v9 = (v9 + v11) & v5;
      v10 = *(v4 + 24 * v9);
      ++v11;
      if (v10 == a2)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_13;
  }

LABEL_8:
  v12 = v4 + 24 * v9;
  result = *(v12 + 16);
  if (!result || (v13 = *(v12 + 8), (result = WTF::ThreadSafeWeakPtrControlBlock::weakRef(result)) == 0))
  {
LABEL_13:
    *a3 = 0;
    return result;
  }

  v14 = result;
  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, v13, a3);

  return WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v14, v15);
}

uint64_t *WebKit::WebProcess::removeWebTransportSession(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::WebTransportSession,WTF::NoTaggingTraits<WebKit::WebTransportSession>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::WebTransportSession,WTF::NoTaggingTraits<WebKit::WebTransportSession>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::WebTransportSession,WTF::NoTaggingTraits<WebKit::WebTransportSession>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::WebTransportSession,WTF::NoTaggingTraits<WebKit::WebTransportSession>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::WebTransportSession,WTF::NoTaggingTraits<WebKit::WebTransportSession>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::WebTransportSession,WTF::NoTaggingTraits<WebKit::WebTransportSession>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 840), &v6);
  v4 = *(a1 + 840);
  if (v4)
  {
    v5 = (v4 + 24 * *(v4 - 4));
    if (v5 == result)
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

    v5 = 0;
  }

  if (v5 != result)
  {
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove((a1 + 840), result);
  }

  return result;
}

uint64_t WebKit::WebProcess::setResourceMonitorContentRuleList(uint64_t a1, uint64_t *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED641170;
  if (os_log_type_enabled(qword_1ED641170, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 712) == 1)
    {
      v12 = *(a1 + 704);
    }

    else
    {
      v12 = 0;
    }

    *buf = 134218240;
    *&buf[4] = a1;
    v19 = 2048;
    v20 = v12;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - [sessionID=%llu] WebProcess::setResourceMonitorContentRuleList", buf, 0x16u);
  }

  WebKit::WebCompiledContentRuleList::create(a2, &v17);
  v5 = v17;
  if (v17)
  {
    v6 = *(v17 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
      v5 = v17;
    }

    v15 = v5;
    v16 = v6;
    v17 = 0;
    *buf = 0;
    WTF::URL::invalidate(buf);
    WebCore::ContentExtensions::ContentExtensionsBackend::addContentExtension();
    v8 = *buf;
    *buf = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v7);
    }

    v9 = v15;
    if (v15 && atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v15 + 2);
      v9 = (*(*v15 + 8))(v15);
    }

    WebCore::ResourceMonitorChecker::singleton(v9);
    WebCore::ResourceMonitorChecker::setContentRuleList();
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v10);
    }
  }

  else
  {
    v13 = qword_1ED641170;
    result = os_log_type_enabled(qword_1ED641170, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    if (*(a1 + 712) == 1)
    {
      v14 = *(a1 + 704);
    }

    else
    {
      v14 = 0;
    }

    *buf = 134218240;
    *&buf[4] = a1;
    v19 = 2048;
    v20 = v14;
    _os_log_error_impl(&dword_19D52D000, v13, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu] WebProcess::setResourceMonitorContentRuleList: Failed to create rule list", buf, 0x16u);
  }

  result = v17;
  v17 = 0;
  if (result)
  {
    if (atomic_fetch_add((result + 8), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, (result + 8));
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t WebKit::WebProcess::setResourceMonitorContentRuleListAsync(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = qword_1ED641170;
  if (os_log_type_enabled(qword_1ED641170, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 712) == 1)
    {
      v7 = *(a1 + 704);
    }

    else
    {
      v7 = 0;
    }

    v10 = 134218240;
    v11 = a1;
    v12 = 2048;
    v13 = v7;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "%p - [sessionID=%llu] WebProcess::setResourceMonitorContentRuleListAsync", &v10, 0x16u);
  }

  WebKit::WebProcess::setResourceMonitorContentRuleList(a1, a2);
  v8 = *a3;
  *a3 = 0;
  (*(*v8 + 16))(v8);
  return (*(*v8 + 8))(v8);
}

void WebKit::WebSleepDisablerClient::didCreateSleepDisabler(uint64_t a1, void *a2, uint64_t *a3, char a4, uint64_t a5, char a6)
{
  v22 = a2;
  if (a6)
  {
    {
      v9 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v19 = WebKit::WebProcess::operator new(0x370, a2);
      v9 = WebKit::WebProcess::WebProcess(v19);
      WebKit::WebProcess::singleton(void)::process = v9;
    }

    v20[0] = a5;
    v10 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v9 + 17, v20);
    if (v10)
    {
      v11 = v10;
      CFRetain(*(v10 + 8));
      v20[0] = &v22;
      v20[1] = a3;
      v21[0] = a4;
      v12 = (*(*(v11 + 32) + 56))(v11 + 32);
      v14 = IPC::Encoder::operator new(0x238, v13);
      *v14 = 2191;
      *(v14 + 2) = 0;
      *(v14 + 3) = 0;
      *(v14 + 1) = v12;
      *(v14 + 68) = 0;
      *(v14 + 70) = 0;
      *(v14 + 69) = 0;
      IPC::Encoder::encodeHeader(v14);
      v23 = v14;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v14, v22);
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v14, a3);
      IPC::Encoder::operator<<<BOOL &>(v14, v21);
      (*(*(v11 + 32) + 32))(v11 + 32, &v23, 0);
      v16 = v23;
      v23 = 0;
      if (v16)
      {
        IPC::Encoder::~Encoder(v16, v15);
        bmalloc::api::tzoneFree(v17, v18);
      }

      CFRelease(*(v11 + 8));
    }
  }
}

void WebKit::WebSleepDisablerClient::didDestroySleepDisabler(uint64_t a1, void *a2, IPC::Encoder *a3, char a4)
{
  if (a4)
  {
    {
      v6 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v16 = WebKit::WebProcess::operator new(0x370, a2);
      v6 = WebKit::WebProcess::WebProcess(v16);
      WebKit::WebProcess::singleton(void)::process = v6;
    }

    v17 = a3;
    v7 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v6 + 17, &v17);
    if (v7)
    {
      v8 = v7;
      CFRetain(*(v7 + 8));
      v9 = (*(*(v8 + 32) + 56))(v8 + 32);
      v11 = IPC::Encoder::operator new(0x238, v10);
      *v11 = 2195;
      *(v11 + 2) = 0;
      *(v11 + 3) = 0;
      *(v11 + 1) = v9;
      *(v11 + 68) = 0;
      *(v11 + 70) = 0;
      *(v11 + 69) = 0;
      IPC::Encoder::encodeHeader(v11);
      v17 = v11;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v11, a2);
      (*(*(v8 + 32) + 32))(v8 + 32, &v17, 0);
      v13 = v17;
      v17 = 0;
      if (v13)
      {
        IPC::Encoder::~Encoder(v13, v12);
        bmalloc::api::tzoneFree(v14, v15);
      }

      CFRelease(*(v8 + 8));
    }
  }
}

atomic_ullong *WebKit::WebSystemSoundDelegate::systemBeep(WebKit::WebSystemSoundDelegate *this, void *a2)
{
  {
    v2 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v11 = WebKit::WebProcess::operator new(0x370, a2);
    v2 = WebKit::WebProcess::WebProcess(v11);
    WebKit::WebProcess::singleton(void)::process = v2;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v2, &v12);
  v3 = v12;
  v5 = IPC::Encoder::operator new(0x238, v4);
  *v5 = 2925;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = 0;
  IPC::Encoder::encodeHeader(v5);
  v13 = v5;
  IPC::Connection::sendMessageImpl(v3, &v13, 0, 0);
  v7 = v13;
  v13 = 0;
  if (v7)
  {
    IPC::Encoder::~Encoder(v7, v6);
    bmalloc::api::tzoneFree(v9, v10);
  }

  result = v12;
  v12 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  return result;
}

uint64_t WebKit::WebPaymentCoordinator::operator new(WebKit::WebPaymentCoordinator *this, void *a2)
{
  if (this == 80 && WebKit::WebPaymentCoordinator::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebPaymentCoordinator::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebPaymentCoordinator::operatorNewSlow(this);
  }
}

WebKit::WebPaymentCoordinator *WebKit::WebPaymentCoordinator::WebPaymentCoordinator(WebKit::WebPaymentCoordinator *this, WebKit::WebPage *a2)
{
  *(this + 2) = 1;
  v4 = this + 16;
  *this = &unk_1F1121F30;
  *(this + 2) = &unk_1F1122008;
  *(this + 3) = 0;
  *(this + 4) = &unk_1F1122050;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 6, a2 + 16);
  v6 = *(a2 + 3);
  atomic_fetch_add(v6, 1u);
  *(this + 5) = v6;
  *(this + 48) = 0;
  *(this + 56) = 0;
  *(this + 8) = 0;
  *(this + 36) = 0;
  {
    v7 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v10 = WebKit::WebProcess::operator new(0x370, v5);
    v7 = WebKit::WebProcess::WebProcess(v10);
    WebKit::WebProcess::singleton(void)::process = v7;
  }

  v8 = *(a2 + 6);
  v12[0] = 188;
  v12[1] = v8;
  WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<IPC::ReceiverName,unsigned long long>,IPC::MessageReceiver&>(v7 + 7, v12, v4, v11);
  return this;
}

void WebKit::WebPaymentCoordinator::~WebPaymentCoordinator(unsigned int **this, void *a2)
{
  v3 = WebKit::WebProcess::singleton(this, a2);
  IPC::MessageReceiverMap::removeMessageReceiver((v3 + 48), (this + 2));
  if (*(this + 56) == 1)
  {
    v6 = this[6];
    if (v6)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v6, v4);
    }
  }

  v5 = this[5];
  this[5] = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, v4);
  }

  this[2] = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 3, v4);
  if (*(this + 2) != 1)
  {
    __break(0xC471u);
  }
}

{
  WebKit::WebPaymentCoordinator::~WebPaymentCoordinator(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void non-virtual thunk toWebKit::WebPaymentCoordinator::~WebPaymentCoordinator(unsigned int **this, void *a2)
{
  WebKit::WebPaymentCoordinator::~WebPaymentCoordinator(this - 2, a2);
}

{
  WebKit::WebPaymentCoordinator::~WebPaymentCoordinator(this - 4, a2);
}

{
  WebKit::WebPaymentCoordinator::~WebPaymentCoordinator(this - 2, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

{
  WebKit::WebPaymentCoordinator::~WebPaymentCoordinator(this - 4, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

uint64_t WebKit::WebPaymentCoordinator::didCancelPaymentSession(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && (v2 = *(v1 + 8)) != 0)
  {
    v3 = *(*(v2 + 40) + 1160);
    v5 = *(v3 + 8);
    v4 = (v3 + 8);
    *v4 = v5 + 1;
    WebCore::PaymentCoordinator::didCancelPaymentSession();

    return WTF::RefCounted<WebCore::PaymentCoordinator>::deref(v4);
  }

  else
  {
    result = 121;
    __break(0xC471u);
  }

  return result;
}

WTF::StringImpl **WebKit::WebPaymentCoordinator::validatedPaymentNetwork@<X0>(WTF::StringImpl ***this@<X0>, const WTF::String *a2@<X1>, _BYTE *a3@<X8>)
{
  if ((this[7] & 1) == 0)
  {
    result = WebKit::WebPaymentCoordinator::platformAvailablePaymentNetworks(this, &v13);
    v8 = v13;
    if (*(this + 56) == 1)
    {
      v13 = 0;
      result = this[6];
      this[6] = v8;
      if (result)
      {
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(result, v7);
        result = v13;
        if (v13)
        {
          result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v13, v9);
        }
      }
    }

    else
    {
      this[6] = v13;
      *(this + 56) = 1;
    }

    if ((this[7] & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::ASCIICaseInsensitiveHash,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::String>,WTF::ASCIICaseInsensitiveHash>,(WTF::ShouldValidateKey)1,WTF::String>(this + 6, a2);
  if (this[7])
  {
    v10 = this[6];
    if (v10)
    {
      v10 += *(v10 - 1);
    }

    if (v10 == result)
    {
      v12 = 0;
      *a3 = 0;
    }

    else
    {
      v11 = *result;
      if (*result)
      {
        atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
      }

      *a3 = v11;
      v12 = 1;
    }

    a3[8] = v12;
  }

  else
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t WebKit::WebPaymentCoordinator::canMakePayments(WebKit::WebPaymentCoordinator *this)
{
  WTF::MonotonicTime::now(this);
  v4 = v3;
  if (v3 - *(this + 8) <= 60.0 && (*(this + 73) & 1) != 0)
  {
LABEL_25:
    v20 = *(this + 72);
  }

  else
  {
    v5 = (*(*(this + 4) + 56))(this + 32);
    v6 = (*(*(this + 4) + 48))(this + 32);
    if (v6)
    {
      v7 = v6;
      while (1)
      {
        v8 = *v6;
        if ((*v6 & 1) == 0)
        {
          break;
        }

        v9 = *v6;
        atomic_compare_exchange_strong_explicit(v6, &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v9 == v8)
        {
          goto LABEL_9;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_9:
      IPC::Connection::createSyncMessageEncoder(0x1076, v5, v30);
      v10 = IPC::Connection::sendSyncMessage(v7, v30[1], v30, 0, &v28, INFINITY);
      if (!v29)
      {
        v12 = v28;
        v28 = 0;
        if (*(v12 + 50) == 3194)
        {
          v14 = 11;
          goto LABEL_14;
        }

        v17 = IPC::Decoder::decode<std::tuple<BOOL>>(v12);
        if (v17 >= 0x100u)
        {
          v1 = v17;
          v13 = 0;
          goto LABEL_17;
        }

        goto LABEL_29;
      }

      if (v29 != 1)
      {
        mpark::throw_bad_variant_access(v10);
      }

      v12 = v28;
      v13 = 1;
      while (1)
      {
        v19 = v30[0];
        v30[0] = 0;
        if (v19)
        {
          IPC::Encoder::~Encoder(v19, v11);
          bmalloc::api::tzoneFree(v22, v23);
        }

        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v7);
        if (v13)
        {
          break;
        }

        *(this + 8) = v4;
        *(this + 36) = v1 | 0x100;
        if (!v12)
        {
          goto LABEL_25;
        }

        IPC::Decoder::~Decoder(v12);
        bmalloc::api::tzoneFree(v26, v27);
        if (*(this + 73))
        {
          goto LABEL_25;
        }

        __break(1u);
LABEL_29:
        v14 = 14;
LABEL_14:
        IPC::Decoder::~Decoder(v12);
        bmalloc::api::tzoneFree(v15, v16);
        v13 = 1;
        v12 = v14;
LABEL_17:
        if (!v29)
        {
          v18 = v28;
          v28 = 0;
          if (v18)
          {
            IPC::Decoder::~Decoder(v18);
            bmalloc::api::tzoneFree(v24, v25);
          }
        }
      }
    }

    v20 = 0;
  }

  return v20 & 1;
}

uint64_t WebKit::WebPaymentCoordinator::canMakePaymentsWithActiveCard(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = a1 + 32;
  v8 = (*(*(a1 + 32) + 56))(a1 + 32);
  v10 = IPC::Encoder::operator new(0x238, v9);
  *v10 = 2875;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = v8;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v19 = v10;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v10, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v10, a3);
  v11 = *a4;
  *a4 = 0;
  v12 = WTF::fastMalloc(0x10);
  *v12 = &unk_1F1122810;
  v12[1] = v11;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v18[0] = v12;
    v18[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    (*(*v7 + 40))(v7, &v19, v18, 0);
    v14 = v18[0];
    v18[0] = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    result = v19;
    v19 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v13);
      return bmalloc::api::tzoneFree(v16, v17);
    }
  }

  return result;
}

uint64_t WebKit::WebPaymentCoordinator::openPaymentSetup(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = a1 + 32;
  v8 = (*(*(a1 + 32) + 56))(a1 + 32);
  v10 = IPC::Encoder::operator new(0x238, v9);
  *v10 = 2885;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = v8;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v19 = v10;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v10, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v10, a3);
  v11 = *a4;
  *a4 = 0;
  v12 = WTF::fastMalloc(0x10);
  *v12 = &unk_1F1122838;
  v12[1] = v11;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v18[0] = v12;
    v18[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    (*(*v7 + 40))(v7, &v19, v18, 0);
    v14 = v18[0];
    v18[0] = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    result = v19;
    v19 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v13);
      return bmalloc::api::tzoneFree(v16, v17);
    }
  }

  return result;
}

uint64_t WebKit::WebPaymentCoordinator::showPaymentUI(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[5];
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      v9 = a1;
      CFRetain(*(v5 - 8));
      v10 = *(v5 + 32);
      v11 = *(v5 + 1816);
      v12 = v9[4];
      v9 += 4;
      v13 = (*(v12 + 56))(v9);
      v14 = (*(*v9 + 48))(v9);
      if (!v14)
      {
        goto LABEL_24;
      }

      v15 = v14;
      while (1)
      {
        v16 = *v14;
        if ((*v14 & 1) == 0)
        {
          break;
        }

        v17 = *v14;
        atomic_compare_exchange_strong_explicit(v14, &v17, v16 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v17 == v16)
        {
          goto LABEL_9;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v14);
LABEL_9:
      IPC::Connection::createSyncMessageEncoder(0x1077, v13, v37);
      v18 = v37[0];
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v37[0], v10);
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v18, v11);
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v18, a2);
      IPC::VectorArgumentCoder<false,WTF::URL,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v18, a3);
      IPC::ArgumentCoder<WebCore::ApplePaySessionPaymentRequest,void>::encode(v18, a4);
      v19 = IPC::Connection::sendSyncMessage(v15, v37[1], v37, 0, &v35, INFINITY);
      if (v36)
      {
        if (v36 != 1)
        {
          mpark::throw_bad_variant_access(v19);
        }

        v21 = v35;
        v22 = 1;
        goto LABEL_21;
      }

      v21 = v35;
      v35 = 0;
      if (*(v21 + 50) == 3194)
      {
        a3 = 11;
      }

      else
      {
        v25 = IPC::Decoder::decode<std::tuple<BOOL>>(v21);
        if (v25 >= 0x100u)
        {
          LOBYTE(a3) = v25;
          v22 = 0;
          goto LABEL_18;
        }

        a3 = 14;
      }

      IPC::Decoder::~Decoder(v21);
      bmalloc::api::tzoneFree(v23, v24);
      v22 = 1;
      v21 = a3;
LABEL_18:
      if (!v36)
      {
        v26 = v35;
        v35 = 0;
        if (v26)
        {
          IPC::Decoder::~Decoder(v26);
          bmalloc::api::tzoneFree(v31, v32);
        }
      }

LABEL_21:
      v27 = v37[0];
      v37[0] = 0;
      if (v27)
      {
        IPC::Encoder::~Encoder(v27, v20);
        bmalloc::api::tzoneFree(v29, v30);
      }

      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v15);
      if (!v22)
      {
        if (v21)
        {
          IPC::Decoder::~Decoder(v21);
          bmalloc::api::tzoneFree(v33, v34);
        }

        goto LABEL_27;
      }

LABEL_24:
      LOBYTE(a3) = 0;
LABEL_27:
      CFRelease(*(v5 - 8));
      return a3 & 1;
    }
  }

  LOBYTE(a3) = 0;
  return a3 & 1;
}

IPC::Encoder *WebKit::WebPaymentCoordinator::completeMerchantValidation(uint64_t a1, objc_object **a2)
{
  v3 = a1 + 32;
  v4 = (*(*(a1 + 32) + 56))(a1 + 32);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 2878;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<WebCore::PaymentMerchantSession,void>::encode(v6, a2);
  (*(*v3 + 32))(v3, &v11, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

IPC::Encoder *WebKit::WebPaymentCoordinator::completeShippingMethodSelection(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 32;
  v4 = (*(*(a1 + 32) + 56))(a1 + 32);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 2882;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  LOBYTE(v4) = *(a2 + 632);
  v7 = IPC::Encoder::grow(v6, 1uLL, 1);
  if (v4)
  {
    if (v8)
    {
      *v7 = 1;
      if (*(a2 + 632))
      {
        IPC::ArgumentCoder<WebCore::ApplePayShippingMethodUpdate,void>::encode(v6, a2);
        goto LABEL_7;
      }

      std::__throw_bad_optional_access[abi:sn200100]();
    }

LABEL_11:
    __break(0xC471u);
    JUMPOUT(0x19E174F48);
  }

  if (!v8)
  {
    goto LABEL_11;
  }

  *v7 = 0;
LABEL_7:
  (*(*v3 + 32))(v3, &v13, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

IPC::Encoder *WebKit::WebPaymentCoordinator::completeShippingContactSelection(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 32;
  v4 = (*(*(a1 + 32) + 56))(a1 + 32);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 2881;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  LOBYTE(v4) = *(a2 + 648);
  v7 = IPC::Encoder::grow(v6, 1uLL, 1);
  if (v4)
  {
    if (v8)
    {
      *v7 = 1;
      if (*(a2 + 648))
      {
        IPC::ArgumentCoder<WebCore::ApplePayShippingContactUpdate,void>::encode(v6, a2);
        goto LABEL_7;
      }

      std::__throw_bad_optional_access[abi:sn200100]();
    }

LABEL_11:
    __break(0xC471u);
    JUMPOUT(0x19E1750A8);
  }

  if (!v8)
  {
    goto LABEL_11;
  }

  *v7 = 0;
LABEL_7:
  (*(*v3 + 32))(v3, &v13, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

IPC::Encoder *WebKit::WebPaymentCoordinator::completePaymentMethodSelection(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 32;
  v4 = (*(*(a1 + 32) + 56))(a1 + 32);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 2879;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  LOBYTE(v4) = *(a2 + 656);
  v7 = IPC::Encoder::grow(v6, 1uLL, 1);
  if (v4)
  {
    if (v8)
    {
      *v7 = 1;
      if (*(a2 + 656))
      {
        IPC::ArgumentCoder<WebCore::ApplePayPaymentMethodUpdate,void>::encode(v6, a2);
        goto LABEL_7;
      }

      std::__throw_bad_optional_access[abi:sn200100]();
    }

LABEL_11:
    __break(0xC471u);
    JUMPOUT(0x19E175208);
  }

  if (!v8)
  {
    goto LABEL_11;
  }

  *v7 = 0;
LABEL_7:
  (*(*v3 + 32))(v3, &v13, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

IPC::Encoder *WebKit::WebPaymentCoordinator::completeCouponCodeChange(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 32;
  v4 = (*(*(a1 + 32) + 56))(a1 + 32);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 2877;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  LOBYTE(v4) = *(a2 + 648);
  v7 = IPC::Encoder::grow(v6, 1uLL, 1);
  if (v4)
  {
    if (v8)
    {
      *v7 = 1;
      if (*(a2 + 648))
      {
        IPC::ArgumentCoder<WebCore::ApplePayShippingContactUpdate,void>::encode(v6, a2);
        goto LABEL_7;
      }

      std::__throw_bad_optional_access[abi:sn200100]();
    }

LABEL_11:
    __break(0xC471u);
    JUMPOUT(0x19E175368);
  }

  if (!v8)
  {
    goto LABEL_11;
  }

  *v7 = 0;
LABEL_7:
  (*(*v3 + 32))(v3, &v13, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

IPC::Encoder *WebKit::WebPaymentCoordinator::completePaymentSession(uint64_t a1, __int16 *a2)
{
  v3 = a1 + 32;
  v4 = (*(*(a1 + 32) + 56))(a1 + 32);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 2880;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<WebCore::ApplePayPaymentAuthorizationResult,void>::encode(v6, a2);
  (*(*v3 + 32))(v3, &v11, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

IPC::Encoder *WebKit::WebPaymentCoordinator::abortPaymentSession(WebKit::WebPaymentCoordinator *this)
{
  v1 = this + 32;
  v2 = (*(*(this + 4) + 56))(this + 32);
  v4 = IPC::Encoder::operator new(0x238, v3);
  *v4 = 2873;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v2;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  (*(*v1 + 32))(v1, &v9, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

IPC::Encoder *WebKit::WebPaymentCoordinator::cancelPaymentSession(WebKit::WebPaymentCoordinator *this)
{
  v1 = this + 32;
  v2 = (*(*(this + 4) + 56))(this + 32);
  v4 = IPC::Encoder::operator new(0x238, v3);
  *v4 = 2876;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v2;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  (*(*v1 + 32))(v1, &v9, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

uint64_t WebKit::WebPaymentCoordinator::messageSenderConnection(WebKit::WebPaymentCoordinator *this, void *a2)
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

  return *(WebKit::WebProcess::ensureNetworkProcessConnection(v2) + 24);
}

uint64_t WebKit::WebPaymentCoordinator::messageSenderDestinationID(WebKit::WebPaymentCoordinator *this)
{
  v1 = *(this + 5);
  if (v1 && (v2 = *(v1 + 8)) != 0)
  {
    return *(v2 + 32);
  }

  else
  {
    return 0;
  }
}

uint64_t non-virtual thunk toWebKit::WebPaymentCoordinator::messageSenderDestinationID(WebKit::WebPaymentCoordinator *this)
{
  v1 = *(this + 1);
  if (v1 && (v2 = *(v1 + 8)) != 0)
  {
    return *(v2 + 32);
  }

  else
  {
    return 0;
  }
}

uint64_t WebKit::WebPaymentCoordinator::validateMerchant(WebKit::WebPaymentCoordinator *this, atomic_uint **a2)
{
  v2 = *(this + 5);
  if (v2 && (v3 = *(v2 + 8)) != 0)
  {
    v4 = *(*(v3 + 40) + 1160);
    v6 = *(v4 + 8);
    v5 = (v4 + 8);
    *v5 = v6 + 1;
    WTF::URL::URL(&v10, a2);
    WebCore::PaymentCoordinator::validateMerchant();
    v8 = v10;
    v10 = 0;
    if (v8)
    {
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v7);
      }
    }

    return WTF::RefCounted<WebCore::PaymentCoordinator>::deref(v5);
  }

  else
  {
    result = 121;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::WebPaymentCoordinator::didAuthorizePayment(WebKit::WebPaymentCoordinator *this, const WebCore::Payment *a2)
{
  v2 = *(this + 5);
  if (v2 && (v3 = *(v2 + 8)) != 0)
  {
    v4 = *(*(v3 + 40) + 1160);
    v6 = *(v4 + 8);
    v5 = (v4 + 8);
    *v5 = v6 + 1;
    WebCore::PaymentCoordinator::didAuthorizePayment();

    return WTF::RefCounted<WebCore::PaymentCoordinator>::deref(v5);
  }

  else
  {
    result = 121;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::WebPaymentCoordinator::didSelectShippingMethod(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && (v2 = *(v1 + 8)) != 0)
  {
    v3 = *(*(v2 + 40) + 1160);
    v5 = *(v3 + 8);
    v4 = (v3 + 8);
    *v4 = v5 + 1;
    WebCore::PaymentCoordinator::didSelectShippingMethod();

    return WTF::RefCounted<WebCore::PaymentCoordinator>::deref(v4);
  }

  else
  {
    result = 121;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::WebPaymentCoordinator::didSelectShippingContact(WebKit::WebPaymentCoordinator *this, const WebCore::PaymentContact *a2)
{
  v2 = *(this + 5);
  if (v2 && (v3 = *(v2 + 8)) != 0)
  {
    v4 = *(*(v3 + 40) + 1160);
    v5 = v4 + 2;
    ++v4[2];
    WebCore::PaymentCoordinator::didSelectShippingContact(v4, a2);

    return WTF::RefCounted<WebCore::PaymentCoordinator>::deref(v5);
  }

  else
  {
    result = 121;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::WebPaymentCoordinator::didSelectPaymentMethod(WebKit::WebPaymentCoordinator *this, const WebCore::PaymentMethod *a2)
{
  v2 = *(this + 5);
  if (v2 && (v3 = *(v2 + 8)) != 0)
  {
    v4 = *(*(v3 + 40) + 1160);
    v5 = v4 + 2;
    ++v4[2];
    WebCore::PaymentCoordinator::didSelectPaymentMethod(v4, a2);

    return WTF::RefCounted<WebCore::PaymentCoordinator>::deref(v5);
  }

  else
  {
    result = 121;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::WebPaymentCoordinator::didChangeCouponCode(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && (v2 = *(v1 + 8)) != 0)
  {
    v3 = *(*(v2 + 40) + 1160);
    v5 = *(v3 + 8);
    v4 = (v3 + 8);
    *v4 = v5 + 1;
    WebCore::PaymentCoordinator::didChangeCouponCode();

    return WTF::RefCounted<WebCore::PaymentCoordinator>::deref(v4);
  }

  else
  {
    result = 121;
    __break(0xC471u);
  }

  return result;
}

void WebKit::WebPaymentCoordinator::getSetupFeatures(uint64_t a1, atomic_uint **a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(a1 + 40);
  if (v5 && (v6 = *(v5 + 8)) != 0)
  {
    CFRetain(*(v6 - 8));
    WebKit::PaymentSetupConfiguration::PaymentSetupConfiguration(&v28, a2, a3);
    v9 = (*(*(v6 + 16) + 56))(v6 + 16);
    v11 = IPC::Encoder::operator new(0x238, v10);
    *v11 = 2884;
    *(v11 + 2) = 0;
    *(v11 + 3) = 0;
    *(v11 + 1) = v9;
    *(v11 + 68) = 0;
    *(v11 + 70) = 0;
    *(v11 + 69) = 0;
    IPC::Encoder::encodeHeader(v11);
    v34 = v11;
    IPC::ArgumentCoder<WebCore::ApplePaySetupConfiguration,void>::encode(v11, &v28);
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v11, &v32);
    v12 = *a4;
    *a4 = 0;
    v13 = WTF::fastMalloc(0x10);
    *v13 = &unk_1F1122860;
    v13[1] = v12;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      __break(0xC471u);
    }

    else
    {
      v14 = v13;
      IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      v33[0] = v14;
      v33[1] = IdentifierInternal;
      (*(*(v6 + 16) + 40))(v6 + 16, &v34, v33, 0);
      v17 = v33[0];
      v33[0] = 0;
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }

      v18 = v34;
      v34 = 0;
      if (v18)
      {
        IPC::Encoder::~Encoder(v18, v16);
        bmalloc::api::tzoneFree(v26, v27);
      }

      v19 = v32;
      v32 = 0;
      if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v16);
      }

      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v31, v16);
      v21 = v30;
      v30 = 0;
      if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v21, v20);
      }

      v22 = v29;
      v29 = 0;
      if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v20);
      }

      v23 = v28;
      v28 = 0;
      if (v23)
      {
        if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v23, v20);
        }
      }

      CFRelease(*(v6 - 8));
    }
  }

  else
  {
    v28 = 0;
    v29 = 0;
    v24 = *a4;
    *a4 = 0;
    (*(*v24 + 16))(v24, &v28);
    (*(*v24 + 8))(v24);
    WTF::Vector<WTF::Ref<WebCore::ApplePaySetupFeature,WTF::RawPtrTraits<WebCore::ApplePaySetupFeature>,WTF::DefaultRefDerefTraits<WebCore::ApplePaySetupFeature>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v28, v25);
  }
}

void WebKit::WebPaymentCoordinator::beginApplePaySetup(uint64_t a1, atomic_uint **a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = *(a1 + 40);
  if (v6 && (v7 = *(v6 + 8)) != 0)
  {
    CFRetain(*(v7 - 8));
    WebKit::PaymentSetupConfiguration::PaymentSetupConfiguration(&v32, a2, a3);
    WebKit::PaymentSetupFeatures::PaymentSetupFeatures(&cf, a4);
    v11 = (*(*(v7 + 16) + 56))(v7 + 16);
    v13 = IPC::Encoder::operator new(0x238, v12);
    *v13 = 2874;
    *(v13 + 2) = 0;
    *(v13 + 3) = 0;
    *(v13 + 1) = v11;
    *(v13 + 68) = 0;
    *(v13 + 70) = 0;
    *(v13 + 69) = 0;
    IPC::Encoder::encodeHeader(v13);
    v38 = v13;
    IPC::ArgumentCoder<WebCore::ApplePaySetupConfiguration,void>::encode(v13, &v32);
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v13, &v36);
    IPC::encodeObjectDirectly<NSArray>(v13, cf);
    v14 = *a5;
    *a5 = 0;
    v15 = WTF::fastMalloc(0x10);
    *v15 = &unk_1F1122888;
    v15[1] = v14;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      __break(0xC471u);
    }

    else
    {
      v16 = v15;
      IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      v37[0] = v16;
      v37[1] = IdentifierInternal;
      (*(*(v7 + 16) + 40))(v7 + 16, &v38, v37, 0);
      v19 = v37[0];
      v37[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }

      v20 = v38;
      v38 = 0;
      if (v20)
      {
        IPC::Encoder::~Encoder(v20, v18);
        bmalloc::api::tzoneFree(v29, v30);
      }

      v21 = cf;
      cf = 0;
      if (v21)
      {
        CFRelease(v21);
      }

      v22 = v36;
      v36 = 0;
      if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v18);
      }

      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v35, v18);
      v24 = v34;
      v34 = 0;
      if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v24, v23);
      }

      v25 = v33;
      v33 = 0;
      if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v23);
      }

      v26 = v32;
      v32 = 0;
      if (v26)
      {
        if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v26, v23);
        }
      }

      CFRelease(*(v7 - 8));
    }
  }

  else
  {
    v27 = *a5;
    *a5 = 0;
    (*(*v27 + 16))(v27, 0);
    v28 = *(*v27 + 8);

    v28(v27);
  }
}

void WebKit::WebPaymentCoordinator::endApplePaySetup(WebKit::WebPaymentCoordinator *this)
{
  v1 = *(this + 5);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      v3 = (*(*(v2 + 16) + 56))(v2 + 16);
      v5 = IPC::Encoder::operator new(0x238, v4);
      *v5 = 2883;
      *(v5 + 2) = 0;
      *(v5 + 3) = 0;
      *(v5 + 1) = v3;
      *(v5 + 68) = 0;
      *(v5 + 70) = 0;
      *(v5 + 69) = 0;
      IPC::Encoder::encodeHeader(v5);
      v10 = v5;
      (*(*(v2 + 16) + 32))(v2 + 16, &v10, 0);
      v7 = v10;
      v10 = 0;
      if (v7)
      {
        IPC::Encoder::~Encoder(v7, v6);
        bmalloc::api::tzoneFree(v8, v9);
      }

      CFRelease(*(v2 - 8));
    }
  }
}

uint64_t WebKit::WebAutomationDOMWindowObserver::WebAutomationDOMWindowObserver(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *(a1 + 16) = 1;
  *a1 = &unk_1F11220A0;
  *(a1 + 8) = 0;
  WTF::WeakPtrFactoryWithBitField<WebCore::EventTarget,WebCore::WeakPtrImplWithEventTargetData>::initializeIfNeeded((a2 + 16), a2);
  v6 = *(a2 + 16) & 0xFFFFFFFFFFFFLL;
  atomic_fetch_add(v6, 1u);
  *(a1 + 24) = v6;
  *(a1 + 32) = 0;
  v7 = *a3;
  *a3 = 0;
  *(a1 + 40) = v7;
  if (v6 && (v8 = *(v6 + 8)) != 0)
  {
    WebCore::LocalDOMWindow::registerObserver(v8, a1);
    return a1;
  }

  else
  {
    result = 121;
    __break(0xC471u);
  }

  return result;
}

void WebKit::WebAutomationDOMWindowObserver::~WebAutomationDOMWindowObserver(WebKit::WebAutomationDOMWindowObserver *this, void *a2)
{
  v3 = *(this + 3);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      WebCore::LocalDOMWindow::unregisterObserver(v4, this);
    }
  }

  v5 = *(this + 5);
  *(this + 5) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 3);
  *(this + 3) = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCounted<WebCore::WeakPtrImplWithEventTargetData,(WTF::DestructionThread)0>::deref(v6, a2);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);
  if (*(this + 4) != 1)
  {
    __break(0xC471u);
  }
}

{
  WebKit::WebAutomationDOMWindowObserver::~WebAutomationDOMWindowObserver(this, a2);

  WTF::fastFree(v2, v3);
}

_DWORD *WebKit::WebAutomationDOMWindowObserver::willDestroyGlobalObjectInCachedFrame(WebKit::WebAutomationDOMWindowObserver *this, void *a2)
{
  v3 = (this + 16);
  ++*(this + 4);
  if ((*(this + 32) & 1) == 0)
  {
    (*(**(this + 5) + 16))(*(this + 5), this);
  }

  v4 = *(this + 3);
  if (v4)
  {
    if (*(v4 + 8))
    {
      WebCore::LocalDOMWindow::unregisterObserver(*(v4 + 8), this);
      v4 = *(this + 3);
      *(this + 3) = 0;
      if (!v4)
      {
        goto LABEL_9;
      }
    }

    else
    {
      *(this + 3) = 0;
    }

    WTF::ThreadSafeRefCounted<WebCore::WeakPtrImplWithEventTargetData,(WTF::DestructionThread)0>::deref(v4, a2);
  }

LABEL_9:

  return WTF::RefCounted<WebKit::WebAutomationDOMWindowObserver>::deref(v3, a2);
}

_DWORD *WebKit::WebAutomationDOMWindowObserver::willDestroyGlobalObjectInFrame(WebKit::WebAutomationDOMWindowObserver *this, void *a2)
{
  v3 = (this + 16);
  ++*(this + 4);
  if ((*(this + 32) & 1) == 0)
  {
    (*(**(this + 5) + 16))(*(this + 5), this);
  }

  v4 = *(this + 3);
  if (v4)
  {
    if (*(v4 + 8))
    {
      WebCore::LocalDOMWindow::unregisterObserver(*(v4 + 8), this);
      v4 = *(this + 3);
      *(this + 3) = 0;
      if (!v4)
      {
        goto LABEL_9;
      }
    }

    else
    {
      *(this + 3) = 0;
    }

    WTF::ThreadSafeRefCounted<WebCore::WeakPtrImplWithEventTargetData,(WTF::DestructionThread)0>::deref(v4, a2);
  }

LABEL_9:

  return WTF::RefCounted<WebKit::WebAutomationDOMWindowObserver>::deref(v3, a2);
}

_DWORD *WebKit::WebAutomationDOMWindowObserver::willDetachGlobalObjectFromFrame(WebKit::WebAutomationDOMWindowObserver *this)
{
  v2 = (this + 16);
  ++*(this + 4);
  *(this + 32) = 1;
  (*(**(this + 5) + 16))(*(this + 5), this);
  v4 = *(this + 3);
  if (v4)
  {
    if (*(v4 + 8))
    {
      WebCore::LocalDOMWindow::unregisterObserver(*(v4 + 8), this);
      v4 = *(this + 3);
      *(this + 3) = 0;
      if (!v4)
      {
        goto LABEL_7;
      }
    }

    else
    {
      *(this + 3) = 0;
    }

    WTF::ThreadSafeRefCounted<WebCore::WeakPtrImplWithEventTargetData,(WTF::DestructionThread)0>::deref(v4, v3);
  }

LABEL_7:

  return WTF::RefCounted<WebKit::WebAutomationDOMWindowObserver>::deref(v2, v3);
}

void WebKit::WebCacheStorageConnection::~WebCacheStorageConnection(WebKit::WebCacheStorageConnection *this, WTF::StringImpl *a2)
{
  v3 = *(this + 6);
  if (v3)
  {
    WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::WallTime>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::WallTime,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 5);
  if (v4)
  {
    WTF::fastFree((v4 - 16), a2);
  }

  v5 = *(this + 4);
  *(this + 4) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v5);
  }

  *this = &unk_1F1122450;
  v6 = *(this + 2);
  if (v6)
  {
    WTF::fastFree((v6 - 16), a2);
  }
}

{
  WebKit::WebCacheStorageConnection::~WebCacheStorageConnection(this, a2);

  WTF::fastFree(v2, v3);
}

atomic_ullong **WebKit::WebCacheStorageConnection::connection(atomic_ullong **this, uint64_t a2)
{
  v3 = this;
  v4 = 0;
  v5 = (a2 + 24);
  atomic_compare_exchange_strong_explicit((a2 + 24), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    this = MEMORY[0x19EB01E30](a2 + 24);
  }

  v6 = *(a2 + 32);
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

    this = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_8:
    *v3 = v6;
  }

  v9 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v9, 0, memory_order_release, memory_order_relaxed);
  if (v9 == 1)
  {
    if (v6)
    {
      return this;
    }
  }

  else
  {
    this = WTF::Lock::unlockSlow(v5);
    if (v6)
    {
      return this;
    }
  }

  v12 = 0;
  v10 = WTF::fastMalloc(0x18);
  *v10 = &unk_1F11228B0;
  v10[1] = a2;
  v10[2] = &v12;
  v11 = v10;
  WTF::callOnMainRunLoopAndWait();
  this = v11;
  if (v11)
  {
    this = (*(*v11 + 8))(v11);
  }

  *v3 = v12;
  return this;
}

atomic_uint **WebKit::WebCacheStorageConnection::open@<X0>(WebKit::WebCacheStorageConnection *this@<X0>, const WebCore::ClientOrigin *a2@<X1>, const WTF::String *a3@<X2>, WTF::Logger **a4@<X8>)
{
  v61 = *MEMORY[0x1E69E9840];
  WebKit::WebCacheStorageConnection::connection(&v50, this);
  v7 = v50;
  v51 = 0uLL;
  *&v52 = "sendWithPromisedReply";
  *(&v52 + 1) = 0;
  v8 = WTF::fastMalloc(0x90);
  *(v8 + 8) = 1;
  *v8 = &unk_1F1122198;
  v9 = v52;
  *(v8 + 16) = v51;
  *(v8 + 32) = v9;
  *(v8 + 48) = 0;
  v10 = (v8 + 48);
  *(v8 + 88) = 0;
  *(v8 + 96) = v8 + 112;
  *(v8 + 104) = 1;
  *(v8 + 120) = 0;
  *(v8 + 128) = 0;
  *(v8 + 136) = 0;
  v11 = WTF::NativePromiseBase::logChannel(v8);
  if (*v11)
  {
    v12 = v11;
    if (v11[16] >= 4u)
    {
      WTF::String::String(&v57, "creating ");
      WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v56, v8);
      *buf = v57;
      v53 = v56;
      WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, &v53, &v58);
      if (!v58)
      {
        goto LABEL_56;
      }

      v14 = v56;
      v56 = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v13);
      }

      v15 = v57;
      v57 = 0;
      if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v13);
      }

      v16 = *(v12 + 4);
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (v17)
      {
        WTF::String::utf8();
        v19 = v53 ? v53 + 16 : 0;
        *buf = 136446210;
        *&buf[4] = v19;
        _os_log_impl(&dword_19D52D000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
        v17 = v53;
        v53 = 0;
        if (v17)
        {
          if (*v17 == 1)
          {
            v17 = WTF::fastFree(v17, v18);
          }

          else
          {
            --*v17;
          }
        }
      }

      if (*v12 && v12[16] >= 4u)
      {
        v20 = MEMORY[0x1E696EBC0];
        while (1)
        {
          v21 = *v20;
          if (v21)
          {
            break;
          }

          v22 = *v20;
          atomic_compare_exchange_strong_explicit(v20, &v22, v21 | 1, memory_order_acquire, memory_order_acquire);
          if (v22 == v21)
          {
            v47 = a4;
            v48 = a3;
            v49 = v7;
            v23 = WTF::Logger::observers(v17);
            v24 = *(v23 + 12);
            if (v24)
            {
              v25 = *v23;
              v26 = *v23 + 8 * v24;
              do
              {
                v27 = *v25;
                *buf = 0;
                WTF::String::String(&buf[8], "creating ");
                *&buf[16] = 0;
                WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v60, v8);
                WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v53, buf, 2uLL);
                (*(*v27 + 16))(v27, v12, 4, &v53);
                WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v53, v28);
                for (i = 24; i != -8; i -= 16)
                {
                  v30 = *&buf[i];
                  *&buf[i] = 0;
                  if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v30, v18);
                  }
                }

                ++v25;
              }

              while (v25 != v26);
            }

            v31 = 1;
            atomic_compare_exchange_strong_explicit(v20, &v31, 0, memory_order_release, memory_order_relaxed);
            a3 = v48;
            v7 = v49;
            a4 = v47;
            if (v31 != 1)
            {
              WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
            }

            break;
          }
        }
      }

      v11 = v58;
      v58 = 0;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v11 = WTF::StringImpl::destroy(v11, v18);
      }
    }
  }

  v32 = 0;
  v53 = v8;
  v54 = v51;
  v55 = v52;
  atomic_fetch_add((v8 + 8), 1u);
  atomic_compare_exchange_strong_explicit((v8 + 48), &v32, 1u, memory_order_acquire, memory_order_acquire);
  if (v32)
  {
    v11 = MEMORY[0x19EB01E30](v10);
  }

  v33 = WTF::NativePromiseBase::logChannel(v11);
  if (*v33 && v33[16] >= 4u)
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>(v33, &v51, " runSynchronouslyOnTarget ", v8);
  }

  atomic_store(0, (v8 + 137));
  v34 = 1;
  atomic_compare_exchange_strong_explicit((v8 + 48), &v34, 0, memory_order_release, memory_order_relaxed);
  if (v34 != 1)
  {
    WTF::Lock::unlockSlow(v10);
  }

  if (atomic_fetch_add((v8 + 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v8 + 8));
    (*(*v8 + 16))(v8);
  }

  v35 = v53;
  if (v53)
  {
    atomic_fetch_add(v53 + 2, 1u);
    v36 = v53;
  }

  else
  {
    v36 = 0;
  }

  *a4 = v35;
  v53 = 0;
  *&buf[8] = v54;
  v60 = v55;
  v37 = WTF::fastMalloc(0x30);
  *v37 = &unk_1F11228D8;
  *(v37 + 8) = v36;
  *buf = 0;
  v38 = v60;
  *(v37 + 16) = *&buf[8];
  *(v37 + 32) = v38;
  *&v51 = v37;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
LABEL_56:
    __break(0xC471u);
    JUMPOUT(0x19E176BC4);
  }

  *(&v51 + 1) = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(buf);
  v40 = IPC::Encoder::operator new(0x238, v39);
  *v40 = 753;
  *(v40 + 68) = 0;
  *(v40 + 70) = 0;
  *(v40 + 69) = 0;
  *(v40 + 2) = 0;
  *(v40 + 3) = 0;
  *(v40 + 1) = 0;
  IPC::Encoder::encodeHeader(v40);
  *buf = v40;
  IPC::ArgumentCoder<WebCore::ClientOrigin,void>::encode(v40, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v40, a3);
  IPC::Connection::sendMessageWithAsyncReplyWithDispatcher(v7, buf, &v51, 0, 0);
  v42 = *buf;
  *buf = 0;
  if (v42)
  {
    IPC::Encoder::~Encoder(v42, v41);
    bmalloc::api::tzoneFree(v45, v46);
  }

  v43 = v51;
  *&v51 = 0;
  if (v43)
  {
    (*(*v43 + 8))(v43);
  }

  result = WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(&v53);
  if (v7)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v7);
  }

  return result;
}

atomic_uint **WebKit::WebCacheStorageConnection::remove@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, WTF::Logger **a4@<X8>)
{
  v61 = *MEMORY[0x1E69E9840];
  WebKit::WebCacheStorageConnection::connection(&v50, a1);
  v7 = v50;
  v51 = 0uLL;
  *&v52 = "sendWithPromisedReply";
  *(&v52 + 1) = 0;
  v8 = WTF::fastMalloc(0x78);
  *(v8 + 8) = 1;
  *v8 = &unk_1F11221E8;
  v9 = v52;
  *(v8 + 16) = v51;
  *(v8 + 32) = v9;
  *(v8 + 48) = 0;
  v10 = (v8 + 48);
  *(v8 + 64) = 0;
  *(v8 + 72) = v8 + 88;
  *(v8 + 80) = 1;
  *(v8 + 96) = 0;
  *(v8 + 104) = 0;
  *(v8 + 112) = 0;
  v11 = WTF::NativePromiseBase::logChannel(v8);
  if (*v11)
  {
    v12 = v11;
    if (v11[16] >= 4u)
    {
      WTF::String::String(&v57, "creating ");
      WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v56, v8);
      *buf = v57;
      v53 = v56;
      WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, &v53, &v58);
      if (!v58)
      {
        goto LABEL_56;
      }

      v14 = v56;
      v56 = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v13);
      }

      v15 = v57;
      v57 = 0;
      if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v13);
      }

      v16 = *(v12 + 4);
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (v17)
      {
        WTF::String::utf8();
        v19 = v53 ? v53 + 16 : 0;
        *buf = 136446210;
        *&buf[4] = v19;
        _os_log_impl(&dword_19D52D000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
        v17 = v53;
        v53 = 0;
        if (v17)
        {
          if (*v17 == 1)
          {
            v17 = WTF::fastFree(v17, v18);
          }

          else
          {
            --*v17;
          }
        }
      }

      if (*v12 && v12[16] >= 4u)
      {
        v20 = MEMORY[0x1E696EBC0];
        while (1)
        {
          v21 = *v20;
          if (v21)
          {
            break;
          }

          v22 = *v20;
          atomic_compare_exchange_strong_explicit(v20, &v22, v21 | 1, memory_order_acquire, memory_order_acquire);
          if (v22 == v21)
          {
            v47 = a4;
            v48 = a3;
            v49 = v7;
            v23 = WTF::Logger::observers(v17);
            v24 = *(v23 + 12);
            if (v24)
            {
              v25 = *v23;
              v26 = *v23 + 8 * v24;
              do
              {
                v27 = *v25;
                *buf = 0;
                WTF::String::String(&buf[8], "creating ");
                *&buf[16] = 0;
                WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v60, v8);
                WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v53, buf, 2uLL);
                (*(*v27 + 16))(v27, v12, 4, &v53);
                WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v53, v28);
                for (i = 24; i != -8; i -= 16)
                {
                  v30 = *&buf[i];
                  *&buf[i] = 0;
                  if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v30, v18);
                  }
                }

                ++v25;
              }

              while (v25 != v26);
            }

            v31 = 1;
            atomic_compare_exchange_strong_explicit(v20, &v31, 0, memory_order_release, memory_order_relaxed);
            a3 = v48;
            v7 = v49;
            a4 = v47;
            if (v31 != 1)
            {
              WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
            }

            break;
          }
        }
      }

      v11 = v58;
      v58 = 0;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v11 = WTF::StringImpl::destroy(v11, v18);
      }
    }
  }

  v32 = 0;
  v53 = v8;
  v54 = v51;
  v55 = v52;
  atomic_fetch_add((v8 + 8), 1u);
  atomic_compare_exchange_strong_explicit((v8 + 48), &v32, 1u, memory_order_acquire, memory_order_acquire);
  if (v32)
  {
    v11 = MEMORY[0x19EB01E30](v10);
  }

  v33 = WTF::NativePromiseBase::logChannel(v11);
  if (*v33 && v33[16] >= 4u)
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>(v33, &v51, " runSynchronouslyOnTarget ", v8);
  }

  atomic_store(0, (v8 + 113));
  v34 = 1;
  atomic_compare_exchange_strong_explicit((v8 + 48), &v34, 0, memory_order_release, memory_order_relaxed);
  if (v34 != 1)
  {
    WTF::Lock::unlockSlow(v10);
  }

  if (atomic_fetch_add((v8 + 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v8 + 8));
    (*(*v8 + 16))(v8);
  }

  v35 = v53;
  if (v53)
  {
    atomic_fetch_add(v53 + 2, 1u);
    v36 = v53;
  }

  else
  {
    v36 = 0;
  }

  *a4 = v35;
  v53 = 0;
  *&buf[8] = v54;
  v60 = v55;
  v37 = WTF::fastMalloc(0x30);
  *v37 = &unk_1F1122928;
  *(v37 + 8) = v36;
  *buf = 0;
  v38 = v60;
  *(v37 + 16) = *&buf[8];
  *(v37 + 32) = v38;
  *&v51 = v37;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
LABEL_56:
    __break(0xC471u);
    JUMPOUT(0x19E177190);
  }

  *(&v51 + 1) = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  WTF::NativePromiseProducer<BOOL,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(buf);
  v40 = IPC::Encoder::operator new(0x238, v39);
  *v40 = 756;
  *(v40 + 68) = 0;
  *(v40 + 70) = 0;
  *(v40 + 69) = 0;
  *(v40 + 2) = 0;
  *(v40 + 3) = 0;
  *(v40 + 1) = 0;
  IPC::Encoder::encodeHeader(v40);
  *buf = v40;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v40, a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v40, a3);
  IPC::Connection::sendMessageWithAsyncReplyWithDispatcher(v7, buf, &v51, 0, 0);
  v42 = *buf;
  *buf = 0;
  if (v42)
  {
    IPC::Encoder::~Encoder(v42, v41);
    bmalloc::api::tzoneFree(v45, v46);
  }

  v43 = v51;
  *&v51 = 0;
  if (v43)
  {
    (*(*v43 + 8))(v43);
  }

  result = WTF::NativePromiseProducer<BOOL,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(&v53);
  if (v7)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v7);
  }

  return result;
}

atomic_uint **WebKit::WebCacheStorageConnection::retrieveCaches@<X0>(WebKit::WebCacheStorageConnection *this@<X0>, const WebCore::ClientOrigin *a2@<X1>, uint64_t a3@<X2>, WTF::Logger **a4@<X8>)
{
  v61 = *MEMORY[0x1E69E9840];
  WebKit::WebCacheStorageConnection::connection(&v50, this);
  v7 = v50;
  v51 = 0uLL;
  *&v52 = "sendWithPromisedReply";
  *(&v52 + 1) = 0;
  v8 = WTF::fastMalloc(0x90);
  *(v8 + 8) = 1;
  *v8 = &unk_1F1122238;
  v9 = v52;
  *(v8 + 16) = v51;
  *(v8 + 32) = v9;
  *(v8 + 48) = 0;
  v10 = (v8 + 48);
  *(v8 + 88) = 0;
  *(v8 + 96) = v8 + 112;
  *(v8 + 104) = 1;
  *(v8 + 120) = 0;
  *(v8 + 128) = 0;
  *(v8 + 136) = 0;
  v11 = WTF::NativePromiseBase::logChannel(v8);
  if (*v11)
  {
    v12 = v11;
    if (v11[16] >= 4u)
    {
      WTF::String::String(&v57, "creating ");
      WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v56, v8);
      *buf = v57;
      v53 = v56;
      WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, &v53, &v58);
      if (!v58)
      {
        goto LABEL_56;
      }

      v14 = v56;
      v56 = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v13);
      }

      v15 = v57;
      v57 = 0;
      if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v13);
      }

      v16 = *(v12 + 4);
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (v17)
      {
        WTF::String::utf8();
        v19 = v53 ? v53 + 16 : 0;
        *buf = 136446210;
        *&buf[4] = v19;
        _os_log_impl(&dword_19D52D000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
        v17 = v53;
        v53 = 0;
        if (v17)
        {
          if (*v17 == 1)
          {
            v17 = WTF::fastFree(v17, v18);
          }

          else
          {
            --*v17;
          }
        }
      }

      if (*v12 && v12[16] >= 4u)
      {
        v20 = MEMORY[0x1E696EBC0];
        while (1)
        {
          v21 = *v20;
          if (v21)
          {
            break;
          }

          v22 = *v20;
          atomic_compare_exchange_strong_explicit(v20, &v22, v21 | 1, memory_order_acquire, memory_order_acquire);
          if (v22 == v21)
          {
            v47 = a4;
            v48 = a3;
            v49 = v7;
            v23 = WTF::Logger::observers(v17);
            v24 = *(v23 + 12);
            if (v24)
            {
              v25 = *v23;
              v26 = *v23 + 8 * v24;
              do
              {
                v27 = *v25;
                *buf = 0;
                WTF::String::String(&buf[8], "creating ");
                *&buf[16] = 0;
                WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v60, v8);
                WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v53, buf, 2uLL);
                (*(*v27 + 16))(v27, v12, 4, &v53);
                WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v53, v28);
                for (i = 24; i != -8; i -= 16)
                {
                  v30 = *&buf[i];
                  *&buf[i] = 0;
                  if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v30, v18);
                  }
                }

                ++v25;
              }

              while (v25 != v26);
            }

            v31 = 1;
            atomic_compare_exchange_strong_explicit(v20, &v31, 0, memory_order_release, memory_order_relaxed);
            a3 = v48;
            v7 = v49;
            a4 = v47;
            if (v31 != 1)
            {
              WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
            }

            break;
          }
        }
      }

      v11 = v58;
      v58 = 0;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v11 = WTF::StringImpl::destroy(v11, v18);
      }
    }
  }

  v32 = 0;
  v53 = v8;
  v54 = v51;
  v55 = v52;
  atomic_fetch_add((v8 + 8), 1u);
  atomic_compare_exchange_strong_explicit((v8 + 48), &v32, 1u, memory_order_acquire, memory_order_acquire);
  if (v32)
  {
    v11 = MEMORY[0x19EB01E30](v10);
  }

  v33 = WTF::NativePromiseBase::logChannel(v11);
  if (*v33 && v33[16] >= 4u)
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>(v33, &v51, " runSynchronouslyOnTarget ", v8);
  }

  atomic_store(0, (v8 + 137));
  v34 = 1;
  atomic_compare_exchange_strong_explicit((v8 + 48), &v34, 0, memory_order_release, memory_order_relaxed);
  if (v34 != 1)
  {
    WTF::Lock::unlockSlow(v10);
  }

  if (atomic_fetch_add((v8 + 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v8 + 8));
    (*(*v8 + 16))(v8);
  }

  v35 = v53;
  if (v53)
  {
    atomic_fetch_add(v53 + 2, 1u);
    v36 = v53;
  }

  else
  {
    v36 = 0;
  }

  *a4 = v35;
  v53 = 0;
  *&buf[8] = v54;
  v60 = v55;
  v37 = WTF::fastMalloc(0x30);
  *v37 = &unk_1F1122978;
  *(v37 + 8) = v36;
  *buf = 0;
  v38 = v60;
  *(v37 + 16) = *&buf[8];
  *(v37 + 32) = v38;
  *&v51 = v37;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
LABEL_56:
    __break(0xC471u);
    JUMPOUT(0x19E17775CLL);
  }

  *(&v51 + 1) = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(buf);
  v40 = IPC::Encoder::operator new(0x238, v39);
  *v40 = 750;
  *(v40 + 68) = 0;
  *(v40 + 70) = 0;
  *(v40 + 69) = 0;
  *(v40 + 2) = 0;
  *(v40 + 3) = 0;
  *(v40 + 1) = 0;
  IPC::Encoder::encodeHeader(v40);
  *buf = v40;
  IPC::ArgumentCoder<WebCore::ClientOrigin,void>::encode(v40, a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v40, a3);
  IPC::Connection::sendMessageWithAsyncReplyWithDispatcher(v7, buf, &v51, 0, 0);
  v42 = *buf;
  *buf = 0;
  if (v42)
  {
    IPC::Encoder::~Encoder(v42, v41);
    bmalloc::api::tzoneFree(v45, v46);
  }

  v43 = v51;
  *&v51 = 0;
  if (v43)
  {
    (*(*v43 + 8))(v43);
  }

  result = WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(&v53);
  if (v7)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v7);
  }

  return result;
}

atomic_uint **WebKit::WebCacheStorageConnection::retrieveRecords@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, WTF::Logger **a5@<X8>)
{
  v65 = *MEMORY[0x1E69E9840];
  WebKit::WebCacheStorageConnection::connection(&v54, a1);
  v9 = v54;
  v55 = 0uLL;
  *&v56 = "sendWithPromisedReply";
  *(&v56 + 1) = 0;
  v10 = WTF::fastMalloc(0x88);
  *(v10 + 8) = 1;
  *v10 = &unk_1F1122288;
  v11 = v56;
  *(v10 + 16) = v55;
  *(v10 + 32) = v11;
  *(v10 + 48) = 0;
  v12 = (v10 + 48);
  *(v10 + 80) = 0;
  *(v10 + 88) = v10 + 104;
  *(v10 + 96) = 1;
  *(v10 + 112) = 0;
  *(v10 + 120) = 0;
  *(v10 + 128) = 0;
  v13 = WTF::NativePromiseBase::logChannel(v10);
  if (*v13)
  {
    v14 = v13;
    if (v13[16] >= 4u)
    {
      WTF::String::String(&v61, "creating ");
      WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v60, v10);
      *buf = v61;
      v57 = v60;
      WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, &v57, &v62);
      if (!v62)
      {
        goto LABEL_57;
      }

      v16 = v60;
      v60 = 0;
      if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v15);
      }

      v53 = a2;
      v17 = v61;
      v61 = 0;
      if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v15);
      }

      v52 = a3;
      v18 = *(v14 + 4);
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      if (v19)
      {
        WTF::String::utf8();
        v21 = v57 ? v57 + 16 : 0;
        *buf = 136446210;
        *&buf[4] = v21;
        _os_log_impl(&dword_19D52D000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
        v19 = v57;
        v57 = 0;
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

      a2 = v53;
      if (*v14 && v14[16] >= 4u)
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
            v49 = a5;
            v50 = a4;
            v51 = v9;
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
                WTF::String::String(&buf[8], "creating ");
                *&buf[16] = 0;
                WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v64, v10);
                WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v57, buf, 2uLL);
                (*(*v29 + 16))(v29, v14, 4, &v57);
                WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v57, v30);
                for (i = 24; i != -8; i -= 16)
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
            a4 = v50;
            v9 = v51;
            a2 = v53;
            a5 = v49;
            if (v33 != 1)
            {
              WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
            }

            break;
          }
        }
      }

      v13 = v62;
      v62 = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v13 = WTF::StringImpl::destroy(v13, v20);
      }

      a3 = v52;
    }
  }

  v34 = 0;
  v57 = v10;
  v58 = v55;
  v59 = v56;
  atomic_fetch_add((v10 + 8), 1u);
  atomic_compare_exchange_strong_explicit((v10 + 48), &v34, 1u, memory_order_acquire, memory_order_acquire);
  if (v34)
  {
    v13 = MEMORY[0x19EB01E30](v12);
  }

  v35 = WTF::NativePromiseBase::logChannel(v13);
  if (*v35 && v35[16] >= 4u)
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>(v35, &v55, " runSynchronouslyOnTarget ", v10);
  }

  atomic_store(0, (v10 + 129));
  v36 = 1;
  atomic_compare_exchange_strong_explicit((v10 + 48), &v36, 0, memory_order_release, memory_order_relaxed);
  if (v36 != 1)
  {
    WTF::Lock::unlockSlow(v12);
  }

  if (atomic_fetch_add((v10 + 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v10 + 8));
    (*(*v10 + 16))(v10);
  }

  v37 = v57;
  if (v57)
  {
    atomic_fetch_add(v57 + 2, 1u);
    v38 = v57;
  }

  else
  {
    v38 = 0;
  }

  *a5 = v37;
  v57 = 0;
  *&buf[8] = v58;
  v64 = v59;
  v39 = WTF::fastMalloc(0x30);
  *v39 = &unk_1F11229C8;
  *(v39 + 8) = v38;
  *buf = 0;
  v40 = v64;
  *(v39 + 16) = *&buf[8];
  *(v39 + 32) = v40;
  *&v55 = v39;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
LABEL_57:
    __break(0xC471u);
    JUMPOUT(0x19E177D4CLL);
  }

  *(&v55 + 1) = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  WTF::NativePromiseProducer<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(buf);
  v42 = IPC::Encoder::operator new(0x238, v41);
  *v42 = 759;
  *(v42 + 68) = 0;
  *(v42 + 70) = 0;
  *(v42 + 69) = 0;
  *(v42 + 2) = 0;
  *(v42 + 3) = 0;
  *(v42 + 1) = 0;
  IPC::Encoder::encodeHeader(v42);
  *buf = v42;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v42, a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v42, a3);
  IPC::ArgumentCoder<WebCore::RetrieveRecordsOptions,void>::encode(v42, a4);
  IPC::Connection::sendMessageWithAsyncReplyWithDispatcher(v9, buf, &v55, 0, 0);
  v44 = *buf;
  *buf = 0;
  if (v44)
  {
    IPC::Encoder::~Encoder(v44, v43);
    bmalloc::api::tzoneFree(v47, v48);
  }

  v45 = v55;
  *&v55 = 0;
  if (v45)
  {
    (*(*v45 + 8))(v45);
  }

  result = WTF::NativePromiseProducer<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(&v57);
  if (v9)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v9);
  }

  return result;
}

uint64_t WebKit::WebCacheStorageConnection::batchDeleteOperation@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, WebCore::ResourceRequest *a4@<X3>, char *a5@<X4>, atomic_uint **a6@<X8>)
{
  WebKit::WebCacheStorageConnection::connection(&v24, a1);
  v11 = v24;
  v29 = 0;
  *&v30 = 0;
  *(&v30 + 1) = "sendWithPromisedReply";
  *&v31 = 0;
  WTF::NativePromiseProducer<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::NativePromiseProducer<std::enable_if<true,void>>(&v26, &v29);
  v12 = v26;
  if (v26)
  {
    atomic_fetch_add(v26 + 2, 1u);
    v13 = v26;
  }

  else
  {
    v13 = 0;
  }

  *a6 = v12;
  v26 = 0;
  v30 = v27;
  v31 = v28;
  v14 = WTF::fastMalloc(0x30);
  *v14 = &unk_1F1122A18;
  *(v14 + 8) = v13;
  v29 = 0;
  v15 = v31;
  *(v14 + 16) = v30;
  *(v14 + 32) = v15;
  v25[0] = v14;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v25[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    WTF::NativePromiseProducer<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(&v29);
    v17 = IPC::Encoder::operator new(0x238, v16);
    *v17 = 757;
    *(v17 + 68) = 0;
    *(v17 + 70) = 0;
    *(v17 + 69) = 0;
    *(v17 + 2) = 0;
    *(v17 + 3) = 0;
    *(v17 + 1) = 0;
    IPC::Encoder::encodeHeader(v17);
    v29 = v17;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, a2);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, a3);
    IPC::ArgumentCoder<WebCore::ResourceRequest,void>::encode(v17, a4);
    IPC::ArgumentCoder<WebKit::AppPrivacyReportTestingData,void>::encode(v17, a5);
    IPC::Connection::sendMessageWithAsyncReplyWithDispatcher(v11, &v29, v25, 0, 0);
    v19 = v29;
    v29 = 0;
    if (v19)
    {
      IPC::Encoder::~Encoder(v19, v18);
      bmalloc::api::tzoneFree(v22, v23);
    }

    v20 = v25[0];
    v25[0] = 0;
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    result = WTF::NativePromiseProducer<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(&v26);
    if (v11)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v11);
    }
  }

  return result;
}

uint64_t WebKit::WebCacheStorageConnection::batchPutOperation@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, atomic_uint **a5@<X8>)
{
  WebKit::WebCacheStorageConnection::connection(&v25, a1);
  v9 = v25;
  v30 = 0;
  *&v31 = 0;
  *(&v31 + 1) = "sendWithPromisedReply";
  *&v32 = 0;
  WTF::NativePromiseProducer<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::NativePromiseProducer<std::enable_if<true,void>>(&v27, &v30);
  v10 = v27;
  if (v27)
  {
    atomic_fetch_add(v27 + 2, 1u);
    v11 = v27;
  }

  else
  {
    v11 = 0;
  }

  *a5 = v10;
  v27 = 0;
  v31 = v28;
  v32 = v29;
  v12 = WTF::fastMalloc(0x30);
  *v12 = &unk_1F1122A68;
  *(v12 + 8) = v11;
  v30 = 0;
  v13 = v32;
  *(v12 + 16) = v31;
  *(v12 + 32) = v13;
  v26[0] = v12;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v26[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    WTF::NativePromiseProducer<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(&v30);
    v15 = IPC::Encoder::operator new(0x238, v14);
    *v15 = 754;
    *(v15 + 68) = 0;
    *(v15 + 70) = 0;
    *(v15 + 69) = 0;
    *(v15 + 2) = 0;
    *(v15 + 3) = 0;
    *(v15 + 1) = 0;
    IPC::Encoder::encodeHeader(v15);
    v30 = v15;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v15, a2);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v15, a3);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v15, *(a4 + 12));
    v16 = *(a4 + 12);
    if (v16)
    {
      v17 = *a4;
      v18 = 608 * v16;
      do
      {
        IPC::ArgumentCoder<WebCore::DOMCacheEngine::CrossThreadRecord,void>::encode(v15, v17);
        v17 += 608;
        v18 -= 608;
      }

      while (v18);
    }

    IPC::Connection::sendMessageWithAsyncReplyWithDispatcher(v9, &v30, v26, 0, 0);
    v20 = v30;
    v30 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v19);
      bmalloc::api::tzoneFree(v23, v24);
    }

    v21 = v26[0];
    v26[0] = 0;
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    result = WTF::NativePromiseProducer<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(&v27);
    if (v9)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v9);
    }
  }

  return result;
}

uint64_t WebKit::WebCacheStorageConnection::reference(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  *&v25 = a2;
  *(&v25 + 1) = a3;
  v5 = (a1 + 24);
  atomic_compare_exchange_strong_explicit((a1 + 24), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x19EB01E30](a1 + 24);
  }

  if (v25 == 0 || *(&v25 + 1) == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1783A4);
  }

  v6 = *(a1 + 40);
  if (v6 || (WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand((a1 + 40), 0), (v6 = *(a1 + 40)) != 0))
  {
    v7 = *(v6 - 8);
  }

  else
  {
    v7 = 0;
  }

  result = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(&v25);
  v9 = result & v7;
  v10 = (v6 + 24 * (result & v7));
  v12 = *v10;
  v11 = v10[1];
  if (*v10 != 0)
  {
    v13 = 0;
    v14 = 1;
    do
    {
      if (__PAIR128__(v11, v12) == v25)
      {
        ++*(v10 + 4);
        goto LABEL_26;
      }

      if (v11 == -1)
      {
        v13 = v10;
      }

      v9 = (v9 + v14) & v7;
      v10 = (v6 + 24 * v9);
      v12 = *v10;
      v11 = v10[1];
      ++v14;
    }

    while (*v10 != 0);
    if (v13)
    {
      *v13 = 0;
      v13[1] = 0;
      v13[2] = 0;
      --*(*(a1 + 40) - 16);
      v10 = v13;
    }
  }

  *v10 = v25;
  *(v10 + 4) = 0;
  v15 = *(a1 + 40);
  if (v15)
  {
    v16 = *(v15 - 12) + 1;
  }

  else
  {
    v16 = 1;
  }

  *(v15 - 12) = v16;
  v17 = (*(v15 - 16) + v16);
  v18 = *(v15 - 4);
  if (v18 > 0x400)
  {
    if (v18 > 2 * v17)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (3 * v18 <= 4 * v17)
  {
LABEL_22:
    result = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand((a1 + 40), v10);
    v10 = result;
  }

LABEL_23:
  ++*(v10 + 4);
  v19 = *(a1 + 32);
  if (v19)
  {
    v20 = IPC::Encoder::operator new(0x238, v10);
    *v20 = 755;
    *(v20 + 68) = 0;
    *(v20 + 70) = 0;
    *(v20 + 69) = 0;
    *(v20 + 2) = 0;
    *(v20 + 3) = 0;
    *(v20 + 1) = 0;
    IPC::Encoder::encodeHeader(v20);
    v26 = v20;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v20, v25);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v20, *(&v25 + 1));
    IPC::Connection::sendMessageImpl(v19, &v26, 0, 0);
    result = v26;
    v26 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v21);
      result = bmalloc::api::tzoneFree(v22, v23);
    }
  }

LABEL_26:
  v24 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v24, 0, memory_order_release, memory_order_relaxed);
  if (v24 != 1)
  {
    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

uint64_t WebKit::WebCacheStorageConnection::dereference(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = 0;
  *&v31 = a2;
  *(&v31 + 1) = a3;
  v5 = (result + 24);
  atomic_compare_exchange_strong_explicit((result + 24), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    result = MEMORY[0x19EB01E30](result + 24);
  }

  v6 = (v3 + 40);
  v7 = *(v3 + 40);
  if (v7)
  {
    if (v31 == 0 || *(&v31 + 1) == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E17861CLL);
    }

    v8 = *(v7 - 8);
    result = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(&v31);
    v10 = result & v8;
    v11 = (v7 + 24 * (result & v8));
    v12 = *v11;
    v13 = v11[1];
    if (*v11 == v31 && v13 == *(&v31 + 1))
    {
LABEL_17:
      v17 = *v6;
      if (!*v6)
      {
        v18 = 0;
        v19 = 1;
        goto LABEL_22;
      }

LABEL_21:
      v19 = 0;
      v18 = (v17 + 24 * *(v17 - 4));
LABEL_22:
      if (v18 == v11)
      {
        goto LABEL_38;
      }

      if (*(v11 + 4) != 1)
      {
        --*(v11 + 4);
        goto LABEL_38;
      }

      if (v19)
      {
        v20 = 0;
      }

      else
      {
        v20 = (v17 + 24 * *(v17 - 4));
        if (v20 == v11)
        {
LABEL_35:
          v25 = *(v3 + 32);
          if (v25)
          {
            v26 = IPC::Encoder::operator new(0x238, v9);
            *v26 = 752;
            *(v26 + 68) = 0;
            *(v26 + 70) = 0;
            *(v26 + 69) = 0;
            *(v26 + 2) = 0;
            *(v26 + 3) = 0;
            *(v26 + 1) = 0;
            IPC::Encoder::encodeHeader(v26);
            v32 = v26;
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v26, v31);
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v26, *(&v31 + 1));
            IPC::Connection::sendMessageImpl(v25, &v32, 0, 0);
            result = v32;
            v32 = 0;
            if (result)
            {
              IPC::Encoder::~Encoder(result, v27);
              result = bmalloc::api::tzoneFree(v29, v30);
            }
          }

          goto LABEL_38;
        }
      }

      if (v20 != v11)
      {
        *v11 = -1;
        v11[1] = -1;
        v21 = *v6;
        v22 = vadd_s32(*(*v6 - 16), 0xFFFFFFFF00000001);
        *(v21 - 16) = v22;
        v23 = *(v21 - 4);
        if (6 * v22.i32[1] < v23 && v23 >= 9)
        {
          result = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash((v3 + 40), v23 >> 1, 0);
        }
      }

      goto LABEL_35;
    }

    v15 = 1;
    while (v12 | v13)
    {
      v10 = (v10 + v15) & v8;
      v11 = (v7 + 24 * v10);
      v12 = *v11;
      v13 = v11[1];
      ++v15;
      if (*v11 == v31 && v13 == *(&v31 + 1))
      {
        goto LABEL_17;
      }
    }

    v17 = *v6;
    if (*v6)
    {
      v11 = (v17 + 24 * *(v17 - 4));
      goto LABEL_21;
    }
  }

LABEL_38:
  v28 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v28, 0, memory_order_release, memory_order_relaxed);
  if (v28 != 1)
  {
    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

void WebKit::WebCacheStorageConnection::lockStorage(WebKit::WebCacheStorageConnection *this, __n128 *a2)
{
  v4 = 0;
  v5 = this + 24;
  atomic_compare_exchange_strong_explicit(this + 24, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x19EB01E30](this + 24);
  }

  v6 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>();
  if (v6)
  {
    goto LABEL_40;
  }

  if (a2[1].n128_u8[8])
  {
    if (a2[1].n128_u8[8] != 1)
    {
LABEL_20:
      mpark::throw_bad_variant_access(v6);
    }

    goto LABEL_6;
  }

  if (a2->n128_u64[0] == -1)
  {
LABEL_40:
    __break(0xC471u);
    JUMPOUT(0x19E1788F0);
  }

LABEL_6:
  v7 = *(this + 6);
  if (v7 || (WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,unsigned int>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,unsigned int,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::expand(this + 6, 0), (v7 = *(this + 6)) != 0))
  {
    v8 = *(v7 - 8);
  }

  else
  {
    v8 = 0;
  }

  v9 = WTF::computeHash<WebCore::ClientOrigin>(a2) & v8;
  v10 = v7 + 72 * v9;
  v6 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>();
  if (v6)
  {
    goto LABEL_23;
  }

  v11 = 0;
  v12 = 1;
  do
  {
    if (*(v10 + 24))
    {
      if (*(v10 + 24) != 1)
      {
        goto LABEL_20;
      }
    }

    else if (*v10 == -1)
    {
      v11 = v10;
      goto LABEL_17;
    }

    if (WebCore::operator==() && WebCore::operator==())
    {
      ++*(v10 + 64);
      goto LABEL_32;
    }

LABEL_17:
    v9 = (v9 + v12) & v8;
    v10 = v7 + 72 * v9;
    v6 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>();
    ++v12;
  }

  while (!v6);
  if (v11)
  {
    *(v11 + 64) = 0;
    *(v11 + 32) = 0u;
    *(v11 + 48) = 0u;
    *v11 = 0u;
    *(v11 + 16) = 0u;
    --*(*(this + 6) - 16);
    v10 = v11;
  }

LABEL_23:
  mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::generic_assign<mpark::detail::copy_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1> const&>(v10, a2);
  mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::generic_assign<mpark::detail::copy_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1> const&>((v10 + 32), a2 + 2);
  *(v10 + 64) = 0;
  v14 = *(this + 6);
  if (v14)
  {
    v15 = *(v14 - 12) + 1;
  }

  else
  {
    v15 = 1;
  }

  *(v14 - 12) = v15;
  v16 = (*(v14 - 16) + v15);
  v17 = *(v14 - 4);
  if (v17 > 0x400)
  {
    if (v17 <= 2 * v16)
    {
LABEL_28:
      v10 = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,unsigned int>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,unsigned int,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::expand(this + 6, v10);
    }
  }

  else if (3 * v17 <= 4 * v16)
  {
    goto LABEL_28;
  }

  ++*(v10 + 64);
  v18 = *(this + 4);
  if (v18)
  {
    v19 = IPC::Encoder::operator new(0x238, v13);
    *v19 = 797;
    *(v19 + 68) = 0;
    *(v19 + 70) = 0;
    *(v19 + 69) = 0;
    *(v19 + 2) = 0;
    *(v19 + 3) = 0;
    *(v19 + 1) = 0;
    IPC::Encoder::encodeHeader(v19);
    v25 = v19;
    IPC::ArgumentCoder<WebCore::ClientOrigin,void>::encode(v19, a2);
    IPC::Connection::sendMessageImpl(v18, &v25, 0, 0);
    v21 = v25;
    v25 = 0;
    if (v21)
    {
      IPC::Encoder::~Encoder(v21, v20);
      bmalloc::api::tzoneFree(v22, v23);
    }
  }

LABEL_32:
  v24 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v24, 0, memory_order_release, memory_order_relaxed);
  if (v24 != 1)
  {
    WTF::Lock::unlockSlow(v5);
  }
}

uint64_t WebKit::WebCacheStorageConnection::unlockStorage(uint64_t this, const WebCore::ClientOrigin *a2)
{
  v3 = this;
  v4 = 0;
  v5 = (this + 24);
  atomic_compare_exchange_strong_explicit((this + 24), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    this = MEMORY[0x19EB01E30](this + 24);
  }

  v6 = (v3 + 48);
  if (!*(v3 + 48))
  {
    goto LABEL_53;
  }

  this = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>();
  if (this)
  {
    goto LABEL_58;
  }

  if (*(a2 + 24))
  {
    if (*(a2 + 24) != 1)
    {
LABEL_23:
      mpark::throw_bad_variant_access(this);
    }

    goto LABEL_7;
  }

  if (*a2 == -1)
  {
LABEL_58:
    __break(0xC471u);
    JUMPOUT(0x19E178C5CLL);
  }

LABEL_7:
  v7 = *v6;
  if (!*v6)
  {
    goto LABEL_53;
  }

  v8 = *(v7 - 8);
  v9 = WTF::computeHash<WebCore::ClientOrigin>(a2) & v8;
  v10 = v7 + 72 * v9;
  this = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>();
  if (this)
  {
LABEL_9:
    v12 = *v6;
    if (!*v6)
    {
      goto LABEL_53;
    }

    v10 = v12 + 72 * *(v12 - 4);
LABEL_11:
    v13 = 0;
    v14 = v12 + 72 * *(v12 - 4);
    goto LABEL_12;
  }

  v15 = 1;
  while (!*(v10 + 24))
  {
    if (*v10 != -1)
    {
      goto LABEL_18;
    }

LABEL_20:
    v9 = (v9 + v15) & v8;
    v10 = v7 + 72 * v9;
    this = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>();
    ++v15;
    if (this)
    {
      goto LABEL_9;
    }
  }

  if (*(v10 + 24) != 1)
  {
    goto LABEL_23;
  }

LABEL_18:
  if (!WebCore::operator==())
  {
    goto LABEL_20;
  }

  this = WebCore::operator==();
  if ((this & 1) == 0)
  {
    goto LABEL_20;
  }

  v12 = *v6;
  if (*v6)
  {
    goto LABEL_11;
  }

  v14 = 0;
  v13 = 1;
LABEL_12:
  if (v14 != v10)
  {
    if (*(v10 + 64) != 1)
    {
      --*(v10 + 64);
      goto LABEL_53;
    }

    if (v13)
    {
      v16 = 0;
LABEL_29:
      if (v16 != v10)
      {
        if (!*(v10 + 56))
        {
          v17 = *(v10 + 40);
          *(v10 + 40) = 0;
          if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v17, v11);
          }

          this = *(v10 + 32);
          *(v10 + 32) = 0;
          if (this && atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            this = WTF::StringImpl::destroy(this, v11);
          }
        }

        *(v10 + 56) = -1;
        if (!*(v10 + 24))
        {
          v18 = *(v10 + 8);
          *(v10 + 8) = 0;
          if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v18, v11);
          }

          this = *v10;
          *v10 = 0;
          if (this && atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            this = WTF::StringImpl::destroy(this, v11);
          }
        }

        *v10 = -1;
        *(v10 + 8) = 0;
        *(v10 + 16) = 0;
        *(v10 + 24) = 0;
        v19 = *v6;
        v20 = vadd_s32(*(*v6 - 16), 0xFFFFFFFF00000001);
        *(v19 - 16) = v20;
        v21 = *(v19 - 4);
        if (6 * v20.i32[1] < v21 && v21 >= 9)
        {
          this = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,unsigned int>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,unsigned int,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::rehash((v3 + 48), v21 >> 1, 0);
        }
      }
    }

    else
    {
      v16 = v12 + 72 * *(v12 - 4);
      if (v16 != v10)
      {
        goto LABEL_29;
      }
    }

    v23 = *(v3 + 32);
    if (v23)
    {
      v24 = IPC::Encoder::operator new(0x238, v11);
      *v24 = 813;
      *(v24 + 68) = 0;
      *(v24 + 70) = 0;
      *(v24 + 69) = 0;
      *(v24 + 2) = 0;
      *(v24 + 3) = 0;
      *(v24 + 1) = 0;
      IPC::Encoder::encodeHeader(v24);
      v29 = v24;
      IPC::ArgumentCoder<WebCore::ClientOrigin,void>::encode(v24, a2);
      IPC::Connection::sendMessageImpl(v23, &v29, 0, 0);
      this = v29;
      v29 = 0;
      if (this)
      {
        IPC::Encoder::~Encoder(this, v25);
        this = bmalloc::api::tzoneFree(v27, v28);
      }
    }
  }

LABEL_53:
  v26 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v26, 0, memory_order_release, memory_order_relaxed);
  if (v26 != 1)
  {
    return WTF::Lock::unlockSlow(v5);
  }

  return this;
}

uint64_t WebKit::WebCacheStorageConnection::clearMemoryRepresentation@<X0>(WebKit::WebCacheStorageConnection *this@<X0>, const WebCore::ClientOrigin *a2@<X1>, atomic_uint **a3@<X8>)
{
  WebKit::WebCacheStorageConnection::connection(&v24, this);
  v5 = v24;
  *v29 = 0;
  *&v29[8] = 0;
  *&v29[16] = "sendWithPromisedReply";
  *&v29[24] = 0;
  v6 = WTF::fastMalloc(0x78);
  v7 = WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::NativePromise(v6, v29);
  v8 = 0;
  v26 = v7;
  v27 = *v29;
  v28 = *&v29[16];
  atomic_fetch_add((v7 + 8), 1u);
  v9 = (v7 + 48);
  atomic_compare_exchange_strong_explicit((v7 + 48), &v8, 1u, memory_order_acquire, memory_order_acquire);
  if (v8)
  {
    v7 = MEMORY[0x19EB01E30](v7 + 48);
  }

  v10 = WTF::NativePromiseBase::logChannel(v7);
  if (*v10 && v10[16] >= 4u)
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>(v10, v29, " runSynchronouslyOnTarget ", v6);
  }

  atomic_store(0, (v6 + 113));
  v11 = 1;
  atomic_compare_exchange_strong_explicit((v6 + 48), &v11, 0, memory_order_release, memory_order_relaxed);
  if (v11 != 1)
  {
    WTF::Lock::unlockSlow(v9);
  }

  if (atomic_fetch_add((v6 + 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v6 + 8));
    (*(*v6 + 16))(v6);
  }

  v12 = v26;
  if (v26)
  {
    atomic_fetch_add(v26 + 2, 1u);
    v13 = v26;
  }

  else
  {
    v13 = 0;
  }

  *a3 = v12;
  v26 = 0;
  *&v29[8] = v27;
  *&v29[24] = v28;
  v14 = WTF::fastMalloc(0x30);
  *v14 = &unk_1F1122AB8;
  *(v14 + 8) = v13;
  *v29 = 0;
  v15 = *&v29[24];
  *(v14 + 16) = *&v29[8];
  *(v14 + 32) = v15;
  v25[0] = v14;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v25[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    WTF::NativePromiseProducer<void,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(v29);
    v17 = IPC::Encoder::operator new(0x238, v16);
    *v17 = 751;
    *(v17 + 68) = 0;
    *(v17 + 70) = 0;
    *(v17 + 69) = 0;
    *(v17 + 2) = 0;
    *(v17 + 3) = 0;
    *(v17 + 1) = 0;
    IPC::Encoder::encodeHeader(v17);
    *v29 = v17;
    IPC::ArgumentCoder<WebCore::ClientOrigin,void>::encode(v17, a2);
    IPC::Connection::sendMessageWithAsyncReplyWithDispatcher(v5, v29, v25, 0, 0);
    v19 = *v29;
    *v29 = 0;
    if (v19)
    {
      IPC::Encoder::~Encoder(v19, v18);
      bmalloc::api::tzoneFree(v22, v23);
    }

    v20 = v25[0];
    v25[0] = 0;
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    result = WTF::NativePromiseProducer<void,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(&v26);
    if (v5)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v5);
    }
  }

  return result;
}

uint64_t WebKit::WebCacheStorageConnection::engineRepresentation@<X0>(WebKit::WebCacheStorageConnection *this@<X0>, atomic_uint **a2@<X8>)
{
  WebKit::WebCacheStorageConnection::connection(&v22, this);
  v3 = v22;
  *v27 = 0;
  *&v27[8] = 0;
  *&v27[16] = "sendWithPromisedReply";
  *&v27[24] = 0;
  v4 = WTF::fastMalloc(0x80);
  v5 = WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::NativePromise(v4, v27);
  v6 = 0;
  v24 = v5;
  v25 = *v27;
  v26 = *&v27[16];
  atomic_fetch_add((v5 + 8), 1u);
  v7 = (v5 + 48);
  atomic_compare_exchange_strong_explicit((v5 + 48), &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    v5 = MEMORY[0x19EB01E30](v5 + 48);
  }

  v8 = WTF::NativePromiseBase::logChannel(v5);
  if (*v8 && v8[16] >= 4u)
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>(v8, v27, " runSynchronouslyOnTarget ", v4);
  }

  atomic_store(0, (v4 + 121));
  v9 = 1;
  atomic_compare_exchange_strong_explicit((v4 + 48), &v9, 0, memory_order_release, memory_order_relaxed);
  if (v9 != 1)
  {
    WTF::Lock::unlockSlow(v7);
  }

  if (atomic_fetch_add((v4 + 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v4 + 8));
    (*(*v4 + 16))(v4);
  }

  v10 = v24;
  if (v24)
  {
    atomic_fetch_add(v24 + 2, 1u);
    v11 = v24;
  }

  else
  {
    v11 = 0;
  }

  *a2 = v10;
  v24 = 0;
  *&v27[8] = v25;
  *&v27[24] = v26;
  v12 = WTF::fastMalloc(0x30);
  *v12 = &unk_1F1122B08;
  *(v12 + 8) = v11;
  *v27 = 0;
  v13 = *&v27[24];
  *(v12 + 16) = *&v27[8];
  *(v12 + 32) = v13;
  v23[0] = v12;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v23[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    WTF::NativePromiseProducer<WTF::String,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(v27);
    v15 = IPC::Encoder::operator new(0x238, v14);
    *v15 = 758;
    *(v15 + 68) = 0;
    *(v15 + 70) = 0;
    *(v15 + 69) = 0;
    *(v15 + 2) = 0;
    *(v15 + 3) = 0;
    *(v15 + 1) = 0;
    IPC::Encoder::encodeHeader(v15);
    *v27 = v15;
    IPC::Connection::sendMessageWithAsyncReplyWithDispatcher(v3, v27, v23, 0, 0);
    v17 = *v27;
    *v27 = 0;
    if (v17)
    {
      IPC::Encoder::~Encoder(v17, v16);
      bmalloc::api::tzoneFree(v20, v21);
    }

    v18 = v23[0];
    v23[0] = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    result = WTF::NativePromiseProducer<WTF::String,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(&v24);
    if (v3)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
    }
  }

  return result;
}

IPC::Encoder *WebKit::WebCacheStorageConnection::updateQuotaBasedOnSpaceUsage(WebKit::WebCacheStorageConnection *this, const WebCore::ClientOrigin *a2)
{
  WebKit::WebCacheStorageConnection::connection(&v10, this);
  v3 = v10;
  v5 = IPC::Encoder::operator new(0x238, v4);
  *v5 = 810;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = 0;
  IPC::Encoder::encodeHeader(v5);
  v11 = v5;
  IPC::ArgumentCoder<WebCore::ClientOrigin,void>::encode(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v11, 0, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    result = bmalloc::api::tzoneFree(v8, v9);
    if (!v3)
    {
      return result;
    }
  }

  else if (!v3)
  {
    return result;
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
}

uint64_t WebKit::WebCacheStorageProvider::createCacheStorageConnection@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = this;
  if (!*(this + 24))
  {
    v4 = WTF::fastMalloc(0x38);
    *(v4 + 8) = 1;
    *(v4 + 16) = 0;
    *v4 = &unk_1F11220E8;
    *(v4 + 24) = 0;
    *(v4 + 40) = 0;
    *(v4 + 48) = 0;
    *(v4 + 32) = 0;
    this = *(v2 + 24);
    *(v2 + 24) = v4;
    if (this)
    {
      if (atomic_fetch_add((this + 8), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, (this + 8));
        this = (*(*this + 8))(this);
      }
    }
  }

  v5 = *(v2 + 24);
  atomic_fetch_add((v5 + 8), 1u);
  *a2 = v5;
  return this;
}

void WebKit::WebCacheStorageProvider::~WebCacheStorageProvider(WebKit::WebCacheStorageProvider *this, void *a2)
{
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  if (*(this + 4) == 1)
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);
  }

  else
  {
    __break(0xC471u);
  }
}

{
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  if (*(this + 4) == 1)
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);

    WTF::fastFree(this, v4);
  }

  else
  {
    __break(0xC471u);
  }
}

WTF::Lock *WebCore::CacheStorageConnection::clearMemoryRepresentation@<X0>(uint64_t *a1@<X8>)
{
  v53[2] = *MEMORY[0x1E69E9840];
  v39 = 0uLL;
  v40 = "clearMemoryRepresentation";
  v41 = 0;
  v4 = WTF::fastMalloc(0x78);
  v5 = WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::NativePromise(v4, &v39);
  v9 = 0;
  *a1 = v5;
  v10 = (v5 + 48);
  v42 = v10;
  v43 = 1;
  atomic_compare_exchange_strong_explicit(v10, &v9, 1u, memory_order_acquire, memory_order_acquire);
  if (v9)
  {
    v10 = MEMORY[0x19EB01E30](v10, v6, v7, v8);
  }

  v11 = WTF::NativePromiseBase::logChannel(v10);
  if (*v11)
  {
    v12 = v11[16] >= 4u;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13 = v11;
    WTF::Logger::LogSiteIdentifier::toString(&v47, &v39);
    WTF::String::String(&v46, " rejecting ");
    WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v45, v4);
    WTF::makeString<WTF::String,WTF::String,WTF::String>(&v47, &v46, &v45, &v48);
    v15 = v45;
    v45 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v14);
    }

    v16 = v46;
    v46 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v14);
    }

    v17 = v47;
    v47 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v14);
    }

    v18 = *(v13 + 4);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v19)
    {
      WTF::String::utf8();
      v21 = v44[0] ? v44[0] + 16 : 0;
      *buf = 136446210;
      v50 = v21;
      _os_log_impl(&dword_19D52D000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v19 = v44[0];
      v44[0] = 0;
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

    if (*v13 && v13[16] >= 4u)
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
              WTF::Logger::LogSiteIdentifier::toString((&v50 + 4), &v39);
              v51 = 0;
              WTF::String::String(v52, " rejecting ");
              v52[2] = 0;
              WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(v53, v4);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v44, buf, 3uLL);
              (*(*v29 + 16))(v29, v13, 4, v44);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v44, v30);
              for (i = 40; i != -8; i -= 16)
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

    v34 = v48;
    v48 = 0;
    if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v34, v20);
    }
  }

  v35 = *(v4 + 64);
  if (v35 >= 2 && v35 != 255)
  {
    v36 = *(v4 + 56);
    *(v4 + 56) = 0;
    if (v36)
    {
      (*(*v36 + 8))(v36);
    }
  }

  *(v4 + 56) = 256;
  v37 = 1;
  *(v4 + 64) = 1;
  result = WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::dispatchAll(v4, &v42);
  if (v43 == 1)
  {
    result = v42;
    atomic_compare_exchange_strong_explicit(v42, &v37, 0, memory_order_release, memory_order_relaxed);
    if (v37 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

WTF::Lock *WebCore::CacheStorageConnection::engineRepresentation@<X0>(uint64_t *a1@<X8>)
{
  v51[2] = *MEMORY[0x1E69E9840];
  v37 = 0uLL;
  v38 = "engineRepresentation";
  v39 = 0;
  v3 = WTF::fastMalloc(0x80);
  v4 = WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::NativePromise(v3, &v37);
  v8 = 0;
  *a1 = v4;
  v9 = (v4 + 48);
  v40 = v9;
  v41 = 1;
  atomic_compare_exchange_strong_explicit(v9, &v8, 1u, memory_order_acquire, memory_order_acquire);
  if (v8)
  {
    v9 = MEMORY[0x19EB01E30](v9, v5, v6, v7);
  }

  v10 = WTF::NativePromiseBase::logChannel(v9);
  if (*v10)
  {
    v12 = v10[16] >= 4u;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13 = v10;
    WTF::Logger::LogSiteIdentifier::toString(&v45, &v37);
    WTF::String::String(&v44, " rejecting ");
    WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v43, v3);
    WTF::makeString<WTF::String,WTF::String,WTF::String>(&v45, &v44, &v43, &v46);
    v15 = v43;
    v43 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v14);
    }

    v16 = v44;
    v44 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v14);
    }

    v17 = v45;
    v45 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v14);
    }

    v18 = *(v13 + 4);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v19)
    {
      WTF::String::utf8();
      v20 = v42[0] ? v42[0] + 16 : 0;
      *buf = 136446210;
      v48 = v20;
      _os_log_impl(&dword_19D52D000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v19 = v42[0];
      v42[0] = 0;
      if (v19)
      {
        if (*v19 == 1)
        {
          v19 = WTF::fastFree(v19, v11);
        }

        else
        {
          --*v19;
        }
      }
    }

    if (*v13 && v13[16] >= 4u)
    {
      v21 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v22 = *v21;
        if (v22)
        {
          break;
        }

        v23 = *v21;
        atomic_compare_exchange_strong_explicit(v21, &v23, v22 | 1, memory_order_acquire, memory_order_acquire);
        if (v23 == v22)
        {
          v24 = WTF::Logger::observers(v19);
          v25 = *(v24 + 12);
          if (v25)
          {
            v26 = *v24;
            v27 = *v24 + 8 * v25;
            do
            {
              v28 = *v26;
              *buf = 0;
              WTF::Logger::LogSiteIdentifier::toString((&v48 + 4), &v37);
              v49 = 0;
              WTF::String::String(v50, " rejecting ");
              v50[2] = 0;
              WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(v51, v3);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v42, buf, 3uLL);
              (*(*v28 + 16))(v28, v13, 4, v42);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v42, v29);
              for (i = 40; i != -8; i -= 16)
              {
                v31 = *&buf[i];
                *&buf[i] = 0;
                if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v31, v11);
                }
              }

              ++v26;
            }

            while (v26 != v27);
          }

          v32 = 1;
          atomic_compare_exchange_strong_explicit(v21, &v32, 0, memory_order_release, memory_order_relaxed);
          if (v32 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v33 = v46;
    v46 = 0;
    if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v33, v11);
    }
  }

  if (*(v3 + 72) > 1u)
  {
    if (*(v3 + 72) == 2)
    {
      v34 = *(v3 + 56);
      *(v3 + 56) = 0;
      if (v34)
      {
        (*(*v34 + 8))(v34);
      }
    }
  }

  else if (*(v3 + 72))
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::RouterSourceDict,WebCore::RouterSourceEnum>,(mpark::detail::Trait)1>::~move_constructor(v3 + 56, v11);
  }

  *(v3 + 56) = 0;
  v35 = 1;
  *(v3 + 64) = 1;
  *(v3 + 72) = 1;
  result = WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::dispatchAll(v3, &v40);
  if (v41 == 1)
  {
    result = v40;
    atomic_compare_exchange_strong_explicit(v40, &v35, 0, memory_order_release, memory_order_relaxed);
    if (v35 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

uint64_t WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = (result + 48);
  atomic_compare_exchange_strong_explicit((result + 48), &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    result = MEMORY[0x19EB01E30](result + 48);
  }

  v4 = *(v1 + 132);
  if (v4)
  {
    v5 = *(v1 + 120);
    v6 = 40 * v4;
    do
    {
      result = WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(v5);
      v5 += 40;
      v6 -= 40;
    }

    while (v6);
  }

  v7 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {

    return WTF::Lock::unlockSlow(v3);
  }

  return result;
}

uint64_t WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::~NativePromise(uint64_t a1)
{
  v1 = WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::~NativePromise(a1);

  return WTF::fastFree(v1, v2);
}

{
  v36[2] = *MEMORY[0x1E69E9840];
  v2 = WTF::NativePromiseBase::logChannel(a1);
  if (*v2)
  {
    v3 = v2[16] >= 4u;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = v2;
    WTF::String::String(&v32, "destroying ");
    WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v31, a1);
    *buf = v32;
    v30[0] = v31;
    result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v30, &v33);
    if (!v33)
    {
      __break(0xC471u);
      return result;
    }

    v7 = v31;
    v31 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v6);
    }

    v8 = v32;
    v32 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v6);
    }

    v9 = *(v4 + 4);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      WTF::String::utf8();
      v12 = v30[0] ? v30[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v12;
      _os_log_impl(&dword_19D52D000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v10 = v30[0];
      v30[0] = 0;
      if (v10)
      {
        if (*v10 == 1)
        {
          v10 = WTF::fastFree(v10, v11);
        }

        else
        {
          --*v10;
        }
      }
    }

    if (*v4 && v4[16] >= 4u)
    {
      v13 = MEMORY[0x1E696EBC0];
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
          v16 = WTF::Logger::observers(v10);
          v17 = *(v16 + 12);
          if (v17)
          {
            v18 = *v16;
            v19 = *v16 + 8 * v17;
            do
            {
              v20 = *v18;
              *buf = 0;
              WTF::String::String(&buf[8], "destroying ");
              v35 = 0;
              WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(v36, a1);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v30, buf, 2uLL);
              (*(*v20 + 16))(v20, v4, 4, v30);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v30, v21);
              for (i = 24; i != -8; i -= 16)
              {
                v23 = *&buf[i];
                *&buf[i] = 0;
                if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v23, v11);
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
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v25 = v33;
    v33 = 0;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v11);
    }
  }

  WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(a1);
  WTF::Vector<WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 120, v26);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 96, v27);
  v28 = *(a1 + 88);
  if (v28 >= 2 && v28 != 255)
  {
    v29 = *(a1 + 56);
    *(a1 + 56) = 0;
    if (v29)
    {
      (*(*v29 + 8))(v29);
    }
  }

  *(a1 + 88) = -1;
  return a1;
}

atomic_uint **WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(atomic_uint **result)
{
  v1 = *result;
  if (*result)
  {
    atomic_fetch_add(v1 + 2, 1u);
    result = WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(v1);
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v1 + 2);
      v2 = *(*v1 + 16);

      return v2(v1);
    }
  }

  return result;
}

uint64_t WTF::Vector<WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 40 * v3;
    do
    {
      v4 = WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(v4) + 5;
      v5 -= 40;
    }

    while (v5);
  }

  v6 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v6, a2);
  }

  return a1;
}

atomic_uint **WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(atomic_uint **a1)
{
  WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(a1);
  v2 = *a1;
  *a1 = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
  }

  return a1;
}

uint64_t WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::dispatchAll(uint64_t a1, atomic_uchar *volatile *a2)
{
  v38[0] = &v38[2];
  v38[1] = 1;
  __dst = &v33;
  v32 = 1;
  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt(&__dst, (a1 + 96));
  v4 = *(a1 + 108);
  if (v4)
  {
    WTF::VectorDestructor<true,WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>>::destruct(*(a1 + 96), (*(a1 + 96) + 8 * v4));
  }

  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt((a1 + 96), v38);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v38, v5);
  *&v6 = 0;
  v7 = *(a1 + 120);
  v28 = v7;
  v8 = *(a1 + 132);
  v29 = *(a1 + 128);
  v30 = v8;
  *v38 = v6;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v10 = WTF::Vector<WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v38, v9);
  if (HIDWORD(v32))
  {
    v12 = __dst;
    v13 = 8 * HIDWORD(v32);
    do
    {
      v14 = *v12;
      if (!*(*v12 + 16) || (v15 = atomic_load((a1 + 137)), v15 == 1) && (v10 = (*(**(v14 + 16) + 24))(*(v14 + 16)), v10))
      {
        if (*(v14 + 56) == 1)
        {
          v38[0] = v14;
          v10 = WTF::NativePromiseBase::logChannel(v10);
          if (*v10)
          {
            v18 = v10[16] >= 4u;
          }

          else
          {
            v18 = 0;
          }

          if (v18)
          {
            v10 = WTF::Logger::log<char [32],WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(v10, a1, v38, (v14 + 24));
          }
        }

        else
        {
          v19 = *a2;
          v20 = 1;
          atomic_compare_exchange_strong_explicit(*a2, &v20, 0, memory_order_release, memory_order_relaxed);
          if (v20 != 1)
          {
            WTF::Lock::unlockSlow(v19);
          }

          if (WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::hasRunnable(a1))
          {
            WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::takeResultRunnable(&v34, a1);
            v21 = v34;
            (*(*v34 + 16))(v38, v34);
            (*(*v14 + 24))(v14, a1, v38);
            (*(*v21 + 8))(v21);
          }

          else
          {
            WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::takeResult(v38, a1);
            (*(*v14 + 24))(v14, a1, v38);
          }

          v22 = 0;
          v10 = *a2;
          atomic_compare_exchange_strong_explicit(*a2, &v22, 1u, memory_order_acquire, memory_order_acquire);
          if (v22)
          {
            v10 = MEMORY[0x19EB01E30](v10, v11);
          }
        }
      }

      else
      {
        v16 = *(v14 + 16);
        atomic_fetch_add((v14 + 8), 1u);
        atomic_fetch_add((a1 + 8), 1u);
        v17 = WTF::fastMalloc(0x18);
        *v17 = &unk_1F11221C0;
        v17[1] = v14;
        v17[2] = a1;
        v38[0] = v17;
        (*(*v16 + 16))(v16, v38);
        v10 = v38[0];
        v38[0] = 0;
        if (v10)
        {
          v10 = (*(*v10 + 8))(v10);
        }
      }

      ++v12;
      v13 -= 8;
    }

    while (v13);
  }

  if (v8)
  {
    v23 = v7 + 40 * v8;
    do
    {
      v24 = *v7;
      *v7 = 0;
      v38[0] = v24;
      v25 = *(v7 + 24);
      *&v38[1] = *(v7 + 8);
      *&v38[3] = v25;
      if (v24)
      {
        atomic_fetch_add(v24 + 2, 1u);
        v34 = 0;
        v35 = 0;
        v36 = "<chained promise>";
        v37 = 0;
        WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::settleAsChainedPromise<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::Storage>(v24, (a1 + 56), &v34);
        if (atomic_fetch_add(v24 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v24 + 2);
          (*(*v24 + 16))(v24);
        }
      }

      else
      {
        v34 = 0;
        v35 = 0;
        v36 = "<chained promise>";
        v37 = 0;
        WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::settleAsChainedPromise<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::Storage>(0, (a1 + 56), &v34);
      }

      WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(v38);
      v7 += 40;
    }

    while (v7 != v23);
  }

  WTF::Vector<WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v28, v11);
  return WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&__dst, v26);
}

mpark *WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::takeResultRunnable(mpark *result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = (a2 + 48);
  atomic_compare_exchange_strong_explicit((a2 + 48), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    result = MEMORY[0x19EB01E30](a2 + 48);
  }

  if (*(a2 + 88) != 2)
  {
    mpark::throw_bad_variant_access(result);
  }

  v6 = *(a2 + 56);
  *(a2 + 56) = 0;
  *v3 = v6;
  v7 = 1;
  atomic_compare_exchange_strong_explicit((a2 + 48), &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

mpark *WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::takeResult(mpark *result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = (a2 + 48);
  atomic_compare_exchange_strong_explicit((a2 + 48), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    result = MEMORY[0x19EB01E30](a2 + 48);
  }

  if (*(a2 + 88) != 1)
  {
    mpark::throw_bad_variant_access(result);
  }

  v6 = *(a2 + 72);
  *v3 = *(a2 + 56);
  *(v3 + 1) = v6;
  v7 = 1;
  atomic_compare_exchange_strong_explicit((a2 + 48), &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F11221C0;
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

uint64_t WTF::Detail::CallableWrapper<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F11221C0;
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

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::call(WTF::NativePromiseBase *a1)
{
  v2 = *(a1 + 1);
  v1 = *(a1 + 2);
  if (*(v2 + 56) == 1)
  {
    v11[0] = *(a1 + 1);
    result = WTF::NativePromiseBase::logChannel(a1);
    if (*result)
    {
      v4 = *(result + 16) >= 4u;
    }

    else
    {
      v4 = 0;
    }

    if (v4)
    {
      return WTF::Logger::log<char [32],WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, v1, v11, (v2 + 24));
    }
  }

  else
  {
    hasRunnable = WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::hasRunnable(*(a1 + 2));
    v7 = *(a1 + 1);
    v8 = *(a1 + 2);
    if (hasRunnable)
    {
      WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::takeResultRunnable(&v10, v8);
      v9 = v10;
      (*(*v10 + 16))(v11, v10);
      (*(*v7 + 24))(v7, v8, v11);
      return (*(*v9 + 8))(v9);
    }

    else
    {
      WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::takeResult(v11, v8);
      return (*(*v7 + 24))(v7, v8, v11);
    }
  }

  return result;
}

WTF::Lock *WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::settleAsChainedPromise<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::Storage>(uint64_t a1, uint64_t *a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v6 = 0;
  v7 = (a1 + 48);
  v24 = v7;
  v25 = 1;
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
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>(v8, a3, " settling chained promise ", a1);
  }

  v10 = *(a1 + 88);
  v11 = *(a2 + 32);
  if (v10 != 255 || v11 != 255)
  {
    switch(v11)
    {
      case 255:
        if (v10 >= 2 && v10 != 255)
        {
          v12 = *(a1 + 56);
          *(a1 + 56) = 0;
          if (v12)
          {
            (*(*v12 + 8))(v12);
          }
        }

        v13 = -1;
        goto LABEL_40;
      case 2:
        if (v10 >= 2 && v10 != 255)
        {
          if (v10 == 2)
          {
            v15 = *a2;
            *a2 = 0;
            v16 = *(a1 + 56);
            *(a1 + 56) = v15;
            if (v16)
            {
              (*(*v16 + 8))(v16);
            }

            goto LABEL_41;
          }

          v20 = *(a1 + 56);
          *(a1 + 56) = 0;
          if (v20)
          {
            (*(*v20 + 8))(v20);
          }
        }

        v21 = *a2;
        *a2 = 0;
        *(a1 + 56) = v21;
        v13 = 2;
        goto LABEL_40;
      case 1:
        if (*(a1 + 88) && v10 != 255)
        {
          if (v10 == 1)
          {
            v14 = *a2;
            *(a1 + 72) = *(a2 + 1);
            *(a1 + 56) = v14;
            goto LABEL_41;
          }

          v18 = *(a1 + 56);
          *(a1 + 56) = 0;
          if (v18)
          {
            (*(*v18 + 8))(v18);
          }
        }

        *(a1 + 88) = -1;
        v19 = *a2;
        *(a1 + 72) = *(a2 + 1);
        *(a1 + 56) = v19;
        v13 = 1;
LABEL_40:
        *(a1 + 88) = v13;
        goto LABEL_41;
    }

    if (*(a1 + 88))
    {
      if (v10 != 1 && v10 != 255)
      {
        v17 = *(a1 + 56);
        *(a1 + 56) = 0;
        if (v17)
        {
          (*(*v17 + 8))(v17);
        }
      }

      *(a1 + 88) = 0;
    }
  }

LABEL_41:
  result = WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::dispatchAll(a1, &v24);
  v23 = v25;
  if (v25 == 1)
  {
    result = v24;
    atomic_compare_exchange_strong_explicit(v24, &v23, 0, memory_order_release, memory_order_relaxed);
    if (v23 != 1)
    {

      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

WTF::StringImpl *WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>(uint64_t a1, WTF::Logger::LogSiteIdentifier *this, const char *a3, uint64_t a4)
{
  v38[2] = *MEMORY[0x1E69E9840];
  WTF::Logger::LogSiteIdentifier::toString(&v32, this);
  WTF::String::String(&v31, a3);
  WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v30, a4);
  WTF::makeString<WTF::String,WTF::String,WTF::String>(&v32, &v31, &v30, &v33);
  v9 = v30;
  v30 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  v10 = v31;
  v31 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v8);
  }

  v11 = v32;
  v32 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v8);
  }

  v12 = *(a1 + 32);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    WTF::String::utf8();
    v15 = v29[0] ? v29[0] + 16 : 0;
    *buf = 136446210;
    v35 = v15;
    _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    v13 = v29[0];
    v29[0] = 0;
    if (v13)
    {
      if (*v13 == 1)
      {
        v13 = WTF::fastFree(v13, v14);
      }

      else
      {
        --*v13;
      }
    }
  }

  if (*a1 && *(a1 + 16) >= 4u)
  {
    v16 = MEMORY[0x1E696EBC0];
    while (1)
    {
      v17 = *v16;
      if (v17)
      {
        break;
      }

      v18 = *v16;
      atomic_compare_exchange_strong_explicit(v16, &v18, v17 | 1, memory_order_acquire, memory_order_acquire);
      if (v18 == v17)
      {
        v19 = WTF::Logger::observers(v13);
        v20 = *(v19 + 12);
        if (v20)
        {
          v21 = *v19;
          v22 = *v19 + 8 * v20;
          do
          {
            v23 = *v21;
            *buf = 0;
            WTF::Logger::LogSiteIdentifier::toString((&v35 + 4), this);
            v36 = 0;
            WTF::String::String(v37, a3);
            v37[2] = 0;
            WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(v38, a4);
            WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v29, buf, 3uLL);
            (*(*v23 + 16))(v23, a1, 4, v29);
            WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v29, v24);
            for (i = 40; i != -8; i -= 16)
            {
              v26 = *&buf[i];
              *&buf[i] = 0;
              if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v26, v14);
              }
            }

            ++v21;
          }

          while (v21 != v22);
        }

        v27 = 1;
        atomic_compare_exchange_strong_explicit(v16, &v27, 0, memory_order_release, memory_order_relaxed);
        if (v27 != 1)
        {
          WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
        }

        break;
      }
    }
  }

  result = v33;
  v33 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v14);
    }
  }

  return result;
}

uint64_t WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = (result + 48);
  atomic_compare_exchange_strong_explicit((result + 48), &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    result = MEMORY[0x19EB01E30](result + 48);
  }

  v4 = *(v1 + 108);
  if (v4)
  {
    v5 = *(v1 + 96);
    v6 = 40 * v4;
    do
    {
      result = WTF::NativePromiseProducer<BOOL,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(v5);
      v5 += 40;
      v6 -= 40;
    }

    while (v6);
  }

  v7 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {

    return WTF::Lock::unlockSlow(v3);
  }

  return result;
}

uint64_t WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::~NativePromise(uint64_t a1)
{
  v1 = WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::~NativePromise(a1);

  return WTF::fastFree(v1, v2);
}

{
  v36[2] = *MEMORY[0x1E69E9840];
  v2 = WTF::NativePromiseBase::logChannel(a1);
  if (*v2)
  {
    v3 = v2[16] >= 4u;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = v2;
    WTF::String::String(&v32, "destroying ");
    WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v31, a1);
    *buf = v32;
    v30[0] = v31;
    result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v30, &v33);
    if (!v33)
    {
      __break(0xC471u);
      return result;
    }

    v7 = v31;
    v31 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v6);
    }

    v8 = v32;
    v32 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v6);
    }

    v9 = *(v4 + 4);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      WTF::String::utf8();
      v12 = v30[0] ? v30[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v12;
      _os_log_impl(&dword_19D52D000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v10 = v30[0];
      v30[0] = 0;
      if (v10)
      {
        if (*v10 == 1)
        {
          v10 = WTF::fastFree(v10, v11);
        }

        else
        {
          --*v10;
        }
      }
    }

    if (*v4 && v4[16] >= 4u)
    {
      v13 = MEMORY[0x1E696EBC0];
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
          v16 = WTF::Logger::observers(v10);
          v17 = *(v16 + 12);
          if (v17)
          {
            v18 = *v16;
            v19 = *v16 + 8 * v17;
            do
            {
              v20 = *v18;
              *buf = 0;
              WTF::String::String(&buf[8], "destroying ");
              v35 = 0;
              WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(v36, a1);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v30, buf, 2uLL);
              (*(*v20 + 16))(v20, v4, 4, v30);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v30, v21);
              for (i = 24; i != -8; i -= 16)
              {
                v23 = *&buf[i];
                *&buf[i] = 0;
                if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v23, v11);
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
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v25 = v33;
    v33 = 0;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v11);
    }
  }

  WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(a1);
  WTF::Vector<WTF::NativePromiseProducer<BOOL,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 96, v26);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 72, v27);
  v28 = *(a1 + 64);
  if (v28 >= 2 && v28 != 255)
  {
    v29 = *(a1 + 56);
    *(a1 + 56) = 0;
    if (v29)
    {
      (*(*v29 + 8))(v29);
    }
  }

  *(a1 + 64) = -1;
  return a1;
}

atomic_uint **WTF::NativePromiseProducer<BOOL,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(atomic_uint **result)
{
  v1 = *result;
  if (*result)
  {
    atomic_fetch_add(v1 + 2, 1u);
    result = WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(v1);
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v1 + 2);
      v2 = *(*v1 + 16);

      return v2(v1);
    }
  }

  return result;
}

uint64_t WTF::Vector<WTF::NativePromiseProducer<BOOL,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 40 * v3;
    do
    {
      v4 = WTF::NativePromiseProducer<BOOL,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(v4) + 5;
      v5 -= 40;
    }

    while (v5);
  }

  v6 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v6, a2);
  }

  return a1;
}

atomic_uint **WTF::NativePromiseProducer<BOOL,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(atomic_uint **a1)
{
  WTF::NativePromiseProducer<BOOL,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(a1);
  v2 = *a1;
  *a1 = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
  }

  return a1;
}

uint64_t WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::dispatchAll(uint64_t a1, atomic_uchar *volatile *a2)
{
  v38[0] = &v38[2];
  v38[1] = 1;
  __dst = &v33;
  v32 = 1;
  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt(&__dst, (a1 + 72));
  v4 = *(a1 + 84);
  if (v4)
  {
    WTF::VectorDestructor<true,WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>>::destruct(*(a1 + 72), (*(a1 + 72) + 8 * v4));
  }

  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt((a1 + 72), v38);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v38, v5);
  *&v6 = 0;
  v7 = *(a1 + 96);
  v28 = v7;
  v8 = *(a1 + 108);
  v29 = *(a1 + 104);
  v30 = v8;
  *v38 = v6;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v10 = WTF::Vector<WTF::NativePromiseProducer<BOOL,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v38, v9);
  if (HIDWORD(v32))
  {
    v12 = __dst;
    v13 = 8 * HIDWORD(v32);
    do
    {
      v14 = *v12;
      if (!*(*v12 + 16) || (v15 = atomic_load((a1 + 113)), v15 == 1) && (v10 = (*(**(v14 + 16) + 24))(*(v14 + 16)), v10))
      {
        if (*(v14 + 56) == 1)
        {
          v38[0] = v14;
          v10 = WTF::NativePromiseBase::logChannel(v10);
          if (*v10)
          {
            v18 = v10[16] >= 4u;
          }

          else
          {
            v18 = 0;
          }

          if (v18)
          {
            v10 = WTF::Logger::log<char [32],WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(v10, a1, v38, (v14 + 24));
          }
        }

        else
        {
          v19 = *a2;
          v20 = 1;
          atomic_compare_exchange_strong_explicit(*a2, &v20, 0, memory_order_release, memory_order_relaxed);
          if (v20 != 1)
          {
            WTF::Lock::unlockSlow(v19);
          }

          if (WTF::NativePromise<void,void,0u>::hasRunnable(a1))
          {
            WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>::takeResultRunnable(v38, a1);
            v21 = v38[0];
            (*(*v38[0] + 16))(&v34, v38[0]);
            (*(*v14 + 24))(v14, a1, &v34);
            (*(*v21 + 8))(v21);
          }

          else
          {
            WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>::takeResult(v38, a1);
            (*(*v14 + 24))(v14, a1, v38);
          }

          v22 = 0;
          v10 = *a2;
          atomic_compare_exchange_strong_explicit(*a2, &v22, 1u, memory_order_acquire, memory_order_acquire);
          if (v22)
          {
            v10 = MEMORY[0x19EB01E30](v10, v11);
          }
        }
      }

      else
      {
        v16 = *(v14 + 16);
        atomic_fetch_add((v14 + 8), 1u);
        atomic_fetch_add((a1 + 8), 1u);
        v17 = WTF::fastMalloc(0x18);
        *v17 = &unk_1F1122210;
        v17[1] = v14;
        v17[2] = a1;
        v38[0] = v17;
        (*(*v16 + 16))(v16, v38);
        v10 = v38[0];
        v38[0] = 0;
        if (v10)
        {
          v10 = (*(*v10 + 8))(v10);
        }
      }

      ++v12;
      v13 -= 8;
    }

    while (v13);
  }

  if (v8)
  {
    v23 = v7 + 40 * v8;
    do
    {
      v24 = *v7;
      *v7 = 0;
      v38[0] = v24;
      v25 = *(v7 + 24);
      *&v38[1] = *(v7 + 8);
      *&v38[3] = v25;
      if (v24)
      {
        atomic_fetch_add(v24 + 2, 1u);
        v34 = 0;
        v35 = 0;
        v36 = "<chained promise>";
        v37 = 0;
        WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::settleAsChainedPromise<WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::Storage>(v24, (a1 + 56), &v34);
        if (atomic_fetch_add(v24 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v24 + 2);
          (*(*v24 + 16))(v24);
        }
      }

      else
      {
        v34 = 0;
        v35 = 0;
        v36 = "<chained promise>";
        v37 = 0;
        WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::settleAsChainedPromise<WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::Storage>(0, (a1 + 56), &v34);
      }

      WTF::NativePromiseProducer<BOOL,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(v38);
      v7 += 40;
    }

    while (v7 != v23);
  }

  WTF::Vector<WTF::NativePromiseProducer<BOOL,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v28, v11);
  return WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&__dst, v26);
}

void *WTF::Detail::CallableWrapper<WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1122210;
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

uint64_t WTF::Detail::CallableWrapper<WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1122210;
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

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::call(WTF::NativePromiseBase *a1)
{
  v2 = *(a1 + 1);
  v1 = *(a1 + 2);
  if (*(v2 + 56) == 1)
  {
    v11 = *(a1 + 1);
    result = WTF::NativePromiseBase::logChannel(a1);
    if (*result)
    {
      v4 = *(result + 16) >= 4u;
    }

    else
    {
      v4 = 0;
    }

    if (v4)
    {
      return WTF::Logger::log<char [32],WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, v1, &v11, (v2 + 24));
    }
  }

  else
  {
    hasRunnable = WTF::NativePromise<void,void,0u>::hasRunnable(*(a1 + 2));
    v7 = *(a1 + 1);
    v8 = *(a1 + 2);
    if (hasRunnable)
    {
      WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>::takeResultRunnable(&v11, v8);
      v9 = v11;
      (*(*v11 + 16))(v10, v11);
      (*(*v7 + 24))(v7, v8, v10);
      return (*(*v9 + 8))(v9);
    }

    else
    {
      WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>::takeResult(&v11, v8);
      return (*(*v7 + 24))(v7, v8, &v11);
    }
  }

  return result;
}

WTF::Lock *WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::settleAsChainedPromise<WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::Storage>(uint64_t a1, uint64_t *a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v6 = 0;
  v7 = (a1 + 48);
  v22 = v7;
  v23 = 1;
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
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>(v8, a3, " settling chained promise ", a1);
  }

  v10 = *(a1 + 64);
  v11 = *(a2 + 8);
  if (v10 != 255 || v11 != 255)
  {
    switch(v11)
    {
      case 255:
        if (v10 >= 2 && v10 != 255)
        {
          v12 = *(a1 + 56);
          *(a1 + 56) = 0;
          if (v12)
          {
            (*(*v12 + 8))(v12);
          }
        }

        v13 = -1;
        goto LABEL_40;
      case 2:
        if (v10 >= 2 && v10 != 255)
        {
          if (v10 == 2)
          {
            v14 = *a2;
            *a2 = 0;
            v15 = *(a1 + 56);
            *(a1 + 56) = v14;
            if (v15)
            {
              (*(*v15 + 8))(v15);
            }

            goto LABEL_41;
          }

          v18 = *(a1 + 56);
          *(a1 + 56) = 0;
          if (v18)
          {
            (*(*v18 + 8))(v18);
          }
        }

        v19 = *a2;
        *a2 = 0;
        *(a1 + 56) = v19;
        v13 = 2;
        goto LABEL_40;
      case 1:
        if (*(a1 + 64) && v10 != 255)
        {
          if (v10 == 1)
          {
            *(a1 + 56) = *a2;
            goto LABEL_41;
          }

          v17 = *(a1 + 56);
          *(a1 + 56) = 0;
          if (v17)
          {
            (*(*v17 + 8))(v17);
          }
        }

        *(a1 + 64) = -1;
        *(a1 + 56) = *a2;
        v13 = 1;
LABEL_40:
        *(a1 + 64) = v13;
        goto LABEL_41;
    }

    if (*(a1 + 64))
    {
      if (v10 != 1 && v10 != 255)
      {
        v16 = *(a1 + 56);
        *(a1 + 56) = 0;
        if (v16)
        {
          (*(*v16 + 8))(v16);
        }
      }

      *(a1 + 64) = 0;
    }
  }

LABEL_41:
  result = WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::dispatchAll(a1, &v22);
  v21 = v23;
  if (v23 == 1)
  {
    result = v22;
    atomic_compare_exchange_strong_explicit(v22, &v21, 0, memory_order_release, memory_order_relaxed);
    if (v21 != 1)
    {

      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

uint64_t WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = (result + 48);
  atomic_compare_exchange_strong_explicit((result + 48), &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    result = MEMORY[0x19EB01E30](result + 48);
  }

  v4 = *(v1 + 132);
  if (v4)
  {
    v5 = *(v1 + 120);
    v6 = 40 * v4;
    do
    {
      result = WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(v5);
      v5 += 40;
      v6 -= 40;
    }

    while (v6);
  }

  v7 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {

    return WTF::Lock::unlockSlow(v3);
  }

  return result;
}

uint64_t WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::~NativePromise(uint64_t a1)
{
  v1 = WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::~NativePromise(a1);

  return WTF::fastFree(v1, v2);
}

{
  v36[2] = *MEMORY[0x1E69E9840];
  v2 = WTF::NativePromiseBase::logChannel(a1);
  if (*v2)
  {
    v3 = v2[16] >= 4u;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = v2;
    WTF::String::String(&v32, "destroying ");
    WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v31, a1);
    *buf = v32;
    v30[0] = v31;
    result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v30, &v33);
    if (!v33)
    {
      __break(0xC471u);
      return result;
    }

    v7 = v31;
    v31 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v6);
    }

    v8 = v32;
    v32 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v6);
    }

    v9 = *(v4 + 4);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      WTF::String::utf8();
      v12 = v30[0] ? v30[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v12;
      _os_log_impl(&dword_19D52D000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v10 = v30[0];
      v30[0] = 0;
      if (v10)
      {
        if (*v10 == 1)
        {
          v10 = WTF::fastFree(v10, v11);
        }

        else
        {
          --*v10;
        }
      }
    }

    if (*v4 && v4[16] >= 4u)
    {
      v13 = MEMORY[0x1E696EBC0];
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
          v16 = WTF::Logger::observers(v10);
          v17 = *(v16 + 12);
          if (v17)
          {
            v18 = *v16;
            v19 = *v16 + 8 * v17;
            do
            {
              v20 = *v18;
              *buf = 0;
              WTF::String::String(&buf[8], "destroying ");
              v35 = 0;
              WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(v36, a1);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v30, buf, 2uLL);
              (*(*v20 + 16))(v20, v4, 4, v30);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v30, v21);
              for (i = 24; i != -8; i -= 16)
              {
                v23 = *&buf[i];
                *&buf[i] = 0;
                if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v23, v11);
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
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v25 = v33;
    v33 = 0;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v11);
    }
  }

  WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(a1);
  WTF::Vector<WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 120, v26);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 96, v27);
  if (*(a1 + 88) > 1u)
  {
    if (*(a1 + 88) == 2)
    {
      v29 = *(a1 + 56);
      *(a1 + 56) = 0;
      if (v29)
      {
        (*(*v29 + 8))(v29);
      }
    }
  }

  else if (*(a1 + 88))
  {
    if (!*(a1 + 80))
    {
      WTF::Vector<WebCore::DOMCacheEngine::CacheInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 56, v28);
    }

    *(a1 + 80) = -1;
  }

  *(a1 + 88) = -1;
  return a1;
}

atomic_uint **WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(atomic_uint **result)
{
  v1 = *result;
  if (*result)
  {
    atomic_fetch_add(v1 + 2, 1u);
    result = WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(v1);
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v1 + 2);
      v2 = *(*v1 + 16);

      return v2(v1);
    }
  }

  return result;
}

uint64_t WTF::Vector<WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 40 * v3;
    do
    {
      v4 = WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(v4) + 5;
      v5 -= 40;
    }

    while (v5);
  }

  v6 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v6, a2);
  }

  return a1;
}

atomic_uint **WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(atomic_uint **a1)
{
  WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(a1);
  v2 = *a1;
  *a1 = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
  }

  return a1;
}

uint64_t WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::dispatchAll(uint64_t a1, atomic_uchar *volatile *a2)
{
  *v39 = &v39[16];
  *&v39[8] = 1;
  __dst = &v34;
  v33 = 1;
  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt(&__dst, (a1 + 96));
  v4 = *(a1 + 108);
  if (v4)
  {
    WTF::VectorDestructor<true,WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>>::destruct(*(a1 + 96), (*(a1 + 96) + 8 * v4));
  }

  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt((a1 + 96), v39);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v39, v5);
  *&v6 = 0;
  v7 = *(a1 + 120);
  v29 = v7;
  v8 = *(a1 + 132);
  v30 = *(a1 + 128);
  v31 = v8;
  *v39 = v6;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v10 = WTF::Vector<WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v39, v9);
  if (HIDWORD(v33))
  {
    v12 = __dst;
    v13 = 8 * HIDWORD(v33);
    do
    {
      v14 = *v12;
      if (!*(*v12 + 16) || (v15 = atomic_load((a1 + 137)), v15 == 1) && (v10 = (*(**(v14 + 16) + 24))(*(v14 + 16)), v10))
      {
        if (*(v14 + 56) == 1)
        {
          *v39 = v14;
          v10 = WTF::NativePromiseBase::logChannel(v10);
          if (*v10)
          {
            v18 = v10[16] >= 4u;
          }

          else
          {
            v18 = 0;
          }

          if (v18)
          {
            v10 = WTF::Logger::log<char [32],WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(v10, a1, v39, (v14 + 24));
          }
        }

        else
        {
          v19 = *a2;
          v20 = 1;
          atomic_compare_exchange_strong_explicit(*a2, &v20, 0, memory_order_release, memory_order_relaxed);
          if (v20 != 1)
          {
            WTF::Lock::unlockSlow(v19);
          }

          if (WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::hasRunnable(a1))
          {
            WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::takeResultRunnable(&v35, a1);
            v21 = v35;
            (*(*v35 + 16))(v39, v35);
            (*(*v14 + 24))(v14, a1, v39);
            if (!v40)
            {
              WTF::Vector<WebCore::DOMCacheEngine::CacheInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v39, v22);
            }

            LOBYTE(v40) = -1;
            (*(*v21 + 8))(v21);
          }

          else
          {
            WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::takeResult(v39, a1);
            (*(*v14 + 24))(v14, a1, v39);
            if (!v40)
            {
              WTF::Vector<WebCore::DOMCacheEngine::CacheInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v39, v11);
            }
          }

          v23 = 0;
          v10 = *a2;
          atomic_compare_exchange_strong_explicit(*a2, &v23, 1u, memory_order_acquire, memory_order_acquire);
          if (v23)
          {
            v10 = MEMORY[0x19EB01E30](v10, v11);
          }
        }
      }

      else
      {
        v16 = *(v14 + 16);
        atomic_fetch_add((v14 + 8), 1u);
        atomic_fetch_add((a1 + 8), 1u);
        v17 = WTF::fastMalloc(0x18);
        *v17 = &unk_1F1122260;
        v17[1] = v14;
        v17[2] = a1;
        *v39 = v17;
        (*(*v16 + 16))(v16, v39);
        v10 = *v39;
        *v39 = 0;
        if (v10)
        {
          v10 = (*(*v10 + 8))(v10);
        }
      }

      ++v12;
      v13 -= 8;
    }

    while (v13);
  }

  if (v8)
  {
    v24 = &v7[5 * v8];
    do
    {
      v25 = *v7;
      *v7 = 0;
      *v39 = v25;
      v26 = *(v7 + 3);
      *&v39[8] = *(v7 + 1);
      v40 = v26;
      if (v25)
      {
        atomic_fetch_add((v25 + 8), 1u);
        v35 = 0;
        v36 = 0;
        v37 = "<chained promise>";
        v38 = 0;
        WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::settleAsChainedPromise<WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::Storage>(v25, a1 + 56, &v35);
        if (atomic_fetch_add((v25 + 8), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, (v25 + 8));
          (*(*v25 + 16))(v25);
        }
      }

      else
      {
        v35 = 0;
        v36 = 0;
        v37 = "<chained promise>";
        v38 = 0;
        WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::settleAsChainedPromise<WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::Storage>(0, a1 + 56, &v35);
      }

      WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(v39);
      v7 += 5;
    }

    while (v7 != v24);
  }

  WTF::Vector<WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v29, v11);
  return WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&__dst, v27);
}

uint64_t WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::takeResult(mpark *a1, uint64_t a2)
{
  v3 = a1;
  v4 = 0;
  v5 = (a2 + 48);
  atomic_compare_exchange_strong_explicit((a2 + 48), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    a1 = MEMORY[0x19EB01E30](a2 + 48);
  }

  if (*(a2 + 88) != 1)
  {
    mpark::throw_bad_variant_access(a1);
  }

  result = mpark::detail::move_assignment<mpark::detail::traits<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error>,(mpark::detail::Trait)1>::move_assignment(v3, a2 + 56);
  v7 = 1;
  atomic_compare_exchange_strong_explicit((a2 + 48), &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

uint64_t mpark::detail::move_assignment<mpark::detail::traits<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error>,(mpark::detail::Trait)1>::move_assignment(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = -1;
  v3 = *(a2 + 24);
  if (v3 != 255)
  {
    if (*(a2 + 24))
    {
      *a1 = *a2;
    }

    else
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
      *(a1 + 16) = *(a2 + 16);
      LOBYTE(v3) = *(a2 + 24);
    }

    *(a1 + 24) = v3;
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1122260;
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

uint64_t WTF::Detail::CallableWrapper<WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1122260;
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

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::call(WTF::NativePromiseBase *a1)
{
  v2 = *(a1 + 1);
  v1 = *(a1 + 2);
  if (*(v2 + 56) == 1)
  {
    v13[0] = *(a1 + 1);
    result = WTF::NativePromiseBase::logChannel(a1);
    if (*result)
    {
      v4 = *(result + 16) >= 4u;
    }

    else
    {
      v4 = 0;
    }

    if (v4)
    {
      return WTF::Logger::log<char [32],WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, v1, v13, (v2 + 24));
    }
  }

  else
  {
    hasRunnable = WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::hasRunnable(*(a1 + 2));
    v7 = *(a1 + 1);
    v8 = *(a1 + 2);
    if (hasRunnable)
    {
      WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::takeResultRunnable(&v12, v8);
      v9 = v12;
      (*(*v12 + 16))(v13, v12);
      (*(*v7 + 24))(v7, v8, v13);
      if (!v14)
      {
        WTF::Vector<WebCore::DOMCacheEngine::CacheInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v13, v10);
      }

      v14 = -1;
      return (*(*v9 + 8))(v9);
    }

    else
    {
      WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::takeResult(v13, v8);
      result = (*(*v7 + 24))(v7, v8, v13);
      if (!v14)
      {
        return WTF::Vector<WebCore::DOMCacheEngine::CacheInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v13, v11);
      }
    }
  }

  return result;
}

WTF::Lock *WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::settleAsChainedPromise<WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::Storage>(_BYTE *a1, uint64_t a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v6 = 0;
  v7 = (a1 + 48);
  v23 = v7;
  v24 = 1;
  atomic_compare_exchange_strong_explicit(v7, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    v7 = MEMORY[0x19EB01E30]();
  }

  v8 = WTF::NativePromiseBase::logChannel(v7);
  if (*v8)
  {
    v10 = v8[16] >= 4u;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>(v8, a3, " settling chained promise ", a1);
  }

  v11 = a1[88];
  v12 = *(a2 + 32);
  if (v11 != 255 || v12 != 255)
  {
    switch(v12)
    {
      case 255:
        if (a1[88] > 1u)
        {
          if (v11 == 2)
          {
            v14 = *(a1 + 7);
            *(a1 + 7) = 0;
            if (v14)
            {
              (*(*v14 + 8))(v14);
            }
          }
        }

        else if (a1[88])
        {
          if (!a1[80])
          {
            WTF::Vector<WebCore::DOMCacheEngine::CacheInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 56), v9);
          }

          a1[80] = -1;
        }

        v15 = -1;
        goto LABEL_29;
      case 2:
        if (a1[88] > 1u)
        {
          if (v11 != 255)
          {
            v21 = *a2;
            *a2 = 0;
            v22 = *(a1 + 7);
            *(a1 + 7) = v21;
            if (v22)
            {
              (*(*v22 + 8))(v22);
            }

            goto LABEL_30;
          }
        }

        else if (a1[88])
        {
          if (!a1[80])
          {
            WTF::Vector<WebCore::DOMCacheEngine::CacheInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 56), v9);
          }

          a1[80] = -1;
        }

        v19 = *a2;
        *a2 = 0;
        *(a1 + 7) = v19;
        v15 = 2;
        goto LABEL_29;
      case 1:
        if (a1[88] > 1u)
        {
          if (v11 == 2)
          {
            v18 = *(a1 + 7);
            *(a1 + 7) = 0;
            if (v18)
            {
              (*(*v18 + 8))(v18);
            }
          }
        }

        else if (a1[88])
        {
          mpark::detail::move_assignment<mpark::detail::traits<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error>,(mpark::detail::Trait)1>::move_assignment(v25, a2);
          mpark::detail::move_assignment<mpark::detail::traits<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error>,(mpark::detail::Trait)1>::move_assignment(v26, v25);
          mpark::variant<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error>::operator=(v25, a1 + 56);
          mpark::variant<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error>::operator=((a1 + 56), v26);
          if (!v26[24])
          {
            WTF::Vector<WebCore::DOMCacheEngine::CacheInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v26, v13);
          }

          if (!v25[24])
          {
            WTF::Vector<WebCore::DOMCacheEngine::CacheInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v25, v13);
          }

          goto LABEL_30;
        }

        a1[88] = -1;
        mpark::detail::move_assignment<mpark::detail::traits<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error>,(mpark::detail::Trait)1>::move_assignment((a1 + 56), a2);
        v15 = 1;
LABEL_29:
        a1[88] = v15;
        goto LABEL_30;
    }

    if (a1[88] > 1u)
    {
      if (v11 == 2)
      {
        v20 = *(a1 + 7);
        *(a1 + 7) = 0;
        if (v20)
        {
          (*(*v20 + 8))(v20);
        }
      }
    }

    else
    {
      if (!a1[88])
      {
        goto LABEL_30;
      }

      if (!a1[80])
      {
        WTF::Vector<WebCore::DOMCacheEngine::CacheInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 56), v9);
      }

      a1[80] = -1;
    }

    a1[88] = 0;
  }

LABEL_30:
  result = WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::dispatchAll(a1, &v23);
  v17 = v24;
  if (v24 == 1)
  {
    result = v23;
    atomic_compare_exchange_strong_explicit(v23, &v17, 0, memory_order_release, memory_order_relaxed);
    if (v17 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

uint64_t mpark::variant<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error>::operator=(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 24);
  v5 = a2[24];
  if (v4 == 255)
  {
    if (v5 != 255)
    {
      if (!a2[24])
      {
        goto LABEL_14;
      }

      goto LABEL_16;
    }
  }

  else
  {
    if (v5 == 255)
    {
      if (!*(a1 + 24))
      {
        WTF::Vector<WebCore::DOMCacheEngine::CacheInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1, a2);
      }

      v6 = -1;
      goto LABEL_17;
    }

    if (a2[24])
    {
      if (*(a1 + 24))
      {
        if (v4 == 1)
        {
          *a1 = *a2;
          return a1;
        }
      }

      else
      {
        WTF::Vector<WebCore::DOMCacheEngine::CacheInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1, a2);
      }

LABEL_16:
      *a1 = *a2;
      v6 = 1;
LABEL_17:
      *(a1 + 24) = v6;
      return a1;
    }

    if (*(a1 + 24))
    {
LABEL_14:
      *(a1 + 24) = -1;
      *a1 = 0;
      *(a1 + 8) = 0;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
      *(a1 + 16) = *(a2 + 2);
      *(a1 + 24) = 0;
      return a1;
    }

    v8 = *(a1 + 12);
    if (v8)
    {
      WTF::VectorDestructor<true,WebCore::DOMCacheEngine::CacheInfo>::destruct(*a1, (*a1 + 24 * v8));
    }

    WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
    *(a1 + 16) = *(a2 + 2);
  }

  return a1;
}

uint64_t WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = (result + 48);
  atomic_compare_exchange_strong_explicit((result + 48), &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    result = MEMORY[0x19EB01E30](result + 48);
  }

  v4 = *(v1 + 124);
  if (v4)
  {
    v5 = *(v1 + 112);
    v6 = 40 * v4;
    do
    {
      result = WTF::NativePromiseProducer<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(v5);
      v5 += 40;
      v6 -= 40;
    }

    while (v6);
  }

  v7 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {

    return WTF::Lock::unlockSlow(v3);
  }

  return result;
}

uint64_t WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::~NativePromise(uint64_t a1)
{
  v1 = WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::~NativePromise(a1);

  return WTF::fastFree(v1, v2);
}

{
  v36[2] = *MEMORY[0x1E69E9840];
  v2 = WTF::NativePromiseBase::logChannel(a1);
  if (*v2)
  {
    v3 = v2[16] >= 4u;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = v2;
    WTF::String::String(&v32, "destroying ");
    WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v31, a1);
    *buf = v32;
    v30[0] = v31;
    result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v30, &v33);
    if (!v33)
    {
      __break(0xC471u);
      return result;
    }

    v7 = v31;
    v31 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v6);
    }

    v8 = v32;
    v32 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v6);
    }

    v9 = *(v4 + 4);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      WTF::String::utf8();
      v12 = v30[0] ? v30[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v12;
      _os_log_impl(&dword_19D52D000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v10 = v30[0];
      v30[0] = 0;
      if (v10)
      {
        if (*v10 == 1)
        {
          v10 = WTF::fastFree(v10, v11);
        }

        else
        {
          --*v10;
        }
      }
    }

    if (*v4 && v4[16] >= 4u)
    {
      v13 = MEMORY[0x1E696EBC0];
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
          v16 = WTF::Logger::observers(v10);
          v17 = *(v16 + 12);
          if (v17)
          {
            v18 = *v16;
            v19 = *v16 + 8 * v17;
            do
            {
              v20 = *v18;
              *buf = 0;
              WTF::String::String(&buf[8], "destroying ");
              v35 = 0;
              WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(v36, a1);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v30, buf, 2uLL);
              (*(*v20 + 16))(v20, v4, 4, v30);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v30, v21);
              for (i = 24; i != -8; i -= 16)
              {
                v23 = *&buf[i];
                *&buf[i] = 0;
                if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v23, v11);
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
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v25 = v33;
    v33 = 0;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v11);
    }
  }

  WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(a1);
  WTF::Vector<WTF::NativePromiseProducer<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 112, v26);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 88, v27);
  if (*(a1 + 80) > 1u)
  {
    if (*(a1 + 80) == 2)
    {
      v29 = *(a1 + 56);
      *(a1 + 56) = 0;
      if (v29)
      {
        (*(*v29 + 8))(v29);
      }
    }
  }

  else if (*(a1 + 80))
  {
    if (!*(a1 + 72))
    {
      WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 56, v28);
    }

    *(a1 + 72) = -1;
  }

  *(a1 + 80) = -1;
  return a1;
}

atomic_uint **WTF::NativePromiseProducer<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(atomic_uint **result)
{
  v1 = *result;
  if (*result)
  {
    atomic_fetch_add(v1 + 2, 1u);
    result = WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(v1);
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v1 + 2);
      v2 = *(*v1 + 16);

      return v2(v1);
    }
  }

  return result;
}

uint64_t WTF::Vector<WTF::NativePromiseProducer<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 40 * v3;
    do
    {
      v4 = WTF::NativePromiseProducer<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(v4) + 5;
      v5 -= 40;
    }

    while (v5);
  }

  v6 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v6, a2);
  }

  return a1;
}

atomic_uint **WTF::NativePromiseProducer<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(atomic_uint **a1)
{
  WTF::NativePromiseProducer<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(a1);
  v2 = *a1;
  *a1 = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
  }

  return a1;
}

uint64_t WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::dispatchAll(uint64_t a1, atomic_uchar *volatile *a2)
{
  *v39 = &v39[16];
  *&v39[8] = 1;
  __dst = &v34;
  v33 = 1;
  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt(&__dst, (a1 + 88));
  v4 = *(a1 + 100);
  if (v4)
  {
    WTF::VectorDestructor<true,WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>>::destruct(*(a1 + 88), (*(a1 + 88) + 8 * v4));
  }

  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt((a1 + 88), v39);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v39, v5);
  *&v6 = 0;
  v7 = *(a1 + 112);
  v29 = v7;
  v8 = *(a1 + 124);
  v30 = *(a1 + 120);
  v31 = v8;
  *v39 = v6;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v10 = WTF::Vector<WTF::NativePromiseProducer<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v39, v9);
  if (HIDWORD(v33))
  {
    v12 = __dst;
    v13 = 8 * HIDWORD(v33);
    do
    {
      v14 = *v12;
      if (!*(*v12 + 16) || (v15 = atomic_load((a1 + 129)), v15 == 1) && (v10 = (*(**(v14 + 16) + 24))(*(v14 + 16)), v10))
      {
        if (*(v14 + 56) == 1)
        {
          *v39 = v14;
          v10 = WTF::NativePromiseBase::logChannel(v10);
          if (*v10)
          {
            v18 = v10[16] >= 4u;
          }

          else
          {
            v18 = 0;
          }

          if (v18)
          {
            v10 = WTF::Logger::log<char [32],WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(v10, a1, v39, (v14 + 24));
          }
        }

        else
        {
          v19 = *a2;
          v20 = 1;
          atomic_compare_exchange_strong_explicit(*a2, &v20, 0, memory_order_release, memory_order_relaxed);
          if (v20 != 1)
          {
            WTF::Lock::unlockSlow(v19);
          }

          if (WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::hasRunnable(a1))
          {
            WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::takeResultRunnable(&v35, a1);
            v21 = v35;
            (*(*v35 + 16))(v39, v35);
            (*(*v14 + 24))(v14, a1, v39);
            if (!v39[16])
            {
              WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v39, v22);
            }

            v39[16] = -1;
            (*(*v21 + 8))(v21);
          }

          else
          {
            WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::takeResult(v39, a1);
            (*(*v14 + 24))(v14, a1, v39);
            if (!v39[16])
            {
              WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v39, v11);
            }
          }

          v23 = 0;
          v10 = *a2;
          atomic_compare_exchange_strong_explicit(*a2, &v23, 1u, memory_order_acquire, memory_order_acquire);
          if (v23)
          {
            v10 = MEMORY[0x19EB01E30](v10, v11);
          }
        }
      }

      else
      {
        v16 = *(v14 + 16);
        atomic_fetch_add((v14 + 8), 1u);
        atomic_fetch_add((a1 + 8), 1u);
        v17 = WTF::fastMalloc(0x18);
        *v17 = &unk_1F11222B0;
        v17[1] = v14;
        v17[2] = a1;
        *v39 = v17;
        (*(*v16 + 16))(v16, v39);
        v10 = *v39;
        *v39 = 0;
        if (v10)
        {
          v10 = (*(*v10 + 8))(v10);
        }
      }

      ++v12;
      v13 -= 8;
    }

    while (v13);
  }

  if (v8)
  {
    v24 = &v7[5 * v8];
    do
    {
      v25 = *v7;
      *v7 = 0;
      *v39 = v25;
      v26 = *(v7 + 3);
      *&v39[8] = *(v7 + 1);
      v40 = v26;
      if (v25)
      {
        atomic_fetch_add((v25 + 8), 1u);
        v35 = 0;
        v36 = 0;
        v37 = "<chained promise>";
        v38 = 0;
        WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::settleAsChainedPromise<WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::Storage>(v25, a1 + 56, &v35);
        if (atomic_fetch_add((v25 + 8), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, (v25 + 8));
          (*(*v25 + 16))(v25);
        }
      }

      else
      {
        v35 = 0;
        v36 = 0;
        v37 = "<chained promise>";
        v38 = 0;
        WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::settleAsChainedPromise<WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::Storage>(0, a1 + 56, &v35);
      }

      WTF::NativePromiseProducer<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(v39);
      v7 += 5;
    }

    while (v7 != v24);
  }

  WTF::Vector<WTF::NativePromiseProducer<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v29, v11);
  return WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&__dst, v27);
}

uint64_t WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::takeResult(mpark *a1, uint64_t a2)
{
  v3 = a1;
  v4 = 0;
  v5 = (a2 + 48);
  atomic_compare_exchange_strong_explicit((a2 + 48), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    a1 = MEMORY[0x19EB01E30](a2 + 48);
  }

  if (*(a2 + 80) != 1)
  {
    mpark::throw_bad_variant_access(a1);
  }

  result = mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error>,(mpark::detail::Trait)1>::move_assignment(v3, a2 + 56);
  v7 = 1;
  atomic_compare_exchange_strong_explicit((a2 + 48), &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

uint64_t mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error>,(mpark::detail::Trait)1>::move_assignment(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = -1;
  v3 = *(a2 + 16);
  if (v3 != 255)
  {
    if (*(a2 + 16))
    {
      *a1 = *a2;
    }

    else
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
      LOBYTE(v3) = *(a2 + 16);
    }

    *(a1 + 16) = v3;
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F11222B0;
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

uint64_t WTF::Detail::CallableWrapper<WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F11222B0;
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

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::call(WTF::NativePromiseBase *a1)
{
  v2 = *(a1 + 1);
  v1 = *(a1 + 2);
  if (*(v2 + 56) == 1)
  {
    v13[0] = *(a1 + 1);
    result = WTF::NativePromiseBase::logChannel(a1);
    if (*result)
    {
      v4 = *(result + 16) >= 4u;
    }

    else
    {
      v4 = 0;
    }

    if (v4)
    {
      return WTF::Logger::log<char [32],WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, v1, v13, (v2 + 24));
    }
  }

  else
  {
    hasRunnable = WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::hasRunnable(*(a1 + 2));
    v7 = *(a1 + 1);
    v8 = *(a1 + 2);
    if (hasRunnable)
    {
      WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::takeResultRunnable(&v12, v8);
      v9 = v12;
      (*(*v12 + 16))(v13, v12);
      (*(*v7 + 24))(v7, v8, v13);
      if (!v14)
      {
        WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v13, v10);
      }

      v14 = -1;
      return (*(*v9 + 8))(v9);
    }

    else
    {
      WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::takeResult(v13, v8);
      result = (*(*v7 + 24))(v7, v8, v13);
      if (!v14)
      {
        return WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v13, v11);
      }
    }
  }

  return result;
}

WTF::Lock *WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::settleAsChainedPromise<WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::Storage>(unsigned __int8 *a1, uint64_t a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v6 = 0;
  v7 = (a1 + 48);
  v23 = v7;
  v24 = 1;
  atomic_compare_exchange_strong_explicit(v7, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    v7 = MEMORY[0x19EB01E30]();
  }

  v8 = WTF::NativePromiseBase::logChannel(v7);
  if (*v8)
  {
    v10 = v8[16] >= 4u;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>(v8, a3, " settling chained promise ", a1);
  }

  v11 = a1[80];
  v12 = *(a2 + 24);
  if (v11 != 255 || v12 != 255)
  {
    switch(v12)
    {
      case 255:
        if (a1[80] > 1u)
        {
          if (v11 == 2)
          {
            v14 = *(a1 + 7);
            *(a1 + 7) = 0;
            if (v14)
            {
              (*(*v14 + 8))(v14);
            }
          }
        }

        else if (a1[80])
        {
          if (!a1[72])
          {
            WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 56), v9);
          }

          a1[72] = -1;
        }

        v15 = -1;
        goto LABEL_29;
      case 2:
        if (a1[80] > 1u)
        {
          if (v11 != 255)
          {
            v21 = *a2;
            *a2 = 0;
            v22 = *(a1 + 7);
            *(a1 + 7) = v21;
            if (v22)
            {
              (*(*v22 + 8))(v22);
            }

            goto LABEL_30;
          }
        }

        else if (a1[80])
        {
          if (!a1[72])
          {
            WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 56), v9);
          }

          a1[72] = -1;
        }

        v19 = *a2;
        *a2 = 0;
        *(a1 + 7) = v19;
        v15 = 2;
        goto LABEL_29;
      case 1:
        if (a1[80] > 1u)
        {
          if (v11 == 2)
          {
            v18 = *(a1 + 7);
            *(a1 + 7) = 0;
            if (v18)
            {
              (*(*v18 + 8))(v18);
            }
          }
        }

        else if (a1[80])
        {
          mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error>,(mpark::detail::Trait)1>::move_assignment(v25, a2);
          mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error>,(mpark::detail::Trait)1>::move_assignment(v26, v25);
          mpark::variant<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error>::operator=(v25, a1 + 56);
          mpark::variant<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error>::operator=((a1 + 56), v26);
          if (!v26[16])
          {
            WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v26, v13);
          }

          if (!v25[16])
          {
            WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v25, v13);
          }

          goto LABEL_30;
        }

        a1[80] = -1;
        mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error>,(mpark::detail::Trait)1>::move_assignment((a1 + 56), a2);
        v15 = 1;
LABEL_29:
        a1[80] = v15;
        goto LABEL_30;
    }

    if (a1[80] > 1u)
    {
      if (v11 == 2)
      {
        v20 = *(a1 + 7);
        *(a1 + 7) = 0;
        if (v20)
        {
          (*(*v20 + 8))(v20);
        }
      }
    }

    else
    {
      if (!a1[80])
      {
        goto LABEL_30;
      }

      if (!a1[72])
      {
        WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 56), v9);
      }

      a1[72] = -1;
    }

    a1[80] = 0;
  }

LABEL_30:
  result = WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::dispatchAll(a1, &v23);
  v17 = v24;
  if (v24 == 1)
  {
    result = v23;
    atomic_compare_exchange_strong_explicit(v23, &v17, 0, memory_order_release, memory_order_relaxed);
    if (v17 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

uint64_t mpark::variant<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error>::operator=(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 16);
  v5 = a2[16];
  if (v4 == 255)
  {
    if (v5 != 255)
    {
      if (!a2[16])
      {
        goto LABEL_14;
      }

      goto LABEL_16;
    }
  }

  else
  {
    if (v5 == 255)
    {
      if (!*(a1 + 16))
      {
        WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1, a2);
      }

      v6 = -1;
      goto LABEL_17;
    }

    if (a2[16])
    {
      if (*(a1 + 16))
      {
        if (v4 == 1)
        {
          *a1 = *a2;
          return a1;
        }
      }

      else
      {
        WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1, a2);
      }

LABEL_16:
      *a1 = *a2;
      v6 = 1;
LABEL_17:
      *(a1 + 16) = v6;
      return a1;
    }

    if (*(a1 + 16))
    {
LABEL_14:
      *(a1 + 16) = -1;
      *a1 = 0;
      *(a1 + 8) = 0;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
      *(a1 + 16) = 0;
      return a1;
    }

    v8 = *(a1 + 12);
    if (v8)
    {
      v9 = *a1;
      v10 = 608 * v8;
      do
      {
        WebCore::DOMCacheEngine::CrossThreadRecord::~CrossThreadRecord(v9, a2);
        v9 = (v11 + 608);
        v10 -= 608;
      }

      while (v10);
    }

    WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
  }

  return a1;
}

uint64_t WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = (result + 48);
  atomic_compare_exchange_strong_explicit((result + 48), &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    result = MEMORY[0x19EB01E30](result + 48);
  }

  v4 = *(v1 + 124);
  if (v4)
  {
    v5 = *(v1 + 112);
    v6 = 40 * v4;
    do
    {
      result = WTF::NativePromiseProducer<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(v5);
      v5 += 40;
      v6 -= 40;
    }

    while (v6);
  }

  v7 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {

    return WTF::Lock::unlockSlow(v3);
  }

  return result;
}

uint64_t WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::~NativePromise(uint64_t a1)
{
  v1 = WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::~NativePromise(a1);

  return WTF::fastFree(v1, v2);
}

{
  v37[2] = *MEMORY[0x1E69E9840];
  v2 = WTF::NativePromiseBase::logChannel(a1);
  if (*v2)
  {
    v3 = v2[16] >= 4u;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = v2;
    WTF::String::String(&v33, "destroying ");
    WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v32, a1);
    *buf = v33;
    v31[0] = v32;
    result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v31, &v34);
    if (!v34)
    {
      __break(0xC471u);
      return result;
    }

    v7 = v32;
    v32 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v6);
    }

    v8 = v33;
    v33 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v6);
    }

    v9 = *(v4 + 4);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      WTF::String::utf8();
      v12 = v31[0] ? v31[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v12;
      _os_log_impl(&dword_19D52D000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v10 = v31[0];
      v31[0] = 0;
      if (v10)
      {
        if (*v10 == 1)
        {
          v10 = WTF::fastFree(v10, v11);
        }

        else
        {
          --*v10;
        }
      }
    }

    if (*v4 && v4[16] >= 4u)
    {
      v13 = MEMORY[0x1E696EBC0];
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
          v16 = WTF::Logger::observers(v10);
          v17 = *(v16 + 12);
          if (v17)
          {
            v18 = *v16;
            v19 = *v16 + 8 * v17;
            do
            {
              v20 = *v18;
              *buf = 0;
              WTF::String::String(&buf[8], "destroying ");
              v36 = 0;
              WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(v37, a1);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v31, buf, 2uLL);
              (*(*v20 + 16))(v20, v4, 4, v31);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v31, v21);
              for (i = 24; i != -8; i -= 16)
              {
                v23 = *&buf[i];
                *&buf[i] = 0;
                if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v23, v11);
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
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v25 = v34;
    v34 = 0;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v11);
    }
  }

  WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(a1);
  WTF::Vector<WTF::NativePromiseProducer<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 112, v26);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 88, v27);
  if (*(a1 + 80) > 1u)
  {
    if (*(a1 + 80) == 2)
    {
      v30 = *(a1 + 56);
      *(a1 + 56) = 0;
      if (v30)
      {
        (*(*v30 + 8))(v30);
      }
    }
  }

  else if (*(a1 + 80))
  {
    if (!*(a1 + 72))
    {
      v29 = *(a1 + 56);
      if (v29)
      {
        *(a1 + 56) = 0;
        *(a1 + 64) = 0;
        WTF::fastFree(v29, v28);
      }
    }

    *(a1 + 72) = -1;
  }

  *(a1 + 80) = -1;
  return a1;
}

atomic_uint **WTF::NativePromiseProducer<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(atomic_uint **result)
{
  v1 = *result;
  if (*result)
  {
    atomic_fetch_add(v1 + 2, 1u);
    result = WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(v1);
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v1 + 2);
      v2 = *(*v1 + 16);

      return v2(v1);
    }
  }

  return result;
}

uint64_t WTF::Vector<WTF::NativePromiseProducer<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 40 * v3;
    do
    {
      v4 = WTF::NativePromiseProducer<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(v4) + 5;
      v5 -= 40;
    }

    while (v5);
  }

  v6 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v6, a2);
  }

  return a1;
}

atomic_uint **WTF::NativePromiseProducer<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(atomic_uint **a1)
{
  WTF::NativePromiseProducer<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(a1);
  v2 = *a1;
  *a1 = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
  }

  return a1;
}

uint64_t WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::dispatchAll(uint64_t a1, atomic_uchar *volatile *a2)
{
  *v41 = &v41[16];
  *&v41[8] = 1;
  __dst = &v36;
  v35 = 1;
  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt(&__dst, (a1 + 88));
  v4 = *(a1 + 100);
  if (v4)
  {
    WTF::VectorDestructor<true,WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>>::destruct(*(a1 + 88), (*(a1 + 88) + 8 * v4));
  }

  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt((a1 + 88), v41);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v41, v5);
  *&v6 = 0;
  v7 = *(a1 + 112);
  v31 = v7;
  v8 = *(a1 + 124);
  v32 = *(a1 + 120);
  v33 = v8;
  *v41 = v6;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v10 = WTF::Vector<WTF::NativePromiseProducer<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v41, v9);
  if (HIDWORD(v35))
  {
    v12 = __dst;
    v13 = 8 * HIDWORD(v35);
    do
    {
      v14 = *v12;
      if (!*(*v12 + 16) || (v15 = atomic_load((a1 + 129)), v15 == 1) && (v10 = (*(**(v14 + 16) + 24))(*(v14 + 16)), v10))
      {
        if (*(v14 + 56) == 1)
        {
          *v41 = v14;
          v10 = WTF::NativePromiseBase::logChannel(v10);
          if (*v10)
          {
            v18 = v10[16] >= 4u;
          }

          else
          {
            v18 = 0;
          }

          if (v18)
          {
            v10 = WTF::Logger::log<char [32],WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(v10, a1, v41, (v14 + 24));
          }
        }

        else
        {
          v19 = *a2;
          v20 = 1;
          atomic_compare_exchange_strong_explicit(*a2, &v20, 0, memory_order_release, memory_order_relaxed);
          if (v20 != 1)
          {
            WTF::Lock::unlockSlow(v19);
          }

          if (WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::hasRunnable(a1))
          {
            WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::takeResultRunnable(&v37, a1);
            v21 = v37;
            (*(*v37 + 16))(v41, v37);
            (*(*v14 + 24))(v14, a1, v41);
            if (!v41[16])
            {
              v23 = *v41;
              if (*v41)
              {
                *v41 = 0;
                *&v41[8] = 0;
                WTF::fastFree(v23, v22);
              }
            }

            v41[16] = -1;
            (*(*v21 + 8))(v21);
          }

          else
          {
            WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::takeResult(v41, a1);
            (*(*v14 + 24))(v14, a1, v41);
            if (!v41[16])
            {
              v24 = *v41;
              if (*v41)
              {
                *v41 = 0;
                *&v41[8] = 0;
                WTF::fastFree(v24, v11);
              }
            }
          }

          v25 = 0;
          v10 = *a2;
          atomic_compare_exchange_strong_explicit(*a2, &v25, 1u, memory_order_acquire, memory_order_acquire);
          if (v25)
          {
            v10 = MEMORY[0x19EB01E30](v10, v11);
          }
        }
      }

      else
      {
        v16 = *(v14 + 16);
        atomic_fetch_add((v14 + 8), 1u);
        atomic_fetch_add((a1 + 8), 1u);
        v17 = WTF::fastMalloc(0x18);
        *v17 = &unk_1F1122300;
        v17[1] = v14;
        v17[2] = a1;
        *v41 = v17;
        (*(*v16 + 16))(v16, v41);
        v10 = *v41;
        *v41 = 0;
        if (v10)
        {
          v10 = (*(*v10 + 8))(v10);
        }
      }

      ++v12;
      v13 -= 8;
    }

    while (v13);
  }

  if (v8)
  {
    v26 = v7 + 40 * v8;
    do
    {
      v27 = *v7;
      *v7 = 0;
      *v41 = v27;
      v28 = *(v7 + 24);
      *&v41[8] = *(v7 + 8);
      v42 = v28;
      if (v27)
      {
        atomic_fetch_add(v27 + 2, 1u);
        v37 = 0;
        v38 = 0;
        v39 = "<chained promise>";
        v40 = 0;
        WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::settleAsChainedPromise<WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::Storage>(v27, a1 + 56, &v37);
        if (atomic_fetch_add(v27 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v27 + 2);
          (*(*v27 + 16))(v27);
        }
      }

      else
      {
        v37 = 0;
        v38 = 0;
        v39 = "<chained promise>";
        v40 = 0;
        WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::settleAsChainedPromise<WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::Storage>(0, a1 + 56, &v37);
      }

      WTF::NativePromiseProducer<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(v41);
      v7 += 40;
    }

    while (v7 != v26);
  }

  WTF::Vector<WTF::NativePromiseProducer<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v31, v11);
  return WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&__dst, v29);
}