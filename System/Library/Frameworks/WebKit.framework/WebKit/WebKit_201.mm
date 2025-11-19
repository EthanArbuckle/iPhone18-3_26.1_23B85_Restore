void *WebKit::WebResourceLoader::didFinishResourceLoad(WebCore::NetworkLoadMetrics &&)::$_0::~$_0(void *a1, WTF::StringImpl *a2)
{
  v3 = a1[17];
  a1[17] = 0;
  if (v3)
  {
    WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v3, a2);
  }

  v4 = a1[13];
  a1[13] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[1];
  a1[1] = 0;
  if (v5)
  {
    if (v5[2] == 1)
    {
      (*(*v5 + 8))(v5);
    }

    else
    {
      --v5[2];
    }
  }

  return a1;
}

void *WebKit::WebResourceLoader::didFailServiceWorkerLoad(WebKit::WebResourceLoader *this, const WebCore::ResourceError *a2)
{
  v4 = *(this + 2);
  if (v4)
  {
    ++*(v4 + 16);
  }

  if (WebCore::ResourceLoader::frame(v4) && (v5 = *(WebCore::ResourceLoader::frame(v4) + 224)) != 0)
  {
    *(v5 + 7) += 2;
    if (*(v4 + 976))
    {
      v6 = 1;
    }

    else
    {
      v6 = *(a2 + 60) == 1;
    }

    if (v6)
    {
      MEMORY[0x19EB12BA0](a2);
      WebCore::Document::addConsoleMessage();
      if (*(v4 + 976))
      {
        MEMORY[0x19EB12BA0](a2);
        v7 = *(a2 + 1);
        if (v7)
        {
          atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
        }

        v12 = v7;
        WTF::makeString<WTF::ASCIILiteral,WTF::String,char>("Cannot load ", 13, &v12, 46, &v13);
        WebCore::Document::addConsoleMessage();
        v9 = v13;
        v13 = 0;
        if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, v8);
        }

        v10 = v12;
        v12 = 0;
        if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v10, v8);
        }
      }
    }

    if (*(v5 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v5);
    }

    else
    {
      *(v5 + 7) -= 2;
    }

    result = WebKit::WebResourceLoader::didFailResourceLoad(this, a2);
  }

  else
  {
    result = WebKit::WebResourceLoader::didFailResourceLoad(this, a2);
    if (!v4)
    {
      return result;
    }
  }

  if (*(v4 + 16) == 1)
  {
    return (*(*v4 + 8))(v4);
  }

  --*(v4 + 16);
  return result;
}

void *WebKit::WebResourceLoader::didFailResourceLoad(WebKit::WebResourceLoader *this, const WebCore::ResourceError *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(this + 2);
  if (v4)
  {
    ++v4[4];
  }

  v5 = WebCore::logClient(this);
  v6 = WTF::downcast<WebKit::LogClient,WebCore::LogClient>(*v5);
  if (v6)
  {
    if (*(this + 56) == 1)
    {
      v7 = *(this + 4);
      v8 = *(this + 5);
      v9 = *(this + 6);
    }

    else
    {
      v8 = 0;
      v7 = 0;
      v9 = 0;
    }

    WebKit::LogClient::WEBRESOURCELOADER_DIDFAILRESOURCELOAD(v6, v7, v8, v9);
  }

  else
  {
    v13 = qword_1ED6416F0;
    v10 = os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (*(this + 56) == 1)
      {
        v15 = *(this + 4);
        v14 = *(this + 5);
        v16 = *(this + 6);
      }

      else
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
      }

      *buf = 134218496;
      *&buf[4] = v15;
      *&buf[12] = 2048;
      *&buf[14] = v14;
      v21 = 2048;
      v22 = v16;
      _os_log_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEFAULT, "[webPageID=%llu, frameID=%llu, resourceID=%llu] WebResourceLoader::didFailResourceLoad", buf, 0x20u);
    }
  }

  v11 = *(v4 + 94);
  if (!v11)
  {
    goto LABEL_24;
  }

  if (!*(this + 8) || (v10 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(this + 8, v11)) == 0)
  {
    result = (*(*v4 + 240))(v4, a2);
    goto LABEL_10;
  }

  v17 = *(v4 + 94);
  if (!v17)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  ++*(this + 2);
  *buf = this;
  *&buf[8] = this;
  WebCore::ResourceError::ResourceError(&buf[16], a2);
  WTF::Function<void ()(void)>::Function<WebKit::WebResourceLoader::didFailResourceLoad(WebCore::ResourceError const&)::$_0,void>(&v19, buf);
  WebKit::WebResourceInterceptController::defer(this + 8, v17, &v19);
  v10 = v19;
  v19 = 0;
  if (v10)
  {
LABEL_25:
    (*(*v10 + 8))(v10);
  }

  result = WebKit::WebResourceLoader::didFailResourceLoad(WebCore::ResourceError const&)::$_0::~$_0(buf, v18);
LABEL_10:
  if (v4[4] == 1)
  {
    return (*(*v4 + 8))(v4);
  }

  --v4[4];
  return result;
}

WTF::StringImpl *WebKit::WebResourceLoader::serviceWorkerDidNotHandle(WebKit::WebResourceLoader *this)
{
  v71 = *MEMORY[0x1E69E9840];
  v2 = *(this + 2);
  if (v2)
  {
    ++v2[4];
  }

  v3 = WebCore::logClient(this);
  v4 = *v3;
  if (*v3)
  {
    if ((*(*v4 + 24))(*v3))
    {
      if (*(this + 56) == 1)
      {
        v6 = *(this + 4);
        v5 = *(this + 5);
        v7 = *(this + 6);
      }

      else
      {
        v5 = 0;
        v6 = 0;
        v7 = 0;
      }

      os_unfair_lock_lock((v4 + 16));
      v9 = *(v4 + 8);
      v10 = *(v4 + 24);
      v11 = *(v9 + 128);
      v12 = INFINITY;
      if (fabs(v11) != INFINITY)
      {
        WTF::ApproximateTime::now(v8);
        v12 = v11 + v13;
      }

      if (*(v9 + 64) != v10)
      {
        IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, buf, v12);
        if (buf[16] != 1)
        {
          goto LABEL_28;
        }

        v39 = *&buf[8];
        if (*&buf[8] <= 1uLL)
        {
          __break(0xC471u);
          JUMPOUT(0x19E306EDCLL);
        }

        v40 = *buf;
        **buf = 3198;
        v41 = v40 + 2;
        if (v39 - 2 < (-v41 & 7 | 8uLL))
        {
          goto LABEL_28;
        }

        v42 = -v41 & 7;
        *(v41 + v42) = v10;
        v43 = 6;
        if (v42 > 6)
        {
          v43 = v42;
        }

        v44 = v43 + 10;
        v45 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v46 = *(v9 + 72);
        if (v45 + 16 >= v46)
        {
          v45 = 0;
        }

        v47 = v44 + v45;
        if (v46 <= v47)
        {
          v47 = 0;
        }

        *(v9 + 88) = v47;
        v48 = *(v9 + 80);
        if (*(v48 + 8) <= 0xFFuLL)
        {
          goto LABEL_77;
        }

        v49 = atomic_exchange((*(v48 + 16) + 128), v47);
        v50 = *(v9 + 124);
        if (v49 == 0x80000000 || v50 != 0)
        {
          v52 = v50 + 1;
          *(v9 + 124) = v52;
          if (v52 >= *(v9 + 120))
          {
            if (*(v9 + 112) == 1)
            {
              MEMORY[0x19EB16320](*(v9 + 100));
            }

            *(v9 + 124) = 0;
          }
        }

        *(v9 + 64) = v10;
      }

      IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, buf, v12);
      if (buf[16] != 1)
      {
LABEL_28:
        os_unfair_lock_unlock((v4 + 16));
        goto LABEL_29;
      }

      v15 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
        __break(0xC471u);
        JUMPOUT(0x19E306EB4);
      }

      v16 = *buf;
      **buf = 322;
      v17 = v16 + 2;
      v18 = -v17 & 7 | 8;
      v19 = v15 - 2 - v18;
      if (v15 - 2 >= v18)
      {
        *(v17 + (-v17 & 7)) = v6;
        v20 = v17 + v18;
        v21 = -v20 & 7 | 8;
        v22 = v19 - v21;
        if (v19 >= v21)
        {
          *(v20 + (-v20 & 7)) = v5;
          v23 = v20 + v21;
          v24 = -v23 & 7 | 8;
          if (v22 >= v24)
          {
            *(v23 + (-v23 & 7)) = v7;
            v25 = v15 - v22 + v24;
            if (v25 <= 0x10)
            {
              v25 = 16;
            }

            v26 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v27 = *(v9 + 72);
            if (v26 + 16 >= v27)
            {
              v26 = 0;
            }

            v28 = v26 + v25;
            if (v27 <= v28)
            {
              v28 = 0;
            }

            *(v9 + 88) = v28;
            v29 = *(v9 + 80);
            if (*(v29 + 8) > 0xFFuLL)
            {
              if (atomic_exchange((*(v29 + 16) + 128), v28) == 0x80000000 || *(v9 + 124))
              {
                if (*(v9 + 112) == 1)
                {
                  MEMORY[0x19EB16320](*(v9 + 100));
                }

                *(v9 + 124) = 0;
              }

              goto LABEL_28;
            }

LABEL_77:
            __break(1u);
          }
        }
      }

      v64 = v10;
      if ((buf[16] & 1) == 0)
      {
        goto LABEL_77;
      }

      if (*&buf[8] > 1uLL)
      {
        **buf = 3197;
        v53 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v54 = *(v9 + 72);
        if (v53 + 16 >= v54)
        {
          v53 = 0;
        }

        v55 = v53 + 16;
        if (v54 <= v55)
        {
          v56 = 0;
        }

        else
        {
          v56 = v55;
        }

        *(v9 + 88) = v56;
        v57 = *(v9 + 80);
        if (*(v57 + 8) > 0xFFuLL)
        {
          atomic_exchange((*(v57 + 16) + 128), v56);
          *(v9 + 124) = 0;
          v58 = *(v9 + 8);
          v59 = IPC::Encoder::operator new(0x238, v14);
          *v59 = 322;
          *(v59 + 2) = 0;
          *(v59 + 3) = 0;
          *(v59 + 1) = v64;
          *(v59 + 68) = 0;
          *(v59 + 70) = 0;
          *(v59 + 69) = 0;
          IPC::Encoder::encodeHeader(v59);
          v65 = v59;
          IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v59, v6);
          IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v59, v5);
          IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v59, v7);
          IPC::Connection::sendMessageImpl(v58, &v65, 1, 0);
          v61 = v65;
          v65 = 0;
          if (v61)
          {
            IPC::Encoder::~Encoder(v61, v60);
            bmalloc::api::tzoneFree(v62, v63);
          }

          goto LABEL_28;
        }

        goto LABEL_77;
      }

      __break(0xC471u);
    }

    else
    {
      __break(0xC471u);
    }

    JUMPOUT(0x19E306E94);
  }

  v35 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 56) == 1)
    {
      v37 = *(this + 4);
      v36 = *(this + 5);
      v38 = *(this + 6);
    }

    else
    {
      v36 = 0;
      v37 = 0;
      v38 = 0;
    }

    *buf = 134218496;
    *&buf[4] = v37;
    *&buf[12] = 2048;
    *&buf[14] = v36;
    v67 = 2048;
    v68 = v38;
    _os_log_impl(&dword_19D52D000, v35, OS_LOG_TYPE_DEFAULT, "[webPageID=%llu, frameID=%llu, resourceID=%llu] WebResourceLoader::serviceWorkerDidNotHandle", buf, 0x20u);
  }

LABEL_29:
  WebCore::ResourceRequestBase::url((v2 + 86));
  WebCore::internalError();
  WebCore::ResourceErrorBase::setType();
  (*(*v2 + 240))(v2, buf);
  v31 = cf;
  cf = 0;
  if (v31)
  {
    CFRelease(v31);
  }

  v32 = v69;
  v69 = 0;
  if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v32, v30);
  }

  v33 = *&buf[8];
  *&buf[8] = 0;
  if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v33, v30);
  }

  result = *buf;
  *buf = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v30);
  }

  if (v2[4] == 1)
  {
    return (*(*v2 + 8))(v2);
  }

  --v2[4];
  return result;
}

_DWORD *WebKit::WebResourceLoader::updateResultingClientIdentifier(WebCore::Process *a1)
{
  WebCore::Process::identifier(a1);
  result = WebCore::DocumentLoader::fromScriptExecutionContextIdentifier();
  if (result)
  {
    v2 = result;
    ++result[6];
    WebCore::Process::identifier(result);
    result = WebCore::DocumentLoader::setNewResultingClientId();
    if (v2[6] == 1)
    {
      return (*(*v2 + 24))(v2);
    }

    else
    {
      --v2[6];
    }
  }

  return result;
}

void WebKit::LogClient::WEBRESOURCELOADER_DIDFAILRESOURCELOAD(WebKit::LogClient *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock(this + 4);
  v8 = *(this + 1);
  v9[0] = a2;
  v9[1] = a3;
  v9[2] = a4;
  IPC::StreamClientConnection::send<Messages::LogStream::WEBRESOURCELOADER_DIDFAILRESOURCELOAD,WebKit::LogStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v8, v9, *(this + 3));
  os_unfair_lock_unlock(this + 4);
}

uint64_t *WTF::Function<void ()(void)>::Function<WebKit::WebResourceLoader::didFailResourceLoad(WebCore::ResourceError const&)::$_0,void>(uint64_t *a1, uint64_t *a2)
{
  v4 = WTF::fastMalloc(0x68);
  v5 = v4;
  v6 = *a2;
  *v4 = &unk_1F112C978;
  *(v4 + 8) = v6;
  v7 = a2[1];
  a2[1] = 0;
  *(v4 + 16) = v7;
  v8 = a2[2];
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  *(v4 + 24) = v8;
  v9 = a2[3];
  if (v9)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  *(v4 + 32) = v9;
  v10 = *(a2 + 2);
  *(v4 + 56) = *(a2 + 3);
  *(v4 + 40) = v10;
  v11 = a2[8];
  if (v11)
  {
    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
  }

  *(v4 + 72) = v11;
  v12 = *(a2 + 18);
  *(v4 + 84) = *(a2 + 38);
  *(v4 + 80) = v12;
  v13 = a2[10];
  *(v5 + 88) = v13;
  if (v13)
  {
    CFRetain(v13);
  }

  *(v5 + 96) = *(a2 + 88);
  *a1 = v5;
  return a1;
}

void *WebKit::WebResourceLoader::didFailResourceLoad(WebCore::ResourceError const&)::$_0::~$_0(void *a1, WTF::StringImpl *a2)
{
  v3 = a1[10];
  a1[10] = 0;
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[8];
  a1[8] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[3];
  a1[3] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = a1[2];
  a1[2] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = a1[1];
  a1[1] = 0;
  if (v7)
  {
    if (v7[2] == 1)
    {
      (*(*v7 + 8))(v7);
    }

    else
    {
      --v7[2];
    }
  }

  return a1;
}

uint64_t WebKit::WebResourceLoader::didBlockAuthenticationChallenge(WebKit::WebResourceLoader *this)
{
  v65 = *MEMORY[0x1E69E9840];
  v2 = *(this + 2);
  if (v2)
  {
    ++*(v2 + 4);
  }

  v3 = WebCore::logClient(this);
  v4 = *v3;
  if (*v3)
  {
    if ((*(*v4 + 24))(*v3))
    {
      if (*(this + 56) == 1)
      {
        v6 = *(this + 4);
        v5 = *(this + 5);
        v7 = *(this + 6);
      }

      else
      {
        v5 = 0;
        v6 = 0;
        v7 = 0;
      }

      os_unfair_lock_lock((v4 + 16));
      v9 = *(v4 + 8);
      v10 = *(v4 + 24);
      v11 = *(v9 + 128);
      v12 = INFINITY;
      if (fabs(v11) != INFINITY)
      {
        WTF::ApproximateTime::now(v8);
        v12 = v11 + v13;
      }

      if (*(v9 + 64) != v10)
      {
        IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, buf, v12);
        if (buf[16] != 1)
        {
          goto LABEL_28;
        }

        v35 = *&buf[8];
        if (*&buf[8] <= 1uLL)
        {
          __break(0xC471u);
          JUMPOUT(0x19E30777CLL);
        }

        v36 = *buf;
        **buf = 3198;
        v37 = v36 + 2;
        if (v35 - 2 < (-v37 & 7 | 8uLL))
        {
          goto LABEL_28;
        }

        v38 = -v37 & 7;
        *(v37 + v38) = v10;
        v39 = 6;
        if (v38 > 6)
        {
          v39 = v38;
        }

        v40 = v39 + 10;
        v41 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v42 = *(v9 + 72);
        if (v41 + 16 >= v42)
        {
          v41 = 0;
        }

        v43 = v40 + v41;
        if (v42 <= v43)
        {
          v43 = 0;
        }

        *(v9 + 88) = v43;
        v44 = *(v9 + 80);
        if (*(v44 + 8) <= 0xFFuLL)
        {
          goto LABEL_68;
        }

        v45 = atomic_exchange((*(v44 + 16) + 128), v43);
        v46 = *(v9 + 124);
        if (v45 == 0x80000000 || v46 != 0)
        {
          v48 = v46 + 1;
          *(v9 + 124) = v48;
          if (v48 >= *(v9 + 120))
          {
            if (*(v9 + 112) == 1)
            {
              MEMORY[0x19EB16320](*(v9 + 100));
            }

            *(v9 + 124) = 0;
          }
        }

        *(v9 + 64) = v10;
      }

      IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, buf, v12);
      if (buf[16] != 1)
      {
LABEL_28:
        os_unfair_lock_unlock((v4 + 16));
        goto LABEL_29;
      }

      v15 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
        __break(0xC471u);
        JUMPOUT(0x19E307754);
      }

      v16 = *buf;
      **buf = 313;
      v17 = v16 + 2;
      v18 = -v17 & 7 | 8;
      v19 = v15 - 2 - v18;
      if (v15 - 2 >= v18)
      {
        *(v17 + (-v17 & 7)) = v6;
        v20 = v17 + v18;
        v21 = -v20 & 7 | 8;
        v22 = v19 - v21;
        if (v19 >= v21)
        {
          *(v20 + (-v20 & 7)) = v5;
          v23 = v20 + v21;
          v24 = -v23 & 7 | 8;
          if (v22 >= v24)
          {
            *(v23 + (-v23 & 7)) = v7;
            v25 = v15 - v22 + v24;
            if (v25 <= 0x10)
            {
              v25 = 16;
            }

            v26 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v27 = *(v9 + 72);
            if (v26 + 16 >= v27)
            {
              v26 = 0;
            }

            v28 = v26 + v25;
            if (v27 <= v28)
            {
              v28 = 0;
            }

            *(v9 + 88) = v28;
            v29 = *(v9 + 80);
            if (*(v29 + 8) > 0xFFuLL)
            {
              if (atomic_exchange((*(v29 + 16) + 128), v28) == 0x80000000 || *(v9 + 124))
              {
                if (*(v9 + 112) == 1)
                {
                  MEMORY[0x19EB16320](*(v9 + 100));
                }

                *(v9 + 124) = 0;
              }

              goto LABEL_28;
            }

LABEL_68:
            __break(1u);
          }
        }
      }

      v60 = v10;
      if ((buf[16] & 1) == 0)
      {
        goto LABEL_68;
      }

      if (*&buf[8] > 1uLL)
      {
        **buf = 3197;
        v49 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v50 = *(v9 + 72);
        if (v49 + 16 >= v50)
        {
          v49 = 0;
        }

        v51 = v49 + 16;
        if (v50 <= v51)
        {
          v52 = 0;
        }

        else
        {
          v52 = v51;
        }

        *(v9 + 88) = v52;
        v53 = *(v9 + 80);
        if (*(v53 + 8) > 0xFFuLL)
        {
          atomic_exchange((*(v53 + 16) + 128), v52);
          *(v9 + 124) = 0;
          v54 = *(v9 + 8);
          v55 = IPC::Encoder::operator new(0x238, v14);
          *v55 = 313;
          *(v55 + 2) = 0;
          *(v55 + 3) = 0;
          *(v55 + 1) = v60;
          *(v55 + 68) = 0;
          *(v55 + 70) = 0;
          *(v55 + 69) = 0;
          IPC::Encoder::encodeHeader(v55);
          v61 = v55;
          IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v55, v6);
          IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v55, v5);
          IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v55, v7);
          IPC::Connection::sendMessageImpl(v54, &v61, 1, 0);
          v57 = v61;
          v61 = 0;
          if (v57)
          {
            IPC::Encoder::~Encoder(v57, v56);
            bmalloc::api::tzoneFree(v58, v59);
          }

          goto LABEL_28;
        }

        goto LABEL_68;
      }

      __break(0xC471u);
    }

    else
    {
      __break(0xC471u);
    }

    JUMPOUT(0x19E307734);
  }

  v31 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 56) == 1)
    {
      v33 = *(this + 4);
      v32 = *(this + 5);
      v34 = *(this + 6);
    }

    else
    {
      v32 = 0;
      v33 = 0;
      v34 = 0;
    }

    *buf = 134218496;
    *&buf[4] = v33;
    *&buf[12] = 2048;
    *&buf[14] = v32;
    v63 = 2048;
    v64 = v34;
    _os_log_impl(&dword_19D52D000, v31, OS_LOG_TYPE_DEFAULT, "[webPageID=%llu, frameID=%llu, resourceID=%llu] WebResourceLoader::didBlockAuthenticationChallenge", buf, 0x20u);
  }

LABEL_29:
  result = WebCore::ResourceLoader::didBlockAuthenticationChallenge(v2);
  if (v2)
  {
    if (*(v2 + 4) == 1)
    {
      return (*(*v2 + 8))(v2);
    }

    else
    {
      --*(v2 + 4);
    }
  }

  return result;
}

_DWORD *WebKit::WebResourceLoader::stopLoadingAfterXFrameOptionsOrContentSecurityPolicyDenied(WebKit::WebResourceLoader *this, const WebCore::ResourceResponse *a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v3 = *(this + 2);
  if (v3)
  {
    ++*(v3 + 16);
  }

  v4 = WebCore::logClient(this);
  v5 = *v4;
  if (*v4)
  {
    if ((*(*v5 + 24))(*v4))
    {
      if (*(this + 56) == 1)
      {
        v7 = *(this + 4);
        v6 = *(this + 5);
        v8 = *(this + 6);
      }

      else
      {
        v6 = 0;
        v7 = 0;
        v8 = 0;
      }

      os_unfair_lock_lock((v5 + 16));
      v10 = *(v5 + 8);
      v11 = *(v5 + 24);
      v12 = *(v10 + 128);
      v13 = INFINITY;
      if (fabs(v12) != INFINITY)
      {
        WTF::ApproximateTime::now(v9);
        v13 = v12 + v14;
      }

      if (*(v10 + 64) != v11)
      {
        IPC::StreamClientConnectionBuffer::tryAcquire(v10 + 72, buf, v13);
        if (buf[16] != 1)
        {
          goto LABEL_28;
        }

        v36 = *&buf[8];
        if (*&buf[8] <= 1uLL)
        {
          __break(0xC471u);
          JUMPOUT(0x19E307D78);
        }

        v37 = *buf;
        **buf = 3198;
        v38 = v37 + 2;
        if (v36 - 2 < (-v38 & 7 | 8uLL))
        {
          goto LABEL_28;
        }

        v39 = -v38 & 7;
        *(v38 + v39) = v11;
        v40 = 6;
        if (v39 > 6)
        {
          v40 = v39;
        }

        v41 = v40 + 10;
        v42 = (*(v10 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v43 = *(v10 + 72);
        if (v42 + 16 >= v43)
        {
          v42 = 0;
        }

        v44 = v41 + v42;
        if (v43 <= v44)
        {
          v44 = 0;
        }

        *(v10 + 88) = v44;
        v45 = *(v10 + 80);
        if (*(v45 + 8) <= 0xFFuLL)
        {
          goto LABEL_71;
        }

        v46 = atomic_exchange((*(v45 + 16) + 128), v44);
        v47 = *(v10 + 124);
        if (v46 == 0x80000000 || v47 != 0)
        {
          v49 = v47 + 1;
          *(v10 + 124) = v49;
          if (v49 >= *(v10 + 120))
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

      IPC::StreamClientConnectionBuffer::tryAcquire(v10 + 72, buf, v13);
      if (buf[16] != 1)
      {
LABEL_28:
        os_unfair_lock_unlock((v5 + 16));
        goto LABEL_29;
      }

      v16 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
        __break(0xC471u);
        JUMPOUT(0x19E307D50);
      }

      v17 = *buf;
      **buf = 323;
      v18 = v17 + 2;
      v19 = -v18 & 7 | 8;
      v20 = v16 - 2 - v19;
      if (v16 - 2 >= v19)
      {
        *(v18 + (-v18 & 7)) = v7;
        v21 = v18 + v19;
        v22 = -v21 & 7 | 8;
        v23 = v20 - v22;
        if (v20 >= v22)
        {
          *(v21 + (-v21 & 7)) = v6;
          v24 = v21 + v22;
          v25 = -v24 & 7 | 8;
          if (v23 >= v25)
          {
            *(v24 + (-v24 & 7)) = v8;
            v26 = v16 - v23 + v25;
            if (v26 <= 0x10)
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
            if (*(v30 + 8) > 0xFFuLL)
            {
              if (atomic_exchange((*(v30 + 16) + 128), v29) == 0x80000000 || *(v10 + 124))
              {
                if (*(v10 + 112) == 1)
                {
                  MEMORY[0x19EB16320](*(v10 + 100));
                }

                *(v10 + 124) = 0;
              }

              goto LABEL_28;
            }

LABEL_71:
            __break(1u);
          }
        }
      }

      v61 = v11;
      if ((buf[16] & 1) == 0)
      {
        goto LABEL_71;
      }

      if (*&buf[8] > 1uLL)
      {
        **buf = 3197;
        v50 = (*(v10 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v51 = *(v10 + 72);
        if (v50 + 16 >= v51)
        {
          v50 = 0;
        }

        v52 = v50 + 16;
        if (v51 <= v52)
        {
          v53 = 0;
        }

        else
        {
          v53 = v52;
        }

        *(v10 + 88) = v53;
        v54 = *(v10 + 80);
        if (*(v54 + 8) > 0xFFuLL)
        {
          atomic_exchange((*(v54 + 16) + 128), v53);
          *(v10 + 124) = 0;
          v55 = *(v10 + 8);
          v56 = IPC::Encoder::operator new(0x238, v15);
          *v56 = 323;
          *(v56 + 2) = 0;
          *(v56 + 3) = 0;
          *(v56 + 1) = v61;
          *(v56 + 68) = 0;
          *(v56 + 70) = 0;
          *(v56 + 69) = 0;
          IPC::Encoder::encodeHeader(v56);
          v62 = v56;
          IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v56, v7);
          IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v56, v6);
          IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v56, v8);
          IPC::Connection::sendMessageImpl(v55, &v62, 1, 0);
          v58 = v62;
          v62 = 0;
          if (v58)
          {
            IPC::Encoder::~Encoder(v58, v57);
            bmalloc::api::tzoneFree(v59, v60);
          }

          goto LABEL_28;
        }

        goto LABEL_71;
      }

      __break(0xC471u);
    }

    else
    {
      __break(0xC471u);
    }

    JUMPOUT(0x19E307D30);
  }

  v32 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 56) == 1)
    {
      v34 = *(this + 4);
      v33 = *(this + 5);
      v35 = *(this + 6);
    }

    else
    {
      v33 = 0;
      v34 = 0;
      v35 = 0;
    }

    *buf = 134218496;
    *&buf[4] = v34;
    *&buf[12] = 2048;
    *&buf[14] = v33;
    v64 = 2048;
    v65 = v35;
    _os_log_impl(&dword_19D52D000, v32, OS_LOG_TYPE_DEFAULT, "[webPageID=%llu, frameID=%llu, resourceID=%llu] WebResourceLoader::stopLoadingAfterXFrameOptionsOrContentSecurityPolicyDenied", buf, 0x20u);
  }

LABEL_29:
  WebCore::ResourceLoader::protectedDocumentLoader(buf, v3);
  if (!*(v3 + 752))
  {
    goto LABEL_71;
  }

  WebCore::DocumentLoader::stopLoadingAfterXFrameOptionsOrContentSecurityPolicyDenied();
  result = *buf;
  *buf = 0;
  if (result)
  {
    if (result[6] == 1)
    {
      result = (*(*result + 24))(result);
    }

    else
    {
      --result[6];
    }
  }

  if (*(v3 + 16) == 1)
  {
    return (*(*v3 + 8))(v3);
  }

  --*(v3 + 16);
  return result;
}

unsigned int *WebKit::WebResourceLoader::didReceiveResource(uint64_t a1)
{
  v79 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2)
  {
    ++v2[4];
  }

  v3 = WebCore::logClient(a1);
  v4 = *v3;
  if (*v3)
  {
    if ((*(*v4 + 24))(*v3))
    {
      if (*(a1 + 56) == 1)
      {
        v6 = *(a1 + 32);
        v5 = *(a1 + 40);
        v7 = *(a1 + 48);
      }

      else
      {
        v5 = 0;
        v6 = 0;
        v7 = 0;
      }

      os_unfair_lock_lock((v4 + 16));
      v9 = *(v4 + 8);
      v71 = v6;
      v72 = v5;
      v73 = v7;
      v10 = *(v4 + 24);
      v11 = *(v9 + 128);
      v12 = INFINITY;
      if (fabs(v11) != INFINITY)
      {
        WTF::ApproximateTime::now(v8);
        v12 = v11 + v13;
      }

      if (*(v9 + 64) == v10)
      {
LABEL_10:
        IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, buf, v12);
        if (buf[16] == 1)
        {
          v14 = *&buf[8];
          if (*&buf[8] <= 1uLL)
          {
            __break(0xC471u);
            JUMPOUT(0x19E3085E0);
          }

          v15 = *buf;
          **buf = 317;
          v16 = v15 + 2;
          v17 = -v16 & 7 | 8;
          v18 = v14 - 2 - v17;
          if (v14 - 2 >= v17)
          {
            *(v16 + (-v16 & 7)) = v71;
            v19 = v16 + v17;
            v20 = -v19 & 7 | 8;
            v21 = v18 - v20;
            if (v18 >= v20)
            {
              *(v19 + (-v19 & 7)) = v72;
              v22 = v19 + v20;
              v23 = -v22 & 7 | 8;
              if (v21 >= v23)
              {
                *(v22 + (-v22 & 7)) = v73;
                v24 = v14 - v21 + v23;
                if (v24 <= 0x10)
                {
                  v24 = 16;
                }

                v25 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
                v26 = *(v9 + 72);
                if (v25 + 16 >= v26)
                {
                  v25 = 0;
                }

                v27 = v25 + v24;
                if (v26 <= v27)
                {
                  v27 = 0;
                }

                *(v9 + 88) = v27;
                v28 = *(v9 + 80);
                if (*(v28 + 8) > 0xFFuLL)
                {
                  if (atomic_exchange((*(v28 + 16) + 128), v27) == 0x80000000 || *(v9 + 124))
                  {
                    if (*(v9 + 112) == 1)
                    {
                      MEMORY[0x19EB16320](*(v9 + 100));
                    }

                    *(v9 + 124) = 0;
                  }

                  goto LABEL_24;
                }

LABEL_92:
                __break(1u);
              }
            }
          }

          if ((buf[16] & 1) == 0)
          {
            goto LABEL_92;
          }

          IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v9, *buf, *&buf[8]);
          IPC::Connection::send<Messages::LogStream::WEBRESOURCELOADER_DIDRECEIVERESOURCE>(*(v9 + 8), &v71, v10);
        }

LABEL_24:
        os_unfair_lock_unlock((v4 + 16));
        goto LABEL_25;
      }

      IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, buf, v12);
      if (buf[16] != 1)
      {
        goto LABEL_24;
      }

      v39 = *&buf[8];
      if (*&buf[8] > 1uLL)
      {
        v40 = *buf;
        **buf = 3198;
        v41 = v40 + 2;
        if (v39 - 2 < (-v41 & 7 | 8uLL))
        {
          goto LABEL_24;
        }

        v42 = -v41 & 7;
        *(v41 + v42) = v10;
        v43 = 6;
        if (v42 > 6)
        {
          v43 = v42;
        }

        v44 = v43 + 10;
        v45 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v46 = *(v9 + 72);
        if (v45 + 16 >= v46)
        {
          v45 = 0;
        }

        v47 = v44 + v45;
        if (v46 <= v47)
        {
          v47 = 0;
        }

        *(v9 + 88) = v47;
        v48 = *(v9 + 80);
        if (*(v48 + 8) <= 0xFFuLL)
        {
          goto LABEL_92;
        }

        IPC::StreamClientConnection::wakeUpServerBatched(v9, atomic_exchange((*(v48 + 16) + 128), v47) == 0x80000000);
        *(v9 + 64) = v10;
        goto LABEL_10;
      }

      __break(0xC471u);
    }

    else
    {
      __break(0xC471u);
    }

    JUMPOUT(0x19E3085C0);
  }

  v35 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 56) == 1)
    {
      v37 = *(a1 + 32);
      v36 = *(a1 + 40);
      v38 = *(a1 + 48);
    }

    else
    {
      v36 = 0;
      v37 = 0;
      v38 = 0;
    }

    *buf = 134218496;
    *&buf[4] = v37;
    *&buf[12] = 2048;
    *&buf[14] = v36;
    v75 = 2048;
    v76 = v38;
    _os_log_impl(&dword_19D52D000, v35, OS_LOG_TYPE_DEFAULT, "[webPageID=%llu, frameID=%llu, resourceID=%llu] WebResourceLoader::didReceiveResource", buf, 0x20u);
  }

LABEL_25:
  v29 = WebCore::ShareableResourceHandle::tryWrapInSharedBuffer();
  v30 = v71;
  if (v71)
  {
    ++*(a1 + 8);
    if (v30[14])
    {
      v71 = 0;
      (*(*v2 + 216))(v2, v30);
      if (atomic_fetch_add(v30 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v30 + 2);
        (*(*v30 + 8))(v30);
      }
    }

    if (*(a1 + 16))
    {
      WebCore::NetworkLoadMetrics::NetworkLoadMetrics(buf);
      (*(*v2 + 232))(v2, buf);
      v32 = v78;
      v78 = 0;
      if (v32)
      {
        WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v32, v31);
      }

      v33 = v77;
      v77 = 0;
      if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v33, v31);
      }
    }

    if (*(a1 + 8) == 1)
    {
      (*(*a1 + 8))(a1);
    }

    else
    {
      --*(a1 + 8);
    }
  }

  else
  {
    v49 = WebCore::logClient(v29);
    v50 = WTF::downcast<WebKit::LogClient,WebCore::LogClient>(*v49);
    if (v50)
    {
      if (*(a1 + 56) == 1)
      {
        v51 = *(a1 + 32);
        v52 = *(a1 + 40);
        v53 = *(a1 + 48);
      }

      else
      {
        v52 = 0;
        v51 = 0;
        v53 = 0;
      }

      WebKit::LogClient::WEBRESOURCELOADER_DIDRECEIVERESOURCE_UNABLE_TO_CREATE_FRAGMENTEDSHAREDBUFFER(v50, v51, v52, v53);
    }

    else
    {
      v54 = qword_1ED6416F0;
      if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 56) == 1)
        {
          v56 = *(a1 + 32);
          v55 = *(a1 + 40);
          v57 = *(a1 + 48);
        }

        else
        {
          v55 = 0;
          v56 = 0;
          v57 = 0;
        }

        *buf = 134218496;
        *&buf[4] = v56;
        *&buf[12] = 2048;
        *&buf[14] = v55;
        v75 = 2048;
        v76 = v57;
        _os_log_impl(&dword_19D52D000, v54, OS_LOG_TYPE_DEFAULT, "[webPageID=%llu, frameID=%llu, resourceID=%llu] WebResourceLoader::didReceiveResource: Unable to create FragmentedSharedBuffer", buf, 0x20u);
      }
    }

    v58 = WebCore::ResourceLoader::frame(v2);
    if (v58)
    {
      v59 = v58;
      v60 = *(v58 + 16);
      *(v58 + 16) = v60 + 1;
      v61 = *(v58 + 24);
      if (v61)
      {
        v62 = *(v61 + 8);
        if (v62)
        {
          v63 = v62 + 2;
          ++v62[2];
          v64 = WebCore::Page::diagnosticLoggingClient(v62);
          v65 = WebCore::DiagnosticLoggingKeys::internalErrorKey(buf, v64);
          WebCore::DiagnosticLoggingKeys::createSharedBufferFailedKey(&v70, v65);
          (**v64)(v64, buf, &v70, 0);
          v67 = v70;
          v70 = 0;
          if (v67 && atomic_fetch_add_explicit(v67, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v67, v66);
          }

          v68 = *buf;
          *buf = 0;
          if (v68 && atomic_fetch_add_explicit(v68, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v68, v66);
          }

          WTF::RefCounted<WebCore::Page>::deref(v63);
          v60 = v59[4] - 1;
        }
      }

      if (v60)
      {
        v59[4] = v60;
      }

      else
      {
        (*(*v59 + 8))(v59);
      }
    }

    WebCore::ResourceRequestBase::url((v2 + 86));
    WebCore::internalError();
    (*(*v2 + 240))(v2, buf);
    WebCore::ResourceError::~ResourceError(buf, v69);
  }

  result = v71;
  v71 = 0;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    result = (*(*result + 8))(result);
  }

  if (v2)
  {
    if (v2[4] == 1)
    {
      return (*(*v2 + 8))(v2);
    }

    else
    {
      --v2[4];
    }
  }

  return result;
}

void WebKit::LogClient::WEBRESOURCELOADER_DIDRECEIVERESOURCE_UNABLE_TO_CREATE_FRAGMENTEDSHAREDBUFFER(os_unfair_lock_s *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock(this + 4);
  v9 = *&this[2]._os_unfair_lock_opaque;
  v10 = *&this[6]._os_unfair_lock_opaque;
  v11 = *(v9 + 128);
  v12 = INFINITY;
  if (fabs(v11) != INFINITY)
  {
    WTF::ApproximateTime::now(v8);
    v12 = v11 + v13;
  }

  if (*(v9 + 64) == v10)
  {
    goto LABEL_4;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, &v55, v12);
  if (v57 == 1)
  {
    v30 = v56;
    if (v56 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E3089E8);
    }

    v31 = v55;
    *v55 = 3198;
    v32 = v31 + 1;
    if (v30 - 2 >= (-v32 & 7 | 8uLL))
    {
      v33 = -v32 & 7;
      *(v32 + v33) = v10;
      if (v33 != 7)
      {
        v33 = 6;
      }

      v34 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v36 = *(v9 + 72);
      v35 = *(v9 + 80);
      v37 = v33 + 10;
      if (v34 + 16 >= v36)
      {
        v34 = 0;
      }

      v38 = v37 + v34;
      if (v36 <= v38)
      {
        v38 = 0;
      }

      *(v9 + 88) = v38;
      if (*(v35 + 8) <= 0xFFuLL)
      {
        goto LABEL_54;
      }

      v39 = atomic_exchange((*(v35 + 16) + 128), v38);
      v40 = *(v9 + 124);
      if (v39 == 0x80000000 || v40 != 0)
      {
        v42 = v40 + 1;
        *(v9 + 124) = v42;
        if (v42 >= *(v9 + 120))
        {
          if (*(v9 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v9 + 100));
          }

          *(v9 + 124) = 0;
        }
      }

      *(v9 + 64) = v10;
LABEL_4:
      IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, &v55, v12);
      if (v57 != 1)
      {
        goto LABEL_21;
      }

      v15 = v56;
      if (v56 <= 1)
      {
        __break(0xC471u);
        goto LABEL_55;
      }

      v16 = v55;
      *v55 = 318;
      v17 = v16 + 1;
      v18 = -v17 & 7 | 8;
      v19 = v15 - 2 - v18;
      if (v15 - 2 >= v18)
      {
        *(v17 + (-v17 & 7)) = a2;
        v20 = v17 + v18;
        v21 = -v20 & 7 | 8;
        v22 = v19 - v21;
        if (v19 >= v21)
        {
          *(v20 + (-v20 & 7)) = a3;
          v23 = v20 + v21;
          v24 = -v23 & 7 | 8;
          if (v22 >= v24)
          {
            *(v23 + (-v23 & 7)) = a4;
            v25 = v15 - v22 + v24;
            if (v25 <= 0x10)
            {
              v25 = 16;
            }

            v26 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v27 = *(v9 + 72);
            if (v26 + 16 >= v27)
            {
              v26 = 0;
            }

            v28 = v26 + v25;
            if (v27 <= v28)
            {
              v28 = 0;
            }

            *(v9 + 88) = v28;
            v29 = *(v9 + 80);
            if (*(v29 + 8) > 0xFFuLL)
            {
              if (atomic_exchange((*(v29 + 16) + 128), v28) == 0x80000000 || *(v9 + 124))
              {
                if (*(v9 + 112) == 1)
                {
                  MEMORY[0x19EB16320](*(v9 + 100));
                }

                *(v9 + 124) = 0;
              }

              goto LABEL_21;
            }

            goto LABEL_54;
          }
        }
      }

      v54 = v10;
      if (v57)
      {
        if (v56 <= 1)
        {
          __break(0xC471u);
        }

        else
        {
          *v55 = 3197;
          v43 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v44 = *(v9 + 72);
          if (v43 + 16 >= v44)
          {
            v43 = 0;
          }

          v45 = v43 + 16;
          if (v44 <= v45)
          {
            v46 = 0;
          }

          else
          {
            v46 = v45;
          }

          *(v9 + 88) = v46;
          v47 = *(v9 + 80);
          if (*(v47 + 8) > 0xFFuLL)
          {
            atomic_exchange((*(v47 + 16) + 128), v46);
            *(v9 + 124) = 0;
            v48 = *(v9 + 8);
            v49 = IPC::Encoder::operator new(0x238, v14);
            *v49 = 318;
            *(v49 + 2) = 0;
            *(v49 + 3) = 0;
            *(v49 + 1) = v54;
            *(v49 + 68) = 0;
            *(v49 + 70) = 0;
            *(v49 + 69) = 0;
            IPC::Encoder::encodeHeader(v49);
            v58 = v49;
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v49, a2);
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v49, a3);
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v49, a4);
            IPC::Connection::sendMessageImpl(v48, &v58, 1, 0);
            v51 = v58;
            v58 = 0;
            if (v51)
            {
              IPC::Encoder::~Encoder(v51, v50);
              bmalloc::api::tzoneFree(v52, v53);
            }

            goto LABEL_21;
          }
        }
      }

LABEL_54:
      __break(1u);
LABEL_55:
      JUMPOUT(0x19E3089C0);
    }
  }

LABEL_21:
  os_unfair_lock_unlock(this + 4);
}

uint64_t WebKit::WebResourceLoader::contentFilterDidBlockLoad(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = *(result + 16);
  if (v6)
  {
    ++*(v6 + 16);
    v7 = *(v6 + 40);
    if (v7)
    {
      ++*(v7 + 24);
      v11 = *a5;
      if (*a5)
      {
        atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
      }

      v12 = *(v7 + 3008);
      *(v7 + 3008) = v11;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, a2);
      }

      v13 = *(a5 + 24);
      *(v7 + 3016) = *(a5 + 8);
      *(v7 + 3032) = v13;
      v14 = *a6;
      *a6 = 0;
      v15 = *(v7 + 3048);
      *(v7 + 3048) = v14;
      if (v15 && atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v15 + 2);
        (*(*v15 + 8))(v15);
      }

      WTF::URL::operator=(v7 + 3056, (a6 + 1));
      WebCore::ResourceResponseBase::operator=(v7 + 3096, (a6 + 6));
      v16 = a6[37];
      a6[37] = 0;
      v17 = *(v7 + 3344);
      *(v7 + 3344) = v16;
      if (v17)
      {
        CFRelease(v17);
      }

      *(v7 + 3352) = *(a6 + 304);
      *(v7 + 3360) = *(a6 + 312);
      v18 = *a2;
      if (*a2)
      {
        atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
      }

      v30[0] = v18;
      v19 = *(a2 + 8);
      if (v19)
      {
        atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
      }

      v30[1] = v19;
      v20 = *(a2 + 32);
      v31 = *(a2 + 16);
      v32 = v20;
      std::__function::__value_func<void ()(std::function<void ()(BOOL)>)>::__value_func[abi:sn200100](&v33, a2 + 48);
      LOBYTE(v34) = 0;
      v37 = 0;
      if (*(a2 + 120) == 1)
      {
        v21 = *(a2 + 80);
        if (v21)
        {
          atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
        }

        v34 = v21;
        v35 = *(a2 + 88);
        v36 = *(a2 + 104);
        v37 = 1;
      }

      v22 = *(a2 + 140);
      v38 = 0;
      v39 = 0;
      v40 = v22;
      if (v22)
      {
        v23 = WTF::fastMalloc(v22);
        v39 = v22;
        v38 = v23;
        memcpy(v23, *(a2 + 128), *(a2 + 140));
      }

      v24 = *(a2 + 144);
      v41 = v24;
      if (v24)
      {
        CFRetain(v24);
      }

      v42 = *(a2 + 152);
      WebCore::DocumentLoader::handleContentFilterDidBlock();
      if (cf)
      {
        CFRelease(cf);
      }

      if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v28, v25);
      }

      if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v25);
      }

      if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v25);
      }

      WebCore::ContentFilterUnblockHandler::~ContentFilterUnblockHandler(v30, v25);
      result = WebCore::DocumentLoader::cancelMainResourceLoad();
      if (*(v7 + 24) == 1)
      {
        result = (*(*v7 + 24))(v7);
      }

      else
      {
        --*(v7 + 24);
      }
    }

    if (*(v6 + 16) == 1)
    {
      return (*(*v6 + 8))(v6);
    }

    else
    {
      --*(v6 + 16);
    }
  }

  return result;
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebSocketChannel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebSocketChannel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::WebSocketChannel&>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  if (*a2 == -1 || !v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19E308F58);
  }

  v8 = result;
  v9 = *result;
  if (!*result)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(result, 0);
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
        v23 = 0;
        v24 = v9 + 16 * *(v9 - 4);
        goto LABEL_26;
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
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a3 + 16), a3 + 8);
  v20 = *(a3 + 16);
  atomic_fetch_add(v20, 1u);
  result = v15[1];
  v15[1] = v20;
  if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result);
    result = WTF::fastFree(result, v19);
  }

  v21 = *v8;
  if (*v8)
  {
    v22 = *(v21 - 12) + 1;
  }

  else
  {
    v22 = 1;
  }

  *(v21 - 12) = v22;
  v25 = (*(v21 - 16) + v22);
  v26 = *(v21 - 4);
  if (v26 > 0x400)
  {
    if (v26 <= 2 * v25)
    {
LABEL_22:
      result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v8, v15);
      v15 = result;
      v21 = *v8;
      if (*v8)
      {
        v26 = *(v21 - 4);
      }

      else
      {
        v26 = 0;
      }
    }
  }

  else if (3 * v26 <= 4 * v25)
  {
    goto LABEL_22;
  }

  v24 = v21 + 16 * v26;
  v23 = 1;
LABEL_26:
  *a4 = v15;
  *(a4 + 8) = v24;
  *(a4 + 16) = v23;
  return result;
}

uint64_t WebKit::WebSocketChannelManager::networkProcessCrashed(uint64_t this, void *a2)
{
  v2 = *this;
  *this = 0;
  if (!v2)
  {
    v4 = 0;
    v3 = 0;
LABEL_10:
    v6 = v4;
    v4 = (v2 + 16 * v3);
    if (!v2)
    {
      v8 = 0;
      goto LABEL_19;
    }

    goto LABEL_8;
  }

  v3 = *(v2 - 4);
  v4 = (v2 + 16 * v3);
  if (!*(v2 - 12))
  {
    goto LABEL_10;
  }

  if (!v3)
  {
    v7 = 0;
    v6 = v2;
    goto LABEL_13;
  }

  v5 = 16 * v3;
  v6 = v2;
  while ((*v6 + 1) <= 1)
  {
    v6 += 2;
    v5 -= 16;
    if (!v5)
    {
      v6 = v4;
      break;
    }
  }

LABEL_8:
  v7 = *(v2 - 4);
LABEL_13:
  v8 = (v2 + 16 * v7);
LABEL_19:
  while (v6 != v8)
  {
    v9 = v6[1];
    if (!v9 || (v10 = *(v9 + 8)) == 0)
    {
      this = 121;
      __break(0xC471u);
      return this;
    }

    this = WebKit::WebSocketChannel::networkProcessCrashed((v10 - 8));
    do
    {
      v6 += 2;
    }

    while (v6 != v4 && (*v6 + 1) <= 1);
  }

  if (v2)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v2, a2);
  }

  return this;
}

_DWORD *WebKit::NetworkProcessConnection::deref(_DWORD *this)
{
  if (this[5] == 1)
  {
    return (*(*this + 24))();
  }

  --this[5];
  return this;
}

uint64_t WebKit::WebLoaderStrategy::ongoingLoads@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  v3 = *(this + 72);
  if (v3)
  {
    v4 = *(v3 - 12);
    if (v4)
    {
      if (v4 >> 29)
      {
        __break(0xC471u);
      }

      else
      {
        v5 = this;
        this = WTF::fastMalloc((8 * v4));
        *(a2 + 8) = v4;
        *a2 = this;
        v6 = *(v5 + 72);
        if (v6 && *(v6 - 12))
        {
          v7 = *(v6 - 4);
          if (v7)
          {
            v8 = 16 * v7;
            for (i = *(v5 + 72); (*i + 1) <= 1; i += 2)
            {
              v8 -= 16;
              if (!v8)
              {
                return this;
              }
            }
          }

          else
          {
            i = *(v5 + 72);
          }

          v10 = (v6 + 16 * v7);
          if (v10 != i)
          {
            v11 = 0;
            do
            {
              v12 = *i;
              i += 2;
              *(this + 8 * v11++) = v12;
              *(a2 + 12) = v11;
              while (i != v10 && (*i + 1) <= 1)
              {
                i += 2;
              }
            }

            while (i != v10);
          }
        }
      }
    }
  }

  return this;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
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
          (*(*v5 + 8))(v5);
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
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
          (*(*v5 + 8))(v5);
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
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
          if (v5[2] == 1)
          {
            (*(*v5 + 8))(v5);
          }

          else
          {
            --v5[2];
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

uint64_t WTF::HashTable<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::FastMalloc>::deallocateTable(_DWORD **a1, void *a2)
{
  v3 = *(a1 - 1);
  if (v3)
  {
    v4 = a1;
    do
    {
      v5 = *v4;
      if (*v4 != -1)
      {
        *v4 = 0;
        if (v5)
        {
          if (v5[4] == 1)
          {
            (*(*v5 + 8))(v5);
          }

          else
          {
            --v5[4];
          }
        }
      }

      ++v4;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 2), a2);
}

uint64_t IPC::StreamClientConnection::send<Messages::LogStream::WEBLOADERSTRATEGY_SCHEDULELOAD_URL_LOADED_AS_DATA,WebKit::LogStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  result = IPC::StreamClientConnection::trySendDestinationIDIfNeeded(a1, a3, v7);
  if (!result)
  {
    result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v10, v7);
    if (v12 == 1)
    {
      result = IPC::StreamClientConnection::trySendStream<Messages::LogStream::WEBLOADERSTRATEGY_SCHEDULELOAD_URL_LOADED_AS_DATA>(a1, v10, v11, a2);
      if ((result & 1) == 0)
      {
        if (v12)
        {
          IPC::StreamClientConnection::sendProcessOutOfStreamMessage(a1, v10, v11);
          return IPC::Connection::send<Messages::LogStream::WEBLOADERSTRATEGY_SCHEDULELOAD_URL_LOADED_AS_DATA>(*(a1 + 8), a2, a3);
        }

        else
        {
          __break(1u);
        }
      }
    }
  }

  return result;
}

uint64_t IPC::StreamClientConnection::trySendStream<Messages::LogStream::WEBLOADERSTRATEGY_SCHEDULELOAD_URL_LOADED_AS_DATA>(uint64_t a1, _WORD *a2, unint64_t a3, void *a4)
{
  v9 = a3;
  if (a3 <= 1)
  {
    result = 1067;
    __break(0xC471u);
  }

  else
  {
    *a2 = 296;
    v7 = a2 + 1;
    v8 = a3 - 2;
    Messages::LogStream::REMOTE_RENDERING_BACKEND_PROXY_CREATED_RENDERING_BACKEND::encode<IPC::StreamConnectionEncoder>(a4, &v7);
    v5 = v7;
    if (v7 && ((IPC::StreamClientConnectionBuffer::release((a1 + 72), v9 - v8) & 1) != 0 || *(a1 + 124)))
    {
      if (*(a1 + 112) == 1)
      {
        MEMORY[0x19EB16320](*(a1 + 100));
      }

      *(a1 + 124) = 0;
    }

    return v5 != 0;
  }

  return result;
}

uint64_t IPC::Connection::send<Messages::LogStream::WEBLOADERSTRATEGY_SCHEDULELOAD_URL_LOADED_AS_DATA>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 296;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, a2[1]);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, a2[2]);
  v8 = IPC::Connection::sendMessageImpl(a1, &v13, 1, 0);
  v9 = v13;
  v13 = 0;
  if (v9)
  {
    IPC::Encoder::~Encoder(v9, v7);
    bmalloc::api::tzoneFree(v11, v12);
  }

  return v8;
}

IPC::Encoder *IPC::Connection::send<Messages::LogStream::WEBLOADERSTRATEGY_SCHEDULELOAD>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 294;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, a2[1]);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, a2[2]);
  IPC::Connection::sendMessageImpl(a1, &v11, 1, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

uint64_t WebCore::ContentSecurityPolicyResponseHeaders::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 12);
  if (v4)
  {
    WTF::VectorDestructor<true,WebCore::SpeechRecognitionAlternativeData>::destruct(*a1, (*a1 + 16 * v4));
  }

  WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a1, a2);
  v5 = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 16) = v5;
  return a1;
}

uint64_t WebKit::NavigationActionData::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 16) = v4;
  v7 = *(a2 + 72);
  *(a2 + 72) = 0;
  v8 = *(a1 + 72);
  *(a1 + 72) = v7;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  *(a1 + 80) = *(a2 + 80);
  WebCore::ResourceResponseBase::operator=(a1 + 88, a2 + 88);
  v10 = *(a2 + 336);
  *(a2 + 336) = 0;
  v11 = *(a1 + 336);
  *(a1 + 336) = v10;
  if (v11)
  {
    CFRelease(v11);
  }

  *(a1 + 344) = *(a2 + 344);
  *(a1 + 352) = *(a2 + 352);
  v12 = *(a2 + 360);
  *(a2 + 360) = 0;
  v13 = *(a1 + 360);
  *(a1 + 360) = v12;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v9);
  }

  WebCore::SecurityOriginData::operator=(a1 + 368);
  WebCore::SecurityOriginData::operator=(a1 + 400);
  v16 = *(a2 + 448);
  v15 = *(a2 + 464);
  v17 = *(a2 + 432);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 448) = v16;
  *(a1 + 464) = v15;
  *(a1 + 432) = v17;
  v18 = *(a2 + 488);
  *(a2 + 488) = 0;
  v19 = *(a1 + 488);
  *(a1 + 488) = v18;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v14);
  }

  *(a1 + 496) = *(a2 + 496);
  std::__optional_storage_base<WebCore::OwnerPermissionsPolicyData,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::OwnerPermissionsPolicyData,false>>((a1 + 504), a2 + 504);
  if (*(a1 + 872) == *(a2 + 872))
  {
    if (*(a1 + 872))
    {
      WebCore::PrivateClickMeasurement::operator=(a1 + 560, a2 + 560);
    }
  }

  else
  {
    v21 = (a1 + 560);
    if (*(a1 + 872))
    {
      WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(v21, v20);
      *(a1 + 872) = 0;
    }

    else
    {
      std::__optional_storage_base<WebCore::PrivateClickMeasurement,false>::__construct[abi:sn200100]<WebCore::PrivateClickMeasurement>(v21, a2 + 560);
    }
  }

  v22 = *(a2 + 884);
  *(a1 + 880) = *(a2 + 880);
  *(a1 + 884) = v22;
  v23 = (a1 + 896);
  v24 = (a2 + 896);
  if (*(a1 + 1744) == *(a2 + 1744))
  {
    if (*(a1 + 1744))
    {
      v25 = *v24;
      *v24 = 0;
      v26 = *v23;
      *v23 = v25;
      if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v24);
      }

      v27 = *(a2 + 904);
      *(a2 + 904) = 0;
      v28 = *(a1 + 904);
      *(a1 + 904) = v27;
      if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v28, v24);
      }

      v29 = *(a2 + 912);
      *(a2 + 912) = 0;
      v30 = *(a1 + 912);
      *(a1 + 912) = v29;
      if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v30, v24);
      }

      v31 = *(a2 + 920);
      *(a2 + 920) = 0;
      v32 = *(a1 + 920);
      *(a1 + 920) = v31;
      if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v32, v24);
      }

      v33 = *(a2 + 928);
      *(a2 + 928) = 0;
      v34 = *(a1 + 928);
      *(a1 + 928) = v33;
      if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v34, v24);
      }

      v35 = *(a2 + 936);
      *(a2 + 936) = 0;
      v36 = *(a1 + 936);
      *(a1 + 936) = v35;
      if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v36, v24);
      }

      v37 = *(a2 + 944);
      *(a2 + 944) = 0;
      v38 = *(a1 + 944);
      *(a1 + 944) = v37;
      if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v38, v24);
      }

      v39 = *(a2 + 952);
      *(a2 + 952) = 0;
      v40 = *(a1 + 952);
      *(a1 + 952) = v39;
      if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v40, v24);
      }

      v41 = *(a2 + 960);
      *(a1 + 972) = *(a2 + 972);
      *(a1 + 960) = v41;
      std::__optional_storage_base<WebKit::FrameInfoData,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebKit::FrameInfoData,false>>((a1 + 992), a2 + 992);
      v43 = *(a2 + 1360);
      *(a1 + 1376) = *(a2 + 1376);
      *(a1 + 1360) = v43;
      v44 = *(a2 + 1384);
      *(a2 + 1384) = 0;
      v45 = *(a1 + 1384);
      *(a1 + 1384) = v44;
      if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v45, v42);
      }

      v46 = *(a2 + 1392);
      *(a2 + 1392) = 0;
      v47 = *(a1 + 1392);
      *(a1 + 1392) = v46;
      if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v47, v42);
      }

      v48 = *(a2 + 1400);
      *(a2 + 1400) = 0;
      v49 = *(a1 + 1400);
      *(a1 + 1400) = v48;
      if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v49, v42);
      }

      v50 = *(a2 + 1408);
      *(a2 + 1408) = 0;
      v51 = *(a1 + 1408);
      *(a1 + 1408) = v50;
      if (v51)
      {
        WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v51);
      }

      v52 = *(a2 + 1416);
      *(a2 + 1416) = 0;
      v53 = *(a1 + 1416);
      *(a1 + 1416) = v52;
      if (v53)
      {
        WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(v53, v42);
      }

      v54 = *(a2 + 1424);
      *(a2 + 1424) = 0;
      v55 = *(a1 + 1424);
      *(a1 + 1424) = v54;
      if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v55, v42);
      }

      v56 = *(a2 + 1432);
      *(a1 + 1434) = *(a2 + 1434);
      *(a1 + 1432) = v56;
      std::__optional_storage_base<WebCore::ResourceResponse,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::ResourceResponse,false>>((a1 + 1440), a2 + 1440);
      *(a1 + 1712) = *(a2 + 1712);
      v58 = *(a2 + 1720);
      *(a2 + 1720) = 0;
      v59 = *(a1 + 1720);
      *(a1 + 1720) = v58;
      if (v59)
      {
        WTF::RefCounted<WebCore::TextIndicator>::deref(v59);
      }

      v60 = *(a2 + 1728);
      *(a2 + 1728) = 0;
      v61 = *(a1 + 1728);
      *(a1 + 1728) = v60;
      if (v61 && atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v61, v57);
      }

      v62 = *(a2 + 1736);
      *(a2 + 1736) = 0;
      v63 = *(a1 + 1736);
      *(a1 + 1736) = v62;
      if (v63)
      {
        WTF::RefCounted<WebCore::TextIndicator>::deref(v63);
      }
    }
  }

  else if (*(a1 + 1744))
  {
    WebKit::WebHitTestResultData::~WebHitTestResultData(v23, v24);
    *(a1 + 1744) = 0;
  }

  else
  {
    WebKit::WebHitTestResultData::WebHitTestResultData(v23, v24);
    *(a1 + 1744) = 1;
  }

  WebKit::FrameInfoData::operator=(a1 + 1760, a2 + 1760);
  v64 = *(a2 + 2120);
  *(a1 + 2112) = *(a2 + 2112);
  *(a1 + 2120) = v64;
  WebKit::FrameInfoData::operator=(a1 + 2128, a2 + 2128);
  v65 = *(a2 + 2488);
  *(a1 + 2480) = *(a2 + 2480);
  *(a1 + 2488) = v65;
  WebCore::ResourceRequestBase::RequestData::operator=(a1 + 2496, a2 + 2496);
  v67 = *(a2 + 2648);
  *(a2 + 2648) = 0;
  v68 = *(a1 + 2648);
  *(a1 + 2648) = v67;
  if (v68 && atomic_fetch_add_explicit(v68, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v68, v66);
  }

  v69 = *(a2 + 2656);
  *(a2 + 2656) = 0;
  v70 = *(a1 + 2656);
  *(a1 + 2656) = v69;
  if (v70 && atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v70, v66);
  }

  v71 = *(a2 + 2664);
  *(a2 + 2664) = 0;
  v72 = *(a1 + 2664);
  *(a1 + 2664) = v71;
  if (v72)
  {
    WTF::RefCounted<WebCore::FormData>::deref(v72);
  }

  v73 = *(a2 + 2672);
  *(a1 + 2680) = *(a2 + 2680);
  *(a1 + 2672) = v73;
  v74 = *(a2 + 2688);
  *(a2 + 2688) = 0;
  v75 = *(a1 + 2688);
  *(a1 + 2688) = v74;
  if (v75)
  {
    CFRelease(v75);
  }

  WebCore::ResourceRequestBase::RequestData::operator=(a1 + 2696, a2 + 2696);
  v77 = *(a2 + 2848);
  *(a2 + 2848) = 0;
  v78 = *(a1 + 2848);
  *(a1 + 2848) = v77;
  if (v78 && atomic_fetch_add_explicit(v78, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v78, v76);
  }

  v79 = *(a2 + 2856);
  *(a2 + 2856) = 0;
  v80 = *(a1 + 2856);
  *(a1 + 2856) = v79;
  if (v80 && atomic_fetch_add_explicit(v80, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v80, v76);
  }

  v81 = *(a2 + 2864);
  *(a2 + 2864) = 0;
  v82 = *(a1 + 2864);
  *(a1 + 2864) = v81;
  if (v82)
  {
    WTF::RefCounted<WebCore::FormData>::deref(v82);
  }

  v83 = *(a2 + 2872);
  *(a1 + 2880) = *(a2 + 2880);
  *(a1 + 2872) = v83;
  v84 = *(a2 + 2888);
  *(a2 + 2888) = 0;
  v85 = *(a1 + 2888);
  *(a1 + 2888) = v84;
  if (v85)
  {
    CFRelease(v85);
  }

  v86 = *(a2 + 2896);
  *(a2 + 2896) = 0;
  v87 = *(a1 + 2896);
  *(a1 + 2896) = v86;
  if (v87 && atomic_fetch_add_explicit(v87, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v87, v76);
  }

  return a1;
}

uint64_t WebCore::NavigationRequester::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  v5 = *a1;
  *a1 = v4;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v6;
  v7 = *(a2 + 40);
  atomic_fetch_add(v7, 1u);
  v8 = *(a1 + 40);
  *(a1 + 40) = v7;
  if (v8)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v8, a2);
  }

  v9 = *(a2 + 48);
  atomic_fetch_add(v9, 1u);
  v10 = *(a1 + 48);
  *(a1 + 48) = v9;
  if (v10)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v10, a2);
  }

  WebCore::PolicyContainer::operator=(a1 + 56, a2 + 56);
  *(a1 + 136) = *(a2 + 136);
  v11 = *(a2 + 168);
  v12 = *(a2 + 184);
  v13 = *(a2 + 194);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 194) = v13;
  *(a1 + 184) = v12;
  *(a1 + 168) = v11;
  return a1;
}

uint64_t WebCore::PolicyContainer::operator=(uint64_t a1, uint64_t a2)
{
  WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(a1, a2);
  v5 = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 16) = v5;
  *(a1 + 24) = *(a2 + 24);
  v6 = *(a2 + 32);
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  v7 = *(a1 + 32);
  *(a1 + 32) = v6;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v4);
  }

  v8 = *(a2 + 40);
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  v9 = *(a1 + 40);
  *(a1 + 40) = v8;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v4);
  }

  *(a1 + 48) = *(a2 + 48);
  v10 = *(a2 + 56);
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  v11 = *(a1 + 56);
  *(a1 + 56) = v10;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v4);
  }

  v12 = *(a2 + 64);
  if (v12)
  {
    atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
  }

  v13 = *(a1 + 64);
  *(a1 + 64) = v12;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v4);
  }

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

WebKit::WebLoaderStrategy::SyncLoadResult *WebKit::WebLoaderStrategy::SyncLoadResult::SyncLoadResult(WebKit::WebLoaderStrategy::SyncLoadResult *this)
{
  v2 = WebCore::ResourceResponseBase::ResourceResponseBase(this);
  *(v2 + 248) = 0;
  *(v2 + 256) = 0;
  *(v2 + 138) = *(v2 + 138) & 0xF1 | 4;
  *(v2 + 264) = 0;
  *(v2 + 272) = 0;
  WTF::URL::invalidate((v2 + 272));
  *(this + 41) = 0;
  *(this + 39) = 0;
  *(this + 318) = 0;
  *(this + 336) = 1;
  *(this + 43) = 0;
  *(this + 44) = 0;
  return this;
}

void WebKit::WebLoaderStrategy::SyncLoadResult::~SyncLoadResult(WebKit::WebLoaderStrategy::SyncLoadResult *this, void *a2)
{
  v3 = *(this + 43);
  if (v3)
  {
    *(this + 43) = 0;
    *(this + 88) = 0;
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 41);
  *(this + 41) = 0;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 39);
  *(this + 39) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 34);
  *(this + 34) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(this + 33);
  *(this + 33) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(this + 31);
  *(this + 31) = 0;
  if (v8)
  {
    CFRelease(v8);
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(this, a2);
}

uint64_t WebKit::WebLoaderStrategy::SyncLoadResult::SyncLoadResult(uint64_t a1, uint64_t a2)
{
  WTF::URL::URL(a1, a2);
  v4 = *(a2 + 40);
  v5 = *(a2 + 48);
  *(a2 + 40) = 0;
  v6[5] = v4;
  v6[6] = v5;
  v7 = *(a2 + 56);
  *(a2 + 56) = 0;
  v6[7] = v7;
  v8 = *(a2 + 64);
  *(a2 + 64) = 0;
  v6[8] = v8;
  v9 = *(a2 + 72);
  *(a2 + 72) = 0;
  v6[9] = v9;
  v6[11] = 0;
  v6[10] = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt((v6 + 10), (a2 + 80));
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 96, (a2 + 96));
  v10 = *(a2 + 112);
  *(a2 + 112) = 0;
  *(a1 + 112) = v10;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  if (*(a2 + 128) == 1)
  {
    v22 = *(a2 + 120);
    *(a2 + 120) = 0;
    *(a1 + 120) = v22;
    *(a1 + 128) = 1;
  }

  v11 = *(a2 + 136);
  *(a1 + 138) = *(a2 + 138);
  *(a1 + 136) = v11;
  v12 = *(a2 + 144);
  *(a2 + 144) = 0;
  *(a1 + 144) = v12;
  v13 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 152) = v13;
  v14 = *(a2 + 184);
  v15 = *(a2 + 200);
  v16 = *(a2 + 216);
  *(a1 + 227) = *(a2 + 227);
  *(a1 + 216) = v16;
  *(a1 + 200) = v15;
  *(a1 + 184) = v14;
  v17 = *(a2 + 248);
  *(a2 + 248) = 0;
  *(a1 + 248) = v17;
  *(a1 + 256) = *(a2 + 256);
  v18 = *(a2 + 264);
  *(a2 + 264) = 0;
  *(a1 + 264) = v18;
  WTF::URL::URL(a1 + 272, (a2 + 272));
  v19 = *(a2 + 312);
  *(a2 + 312) = 0;
  *(a1 + 312) = v19;
  LODWORD(v19) = *(a2 + 320);
  *(a1 + 324) = *(a2 + 324);
  *(a1 + 320) = v19;
  v20 = *(a2 + 328);
  *(a2 + 328) = 0;
  *(a1 + 328) = v20;
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 344, (a2 + 344));
  return a1;
}

uint64_t std::__memberwise_forward_assign[abi:sn200100]<std::tuple<WebCore::ResourceError &,WebCore::ResourceResponse &,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>,std::tuple<WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,1ul,2ul>(uint64_t *a1, uint64_t *a2)
{
  WebCore::ResourceError::operator=(*a1, a2);
  WebCore::ResourceResponse::operator=(a1[1], (a2 + 10));
  v4 = a1[2];

  return WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v4, a2 + 43);
}

IPC::Decoder *mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<IPC::ConnectionSendSyncResult<Messages::NetworkConnectionToWebProcess::PerformSynchronousLoad>::ReplyData,IPC::Error>,(mpark::detail::Trait)1> &>(IPC::Decoder *result, void *a2)
{
  if (!*(result + 368))
  {
    v2 = result;
    std::tuple<WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::~tuple(result + 8, a2);

    return std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](v2, 0);
  }

  return result;
}

_DWORD **WTF::RefPtr<WebCore::DocumentLoader,WTF::RawPtrTraits<WebCore::DocumentLoader>,WTF::DefaultRefDerefTraits<WebCore::DocumentLoader>>::operator=(_DWORD **a1, _DWORD *a2)
{
  if (a2)
  {
    ++a2[6];
  }

  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    if (v3[6] == 1)
    {
      (*(*v3 + 24))(v3);
    }

    else
    {
      --v3[6];
    }
  }

  return a1;
}

IPC::Encoder *IPC::Connection::send<Messages::LogStream::WEBRESOURCELOADER_CONSTRUCTOR>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 312;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, a2[1]);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, a2[2]);
  IPC::Connection::sendMessageImpl(a1, &v11, 1, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 1) != -1)
      {
        v4 = WTF::Deque<WTF::Function<void ()(void)>,0ul>::~Deque(v4, a2);
      }

      v4 += 5;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t IPC::StreamClientConnection::send<Messages::LogStream::WEBRESOURCELOADER_WILLSENDREQUEST,WebKit::LogStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  result = IPC::StreamClientConnection::trySendDestinationIDIfNeeded(a1, a3, v7);
  if (!result)
  {
    result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v10, v7);
    if (v12 == 1)
    {
      result = IPC::StreamClientConnection::trySendStream<Messages::LogStream::WEBRESOURCELOADER_WILLSENDREQUEST>(a1, v10, v11, a2);
      if ((result & 1) == 0)
      {
        if (v12)
        {
          IPC::StreamClientConnection::sendProcessOutOfStreamMessage(a1, v10, v11);
          return IPC::Connection::send<Messages::LogStream::WEBRESOURCELOADER_WILLSENDREQUEST>(*(a1 + 8), a2, a3);
        }

        else
        {
          __break(1u);
        }
      }
    }
  }

  return result;
}

uint64_t IPC::StreamClientConnection::trySendStream<Messages::LogStream::WEBRESOURCELOADER_WILLSENDREQUEST>(uint64_t a1, _WORD *a2, unint64_t a3, void *a4)
{
  v9 = a3;
  if (a3 <= 1)
  {
    result = 1067;
    __break(0xC471u);
  }

  else
  {
    *a2 = 324;
    v7 = a2 + 1;
    v8 = a3 - 2;
    Messages::LogStream::REMOTE_RENDERING_BACKEND_PROXY_CREATED_RENDERING_BACKEND::encode<IPC::StreamConnectionEncoder>(a4, &v7);
    v5 = v7;
    if (v7 && ((IPC::StreamClientConnectionBuffer::release((a1 + 72), v9 - v8) & 1) != 0 || *(a1 + 124)))
    {
      if (*(a1 + 112) == 1)
      {
        MEMORY[0x19EB16320](*(a1 + 100));
      }

      *(a1 + 124) = 0;
    }

    return v5 != 0;
  }

  return result;
}

uint64_t IPC::Connection::send<Messages::LogStream::WEBRESOURCELOADER_WILLSENDREQUEST>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 324;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, a2[1]);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, a2[2]);
  v8 = IPC::Connection::sendMessageImpl(a1, &v13, 1, 0);
  v9 = v13;
  v13 = 0;
  if (v9)
  {
    IPC::Encoder::~Encoder(v9, v7);
    bmalloc::api::tzoneFree(v11, v12);
  }

  return v8;
}

IPC::Encoder *IPC::Connection::send<Messages::LogStream::WEBRESOURCELOADER_DIDRECEIVEDATA>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 316;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, a2[1]);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, a2[2]);
  IPC::Connection::sendMessageImpl(a1, &v11, 1, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

IPC::Encoder *IPC::Connection::send<Messages::LogStream::WEBRESOURCELOADER_DIDFINISHRESOURCELOAD>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 315;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, a2[1]);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, a2[2]);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, a2[3]);
  IPC::Connection::sendMessageImpl(a1, &v11, 1, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

uint64_t IPC::StreamClientConnection::send<Messages::LogStream::WEBRESOURCELOADER_DIDFAILRESOURCELOAD,WebKit::LogStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  result = IPC::StreamClientConnection::trySendDestinationIDIfNeeded(a1, a3, v7);
  if (!result)
  {
    result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v10, v7);
    if (v12 == 1)
    {
      result = IPC::StreamClientConnection::trySendStream<Messages::LogStream::WEBRESOURCELOADER_DIDFAILRESOURCELOAD>(a1, v10, v11, a2);
      if ((result & 1) == 0)
      {
        if (v12)
        {
          IPC::StreamClientConnection::sendProcessOutOfStreamMessage(a1, v10, v11);
          return IPC::Connection::send<Messages::LogStream::WEBRESOURCELOADER_DIDFAILRESOURCELOAD>(*(a1 + 8), a2, a3);
        }

        else
        {
          __break(1u);
        }
      }
    }
  }

  return result;
}

uint64_t IPC::StreamClientConnection::trySendStream<Messages::LogStream::WEBRESOURCELOADER_DIDFAILRESOURCELOAD>(uint64_t a1, _WORD *a2, unint64_t a3, void *a4)
{
  v9 = a3;
  if (a3 <= 1)
  {
    result = 1067;
    __break(0xC471u);
  }

  else
  {
    *a2 = 314;
    v7 = a2 + 1;
    v8 = a3 - 2;
    Messages::LogStream::REMOTE_RENDERING_BACKEND_PROXY_CREATED_RENDERING_BACKEND::encode<IPC::StreamConnectionEncoder>(a4, &v7);
    v5 = v7;
    if (v7 && ((IPC::StreamClientConnectionBuffer::release((a1 + 72), v9 - v8) & 1) != 0 || *(a1 + 124)))
    {
      if (*(a1 + 112) == 1)
      {
        MEMORY[0x19EB16320](*(a1 + 100));
      }

      *(a1 + 124) = 0;
    }

    return v5 != 0;
  }

  return result;
}

uint64_t IPC::Connection::send<Messages::LogStream::WEBRESOURCELOADER_DIDFAILRESOURCELOAD>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 314;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, a2[1]);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, a2[2]);
  v8 = IPC::Connection::sendMessageImpl(a1, &v13, 1, 0);
  v9 = v13;
  v13 = 0;
  if (v9)
  {
    IPC::Encoder::~Encoder(v9, v7);
    bmalloc::api::tzoneFree(v11, v12);
  }

  return v8;
}

uint64_t WebCore::ResourceError::ResourceError(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  *a1 = v4;
  v5 = *(a2 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  *(a1 + 8) = v5;
  v6 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v6;
  v7 = *(a2 + 48);
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  *(a1 + 48) = v7;
  v8 = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 56) = v8;
  v9 = *(a2 + 64);
  *(a1 + 64) = v9;
  if (v9)
  {
    CFRetain(v9);
  }

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

IPC::Encoder *IPC::Connection::send<Messages::LogStream::WEBRESOURCELOADER_DIDRECEIVERESOURCE>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 317;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, a2[1]);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, a2[2]);
  IPC::Connection::sendMessageImpl(a1, &v11, 1, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkConnectionToWebProcess::WriteBlobsToTemporaryFilesForIndexedDB,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112C748;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkConnectionToWebProcess::WriteBlobsToTemporaryFilesForIndexedDB,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112C748;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkConnectionToWebProcess::WriteBlobsToTemporaryFilesForIndexedDB,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::call(uint64_t a1, void *a2, IPC::Decoder *a3, __n128 a4)
{
  if (a3 && *a3)
  {
    IPC::Decoder::decode<std::tuple<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(a3, v11);
    if (v12 == 1)
    {
      v7 = *(a1 + 8);
      *(a1 + 8) = 0;
      (*(*v7 + 16))(v7, v11);
      result = (*(*v7 + 8))(v7);
      if (v12)
      {
        return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v11, v9);
      }
    }

    else
    {
      return IPC::Connection::cancelReply<Messages::WebProcess::GetActivePagesOriginsForTesting,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>((a1 + 8), v5, v6);
    }
  }

  else
  {
    v10 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::WebProcess::GetActivePagesOriginsForTesting,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(v10, a2, a4);
  }

  return result;
}

WebCore::Node *WTF::Detail::CallableWrapper<WebKit::NetworkProcessConnection::broadcastConsoleMessage(JSC::MessageSource,JSC::MessageLevel,WTF::String const&)::$_0,void,WebCore::Page &>::call(int a1, WebCore::Page *this)
{
  WebCore::Page::localTopDocument(&v3, this);
  result = v3;
  if (v3)
  {
    WebCore::Document::addConsoleMessage();
    result = v3;
    v3 = 0;
    if (result)
    {
      if (*(result + 7) == 2)
      {
        return WebCore::Node::removedLastRef(result);
      }

      else
      {
        *(result + 7) -= 2;
      }
    }
  }

  return result;
}

uint64_t WTF::Deque<WTF::Function<void ()(void)>,0ul>::append<WTF::Function<void ()(void)>>(uint64_t a1, uint64_t *a2)
{
  result = WTF::Deque<WTF::Function<void ()(void)>,0ul>::expandCapacityIfNeeded(a1);
  v5 = *(a1 + 24);
  v6 = *(a1 + 8);
  if (v6 >= v5)
  {
    __break(1u);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *a2;
    *a2 = 0;
    *(v7 + 8 * v6) = v8;
    if (v6 == v5 - 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = v6 + 1;
    }

    *(a1 + 8) = v9;
  }

  return result;
}

uint64_t WTF::Deque<WTF::Function<void ()(void)>,0ul>::expandCapacityIfNeeded(uint64_t result)
{
  v2 = *result;
  v1 = *(result + 8);
  if (*result)
  {
    ++v1;
    goto LABEL_6;
  }

  v3 = *(result + 24);
  if (v1)
  {
    v2 = v3 - 1;
LABEL_6:
    if (v1 == v2)
    {
      return WTF::Deque<WTF::Function<void ()(void)>,0ul>::expandCapacity(result);
    }

    return result;
  }

  if (!v3)
  {
    return WTF::Deque<WTF::Function<void ()(void)>,0ul>::expandCapacity(result);
  }

  return result;
}

uint64_t WTF::Deque<WTF::Function<void ()(void)>,0ul>::expandCapacity(uint64_t result)
{
  v1 = *(result + 24);
  v2 = v1 + (v1 >> 2);
  if (v2 >= 0x1FFFFFFF)
  {
    __break(0xC471u);
    goto LABEL_22;
  }

  v3 = result;
  v4 = *(result + 16);
  if (v2 <= 0xF)
  {
    v2 = 15;
  }

  v5 = v2 + 1;
  result = WTF::fastMalloc((8 * (v2 + 1)));
  *(v3 + 24) = v5;
  *(v3 + 16) = result;
  v6 = *v3;
  v7 = *(v3 + 8);
  v8 = v7 - *v3;
  if (v7 >= *v3)
  {
    if (v1 >= v6)
    {
      if (v8 == -1)
      {
        v8 = v1 - v6;
        goto LABEL_8;
      }

      if (v1 - v6 >= v8)
      {
LABEL_8:
        result = WTF::VectorTypeOperations<WTF::Function<void ()(void)>>::move(v4 + 8 * v6, v4 + v6 + v8, (result + 8 * v6));
        goto LABEL_9;
      }
    }

LABEL_22:
    __break(1u);
    return result;
  }

  if (v7 > v1)
  {
    goto LABEL_22;
  }

  result = WTF::VectorTypeOperations<WTF::Function<void ()(void)>>::move(v4, v4 + v7, result);
  if (v1 < *v3)
  {
    goto LABEL_22;
  }

  v10 = *(v3 + 24);
  if (v10 < v1 - *v3)
  {
    goto LABEL_22;
  }

  v11 = v10 - (v1 - *v3);
  result = WTF::VectorTypeOperations<WTF::Function<void ()(void)>>::move(v4 + 8 * *v3, v4 + v1, (*(v3 + 16) + 8 * v11));
  *v3 = v11;
LABEL_9:
  if (v4)
  {
    if (*(v3 + 16) == v4)
    {
      *(v3 + 16) = 0;
      *(v3 + 24) = 0;
    }

    return WTF::fastFree(v4, v9);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::WebLoaderStrategy>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::WebLoaderStrategy *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>::call(void *a1)
{
  v1 = a1[1];
  if (v1 && !*(*(v1 + 8) + 8))
  {
    goto LABEL_8;
  }

  v2 = a1[2];
  v3 = a1[3];
  v4 = (v1 + (v3 >> 1));
  if (v3)
  {
    result = (*(*v4 + v2))();
LABEL_7:
    if (*(*(v1 + 8) + 8))
    {
      return result;
    }

LABEL_8:
    __break(0xC471u);
    JUMPOUT(0x19E30B0C0);
  }

  result = v2(v4);
  if (v1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t WTF::Vector<WTF::Function<void ()(BOOL)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v5 = 8 * v3;
    do
    {
      v6 = *v4;
      *v4 = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      v4 = (v4 + 8);
      v5 -= 8;
    }

    while (v5);
    v4 = *a1;
  }

  if (v4)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebLoaderStrategy::loadResource(WebCore::LocalFrame &,WebCore::CachedResource &,WebCore::ResourceRequest &&,WebCore::ResourceLoaderOptions const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SubresourceLoader,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&)> &&)::$_0,void,WTF::RefPtr<WebCore::SubresourceLoader,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>>>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F112C7C0;
  v2 = a1[6];
  a1[6] = 0;
  if (v2)
  {
    if (v2[4] == 1)
    {
      (*(*v2 + 8))(v2);
    }

    else
    {
      --v2[4];
    }
  }

  WebCore::CachedResourceHandleBase::~CachedResourceHandleBase((a1 + 5));
  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (!v4 || *(*(v4 + 8) + 8))
  {
    return a1;
  }

  result = 92;
  __break(0xC471u);
  return result;
}

{
  *a1 = &unk_1F112C7C0;
  v2 = a1[6];
  a1[6] = 0;
  if (v2)
  {
    if (v2[4] == 1)
    {
      (*(*v2 + 8))(v2);
    }

    else
    {
      --v2[4];
    }
  }

  WebCore::CachedResourceHandleBase::~CachedResourceHandleBase((a1 + 5));
  v4 = a1[4];
  a1[4] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[2];
  a1[2] = 0;
  if (v5 && !*(*(v5 + 8) + 8))
  {
    result = 92;
    __break(0xC471u);
  }

  else
  {

    return WTF::fastFree(a1, v3);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebLoaderStrategy::loadResource(WebCore::LocalFrame &,WebCore::CachedResource &,WebCore::ResourceRequest &&,WebCore::ResourceLoaderOptions const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SubresourceLoader,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&)> &&)::$_0,void,WTF::RefPtr<WebCore::SubresourceLoader,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>>>::call(uint64_t a1, WebCore::ResourceLoader **a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v5 = *a2;
  if (*a2)
  {
    v6 = WebCore::CachedResourceHandleBase::get((a1 + 40));
    WebKit::WebLoaderStrategy::scheduleLoad(v4, v5, v6, *(a1 + 24) == 2);
  }

  else
  {
    v9 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 48);
      v11 = *(v10 + 24);
      if (v11)
      {
        v11 = *(v11 + 8);
        if (v11)
        {
          if (*(v11 + 48))
          {
            v11 = *(v11 + 40);
          }

          else
          {
            v11 = 0;
          }
        }
      }

      v12 = *(v10 + 32);
      v13 = 134218496;
      v14 = v4;
      v15 = 2048;
      v16 = v11;
      v17 = 2048;
      v18 = v12;
      _os_log_impl(&dword_19D52D000, v9, OS_LOG_TYPE_DEFAULT, "%p - [webPageID=%llu, frameID=%llu] WebLoaderStrategy::loadResource: Unable to create SubresourceLoader", &v13, 0x20u);
    }
  }

  v7 = *(a1 + 32);
  *(a1 + 32) = 0;
  (*(*v7 + 16))(v7, a2);
  return (*(*v7 + 8))(v7);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebLoaderStrategy::schedulePluginStreamLoad(WebCore::LocalFrame &,WebCore::NetscapePlugInStreamLoaderClient &,WebCore::ResourceRequest &&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::NetscapePlugInStreamLoader,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&)> &&)::$_0,void,WTF::RefPtr<WebCore::NetscapePlugInStreamLoader,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>>>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F112C7E8;
  v2 = a1[4];
  a1[4] = 0;
  if (v2)
  {
    if (v2[4] == 1)
    {
      (*(*v2 + 8))(v2);
    }

    else
    {
      --v2[4];
    }
  }

  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (!v4 || *(*(v4 + 8) + 8))
  {
    return a1;
  }

  result = 92;
  __break(0xC471u);
  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebLoaderStrategy::schedulePluginStreamLoad(WebCore::LocalFrame &,WebCore::NetscapePlugInStreamLoaderClient &,WebCore::ResourceRequest &&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::NetscapePlugInStreamLoader,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&)> &&)::$_0,void,WTF::RefPtr<WebCore::NetscapePlugInStreamLoader,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>>>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112C7E8;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    if (v3[4] == 1)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5 && !*(*(v5 + 8) + 8))
  {
    result = 92;
    __break(0xC471u);
  }

  else
  {

    return WTF::fastFree(this, a2);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebLoaderStrategy::schedulePluginStreamLoad(WebCore::LocalFrame &,WebCore::NetscapePlugInStreamLoaderClient &,WebCore::ResourceRequest &&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::NetscapePlugInStreamLoader,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&)> &&)::$_0,void,WTF::RefPtr<WebCore::NetscapePlugInStreamLoader,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>>>::call(void *a1, WebCore::ResourceLoader **a2)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = a1[1];
    v6 = (*(*(*(a1[4] + 224) + 208) + 8))() == 2;
    WebKit::WebLoaderStrategy::scheduleLoad(v5, v4, 0, v6);
  }

  v7 = a1[3];
  a1[3] = 0;
  (*(*v7 + 16))(v7, a2);
  v8 = *(*v7 + 8);

  return v8(v7);
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long> const&,WTF::Ref<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  if (*a3 == -1 || !v4)
  {
    __break(0xC471u);
    JUMPOUT(0x19E30B9E4);
  }

  v9 = *a2;
  if (!*a2)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, 0);
    v9 = *a2;
    v4 = *a3;
  }

  v10 = *(v9 - 8);
  v11 = (v4 + ~(v4 << 32)) ^ ((v4 + ~(v4 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = (v9 + 16 * v14);
  v16 = *v15;
  if (!*v15)
  {
LABEL_13:
    *v15 = v4;
    v19 = *a4;
    *a4 = 0;
    result = v15[1];
    v15[1] = v19;
    if (result)
    {
      if (*(result + 2) == 1)
      {
        result = (*(*result + 8))(result);
      }

      else
      {
        --*(result + 2);
      }
    }

    v21 = *a2;
    if (*a2)
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
      if (v24 > 2 * v23)
      {
        goto LABEL_20;
      }
    }

    else if (3 * v24 > 4 * v23)
    {
LABEL_20:
      *a1 = v15;
      *(a1 + 8) = v21 + 16 * v24;
      *(a1 + 16) = 1;
      return result;
    }

    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, v15);
    v15 = result;
    v21 = *a2;
    if (*a2)
    {
      v24 = *(v21 - 4);
    }

    else
    {
      v24 = 0;
    }

    goto LABEL_20;
  }

  v17 = 0;
  v18 = 1;
  while (v16 != v4)
  {
    if (v16 == -1)
    {
      v17 = v15;
    }

    v14 = (v14 + v18) & v10;
    v15 = (v9 + 16 * v14);
    v16 = *v15;
    ++v18;
    if (!*v15)
    {
      if (v17)
      {
        *v17 = 0;
        v17[1] = 0;
        --*(*a2 - 16);
        v4 = *a3;
        v15 = v17;
      }

      goto LABEL_13;
    }
  }

  v25 = v9 + 16 * *(v9 - 4);
  *a1 = v15;
  *(a1 + 8) = v25;
  *(a1 + 16) = 0;

  return WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>::operator=<WebKit::WebResourceLoader>(v15 + 1, a4);
}

_DWORD **WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>::operator=<WebKit::WebResourceLoader>(_DWORD **a1, void *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *a1;
  *a1 = v3;
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

uint64_t WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19E30BAA4);
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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
      if (*v13)
      {
        if (v14 != -1)
        {
          v15 = *a1;
          if (*a1)
          {
            v16 = *(v15 - 8);
          }

          else
          {
            v16 = 0;
          }

          v17 = (v14 + ~(v14 << 32)) ^ ((v14 + ~(v14 << 32)) >> 22);
          v18 = 9 * ((v17 + ~(v17 << 13)) ^ ((v17 + ~(v17 << 13)) >> 8));
          v19 = (v18 ^ (v18 >> 15)) + ~((v18 ^ (v18 >> 15)) << 27);
          v20 = v16 & ((v19 >> 31) ^ v19);
          v21 = 1;
          do
          {
            v22 = v20;
            v23 = *(v15 + 16 * v20);
            v20 = (v20 + v21++) & v16;
          }

          while (v23);
          v24 = (v15 + 16 * v22);
          v25 = v24[1];
          v24[1] = 0;
          if (v25)
          {
            if (v25[2] == 1)
            {
              (*(*v25 + 8))(v25);
            }

            else
            {
              --v25[2];
            }
          }

          *v24 = *v13;
          v26 = v13[1];
          v13[1] = 0;
          v24[1] = v26;
          v27 = v13[1];
          v13[1] = 0;
          if (v27)
          {
            if (v27[2] == 1)
            {
              (*(*v27 + 8))(v27);
            }

            else
            {
              --v27[2];
            }
          }

          if (v13 == a3)
          {
            v12 = v24;
          }
        }
      }

      else
      {
        v28 = v13[1];
        v13[1] = 0;
        if (v28)
        {
          if (v28[2] == 1)
          {
            (*(*v28 + 8))(v28);
          }

          else
          {
            --v28[2];
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

uint64_t WTF::Detail::CallableWrapper<WebKit::WebLoaderStrategy::scheduleLoad(WebCore::ResourceLoader &,WebCore::CachedResource *,BOOL)::$_0,void,WebCore::ResourceRequest const&>::~CallableWrapper(uint64_t result)
{
  *result = &unk_1F112C810;
  v1 = *(result + 24);
  *(result + 24) = 0;
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

  v2 = *(result + 16);
  *(result + 16) = 0;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::WebLoaderStrategy::scheduleLoad(WebCore::ResourceLoader &,WebCore::CachedResource *,BOOL)::$_0,void,WebCore::ResourceRequest const&>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F112C810;
  v2 = *(a1 + 3);
  *(a1 + 3) = 0;
  if (v2)
  {
    if (v2[4] == 1)
    {
      v5 = a1;
      (*(*v2 + 8))(v2);
      a1 = v5;
    }

    else
    {
      --v2[4];
    }
  }

  v3 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v3 && !*(*(v3 + 8) + 8))
  {
    result = 92;
    __break(0xC471u);
  }

  else
  {

    return WTF::fastFree(a1, a2);
  }

  return result;
}

void WTF::Detail::CallableWrapper<WebKit::WebLoaderStrategy::scheduleLoad(WebCore::ResourceLoader &,WebCore::CachedResource *,BOOL)::$_0,void,WebCore::ResourceRequest const&>::call(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = WebCore::ResourceLoader::frameLoader(v3);
    v6 = WebCore::ResourceLoader::frame(v3);
    if (*(a1 + 64))
    {
      v7 = *(a1 + 40);
    }

    else
    {
      v7 = 0;
    }

    v8 = 134219520;
    v9 = v2;
    v10 = 2048;
    v11 = v3;
    v12 = 2048;
    v13 = v5;
    v14 = 2048;
    v15 = v6;
    v16 = 2048;
    v17 = v7;
    v18 = 2048;
    v19 = v7;
    v20 = 2048;
    v21 = v7;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - [resourceLoader=%p, frameLoader=%p, frame=%p, webPageID=%llu, frameID=%llu, resourceID=%llu] WebLoaderStrategy::scheduleLoad: intercepted URL will be scheduled with the NetworkProcess", &v8, 0x48u);
  }

  if ((*(a1 + 64) & 1) == 0)
  {
    __break(1u);
  }

  WebKit::maximumBufferingTime(*(a1 + 80));
  WebKit::WebLoaderStrategy::scheduleLoadFromNetworkProcess(v2);
}

_DWORD *WTF::RefCounted<WebKit::WebURLSchemeHandlerProxy>::deref(_DWORD *result)
{
  if (*result == 1)
  {
    WebKit::WebURLSchemeHandlerProxy::~WebURLSchemeHandlerProxy((result - 2));

    return WTF::fastFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebLoaderStrategy::scheduleLoadFromNetworkProcess(WebCore::ResourceLoader &,WebCore::ResourceRequest const&,WebKit::WebResourceLoader::TrackingParameters const&,BOOL,WTF::Seconds)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F112C838;
  v3 = a1[10];
  a1[10] = 0;
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[8];
  a1[8] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[3];
  a1[3] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = a1[2];
  a1[2] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = a1[1];
  a1[1] = 0;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::WebLoaderStrategy::scheduleLoadFromNetworkProcess(WebCore::ResourceLoader &,WebCore::ResourceRequest const&,WebKit::WebResourceLoader::TrackingParameters const&,BOOL,WTF::Seconds)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  v2 = WTF::Detail::CallableWrapper<WebKit::WebLoaderStrategy::scheduleLoadFromNetworkProcess(WebCore::ResourceLoader &,WebCore::ResourceRequest const&,WebKit::WebResourceLoader::TrackingParameters const&,BOOL,WTF::Seconds)::$_0,void>::~CallableWrapper(a1, a2);

  return WTF::fastFree(v2, v3);
}

_DWORD *WTF::HashTable<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::FastMalloc>::expand(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 && (v2 = *(v1 - 4)) != 0)
  {
    v3 = v2 << (6 * *(v1 - 12) >= (2 * v2));
  }

  else
  {
    v3 = 8;
  }

  return WTF::HashTable<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::FastMalloc>::rehash(a1, v3);
}

_DWORD *WTF::HashTable<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 12);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  result = WTF::fastZeroedMalloc((8 * a2 + 16));
  *a1 = (result + 4);
  result[2] = a2 - 1;
  result[3] = a2;
  *result = 0;
  result[1] = v6;
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v10 = (v4 + 8 * i);
      v11 = *v10;
      if (*v10 != -1)
      {
        if (v11)
        {
          v12 = *a1;
          if (*a1)
          {
            v13 = *(v12 - 8);
          }

          else
          {
            v13 = 0;
          }

          v14 = (v11 + ~(v11 << 32)) ^ ((v11 + ~(v11 << 32)) >> 22);
          v15 = 9 * ((v14 + ~(v14 << 13)) ^ ((v14 + ~(v14 << 13)) >> 8));
          v16 = (v15 ^ (v15 >> 15)) + ~((v15 ^ (v15 >> 15)) << 27);
          v17 = v13 & ((v16 >> 31) ^ v16);
          v18 = 1;
          do
          {
            v19 = v17;
            v20 = *(v12 + 8 * v17);
            v17 = (v17 + v18++) & v13;
          }

          while (v20);
          *v10 = 0;
          *(v12 + 8 * v19) = v11;
          v21 = *v10;
          *v10 = 0;
          if (v21)
          {
            if (v21[4] == 1)
            {
              (*(*v21 + 8))(v21);
            }

            else
            {
              --v21[4];
            }
          }
        }

        else
        {
          *v10 = 0;
        }
      }
    }
  }

  else if (!v4)
  {
    return result;
  }

  return WTF::fastFree((v4 - 16), v8);
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v23 = a4;
  WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(*a3);
  v8 = *a2;
  if (*a2 || (WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, 0), (v8 = *a2) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = WTF::ObjectIdentifierGenericBaseHash<unsigned long long>::hash(a3) & v9;
  v11 = (v8 + 16 * v10);
  v12 = *v11;
  v13 = *a3;
  if (!*v11)
  {
LABEL_4:
    result = WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>::translate<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>> WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>(WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long> &&,WTF::Ref<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>> &&)::{lambda(void)#1}>( v11,  v13,  &v23);
    v15 = *a2;
    if (*a2)
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
        goto LABEL_8;
      }
    }

    else if (3 * v18 > 4 * v17)
    {
LABEL_8:
      *a1 = v11;
      *(a1 + 8) = v15 + 16 * v18;
      *(a1 + 16) = 1;
      return result;
    }

    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, v11);
    v11 = result;
    v15 = *a2;
    if (*a2)
    {
      v18 = *(v15 - 4);
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_8;
  }

  v19 = 0;
  v20 = 1;
  while (v12 != v13)
  {
    if (v12 == -1)
    {
      v19 = v11;
    }

    v10 = (v10 + v20) & v9;
    v11 = (v8 + 16 * v10);
    v12 = *v11;
    ++v20;
    if (!*v11)
    {
      if (v19)
      {
        *v19 = 0;
        v19[1] = 0;
        --*(*a2 - 16);
        v13 = *a3;
        v11 = v19;
      }

      goto LABEL_4;
    }
  }

  v21 = *a2;
  if (*a2)
  {
    v22 = *(v21 - 4);
  }

  else
  {
    v22 = 0;
  }

  *a1 = v11;
  *(a1 + 8) = v21 + 16 * v22;
  *(a1 + 16) = 0;

  return WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>::operator=<WebKit::WebResourceLoader>(v11 + 1, a4);
}

_DWORD *WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>::translate<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>> WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>(WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long> &&,WTF::Ref<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>> &&)::{lambda(void)#1}>(void *a1, uint64_t a2, uint64_t **a3)
{
  *a1 = a2;
  v4 = **a3;
  **a3 = 0;
  result = a1[1];
  a1[1] = v4;
  if (result)
  {
    if (result[2] == 1)
    {
      return (*(*result + 8))();
    }

    else
    {
      --result[2];
    }
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  if (*a1 && (v5 = *(v3 - 4)) != 0)
  {
    v4 = v5 << (6 * *(v3 - 12) >= (2 * v5));
  }

  else
  {
    v4 = 8;
  }

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v4, a2);
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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
    v13 = v7;
    do
    {
      v14 = (v6 + 16 * v11);
      v15 = *v14;
      if (*v14 != -1)
      {
        if (v15)
        {
          v17 = *a1;
          if (*a1)
          {
            v18 = *(v17 - 8);
          }

          else
          {
            v18 = 0;
          }

          v19 = (v15 + ~(v15 << 32)) ^ ((v15 + ~(v15 << 32)) >> 22);
          v20 = 9 * ((v19 + ~(v19 << 13)) ^ ((v19 + ~(v19 << 13)) >> 8));
          v21 = (v20 ^ (v20 >> 15)) + ~((v20 ^ (v20 >> 15)) << 27);
          v22 = v18 & ((v21 >> 31) ^ v21);
          v23 = 1;
          do
          {
            v24 = v22;
            v25 = *(v17 + 16 * v22);
            v22 = (v22 + v23++) & v18;
          }

          while (v25);
          v26 = (v17 + 16 * v24);
          v27 = v26[1];
          v26[1] = 0;
          if (v27 && atomic_fetch_add(v27, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v27);
            WTF::fastFree(v27, v10);
          }

          *v26 = *v14;
          v28 = v14[1];
          v14[1] = 0;
          v26[1] = v28;
          v29 = v14[1];
          v14[1] = 0;
          if (v29 && atomic_fetch_add(v29, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v29);
            WTF::fastFree(v29, v10);
          }

          if (v14 == a3)
          {
            v12 = v26;
          }
        }

        else
        {
          v16 = v14[1];
          v14[1] = 0;
          if (v16)
          {
            if (atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v16);
              WTF::fastFree(v16, v10);
            }
          }
        }
      }

      ++v11;
    }

    while (v11 != v13);
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

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(uint64_t *a1, void *a2)
{
  if (*a1)
  {
    v2 = (*a1 + 16 * *(*a1 - 4));
    if (v2 == a2)
    {
      return a1;
    }
  }

  else
  {
    if (!a2)
    {
      return a1;
    }

    v2 = 0;
  }

  if (v2 != a2)
  {
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(a1, a2);
  }

  return a1;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *a1, void *a2)
{
  result = a2[1];
  *a2 = -1;
  a2[1] = 0;
  if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result);
    result = WTF::fastFree(result, a2);
  }

  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  if (!*a1)
  {
    return 0;
  }

  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1, a2);
  v4 = *a1;
  if (!result)
  {
    if (v4)
    {
      return v4 + 16 * *(v4 - 4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 == -1 || !v2)
  {
    __break(0xC471u);
    JUMPOUT(0x19E30C9C8);
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
      return v3 + 16 * v8;
    }

    v10 = 1;
    while (v9)
    {
      v8 = (v8 + v10) & v4;
      v9 = *(v3 + 16 * v8);
      ++v10;
      if (v9 == v2)
      {
        return v3 + 16 * v8;
      }
    }
  }

  return 0;
}

_DWORD *WTF::RefCounted<WebKit::WebURLSchemeTaskProxy>::deref(_DWORD *result, void *a2)
{
  if (*result == 1)
  {
    WebKit::WebURLSchemeTaskProxy::~WebURLSchemeTaskProxy((result - 2), a2);

    return WTF::fastFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

void WebKit::WebURLSchemeTaskProxy::~WebURLSchemeTaskProxy(WebKit::WebURLSchemeTaskProxy *this, void *a2)
{
  WTF::Deque<WTF::Function<void ()(void)>,0ul>::~Deque(this + 32, a2);
  WebCore::ResourceRequest::~ResourceRequest((this + 40));
  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4)
  {
    CFRelease(*(v4 + 8));
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5)
  {
    if (v5[4] == 1)
    {
      (*(*v5 + 8))(v5);
    }

    else
    {
      --v5[4];
    }
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    WTF::fastFree(v6, v3);
  }

  if (*(this + 2) != 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E30CB18);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this, v3);
}

uint64_t WTF::HashTable<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::FastMalloc>::lookup<WTF::HashSetTranslator<WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::DefaultHash<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>>,(WTF::ShouldValidateKey)1,WebCore::ResourceLoader const*>(uint64_t *a1, uint64_t a2)
{
  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19E30CBC4);
  }

  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 - 8);
    v4 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v5 = 9 * ((v4 + ~(v4 << 13)) ^ ((v4 + ~(v4 << 13)) >> 8));
    v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27);
    v7 = v3 & ((v6 >> 31) ^ v6);
    v8 = *(v2 + 8 * v7);
    if (v8 == a2)
    {
      return v2 + 8 * v7;
    }

    v9 = 1;
    while (v8)
    {
      v7 = (v7 + v9) & v3;
      v8 = *(v2 + 8 * v7);
      ++v9;
      if (v8 == a2)
      {
        return v2 + 8 * v7;
      }
    }
  }

  return 0;
}

IPC::Decoder *IPC::Decoder::operator>><std::tuple<WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::Decoder::decode<std::tuple<WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v6, a1);
  std::__optional_storage_base<std::tuple<WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<std::tuple<WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,false>>(a2, v6);
  if (v6[360] == 1)
  {
    std::tuple<WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::~tuple(v6, v4);
  }

  return a1;
}

uint64_t IPC::Decoder::decode<std::tuple<WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a1[360] & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WebCore::ResourceError>(a2, v6);
  if (v6[80])
  {
    IPC::ArgumentCoder<std::tuple<WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder,WebCore::ResourceError>(a1, a2, v6);
  }

  else
  {
    *a1 = 0;
    a1[360] = 0;
  }

  return std::optional<WebCore::ResourceError>::~optional(v6, v4);
}

WebCore::ResourceResponseBase *IPC::ArgumentCoder<std::tuple<WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder,WebCore::ResourceError>(_BYTE *a1, IPC::Decoder *a2, uint64_t a3)
{
  IPC::Decoder::decode<WebCore::ResourceResponse>(a2, v8);
  if (v8[264])
  {
    IPC::ArgumentCoder<std::tuple<WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder,WebCore::ResourceError,WebCore::ResourceResponse>(a1, a2, a3, v8);
  }

  else
  {
    *a1 = 0;
    a1[360] = 0;
  }

  return std::optional<WebCore::ResourceResponse>::~optional(v8, v6);
}

WTF *IPC::ArgumentCoder<std::tuple<WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder,WebCore::ResourceError,WebCore::ResourceResponse>(_BYTE *a1, IPC::Decoder *a2, uint64_t a3, uint64_t a4)
{
  result = IPC::Decoder::decode<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a2, &v9);
  if (v11 == 1)
  {
    result = IPC::ArgumentCoder<std::tuple<WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder,WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a3, a4, &v9);
    if (v11)
    {
      result = v9;
      if (v9)
      {
        v9 = 0;
        v10 = 0;
        return WTF::fastFree(result, v8);
      }
    }
  }

  else
  {
    *a1 = 0;
    a1[360] = 0;
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder,WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 80) & 1) != 0 && (*(a3 + 264) & 1) != 0 && (*(a4 + 16))
  {
    result = _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJN7WebCore13ResourceErrorENS3_16ResourceResponseEN3WTF6VectorIhLm0ENS6_15CrashOnOverflowELm16ENS6_10FastMallocEEEEEC2B8sn200100IJLm0ELm1ELm2EEJS4_S5_SA_EJEJEJS4_S5_SA_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSE_IJDpT2_EEEDpOT3_(result, a2, a3, a4);
    *(result + 360) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJN7WebCore13ResourceErrorENS3_16ResourceResponseEN3WTF6VectorIhLm0ENS6_15CrashOnOverflowELm16ENS6_10FastMallocEEEEEC2B8sn200100IJLm0ELm1ELm2EEJS4_S5_SA_EJEJEJS4_S5_SA_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSE_IJDpT2_EEEDpOT3_(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v7 = WebCore::ResourceError::ResourceError(a1, a2);
  std::__tuple_leaf<0ul,WebCore::ResourceResponse,false>::__tuple_leaf[abi:sn200100]<WebCore::ResourceResponse,0>(v7 + 80, a3);
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 344, a4);
  return a1;
}

uint64_t std::__optional_storage_base<std::tuple<WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<std::tuple<WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,false>>(uint64_t result, uint64_t a2)
{
  if (*(result + 360) == *(a2 + 360))
  {
    if (*(result + 360))
    {

      return std::__memberwise_forward_assign[abi:sn200100]<std::tuple<WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,std::tuple<WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,1ul,2ul>(result, a2);
    }
  }

  else if (*(result + 360))
  {
    result = std::tuple<WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::~tuple(result, a2);
    *(result + 360) = 0;
  }

  else
  {
    result = std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::__tuple_impl(result, a2);
    *(result + 360) = 1;
  }

  return result;
}

uint64_t std::__memberwise_forward_assign[abi:sn200100]<std::tuple<WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,std::tuple<WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,1ul,2ul>(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  WTF::URL::operator=(a1 + 8, (a2 + 1));
  v7 = a2[6];
  a2[6] = 0;
  v8 = *(a1 + 48);
  *(a1 + 48) = v7;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v6);
  }

  v9 = *(a2 + 14);
  *(a1 + 60) = *(a2 + 30);
  *(a1 + 56) = v9;
  v10 = a2[8];
  a2[8] = 0;
  v11 = *(a1 + 64);
  *(a1 + 64) = v10;
  if (v11)
  {
    CFRelease(v11);
  }

  *(a1 + 72) = *(a2 + 72);
  WebCore::ResourceResponseBase::operator=(a1 + 80, (a2 + 10));
  v12 = a2[41];
  a2[41] = 0;
  v13 = *(a1 + 328);
  *(a1 + 328) = v12;
  if (v13)
  {
    CFRelease(v13);
  }

  *(a1 + 336) = *(a2 + 336);

  return WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 344, a2 + 43);
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::__tuple_impl(uint64_t a1, uint64_t *a2)
{
  v4 = WebCore::ResourceError::ResourceError(a1, a2);
  std::__tuple_leaf<0ul,WebCore::ResourceResponse,false>::__tuple_leaf[abi:sn200100]<WebCore::ResourceResponse,0>(v4 + 80, (a2 + 10));
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 344, a2 + 43);
  return a1;
}

uint64_t IPC::ConnectionSendSyncResult<Messages::NetworkConnectionToWebProcess::PerformSynchronousLoad>::ConnectionSendSyncResult(uint64_t a1, IPC::Decoder **a2, uint64_t *a3)
{
  v4 = *a2;
  *a2 = 0;
  v7 = v4;
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::__tuple_impl(v8, a3);
  *a1 = v7;
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::__tuple_impl(a1 + 8, v8);
  *(a1 + 368) = 0;
  std::tuple<WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::~tuple(v8, v5);
  return a1;
}

void WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 && (v2 = *(v1 - 4)) != 0)
  {
    v3 = v2 << (6 * *(v1 - 12) >= (2 * v2));
  }

  else
  {
    v3 = 8;
  }

  WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v3);
}

void WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 12);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = WTF::fastMalloc((16 * a2 + 16));
  v9 = v7;
  v10 = v7 + 16;
  if (a2)
  {
    bzero((v7 + 16), 16 * a2);
  }

  *a1 = v10;
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v6;
  if (v5)
  {
    v11 = 0;
    v12 = v5;
    while (1)
    {
      v13 = (v4 + 16 * v11);
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
            (*(*v26 + 8))(v26);
          }

          *v25 = *v13;
          v27 = v13[1];
          v13[1] = 0;
          v25[1] = v27;
          v15 = v13[1];
          v13[1] = 0;
          if (!v15)
          {
            goto LABEL_21;
          }

LABEL_20:
          (*(*v15 + 8))(v15);
          goto LABEL_21;
        }

        v15 = v13[1];
        v13[1] = 0;
        if (v15)
        {
          goto LABEL_20;
        }
      }

LABEL_21:
      if (++v11 == v12)
      {
        goto LABEL_24;
      }
    }
  }

  if (v4)
  {
LABEL_24:

    WTF::fastFree((v4 - 16), v8);
  }
}

uint64_t WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19E30D348);
  }

  return result;
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, void *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, void *a3)
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

  v9 = WTF::fastMalloc((16 * a2 + 16));
  v11 = v9;
  v12 = v9 + 16;
  if (a2)
  {
    bzero((v9 + 16), 16 * a2);
  }

  *a1 = v12;
  v11[2] = a2 - 1;
  v11[3] = a2;
  *v11 = 0;
  v11[1] = v8;
  v13 = 0;
  if (v7)
  {
    v14 = v7;
    v15 = v6;
    do
    {
      if (*v15)
      {
        if (*v15 != -1)
        {
          v16 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::reinsert(*a1, v15);
          v17 = v15[1];
          v15[1] = 0;
          if (v17)
          {
            (*(*v17 + 8))(v17);
          }

          if (v15 == a3)
          {
            v13 = v16;
          }
        }
      }

      else
      {
        v18 = v15[1];
        v15[1] = 0;
        if (v18)
        {
          (*(*v18 + 8))(v18);
        }
      }

      v15 += 2;
      --v14;
    }

    while (v14);
  }

  else
  {
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v13;
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::reinsert(uint64_t a1, void *a2)
{
  v3 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookupForReinsert<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1, a2);
  v4 = v3[1];
  v3[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *v3 = *a2;
  v5 = a2[1];
  a2[1] = 0;
  v3[1] = v5;
  return v3;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookupForReinsert<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = *(a1 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = WTF::ObjectIdentifierGenericBaseHash<unsigned long long>::hash(a2);
  v5 = 0;
  do
  {
    v6 = v4 & v3;
    v4 = ++v5 + v6;
  }

  while (*(a1 + 16 * v6));
  return a1 + 16 * v6;
}

uint64_t Messages::NetworkConnectionToWebProcess::PreconnectTo::encode<IPC::Encoder>(uint64_t *a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a2, *a1);
  v4 = a1[1];

  return IPC::ArgumentCoder<WebKit::NetworkResourceLoadParameters,void>::encode(a2, v4);
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(uint64_t *a1, void *a2)
{
  if (*a1)
  {
    v2 = (*a1 + 16 * *(*a1 - 4));
    if (v2 == a2)
    {
      return a1;
    }
  }

  else
  {
    if (!a2)
    {
      return a1;
    }

    v2 = 0;
  }

  if (v2 != a2)
  {
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(a1, a2);
  }

  return a1;
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *a1, void *a2)
{
  result = a2[1];
  *a2 = -1;
  a2[1] = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  if (!*a1)
  {
    return 0;
  }

  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1, a2);
  v4 = *a1;
  if (!result)
  {
    if (v4)
    {
      return v4 + 16 * *(v4 - 4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(*a2);
  v4 = *a1;
  if (v4)
  {
    v5 = *(v4 - 8);
    v6 = WTF::ObjectIdentifierGenericBaseHash<unsigned long long>::hash(a2) & v5;
    v7 = *(v4 + 16 * v6);
    if (v7 == *a2)
    {
      return v4 + 16 * v6;
    }

    v9 = 1;
    while (v7)
    {
      v6 = (v6 + v9) & v5;
      v7 = *(v4 + 16 * v6);
      ++v9;
      if (v7 == *a2)
      {
        return v4 + 16 * v6;
      }
    }
  }

  return 0;
}

uint64_t WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19E30D82CLL);
  }

  return result;
}

uint64_t *WTF::Vector<WTF::Function<void ()(BOOL)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::Function<void ()(BOOL)>>(uint64_t a1, unint64_t a2)
{
  result = WTF::Vector<WTF::Function<void ()(BOOL)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *(a1 + 12);
  v5 = *a1;
  v6 = *result;
  *result = 0;
  *(v5 + 8 * v4) = v6;
  *(a1 + 12) = v4 + 1;
  return result;
}

unint64_t WTF::Vector<WTF::Function<void ()(BOOL)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 <= a3 && v5 + 8 * *(a1 + 12) > a3)
  {
    v10 = a3 - v5;
    v11 = *(a1 + 8);
    if (v11 + (v11 >> 1) <= v11 + 1)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = v11 + (v11 >> 1);
    }

    if (v12 <= a2)
    {
      v12 = a2;
    }

    if (v12 <= 0x10)
    {
      v13 = 16;
    }

    else
    {
      v13 = v12;
    }

    WTF::Vector<WTF::Function<void ()(BOOL)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v13);
    return *a1 + v10;
  }

  else
  {
    v6 = *(a1 + 8);
    if (v6 + (v6 >> 1) <= v6 + 1)
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = v6 + (v6 >> 1);
    }

    if (v7 <= a2)
    {
      v7 = a2;
    }

    if (v7 <= 0x10)
    {
      v8 = 16;
    }

    else
    {
      v8 = v7;
    }

    WTF::Vector<WTF::Function<void ()(BOOL)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v8);
  }

  return v3;
}

uint64_t WTF::Vector<WTF::Function<void ()(BOOL)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) < a2)
  {
    v2 = a2;
    if (a2 >> 29)
    {
      __break(0xC471u);
    }

    else
    {
      v3 = result;
      v4 = *result;
      v5 = (*result + 8 * *(result + 12));
      v6 = WTF::fastMalloc((8 * a2));
      *(v3 + 8) = v2;
      *v3 = v6;
      result = WTF::VectorMover<false,WTF::CompletionHandler<void ()(BOOL)>>::move(v4, v5, v6);
      if (v4)
      {
        if (*v3 == v4)
        {
          *v3 = 0;
          *(v3 + 8) = 0;
        }

        return WTF::fastFree(v4, v7);
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkConnectionToWebProcess::IsResourceLoadFinished,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112C860;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkConnectionToWebProcess::IsResourceLoadFinished,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112C860;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkConnectionToWebProcess::IsResourceLoadFinished,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
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

void IPC::Decoder::decode<WebCore::NetworkTransactionInformation>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WebCore::NetworkTransactionInformation,void>::decode(a2, a1);
  if ((*(a1 + 600) & 1) == 0)
  {
    v4 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v5 = *(a2 + 3);
    if (v5 && v4 != 0)
    {
      v7 = *(*v5 + 16);

      v7();
    }
  }
}

void *WTF::Vector<WebCore::SubresourceLoader *,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::map<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebLoaderStrategy::prioritizeResourceLoads(WTF::Vector<WebCore::SubresourceLoader *,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)::$_0>(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  v2 = *(a2 + 12);
  if (v2)
  {
    if (!(v2 >> 29))
    {
      v4 = result;
      result = WTF::fastMalloc((8 * v2));
      *(v4 + 2) = v2;
      *v4 = result;
      if (!*(a2 + 12))
      {
        return result;
      }

      v5 = 0;
      while (1)
      {
        v6 = *(*(*a2 + 8 * v5) + 752);
        if (!v6)
        {
          break;
        }

        result[v5++] = v6;
        if (v5 >= *(a2 + 12))
        {
          *(v4 + 3) = v5;
          return result;
        }
      }

      *(v4 + 3) = v5;
      __break(1u);
    }

    __break(0xC471u);
    JUMPOUT(0x19E30DCACLL);
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t a2)
{
  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19E30DD60);
  }

  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = *(v2 - 8);
  v4 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v5 = 9 * ((v4 + ~(v4 << 13)) ^ ((v4 + ~(v4 << 13)) >> 8));
  v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27);
  v7 = v3 & ((v6 >> 31) ^ v6);
  result = (v2 + 40 * v7);
  v9 = *result;
  if (*result != a2)
  {
    v10 = 1;
    while (v9)
    {
      v7 = (v7 + v10) & v3;
      result = (v2 + 40 * v7);
      v9 = *result;
      ++v10;
      if (*result == a2)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

void WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 && (v2 = *(v1 - 4)) != 0)
  {
    v3 = v2 << (6 * *(v1 - 12) >= (2 * v2));
  }

  else
  {
    v3 = 8;
  }

  WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v3);
}

void WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 12);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = WTF::fastMalloc((40 * a2 + 16));
  v9 = v7;
  v10 = v7 + 16;
  if (a2)
  {
    bzero((v7 + 16), 40 * a2);
  }

  *a1 = v10;
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v6;
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v12 = (v4 + 40 * i);
      v13 = *v12;
      if (*v12 != -1)
      {
        if (v13)
        {
          v14 = *a1;
          if (*a1)
          {
            v15 = *(v14 - 8);
          }

          else
          {
            v15 = 0;
          }

          v16 = (v13 + ~(v13 << 32)) ^ ((v13 + ~(v13 << 32)) >> 22);
          v17 = 9 * ((v16 + ~(v16 << 13)) ^ ((v16 + ~(v16 << 13)) >> 8));
          v18 = (v17 ^ (v17 >> 15)) + ~((v17 ^ (v17 >> 15)) << 27);
          v19 = v15 & ((v18 >> 31) ^ v18);
          v20 = 1;
          do
          {
            v21 = v14 + 40 * v19;
            v19 = (v19 + v20++) & v15;
          }

          while (*v21);
          WTF::Deque<WTF::Function<void ()(void)>,0ul>::~Deque((v21 + 8), v8);
          *v21 = *v12;
          *(v21 + 8) = 0u;
          *(v21 + 24) = 0u;
          *(v21 + 8) = v12[1];
          v12[1] = 0;
          v22 = *(v21 + 16);
          v23 = v12[3];
          *(v21 + 16) = v12[2];
          *(v21 + 24) = v23;
          v12[2] = v22;
          v12[3] = 0;
          *(v21 + 32) = *(v12 + 8);
          *(v12 + 8) = 0;
          WTF::Deque<WTF::Function<void ()(void)>,0ul>::~Deque(v12 + 1, v24);
        }

        else
        {
          WTF::Deque<WTF::Function<void ()(void)>,0ul>::~Deque(v12 + 1, v8);
        }
      }
    }
  }

  else if (!v4)
  {
    return;
  }

  WTF::fastFree((v4 - 16), v8);
}

void WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *a1, void *a2)
{
  *a2 = -1;
  WTF::Deque<WTF::Function<void ()(void)>,0ul>::~Deque(a2 + 1, a2 + 1);
  v3 = *a1;
  v4 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v3 - 16) = v4;
  v5 = *(v3 - 4);
  if (6 * v4.i32[1] < v5 && v5 >= 9)
  {

    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5 >> 1);
  }
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19E30E0D8);
  }

  v2 = *(a1 - 8);
  v3 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v4 = 9 * ((v3 + ~(v3 << 13)) ^ ((v3 + ~(v3 << 13)) >> 8));
  v5 = (v4 ^ (v4 >> 15)) + ~((v4 ^ (v4 >> 15)) << 27);
  v6 = v2 & ((v5 >> 31) ^ v5);
  v7 = (a1 + 40 * v6);
  v8 = *v7;
  if (*v7 != a2)
  {
    v9 = 1;
    while (v8)
    {
      v6 = (v6 + v9) & v2;
      v7 = (a1 + 40 * v6);
      v8 = *v7;
      ++v9;
      if (*v7 == a2)
      {
        return v7;
      }
    }

    return (a1 + 40 * *(a1 - 4));
  }

  return v7;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoader::willSendRequest(WebCore::ResourceRequest &&,IPC::FormDataReference &&,WebCore::ResourceResponse &&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &,BOOL)> &&)::$_0,void,WebCore::ResourceRequest &>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F112C888;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[2];
  a1[2] = 0;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoader::willSendRequest(WebCore::ResourceRequest &&,IPC::FormDataReference &&,WebCore::ResourceResponse &&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &,BOOL)> &&)::$_0,void,WebCore::ResourceRequest &>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112C888;
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
    if (v4[2] == 1)
    {
      (*(*v4 + 8))(v4);
    }

    else
    {
      --v4[2];
    }
  }

  return WTF::fastFree(this, a2);
}

void WebKit::WebResourceLoader::willSendRequest(WebCore::ResourceRequest &&,IPC::FormDataReference &&,WebCore::ResourceResponse &&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &,BOOL)> &&)::$_0::operator()(WebCore *a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4)
  {
    ++*(v4 + 16);
    if (*(v4 + 752))
    {
      v6 = WebCore::logClient(a1);
      v7 = WTF::downcast<WebKit::LogClient,WebCore::LogClient>(*v6);
      if (v7)
      {
        if (*(v3 + 56) == 1)
        {
          v8 = *(v3 + 32);
          v9 = *(v3 + 40);
          v10 = *(v3 + 48);
        }

        else
        {
          v9 = 0;
          v8 = 0;
          v10 = 0;
        }

        WebKit::LogClient::WEBRESOURCELOADER_WILLSENDREQUEST_CONTINUE(v7, v8, v9, v10);
      }

      else
      {
        v18 = qword_1ED6416F0;
        if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v3 + 56) == 1)
          {
            v20 = *(v3 + 32);
            v19 = *(v3 + 40);
            v21 = *(v3 + 48);
          }

          else
          {
            v19 = 0;
            v20 = 0;
            v21 = 0;
          }

          v27 = 134218496;
          v28 = v20;
          v29 = 2048;
          v30 = v19;
          v31 = 2048;
          v32 = v21;
          _os_log_impl(&dword_19D52D000, v18, OS_LOG_TYPE_DEFAULT, "[webPageID=%llu, frameID=%llu, resourceID=%llu] WebResourceLoader::willSendRequest: returning ContinueWillSendRequest", &v27, 0x20u);
        }
      }

      isAllowedToAskUserForCredentials = WebCore::ResourceLoader::isAllowedToAskUserForCredentials(v4);
      v12 = *(a1 + 2);
      *(a1 + 2) = 0;
      (*(*v12 + 16))(v12, a2, isAllowedToAskUserForCredentials);
      (*(*v12 + 8))(v12);
LABEL_8:
      if (*(v4 + 16) == 1)
      {
        (*(*v4 + 8))(v4);
      }

      else
      {
        --*(v4 + 16);
      }

      return;
    }
  }

  v13 = WebCore::logClient(a1);
  v14 = WTF::downcast<WebKit::LogClient,WebCore::LogClient>(*v13);
  if (v14)
  {
    if (*(v3 + 56) == 1)
    {
      v15 = *(v3 + 32);
      v16 = *(v3 + 40);
      v17 = *(v3 + 48);
    }

    else
    {
      v16 = 0;
      v15 = 0;
      v17 = 0;
    }

    WebKit::LogClient::WEBRESOURCELOADER_WILLSENDREQUEST_NO_CORELOADER(v14, v15, v16, v17);
  }

  else
  {
    v22 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v3 + 56) == 1)
      {
        v24 = *(v3 + 32);
        v23 = *(v3 + 40);
        v25 = *(v3 + 48);
      }

      else
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
      }

      v27 = 134218496;
      v28 = v24;
      v29 = 2048;
      v30 = v23;
      v31 = 2048;
      v32 = v25;
      _os_log_impl(&dword_19D52D000, v22, OS_LOG_TYPE_DEFAULT, "[webPageID=%llu, frameID=%llu, resourceID=%llu] WebResourceLoader::willSendRequest: exiting early because no coreloader or identifier", &v27, 0x20u);
    }
  }

  WebCore::ResourceRequest::ResourceRequest(&v27);
  v26 = *(a1 + 2);
  *(a1 + 2) = 0;
  (*(*v26 + 16))(v26, &v27, 0);
  (*(*v26 + 8))(v26);
  WebCore::ResourceRequest::~ResourceRequest(&v27);
  if (v4)
  {
    goto LABEL_8;
  }
}

void WebKit::LogClient::WEBRESOURCELOADER_WILLSENDREQUEST_NO_CORELOADER(os_unfair_lock_s *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock(this + 4);
  v9 = *&this[2]._os_unfair_lock_opaque;
  v10 = *&this[6]._os_unfair_lock_opaque;
  v11 = *(v9 + 128);
  v12 = INFINITY;
  if (fabs(v11) != INFINITY)
  {
    WTF::ApproximateTime::now(v8);
    v12 = v11 + v13;
  }

  if (*(v9 + 64) == v10)
  {
    goto LABEL_4;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, &v55, v12);
  if (v57 == 1)
  {
    v30 = v56;
    if (v56 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E30E984);
    }

    v31 = v55;
    *v55 = 3198;
    v32 = v31 + 1;
    if (v30 - 2 >= (-v32 & 7 | 8uLL))
    {
      v33 = -v32 & 7;
      *(v32 + v33) = v10;
      if (v33 != 7)
      {
        v33 = 6;
      }

      v34 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v36 = *(v9 + 72);
      v35 = *(v9 + 80);
      v37 = v33 + 10;
      if (v34 + 16 >= v36)
      {
        v34 = 0;
      }

      v38 = v37 + v34;
      if (v36 <= v38)
      {
        v38 = 0;
      }

      *(v9 + 88) = v38;
      if (*(v35 + 8) <= 0xFFuLL)
      {
        goto LABEL_54;
      }

      v39 = atomic_exchange((*(v35 + 16) + 128), v38);
      v40 = *(v9 + 124);
      if (v39 == 0x80000000 || v40 != 0)
      {
        v42 = v40 + 1;
        *(v9 + 124) = v42;
        if (v42 >= *(v9 + 120))
        {
          if (*(v9 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v9 + 100));
          }

          *(v9 + 124) = 0;
        }
      }

      *(v9 + 64) = v10;
LABEL_4:
      IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, &v55, v12);
      if (v57 != 1)
      {
        goto LABEL_21;
      }

      v15 = v56;
      if (v56 <= 1)
      {
        __break(0xC471u);
        goto LABEL_55;
      }

      v16 = v55;
      *v55 = 326;
      v17 = v16 + 1;
      v18 = -v17 & 7 | 8;
      v19 = v15 - 2 - v18;
      if (v15 - 2 >= v18)
      {
        *(v17 + (-v17 & 7)) = a2;
        v20 = v17 + v18;
        v21 = -v20 & 7 | 8;
        v22 = v19 - v21;
        if (v19 >= v21)
        {
          *(v20 + (-v20 & 7)) = a3;
          v23 = v20 + v21;
          v24 = -v23 & 7 | 8;
          if (v22 >= v24)
          {
            *(v23 + (-v23 & 7)) = a4;
            v25 = v15 - v22 + v24;
            if (v25 <= 0x10)
            {
              v25 = 16;
            }

            v26 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v27 = *(v9 + 72);
            if (v26 + 16 >= v27)
            {
              v26 = 0;
            }

            v28 = v26 + v25;
            if (v27 <= v28)
            {
              v28 = 0;
            }

            *(v9 + 88) = v28;
            v29 = *(v9 + 80);
            if (*(v29 + 8) > 0xFFuLL)
            {
              if (atomic_exchange((*(v29 + 16) + 128), v28) == 0x80000000 || *(v9 + 124))
              {
                if (*(v9 + 112) == 1)
                {
                  MEMORY[0x19EB16320](*(v9 + 100));
                }

                *(v9 + 124) = 0;
              }

              goto LABEL_21;
            }

            goto LABEL_54;
          }
        }
      }

      v54 = v10;
      if (v57)
      {
        if (v56 <= 1)
        {
          __break(0xC471u);
        }

        else
        {
          *v55 = 3197;
          v43 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v44 = *(v9 + 72);
          if (v43 + 16 >= v44)
          {
            v43 = 0;
          }

          v45 = v43 + 16;
          if (v44 <= v45)
          {
            v46 = 0;
          }

          else
          {
            v46 = v45;
          }

          *(v9 + 88) = v46;
          v47 = *(v9 + 80);
          if (*(v47 + 8) > 0xFFuLL)
          {
            atomic_exchange((*(v47 + 16) + 128), v46);
            *(v9 + 124) = 0;
            v48 = *(v9 + 8);
            v49 = IPC::Encoder::operator new(0x238, v14);
            *v49 = 326;
            *(v49 + 2) = 0;
            *(v49 + 3) = 0;
            *(v49 + 1) = v54;
            *(v49 + 68) = 0;
            *(v49 + 70) = 0;
            *(v49 + 69) = 0;
            IPC::Encoder::encodeHeader(v49);
            v58 = v49;
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v49, a2);
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v49, a3);
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v49, a4);
            IPC::Connection::sendMessageImpl(v48, &v58, 1, 0);
            v51 = v58;
            v58 = 0;
            if (v51)
            {
              IPC::Encoder::~Encoder(v51, v50);
              bmalloc::api::tzoneFree(v52, v53);
            }

            goto LABEL_21;
          }
        }
      }

LABEL_54:
      __break(1u);
LABEL_55:
      JUMPOUT(0x19E30E95CLL);
    }
  }

LABEL_21:
  os_unfair_lock_unlock(this + 4);
}

void WebKit::LogClient::WEBRESOURCELOADER_WILLSENDREQUEST_CONTINUE(WebKit::LogClient *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock(this + 4);
  v8 = *(this + 1);
  v9[0] = a2;
  v9[1] = a3;
  v9[2] = a4;
  IPC::StreamClientConnection::send<Messages::LogStream::WEBRESOURCELOADER_WILLSENDREQUEST_CONTINUE,WebKit::LogStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v8, v9, *(this + 3));
  os_unfair_lock_unlock(this + 4);
}

uint64_t IPC::StreamClientConnection::send<Messages::LogStream::WEBRESOURCELOADER_WILLSENDREQUEST_CONTINUE,WebKit::LogStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  result = IPC::StreamClientConnection::trySendDestinationIDIfNeeded(a1, a3, v7);
  if (!result)
  {
    result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v10, v7);
    if (v12 == 1)
    {
      result = IPC::StreamClientConnection::trySendStream<Messages::LogStream::WEBRESOURCELOADER_WILLSENDREQUEST_CONTINUE>(a1, v10, v11, a2);
      if ((result & 1) == 0)
      {
        if (v12)
        {
          IPC::StreamClientConnection::sendProcessOutOfStreamMessage(a1, v10, v11);
          return IPC::Connection::send<Messages::LogStream::WEBRESOURCELOADER_WILLSENDREQUEST_CONTINUE>(*(a1 + 8), a2, a3);
        }

        else
        {
          __break(1u);
        }
      }
    }
  }

  return result;
}

uint64_t IPC::StreamClientConnection::trySendStream<Messages::LogStream::WEBRESOURCELOADER_WILLSENDREQUEST_CONTINUE>(uint64_t a1, _WORD *a2, unint64_t a3, void *a4)
{
  v9 = a3;
  if (a3 <= 1)
  {
    result = 1067;
    __break(0xC471u);
  }

  else
  {
    *a2 = 325;
    v7 = a2 + 1;
    v8 = a3 - 2;
    Messages::LogStream::REMOTE_RENDERING_BACKEND_PROXY_CREATED_RENDERING_BACKEND::encode<IPC::StreamConnectionEncoder>(a4, &v7);
    v5 = v7;
    if (v7 && ((IPC::StreamClientConnectionBuffer::release((a1 + 72), v9 - v8) & 1) != 0 || *(a1 + 124)))
    {
      if (*(a1 + 112) == 1)
      {
        MEMORY[0x19EB16320](*(a1 + 100));
      }

      *(a1 + 124) = 0;
    }

    return v5 != 0;
  }

  return result;
}

uint64_t IPC::Connection::send<Messages::LogStream::WEBRESOURCELOADER_WILLSENDREQUEST_CONTINUE>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 325;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, a2[1]);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, a2[2]);
  v8 = IPC::Connection::sendMessageImpl(a1, &v13, 1, 0);
  v9 = v13;
  v13 = 0;
  if (v9)
  {
    IPC::Encoder::~Encoder(v9, v7);
    bmalloc::api::tzoneFree(v11, v12);
  }

  return v8;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoader::didReceiveResponse(WebCore::ResourceResponse &&,WebKit::PrivateRelayed,BOOL,std::optional<WebCore::NetworkLoadMetrics> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F112C8B0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    if (v2[2] == 1)
    {
      (*(*v2 + 8))(v2);
    }

    else
    {
      --v2[2];
    }
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoader::didReceiveResponse(WebCore::ResourceResponse &&,WebKit::PrivateRelayed,BOOL,std::optional<WebCore::NetworkLoadMetrics> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112C8B0;
  v3 = *(this + 2);
  *(this + 2) = 0;
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

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::WebResourceLoader::didReceiveResponse(WebCore::ResourceResponse &&,WebKit::PrivateRelayed,BOOL,std::optional<WebCore::NetworkLoadMetrics> &&)::$_0,void>::call(WebCore *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 1);
  v2 = v1[2];
  if (v2)
  {
    ++*(v2 + 16);
    if (*(v2 + 752))
    {
      v3 = (*(*v1 + 56))(v1);
      v5 = IPC::Encoder::operator new(0x238, v4);
      *v5 = 744;
      *(v5 + 2) = 0;
      *(v5 + 3) = 0;
      *(v5 + 1) = v3;
      *(v5 + 68) = 0;
      *(v5 + 70) = 0;
      *(v5 + 69) = 0;
      IPC::Encoder::encodeHeader(v5);
      *v19 = v5;
      (*(*v1 + 32))(v1, v19, 0);
      v7 = *v19;
      *v19 = 0;
      if (v7)
      {
        IPC::Encoder::~Encoder(v7, v6);
        bmalloc::api::tzoneFree(v8, v9);
      }

LABEL_5:
      if (*(v2 + 16) == 1)
      {
        (*(*v2 + 8))(v2);
      }

      else
      {
        --*(v2 + 16);
      }

      return;
    }
  }

  v10 = WebCore::logClient(a1);
  v11 = WTF::downcast<WebKit::LogClient,WebCore::LogClient>(*v10);
  if (v11)
  {
    if (*(v1 + 56) == 1)
    {
      v12 = v1[4];
      v13 = v1[5];
      v14 = v1[6];
    }

    else
    {
      v13 = 0;
      v12 = 0;
      v14 = 0;
    }

    WebKit::LogClient::WEBRESOURCELOADER_DIDRECEIVERESPONSE_NOT_CONTINUING_LOAD(v11, v12, v13, v14);
  }

  else
  {
    v15 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v1 + 56) == 1)
      {
        v17 = v1[4];
        v16 = v1[5];
        v18 = v1[6];
      }

      else
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
      }

      *v19 = 134218496;
      *&v19[4] = v17;
      v20 = 2048;
      v21 = v16;
      v22 = 2048;
      v23 = v18;
      _os_log_impl(&dword_19D52D000, v15, OS_LOG_TYPE_DEFAULT, "[webPageID=%llu, frameID=%llu, resourceID=%llu] WebResourceLoader::didReceiveResponse: not continuing load because no coreLoader or no ID", v19, 0x20u);
    }
  }

  if (v2)
  {
    goto LABEL_5;
  }
}

void WebKit::LogClient::WEBRESOURCELOADER_DIDRECEIVERESPONSE_NOT_CONTINUING_LOAD(os_unfair_lock_s *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock(this + 4);
  v9 = *&this[2]._os_unfair_lock_opaque;
  v10 = *&this[6]._os_unfair_lock_opaque;
  v11 = *(v9 + 128);
  v12 = INFINITY;
  if (fabs(v11) != INFINITY)
  {
    WTF::ApproximateTime::now(v8);
    v12 = v11 + v13;
  }

  if (*(v9 + 64) == v10)
  {
    goto LABEL_4;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, &v55, v12);
  if (v57 == 1)
  {
    v30 = v56;
    if (v56 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E30F370);
    }

    v31 = v55;
    *v55 = 3198;
    v32 = v31 + 1;
    if (v30 - 2 >= (-v32 & 7 | 8uLL))
    {
      v33 = -v32 & 7;
      *(v32 + v33) = v10;
      if (v33 != 7)
      {
        v33 = 6;
      }

      v34 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v36 = *(v9 + 72);
      v35 = *(v9 + 80);
      v37 = v33 + 10;
      if (v34 + 16 >= v36)
      {
        v34 = 0;
      }

      v38 = v37 + v34;
      if (v36 <= v38)
      {
        v38 = 0;
      }

      *(v9 + 88) = v38;
      if (*(v35 + 8) <= 0xFFuLL)
      {
        goto LABEL_54;
      }

      v39 = atomic_exchange((*(v35 + 16) + 128), v38);
      v40 = *(v9 + 124);
      if (v39 == 0x80000000 || v40 != 0)
      {
        v42 = v40 + 1;
        *(v9 + 124) = v42;
        if (v42 >= *(v9 + 120))
        {
          if (*(v9 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v9 + 100));
          }

          *(v9 + 124) = 0;
        }
      }

      *(v9 + 64) = v10;
LABEL_4:
      IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, &v55, v12);
      if (v57 != 1)
      {
        goto LABEL_21;
      }

      v15 = v56;
      if (v56 <= 1)
      {
        __break(0xC471u);
        goto LABEL_55;
      }

      v16 = v55;
      *v55 = 321;
      v17 = v16 + 1;
      v18 = -v17 & 7 | 8;
      v19 = v15 - 2 - v18;
      if (v15 - 2 >= v18)
      {
        *(v17 + (-v17 & 7)) = a2;
        v20 = v17 + v18;
        v21 = -v20 & 7 | 8;
        v22 = v19 - v21;
        if (v19 >= v21)
        {
          *(v20 + (-v20 & 7)) = a3;
          v23 = v20 + v21;
          v24 = -v23 & 7 | 8;
          if (v22 >= v24)
          {
            *(v23 + (-v23 & 7)) = a4;
            v25 = v15 - v22 + v24;
            if (v25 <= 0x10)
            {
              v25 = 16;
            }

            v26 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v27 = *(v9 + 72);
            if (v26 + 16 >= v27)
            {
              v26 = 0;
            }

            v28 = v26 + v25;
            if (v27 <= v28)
            {
              v28 = 0;
            }

            *(v9 + 88) = v28;
            v29 = *(v9 + 80);
            if (*(v29 + 8) > 0xFFuLL)
            {
              if (atomic_exchange((*(v29 + 16) + 128), v28) == 0x80000000 || *(v9 + 124))
              {
                if (*(v9 + 112) == 1)
                {
                  MEMORY[0x19EB16320](*(v9 + 100));
                }

                *(v9 + 124) = 0;
              }

              goto LABEL_21;
            }

            goto LABEL_54;
          }
        }
      }

      v54 = v10;
      if (v57)
      {
        if (v56 <= 1)
        {
          __break(0xC471u);
        }

        else
        {
          *v55 = 3197;
          v43 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v44 = *(v9 + 72);
          if (v43 + 16 >= v44)
          {
            v43 = 0;
          }

          v45 = v43 + 16;
          if (v44 <= v45)
          {
            v46 = 0;
          }

          else
          {
            v46 = v45;
          }

          *(v9 + 88) = v46;
          v47 = *(v9 + 80);
          if (*(v47 + 8) > 0xFFuLL)
          {
            atomic_exchange((*(v47 + 16) + 128), v46);
            *(v9 + 124) = 0;
            v48 = *(v9 + 8);
            v49 = IPC::Encoder::operator new(0x238, v14);
            *v49 = 321;
            *(v49 + 2) = 0;
            *(v49 + 3) = 0;
            *(v49 + 1) = v54;
            *(v49 + 68) = 0;
            *(v49 + 70) = 0;
            *(v49 + 69) = 0;
            IPC::Encoder::encodeHeader(v49);
            v58 = v49;
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v49, a2);
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v49, a3);
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v49, a4);
            IPC::Connection::sendMessageImpl(v48, &v58, 1, 0);
            v51 = v58;
            v58 = 0;
            if (v51)
            {
              IPC::Encoder::~Encoder(v51, v50);
              bmalloc::api::tzoneFree(v52, v53);
            }

            goto LABEL_21;
          }
        }
      }

LABEL_54:
      __break(1u);
LABEL_55:
      JUMPOUT(0x19E30F348);
    }
  }

LABEL_21:
  os_unfair_lock_unlock(this + 4);
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoader::didReceiveResponse(WebCore::ResourceResponse &&,WebKit::PrivateRelayed,BOOL,std::optional<WebCore::NetworkLoadMetrics> &&)::$_1,void,WebCore::ResourceResponse const&,WTF::RefPtr<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::ResourceResponse const&>,WTF::DefaultRefDerefTraits<WebCore::ResourceResponse const&>>>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F112C8D8;
  v2 = a1[4];
  a1[4] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[2];
  a1[2] = 0;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoader::didReceiveResponse(WebCore::ResourceResponse &&,WebKit::PrivateRelayed,BOOL,std::optional<WebCore::NetworkLoadMetrics> &&)::$_1,void,WebCore::ResourceResponse const&,WTF::RefPtr<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::ResourceResponse const&>,WTF::DefaultRefDerefTraits<WebCore::ResourceResponse const&>>>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112C8D8;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
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

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::WebResourceLoader::didReceiveResponse(WebCore::ResourceResponse &&,WebKit::PrivateRelayed,BOOL,std::optional<WebCore::NetworkLoadMetrics> &&)::$_1,void,WebCore::ResourceResponse const&,WTF::RefPtr<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::ResourceResponse const&>,WTF::DefaultRefDerefTraits<WebCore::ResourceResponse const&>>>::call(WebCore *a1, const WebCore::ResourceResponse *a2, unsigned int **a3)
{
  v74 = *MEMORY[0x1E69E9840];
  v4 = *a3;
  *a3 = 0;
  v5 = *(a1 + 1);
  v6 = *(v5 + 16);
  if (!v6 || (++v6[4], !*(v6 + 94)))
  {
    v13 = WebCore::logClient(a1);
    v14 = *v13;
    if (!*v13)
    {
      v41 = qword_1ED6416F0;
      if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v5 + 56) == 1)
        {
          v43 = *(v5 + 32);
          v42 = *(v5 + 40);
          v44 = *(v5 + 48);
        }

        else
        {
          v42 = 0;
          v43 = 0;
          v44 = 0;
        }

        *buf = 134218496;
        *&buf[4] = v43;
        *&buf[12] = 2048;
        *&buf[14] = v42;
        v71 = 2048;
        v72 = v44;
        _os_log_impl(&dword_19D52D000, v41, OS_LOG_TYPE_DEFAULT, "[webPageID=%llu, frameID=%llu, resourceID=%llu] WebResourceLoader::didReceiveResponse: not continuing intercept load because no coreLoader or no ID", buf, 0x20u);
      }

LABEL_34:
      WebKit::WebResourceInterceptController::continueResponse((v5 + 64), *(a1 + 3));
      if (!v6)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    if ((*(*v14 + 24))(*v13))
    {
      if (*(v5 + 56) == 1)
      {
        v16 = *(v5 + 32);
        v15 = *(v5 + 40);
        v17 = *(v5 + 48);
      }

      else
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
      }

      os_unfair_lock_lock((v14 + 16));
      v19 = *(v14 + 8);
      v20 = *(v14 + 24);
      v21 = *(v19 + 128);
      v22 = INFINITY;
      if (fabs(v21) != INFINITY)
      {
        WTF::ApproximateTime::now(v18);
        v22 = v21 + v23;
      }

      if (*(v19 + 64) != v20)
      {
        v24 = IPC::StreamClientConnectionBuffer::tryAcquire(v19 + 72, buf, v22);
        if (buf[16] != 1)
        {
          goto LABEL_33;
        }

        v45 = *&buf[8];
        if (*&buf[8] <= 1uLL)
        {
          __break(0xC471u);
          JUMPOUT(0x19E30FBD4);
        }

        v46 = *buf;
        **buf = 3198;
        v47 = v46 + 2;
        if (v45 - 2 < (-v47 & 7 | 8uLL))
        {
          goto LABEL_33;
        }

        v48 = -v47 & 7;
        *(v47 + v48) = v20;
        v49 = 6;
        if (v48 > 6)
        {
          v49 = v48;
        }

        v50 = v49 + 10;
        v51 = (*(v19 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v52 = *(v19 + 72);
        if (v51 + 16 >= v52)
        {
          v51 = 0;
        }

        v53 = v50 + v51;
        if (v52 <= v53)
        {
          v53 = 0;
        }

        *(v19 + 88) = v53;
        v54 = *(v19 + 80);
        if (*(v54 + 8) <= 0xFFuLL)
        {
          goto LABEL_77;
        }

        v55 = atomic_exchange((*(v54 + 16) + 128), v53);
        v56 = *(v19 + 124);
        if (v55 == 0x80000000 || v56 != 0)
        {
          v58 = v56 + 1;
          *(v19 + 124) = v58;
          if (v58 >= *(v19 + 120))
          {
            if (*(v19 + 112) == 1)
            {
              MEMORY[0x19EB16320](*(v19 + 100));
            }

            *(v19 + 124) = 0;
          }
        }

        *(v19 + 64) = v20;
      }

      v24 = IPC::StreamClientConnectionBuffer::tryAcquire(v19 + 72, buf, v22);
      if (buf[16] != 1)
      {
LABEL_33:
        os_unfair_lock_unlock((v14 + 16));
        goto LABEL_34;
      }

      v26 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
        __break(0xC471u);
        JUMPOUT(0x19E30FBACLL);
      }

      v27 = *buf;
      **buf = 320;
      v28 = v27 + 2;
      v29 = -v28 & 7 | 8;
      v30 = v26 - 2 - v29;
      if (v26 - 2 >= v29)
      {
        *(v28 + (-v28 & 7)) = v16;
        v31 = v28 + v29;
        v32 = -v31 & 7 | 8;
        v33 = v30 - v32;
        if (v30 >= v32)
        {
          *(v31 + (-v31 & 7)) = v15;
          v34 = v31 + v32;
          v35 = -v34 & 7 | 8;
          if (v33 >= v35)
          {
            *(v34 + (-v34 & 7)) = v17;
            v36 = v26 - v33 + v35;
            if (v36 <= 0x10)
            {
              v36 = 16;
            }

            v37 = (*(v19 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v38 = *(v19 + 72);
            if (v37 + 16 >= v38)
            {
              v37 = 0;
            }

            v39 = v37 + v36;
            if (v38 <= v39)
            {
              v39 = 0;
            }

            *(v19 + 88) = v39;
            v40 = *(v19 + 80);
            if (*(v40 + 8) > 0xFFuLL)
            {
              if (atomic_exchange((*(v40 + 16) + 128), v39) == 0x80000000 || *(v19 + 124))
              {
                if (*(v19 + 112) == 1)
                {
                  MEMORY[0x19EB16320](*(v19 + 100));
                }

                *(v19 + 124) = 0;
              }

              goto LABEL_33;
            }

            goto LABEL_77;
          }
        }
      }

      v68 = v5;
      if ((buf[16] & 1) == 0)
      {
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      if (*&buf[8] > 1uLL)
      {
        **buf = 3197;
        v59 = (*(v19 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v60 = *(v19 + 72);
        if (v59 + 16 >= v60)
        {
          v59 = 0;
        }

        v61 = v59 + 16;
        if (v60 <= v61)
        {
          v62 = 0;
        }

        else
        {
          v62 = v61;
        }

        *(v19 + 88) = v62;
        v63 = *(v19 + 80);
        if (*(v63 + 8) > 0xFFuLL)
        {
          atomic_exchange((*(v63 + 16) + 128), v62);
          *(v19 + 124) = 0;
          v64 = *(v19 + 8);
          v65 = IPC::Encoder::operator new(0x238, v25);
          *v65 = 320;
          *(v65 + 2) = 0;
          *(v65 + 3) = 0;
          *(v65 + 1) = v20;
          *(v65 + 68) = 0;
          *(v65 + 70) = 0;
          *(v65 + 69) = 0;
          IPC::Encoder::encodeHeader(v65);
          v69 = v65;
          IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v65, v16);
          IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v65, v15);
          IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v65, v17);
          IPC::Connection::sendMessageImpl(v64, &v69, 1, 0);
          v24 = v69;
          v69 = 0;
          if (!v24)
          {
LABEL_76:
            v5 = v68;
            goto LABEL_33;
          }

LABEL_78:
          IPC::Encoder::~Encoder(v24, v25);
          bmalloc::api::tzoneFree(v66, v67);
          goto LABEL_76;
        }

        goto LABEL_77;
      }

      __break(0xC471u);
    }

    else
    {
      __break(0xC471u);
    }

    JUMPOUT(0x19E30FB8CLL);
  }

  WebCore::ResourceResponse::ResourceResponse(buf, a2);
  ++*(v5 + 8);
  v7 = *(a1 + 3);
  v8 = *(a1 + 4);
  *(a1 + 4) = 0;
  v9 = WTF::fastMalloc(0x30);
  *v9 = &unk_1F112C900;
  *(v9 + 1) = v5;
  *(v9 + 2) = v5;
  *(v9 + 3) = v7;
  *(v9 + 4) = v8;
  *(v9 + 5) = v4;
  v69 = v9;
  (*(*v6 + 208))(v6, buf, &v69);
  v11 = v69;
  v69 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = cf;
  cf = 0;
  if (v12)
  {
    CFRelease(v12);
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(buf, v10);
  v4 = 0;
LABEL_35:
  if (v6[4] == 1)
  {
    (*(*v6 + 8))(v6);
    if (!v4)
    {
      return;
    }

    goto LABEL_38;
  }

  --v6[4];
LABEL_37:
  if (!v4)
  {
    return;
  }

LABEL_38:
  if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoader::didReceiveResponse(WebCore::ResourceResponse &&,WebKit::PrivateRelayed,BOOL,std::optional<WebCore::NetworkLoadMetrics> &&)::$_1::operator()(WebCore::ResourceResponse const&,WTF::RefPtr<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::ResourceResponse const&>,WTF::DefaultRefDerefTraits<WebCore::ResourceResponse const&>>)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F112C900;
  v2 = a1[5];
  a1[5] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[2];
  a1[2] = 0;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoader::didReceiveResponse(WebCore::ResourceResponse &&,WebKit::PrivateRelayed,BOOL,std::optional<WebCore::NetworkLoadMetrics> &&)::$_1::operator()(WebCore::ResourceResponse const&,WTF::RefPtr<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::ResourceResponse const&>,WTF::DefaultRefDerefTraits<WebCore::ResourceResponse const&>>)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112C900;
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    if (v5[2] == 1)
    {
      (*(*v5 + 8))(v5);
    }

    else
    {
      --v5[2];
    }
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::WebResourceLoader::didReceiveResponse(WebCore::ResourceResponse &&,WebKit::PrivateRelayed,BOOL,std::optional<WebCore::NetworkLoadMetrics> &&)::$_1::operator()(WebCore::ResourceResponse const&,WTF::RefPtr<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::ResourceResponse const&>,WTF::DefaultRefDerefTraits<WebCore::ResourceResponse const&>>)::{lambda(void)#1},void>::call(void *a1)
{
  v2 = a1[1];
  v3 = *(v2 + 16);
  if (v3)
  {
    ++v3[4];
  }

  v4 = a1[4];
  v5 = v3;
  if (v4)
  {
    a1[4] = 0;
    (*(*v4 + 16))(v4);
    (*(*v4 + 8))(v4);
    v5 = *(v2 + 16);
  }

  if (!v5)
  {
    WebKit::WebResourceInterceptController::continueResponse((v2 + 64), a1[3]);
    if (!v3)
    {
      return;
    }

    goto LABEL_27;
  }

  if (*(v3 + 94))
  {
    v6 = a1[3];
    if (a1[5])
    {
      v7 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(*(v2 + 64), v6);
      v8 = *(v2 + 64);
      if (v8)
      {
        v9 = (v8 + 40 * *(v8 - 4));
        if (v9 == v7)
        {
LABEL_19:
          v10 = a1[5];
          if (v10[14])
          {
            a1[5] = 0;
            (*(*v3 + 224))(v3, v10);
            if (atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v10 + 2);
              (*(*v10 + 8))(v10);
            }
          }

          WebCore::NetworkLoadMetrics::NetworkLoadMetrics(v14);
          (*(*v3 + 232))(v3, v14);
          v12 = v16;
          v16 = 0;
          if (v12)
          {
            WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v12, v11);
          }

          v13 = v15;
          v15 = 0;
          if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v13, v11);
          }

          goto LABEL_27;
        }
      }

      else
      {
        if (!v7)
        {
          goto LABEL_19;
        }

        v9 = 0;
      }

      if (v9 != v7)
      {
        WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove((v2 + 64), v7);
      }

      goto LABEL_19;
    }
  }

  else
  {
    v6 = a1[3];
  }

  WebKit::WebResourceInterceptController::continueResponse((v2 + 64), v6);
LABEL_27:
  if (v3[4] == 1)
  {
    (*(*v3 + 8))(v3);
  }

  else
  {
    --v3[4];
  }
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoader::didReceiveData(IPC::SharedBufferReference &&,unsigned long long)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F112C928;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v2);
  }

  v3 = a1[4];
  a1[4] = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  v4 = a1[2];
  a1[2] = 0;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoader::didReceiveData(IPC::SharedBufferReference &&,unsigned long long)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112C928;
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v3);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    if (v5[2] == 1)
    {
      (*(*v5 + 8))(v5);
    }

    else
    {
      --v5[2];
    }
  }

  return WTF::fastFree(this, a2);
}

uint64_t *WTF::Detail::CallableWrapper<WebKit::WebResourceLoader::didReceiveData(IPC::SharedBufferReference &&,unsigned long long)::$_0,void>::call(void *a1)
{
  result = a1[1];
  if (result[2])
  {
    return WebKit::WebResourceLoader::didReceiveData(result, (a1 + 3), a1[6]);
  }

  return result;
}

_DWORD *WTF::RefCounted<WebCore::ResourceMonitor>::deref(_DWORD *result)
{
  if (*result == 1)
  {
    v2 = MEMORY[0x19EB061C0](result - 2);

    return WTF::fastFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoader::didFinishResourceLoad(WebCore::NetworkLoadMetrics &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F112C950;
  v3 = a1[18];
  a1[18] = 0;
  if (v3)
  {
    WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v3, a2);
  }

  v4 = a1[14];
  a1[14] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[2];
  a1[2] = 0;
  if (v5)
  {
    if (v5[2] == 1)
    {
      (*(*v5 + 8))(v5);
    }

    else
    {
      --v5[2];
    }
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoader::didFinishResourceLoad(WebCore::NetworkLoadMetrics &&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F112C950;
  v3 = *(this + 18);
  *(this + 18) = 0;
  if (v3)
  {
    WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v3, a2);
  }

  v4 = *(this + 14);
  *(this + 14) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    if (v5[2] == 1)
    {
      (*(*v5 + 8))(v5);
    }

    else
    {
      --v5[2];
    }
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoader::didFinishResourceLoad(WebCore::NetworkLoadMetrics &&)::$_0,void>::call(uint64_t a1)
{
  result = *(a1 + 8);
  if (result[2])
  {
    return WebKit::WebResourceLoader::didFinishResourceLoad(result, a1 + 24);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoader::didFailResourceLoad(WebCore::ResourceError const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F112C978;
  v3 = a1[11];
  a1[11] = 0;
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[9];
  a1[9] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[4];
  a1[4] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = a1[3];
  a1[3] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = a1[2];
  a1[2] = 0;
  if (v7)
  {
    if (v7[2] == 1)
    {
      (*(*v7 + 8))(v7);
    }

    else
    {
      --v7[2];
    }
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoader::didFailResourceLoad(WebCore::ResourceError const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  v2 = WTF::Detail::CallableWrapper<WebKit::WebResourceLoader::didFailResourceLoad(WebCore::ResourceError const&)::$_0,void>::~CallableWrapper(a1, a2);

  return WTF::fastFree(v2, v3);
}

WebKit::WebResourceLoader *WTF::Detail::CallableWrapper<WebKit::WebResourceLoader::didFailResourceLoad(WebCore::ResourceError const&)::$_0,void>::call(uint64_t a1)
{
  result = *(a1 + 8);
  if (*(result + 2))
  {
    return WebKit::WebResourceLoader::didFailResourceLoad(result, (a1 + 24));
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebSocketChannel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebSocketChannel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebSocketChannel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebSocketChannel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebSocketChannel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebSocketChannel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
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
    JUMPOUT(0x19E31063CLL);
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

uint64_t WebKit::WebSocketProvider::createWebSocketChannel@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *(a1 + 16);
  v8 = WTF::fastMalloc(0x2C0);
  result = WebKit::WebSocketChannel::WebSocketChannel(v8, v7, a2, a3);
  *a4 = result + 24;
  return result;
}

uint64_t WebKit::WebSocketProvider::initializeWebTransportSession@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, atomic_ullong *a3@<X2>, uint64_t *a4@<X3>, atomic_uint **a5@<X8>)
{
  v78[7] = *MEMORY[0x1E69E9840];
  if ((*(*a2 + 64))(a2))
  {
    ++*(a2 + 320);
    v65[0] = 0;
    v65[1] = 0;
    *&v66 = "initializeWebTransportSession";
    *(&v66 + 1) = 0;
    v11 = WTF::NativePromiseProducer<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::NativePromiseProducer<std::enable_if<true,void>>(&v56, v65);
    v12 = v56;
    if (v56)
    {
      atomic_fetch_add(v56 + 2, 1u);
    }

    *a5 = v12;
    WTF::RunLoop::mainSingleton(v11);
    v13 = *(a2 + 256);
    *v65 = *(a2 + 240);
    v66 = v13;
    v14 = v56;
    v56 = 0;
    *&v67[8] = v57;
    v68 = v58;
    v16 = *(a1 + 16);
    *v67 = v14;
    v69 = v16;
    v15 = *(a2 + 576);
    LOBYTE(v59[0]) = 0;
    v61 = -1;
    LODWORD(v16) = *(v15 + 32);
    if (*(v15 + 32))
    {
      if (v16 == 255)
      {
LABEL_11:
        v18 = WebCore::SecurityContext::securityOrigin(a2);
        LOBYTE(v62) = 0;
        v64 = -1;
        LODWORD(v19) = *(v18 + 32);
        if (*(v18 + 32))
        {
          if (v19 == 255)
          {
LABEL_18:
            WebCore::SecurityOriginData::isolatedCopy();
            WebCore::SecurityOriginData::isolatedCopy();
            v76 = a3;
            v21 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock(a3 + 1);
            v77 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v21);
            WTF::URL::isolatedCopy();
            v22 = WTF::fastMalloc(0xE0);
            v23 = v22;
            *v22 = &unk_1F112D258;
            v24 = v66;
            *(v22 + 16) = *v65;
            *(v22 + 32) = v24;
            v25 = *v67;
            *v67 = 0;
            *(v22 + 48) = v25;
            *(v22 + 72) = v68;
            *(v22 + 56) = *&v67[8];
            *(v22 + 88) = v69;
            *(v22 + 96) = 0;
            *(v22 + 120) = -1;
            if (v72)
            {
              if (v72 == 255)
              {
LABEL_21:
                *(v22 + 128) = 0;
                *(v22 + 152) = -1;
                if (v75)
                {
                  if (v75 == 255)
                  {
                    goto LABEL_24;
                  }

                  *(v22 + 128) = v73;
                  v28 = v75;
                }

                else
                {
                  v28 = 0;
                  v29 = v73;
                  v73 = 0uLL;
                  *(v22 + 128) = v29;
                  *(v22 + 144) = v74;
                }

                *(v22 + 152) = v28;
LABEL_24:
                v30 = v76;
                v31 = v77;
                v76 = 0;
                v77 = 0;
                *(v22 + 160) = v30;
                *(v22 + 168) = v31;
                WTF::URL::URL(v22 + 176, v78);
                WTF::RunLoop::dispatch();
                if (v23)
                {
                  (*(*v23 + 8))(v23);
                }

                WebKit::WebSocketProvider::initializeWebTransportSession(WebCore::ScriptExecutionContext &,WebCore::WebTransportSessionClient &,WTF::URL const&)::$_0::~$_0(v65, v32);
                if (!v64)
                {
                  v34 = *(&v62 + 1);
                  *(&v62 + 1) = 0;
                  if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v34, v33);
                  }

                  v35 = v62;
                  *&v62 = 0;
                  if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v35, v33);
                  }
                }

                v64 = -1;
                if (!v61)
                {
                  v36 = v59[1];
                  v59[1] = 0;
                  if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v36, v33);
                  }

                  v37 = v59[0];
                  v59[0] = 0;
                  if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v37, v33);
                  }
                }

                result = WTF::NativePromiseProducer<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::~NativePromiseProducer(&v56);
                if (*(a2 + 320) == 1)
                {
                  return (*(*a2 + 40))(a2);
                }

                --*(a2 + 320);
                return result;
              }

              *(v22 + 96) = v70;
              v26 = v72;
            }

            else
            {
              v26 = 0;
              v27 = v70;
              v70 = 0uLL;
              *(v22 + 96) = v27;
              *(v22 + 112) = v71;
            }

            *(v22 + 120) = v26;
            goto LABEL_21;
          }

          v62 = *(v18 + 8);
        }

        else
        {
          v20 = *(v18 + 8);
          if (v20)
          {
            atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
          }

          *&v62 = v20;
          v19 = *(v18 + 16);
          if (v19)
          {
            atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
          }

          *(&v62 + 1) = v19;
          v63 = *(v18 + 24);
          LOBYTE(v19) = *(v18 + 32);
        }

        v64 = v19;
        goto LABEL_18;
      }

      *v59 = *(v15 + 8);
    }

    else
    {
      v17 = *(v15 + 8);
      if (v17)
      {
        atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
      }

      v59[0] = v17;
      v16 = *(v15 + 16);
      if (v16)
      {
        atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
      }

      v59[1] = v16;
      v60 = *(v15 + 24);
      LOBYTE(v16) = *(v15 + 32);
    }

    v61 = v16;
    goto LABEL_11;
  }

  if (*(a2 + 282))
  {
    result = 96;
    __break(0xC471u);
    return result;
  }

  *(a2 - 180) += 2;
  {
    v39 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v55 = WebKit::WebProcess::operator new(0x370, v10);
    v39 = WebKit::WebProcess::WebProcess(v55);
    WebKit::WebProcess::singleton(void)::process = v39;
  }

  v40 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v39) + 24);
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
      goto LABEL_59;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v40);
LABEL_59:
  v56 = v40;
  v59[0] = a3;
  v43 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock(a3 + 1);
  v59[1] = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v43);
  v44 = WebCore::Document::topOrigin((a2 - 208));
  LOBYTE(v65[0]) = 0;
  BYTE8(v66) = -1;
  LODWORD(v45) = *(v44 + 32);
  if (!*(v44 + 32))
  {
    v46 = *(v44 + 8);
    if (v46)
    {
      atomic_fetch_add_explicit(v46, 2u, memory_order_relaxed);
    }

    v65[0] = v46;
    v45 = *(v44 + 16);
    if (v45)
    {
      atomic_fetch_add_explicit(v45, 2u, memory_order_relaxed);
    }

    v65[1] = v45;
    LODWORD(v66) = *(v44 + 24);
    LOBYTE(v45) = *(v44 + 32);
    goto LABEL_65;
  }

  if (v45 != 255)
  {
    *v65 = *(v44 + 8);
LABEL_65:
    BYTE8(v66) = v45;
  }

  v47 = WebCore::SecurityContext::securityOrigin(a2);
  v67[0] = 0;
  LOBYTE(v68) = -1;
  LODWORD(v48) = *(v47 + 32);
  if (*(v47 + 32))
  {
    if (v48 == 255)
    {
      goto LABEL_73;
    }

    *v67 = *(v47 + 8);
  }

  else
  {
    v49 = *(v47 + 8);
    if (v49)
    {
      atomic_fetch_add_explicit(v49, 2u, memory_order_relaxed);
    }

    *v67 = v49;
    v48 = *(v47 + 16);
    if (v48)
    {
      atomic_fetch_add_explicit(v48, 2u, memory_order_relaxed);
    }

    *&v67[8] = v48;
    *&v67[16] = *(v47 + 24);
    LOBYTE(v48) = *(v47 + 32);
  }

  LOBYTE(v68) = v48;
LABEL_73:
  WebKit::WebTransportSession::initialize(a5, &v56, v59, a4, (a1 + 16), v65);
  if (!v68)
  {
    v51 = *&v67[8];
    *&v67[8] = 0;
    if (v51 && atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v51, v50);
    }

    v52 = *v67;
    *v67 = 0;
    if (v52 && atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v52, v50);
    }
  }

  LOBYTE(v68) = -1;
  if (!BYTE8(v66))
  {
    v53 = v65[1];
    v65[1] = 0;
    if (v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v53, v50);
    }

    v54 = v65[0];
    v65[0] = 0;
    if (v54 && atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v54, v50);
    }
  }

  if (v59[1])
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v59[1], v50);
  }

  result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v40);
  if (*(a2 - 180) == 2)
  {
    return WebCore::Node::removedLastRef((a2 - 208));
  }

  *(a2 - 180) -= 2;
  return result;
}

uint64_t WebKit::WebSocketProvider::initializeWebTransportSession(WebCore::ScriptExecutionContext &,WebCore::WebTransportSessionClient &,WTF::URL const&)::$_0::~$_0(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 160);
  *(a1 + 160) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(a1 + 152);
  *(a1 + 152) = 0;
  if (v4)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v4, a2);
  }

  if (!*(a1 + 136))
  {
    v5 = *(a1 + 120);
    *(a1 + 120) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    v6 = *(a1 + 112);
    *(a1 + 112) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }
  }

  *(a1 + 136) = -1;
  if (!*(a1 + 104))
  {
    v7 = *(a1 + 88);
    *(a1 + 88) = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }

    v8 = *(a1 + 80);
    *(a1 + 80) = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, a2);
    }
  }

  *(a1 + 104) = -1;
  WTF::NativePromiseProducer<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::~NativePromiseProducer((a1 + 32));
  return a1;
}

unsigned int *WebKit::WebTransportSession::initialize(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v10 = a2;
  v86 = *MEMORY[0x1E69E9840];
  v12 = *a2;
  v76 = 0uLL;
  *&v77 = "sendWithPromisedReply";
  *(&v77 + 1) = 0;
  v13 = WTF::fastMalloc(0x88);
  *(v13 + 8) = 1;
  *v13 = &unk_1F112D408;
  v14 = v77;
  *(v13 + 16) = v76;
  *(v13 + 32) = v14;
  *(v13 + 48) = 0;
  v75 = (v13 + 48);
  *(v13 + 80) = 0;
  *(v13 + 88) = v13 + 104;
  *(v13 + 96) = 1;
  *(v13 + 112) = 0;
  *(v13 + 120) = 0;
  *(v13 + 128) = 0;
  v15 = WTF::NativePromiseBase::logChannel(v13);
  if (*v15)
  {
    v16 = v15;
    if (v15[16] >= 4u)
    {
      WTF::String::String(&v82, "creating ");
      WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v81, v13);
      *buf = v82;
      v78 = v81;
      WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, &v78, &v83);
      if (!v83)
      {
        __break(0xC471u);
LABEL_92:
        JUMPOUT(0x19E3117C4);
      }

      v18 = v81;
      v81 = 0;
      if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v17);
      }

      v19 = v82;
      v82 = 0;
      if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v17);
      }

      v74 = a4;
      v20 = *(v16 + 4);
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      if (v21)
      {
        WTF::String::utf8();
        v23 = v78 ? v78 + 16 : 0;
        *buf = 136446210;
        *&buf[4] = v23;
        _os_log_impl(&dword_19D52D000, v20, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
        v21 = v78;
        v78 = 0;
        if (v21)
        {
          if (*v21 == 1)
          {
            v21 = WTF::fastFree(v21, v22);
          }

          else
          {
            --*v21;
          }
        }
      }

      if (*v16 && v16[16] >= 4u)
      {
        v24 = MEMORY[0x1E696EBC0];
        while (1)
        {
          v25 = *v24;
          if (v25)
          {
            break;
          }

          v26 = *v24;
          atomic_compare_exchange_strong_explicit(v24, &v26, v25 | 1, memory_order_acquire, memory_order_acquire);
          if (v26 == v25)
          {
            v71 = v12;
            v72 = v10;
            v73 = a1;
            v27 = WTF::Logger::observers(v21);
            v28 = *(v27 + 12);
            if (v28)
            {
              v29 = *v27;
              v30 = *v27 + 8 * v28;
              do
              {
                v31 = *v29;
                *buf = 0;
                WTF::String::String(&buf[8], "creating ");
                *&buf[16] = 0;
                WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&buf[24], v13);
                WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v78, buf, 2uLL);
                (*(*v31 + 16))(v31, v16, 4, &v78);
                WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v78, v32);
                for (i = 24; i != -8; i -= 16)
                {
                  v34 = *&buf[i];
                  *&buf[i] = 0;
                  if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v34, v22);
                  }
                }

                ++v29;
              }

              while (v29 != v30);
            }

            v35 = 1;
            atomic_compare_exchange_strong_explicit(v24, &v35, 0, memory_order_release, memory_order_relaxed);
            v10 = v72;
            a1 = v73;
            v12 = v71;
            if (v35 != 1)
            {
              WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
            }

            break;
          }
        }
      }

      v15 = v83;
      v83 = 0;
      if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v15 = WTF::StringImpl::destroy(v15, v22);
      }

      a4 = v74;
    }
  }

  v36 = 0;
  v78 = v13;
  v79 = v76;
  v80 = v77;
  atomic_fetch_add((v13 + 8), 1u);
  atomic_compare_exchange_strong_explicit((v13 + 48), &v36, 1u, memory_order_acquire, memory_order_acquire);
  if (v36)
  {
    v15 = MEMORY[0x19EB01E30](v75);
  }

  v37 = WTF::NativePromiseBase::logChannel(v15);
  if (*v37 && v37[16] >= 4u)
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>(v37, &v76, " runSynchronouslyOnTarget ", v13);
  }

  atomic_store(0, (v13 + 129));
  v38 = 1;
  atomic_compare_exchange_strong_explicit((v13 + 48), &v38, 0, memory_order_release, memory_order_relaxed);
  if (v38 != 1)
  {
    WTF::Lock::unlockSlow(v75);
  }

  if (atomic_fetch_add((v13 + 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v13 + 8));
    (*(*v13 + 16))(v13);
  }

  v39 = v78;
  if (v78)
  {
    atomic_fetch_add(v78 + 2, 1u);
    v40 = v78;
  }

  else
  {
    v40 = 0;
  }

  v78 = 0;
  *&buf[8] = v79;
  *&buf[24] = v80;
  v41 = WTF::fastMalloc(0x30);
  *v41 = &unk_1F112D430;
  *(v41 + 8) = v40;
  *buf = 0;
  v42 = *&buf[24];
  *(v41 + 16) = *&buf[8];
  *(v41 + 32) = v42;
  *&v76 = v41;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_92;
  }

  *(&v76 + 1) = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  WTF::NativePromiseProducer<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::~NativePromiseProducer(buf);
  v44 = IPC::Encoder::operator new(0x238, v43);
  *v44 = 449;
  *(v44 + 68) = 0;
  *(v44 + 70) = 0;
  *(v44 + 69) = 0;
  *(v44 + 2) = 0;
  *(v44 + 3) = 0;
  *(v44 + 1) = 0;
  IPC::Encoder::encodeHeader(v44);
  *buf = v44;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v44, a4);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v44, *a5);
  IPC::ArgumentCoder<WebCore::ClientOrigin,void>::encode(v44, a6);
  IPC::Connection::sendMessageWithAsyncReplyWithDispatcher(v12, buf, &v76, 0, 0);
  v46 = *buf;
  *buf = 0;
  if (v46)
  {
    IPC::Encoder::~Encoder(v46, v45);
    bmalloc::api::tzoneFree(v69, v70);
  }

  v47 = v76;
  *&v76 = 0;
  if (v47)
  {
    (*(*v47 + 8))(v47);
  }

  v48 = WTF::NativePromiseProducer<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::~NativePromiseProducer(&v78);
  v49 = WTF::RunLoop::mainSingleton(v48);
  v50 = *v10;
  while (1)
  {
    v51 = *v50;
    if ((*v50 & 1) == 0)
    {
      break;
    }

    v52 = *v50;
    atomic_compare_exchange_strong_explicit(v50, &v52, v51 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v52 == v51)
    {
      goto LABEL_57;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v50);
LABEL_57:
  v53 = *a3;
  v54 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  v76 = 0uLL;
  v55 = WTF::fastMalloc(0x50);
  while (1)
  {
    v56 = *(v49 + 8);
    if ((v56 & 1) == 0)
    {
      break;
    }

    v57 = *(v49 + 8);
    atomic_compare_exchange_strong_explicit((v49 + 8), &v57, v56 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v57 == v56)
    {
      goto LABEL_62;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v49 + 8));
LABEL_62:
  v58 = WTF::fastMalloc(0x20);
  *v58 = &unk_1F112CE90;
  v58[1] = v50;
  v58[2] = v53;
  v58[3] = v54;
  *(v55 + 8) = 1;
  *(v55 + 16) = v49;
  *(v55 + 24) = v76;
  *(v55 + 40) = "initialize";
  *(v55 + 48) = 0;
  *(v55 + 56) = 0;
  *v55 = &unk_1F112CF08;
  *(v55 + 64) = 0;
  *(v55 + 72) = v58;
  atomic_fetch_add(v39 + 2, 1u);
  *buf = v39;
  *&buf[8] = v55;
  *&buf[16] = v76;
  *&buf[32] = "initialize";
  v85 = 0;
  v78 = 0;
  *&v79 = 0;
  *(&v79 + 1) = "<completion promise>";
  *&v80 = 0;
  v59 = WTF::fastMalloc(0x28);
  v83 = WTF::NativePromiseProducer<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::NativePromiseProducer<std::enable_if<true,void>>(v59, &v78);
  v60 = *v83;
  if (*v83)
  {
    atomic_fetch_add((v60 + 8), 1u);
    v55 = *&buf[8];
    *a1 = v60;
    if (!v55)
    {
      WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>>::setCompletionPromise(0, &v83);
      goto LABEL_66;
    }
  }

  else
  {
    *a1 = 0;
  }

  atomic_fetch_add((v55 + 8), 1u);
  WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>>::setCompletionPromise(v55, &v83);
  if (atomic_fetch_add((v55 + 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v55 + 8));
    (*(*v55 + 8))(v55);
  }

LABEL_66:
  v61 = *&buf[8];
  *&buf[8] = 0;
  v78 = v61;
  WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::maybeSettle(*buf, &v78, &buf[16]);
  v62 = v78;
  v78 = 0;
  if (v62 && atomic_fetch_add(v62 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v62 + 2);
    (*(*v62 + 8))(v62);
  }

  if (v83)
  {
    v63 = WTF::NativePromiseProducer<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::~NativePromiseProducer(v83);
    WTF::fastFree(v63, v64);
  }

  v65 = *&buf[8];
  if (*&buf[8])
  {
    *&buf[8] = 0;
    v78 = v65;
    WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::maybeSettle(*buf, &v78, &buf[16]);
    v66 = v78;
    v78 = 0;
    if (v66 && atomic_fetch_add(v66 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v66 + 2);
      (*(*v66 + 8))(v66);
    }

    v67 = *&buf[8];
    *&buf[8] = 0;
    if (v67 && atomic_fetch_add(v67 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v67 + 2);
      (*(*v67 + 8))(v67);
    }
  }

  result = *buf;
  *buf = 0;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    result = (*(*result + 16))(result);
    if (!v39)
    {
      return result;
    }
  }

  else if (!v39)
  {
    return result;
  }

  if (atomic_fetch_add(v39 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v39 + 2);
    return (*(*v39 + 16))(v39);
  }

  return result;
}

void WebKit::WebTransportSendStreamSink::~WebTransportSendStreamSink(WebKit::WebTransportSendStreamSink *this, void *a2)
{
  *this = &unk_1F112C9A0;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  if (*(this + 2) != 1)
  {
    __break(0xC471u);
  }
}

{
  WebKit::WebTransportSendStreamSink::~WebTransportSendStreamSink(this, a2);

  WTF::fastFree(v2, v3);
}

WTF::StringImpl *WebKit::WebTransportSendStreamSink::write(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t *a4)
{
  v6 = *(a1 + 24);
  if (!v6)
  {
    v58 = 0;
LABEL_17:
    LOBYTE(v61) = 8;
    v62 = 0;
    WebCore::DOMPromiseDeferredBase::reject<WebCore::Exception>(*a4, &v61);
LABEL_18:
    result = v62;
    if (v62 && atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v13);
    }

    goto LABEL_21;
  }

  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v6, *(a1 + 16), &v58);
  if (!v58 || !WebCore::ScriptExecutionContext::globalObject(a2) || *(a1 + 40) == 1)
  {
    goto LABEL_17;
  }

  *&v60 = *(WebCore::ScriptExecutionContext::globalObject(a2) + 56);
  if ((a3 & 0xFFFE000000000002) != 0)
  {
    goto LABEL_14;
  }

  v9 = *(a3 + 5);
  if (v9 != 38)
  {
    if ((v9 - 39) > 0xC)
    {
      goto LABEL_10;
    }

    v32 = *(a3 + 40);
    v33 = v32 - 88;
    if ((v32 - 88) <= 0x35)
    {
      if (((1 << v33) & 0x3D) != 0)
      {
        v34 = *(a3 + 8) - 8;
        goto LABEL_41;
      }

      if (((1 << v33) & 0x3D000000000000) != 0)
      {
        v34 = a3 + 48;
LABEL_41:
        if ((v32 & 6) != 0 || *(*v34 + 32))
        {
LABEL_10:
          v11 = *(a3 + 5);
          if (v11 >= 0x17 && (v11 & 0xFE) != 0x1A && (*(a3 + 6) & 4) != 0)
          {
            (*(16 * *(16 * (*a3 & 0xFFFFFFFE) + 0x4C) + 0x38))(&v61, a3);
          }

LABEL_14:
          JSC::throwTypeError();
          LOBYTE(v61) = 37;
          v62 = 0;
          LOBYTE(v63) = 1;
          result = WebCore::DOMPromiseDeferred<void>::settle(a4, &v61);
          if (v63 != 1)
          {
            goto LABEL_21;
          }

          goto LABEL_18;
        }

LABEL_43:
        JSC::JSArrayBufferView::possiblySharedImpl(&v53, a3);
        v35 = v53;
        if (!v53)
        {
          goto LABEL_10;
        }

        if (JSC::ArrayBufferView::isDetached(v53) || !*(*(v35 + 4) + 32))
        {
          v36 = v53;
          if (!v53)
          {
            goto LABEL_10;
          }

          v53 = 0;
          LOBYTE(v62) = 1;
          v61 = 0;
          v56 = 1;
          v57 = 0;
          mpark::variant<WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>>::~variant(&v61);
          v37 = v53;
          v53 = 0;
          if (v37)
          {
            if (*v37 == 1)
            {
              JSC::ArrayBufferView::operator delete();
            }

            else
            {
              --*v37;
            }
          }

          v55 = 0;
          v53 = v36;
          v54 = 1;
          v38 = v58;
          v39 = *(a1 + 32);
          v40 = JSC::ArrayBufferView::baseAddress(v36);
          v41 = JSC::ArrayBufferView::byteLength(v36);
          WebKit::WebTransportSession::streamSendBytes(&v59, v38, v39, v40, v41, 0);
          v42 = *a4;
          *a4 = 0;
          v43 = WTF::fastMalloc(0x10);
          *v43 = 0;
          *(v43 + 8) = 0;
          WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v43, v43);
          v21 = *v43;
          atomic_fetch_add(*v43, 1u);
          v44 = v59;
          v45 = WebCore::ScriptExecutionContext::nativePromiseDispatcher(a2);
          WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 28, (a2 + 26));
          v46 = *(a2 + 14);
          atomic_fetch_add(v46, 1u);
          v60 = 0uLL;
          v47 = WTF::fastMalloc(0x50);
          while (1)
          {
            v48 = *(v45 + 8);
            if ((v48 & 1) == 0)
            {
              break;
            }

            v49 = *(v45 + 8);
            atomic_compare_exchange_strong_explicit((v45 + 8), &v49, v48 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v49 == v48)
            {
              goto LABEL_55;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v45 + 8));
LABEL_55:
          v50 = WTF::fastMalloc(0x28);
          *v50 = &unk_1F112D3B8;
          *(v50 + 8) = v46;
          *(v50 + 16) = 12;
          *(v50 + 24) = v42;
          *(v50 + 32) = v43;
          *(v47 + 8) = 1;
          *(v47 + 16) = v45;
          *(v47 + 24) = v60;
          *(v47 + 40) = "enqueueTaskWhenSettled";
          *(v47 + 48) = 0;
          *(v47 + 56) = 0;
          *v47 = &unk_1F112D358;
          *(v47 + 64) = 0;
          *(v47 + 72) = v50;
          atomic_fetch_add(v44 + 2, 1u);
          v61 = v44;
          v62 = v47;
          v63 = v60;
          v64 = "enqueueTaskWhenSettled";
          v65 = 0;
          if (!v21)
          {
            goto LABEL_59;
          }

          v51 = *(v21 + 1);
          if (!v51)
          {
LABEL_33:
            WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::ThenCommand<WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::ThenCallback<false,void>>::~ThenCommand(&v61);
            if (atomic_fetch_add(v21, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v21);
              WTF::fastFree(v21, v31);
            }

            goto LABEL_60;
          }

          WTF::WeakHashSet<WTF::NativePromiseRequest,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WTF::NativePromiseRequest>(&v60, (a2 + 76), v51);
          v30 = *(v21 + 1);
          if (v30)
          {
LABEL_32:
            WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::ThenCommand<WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::ThenCallback<false,void>>::track(&v61, v30);
            goto LABEL_33;
          }
        }

        __break(0xC471u);
        JUMPOUT(0x19E311E50);
      }
    }

    if ((v32 & 6) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

  v10 = *(a3 + 16);
  if (!v10 || *(v10 + 32) || *(v10 + 64) == 1)
  {
    goto LABEL_10;
  }

  *v10 += 2;
  LOBYTE(v62) = 0;
  v61 = 0;
  v56 = 0;
  v57 = 0;
  mpark::variant<WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>>::~variant(&v61);
  v55 = 0;
  v53 = v10;
  v54 = 0;
  v15 = v58;
  v16 = *(a1 + 32);
  v17 = JSC::ArrayBuffer::span(v10);
  WebKit::WebTransportSession::streamSendBytes(&v59, v15, v16, v17, v18, 0);
  v19 = *a4;
  *a4 = 0;
  v20 = WTF::fastMalloc(0x10);
  *v20 = 0;
  *(v20 + 8) = 0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v20, v20);
  v21 = *v20;
  atomic_fetch_add(*v20, 1u);
  v22 = v59;
  v23 = WebCore::ScriptExecutionContext::nativePromiseDispatcher(a2);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 28, (a2 + 26));
  v24 = *(a2 + 14);
  atomic_fetch_add(v24, 1u);
  v60 = 0uLL;
  v25 = WTF::fastMalloc(0x50);
  while (1)
  {
    v26 = *(v23 + 8);
    if ((v26 & 1) == 0)
    {
      break;
    }

    v27 = *(v23 + 8);
    atomic_compare_exchange_strong_explicit((v23 + 8), &v27, v26 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v27 == v26)
    {
      goto LABEL_29;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v23 + 8));
LABEL_29:
  v28 = WTF::fastMalloc(0x28);
  *v28 = &unk_1F112D308;
  *(v28 + 8) = v24;
  *(v28 + 16) = 12;
  *(v28 + 24) = v19;
  *(v28 + 32) = v20;
  *(v25 + 8) = 1;
  *(v25 + 16) = v23;
  *(v25 + 24) = v60;
  *(v25 + 40) = "enqueueTaskWhenSettled";
  *(v25 + 48) = 0;
  *(v25 + 56) = 0;
  *v25 = &unk_1F112D358;
  *(v25 + 64) = 0;
  *(v25 + 72) = v28;
  atomic_fetch_add(v22 + 2, 1u);
  v61 = v22;
  v62 = v25;
  v63 = v60;
  v64 = "enqueueTaskWhenSettled";
  v65 = 0;
  if (v21)
  {
    v29 = *(v21 + 1);
    if (!v29)
    {
      goto LABEL_33;
    }

    WTF::WeakHashSet<WTF::NativePromiseRequest,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WTF::NativePromiseRequest>(&v60, (a2 + 76), v29);
    v30 = *(v21 + 1);
    if (!v30)
    {
      __break(0xC471u);
      JUMPOUT(0x19E311EF4);
    }

    goto LABEL_32;
  }

LABEL_59:
  WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::ThenCommand<WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::ThenCallback<false,void>>::~ThenCommand(&v61);
LABEL_60:
  v52 = v59;
  v59 = 0;
  if (v52 && atomic_fetch_add(v52 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v52 + 2);
    (*(*v52 + 16))(v52);
  }

  result = mpark::variant<WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>>::~variant(&v53);
  if (!v57)
  {
    result = mpark::variant<WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>>::~variant(&v55);
  }

LABEL_21:
  v14 = v58;
  v58 = 0;
  if (v14)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebTransportSession,(WTF::DestructionThread)2>::deref((v14 + 32));
  }

  return result;
}

uint64_t WebCore::DOMPromiseDeferredBase::reject<WebCore::Exception>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = v2;
  WebCore::DeferredPromise::reject();
  result = v5;
  if (v5)
  {
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v5, v3);
    }
  }

  return result;
}

WTF::StringImpl *WebCore::DOMPromiseDeferred<void>::settle(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 16) == 1)
  {
    v6[0] = *a2;
    v2 = *(a2 + 8);
    *(a2 + 8) = 0;
    v7 = v2;
    WebCore::DOMPromiseDeferredBase::reject<WebCore::Exception>(*a1, v6);
    result = v7;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {

      return WTF::StringImpl::destroy(result, v3);
    }
  }

  else
  {
    v5 = *a1;

    return WebCore::DeferredPromise::resolve(v5);
  }

  return result;
}

uint64_t mpark::variant<WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>>::~variant(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 != 255)
  {
    v3 = *a1;
    *a1 = 0;
    if (v2)
    {
      if (v3)
      {
        if (*v3 == 1)
        {
          JSC::ArrayBufferView::operator delete();
        }

        else
        {
          --*v3;
        }
      }
    }

    else if (v3)
    {
      WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v3);
    }
  }

  *(a1 + 8) = -1;
  return a1;
}

atomic_uchar *WebKit::WebTransportSendStreamSink::close(atomic_uchar *this)
{
  if ((this[40] & 1) == 0)
  {
    v1 = this;
    this = *(this + 3);
    if (this && (this = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(this, *(v1 + 2), &v4), v4))
    {
      WebKit::WebTransportSession::streamSendBytes(&v3, v4, *(v1 + 4), 0, 0, 1);
      this = v3;
      v3 = 0;
      if (this && atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, this + 2);
        this = (*(*this + 16))(this);
      }

      v2 = v4;
      v1[40] = 1;
      v4 = 0;
      if (v2)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebTransportSession,(WTF::DestructionThread)2>::deref((v2 + 32));
      }
    }

    else
    {
      v1[40] = 1;
    }
  }

  return this;
}

uint64_t WebKit::WebTransportSession::streamSendBytes(atomic_uint **a1, uint64_t a2, uint64_t a3, const void *a4, size_t a5, char a6)
{
  v37 = a5;
  v38 = a3;
  v36 = a4;
  v31[0] = a6;
  v7 = a2 + 24;
  v8 = (*(*(a2 + 24) + 56))(a2 + 24);
  v9 = (*(*v7 + 48))(v7);
  if (v9)
  {
    v10 = v9;
    while (1)
    {
      v11 = *v9;
      if ((*v9 & 1) == 0)
      {
        break;
      }

      v12 = *v9;
      atomic_compare_exchange_strong_explicit(v9, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v12 == v11)
      {
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_7:
    v33 = 0;
    *v34 = 0;
    *&v34[8] = "sendWithPromisedReply";
    *&v34[16] = 0;
    WTF::NativePromiseProducer<std::optional<WebCore::Exception>,IPC::Error,0u>::NativePromiseProducer<std::enable_if<true,void>>(v40, &v33);
    v13 = v40[0];
    if (v40[0])
    {
      atomic_fetch_add((v40[0] + 8), 1u);
      v14 = v40[0];
    }

    else
    {
      v14 = 0;
    }

    v32 = v13;
    v40[0] = 0;
    *v34 = *&v40[1];
    *&v34[16] = *&v40[3];
    v15 = WTF::fastMalloc(0x30);
    *v15 = &unk_1F112D638;
    *(v15 + 8) = v14;
    v33 = 0;
    v16 = *&v34[16];
    *(v15 + 16) = *v34;
    *(v15 + 32) = v16;
    v39[0] = v15;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      result = 141;
      __break(0xC471u);
      return result;
    }

    v39[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    WTF::NativePromiseProducer<std::optional<WebCore::Exception>,IPC::Error,0u>::~NativePromiseProducer(&v33);
    v18 = IPC::Encoder::operator new(0x238, v17);
    *v18 = 820;
    *(v18 + 2) = 0;
    *(v18 + 3) = 0;
    *(v18 + 1) = v8;
    *(v18 + 68) = 0;
    *(v18 + 70) = 0;
    *(v18 + 69) = 0;
    IPC::Encoder::encodeHeader(v18);
    v33 = v18;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v18, v38);
    IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v18, v36, v37);
    IPC::Encoder::operator<<<BOOL &>(v18, v31);
    IPC::Connection::sendMessageWithAsyncReplyWithDispatcher(v10, &v33, v39, 0, 0);
    v20 = v33;
    v33 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v19);
      bmalloc::api::tzoneFree(v29, v30);
    }

    v21 = v39[0];
    v39[0] = 0;
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    WTF::NativePromiseProducer<std::optional<WebCore::Exception>,IPC::Error,0u>::~NativePromiseProducer(v40);
    v22 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v10);
  }

  else
  {
    LOBYTE(v40[0]) = 3;
    v33 = 0;
    *v34 = 0;
    *&v34[8] = "sendWithPromisedReply";
    *&v34[16] = 0;
    v22 = WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::createAndReject<IPC::Error,std::enable_if<true,void>>(&v32, v40, &v33);
    v13 = v32;
  }

  v23 = WTF::RunLoop::mainSingleton(v22);
  *v40 = 0uLL;
  v24 = WTF::fastMalloc(0x50);
  while (1)
  {
    v25 = *(v23 + 8);
    if ((v25 & 1) == 0)
    {
      break;
    }

    v26 = *(v23 + 8);
    atomic_compare_exchange_strong_explicit((v23 + 8), &v26, v25 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v26 == v25)
    {
      goto LABEL_20;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v23 + 8));
LABEL_20:
  v27 = WTF::fastMalloc(0x10);
  *v27 = &unk_1F112D1C0;
  *(v24 + 8) = 1;
  *(v24 + 16) = v23;
  *(v24 + 24) = *v40;
  *(v24 + 40) = "streamSendBytes";
  *(v24 + 48) = 0;
  *(v24 + 56) = 0;
  *v24 = &unk_1F112CFE0;
  *(v24 + 64) = 0;
  *(v24 + 72) = v27;
  atomic_fetch_add(v13 + 2, 1u);
  v33 = v13;
  *v34 = v24;
  *&v34[8] = *v40;
  *&v34[24] = "streamSendBytes";
  v35 = 0;
  WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::ThenCommand<WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>>>::completionPromise(a1, &v33);
  WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::ThenCommand<WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>>>::~ThenCommand(&v33);
  result = v32;
  v32 = 0;
  if (result)
  {
    if (atomic_fetch_add((result + 8), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, (result + 8));
      return (*(*result + 16))(result);
    }
  }

  return result;
}

atomic_ullong *WebKit::WebTransportSendStreamSink::error(atomic_ullong *result)
{
  if ((*(result + 41) & 1) == 0)
  {
    v1 = result;
    result = result[3];
    if (result && (WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, v1[2], &v3), (result = v3) != 0))
    {
      result = (*(*v3 + 64))(v3, v1[4], 0, 0);
      v2 = v3;
      *(v1 + 41) = 1;
      v3 = 0;
      if (v2)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebTransportSession,(WTF::DestructionThread)2>::deref(v2 + 4);
      }
    }

    else
    {
      *(v1 + 41) = 1;
    }
  }

  return result;
}

void WebKit::WebTransportSession::~WebTransportSession(WebKit::WebTransportSession *this, void *a2)
{
  *this = &unk_1F112C9D8;
  *(this + 1) = &unk_1F112CA58;
  *(this + 3) = &unk_1F112CAA0;
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v13 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v13);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  WebKit::WebProcess::removeWebTransportSession(v3, *(this + 8));
  v4 = *(this + 5);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 443;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = 0;
  IPC::Encoder::encodeHeader(v6);
  v14 = v6;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, *(this + 8));
  IPC::Connection::sendMessageImpl(v4, &v14, 0, 0);
  v8 = v14;
  v14 = 0;
  if (v8)
  {
    IPC::Encoder::~Encoder(v8, v7);
    bmalloc::api::tzoneFree(v11, v12);
  }

  v9 = *(this + 7);
  *(this + 7) = 0;
  if (v9)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v9, v7);
  }

  v10 = *(this + 5);
  *(this + 5) = 0;
  if (v10)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v10);
  }

  *(this + 1) = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 2, v7);
  WebCore::WebTransportSession::~WebTransportSession(this);
}

{
  WebKit::WebTransportSession::~WebTransportSession(this, a2);

  WTF::fastFree(v2, v3);
}

void non-virtual thunk toWebKit::WebTransportSession::~WebTransportSession(WebKit::WebTransportSession *this, void *a2)
{
  WebKit::WebTransportSession::~WebTransportSession((this - 8), a2);
}

{
  WebKit::WebTransportSession::~WebTransportSession((this - 24), a2);
}

{
  WebKit::WebTransportSession::~WebTransportSession((this - 8), a2);

  WTF::fastFree(v2, v3);
}

{
  WebKit::WebTransportSession::~WebTransportSession((this - 24), a2);

  WTF::fastFree(v2, v3);
}

atomic_uchar **WebKit::WebTransportSession::receiveDatagram(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *(a1 + 56);
  if (result)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(a1 + 48), &v13);
    result = v13;
    if (v13)
    {
      result = (*(*v13 + 2))(v13, a2, a3, a4, a5);
      v12 = v13;
      v13 = 0;
      if (v12)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::WebTransportSessionClient,(WTF::DestructionThread)0>::deref(v12 + 1, v11);
      }
    }
  }

  return result;
}

atomic_uchar **WebKit::WebTransportSession::receiveIncomingUnidirectionalStream(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 56);
  if (result)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(a1 + 48), &v7);
    result = v7;
    if (v7)
    {
      result = (*(*v7 + 3))(v7, a2);
      v6 = v7;
      v7 = 0;
      if (v6)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::WebTransportSessionClient,(WTF::DestructionThread)0>::deref(v6 + 1, v5);
      }
    }
  }

  return result;
}