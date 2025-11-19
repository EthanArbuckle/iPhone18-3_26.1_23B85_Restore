uint64_t WebKit::WebSocketChannelManager::didReceiveMessage(WebKit::WebSocketChannelManager *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v11 = *(a3 + 7);
  if ((v11 - 1) >= 0xFFFFFFFFFFFFFFFELL)
  {
    __break(0xC471u);
    goto LABEL_13;
  }

  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebSocketChannel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebSocketChannel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebSocketChannel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebSocketChannel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebSocketChannel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebSocketChannel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(this, &v11);
  v7 = *this;
  if (*this)
  {
    v7 += 16 * *(v7 - 4);
  }

  if (v7 != result)
  {
    v8 = *(result + 8);
    if (v8)
    {
      v9 = *(v8 + 8);
      if (v9)
      {
        v10 = *(v9 - 8);
        ++*(v9 + 32);
        result = (*(v10 + 80))(v9 - 8, a2, a3);
        if (*(v9 + 32) == 1)
        {
          return (*(*(v9 - 8) + 8))(v9 - 8);
        }

        --*(v9 + 32);
        return result;
      }
    }

    __break(0xC471u);
LABEL_13:
    JUMPOUT(0x19E2F9F40);
  }

  return result;
}

WebKit::WebSWClientConnection *WebKit::NetworkProcessConnection::protectedServiceWorkerConnection@<X0>(WebKit::NetworkProcessConnection *this@<X0>, WebKit::WebSWClientConnection **a2@<X8>)
{
  result = WebKit::NetworkProcessConnection::serviceWorkerConnection(this);
  ++*(result + 2);
  *a2 = result;
  return result;
}

uint64_t WebKit::NetworkProcessConnection::dispatchSyncMessage(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a3 + 50);
  if (v3 >= 0x107F)
  {
    v3 = 4223;
  }

  if (LOBYTE((&IPC::Detail::messageDescriptions)[3 * v3 + 2]) != 188)
  {
    return 0;
  }

  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v9 = a3;
    v8 = WebKit::WebProcess::operator new(0x370, a2);
    v4 = WebKit::WebProcess::WebProcess(v8);
    a3 = v9;
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  if ((*(a3 + 56) - 1) < 0xFFFFFFFFFFFFFFFELL)
  {
    v10 = *(a3 + 56);
    v5 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v4 + 17, &v10);
    if (v5)
    {
      v6 = *(v5 + 56);
      if (v6)
      {
        (*(**(*(v6 + 1160) + 16) + 144))(*(*(v6 + 1160) + 16));
      }
    }

    return 0;
  }

  result = 153;
  __break(0xC471u);
  return result;
}

unsigned int *WebKit::NetworkProcessConnection::didClose(WebKit::NetworkProcessConnection *this, IPC::Connection *a2)
{
  ++*(this + 5);
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v9 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v9);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  result = WebKit::WebProcess::networkProcessConnectionClosed(v3, this);
  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    WebKit::WebIDBConnectionToServer::connectionToServerLost(v5);
    result = WTF::RefCounted<WebKit::WebIDBConnectionToServer>::deref(v5 + 6, v6);
  }

  v7 = *(this + 10);
  *(this + 10) = 0;
  if (v7)
  {
    *(v7 + 12) = 1;
    result = WebCore::SWClientConnection::clearPendingJobs(v7);
    if (*(v7 + 8) == 1)
    {
      result = (*(*v7 + 8))(v7);
    }

    else
    {
      --*(v7 + 8);
    }
  }

  if (*(this + 5) == 1)
  {
    v8 = *(*this + 24);

    return v8(this);
  }

  else
  {
    --*(this + 5);
  }

  return result;
}

uint64_t IPC::Connection::sendWithAsyncReply<Messages::NetworkConnectionToWebProcess::WriteBlobsToTemporaryFilesForIndexedDB,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = *a3;
  *a3 = 0;
  v10 = WTF::fastMalloc(0x10);
  *v10 = &unk_1F112C748;
  v10[1] = v9;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v11 = v10;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v14 = IPC::Encoder::operator new(0x238, v13);
    *v14 = 501;
    *(v14 + 2) = 0;
    *(v14 + 3) = 0;
    *(v14 + 1) = a4;
    *(v14 + 68) = 0;
    *(v14 + 70) = 0;
    *(v14 + 69) = 0;
    IPC::Encoder::encodeHeader(v14);
    v23 = v14;
    IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v14, *a2);
    v22[0] = v11;
    v22[1] = IdentifierInternal;
    v16 = IPC::Connection::sendMessageWithAsyncReply(a1, &v23, v22, a5, 0);
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
      IPC::Encoder::~Encoder(v18, v15);
      bmalloc::api::tzoneFree(v20, v21);
    }

    if (v16)
    {
      return 0;
    }

    else
    {
      return IdentifierInternal;
    }
  }

  return result;
}

void WebKit::NetworkProcessConnection::didFinishPingLoad(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  {
    v6 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v20 = a2;
    v21 = WebKit::WebProcess::operator new(0x370, a2);
    v6 = WebKit::WebProcess::WebProcess(v21);
    a2 = v20;
    WebKit::WebProcess::singleton(void)::process = v6;
  }

  v7 = *(v6 + 43);
  if (!*(*(v7 + 8) + 8))
  {
    goto LABEL_26;
  }

  v8 = *(v7 + 88);
  if (v8)
  {
    if (a2 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E2FA558);
    }

    if (!a2)
    {
      __break(0xC471u);
      JUMPOUT(0x19E2FA578);
    }

    v9 = *(v8 - 8);
    v10 = (a2 + ~(a2 << 32)) ^ ((a2 + ~(a2 << 32)) >> 22);
    v11 = 9 * ((v10 + ~(v10 << 13)) ^ ((v10 + ~(v10 << 13)) >> 8));
    v12 = (v11 ^ (v11 >> 15)) + ~((v11 ^ (v11 >> 15)) << 27);
    v13 = v9 & ((v12 >> 31) ^ v12);
    v14 = *(v8 + 16 * v13);
    if (v14 != a2)
    {
      v15 = 1;
      while (v14)
      {
        v13 = (v13 + v15) & v9;
        v14 = *(v8 + 16 * v13);
        ++v15;
        if (v14 == a2)
        {
          goto LABEL_13;
        }
      }

      v13 = *(v8 - 4);
    }

LABEL_13:
    v16 = *(v8 - 4);
    if (v13 != v16)
    {
      v17 = (v8 + 16 * v13);
      v18 = v17[1];
      *v17 = -1;
      v17[1] = 0;
      v19 = vadd_s32(*(v8 - 16), 0xFFFFFFFF00000001);
      *(v8 - 16) = v19;
      if (v16 >= 9 && 6 * v19.i32[1] < v16)
      {
        WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash((v7 + 88), v16 >> 1);
      }

      if (v18)
      {
        (*(*v18 + 16))(v18, a3, a4);
        (*(*v18 + 8))(v18);
      }
    }

    if (v7 && !*(*(v7 + 8) + 8))
    {
LABEL_26:
      __break(0xC471u);
      JUMPOUT(0x19E2FA538);
    }
  }
}

void *WebKit::NetworkProcessConnection::didFinishPreconnection(WebKit::WebProcess *a1, void *a2, uint64_t a3)
{
  v5 = WebKit::WebProcess::singleton(a1, a2);
  v6 = *(v5 + 43);
  if (!*(*(v6 + 8) + 8) || (result = WebKit::WebLoaderStrategy::didFinishPreconnection(*(v5 + 43), a2, a3), !*(*(v6 + 8) + 8)))
  {
    __break(0xC471u);
    JUMPOUT(0x19E2FA614);
  }

  return result;
}

void *WebKit::WebLoaderStrategy::didFinishPreconnection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a2;
  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(&v6, (a1 + 96), &v7);
  v5 = v6;
  if (v6)
  {
    (*(*v6 + 16))(v6, a3);
    return (*(*v5 + 8))(v5);
  }

  return result;
}

uint64_t WebKit::NetworkProcessConnection::setOnLineState(WebKit::NetworkProcessConnection *this, uint64_t a2)
{
  {
    v2 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v6 = a2;
    v5 = WebKit::WebProcess::operator new(0x370, a2);
    v2 = WebKit::WebProcess::WebProcess(v5);
    a2 = v6;
    WebKit::WebProcess::singleton(void)::process = v2;
  }

  v3 = *(v2 + 43);
  if (!*(*(v3 + 8) + 8) || (result = WebKit::WebLoaderStrategy::setOnLineState(*(v2 + 43), a2), !*(*(v3 + 8) + 8)))
  {
    __break(0xC471u);
    JUMPOUT(0x19E2FA778);
  }

  return result;
}

uint64_t WebKit::WebLoaderStrategy::setOnLineState(uint64_t this, uint64_t a2)
{
  if (*(this + 136) != a2)
  {
    *(this + 136) = a2;
    v3 = *(this + 116);
    if (v3)
    {
      v4 = *(this + 104);
      v5 = 8 * v3;
      do
      {
        v6 = *v4++;
        this = (*(*v6 + 16))(v6, a2);
        v5 -= 8;
      }

      while (v5);
    }
  }

  return this;
}

double WebKit::NetworkProcessConnection::cookieAcceptPolicyChanged(uint64_t a1, void *a2)
{
  if (*(a1 + 96) != a2)
  {
    *(a1 + 96) = a2;
    {
      v3 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v6 = WebKit::WebProcess::operator new(0x370, a2);
      v3 = WebKit::WebProcess::WebProcess(v6);
      WebKit::WebProcess::singleton(void)::process = v3;
    }

    v4 = *(*(v3 + 54) + 32);

    return WebKit::WebCookieCache::clear(v4);
  }

  return result;
}

uint64_t WebKit::NetworkProcessConnection::cookiesAdded(uint64_t a1, void *a2, const WTF::StringImpl *a3)
{
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v7 = a2;
    v8 = a3;
    v6 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v6);
    a2 = v7;
    a3 = v8;
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  v4 = *(v3 + 54);

  return WebKit::WebCookieJar::cookiesAdded(v4, a2, a3);
}

uint64_t WebKit::NetworkProcessConnection::cookiesDeleted(uint64_t a1, void *a2, const WTF::StringImpl *a3)
{
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v7 = a2;
    v8 = a3;
    v6 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v6);
    a2 = v7;
    a3 = v8;
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  v4 = *(v3 + 54);

  return WebKit::WebCookieJar::cookiesDeleted(v4, a2, a3);
}

double WebKit::NetworkProcessConnection::allCookiesDeleted(WebKit::NetworkProcessConnection *this, void *a2)
{
  {
    v2 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v5 = WebKit::WebProcess::operator new(0x370, a2);
    v2 = WebKit::WebProcess::WebProcess(v5);
    WebKit::WebProcess::singleton(void)::process = v2;
  }

  v3 = *(*(v2 + 54) + 32);

  return WebKit::WebCookieCache::clear(v3);
}

uint64_t WebKit::NetworkProcessConnection::updateCachedCookiesEnabled(WebKit::NetworkProcessConnection *this, void *a2)
{
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v5 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v5);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  return WebKit::WebProcess::updateCachedCookiesEnabled(v3);
}

uint64_t WebKit::NetworkProcessConnection::didCacheResource(WebCore::MemoryCache *a1)
{
  v1 = WebCore::MemoryCache::singleton(a1);
  v3 = &qword_1ED643000;
  {
    goto LABEL_10;
  }

  v3 = WebKit::WebProcess::singleton(void)::process;
  while ((*(v3 + 712) & 1) == 0)
  {
    __break(1u);
LABEL_10:
    v8 = v1;
    v6 = v3;
    v7 = WebKit::WebProcess::operator new(0x370, v2);
    v3 = WebKit::WebProcess::WebProcess(v7);
    v1 = v8;
    WebKit::WebProcess::singleton(void)::process = v3;
    *(v6 + 2024) = 1;
  }

  result = WebCore::MemoryCache::resourceForRequest();
  if (result)
  {
    v5 = result;
    result = WebCore::ShareableResourceHandle::tryWrapInSharedBuffer();
    if (v9)
    {
      WebCore::CachedResource::tryReplaceEncodedData(v5, v9);
      result = v9;
      if (atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v9 + 2);
        return (*(*v9 + 8))();
      }
    }
  }

  return result;
}

WebKit::WebProcess *WebKit::NetworkProcessConnection::idbConnectionToServer(WebKit::NetworkProcessConnection *this, void *a2)
{
  result = *(this + 9);
  if (!result)
  {
    result = WebKit::WebProcess::singleton(0, a2);
    if (*(result + 712))
    {
      WebKit::WebIDBConnectionToServer::create(&v9);
      v5 = v9;
      v9 = 0;
      v6 = *(this + 9);
      *(this + 9) = v5;
      if (v6)
      {
        WTF::RefCounted<WebKit::WebIDBConnectionToServer>::deref((v6 + 24), v4);
        v8 = v9;
        v9 = 0;
        if (v8)
        {
          WTF::RefCounted<WebKit::WebIDBConnectionToServer>::deref((v8 + 24), v7);
        }
      }

      return *(this + 9);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

WebKit::WebSWClientConnection *WebKit::NetworkProcessConnection::serviceWorkerConnection(WebKit::NetworkProcessConnection *this)
{
  result = *(this + 10);
  if (!result)
  {
    v3 = WTF::fastMalloc(0x70);
    result = WebKit::WebSWClientConnection::WebSWClientConnection(v3);
    v4 = *(this + 10);
    *(this + 10) = result;
    if (v4)
    {
      if (v4[2] == 1)
      {
        (*(*v4 + 8))(v4);
        return *(this + 10);
      }

      else
      {
        --v4[2];
      }
    }
  }

  return result;
}

WebKit::WebSharedWorkerObjectConnection *WebKit::NetworkProcessConnection::sharedWorkerConnection(WebKit::NetworkProcessConnection *this)
{
  result = *(this + 11);
  if (!result)
  {
    v3 = WTF::fastMalloc(0x30);
    result = WebKit::WebSharedWorkerObjectConnection::WebSharedWorkerObjectConnection(v3);
    v4 = *(this + 11);
    *(this + 11) = result;
    if (v4)
    {
      if (v4[2] == 1)
      {
        (*(*v4 + 8))(v4);
        return *(this + 11);
      }

      else
      {
        --v4[2];
      }
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcessConnection::messagesAvailableForPort(uint64_t a1, void *a2)
{
  v3 = a2;
  {
  }

  else
  {
    v4 = WebKit::WebProcess::operator new(0x370, a2);
    WebKit::WebProcess::WebProcess(v4);
    v3 = a2;
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  return MEMORY[0x1EEE54830](v3);
}

void WebKit::NetworkProcessConnection::broadcastConsoleMessage(uint64_t a1, char a2, char a3, uint64_t a4)
{
  v9 = a2;
  v8 = a3;
  if (atomic_load(MEMORY[0x1E69E2708]))
  {
    v6 = WTF::fastMalloc(0x20);
    *v6 = &unk_1F112C770;
    v6[1] = &v9;
    v6[2] = &v8;
    v6[3] = a4;
    v7 = v6;
    WebCore::Page::forEachPage();
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }
  }
}

void WebKit::NetworkProcessConnection::loadCancelledDownloadRedirectRequestInFrame(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v78 = *MEMORY[0x1E69E9840];
  {
    v7 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v34 = WebKit::WebProcess::operator new(0x370, a2);
    v7 = WebKit::WebProcess::WebProcess(v34);
    WebKit::WebProcess::singleton(void)::process = v7;
  }

  *buf = a4;
  v8 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v7 + 17, buf);
  v9 = v8;
  if (v8)
  {
    CFRetain(*(v8 + 8));
    {
      v11 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v35 = WebKit::WebProcess::operator new(0x370, v10);
      v11 = WebKit::WebProcess::WebProcess(v35);
      WebKit::WebProcess::singleton(void)::process = v11;
    }

    if (WebKit::WebProcess::webFrame(v11, a3, 1))
    {
      *buf = 0;
      buf[8] = 0;
      v38 = 0;
      LOBYTE(v39) = 0;
      v40 = 0;
      WebCore::ResourceRequest::ResourceRequest(&v41);
      v61[144] = 0;
      v61[160] = 0;
      v61[512] = 0;
      v62 = 0;
      v63[2] = 0;
      v64 = 0;
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v73 = 0;
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v77 = 0;
      v60 = 0u;
      memset(v61, 0, 25);
      v59 = 0u;
      *(v63 + 7) = 0;
      v63[0] = 0;
      if ((v40 & 1) == 0)
      {
        v40 = 1;
      }

      v39 = a3;
      v13 = *a2;
      if (*a2)
      {
        atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
      }

      v14 = v41;
      v41 = v13;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v12);
      }

      v15 = *(a2 + 3);
      v42 = *(a2 + 1);
      v43 = v15;
      v16 = a2[5];
      if (v16)
      {
        atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
      }

      v17 = v44;
      v44 = v16;
      if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v12);
      }

      v18 = *(a2 + 4);
      v45 = *(a2 + 3);
      v46 = v18;
      v47 = a2[10];
      v19 = a2[11];
      if (v19)
      {
        atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
      }

      v20 = v48;
      v48 = v19;
      if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v12);
      }

      WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::operator=(&v49, (a2 + 12));
      WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::operator=(&v50, (a2 + 14));
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(v51, (a2 + 16));
      v51[4] = *(a2 + 36);
      v52 = *(a2 + 148);
      v22 = a2[19];
      if (v22)
      {
        atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
      }

      v23 = v53;
      v53 = v22;
      if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v21);
      }

      v24 = a2[20];
      if (v24)
      {
        atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
      }

      v25 = v54;
      v54 = v24;
      if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v21);
      }

      v26 = a2[21];
      if (v26)
      {
        ++*v26;
      }

      v27 = v55;
      v55 = v26;
      if (v27)
      {
        WTF::RefCounted<WebCore::FormData>::deref(v27);
      }

      v56 = a2[22];
      v57 = *(a2 + 184);
      v28 = a2[24];
      if (v28)
      {
        CFRetain(v28);
      }

      v29 = cf;
      cf = v28;
      if (v29)
      {
        CFRelease(v29);
      }

      WebKit::WebPage::loadRequest(v9, buf);
      WebKit::LoadParameters::~LoadParameters(buf, v30);
LABEL_45:
      CFRelease(*(v9 + 8));
      return;
    }
  }

  v31 = qword_1ED6416A0;
  if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_ERROR))
  {
    WebCore::ResourceRequestBase::url(a2);
    WTF::String::utf8();
    v32 = v36 ? v36 + 16 : 0;
    *buf = 136315138;
    *&buf[4] = v32;
    _os_log_error_impl(&dword_19D52D000, v31, OS_LOG_TYPE_ERROR, "Trying to load Invalid page or frame for %s", buf, 0xCu);
    if (v36)
    {
      if (*v36 == 1)
      {
        WTF::fastFree(v36, v33);
      }

      else
      {
        --*v36;
      }
    }
  }

  if (v9)
  {
    goto LABEL_45;
  }
}

uint64_t WebKit::NetworkProcessConnection::connectToRTCDataChannelRemoteSource(WebKit::RTCDataChannelRemoteManager *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v11 = WebKit::RTCDataChannelRemoteManager::singleton(a1);
  v12 = WebKit::RTCDataChannelRemoteManager::connectToRemoteSource(v11, a2, a3, a4, a5);
  v13 = *a6;
  *a6 = 0;
  (*(*v13 + 16))(v13, v12 | 0x100);
  v14 = *(*v13 + 8);

  return v14(v13);
}

uint64_t WebKit::WebLoaderStrategy::internallyFailedLoadTimerFired(uint64_t this)
{
  v1 = *(this + 16);
  if (v1)
  {
    v2 = *(v1 - 12);
    if (v2)
    {
      if (v2 >> 29)
      {
        __break(0xC471u);
      }

      else
      {
        v3 = this;
        v4 = WTF::fastMalloc((8 * v2));
        v6 = v4;
        v7 = *(v3 + 16);
        if (v7 && *(v7 - 12))
        {
          v8 = *(v7 - 4);
          if (v8)
          {
            v9 = 8 * v8;
            for (i = *(v3 + 16); (*i + 1) <= 1; ++i)
            {
              v9 -= 8;
              if (!v9)
              {
                return WTF::fastFree(v6, v5);
              }
            }
          }

          else
          {
            i = *(v3 + 16);
          }

          v11 = (v7 + 8 * v8);
          if (v11 != i)
          {
            v12 = 0;
            v13 = 1;
            do
            {
              v14 = v13;
              v15 = *i;
              if (*i)
              {
                ++*(v15 + 16);
              }

              *(v4 + 8 * v12) = v15;
              do
              {
                ++i;
              }

              while (i != v11 && (*i + 1) <= 1);
              ++v12;
              v13 = v14 + 1;
            }

            while (i != v11);
            if (v12)
            {
              v16 = 8 * v14;
              v17 = v4;
              do
              {
                v18 = *v17;
                WebCore::ResourceRequestBase::url((*v17 + 344));
                WebCore::internalError();
                (*(*v18 + 240))(v18, &v26);
                v19 = cf;
                cf = 0;
                if (v19)
                {
                  CFRelease(v19);
                }

                v20 = v28;
                v28 = 0;
                if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v20, v5);
                }

                v21 = v27;
                v27 = 0;
                if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v21, v5);
                }

                v22 = v26;
                v26 = 0;
                if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v22, v5);
                }

                v17 += 8;
                v16 -= 8;
              }

              while (v16);
              v23 = 8 * v14;
              v24 = v6;
              do
              {
                v25 = *v24;
                *v24 = 0;
                if (v25)
                {
                  if (v25[4] == 1)
                  {
                    (*(*v25 + 8))(v25);
                  }

                  else
                  {
                    --v25[4];
                  }
                }

                v24 = (v24 + 8);
                v23 -= 8;
              }

              while (v23);
            }
          }
        }

        return WTF::fastFree(v6, v5);
      }
    }
  }

  return this;
}

uint64_t WTF::RunLoop::Timer::Timer<WebKit::WebLoaderStrategy>(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = WTF::fastMalloc(0x20);
  *v5 = &unk_1F112C798;
  v5[1] = a3;
  v5[2] = WebKit::WebLoaderStrategy::internallyFailedLoadTimerFired;
  v5[3] = 0;
  result = WTF::RunLoop::TimerBase::TimerBase();
  *a1 = &unk_1F10E6DC8;
  a1[5] = v5;
  return result;
}

void WebKit::WebLoaderStrategy::~WebLoaderStrategy(WebKit::WebLoaderStrategy *this, void *a2)
{
  WTF::Vector<WTF::Function<void ()(BOOL)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 104, a2);
  v4 = *(this + 12);
  if (v4)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v4, v3);
  }

  v5 = *(this + 11);
  if (v5)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v5, v3);
  }

  v6 = *(this + 10);
  if (v6)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v6, v3);
  }

  v7 = *(this + 9);
  if (v7)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v7, v3);
  }

  *(this + 3) = &unk_1F10E6DC8;
  v8 = *(this + 8);
  *(this + 8) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  WTF::RunLoop::TimerBase::~TimerBase((this + 24));
  v10 = *(this + 2);
  if (v10)
  {
    WTF::HashTable<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::FastMalloc>::deallocateTable(v10, v9);
  }

  v11 = *(this + 1);
  *(this + 1) = 0;
  if (v11 && atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v11);
    WTF::fastFree(v11, v9);
  }

  MEMORY[0x1EEE55690](this);
}

{
  WebKit::WebLoaderStrategy::~WebLoaderStrategy(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

uint64_t WebKit::WebLoaderStrategy::loadResource(uint64_t a1, WebCore::LocalFrame *this, WebCore::CachedResource *a3, WebCore::ResourceRequestBase *a4, uint64_t a5, uint64_t *a6)
{
  if ((*(a3 + 572) & 0x1F) != 0 || (v22 = *(this + 15)) == 0 || *(v22 + 8) != this)
  {
    WebCore::LocalFrame::localMainFrame(&v23, this);
    if (v23)
    {
      v12 = *(v23 + 224);
      if (v12)
      {
        *(v12 + 7) += 2;
        if (WebCore::Document::loader(v12))
        {
          WebCore::Document::loader(v12);
          WebCore::ResourceRequestBase::setIsAppInitiated(a4);
        }

        if (*(v12 + 7) == 2)
        {
          WebCore::Node::removedLastRef(v12);
        }

        else
        {
          *(v12 + 7) -= 2;
        }
      }

      v13 = v23;
      v23 = 0;
      if (v13)
      {
        if (v13[4] == 1)
        {
          (*(*v13 + 8))(v13);
        }

        else
        {
          --v13[4];
        }
      }
    }
  }

  v23 = a1;
  if (!*(*(a1 + 8) + 8))
  {
    goto LABEL_28;
  }

  v24 = a1;
  v25 = *(a5 + 5);
  v14 = *a6;
  *a6 = 0;
  v26 = v14;
  WebCore::CachedResourceHandleBase::CachedResourceHandleBase(&v27, a3);
  ++*(this + 4);
  v28 = this;
  v15 = WTF::fastMalloc(0x38);
  *v15 = &unk_1F112C7C0;
  *(v15 + 8) = v23;
  *(v15 + 16) = v24;
  *(v15 + 24) = v25;
  v16 = v26;
  v24 = 0;
  v26 = 0;
  *(v15 + 32) = v16;
  WebCore::CachedResourceHandleBase::CachedResourceHandleBase((v15 + 40), &v27);
  v17 = v28;
  v28 = 0;
  v29 = v15;
  *(v15 + 48) = v17;
  WebCore::SubresourceLoader::create();
  v18 = v29;
  v29 = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = v28;
  v28 = 0;
  if (v19)
  {
    if (*(v19 + 4) == 1)
    {
      (*(*v19 + 8))(v19);
    }

    else
    {
      --*(v19 + 4);
    }
  }

  WebCore::CachedResourceHandleBase::~CachedResourceHandleBase(&v27);
  result = v26;
  v26 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v21 = v24;
  v24 = 0;
  if (v21)
  {
    if (!*(*(v21 + 8) + 8))
    {
LABEL_28:
      __break(0xC471u);
      JUMPOUT(0x19E2FB9E0);
    }
  }

  return result;
}

uint64_t WebKit::WebLoaderStrategy::schedulePluginStreamLoad(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (*(*(a1 + 8) + 8))
  {
    v7 = *a5;
    *a5 = 0;
    ++*(a2 + 16);
    v8 = WTF::fastMalloc(0x28);
    *v8 = &unk_1F112C7E8;
    v8[1] = a1;
    v8[2] = a1;
    v8[3] = v7;
    v8[4] = a2;
    v10 = v8;
    WebCore::NetscapePlugInStreamLoader::create();
    result = v10;
    if (v10)
    {
      return (*(*v10 + 8))(v10);
    }
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

WebCore::FrameLoader *WebKit::WebLoaderStrategy::scheduleLoad(WebKit::WebLoaderStrategy *this, WebCore::ResourceLoader *a2, WebCore::CachedResource *a3, char a4)
{
  v117 = *MEMORY[0x1E69E9840];
  v10 = *(a2 + 94);
  if (!v10)
  {
    goto LABEL_69;
  }

  v106 = this;
  v111 = *(a2 + 94);
  result = WebCore::ResourceLoader::frameLoader(a2);
  if (result)
  {
    v4 = result;
    WebCore::FrameLoader::ref(result);
    v15 = *(v4 + 2);
    v16 = *(WebCore::FrameLoader::frame(v4) + 24);
    v105 = a3;
    if (v16 && (v17 = *(v16 + 8)) != 0)
    {
      v18 = *(v17 + 48);
      v19 = *(v17 + 40) & 0xFFFFFFFFFFFFFF00;
      v20 = *(v17 + 40);
    }

    else
    {
      v19 = 0;
      v18 = 0;
      v20 = 0;
    }

    v21 = (*(*v15 + 40))(v15);
    if (v21)
    {
      isa = v15;
    }

    else
    {
      isa = 0;
    }

    if (isa)
    {
      WebCore::LocalFrameLoaderClient::ref(isa);
    }

    if (v21)
    {
      v22 = WebKit::WebLocalFrameLoaderClient::webPageProxyID(v15);
      v7 = v23;
      goto LABEL_13;
    }

    v7 = (*(*v15 + 1040))(v15);
    if (v7)
    {
      v75 = v15;
    }

    else
    {
      v75 = 0;
    }

    v103 = v75;
    if (v75)
    {
      WebCore::LocalFrameLoaderClient::ref(v75);
      if (!v7)
      {
        v22 = 0;
        goto LABEL_146;
      }
    }

    else if ((v7 & 1) == 0)
    {
      v22 = 0;
      v7 = 0;
LABEL_13:
      if (isa)
      {
        WebCore::LocalFrameLoaderClient::deref(isa);
      }

      v8 = v20 | v19;
      if (v7 & v18)
      {
        *&v108 = v22;
        *(&v108 + 1) = v8;
        *&v109 = WebCore::FrameLoader::frameID(v4);
        *(&v109 + 1) = v10;
        v24 = 1;
      }

      else
      {
        v24 = 0;
        LOBYTE(v108) = 0;
      }

      v110 = v24;
      WebCore::ResourceLoader::protectedDocumentLoader(buf, a2);
      v25 = WebCore::DocumentLoader::scheduleArchiveLoad();
      v26 = *buf;
      *buf = 0;
      if (v26)
      {
        if (v26[6] == 1)
        {
          (*(*v26 + 24))(v26);
        }

        else
        {
          --v26[6];
        }
      }

      if (v25)
      {
        v76 = qword_1ED6416F0;
        if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
        {
          v77 = WebCore::ResourceLoader::frameLoader(a2);
          v78 = WebCore::ResourceLoader::frame(a2);
          *buf = 134219520;
          if (v24)
          {
            v79 = v8;
          }

          else
          {
            v79 = 0;
          }

          *&buf[4] = v106;
          *&buf[12] = 2048;
          *&buf[14] = a2;
          *&buf[22] = 2048;
          *&buf[24] = v77;
          *&buf[32] = 2048;
          *&buf[34] = v78;
          *&buf[42] = 2048;
          *&buf[44] = v79;
          *&buf[52] = 2048;
          *&buf[54] = v79;
          *&buf[62] = 2048;
          *&buf[64] = v79;
          _os_log_impl(&dword_19D52D000, v76, OS_LOG_TYPE_DEFAULT, "%p - [resourceLoader=%p, frameLoader=%p, frame=%p, webPageID=%llu, frameID=%llu, resourceID=%llu] WebLoaderStrategy::scheduleLoad: URL will be handled as an archive resource", buf, 0x48u);
        }

        ++*(a2 + 4);
        v107 = a2;
        v80 = WTF::fastMalloc(0x68);
        v112 = WebKit::WebResourceLoader::WebResourceLoader(v80, &v107, &v108);
        WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long> const&,WTF::Ref<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>(buf, v106 + 9, &v111, &v112);
        if (v112)
        {
          if (*(v112 + 2) == 1)
          {
            (*(*v112 + 8))();
          }

          else
          {
            --*(v112 + 2);
          }
        }

        if (v107)
        {
          if (*(v107 + 4) == 1)
          {
            (*(*v107 + 8))();
          }

          else
          {
            --*(v107 + 4);
          }
        }

        return WebCore::FrameLoader::deref(v4);
      }

      WebCore::ResourceRequestBase::url((a2 + 344));
      v27 = WTF::URL::protocolIs();
      if (v27)
      {
        v71 = WebCore::logClient(v27);
        v72 = WTF::downcast<WebKit::LogClient,WebCore::LogClient>(*v71);
        if (v72)
        {
          if (v24)
          {
            v73 = v8;
          }

          else
          {
            v73 = 0;
          }

          WebKit::LogClient::WEBLOADERSTRATEGY_SCHEDULELOAD_URL_LOADED_AS_DATA(v72, v73, v73, v73);
          goto LABEL_87;
        }

        v101 = qword_1ED6416F0;
        if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
        {
          if (v24)
          {
            v102 = v8;
          }

          else
          {
            v102 = 0;
          }

          *buf = 134218496;
          *&buf[4] = v102;
          *&buf[12] = 2048;
          *&buf[14] = v102;
          *&buf[22] = 2048;
          *&buf[24] = v102;
          v85 = "[webPageID=%llu, frameID=%llu, resourceID=%llu] WebLoaderStrategy::scheduleLoad: URL will be loaded as data";
          v86 = v101;
          v87 = 32;
          goto LABEL_116;
        }
      }

      else
      {
        v28 = WebCore::ResourceRequestBase::url((a2 + 344));
        if (!WebCore::isQuickLookPreviewURL(v28, v29))
        {
          v112 = 0;
          shouldInterceptRequestInternal = WebCore::ResourceLoader::frameLoader(a2);
          if (!shouldInterceptRequestInternal)
          {
            goto LABEL_36;
          }

          v32 = *(WebCore::ResourceLoader::frameLoader(a2) + 16);
          if ((*(*v32 + 40))(v32))
          {
            v33 = v32[3];
            CFRetain(v33[1]);
            shouldInterceptRequestInternal = WebKit::WebFrame::page(v33);
            isa = shouldInterceptRequestInternal;
            if (shouldInterceptRequestInternal)
            {
              shouldInterceptRequestInternal = CFRetain(shouldInterceptRequestInternal[1]);
            }

            v112 = isa;
          }

          else
          {
            v88 = *(WebCore::ResourceLoader::frameLoader(a2) + 16);
            shouldInterceptRequestInternal = (*(*v88 + 1040))(v88);
            if (!shouldInterceptRequestInternal)
            {
              goto LABEL_36;
            }

            if ((*(v88 + 64) & 1) == 0)
            {
              goto LABEL_36;
            }

            v89 = *(v88 + 48);
            *buf = *(v88 + 32);
            *&buf[16] = v89;
            shouldInterceptRequestInternal = WebCore::Page::serviceWorkerPage();
            if (!shouldInterceptRequestInternal)
            {
              goto LABEL_36;
            }

            v90 = shouldInterceptRequestInternal + 1;
            ++*(shouldInterceptRequestInternal + 2);
            v91 = WebKit::WebPage::fromCorePage(shouldInterceptRequestInternal);
            WTF::RefPtr<API::Dictionary const,WTF::RawPtrTraits<API::Dictionary const>,WTF::DefaultRefDerefTraits<API::Dictionary const>>::operator=(&v112, v91);
            if (v112 && (v92 = WebKit::WebPage::mainFrame(v112)) != 0)
            {
              v7 = v92;
              ++*(v92 + 16);
              WebKit::WebFrame::fromCoreFrame(v92, buf);
              v33 = *buf;
              if (*(v7 + 16) == 1)
              {
                (*(*v7 + 8))(v7);
              }

              else
              {
                --*(v7 + 16);
              }
            }

            else
            {
              v33 = 0;
            }

            shouldInterceptRequestInternal = WTF::RefCounted<WebCore::Page>::deref(v90);
            isa = v112;
          }

          if (isa)
          {
            if (!v33)
            {
              v112 = 0;
              CFRelease(*(isa + 1));
              goto LABEL_36;
            }

            WebCore::ResourceRequestBase::url((a2 + 344));
            if (!WTF::URL::protocolIs() || *(*(a2 + 5) + 3595) == 1)
            {
              v34 = v112;
              v35 = WebCore::ResourceRequestBase::url((a2 + 344));
              *buf = WTF::URL::protocol(v35);
              *&buf[8] = v36 & 0xFFFFFFFFFFLL;
              v37 = WTF::HashMap<WTF::String,WTF::RefPtr<WebKit::WebURLSchemeHandlerProxy,WTF::RawPtrTraits<WebKit::WebURLSchemeHandlerProxy>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeHandlerProxy>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<WebKit::WebURLSchemeHandlerProxy,WTF::RawPtrTraits<WebKit::WebURLSchemeHandlerProxy>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeHandlerProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::StringViewHashTranslator,WTF::StringView>(v34 + 224, buf);
              if (v37)
              {
                v7 = v37;
                isa = (v37 + 8);
                ++*(v37 + 8);
                v98 = qword_1ED6416F0;
                if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
                {
                  v104 = WebCore::ResourceLoader::frameLoader(a2);
                  v99 = WebCore::ResourceLoader::frame(a2);
                  *buf = 134219520;
                  if (v24)
                  {
                    v100 = v8;
                  }

                  else
                  {
                    v100 = 0;
                  }

                  *&buf[4] = v106;
                  *&buf[12] = 2048;
                  *&buf[14] = a2;
                  *&buf[22] = 2048;
                  *&buf[24] = v104;
                  *&buf[32] = 2048;
                  *&buf[34] = v99;
                  *&buf[42] = 2048;
                  *&buf[44] = v100;
                  *&buf[52] = 2048;
                  *&buf[54] = v100;
                  *&buf[62] = 2048;
                  *&buf[64] = v100;
                  _os_log_impl(&dword_19D52D000, v98, OS_LOG_TYPE_DEFAULT, "%p - [resourceLoader=%p, frameLoader=%p, frame=%p, webPageID=%llu, frameID=%llu, resourceID=%llu] WebLoaderStrategy::tryLoadingUsingURLSchemeHandler: URL will be handled by a UIProcess URL scheme handler", buf, 0x48u);
                }

                WebKit::WebURLSchemeHandlerProxy::startNewTask(v7, a2, v33);
                WTF::RefCounted<WebKit::WebURLSchemeHandlerProxy>::deref(isa);
                v38 = 1;
LABEL_33:
                CFRelease(v33[1]);
                v39 = v112;
                v112 = 0;
                if (v39)
                {
                  CFRelease(*(v39 + 1));
                }

                if (v38)
                {
                  return WebCore::FrameLoader::deref(v4);
                }

LABEL_36:
                if (v24)
                {
                  if (atomic_load(MEMORY[0x1E69E2708]))
                  {
                    shouldInterceptRequestInternal = WebCore::InspectorInstrumentationWebKit::shouldInterceptRequestInternal(a2, v31);
                    if (shouldInterceptRequestInternal)
                    {
                      *buf = v106;
                      if (*(*(v106 + 1) + 8))
                      {
                        ++*(a2 + 4);
                        *&buf[24] = v108;
                        *&buf[40] = v109;
                        buf[56] = v110;
                        buf[64] = a4;
                        v116 = v105;
                        v93 = WTF::fastMalloc(0x58);
                        *v93 = &unk_1F112C810;
                        *(v93 + 8) = v106;
                        *(v93 + 16) = v106;
                        *(v93 + 24) = a2;
                        *&buf[8] = 0;
                        *&buf[16] = 0;
                        v94 = *&buf[24];
                        v95 = v116;
                        v96 = *&buf[56];
                        *(v93 + 48) = *&buf[40];
                        *(v93 + 64) = v96;
                        *(v93 + 80) = v95;
                        *(v93 + 32) = v94;
                        v112 = v93;
                        WebCore::InspectorInstrumentationWebKit::interceptRequestInternal();
                        v97 = v112;
                        v112 = 0;
                        if (v97)
                        {
                          (*(*v97 + 8))(v97);
                        }

                        WebKit::WebLoaderStrategy::scheduleLoad(WebCore::ResourceLoader &,WebCore::CachedResource *,BOOL)::$_0::~$_0(buf);
                        return WebCore::FrameLoader::deref(v4);
                      }

LABEL_160:
                      __break(0xC471u);
                      JUMPOUT(0x19E2FC79CLL);
                    }
                  }

                  v41 = WebCore::logClient(shouldInterceptRequestInternal);
                  v5 = *v41;
                  if (*v41)
                  {
                    if (((*(v5->isa + 3))(*v41) & 1) == 0)
                    {
                      goto LABEL_160;
                    }

                    LOBYTE(v8) = v110;
                    if (v110)
                    {
                      v42 = *(&v108 + 1);
                    }

                    else
                    {
                      v42 = 0;
                    }

                    os_unfair_lock_lock(&v5[2]);
                    isa = v5[1].isa;
                    v112 = v42;
                    v113 = v42;
                    v114 = v42;
                    v7 = v5[3].isa;
                    v44 = *(isa + 16);
                    v9 = INFINITY;
                    if (fabs(v44) != INFINITY)
                    {
                      WTF::ApproximateTime::now(v43);
                      v9 = v44 + v45;
                    }

                    if (*(isa + 8) != v7)
                    {
                      goto LABEL_70;
                    }

LABEL_46:
                    IPC::StreamClientConnectionBuffer::tryAcquire(isa + 72, buf, v9);
                    if (buf[16] == 1)
                    {
                      v46 = *&buf[8];
                      if (*&buf[8] <= 1uLL)
                      {
                        __break(0xC471u);
                        JUMPOUT(0x19E2FC7BCLL);
                      }

                      v47 = *buf;
                      **buf = 294;
                      v48 = v47 + 2;
                      v49 = -v48 & 7 | 8;
                      v50 = v46 - 2 - v49;
                      if (v46 - 2 < v49 || (*(v48 + (-v48 & 7)) = v112, v51 = v48 + v49, v52 = -v51 & 7 | 8, v53 = v50 - v52, v50 < v52) || (*(v51 + (-v51 & 7)) = v113, v54 = v51 + v52, v55 = -v54 & 7 | 8, v53 < v55))
                      {
                        if ((buf[16] & 1) == 0)
                        {
                          goto LABEL_69;
                        }

                        IPC::StreamClientConnection::sendProcessOutOfStreamMessage(isa, *buf, *&buf[8]);
                        IPC::Connection::send<Messages::LogStream::WEBLOADERSTRATEGY_SCHEDULELOAD>(*(isa + 1), &v112, v7);
                      }

                      else
                      {
                        *(v54 + (-v54 & 7)) = v114;
                        v56 = v46 - v53 + v55;
                        if (v56 <= 0x10)
                        {
                          v56 = 16;
                        }

                        v57 = (*(isa + 11) + 1) & 0xFFFFFFFFFFFFFFFELL;
                        v58 = *(isa + 9);
                        if (v57 + 16 >= v58)
                        {
                          v57 = 0;
                        }

                        v59 = v57 + v56;
                        if (v58 <= v59)
                        {
                          v59 = 0;
                        }

                        *(isa + 11) = v59;
                        v60 = *(isa + 10);
                        if (*(v60 + 8) <= 0xFFuLL)
                        {
                          goto LABEL_69;
                        }

                        if (atomic_exchange((*(v60 + 16) + 128), v59) == 0x80000000 || *(isa + 31))
                        {
                          if (*(isa + 112) == 1)
                          {
                            MEMORY[0x19EB16320](*(isa + 25));
                          }

                          *(isa + 31) = 0;
                        }
                      }
                    }

                    while (1)
                    {
                      os_unfair_lock_unlock(&v5[2]);
                      if (v8)
                      {
                        break;
                      }

LABEL_69:
                      while (1)
                      {
                        __break(1u);
LABEL_70:
                        IPC::StreamClientConnectionBuffer::tryAcquire(isa + 72, buf, v9);
                        if (buf[16] != 1)
                        {
                          break;
                        }

                        v61 = *&buf[8];
                        if (*&buf[8] <= 1uLL)
                        {
                          __break(0xC471u);
                          JUMPOUT(0x19E2FC7DCLL);
                        }

                        v62 = *buf;
                        **buf = 3198;
                        v63 = v62 + 2;
                        if (v61 - 2 < (-v63 & 7 | 8uLL))
                        {
                          break;
                        }

                        v64 = -v63 & 7;
                        *(v63 + v64) = v7;
                        v65 = 6;
                        if (v64 > 6)
                        {
                          v65 = v64;
                        }

                        v66 = v65 + 10;
                        v67 = (*(isa + 11) + 1) & 0xFFFFFFFFFFFFFFFELL;
                        v68 = *(isa + 9);
                        if (v67 + 16 >= v68)
                        {
                          v67 = 0;
                        }

                        v69 = v66 + v67;
                        if (v68 <= v69)
                        {
                          v69 = 0;
                        }

                        *(isa + 11) = v69;
                        v70 = *(isa + 10);
                        if (*(v70 + 8) > 0xFFuLL)
                        {
                          IPC::StreamClientConnection::wakeUpServerBatched(isa, atomic_exchange((*(v70 + 16) + 128), v69) == 0x80000000);
                          *(isa + 8) = v7;
                          goto LABEL_46;
                        }
                      }
                    }
                  }

                  else
                  {
                    v5 = qword_1ED6416F0;
                    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
                    {
                      if (v110)
                      {
                        v74 = *(&v108 + 1);
                      }

                      else
                      {
                        v74 = 0;
                      }

                      *buf = 134218496;
                      *&buf[4] = v74;
                      *&buf[12] = 2048;
                      *&buf[14] = v74;
                      *&buf[22] = 2048;
                      *&buf[24] = v74;
                      _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_DEFAULT, "[webPageID=%llu, frameID=%llu, resourceID=%llu] WebLoaderStrategy::scheduleLoad: URL will be scheduled with the NetworkProcess", buf, 0x20u);
                      if ((v110 & 1) == 0)
                      {
                        goto LABEL_69;
                      }
                    }

                    else if ((v110 & 1) == 0)
                    {
                      goto LABEL_69;
                    }
                  }

                  WebKit::maximumBufferingTime(v105);
                  WebKit::WebLoaderStrategy::scheduleLoadFromNetworkProcess(v106);
                }

                return WebCore::FrameLoader::deref(v4);
              }
            }
          }

          else if (!v33)
          {
            goto LABEL_36;
          }

          v38 = 0;
          goto LABEL_33;
        }

        v81 = qword_1ED6416F0;
        if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
        {
          v82 = WebCore::ResourceLoader::frameLoader(a2);
          v83 = WebCore::ResourceLoader::frame(a2);
          *buf = 134219520;
          if (v24)
          {
            v84 = v8;
          }

          else
          {
            v84 = 0;
          }

          *&buf[4] = v106;
          *&buf[12] = 2048;
          *&buf[14] = a2;
          *&buf[22] = 2048;
          *&buf[24] = v82;
          *&buf[32] = 2048;
          *&buf[34] = v83;
          *&buf[42] = 2048;
          *&buf[44] = v84;
          *&buf[52] = 2048;
          *&buf[54] = v84;
          *&buf[62] = 2048;
          *&buf[64] = v84;
          v85 = "%p - [resourceLoader=%p, frameLoader=%p, frame=%p, webPageID=%llu, frameID=%llu, resourceID=%llu] WebLoaderStrategy::scheduleLoad: URL will be handled as a QuickLook resource";
          v86 = v81;
          v87 = 72;
LABEL_116:
          _os_log_impl(&dword_19D52D000, v86, OS_LOG_TYPE_DEFAULT, v85, buf, v87);
        }
      }

LABEL_87:
      WebKit::WebLoaderStrategy::startLocalLoad(v106, a2);
      return WebCore::FrameLoader::deref(v4);
    }

    v22 = v15[2];
    v7 = 1;
LABEL_146:
    WebCore::LocalFrameLoaderClient::deref(v103);
    goto LABEL_13;
  }

  return result;
}

void WebKit::LogClient::WEBLOADERSTRATEGY_SCHEDULELOAD_URL_LOADED_AS_DATA(WebKit::LogClient *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock(this + 4);
  v8 = *(this + 1);
  v9[0] = a2;
  v9[1] = a3;
  v9[2] = a4;
  IPC::StreamClientConnection::send<Messages::LogStream::WEBLOADERSTRATEGY_SCHEDULELOAD_URL_LOADED_AS_DATA,WebKit::LogStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v8, v9, *(this + 3));
  os_unfair_lock_unlock(this + 4);
}

WebCore::ResourceLoader *WebKit::WebLoaderStrategy::startLocalLoad(WebKit::WebLoaderStrategy *this, WebCore::ResourceLoader *a2)
{
  result = WebCore::ResourceLoader::start(a2);
  v12 = *(a2 + 94);
  v13 = v12 != 0;
  if (!v12)
  {
    __break(1u);
LABEL_9:
    if (*(result + 4) == 1)
    {
      return (*(*result + 8))(result);
    }

    --*(result + 4);
    return result;
  }

  ++*(a2 + 4);
  v10 = a2;
  LOBYTE(v8) = 0;
  v9 = 0;
  v5 = WTF::fastMalloc(0x68);
  v11 = WebKit::WebResourceLoader::WebResourceLoader(v5, &v10, &v8);
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>(&v7, this + 9, &v12, &v11);
  v6 = v11;
  v11 = 0;
  if (v6)
  {
    if (v6[2] == 1)
    {
      (*(*v6 + 8))(v6);
    }

    else
    {
      --v6[2];
    }
  }

  result = v10;
  if (v10)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t WebKit::WebLoaderStrategy::scheduleLoad(WebCore::ResourceLoader &,WebCore::CachedResource *,BOOL)::$_0::~$_0(uint64_t result)
{
  v1 = *(result + 16);
  *(result + 16) = 0;
  if (v1)
  {
    if (v1[4] == 1)
    {
      v3 = result;
      (*(*v1 + 8))(v1);
      result = v3;
    }

    else
    {
      --v1[4];
    }
  }

  v2 = *(result + 8);
  *(result + 8) = 0;
  if (v2)
  {
    if (!*(*(v2 + 8) + 8))
    {
      result = 92;
      __break(0xC471u);
    }
  }

  return result;
}

void WebKit::WebLoaderStrategy::scheduleLoadFromNetworkProcess(uint64_t a1)
{
  v247 = MEMORY[0x1EEE9AC00](a1);
  v341 = *MEMORY[0x1E69E9840];
  v12 = *(v7 + 94);
  if (!v12)
  {
    goto LABEL_282;
  }

  v13 = v11;
  v14 = v10;
  v15 = v9;
  v16 = v8;
  v1 = v7;
  v260 = *(v7 + 94);
  v17 = WebCore::ResourceLoader::frame(v7);
  v4 = v17;
  if (v17)
  {
    ++*(v17 + 16);
    v18 = *(v17 + 24);
    if (v18)
    {
      v19 = *(v18 + 8);
      if (v19)
      {
        ++*(v19 + 8);
        v20 = *(v17 + 120);
        if (v20)
        {
          v20 = *(v20 + 8);
        }

        if (v20 == v17 && WebCore::ResourceLoader::frameLoader(v1))
        {
          WebCore::ResourceLoader::frameLoader(v1);
        }

        WebCore::ResourceRequestBase::url(v16);
        v21 = WebCore::Page::allowsLoadFromURL();
        if ((v21 & 1) == 0)
        {
          WTF::RunLoop::mainSingleton(v21);
          ++*(v1 + 4);
          *&v271 = v1;
          WebKit::blockedError(v16, &v271 + 8);
          WTF::Function<void ()(void)>::Function<WebKit::WebLoaderStrategy::scheduleLoadFromNetworkProcess(WebCore::ResourceLoader &,WebCore::ResourceRequest const&,WebKit::WebResourceLoader::TrackingParameters const&,BOOL,WTF::Seconds)::$_0,void>(buf, &v271);
          WTF::RunLoop::dispatch();
          v212 = *buf;
          *buf = 0;
          if (v212)
          {
            (*(*v212 + 8))(v212);
          }

          WebKit::WebLoaderStrategy::scheduleLoadFromNetworkProcess(WebCore::ResourceLoader &,WebCore::ResourceRequest const&,WebKit::WebResourceLoader::TrackingParameters const&,BOOL,WTF::Seconds)::$_0::~$_0(&v271, v211);
          WTF::RefCounted<WebCore::Page>::deref((v19 + 8));
          goto LABEL_138;
        }

        WTF::RefCounted<WebCore::Page>::deref((v19 + 8));
      }
    }
  }

  v251 = v4;
  v22 = *(v1 + 1090);
  v248 = (v22 >> 1) & 1;
  v23 = (v22 >> 2) & 1;
  v24 = (*(*v1 + 248))(v1);
  v271 = *v15;
  v250 = v15;
  v272 = *(v15 + 2);
  v244 = v16;
  WebCore::ResourceRequest::ResourceRequest(&v273, v16);
  v275 = 0;
  v274 = 0u;
  v276 = 1;
  v277 = 0;
  v278[0] = 0;
  v278[2912] = 0;
  v279 = 0x10000;
  v280 = 1;
  v282 = 0;
  memset(v281, 0, 35);
  v283 = 0u;
  BYTE9(v283) = 2;
  *(&v283 + 10) = 0;
  BYTE14(v283) = 0;
  v287 = 0;
  v288[0] = 0;
  memset(v284, 0, 41);
  WTF::URL::invalidate(v288);
  v289 = 0;
  WTF::URL::invalidate(&v289);
  v290 = 0;
  v291 = 0u;
  v292 = 0;
  v293 = 0u;
  WebCore::HTTPHeaderMap::HTTPHeaderMap(&v294);
  v296 = 0;
  v297 = 0;
  v300 = 0;
  v301 = 0;
  v298 = 0u;
  v299 = 0;
  v302 = 1;
  v303 = 0;
  WTF::URL::invalidate(&v303);
  v306 = 0;
  v304 = 0;
  v305 = 0;
  WTF::URL::invalidate(&v306);
  v307 = 0;
  v310 = 0;
  LOBYTE(v311) = 0;
  v327 = 0;
  v308 = 0u;
  LOBYTE(v309) = 0;
  v328 = 1;
  LOBYTE(v329) = 0;
  v330 = 0;
  v331 = 0;
  LOBYTE(v332) = 0;
  v333 = 0;
  BYTE8(v334) = 0;
  v335 = 0;
  WTF::URL::invalidate(&v335);
  LOBYTE(v338) = 0;
  v339 = 0;
  v340 = 0;
  WebKit::NetworkResourceLoadParameters::createSandboxExtensionHandlesIfNecessary(&v271);
  *&v281[5] = v12;
  LODWORD(v275) = WTF::legacyPresentingApplicationPID(v25);
  BYTE4(v275) = v248;
  BYTE5(v275) = v23;
  BYTE6(v275) = v24;
  HIBYTE(v275) = WebCore::ResourceLoader::isAllowedToAskUserForCredentials(v1);
  LOBYTE(v276) = v14;
  HIBYTE(v276) = WebCore::ResourceLoader::shouldIncludeCertificateInfo(v1);
  *&v283 = v13;
  *(&v283 + 11) = *(v1 + 979);
  DWORD2(v283) = *(v1 + 244);
  v27 = *(v1 + 123);
  if (v27)
  {
    atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
  }

  v28 = (v1 + 1090);
  v29 = v284[0];
  v284[0] = v27;
  if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v29, v26);
  }

  v30 = *(v1 + 63);
  v6 = &v271;
  *&v284[1] = *(v1 + 62);
  *&v284[3] = v30;
  HIBYTE(v296) = (*v28 >> 20) & 3;
  v2 = &v271;
  if (!WebCore::ResourceLoader::frame(v1))
  {
    goto LABEL_17;
  }

  v31 = WebCore::ResourceLoader::frame(v1);
  v32 = *(v31 + 120);
  if (v32)
  {
    v32 = *(v32 + 8);
  }

  if (v32 == v31)
  {
    LODWORD(v5) = *(v1 + 977) == 0;
  }

  else
  {
LABEL_17:
    LODWORD(v5) = 0;
  }

  WebKit::addParametersShared(v4, &v271, v5);
  if ((*v28 & 0x400000) != 0)
  {
    v33 = 1;
  }

  else
  {
    v33 = HIWORD(*v28) & 3;
  }

  v328 = v33;
  v34 = *(v1 + 128) != 0;
  v329 = *(v1 + 128);
  v330 = v34;
  v334 = *(v1 + 1112);
  v331 = *(v1 + 1089);
  if (*(v1 + 137))
  {
    v332 = *(v1 + 137);
    v333 = 1;
  }

  if (!v4)
  {
    v3 = 0;
    goto LABEL_292;
  }

  v35 = *(v4 + 120);
  if (v35)
  {
    v35 = *(v35 + 8);
  }

  if (v35 != v4)
  {
    BYTE2(v340) = (*(*(v4 + 128) + 712) & 4) != 0;
  }

  v3 = *(v4 + 224);
  if (!v3)
  {
LABEL_292:
    v246 = 1;
    if (*(v1 + 1052))
    {
      goto LABEL_33;
    }

    goto LABEL_158;
  }

  *(v3 + 28) += 2;
  if (*(v1 + 1052))
  {
    if ((WebCore::Document::shouldBypassMainWorldContentSecurityPolicy(v3) & 1) == 0 && (*(v1 + 1091) & 1) != 0 && (v130 = WebCore::SecurityContext::contentSecurityPolicy((v3 + 208))) != 0)
    {
      v131 = v130;
      atomic_fetch_add(v130, 1u);
      WebCore::ContentSecurityPolicy::responseHeaders(buf, v130);
      std::optional<WebCore::ContentSecurityPolicyResponseHeaders>::operator=[abi:sn200100]<WebCore::ContentSecurityPolicyResponseHeaders,void>(&v284[5], buf);
      WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v132);
      if (!atomic_load(v131))
      {
        __break(0xC471u);
        JUMPOUT(0x19E2FE528);
      }

      v246 = 0;
      atomic_fetch_add(v131, 0xFFFFFFFF);
    }

    else
    {
      v246 = 0;
    }

    goto LABEL_33;
  }

  v246 = 0;
LABEL_158:
  WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(buf, v1 + 129);
  *&buf[16] = *(v1 + 262);
  buf[20] = *(v1 + 1052);
  buf[24] = 1;
  if (v287)
  {
    WebCore::ContentSecurityPolicyResponseHeaders::operator=(&v284[5], buf);
    if ((buf[24] & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v284[5] = *buf;
    v126 = *&buf[8];
    *buf = 0;
    *&buf[8] = 0;
    v284[6] = v126;
    v285 = *(v1 + 262);
    v286 = *(v1 + 1052);
    v287 = 1;
  }

  WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v7);
LABEL_33:
  if (*(v1 + 1080) == 1)
  {
    v292 = *(v1 + 528);
    v122 = *(v1 + 133);
    if (v122)
    {
      atomic_fetch_add_explicit(v122, 2u, memory_order_relaxed);
    }

    v123 = v293;
    *&v293 = v122;
    if (v123 && atomic_fetch_add_explicit(v123, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v123, v7);
    }

    v124 = *(v1 + 134);
    if (v124)
    {
      atomic_fetch_add_explicit(v124, 2u, memory_order_relaxed);
    }

    v125 = *(&v293 + 1);
    *(&v293 + 1) = v124;
    if (v125 && atomic_fetch_add_explicit(v125, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v125, v7);
    }
  }

  if (!v4)
  {
    goto LABEL_283;
  }

  v36 = *(*(v4 + 208) + 16);
  if (!(*(*v36 + 40))(v36))
  {
    goto LABEL_283;
  }

  v37 = v36[3];
  if (!v37)
  {
    goto LABEL_283;
  }

  CFRetain(v37[1]);
  v249 = v37;
  v245 = 0;
  *(&v279 + 1) = WebKit::WebFrame::isTopFrameNavigatingToAppBoundDomain(v37);
  for (i = 1; ; i = 0)
  {
    if (v3)
    {
      v39 = *(v3 + 800);
      if (v39)
      {
        atomic_fetch_add_explicit(v39, 2u, memory_order_relaxed);
      }

      v40 = v289;
      v289 = v39;
      if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v40, v7);
      }

      v41 = *(v3 + 808);
      v6[212] = *(v3 + 824);
      v6[211] = v41;
      v42 = *(v3 + 552);
      if (v42)
      {
        v43 = *(v42 + 8);
        if (v43)
        {
          v44 = *(v43 + 24);
          if (v44)
          {
            v45 = *(v44 + 8);
            if (v45)
            {
              v46 = v45 + 2;
              ++v45[2];
              v48 = WebCore::Page::mainFrameURL(v45);
              v49 = *v48;
              if (*v48)
              {
                atomic_fetch_add_explicit(v49, 2u, memory_order_relaxed);
              }

              v50 = v335;
              v335 = v49;
              if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v50, v47);
              }

              v51 = *(v48 + 24);
              v336 = *(v48 + 8);
              v337 = v51;
              WTF::RefCounted<WebCore::Page>::deref(v46);
            }
          }
        }
      }

      if (i)
      {
        v218 = WebKit::WebFrame::page(v249);
        if (v218)
        {
          v219 = v218;
          CFRetain(*(v218 + 8));
          v220 = *(*(v219 + 584) + 64);
          if ((v6[252] & 1) == 0)
          {
            *(v6 + 4032) = 1;
          }

          v338 = v220;
          CFRelease(*(v219 + 8));
        }
      }
    }

    if ((*(*v1 + 184))(v1))
    {
      v53 = *(v1 + 173);
      if (v53)
      {
        atomic_fetch_add(v53, 1u);
      }

      v54 = *(&v274 + 1);
      *(&v274 + 1) = v53;
      if (v54)
      {
        WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v54, v52);
      }

      v55 = WebCore::SubresourceLoader::originalHeaders(v1);
      if (v55)
      {
        v127 = v55;
        WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::operator=((v2 + 216), v55);
        WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::operator=(&v295, v127 + 16);
      }
    }

    if (*(&v274 + 1))
    {
      goto LABEL_59;
    }

    if (!v3)
    {
      goto LABEL_294;
    }

    v135 = WebCore::SecurityContext::securityOrigin((v3 + 208));
    atomic_fetch_add(v135, 1u);
    v136 = *(&v274 + 1);
    *(&v274 + 1) = v135;
    if (v136)
    {
      WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v136, v134);
      if (!*(&v274 + 1))
      {
LABEL_294:
        WebCore::ResourceRequestBase::httpOrigin(buf, v244);
        if (*buf)
        {
          WebCore::SecurityOrigin::createFromString(&v255, buf, v213);
          v215 = v255;
          v255 = 0;
          v216 = *(&v274 + 1);
          *(&v274 + 1) = v215;
          if (v216)
          {
            WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v216, v214);
            v229 = v255;
            v255 = 0;
            if (v229)
            {
              WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v229, v214);
            }
          }

          v217 = *buf;
          *buf = 0;
          if (v217 && atomic_fetch_add_explicit(v217, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v217, v214);
          }
        }

LABEL_59:
        if (v5)
        {
          goto LABEL_177;
        }

        if (!v3)
        {
          goto LABEL_67;
        }

        goto LABEL_61;
      }

      if (!v5)
      {
        goto LABEL_61;
      }

LABEL_177:
      WebCore::ResourceRequestBase::url(v244);
      if (WTF::URL::protocolIs() && (v226 = *(v1 + 5)) != 0 && !WebCore::NavigationAction::isEmpty((v226 + 1648)) && (v227 = *(v1 + 5), *(v227 + 1872) == 1))
      {
        v228 = *(v227 + 1696);
        if (v228)
        {
          atomic_fetch_add(v228, 1u);
        }

        v207 = v274;
        *&v274 = v228;
        v4 = v251;
        v2 = &v271;
        v6 = &v271;
        if (v207)
        {
          goto LABEL_281;
        }
      }

      else
      {
        v137 = WebCore::ResourceRequestBase::url(v244);
        WebCore::SecurityOrigin::create(buf, v137, v138);
        v139 = *buf;
        *buf = 0;
        v140 = v274;
        *&v274 = v139;
        if (v140)
        {
          WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v140, v56);
          v207 = *buf;
          *buf = 0;
          if (v207)
          {
LABEL_281:
            WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v207, v56);
          }
        }
      }

      if (!v3)
      {
        goto LABEL_67;
      }

      goto LABEL_63;
    }

    if (v5)
    {
      goto LABEL_177;
    }

LABEL_61:
    v57 = WebCore::Document::topOrigin(v3);
    atomic_fetch_add(v57, 1u);
    v58 = v274;
    *&v274 = v57;
    if (v58)
    {
      WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v58, v56);
    }

LABEL_63:
    v59 = *(v3 + 800);
    if (v59)
    {
      atomic_fetch_add_explicit(v59, 2u, memory_order_relaxed);
    }

    v60 = v303;
    v303 = v59;
    if (v60 && atomic_fetch_add_explicit(v60, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v60, v56);
    }

    v61 = *(v3 + 808);
    v6[223] = *(v3 + 824);
    v6[222] = v61;
LABEL_67:
    if (*(v6 + 3249) && !*(&v274 + 1))
    {
      break;
    }

    *(v6 + 3488) = 1;
    v277 = v5;
    if (v5 && v3)
    {
      v205 = WebCore::Document::crossOriginOpenerPolicy(v3);
      WebCore::CrossOriginOpenerPolicy::operator=((v2 + 227), v205);
    }

    v62 = WebCore::ResourceLoader::frame(v1);
    if (*(v1 + 977))
    {
      v63 = 1;
    }

    else
    {
      v63 = v62 == 0;
    }

    if (v63)
    {
      v64 = 0;
    }

    else
    {
      v64 = i;
    }

    v65 = v249;
    if (v64 == 1 && WebKit::WebFrame::frameLoaderClient(v249))
    {
      if (v4)
      {
        v174 = *(*(v4 + 208) + 402);
      }

      else
      {
        v174 = 0;
      }

      v175 = WebKit::WebFrame::frameLoaderClient(v249);
      v176 = *(v1 + 5);
      WebCore::ResourceResponseBase::ResourceResponseBase(&v255);
      cf = 0;
      v259 = 0;
      v257 = v257 & 0xF1 | 4;
      v254 = 0;
      LOBYTE(v252[0]) = 0;
      v253 = 0;
      WebKit::WebFrameLoaderClient::navigationActionData(v175, v176 + 1648, v244, &v255, &v254, 0, 0, v252, 0, v174 & 1, v243, 0);
      v2 = &v271;
      if (*(v6 + 3168) == v270)
      {
        if (*(v6 + 3168))
        {
          WebKit::NavigationActionData::operator=(v278, buf);
        }
      }

      else if (*(v6 + 3168))
      {
        WebKit::NavigationActionData::~NavigationActionData(v278, v177);
        *(v6 + 3168) = 0;
      }

      else
      {
        WebKit::NavigationActionData::NavigationActionData(v278, buf);
        *(v6 + 3168) = 1;
      }

      if (v270 == 1)
      {
        WebKit::NavigationActionData::~NavigationActionData(buf, v177);
      }

      if (v253 == 1)
      {
        MEMORY[0x19EB04BD0](v252);
      }

      v178 = v254;
      v254 = 0;
      if (v178 && atomic_fetch_add_explicit(v178, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v178, v177);
      }

      v179 = cf;
      cf = 0;
      if (v179)
      {
        CFRelease(v179);
      }

      WebCore::ResourceResponseBase::~ResourceResponseBase(&v255, v177);
    }

    if (*(v6 + 3168) == 1)
    {
      v141 = *(v1 + 5);
      if (v141)
      {
        ++*(v141 + 24);
        v142 = *(v141 + 2544) != 0;
        v309 = *(v141 + 2544);
        *(v6 + 3664) = v142;
        v143 = (v141 + 1648);
        if (*(v6 + 3904) == *(v141 + 1872))
        {
          if (*(v6 + 3904))
          {
            WebCore::NavigationRequester::operator=((v2 + 230), v143);
          }
        }

        else if (*(v6 + 3904))
        {
          WebCore::NavigationRequester::~NavigationRequester((v2 + 230), v143);
          *(v6 + 3904) = 0;
        }

        else
        {
          v144 = *v143;
          if (*v143)
          {
            atomic_fetch_add_explicit(v144, 2u, memory_order_relaxed);
          }

          v311 = v144;
          v145 = *(v141 + 1672);
          v312 = *(v141 + 1656);
          v313 = v145;
          v146 = *(v141 + 1688);
          atomic_fetch_add(v146, 1u);
          v314 = v146;
          v147 = *(v141 + 1696);
          atomic_fetch_add(v147, 1u);
          v315 = v147;
          WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v316, (v141 + 1704));
          v148 = *(v141 + 1720);
          *(v6 + 3756) = *(v141 + 1724);
          v316[4] = v148;
          v317 = *(v141 + 1728);
          v149 = *(v141 + 1736);
          if (v149)
          {
            atomic_fetch_add_explicit(v149, 2u, memory_order_relaxed);
          }

          v318 = v149;
          v150 = *(v141 + 1744);
          if (v150)
          {
            atomic_fetch_add_explicit(v150, 2u, memory_order_relaxed);
          }

          v319 = v150;
          v320 = *(v141 + 1752);
          v151 = *(v141 + 1760);
          if (v151)
          {
            atomic_fetch_add_explicit(v151, 2u, memory_order_relaxed);
          }

          v321 = v151;
          v152 = *(v141 + 1768);
          if (v152)
          {
            atomic_fetch_add_explicit(v152, 2u, memory_order_relaxed);
          }

          v322 = v152;
          *(v6 + 3808) = *(v141 + 1776);
          v323 = *(v141 + 1784);
          v153 = *(v141 + 1800);
          v154 = *(v141 + 1816);
          v155 = *(v141 + 1832);
          *(v326 + 10) = *(v141 + 1842);
          v325 = v154;
          v326[0] = v155;
          v324 = v153;
          *(v6 + 3904) = 1;
        }

        if (*(v141 + 24) == 1)
        {
          (*(*v141 + 24))(v141);
        }

        else
        {
          --*(v141 + 24);
        }
      }
    }

    if (v3)
    {
      v66 = (*(*(v3 + 720) + 688) >> 5) & 1;
    }

    else
    {
      LOBYTE(v66) = 0;
    }

    *(v6 + 3584) = v66;
    if (v4)
    {
      *(v6 + 3587) = WebCore::FrameLoaderStateMachine::isDisplayingInitialEmptyDocument((*(v4 + 208) + 72));
      v305 = *(v4 + 328);
      v68 = *(v4 + 152);
      if (v68)
      {
        v69 = *(v68 + 8);
        if (v69)
        {
          if ((*(v69 + 136) & 1) == 0)
          {
            v70 = *(v69 + 224);
            if (v70)
            {
              v71 = *(v70 + 800);
              if (v71)
              {
                atomic_fetch_add_explicit(v71, 2u, memory_order_relaxed);
              }

              v72 = v306;
              v306 = v71;
              if (v72 && atomic_fetch_add_explicit(v72, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v72, v67);
              }

              v73 = *(v70 + 808);
              v6[226] = *(v70 + 824);
              v6[225] = v73;
            }
          }
        }
      }
    }

    else
    {
      *(v6 + 3587) = 0;
    }

    *(v6 + 3490) = v277 ^ 1;
    if (!*(v1 + 977))
    {
      v156 = 0;
      v157 = 0;
      v255 = 0;
      v256 = 0;
      if (v4)
      {
        v156 = *(v4 + 32);
        v157 = 1;
      }

      v158 = WebKit::WebFrame::webFrame(v156, v157);
      v160 = v158;
      if (v158)
      {
        CFRetain(*(v158 + 8));
        WebKit::WebFrame::parentFrame(v160, v252);
        if (v252[0])
        {
          v161 = *(v252[0] + 5);
          if (v161)
          {
            v162 = *(v161 + 8);
            if (v162)
            {
              ++v162[4];
              do
              {
                (*(*v162 + 152))(&v254, v162);
                v164 = v254;
                if (!v254)
                {
                  v208 = qword_1ED6416F0;
                  v209 = os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_ERROR);
                  if (v209)
                  {
                    v230 = WebCore::ResourceLoader::frameLoader(v1);
                    v231 = WebCore::ResourceLoader::frame(v1);
                    v232 = *(v250 + 1);
                    v233 = *(v162 + 4);
                    *buf = 134219776;
                    *&buf[4] = v247;
                    *&buf[12] = 2048;
                    *&buf[14] = v1;
                    *&buf[22] = 2048;
                    *&buf[24] = v230;
                    v262 = 2048;
                    *v263 = v231;
                    *&v263[8] = 2048;
                    *&v263[10] = v232;
                    v264 = 2048;
                    v265 = v232;
                    v266 = 2048;
                    v267 = v232;
                    v268 = 2048;
                    v269 = v233;
                    _os_log_error_impl(&dword_19D52D000, v208, OS_LOG_TYPE_ERROR, "%p - [resourceLoader=%p, frameLoader=%p, frame=%p, webPageID=%llu, frameID=%llu, resourceID=%llu] WebLoaderStrategy::scheduleLoad: Unable to get document origin of frame (frameID=%llu)", buf, 0x52u);
                  }

                  v164 = WebCore::SecurityOrigin::opaqueOrigin(v209);
                  atomic_fetch_add(v164, 1u);
                  v210 = v254;
                  v254 = v164;
                  if (v210)
                  {
                    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v210, v163);
                    v164 = v254;
                  }
                }

                v165 = HIDWORD(v256);
                if (HIDWORD(v256) == v256)
                {
                  if (HIDWORD(v256) + (HIDWORD(v256) >> 1) <= HIDWORD(v256) + 1)
                  {
                    v166 = HIDWORD(v256) + 1;
                  }

                  else
                  {
                    v166 = HIDWORD(v256) + (HIDWORD(v256) >> 1);
                  }

                  if (v166 <= 0x10)
                  {
                    v167 = 16;
                  }

                  else
                  {
                    v167 = v166;
                  }

                  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(&v255, v167);
                  v165 = HIDWORD(v256);
                }

                v168 = (v255 + 8 * v165);
                atomic_fetch_add(v164, 1u);
                *v168 = v164;
                ++HIDWORD(v256);
                v169 = v254;
                v254 = 0;
                if (v169)
                {
                  WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v169, v163);
                }

                v170 = WebCore::FrameTree::parent((v162 + 10));
                v171 = v170;
                if (v170)
                {
                  ++*(v170 + 16);
                }

                if (v162[4] == 1)
                {
                  (*(*v162 + 8))(v162);
                }

                else
                {
                  --v162[4];
                }

                v162 = v171;
              }

              while (v171);
            }
          }
        }
      }

      else
      {
        v252[0] = 0;
      }

      if (HIDWORD(v298))
      {
        v223 = v298;
        v224 = 8 * HIDWORD(v298);
        do
        {
          v225 = *v223;
          *v223 = 0;
          if (v225)
          {
            WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v225, v159);
          }

          ++v223;
          v224 -= 8;
        }

        while (v224);
      }

      v172 = v298;
      v65 = v249;
      if (v298)
      {
        *&v298 = 0;
        DWORD2(v298) = 0;
        WTF::fastFree(v172, v159);
      }

      *&v298 = v255;
      v173 = v256;
      v255 = 0;
      v256 = 0;
      *(&v298 + 1) = v173;
      if (v252[0])
      {
        CFRelease(*(v252[0] + 1));
      }

      if (v160)
      {
        CFRelease(*(v160 + 8));
      }

      WTF::Vector<WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v255, v159);
    }

    v74 = WebCore::ResourceLoader::frameLoader(v1);
    if (v74)
    {
      v75 = v74;
      WebCore::FrameLoader::ref(v74);
      *&v281[1] = *(v75 + 51);
      WebCore::FrameLoader::deref(v75);
    }

    v76 = (*(*v1 + 280))(v1);
    WebCore::CachedResourceHandleBase::CachedResourceHandleBase(buf, v76);
    if (*buf && *(*buf + 8))
    {
      *(v6 + 4043) = (*(WebCore::CachedResourceHandleBase::get(buf) + 572) & 0x1F) == 14;
    }

    WebCore::CachedResourceHandleBase::~CachedResourceHandleBase(buf);
    LOBYTE(v78) = 0;
    LOBYTE(v255) = 0;
    LOBYTE(v256) = 0;
    if (v277 == 1)
    {
      v206 = v247[15];
      v78 = v247[16];
      if (v78)
      {
        *(v247 + 128) = 0;
      }

      v255 = v206;
      LOBYTE(v256) = v78;
    }

    v79 = WebCore::logClient(v77);
    v4 = *v79;
    if (!*v79)
    {
      v191 = qword_1ED6416F0;
      if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
      {
        v192 = *(v250 + 1);
        v193 = WebCore::ResourceRequestBase::priority((v1 + 344));
        v194 = v255;
        if ((v78 & 1) == 0)
        {
          v194 = 0;
        }

        *buf = 134219008;
        *&buf[4] = v192;
        *&buf[12] = 2048;
        *&buf[14] = v192;
        *&buf[22] = 2048;
        *&buf[24] = v192;
        v262 = 1024;
        *v263 = v193;
        *&v263[4] = 2048;
        *&v263[6] = v194;
        _os_log_impl(&dword_19D52D000, v191, OS_LOG_TYPE_DEFAULT, "[webPageID=%llu, frameID=%llu, resourceID=%llu] WebLoaderStrategy::scheduleLoad: Resource is being scheduled with the NetworkProcess (priority=%d, existingNetworkResourceLoadIdentifierToResume=%llu)", buf, 0x30u);
      }

      goto LABEL_121;
    }

    if (((*(*v4 + 24))(*v79) & 1) == 0)
    {
      goto LABEL_347;
    }

    v80 = *(v250 + 1);
    v6 = WebCore::ResourceRequestBase::priority((v1 + 344));
    if (v78)
    {
      v81 = v255;
    }

    else
    {
      v81 = 0;
    }

    os_unfair_lock_lock((v4 + 16));
    v5 = *(v4 + 8);
    v2 = *(v4 + 24);
    v83 = *(v5 + 128);
    v84 = INFINITY;
    if (fabs(v83) != INFINITY)
    {
      WTF::ApproximateTime::now(v82);
      v84 = v83 + v85;
    }

    if (*(v5 + 64) != v2)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v5 + 72, buf, v84);
      if (buf[16] != 1)
      {
        goto LABEL_120;
      }

      v195 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
LABEL_347:
        __break(0xC471u);
        JUMPOUT(0x19E2FE4E8);
      }

      v196 = *buf;
      **buf = 3198;
      v197 = v196 + 2;
      if (v195 - 2 < (-v197 & 7 | 8uLL))
      {
        goto LABEL_120;
      }

      v198 = -v197 & 7;
      *(v197 + v198) = v2;
      v199 = 6;
      if (v198 > 6)
      {
        v199 = v198;
      }

      v200 = v199 + 10;
      v201 = (*(v5 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v202 = *(v5 + 72);
      if (v201 + 16 >= v202)
      {
        v201 = 0;
      }

      v203 = v200 + v201;
      if (v202 <= v203)
      {
        v203 = 0;
      }

      *(v5 + 88) = v203;
      v204 = *(v5 + 80);
      if (*(v204 + 8) <= 0xFFuLL)
      {
        goto LABEL_282;
      }

      IPC::StreamClientConnection::wakeUpServerBatched(v5, atomic_exchange((*(v204 + 16) + 128), v203) == 0x80000000);
      *(v5 + 64) = v2;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(v5 + 72, buf, v84);
    if (buf[16] != 1)
    {
      goto LABEL_120;
    }

    v86 = *&buf[8];
    if (*&buf[8] <= 1uLL)
    {
      __break(0xC471u);
      JUMPOUT(0x19E2FE508);
    }

    v87 = *buf;
    **buf = 295;
    v88 = v87 + 2;
    v89 = -v88 & 7 | 8;
    v90 = v86 - 2 - v89;
    if (v86 - 2 >= v89 && (*(v88 + (-v88 & 7)) = v80, v91 = v88 + v89, v92 = -v91 & 7 | 8, v93 = v90 >= v92, v94 = v90 - v92, v93) && (*(v91 + (-v91 & 7)) = v80, v95 = v91 + v92, v96 = -v95 & 7 | 8, v97 = v94 - v96, v94 >= v96) && (*(v95 + (-v95 & 7)) = v80, v98 = v95 + v96, v99 = -(v95 + v96), v100 = v99 & 3 | 4, v101 = v97 - v100, v97 >= v100) && (*(v98 + (v99 & 3)) = v6, v102 = v98 + v100, v103 = -v102 & 7 | 8, v101 >= v103))
    {
      *(v102 + (-v102 & 7)) = v81;
      v104 = v86 - v101 + v103;
      if (v104 <= 0x10)
      {
        v104 = 16;
      }

      v105 = (*(v5 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v106 = *(v5 + 72);
      if (v105 + 16 >= v106)
      {
        v105 = 0;
      }

      v107 = v105 + v104;
      if (v106 <= v107)
      {
        v107 = 0;
      }

      *(v5 + 88) = v107;
      v108 = *(v5 + 80);
      if (*(v108 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v108 + 16) + 128), v107) == 0x80000000 || *(v5 + 124))
        {
          if (*(v5 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v5 + 100));
          }

          *(v5 + 124) = 0;
        }

LABEL_120:
        os_unfair_lock_unlock((v4 + 16));
LABEL_121:
        {
          v110 = WebKit::WebProcess::singleton(void)::process;
        }

        else
        {
          v242 = WebKit::WebProcess::operator new(0x370, v109);
          v110 = WebKit::WebProcess::WebProcess(v242);
          WebKit::WebProcess::singleton(void)::process = v110;
        }

        v111 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v110) + 24);
        v113 = IPC::Encoder::operator new(0x238, v112);
        *v113 = 483;
        *(v113 + 68) = 0;
        *(v113 + 70) = 0;
        *(v113 + 69) = 0;
        *(v113 + 2) = 0;
        *(v113 + 3) = 0;
        *(v113 + 1) = 0;
        IPC::Encoder::encodeHeader(v113);
        *buf = v113;
        IPC::ArgumentCoder<WebKit::NetworkResourceLoadParameters,void>::encode(v113, &v271);
        if (v256)
        {
          LOBYTE(v252[0]) = 1;
          IPC::Encoder::operator<<<BOOL>(v113, v252);
          IPC::ArgumentCoder<WebKit::CallbackID,void>::encode(v113, &v255);
        }

        else
        {
          LOBYTE(v252[0]) = 0;
          IPC::Encoder::operator<<<BOOL>(v113, v252);
        }

        v115 = IPC::Connection::sendMessageImpl(v111, buf, 0, 0);
        v116 = *buf;
        *buf = 0;
        v4 = v251;
        if (v116)
        {
          IPC::Encoder::~Encoder(v116, v114);
          bmalloc::api::tzoneFree(v128, v129);
        }

        if (v115)
        {
          v222 = qword_1ED6416F0;
          if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_ERROR))
          {
            v238 = WebCore::ResourceLoader::frameLoader(v1);
            v239 = WebCore::ResourceLoader::frame(v1);
            v240 = *(v250 + 1);
            v241 = WebCore::ResourceRequestBase::priority((v1 + 344));
            *buf = 134219776;
            *&buf[4] = v247;
            *&buf[12] = 2048;
            *&buf[14] = v1;
            *&buf[22] = 2048;
            *&buf[24] = v238;
            v4 = v251;
            v262 = 2048;
            *v263 = v239;
            *&v263[8] = 2048;
            *&v263[10] = v240;
            v264 = 2048;
            v265 = v240;
            v266 = 2048;
            v267 = v240;
            v268 = 1024;
            LODWORD(v269) = v241;
            _os_log_error_impl(&dword_19D52D000, v222, OS_LOG_TYPE_ERROR, "%p - [resourceLoader=%p, frameLoader=%p, frame=%p, webPageID=%llu, frameID=%llu, resourceID=%llu] WebLoaderStrategy::scheduleLoad: Unable to schedule resource with the NetworkProcess (priority=%d)", buf, 0x4Eu);
          }

          WebKit::WebLoaderStrategy::scheduleInternallyFailedLoad(v247, v1);
          v120 = v245;
          v119 = v246;
        }

        else
        {
          ++*(v1 + 4);
          v254 = v1;
          v117 = v250[1];
          *buf = *v250;
          *&buf[16] = v117;
          LOBYTE(v262) = 1;
          v118 = WTF::fastMalloc(0x68);
          v252[0] = WebKit::WebResourceLoader::WebResourceLoader(v118, &v254, buf);
          v120 = v245;
          v119 = v246;
          if (v254)
          {
            if (*(v254 + 4) == 1)
            {
              (*(*v254 + 8))();
            }

            else
            {
              --*(v254 + 4);
            }
          }

          WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long> const&,WTF::Ref<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>(buf, v247 + 9, &v260, v252);
          if (v252[0])
          {
            if (*(v252[0] + 2) == 1)
            {
              (*(*v252[0] + 8))();
            }

            else
            {
              --*(v252[0] + 2);
            }
          }
        }

        goto LABEL_132;
      }
    }

    else if (buf[16])
    {
      if (*&buf[8] <= 1uLL)
      {
        __break(0xC471u);
        JUMPOUT(0x19E2FE548);
      }

      **buf = 3197;
      v180 = (*(v5 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v181 = *(v5 + 72);
      if (v180 + 16 >= v181)
      {
        v180 = 0;
      }

      v182 = v180 + 16;
      v183 = v181 <= v182 ? 0 : v182;
      *(v5 + 88) = v183;
      v184 = *(v5 + 80);
      if (*(v184 + 8) > 0xFFuLL)
      {
        atomic_exchange((*(v184 + 16) + 128), v183);
        *(v5 + 124) = 0;
        v185 = *(v5 + 8);
        v186 = IPC::Encoder::operator new(0x238, v7);
        *v186 = 295;
        *(v186 + 2) = 0;
        *(v186 + 3) = 0;
        *(v186 + 1) = v2;
        *(v186 + 68) = 0;
        *(v186 + 70) = 0;
        *(v186 + 69) = 0;
        IPC::Encoder::encodeHeader(v186);
        v252[0] = v186;
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v186, v80);
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v186, v80);
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v186, v80);
        IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v186, v6);
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v186, v81);
        IPC::Connection::sendMessageImpl(v185, v252, 1, 0);
        v188 = v252[0];
        v252[0] = 0;
        if (v188)
        {
          IPC::Encoder::~Encoder(v188, v187);
          bmalloc::api::tzoneFree(v189, v190);
        }

        goto LABEL_120;
      }
    }

LABEL_282:
    __break(1u);
LABEL_283:
    v249 = 0;
    v245 = 1;
  }

  v221 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_ERROR))
  {
    v234 = WebCore::ResourceLoader::frameLoader(v1);
    v235 = WebCore::ResourceLoader::frame(v1);
    v236 = *(v250 + 1);
    v237 = WebCore::ResourceRequestBase::priority((v1 + 344));
    *buf = 134219776;
    *&buf[4] = v247;
    *&buf[12] = 2048;
    *&buf[14] = v1;
    *&buf[22] = 2048;
    *&buf[24] = v234;
    v4 = v251;
    v262 = 2048;
    *v263 = v235;
    *&v263[8] = 2048;
    *&v263[10] = v236;
    v264 = 2048;
    v265 = v236;
    v266 = 2048;
    v267 = v236;
    v268 = 1024;
    LODWORD(v269) = v237;
    _os_log_error_impl(&dword_19D52D000, v221, OS_LOG_TYPE_ERROR, "%p - [resourceLoader=%p, frameLoader=%p, frame=%p, webPageID=%llu, frameID=%llu, resourceID=%llu] WebLoaderStrategy::scheduleLoad: no sourceOrigin (priority=%d)", buf, 0x4Eu);
  }

  WebKit::WebLoaderStrategy::scheduleInternallyFailedLoad(v247, v1);
  v120 = v245;
  v119 = v246;
  v65 = v249;
LABEL_132:
  if ((v120 & 1) == 0)
  {
    CFRelease(*(v65 + 1));
  }

  if ((v119 & 1) == 0)
  {
    if (*(v3 + 28) == 2)
    {
      WebCore::Node::removedLastRef(v3);
    }

    else
    {
      *(v3 + 28) -= 2;
    }
  }

  WebKit::NetworkResourceLoadParameters::~NetworkResourceLoadParameters(&v271, v121);
  if (v4)
  {
LABEL_138:
    if (*(v4 + 16) == 1)
    {
      (*(*v4 + 8))(v4);
    }

    else
    {
      --*(v4 + 16);
    }
  }
}

double WebKit::maximumBufferingTime(uint64_t a1)
{
  result = 0.0;
  if (a1)
  {
    if ((*(a1 + 572) & 0x1Fu) <= 0x11)
    {
      return dbl_19E704810[*(a1 + 572) & 0x1F];
    }
  }

  return result;
}

uint64_t *WTF::Function<void ()(void)>::Function<WebKit::WebLoaderStrategy::scheduleLoadFromNetworkProcess(WebCore::ResourceLoader &,WebCore::ResourceRequest const&,WebKit::WebResourceLoader::TrackingParameters const&,BOOL,WTF::Seconds)::$_0,void>(uint64_t *a1, uint64_t *a2)
{
  v4 = WTF::fastMalloc(0x60);
  v5 = *a2;
  *a2 = 0;
  *v4 = &unk_1F112C838;
  *(v4 + 8) = v5;
  v6 = a2[1];
  a2[1] = 0;
  *(v4 + 16) = v6;
  WTF::URL::URL(v4 + 24, a2 + 2);
  v7 = a2[7];
  a2[7] = 0;
  *(v4 + 64) = v7;
  LODWORD(v7) = *(a2 + 16);
  *(v4 + 76) = *(a2 + 34);
  *(v4 + 72) = v7;
  v8 = a2[9];
  a2[9] = 0;
  *(v4 + 80) = v8;
  *(v4 + 88) = *(a2 + 80);
  *a1 = v4;
  return a1;
}

uint64_t WebKit::WebLoaderStrategy::scheduleLoadFromNetworkProcess(WebCore::ResourceLoader &,WebCore::ResourceRequest const&,WebKit::WebResourceLoader::TrackingParameters const&,BOOL,WTF::Seconds)::$_0::~$_0(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *a1;
  *a1 = 0;
  if (v7)
  {
    if (v7[4] == 1)
    {
      (*(*v7 + 8))(v7);
    }

    else
    {
      --v7[4];
    }
  }

  return a1;
}

uint64_t WebKit::addParametersShared(WebCore::CrossOriginAccessControlCheckDisabler *a1, uint64_t a2, int a3)
{
  v6 = WebCore::CrossOriginAccessControlCheckDisabler::singleton(a1);
  *(a2 + 3536) = (*(*v6 + 16))(v6);
  {
    result = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v45 = WebKit::WebProcess::operator new(0x370, v7);
    result = WebKit::WebProcess::WebProcess(v45);
    WebKit::WebProcess::singleton(void)::process = result;
  }

  *(a2 + 3187) = *(result + 816);
  if (a1)
  {
    v9 = *(a1 + 15);
    if (v9 && (v10 = *(v9 + 8)) != 0)
    {
      ++*(v10 + 16);
      WebKit::policySourceDocumentLoaderForFrame(&v47, a1);
      if (v47)
      {
        v12 = *(v47 + 3580);
      }

      else
      {
        v12 = 1;
      }

      *(a2 + 3188) = v12 & 1;
      v13 = *(a1 + 28);
      if (v13)
      {
        *(a2 + 3432) = *(v13 + 232);
        v14 = *(v13 + 240);
        if (v14)
        {
          atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
        }

        v15 = *(a2 + 3440);
        *(a2 + 3440) = v14;
        if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v11);
        }

        v16 = *(v13 + 248);
        if (v16)
        {
          atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
        }

        v17 = *(a2 + 3448);
        *(a2 + 3448) = v16;
        if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v17, v11);
        }

        v18 = *(v13 + 720);
        *(a2 + 3585) = (*(v18 + 680) & 0x8000000000000) != 0;
        *(a2 + 3586) = (*(v18 + 680) & 0x4000000000000) != 0;
      }

      v19 = *(a1 + 3);
      if (v19)
      {
        v20 = *(v19 + 8);
        if (v20)
        {
          v21 = (v20 + 8);
          ++*(v20 + 8);
          *(a2 + 3512) = *(v20 + 1017);
          WebCore::ResourceRequestBase::httpBody(&v46, (a2 + 24));
          WebCore::Page::logMediaDiagnosticMessage();
          v22 = v46;
          v46 = 0;
          if (v22)
          {
            WTF::RefCounted<WebCore::FormData>::deref(v22);
          }

          v23 = WebKit::WebPage::fromCorePage(v20);
          if (v23)
          {
            v24 = v23;
            CFRetain(*(v23 + 8));
            v25 = *(v24 + 592);
            if (v25)
            {
              v27 = *(v25 + 16);
              v26 = v25 + 16;
              *v26 = v27 + 1;
              v28 = *(v26 + 24);
              if (v28)
              {
                LOBYTE(v28) = *(v28 - 12) != 0;
              }

              *(a2 + 4040) = v28;
              WTF::RefCounted<WebKit::WebExtensionControllerProxy>::deref(v26);
            }

            CFRelease(*(v24 + 8));
          }

          WTF::RefCounted<WebCore::Page>::deref(v21);
        }
      }

      v29 = *(a1 + 14);
      if (v29)
      {
        v30 = *(v29 + 8);
        if (v30)
        {
          *(v30 + 28) += 2;
          v31 = *(*(*(v30 + 48) + 8) + 552);
          if (v31)
          {
            v32 = *(v31 + 8);
            if (v32)
            {
              ++*(v32 + 16);
              v33 = WebCore::FrameLoader::frameID(*(v32 + 208));
              if ((*(a2 + 3528) & 1) == 0)
              {
                *(a2 + 3528) = 1;
              }

              *(a2 + 3520) = v33;
              v35 = *(*(v30 + 48) + 8);
              *(a2 + 3408) = *(v35 + 232);
              v36 = *(v35 + 240);
              if (v36)
              {
                atomic_fetch_add_explicit(v36, 2u, memory_order_relaxed);
              }

              v37 = *(a2 + 3416);
              *(a2 + 3416) = v36;
              if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v37, v34);
              }

              v38 = *(v35 + 248);
              if (v38)
              {
                atomic_fetch_add_explicit(v38, 2u, memory_order_relaxed);
              }

              v39 = *(a2 + 3424);
              *(a2 + 3424) = v38;
              if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v39, v34);
              }

              v40 = *(*(v30 + 48) + 8);
              v41 = *(v40 + 800);
              if (v41)
              {
                atomic_fetch_add_explicit(v41, 2u, memory_order_relaxed);
              }

              v42 = *(a2 + 3328);
              *(a2 + 3328) = v41;
              if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v42, v34);
              }

              v43 = *(v40 + 824);
              *(a2 + 3336) = *(v40 + 808);
              *(a2 + 3352) = v43;
              if (*(v32 + 16) == 1)
              {
                (*(*v32 + 8))(v32);
              }

              else
              {
                --*(v32 + 16);
              }
            }
          }

          if (*(v30 + 28) == 2)
          {
            WebCore::Node::removedLastRef(v30);
          }

          else
          {
            *(v30 + 28) -= 2;
          }
        }
      }

      result = v47;
      if (v47)
      {
        v44 = *(v47 + 3546);
      }

      else
      {
        v44 = 0;
      }

      *(a2 + 3190) = v44;
      if (a3)
      {
        *(a2 + 4041) = *(*(v10 + 128) + 705) & 1;
      }

      v47 = 0;
      if (result)
      {
        if (*(result + 24) == 1)
        {
          result = (*(*result + 24))(result);
        }

        else
        {
          --*(result + 24);
        }
      }

      if (*(v10 + 16) == 1)
      {
        return (*(*v10 + 8))(v10);
      }

      else
      {
        --*(v10 + 16);
      }
    }

    else
    {
      result = 133;
      __break(0xC471u);
    }
  }

  return result;
}

BOOL WebCore::NavigationAction::isEmpty(WebCore::NavigationAction *this)
{
  if (*(this + 224) != 1 || !*this)
  {
    return 1;
  }

  if (*(*this + 4))
  {
    v1 = WebCore::ResourceRequestBase::url((this + 240));
    if (*v1)
    {
      return *(*v1 + 4) == 0;
    }
  }

  return 1;
}

uint64_t WebKit::WebLoaderStrategy::scheduleInternallyFailedLoad(WebKit::WebLoaderStrategy *this, WebCore::ResourceLoader *a2)
{
  v4 = (this + 16);
  v3 = *(this + 2);
  ++*(a2 + 4);
  if (!v3)
  {
    WTF::HashTable<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::FastMalloc>::expand(this + 2);
    v3 = *v4;
  }

  v5 = *(v3 - 8);
  v6 = (a2 + ~(a2 << 32)) ^ ((a2 + ~(a2 << 32)) >> 22);
  v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
  v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
  v9 = v5 & ((v8 >> 31) ^ v8);
  v10 = (v3 + 8 * v9);
  v11 = *v10;
  if (*v10)
  {
    v12 = 0;
    v13 = 1;
    do
    {
      if (v11 == a2)
      {
        if (*(a2 + 4) == 1)
        {
          (*(*a2 + 8))(a2);
        }

        else
        {
          --*(a2 + 4);
        }

        goto LABEL_19;
      }

      if (v11 == -1)
      {
        v12 = v10;
      }

      v9 = (v9 + v13) & v5;
      v10 = (v3 + 8 * v9);
      v11 = *v10;
      ++v13;
    }

    while (*v10);
    if (v12)
    {
      *v12 = 0;
      --*(*v4 - 16);
      v10 = v12;
    }
  }

  *v10 = a2;
  v14 = *v4;
  if (*v4)
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
  if (v17 <= 0x400)
  {
    if (3 * v17 > 4 * v16)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v17 <= 2 * v16)
  {
LABEL_18:
    WTF::HashTable<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::FastMalloc>::expand(v4);
  }

LABEL_19:

  return WTF::RunLoop::TimerBase::start();
}

uint64_t WebCore::CrossOriginOpenerPolicy::operator=(uint64_t a1, WTF::StringImpl *a2)
{
  *a1 = *a2;
  v4 = *(a2 + 1);
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(a2 + 2);
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  v7 = *(a1 + 16);
  *(a1 + 16) = v6;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  return a1;
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::WebURLSchemeTaskProxy&>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, atomic_uint *volatile *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  if (*a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2FF054);
  }

  if (!v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2FF074);
  }

  v8 = result;
  v9 = *result;
  if (!*result)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(result, 0);
    v9 = *v8;
    v5 = *a2;
  }

  v10 = *(v9 - 8);
  v11 = (v5 + ~(v5 << 32)) ^ ((v5 + ~(v5 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = (v9 + 16 * v14);
  v16 = *v15;
  if (*v15)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      if (v16 == v5)
      {
        v24 = 0;
        v25 = v9 + 16 * *(v9 - 4);
        goto LABEL_27;
      }

      if (v16 == -1)
      {
        v17 = v15;
      }

      v14 = (v14 + v18) & v10;
      v15 = (v9 + 16 * v14);
      v16 = *v15;
      ++v18;
    }

    while (*v15);
    if (v17)
    {
      *v17 = 0;
      v17[1] = 0;
      --*(*v8 - 16);
      v5 = *a2;
      v15 = v17;
    }
  }

  *v15 = v5;
  if (!*a3)
  {
    v19 = WTF::fastCompactMalloc(0x10);
    *v19 = 1;
    *(v19 + 8) = a3;
    v20 = *a3;
    *a3 = v19;
    if (v20)
    {
      if (atomic_fetch_add(v20, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v20);
        WTF::fastFree(v20, a2);
      }
    }
  }

  v21 = *a3;
  atomic_fetch_add(*a3, 1u);
  result = v15[1];
  v15[1] = v21;
  if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result);
    result = WTF::fastFree(result, a2);
  }

  v22 = *v8;
  if (*v8)
  {
    v23 = *(v22 - 12) + 1;
  }

  else
  {
    v23 = 1;
  }

  *(v22 - 12) = v23;
  v26 = (*(v22 - 16) + v23);
  v27 = *(v22 - 4);
  if (v27 > 0x400)
  {
    if (v27 <= 2 * v26)
    {
LABEL_24:
      result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v8, v15);
      v15 = result;
      v22 = *v8;
      if (*v8)
      {
        v27 = *(v22 - 4);
      }

      else
      {
        v27 = 0;
      }
    }
  }

  else if (3 * v27 <= 4 * v26)
  {
    goto LABEL_24;
  }

  v25 = v22 + 16 * v27;
  v24 = 1;
LABEL_27:
  *a4 = v15;
  *(a4 + 8) = v25;
  *(a4 + 16) = v24;
  return result;
}

uint64_t *WebKit::WebLoaderStrategy::removeURLSchemeTaskProxy(WebKit::WebLoaderStrategy *this, WebKit::WebURLSchemeTaskProxy *a2)
{
  v6 = *(a2 + 30);
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(this + 10, &v6);
  v4 = *(this + 10);
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
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(this + 10, result);
  }

  return result;
}

uint64_t *WebKit::WebLoaderStrategy::remove(uint64_t *this, WebCore::ResourceLoader *a2)
{
  v34 = *(a2 + 94);
  v35 = v34 != 0;
  if (v34)
  {
    v2 = a2;
    v3 = this;
    this = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(this + 10, &v34);
    v5 = this;
    v6 = *(v3 + 80);
    if (v6)
    {
      v6 += 2 * *(v6 - 1);
    }

    if (v6 != this)
    {
      goto LABEL_40;
    }

    while (1)
    {
      if (*(v3 + 16))
      {
        this = WTF::HashTable<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::FastMalloc>::lookup<WTF::HashSetTranslator<WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::DefaultHash<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>>,(WTF::ShouldValidateKey)1,WebCore::ResourceLoader const*>((v3 + 16), v2);
        if (this)
        {
          return WTF::HashSet<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::DefaultHash<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>((v3 + 16), v2);
        }
      }

      v5 = v35;
      if (v35)
      {
        v9 = *(v3 + 72);
        v8 = (v3 + 72);
        v7 = v9;
        if (!v9)
        {
          return this;
        }

        if (v34 == -1 || !v34)
        {
          __break(0xC471u);
          JUMPOUT(0x19E2FF498);
        }

        v10 = *(v7 - 8);
        v11 = (v34 + ~(v34 << 32)) ^ ((v34 + ~(v34 << 32)) >> 22);
        v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
        v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
        v14 = v10 & ((v13 >> 31) ^ v13);
        v15 = *(v7 + 16 * v14);
        if (v15 != v34)
        {
          v27 = 1;
          while (v15)
          {
            v14 = (v14 + v27) & v10;
            v15 = *(v7 + 16 * v14);
            ++v27;
            if (v15 == v34)
            {
              goto LABEL_11;
            }
          }

          v14 = *(v7 - 4);
        }

LABEL_11:
        if (v14 == *(v7 - 4))
        {
          return this;
        }

        v16 = (v7 + 16 * v14);
        v2 = v16[1];
        v16[1] = 0;
        v17 = *v8;
        if (!*v8 || (v17 += 16 * *(v17 - 4), v17 != v16))
        {
          if (v17 != v16)
          {
            *v16 = -1;
            v16[1] = 0;
            v18 = *v8;
            v19 = vadd_s32(*(*v8 - 16), 0xFFFFFFFF00000001);
            *(v18 - 16) = v19;
            v20 = *(v18 - 4);
            if (6 * v19.i32[1] < v20 && v20 >= 9)
            {
              this = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v8, v20 >> 1, 0);
            }
          }
        }

        if (!v2)
        {
          return this;
        }

        {
          v22 = WebKit::WebProcess::singleton(void)::process;
        }

        else
        {
          v33 = WebKit::WebProcess::operator new(0x370, v4);
          v22 = WebKit::WebProcess::WebProcess(v33);
          WebKit::WebProcess::singleton(void)::process = v22;
        }

        v3 = *(v22 + 42);
        if (!v3)
        {
          goto LABEL_29;
        }

        ++*(v3 + 20);
        v5 = v35;
        if (v35)
        {
          break;
        }
      }

      __break(1u);
LABEL_40:
      v30 = *(v5 + 8);
      if (v30)
      {
        *(v5 + 8) = 0;
        this = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove((v3 + 80), v5);
        v31 = *(v30 + 8);
        if (v31)
        {
          ++*(v31 + 2);
        }

        if (atomic_fetch_add(v30, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v30);
          this = WTF::fastFree(v30, v4);
        }

        if (v31)
        {
          WebKit::WebURLSchemeTaskProxy::stopLoading(v31);
          return WTF::RefCounted<WebKit::WebURLSchemeTaskProxy>::deref(v31 + 2, v32);
        }
      }

      else
      {
        this = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove((v3 + 80), v5);
      }
    }

    v23 = *(v3 + 24);
    v24 = IPC::Encoder::operator new(0x238, v4);
    *v24 = 476;
    *(v24 + 68) = 0;
    *(v24 + 70) = 0;
    *(v24 + 69) = 0;
    *(v24 + 2) = 0;
    *(v24 + 3) = 0;
    *(v24 + 1) = 0;
    IPC::Encoder::encodeHeader(v24);
    v36 = v24;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v24, v34);
    IPC::Connection::sendMessageImpl(v23, &v36, 0, 0);
    v26 = v36;
    v36 = 0;
    if (v26)
    {
      IPC::Encoder::~Encoder(v26, v25);
      bmalloc::api::tzoneFree(v28, v29);
    }

    if (*(v3 + 20) == 1)
    {
      (*(*v3 + 24))(v3);
    }

    else
    {
      --*(v3 + 20);
    }

LABEL_29:
    this = WebKit::WebResourceLoader::detachFromCoreLoader(v2);
    if (*(v2 + 2) == 1)
    {
      return (*(*v2 + 8))(v2);
    }

    else
    {
      --*(v2 + 2);
    }
  }

  return this;
}

uint64_t *WTF::HashSet<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::DefaultHash<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (*result)
  {
    if (a2 == -1 || !a2)
    {
      __break(0xC471u);
      JUMPOUT(0x19E2FF62CLL);
    }

    v3 = result;
    v4 = *(v2 - 8);
    v5 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
    v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
    v8 = v4 & ((v7 >> 31) ^ v7);
    v9 = *(v2 + 8 * v8);
    if (v9 != a2)
    {
      v10 = 1;
      while (v9)
      {
        v8 = (v8 + v10) & v4;
        v9 = *(v2 + 8 * v8);
        ++v10;
        if (v9 == a2)
        {
          goto LABEL_10;
        }
      }

      v8 = *(v2 - 4);
    }

LABEL_10:
    if (v8 != *(v2 - 4))
    {
      result = *(v2 + 8 * v8);
      *(v2 + 8 * v8) = -1;
      if (result)
      {
        if (*(result + 4) == 1)
        {
          result = (*(*result + 8))(result);
          v2 = *v3;
        }

        else
        {
          --*(result + 4);
        }
      }

      v11 = vadd_s32(*(v2 - 16), 0xFFFFFFFF00000001);
      *(v2 - 16) = v11;
      v12 = *(v2 - 4);
      if (6 * v11.i32[1] < v12 && v12 >= 9)
      {

        return WTF::HashTable<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::FastMalloc>::rehash(v3, v12 >> 1);
      }
    }
  }

  return result;
}

uint64_t WebKit::WebResourceLoader::detachFromCoreLoader(WebKit::WebResourceLoader *this)
{
  v2 = WTF::RunLoop::mainSingleton(this);
  if (WTF::RunLoop::isCurrent(v2))
  {
    result = *(this + 2);
    *(this + 2) = 0;
    if (result)
    {
      if (*(result + 16) == 1)
      {
        v4 = *(*result + 8);

        return v4();
      }

      else
      {
        --*(result + 16);
      }
    }
  }

  else
  {
    result = 101;
    __break(0xC471u);
  }

  return result;
}

WTF::StringImpl *WebKit::WebLoaderStrategy::networkProcessCrashed(WebKit::WebLoaderStrategy *this)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf[0]) = 134217984;
    *(buf + 4) = this;
    _os_log_error_impl(&dword_19D52D000, v2, OS_LOG_TYPE_ERROR, "%p - WebLoaderStrategy::networkProcessCrashed: failing all pending resource loaders", buf, 0xCu);
  }

  result = *(this + 9);
  if (!result)
  {
    v6 = 0;
    v5 = 0;
    goto LABEL_12;
  }

  v5 = *(result - 1);
  v6 = result + 16 * v5;
  if (!*(result - 3))
  {
LABEL_12:
    v8 = v6;
    v6 = result + 16 * v5;
    goto LABEL_13;
  }

  if (!v5)
  {
    v8 = *(this + 9);
LABEL_14:
    v9 = result + 16 * *(result - 1);
    goto LABEL_15;
  }

  v7 = 16 * v5;
  v8 = *(this + 9);
  while ((*v8 + 1) <= 1)
  {
    v8 += 16;
    v7 -= 16;
    if (!v7)
    {
      v8 = v6;
      break;
    }
  }

LABEL_13:
  if (result)
  {
    goto LABEL_14;
  }

  v9 = 0;
LABEL_15:
  if (v9 == v8)
  {
    if (!result)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  do
  {
    v29 = *(*(v8 + 1) + 16);
    if (v29)
    {
      ++*(v29 + 4);
    }

    WebKit::WebLoaderStrategy::scheduleInternallyFailedLoad(this, v29);
    if (*(v29 + 4) == 1)
    {
      (*(*v29 + 8))(v29);
    }

    else
    {
      --*(v29 + 4);
    }

    WebKit::WebResourceLoader::detachFromCoreLoader(*(v8 + 1));
    do
    {
      v8 += 16;
    }

    while (v8 != v6 && (*v8 + 1) <= 1);
  }

  while (v8 != v9);
  result = *(this + 9);
  if (result)
  {
LABEL_17:
    *(this + 9) = 0;
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(result, v3);
  }

LABEL_18:
  v10 = *(this + 11);
  *(this + 11) = 0;
  if (!v10)
  {
    v12 = 0;
    v11 = 0;
LABEL_27:
    v14 = v12;
    v12 = v10 + 16 * v11;
    if (!v10)
    {
      v16 = 0;
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  v11 = *(v10 - 4);
  v12 = v10 + 16 * v11;
  if (!*(v10 - 12))
  {
    goto LABEL_27;
  }

  if (!v11)
  {
    v15 = 0;
    v14 = v10;
    goto LABEL_30;
  }

  v13 = 16 * v11;
  v14 = v10;
  while ((*v14 + 1) <= 1)
  {
    v14 += 16;
    v13 -= 16;
    if (!v13)
    {
      v14 = v12;
      break;
    }
  }

LABEL_25:
  v15 = *(v10 - 4);
LABEL_30:
  v16 = v10 + 16 * v15;
LABEL_31:
  while (v14 != v16)
  {
    v35 = 0;
    WTF::URL::invalidate(&v35);
    WebCore::internalError();
    WebCore::ResourceResponseBase::ResourceResponseBase(buf);
    cf = 0;
    v45 = 0;
    v43 = v43 & 0xF1 | 4;
    (*(**(v14 + 8) + 16))(*(v14 + 8), &v36, buf);
    v18 = cf;
    cf = 0;
    if (v18)
    {
      CFRelease(v18);
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(buf, v17);
    v19 = v39;
    v39 = 0;
    if (v19)
    {
      CFRelease(v19);
    }

    v20 = v38;
    v38 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v3);
    }

    v21 = v37;
    v37 = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v3);
    }

    v22 = v36;
    v36 = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v3);
    }

    result = v35;
    v35 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v3);
    }

    do
    {
      v14 += 16;
    }

    while (v14 != v12 && (*v14 + 1) <= 1);
  }

  v23 = *(this + 12);
  *(this + 12) = 0;
  if (!v23)
  {
    v25 = 0;
    v24 = 0;
    goto LABEL_71;
  }

  v24 = *(v23 - 4);
  v25 = v23 + 16 * v24;
  if (!*(v23 - 12))
  {
LABEL_71:
    v27 = v25;
    v25 = v23 + 16 * v24;
    goto LABEL_72;
  }

  if (!v24)
  {
    v28 = 0;
    v27 = v23;
LABEL_74:
    v30 = v23 + 16 * v28;
    goto LABEL_75;
  }

  v26 = 16 * v24;
  v27 = v23;
  while ((*v27 + 1) <= 1)
  {
    v27 += 16;
    v26 -= 16;
    if (!v26)
    {
      v27 = v25;
      break;
    }
  }

LABEL_72:
  if (v23)
  {
    v28 = *(v23 - 4);
    goto LABEL_74;
  }

  v30 = 0;
LABEL_75:
  while (v27 != v30)
  {
    v36 = 0;
    WTF::URL::invalidate(&v36);
    WebCore::internalError();
    (*(**(v27 + 8) + 16))(*(v27 + 8), buf);
    v31 = v42;
    v42 = 0;
    if (v31)
    {
      CFRelease(v31);
    }

    v32 = v41;
    v41 = 0;
    if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v32, v3);
    }

    v33 = *(&buf[0] + 1);
    *(&buf[0] + 1) = 0;
    if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v33, v3);
    }

    v34 = *&buf[0];
    *&buf[0] = 0;
    if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v34, v3);
    }

    result = v36;
    v36 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v3);
    }

    do
    {
      v27 += 16;
    }

    while (v27 != v25 && (*v27 + 1) <= 1);
  }

  if (v23)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v23, v3);
  }

  if (v10)
  {
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v10, v3);
  }

  return result;
}

WTF *WebKit::WebLoaderStrategy::loadDataURLSynchronously(WebKit::WebLoaderStrategy *this, const WebCore::ResourceRequest *a2, WebCore::ResourceRequestBase *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = WebCore::ResourceResponseBase::ResourceResponseBase(this);
  *(v6 + 248) = 0;
  *(v6 + 256) = 0;
  *(v6 + 138) = *(v6 + 138) & 0xF1 | 4;
  *(v6 + 264) = 0;
  *(v6 + 272) = 0;
  WTF::URL::invalidate((v6 + 272));
  v7 = (this + 312);
  *(this + 41) = 0;
  *(this + 39) = 0;
  *(this + 318) = 0;
  *(this + 336) = 1;
  *(this + 43) = 0;
  *(this + 44) = 0;
  WebCore::ResourceRequestBase::url(a3);
  WebCore::DataURLDecoder::decode();
  if (v30)
  {
    WebCore::ResourceRequestBase::url(a3);
    WebCore::ResourceResponseBase::dataURLResponse();
    WebCore::ResourceResponseBase::operator=(this, buf);
    v9 = cf;
    cf = 0;
    v10 = *(this + 31);
    *(this + 31) = v9;
    if (v10)
    {
      CFRelease(v10);
      v23 = cf;
      *(this + 256) = v38;
      cf = 0;
      if (v23)
      {
        CFRelease(v23);
      }
    }

    else
    {
      *(this + 256) = v38;
      cf = 0;
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(buf, v8);
    if ((v30 & 1) == 0)
    {
      __break(1u);
    }

    result = *(this + 43);
    if (result)
    {
      *(this + 43) = 0;
      *(this + 88) = 0;
      result = WTF::fastFree(result, v11);
    }

    *(this + 43) = v28;
    v28 = 0;
    *(this + 44) = v29;
  }

  else
  {
    v13 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 134217984;
      *(buf + 4) = a2;
      _os_log_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEFAULT, "%p - WebLoaderStrategy::loadDataURLSynchronously: decoding of data failed", buf, 0xCu);
    }

    WebCore::ResourceRequestBase::url(a3);
    WebCore::internalError();
    v15 = *&buf[0];
    *&buf[0] = 0;
    v16 = *(this + 33);
    *(this + 33) = v15;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v14);
    }

    WTF::URL::operator=(this + 272, buf + 8);
    v17 = v32;
    v32 = 0;
    v18 = *v7;
    *v7 = v17;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v11);
    }

    *(this + 80) = v33;
    *(this + 162) = v34;
    v19 = v35;
    v35 = 0;
    v20 = *(this + 41);
    *(this + 41) = v19;
    if (v20)
    {
      CFRelease(v20);
      v24 = v35;
      *(this + 336) = v36;
      v35 = 0;
      if (v24)
      {
        CFRelease(v24);
      }
    }

    else
    {
      *(this + 336) = v36;
      v35 = 0;
    }

    v21 = v32;
    v32 = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v11);
    }

    v22 = *(&buf[0] + 1);
    *(&buf[0] + 1) = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v11);
    }

    result = *&buf[0];
    *&buf[0] = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v11);
    }
  }

  if (v30 == 1)
  {
    if (v28)
    {
      WTF::fastFree(v28, v11);
    }

    if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v27, v11);
    }

    if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v26, v11);
    }

    result = v25;
    if (v25)
    {
      if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(v25, v11);
      }
    }
  }

  return result;
}

uint64_t WebCore::ResourceError::operator=(uint64_t a1, WTF::StringImpl *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  WTF::URL::operator=(a1 + 8, a2 + 8);
  v7 = *(a2 + 6);
  *(a2 + 6) = 0;
  v8 = *(a1 + 48);
  *(a1 + 48) = v7;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v6);
  }

  v9 = *(a2 + 14);
  *(a1 + 60) = *(a2 + 30);
  *(a1 + 56) = v9;
  v10 = *(a2 + 8);
  *(a2 + 8) = 0;
  v11 = *(a1 + 64);
  *(a1 + 64) = v10;
  if (v11)
  {
    CFRelease(v11);
  }

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void WebKit::WebLoaderStrategy::tryLoadingSynchronouslyUsingURLSchemeHandler(_BYTE *a1, WebKit::WebFrame **a2, uint64_t a3, WebCore::ResourceRequestBase *a4)
{
  if ((*(*a2 + 5))(a2) && (v8 = a2[3]) != 0 && (v9 = WebKit::WebFrame::page(a2[3])) != 0)
  {
    v10 = v9;
    CFRetain(*(v9 + 8));
    v11 = WebCore::ResourceRequestBase::url(a4);
    v17[0] = WTF::URL::protocol(v11);
    v17[1] = v12 & 0xFFFFFFFFFFLL;
    v13 = WTF::HashMap<WTF::String,WTF::RefPtr<WebKit::WebURLSchemeHandlerProxy,WTF::RawPtrTraits<WebKit::WebURLSchemeHandlerProxy>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeHandlerProxy>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<WebKit::WebURLSchemeHandlerProxy,WTF::RawPtrTraits<WebKit::WebURLSchemeHandlerProxy>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeHandlerProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::StringViewHashTranslator,WTF::StringView>((v10 + 1792), v17);
    if (v13)
    {
      v14 = v13;
      v15 = (v13 + 8);
      ++*(v13 + 8);
      WebKit::WebLoaderStrategy::SyncLoadResult::SyncLoadResult(v17);
      WebKit::WebURLSchemeHandlerProxy::loadSynchronously(v14, a3, v8, a4, v17, &v18, &v19);
      WebKit::WebLoaderStrategy::SyncLoadResult::SyncLoadResult(a1, v17);
      a1[360] = 1;
      WebKit::WebLoaderStrategy::SyncLoadResult::~SyncLoadResult(v17, v16);
      WTF::RefCounted<WebKit::WebURLSchemeHandlerProxy>::deref(v15);
    }

    else
    {
      *a1 = 0;
      a1[360] = 0;
    }

    CFRelease(*(v10 + 8));
  }

  else
  {
    *a1 = 0;
    a1[360] = 0;
  }
}

void WebKit::WebLoaderStrategy::loadResourceSynchronously(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, WTF::StringImpl *a9, atomic_uint *a10)
{
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = v10;
  v191 = *MEMORY[0x1E69E9840];
  v92 = v24;
  v25 = *(v24 + 16);
  v26 = (*(*v25 + 40))(v25);
  if (v26)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

  if (v27)
  {
    WebCore::LocalFrameLoaderClient::ref(v27);
  }

  if (!v26)
  {
    goto LABEL_40;
  }

  v28 = *(v25 + 3);
  if (!v28)
  {
    goto LABEL_40;
  }

  CFRetain(*(v28 + 8));
  v29 = WebKit::WebFrame::page(v28);
  if (v29)
  {
    v30 = v29;
    v85 = v23;
    v86 = v14;
    v91 = v20;
    CFRetain(*(v29 + 8));
    v31 = *(v30 + 56);
    if (!v31)
    {
LABEL_38:
      CFRelease(*(v30 + 8));
      goto LABEL_39;
    }

    v89 = v27;
    v84 = *(v30 + 56);
    v32 = buf;
    v88 = (v31 + 8);
    ++*(v31 + 8);
    v33 = *(v30 + 1832);
    v87 = *(v30 + 48);
    v34 = *(v28 + 88);
    v35 = *(WebCore::FrameLoader::frame(v92) + 224);
    if (!v35)
    {
      v80 = v12;
      v81 = qword_1ED6416F0;
      if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_ERROR))
      {
        v83 = WebCore::FrameLoader::frame(v92);
        *buf = 134219520;
        *&buf[4] = v85;
        *&buf[12] = 2048;
        *&buf[14] = 0;
        *&buf[22] = 2048;
        v129 = v92;
        v130 = 2048;
        v131 = v83;
        v132 = 2048;
        v133 = v87;
        v134 = 2048;
        v135 = v87;
        v136 = 2048;
        v137 = v87;
        _os_log_error_impl(&dword_19D52D000, v81, OS_LOG_TYPE_ERROR, "%p - [resourceLoader=%p, frameLoader=%p, frame=%p, webPageID=%llu, frameID=%llu, resourceID=%llu] WebLoaderStrategy::loadResourceSynchronously: no document", buf, 0x48u);
      }

      WebCore::ResourceRequestBase::url(v91);
      WebCore::internalError();
      WebCore::ResourceError::operator=(v80, buf);
      WebCore::ResourceError::~ResourceError(buf, v82);
      goto LABEL_37;
    }

    v90 = v12;
    v35[7] += 2;
    WebCore::ResourceRequestBase::url(v91);
    if (WTF::URL::protocolIs())
    {
      v59 = qword_1ED6416F0;
      if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_ERROR))
      {
        v76 = WebCore::FrameLoader::frame(v92);
        *buf = 134219520;
        *&buf[4] = v85;
        *&buf[12] = 2048;
        *&buf[14] = 0;
        *&buf[22] = 2048;
        v129 = v92;
        v130 = 2048;
        v131 = v76;
        v132 = 2048;
        v133 = v87;
        v134 = 2048;
        v135 = v87;
        v136 = 2048;
        v137 = v87;
        _os_log_error_impl(&dword_19D52D000, v59, OS_LOG_TYPE_ERROR, "%p - [resourceLoader=%p, frameLoader=%p, frame=%p, webPageID=%llu, frameID=%llu, resourceID=%llu] WebLoaderStrategy::loadResourceSynchronously: URL will be loaded as data", buf, 0x48u);
      }

      WebKit::WebLoaderStrategy::loadDataURLSynchronously(buf, v85, v91);
      WebCore::ResourceError::operator=(v90, v143);
      WebCore::ResourceResponse::operator=(a9, buf);
      v32 = a10;
      v61 = *a10;
      if (*a10)
      {
        *a10 = 0;
        a10[2] = 0;
        WTF::fastFree(v61, v60);
      }
    }

    else
    {
      WebKit::WebLoaderStrategy::tryLoadingSynchronouslyUsingURLSchemeHandler(buf, v92[2], v22, v91);
      if (v146 != 1)
      {
        *buf = v33;
        *&buf[8] = v87;
        *&buf[16] = v34;
        WebCore::ResourceRequest::ResourceRequest(&v129, v91);
        v139 = 0;
        v138 = 0u;
        v140 = 1;
        v141 = 0;
        v142 = 0;
        v147 = 0;
        v148 = 0x10000;
        v149 = 1;
        v151 = 0;
        memset(v150, 0, 35);
        v152 = 0u;
        BYTE9(v152) = 2;
        *(&v152 + 10) = 0;
        BYTE14(v152) = 0;
        v154 = 0;
        v155[0] = 0;
        memset(v153, 0, 41);
        WTF::URL::invalidate(v155);
        v156[0] = 0;
        WTF::URL::invalidate(v156);
        v157 = 0;
        v158 = 0u;
        v159 = 0;
        v160 = 0u;
        WebCore::HTTPHeaderMap::HTTPHeaderMap(v161);
        v163 = 0;
        v164 = 0;
        v167 = 0;
        v168 = 0;
        v165 = 0u;
        v166 = 0;
        v169 = 1;
        v170[0] = 0;
        WTF::URL::invalidate(v170);
        v173[0] = 0;
        v171 = 0;
        v172 = 0;
        WTF::URL::invalidate(v173);
        v174 = 0;
        v177 = 0;
        v178 = 0;
        v179 = 0;
        v175 = 0u;
        v176 = 0;
        v180 = 1;
        v181 = 0;
        v182 = 0;
        v183 = 0;
        v184 = 0;
        v185 = 0;
        v186 = 0;
        v187[0] = 0;
        WTF::URL::invalidate(v187);
        v188 = 0;
        v189 = 0;
        v190 = 0;
        WebKit::NetworkResourceLoadParameters::createSandboxExtensionHandlesIfNecessary(buf);
        *&v150[5] = v22;
        LODWORD(v139) = WTF::legacyPresentingApplicationPID(v36);
        WORD2(v139) = 0;
        BYTE6(v139) = *(v16 + 2) != 0;
        HIBYTE(v139) = v18;
        WebKit::WebFrame::protectedCoreLocalFrame(v28, v112);
        LOBYTE(v140) = WebKit::shouldClearReferrerOnHTTPSToHTTPRedirect(*v112, v37);
        v39 = *v112;
        *v112 = 0;
        if (v39)
        {
          if (v39[4] == 1)
          {
            (*(*v39 + 8))(v39);
          }

          else
          {
            --v39[4];
          }
        }

        LOBYTE(v163) = 1;
        DWORD2(v152) = *v16;
        *(&v152 + 11) = *(v16 + 3);
        v40 = *(v16 + 8);
        if (v40)
        {
          atomic_fetch_add_explicit(v40, 2u, memory_order_relaxed);
        }

        v41 = v153[0];
        v153[0] = v40;
        if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v41, v38);
        }

        v42 = *(v16 + 32);
        *&v153[1] = *(v16 + 16);
        *&v153[3] = v42;
        v44 = WebCore::SecurityContext::securityOrigin((v35 + 52));
        atomic_fetch_add(v44, 1u);
        v45 = *(&v138 + 1);
        *(&v138 + 1) = v44;
        if (v45)
        {
          WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v45, v43);
        }

        v47 = WebCore::Document::topOrigin(v35);
        atomic_fetch_add(v47, 1u);
        v48 = v138;
        *&v138 = v47;
        if (v48)
        {
          WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v48, v46);
        }

        if ((WebCore::Document::shouldBypassMainWorldContentSecurityPolicy(v35) & 1) == 0)
        {
          v49 = WebCore::SecurityContext::contentSecurityPolicy((v35 + 52));
          if (v49)
          {
            v50 = v49;
            atomic_fetch_add(v49, 1u);
            WebCore::ContentSecurityPolicy::responseHeaders(v112, v49);
            std::optional<WebCore::ContentSecurityPolicyResponseHeaders>::operator=[abi:sn200100]<WebCore::ContentSecurityPolicyResponseHeaders,void>(&v153[5], v112);
            WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v112, v51);
            if (!atomic_load(v50))
            {
              __break(0xC471u);
              return;
            }

            atomic_fetch_add(v50, 0xFFFFFFFF);
          }
        }

        WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::operator=(v161, v86);
        WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::operator=(&v162, v86 + 16);
        *(&v148 + 1) = WebKit::WebFrame::isTopFrameNavigatingToAppBoundDomain(v28);
        WebKit::WebFrame::protectedCoreLocalFrame(v28, v112);
        WebKit::addParametersShared(*v112, buf, 0);
        v54 = *v112;
        *v112 = 0;
        if (v54)
        {
          if (*(v54 + 4) == 1)
          {
            v54 = (*(*v54 + 8))(v54);
          }

          else
          {
            --*(v54 + 4);
          }
        }

        a10[3] = 0;
        v32 = IPC::UnboundedSynchronousIPCScope::unboundedSynchronousIPCCount;
        atomic_fetch_add(IPC::UnboundedSynchronousIPCScope::unboundedSynchronousIPCCount, 1u);
        v55 = WebKit::WebProcess::singleton(v54, v53);
        v56 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v55) + 24);
        *v94 = buf;
        IPC::Connection::sendSync<Messages::NetworkConnectionToWebProcess::PerformSynchronousLoad>(v112, v56, v94);
        if (!v127)
        {
          IPC::ConnectionSendSyncResult<Messages::NetworkConnectionToWebProcess::PerformSynchronousLoad>::takeReply(v94, v112);
          v93[0] = v12;
          v93[1] = a9;
          v93[2] = a10;
          std::__memberwise_forward_assign[abi:sn200100]<std::tuple<WebCore::ResourceError &,WebCore::ResourceResponse &,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>,std::tuple<WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,1ul,2ul>(v93, v94);
          std::tuple<WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::~tuple(v94, v57);
LABEL_32:
          if (v127 != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<IPC::ConnectionSendSyncResult<Messages::NetworkConnectionToWebProcess::PerformSynchronousLoad>::ReplyData,IPC::Error>,(mpark::detail::Trait)1> &>(v112, v58);
          }

          atomic_fetch_add(v32, 0xFFFFFFFF);
          WebKit::NetworkResourceLoadParameters::~NetworkResourceLoadParameters(buf, v58);
          goto LABEL_35;
        }

        v33 = qword_1ED6416F0;
        if (!os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_ERROR))
        {
LABEL_56:
          v66 = WebCore::Page::diagnosticLoggingClient(v84);
          v67 = WebCore::DiagnosticLoggingKeys::internalErrorKey(v94, v66);
          WebCore::DiagnosticLoggingKeys::synchronousMessageFailedKey(v93, v67);
          (**v66)(v66, v94, v93, 0);
          v69 = v93[0];
          v93[0] = 0;
          if (v69 && atomic_fetch_add_explicit(v69, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v69, v68);
          }

          v70 = *v94;
          *v94 = 0;
          if (v70 && atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v70, v68);
          }

          WebCore::ResourceResponseBase::ResourceResponseBase(v94);
          v110 = 0;
          v111 = 0;
          v109 = v109 & 0xF1 | 4;
          WebCore::ResourceResponse::operator=(a9, v94);
          WebCore::ResourceResponse::~ResourceResponse(v94, v71);
          WebCore::ResourceRequestBase::url(v91);
          WebCore::internalError();
          WebCore::ResourceError::operator=(v90, v94);
          WebCore::ResourceError::~ResourceError(v94, v72);
          goto LABEL_32;
        }

LABEL_68:
        v78 = WebCore::FrameLoader::frame(v92);
        if (v127 && v127 != 1)
        {
          mpark::throw_bad_variant_access(v127);
        }

        v79 = IPC::errorAsString();
        *v94 = 134219778;
        *&v94[4] = v85;
        v95 = 2048;
        v96 = 0;
        v97 = 2048;
        v98 = v92;
        v99 = 2048;
        v100 = v78;
        v101 = 2048;
        v102 = v87;
        v103 = 2048;
        v104 = v87;
        v105 = 2048;
        v106 = v87;
        v107 = 2082;
        v108 = v79;
        _os_log_error_impl(&dword_19D52D000, v33, OS_LOG_TYPE_ERROR, "%p - [resourceLoader=%p, frameLoader=%p, frame=%p, webPageID=%llu, frameID=%llu, resourceID=%llu] WebLoaderStrategy::loadResourceSynchronously: failed sending synchronous network process message %{public}s", v94, 0x52u);
        goto LABEL_56;
      }

      v62 = qword_1ED6416F0;
      if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_ERROR) && ((v77 = WebCore::FrameLoader::frame(v92), (v146 & 1) == 0) || (v33 = v77, v32 = v112, MEMORY[0x19EB12BA0](v143), *v112 = 134219776, *&v112[4] = v85, v113 = 2048, v114 = 0, v115 = 2048, v116 = v92, v117 = 2048, v118 = v33, v119 = 2048, v120 = v87, v121 = 2048, v122 = v87, v123 = 2048, v124 = v87, v125 = 1024, v126 = v143[14], _os_log_error_impl(&dword_19D52D000, v62, OS_LOG_TYPE_ERROR, "%p - [resourceLoader=%p, frameLoader=%p, frame=%p, webPageID=%llu, frameID=%llu, resourceID=%llu] WebLoaderStrategy::loadResourceSynchronously: failed calling tryLoadingSynchronouslyUsingURLSchemeHandler (error=%d)", v112, 0x4Eu), (v146 & 1) == 0)) || (WebCore::ResourceError::operator=(v90, v143), (v146 & 1) == 0) || (WebCore::ResourceResponse::operator=(a9, buf), v32 = a10, (v146 & 1) == 0))
      {
        __break(1u);
        goto LABEL_68;
      }

      v63 = *a10;
      if (*a10)
      {
        *a10 = 0;
        a10[2] = 0;
        WTF::fastFree(v63, v60);
        v73 = v146;
        v74 = v144;
        v144 = 0;
        *a10 = v74;
        v75 = v145;
        v145 = 0;
        *(a10 + 1) = v75;
        if ((v73 & 1) == 0)
        {
LABEL_35:
          if (v35[7] == 2)
          {
            WebCore::Node::removedLastRef(v35);
          }

          else
          {
            v35[7] -= 2;
          }

LABEL_37:
          WTF::RefCounted<WebCore::Page>::deref(v88);
          v27 = v89;
          goto LABEL_38;
        }

LABEL_54:
        WebKit::WebLoaderStrategy::SyncLoadResult::~SyncLoadResult(buf, v60);
        goto LABEL_35;
      }
    }

    v64 = v144;
    v144 = 0;
    *v32 = v64;
    v65 = v145;
    v145 = 0;
    *(v32 + 1) = v65;
    goto LABEL_54;
  }

LABEL_39:
  CFRelease(*(v28 + 8));
LABEL_40:
  if (v27)
  {
    WebCore::LocalFrameLoaderClient::deref(v27);
  }
}

BOOL WebKit::shouldClearReferrerOnHTTPSToHTTPRedirect(WebKit *this, WebCore::LocalFrame *a2)
{
  if (!this)
  {
    return 1;
  }

  v2 = *(this + 28);
  if (!v2)
  {
    return 1;
  }

  v3 = *(v2 + 208);
  *(v2 + 28) += 2;
  result = (*(v3 + 8))(v2 + 208, a2) == 2;
  if (*(v2 + 28) == 2)
  {
    v5 = result;
    WebCore::Node::removedLastRef(v2);
    return v5;
  }

  else
  {
    *(v2 + 28) -= 2;
  }

  return result;
}

IPC::Encoder *IPC::Connection::sendSync<Messages::NetworkConnectionToWebProcess::PerformSynchronousLoad>(_BYTE *a1, unsigned __int8 *a2, uint64_t *a3)
{
  IPC::Connection::createSyncMessageEncoder(0xFA6, 0, v22);
  IPC::ArgumentCoder<WebKit::NetworkResourceLoadParameters,void>::encode(v22[0], *a3);
  v6 = IPC::Connection::sendSyncMessage(a2, v22[1], v22, 0, &v20, INFINITY);
  if (!v21)
  {
    v8 = v20;
    v19 = v20;
    v20 = 0;
    if (*(v19 + 25) == 3194)
    {
      *a1 = 11;
      a1[368] = 1;
    }

    else
    {
      LOBYTE(v17[0]) = 0;
      v18 = 0;
      IPC::Decoder::operator>><std::tuple<WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v8, v17);
      if (v18 == 1)
      {
        IPC::ConnectionSendSyncResult<Messages::NetworkConnectionToWebProcess::PerformSynchronousLoad>::ConnectionSendSyncResult(a1, &v19, v17);
        if (v18)
        {
          std::tuple<WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::~tuple(v17, v7);
        }
      }

      else
      {
        *a1 = 14;
        a1[368] = 1;
      }

      v8 = v19;
      if (!v19)
      {
        goto LABEL_7;
      }
    }

    IPC::Decoder::~Decoder(v8);
    bmalloc::api::tzoneFree(v13, v14);
LABEL_7:
    if (!v21)
    {
      v9 = v20;
      v20 = 0;
      if (v9)
      {
        IPC::Decoder::~Decoder(v9);
        bmalloc::api::tzoneFree(v15, v16);
      }
    }

    goto LABEL_10;
  }

  if (v21 != 1)
  {
    mpark::throw_bad_variant_access(v6);
  }

  *a1 = v20;
  a1[368] = 1;
LABEL_10:
  result = v22[0];
  v22[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

uint64_t IPC::ConnectionSendSyncResult<Messages::NetworkConnectionToWebProcess::PerformSynchronousLoad>::takeReply(mpark *a1, uint64_t a2)
{
  if (*(a2 + 368))
  {
    mpark::throw_bad_variant_access(a1);
  }

  v3 = (a2 + 8);

  return std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::__tuple_impl(a1, v3);
}

uint64_t std::tuple<WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::~tuple(uint64_t a1, void *a2)
{
  v3 = *(a1 + 344);
  if (v3)
  {
    *(a1 + 344) = 0;
    *(a1 + 352) = 0;
    WTF::fastFree(v3, a2);
  }

  v4 = *(a1 + 328);
  *(a1 + 328) = 0;
  if (v4)
  {
    CFRelease(v4);
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase((a1 + 80), a2);
  v6 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v5);
  }

  v8 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v5);
  }

  v9 = *a1;
  *a1 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v5);
  }

  return a1;
}

WebKit::WebProcess *WebKit::WebLoaderStrategy::pageLoadCompleted(WebKit::WebLoaderStrategy *this, WebCore::Page *a2)
{
  {
    result = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v11 = a2;
    v12 = WebKit::WebProcess::operator new(0x370, a2);
    result = WebKit::WebProcess::WebProcess(v12);
    a2 = v11;
    WebKit::WebProcess::singleton(void)::process = result;
  }

  v3 = *(result + 42);
  if (v3)
  {
    ++*(v3 + 20);
    v4 = *(v3 + 24);
    v5 = *(WebKit::WebPage::fromCorePage(a2) + 48);
    v7 = IPC::Encoder::operator new(0x238, v6);
    *v7 = 462;
    *(v7 + 68) = 0;
    *(v7 + 70) = 0;
    *(v7 + 69) = 0;
    *(v7 + 2) = 0;
    *(v7 + 3) = 0;
    *(v7 + 1) = 0;
    IPC::Encoder::encodeHeader(v7);
    v13 = v7;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, v5);
    IPC::Connection::sendMessageImpl(v4, &v13, 0, 0);
    result = v13;
    v13 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v8);
      result = bmalloc::api::tzoneFree(v9, v10);
    }

    if (*(v3 + 20) == 1)
    {
      return (*(*v3 + 24))(v3);
    }

    else
    {
      --*(v3 + 20);
    }
  }

  return result;
}

void WebKit::WebLoaderStrategy::browsingContextRemoved(WebKit::WebLoaderStrategy *this, WebCore::LocalFrame *a2)
{
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v19 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v19);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  v4 = *(v3 + 42);
  if (v4)
  {
    ++*(v4 + 20);
    v5 = *(*(a2 + 3) + 8);
    v6 = (v5 + 8);
    ++*(v5 + 8);
    v7 = WebKit::WebPage::fromCorePage(v5);
    CFRetain(*(v7 + 8));
    WTF::RefCounted<WebCore::Page>::deref(v6);
    v8 = *(v4 + 24);
    v9 = *(v7 + 1832);
    v10 = *(v7 + 48);
    WebKit::WebFrame::fromCoreFrame(a2, &v20);
    v11 = v20;
    v12 = *(v20 + 88);
    v14 = IPC::Encoder::operator new(0x238, v13);
    *v14 = 430;
    *(v14 + 68) = 0;
    *(v14 + 70) = 0;
    *(v14 + 69) = 0;
    *(v14 + 2) = 0;
    *(v14 + 3) = 0;
    *(v14 + 1) = 0;
    IPC::Encoder::encodeHeader(v14);
    v21 = v14;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v14, v9);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v14, v10);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v14, v12);
    IPC::Connection::sendMessageImpl(v8, &v21, 0, 0);
    v16 = v21;
    v21 = 0;
    if (v16)
    {
      IPC::Encoder::~Encoder(v16, v15);
      bmalloc::api::tzoneFree(v17, v18);
    }

    CFRelease(*(v11 + 8));
    CFRelease(*(v7 + 8));
    if (*(v4 + 20) == 1)
    {
      (*(*v4 + 24))(v4);
    }

    else
    {
      --*(v4 + 20);
    }
  }
}

void WebKit::WebLoaderStrategy::startPingLoad(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v1;
  v151 = *MEMORY[0x1E69E9840];
  WebKit::WebFrame::fromCoreFrame(v12, &v95);
  v15 = *(v13 + 28);
  if (v15)
  {
    *(v15 + 28) += 2;
    v16 = v95;
    if (v95)
    {
      v90 = v14;
      v17 = WebKit::WebFrame::page(v95);
      if (!v17)
      {
        if (*v3)
        {
          WebCore::ResourceRequestBase::url(v11);
          WebCore::internalError();
          WebCore::ResourceResponseBase::ResourceResponseBase(v96);
          cf = 0;
          v102 = 0;
          v98 = v98 & 0xF1 | 4;
          (*(**v3 + 16))(*v3, &v91, v96);
          v83 = cf;
          cf = 0;
          if (v83)
          {
            CFRelease(v83);
          }

          WebCore::ResourceResponseBase::~ResourceResponseBase(v96, v82);
          v85 = v94;
          v94 = 0;
          if (v85)
          {
            CFRelease(v85);
          }

          v86 = v93;
          v93 = 0;
          if (v86 && atomic_fetch_add_explicit(v86, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v86, v84);
          }

          v87 = v92;
          v92 = 0;
          if (v87 && atomic_fetch_add_explicit(v87, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v87, v84);
          }

          v88 = v91;
          v91 = 0;
          if (v88 && atomic_fetch_add_explicit(v88, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v88, v84);
          }
        }

        goto LABEL_78;
      }

      v18 = v17;
      CFRetain(*(v17 + 8));
      v19 = *(v18 + 48);
      v96[0] = *(v18 + 1832);
      v96[1] = v19;
      v96[2] = *(v16 + 11);
      WebCore::ResourceRequest::ResourceRequest(&v97, v11);
      v100 = 0;
      v99 = 0u;
      LOWORD(cf) = 1;
      BYTE2(cf) = 0;
      v102 = 0;
      v103 = 0;
      v104 = 0x10000;
      v105 = 1;
      v107 = 0;
      memset(v106, 0, 35);
      v108 = 0u;
      BYTE9(v108) = 2;
      *(&v108 + 10) = 0;
      BYTE14(v108) = 0;
      v110 = 0;
      v111[0] = 0;
      memset(v109, 0, 41);
      WTF::URL::invalidate(v111);
      v112 = 0;
      WTF::URL::invalidate(&v112);
      v115 = 0;
      v116 = 0u;
      v117 = 0;
      v118 = 0u;
      WebCore::HTTPHeaderMap::HTTPHeaderMap(v119);
      v121 = 0;
      v122 = 0;
      v125 = 0;
      v126 = 0;
      v123 = 0u;
      v124 = 0;
      v127 = 1;
      v128[0] = 0;
      WTF::URL::invalidate(v128);
      v131[0] = 0;
      v129 = 0;
      v130 = 0;
      WTF::URL::invalidate(v131);
      v132 = 0;
      v135 = 0;
      v136 = 0;
      v137 = 0;
      v133 = 0u;
      v134 = 0;
      v138 = 1;
      v139 = 0;
      v140 = 0;
      v141 = 0;
      v142 = 0;
      v143 = 0;
      v144 = 0;
      v145 = 0;
      WTF::URL::invalidate(&v145);
      LOBYTE(v148) = 0;
      v149 = 0;
      v150 = 0;
      WebKit::NetworkResourceLoadParameters::createSandboxExtensionHandlesIfNecessary(v96);
      if (WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
      {
        __break(0xC471u);
      }

      else
      {
        *&v106[5] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
        v21 = WebCore::SecurityContext::securityOrigin((v15 + 208));
        atomic_fetch_add(v21, 1u);
        v22 = *(&v99 + 1);
        *(&v99 + 1) = v21;
        if (v22)
        {
          WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v22, v20);
        }

        v24 = WebCore::Document::topOrigin(v15);
        atomic_fetch_add(v24, 1u);
        v25 = v99;
        *&v99 = v24;
        if (v25)
        {
          v25 = WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v25, v23);
        }

        LODWORD(v100) = WTF::legacyPresentingApplicationPID(v25);
        BYTE6(v100) = *(v7 + 2) != 0;
        DWORD2(v108) = *v7;
        *(&v108 + 11) = *(v7 + 3);
        v27 = *(v7 + 8);
        if (v27)
        {
          atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
        }

        v28 = v109[0];
        v109[0] = v27;
        if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v28, v26);
        }

        v29 = *(v7 + 32);
        *&v109[1] = *(v7 + 16);
        *&v109[3] = v29;
        WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::operator=(v119, v9);
        WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::operator=(&v120, v9 + 16);
        LOBYTE(cf) = WebKit::shouldClearReferrerOnHTTPSToHTTPRedirect(v13, v30);
        LOBYTE(v121) = 1;
        if (v5 != 1 || (WebCore::Document::shouldBypassMainWorldContentSecurityPolicy(v15) & 1) != 0 || (v31 = WebCore::SecurityContext::contentSecurityPolicy((v15 + 208))) == 0)
        {
LABEL_19:
          WebKit::addParametersShared(v13, v96, 0);
          *(&v104 + 1) = WebKit::WebFrame::isTopFrameNavigatingToAppBoundDomain(v95);
          v36 = *(v15 + 800);
          if (v36)
          {
            atomic_fetch_add_explicit(v36, 2u, memory_order_relaxed);
          }

          v37 = v112;
          v112 = v36;
          if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v37, v35);
          }

          v38 = *(v15 + 808);
          v114 = *(v15 + 824);
          v113 = v38;
          v39 = *(v15 + 552);
          if (v39)
          {
            v40 = *(v39 + 8);
            if (v40)
            {
              v41 = *(v40 + 24);
              if (v41)
              {
                v42 = *(v41 + 8);
                if (v42)
                {
                  v43 = v42 + 2;
                  ++v42[2];
                  v45 = WebCore::Page::mainFrameURL(v42);
                  v46 = *v45;
                  if (*v45)
                  {
                    atomic_fetch_add_explicit(v46, 2u, memory_order_relaxed);
                  }

                  v47 = v145;
                  v145 = v46;
                  if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v47, v44);
                  }

                  v48 = *(v45 + 24);
                  v146 = *(v45 + 8);
                  v147 = v48;
                  WTF::RefCounted<WebCore::Page>::deref(v43);
                }
              }
            }
          }

          v49 = *(*(v18 + 584) + 64);
          if ((v149 & 1) == 0)
          {
            v149 = 1;
          }

          v148 = v49;
          if (!*v3)
          {
            goto LABEL_73;
          }

          v50 = *&v106[5];
          if (!*&v106[5])
          {
            __break(0xC471u);
            JUMPOUT(0x19E301BACLL);
          }

          if (*&v106[5] == -1)
          {
            __break(0xC471u);
            JUMPOUT(0x19E301BCCLL);
          }

          v51 = *(v90 + 88);
          if (!v51)
          {
            WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v90 + 88));
            v51 = *(v90 + 88);
            v50 = *&v106[5];
          }

          v52 = *(v51 - 8);
          v53 = (v50 + ~(v50 << 32)) ^ ((v50 + ~(v50 << 32)) >> 22);
          v54 = 9 * ((v53 + ~(v53 << 13)) ^ ((v53 + ~(v53 << 13)) >> 8));
          v55 = (v54 ^ (v54 >> 15)) + ~((v54 ^ (v54 >> 15)) << 27);
          v56 = v52 & ((v55 >> 31) ^ v55);
          v57 = (v51 + 16 * v56);
          v58 = *v57;
          if (*v57)
          {
            v59 = 0;
            v60 = 1;
            while (v58 != v50)
            {
              if (v58 == -1)
              {
                v59 = v57;
              }

              v56 = (v56 + v60) & v52;
              v57 = (v51 + 16 * v56);
              v58 = *v57;
              ++v60;
              if (!*v57)
              {
                if (v59)
                {
                  *v59 = 0;
                  v59[1] = 0;
                  --*(*(v90 + 88) - 16);
                  v50 = *&v106[5];
                  v57 = v59;
                }

                goto LABEL_49;
              }
            }

            goto LABEL_73;
          }

LABEL_49:
          *v57 = v50;
          v61 = *v3;
          *v3 = 0;
          v62 = v57[1];
          v57[1] = v61;
          if (v62)
          {
            (*(*v62 + 8))(v62);
          }

          v63 = *(v90 + 88);
          if (v63)
          {
            v64 = *(v63 - 12) + 1;
          }

          else
          {
            v64 = 1;
          }

          *(v63 - 12) = v64;
          v72 = (*(v63 - 16) + v64);
          v73 = *(v63 - 4);
          if (v73 > 0x400)
          {
            if (v73 > 2 * v72)
            {
              goto LABEL_73;
            }
          }

          else if (3 * v73 > 4 * v72)
          {
LABEL_73:
            {
              v74 = WebKit::WebProcess::singleton(void)::process;
            }

            else
            {
              v89 = WebKit::WebProcess::operator new(0x370, v35);
              v74 = WebKit::WebProcess::WebProcess(v89);
              WebKit::WebProcess::singleton(void)::process = v74;
            }

            v75 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v74) + 24);
            v77 = IPC::Encoder::operator new(0x238, v76);
            *v77 = 454;
            *(v77 + 68) = 0;
            *(v77 + 70) = 0;
            *(v77 + 69) = 0;
            *(v77 + 2) = 0;
            *(v77 + 3) = 0;
            *(v77 + 1) = 0;
            IPC::Encoder::encodeHeader(v77);
            v91 = v77;
            IPC::ArgumentCoder<WebKit::NetworkResourceLoadParameters,void>::encode(v77, v96);
            IPC::Connection::sendMessageImpl(v75, &v91, 0, 0);
            v79 = v91;
            v91 = 0;
            if (v79)
            {
              IPC::Encoder::~Encoder(v79, v78);
              bmalloc::api::tzoneFree(v80, v81);
            }

            WebKit::NetworkResourceLoadParameters::~NetworkResourceLoadParameters(v96, v78);
            CFRelease(*(v18 + 8));
LABEL_78:
            if (*(v15 + 28) == 2)
            {
              WebCore::Node::removedLastRef(v15);
            }

            else
            {
              *(v15 + 28) -= 2;
            }

            goto LABEL_80;
          }

          WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v90 + 88));
          goto LABEL_73;
        }

        v32 = v31;
        atomic_fetch_add(v31, 1u);
        WebCore::ContentSecurityPolicy::responseHeaders(&v91, v31);
        std::optional<WebCore::ContentSecurityPolicyResponseHeaders>::operator=[abi:sn200100]<WebCore::ContentSecurityPolicyResponseHeaders,void>(&v109[5], &v91);
        WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v91, v33);
        if (atomic_load(v32))
        {
          atomic_fetch_add(v32, 0xFFFFFFFF);
          goto LABEL_19;
        }

        __break(0xC471u);
      }

      JUMPOUT(0x19E301B8CLL);
    }
  }

  if (*v3)
  {
    WebCore::ResourceRequestBase::url(v11);
    WebCore::internalError();
    WebCore::ResourceResponseBase::ResourceResponseBase(v96);
    cf = 0;
    v102 = 0;
    v98 = v98 & 0xF1 | 4;
    (*(**v3 + 16))(*v3, &v91, v96);
    v66 = cf;
    cf = 0;
    if (v66)
    {
      CFRelease(v66);
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(v96, v65);
    v68 = v94;
    v94 = 0;
    if (v68)
    {
      CFRelease(v68);
    }

    v69 = v93;
    v93 = 0;
    if (v69 && atomic_fetch_add_explicit(v69, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v69, v67);
    }

    v70 = v92;
    v92 = 0;
    if (v70 && atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v70, v67);
    }

    v71 = v91;
    v91 = 0;
    if (v71 && atomic_fetch_add_explicit(v71, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v71, v67);
    }
  }

  if (v15)
  {
    goto LABEL_78;
  }

LABEL_80:
  if (v95)
  {
    CFRelease(*(v95 + 1));
  }
}

void WebKit::WebLoaderStrategy::preconnectTo(WebKit::WebProcess *a1, void *a2, WebCore::ResourceRequestBase *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = WebKit::WebProcess::singleton(a1, a2);
  v11 = WebCore::FrameLoader::frameID(a2);
  v12 = WebKit::WebProcess::webFrame(v10, v11, 1);
  if (v12)
  {
    v13 = v12;
    CFRetain(*(v12 + 8));
    v14 = WebKit::WebFrame::page(v13);
    if (v14)
    {
      v15 = v14;
      CFRetain(*(v14 + 8));
      WebKit::WebLoaderStrategy::preconnectTo(a1);
      CFRelease(*(v15 + 8));
    }

    else
    {
      WebCore::ResourceRequestBase::url(a3);
      WebCore::internalError();
      (*(**a6 + 16))(*a6, v18);
      WebCore::ResourceError::~ResourceError(v18, v17);
    }

    CFRelease(v13[1]);
  }

  else
  {
    WebCore::ResourceRequestBase::url(a3);
    WebCore::internalError();
    (*(**a6 + 16))(*a6, v18);
    WebCore::ResourceError::~ResourceError(v18, v16);
  }
}

void WebKit::WebLoaderStrategy::preconnectTo(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v2;
  v14 = v1;
  v92 = *MEMORY[0x1E69E9840];
  v15 = *(v11 + 7);
  if (v15)
  {
    ++*(v15 + 8);
    WebCore::ResourceRequestBase::url(v2);
    if ((WebCore::Page::allowsLoadFromURL() & 1) == 0)
    {
      if (*v4)
      {
        v39 = 0;
        v40[0] = 0;
        WTF::URL::invalidate(v40);
        v42[2] = 0;
        v42[0] = 0;
        *(v42 + 6) = 0;
        v43 = 1;
        (*(**v4 + 16))(*v4, &v39);
        WebCore::ResourceError::~ResourceError(&v39, v34);
      }

      WTF::RefCounted<WebCore::Page>::deref((v15 + 8));
      return;
    }

    WTF::RefCounted<WebCore::Page>::deref((v15 + 8));
  }

  v35 = v14;
  v16 = WebKit::WebPage::mainFrame(v12);
  v17 = v16;
  LOWORD(v14) = 1;
  if (!v16)
  {
    goto LABEL_50;
  }

  if (*(v16 + 136))
  {
    goto LABEL_49;
  }

  ++*(v16 + 16);
  v18 = *(v16 + 224);
  if (v18)
  {
    v18[7] += 2;
    if (v6)
    {
      v19 = WebCore::ResourceRequestBase::url(v13);
    }

    else
    {
      v19 = (v18 + 268);
    }

    WebCore::ResourceRequestBase::setFirstPartyForCookies(v13, v19);
    v20 = WebCore::Document::loader(v18);
    if (v20)
    {
      v21 = v20;
      ++*(v20 + 24);
      WebCore::ResourceRequestBase::setIsAppInitiated(v13);
      if (v21[6] == 1)
      {
        (*(*v21 + 24))(v21);
      }

      else
      {
        --v21[6];
      }
    }

    if (v18[7] != 2)
    {
      i = 0;
      v18[7] -= 2;
      goto LABEL_14;
    }

    WebCore::Node::removedLastRef(v18);
  }

  for (i = 0; ; i = 1)
  {
LABEL_14:
    v23 = *(v12 + 6);
    v39 = *(v12 + 229);
    v40[0] = v23;
    v40[1] = *(v10 + 11);
    WebCore::ResourceRequest::ResourceRequest(v41, v13);
    v45 = 0;
    v44 = 0u;
    v46 = v14;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0x10000;
    v51 = v14;
    v53 = 0;
    memset(v52, 0, 35);
    v54 = 0u;
    BYTE9(v54) = 2;
    *(&v54 + 10) = 0;
    BYTE14(v54) = 0;
    v56[48] = 0;
    v57[0] = 0;
    v55 = 0u;
    memset(v56, 0, 25);
    WTF::URL::invalidate(v57);
    v58[0] = 0;
    WTF::URL::invalidate(v58);
    v59 = 0;
    v60 = 0u;
    v61 = 0;
    v62 = 0u;
    WebCore::HTTPHeaderMap::HTTPHeaderMap(&v63);
    v64 = 0;
    v65 = 0;
    v68 = 0;
    v69 = 0;
    v66 = 0u;
    v67 = 0;
    v70 = v14;
    v71[0] = 0;
    WTF::URL::invalidate(v71);
    v74[0] = 0;
    v72 = 0;
    v73 = 0;
    WTF::URL::invalidate(v74);
    v75 = 0;
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v76 = 0u;
    v77 = 0;
    v81 = v14;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v88[0] = 0;
    WTF::URL::invalidate(v88);
    v89 = 0;
    v90 = 0;
    v91 = 0;
    WebKit::NetworkResourceLoadParameters::createSandboxExtensionHandlesIfNecessary(&v39);
    WebCore::ResourceRequestBase::httpUserAgent(v36, v41);
    v25 = v36[0];
    if (!v36[0])
    {
      goto LABEL_54;
    }

    LODWORD(v14) = *(v36[0] + 1);
    v36[0] = 0;
    if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v24);
    }

    if (!v14)
    {
LABEL_54:
      WebCore::ResourceRequestBase::url(v41);
      WebKit::WebPage::userAgent(v12, v36);
      v27 = v36[0];
      if (v36[0])
      {
        if (*(v36[0] + 1))
        {
          WebCore::ResourceRequestBase::setHTTPUserAgent(v41, v36);
          v27 = v36[0];
          v36[0] = 0;
          if (!v27)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v36[0] = 0;
        }

        if (atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v27, v26);
        }
      }
    }

LABEL_23:
    if (WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      __break(0xC471u);
      goto LABEL_48;
    }

    *&v52[5] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    LODWORD(v45) = WTF::legacyPresentingApplicationPID(*&v52[5]);
    BYTE6(v45) = v8;
    LOBYTE(v50) = 1;
    LOBYTE(v64) = 1;
    BYTE8(v54) = 0;
    *(&v50 + 1) = WebKit::WebFrame::isTopFrameNavigatingToAppBoundDomain(v10);
    WebKit::WebFrame::protectedCoreLocalFrame(v10, &v37);
    WebKit::policySourceDocumentLoaderForFrame(v36, v37);
    v29 = v37;
    v37 = 0;
    LOWORD(v14) = v35;
    if (v29)
    {
      if (*(v29 + 4) == 1)
      {
        (*(*v29 + 8))(v29);
      }

      else
      {
        --*(v29 + 4);
      }
    }

    v30 = v36[0];
    if (v36[0])
    {
      v52[0] = *(v36[0] + 1773);
      v36[0] = 0;
      if (*(v30 + 6) == 1)
      {
        v30 = (*(*v30 + 24))(v30);
      }

      else
      {
        --*(v30 + 6);
      }
    }

    LOBYTE(v37) = 0;
    v38 = 0;
    if (!*v4)
    {
      goto LABEL_33;
    }

    v37 = *&v52[5];
    v38 = *&v52[5] != 0;
    if (*&v52[5])
    {
      break;
    }

LABEL_48:
    __break(1u);
LABEL_49:
    v17 = 0;
LABEL_50:
    ;
  }

  v30 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Function<void ()(WebCore::ResourceError const&)>>(v36, (v35 + 96), &v37, v4);
LABEL_33:
  v31 = WebKit::WebProcess::singleton(v30, v28);
  v32 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v31) + 24);
  v36[0] = &v37;
  v36[1] = &v39;
  IPC::Connection::send<Messages::NetworkConnectionToWebProcess::PreconnectTo>(v32, v36);
  WebKit::NetworkResourceLoadParameters::~NetworkResourceLoadParameters(&v39, v33);
  if ((i & 1) == 0)
  {
    if (v17[4] == 1)
    {
      (*(*v17 + 8))(v17);
    }

    else
    {
      --v17[4];
    }
  }
}

uint64_t *WebKit::policySourceDocumentLoaderForFrame(WebKit *this, const WebCore::LocalFrame *a2)
{
  result = WebCore::LocalFrame::localMainFrame(&v7, a2);
  if (v7)
  {
    WebCore::FrameLoader::loaderForWebsitePolicies();
    if (v6)
    {
      ++v6[6];
      *this = v6;
      v5 = WebCore::ResourceRequestBase::url((v6 + 220));
      if ((WTF::URL::hasSpecialScheme(v5) & 1) == 0 && (*(*(a2 + 28) + 808) & 2) != 0)
      {
        WTF::RefPtr<WebCore::DocumentLoader,WTF::RawPtrTraits<WebCore::DocumentLoader>,WTF::DefaultRefDerefTraits<WebCore::DocumentLoader>>::operator=(this, *(*(a2 + 26) + 96));
      }

      if (v6[6] == 1)
      {
        (*(*v6 + 24))();
      }

      else
      {
        --v6[6];
      }
    }

    else
    {
      *this = 0;
    }

    result = v7;
    v7 = 0;
    if (result)
    {
      if (*(result + 4) == 1)
      {
        return (*(*result + 8))(result);
      }

      else
      {
        --*(result + 4);
      }
    }
  }

  else
  {
    *this = 0;
  }

  return result;
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Function<void ()(WebCore::ResourceError const&)>>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(*a3);
  v8 = *a2;
  if (*a2 || (WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, 0), (v8 = *a2) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  result = WTF::ObjectIdentifierGenericBaseHash<unsigned long long>::hash(a3);
  v11 = result & v9;
  v12 = (v8 + 16 * (result & v9));
  v13 = *v12;
  v14 = *a3;
  if (*v12)
  {
    v22 = 0;
    v23 = 1;
    do
    {
      if (v13 == v14)
      {
        v24 = *a2;
        if (*a2)
        {
          v25 = *(v24 - 4);
        }

        else
        {
          v25 = 0;
        }

        v21 = 0;
        v20 = v24 + 16 * v25;
        goto LABEL_11;
      }

      if (v13 == -1)
      {
        v22 = v12;
      }

      v11 = (v11 + v23) & v9;
      v12 = (v8 + 16 * v11);
      v13 = *v12;
      ++v23;
    }

    while (*v12);
    if (v22)
    {
      *v22 = 0;
      v22[1] = 0;
      --*(*a2 - 16);
      v14 = *a3;
      v12 = v22;
    }
  }

  *v12 = v14;
  v15 = *a4;
  *a4 = 0;
  result = v12[1];
  v12[1] = v15;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v16 = *a2;
  if (*a2)
  {
    v17 = *(v16 - 12) + 1;
  }

  else
  {
    v17 = 1;
  }

  *(v16 - 12) = v17;
  v18 = (*(v16 - 16) + v17);
  v19 = *(v16 - 4);
  if (v19 > 0x400)
  {
    if (v19 > 2 * v18)
    {
      goto LABEL_10;
    }

LABEL_25:
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, v12);
    v12 = result;
    v16 = *a2;
    if (*a2)
    {
      v19 = *(v16 - 4);
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_10;
  }

  if (3 * v19 <= 4 * v18)
  {
    goto LABEL_25;
  }

LABEL_10:
  v20 = v16 + 16 * v19;
  v21 = 1;
LABEL_11:
  *a1 = v12;
  *(a1 + 8) = v20;
  *(a1 + 16) = v21;
  return result;
}

IPC::Encoder *IPC::Connection::send<Messages::NetworkConnectionToWebProcess::PreconnectTo>(uint64_t *a1, void *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 465;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  Messages::NetworkConnectionToWebProcess::PreconnectTo::encode<IPC::Encoder>(a2, v4);
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

void *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(void *a1, uint64_t *a2, uint64_t *a3)
{
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2, a3);
  v6 = *a2;
  if (*a2)
  {
    v6 += 16 * *(v6 - 4);
  }

  if (v6 == result)
  {
    v7 = 0;
  }

  else
  {
    v7 = result[1];
    result[1] = 0;
    result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(a2, result);
  }

  *a1 = v7;
  return result;
}

uint64_t *WebKit::WebLoaderStrategy::addOnlineStateChangeListener(uint64_t a1, uint64_t *a2)
{
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v9 = WebKit::WebProcess::operator new(0x370, a2);
    v4 = WebKit::WebProcess::WebProcess(v9);
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  result = WebKit::WebProcess::ensureNetworkProcessConnection(v4);
  v6 = *(a1 + 116);
  if (v6 == *(a1 + 112))
  {

    return WTF::Vector<WTF::Function<void ()(BOOL)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::Function<void ()(BOOL)>>(a1 + 104, a2);
  }

  else
  {
    v7 = *(a1 + 104);
    v8 = *a2;
    *a2 = 0;
    *(v7 + 8 * v6) = v8;
    *(a1 + 116) = v6 + 1;
  }

  return result;
}

uint64_t WebKit::WebLoaderStrategy::isResourceLoadFinished(uint64_t a1, void *a2, uint64_t *a3)
{
  if (a2[50])
  {
    v5 = &qword_1ED643000;
    {
      goto LABEL_16;
    }

    v6 = WebKit::WebProcess::singleton(void)::process;
    while (*(v6 + 42))
    {
      v7 = WebKit::WebProcess::ensureNetworkProcessConnection(v6);
      v5 = *(a2[50] + 752);
      if (v5)
      {
        v8 = *(v7 + 24);
        v9 = *a3;
        *a3 = 0;
        v10 = WTF::fastMalloc(0x10);
        *v10 = &unk_1F112C860;
        v10[1] = v9;
        if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
        {
          result = 141;
          __break(0xC471u);
        }

        else
        {
          v11 = v10;
          IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
          v14 = IPC::Encoder::operator new(0x238, v13);
          *v14 = 452;
          *(v14 + 68) = 0;
          *(v14 + 70) = 0;
          *(v14 + 69) = 0;
          *(v14 + 2) = 0;
          *(v14 + 3) = 0;
          *(v14 + 1) = 0;
          IPC::Encoder::encodeHeader(v14);
          v24 = v14;
          IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v14, v5);
          v23[0] = v11;
          v23[1] = IdentifierInternal;
          IPC::Connection::sendMessageWithAsyncReply(v8, &v24, v23, 0, 0);
          v16 = v23[0];
          v23[0] = 0;
          if (v16)
          {
            (*(*v16 + 8))(v16);
          }

          result = v24;
          v24 = 0;
          if (result)
          {
            IPC::Encoder::~Encoder(result, v15);
            return bmalloc::api::tzoneFree(v20, v21);
          }
        }

        return result;
      }

      __break(1u);
LABEL_16:
      v22 = WebKit::WebProcess::operator new(0x370, a2);
      v6 = WebKit::WebProcess::WebProcess(v22);
      WebKit::WebProcess::singleton(void)::process = v6;
      *(v5 + 2024) = 1;
    }
  }

  v18 = *a3;
  *a3 = 0;
  (*(*v18 + 16))(v18, 1);
  v19 = *(*v18 + 8);

  return v19(v18);
}

IPC::Encoder *WebKit::WebLoaderStrategy::setCaptureExtraNetworkLoadMetricsEnabled(WebKit::WebLoaderStrategy *this, void *a2)
{
  v2 = a2;
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v11 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v11);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  v4 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v3) + 24);
  v12 = v2;
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 486;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::Encoder::operator<<<BOOL &>(v6, &v12);
  IPC::Connection::sendMessageImpl(v4, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

void WebKit::WebLoaderStrategy::responseFromResourceLoadIdentifier(void *a1@<X1>, WebCore::ResourceResponse *a2@<X8>)
{
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v42 = WebKit::WebProcess::operator new(0x370, a1);
    v4 = WebKit::WebProcess::WebProcess(v42);
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  v5 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v4) + 24);
  IPC::Connection::createSyncMessageEncoder(0xFA3, 0, v56);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v56[0], a1);
  v6 = IPC::Connection::sendSyncMessage(v5, v56[1], v56, 0, &v54, INFINITY);
  if (v55)
  {
    if (v55 != 1)
    {
      mpark::throw_bad_variant_access(v6);
    }

    LOBYTE(v43) = v54;
    v48 = 1;
    goto LABEL_37;
  }

  v8 = v54;
  v54 = 0;
  if (*(v8 + 25) == 3194)
  {
    v9 = 11;
  }

  else
  {
    v49[0] = 0;
    v53 = 0;
    IPC::ArgumentCoder<std::tuple<WebCore::ResourceResponse>,void>::decode<IPC::Decoder>(v8, &v43);
    v11 = v47;
    if ((v47 & 1) == 0)
    {
      v10 = *v8;
      v40 = *(v8 + 1);
      *v8 = 0;
      *(v8 + 1) = 0;
      v41 = *(v8 + 3);
      if (v41)
      {
        if (v40)
        {
          (*(*v41 + 16))(v41, v10);
          v11 = v47;
        }
      }
    }

    if (v53 == v11)
    {
      if (v53)
      {
        WebCore::ResourceResponseBase::operator=(v49, &v43);
        v12 = v45;
        v45 = 0;
        v13 = cf;
        cf = v12;
        if (v13)
        {
          CFRelease(v13);
        }

        v52 = v46;
      }
    }

    else if (v53)
    {
      v14 = cf;
      cf = 0;
      if (v14)
      {
        CFRelease(v14);
      }

      WebCore::ResourceResponseBase::~ResourceResponseBase(v49, v10);
      v53 = 0;
    }

    else
    {
      std::__tuple_leaf<0ul,WebCore::ResourceResponse,false>::__tuple_leaf[abi:sn200100]<WebCore::ResourceResponse,0>(v49, &v43);
      v53 = 1;
    }

    if (v47 == 1)
    {
      v15 = v45;
      v45 = 0;
      if (v15)
      {
        CFRelease(v15);
      }

      WebCore::ResourceResponseBase::~ResourceResponseBase(&v43, v10);
    }

    if (v53 == 1)
    {
      v57 = v8;
      std::__tuple_leaf<0ul,WebCore::ResourceResponse,false>::__tuple_leaf[abi:sn200100]<WebCore::ResourceResponse,0>(v58, v49);
      v16 = v57;
      v57 = 0;
      v43 = v16;
      std::__tuple_leaf<0ul,WebCore::ResourceResponse,false>::__tuple_leaf[abi:sn200100]<WebCore::ResourceResponse,0>(v44, v58);
      v48 = 0;
      v18 = v60;
      v60 = 0;
      if (v18)
      {
        CFRelease(v18);
      }

      WebCore::ResourceResponseBase::~ResourceResponseBase(v58, v17);
      v19 = v57;
      v57 = 0;
      if (v19)
      {
        IPC::Decoder::~Decoder(v19);
        bmalloc::api::tzoneFree(v38, v39);
      }

      if (v53)
      {
        v20 = cf;
        cf = 0;
        if (v20)
        {
          CFRelease(v20);
        }

        WebCore::ResourceResponseBase::~ResourceResponseBase(v49, v7);
      }

      goto LABEL_34;
    }

    v9 = 14;
  }

  LOBYTE(v43) = v9;
  v48 = 1;
  IPC::Decoder::~Decoder(v8);
  bmalloc::api::tzoneFree(v21, v22);
LABEL_34:
  if (!v55)
  {
    v23 = v54;
    v54 = 0;
    if (v23)
    {
      IPC::Decoder::~Decoder(v23);
      bmalloc::api::tzoneFree(v34, v35);
    }
  }

LABEL_37:
  v24 = v56[0];
  v56[0] = 0;
  if (v24)
  {
    IPC::Encoder::~Encoder(v24, v7);
    bmalloc::api::tzoneFree(v32, v33);
  }

  WebCore::ResourceResponseBase::ResourceResponseBase(v49);
  cf = 0;
  v52 = 0;
  v50 = v50 & 0xF1 | 4;
  if (v48)
  {
    std::__tuple_leaf<0ul,WebCore::ResourceResponse,false>::__tuple_leaf[abi:sn200100]<WebCore::ResourceResponse,0>(&v57, v49);
  }

  else
  {
    std::__tuple_leaf<0ul,WebCore::ResourceResponse,false>::__tuple_leaf[abi:sn200100]<WebCore::ResourceResponse,0>(&v57, v44);
  }

  v26 = cf;
  cf = 0;
  if (v26)
  {
    CFRelease(v26);
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(v49, v25);
  WebCore::ResourceResponse::ResourceResponse(a2, &v57);
  v28 = v59;
  v59 = 0;
  if (v28)
  {
    CFRelease(v28);
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(&v57, v27);
  if (!v48)
  {
    v30 = v46;
    v46 = 0;
    if (v30)
    {
      CFRelease(v30);
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(v44, v29);
    v31 = v43;
    v43 = 0;
    if (v31)
    {
      IPC::Decoder::~Decoder(v31);
      bmalloc::api::tzoneFree(v36, v37);
    }
  }
}

IPC::Decoder *WebKit::WebLoaderStrategy::intermediateLoadInformationFromResourceLoadIdentifier@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v40 = WebKit::WebProcess::operator new(0x370, a1);
    v4 = WebKit::WebProcess::WebProcess(v40);
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  v5 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v4) + 24);
  IPC::Connection::createSyncMessageEncoder(0xFA4, 0, v86);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v86[0], a1);
  v6 = IPC::Connection::sendSyncMessage(v5, v86[1], v86, 0, &v84, INFINITY);
  if (v85)
  {
    if (v85 != 1)
    {
      mpark::throw_bad_variant_access(v6);
    }

    LOBYTE(v89) = v84;
    v8 = 1;
    v92 = 1;
    goto LABEL_79;
  }

  v9 = v84;
  v84 = 0;
  if (*(v9 + 25) != 3194)
  {
    LOBYTE(v82[0]) = 0;
    v83 = 0;
    v13 = *(v9 + 1);
    v14 = ((*(v9 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
    v15 = *v9;
    v16 = v14 - *v9;
    v17 = v13 >= v16;
    v18 = v13 - v16;
    if (v17 && v18 > 7)
    {
      *(v9 + 2) = v14 + 1;
      if (v14)
      {
        v20 = *v14;
        v98 = 0;
        v99 = 0;
        if (v20 >= 0x6D3)
        {
          do
          {
            IPC::Decoder::decode<WebCore::NetworkTransactionInformation>(&v89, v9);
            v28 = v97;
            if (v97 == 1)
            {
              if (HIDWORD(v99) == v99)
              {
                WTF::Vector<WebCore::NetworkTransactionInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::NetworkTransactionInformation>(&v98, &v89);
              }

              else
              {
                WebCore::NetworkTransactionInformation::NetworkTransactionInformation(v98 + 600 * HIDWORD(v99), &v89);
                ++HIDWORD(v99);
              }
            }

            if (v97 == 1)
            {
              v29 = v96;
              v96 = 0;
              if (v29)
              {
                WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v29, v15);
              }

              v30 = v95;
              v95 = 0;
              if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v30, v15);
              }

              v31 = cf;
              cf = 0;
              if (v31)
              {
                CFRelease(v31);
              }

              WebCore::ResourceResponseBase::~ResourceResponseBase(v93, v15);
              WebCore::ResourceRequest::~ResourceRequest(&v90);
            }

            if ((v28 & 1) == 0)
            {
              goto LABEL_51;
            }

            --v20;
          }

          while (v20);
          v35 = HIDWORD(v99);
          v26 = v98;
          if (v99 > HIDWORD(v99))
          {
            v36 = v98;
            if (HIDWORD(v99))
            {
              if (HIDWORD(v99) >= 0x6D3A07)
              {
                __break(0xC471u);
                goto LABEL_110;
              }

              v36 = WTF::fastMalloc((600 * HIDWORD(v99)));
              LODWORD(v99) = 600 * v35 / 0x258;
              v98 = v36;
              if (v36 != v26)
              {
                WTF::VectorMover<false,WebCore::NetworkTransactionInformation>::move(v26, v26 + 75 * v35, v36);
                v36 = v98;
              }
            }

            if (v26)
            {
              if (v36 == v26)
              {
                v98 = 0;
                LODWORD(v99) = 0;
              }

              WTF::fastFree(v26, v15);
LABEL_71:
              v26 = v98;
            }

            else
            {
              v26 = v36;
            }
          }

          v27 = v99;
        }

        else
        {
          if (v20)
          {
            v21 = WTF::fastMalloc((600 * v20));
            LODWORD(v99) = 600 * v20 / 0x258u;
            v98 = v21;
            while (1)
            {
              IPC::Decoder::decode<WebCore::NetworkTransactionInformation>(&v89, v9);
              v22 = v97;
              if (v97 == 1)
              {
                if (HIDWORD(v99) == v99)
                {
                  WTF::Vector<WebCore::NetworkTransactionInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::NetworkTransactionInformation>(&v98, &v89);
                }

                else
                {
                  WebCore::NetworkTransactionInformation::NetworkTransactionInformation(v98 + 600 * HIDWORD(v99), &v89);
                  ++HIDWORD(v99);
                }
              }

              if (v97 == 1)
              {
                v23 = v96;
                v96 = 0;
                if (v23)
                {
                  WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v23, v15);
                }

                v24 = v95;
                v95 = 0;
                if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v24, v15);
                }

                v25 = cf;
                cf = 0;
                if (v25)
                {
                  CFRelease(v25);
                }

                WebCore::ResourceResponseBase::~ResourceResponseBase(v93, v15);
                WebCore::ResourceRequest::~ResourceRequest(&v90);
              }

              if ((v22 & 1) == 0)
              {
                break;
              }

              if (!--v20)
              {
                goto LABEL_71;
              }
            }

LABEL_51:
            WTF::Vector<WebCore::NetworkTransactionInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v98, v15);
            goto LABEL_52;
          }

          v26 = 0;
          v27 = 0;
        }

        v81 = v27;
        v98 = 0;
        v99 = 0;
        LOBYTE(v101) = 1;
        WTF::Vector<WebCore::NetworkTransactionInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v98, v15);
        *&v41 = 0;
        v80 = v41;
        v100 = v41;
        v88 = 1;
        WTF::Vector<WebCore::NetworkTransactionInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v100, v42);
        v87 = v80;
        v83 = 1;
        WTF::Vector<WebCore::NetworkTransactionInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v87, v43);
        v82[0] = 0;
        v82[1] = 0;
        v100 = 0uLL;
        v89 = v9;
        v90 = v26;
        v101 = 0;
        v91 = v81;
        v92 = 0;
        WTF::Vector<WebCore::NetworkTransactionInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v100 + 2, v44);
        v46 = v100;
        *&v100 = 0;
        if (v46)
        {
          IPC::Decoder::~Decoder(v46);
          bmalloc::api::tzoneFree(v76, v77);
        }

        WTF::Vector<WebCore::NetworkTransactionInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v82, v45);
        v8 = 0;
        goto LABEL_76;
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 1) = 0;
      v78 = *(v9 + 3);
      if (v78)
      {
        if (v13)
        {
          (*(*v78 + 16))(v78);
          v13 = *(v9 + 1);
        }
      }

      else
      {
        v13 = 0;
      }
    }

    *v9 = 0;
    *(v9 + 1) = 0;
    v79 = *(v9 + 3);
    if (v79 && v13)
    {
      (*(*v79 + 16))(v79);
    }

LABEL_52:
    v32 = *v9;
    v33 = *(v9 + 1);
    *v9 = 0;
    *(v9 + 1) = 0;
    v34 = *(v9 + 3);
    if (v34 && v33)
    {
      (*(*v34 + 16))(v34, v32);
      v37 = *v9;
      v38 = *(v9 + 1);
      v39 = *(v9 + 3);
      *v9 = 0;
      *(v9 + 1) = 0;
      if (v39 && v38)
      {
        (*(*v39 + 16))(v39, v37);
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 1) = 0;
    }

    v10 = 14;
    goto LABEL_8;
  }

  v10 = 11;
LABEL_8:
  LOBYTE(v89) = v10;
  v92 = 1;
  IPC::Decoder::~Decoder(v9);
  bmalloc::api::tzoneFree(v11, v12);
  v8 = 1;
LABEL_76:
  if (!v85)
  {
    v47 = v84;
    v84 = 0;
    if (v47)
    {
      IPC::Decoder::~Decoder(v47);
      bmalloc::api::tzoneFree(v72, v73);
    }
  }

LABEL_79:
  v48 = v86[0];
  v86[0] = 0;
  if (v48)
  {
    IPC::Encoder::~Encoder(v48, v7);
    bmalloc::api::tzoneFree(v70, v71);
  }

  v87 = 0uLL;
  v49 = &v87 + 2;
  if (v8)
  {
    v50 = &v87;
  }

  else
  {
    v50 = &v90;
  }

  v51 = *v50;
  *v50 = 0;
  *&v100 = v51;
  if (!v8)
  {
    v49 = &v91;
  }

  v52 = *v49;
  *v49 = 0;
  v53 = &v87 + 12;
  if (!v8)
  {
    v53 = &v91 + 4;
  }

  v54 = *v53;
  *v53 = 0;
  *(&v100 + 1) = __PAIR64__(v54, v52);
  WTF::Vector<WebCore::NetworkTransactionInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v87, v7);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 12) = v54;
  if (v54)
  {
    if (v54 < 0x6D3A07)
    {
      v56 = WTF::fastMalloc((600 * v54));
      *(a2 + 8) = 600 * v54 / 0x258;
      *a2 = v56;
      v57 = v51 + 600 * v54;
      v58 = v56 + 208;
      v59 = v51 + 208;
      do
      {
        v60 = v59 - 208;
        *(v58 - 208) = *(v59 - 208);
        WebCore::ResourceRequest::ResourceRequest((v58 - 200), (v59 - 200));
        WebCore::ResourceResponse::ResourceResponse(v58, v59);
        v61 = *(v59 + 280);
        *(v58 + 264) = *(v59 + 264);
        *(v58 + 280) = v61;
        v62 = *(v59 + 296);
        v63 = *(v59 + 312);
        v64 = *(v59 + 328);
        *(v58 + 344) = *(v59 + 344);
        *(v58 + 312) = v63;
        *(v58 + 328) = v64;
        *(v58 + 296) = v62;
        v65 = *(v59 + 352);
        if (v65)
        {
          atomic_fetch_add_explicit(v65, 2u, memory_order_relaxed);
        }

        *(v58 + 352) = v65;
        v66 = *(v59 + 360);
        *(v58 + 376) = *(v59 + 376);
        *(v58 + 360) = v66;
        v67 = *(v59 + 384);
        if (v67)
        {
          ++*v67;
        }

        *(v58 + 384) = v67;
        v58 += 600;
        v59 += 600;
      }

      while (v60 + 600 != v57);
      v8 = v92;
      goto LABEL_97;
    }

    __break(0xC471u);
LABEL_110:
    JUMPOUT(0x19E3035F0);
  }

LABEL_97:
  result = WTF::Vector<WebCore::NetworkTransactionInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v100, v55);
  if (!v8)
  {
    WTF::Vector<WebCore::NetworkTransactionInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v90, v69);
    result = v89;
    v89 = 0;
    if (result)
    {
      IPC::Decoder::~Decoder(result);
      return bmalloc::api::tzoneFree(v74, v75);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::WebLoaderStrategy::networkMetricsFromResourceLoadIdentifier@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = &dword_1EB01E000;
  {
    v6 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v33 = WebKit::WebProcess::operator new(0x370, a1);
    v6 = WebKit::WebProcess::WebProcess(v33);
    WebKit::WebProcess::singleton(void)::process = v6;
  }

  v7 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v6) + 24);
  IPC::Connection::createSyncMessageEncoder(0xFA7, 0, v49);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v49[0], a1);
  v8 = IPC::Connection::sendSyncMessage(v7, v49[1], v49, 0, v34, INFINITY);
  if (LOBYTE(v34[1]))
  {
    if (LOBYTE(v34[1]) != 1)
    {
      mpark::throw_bad_variant_access(v8);
    }

    v10 = LOBYTE(v34[0]);
    v11 = 1;
    goto LABEL_16;
  }

  v10 = v34[0];
  v34[0] = 0;
  if (*(v10 + 25) == 3194)
  {
    v12 = 11;
LABEL_12:
    IPC::Decoder::~Decoder(v10);
    bmalloc::api::tzoneFree(v14, v15);
    v11 = 1;
    v10 = v12;
    goto LABEL_13;
  }

  IPC::ArgumentCoder<std::tuple<WebCore::NetworkLoadMetrics>,void>::decode<IPC::Decoder>(v10, &v38);
  v13 = v48;
  if ((v48 & 1) == 0)
  {
    v9 = *v10;
    v31 = *(v10 + 1);
    *v10 = 0;
    *(v10 + 1) = 0;
    v32 = *(v10 + 3);
    if (v32)
    {
      if (v31)
      {
        (*(*v32 + 16))(v32, v9);
        v13 = v48;
      }
    }
  }

  if (!v13)
  {
    v12 = 14;
    goto LABEL_12;
  }

  v11 = 0;
  *v58 = *v43;
  v7 = v44;
  *&v58[15] = *&v43[15];
  v5 = v47;
  v37 = v46;
  v2 = v38;
  v56 = v41;
  v57 = v42;
  v54 = v39;
  v55 = v40;
  v36 = v45;
LABEL_13:
  if (!LOBYTE(v34[1]))
  {
    v16 = v34[0];
    v34[0] = 0;
    if (v16)
    {
      IPC::Decoder::~Decoder(v16);
      bmalloc::api::tzoneFree(v27, v28);
    }
  }

LABEL_16:
  v17 = v49[0];
  v49[0] = 0;
  if (v17)
  {
    IPC::Encoder::~Encoder(v17, v9);
    bmalloc::api::tzoneFree(v25, v26);
  }

  WebCore::NetworkLoadMetrics::NetworkLoadMetrics(&v38);
  if (v11)
  {
    v53[0] = *v43;
    v19 = v7;
    v7 = v44;
    *(v53 + 15) = *&v43[15];
    v20 = v5;
    v5 = v47;
    v35 = v46;
    v2 = v38;
    v51 = v41;
    v52 = v42;
    *v49 = v39;
    v50 = v40;
    *v34 = v45;
    v44 = 0;
    v47 = 0;
  }

  else
  {
    v51 = v56;
    v52 = v57;
    v53[0] = *v58;
    *(v53 + 15) = *&v58[15];
    *v49 = v54;
    v50 = v55;
    *v34 = v36;
    v35 = v37;
    v21 = v47;
    v47 = 0;
    if (v21)
    {
      WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v21, v18);
    }

    v20 = 0;
    v19 = 0;
  }

  result = v44;
  v44 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v18);
  }

  *a2 = v2;
  v23 = v52;
  *(a2 + 33) = v51;
  *(a2 + 49) = v23;
  *(a2 + 65) = v53[0];
  *(a2 + 80) = *(v53 + 15);
  v24 = v50;
  *(a2 + 1) = *v49;
  *(a2 + 17) = v24;
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  *(a2 + 88) = v7;
  *(a2 + 96) = *v34;
  *(a2 + 112) = v35;
  if (v5)
  {
    ++*v5;
    result = WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v5, v18);
  }

  *(a2 + 120) = v5;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v7, v18);
    if (v11)
    {
      return result;
    }
  }

  else if (v11)
  {
    return result;
  }

  if (v20)
  {
    result = WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v20, v18);
    if (v19)
    {
LABEL_35:
      if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(v19, v18);
      }
    }
  }

  else if (v19)
  {
    goto LABEL_35;
  }

  if (v10)
  {
    IPC::Decoder::~Decoder(v10);
    return bmalloc::api::tzoneFree(v29, v30);
  }

  return result;
}

IPC::Encoder *WebKit::WebLoaderStrategy::setResourceLoadSchedulingMode(uint64_t a1, void *a2, char a3)
{
  {
    v5 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v14 = WebKit::WebProcess::operator new(0x370, a2);
    v5 = WebKit::WebProcess::WebProcess(v14);
    WebKit::WebProcess::singleton(void)::process = v5;
  }

  v6 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v5) + 24);
  v7 = *(WebKit::WebPage::fromCorePage(a2) + 48);
  v9 = IPC::Encoder::operator new(0x238, v8);
  *v9 = 491;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = 0;
  IPC::Encoder::encodeHeader(v9);
  v15 = v9;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v9, v7);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v9, a3);
  IPC::Connection::sendMessageImpl(v6, &v15, 0, 0);
  result = v15;
  v15 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v10);
    return bmalloc::api::tzoneFree(v12, v13);
  }

  return result;
}

WTF *WebKit::WebLoaderStrategy::prioritizeResourceLoads(uint64_t a1, uint64_t a2)
{
  v2 = WTF::Vector<WebCore::SubresourceLoader *,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::map<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebLoaderStrategy::prioritizeResourceLoads(WTF::Vector<WebCore::SubresourceLoader *,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)::$_0>(&v9, a2);
  v4 = WebKit::WebProcess::singleton(v2, v3);
  v5 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v4) + 24);
  v8 = &v9;
  IPC::Connection::send<Messages::NetworkConnectionToWebProcess::PrioritizeResourceLoads>(v5, &v8);
  result = v9;
  if (v9)
  {
    v9 = 0;
    v10 = 0;
    return WTF::fastFree(result, v6);
  }

  return result;
}

IPC::Encoder *IPC::Connection::send<Messages::NetworkConnectionToWebProcess::PrioritizeResourceLoads>(uint64_t *a1, void *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 467;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::VectorArgumentCoder<false,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v4, *a2);
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

unint64_t *WebKit::WebResourceInterceptController::beginInterceptingResponse(uint64_t *a1, void *a2)
{
  v23 = 0u;
  v24 = 0u;
  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19E303E30);
  }

  v4 = *a1;
  if (!*a1)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1);
    v4 = *a1;
  }

  v5 = *(v4 - 8);
  v6 = (a2 + ~(a2 << 32)) ^ ((a2 + ~(a2 << 32)) >> 22);
  v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
  v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
  v9 = v5 & ((v8 >> 31) ^ v8);
  v10 = v4 + 40 * v9;
  v11 = *v10;
  if (*v10)
  {
    v12 = 0;
    v13 = 1;
    do
    {
      if (v11 == a2)
      {
        v18 = *(v10 + 8);
        *(v10 + 8) = 0;
        *(v10 + 16) = 0;
        v23 = v18;
        v19 = *(v10 + 24);
        *(v10 + 24) = 0;
        *&v24 = v19;
        LODWORD(v19) = *(v10 + 32);
        *(v10 + 32) = 0;
        DWORD2(v24) = v19;
        return WTF::Deque<WTF::Function<void ()(void)>,0ul>::~Deque(&v23, a2);
      }

      if (v11 == -1)
      {
        v12 = v10;
      }

      v9 = (v9 + v13) & v5;
      v10 = v4 + 40 * v9;
      v11 = *v10;
      ++v13;
    }

    while (*v10);
    if (v12)
    {
      *(v12 + 32) = 0;
      *v12 = 0u;
      *(v12 + 16) = 0u;
      --*(*a1 - 16);
      v10 = v12;
    }
  }

  *v10 = a2;
  v27 = 0;
  *&v24 = 0;
  DWORD2(v24) = 0;
  v23 = 0uLL;
  v14 = *(v10 + 8);
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  v25 = v14;
  v15 = *(v10 + 24);
  *(v10 + 24) = 0;
  v26 = v15;
  LODWORD(v15) = *(v10 + 32);
  *(v10 + 32) = 0;
  LODWORD(v27) = v15;
  WTF::Deque<WTF::Function<void ()(void)>,0ul>::~Deque(&v25, a2);
  v16 = *a1;
  if (*a1)
  {
    v17 = *(v16 - 12) + 1;
  }

  else
  {
    v17 = 1;
  }

  *(v16 - 12) = v17;
  v20 = (*(v16 - 16) + v17);
  v21 = *(v16 - 4);
  if (v21 > 0x400)
  {
    if (v21 > 2 * v20)
    {
      return WTF::Deque<WTF::Function<void ()(void)>,0ul>::~Deque(&v23, a2);
    }

    goto LABEL_19;
  }

  if (3 * v21 <= 4 * v20)
  {
LABEL_19:
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1);
  }

  return WTF::Deque<WTF::Function<void ()(void)>,0ul>::~Deque(&v23, a2);
}

void WebKit::WebResourceInterceptController::continueResponse(uint64_t *a1, uint64_t a2)
{
  v3 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(*a1, a2);
  v4 = v3;
  v5 = *a1;
  if (*a1)
  {
    v5 += 40 * *(v5 - 4);
  }

  if (v5 == v3)
  {
    v11 = 0u;
    v12 = 0u;
    memset(v13, 0, sizeof(v13));
    WTF::Deque<WTF::Function<void ()(void)>,0ul>::~Deque(v13, v3);
LABEL_17:
    WTF::Deque<WTF::Function<void ()(void)>,0ul>::~Deque(&v11, v4);
    return;
  }

  *(&v12 + 1) = 0;
  v6 = v3[1];
  v7 = v3[2];
  *&v11 = v6;
  *(&v11 + 1) = v7;
  v3[1] = 0;
  v3[2] = 0;
  v8 = v3[3];
  *&v12 = v8;
  v3[3] = 0;
  v9 = *(v3 + 8);
  DWORD2(v12) = *(v3 + 8);
  *(v3 + 8) = 0;
  if (*a1)
  {
    v10 = *a1 + 40 * *(*a1 - 4);
    if (v10 == v3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_12;
    }

    v10 = 0;
  }

  if (v10 != v3)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(a1, v3);
  }

LABEL_12:
  if (v6 == v7)
  {
    goto LABEL_17;
  }

  while (v6 < v9)
  {
    (*(**(v8 + 8 * v6) + 16))(*(v8 + 8 * v6), v4);
    v6 += v9 + 1;
    do
    {
      v6 -= v9;
    }

    while (v6 >= v9);
    if (v7 == v6)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t *WebKit::WebResourceInterceptController::defer(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(*a1, a2);
  v6 = *a1;
  if (*a1)
  {
    v6 += 40 * *(v6 - 4);
  }

  if (v6 != result)
  {
    v7 = (result + 1);

    return WTF::Deque<WTF::Function<void ()(void)>,0ul>::append<WTF::Function<void ()(void)>>(v7, a3);
  }

  return result;
}

uint64_t WebKit::WebResourceLoader::WebResourceLoader(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v56 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 1;
  *a1 = &unk_1F112C6F8;
  v4 = *a2;
  *a2 = 0;
  *(a1 + 16) = v4;
  v5 = *a3;
  v6 = *(a3 + 4);
  *(a1 + 40) = a3[1];
  *(a1 + 24) = v5;
  *(a1 + 56) = v6;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v7 = WTF::MonotonicTime::now(a1);
  *(a1 + 88) = v8;
  *(a1 + 96) = 0;
  v9 = WebCore::logClient(v7);
  v10 = *v9;
  if (*v9)
  {
    if ((*(*v10 + 24))(*v9))
    {
      if (*(a1 + 56) == 1)
      {
        v12 = *(a1 + 32);
        v11 = *(a1 + 40);
        v13 = *(a1 + 48);
      }

      else
      {
        v11 = 0;
        v12 = 0;
        v13 = 0;
      }

      os_unfair_lock_lock((v10 + 16));
      v15 = *(v10 + 8);
      v50 = v12;
      v51 = v11;
      v52 = v13;
      v16 = *(v10 + 24);
      v17 = *(v15 + 128);
      v18 = INFINITY;
      if (fabs(v17) != INFINITY)
      {
        WTF::ApproximateTime::now(v14);
        v18 = v17 + v19;
      }

      if (*(v15 + 64) == v16)
      {
LABEL_8:
        IPC::StreamClientConnectionBuffer::tryAcquire(v15 + 72, buf, v18);
        if (buf[16] == 1)
        {
          v20 = *&buf[8];
          if (*&buf[8] <= 1uLL)
          {
            __break(0xC471u);
            JUMPOUT(0x19E304458);
          }

          v21 = *buf;
          **buf = 312;
          v22 = v21 + 2;
          v23 = -v22 & 7 | 8;
          v24 = v20 - 2 - v23;
          if (v20 - 2 >= v23)
          {
            *(v22 + (-v22 & 7)) = v50;
            v25 = v22 + v23;
            v26 = -v25 & 7 | 8;
            v27 = v24 - v26;
            if (v24 >= v26)
            {
              *(v25 + (-v25 & 7)) = v51;
              v28 = v25 + v26;
              v29 = -v28 & 7 | 8;
              if (v27 >= v29)
              {
                *(v28 + (-v28 & 7)) = v52;
                v30 = v20 - v27 + v29;
                if (v30 <= 0x10)
                {
                  v30 = 16;
                }

                v31 = (*(v15 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
                v32 = *(v15 + 72);
                if (v31 + 16 >= v32)
                {
                  v31 = 0;
                }

                v33 = v31 + v30;
                if (v32 <= v33)
                {
                  v33 = 0;
                }

                *(v15 + 88) = v33;
                v34 = *(v15 + 80);
                if (*(v34 + 8) > 0xFFuLL)
                {
                  if (atomic_exchange((*(v34 + 16) + 128), v33) == 0x80000000 || *(v15 + 124))
                  {
                    if (*(v15 + 112) == 1)
                    {
                      MEMORY[0x19EB16320](*(v15 + 100));
                    }

                    *(v15 + 124) = 0;
                  }

                  goto LABEL_22;
                }

LABEL_46:
                __break(1u);
              }
            }
          }

          if ((buf[16] & 1) == 0)
          {
            goto LABEL_46;
          }

          IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v15, *buf, *&buf[8]);
          IPC::Connection::send<Messages::LogStream::WEBRESOURCELOADER_CONSTRUCTOR>(*(v15 + 8), &v50, v16);
        }

LABEL_22:
        os_unfair_lock_unlock((v10 + 16));
        return a1;
      }

      IPC::StreamClientConnectionBuffer::tryAcquire(v15 + 72, buf, v18);
      if (buf[16] != 1)
      {
        goto LABEL_22;
      }

      v40 = *&buf[8];
      if (*&buf[8] > 1uLL)
      {
        v41 = *buf;
        **buf = 3198;
        v42 = v41 + 2;
        if (v40 - 2 < (-v42 & 7 | 8uLL))
        {
          goto LABEL_22;
        }

        v43 = -v42 & 7;
        *(v42 + v43) = v16;
        v44 = 6;
        if (v43 > 6)
        {
          v44 = v43;
        }

        v45 = v44 + 10;
        v46 = (*(v15 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v47 = *(v15 + 72);
        if (v46 + 16 >= v47)
        {
          v46 = 0;
        }

        v48 = v45 + v46;
        if (v47 <= v48)
        {
          v48 = 0;
        }

        *(v15 + 88) = v48;
        v49 = *(v15 + 80);
        if (*(v49 + 8) <= 0xFFuLL)
        {
          goto LABEL_46;
        }

        IPC::StreamClientConnection::wakeUpServerBatched(v15, atomic_exchange((*(v49 + 16) + 128), v48) == 0x80000000);
        *(v15 + 64) = v16;
        goto LABEL_8;
      }

      __break(0xC471u);
    }

    else
    {
      __break(0xC471u);
    }

    JUMPOUT(0x19E304438);
  }

  v36 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 56) == 1)
    {
      v38 = *(a1 + 32);
      v37 = *(a1 + 40);
      v39 = *(a1 + 48);
    }

    else
    {
      v37 = 0;
      v38 = 0;
      v39 = 0;
    }

    *buf = 134218496;
    *&buf[4] = v38;
    *&buf[12] = 2048;
    *&buf[14] = v37;
    v54 = 2048;
    v55 = v39;
    _os_log_impl(&dword_19D52D000, v36, OS_LOG_TYPE_DEFAULT, "[webPageID=%llu, frameID=%llu, resourceID=%llu] WebResourceLoader::WebResourceLoader", buf, 0x20u);
  }

  return a1;
}

void WebKit::WebResourceLoader::~WebResourceLoader(WebKit::WebResourceLoader *this, void *a2)
{
  *this = &unk_1F112C6F8;
  v3 = *(this + 8);
  if (v3)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    if (v4[4] == 1)
    {
      (*(*v4 + 8))(v4);
    }

    else
    {
      --v4[4];
    }
  }

  if (*(this + 2) != 1)
  {
    __break(0xC471u);
  }
}

{
  WebKit::WebResourceLoader::~WebResourceLoader(this, a2);

  WTF::fastFree(v2, v3);
}

uint64_t WebKit::WebResourceLoader::messageSenderConnection(WebKit::WebResourceLoader *this, void *a2)
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

uint64_t WebKit::WebResourceLoader::messageSenderDestinationID(WebKit::WebResourceLoader *this)
{
  v2 = WTF::RunLoop::mainSingleton(this);
  if ((WTF::RunLoop::isCurrent(v2) & 1) == 0)
  {
    result = 95;
    __break(0xC471u);
LABEL_10:
    __break(1u);
    return result;
  }

  result = *(this + 2);
  if (result)
  {
    ++*(result + 16);
  }

  v4 = *(result + 752);
  if (!v4)
  {
    goto LABEL_10;
  }

  if (*(result + 16) == 1)
  {
    (*(*result + 8))(result);
  }

  else
  {
    --*(result + 16);
  }

  return v4;
}

uint64_t WebKit::WebResourceLoader::mainFrameMainResource(WebKit::WebResourceLoader *this)
{
  if (this)
  {
    ++*(this + 4);
  }

  v2 = WebCore::ResourceLoader::frame(this);
  if (!v2)
  {
    goto LABEL_23;
  }

  v3 = v2;
  ++*(v2 + 16);
  v4 = *(v2 + 120);
  if (v4)
  {
    v4 = *(v4 + 8);
  }

  if (v4 == v2)
  {
    v5 = WebCore::ResourceLoader::frameLoader(this);
    if (v5)
    {
      v6 = v5;
      WebCore::FrameLoader::ref(v5);
      v7 = *(this + 94);
      if (v7)
      {
        if (*(v6 + 6) == v7)
        {
          v8 = *(v6 + 56);
        }

        else
        {
          v8 = 0;
        }

        WebCore::FrameLoader::deref(v6);
        goto LABEL_13;
      }

      __break(1u);
LABEL_23:
      v8 = 0;
      goto LABEL_15;
    }
  }

  v8 = 0;
LABEL_13:
  if (v3[4] == 1)
  {
    (*(*v3 + 8))(v3);
  }

  else
  {
    --v3[4];
  }

LABEL_15:
  if (this)
  {
    if (*(this + 4) == 1)
    {
      (*(*this + 8))(this);
    }

    else
    {
      --*(this + 4);
    }
  }

  return v8;
}

uint64_t WebKit::WebResourceLoader::willSendRequest(uint64_t a1, WebCore::ResourceRequestBase *a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v33 = *MEMORY[0x1E69E9840];
  ++*(a1 + 8);
  v9 = *(a1 + 16);
  if (v9)
  {
    ++*(v9 + 4);
  }

  v10 = *a3;
  *a3 = 0;
  *buf = v10;
  WebCore::ResourceRequestBase::setHTTPBody();
  v11 = *buf;
  *buf = 0;
  if (v11)
  {
    v11 = WTF::RefCounted<WebCore::FormData>::deref(v11);
  }

  v12 = WebCore::logClient(v11);
  v13 = WTF::downcast<WebKit::LogClient,WebCore::LogClient>(*v12);
  if (v13)
  {
    if (*(a1 + 56) == 1)
    {
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v16 = *(a1 + 48);
    }

    else
    {
      v15 = 0;
      v14 = 0;
      v16 = 0;
    }

    WebKit::LogClient::WEBRESOURCELOADER_WILLSENDREQUEST(v13, v14, v15, v16);
  }

  else
  {
    v26 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 56) == 1)
      {
        v28 = *(a1 + 32);
        v27 = *(a1 + 40);
        v29 = *(a1 + 48);
      }

      else
      {
        v27 = 0;
        v28 = 0;
        v29 = 0;
      }

      *buf = 134218496;
      *&buf[4] = v28;
      *&buf[12] = 2048;
      *&buf[14] = v27;
      *&buf[22] = 2048;
      v32 = v29;
      _os_log_impl(&dword_19D52D000, v26, OS_LOG_TYPE_DEFAULT, "[webPageID=%llu, frameID=%llu, resourceID=%llu] WebResourceLoader::willSendRequest", buf, 0x20u);
    }
  }

  v17 = WebCore::ResourceLoader::frame(v9);
  if (v17)
  {
    v18 = v17;
    v19 = *(v17 + 16);
    *(v17 + 16) = v19 + 1;
    v20 = *(v17 + 24);
    if (v20)
    {
      v21 = *(v20 + 8);
      if (v21)
      {
        ++*(v21 + 8);
        WebCore::ResourceRequestBase::url(a2);
        WebKit::WebResourceLoader::mainFrameMainResource(*(a1 + 16));
        if ((WebCore::Page::allowsLoadFromURL() & 1) == 0)
        {
          WebCore::ResourceRequest::ResourceRequest(buf);
          WebCore::ResourceRequest::operator=(a2, buf);
          WebCore::ResourceRequest::~ResourceRequest(buf);
        }

        WTF::RefCounted<WebCore::Page>::deref((v21 + 8));
        v19 = v18[4] - 1;
      }
    }

    if (v19)
    {
      v18[4] = v19;
    }

    else
    {
      (*(*v18 + 8))(v18);
    }
  }

  *buf = a1;
  ++*(a1 + 8);
  v22 = *a5;
  *a5 = 0;
  v23 = WTF::fastMalloc(0x20);
  *v23 = &unk_1F112C888;
  v23[1] = a1;
  v23[2] = a1;
  v23[3] = v22;
  *&buf[8] = 0;
  *&buf[16] = 0;
  v30 = v23;
  (*(*v9 + 192))(v9, a2, a4, &v30);
  v24 = v30;
  v30 = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  result = WebKit::WebResourceLoader::willSendRequest(WebCore::ResourceRequest &&,IPC::FormDataReference &&,WebCore::ResourceResponse &&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &,BOOL)> &&)::$_0::~$_0(buf);
  if (*(v9 + 4) == 1)
  {
    result = (*(*v9 + 8))(v9);
  }

  else
  {
    --*(v9 + 4);
  }

  if (*(a1 + 8) == 1)
  {
    return (*(*a1 + 8))(a1);
  }

  --*(a1 + 8);
  return result;
}

void WebKit::LogClient::WEBRESOURCELOADER_WILLSENDREQUEST(WebKit::LogClient *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock(this + 4);
  v8 = *(this + 1);
  v9[0] = a2;
  v9[1] = a3;
  v9[2] = a4;
  IPC::StreamClientConnection::send<Messages::LogStream::WEBRESOURCELOADER_WILLSENDREQUEST,WebKit::LogStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v8, v9, *(this + 3));
  os_unfair_lock_unlock(this + 4);
}

uint64_t WebKit::WebResourceLoader::willSendRequest(WebCore::ResourceRequest &&,IPC::FormDataReference &&,WebCore::ResourceResponse &&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &,BOOL)> &&)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    if (v3[2] == 1)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      --v3[2];
    }
  }

  return a1;
}

uint64_t WebKit::WebResourceLoader::didSendData(WebKit::WebResourceLoader *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    ++v1[4];
  }

  result = (*(*v1 + 200))(v1);
  if (v1[4] == 1)
  {
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  else
  {
    --v1[4];
  }

  return result;
}

IPC::Encoder *WebKit::WebResourceLoader::didReceiveResponse(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v96 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 16);
  if (v10)
  {
    ++*(v10 + 16);
  }

  v11 = WebCore::logClient(a1);
  v12 = *v11;
  if (!*v11)
  {
    v68 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 56) == 1)
      {
        v70 = *(a1 + 32);
        v69 = *(a1 + 40);
        v12 = *(a1 + 48);
      }

      else
      {
        v69 = 0;
        v70 = 0;
        v12 = 0;
      }

      *buf = 134218752;
      *&buf[4] = v70;
      *&buf[12] = 2048;
      *&buf[14] = v69;
      *&buf[22] = 2048;
      v93 = v12;
      v94 = 1024;
      v95 = WebCore::ResourceResponseBase::httpStatusCode(a2);
      _os_log_impl(&dword_19D52D000, v68, OS_LOG_TYPE_DEFAULT, "[webPageID=%llu, frameID=%llu, resourceID=%llu] WebResourceLoader::didReceiveResponse: (httpStatusCode=%d)", buf, 0x26u);
    }

    goto LABEL_26;
  }

  if (((*(*v12 + 24))(*v11) & 1) == 0)
  {
    __break(0xC471u);
    goto LABEL_89;
  }

  v87 = a3;
  v88 = a4;
  if (*(a1 + 56) != 1)
  {
    goto LABEL_83;
  }

  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  for (i = *(a1 + 48); ; i = 0)
  {
    v89 = a2;
    v16 = WebCore::ResourceResponseBase::httpStatusCode(a2);
    os_unfair_lock_lock((v12 + 16));
    a2 = *(v12 + 8);
    v18 = *(v12 + 24);
    v19 = *(a2 + 128);
    v20 = INFINITY;
    if (fabs(v19) != INFINITY)
    {
      WTF::ApproximateTime::now(v17);
      v20 = v19 + v21;
    }

    if (*(a2 + 64) != v18)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(a2 + 72, buf, v20);
      if (buf[16] != 1)
      {
        goto LABEL_25;
      }

      v71 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
        __break(0xC471u);
LABEL_89:
        JUMPOUT(0x19E30550CLL);
      }

      v72 = *buf;
      **buf = 3198;
      v73 = v72 + 2;
      if (v71 - 2 < (-v73 & 7 | 8uLL))
      {
        goto LABEL_25;
      }

      v74 = -v73 & 7;
      *(v73 + v74) = v18;
      v75 = 6;
      if (v74 > 6)
      {
        v75 = v74;
      }

      v76 = v75 + 10;
      v77 = (*(a2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v78 = *(a2 + 72);
      if (v77 + 16 >= v78)
      {
        v77 = 0;
      }

      v79 = v76 + v77;
      if (v78 <= v79)
      {
        v79 = 0;
      }

      *(a2 + 88) = v79;
      v80 = *(a2 + 80);
      if (*(v80 + 8) <= 0xFFuLL)
      {
        goto LABEL_82;
      }

      IPC::StreamClientConnection::wakeUpServerBatched(a2, atomic_exchange((*(v80 + 16) + 128), v79) == 0x80000000);
      *(a2 + 64) = v18;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(a2 + 72, buf, v20);
    if (buf[16] == 1)
    {
      v23 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
        __break(0xC471u);
        JUMPOUT(0x19E30552CLL);
      }

      v24 = *buf;
      **buf = 319;
      v25 = v24 + 2;
      v26 = -v25 & 7 | 8;
      v27 = v23 - 2 - v26;
      if (v23 - 2 < v26 || (*(v25 + (-v25 & 7)) = v13, v28 = v25 + v26, v29 = -v28 & 7 | 8, v30 = v27 - v29, v27 < v29) || (*(v28 + (-v28 & 7)) = v14, v31 = v28 + v29, v32 = -(v28 + v29), v33 = v32 & 7 | 8, v34 = v30 - v33, v30 < v33) || (*(v31 + (v32 & 7)) = i, v35 = v31 + v33, v36 = -v35 & 3 | 4, v34 < v36))
      {
        if ((buf[16] & 1) == 0)
        {
          goto LABEL_82;
        }

        if (*&buf[8] <= 1uLL)
        {
          __break(0xC471u);
          JUMPOUT(0x19E30554CLL);
        }

        **buf = 3197;
        v58 = (*(a2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v59 = *(a2 + 72);
        if (v58 + 16 >= v59)
        {
          v58 = 0;
        }

        v60 = v58 + 16;
        v61 = v59 <= v60 ? 0 : v60;
        *(a2 + 88) = v61;
        v62 = *(a2 + 80);
        if (*(v62 + 8) <= 0xFFuLL)
        {
          goto LABEL_82;
        }

        atomic_exchange((*(v62 + 16) + 128), v61);
        *(a2 + 124) = 0;
        v86 = *(a2 + 8);
        v63 = IPC::Encoder::operator new(0x238, v22);
        *v63 = 319;
        *(v63 + 2) = 0;
        *(v63 + 3) = 0;
        *(v63 + 1) = v18;
        *(v63 + 68) = 0;
        *(v63 + 70) = 0;
        *(v63 + 69) = 0;
        IPC::Encoder::encodeHeader(v63);
        v91 = v63;
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v63, v13);
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v63, v14);
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v63, i);
        IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v63, v16);
        IPC::Connection::sendMessageImpl(v86, &v91, 1, 0);
        v65 = v91;
        v91 = 0;
        if (v65)
        {
          IPC::Encoder::~Encoder(v65, v64);
          bmalloc::api::tzoneFree(v66, v67);
        }
      }

      else
      {
        *(v35 + (-v35 & 3)) = v16;
        v37 = v23 - v34 + v36;
        if (v37 <= 0x10)
        {
          v37 = 16;
        }

        v38 = (*(a2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v39 = *(a2 + 72);
        if (v38 + 16 >= v39)
        {
          v38 = 0;
        }

        v40 = v38 + v37;
        if (v39 <= v40)
        {
          v40 = 0;
        }

        *(a2 + 88) = v40;
        v41 = *(a2 + 80);
        if (*(v41 + 8) <= 0xFFuLL)
        {
          goto LABEL_82;
        }

        if (atomic_exchange((*(v41 + 16) + 128), v40) == 0x80000000 || *(a2 + 124))
        {
          if (*(a2 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(a2 + 100));
          }

          *(a2 + 124) = 0;
        }
      }
    }

LABEL_25:
    os_unfair_lock_unlock((v12 + 16));
    a2 = v89;
    a3 = v87;
    a4 = v88;
LABEL_26:
    ++*(a1 + 8);
    if (*(a5 + 128) == 1)
    {
      *(a5 + 80) = *(a1 + 96);
      v48 = WTF::fastMalloc(0x88);
      *v48 = 1;
      v49 = *(a5 + 16);
      *(v48 + 8) = *a5;
      *(v48 + 24) = v49;
      v51 = *(a5 + 48);
      v50 = *(a5 + 64);
      v52 = *(a5 + 80);
      *(v48 + 40) = *(a5 + 32);
      *(v48 + 88) = v52;
      *(v48 + 72) = v50;
      *(v48 + 56) = v51;
      v53 = *(a5 + 88);
      *(a5 + 88) = 0;
      *(v48 + 96) = v53;
      v54 = *(a5 + 96);
      *(v48 + 120) = *(a5 + 112);
      *(v48 + 104) = v54;
      v55 = *(a5 + 120);
      *(a5 + 120) = 0;
      *(v48 + 128) = v55;
      v56 = *(a2 + 112);
      *(a2 + 112) = v48;
      if (v56)
      {
        WTF::ThreadSafeRefCounted<WTF::Box<WebCore::NetworkLoadMetrics>::Data,(WTF::DestructionThread)0>::deref(v56, v47);
      }
    }

    if (a3)
    {
      v81 = WebKit::WebResourceLoader::mainFrameMainResource(*(a1 + 16));
      if (v81)
      {
        *(WebKit::WebProcess::singleton(v81, v82) + 816) = 1;
      }
    }

    v91 = 0;
    if (a4)
    {
      ++*(a1 + 8);
      v57 = WTF::fastMalloc(0x18);
      *v57 = &unk_1F112C8B0;
      *(v57 + 1) = a1;
      *(v57 + 2) = a1;
      v91 = v57;
    }

    v42 = WebCore::ResourceLoader::frame(v10);
    v44 = v42;
    if (!v42)
    {
      break;
    }

    ++v42[4];
    v45 = atomic_load(MEMORY[0x1E69E2708]);
    if (!v45 || !WebCore::InspectorInstrumentationWebKit::shouldInterceptResponseInternal(v42, a2, v43))
    {
      goto LABEL_32;
    }

    v83 = *(v10 + 752);
    if (v83)
    {
      WebKit::WebResourceInterceptController::beginInterceptingResponse((a1 + 64), *(v10 + 752));
      ++*(a1 + 8);
      *&buf[16] = v83;
      v84 = v91;
      v91 = 0;
      *buf = a1;
      v85 = WTF::fastMalloc(0x28);
      *v85 = &unk_1F112C8D8;
      v85[1] = a1;
      v85[2] = a1;
      v85[3] = v83;
      *&buf[8] = 0;
      v93 = 0;
      v85[4] = v84;
      v90 = v85;
      WebCore::InspectorInstrumentationWebKit::interceptResponseInternal();
      if (v90)
      {
        (*(*v90 + 8))(v90);
      }

      WebKit::WebResourceLoader::didReceiveResponse(WebCore::ResourceResponse &&,WebKit::PrivateRelayed,BOOL,std::optional<WebCore::NetworkLoadMetrics> &&)::$_1::~$_1(buf);
      goto LABEL_33;
    }

LABEL_82:
    __break(1u);
LABEL_83:
    v14 = 0;
    v13 = 0;
  }

  atomic_load(MEMORY[0x1E69E2708]);
LABEL_32:
  (*(*v10 + 208))(v10, a2, &v91);
  if (v44)
  {
LABEL_33:
    if (v44[4] == 1)
    {
      (*(*v44 + 8))(v44);
    }

    else
    {
      --v44[4];
    }
  }

  result = v91;
  v91 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (*(a1 + 8) == 1)
  {
    result = (*(*a1 + 8))(a1);
  }

  else
  {
    --*(a1 + 8);
  }

  if (*(v10 + 16) == 1)
  {
    return (*(*v10 + 8))(v10);
  }

  --*(v10 + 16);
  return result;
}

uint64_t WebKit::WebResourceLoader::didReceiveResponse(WebCore::ResourceResponse &&,WebKit::PrivateRelayed,BOOL,std::optional<WebCore::NetworkLoadMetrics> &&)::$_1::~$_1(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    if (v3[2] == 1)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      --v3[2];
    }
  }

  return a1;
}

unsigned int *WebKit::WebResourceLoader::didReceiveData(uint64_t *a1, IPC::SharedBufferReference *this, uint64_t a3)
{
  v5 = a1;
  v65 = *MEMORY[0x1E69E9840];
  v6 = a1[2];
  if (v6)
  {
    ++v6[4];
  }

  v7 = *(v6 + 94);
  if (!v7)
  {
    goto LABEL_72;
  }

  if (a1[8])
  {
    a1 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1 + 8, v7);
    if (a1)
    {
      v54 = *(v6 + 94);
      if (v54)
      {
        ++*(v5 + 2);
        v55 = *this;
        *buf = v5;
        *&buf[16] = v55;
        v64 = a3;
        v58 = *(this + 8);
        *(this + 8) = 0u;
        v56 = WTF::fastMalloc(0x38);
        *v56 = &unk_1F112C928;
        *(v56 + 8) = v5;
        *&buf[8] = 0;
        *(v56 + 16) = v5;
        *(v56 + 24) = v55;
        *(v56 + 32) = v58;
        v63 = 0u;
        *(v56 + 48) = a3;
        v59 = v56;
        WebKit::WebResourceInterceptController::defer(v5 + 8, v54, &v59);
        v57 = v59;
        v59 = 0;
        if (v57)
        {
          (*(*v57 + 8))(v57);
        }

        result = WebKit::WebResourceLoader::didReceiveData(IPC::SharedBufferReference &&,unsigned long long)::$_0::~$_0(buf);
        goto LABEL_18;
      }

LABEL_72:
      __break(1u);
    }
  }

  if (!v5[9])
  {
    v14 = WebCore::logClient(a1);
    v15 = *v14;
    if (!*v14)
    {
      v40 = qword_1ED6416F0;
      if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v5 + 56) == 1)
        {
          v42 = v5[4];
          v41 = v5[5];
          v43 = v5[6];
        }

        else
        {
          v41 = 0;
          v42 = 0;
          v43 = 0;
        }

        *buf = 134218496;
        *&buf[4] = v42;
        *&buf[12] = 2048;
        *&buf[14] = v41;
        *&buf[22] = 2048;
        *&v63 = v43;
        _os_log_impl(&dword_19D52D000, v40, OS_LOG_TYPE_DEFAULT, "[webPageID=%llu, frameID=%llu, resourceID=%llu] WebResourceLoader::didReceiveData: Started receiving data", buf, 0x20u);
      }

      goto LABEL_6;
    }

    if ((*(*v15 + 24))(*v14))
    {
      if (*(v5 + 56) == 1)
      {
        v17 = v5[4];
        v16 = v5[5];
        v18 = v5[6];
      }

      else
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
      }

      os_unfair_lock_lock((v15 + 16));
      v20 = *(v15 + 8);
      v59 = v17;
      v60 = v16;
      v61 = v18;
      v21 = *(v15 + 24);
      v22 = *(v20 + 128);
      v23 = INFINITY;
      if (fabs(v22) != INFINITY)
      {
        WTF::ApproximateTime::now(v19);
        v23 = v22 + v24;
      }

      if (*(v20 + 64) == v21)
      {
LABEL_27:
        IPC::StreamClientConnectionBuffer::tryAcquire(v20 + 72, buf, v23);
        if (buf[16] == 1)
        {
          v25 = *&buf[8];
          if (*&buf[8] <= 1uLL)
          {
            __break(0xC471u);
            JUMPOUT(0x19E305CBCLL);
          }

          v26 = *buf;
          **buf = 316;
          v27 = v26 + 2;
          v28 = -v27 & 7 | 8;
          v29 = v25 - 2 - v28;
          if (v25 - 2 < v28 || (*(v27 + (-v27 & 7)) = v59, v30 = v27 + v28, v31 = -v30 & 7 | 8, v32 = v29 - v31, v29 < v31) || (*(v30 + (-v30 & 7)) = v60, v33 = v30 + v31, v34 = -v33 & 7 | 8, v32 < v34))
          {
            if ((buf[16] & 1) == 0)
            {
              goto LABEL_72;
            }

            IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v20, *buf, *&buf[8]);
            IPC::Connection::send<Messages::LogStream::WEBRESOURCELOADER_DIDRECEIVEDATA>(*(v20 + 8), &v59, v21);
          }

          else
          {
            *(v33 + (-v33 & 7)) = v61;
            v35 = v25 - v32 + v34;
            if (v35 <= 0x10)
            {
              v35 = 16;
            }

            v36 = (*(v20 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v37 = *(v20 + 72);
            if (v36 + 16 >= v37)
            {
              v36 = 0;
            }

            v38 = v36 + v35;
            if (v37 <= v38)
            {
              v38 = 0;
            }

            *(v20 + 88) = v38;
            v39 = *(v20 + 80);
            if (*(v39 + 8) <= 0xFFuLL)
            {
              goto LABEL_72;
            }

            if (atomic_exchange((*(v39 + 16) + 128), v38) == 0x80000000 || *(v20 + 124))
            {
              if (*(v20 + 112) == 1)
              {
                MEMORY[0x19EB16320](*(v20 + 100));
              }

              *(v20 + 124) = 0;
            }
          }
        }

        goto LABEL_41;
      }

      IPC::StreamClientConnectionBuffer::tryAcquire(v20 + 72, buf, v23);
      if (buf[16] != 1)
      {
LABEL_41:
        os_unfair_lock_unlock((v15 + 16));
        goto LABEL_6;
      }

      v44 = *&buf[8];
      if (*&buf[8] > 1uLL)
      {
        v45 = *buf;
        **buf = 3198;
        v46 = v45 + 2;
        if (v44 - 2 >= (-v46 & 7 | 8uLL))
        {
          v47 = -v46 & 7;
          *(v46 + v47) = v21;
          v48 = 6;
          if (v47 > 6)
          {
            v48 = v47;
          }

          v49 = v48 + 10;
          v50 = (*(v20 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v51 = *(v20 + 72);
          if (v50 + 16 >= v51)
          {
            v50 = 0;
          }

          v52 = v49 + v50;
          if (v51 <= v52)
          {
            v52 = 0;
          }

          *(v20 + 88) = v52;
          v53 = *(v20 + 80);
          if (*(v53 + 8) <= 0xFFuLL)
          {
            goto LABEL_72;
          }

          IPC::StreamClientConnection::wakeUpServerBatched(v20, atomic_exchange((*(v53 + 16) + 128), v52) == 0x80000000);
          *(v20 + 64) = v21;
          goto LABEL_27;
        }

        goto LABEL_41;
      }

      __break(0xC471u);
    }

    else
    {
      __break(0xC471u);
    }

    JUMPOUT(0x19E305C9CLL);
  }

LABEL_6:
  v8 = *this;
  v9 = v5[10];
  v5[9] += *this;
  v5[10] = a3;
  if (v8 || *(this + 1))
  {
    IPC::SharedBufferReference::unsafeBuffer(this, buf);
    v10 = 0;
    v11 = *buf;
    *buf = 0;
  }

  else
  {
    v11 = WTF::fastMalloc(0x40);
    WebCore::SharedBuffer::SharedBuffer(v11);
    v10 = 1;
  }

  result = (*(*v6 + 216))(v6, v11, a3 - v9, 1);
  if (v11 && atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v11 + 2);
    result = (*(*v11 + 8))(v11);
  }

  if ((v10 & 1) == 0)
  {
    result = *buf;
    *buf = 0;
    if (result)
    {
      if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result + 2);
        result = (*(*result + 8))(result);
      }
    }
  }

  if (a3 != v9)
  {
    result = WebCore::ResourceLoader::resourceMonitorIfExists(v6);
    if (result)
    {
      v13 = result + 2;
      ++result[2];
      WebCore::ResourceMonitor::addNetworkUsage(result);
      result = WTF::RefCounted<WebCore::ResourceMonitor>::deref(v13);
    }
  }

LABEL_18:
  if (v6[4] == 1)
  {
    return (*(*v6 + 8))(v6);
  }

  --v6[4];
  return result;
}

void *WebKit::WebResourceLoader::didReceiveData(IPC::SharedBufferReference &&,unsigned long long)::$_0::~$_0(void *a1)
{
  v2 = a1[4];
  a1[4] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v2);
  }

  v3 = a1[3];
  a1[3] = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    if (v4[2] == 1)
    {
      (*(*v4 + 8))(v4);
    }

    else
    {
      --v4[2];
    }
  }

  return a1;
}

void *WebKit::WebResourceLoader::didFinishResourceLoad(uint64_t a1, uint64_t a2)
{
  v84 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  if (v4)
  {
    ++*(v4 + 16);
  }

  v5 = WebCore::logClient(a1);
  v6 = *v5;
  if (*v5)
  {
    if ((*(*v6 + 24))(*v5))
    {
      if (*(a1 + 56) == 1)
      {
        v8 = *(a1 + 32);
        v7 = *(a1 + 40);
        v9 = *(a1 + 48);
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
      }

      v10 = *(a1 + 72);
      os_unfair_lock_lock((v6 + 16));
      v12 = *(v6 + 8);
      *buf = v8;
      *&buf[8] = v7;
      *&buf[16] = v9;
      *&buf[24] = v10;
      v13 = *(v6 + 24);
      v14 = *(v12 + 128);
      v15 = INFINITY;
      if (fabs(v14) != INFINITY)
      {
        WTF::ApproximateTime::now(v11);
        v15 = v14 + v16;
      }

      if (*(v12 + 64) == v13)
      {
LABEL_10:
        IPC::StreamClientConnectionBuffer::tryAcquire(v12 + 72, &v71, v15);
        if (v73 == 1)
        {
          v17 = v72;
          if (v72 <= 1)
          {
            __break(0xC471u);
            JUMPOUT(0x19E3063F4);
          }

          v18 = v71;
          *v71 = 315;
          v19 = v18 + 1;
          v20 = -v19 & 7 | 8;
          v21 = v17 - 2 - v20;
          if (v17 - 2 < v20 || (*(v19 + (-v19 & 7)) = *buf, v22 = v19 + v20, v23 = -v22 & 7 | 8, v24 = v21 - v23, v21 < v23) || (*&v22[-v22 & 7] = *&buf[8], v25 = &v22[v23], v26 = -(v22 + v23), v27 = v26 & 7 | 8, v28 = v24 - v27, v24 < v27) || (*&v25[v26 & 7] = *&buf[16], v29 = &v25[v27], v30 = -v29 & 7 | 8, v28 < v30))
          {
            if ((v73 & 1) == 0)
            {
              goto LABEL_63;
            }

            IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v12, v71, v72);
            IPC::Connection::send<Messages::LogStream::WEBRESOURCELOADER_DIDFINISHRESOURCELOAD>(*(v12 + 8), buf, v13);
          }

          else
          {
            *&v29[-v29 & 7] = *&buf[24];
            v31 = v17 - v28 + v30;
            if (v31 <= 0x10)
            {
              v31 = 16;
            }

            v32 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v33 = *(v12 + 72);
            if (v32 + 16 >= v33)
            {
              v32 = 0;
            }

            v34 = v32 + v31;
            if (v33 <= v34)
            {
              v34 = 0;
            }

            *(v12 + 88) = v34;
            v35 = *(v12 + 80);
            if (*(v35 + 8) <= 0xFFuLL)
            {
              goto LABEL_63;
            }

            if (atomic_exchange((*(v35 + 16) + 128), v34) == 0x80000000 || *(v12 + 124))
            {
              if (*(v12 + 112) == 1)
              {
                MEMORY[0x19EB16320](*(v12 + 100));
              }

              *(v12 + 124) = 0;
            }
          }
        }

        goto LABEL_25;
      }

      IPC::StreamClientConnectionBuffer::tryAcquire(v12 + 72, &v71, v15);
      if (v73 != 1)
      {
LABEL_25:
        os_unfair_lock_unlock((v6 + 16));
        goto LABEL_26;
      }

      v44 = v72;
      if (v72 > 1)
      {
        v45 = v71;
        *v71 = 3198;
        v46 = v45 + 1;
        if (v44 - 2 >= (-v46 & 7 | 8uLL))
        {
          v47 = -v46 & 7;
          *(v46 + v47) = v13;
          v48 = 6;
          if (v47 > 6)
          {
            v48 = v47;
          }

          v49 = v48 + 10;
          v50 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v51 = *(v12 + 72);
          if (v50 + 16 >= v51)
          {
            v50 = 0;
          }

          v52 = v49 + v50;
          if (v51 <= v52)
          {
            v52 = 0;
          }

          *(v12 + 88) = v52;
          v53 = *(v12 + 80);
          if (*(v53 + 8) <= 0xFFuLL)
          {
            goto LABEL_63;
          }

          IPC::StreamClientConnection::wakeUpServerBatched(v12, atomic_exchange((*(v53 + 16) + 128), v52) == 0x80000000);
          *(v12 + 64) = v13;
          goto LABEL_10;
        }

        goto LABEL_25;
      }

      __break(0xC471u);
    }

    else
    {
      __break(0xC471u);
    }

    JUMPOUT(0x19E3063D4);
  }

  v40 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 56) == 1)
    {
      v42 = *(a1 + 32);
      v41 = *(a1 + 40);
      v43 = *(a1 + 48);
    }

    else
    {
      v41 = 0;
      v42 = 0;
      v43 = 0;
    }

    v54 = *(a1 + 72);
    *buf = 134218752;
    *&buf[4] = v42;
    *&buf[12] = 2048;
    *&buf[14] = v41;
    *&buf[22] = 2048;
    *&buf[24] = v43;
    LOWORD(v75) = 2048;
    *(&v75 + 2) = v54;
    _os_log_impl(&dword_19D52D000, v40, OS_LOG_TYPE_DEFAULT, "[webPageID=%llu, frameID=%llu, resourceID=%llu] WebResourceLoader::didFinishResourceLoad: (length=%llu)", buf, 0x2Au);
  }

LABEL_26:
  v36 = *(v4 + 752);
  if (!v36)
  {
    goto LABEL_63;
  }

  if (*(a1 + 64) && WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>((a1 + 64), v36))
  {
    v57 = *(v4 + 752);
    if (v57)
    {
      ++*(a1 + 8);
      v58 = *(a2 + 88);
      v59 = *(a2 + 112);
      v60 = *(a2 + 120);
      v79 = *(a2 + 80);
      v82 = v59;
      *buf = a1;
      v61 = *(a2 + 48);
      v76 = *(a2 + 32);
      v77 = v61;
      v78 = *(a2 + 64);
      v62 = *(a2 + 16);
      *&buf[16] = *a2;
      v75 = v62;
      *(a2 + 88) = 0;
      v81 = *(a2 + 96);
      *(a2 + 120) = 0;
      v63 = WTF::fastMalloc(0x98);
      *v63 = &unk_1F112C950;
      *(v63 + 8) = a1;
      *(v63 + 16) = a1;
      v64 = v79;
      v65 = v78;
      v66 = v76;
      *(v63 + 72) = v77;
      *(v63 + 88) = v65;
      *(v63 + 56) = v66;
      *(v63 + 104) = v64;
      *(v63 + 112) = v58;
      v67 = *&buf[16];
      *(v63 + 40) = v75;
      *(v63 + 24) = v67;
      *&buf[8] = 0;
      v80 = 0;
      v68 = v82;
      *(v63 + 120) = v81;
      *(v63 + 136) = v68;
      *(v63 + 144) = v60;
      v83 = 0;
      v71 = v63;
      WebKit::WebResourceInterceptController::defer((a1 + 64), v57, &v71);
      v70 = v71;
      v71 = 0;
      if (v70)
      {
        (*(*v70 + 8))(v70);
      }

      result = WebKit::WebResourceLoader::didFinishResourceLoad(WebCore::NetworkLoadMetrics &&)::$_0::~$_0(buf, v69);
      goto LABEL_31;
    }

LABEL_63:
    __break(1u);
  }

  *(a2 + 80) = *(a1 + 96);
  v37 = *(a2 + 104);
  if (v37 != -1)
  {
    v38 = *(a1 + 80);
    *(a1 + 80) = v37;
    if (v37 != v38)
    {
      v55 = WebCore::ResourceLoader::resourceMonitorIfExists(v4);
      if (v55)
      {
        v56 = v55 + 2;
        ++v55[2];
        WebCore::ResourceMonitor::addNetworkUsage(v55);
        WTF::RefCounted<WebCore::ResourceMonitor>::deref(v56);
      }
    }
  }

  result = (*(*v4 + 232))(v4, a2);
LABEL_31:
  if (*(v4 + 16) == 1)
  {
    return (*(*v4 + 8))(v4);
  }

  --*(v4 + 16);
  return result;
}