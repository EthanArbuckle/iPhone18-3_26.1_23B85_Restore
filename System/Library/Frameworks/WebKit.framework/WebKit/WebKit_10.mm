uint64_t WTF::ListHashSet<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>::unlinkAndDelete(uint64_t a1, WTF *this)
{
  v3 = *(this + 1);
  v4 = *(this + 2);
  v5 = (v3 + 16);
  if (!v3)
  {
    v5 = (a1 + 8);
  }

  *v5 = v4;
  if (v4)
  {
    v6 = (v4 + 8);
  }

  else
  {
    v6 = (a1 + 16);
  }

  *v6 = v3;
  v7 = *this;
  *this = 0;
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    WTF::fastFree(v7, this);
  }

  return WTF::fastFree(this, this);
}

uint64_t IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a1 + 16) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v5 & 1) != 0 && (v6 = result, result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2), (v7))
  {
    *a1 = v6;
    *(a1 + 8) = result;
    v8 = 1;
  }

  else
  {
    v8 = 0;
    *a1 = 0;
  }

  *(a1 + 16) = v8;
  return result;
}

uint64_t WebKit::NetworkProcess::removeWebPageNetworkParameters(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = a3;
  v14 = a2;
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v14);
  if (result)
  {
    v6 = result;
    ++*(result + 16);
    (*(*result + 256))(result, a3);
    WebKit::NetworkStorageManager::clearStorageForWebPage(*(v6 + 1048), a3);
    v8 = *(v6 + 72);
    if (v8)
    {
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
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::clearFrameLoadRecordsForStorageAccess(v8, a3, v7);
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8);
    }

    v11 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 384), &v13);
    result = WTF::HashSet<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove((a1 + 384), v11);
    v12 = *(v6 + 16);
    if (v12)
    {
      *(v6 + 16) = v12 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t WebKit::WebProcessProxy::platformDestroy(WebKit::WebProcessProxy *this)
{
  [+[WKMouseDeviceObserver sharedInstance](WKMouseDeviceObserver stop];
  v1 = +[WKStylusDeviceObserver sharedInstance];

  return [(WKStylusDeviceObserver *)v1 stop];
}

uint64_t *WebKit::NetworkSessionCocoa::removeWebPageNetworkParameters(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v3 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 1144), a2);
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove((a1 + 1144), v3);
  v4 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 1072), &v6);
  return WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove((a1 + 1072), v4);
}

uint64_t WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 == -1 || !v2)
  {
    __break(0xC471u);
    JUMPOUT(0x19D5FC47CLL);
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

    v11 = 1;
    while (v9)
    {
      v8 = (v8 + v11) & v4;
      v9 = *(v3 + 16 * v8);
      ++v11;
      if (v9 == v2)
      {
        return *(v3 + 16 * v8 + 8);
      }
    }
  }

  return 0;
}

uint64_t WebKit::NetworkStorageManager::clearStorageForWebPage(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 8);
    if ((v4 & 1) == 0)
    {
      break;
    }

    v7 = *(a1 + 8);
    atomic_compare_exchange_strong_explicit((a1 + 8), &v7, v4 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v4)
    {
      goto LABEL_3;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 8));
LABEL_3:
  v5 = WTF::fastMalloc(0x20);
  *v5 = &unk_1F110AEF0;
  v5[1] = a1;
  v5[2] = a1;
  v5[3] = a2;
  v8 = v5;
  WTF::SuspendableWorkQueue::dispatch();
  result = v8;
  if (v8)
  {
    return (*(*v8 + 8))(v8);
  }

  return result;
}

void *IPC::StreamServerConnection::stopReceivingMessages(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = 0;
  v10[0] = a2;
  v10[1] = a3;
  v5 = (a1 + 136);
  atomic_compare_exchange_strong_explicit((a1 + 136), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x19EB01E30](a1 + 136);
  }

  result = WTF::HashTable<std::pair<unsigned char,unsigned long long>,WTF::KeyValuePair<std::pair<unsigned char,unsigned long long>,WTF::Ref<IPC::StreamMessageReceiver,WTF::RawPtrTraits<IPC::StreamMessageReceiver>,WTF::DefaultRefDerefTraits<IPC::StreamMessageReceiver>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<unsigned char,unsigned long long>,WTF::Ref<IPC::StreamMessageReceiver,WTF::RawPtrTraits<IPC::StreamMessageReceiver>,WTF::DefaultRefDerefTraits<IPC::StreamMessageReceiver>>>>,WTF::DefaultHash<std::pair<unsigned char,unsigned long long>>,WTF::HashMap<std::pair<unsigned char,unsigned long long>,WTF::Ref<IPC::StreamMessageReceiver,WTF::RawPtrTraits<IPC::StreamMessageReceiver>,WTF::DefaultRefDerefTraits<IPC::StreamMessageReceiver>>,WTF::DefaultHash<std::pair<unsigned char,unsigned long long>>,WTF::HashTraits<std::pair<unsigned char,unsigned long long>>,WTF::HashTraits<WTF::Ref<IPC::StreamMessageReceiver,WTF::RawPtrTraits<IPC::StreamMessageReceiver>,WTF::DefaultRefDerefTraits<IPC::StreamMessageReceiver>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<unsigned char,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<std::pair<unsigned char,unsigned long long>,WTF::Ref<IPC::StreamMessageReceiver,WTF::RawPtrTraits<IPC::StreamMessageReceiver>,WTF::DefaultRefDerefTraits<IPC::StreamMessageReceiver>>,WTF::DefaultHash<std::pair<unsigned char,unsigned long long>>,WTF::HashTraits<std::pair<unsigned char,unsigned long long>>,WTF::HashTraits<WTF::Ref<IPC::StreamMessageReceiver,WTF::RawPtrTraits<IPC::StreamMessageReceiver>,WTF::DefaultRefDerefTraits<IPC::StreamMessageReceiver>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<std::pair<unsigned char,unsigned long long>>>,(WTF::ShouldValidateKey)1,std::pair<unsigned char,unsigned long long>>((a1 + 144), v10);
  v7 = *(a1 + 144);
  if (v7)
  {
    v8 = (v7 + 24 * *(v7 - 4));
    if (v8 == result)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (!result)
    {
      goto LABEL_7;
    }

    v8 = 0;
  }

  if (v8 != result)
  {
    result = WTF::HashTable<std::pair<unsigned char,unsigned long long>,WTF::KeyValuePair<std::pair<unsigned char,unsigned long long>,WTF::Ref<IPC::StreamMessageReceiver,WTF::RawPtrTraits<IPC::StreamMessageReceiver>,WTF::DefaultRefDerefTraits<IPC::StreamMessageReceiver>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<unsigned char,unsigned long long>,WTF::Ref<IPC::StreamMessageReceiver,WTF::RawPtrTraits<IPC::StreamMessageReceiver>,WTF::DefaultRefDerefTraits<IPC::StreamMessageReceiver>>>>,WTF::DefaultHash<std::pair<unsigned char,unsigned long long>>,WTF::HashMap<std::pair<unsigned char,unsigned long long>,WTF::Ref<IPC::StreamMessageReceiver,WTF::RawPtrTraits<IPC::StreamMessageReceiver>,WTF::DefaultRefDerefTraits<IPC::StreamMessageReceiver>>,WTF::DefaultHash<std::pair<unsigned char,unsigned long long>>,WTF::HashTraits<std::pair<unsigned char,unsigned long long>>,WTF::HashTraits<WTF::Ref<IPC::StreamMessageReceiver,WTF::RawPtrTraits<IPC::StreamMessageReceiver>,WTF::DefaultRefDerefTraits<IPC::StreamMessageReceiver>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<unsigned char,unsigned long long>>,WTF::FastMalloc>::remove((a1 + 144), result);
  }

LABEL_7:
  v9 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v9, 0, memory_order_release, memory_order_relaxed);
  if (v9 != 1)
  {
    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

atomic_ullong *WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(atomic_ullong *result)
{
  do
  {
    v1 = *result;
    if ((*result & 1) == 0)
    {
      v2 = *result;

      return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>(v2);
    }

    v3 = *result;
    atomic_compare_exchange_strong_explicit(result, &v3, v1 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v3 != v1);
  v5 = result;
  if (v1 == 3)
  {
    v4 = WTF::fastMalloc(0x10);
    *v4 = &unk_1F10EE270;
    v4[1] = v5;
    v6 = v4;
    WTF::ensureOnMainRunLoop();
    result = v6;
    if (v6)
    {
      return (*(*v6 + 8))(v6);
    }
  }

  return result;
}

void *WebKit::LogStream::stopListeningForIPC(void *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    atomic_fetch_add(v1 + 2, 1u);
    this = IPC::StreamServerConnection::stopReceivingMessages(v1, 0x17u, *(this + 3));
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v1 + 2);
      v2 = *(*v1 + 8);

      return v2(v1);
    }
  }

  return this;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::clearFrameLoadRecordsForStorageAccess(uint64_t a1, uint64_t a2, const WTF::StringImpl *a3)
{
  v4 = &v5;
  v5 = a2;
  return WTF::HashTable<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::HashTraits<WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::FastMalloc>::removeIf<WebKit::WebResourceLoadStatisticsStore::clearFrameLoadRecordsForStorageAccess(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_0>(a1 + 136, &v4, a3);
}

unsigned int *IPC::ScopedActiveMessageReceiveQueue<WebKit::LogStream,WTF::RefPtr<WebKit::LogStream,WTF::RawPtrTraits<WebKit::LogStream>,WTF::DefaultRefDerefTraits<WebKit::LogStream>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::LogStream,WTF::RawPtrTraits<WebKit::LogStream>,WTF::DefaultRefDerefTraits<WebKit::LogStream>>>(void **a1)
{
  WebKit::LogStream::stopListeningForIPC(*a1);
  result = *a1;
  *a1 = 0;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    v3 = *(*result + 8);

    return v3();
  }

  return result;
}

atomic_uchar *WTF::ThreadSafeWeakPtrControlBlock::strongDeref<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>(atomic_uchar *this)
{
  v1 = this;
  v2 = 0;
  atomic_compare_exchange_strong_explicit(this, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    this = MEMORY[0x19EB01E30](this);
  }

  v3 = *(v1 + 1) - 1;
  *(v1 + 1) = v3;
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v1 + 3);
    ++*(v1 + 2);
    *(v1 + 3) = 0;
  }

  v5 = 1;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != 1)
  {
    v7 = v3;
    this = WTF::Lock::unlockSlow(v1);
    v3 = v7;
  }

  if (!v3)
  {
    v6 = WTF::fastMalloc(0x18);
    *v6 = &unk_1F10EE298;
    *(v6 + 1) = v1;
    *(v6 + 2) = v4;
    v8 = v6;
    WTF::ensureOnMainRunLoop();
    this = v8;
    if (v8)
    {
      return (*(*v8 + 8))(v8);
    }
  }

  return this;
}

void WebKit::LogStream::~LogStream(WebKit::LogStream *this, void *a2)
{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  WTF::fastFree(this, a2);
}

unsigned int *IPC::MessageReceiverMap::removeMessageReceiver(uint64_t *a1, unsigned __int8 a2)
{
  v5 = a2;
  result = WTF::HashTable<IPC::ReceiverName,WTF::KeyValuePair<IPC::ReceiverName,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<IPC::ReceiverName,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::IntHash<IPC::ReceiverName>,WTF::HashMap<IPC::ReceiverName,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::IntHash<IPC::ReceiverName>,WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<IPC::ReceiverName,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::IntHash<IPC::ReceiverName>,WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<IPC::ReceiverName>>,(WTF::ShouldValidateKey)1,IPC::ReceiverName>(a1, &v5);
  if (*a1)
  {
    v4 = *a1 + 16 * *(*a1 - 4);
    if (v4 == result)
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

    v4 = 0;
  }

  if (v4 != result)
  {
    return WTF::HashTable<IPC::ReceiverName,WTF::KeyValuePair<IPC::ReceiverName,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<IPC::ReceiverName,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::IntHash<IPC::ReceiverName>,WTF::HashMap<IPC::ReceiverName,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::IntHash<IPC::ReceiverName>,WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::FastMalloc>::remove(a1, result);
  }

  return result;
}

void WebKit::WebPermissionControllerProxy::~WebPermissionControllerProxy(WebKit::WebPermissionControllerProxy *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    goto LABEL_6;
  }

  IPC::MessageReceiverMap::removeMessageReceiver((v1 + 96), 0xBFu);
  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    v5 = (v4 + 48);
    if (atomic_load(v5))
    {
      atomic_fetch_add(v5, 0xFFFFFFFF);
      goto LABEL_5;
    }

LABEL_6:
    __break(0xC471u);
    JUMPOUT(0x19D5FCB40);
  }

LABEL_5:
  *this = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v3);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::enqueueIncomingMessage(WTF::UniqueRef<IPC::Decoder>)::$_2,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1147520;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WebKit::NetworkStorageManager::clearStorageForWebPage(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_0::operator()(void *a1)
{
  v2 = *a1;
  result = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::begin(*(*a1 + 72));
  v4 = result;
  v6 = v5;
  v7 = *(v2 + 72);
  if (v7)
  {
    v8 = v7 + 72 * *(v7 - 4);
  }

  else
  {
    v8 = 0;
  }

  if (v8 != result)
  {
    do
    {
      result = WebKit::OriginStorageManager::defaultBucket(*(v4 + 64))[7];
      if (result)
      {
        v9 = a1[2];
        if ((v9 - 1) >= 0xFFFFFFFFFFFFFFFELL)
        {
          result = 153;
          __break(0xC471u);
          return result;
        }

        result = WebKit::SessionStorageManager::removeNamespace(result, v9);
      }

      do
      {
        v4 += 72;
        if (v4 == v6)
        {
          break;
        }

        result = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v4);
      }

      while (result);
    }

    while (v4 != v8);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::clearStorageForWebPage(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110AEF0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v3 + 8));
  }

  return WTF::fastFree(this, a2);
}

void WebKit::WebLockRegistryProxy::~WebLockRegistryProxy(WebKit::WebLockRegistryProxy *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    goto LABEL_6;
  }

  IPC::MessageReceiverMap::removeMessageReceiver((v1 + 96), 0xB6u);
  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    v5 = (v4 + 48);
    if (atomic_load(v5))
    {
      atomic_fetch_add(v5, 0xFFFFFFFF);
      goto LABEL_5;
    }

LABEL_6:
    __break(0xC471u);
    JUMPOUT(0x19D5FCD8CLL);
  }

LABEL_5:
  *this = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v3);
}

uint64_t *std::unique_ptr<WebKit::SpeechRecognitionRemoteRealtimeMediaSourceManager>::reset[abi:sn200100](uint64_t *result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 32);
    if (v3)
    {
      WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::deallocateTable(v3, a2);
    }

    v4 = *(v2 + 24);
    *(v2 + 24) = 0;
    if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4);
      WTF::fastFree(v4, a2);
    }

    *v2 = &unk_1F10EA5E0;
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory((v2 + 8), a2);

    return bmalloc::api::tzoneFree(v2, v5);
  }

  return result;
}

void WebKit::GPUProcess::didReceiveMessage(atomic_uint *this, WTF::ThreadSafeWeakPtrControlBlock **a2, IPC::Decoder *a3)
{
  atomic_fetch_add(this + 34, 1u);
  switch(*(a3 + 25))
  {
    case 'F':
      IPC::handleMessage<Messages::GPUProcess::AddMockMediaDevice,IPC::Connection,WebKit::GPUProcess,WebKit::GPUProcess,void ()(WebCore::MockMediaDevice const&)>(a3);
      break;
    case 'G':
      IPC::handleMessage<Messages::GPUProcess::AddSession,IPC::Connection,WebKit::GPUProcess,WebKit::GPUProcess,void ()(PAL::SessionID,WebKit::GPUProcessSessionParameters &&)>(a3, this);
      break;
    case 'H':
      WebKit::GPUProcess::clearMockMediaDevices(this);
      break;
    case 'I':
      IPC::handleMessageAsync<Messages::GPUProcess::CreateGPUConnectionToWebProcess,IPC::Connection,WebKit::GPUProcess,WebKit::GPUProcess,void ()(WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,PAL::SessionID,IPC::ConnectionHandle &&,WebKit::GPUProcessConnectionParameters &&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      break;
    case 'J':
      WebKit::GPUProcess::enableMicrophoneMuteStatusAPI(this);
      break;
    case 'K':
      IPC::handleMessageAsync<Messages::GPUProcess::InitializeGPUProcess,IPC::Connection,WebKit::GPUProcess,WebKit::GPUProcess,void ()(WebKit::GPUProcessCreationParameters &&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      break;
    case 'L':
      IPC::handleMessageAsync<Messages::GPUProcess::PostWillTakeSnapshotNotification,IPC::Connection,WebKit::GPUProcess,WebKit::GPUProcess,void ()(WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      break;
    case 'M':
      IPC::handleMessageAsync<Messages::GPUProcess::PrepareToSuspend,IPC::Connection,WebKit::GPUProcess,WebKit::GPUProcess,void ()(BOOL,WTF::MonotonicTime,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      break;
    case 'N':
      WebKit::GPUProcess::processDidResume(this);
      break;
    case 'O':
      IPC::handleMessage<Messages::GPUProcess::RegisterFonts,IPC::Connection,WebKit::GPUProcess,WebKit::GPUProcess,void ()(WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>(a3, this);
      break;
    case 'P':
      IPC::handleMessage<Messages::GPUProcess::RemoveMockMediaDevice,IPC::Connection,WebKit::GPUProcess,WebKit::GPUProcess,void ()(WTF::String const&)>(a3, this);
      break;
    case 'Q':
      v8 = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a3);
      if (v9)
      {
        WebKit::GPUProcess::removeSession(this, v8);
      }

      break;
    case 'R':
      IPC::handleMessageAsync<Messages::GPUProcess::RequestBitmapImageForCurrentTime,IPC::Connection,WebKit::GPUProcess,WebKit::GPUProcess,void ()(WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::optional<WebCore::ShareableBitmapHandle> &&)> &&)>(a2, a3, this);
      break;
    case 'S':
      WebKit::GPUProcess::resetMockMediaDevices(this);
      break;
    case 'T':
      IPC::handleMessage<Messages::GPUProcess::ResolveBookmarkDataForCacheDirectory,IPC::Connection,WebKit::GPUProcess,WebKit::GPUProcess,void ()(std::span<unsigned char const,18446744073709551615ul>)>(a3, this);
      break;
    case 'U':
      IPC::handleMessage<Messages::GPUProcess::RotationAngleForCaptureDeviceChanged,IPC::Connection,WebKit::GPUProcess,WebKit::GPUProcess,void ()(WTF::String const&,WebCore::VideoFrameRotation)>(a3, this);
      break;
    case 'V':
      v10 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
      if ((v10 & 0x100) != 0)
      {
        WebKit::GPUProcess::setMockCaptureDevicesEnabled(this, (v10 & 1));
      }

      break;
    case 'W':
      v11 = IPC::Decoder::decode<std::tuple<BOOL,BOOL>>(a3);
      if ((v11 & 0x10000) != 0)
      {
        WebKit::GPUProcess::setMockCaptureDevicesInterrupted(this, v11 & 1, (v11 >> 8) & 1);
      }

      break;
    case 'X':
      IPC::handleMessage<Messages::GPUProcess::SetMockMediaDeviceIsEphemeral,IPC::Connection,WebKit::GPUProcess,WebKit::GPUProcess,void ()(WTF::String const&,BOOL)>(a3, this);
      break;
    case 'Y':
      v7 = IPC::Decoder::decode<std::tuple<int>>(a3);
      if ((v7 & 0x100000000) != 0)
      {
        WebKit::GPUProcess::setOrientationForMediaCapture(this, v7);
      }

      break;
    case 'Z':
      IPC::handleMessage<Messages::GPUProcess::SetPresentingApplicationAuditToken,IPC::Connection,WebKit::GPUProcess,WebKit::GPUProcess,void ()(WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WebKit::CoreIPCAuditToken> &&)>(a3, this);
      break;
    case '[':
      v12 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
      if ((v12 & 0x100) != 0)
      {
        WebKit::GPUProcess::setShouldListenToVoiceActivity(this, v12 & 1);
      }

      break;
    case '\\':
      IPC::handleMessageAsync<Messages::GPUProcess::SharedPreferencesForWebProcessDidChange,IPC::Connection,WebKit::GPUProcess,WebKit::GPUProcess,void ()(WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess &&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      break;
    case ']':
      IPC::handleMessage<Messages::GPUProcess::TriggerMockCaptureConfigurationChange,IPC::Connection,WebKit::GPUProcess,WebKit::GPUProcess,void ()(BOOL,BOOL,BOOL)>(a3, this);
      break;
    case '^':
      IPC::handleMessageAsync<Messages::GPUProcess::UpdateCaptureAccess,IPC::Connection,WebKit::GPUProcess,WebKit::GPUProcess,void ()(BOOL,BOOL,BOOL,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      break;
    case '_':
      IPC::handleMessage<Messages::GPUProcess::UpdateCaptureOrigin,IPC::Connection,WebKit::GPUProcess,WebKit::GPUProcess,void ()(WebCore::SecurityOriginData const&,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)>(a3, this);
      break;
      v5 = IPC::ArgumentCoder<WebKit::GPUProcessPreferences,void>::decode(a3);
      if ((v5 & 0x10000000000) == 0)
      {
        IPC::Decoder::markInvalid(a3);
        IPC::Decoder::markInvalid(a3);
      }

      v13 = v5 & 0xFFFFFF00 | v5 & (((v5 << 23) >> 16) >> 47);
      v14 = (v5 & 0xFFFFFFFF00 | v5 & (((v5 << 23) >> 16) >> 47) | v5 & 0x10000000000) >> 32;
      if ((v5 & 0x10000000000) != 0)
      {
        WebKit::GPUProcess::updateGPUProcessPreferences(this, &v13);
      }

      break;
    case 'a':
      IPC::handleMessage<Messages::GPUProcess::UpdateSandboxAccess,IPC::Connection,WebKit::GPUProcess,WebKit::GPUProcess,void ()(WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>(a3, this);
      break;
    case 'b':
      IPC::handleMessage<Messages::GPUProcess::UserPreferredLanguagesChanged,IPC::Connection,WebKit::GPUProcess,WebKit::GPUProcess,void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>(a3);
      break;
    case 'c':
      IPC::handleMessageAsync<Messages::GPUProcess::WebProcessConnectionCountForTesting,IPC::Connection,WebKit::GPUProcess,WebKit::GPUProcess,void ()(WTF::CompletionHandler<void ()(unsigned long long)> &&)>(a2, a3, this);
      break;
    default:
      WebKit::AuxiliaryProcess::didReceiveMessage(this, a2, a3);
      break;
  }

  if (this && atomic_fetch_add(this + 34, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, this + 34);
    v6 = *(*this + 24);

    v6(this);
  }
}

atomic_ullong *IPC::handleMessage<Messages::GPUProcess::SetPresentingApplicationAuditToken,IPC::Connection,WebKit::GPUProcess,WebKit::GPUProcess,void ()(WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WebKit::CoreIPCAuditToken> &&)>(IPC::Decoder *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if ((v5 & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a1);
  }

  v6 = v4;
  v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if ((v8 & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a1);
  }

  v9 = v7;
  IPC::ArgumentCoder<std::optional<WebKit::CoreIPCAuditToken>,void>::decode<IPC::Decoder>(a1, v14);
  if ((v16 & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
    if ((v16 & 1) == 0)
    {
      return IPC::Decoder::markInvalid(a1);
    }
  }

  v11[0] = v14[0];
  v11[1] = v14[1];
  v12 = v15;
  v13 = 1;
  return WebKit::GPUProcess::setPresentingApplicationAuditToken(a2, v6, v9, v11);
}

void WebKit::UserMediaCaptureManagerProxy::~UserMediaCaptureManagerProxy(WebKit::UserMediaCaptureManagerProxy *this)
{
  *this = &unk_1F10FE448;
  (*(**(this + 4) + 24))(*(this + 4), 149);
  v3 = *(this + 10);
  if (v3)
  {
    v4 = *(v3 - 4);
    if (v4)
    {
      v5 = v3 + 16;
      do
      {
        if (*(v5 - 16) != -1)
        {
          v6 = *(v5 + 8);
          if (v6)
          {
            WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::FastMalloc>::deallocateTable(v6, v2);
          }

          v7 = *v5;
          *v5 = 0;
          if (v7)
          {
            WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v7, v2);
          }
        }

        v5 += 48;
        --v4;
      }

      while (v4);
    }

    WTF::fastFree((v3 - 16), v2);
  }

  v8 = *(this + 9);
  *(this + 9) = 0;
  if (v8 && atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v8 + 2);
    (*(*v8 + 16))(v8);
  }

  v9 = *(this + 6);
  v10 = *(this + 15);
  if (v10)
  {
    v11 = 8 * v10;
    v12 = *(this + 6);
    do
    {
      if (*(*v12 + 8))
      {
        *(*v12 + 8) = 0;
      }

      v12 += 8;
      v11 -= 8;
    }

    while (v11);
  }

  if (v9)
  {
    *(this + 6) = 0;
    *(this + 14) = 0;
    WTF::fastFree(v9, v2);
  }

  v13 = *(this + 4);
  *(this + 4) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(this + 3);
  if (v14)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v14, v2);
  }

  if (*(this + 4) == 1)
  {
    *this = &unk_1F10EA5E0;
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v2);
  }

  else
  {
    __break(0xC471u);
  }
}

{
  WebKit::UserMediaCaptureManagerProxy::~UserMediaCaptureManagerProxy(this);

  bmalloc::api::tzoneFree(v1, v2);
}

IPC::Decoder *IPC::ArgumentCoder<std::optional<WebKit::CoreIPCAuditToken>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this;
  v4 = *(this + 2);
  if (*(this + 1) <= &v4[-*this])
  {
    IPC::Decoder::markInvalid(this);
    goto LABEL_12;
  }

  *(this + 2) = v4 + 1;
  if (!v4)
  {
LABEL_12:
    IPC::Decoder::markInvalid(v2);
    goto LABEL_13;
  }

  v5 = *v4;
  if (v5 >= 2)
  {
LABEL_13:
    this = IPC::Decoder::markInvalid(v2);
    *a2 = 0;
    *(a2 + 36) = 0;
    return this;
  }

  if (v5)
  {
    this = IPC::ArgumentCoder<WebKit::CoreIPCAuditToken,void>::decode(this, v8);
    if (v9)
    {
      v7 = v8[1];
      *a2 = v8[0];
      *(a2 + 16) = v7;
      v6 = 1;
      *(a2 + 32) = 1;
    }

    else
    {
      this = IPC::Decoder::markInvalid(v2);
      v6 = 0;
      *a2 = 0;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 32) = 0;
    v6 = 1;
  }

  *(a2 + 36) = v6;
  return this;
}

uint64_t WTF::NativePromise<void,void,0u>::~NativePromise(unsigned __int8 *a1)
{
  v1 = WTF::NativePromise<void,void,0u>::~NativePromise(a1);

  return WTF::fastFree(v1, v2);
}

IPC::Decoder *IPC::Decoder::decode<std::optional<WebKit::CoreIPCAuditToken>>(uint64_t a1, IPC::Decoder *this)
{
  result = IPC::ArgumentCoder<std::optional<WebKit::CoreIPCAuditToken>,void>::decode<IPC::Decoder>(this, a1);
  if ((*(a1 + 36) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(this);
  }

  return result;
}

unsigned __int8 *WTF::NativePromise<void,void,0u>::~NativePromise(unsigned __int8 *a1)
{
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
    WTF::Logger::log<char [10],WTF::NativePromise<void,void,0u>>(v2, 4, "destroying ", a1);
  }

  WTF::NativePromise<void,void,0u>::assertIsDead(a1);
  WTF::Vector<WTF::NativePromiseProducer<void,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 96), v4);
  WTF::Vector<WTF::Ref<WTF::NativePromise<void,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 72), v5);
  mpark::detail::destructor<mpark::detail::traits<WTF::NativePromise<void,void,0u>::Storage::NoResult,std::experimental::fundamentals_v3::expected<void,WTF::detail::VoidPlaceholder>,WTF::Function<std::experimental::fundamentals_v3::expected<void,WTF::detail::VoidPlaceholder> ()(void)>>,(mpark::detail::Trait)1>::destroy(a1 + 56);
  return a1;
}

uint64_t WTF::NativePromise<void,void,0u>::assertIsDead(uint64_t result)
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
      result = WTF::NativePromiseProducer<void,void,0u>::assertIsDead(v5);
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

atomic_ullong *WebKit::GPUProcess::setPresentingApplicationAuditToken(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 144), a2);
  if (result)
  {
    v7 = result;
    v8 = result + 2;
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
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_5:
    WebKit::GPUConnectionToWebProcess::setPresentingApplicationAuditToken(v7, a3, a4);

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref(v8);
  }

  return result;
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t a2)
{
  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19D5FD8ACLL);
  }

  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 - 8);
    v4 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v5 = 9 * ((v4 + ~(v4 << 13)) ^ ((v4 + ~(v4 << 13)) >> 8));
    v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27);
    v7 = v3 & ((v6 >> 31) ^ v6);
    v8 = *(v2 + 16 * v7);
    if (v8 == a2)
    {
      return *(v2 + 16 * v7 + 8);
    }

    v9 = 1;
    while (v8)
    {
      v7 = (v7 + v9) & v3;
      v8 = *(v2 + 16 * v7);
      ++v9;
      if (v8 == a2)
      {
        return *(v2 + 16 * v7 + 8);
      }
    }
  }

  return 0;
}

void WebKit::BackgroundProcessResponsivenessTimer::~BackgroundProcessResponsivenessTimer(WebKit::BackgroundProcessResponsivenessTimer *this)
{
  v2 = (this + 72);
  *(this + 9) = &unk_1F10E6DC8;
  v3 = *(this + 14);
  *(this + 14) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::RunLoop::TimerBase::~TimerBase(v2);
  *(this + 3) = &unk_1F10E6DC8;
  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  WTF::RunLoop::TimerBase::~TimerBase((this + 24));
  v6 = *(this + 1);
  *(this + 1) = 0;
  if (v6)
  {
    if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v6);
      WTF::fastFree(v6, v5);
    }
  }
}

void WebKit::AuxiliaryProcessProxy::~AuxiliaryProcessProxy(WebKit::AuxiliaryProcessProxy *this)
{
  *this = &unk_1F1114878;
  *(this + 3) = &unk_1F1114978;
  *(this + 4) = &unk_1F1114A00;
  v2 = *(this + 10);
  if (v2 && (*(v2 + 104) & 1) != 0 || *(this + 11))
  {
    WebKit::AuxiliaryProcessProxy::platformStartConnectionTerminationWatchdog(this);
  }

  v3 = *(*(this + 20) + 8);
  if (!v3)
  {
    __break(0xC471u);
    return;
  }

  atomic_fetch_add((v3 + 16), 1u);
  WebKit::ProcessThrottler::didDisconnectFromProcess((this + 144));
  WebKit::ProcessThrottler::deref((this + 144));
  v6 = *(this + 11);
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
        goto LABEL_11;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_11:
    IPC::Connection::invalidate(v6);
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v6);
  }

  v9 = *(this + 10);
  *(this + 10) = 0;
  if (v9)
  {
    WebKit::ProcessLauncher::invalidate(v9);
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessLauncher,(WTF::DestructionThread)0>::deref(v9 + 1, v10);
  }

  *&v5 = 0;
  v11 = *(this + 8);
  v33 = v11;
  v12 = *(this + 19);
  v34 = *(this + 18);
  v35 = v12;
  v32 = v5;
  *(this + 8) = 0;
  *(this + 9) = 0;
  if (v12)
  {
    v13 = (v11 + 16);
    v14 = 40 * v12;
    do
    {
      if (*(v13 + 16) == 1)
      {
        v15 = *v13;
        *v13 = 0;
        (*(*v15 + 16))(v15, 0, 0);
        (*(*v15 + 8))(v15);
      }

      v13 += 5;
      v14 -= 40;
    }

    while (v14);
  }

  WTF::Vector<WebKit::AuxiliaryProcessProxy::PendingMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v33, v4);
  WTF::Vector<WebKit::AuxiliaryProcessProxy::PendingMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v32, v16);
  v18 = *(this + 11);
  if (v18)
  {
    {
      WebKit::connectionToProcessMap(void)::map = 0;
    }

    v19 = WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::AuxiliaryProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::AuxiliaryProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::AuxiliaryProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::AuxiliaryProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::AuxiliaryProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::AuxiliaryProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(*(v18 + 24));
    if (WebKit::connectionToProcessMap(void)::map)
    {
      v20 = WebKit::connectionToProcessMap(void)::map + 16 * *(WebKit::connectionToProcessMap(void)::map - 4);
      if (v20 == v19)
      {
        goto LABEL_29;
      }

LABEL_27:
      if (v20 != v19)
      {
        WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::AuxiliaryProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::AuxiliaryProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::AuxiliaryProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::AuxiliaryProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(v19, v17);
      }

      goto LABEL_29;
    }

    if (v19)
    {
      v20 = 0;
      goto LABEL_27;
    }
  }

LABEL_29:
  v21 = *(this + 50);
  if (v21)
  {
    WTF::HashTable<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::KeyValuePair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::pair<unsigned int,std::unique_ptr<IPC::Encoder>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::pair<unsigned int,std::unique_ptr<IPC::Encoder>>>>,WTF::DefaultHash<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashMap<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::pair<unsigned int,std::unique_ptr<IPC::Encoder>>,WTF::DefaultHash<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTraits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTraits<std::pair<unsigned int,std::unique_ptr<IPC::Encoder>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::FastMalloc>::deallocateTable(v21, v17);
  }

  v22 = *(this + 49);
  if (v22)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::ExtensionCapabilityGrant,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::ExtensionCapabilityGrant>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v22, v17);
  }

  WebKit::ProcessThrottler::~ProcessThrottler((this + 144));
  IPC::MessageReceiverMap::~MessageReceiverMap((this + 96), v23);
  v25 = *(this + 11);
  *(this + 11) = 0;
  if (v25)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v25);
  }

  v26 = *(this + 10);
  *(this + 10) = 0;
  if (v26)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessLauncher,(WTF::DestructionThread)0>::deref((v26 + 8), v24);
  }

  WTF::Vector<WebKit::AuxiliaryProcessProxy::PendingMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 64, v24);
  v28 = *(this + 7);
  *(this + 7) = 0;
  if (v28)
  {
    WTF::RefCounted<WebKit::ResponsivenessTimer>::deref(v28);
  }

  *(this + 4) = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 5, v27);
  v30 = *(this + 1);
  if (v30)
  {
    *(v30 + 8) = 0;
    v31 = *(this + 1);
    *(this + 1) = 0;
    if (v31)
    {
      if (atomic_fetch_add(v31, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v31);
        WTF::fastFree(v31, v29);
      }
    }
  }
}

uint64_t WebKit::ProcessThrottler::didDisconnectFromProcess(WebKit::ProcessThrottler *this)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED641030;
  if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(this + 2) + 8);
    if (!v3)
    {
      result = 92;
      __break(0xC471u);
      return result;
    }

    v4 = *(v3 + 80);
    if (v4)
    {
      LODWORD(v4) = *(v4 + 108);
    }

    v8 = 134218240;
    v9 = this;
    v10 = 1024;
    v11 = v4;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [PID=%d] ProcessThrottler::didDisconnectFromProcess:", &v8, 0x12u);
  }

  WTF::RunLoop::TimerBase::stop((this + 88));
  result = WTF::RunLoop::TimerBase::stop((this + 40));
  if (*(this + 224) == 1)
  {
    *(this + 224) = 0;
  }

  *(this + 237) = 0;
  v7 = *(this + 3);
  *(this + 3) = 0;
  if (v7)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v7 + 8), v6);
  }

  return result;
}

void WebKit::ProcessLauncher::invalidate(WebKit::ProcessLauncher *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 112))(v2);
  }

  *(this + 2) = 0;

  WebKit::ProcessLauncher::platformInvalidate(this);
}

uint64_t WebKit::ExtensionProcess::invalidate(WebKit::ExtensionProcess *this)
{
  v1 = *(this + 8);
  if (v1 == 255)
  {
    v2 = -1;
  }

  else
  {
    v2 = *(this + 8);
  }

  if (v2 == 2)
  {
    if (v1 != 2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (v2 == 1)
    {
      if (v1 == 1)
      {
        goto LABEL_7;
      }

LABEL_11:
      mpark::throw_bad_variant_access(this);
    }

    if (*(this + 8))
    {
      goto LABEL_11;
    }
  }

LABEL_7:
  v3 = *this;

  return [v3 invalidate];
}

void WebKit::ProcessLauncher::platformInvalidate(WebKit::ProcessLauncher *this)
{
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::LaunchGrant,(WTF::DestructionThread)0>::deref(v2);
  }

  if (*(this + 56) == 1)
  {
    WebKit::ExtensionProcess::invalidate((this + 40));
  }

  WebKit::ProcessLauncher::terminateXPCConnection(this);
}

void WebKit::ProcessLauncher::terminateXPCConnection(WebKit::ProcessLauncher *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    xpc_connection_cancel(v2);
    v3 = *(this + 3);
    if (v3)
    {
    }

    *(this + 3) = 0;
  }
}

void WebKit::ProcessLauncher::~ProcessLauncher(WebKit::ProcessLauncher *this, WTF::StringImpl *a2)
{
  *this = &unk_1F10EA578;
  if (*(this + 56) == 1)
  {
    WebKit::ExtensionProcess::invalidate((this + 40));
  }

  if (*(this + 104) == 1)
  {
    kdebug_trace();
  }

  v3 = *(this + 11);
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  std::__optional_destruct_base<WebKit::ExtensionProcess,false>::~__optional_destruct_base[abi:sn200100](this + 40);
  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCounted<WebKit::LaunchGrant,(WTF::DestructionThread)0>::deref(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    os_release(v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 112))(v6);
  }
}

{
  WebKit::ProcessLauncher::~ProcessLauncher(this, a2);

  WTF::fastFree(v2, v3);
}

void WebKit::ProcessThrottler::~ProcessThrottler(WebKit::ProcessThrottler *this)
{
  WebKit::ProcessThrottler::invalidateAllActivities(this);
  v3 = *(this + 25);
  if (v3)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v3, v2);
  }

  v4 = *(this + 23);
  if (v4)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v4, v2);
  }

  *(this + 17) = &unk_1F10E6DC8;
  v5 = *(this + 22);
  *(this + 22) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  WTF::RunLoop::TimerBase::~TimerBase((this + 136));
  *(this + 11) = &unk_1F10E6DC8;
  v6 = *(this + 16);
  *(this + 16) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  WTF::RunLoop::TimerBase::~TimerBase((this + 88));
  *(this + 5) = &unk_1F10E6DC8;
  v7 = *(this + 10);
  *(this + 10) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  WTF::RunLoop::TimerBase::~TimerBase((this + 40));
  v9 = *(this + 4);
  *(this + 4) = 0;
  if (v9)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v9 + 8), v8);
  }

  v10 = *(this + 3);
  *(this + 3) = 0;
  if (v10)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v10 + 8), v8);
  }

  v11 = *(this + 2);
  *(this + 2) = 0;
  if (v11 && atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v11);
    WTF::fastFree(v11, v8);
  }

  v12 = *(this + 1);
  *(this + 1) = 0;
  if (v12)
  {
    v13 = *(v12 + 1);
    if (v13)
    {
      WTF::HashTable<WebKit::ProcessAssertionType,WTF::KeyValuePair<WebKit::ProcessAssertionType,WTF::Ref<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion,WTF::RawPtrTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::ProcessAssertionType,WTF::Ref<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion,WTF::RawPtrTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>>>>,WTF::IntHash<WebKit::ProcessAssertionType>,WTF::HashMap<WebKit::ProcessAssertionType,WTF::Ref<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion,WTF::RawPtrTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>>,WTF::IntHash<WebKit::ProcessAssertionType>,WTF::StrongEnumHashTraits<WebKit::ProcessAssertionType>,WTF::HashTraits<WTF::Ref<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion,WTF::RawPtrTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebKit::ProcessAssertionType>,WTF::FastMalloc>::deallocateTable(v13, v8);
    }

    if (*v12)
    {
      *v12 = 0;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
    }

    else
    {
      bmalloc::api::tzoneFree(v12, v8);
    }
  }

  if (*this)
  {
    *(*this + 8) = 0;
    v14 = *this;
    *this = 0;
    if (v14)
    {
      if (atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v14);
        WTF::fastFree(v14, v8);
      }
    }
  }
}

void WebKit::ProcessThrottler::invalidateAllActivities(WebKit::ProcessThrottler *this)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED641030;
  if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(this + 2) + 8);
    if (!v4)
    {
      __break(0xC471u);
      goto LABEL_19;
    }

    v5 = *(v4 + 80);
    if (v5)
    {
      v6 = *(v5 + 108);
    }

    else
    {
      v6 = 0;
    }

    v17 = 134218752;
    *v18 = this;
    *&v18[8] = 1024;
    *&v18[10] = v6;
    v19 = 1024;
    v20 = WTF::WeakHashSet<WebKit::ProcessThrottlerActivity,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::computeSize(this + 184, v3);
    v21 = 1024;
    v22 = WTF::WeakHashSet<WebKit::ProcessThrottlerActivity,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::computeSize(this + 200, v7);
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [PID=%d] ProcessThrottler::invalidateAllActivities: BEGIN (foregroundActivityCount: %u, backgroundActivityCount: %u)", &v17, 0x1Eu);
  }

  while (!WTF::WeakHashSet<WebKit::ProcessThrottlerActivity,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::isEmptyIgnoringNullReferences(this + 23))
  {
    WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(this + 23, &v17);
    v8 = *(**&v18[4] + 8);
    v9 = v8 + 2;
    ++v8[2];
    WebKit::ProcessThrottlerActivity::invalidate(v8, 1);
    WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref(v9, v10);
  }

  while (!WTF::WeakHashSet<WebKit::ProcessThrottlerActivity,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::isEmptyIgnoringNullReferences(this + 25))
  {
    WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(this + 25, &v17);
    v11 = *(**&v18[4] + 8);
    v12 = v11 + 2;
    ++v11[2];
    WebKit::ProcessThrottlerActivity::invalidate(v11, 1);
    WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref(v12, v13);
  }

  v14 = qword_1ED641030;
  if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(*(this + 2) + 8);
    if (v15)
    {
      v16 = *(v15 + 80);
      if (v16)
      {
        LODWORD(v16) = *(v16 + 108);
      }

      v17 = 134218240;
      *v18 = this;
      *&v18[8] = 1024;
      *&v18[10] = v16;
      _os_log_impl(&dword_19D52D000, v14, OS_LOG_TYPE_DEFAULT, "%p - [PID=%d] ProcessThrottler::invalidateAllActivities: END", &v17, 0x12u);
      return;
    }

    __break(0xC471u);
LABEL_19:
    JUMPOUT(0x19D5FE4C8);
  }
}

void IPC::MessageReceiverMap::~MessageReceiverMap(IPC::MessageReceiverMap *this, void *a2)
{
  v3 = *(this + 1);
  if (v3)
  {
    WTF::HashTable<std::pair<IPC::ReceiverName,unsigned long long>,WTF::KeyValuePair<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  if (*this)
  {
    WTF::HashTable<IPC::ReceiverName,WTF::KeyValuePair<IPC::ReceiverName,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<IPC::ReceiverName,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::IntHash<IPC::ReceiverName>,WTF::HashMap<IPC::ReceiverName,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::IntHash<IPC::ReceiverName>,WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::FastMalloc>::deallocateTable(*this, a2);
  }
}

WebKit::ResponsivenessTimer *WTF::RefCounted<WebKit::ResponsivenessTimer>::deref(WebKit::ResponsivenessTimer *result)
{
  if (*result == 1)
  {
    WebKit::ResponsivenessTimer::~ResponsivenessTimer(result);

    return WTF::fastFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

void WebKit::ResponsivenessTimer::~ResponsivenessTimer(WebKit::ResponsivenessTimer *this)
{
  v2 = (this + 16);
  *(this + 2) = &unk_1F10E6DC8;
  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::RunLoop::TimerBase::~TimerBase(v2);
  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, v4);
  }

  if (*this != 1)
  {
    __break(0xC471u);
  }
}

WebKit::RemoteLayerTreeHost *std::unique_ptr<WebKit::RemoteLayerTreeHost>::reset[abi:sn200100](WebKit::RemoteLayerTreeHost **a1, WebKit::RemoteLayerTreeHost *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    WebKit::RemoteLayerTreeHost::~RemoteLayerTreeHost(result, a2);

    return bmalloc::api::tzoneFree(v4, v5);
  }

  return result;
}

void WebKit::WebNavigationState::~WebNavigationState(WebKit::WebNavigationState *this, void *a2)
{
  v3 = *(this + 2);
  if (v3)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebExtensionMessagePort,WTF::RawPtrTraits<WebKit::WebExtensionMessagePort>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMessagePort>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebExtensionMessagePort,WTF::RawPtrTraits<WebKit::WebExtensionMessagePort>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMessagePort>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebExtensionMessagePort,WTF::RawPtrTraits<WebKit::WebExtensionMessagePort>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMessagePort>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionMessagePort,WTF::RawPtrTraits<WebKit::WebExtensionMessagePort>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMessagePort>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this, a2);
}

void WebKit::NavigationState::HistoryClient::~HistoryClient(WebKit::NavigationState::HistoryClient *this, void *a2)
{
  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  bmalloc::api::tzoneFree(this, a2);
}

{
  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);
      WTF::fastFree(v3, a2);
    }
  }
}

void WebKit::WebPageProxy::Internals::~Internals(WebKit::WebPageProxy::Internals *this, void *a2)
{
  v3 = *(this + 364);
  *(this + 364) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 363, a2);
  v5 = *(this + 361);
  if (v5)
  {
    v6 = *(v5 - 4);
    if (v6)
    {
      v7 = *(this + 361);
      do
      {
        v8 = *v7;
        if (*v7 != -1)
        {
          *v7 = 0;
          if (v8)
          {
            if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v8, v4);
            }
          }
        }

        v7 += 2;
        --v6;
      }

      while (v6);
    }

    WTF::fastFree((v5 - 16), v4);
  }

  v9 = *(this + 360);
  *(this + 360) = 0;
  if (v9)
  {
    WTF::RefCounted<WebKit::WebPageProxyFrameLoadStateObserver>::deref((v9 + 16), v4);
  }

  v10 = *(this + 359);
  *(this + 359) = 0;
  if (v10)
  {
    WTF::RefCounted<WebKit::MediaCapability>::deref(v10 + 24, v4);
  }

  *(this + 350) = &unk_1F10E6DC8;
  v11 = *(this + 355);
  *(this + 355) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  WTF::RunLoop::TimerBase::~TimerBase((this + 2800));
  v13 = *(this + 321);
  if (v13)
  {
    WTF::fastFree((v13 - 16), v12);
  }

  v14 = *(this + 320);
  if (v14)
  {
    v15 = *(v14 - 4);
    if (v15)
    {
      v16 = (v14 + 16);
      do
      {
        if (*(v16 - 2) ^ 1 | *(v16 - 1))
        {
          v17 = *v16;
          *v16 = 0;
          if (v17)
          {
            (*(*v17 + 8))(v17);
          }
        }

        v16 += 4;
        --v15;
      }

      while (v15);
    }

    WTF::fastFree((v14 - 16), v12);
  }

  v18 = *(this + 319);
  if (v18)
  {
    WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::deallocateTable(v18, v12);
  }

  v19 = *(this + 318);
  if (v19)
  {
    v20 = *(v19 - 4);
    if (v20)
    {
      v21 = (v19 + 16);
      do
      {
        if (*(v21 - 2) ^ 1 | *(v21 - 1))
        {
          v22 = *v21;
          *v21 = 0;
          if (v22)
          {
            WTF::RefCounted<WebCore::TextIndicator>::deref(v22);
          }
        }

        v21 += 4;
        --v20;
      }

      while (v20);
    }

    WTF::fastFree((v19 - 16), v12);
  }

  if (*(this + 2528) == 1)
  {
    v23 = *(this + 315);
    *(this + 315) = 0;
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }

    v24 = *(this + 314);
    *(this + 314) = 0;
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }

    v25 = *(this + 313);
    *(this + 313) = 0;
    if (v25)
    {
      (*(*v25 + 8))(v25);
    }

    v26 = *(this + 312);
    *(this + 312) = 0;
    if (v26)
    {
      (*(*v26 + 8))(v26);
    }

    v27 = *(this + 311);
    *(this + 311) = 0;
    if (v27)
    {
      WTF::RefCounted<WebCore::PlatformSpeechSynthesisUtterance>::deref(v27, v12);
    }

    v28 = *(this + 310);
    *(this + 310) = 0;
    if (v28)
    {
      if (v28[4] == 1)
      {
        goto LABEL_219;
      }

      --v28[4];
    }
  }

  while (1)
  {
    v29 = *(this + 309);
    *(this + 309) = 0;
    if (v29)
    {
      (*(*v29 + 8))(v29);
    }

    v30 = *(this + 308);
    if (v30)
    {
      WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v30, v12);
    }

    v31 = *(this + 300);
    *(this + 300) = 0;
    if (v31)
    {
      if (v31[4] == 1)
      {
        (*(*v31 + 8))(v31);
      }

      else
      {
        --v31[4];
      }
    }

    v32 = *(this + 294);
    *(this + 294) = 0;
    if (v32)
    {
      if (v32[4] == 1)
      {
        (*(*v32 + 8))(v32);
      }

      else
      {
        --v32[4];
      }
    }

    *(this + 287) = &unk_1F10E6DC8;
    v33 = *(this + 292);
    *(this + 292) = 0;
    if (v33)
    {
      (*(*v33 + 8))(v33);
    }

    WTF::RunLoop::TimerBase::~TimerBase((this + 2296));
    v34 = *(this + 285);
    *(this + 285) = 0;
    if (v34)
    {
      (*(*v34 + 8))(v34);
    }

    objc_destroyWeak(this + 281);
    v36 = *(this + 280);
    *(this + 280) = 0;
    if (v36)
    {
      WTF::RefCounted<WebKit::WebPaymentCoordinatorProxy>::deref((v36 + 40));
    }

    v37 = *(this + 279);
    if (v37)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::SleepDisablerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::SleepDisablerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::SleepDisabler>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::SleepDisablerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::SleepDisabler>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::SleepDisablerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::SleepDisablerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::SleepDisabler>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::SleepDisablerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::SleepDisablerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::SleepDisabler>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::SleepDisablerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v37, v35);
    }

    v38 = *(this + 277);
    if (v38)
    {
      WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v38, v35);
    }

    WebKit::WebPageProxyMessageReceiverRegistration::~WebPageProxyMessageReceiverRegistration((this + 2192));
    v40 = *(this + 273);
    *(this + 273) = 0;
    if (v40)
    {
      WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v40 + 8), v39);
    }

    v41 = *(this + 272);
    *(this + 272) = 0;
    if (v41)
    {
      WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v41 + 8), v39);
    }

    v42 = *(this + 268);
    *(this + 268) = 0;
    if (v42)
    {
      v43 = *v42;
      v44 = *(v42 + 8) - 1;
      *(v42 + 8) = v44;
      if (v43)
      {
        v45 = *v43;
        if (!*v43)
        {
          goto LABEL_82;
        }

        v46 = *(v42 + 16);
        *(v42 + 16) = 1;
        (*(*v45 + 16))(v45, 0);
        *(v42 + 16) = v46;
        if (*v42)
        {
          goto LABEL_82;
        }

        v44 = *(v42 + 8);
      }

      if (!v44)
      {
        MEMORY[0x19EB14CF0](v42, 0x1020C40545B2139);
      }
    }

LABEL_82:
    v47 = *(this + 263);
    if (v47)
    {
      v48 = *(v47 - 4);
      if (v48)
      {
        v49 = (v47 + 8);
        do
        {
          if (*(v49 - 1) != -1)
          {
            v50 = *v49;
            *v49 = 0;
            if (v50)
            {
              if (v50[2] == 1)
              {
                (*(*v50 + 8))(v50);
              }

              else
              {
                --v50[2];
              }
            }
          }

          v49 += 2;
          --v48;
        }

        while (v48);
      }

      WTF::fastFree((v47 - 16), v39);
    }

    *(this + 257) = &unk_1F10E6DC8;
    v51 = *(this + 262);
    *(this + 262) = 0;
    if (v51)
    {
      (*(*v51 + 8))(v51);
    }

    WTF::RunLoop::TimerBase::~TimerBase((this + 2056));
    v53 = *(this + 256);
    if ((v53 & 0x8000000000000) != 0)
    {
      v142 = (v53 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v53 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v142);
        WTF::fastFree(v142, v52);
      }
    }

    v54 = *(this + 255);
    if ((v54 & 0x8000000000000) != 0)
    {
      v143 = (v54 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v54 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v143);
        WTF::fastFree(v143, v52);
      }
    }

    *(this + 249) = &unk_1F10E6DC8;
    v55 = *(this + 254);
    *(this + 254) = 0;
    if (v55)
    {
      (*(*v55 + 8))(v55);
    }

    WTF::RunLoop::TimerBase::~TimerBase((this + 1992));
    v57 = *(this + 246);
    if ((v57 & 0x8000000000000) != 0)
    {
      v144 = (v57 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v57 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v144);
        WTF::fastFree(v144, v56);
      }
    }

    v58 = *(this + 243);
    if ((v58 & 0x8000000000000) != 0)
    {
      v145 = (v58 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v58 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v145);
        WTF::fastFree(v145, v56);
      }
    }

    *(this + 236) = &unk_1F10E6DC8;
    v59 = *(this + 241);
    *(this + 241) = 0;
    if (v59)
    {
      (*(*v59 + 8))(v59);
    }

    WTF::RunLoop::TimerBase::~TimerBase((this + 1888));
    if (*(this + 1872) == 1)
    {
      v61 = *(this + 233);
      *(this + 233) = 0;
      if (v61 && atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v61, v60);
      }

      v62 = *(this + 232);
      *(this + 232) = 0;
      if (v62 && atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v62, v60);
      }

      WebCore::PrivateClickMeasurement::~PrivateClickMeasurement((this + 1544), v60);
    }

    v63 = *(this + 192);
    *(this + 192) = 0;
    if (v63)
    {
      v64 = *v63;
      v65 = *(v63 + 8) - 1;
      *(v63 + 8) = v65;
      if (v64)
      {
        v66 = *v64;
        if (!*v64)
        {
          goto LABEL_118;
        }

        v67 = *(v63 + 16);
        *(v63 + 16) = 1;
        (*(*v66 + 16))(v66, 0);
        *(v63 + 16) = v67;
        if (*v63)
        {
          goto LABEL_118;
        }

        v65 = *(v63 + 8);
      }

      if (!v65)
      {
        MEMORY[0x19EB14CF0](v63, 0x1020C40545B2139);
      }
    }

LABEL_118:
    WebKit::PageLoadState::~PageLoadState((this + 1120), v60);
    v69 = *(this + 137);
    *(this + 137) = 0;
    if (!v69)
    {
      goto LABEL_125;
    }

    v70 = *v69;
    v71 = *(v69 + 8) - 1;
    *(v69 + 8) = v71;
    if (v70)
    {
      v72 = *v70;
      if (!*v70)
      {
        goto LABEL_125;
      }

      v73 = *(v69 + 16);
      *(v69 + 16) = 1;
      (*(*v72 + 16))(v72, 0);
      *(v69 + 16) = v73;
      if (*v69)
      {
        goto LABEL_125;
      }

      v71 = *(v69 + 8);
    }

    if (!v71)
    {
      MEMORY[0x19EB14CF0](v69, 0x1020C40545B2139);
    }

LABEL_125:
    v74 = *(this + 136);
    if ((v74 & 0x8000000000000) != 0)
    {
      v146 = (v74 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v74 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v146);
        WTF::fastFree(v146, v68);
      }
    }

    *(this + 132) = &unk_1F111F200;
    v75 = *(this + 134);
    *(this + 134) = 0;
    if (v75 && atomic_fetch_add(v75, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v75);
      WTF::fastFree(v75, v68);
    }

    *(this + 132) = &unk_1F10EA5E0;
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 133, v68);
    v28 = WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 1032, v76);
    v78 = *(this + 127);
    v79 = *(this + 256);
    v80 = *(this + 125);
    v81 = *(this + 126);
    v82 = v81 - v80;
    if (v81 >= v80)
    {
      v93 = v79 - v80;
      if (v79 < v80)
      {
        goto LABEL_218;
      }

      if (v82 == -1)
      {
        v82 = v79 - v80;
        if (!v93)
        {
          goto LABEL_146;
        }

LABEL_144:
        v94 = 176 * v82;
        v95 = (v78 + 176 * v80);
        v96 = v95;
        do
        {
          v97 = *v96;
          v96 += 22;
          (*v97)();
          v95 += 22;
          v94 -= 176;
        }

        while (v94);
        goto LABEL_146;
      }

      if (v93 < v82)
      {
        goto LABEL_218;
      }

      if (v82)
      {
        goto LABEL_144;
      }
    }

    else
    {
      if (v81 > v79)
      {
        goto LABEL_218;
      }

      if (v81)
      {
        v83 = 176 * v81;
        v84 = *(this + 127);
        v28 = v84;
        v85 = v84;
        do
        {
          v86 = *v85;
          v85 += 22;
          (*v86)(v28);
          v84 += 44;
          v28 = v85;
          v83 -= 176;
        }

        while (v83);
        v80 = *(this + 125);
      }

      if (v80 > v79)
      {
        goto LABEL_218;
      }

      if (v80 != v79)
      {
        v87 = 176 * v80;
        v88 = (v78 + v87);
        v89 = 176 * v79 - v87;
        v90 = v88;
        v91 = v88;
        do
        {
          v92 = *v91;
          v91 += 22;
          (*v92)(v90);
          v88 += 22;
          v90 = v91;
          v89 -= 176;
        }

        while (v89);
      }
    }

LABEL_146:
    v98 = *(this + 127);
    if (v98)
    {
      *(this + 127) = 0;
      *(this + 256) = 0;
      WTF::fastFree(v98, v77);
    }

    *(this + 115) = &unk_1F10E6DC8;
    v99 = *(this + 120);
    *(this + 120) = 0;
    if (v99)
    {
      (*(*v99 + 8))(v99);
    }

    WTF::RunLoop::TimerBase::~TimerBase((this + 920));
    v101 = *(this + 110);
    v102 = *(this + 222);
    v103 = *(this + 108);
    v104 = *(this + 109);
    v105 = v104 - v103;
    if (v104 < v103)
    {
      break;
    }

    v116 = v102 - v103;
    if (v102 >= v103)
    {
      if (v105 == -1)
      {
        v105 = v102 - v103;
        if (!v116)
        {
          goto LABEL_169;
        }

        goto LABEL_167;
      }

      if (v116 >= v105)
      {
        if (!v105)
        {
          goto LABEL_169;
        }

LABEL_167:
        v117 = 112 * v105;
        v118 = (v101 + 112 * v103);
        v119 = v118;
        do
        {
          v120 = *v119;
          v119 += 14;
          (*v120)();
          v118 += 14;
          v117 -= 112;
        }

        while (v117);
        goto LABEL_169;
      }
    }

LABEL_218:
    __break(1u);
LABEL_219:
    (*(*v28 + 8))(v28);
  }

  if (v104 > v102)
  {
    goto LABEL_218;
  }

  if (v104)
  {
    v106 = 112 * v104;
    v107 = *(this + 110);
    v28 = v107;
    v108 = v107;
    do
    {
      v109 = *v108;
      v108 += 14;
      (*v109)(v28);
      v107 += 28;
      v28 = v108;
      v106 -= 112;
    }

    while (v106);
    v103 = *(this + 108);
  }

  if (v103 > v102)
  {
    goto LABEL_218;
  }

  if (v103 != v102)
  {
    v110 = 112 * v103;
    v111 = (v101 + v110);
    v112 = 112 * v102 - v110;
    v113 = v111;
    v114 = v111;
    do
    {
      v115 = *v114;
      v114 += 14;
      (*v115)(v113);
      v111 += 14;
      v113 = v114;
      v112 -= 112;
    }

    while (v112);
  }

LABEL_169:
  v121 = *(this + 110);
  if (v121)
  {
    *(this + 110) = 0;
    *(this + 222) = 0;
    WTF::fastFree(v121, v100);
  }

  v122 = *(this + 107);
  *(this + 107) = 0;
  if (v122)
  {
    v123 = *v122;
    v124 = *(v122 + 8) - 1;
    *(v122 + 8) = v124;
    if (v123)
    {
      v125 = *v123;
      if (*v123)
      {
        v126 = *(v122 + 16);
        *(v122 + 16) = 1;
        (*(*v125 + 16))(v125, 0);
        *(v122 + 16) = v126;
        if (!*v122)
        {
          v124 = *(v122 + 8);
          goto LABEL_176;
        }
      }
    }

    else
    {
LABEL_176:
      if (!v124)
      {
        MEMORY[0x19EB14CF0](v122, 0x1020C40545B2139);
      }
    }
  }

  v127 = *(this + 106);
  *(this + 106) = 0;
  if (v127 && atomic_fetch_add(v127, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v127);
    WTF::fastFree(v127, v100);
  }

  v128 = *(this + 105);
  if (v128)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v128, v100);
  }

  v129 = *(this + 104);
  if (v129)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::GeolocationPermissionRequestProxy,WTF::RawPtrTraits<WebKit::GeolocationPermissionRequestProxy>,WTF::DefaultRefDerefTraits<WebKit::GeolocationPermissionRequestProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::GeolocationPermissionRequestProxy,WTF::RawPtrTraits<WebKit::GeolocationPermissionRequestProxy>,WTF::DefaultRefDerefTraits<WebKit::GeolocationPermissionRequestProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::GeolocationPermissionRequestProxy,WTF::RawPtrTraits<WebKit::GeolocationPermissionRequestProxy>,WTF::DefaultRefDerefTraits<WebKit::GeolocationPermissionRequestProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::GeolocationPermissionRequestProxy,WTF::RawPtrTraits<WebKit::GeolocationPermissionRequestProxy>,WTF::DefaultRefDerefTraits<WebKit::GeolocationPermissionRequestProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v129, v100);
  }

  v130 = *(this + 103);
  if (v130)
  {
    *(v130 + 8) = 0;
    v131 = *(this + 103);
    *(this + 103) = 0;
    if (v131)
    {
      if (atomic_fetch_add(v131, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v131);
        WTF::fastFree(v131, v100);
      }
    }
  }

  if (*(this + 800) == 1)
  {
    v132 = *(this + 87);
    if (v132)
    {
      *(this + 87) = 0;
      *(this + 176) = 0;
      WTF::fastFree(v132, v100);
    }

    v133 = *(this + 78);
    if (v133)
    {
      *(this + 78) = 0;
      *(this + 158) = 0;
      WTF::fastFree(v133, v100);
    }

    v134 = *(this + 76);
    if (v134)
    {
      *(this + 76) = 0;
      *(this + 154) = 0;
      WTF::fastFree(v134, v100);
    }
  }

  if (*(this + 528) == 1)
  {
    WebKit::EditorState::PostLayoutData::~PostLayoutData((this + 304), v100);
  }

  WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 248, v100);
  if (*(this + 240) == 1)
  {
    WebCore::FontAttributes::~FontAttributes((this + 160), v135);
  }

  if (*(this + 144) == 1)
  {
    v136 = *(this + 17);
    if ((v136 & 0x8000000000000) != 0)
    {
      v147 = (v136 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v136 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v147);
        WTF::fastFree(v147, v135);
      }
    }
  }

  *(this + 11) = &unk_1F10E6DC8;
  v137 = *(this + 16);
  *(this + 16) = 0;
  if (v137)
  {
    (*(*v137 + 8))(v137);
  }

  WTF::RunLoop::TimerBase::~TimerBase((this + 88));
  v139 = *(this + 9);
  *(this + 9) = 0;
  if (v139 && atomic_fetch_add(v139, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v139);
    WTF::fastFree(v139, v138);
  }

  v140 = *(this + 7);
  if (v140)
  {
    *(v140 + 8) = 0;
    v141 = *(this + 7);
    *(this + 7) = 0;
    if (v141)
    {
      if (atomic_fetch_add(v141, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v141);
        WTF::fastFree(v141, v138);
      }
    }
  }

  WTF::WeakPtrFactory<WebKit::SessionSet,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 3, v138);
}

void WebKit::WebPageProxyFrameLoadStateObserver::~WebPageProxyFrameLoadStateObserver(WebKit::WebPageProxyFrameLoadStateObserver *this, void *a2)
{
  WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>::deleteAllNodes(this + 40, a2);
  v4 = *(this + 5);
  if (v4)
  {
    WTF::fastFree((v4 - 16), v3);
  }

  WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 24, v3);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v5);
  if (*(this + 4) != 1)
  {
    __break(0xC471u);
  }
}

uint64_t WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>::deleteAllNodes(uint64_t result, void *a2)
{
  for (i = *(result + 8); i; result = WTF::fastFree(v3, a2))
  {
    v3 = i;
    i = *(i + 2);
    v4 = *v3;
    *v3 = 0;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }
  }

  return result;
}

void WebKit::WebPageProxyMessageReceiverRegistration::~WebPageProxyMessageReceiverRegistration(WebKit::WebPageProxyMessageReceiverRegistration *this)
{
  WebKit::WebPageProxyMessageReceiverRegistration::stopReceivingMessages(this);
  if (*(this + 16) == 1)
  {
    v2 = *(this + 1);
    *(this + 1) = 0;
    if (v2)
    {
      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v2 + 16));
    }
  }
}

void WebKit::AboutSchemeHandler::~AboutSchemeHandler(WebKit::AboutSchemeHandler *this, WTF::StringImpl *a2)
{
  v3 = *(this + 6);
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::AboutSchemeHandler::OpaquePathHandler>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::AboutSchemeHandler::OpaquePathHandler>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::unique_ptr<WebKit::AboutSchemeHandler::OpaquePathHandler>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::AboutSchemeHandler::OpaquePathHandler>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  WebKit::WebURLSchemeHandler::~WebURLSchemeHandler(this, a2);

  WTF::fastFree(v4, v5);
}

void WebKit::WebURLSchemeHandler::~WebURLSchemeHandler(WebKit::WebURLSchemeHandler *this, void *a2)
{
  *this = &unk_1F111A178;
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashCountedSet<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashCountedSet<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashCountedSet<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashCountedSet<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable( v4,  a2);
  }

  v5 = *(this + 3);
  if (v5)
  {
    WTF::HashTable<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebURLSchemeTask,WTF::RawPtrTraits<WebKit::WebURLSchemeTask>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeTask>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebURLSchemeTask,WTF::RawPtrTraits<WebKit::WebURLSchemeTask>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeTask>>>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebURLSchemeTask,WTF::RawPtrTraits<WebKit::WebURLSchemeTask>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeTask>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::WebURLSchemeTask,WTF::RawPtrTraits<WebKit::WebURLSchemeTask>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable( v5,  a2);
  }

  if (*(this + 2) != 1)
  {
    __break(0xC471u);
  }
}

void WebKit::PageLoadState::~PageLoadState(WebKit::PageLoadState *this, WTF::StringImpl *a2)
{
  v3 = *(this + 49);
  *(this + 49) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  WebKit::PageLoadState::Data::~Data((this + 208), a2);
  WebKit::PageLoadState::Data::~Data((this + 24), v4);
  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    WTF::fastFree(v6, v5);
  }

  if (*this)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(*this, v5);
  }
}

void WebKit::PageLoadState::Data::~Data(WebKit::PageLoadState::Data *this, WTF::StringImpl *a2)
{
  v3 = *(this + 21);
  *(this + 21) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 20);
  *(this + 20) = 0;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 12);
  *(this + 12) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 11);
  *(this + 11) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(this + 10);
  *(this + 10) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(this + 9);
  *(this + 9) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  if (!*(this + 64))
  {
    v9 = *(this + 6);
    *(this + 6) = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, a2);
    }

    v10 = *(this + 5);
    *(this + 5) = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, a2);
    }
  }

  *(this + 64) = -1;
  v11 = *(this + 4);
  *(this + 4) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, a2);
  }

  v12 = *(this + 3);
  *(this + 3) = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  v13 = *(this + 2);
  *(this + 2) = 0;
  if (v13)
  {
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, a2);
    }
  }
}

void WebCore::PublicKeyCredentialEntity::~PublicKeyCredentialEntity(WebCore::PublicKeyCredentialEntity *this)
{
  v2[1] = this + 8;
  v2[0] = 0;
  v2[3] = this + 8;
  v2[2] = v2;
  v3 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(this + 1);
  if (v3)
  {
    WTF::StringImpl::deref(v3);
  }

  v4 = this;
  v5 = this;
  v6[1] = this;
  v6[0] = 0;
  v6[3] = this;
  v6[2] = v6;
  v7 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(this);
  if (v7)
  {
    WTF::StringImpl::deref(v7);
  }
}

uint64_t IPC::Connection::send<Messages::AuxiliaryProcess::SetProcessSuppressionEnabled>(uint64_t *a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 5;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = a3;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v17 = v10;
  IPC::Encoder::operator<<<BOOL &>(v10, a2);
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

uint64_t WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 160 * v3;
    v6 = *a1;
    v7 = *a1;
    do
    {
      v8 = *v7;
      v7 = (v7 + 160);
      (*v8)(v6);
      v4 = (v4 + 160);
      v6 = v7;
      v5 -= 160;
    }

    while (v5);
  }

  v9 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v9, a2);
  }

  return a1;
}

void API::WebsitePolicies::~WebsitePolicies(API::WebsitePolicies *this, WTF::StringImpl *a2)
{
  v3 = *(this + 21);
  *(this + 21) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 19);
  *(this + 19) = 0;
  if (v4)
  {
    CFRelease(*(v4 + 8));
  }

  v5 = *(this + 18);
  *(this + 18) = 0;
  if (v5)
  {
    CFRelease(*(v5 + 8));
  }

  WebKit::WebsitePoliciesData::~WebsitePoliciesData((this + 24), a2);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 2, v6);
}

void WebKit::WebPagePreferencesLockdownModeObserver::~WebPagePreferencesLockdownModeObserver(unsigned int **this)
{
  v2 = WebKit::lockdownModeObservers(this);
  WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::remove<WebKit::RemoteAudioSessionProxy>(v2, this);
  v4 = this[2];
  this[2] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, v3);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v3);
}

{
  WebKit::WebPagePreferencesLockdownModeObserver::~WebPagePreferencesLockdownModeObserver(this);

  bmalloc::api::tzoneFree(v1, v2);
}

void sub_19D5FFE80(_Unwind_Exception *a1, void *a2)
{
  v4 = *(v2 + 16);
  *(v2 + 16) = 0;
  if (v4)
  {
    if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4);
      WTF::fastFree(v4, a2);
    }
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory((v2 + 8), a2);
  _Unwind_Resume(a1);
}

void WebKit::WebsitePoliciesData::~WebsitePoliciesData(WebKit::WebsitePoliciesData *this, WTF::StringImpl *a2)
{
  v3 = *(this + 11);
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 7);
  *(this + 7) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 6);
  *(this + 6) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(this + 5);
  *(this + 5) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  WTF::Vector<WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 24, a2);
  WTF::Vector<WebCore::CustomHeaderFields,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 8, v8);
  if (*this)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*this, v9);
  }
}

uint64_t WTF::Vector<WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v6 = *a1;
    v7 = 16 * v3;
    do
    {
      v6 = WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v6, a2) + 16;
      v7 -= 16;
    }

    while (v7);
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t WTF::Vector<WebCore::CustomHeaderFields,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WebCore::CustomHeaderFields>::destruct(*a1, (*a1 + 32 * v3));
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

void WebKit::BrowsingContextGroup::~BrowsingContextGroup(WebKit::BrowsingContextGroup *this, void *a2)
{
  v3 = *(this + 7);
  if (v3)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable( v3,  a2);
  }

  WTF::ListHashSet<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>::~ListHashSet(this + 3, a2);
  v5 = *(this + 2);
  if (v5)
  {
    WTF::HashTable<WebCore::Site,WTF::KeyValuePair<WebCore::Site,WTF::WeakPtr<WebKit::FrameProcess,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::Site,WTF::WeakPtr<WebKit::FrameProcess,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WebCore::Site>,WTF::HashMap<WebCore::Site,WTF::WeakPtr<WebKit::FrameProcess,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WebCore::Site>,WTF::HashTraits<WebCore::Site>,WTF::HashTraits<WTF::WeakPtr<WebKit::FrameProcess,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::Site>,WTF::FastMalloc>::deallocateTable(v5, v4);
  }

  if (*(this + 2) == 1)
  {

    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this, v4);
  }

  else
  {
    __break(0xC471u);
  }
}

uint64_t WTF::ListHashSet<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>::deleteAllNodes(uint64_t result, void *a2)
{
  for (i = *(result + 8); i; result = WTF::fastFree(v3, a2))
  {
    v3 = i;
    i = *(i + 2);
    v4 = *v3;
    *v3 = 0;
    if (v4)
    {
      if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v4);
        WTF::fastFree(v4, a2);
      }
    }
  }

  return result;
}

BOOL WebKit::NetworkProcess::dispatchMessage(WebKit::NetworkProcess *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v3 = *(a3 + 25);
  if (v3 >= 0x107F)
  {
    v3 = 4223;
  }

  v4 = LOBYTE((&IPC::Detail::messageDescriptions)[3 * v3 + 2]);
  if (v4 == 35)
  {
    WebKit::NetworkContentRuleListManager::ref(this + 272);
    WebKit::NetworkContentRuleListManager::didReceiveMessage((this + 272), a2, a3);
    WebKit::NetworkContentRuleListManager::deref((this + 272));
  }

  return v4 == 35;
}

uint64_t WebKit::AuxiliaryProcess::didReceiveMessage(WebKit::AuxiliaryProcess *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  (**this)(this);
  v6 = *(a3 + 25);
  if (v6 <= 4)
  {
    if (v6 == 3)
    {
      IPC::handleMessageAsync<Messages::AuxiliaryProcess::MainThreadPing,IPC::Connection,WebKit::AuxiliaryProcess,WebKit::AuxiliaryProcess,void ()(WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      return (*(*this + 8))(this);
    }

    if (v6 == 4)
    {
      IPC::handleMessage<Messages::AuxiliaryProcess::PreferenceDidUpdate,IPC::Connection,WebKit::AuxiliaryProcess,WebKit::AuxiliaryProcess,void ()(WTF::String const&,WTF::String const&,std::optional<WTF::String> const&)>(a3, this);
      return (*(*this + 8))(this);
    }

LABEL_7:
    if ((WebKit::AuxiliaryProcess::dispatchMessage(this, a2, a3) & 1) == 0)
    {
      v9 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a3 + 25);
        if (v10 >= 0x107F)
        {
          v10 = 4223;
        }

        v11 = (&IPC::Detail::messageDescriptions)[3 * v10];
        v12 = *(a3 + 7);
        v13 = 136315394;
        v14 = v11;
        v15 = 2048;
        v16 = v12;
        _os_log_error_impl(&dword_19D52D000, v9, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", &v13, 0x16u);
      }

      IPC::Decoder::markInvalid(a3);
    }

    return (*(*this + 8))(this);
  }

  if (v6 != 5)
  {
    if (v6 == 6)
    {
      WebKit::AuxiliaryProcess::shutDown(this);
      return (*(*this + 8))(this);
    }

    goto LABEL_7;
  }

  v8 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
  if ((v8 & 0x100) != 0)
  {
    WebKit::AuxiliaryProcess::setProcessSuppressionEnabled(this, v8 & 1);
  }

  return (*(*this + 8))(this);
}

uint64_t IPC::Decoder::decode<WebCore::LockBackForwardList>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<WebCore::LockBackForwardList,void>::decode<IPC::Decoder>(a1);
  if ((v2 & 0x100) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v2;
}

uint64_t WebKit::AuxiliaryProcess::setProcessSuppressionEnabled(WebKit::AuxiliaryProcess *this, int a2)
{
  v2 = this + 64;
  if (a2)
  {
    return PAL::HysteresisActivity::stop(v2);
  }

  else
  {
    return PAL::HysteresisActivity::start(v2);
  }
}

unsigned int *WebKit::NetworkProcess::deref(unsigned int *this)
{
  if (atomic_fetch_add(this + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, this + 36);
    return (*(*this + 24))();
  }

  return this;
}

uint64_t PAL::HysteresisActivity::start(uint64_t this)
{
  if ((*(this + 64) & 1) == 0)
  {
    v1 = this;
    *(this + 64) = 1;
    if (WTF::RunLoop::TimerBase::isActive((this + 16)))
    {

      return WTF::RunLoop::TimerBase::stop((v1 + 16));
    }

    else
    {
      v2 = *(**v1 + 16);

      return v2();
    }
  }

  return this;
}

void sub_19D600F14(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

BOOL WebKit::RemoteScrollingCoordinatorProxyIOS::hasActiveSnapPoint(WebKit::RemoteScrollingCoordinatorProxyIOS *this)
{
  v1 = *(this + 4);
  v2 = *(v1 + 24);
  if (!v2)
  {
    return 0;
  }

  v4 = WebCore::ScrollingTreeScrollingNode::snapOffsetsInfo(*(v1 + 24));
  v5 = WebCore::ScrollingTreeScrollingNode::snapOffsetsInfo(v2);
  v6 = *(v4 + 20);
  if (v6)
  {
    if (*(this + 124) == 1 && v6 <= *(this + 30))
    {
      return 0;
    }
  }

  else if (!*(v5 + 36))
  {
    return 0;
  }

  v7 = *(v5 + 36);
  return !v7 || *(this + 132) != 1 || v7 > *(this + 32);
}

float WebKit::WebPageProxy::computeLayoutViewportRect(void *a1, __int128 *a2, FloatRect *a3, const FloatRect *a4, int a5, double a6)
{
  v6 = a1[7];
  v7 = 0.0;
  if (v6)
  {
    v8 = *(v6 + 8);
    if (v8)
    {
      (*(*v8 + 1712))(v8);
      v47 = *a2;
      v46.m_location.m_x = (*(*v8 + 1128))(v8);
      v46.m_location.m_y = v15;
      v46.m_size.m_width = v16;
      v46.m_size.m_height = v17;
      if (a5)
      {
        WebCore::FloatRect::intersect(&v47, &v46);
      }

      v19 = (*(*v8 + 1120))(v8);
      if (v19 <= a6 || (v20 = a6, v21 = v19, WebKit::scalesAreEssentiallyEqual(v18, v20, v21)))
      {
        v38 = *(a2 + 8);
      }

      else
      {
        v22 = (v19 - a6) * -12.0 + 1.0;
        if (v22 < 0.0)
        {
          v22 = 0.0;
        }

        *&v22 = v22;
        v23 = vadd_f32(v46.m_location, v46.m_size);
        *&v24 = vbsl_s8(vcgt_f32(v46.m_location, *&v47), vmls_lane_f32(v46.m_location, vsub_f32(v46.m_location, *&v47), *&v22, 0), *&v47);
        v25 = vadd_f32(*&v24, *(&v47 + 8));
        v38 = vsub_f32(vbsl_s8(vcgt_f32(v25, v23), vmla_n_f32(v23, vsub_f32(v25, v23), *&v22), v25), *&v24);
        *(&v24 + 1) = v38;
        v47 = v24;
        a3 = &v47;
      }

      v45 = *a3;
      if (*(a1[4] + 2928) == 1)
      {
        v26 = a1[46];
        {
          atomic_fetch_add_explicit(WebKit::WebPreferencesKey::layoutViewportHeightExpansionFactorKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
          WebKit::WebPreferencesKey::layoutViewportHeightExpansionFactorKey(void)::key = WebKit::WebPreferencesKey::layoutViewportHeightExpansionFactorKey(void)::$_0::operator() const(void)::impl;
        }

        WebKit::valueForKey<double>(v26 + 40, v26 + 64, &WebKit::WebPreferencesKey::layoutViewportHeightExpansionFactorKey(void)::key);
      }

      v27 = v46.m_size.m_width * 64.0;
      if (v27 > -2147483650.0)
      {
        v28 = v27;
      }

      else
      {
        v28 = 0x80000000;
      }

      if (v27 < 2147483650.0)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0x7FFFFFFF;
      }

      v30 = v46.m_size.m_height * 64.0;
      if (v30 > -2147483650.0)
      {
        v31 = v30;
      }

      else
      {
        v31 = 0x80000000;
      }

      if (v30 >= 2147483650.0)
      {
        v31 = 0x7FFFFFFF;
      }

      v43[0] = v29;
      v43[1] = v31;
      v44 = WebCore::LocalFrameView::expandedLayoutViewportSize();
      WebCore::LayoutRect::LayoutRect(v43, a4);
      WebCore::LayoutRect::LayoutRect(v42, &v46);
      v32 = v38.f32[0] * 64.0;
      if (v32 > -2147483650.0)
      {
        v33 = v32;
      }

      else
      {
        v33 = 0x80000000;
      }

      if (v32 < 2147483650.0)
      {
        v34 = v33;
      }

      else
      {
        v34 = 0x7FFFFFFF;
      }

      v40 = v34;
      v35 = v38.f32[1] * 64.0;
      if (v35 >= 2147483650.0)
      {
        v36 = 0x7FFFFFFF;
      }

      else if (v35 <= -2147483650.0)
      {
        v36 = 0x80000000;
      }

      else
      {
        v36 = v35;
      }

      v41 = v36;
      WebCore::LayoutRect::LayoutRect(v39, &v45);
      v7 = vcvts_n_f32_s32(WebCore::LocalFrameView::computeUpdatedLayoutViewportRect(), 6uLL);
      (*(*v8 + 1720))(v8);
    }
  }

  return v7;
}

float WebKit::PageClientImpl::documentRect(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  [WeakRetained bounds];
  v7.origin.x = v2;
  v7.origin.y = v3;
  v7.size.width = v4;
  v7.size.height = v5;
  WebCore::FloatRect::FloatRect(&v8, &v7);
  if (WeakRetained)
  {
  }

  return v8;
}

void sub_19D60173C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

double WebKit::PageClientImpl::minimumZoomScale(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  v2 = [WeakRetained scrollView];
  if (WeakRetained)
  {
  }

  if (!v2)
  {
    return 1.0;
  }

  [v2 minimumZoomScale];
  return result;
}

void sub_19D6017B0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebPageProxy::updateVisibleContentRects(uint64_t result, uint64_t a2, int a3)
{
  v4 = result;
  v5 = *(result + 32);
  v6 = v5 + 2600;
  if (*(v5 + 2784) != 1)
  {
    goto LABEL_8;
  }

  result = WebKit::operator==(a2, v6);
  if (result)
  {
    v8 = a3 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    v5 = *(v4 + 32);
    v6 = v5 + 2600;
    if (*(v5 + 2784))
    {
      v9 = *a2;
      v10 = *(a2 + 16);
      v11 = *(a2 + 48);
      *(v5 + 2632) = *(a2 + 32);
      *(v5 + 2648) = v11;
      *v6 = v9;
      *(v5 + 2616) = v10;
      v12 = *(a2 + 64);
      v13 = *(a2 + 80);
      v14 = *(a2 + 112);
      *(v5 + 2696) = *(a2 + 96);
      *(v5 + 2712) = v14;
      *(v5 + 2664) = v12;
      *(v5 + 2680) = v13;
      v15 = *(a2 + 128);
      v16 = *(a2 + 144);
      v17 = *(a2 + 160);
      *(v5 + 2776) = *(a2 + 176);
      *(v5 + 2744) = v16;
      *(v5 + 2760) = v17;
      *(v5 + 2728) = v15;
      goto LABEL_9;
    }

LABEL_8:
    v18 = *a2;
    v19 = *(a2 + 16);
    v20 = *(a2 + 48);
    *(v6 + 32) = *(a2 + 32);
    *(v6 + 48) = v20;
    *v6 = v18;
    *(v6 + 16) = v19;
    v21 = *(a2 + 64);
    v22 = *(a2 + 80);
    v23 = *(a2 + 112);
    *(v6 + 96) = *(a2 + 96);
    *(v6 + 112) = v23;
    *(v6 + 64) = v21;
    *(v6 + 80) = v22;
    v24 = *(a2 + 128);
    v25 = *(a2 + 144);
    v26 = *(a2 + 160);
    *(v6 + 176) = *(a2 + 176);
    *(v6 + 144) = v25;
    *(v6 + 160) = v26;
    *(v6 + 128) = v24;
    *(v5 + 2784) = 1;
LABEL_9:
    if ((*(v4 + 865) & 1) == 0 && *(v4 + 864) == 1)
    {
      v27 = *(v4 + 352);
      v28 = *(v4 + 48);
      v29[0] = &v28;
      v29[1] = a2;
      return WebKit::AuxiliaryProcessProxy::send<Messages::ViewUpdateDispatcher::VisibleContentRectUpdate>(v27, v29, 0, 0);
    }
  }

  return result;
}

float WebKit::WebPageProxy::unconstrainedLayoutViewportRect(WebKit::WebPageProxy *this)
{
  v3 = *(this + 4);
  v4 = *(v3 + 2784);
  if (v4 == 1)
  {
    v5 = *(v3 + 2616);
    v6 = *(v3 + 2648);
  }

  else
  {
    v5 = 0uLL;
    v6 = 0;
  }

  v13 = v1;
  v14 = v2;
  v12 = v5;
  v11 = v6;
  if (v4)
  {
    v7 = *(v3 + 2680);
    v8 = *(v3 + 2768);
  }

  else
  {
    v7 = 0;
    v8 = 1.0;
  }

  v10 = v7;
  return WebKit::WebPageProxy::computeLayoutViewportRect(this, &v12, &v11, &v10, 0, v8);
}

BOOL WebKit::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 168) != *(a2 + 168))
  {
    return 0;
  }

  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  if (*(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20))
  {
    return 0;
  }

  v4 = 0;
  if (*(a1 + 24) == *(a2 + 24) && *(a1 + 28) == *(a2 + 28))
  {
    v7 = 0;
    do
    {
      v8 = *(a1 + 32 + v7);
      v9 = *(a2 + 32 + v7);
      v10 = v8 != v9 || v7 == 12;
      v7 += 4;
    }

    while (!v10);
    if (v8 != v9)
    {
      return 0;
    }

    if (*(a1 + 48) != *(a2 + 48) || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }

    if (*(a1 + 56) != *(a2 + 56) || *(a1 + 60) != *(a2 + 60))
    {
      return 0;
    }

    if (*(a1 + 80) != *(a2 + 80) || *(a1 + 84) != *(a2 + 84))
    {
      return 0;
    }

    v4 = 0;
    if (*(a1 + 88) == *(a2 + 88) && *(a1 + 92) == *(a2 + 92))
    {
      v14 = 0;
      do
      {
        v15 = *(a1 + 96 + v14);
        v16 = *(a2 + 96 + v14);
        v17 = v15 != v16 || v14 == 12;
        v14 += 4;
      }

      while (!v17);
      if (v15 == v16)
      {
        v18 = 0;
        do
        {
          v19 = *(a1 + 112 + v18);
          v20 = *(a2 + 112 + v18);
          v21 = v19 != v20 || v18 == 12;
          v18 += 4;
        }

        while (!v21);
        if (v19 == v20 && *(a1 + 128) == *(a2 + 128) && *(a1 + 132) == *(a2 + 132) && *(a1 + 136) == *(a2 + 136) && *(a1 + 176) == *(a2 + 176) && *(a1 + 177) == *(a2 + 177) && *(a1 + 178) == *(a2 + 178))
        {
          return *(a1 + 179) == *(a2 + 179);
        }
      }

      return 0;
    }
  }

  return v4;
}

uint64_t WebKit::RemoteLayerTreeDrawingAreaProxy::updateDebugIndicator(uint64_t this)
{
  v1 = *(this + 208);
  if (v1)
  {
    WebKit::RemoteLayerTreeDrawingAreaProxy::indicatorLocation(*(this + 40));
    WebCore::FloatPoint::operator CGPoint();
    return [v1 setPosition:?];
  }

  return this;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC10Connection31makeAsyncReplyCompletionHandlerIN8Messages7WebPage16SetActivityStateEZZN6WebKit12WebPageProxy27dispatchActivityStateChangeEvENK3__1clINS8_15WebProcessProxyENS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEDaRT_T0_EUlvE_EENS_17CompletionHandlerIFvPS3_PNS2_7DecoderEEEEOSM_NS_19ThreadLikeAssertionEEUlSP_SR_E_vJSP_SR_EED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1117AF8;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebPageProxy::dispatchActivityStateChange(void)::$_0,void>::call(uint64_t result)
{
  v1 = *(result + 20);
  if (v1)
  {
    v2 = *(result + 8);
    v3 = 8 * v1;
    do
    {
      v4 = *v2;
      *v2++ = 0;
      (*(*v4 + 16))(v4);
      result = (*(*v4 + 8))(v4);
      v3 -= 8;
    }

    while (v3);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebPageProxy::dispatchActivityStateChange(void)::$_0,void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F1117AA8;
  WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 8, a2);

  return WTF::fastFree(a1, v3);
}

uint64_t WebKit::WebProcess::sendResourceLoadStatisticsDataImmediately(WebCore::ResourceLoadObserver *a1)
{
  v1 = *(*WebCore::ResourceLoadObserver::shared(a1) + 96);

  return v1();
}

atomic_ullong *WebKit::WebResourceLoadObserver::updateCentralStatisticsStore(void *a1, uint64_t *a2)
{
  if ((a1[8] & 0xFFFFFFFFFFFFLL) != 0)
  {
    WebCore::TimerBase::stopSlowCase((a1 + 4));
  }

  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v38 = WebKit::WebProcess::operator new(0x370, a2);
    v4 = WebKit::WebProcess::WebProcess(v38);
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  v6 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v4) + 24);
  while (1)
  {
    v7 = *v6;
    if ((*v6 & 1) == 0)
    {
      break;
    }

    v37 = *v6;
    atomic_compare_exchange_strong_explicit(v6, &v37, v7 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v37 == v7)
    {
      goto LABEL_8;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_8:
  v8 = a1[2];
  a1[2] = 0;
  v39 = 0;
  v40 = 0;
  if (!v8)
  {
    v9 = 0;
    goto LABEL_10;
  }

  v25 = *(v8 - 12);
  if (!v25)
  {
    v28 = 0;
LABEL_34:
    v32 = *(v8 - 4);
    v31 = v8 + 16 * v32;
    v30 = vdupq_n_s64(v31);
    goto LABEL_24;
  }

  if (v25 >= 0x147AE15)
  {
    __break(0xC471u);
    JUMPOUT(0x19D602048);
  }

  v26 = 200 * v25;
  v28 = WTF::fastMalloc((200 * v25));
  LODWORD(v40) = v26 / 0xC8;
  v39 = v28;
  if (!*(v8 - 12))
  {
    goto LABEL_34;
  }

  v29 = v8 + 16 * *(v8 - 4);
  v41.i64[0] = v8;
  v41.i64[1] = v29;
  WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(&v41, v5, v27);
  v30 = v41;
  v31 = v41.i64[0];
  v32 = *(v8 - 4);
LABEL_24:
  v42 = v30;
  v33 = v8 + 16 * v32;
  if (v33 == v31)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    do
    {
      WebCore::ResourceLoadStatistics::ResourceLoadStatistics(&v41, *(v31 + 8));
      WebCore::ResourceLoadStatistics::ResourceLoadStatistics(v28 + 200 * v9++, v41.i64);
      WebCore::ResourceLoadStatistics::~ResourceLoadStatistics(&v41, v34);
      v42.i64[0] += 16;
      WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(&v42, v35, v36);
      v31 = v42.i64[0];
    }

    while (v42.i64[0] != v33);
    HIDWORD(v40) = v9;
  }

  WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,std::unique_ptr<WebCore::ResourceLoadStatistics>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,std::unique_ptr<WebCore::ResourceLoadStatistics>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,std::unique_ptr<WebCore::ResourceLoadStatistics>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<std::unique_ptr<WebCore::ResourceLoadStatistics>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v8, v5);
LABEL_10:
  v10 = *a2;
  *a2 = 0;
  v11 = WTF::fastMalloc(0x10);
  *v11 = &unk_1F1132978;
  v11[1] = v10;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19D60202CLL);
  }

  v12 = v11;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v15 = IPC::Encoder::operator new(0x238, v14);
  *v15 = 482;
  *(v15 + 68) = 0;
  *(v15 + 70) = 0;
  *(v15 + 69) = 0;
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 1) = 0;
  IPC::Encoder::encodeHeader(v15);
  v42.i64[0] = v15;
  v16 = v9;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v15, v9);
  if (v9)
  {
    v23 = v39;
    v24 = 200 * v16;
    do
    {
      IPC::ArgumentCoder<WebCore::ResourceLoadStatistics,void>::encode(v15, v23);
      v23 += 200;
      v24 -= 200;
    }

    while (v24);
  }

  v41.i64[0] = v12;
  v41.i64[1] = IdentifierInternal;
  IPC::Connection::sendMessageWithAsyncReply(v6, &v42, v41.i64, 0, 0);
  v18 = v41.i64[0];
  v41.i64[0] = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = v42.i64[0];
  v42.i64[0] = 0;
  if (v19)
  {
    IPC::Encoder::~Encoder(v19, v17);
    bmalloc::api::tzoneFree(v21, v22);
  }

  WTF::Vector<WebCore::ResourceLoadStatistics,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v39, v17);
  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v6);
}

uint64_t WebKit::WebProcess::ensureNetworkProcessConnection(atomic_ullong **this)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = WTF::RunLoop::mainSingleton(this);
  if (WTF::RunLoop::isCurrent(v2))
  {
    result = this[42];
    if (!result)
    {
      v4 = this[5];
      while (1)
      {
        v5 = *v4;
        if ((*v4 & 1) == 0)
        {
          break;
        }

        v24 = *v4;
        atomic_compare_exchange_strong_explicit(v4, &v24, v5 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v24 == v5)
        {
          goto LABEL_6;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_6:
      WebKit::getNetworkProcessConnection(v26, v4);
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v4);
      *object = WTF::MachSendRight::leakSendRight(v26);
      *&object[8] = 0;
      v6 = v26[4];
      v7 = WTF::fastMalloc(0x68);
      WebKit::NetworkProcessConnection::NetworkProcessConnection(v7, object, v6);
      v8 = this[42];
      this[42] = v7;
      if (v8)
      {
        if (*(v8 + 5) == 1)
        {
          (*(*v8 + 24))(v8);
        }

        else
        {
          --*(v8 + 5);
        }
      }

      v9 = *&object[8];
      if (*&object[8])
      {
        os_release(*&object[8]);
      }

      v10 = this[42];
      if (v28 == 1)
      {
        v11 = v26[8];
        *object = *v27;
        *&object[15] = *&v27[15];
        v12 = 1;
      }

      else
      {
        v11 = 0;
        v12 = 0;
      }

      *(v10 + 32) = v11;
      *(v10 + 33) = *object;
      *(v10 + 3) = *&object[15];
      *(v10 + 64) = v12;
      v13 = this[42][3];
      WebCore::LegacySchemeRegistry::allURLSchemesRegisteredAsCORSEnabled(object, v9);
      v25 = object;
      IPC::Connection::send<Messages::NetworkConnectionToWebProcess::RegisterURLSchemesAsCORSEnabled>(v13, &v25);
      v15 = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(object, v14);
      v16 = WebCore::Document::allDocuments(object, v15);
      if (**object && *(**object - 12) || (hasInstances = WebCore::SharedWorkerThreadProxy::hasInstances(v16), (hasInstances & 1) != 0))
      {
        v22 = this[42];
        if (v22)
        {
          ++*(v22 + 5);
        }

        v23 = v22;
        WebKit::NetworkProcessConnection::protectedServiceWorkerConnection(v22, object);
        WebCore::SWClientConnection::registerServiceWorkerClients(*object);
        hasInstances = *object;
        *object = 0;
        if (hasInstances)
        {
          if (*(hasInstances + 8) == 1)
          {
            hasInstances = (*(*hasInstances + 8))(hasInstances);
          }

          else
          {
            --*(hasInstances + 8);
          }
        }

        if (v23)
        {
          hasInstances = v23;
          if (*(v23 + 5) == 1)
          {
            hasInstances = (*(*v23 + 24))(v23);
          }

          else
          {
            --*(v23 + 5);
          }
        }
      }

      v18 = WebKit::LaunchServicesDatabaseManager::singleton(hasInstances);
      WebKit::LaunchServicesDatabaseManager::waitForDatabaseUpdate(v18);
      WTF::RunLoop::mainSingleton(v19);
      v20 = WTF::fastMalloc(0x18);
      *v20 = &unk_1F1122640;
      v20[1] = this;
      v20[2] = this;
      *object = v20;
      WTF::RunLoop::dispatch();
      v21 = *object;
      *object = 0;
      if (v21)
      {
        (*(*v21 + 8))(v21);
      }

      WTF::MachSendRight::~MachSendRight(v26);
      return this[42];
    }
  }

  else
  {
    result = 1288;
    __break(0xC471u);
  }

  return result;
}

uint64_t WTF::Vector<WebCore::ResourceLoadStatistics,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v6 = *a1;
    v7 = 200 * v3;
    do
    {
      WebCore::ResourceLoadStatistics::~ResourceLoadStatistics(v6, a2);
      v6 = (v8 + 200);
      v7 -= 200;
    }

    while (v7);
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

void WebKit::NetworkConnectionToWebProcess::didReceiveMessage(WebKit::NetworkConnectionToWebProcess *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v3 = MEMORY[0x1EEE9AC00](this);
  v6 = v5;
  v7 = v4;
  v8 = v3;
  v74 = *MEMORY[0x1E69E9840];
  v9 = *(v3 + 346);
  ++*(v3 + 20);
  switch(*(v5 + 25))
  {
    case 0x1AD:
      IPC::handleMessage<Messages::NetworkConnectionToWebProcess::AddOriginAccessAllowListEntry,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::String const&,WTF::String const&,WTF::String const&,BOOL)>(v5, v3);
      goto LABEL_13;
    case 0x1AE:
      v22 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v5);
      if ((v23 & 1) == 0)
      {
        goto LABEL_131;
      }

      v24 = v22;
      v25 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v6);
      if ((v26 & 1) == 0)
      {
        goto LABEL_131;
      }

      v27 = v25;
      v28 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v6);
      if ((v29 & 1) == 0)
      {
        goto LABEL_131;
      }

      WebKit::NetworkConnectionToWebProcess::browsingContextRemoved(v8, v24, v27, v28);
      goto LABEL_13;
    case 0x1AF:
      v47 = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(v5);
      if (v48)
      {
        WebKit::NetworkConnectionToWebProcess::clearFrameLoadRecordsForStorageAccess(v8, v47);
      }

      goto LABEL_13;
    case 0x1B0:
      v49 = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(v5);
      if (v50)
      {
        WebKit::NetworkConnectionToWebProcess::clearPageSpecificData(v8, v49);
      }

      goto LABEL_13;
    case 0x1B1:
      WebKit::NetworkConnectionToWebProcess::closeSWContextConnection(v3);
      goto LABEL_13;
    case 0x1B2:
      WebKit::NetworkConnectionToWebProcess::closeSharedWorkerContextConnection(v3);
      goto LABEL_13;
    case 0x1B3:
      IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::ConnectToRTCDataChannelRemoteSource,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(std::optional<BOOL>)> &&)>(v4, v5, v3);
      goto LABEL_13;
    case 0x1B4:
      IPC::handleMessage<Messages::NetworkConnectionToWebProcess::ConvertMainResourceLoadToDownload,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceRequest const&,std::optional<WebCore::SecurityOriginData> const&,WebCore::ResourceResponse const&,std::optional<WebKit::NavigatingToAppBoundDomain>)>(v5, v3);
      goto LABEL_13;
    case 0x1B5:
      IPC::ArgumentCoder<std::tuple<WTF::URL,WTF::URL,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(buf, v5);
      if ((v69 & 1) == 0)
      {
        IPC::Decoder::markInvalid(v6);
        if ((v69 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      v30 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v6);
      if ((v31 & 1) == 0)
      {
        goto LABEL_32;
      }

      v6 = v30;
      while (1)
      {
        v32 = *v7;
        if ((*v7 & 1) == 0)
        {
          break;
        }

        v55 = *v7;
        atomic_compare_exchange_strong_explicit(v7, &v55, v32 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v55 == v32)
        {
          goto LABEL_29;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v7);
LABEL_29:
      v33 = WTF::fastMalloc(0x18);
      *v33 = &unk_1F10EF1A0;
      v33[1] = v6;
      v33[2] = v7;
      *&v72[0] = v33;
      if ((v69 & 1) == 0)
      {
        goto LABEL_68;
      }

      WebKit::NetworkConnectionToWebProcess::cookiesEnabled(v8, buf, &v63, v64, v65, v66, v67, *v68, v72);
      v34 = *&v72[0];
      *&v72[0] = 0;
      if (v34)
      {
        (*(*v34 + 8))(v34);
      }

LABEL_32:
      if (v69 == 1)
      {
        v35 = v63;
        v63 = 0;
        if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v35, v31);
        }

        v36 = *buf;
        *buf = 0;
        if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v36, v31);
        }
      }

      goto LABEL_13;
    case 0x1B6:
      IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::CookiesForDOMAsync,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::URL const&,WebCore::SameSiteInfo const&,WTF::URL const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::IncludeSecureCookies,WebCore::CookieStoreGetOptions &&,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(std::optional<WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)>(v4, v5, v3);
      goto LABEL_13;
    case 0x1B7:
      IPC::ArgumentCoder<std::tuple<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier>,void>::decode<IPC::Decoder>(buf, v5);
      if ((v62 & 1) == 0)
      {
        goto LABEL_131;
      }

      WebKit::NetworkConnectionToWebProcess::createNewMessagePortChannel(v8, buf, (&v61 + 2));
      goto LABEL_13;
    case 0x1B8:
      IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::CreateRTCProvider,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::CompletionHandler<void ()(void)> &&)>(v4, v5, v3);
      goto LABEL_13;
    case 0x1B9:
      IPC::handleMessage<Messages::NetworkConnectionToWebProcess::CreateSocketChannel,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WebCore::ResourceRequest const&,WTF::String const&,WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ClientOrigin const&,BOOL,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>,WebCore::StoredCredentialsPolicy)>(v5, v3);
      goto LABEL_13;
    case 0x1BA:
      IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::DeleteCookie,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::URL const&,WTF::URL const&,WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)>(v4, v5, v3);
      goto LABEL_13;
    case 0x1BB:
      if ((v9 & 2) == 0)
      {
        v52 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_131;
        }

        *buf = 136315138;
        *&buf[4] = "NetworkConnectionToWebProcess_DestroyWebTransportSession";
        v19 = "Message %s received by a disabled message endpoint";
        goto LABEL_140;
      }

      v53 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v5);
      if (v54)
      {
        WebKit::NetworkConnectionToWebProcess::destroyWebTransportSession(v8, v53);
      }

      goto LABEL_13;
    case 0x1BC:
      v45 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v5);
      if ((v46 & 1) == 0)
      {
        goto LABEL_131;
      }

      WebKit::NetworkConnectionToWebProcess::didDeliverMessagePortMessages(v8, v45);
      goto LABEL_13;
    case 0x1BD:
      IPC::Decoder::decode<std::tuple<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier>>(buf, v5);
      if (v62 == 1)
      {
        WebKit::NetworkConnectionToWebProcess::entangleLocalPortInThisProcessToRemote(v8, buf);
      }

      goto LABEL_13;
    case 0x1BE:
      IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::EstablishSWContextConnection,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::Site &&,std::optional<WebCore::ProcessQualified<WTF::UUID>>,WTF::CompletionHandler<void ()(void)> &&)>(v4, v5, v3);
      goto LABEL_13;
    case 0x1BF:
      IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::EstablishSharedWorkerContextConnection,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::Site &&,WTF::CompletionHandler<void ()(void)> &&)>(v4, v5, v3);
      goto LABEL_13;
    case 0x1C0:
      IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::HasStorageAccess,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::RegistrableDomain &&::CompletionHandler<void ()(BOOL)> &&)>(v4, v5, v3);
      goto LABEL_13;
    case 0x1C1:
      if ((v9 & 2) == 0)
      {
        v52 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_131;
        }

        *buf = 136315138;
        *&buf[4] = "NetworkConnectionToWebProcess_InitializeWebTransportSession";
        v19 = "Message %s received by a disabled message endpoint";
LABEL_140:
        v20 = v52;
        v21 = 12;
        goto LABEL_141;
      }

      IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::InitializeWebTransportSession,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::URL &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> &&,WebCore::ClientOrigin &&,WTF::CompletionHandler<void ()(std::optional<WTF::URL &&<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>>)> &&)>(v4, v5, v3);
      goto LABEL_13;
    case 0x1C2:
      IPC::handleMessage<Messages::NetworkConnectionToWebProcess::InstallMockContentFilter,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WebCore::MockContentFilterSettings &&)>(v5, v3);
      goto LABEL_13;
    case 0x1C3:
      IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::IsLoggedIn,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(BOOL)> &&)>(v4, v5, v3);
      goto LABEL_13;
    case 0x1C4:
      IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::IsResourceLoadFinished,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(BOOL)> &&)>(v4, v5, v3);
      goto LABEL_13;
    case 0x1C5:
      IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::LoadImageForDecoding,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WebCore::ResourceRequest &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WebCore::ResourceRequest &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,WebCore::ResourceRequest &&::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::ResourceRequest &&::Ref<WebCore::FragmentedSharedBuffer,WebCore::ResourceRequest &&::RawPtrTraits<WebCore::ResourceRequest &&::Ref>,WebCore::ResourceRequest &&::DefaultRefDerefTraits<WebCore::ResourceRequest &&::Ref>>,WebCore::ResourceError> &&)> &&)>(v4, v5, v3);
      goto LABEL_13;
    case 0x1C6:
      goto LABEL_69;
    case 0x1C7:
      IPC::handleMessage<Messages::NetworkConnectionToWebProcess::LogUserInteraction,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WebCore::RegistrableDomain &&)>(v5, v3);
      goto LABEL_13;
    case 0x1C8:
      IPC::ArgumentCoder<std::tuple<WebCore::MessagePortIdentifier>,void>::decode<IPC::Decoder>(buf, v5);
      if ((v61 & 0x10000) == 0)
      {
        goto LABEL_131;
      }

      WebKit::NetworkConnectionToWebProcess::messagePortClosed(v8);
      goto LABEL_13;
    case 0x1C9:
      IPC::handleMessage<Messages::NetworkConnectionToWebProcess::MessagePortDisentangled,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WebCore::MessagePortIdentifier const&)>(v5, v3);
      goto LABEL_13;
    case 0x1CA:
      IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::NavigatorGetPushPermissionState,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::URL &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<unsigned char,WebCore::ExceptionData> &&)> &&)>(v4, v5, v3);
      goto LABEL_13;
    case 0x1CB:
      IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::NavigatorGetPushSubscription,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::URL &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,std::optional::ExceptionData> &&)> &&)>(v4, v5, v3);
      goto LABEL_13;
    case 0x1CC:
      IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::NavigatorSubscribeToPushService,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::URL &&,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,std::experimental::fundamentals_v3::ExceptionData> &&)> &&)>(v4, v5, v3);
      goto LABEL_13;
    case 0x1CD:
      IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::NavigatorUnsubscribeFromPushService,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::URL &&,WTF::ObjectIdentifierGeneric<WebCore::PushSubscriptionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<BOOL,WTF::ObjectIdentifierGeneric::ExceptionData> &&)> &&)>(v4, v5, v3);
      goto LABEL_13;
    case 0x1CE:
      v37 = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(v5);
      if (v38)
      {
        WebKit::NetworkConnectionToWebProcess::stopAllNetworkActivityTrackingForPage(v8, v37);
      }

      goto LABEL_13;
    case 0x1CF:
      IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::PingPongForServiceWorkers,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::CompletionHandler<void ()(BOOL)> &&)>(v4, v5);
      goto LABEL_13;
    case 0x1D0:
      IPC::handleMessage<Messages::NetworkConnectionToWebProcess::PostMessageToRemote,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WebCore::MessageWithMessagePorts &&,WebCore::MessagePortIdentifier const&)>(v5, v3);
      goto LABEL_13;
    case 0x1D1:
      IPC::handleMessage<Messages::NetworkConnectionToWebProcess::PreconnectTo,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::NetworkResourceLoadParameters &&)>();
      goto LABEL_13;
    case 0x1D2:
      IPC::handleMessage<Messages::NetworkConnectionToWebProcess::PrefetchDNS,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::String const&)>(v5, v3);
      goto LABEL_13;
    case 0x1D3:
      IPC::handleMessage<Messages::NetworkConnectionToWebProcess::PrioritizeResourceLoads,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>(v5, v3);
      goto LABEL_13;
    case 0x1D4:
      IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::RegisterBlobPathForTesting,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)>(v4, v5, v3);
      goto LABEL_13;
    case 0x1D5:
      IPC::handleMessage<Messages::NetworkConnectionToWebProcess::RegisterBlobURL,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::URL const&,WTF::URL const&,WebCore::PolicyContainer &&,std::optional<WebCore::SecurityOriginData> const&)>(v5, v3);
      goto LABEL_13;
    case 0x1D6:
      IPC::handleMessage<Messages::NetworkConnectionToWebProcess::RegisterBlobURLHandle,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::URL const&,std::optional<WebCore::SecurityOriginData> const&)>(v5, v3);
      goto LABEL_13;
    case 0x1D7:
      IPC::handleMessage<Messages::NetworkConnectionToWebProcess::RegisterInternalBlobURL,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::URL const&,WTF::Vector<WebCore::BlobPart,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::String const&)>(v5, v3);
      goto LABEL_13;
    case 0x1D8:
      IPC::handleMessage<Messages::NetworkConnectionToWebProcess::RegisterInternalBlobURLForSlice,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::URL const&,WTF::URL const&,long long,long long,WTF::String const&)>(v5, v3);
      goto LABEL_13;
    case 0x1D9:
      IPC::handleMessage<Messages::NetworkConnectionToWebProcess::RegisterInternalBlobURLOptionallyFileBacked,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::URL &&,WTF::URL &,WTF::String const&,WTF::URL &&&&)>(v5, v3);
      goto LABEL_13;
    case 0x1DA:
      IPC::handleMessage<Messages::NetworkConnectionToWebProcess::RegisterInternalFileBlobURL,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::URL const&,WTF::String const&,WTF::String const&,WebKit::SandboxExtensionHandle &&,WTF::String const&)>(v5, v3);
      goto LABEL_13;
    case 0x1DB:
      IPC::handleMessage<Messages::NetworkConnectionToWebProcess::RegisterURLSchemesAsCORSEnabled,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>(v5, v3);
      goto LABEL_13;
    case 0x1DC:
      v10 = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(v5);
      if (v11)
      {
        WebKit::NetworkConnectionToWebProcess::removeLoadIdentifier(v8, v10);
      }

      goto LABEL_13;
    case 0x1DD:
      IPC::handleMessage<Messages::NetworkConnectionToWebProcess::RemoveOriginAccessAllowListEntry,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::String const&,WTF::String const&,WTF::String const&,BOOL)>(v5, v3);
      goto LABEL_13;
    case 0x1DE:
      IPC::handleMessage<Messages::NetworkConnectionToWebProcess::RemoveStorageAccessForFrame,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)>(v5, v3);
      goto LABEL_13;
    case 0x1DF:
      IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::RequestStorageAccess,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WTF<WebKit::WebPageProxyIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)>(v4, v5, v3);
      goto LABEL_13;
    case 0x1E0:
      IPC::handleMessage<Messages::NetworkConnectionToWebProcess::RequestStorageAccessUnderOpener,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WebCore::RegistrableDomain &&,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &)>(v5, v3);
      goto LABEL_13;
    case 0x1E1:
      WebKit::NetworkConnectionToWebProcess::resetOriginAccessAllowLists(v3);
      goto LABEL_13;
    case 0x1E2:
      IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::ResourceLoadStatisticsUpdated,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::Vector<WebCore::ResourceLoadStatistics,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(void)> &&)>(v4, v5, v3);
      goto LABEL_13;
    case 0x1E3:
      IPC::ArgumentCoder<WebKit::NetworkResourceLoadParameters,void>::decode();
      if ((v73 & 1) == 0)
      {
        IPC::Decoder::markInvalid(v6);
        buf[0] = 0;
        v71 = 0;
        goto LABEL_71;
      }

      IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(v6, &v57);
      if ((v58 & 1) == 0)
      {
        IPC::Decoder::markInvalid(v6);
        if ((v58 & 1) == 0)
        {
          v13 = 0;
          buf[0] = 0;
LABEL_8:
          v71 = v13;
          if (v73)
          {
            WebKit::NetworkResourceLoadParameters::~NetworkResourceLoadParameters(v72, v12);
            v13 = v71;
          }

          if (v13)
          {
LABEL_11:
            WebKit::NetworkConnectionToWebProcess::scheduleResourceLoad(v8);
            if (v71)
            {
              WebKit::NetworkResourceLoadParameters::~NetworkResourceLoadParameters(buf, v14);
            }

            goto LABEL_13;
          }

LABEL_71:
          IPC::Decoder::markInvalid(v6);
          if ((v71 & 1) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_11;
        }
      }

      if (v73)
      {
        WebKit::NetworkResourceLoadParameters::NetworkResourceLoadParameters(buf, v72);
        v70 = v57;
        v13 = 1;
        goto LABEL_8;
      }

LABEL_68:
      __break(1u);
LABEL_69:
      IPC::handleMessage<Messages::NetworkConnectionToWebProcess::LoadPing,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WebKit::NetworkResourceLoadParameters &&)>(v6, v8);
LABEL_13:
      if (*(v8 + 20) == 1)
      {
        (*(*v8 + 8))(v8);
      }

      else
      {
        --*(v8 + 20);
      }

      return;
    case 0x1E4:
      IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::SendH2Ping,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WebKit::NetworkResourceLoadParameters &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebKit::NetworkResourceLoadParameters &&::Seconds,WebCore::ResourceError> &&)> &&)>();
      goto LABEL_13;
    case 0x1E5:
      IPC::handleMessage<Messages::NetworkConnectionToWebProcess::SetCORSDisablingPatterns,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>(v5, v3);
      goto LABEL_13;
    case 0x1E6:
      v51 = IPC::Decoder::decode<std::tuple<BOOL>>(v5);
      if ((v51 & 0x100) != 0)
      {
        WebKit::NetworkConnectionToWebProcess::setCaptureExtraNetworkLoadMetricsEnabled(v8, (v51 & 1));
      }

      goto LABEL_13;
    case 0x1E7:
      IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::SetCookieFromDOMAsync,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::URL const&,WebCore::SameSiteInfo const&,WTF::URL const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::Cookie &&,WebCore::RequiresScriptTrackingPrivacy,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(BOOL)> &&)>(v4, v5, v3);
      goto LABEL_13;
    case 0x1E8:
      IPC::handleMessage<Messages::NetworkConnectionToWebProcess::SetCookiesFromDOM,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::URL const&,WebCore::SameSiteInfo const&,WTF::URL const&,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WebCore::RequiresScriptTrackingPrivacy,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)>(v5, v3);
      goto LABEL_13;
    case 0x1E9:
      IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::SetLoginStatus,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WebCore::RegistrableDomain &&,WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus> &&,WTF::CompletionHandler<void ()(void)> &&)>(v4, v5, v3);
      goto LABEL_13;
    case 0x1EA:
      IPC::handleMessage<Messages::NetworkConnectionToWebProcess::SetRawCookie,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::URL const&,WTF::URL const&,WebCore::Cookie const&,WebCore::ShouldPartitionCookie)>(v5, v3);
      goto LABEL_13;
    case 0x1EB:
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::LoadSchedulingMode>>(buf, v5);
      if (BYTE2(v61) == 1)
      {
        WebKit::NetworkConnectionToWebProcess::setResourceLoadSchedulingMode(v8, *buf, buf[8]);
      }

      goto LABEL_13;
    case 0x1EC:
      IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::ShouldOffloadIFrameForHost,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::String const&,WTF::CompletionHandler<void ()(BOOL)> &&)>(v4, v5, v3);
      goto LABEL_13;
    case 0x1ED:
      IPC::handleMessage<Messages::NetworkConnectionToWebProcess::StartDownload,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceRequest const&,std::optional<WebCore::SecurityOriginData> const&,std::optional<WebKit::NavigatingToAppBoundDomain>,WTF::String const&,WebCore::FromDownloadAttribute,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)>(v5, v3);
      goto LABEL_13;
    case 0x1EE:
      IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::StorageAccessQuirkForTopFrameDomain,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::URL &&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)>(v4, v5, v3);
      goto LABEL_13;
    case 0x1EF:
      IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::SubscribeToCookieChangeNotifications,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::URL const&,WTF::URL const&,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(BOOL)> &&)>(v4, v5, v3);
      goto LABEL_13;
    case 0x1F0:
      IPC::ArgumentCoder<std::tuple<WebCore::MessagePortIdentifier>,void>::decode<IPC::Decoder>(buf, v5);
      if ((v61 & 0x10000) == 0)
      {
        goto LABEL_131;
      }

      v39 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v6);
      if ((v40 & 1) == 0)
      {
        goto LABEL_13;
      }

      v41 = v39;
      while (1)
      {
        v42 = *v7;
        if ((*v7 & 1) == 0)
        {
          break;
        }

        v56 = *v7;
        atomic_compare_exchange_strong_explicit(v7, &v56, v42 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v56 == v42)
        {
          goto LABEL_44;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v7);
LABEL_44:
      v43 = WTF::fastMalloc(0x18);
      *v43 = &unk_1F10EF420;
      v43[1] = v41;
      v43[2] = v7;
      *&v72[0] = v43;
      WebKit::NetworkConnectionToWebProcess::takeAllMessagesForPort(v8, buf, v72);
      v44 = *&v72[0];
      *&v72[0] = 0;
      if (v44)
      {
        (*(*v44 + 8))(v44);
      }

      goto LABEL_13;
    case 0x1F1:
      IPC::handleMessage<Messages::NetworkConnectionToWebProcess::UnregisterBlobURL,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::URL const&,std::optional<WebCore::SecurityOriginData> const&)>(v5, v3);
      goto LABEL_13;
    case 0x1F2:
      IPC::handleMessage<Messages::NetworkConnectionToWebProcess::UnregisterBlobURLHandle,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::URL const&,std::optional<WebCore::SecurityOriginData> const&)>(v5, v3);
      goto LABEL_13;
    case 0x1F3:
      IPC::handleMessage<Messages::NetworkConnectionToWebProcess::UnsubscribeFromCookieChangeNotifications,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::String const&)>(v5, v3);
      goto LABEL_13;
    case 0x1F4:
      IPC::handleMessage<Messages::NetworkConnectionToWebProcess::UseRedirectionForCurrentNavigation,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceResponse &&)>(v5, v3);
      goto LABEL_13;
    case 0x1F5:
      IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::WriteBlobsToTemporaryFilesForIndexedDB,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>&&)> &&)>(v4, v5, v3);
      goto LABEL_13;
    default:
      if (WebKit::NetworkConnectionToWebProcess::dispatchMessage(v3, v4, v5))
      {
        goto LABEL_13;
      }

      v15 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        v16 = *(v6 + 25);
        if (v16 >= 0x107F)
        {
          v16 = 4223;
        }

        v17 = (&IPC::Detail::messageDescriptions)[3 * v16];
        v18 = *(v6 + 7);
        *buf = 136315394;
        *&buf[4] = v17;
        v60 = 2048;
        v61 = v18;
        v19 = "Unhandled message %s to %llu";
        v20 = v15;
        v21 = 22;
LABEL_141:
        _os_log_error_impl(&dword_19D52D000, v20, OS_LOG_TYPE_ERROR, v19, buf, v21);
      }

LABEL_131:
      IPC::Decoder::markInvalid(v6);
      goto LABEL_13;
  }
}

unint64_t IPC::VectorArgumentCoder<false,WebCore::ResourceLoadStatistics,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(char *a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<unsigned long long>(a2);
  if ((v5 & 1) == 0)
  {
    *a1 = 0;
    a1[16] = 0;
    return result;
  }

  v7 = result;
  v20 = 0uLL;
  if (result >> 1 >= 0xA3D)
  {
    v10 = *a1;
    v11 = a1[16];
    while (1)
    {
      IPC::Decoder::decode<WebCore::ResourceLoadStatistics>(v18, a2);
      v12 = v19;
      if (v19 == 1)
      {
        v13 = HIDWORD(v20);
        if (HIDWORD(v20) == DWORD2(v20))
        {
          WTF::Vector<WebCore::ResourceLoadStatistics,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ResourceLoadStatistics>(&v20, v18);
        }

        else
        {
          WebCore::ResourceLoadStatistics::ResourceLoadStatistics(v20 + 200 * HIDWORD(v20), v18);
          HIDWORD(v20) = v13 + 1;
        }
      }

      else
      {
        v11 = 0;
        v10 = 0;
      }

      if (v19 == 1)
      {
        WebCore::ResourceLoadStatistics::~ResourceLoadStatistics(v18, v5);
      }

      if ((v12 & 1) == 0)
      {
        break;
      }

      if (!--v7)
      {
        WTF::Vector<WebCore::ResourceLoadStatistics,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v20, HIDWORD(v20));
        *a1 = v20;
        v14 = *(&v20 + 1);
        v20 = 0uLL;
        *(a1 + 1) = v14;
        goto LABEL_6;
      }
    }

    a1[16] = v11;
  }

  else
  {
    if (!result)
    {
      v8 = 0;
      v9 = 0;
LABEL_5:
      *&v6 = 0;
      v20 = v6;
      *a1 = v8;
      *(a1 + 1) = v9;
LABEL_6:
      a1[16] = 1;
      return WTF::Vector<WebCore::ResourceLoadStatistics,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v20, v5);
    }

    DWORD2(v20) = 200 * result / 0xC8u;
    *&v20 = WTF::fastMalloc((200 * result));
    v10 = *a1;
    v15 = a1[16];
    while (1)
    {
      IPC::Decoder::decode<WebCore::ResourceLoadStatistics>(v18, a2);
      v16 = v19;
      if (v19 == 1)
      {
        v17 = HIDWORD(v20);
        if (HIDWORD(v20) == DWORD2(v20))
        {
          WTF::Vector<WebCore::ResourceLoadStatistics,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ResourceLoadStatistics>(&v20, v18);
        }

        else
        {
          WebCore::ResourceLoadStatistics::ResourceLoadStatistics(v20 + 200 * HIDWORD(v20), v18);
          HIDWORD(v20) = v17 + 1;
        }
      }

      else
      {
        v15 = 0;
        v10 = 0;
      }

      if (v19 == 1)
      {
        WebCore::ResourceLoadStatistics::~ResourceLoadStatistics(v18, v5);
      }

      if ((v16 & 1) == 0)
      {
        break;
      }

      if (!--v7)
      {
        v9 = *(&v20 + 1);
        v8 = v20;
        goto LABEL_5;
      }
    }

    a1[16] = v15;
  }

  *a1 = v10;
  return WTF::Vector<WebCore::ResourceLoadStatistics,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v20, v5);
}

unint64_t IPC::Decoder::decode<WTF::Vector<WebCore::ResourceLoadStatistics,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(char *a1, IPC::Decoder *a2)
{
  result = IPC::VectorArgumentCoder<false,WebCore::ResourceLoadStatistics,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, a2);
  if ((a1[16] & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

unint64_t IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::ResourceLoadStatisticsUpdated,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::Vector<WebCore::ResourceLoadStatistics,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(void)> &&)>(WTF::ThreadSafeWeakPtrControlBlock **a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::Vector<WebCore::ResourceLoadStatistics,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v14, a2);
  if (v15 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      return WTF::Vector<WebCore::ResourceLoadStatistics,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v14, v8);
    }

    v9 = v7;
LABEL_4:
    v10 = *a1;
    if ((*a1 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
      goto LABEL_6;
    }

    while (1)
    {
      v12 = v10;
      atomic_compare_exchange_strong_explicit(a1, &v12, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v12 != v10)
      {
        goto LABEL_4;
      }

LABEL_6:
      v11 = WTF::fastMalloc(0x18);
      *v11 = &unk_1F10EF2B8;
      v11[1] = v9;
      v11[2] = a1;
      v13 = v11;
      v10 = v15;
      if (v15)
      {
        break;
      }

      __break(1u);
    }

    WebKit::NetworkConnectionToWebProcess::resourceLoadStatisticsUpdated(a3, v14, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v15)
    {
      return WTF::Vector<WebCore::ResourceLoadStatistics,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v14, v8);
    }
  }

  return result;
}

unint64_t IPC::Decoder::decode<std::tuple<WTF::Vector<WebCore::ResourceLoadStatistics,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<WTF::Vector<WebCore::ResourceLoadStatistics,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a1 + 16) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

unint64_t IPC::ArgumentCoder<std::tuple<WTF::Vector<WebCore::ResourceLoadStatistics,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WTF::Vector<WebCore::ResourceLoadStatistics,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v7, a2);
  if (v9)
  {
    *a1 = v7;
    v5 = v8;
    v7 = 0;
    v8 = 0;
    *(a1 + 8) = v5;
    result = WTF::Vector<WebCore::ResourceLoadStatistics,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v7, v4);
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *a1 = 0;
  }

  *(a1 + 16) = v6;
  return result;
}

uint64_t WebKit::NetworkConnectionToWebProcess::resourceLoadStatisticsUpdated(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = *(a1 + 88);
  v17 = *(a1 + 96);
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v5 + 240), &v17);
  if (v6)
  {
    v7 = v6;
    v8 = *(v6 + 16);
    *(v6 + 16) = v8 + 1;
    if (*(v6 + 24) <= -2)
    {
      v14 = *a3;
      *a3 = 0;
      (*(*v14 + 16))(v14);
      result = (*(*v14 + 8))(v14);
      goto LABEL_7;
    }

    v9 = *(v6 + 72);
    if (v9)
    {
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
          goto LABEL_6;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_6:
      WebKit::WebResourceLoadStatisticsStore::resourceLoadStatisticsUpdated(v9, a2, a3);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v9);
LABEL_7:
      v13 = *(v7 + 16);
      if (v13)
      {
        *(v7 + 16) = v13 - 1;
        return result;
      }

      goto LABEL_16;
    }

    if (v8 == -1)
    {
LABEL_16:
      result = 290;
      __break(0xC471u);
      return result;
    }

    *(v6 + 16) = v8;
  }

  v15 = *a3;
  *a3 = 0;
  (*(*v15 + 16))(v15);
  v16 = *(*v15 + 8);

  return v16(v15);
}

uint64_t WebKit::WebResourceLoadStatisticsStore::resourceLoadStatisticsUpdated(uint64_t a1, void *a2, uint64_t *a3)
{
  v9[0] = *a2;
  v4 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v9[1] = v4;
  v5 = *a3;
  *a3 = 0;
  v9[2] = v5;
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::resourceLoadStatisticsUpdated(WTF::Vector<WebCore::ResourceLoadStatistics,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>,WTF::CompletionHandler<void ()(void)> &,0>(&v10, v9);
  WebKit::WebResourceLoadStatisticsStore::postTask(a1, &v10);
  v7 = v10;
  v10 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  return WebKit::WebResourceLoadStatisticsStore::resourceLoadStatisticsUpdated(WTF::Vector<WebCore::ResourceLoadStatistics,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(void)> &&)::$_0::~$_0(v9, v6);
}

uint64_t WebKit::WebResourceLoadStatisticsStore::resourceLoadStatisticsUpdated(WTF::Vector<WebCore::ResourceLoadStatistics,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(void)> &&)::$_0::~$_0(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::Vector<WebCore::ResourceLoadStatistics,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1, a2);
}

WebKit::DatabaseUtilities *WebKit::ResourceLoadStatisticsStore::mergeStatistics(WebKit::DatabaseUtilities *result, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(a2 + 12))
  {
    v3 = result;
    WebKit::DatabaseUtilities::beginTransactionIfNecessary(result, v13);
    v4 = *(a2 + 12);
    if (v4)
    {
      v5 = *a2;
      v6 = 200 * v4;
      do
      {
        if (WebKit::ResourceLoadStatisticsStore::domainID(v3, v5) >> 32)
        {
          WebKit::ResourceLoadStatisticsStore::mergeStatistic(v3, v5);
        }

        else if ((WebKit::ResourceLoadStatisticsStore::insertObservedDomain(v3, v5) & 1) == 0)
        {
          v10 = qword_1ED641148;
          if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
          {
            v12 = *(v3 + 83);
            *buf = 134218240;
            v15 = v3;
            v16 = 2048;
            v17 = v12;
            _os_log_error_impl(&dword_19D52D000, v10, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu] - ResourceLoadStatisticsStore::mergeStatistics: failed to insert observed domain", buf, 0x16u);
          }

          return WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v13);
        }

        v5 = (v5 + 200);
        v6 -= 200;
      }

      while (v6);
      v7 = *(a2 + 12);
      if (v7)
      {
        v8 = *a2;
        v9 = 200 * v7;
        do
        {
          WebKit::ResourceLoadStatisticsStore::insertDomainRelationships(v3, v8);
          v8 = (v8 + 200);
          v9 -= 200;
        }

        while (v9);
      }
    }

    return WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v13);
  }

  return result;
}

uint64_t WebKit::ResourceLoadStatisticsStore::updateCookieBlocking(uint64_t a1, uint64_t *a2)
{
  WebKit::ResourceLoadStatisticsStore::domainsToBlockAndDeleteCookiesFor(v32);
  WebKit::ResourceLoadStatisticsStore::domainsToBlockButKeepCookiesFor(v30);
  WebKit::ResourceLoadStatisticsStore::domainsWithUserInteractionAsFirstParty(v28);
  WebKit::ResourceLoadStatisticsStore::domainsWithStorageAccess(&v27);
  if (v33)
  {
    v4 = 0;
  }

  else
  {
    v4 = v31 == 0;
  }

  v5 = v4 && v29 == 0;
  if (!v5 || v27 && *(v27 - 3))
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v23, v32);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v24, v30);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v25, v28);
    v11 = WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::HashTable(&v26, &v27);
    if (*(a1 + 724) == 1 && v33 | v31)
    {
      v11 = WebKit::ResourceLoadStatisticsStore::debugLogDomainsInBatches(a1, v23);
    }

    WTF::RunLoop::mainSingleton(v11);
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 96), a1);
    v12 = *(a1 + 96);
    atomic_fetch_add(v12, 1u);
    v20[0] = v12;
    v13 = *(a1 + 112);
    if (!v13)
    {
      result = 114;
      __break(0xC471u);
      return result;
    }

    while (1)
    {
      v14 = *v13;
      if ((*v13 & 1) == 0)
      {
        break;
      }

      v15 = *v13;
      atomic_compare_exchange_strong_explicit(v13, &v15, v14 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v15 == v14)
      {
        goto LABEL_21;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v13);
LABEL_21:
    v20[1] = v13;
    WebKit::RegistrableDomainsToBlockCookiesFor::isolatedCopy(v21, v23);
    v16 = *a2;
    *a2 = 0;
    v21[7] = v16;
    WTF::Function<void ()(void)>::Function<WebKit::ResourceLoadStatisticsStore::updateCookieBlocking(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>(&v22, v20);
    WTF::RunLoop::dispatch();
    v18 = v22;
    v22 = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    WebKit::ResourceLoadStatisticsStore::updateCookieBlocking(WTF::CompletionHandler<void ()(void)> &&)::$_0::~$_0(v20, v17);
    WebKit::RegistrableDomainsToBlockCookiesFor::~RegistrableDomainsToBlockCookiesFor(v23, v19);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    (*(*v6 + 16))(v6);
    (*(*v6 + 8))(v6);
  }

  if (v27)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v27, v7);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v28, v7);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v30, v8);
  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v32, v9);
}

void WebKit::ResourceLoadStatisticsStore::domainsToBlockAndDeleteCookiesFor(WebKit::ResourceLoadStatisticsStore *this)
{
  *this = 0;
  *(this + 1) = 0;
  WebCore::SQLiteDatabase::prepareStatement();
  if (!v11)
  {
    while (1)
    {
      v2 = WebCore::SQLiteStatement::step(v10);
      if (v2 != 100)
      {
        break;
      }

      if (!v11)
      {
        WebCore::SQLiteStatement::columnText(v10);
        WebCore::RegistrableDomain::uncheckedCreateFromRegistrableDomainString(&v8, &v9);
        v4 = *(this + 3);
        if (v4 == *(this + 2))
        {
          WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::RegistrableDomain>(this, &v9);
        }

        else
        {
          v5 = *this;
          v6 = v9;
          v9 = 0;
          *(v5 + 8 * v4) = v6;
          *(this + 3) = v4 + 1;
        }

        v7 = v9;
        v9 = 0;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, v3);
        }

        v2 = v8;
        v8 = 0;
        if (v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v2 = WTF::StringImpl::destroy(v2, v3);
        }

        if (!v11)
        {
          continue;
        }
      }

      mpark::throw_bad_variant_access(v2);
    }

    if (!v11)
    {
      WebCore::SQLiteStatement::~SQLiteStatement(v10);
    }
  }
}

IPC::Encoder *IPC::Connection::sendAsyncReply<Messages::NetworkConnectionToWebProcess::ResourceLoadStatisticsUpdated>(uint64_t *a1, void *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3266;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = a2;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
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

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess29ResourceLoadStatisticsUpdatedENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvONS_6VectorIN7WebCore22ResourceLoadStatisticsELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EF2B8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10EA370;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

void WebKit::ResourceLoadStatisticsStore::domainsToBlockButKeepCookiesFor(WebKit::ResourceLoadStatisticsStore *this)
{
  *this = 0;
  *(this + 1) = 0;
  WebCore::SQLiteDatabase::prepareStatement();
  if (!v11)
  {
    while (1)
    {
      v2 = WebCore::SQLiteStatement::step(v10);
      if (v2 != 100)
      {
        break;
      }

      if (!v11)
      {
        WebCore::SQLiteStatement::columnText(v10);
        WebCore::RegistrableDomain::uncheckedCreateFromRegistrableDomainString(&v8, &v9);
        v4 = *(this + 3);
        if (v4 == *(this + 2))
        {
          WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::RegistrableDomain>(this, &v9);
        }

        else
        {
          v5 = *this;
          v6 = v9;
          v9 = 0;
          *(v5 + 8 * v4) = v6;
          *(this + 3) = v4 + 1;
        }

        v7 = v9;
        v9 = 0;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, v3);
        }

        v2 = v8;
        v8 = 0;
        if (v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v2 = WTF::StringImpl::destroy(v2, v3);
        }

        if (!v11)
        {
          continue;
        }
      }

      mpark::throw_bad_variant_access(v2);
    }

    if (!v11)
    {
      WebCore::SQLiteStatement::~SQLiteStatement(v10);
    }
  }
}

void WebKit::ResourceLoadStatisticsStore::domainsWithUserInteractionAsFirstParty(WebKit::ResourceLoadStatisticsStore *this)
{
  *this = 0;
  *(this + 1) = 0;
  WebCore::SQLiteDatabase::prepareStatement();
  if (!v11)
  {
    while (1)
    {
      v2 = WebCore::SQLiteStatement::step(v10);
      if (v2 != 100)
      {
        break;
      }

      if (!v11)
      {
        WebCore::SQLiteStatement::columnText(v10);
        WebCore::RegistrableDomain::uncheckedCreateFromRegistrableDomainString(&v8, &v9);
        v4 = *(this + 3);
        if (v4 == *(this + 2))
        {
          WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::RegistrableDomain>(this, &v9);
        }

        else
        {
          v5 = *this;
          v6 = v9;
          v9 = 0;
          *(v5 + 8 * v4) = v6;
          *(this + 3) = v4 + 1;
        }

        v7 = v9;
        v9 = 0;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, v3);
        }

        v2 = v8;
        v8 = 0;
        if (v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v2 = WTF::StringImpl::destroy(v2, v3);
        }

        if (!v11)
        {
          continue;
        }
      }

      mpark::throw_bad_variant_access(v2);
    }

    if (!v11)
    {
      WebCore::SQLiteStatement::~SQLiteStatement(v10);
    }
  }
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkConnectionToWebProcess::ResourceLoadStatisticsUpdated,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess41SendResourceLoadStatisticsDataImmediatelyENS2_10ConnectionEN6WebKit10WebProcessES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F7E00;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkConnectionToWebProcess::ResourceLoadStatisticsUpdated,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1132978;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

void WebKit::ResourceLoadStatisticsStore::domainsWithStorageAccess(WebKit::ResourceLoadStatisticsStore *this)
{
  *this = 0;
  WebCore::SQLiteDatabase::prepareStatement();
  if (!v19)
  {
    while (1)
    {
      v2 = WebCore::SQLiteStatement::step(v18);
      if (v2 != 100)
      {
        break;
      }

      if (!v19)
      {
        WebCore::SQLiteStatement::columnText(v18);
        WebCore::RegistrableDomain::uncheckedCreateFromRegistrableDomainString(&v15, &v16);
        v14[0] = 0;
        v14[1] = 0;
        v2 = WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(this, &v16, v14, v17);
        if (!v19)
        {
          v3 = v17[0];
          WebCore::SQLiteStatement::columnText(v18);
          WebCore::RegistrableDomain::uncheckedCreateFromRegistrableDomainString(&v12, &v13);
          v5 = *(v3 + 20);
          if (v5 == *(v3 + 16))
          {
            WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::RegistrableDomain>(v3 + 8, &v13);
          }

          else
          {
            v6 = *(v3 + 8);
            v7 = v13;
            v13 = 0;
            *(v6 + 8 * v5) = v7;
            *(v3 + 20) = v5 + 1;
          }

          v8 = v13;
          v13 = 0;
          if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v8, v4);
          }

          v9 = v12;
          v12 = 0;
          if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v9, v4);
          }

          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v14, v4);
          v11 = v16;
          v16 = 0;
          if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v11, v10);
          }

          v2 = v15;
          v15 = 0;
          if (v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            v2 = WTF::StringImpl::destroy(v2, v10);
          }

          if (!v19)
          {
            continue;
          }
        }
      }

      mpark::throw_bad_variant_access(v2);
    }

    if (!v19)
    {
      WebCore::SQLiteStatement::~SQLiteStatement(v18);
    }
  }
}

atomic_ullong *WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(atomic_ullong *result)
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
      if (v2 == 3)
      {
        v5 = WTF::fastMalloc(0x10);
        *v5 = &unk_1F10ED940;
        v5[1] = v1;
        v6 = v5;
        WTF::ensureOnMainThread();
        result = v6;
        if (v6)
        {
          return (*(*v6 + 8))(v6);
        }
      }

      return result;
    }
  }

  v4 = *result;

  return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>(v4);
}

void sub_19D604370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void *WebKit::ResourceLoadStatisticsStore::processStatisticsAndDataRecords(WebKit::ResourceLoadStatisticsStore *this)
{
  if (*(this + 232) == 1)
  {
    WebKit::ResourceLoadStatisticsStore::classifyPrevalentResources(this);
  }

  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 24, this);
  v2 = *(this + 12);
  atomic_fetch_add(v2, 1u);
  v3 = WTF::fastMalloc(0x10);
  *v3 = &unk_1F1104590;
  v3[1] = v2;
  v6 = v3;
  WebKit::ResourceLoadStatisticsStore::removeDataRecords(this, &v6);
  result = v6;
  if (v6)
  {
    v5 = *(*v6 + 8);

    return v5();
  }

  return result;
}

_DWORD *WebKit::ResourceLoadStatisticsStore::classifyPrevalentResources(atomic_uint **this)
{
  WebKit::ResourceLoadStatisticsStore::ensurePrevalentResourcesForDebugMode(v4, this);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, v2);
  WebKit::ResourceLoadStatisticsStore::markAsPrevalentIfHasRedirectedToPrevalent(this);
  return WebKit::ResourceLoadStatisticsStore::reclassifyResources(this);
}

uint64_t *WebKit::ResourceLoadStatisticsStore::ensurePrevalentResourcesForDebugMode(uint64_t *this, atomic_uint **a2)
{
  v2 = this;
  v32 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 725) & 1) == 0)
  {
    *this = 0;
    this[1] = 0;
    return this;
  }

  v30 = 2;
  v29 = WTF::fastMalloc(0x10);
  WebKit::DatabaseUtilities::beginTransactionIfNecessary(a2, v28);
  WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(a2, (a2 + 36), "ensurePrevalentResourcesForDebugMode");
  if ((v4 & 1) == 0)
  {
    goto LABEL_27;
  }

  WebKit::ResourceLoadStatisticsStore::setPrevalentResource(a2, (a2 + 36), 2);
  v5 = HIDWORD(v30);
  if (HIDWORD(v30) == v30)
  {
    WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::RegistrableDomain const&>(&v29, (a2 + 36));
  }

  else
  {
    v20 = v29;
    v21 = a2[36];
    if (v21)
    {
      atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
    }

    v22 = HIDWORD(v30);
    *(v20 + 8 * v5) = v21;
    HIDWORD(v30) = v22 + 1;
  }

  v7 = a2 + 31;
  v6 = a2[31];
  if (!v6 || !v6[1] || (MEMORY[0x19EB01EF0]() & 1) != 0)
  {
    goto LABEL_9;
  }

  WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(a2, (a2 + 31), "ensurePrevalentResourcesForDebugMode");
  if ((v9 & 1) == 0)
  {
LABEL_27:
    *v2 = 0;
    v2[1] = 0;
    goto LABEL_28;
  }

  WebKit::ResourceLoadStatisticsStore::setPrevalentResource(a2, (a2 + 31), 2);
  v10 = HIDWORD(v30);
  if (HIDWORD(v30) == v30)
  {
    WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::RegistrableDomain const&>(&v29, (a2 + 31));
  }

  else
  {
    v23 = v29;
    v24 = *v7;
    if (*v7)
    {
      atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
    }

    v25 = HIDWORD(v30);
    *(v23 + 8 * v10) = v24;
    HIDWORD(v30) = v25 + 1;
  }

  if (*(a2 + 724) == 1)
  {
    v11 = qword_1ED640B30;
    if (os_log_type_enabled(qword_1ED640B30, OS_LOG_TYPE_INFO))
    {
      WTF::String::utf8();
      v12 = v27 ? v27 + 16 : 0;
      *buf = 136380675;
      *&buf[4] = v12;
      _os_log_impl(&dword_19D52D000, v11, OS_LOG_TYPE_INFO, "ResourceLoadStatisticsStore: Did set %{private}s as prevalent resource for the purposes of ITP Debug Mode.", buf, 0xCu);
      v14 = v27;
      v27 = 0;
      if (v14)
      {
        if (*v14 == 1)
        {
          WTF::fastFree(v14, v13);
        }

        else
        {
          --*v14;
        }
      }
    }

    v15 = *v7;
    if (*v7)
    {
      atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
    }

    v26 = v15;
    WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("[ITP] Did set '", 16, &v26, "' as prevalent resource for the purposes of ITP Debug Mode.", 60, buf);
    WebKit::ResourceLoadStatisticsStore::debugBroadcastConsoleMessage(a2, 4, buf);
    v17 = *buf;
    *buf = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v16);
    }

    v18 = v26;
    v26 = 0;
    if (v18)
    {
      if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v16);
      }
    }
  }

LABEL_9:
  *v2 = v29;
  v8 = v30;
  v29 = 0;
  v30 = 0;
  v2[1] = v8;
LABEL_28:
  WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v28);
  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v29, v19);
}

WTF *WebKit::ResourceLoadStatisticsStore::markAsPrevalentIfHasRedirectedToPrevalent(WebKit::ResourceLoadStatisticsStore *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v19[0] = 0;
  v19[1] = 0;
  v18 = v19;
  WebCore::SQLiteDatabase::prepareStatement();
  if (!v17)
  {
    while (1)
    {
      v2 = WebCore::SQLiteStatement::step(v16);
      if (v2 != 100)
      {
        break;
      }

      if (!v17)
      {
        *buf = WebCore::SQLiteStatement::columnInt(v16);
        v2 = std::__tree<unsigned int,std::less<unsigned int>,WTF::FastAllocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(&v18, *buf, buf);
        if (!v17)
        {
          continue;
        }
      }

LABEL_27:
      mpark::throw_bad_variant_access(v2);
    }
  }

  WebCore::SQLiteDatabase::prepareStatement();
  if (!v15)
  {
    while (1)
    {
      v2 = WebCore::SQLiteStatement::step(v14);
      if (v2 != 100)
      {
        break;
      }

      if (!v15)
      {
        *buf = WebCore::SQLiteStatement::columnInt(v14);
        v2 = std::__tree<unsigned int,std::less<unsigned int>,WTF::FastAllocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(&v18, *buf, buf);
        if (!v15)
        {
          continue;
        }
      }

      goto LABEL_27;
    }
  }

  WebKit::buildList<std::set<unsigned int,std::less<unsigned int>,WTF::FastAllocator<unsigned int>>>(&v11, &v18);
  WTF::makeString<WTF::ASCIILiteral,WTF::String,char>("UPDATE ObservedDomains SET isPrevalent = 1 WHERE domainID IN (", 63, &v11, 41, buf);
  WebCore::SQLiteDatabase::prepareStatementSlow();
  v4 = *buf;
  *buf = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v3);
  }

  v5 = v11;
  v11 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v3);
  }

  if (v13 || WebCore::SQLiteStatement::step(v12) != 101)
  {
    v7 = qword_1ED641148;
    if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      v8 = *(this + 83);
      Error = WebCore::SQLiteDatabase::lastError((this + 16));
      ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
      *buf = 134218755;
      *&buf[4] = this;
      v21 = 2048;
      v22 = v8;
      v23 = 1024;
      v24 = Error;
      v25 = 2081;
      v26 = ErrorMsg;
      _os_log_error_impl(&dword_19D52D000, v7, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::markAsPrevalentIfHasRedirectedToPrevalent: failed to step statement", buf, 0x26u);
    }
  }

  if (!v13)
  {
    WebCore::SQLiteStatement::~SQLiteStatement(v12);
  }

  if (!v15)
  {
    WebCore::SQLiteStatement::~SQLiteStatement(v14);
  }

  if (!v17)
  {
    WebCore::SQLiteStatement::~SQLiteStatement(v16);
  }

  return std::__tree<unsigned int,std::less<unsigned int>,WTF::FastAllocator<unsigned int>>::destroy(v19[0]);
}

void *WebKit::WebResourceLoadStatisticsStore::logTestingEvent(void *this, const WTF::String *a2)
{
  v2 = this[2];
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v4 = *(v3 + 16) + 1;
      *(v3 + 16) = v4;
      if (*(v3 + 96) == 1)
      {
        v6 = this;
        v7 = *(*(v3 + 32) + 40);
        if (v7)
        {
          while (1)
          {
            v8 = *v7;
            if ((*v7 & 1) == 0)
            {
              break;
            }

            v11 = *v7;
            atomic_compare_exchange_strong_explicit(v7, &v11, v8 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v11 == v8)
            {
              goto LABEL_10;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v7);
        }

LABEL_10:
        v9 = v6[2];
        if (!v9 || (v10 = *(v9 + 8)) == 0)
        {
          __break(0xC471u);
          goto LABEL_19;
        }

        v12 = *(v10 + 24);
        v13[0] = &v12;
        v13[1] = a2;
        this = IPC::Connection::send<Messages::NetworkProcessProxy::LogTestingEvent>(v7, v13);
        if (v7)
        {
          this = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v7);
        }

        v4 = *(v3 + 16);
      }

      if (v4)
      {
        *(v3 + 16) = v4 - 1;
        return this;
      }

      __break(0xC471u);
LABEL_19:
      JUMPOUT(0x19D604B7CLL);
    }
  }

  return this;
}

WTF::StringImpl **WebKit::buildList<std::set<unsigned int,std::less<unsigned int>,WTF::FastAllocator<unsigned int>>>(atomic_uint **a1, void *a2)
{
  v13[0] = 0;
  v13[1] = 0;
  v14 = 0;
  v15 = 1;
  v3 = a2 + 1;
  v4 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      if (v14)
      {
        v8 = ", ";
      }

      else
      {
        v8 = "";
      }

      if (v14)
      {
        v9 = 3;
      }

      else
      {
        v9 = 1;
      }

      WTF::StringBuilder::append<WTF::ASCIILiteral,unsigned int>(v13, v8, v9, *(v4 + 7));
      v10 = v4[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v4[2];
          v12 = *v11 == v4;
          v4 = v11;
        }

        while (!v12);
      }

      v4 = v11;
    }

    while (v11 != v3);
  }

  v6 = *WTF::StringBuilder::toString(v13);
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  *a1 = v6;
  return WTF::KeyValuePair<WTF::String,WTF::String>::~KeyValuePair(v13, v5);
}

WTF::StringBuilder *WTF::StringBuilder::toString(WTF::StringBuilder *this)
{
  if (!*this)
  {
    WTF::StringBuilder::shrinkToFit(this);
    WTF::StringBuilder::reifyString(this);
  }

  return this;
}

uint64_t WTF::tryMakeString<WTF::ASCIILiteral,WTF::String,char>@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  v4 = a1[1];
  v5 = v4 != 0;
  v6 = v4 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v10[0] = *a1;
  v10[1] = v6;
  if (v6 >> 31)
  {
    result = 161;
    __break(0xC471u);
  }

  else
  {
    v9 = *a2;
    v8 = *a3;
    return WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>(v10, &v9, &v8, a4);
  }

  return result;
}

uint64_t WTF::makeString<WTF::ASCIILiteral,WTF::String,char>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v8[0] = a1;
  v8[1] = a2;
  v7 = a4;
  result = WTF::tryMakeString<WTF::ASCIILiteral,WTF::String,char>(v8, a3, &v7, a5);
  if (!*a5)
  {
    __break(0xC471u);
  }

  return result;
}

uint64_t WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  v4 = *(result + 8);
  v5 = *a2;
  if (*a2)
  {
    v6 = *(v5 + 4);
    if (v6 < 0)
    {
LABEL_14:
      *a4 = 0;
      return result;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  v9 = v7;
  if ((v4 & 0x80000000) != 0)
  {
    goto LABEL_14;
  }

  if (v9)
  {
    goto LABEL_14;
  }

  v7 = __OFADD__(v4, v8);
  v10 = (v4 + v8);
  if (v7)
  {
    goto LABEL_14;
  }

  v11 = !v5 || (*(v5 + 16) & 4) != 0;
  return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>(v10, v11, *result, v4, v5, *a3, a4);
}

uint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>@<X0>(uint64_t result@<X0>, int a2@<W1>, int8x16_t *a3@<X2>, size_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, void *a7@<X8>)
{
  v11 = result;
  v13 = result;
  if (a2)
  {
    if (result)
    {
      if ((result & 0x80000000) == 0)
      {
        result = WTF::tryFastCompactMalloc((result + 20));
        v14 = v15;
        if (v15)
        {
          *v15 = 2;
          *(v15 + 4) = v11;
          *(v15 + 8) = v15 + 20;
          *(v15 + 16) = 4;
          result = WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>((v15 + 20), v13, a3, a4, a5, a6);
        }

        goto LABEL_6;
      }

LABEL_9:
      v14 = 0;
      goto LABEL_6;
    }

LABEL_10:
    v14 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_6;
  }

  if (!result)
  {
    goto LABEL_10;
  }

  if (result > 0x7FFFFFEF)
  {
    goto LABEL_9;
  }

  result = WTF::tryFastCompactMalloc((2 * result + 20));
  v14 = v15;
  if (v15)
  {
    *v15 = 2;
    *(v15 + 4) = v11;
    *(v15 + 8) = v15 + 20;
    *(v15 + 16) = 0;
    result = WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>((v15 + 20), v13, a3, a4, a5, a6);
  }

LABEL_6:
  *a7 = v14;
  return result;
}

atomic_uchar *WebKit::WebSQLiteDatabaseTracker::willBeginFirstTransaction(atomic_uchar *this)
{
  v1 = this;
  v2 = 0;
  v3 = this + 32;
  atomic_compare_exchange_strong_explicit(this + 32, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    this = MEMORY[0x19EB01E30](this + 32);
  }

  v4 = *(v1 + 40);
  if (v4)
  {
    *(v1 + 40) = v4 + 1;
  }

  else
  {
    WTF::RunLoop::mainSingleton(this);
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v1 + 16), v1);
    v6 = *(v1 + 16);
    atomic_fetch_add(v6, 1u);
    v7 = WTF::fastMalloc(0x10);
    *v7 = &unk_1F110EB60;
    *(v7 + 1) = v6;
    v8 = v7;
    WTF::RunLoop::dispatch();
    this = v8;
    if (v8)
    {
      this = (*(*v8 + 8))(v8);
    }
  }

  v5 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != 1)
  {
    return WTF::Lock::unlockSlow(v3);
  }

  return this;
}

uint64_t WebKit::WebSQLiteDatabaseTracker::didFinishLastTransaction(atomic_uchar *this)
{
  v1 = this;
  v2 = 0;
  v3 = this + 32;
  atomic_compare_exchange_strong_explicit(this + 32, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    this = MEMORY[0x19EB01E30](this + 32);
  }

  WTF::RunLoop::mainSingleton(this);
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v1 + 4, v1);
  v4 = *(v1 + 2);
  atomic_fetch_add(v4, 1u);
  v5 = *(v1 + 5) + 1;
  *(v1 + 5) = v5;
  v6 = WTF::fastMalloc(0x18);
  *v6 = &unk_1F110EB88;
  v6[1] = v4;
  v6[2] = v5;
  v9 = v6;
  WTF::RunLoop::dispatchAfter();
  if (v10)
  {
    WTF::ThreadSafeRefCounted<WTF::RunLoop::DispatchTimer,(WTF::DestructionThread)0>::deref((v10 + 40));
  }

  result = v9;
  if (v9)
  {
    result = (*(*v9 + 8))(v9);
  }

  v8 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 != 1)
  {
    return WTF::Lock::unlockSlow(v3);
  }

  return result;
}

_DWORD *WTF::Detail::CallableWrapper<WebKit::WebSQLiteDatabaseTracker::willBeginFirstTransaction(void)::$_0,void>::call(_DWORD *result)
{
  v1 = *(result + 1);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      v3 = 0;
      ++*(v2 + 8);
      atomic_compare_exchange_strong_explicit((v2 + 32), &v3, 1u, memory_order_acquire, memory_order_acquire);
      if (v3)
      {
        MEMORY[0x19EB01E30](v2 + 32);
      }

      if ((*(v2 + 48) & 1) == 0)
      {
        (*(**(v2 + 24) + 16))(*(v2 + 24), 1);
      }

      v4 = 1;
      atomic_compare_exchange_strong_explicit((v2 + 32), &v4, 0, memory_order_release, memory_order_relaxed);
      if (v4 != 1)
      {
        WTF::Lock::unlockSlow((v2 + 32));
      }

      return WTF::RefCounted<WebKit::WebSQLiteDatabaseTracker>::deref((v2 + 8));
    }
  }

  return result;
}

atomic_uint *WTF::ThreadSafeRefCounted<WTF::RunLoop::DispatchTimer,(WTF::DestructionThread)0>::deref(atomic_uint *result)
{
  add = atomic_fetch_add(result, 0xFFFFFFFF);
  if (add == 1)
  {
    v5 = v1;
    atomic_store(add, result);
    WTF::RunLoop::DispatchTimer::~DispatchTimer((result - 10));

    return WTF::fastFree(v3, v4);
  }

  return result;
}

atomic_uchar **WTF::Detail::CallableWrapper<WebKit::NetworkProcess::NetworkProcess(WebKit::AuxiliaryProcessInitializationParameters &&)::$_0,void,BOOL>::call(atomic_uchar **result, void *a2)
{
  v2 = result[1];
  if (v2)
  {
    v3 = *(v2 + 1);
    if (v3)
    {
      atomic_fetch_add((v3 + 144), 1u);
      result = *(v3 + 304);
      if (a2)
      {
        if (!result || (result = WebKit::ProcessAssertion::isValid(result), (result & 1) == 0))
        {
          v4 = getpid();
          WTF::StringImpl::createWithoutCopyingNonEmpty();
          v9 = 0;
          WebKit::ProcessAssertion::create(v4, &v10, 5, 0, MEMORY[0x1E696EBA8], &v9, &v11);
          v6 = *(v3 + 304);
          *(v3 + 304) = v11;
          if (v6)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v6 + 8), v5);
          }

          v7 = v9;
          v9 = 0;
          if (v7)
          {
            (*(*v7 + 8))(v7);
          }

          result = v10;
          v10 = 0;
          if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v5);
          }
        }
      }

      else
      {
        *(v3 + 304) = 0;
        if (result)
        {
          result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref(result + 1, a2);
        }
      }

      if (atomic_fetch_add((v3 + 144), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, (v3 + 144));
        v8 = *(*v3 + 24);

        return v8(v3);
      }
    }
  }

  return result;
}

void WebKit::ProcessAssertion::create(int a1@<W0>, void *a2@<X1>, char a3@<W2>, int a4@<W3>, atomic_uint **a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X8>)
{
  v14 = WebKit::ProcessAssertion::operator new(0xB0, a2);
  LOBYTE(cf) = 0;
  v18 = 0;
  *a7 = WebKit::ProcessAssertion::ProcessAssertion(v14, a1, a2, a3, a5, &cf);
  if (v18 == 1 && v17 != 255)
  {
    v15 = cf;
    cf = 0;
    if (v15)
    {
      CFRelease(v15);
    }
  }

  WebKit::ProcessAssertion::acquireAssertion(v14, a4, a6);
}

uint64_t WebKit::ProcessAssertion::operator new(WebKit::ProcessAssertion *this, void *a2)
{
  if (this == 176 && WebKit::ProcessAssertion::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::ProcessAssertion::s_heapRef, a2);
  }

  else
  {
    return WebKit::ProcessAssertion::operatorNewSlow(this);
  }
}

WTF *std::__tree<unsigned int,std::less<unsigned int>,WTF::FastAllocator<unsigned int>>::destroy(WTF *result)
{
  if (result)
  {
    v2 = result;
    std::__tree<unsigned int,std::less<unsigned int>,WTF::FastAllocator<unsigned int>>::destroy(*result);
    std::__tree<unsigned int,std::less<unsigned int>,WTF::FastAllocator<unsigned int>>::destroy(*(v2 + 1));

    return WTF::fastFree(v2, v3);
  }

  return result;
}

_DWORD *WebKit::ResourceLoadStatisticsStore::reclassifyResources(WebKit::ResourceLoadStatisticsStore *this)
{
  WebKit::ResourceLoadStatisticsStore::findNotVeryPrevalentResources(&v12);
  result = v12;
  if (v12)
  {
    if (!*(v12 - 3))
    {
      return WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::deallocateTable(result, v2);
    }

    WebKit::DatabaseUtilities::beginTransactionIfNecessary(this, v11);
    v4 = v12;
    v5 = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::begin(v12);
    v6 = v5;
    v8 = v7;
    if (v4)
    {
      v9 = &v4[10 * *(v4 - 1)];
    }

    else
    {
      v9 = 0;
    }

    if (v9 != v5)
    {
      do
      {
        if ((*(this + 233) & 1) != 0 || (*(this + 723) & 1) != 0 || (MEMORY[0x19EB01EF0](*(v6 + 1), "localhost", 9) & 1) == 0)
        {
          v10 = WebKit::ResourceLoadStatisticsClassifier::calculateResourcePrevalence(this + 128, v6[5], v6[6], v6[7], v6[8], v6[4]);
          if (v10 != v6[4])
          {
            WebKit::ResourceLoadStatisticsStore::setPrevalentResource(this, (v6 + 2), v10);
          }
        }

        do
        {
          v6 += 10;
        }

        while (v6 != v8 && (*v6 + 1) <= 1);
      }

      while (v6 != v9);
    }

    WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v11);
    result = v12;
    if (v12)
    {
      return WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::deallocateTable(result, v2);
    }
  }

  return result;
}

void WebKit::ResourceLoadStatisticsStore::findNotVeryPrevalentResources(WebKit::ResourceLoadStatisticsStore *this)
{
  *this = 0;
  WebCore::SQLiteDatabase::prepareStatement();
  if (v49)
  {
    v4 = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::begin(0);
    v3 = 0;
LABEL_4:
    v6 = 0;
    v7 = 0;
    goto LABEL_5;
  }

  while (1)
  {
    v2 = WebCore::SQLiteStatement::step(v48);
    if (v2 != 100)
    {
      break;
    }

    if (v49)
    {
      goto LABEL_106;
    }

    v2 = WebCore::SQLiteStatement::columnInt(v48);
    LODWORD(v38[0]) = v2;
    if (v2)
    {
      if (v49 || (WebCore::SQLiteStatement::columnText(v48), v2 = WebCore::RegistrableDomain::uncheckedCreateFromRegistrableDomainString(v41, &v44), v49))
      {
LABEL_106:
        mpark::throw_bad_variant_access(v2);
      }

      if (WebCore::SQLiteStatement::columnInt(v48))
      {
        v22 = 2;
      }

      else
      {
        v22 = 1;
      }

      *v45 = v22;
      *&v45[4] = 0uLL;
      v23 = v41[0];
      v41[0] = 0;
      if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v21);
      }

      WTF::HashMap<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>(v41, this, v38, &v44);
      v2 = v44;
      v44 = 0;
      if (v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v2 = WTF::StringImpl::destroy(v2, v24);
      }
    }

    if (v49)
    {
      goto LABEL_106;
    }
  }

  v3 = *this;
  v4 = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::begin(*this);
  if (!v3)
  {
    goto LABEL_4;
  }

  v7 = *(v3 - 4);
  v6 = v3 + 40 * v7;
LABEL_5:
  v44 = this;
  *v45 = v4;
  *&v45[8] = v5;
  *&v45[16] = v6;
  v46 = v3 + 40 * v7;
  WebKit::buildList<WTF::SizedIteratorRange<WTF::HashMap<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableKeysIterator<WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>,unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>>>(&v47, &v44);
  v8 = v47;
  if (v47)
  {
    atomic_fetch_add_explicit(v47, 2u, memory_order_relaxed);
  }

  v43 = v8;
  WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("SELECT subresourceDomainID, COUNT(topFrameDomainID) FROM SubresourceUnderTopFrameDomains WHERE subresourceDomainID IN (", 120, &v43, ") GROUP BY subresourceDomainID", 31, v41);
  WebCore::SQLiteDatabase::prepareStatementSlow();
  v10 = v41[0];
  v41[0] = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v9);
  }

  v11 = v43;
  v43 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v9);
  }

  if (!v45[16])
  {
    while (1)
    {
      v2 = WebCore::SQLiteStatement::step(&v44);
      if (v2 != 100)
      {
        break;
      }

      if (v45[16])
      {
        goto LABEL_106;
      }

      v2 = WebCore::SQLiteStatement::columnInt(&v44);
      if (v2)
      {
        v2 = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<unsigned int>>,(WTF::ShouldValidateKey)1,unsigned int>(*this, v2);
        v25 = v2;
        v26 = *this;
        if (*this)
        {
          v26 += 40 * *(v26 - 4);
        }

        if (v26 != v2)
        {
          if (v45[16])
          {
            goto LABEL_106;
          }

          v2 = WebCore::SQLiteStatement::columnInt(&v44);
          *(v25 + 5) = v2;
        }
      }

      if (v45[16])
      {
        goto LABEL_106;
      }
    }
  }

  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  v40 = v8;
  WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("SELECT subresourceDomainID, COUNT(toDomainID) FROM SubresourceUniqueRedirectsTo WHERE subresourceDomainID IN (", 111, &v40, ") GROUP BY subresourceDomainID", 31, v38);
  WebCore::SQLiteDatabase::prepareStatementSlow();
  v13 = v38[0];
  v38[0] = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v12);
  }

  v14 = v40;
  v40 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v12);
  }

  if (!v42)
  {
    while (1)
    {
      v2 = WebCore::SQLiteStatement::step(v41);
      if (v2 != 100)
      {
        break;
      }

      if (v42)
      {
        goto LABEL_106;
      }

      v2 = WebCore::SQLiteStatement::columnInt(v41);
      if (v2)
      {
        v2 = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<unsigned int>>,(WTF::ShouldValidateKey)1,unsigned int>(*this, v2);
        v27 = v2;
        v28 = *this;
        if (*this)
        {
          v28 += 40 * *(v28 - 4);
        }

        if (v28 != v2)
        {
          if (v42)
          {
            goto LABEL_106;
          }

          v2 = WebCore::SQLiteStatement::columnInt(v41);
          *(v27 + 6) = v2;
        }
      }

      if (v42)
      {
        goto LABEL_106;
      }
    }
  }

  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  v37 = v8;
  WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("SELECT subframeDomainID, COUNT(topFrameDomainID) FROM SubframeUnderTopFrameDomains WHERE subframeDomainID IN (", 111, &v37, ") GROUP BY subframeDomainID", 28, v35);
  WebCore::SQLiteDatabase::prepareStatementSlow();
  v16 = v35[0];
  v35[0] = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v15);
  }

  v17 = v37;
  v37 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v15);
  }

  if (!v39)
  {
    while (1)
    {
      v2 = WebCore::SQLiteStatement::step(v38);
      if (v2 != 100)
      {
        break;
      }

      if (v39)
      {
        goto LABEL_106;
      }

      v2 = WebCore::SQLiteStatement::columnInt(v38);
      if (v2)
      {
        v2 = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<unsigned int>>,(WTF::ShouldValidateKey)1,unsigned int>(*this, v2);
        v29 = v2;
        v30 = *this;
        if (*this)
        {
          v30 += 40 * *(v30 - 4);
        }

        if (v30 != v2)
        {
          if (v39)
          {
            goto LABEL_106;
          }

          v2 = WebCore::SQLiteStatement::columnInt(v38);
          *(v29 + 7) = v2;
        }
      }

      if (v39)
      {
        goto LABEL_106;
      }
    }
  }

  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  v33 = v8;
  WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("SELECT sourceDomainID, COUNT(toDomainID) FROM TopFrameUniqueRedirectsTo WHERE sourceDomainID IN (", 98, &v33, ") GROUP BY sourceDomainID", 26, &v34);
  WebCore::SQLiteDatabase::prepareStatementSlow();
  v19 = v34;
  v34 = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v18);
  }

  v20 = v33;
  v33 = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v18);
  }

  if (!v36)
  {
    while (1)
    {
      v2 = WebCore::SQLiteStatement::step(v35);
      if (v2 != 100)
      {
        break;
      }

      if (v36)
      {
        goto LABEL_106;
      }

      v2 = WebCore::SQLiteStatement::columnInt(v35);
      if (v2)
      {
        v2 = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<unsigned int>>,(WTF::ShouldValidateKey)1,unsigned int>(*this, v2);
        v31 = v2;
        v32 = *this;
        if (*this)
        {
          v32 += 40 * *(v32 - 4);
        }

        if (v32 != v2)
        {
          if (v36)
          {
            goto LABEL_106;
          }

          v2 = WebCore::SQLiteStatement::columnInt(v35);
          *(v31 + 8) = v2;
        }
      }

      if (v36)
      {
        goto LABEL_106;
      }
    }

    if (!v36)
    {
      WebCore::SQLiteStatement::~SQLiteStatement(v35);
    }
  }

  if (!v39)
  {
    WebCore::SQLiteStatement::~SQLiteStatement(v38);
  }

  if (!v42)
  {
    WebCore::SQLiteStatement::~SQLiteStatement(v41);
  }

  if (!v45[16])
  {
    WebCore::SQLiteStatement::~SQLiteStatement(&v44);
  }

  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v18);
  }

  if (!v49)
  {
    WebCore::SQLiteStatement::~SQLiteStatement(v48);
  }
}

void WebKit::ProcessAssertion::acquireAssertion(WebKit::ProcessAssertion *a1, int a2, uint64_t *a3)
{
  if (a2)
  {

    WebKit::ProcessAssertion::acquireAsync(a1, a3);
  }

  else
  {
    WebKit::ProcessAssertion::acquireSync(a1);
    v4 = *a3;
    if (*a3)
    {
      *a3 = 0;
      (*(*v4 + 16))(v4);
      v5 = *(*v4 + 8);

      v5(v4);
    }
  }
}

_DWORD *WTF::RefCounted<WebKit::WebSQLiteDatabaseTracker>::deref(_DWORD *result)
{
  if (*result == 1)
  {
    WebKit::WebSQLiteDatabaseTracker::~WebSQLiteDatabaseTracker((result - 2));

    return WTF::fastFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSQLiteDatabaseTracker::willBeginFirstTransaction(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110EB60;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v9[0] = a1;
  v9[1] = a2;
  v8[0] = a4;
  v8[1] = a5;
  result = WTF::tryMakeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>(v9, a3, v8, a6);
  if (!*a6)
  {
    __break(0xC471u);
  }

  return result;
}

uint64_t WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = *(v4 + 4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a3 + 8);
  if (((v5 | v6) & 0x80000000) != 0 || ((v7 = *(result + 8), v8 = __OFADD__(v5, v6), v9 = v5 + v6, !v8) ? (v10 = 0) : (v10 = 1), (v7 & 0x80000000) != 0 || (v10 & 1) != 0 || (v8 = __OFADD__(v7, v9), v11 = (v7 + v9), v8)))
  {
    *a4 = 0;
  }

  else
  {
    v12 = !v4 || (*(v4 + 16) & 4) != 0;
    return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(v11, v12, *result, v7, v4, *a3, v6, a4);
  }

  return result;
}

uint64_t WTF::tryMakeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v4 = a1[1];
  v5 = v4 != 0;
  v6 = v4 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v13[0] = *a1;
  v13[1] = v6;
  if (v6 >> 31)
  {
    goto LABEL_8;
  }

  v7 = *a2;
  v8 = a3[1];
  v5 = v8 != 0;
  v9 = v8 - 1;
  if (!v5)
  {
    v9 = 0;
  }

  v11[0] = *a3;
  v11[1] = v9;
  v12 = v7;
  if (v9 >> 31)
  {
LABEL_8:
    __break(0xC471u);
    JUMPOUT(0x19D605FCCLL);
  }

  return WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(v13, &v12, v11, a4);
}

uint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>@<X0>(uint64_t result@<X0>, int a2@<W1>, int8x16_t *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, int8x16_t *a6@<X5>, unint64_t a7@<X6>, void *a8@<X8>)
{
  v13 = result;
  v15 = result;
  if (!a2)
  {
    if (result)
    {
      if (result <= 0x7FFFFFEF)
      {
        result = WTF::tryFastCompactMalloc((2 * result + 20));
        v16 = v20;
        if (v20)
        {
          v19 = (v20 + 5);
          *v20 = 2;
          v16[1] = v13;
          *(v16 + 1) = v16 + 5;
          v16[4] = 0;
          result = WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(v19, v15, a3, a4, a5, a6, a7);
        }

        goto LABEL_14;
      }

LABEL_17:
      v16 = 0;
      goto LABEL_14;
    }

LABEL_18:
    v16 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_14;
  }

  if (!result)
  {
    goto LABEL_18;
  }

  if ((result & 0x80000000) != 0)
  {
    goto LABEL_17;
  }

  result = WTF::tryFastCompactMalloc((result + 20));
  v16 = v20;
  if (v20)
  {
    v17 = v20 + 5;
    *v20 = 2;
    v16[1] = v13;
    *(v16 + 1) = v16 + 5;
    v16[4] = 4;
    if (a4)
    {
      if (a4 == 1)
      {
        goto LABEL_22;
      }

      memcpy(v16 + 5, a3, a4);
    }

    while (1)
    {
      if (v15 >= a4)
      {
        v15 -= a4;
        a4 = &v17[a4];
        v20 = a5;
        result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v20, a4);
        v18 = v20;
        if (!v20)
        {
          break;
        }

        v18 = v20[1];
        if (v15 >= v18)
        {
          break;
        }
      }

      __break(1u);
LABEL_22:
      *v17 = a3->i8[0];
    }

    if (a7)
    {
      if (a7 == 1)
      {
        a4[v18] = a6->i8[0];
      }

      else
      {
        result = memcpy(&a4[v18], a6, a7);
      }
    }
  }

LABEL_14:
  *a8 = v16;
  return result;
}

void WebKit::ResourceLoadStatisticsStore::removeDataRecords(uint64_t a1, uint64_t *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  if (WebKit::ResourceLoadStatisticsStore::shouldRemoveDataRecords(a1))
  {
    v4 = WebKit::ResourceLoadStatisticsStore::registrableDomainsToDeleteOrRestrictWebsiteDataFor(v34, a1);
    if (v34[3])
    {
      v5 = 0;
    }

    else
    {
      v5 = v34[7] == 0;
    }

    if (v5 && v34[11] == 0 && v34[15] == 0)
    {
      v8 = *a2;
      *a2 = 0;
      (*(*v8 + 16))(v8);
      (*(*v8 + 8))(v8);
LABEL_14:
      WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor::~RegistrableDomainsToDeleteOrRestrictWebsiteDataFor(v34, v9);
      return;
    }

    if (*(a1 + 724) == 1)
    {
      v24 = qword_1ED640B30;
      if (os_log_type_enabled(qword_1ED640B30, OS_LOG_TYPE_INFO))
      {
        WebKit::domainsToString(&v32, v34);
        WTF::String::utf8();
        if (v33)
        {
          v25 = v33 + 16;
        }

        else
        {
          v25 = 0;
        }

        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = v25;
        _os_log_impl(&dword_19D52D000, v24, OS_LOG_TYPE_INFO, "ResourceLoadStatisticsStore: About to remove data records for %{public}s.", buf, 0xCu);
        v27 = v33;
        v33 = 0;
        if (v27)
        {
          if (*v27 == 1)
          {
            WTF::fastFree(v27, v26);
          }

          else
          {
            --*v27;
          }
        }

        v28 = v32;
        v32 = 0;
        if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v28, v26);
        }
      }

      WebKit::domainsToString(&v31, v34);
      WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("[ITP] About to remove data records for: [", 42, &v31, "].", 3, buf);
      WebKit::ResourceLoadStatisticsStore::debugBroadcastConsoleMessage(a1, 4, buf);
      v30 = buf[0];
      buf[0] = 0;
      if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v30, v29);
      }

      v4 = v31;
      v31 = 0;
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v4 = WTF::StringImpl::destroy(v4, v29);
      }
    }

    *(a1 + 726) = 1;
    v10 = WTF::MonotonicTime::now(v4);
    *(a1 + 256) = v11;
    WTF::RunLoop::mainSingleton(v10);
    v12 = *(a1 + 112);
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
          goto LABEL_19;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v12);
LABEL_19:
      buf[0] = v12;
      WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor::isolatedCopy(&buf[1], v34);
      v15 = *a2;
      *a2 = 0;
      v36 = v15;
      WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 96), a1);
      v16 = *(a1 + 96);
      atomic_fetch_add(v16, 1u);
      v37 = v16;
      v17 = *(a1 + 120);
      while (1)
      {
        v18 = *(v17 + 32);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v23 = *(v17 + 32);
        atomic_compare_exchange_strong_explicit((v17 + 32), &v23, v18 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v23 == v18)
        {
          goto LABEL_22;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v17 + 32));
LABEL_22:
      v38 = v17;
      WTF::Function<void ()(void)>::Function<WebKit::ResourceLoadStatisticsStore::removeDataRecords(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>(&v33, buf);
      WTF::RunLoop::dispatch();
      v20 = v33;
      v33 = 0;
      if (v20)
      {
        (*(*v20 + 8))(v20);
      }

      WebKit::ResourceLoadStatisticsStore::removeDataRecords(WTF::CompletionHandler<void ()(void)> &&)::$_0::~$_0(buf, v19);
      goto LABEL_14;
    }

    __break(0xC471u);
  }

  else
  {
    v21 = *a2;
    *a2 = 0;
    (*(*v21 + 16))(v21);
    v22 = *(*v21 + 8);

    v22(v21);
  }
}

uint64_t WebKit::ResourceLoadStatisticsStore::shouldRemoveDataRecords(WebKit::ResourceLoadStatisticsStore *this)
{
  if (*(this + 726))
  {
    v2 = 0;
  }

  else if (*(this + 32) == 0.0 || (WTF::MonotonicTime::now(this), v4 >= *(this + 22) + *(this + 32)))
  {
    v2 = 1;
  }

  else
  {
    v2 = *(this + 233);
  }

  return v2 & 1;
}

_BYTE *WebKit::ResourceLoadStatisticsStore::registrableDomainsToDeleteOrRestrictWebsiteDataFor(WebKit::ResourceLoadStatisticsStore *this, uint64_t a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 656);
  WTF::WallTime::now(this);
  v6 = v4 + v5;
  v7 = *(a2 + 240);
  v8 = v7 > v6 || v7 == 0.0;
  if (!v8)
  {
    *(a2 + 240) = 0;
  }

  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  WebKit::DatabaseUtilities::beginTransactionIfNecessary(a2, v50);
  WebKit::ResourceLoadStatisticsStore::domains(&v48);
  v46 = 0;
  v47 = 0;
  v9 = v6;
  if (v49)
  {
    v13 = v48;
    v14 = 40 * v49;
    v9 = v6;
    do
    {
      if ((WebKit::ResourceLoadStatisticsStore::shouldExemptFromWebsiteDataDeletion(a2, (v13 + 8)) & 1) == 0)
      {
        v15 = *(v13 + 24);
        if (v15 == 0.0 || WebKit::ResourceLoadStatisticsStore::hasStatisticsExpired(a2, 0, v15))
        {
          v16 = *(v13 + 16);
          if (v16 <= 0.0)
          {
            v17 = 0.0;
          }

          else
          {
            v17 = *(v13 + 16);
          }

          if (v9 > v17 && v16 > 0.0)
          {
            v9 = v17;
          }

          if (WebKit::ResourceLoadStatisticsStore::shouldRemoveAllWebsiteDataFor(a2, v13, v7 > v6))
          {
            v19 = *(this + 3);
            if (v19 == *(this + 2))
            {
              WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::RegistrableDomain&>(this, v13 + 8);
            }

            else
            {
              v21 = *this;
              v22 = *(v13 + 8);
              if (v22)
              {
                atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
              }

              v23 = *(this + 3);
              *(v21 + 8 * v19) = v22;
              *(this + 3) = v23 + 1;
            }

            v20 = *(this + 11);
            if (v20 == *(this + 10))
            {
              WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::RegistrableDomain&>(this + 32, v13 + 8);
            }

            else
            {
              v24 = *(this + 4);
              v25 = *(v13 + 8);
              if (v25)
              {
                atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
              }

              v26 = *(this + 11);
              *(v24 + 8 * v20) = v25;
              *(this + 11) = v26 + 1;
            }
          }

          else
          {
            if (WebKit::ResourceLoadStatisticsStore::shouldRemoveAllButCookiesFor(a2, v13, v7 > v6))
            {
              v27 = *(this + 11);
              if (v27 == *(this + 10))
              {
                WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::RegistrableDomain&>(this + 32, v13 + 8);
              }

              else
              {
                v29 = *(this + 4);
                v30 = *(v13 + 8);
                if (v30)
                {
                  atomic_fetch_add_explicit(v30, 2u, memory_order_relaxed);
                }

                v31 = *(this + 11);
                *(v29 + 8 * v27) = v30;
                *(this + 11) = v31 + 1;
              }

              WebKit::ResourceLoadStatisticsStore::setIsScheduledForAllScriptWrittenStorageRemoval(a2, (v13 + 8));
            }

            if (WebKit::ResourceLoadStatisticsStore::shouldEnforceSameSiteStrictFor(a2, v13, v7 > v6))
            {
              v28 = *(this + 15);
              if (v28 == *(this + 14))
              {
                WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::RegistrableDomain&>(this + 48, v13 + 8);
              }

              else
              {
                v32 = *(this + 6);
                v33 = *(v13 + 8);
                if (v33)
                {
                  atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
                }

                v34 = *(this + 15);
                *(v32 + 8 * v28) = v33;
                *(this + 15) = v34 + 1;
              }

              if (*(a2 + 724) == 1)
              {
                v35 = v8;
                v36 = qword_1ED640B30;
                if (os_log_type_enabled(qword_1ED640B30, OS_LOG_TYPE_INFO))
                {
                  WTF::String::utf8();
                  v37 = v45 ? v45 + 16 : 0;
                  *buf = 136446210;
                  *&buf[4] = v37;
                  _os_log_impl(&dword_19D52D000, v36, OS_LOG_TYPE_INFO, "ResourceLoadStatisticsStore: Scheduled %{public}s to have its cookies set to SameSite=strict.", buf, 0xCu);
                  v39 = v45;
                  v45 = 0;
                  if (v39)
                  {
                    if (*v39 == 1)
                    {
                      WTF::fastFree(v39, v38);
                    }

                    else
                    {
                      --*v39;
                    }
                  }
                }

                v40 = *(v13 + 8);
                if (v40)
                {
                  atomic_fetch_add_explicit(v40, 2u, memory_order_relaxed);
                }

                v44 = v40;
                WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("Scheduled '", 12, &v44, "' to have its cookies set to SameSite=strict'.", 47, buf);
                WebKit::ResourceLoadStatisticsStore::debugBroadcastConsoleMessage(a2, 4, buf);
                v42 = *buf;
                *buf = 0;
                if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v42, v41);
                }

                v43 = v44;
                v44 = 0;
                if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v43, v41);
                }

                v8 = v35;
              }
            }
          }

          if (!v8 && *(v13 + 33) == 1)
          {
            if (HIDWORD(v47) == v47)
            {
              WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,unsigned int &>(&v46, v13);
            }

            else
            {
              *(v46 + HIDWORD(v47)) = *v13;
              ++HIDWORD(v47);
            }
          }
        }
      }

      v13 += 40;
      v14 -= 40;
    }

    while (v14);
  }

  if ((*(a2 + 233) & 1) == 0 && v6 - v9 < *(a2 + 176))
  {
    WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(this + 32, 0);
  }

  WebKit::ResourceLoadStatisticsStore::clearGrandfathering(a2, v46, HIDWORD(v47));
  v11 = v46;
  if (v46)
  {
    v46 = 0;
    LODWORD(v47) = 0;
    WTF::fastFree(v11, v10);
  }

  WTF::Vector<WebKit::ResourceLoadStatisticsStore::DomainData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v48, v10);
  return WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v50);
}

void *WebKit::DatabaseUtilities::beginTransactionIfNecessary@<X0>(WebKit::DatabaseUtilities *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 88) == 1)
  {
    result = WTF::fastMalloc(0x10);
    *result = &unk_1F10FF7E0;
  }

  else
  {
    WebCore::SQLiteTransaction::begin((this + 80));
    result = WTF::fastMalloc(0x10);
    *result = &unk_1F10FF808;
    result[1] = this;
  }

  *a2 = result;
  *(a2 + 8) = 1;
  return result;
}

void WebKit::ResourceLoadStatisticsStore::domains(WebKit::ResourceLoadStatisticsStore *this)
{
  *this = 0;
  *(this + 1) = 0;
  WebCore::SQLiteDatabase::prepareStatement();
  if (!v19)
  {
    while (1)
    {
      v2 = WebCore::SQLiteStatement::step(v18);
      if (v2 != 100)
      {
        break;
      }

      if (!v19)
      {
        v2 = WebCore::SQLiteStatement::columnInt(v18);
        v14 = v2;
        if (!v19)
        {
          WebCore::SQLiteStatement::columnText(v18);
          v2 = WebCore::RegistrableDomain::uncheckedCreateFromRegistrableDomainString(&v13, &v15);
          if (!v19)
          {
            v2 = WebCore::SQLiteStatement::columnDouble(v18);
            *&v16 = v3;
            if (!v19)
            {
              v2 = WebCore::SQLiteStatement::columnDouble(v18);
              *(&v16 + 1) = v4;
              if (!v19)
              {
                v2 = WebCore::SQLiteStatement::columnInt(v18);
                LOBYTE(v17) = v2 != 0;
                if (!v19)
                {
                  v2 = WebCore::SQLiteStatement::columnInt(v18);
                  BYTE1(v17) = v2 != 0;
                  if (!v19)
                  {
                    v2 = WebCore::SQLiteStatement::columnInt(v18);
                    v5 = v2 >= 3 ? 1 : v2;
                    BYTE2(v17) = v5;
                    if (!v19)
                    {
                      HIDWORD(v17) = WebCore::SQLiteStatement::columnInt(v18);
                      v7 = *(this + 3);
                      if (v7 == *(this + 2))
                      {
                        WTF::Vector<WebKit::ResourceLoadStatisticsStore::DomainData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::ResourceLoadStatisticsStore::DomainData>(this, &v14);
                      }

                      else
                      {
                        v8 = v7 + 1;
                        v9 = *this + 40 * v7;
                        *v9 = v14;
                        v10 = v15;
                        v15 = 0;
                        *(v9 + 8) = v10;
                        v11 = v17;
                        *(v9 + 16) = v16;
                        *(v9 + 32) = v11;
                        *(this + 3) = v8;
                      }

                      v12 = v15;
                      v15 = 0;
                      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v12, v6);
                      }

                      v2 = v13;
                      v13 = 0;
                      if (v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        v2 = WTF::StringImpl::destroy(v2, v6);
                      }

                      if (!v19)
                      {
                        continue;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      mpark::throw_bad_variant_access(v2);
    }

    if (!v19)
    {
      WebCore::SQLiteStatement::~SQLiteStatement(v18);
    }
  }
}

void WebKit::ResourceLoadStatisticsStore::clearGrandfathering(uint64_t a1, unsigned int *a2, unsigned int a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    WebKit::buildList<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v15, a2, a3);
    v4 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
    }

    v12 = v4;
    WTF::makeString<WTF::ASCIILiteral,WTF::String,char>("UPDATE ObservedDomains SET grandfathered = 0 WHERE domainID IN (", 65, &v12, 41, buf);
    WebCore::SQLiteDatabase::prepareStatementSlow();
    v6 = *buf;
    *buf = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v5);
    }

    v7 = v12;
    v12 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v5);
    }

    if (!v14)
    {
      if (WebCore::SQLiteStatement::step(v13) != 101)
      {
        v8 = qword_1ED641148;
        if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
        {
          v9 = *(a1 + 664);
          Error = WebCore::SQLiteDatabase::lastError((a1 + 16));
          ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((a1 + 16));
          *buf = 134218755;
          *&buf[4] = a1;
          v17 = 2048;
          v18 = v9;
          v19 = 1024;
          v20 = Error;
          v21 = 2081;
          v22 = ErrorMsg;
          _os_log_error_impl(&dword_19D52D000, v8, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::clearGrandfathering: failed to step statement", buf, 0x26u);
        }
      }

      if (!v14)
      {
        WebCore::SQLiteStatement::~SQLiteStatement(v13);
      }
    }

    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, v5);
      }
    }
  }
}

uint64_t WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, unint64_t a2)
{
  if (*(result + 8) > a2)
  {
    v3 = result;
    v4 = *(result + 12);
    if (v4 > a2)
    {
      result = WTF::VectorDestructor<true,WTF::String>::destruct((*result + 8 * a2), (*result + 8 * v4));
      *(v3 + 12) = a2;
      LODWORD(v4) = a2;
    }

    v5 = *v3;
    if (a2)
    {
      if (a2 >> 29)
      {
        __break(0xC471u);
        return result;
      }

      result = WTF::fastMalloc((8 * a2));
      *(v3 + 8) = a2;
      *v3 = result;
      if (result != v5)
      {
        result = WTF::VectorTypeOperations<WebCore::RegistrableDomain>::move(v5, (v5 + 8 * v4), result);
      }
    }

    if (v5)
    {
      if (*v3 == v5)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      return WTF::fastFree(v5, a2);
    }
  }

  return result;
}

uint64_t WTF::Vector<WebKit::ResourceLoadStatisticsStore::DomainData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WebKit::ResourceLoadStatisticsStore::DomainData>::destruct(*a1, (*a1 + 40 * v3));
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

_BYTE *WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(_BYTE *a1)
{
  if (a1[8] == 1)
  {
    (*(**a1 + 16))();
  }

  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WebKit::ResourceLoadStatisticsStore::pruneStatisticsIfNeeded(WebCore::SQLiteStatement **this)
{
  v34 = *MEMORY[0x1E69E9840];
  WebKit::DatabaseUtilities::scopedStatement(this, this + 41, "pruneStatisticsIfNeeded", &v26);
  if (v26 && WebCore::SQLiteStatement::step(v26) == 100 && this[19] < WebCore::SQLiteStatement::columnInt(v26))
  {
    WebCore::SQLiteDatabase::prepareStatement();
    if (v25 || (v4 = WebCore::SQLiteStatement::bindInt(v24), v4))
    {
      v3 = qword_1ED641148;
      if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
      {
        v12 = this[83];
        Error = WebCore::SQLiteDatabase::lastError((this + 2));
        ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 2));
        *buf = 134218755;
        *&buf[4] = this;
        v28 = 2048;
        v29 = v12;
        v30 = 1024;
        v31 = Error;
        v32 = 2081;
        v33 = ErrorMsg;
        _os_log_error_impl(&dword_19D52D000, v3, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::pruneStatisticsIfNeeded: failed to bind parameter", buf, 0x26u);
      }
    }

    else
    {
      v22 = 0;
      v23 = 0;
      while (1)
      {
        if (v25)
        {
LABEL_38:
          mpark::throw_bad_variant_access(v4);
        }

        v4 = WebCore::SQLiteStatement::step(v24);
        if (v4 != 100)
        {
          break;
        }

        if (v25)
        {
          goto LABEL_38;
        }

        v4 = WebCore::SQLiteStatement::columnInt(v24);
        *buf = v4;
        if (HIDWORD(v23) == v23)
        {
          v4 = WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,int>(&v22, buf);
        }

        else
        {
          *(v22 + HIDWORD(v23)) = v4;
          ++HIDWORD(v23);
        }
      }

      WebKit::buildList<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v21, v22, HIDWORD(v23));
      v5 = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
      }

      v18 = v5;
      WTF::makeString<WTF::ASCIILiteral,WTF::String,char>("DELETE from ObservedDomains WHERE domainID IN (", 48, &v18, 41, buf);
      WebCore::SQLiteDatabase::prepareStatementSlow();
      v7 = *buf;
      *buf = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v6);
      }

      v8 = v18;
      v18 = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v6);
      }

      if (v20 || WebCore::SQLiteStatement::step(v19) != 101)
      {
        v9 = qword_1ED641148;
        if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
        {
          v15 = this[83];
          v16 = WebCore::SQLiteDatabase::lastError((this + 2));
          v17 = WebCore::SQLiteDatabase::lastErrorMsg((this + 2));
          *buf = 134218755;
          *&buf[4] = this;
          v28 = 2048;
          v29 = v15;
          v30 = 1024;
          v31 = v16;
          v32 = 2081;
          v33 = v17;
          _os_log_error_impl(&dword_19D52D000, v9, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::pruneStatisticsIfNeeded: failed to step statement", buf, 0x26u);
        }
      }

      if (!v20)
      {
        WebCore::SQLiteStatement::~SQLiteStatement(v19);
      }

      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v10);
      }

      v11 = v22;
      if (v22)
      {
        v22 = 0;
        LODWORD(v23) = 0;
        WTF::fastFree(v11, v10);
      }
    }

    if (!v25)
    {
      WebCore::SQLiteStatement::~SQLiteStatement(v24);
    }
  }

  return MEMORY[0x19EB0CD50](&v26);
}

_DWORD *WebKit::ResourceLoadStatisticsStore::processStatisticsAndDataRecords(void)::$_0::operator()(_DWORD *result)
{
  if (result)
  {
    v1 = *(result + 1);
    if (v1)
    {
      ++*(v1 + 104);
      WebKit::ResourceLoadStatisticsStore::pruneStatisticsIfNeeded(v1);
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WebKit::ResourceLoadStatisticsStore::logTestingEvent(v1);
      if (v3)
      {
        if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v3, v2);
        }
      }

      return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref((v1 + 104));
    }
  }

  return result;
}

void WebKit::DatabaseUtilities::scopedStatement(uint64_t a1@<X0>, WebCore::SQLiteStatement **a2@<X1>, uint64_t a3@<X4>, WebCore::SQLiteStatementAutoResetScope *a4@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  if (v6)
  {
    goto LABEL_2;
  }

  WebCore::SQLiteDatabase::prepareHeapStatement();
  if (v13)
  {
    v11 = qword_1ED640FE0;
    if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      v15 = a1;
      v16 = 2080;
      v17 = a3;
      v18 = 2082;
      ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((a1 + 16));
      _os_log_error_impl(&dword_19D52D000, v11, OS_LOG_TYPE_ERROR, "%p - DatabaseUtilities::%s failed to prepare statement, error message: %{public}s", buf, 0x20u);
    }

    WebCore::SQLiteStatementAutoResetScope::SQLiteStatementAutoResetScope(a4, 0);
  }

  else
  {
    v9 = v12;
    v12 = 0;
    v10 = *a2;
    *a2 = v9;
    if (v10)
    {
      WebCore::SQLiteStatement::operator delete(v10);
    }
  }

  if (!v13)
  {
    if (v12)
    {
      WebCore::SQLiteStatement::operator delete(v12);
    }
  }

  if (!v13)
  {
    v6 = *a2;
LABEL_2:
    WebCore::SQLiteStatementAutoResetScope::SQLiteStatementAutoResetScope(a4, v6);
  }
}

uint64_t WebKit::ResourceLoadStatisticsStore::logTestingEvent(WTF::RunLoop *a1)
{
  WTF::RunLoop::mainSingleton(a1);
  v2 = *(a1 + 14);
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
        goto LABEL_4;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_4:
    WTF::String::isolatedCopy();
    v5 = WTF::fastMalloc(0x18);
    *v5 = &unk_1F1104798;
    v5[1] = v2;
    v6 = v11;
    v10 = 0;
    v11 = 0;
    v5[2] = v6;
    v12 = v5;
    WTF::RunLoop::dispatch();
    v8 = v12;
    v12 = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    return WebKit::ResourceLoadStatisticsStore::logTestingEvent(WTF::String &&)::$_0::~$_0(&v10, v7);
  }

  else
  {
    result = 114;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::ResourceLoadStatisticsStore::logTestingEvent(WTF::String &&)::$_0::~$_0(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v4);
  }

  return a1;
}

_DWORD *WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(_DWORD *result)
{
  if (*result == 1)
  {
    WebKit::ResourceLoadStatisticsStore::~ResourceLoadStatisticsStore((result - 26));

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::processStatisticsAndDataRecords(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1104590;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::logTestingEvent(WTF::String &&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1104798;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v4);
  }

  return WTF::fastFree(this, a2);
}

void WebKit::WebProcessPool::backlightLevelDidChangeCallback(WebKit::WebProcessPool *this, __CFNotificationCenter *a2, void *a3, const __CFString *a4, const void *a5, const __CFDictionary *a6)
{
  v6 = WTF::dynamic_objc_cast<WKProcessPoolWeakObserver>(a2);
  if (v6)
  {
    v17 = v6;
    v7 = v6;
    v8 = v17[1];
    if (v8 && (v9 = *(v8 + 8)) != 0)
    {
      CFRetain(*(v9 - 8));

      softLinkBKSDisplayBrightnessGetCurrent();
      v11 = *(v9 + 68);
      if (v11)
      {
        v12 = v10;
        v13 = *(v9 + 56);
        v14 = 8 * v11;
        do
        {
          v15 = *v13;
          v16 = *(*v13 + 80);
          if (v16 && (*(v16 + 104) & 1) != 0 || *(v15 + 88))
          {
            v18 = v12;
            WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::BacklightLevelDidChange>(v15, &v18, 0, 0);
          }

          ++v13;
          v14 -= 8;
        }

        while (v14);
      }

      CFRelease(*(v9 - 8));
    }

    else
    {
    }
  }
}

uint64_t WTF::dynamic_objc_cast<WKProcessPoolWeakObserver>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::sendMessageAfterResuming(uint64_t a1, uint64_t a2, IPC::Encoder **a3)
{
  v3 = *(a1 + 80);
  if ((!v3 || (*(v3 + 104) & 1) == 0) && !*(a1 + 88))
  {
    return 0;
  }

  v4 = *(a1 + 408);
  *(a1 + 408) = v4 + 1;
  v5 = *a3;
  *a3 = 0;
  v12 = v4;
  v13 = v5;
  WTF::HashMap<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::pair<unsigned int,std::unique_ptr<IPC::Encoder>>,WTF::DefaultHash<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTraits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTraits<std::pair<unsigned int,std::unique_ptr<IPC::Encoder>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::pair<unsigned int,std::unique_ptr<IPC::Encoder>>>((a1 + 400), a2, &v12, v11);
  v7 = v13;
  v13 = 0;
  if (v7)
  {
    IPC::Encoder::~Encoder(v7, v6);
    bmalloc::api::tzoneFree(v9, v10);
  }

  return 1;
}

uint64_t WTF::computeHash<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(unsigned __int8 *a1, unsigned int a2)
{
  v2 = -1640531527;
  v6 = -1640531527;
  v7 = 0;
  v8 = 0;
  if (a2)
  {
    v3 = a2;
    do
    {
      v4 = *a1++;
      v2 = ((v2 + v4) ^ ((v2 + v4) << 16)) + (((v2 + v4) ^ ((v2 + v4) << 16)) >> 11);
      --v3;
    }

    while (v3);
    v6 = v2;
  }

  return WTF::SuperFastHash::hash(&v6);
}

uint64_t sub_19D607C54()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19D607C8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19D607CC4()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19D607D04()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19D607D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WebPage.BackForwardList.Item.ID(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_19E6CCF28();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_19D607E64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for WebPage.BackForwardList.Item.ID(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_19E6CCF28();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_19D607F6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_19E6CCF78();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_19D607FD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_19E6CCF78();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void *sub_19D60805C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_19D6080A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0175E8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_19D608138(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19D608158(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_19D608184()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void *sub_19D6081BC()
{
  if (MEMORY[0x1E69E7D58])
  {
    return &unk_1F10E5390;
  }

  else
  {
    return (MEMORY[0x1E69E7CA8] + 8);
  }
}

uint64_t sub_19D6081E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017868);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_19D6082E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19D608320()
{
  v1 = sub_19E6CCFD8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  swift_unownedRelease();

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_19D6083CC()
{
  v1 = sub_19E6CCF78();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_19D608490()
{
  v1 = sub_19E6CCF78();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_19D6085A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017738);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_19D608620(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017738);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_19D60869C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19D608710()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB017930);
  swift_getAssociatedTypeWitness();
  sub_19E6CD378();
  sub_19D62BBDC();
  swift_getAssociatedConformanceWitness();
  return swift_getWitnessTable();
}

uint64_t sub_19D6087E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19D608820()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19D608878()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19D6088B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19D60890C()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_19D60896C()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_19D6089F8()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19D60CC38(char a1)
{
  if (a1)
  {
    if ((a1 & 2) != 0)
    {
      v1 = 3;
      if ((a1 & 4) == 0)
      {
LABEL_13:
        if ((a1 & 8) == 0 || (v1 & 4) != 0)
        {
          return v1;
        }

        return v1 | 4;
      }
    }

    else
    {
      v1 = 2;
      if ((a1 & 4) == 0)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_12;
  }

  if ((a1 & 2) != 0)
  {
    v1 = 1;
    if ((a1 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v1 = 0;
  if ((a1 & 4) != 0)
  {
LABEL_12:
    v1 |= 8uLL;
    goto LABEL_13;
  }

LABEL_7:
  if ((a1 & 8) != 0)
  {
    return v1 | 4;
  }

  return v1;
}

uint64_t sub_19D60CC94()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t (*sub_19D60CD24(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, void *a2)
{
  v6 = swift_allocObject();
  v6[2] = a3;
  v6[3] = a1;
  v6[4] = a2;

  return sub_19D60D0AC;
}

uint64_t sub_19D60CD98(uint64_t a1, void *a2, void (*a3)(void *), uint64_t a4, uint64_t a5)
{
  v25 = a4;
  v26 = a3;
  v24 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0175D0);
  v7 = sub_19E6CD948();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v23 - v9);
  v11 = sub_19E6CD6C8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - v14;
  v16 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v11);
  if ((*(v16 + 48))(v15, 1, a5) == 1)
  {
    v19 = v26;
    result = (*(v12 + 8))(v15, v11);
    v21 = v24;
    if (v24)
    {
      *v10 = v24;
      swift_storeEnumTagMultiPayload();
      v22 = v21;
      v19(v10);
      return (*(v8 + 8))(v10, v7);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    (*(v16 + 32))(v18, v15, a5);
    (*(v16 + 16))(v10, v18, a5);
    swift_storeEnumTagMultiPayload();
    v26(v10);
    (*(v8 + 8))(v10, v7);
    return (*(v16 + 8))(v18, a5);
  }

  return result;
}

uint64_t (*sub_19D60D0B8(uint64_t a1, uint64_t a2))(uint64_t a1, id a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  return sub_19D60D124;
}

uint64_t sub_19D60D124(uint64_t a1, id a2)
{
  v3 = *(v2 + 16);
  if (a2)
  {
    *&v7 = a2;
    v9 = 1;
    v4 = a2;
LABEL_3:
    v3(&v7);
    return sub_19D60D358(&v7, &qword_1EB0175C8);
  }

  sub_19D60D254(a1, &v7);
  if (!v8)
  {
    sub_19D60D358(&v7, &qword_1EB0175C0);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0175C0);
    v6 = swift_allocObject();
    *&v7 = v6;
    *(v6 + 16) = 0u;
    *(v6 + 32) = 0u;
    v9 = 0;
    goto LABEL_3;
  }

  sub_19D60D3B8(&v7, v10);
  sub_19D60D3C8(v10, &v7);
  v9 = 0;
  v3(&v7);
  sub_19D60D358(&v7, &qword_1EB0175C8);
  return __swift_destroy_boxed_opaque_existential_0(v10);
}

uint64_t sub_19D60D254(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0175C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_19D60D358(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_OWORD *sub_19D60D3B8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_19D60D3C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

WebKit::URLScheme_optional __swiftcall URLScheme.init(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = v1;
  v5 = objc_opt_self();
  v6 = sub_19E6CD4C8();
  LODWORD(v5) = [v5 _isValidCustomScheme_];

  if (!v5)
  {

    countAndFlagsBits = 0;
    object = 0;
  }

  *v4 = countAndFlagsBits;
  v4[1] = object;
  result.value.rawValue._object = v8;
  result.value.rawValue._countAndFlagsBits = v7;
  result.is_nil = v9;
  return result;
}

uint64_t URLScheme.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static URLScheme.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_19E6CD878();
  }
}

uint64_t URLScheme.hashValue.getter()
{
  sub_19E6CD918();
  sub_19E6CD518();
  return sub_19E6CD938();
}

uint64_t sub_19D60D5AC()
{
  sub_19E6CD918();
  sub_19E6CD518();
  return sub_19E6CD938();
}

uint64_t sub_19D60D600()
{
  sub_19E6CD918();
  sub_19E6CD518();
  return sub_19E6CD938();
}

unint64_t sub_19D60D64C()
{
  result = qword_1EB0175D8;
  if (!qword_1EB0175D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0175D8);
  }

  return result;
}

uint64_t sub_19D60D6A0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_19E6CD878();
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_19D60D6DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_19D60D724(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_19D60D798(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 3 && *(a1 + 16))
  {
    return (*a1 + 3);
  }

  v3 = ((2 * ((*(a1 + 8) & 0x1000000000000000) != 0)) | ((*(a1 + 8) >> 60) >> 1) & 1) ^ 3;
  if (v3 >= 2)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_19D60D7EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    if (a3 >= 3)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((2 * a2) & 2 | 1u) << 60;
    }
  }

  return result;
}

id WKPDFConfiguration.rect.getter@<X0>(uint64_t a1@<X8>)
{
  [v1 rect];
  result = CGRectEqualToRect(v9, *MEMORY[0x1E695F050]);
  v4 = result;
  v5 = 0uLL;
  v6 = 0uLL;
  if ((result & 1) == 0)
  {
    result = [v1 rect];
    *(&v5 + 1) = v7;
    *(&v6 + 1) = v8;
  }

  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

id sub_19D60D8F8@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  [*a1 rect];
  result = CGRectEqualToRect(v10, *MEMORY[0x1E695F050]);
  v5 = result;
  v6 = 0uLL;
  v7 = 0uLL;
  if ((result & 1) == 0)
  {
    result = [v3 rect];
    *(&v6 + 1) = v8;
    *(&v7 + 1) = v9;
  }

  *a2 = v6;
  *(a2 + 16) = v7;
  *(a2 + 32) = v5;
  return result;
}

id sub_19D60D974(uint64_t a1, id *a2)
{
  if (*(a1 + 32))
  {
    v2 = MEMORY[0x1E695F050];
  }

  else
  {
    v2 = a1;
  }

  return [*a2 setRect_];
}

id WKPDFConfiguration.rect.setter(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = MEMORY[0x1E695F050];
  }

  else
  {
    v2 = a1;
  }

  return [v1 setRect_];
}

void (*WKPDFConfiguration.rect.modify(uint64_t *a1))(id **a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v2;
  [v2 rect];
  v13 = **&MEMORY[0x1E695F050];
  *(v5 + 40) = *MEMORY[0x1E695F050];
  *(v5 + 48) = v13.origin.y;
  *(v5 + 56) = v13.size.width;
  *(v5 + 64) = v13.size.height;
  v6 = CGRectEqualToRect(v12, v13);
  v7 = 0uLL;
  v8 = 0uLL;
  if (!v6)
  {
    [v2 rect];
    *(&v7 + 1) = v9;
    *(&v8 + 1) = v10;
  }

  *v5 = v7;
  *(v5 + 16) = v8;
  *(v5 + 32) = v6;
  return sub_19D60DAA4;
}

void sub_19D60DAA4(id **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = (*a1 + 3);
  v5 = (*a1 + 2);
  v6 = (*a1 + 1);
  v7 = (*a1 + 5);
  v8 = (*a1 + 6);
  v9 = (*a1 + 7);
  v10 = (*a1 + 8);
  if (*(*a1 + 32))
  {
    v11 = (*a1 + 8);
  }

  else
  {
    v11 = (*a1 + 3);
  }

  if (*(*a1 + 32))
  {
    v12 = (*a1 + 7);
  }

  else
  {
    v12 = (*a1 + 2);
  }

  if (*(*a1 + 32))
  {
    v13 = (*a1 + 6);
  }

  else
  {
    v13 = (*a1 + 1);
  }

  if (v3)
  {
    v14 = v7;
  }

  else
  {
    v14 = v2;
  }

  v15 = v3 == 0;
  if (v3)
  {
    v16 = v10;
  }

  else
  {
    v16 = v4;
  }

  if (v15)
  {
    v17 = v5;
  }

  else
  {
    v17 = v9;
  }

  if (v15)
  {
    v18 = v6;
  }

  else
  {
    v18 = v8;
  }

  if (v15)
  {
    v19 = v2;
  }

  else
  {
    v19 = v7;
  }

  if (a2)
  {
    v16 = v11;
    v17 = v12;
    v18 = v13;
    v19 = v14;
  }

  [v2[9] setRect_];

  free(v2);
}

uint64_t WKWebView.callAsyncJavaScript(_:arguments:in:in:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v9 = a6;
  v10 = a5;
  v11 = a4;
  if (a6)
  {
    v22 = v8;
    v23 = a4;
    v14 = swift_allocObject();
    *(v14 + 16) = v9;
    *(v14 + 24) = a7;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_19D610248;
    *(v15 + 24) = v14;
    sub_19E6CD5B8();
    sub_19D610298(v9);

    sub_19E6CD5A8();
    sub_19E6CD548();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v16 = sub_19D60D0B8(sub_19D610270, v15);
    v9 = v17;

    v10 = a5;
    v8 = v22;
    v11 = v23;
  }

  else
  {
    v16 = 0;
  }

  v18 = sub_19E6CD4C8();
  v19 = sub_19E6CD488();
  if (v16)
  {
    aBlock[4] = v16;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_19D60DDB4;
    aBlock[3] = &block_descriptor;
    v20 = _Block_copy(aBlock);
  }

  else
  {
    v20 = 0;
  }

  [v8 callAsyncJavaScript:v18 arguments:v19 inFrame:v11 inContentWorld:v10 completionHandler:{v20, v22, v23}];
  _Block_release(v20);

  return sub_19D610220(v16);
}

uint64_t sub_19D60DDB4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v8 = a2;
    sub_19D60D3B8(&v8, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  swift_unknownObjectRetain();
  v6 = a3;
  v5(v10, a3);

  return sub_19D610494(v10);
}

void WKWebView.createPDF(configuration:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;

  v8 = sub_19D60CD24(sub_19D6102A8, v7, MEMORY[0x1E6969080]);
  v10 = v9;

  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v10;
  v13[4] = sub_19D6102AC;
  v13[5] = v11;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_19D60DF90;
  v13[3] = &block_descriptor_12;
  v12 = _Block_copy(v13);

  [v3 createPDFWithConfiguration:a1 completionHandler:v12];
  _Block_release(v12);
}

uint64_t sub_19D60DF90(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_19E6CCF48();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_19D61042C(v4, v8);
}

void WKWebView.createWebArchiveData(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  v6 = sub_19D60CD24(sub_19D6105B8, v5, MEMORY[0x1E6969080]);
  v8 = v7;

  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v8;
  v11[4] = sub_19D61059C;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_19D60DF90;
  v11[3] = &block_descriptor_23;
  v10 = _Block_copy(v11);

  [v2 createWebArchiveDataWithCompletionHandler_];
  _Block_release(v10);
}

uint64_t WKWebView.evaluateJavaScript(_:in:in:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t a1, id a2), uint64_t a6)
{
  v7 = v6;
  v8 = a5;
  v9 = a4;
  if (a5)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v8;
    *(v12 + 24) = a6;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_19D610598;
    *(v13 + 24) = v12;
    sub_19E6CD5B8();
    sub_19D610298(v8);

    sub_19E6CD5A8();
    sub_19E6CD548();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v8 = sub_19D60D0B8(sub_19D6105BC, v13);
    v15 = v14;

    v16 = sub_19E6CD4C8();
    if (v8)
    {
      aBlock[4] = v8;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_19D60DDB4;
      aBlock[3] = &block_descriptor_26;
      v17 = _Block_copy(aBlock);
    }

    else
    {
      v17 = 0;
    }

    v9 = a4;
  }

  else
  {
    v16 = sub_19E6CD4C8();
    v17 = 0;
  }

  [v7 evaluateJavaScript:v16 inFrame:a3 inContentWorld:v9 completionHandler:v17];
  _Block_release(v17);

  return sub_19D610220(v8);
}

void WKWebView.find(_:configuration:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_19E6CD4C8();
  v11[4] = a4;
  v11[5] = a5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_19D60E470;
  v11[3] = &block_descriptor_37;
  v10 = _Block_copy(v11);

  [v5 findString:v9 withConfiguration:a3 completionHandler:v10];
  _Block_release(v10);
}

void sub_19D60E470(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t WKWebView.callAsyncJavaScript(_:arguments:in:contentWorld:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[27] = a6;
  v7[28] = v6;
  v7[25] = a4;
  v7[26] = a5;
  v7[23] = a2;
  v7[24] = a3;
  v7[22] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0175E0);
  v7[29] = v8;
  v7[30] = *(v8 - 8);
  v7[31] = swift_task_alloc();
  sub_19E6CD5B8();
  v7[32] = sub_19E6CD5A8();
  v10 = sub_19E6CD548();
  v7[33] = v10;
  v7[34] = v9;

  return MEMORY[0x1EEE6DFA0](sub_19D60E5E4, v10, v9);
}

uint64_t sub_19D60E5E4()
{
  v1 = v0;
  v2 = v0[30];
  v3 = v0[31];
  v4 = v0 + 2;
  v5 = v0 + 18;
  v6 = v0[29];
  v13 = v1[27];
  v11 = v1[28];
  v12 = v1[26];
  v10 = sub_19E6CD4C8();
  v1[35] = v10;
  v7 = sub_19E6CD488();
  v1[36] = v7;
  v1[2] = v1;
  v1[7] = v5;
  v1[3] = sub_19D60E800;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0175C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0175D0);
  sub_19E6CD558();
  (*(v2 + 32))(boxed_opaque_existential_0, v3, v6);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_19D60EA4C;
  v1[13] = &block_descriptor_40;
  [v11 callAsyncJavaScript:v10 arguments:v7 inFrame:v12 inContentWorld:v13 completionHandler:?];
  (*(v2 + 8))(boxed_opaque_existential_0, v6);

  return MEMORY[0x1EEE6DEC8](v4);
}

uint64_t sub_19D60E800()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 296) = v2;
  v3 = *(v1 + 272);
  v4 = *(v1 + 264);
  if (v2)
  {
    v5 = sub_19D60E9BC;
  }

  else
  {
    v5 = sub_19D60E930;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_19D60E930()
{
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 176);

  v4 = *(v0 + 160);
  *v3 = *(v0 + 144);
  v3[1] = v4;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_19D60E9BC()
{
  v1 = v0[36];
  v2 = v0[35];

  swift_willThrow();

  v3 = v0[1];

  return v3();
}

void sub_19D60EA4C(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    *&v8 = a3;
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0175E0);
    sub_19E6CD568();
  }

  else
  {
    if (a2)
    {
      *(&v9 + 1) = swift_getObjectType();
      *&v8 = a2;
      sub_19D60D3B8(&v8, &v6);
    }

    else
    {
      v6 = 0u;
      v7 = 0u;
    }

    v8 = v6;
    v9 = v7;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0175E0);
    sub_19E6CD578();
  }
}

uint64_t WKWebView.pdf(configuration:)(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0175E8);
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();
  sub_19E6CD5B8();
  v2[25] = sub_19E6CD5A8();
  v5 = sub_19E6CD548();
  v2[26] = v5;
  v2[27] = v4;

  return MEMORY[0x1EEE6DFA0](sub_19D60EC28, v5, v4);
}