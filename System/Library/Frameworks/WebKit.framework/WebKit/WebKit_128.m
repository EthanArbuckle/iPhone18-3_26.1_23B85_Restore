uint64_t WebKit::NetworkResourceLoader::restartNetworkLoad(uint64_t a1, WebCore::ResourceRequestBase *a2, uint64_t *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 3280);
    if (!v7)
    {
      __break(0xC471u);
      goto LABEL_19;
    }

    v9 = *(a1 + 88);
    v8 = *(a1 + 96);
    v10 = *(a1 + 80);
    v11 = *(a1 + 251) == 1;
    v12 = *(a1 + 3328);
    v13 = *(a1 + 4440) != 0;
    v14 = *(a1 + 4152) != 0;
    v30 = 134220032;
    v31 = a1;
    v32 = 2048;
    v33 = v10;
    v34 = 2048;
    v35 = v9;
    v36 = 2048;
    v37 = v8;
    v38 = 2048;
    v39 = v7;
    v40 = 1024;
    v41 = v11;
    v42 = 1024;
    v43 = v12;
    v44 = 1024;
    v45 = v13;
    v46 = 1024;
    v47 = v14;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::restartNetworkLoad: (hasNetworkLoad=%d)", &v30, 0x4Cu);
  }

  v15 = *(a1 + 4152);
  if (!v15)
  {
    goto LABEL_14;
  }

  ++*(v15 + 16);
  v16 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 3280);
    if (v17)
    {
      v19 = *(a1 + 88);
      v18 = *(a1 + 96);
      v20 = *(a1 + 80);
      v21 = *(a1 + 251) == 1;
      v22 = *(a1 + 3328);
      v23 = *(a1 + 4440) != 0;
      v30 = 134219776;
      v31 = a1;
      v32 = 2048;
      v33 = v20;
      v34 = 2048;
      v35 = v19;
      v36 = 2048;
      v37 = v18;
      v38 = 2048;
      v39 = v17;
      v40 = 1024;
      v41 = v21;
      v42 = 1024;
      v43 = v22;
      v44 = 1024;
      v45 = v23;
      _os_log_impl(&dword_19D52D000, v16, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::restartNetworkLoad: Cancelling existing network load so we can restart the load.", &v30, 0x46u);
      goto LABEL_8;
    }

    __break(0xC471u);
LABEL_19:
    JUMPOUT(0x19DCBEBECLL);
  }

LABEL_8:
  WebKit::NetworkLoad::cancel(v15);
  v25 = *(v15 + 24);
  *(v15 + 24) = 0;
  if (v25 && atomic_fetch_add(v25, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v25);
    WTF::fastFree(v25, v24);
  }

  v26 = *(a1 + 4152);
  *(a1 + 4152) = 0;
  if (v26)
  {
    WTF::RefCounted<WebKit::NetworkLoad>::deref((v26 + 16), v24);
  }

  WTF::RefCounted<WebKit::NetworkLoad>::deref((v15 + 16), v24);
LABEL_14:
  WebCore::ResourceRequest::ResourceRequest(&v30);
  v27 = *a3;
  *a3 = 0;
  (*(*v27 + 16))(v27, &v30);
  (*(*v27 + 8))(v27);
  WebCore::ResourceRequest::~ResourceRequest(&v30);
  result = WebCore::ResourceRequestBase::isEmpty(a2);
  if ((result & 1) == 0)
  {
    return WebKit::NetworkResourceLoader::startNetworkLoad(a1, a2, 0, v29);
  }

  return result;
}

uint64_t WebKit::NetworkResourceLoader::setWorkerStart(uint64_t a1, void *a2, double a3)
{
  *(a1 + 4688) = a3;
  v3 = *(a1 + 3280);
  if (v3)
  {
    v5 = IPC::Encoder::operator new(0x238, a2);
    *v5 = 3037;
    *(v5 + 2) = 0;
    *(v5 + 3) = 0;
    *(v5 + 1) = v3;
    *(v5 + 68) = 0;
    *(v5 + 70) = 0;
    *(v5 + 69) = 0;
    IPC::Encoder::encodeHeader(v5);
    v10 = v5;
    IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v5, *(a1 + 4688));
    (*(*(a1 + 24) + 32))(a1 + 24, &v10, 0);
    result = v10;
    v10 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v6);
      return bmalloc::api::tzoneFree(v8, v9);
    }
  }

  else
  {
    result = 157;
    __break(0xC471u);
  }

  return result;
}

void WebKit::NetworkResourceLoader::continueDidReceiveResponse(WebKit::NetworkResourceLoader *this)
{
  v45[2] = *MEMORY[0x1E69E9840];
  v2 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 410);
    if (!v3)
    {
      __break(0xC471u);
      goto LABEL_17;
    }

    v5 = *(this + 11);
    v4 = *(this + 12);
    v6 = *(this + 10);
    v7 = *(this + 251) == 1;
    v8 = *(this + 3328);
    v9 = *(this + 555) != 0;
    v10 = *(this + 574) != 0;
    v11 = *(this + 577) != 0;
    *buf = 134220288;
    v29 = this;
    v30 = 2048;
    v31 = v6;
    v32 = 2048;
    v33 = v5;
    v34 = 2048;
    v35 = v4;
    v36 = 2048;
    v37 = v3;
    v38 = 1024;
    v39 = v7;
    v40 = 1024;
    v41 = v8;
    v42 = 1024;
    v43 = v9;
    v44 = 1024;
    LODWORD(v45[0]) = v10;
    WORD2(v45[0]) = 1024;
    *(v45 + 6) = v11;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::continueDidReceiveResponse: (hasCacheEntryWaitingForContinueDidReceiveResponse=%d, hasResponseCompletionHandler=%d)", buf, 0x52u);
  }

  v12 = *(this + 584);
  if (v12)
  {
    v18 = qword_1ED6416F0;
    if (!os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v19 = *(this + 410);
    if (v19)
    {
      v21 = *(this + 11);
      v20 = *(this + 12);
      v22 = *(this + 10);
      v23 = *(this + 251) == 1;
      v24 = *(this + 3328);
      v25 = *(this + 555) != 0;
      v26 = *(v12 + 40);
      *buf = 134220032;
      v29 = this;
      v30 = 2048;
      v31 = v22;
      v32 = 2048;
      v33 = v21;
      v34 = 2048;
      v35 = v20;
      v36 = 2048;
      v37 = v19;
      v38 = 1024;
      v39 = v23;
      v40 = 1024;
      v41 = v24;
      v42 = 1024;
      v43 = v25;
      v44 = 2048;
      v45[0] = v26;
      _os_log_impl(&dword_19D52D000, v18, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::continueDidReceiveResponse: continuing with ServiceWorkerFetchTask (fetchIdentifier=%llu)", buf, 0x50u);
      v12 = *(this + 584);
      if (!v12)
      {
        WebKit::ServiceWorkerFetchTask::continueDidReceiveFetchResponse(0);
        return;
      }

LABEL_13:
      ++*(v12 + 8);
      WebKit::ServiceWorkerFetchTask::continueDidReceiveFetchResponse(v12);
      WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref((v12 + 8));
      return;
    }

    __break(0xC471u);
LABEL_17:
    JUMPOUT(0x19DCBEFE0);
  }

  v13 = *(this + 574);
  if (v13)
  {
    *(this + 574) = 0;
    v27 = v13;
    WebKit::NetworkResourceLoader::sendResultForCacheEntry(this, &v27);
    WebKit::NetworkCache::Entry::~Entry(v13, v14);
    bmalloc::api::tzoneFree(v15, v16);
    WebKit::NetworkResourceLoader::cleanup(this, 1);
  }

  else
  {
    v17 = *(this + 577);
    if (v17)
    {
      *(this + 577) = 0;
      (*(*v17 + 16))(v17, 0);
      (*(*v17 + 8))(v17);
    }
  }
}

void WebKit::NetworkResourceLoader::sendResultForCacheEntry(uint64_t a1, WebKit::NetworkCache::Entry **a2)
{
  v85 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 3280);
    if (!v5)
    {
      __break(0xC471u);
      goto LABEL_59;
    }

    v7 = *(a1 + 88);
    v6 = *(a1 + 96);
    v8 = *(a1 + 80);
    v9 = *(a1 + 251) == 1;
    v10 = *(a1 + 3328);
    v11 = *(a1 + 4440) != 0;
    *buf = 134219776;
    *&buf[4] = a1;
    v66 = 2048;
    v67 = v8;
    v68 = 2048;
    v69 = v7;
    v70 = 2048;
    v71 = v6;
    v72 = 2048;
    v73 = v5;
    v74 = 1024;
    v75 = v9;
    v76 = 1024;
    v77 = v10;
    v78 = 1024;
    v79 = v11;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::sendResultForCacheEntry:", buf, 0x46u);
  }

  v12 = *(a1 + 5096);
  if (v12)
  {
    ++*(v12 + 2);
    WebKit::NetworkCache::Entry::shareableResourceHandle(*a2, v62);
    if (v63 != 1)
    {
LABEL_6:
      if (WebKit::NetworkResourceLoader::shouldLogCookieInformation(*(*(a1 + 4144) + 88), *(*(a1 + 4144) + 96), v13))
      {
        WebKit::NetworkResourceLoader::logCookieInformation(a1);
      }

      v14 = *a2;
      v15 = *(*a2 + 71);
      if (!v15)
      {
        WebKit::NetworkCache::Entry::initializeBufferFromStorageRecord(v14);
        v15 = *(v14 + 71);
      }

      atomic_fetch_add(v15 + 2, 1u);
      WebKit::NetworkResourceLoader::sendBuffer(a1, v15);
      if (v12)
      {
        v16 = WebCore::ResourceRequestBase::url((a1 + 104));
        WebCore::ContentFilter::continueAfterNotifyFinished(v12, v16);
        WebCore::ContentFilter::stopFilteringMainResource(v12);
      }

      WebCore::NetworkLoadMetrics::NetworkLoadMetrics(buf);
      v81 |= 1u;
      if (*(a1 + 4624) == 1)
      {
        WebCore::AdditionalNetworkLoadMetricsForWebInspector::create(v62);
        v53 = v62[0];
        *(v62[0] + 10) = 0;
        *(v53 + 11) = 0;
        *(v53 + 9) = 0;
        v62[0] = 0;
        v54 = v84;
        v84 = v53;
        if (v54)
        {
          WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v54, v52);
          v56 = v62[0];
          v62[0] = 0;
          if (v56)
          {
            WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v56, v55);
          }
        }
      }

      v82 = 0;
      v83 = 0;
      v18 = *(a1 + 24);
      v17 = a1 + 24;
      v19 = (*(v18 + 56))(v17);
      v21 = IPC::Encoder::operator new(0x238, v20);
      *v21 = 3031;
      *(v21 + 2) = 0;
      *(v21 + 3) = 0;
      *(v21 + 1) = v19;
      *(v21 + 68) = 0;
      *(v21 + 70) = 0;
      *(v21 + 69) = 0;
      IPC::Encoder::encodeHeader(v21);
      v62[0] = v21;
      IPC::ArgumentCoder<WebCore::NetworkLoadMetrics,void>::encode(v21, buf);
      (*(*v17 + 32))(v17, v62, 0);
      v23 = v62[0];
      v62[0] = 0;
      if (v23)
      {
        IPC::Encoder::~Encoder(v23, v22);
        bmalloc::api::tzoneFree(v36, v37);
      }

      v24 = v84;
      v84 = 0;
      if (!v24)
      {
        goto LABEL_16;
      }

      goto LABEL_56;
    }

    v26 = *a2;
    v15 = *(*a2 + 71);
    if (v15 || (WebKit::NetworkCache::Entry::initializeBufferFromStorageRecord(v26), (v15 = *(v26 + 71)) != 0))
    {
      atomic_fetch_add(v15 + 2, 1u);
    }

    WebCore::FragmentedSharedBuffer::makeContiguous(buf, v15);
    v27 = WebCore::ContentFilter::continueAfterDataReceived();
    v24 = *buf;
    *buf = 0;
    if (v24 && atomic_fetch_add(v24 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v24 + 2);
      v24 = (*(*v24 + 8))(v24);
    }

    if (v15 && atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v15 + 2);
      v24 = (*(*v15 + 8))(v15);
    }

    if (!v27)
    {
      v38 = WebCore::ResourceRequestBase::url((a1 + 104));
      WebCore::ContentFilter::continueAfterNotifyFinished(v12, v38);
      WebCore::ContentFilter::stopFilteringMainResource(v12);
      WebCore::NetworkLoadMetrics::NetworkLoadMetrics(buf);
      v81 |= 1u;
      if (*(a1 + 4624) == 1)
      {
        WebCore::AdditionalNetworkLoadMetricsForWebInspector::create(&v64);
        v58 = v64;
        *(v64 + 10) = 0;
        *(v58 + 11) = 0;
        *(v58 + 9) = 0;
        v64 = 0;
        v59 = v84;
        v84 = v58;
        if (v59)
        {
          WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v59, v57);
          v61 = v64;
          v64 = 0;
          if (v61)
          {
            WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v61, v60);
          }
        }
      }

      v82 = 0;
      v83 = 0;
      v40 = *(a1 + 24);
      v39 = a1 + 24;
      v41 = (*(v40 + 56))(v39);
      v43 = IPC::Encoder::operator new(0x238, v42);
      *v43 = 3031;
      *(v43 + 2) = 0;
      *(v43 + 3) = 0;
      *(v43 + 1) = v41;
      *(v43 + 68) = 0;
      *(v43 + 70) = 0;
      *(v43 + 69) = 0;
      IPC::Encoder::encodeHeader(v43);
      v64 = v43;
      IPC::ArgumentCoder<WebCore::NetworkLoadMetrics,void>::encode(v43, buf);
      (*(*v39 + 32))(v39, &v64, 0);
      v45 = v64;
      v64 = 0;
      if (v45)
      {
        IPC::Encoder::~Encoder(v45, v44);
        bmalloc::api::tzoneFree(v50, v51);
      }

      v46 = v84;
      v84 = 0;
      if (v46)
      {
        WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v46, v44);
      }

      v47 = v80;
      v80 = 0;
      if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v47, v44);
      }

      goto LABEL_35;
    }

    if ((v63 & 1) == 0)
    {
      __break(1u);
LABEL_56:
      WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v24, v22);
LABEL_16:
      v25 = v80;
      v80 = 0;
      if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v22);
      }

      if (atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v15 + 2);
        (*(*v15 + 8))(v15);
      }

      goto LABEL_19;
    }
  }

  else
  {
    WebKit::NetworkCache::Entry::shareableResourceHandle(*a2, v62);
    if ((v63 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v29 = *(a1 + 24);
  v28 = a1 + 24;
  v30 = (*(v29 + 56))(v28);
  v32 = IPC::Encoder::operator new(0x238, v31);
  *v32 = 3033;
  *(v32 + 2) = 0;
  *(v32 + 3) = 0;
  *(v32 + 1) = v30;
  *(v32 + 68) = 0;
  *(v32 + 70) = 0;
  *(v32 + 69) = 0;
  IPC::Encoder::encodeHeader(v32);
  *buf = v32;
  IPC::ArgumentCoder<WebCore::ShareableResourceHandle,void>::encode(v32, v62);
  (*(*v28 + 32))(v28, buf, 0);
  v34 = *buf;
  *buf = 0;
  if (v34)
  {
    IPC::Encoder::~Encoder(v34, v33);
    bmalloc::api::tzoneFree(v48, v49);
  }

LABEL_35:
  if (v63 == 1)
  {
    WTF::MachSendRight::~MachSendRight(v62);
  }

LABEL_19:
  if (v12)
  {
    v35 = *(v12 + 2);
    if (v35)
    {
      *(v12 + 2) = v35 - 1;
      return;
    }

    __break(0xC471u);
LABEL_59:
    JUMPOUT(0x19DCBF6ACLL);
  }
}

IPC::Encoder *WebKit::NetworkResourceLoader::didSendData(IPC::Encoder *this, uint64_t a2, uint64_t a3)
{
  if (!*(this + 555))
  {
    v3[0] = a2;
    v3[1] = a3;
    return IPC::MessageSender::send<Messages::WebResourceLoader::DidSendData>(this + 24, v3);
  }

  return this;
}

IPC::Encoder *IPC::MessageSender::send<Messages::WebResourceLoader::DidSendData>(uint64_t a1, void *a2)
{
  v4 = (*(*a1 + 56))(a1);

  return IPC::MessageSender::send<Messages::WebResourceLoader::DidSendData>(a1, a2, v4);
}

unsigned int *WebKit::NetworkResourceLoader::sendDidReceiveDataMessage(WebKit::NetworkResourceLoader *this, const WebCore::FragmentedSharedBuffer *a2)
{
  v4 = *(this + 519);
  if (v4)
  {
    ++*(v4 + 4);
    v5 = WebKit::NetworkLoad::bytesTransferredOverNetwork(v4);
  }

  else
  {
    v5 = 0;
  }

  WebKit::NetworkResourceLoader::updateBytesTransferredOverNetwork(this, v5);
  v17 = *(a2 + 7);
  v18 = a2;
  atomic_fetch_add(a2 + 2, 1u);
  v19 = 0;
  v7 = *(this + 3);
  v6 = this + 24;
  v8 = (*(v7 + 56))(v6);
  v10 = IPC::Encoder::operator new(0x238, v9);
  *v10 = 3032;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = v8;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v20 = v10;
  IPC::ArgumentCoder<IPC::SharedBufferReference,void>::encode(v10, &v17);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, v5);
  (*(*v6 + 32))(v6, &v20, 0);
  v12 = v20;
  v20 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v11);
    bmalloc::api::tzoneFree(v15, v16);
  }

  v13 = v19;
  v19 = 0;
  if (v13)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v13);
  }

  result = v18;
  v18 = 0;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    result = (*(*result + 8))(result);
  }

  if (v4)
  {
    return WTF::RefCounted<WebKit::NetworkLoad>::deref(v4 + 4, v11);
  }

  return result;
}

WTF::StringImpl *WebKit::NetworkResourceLoader::logCookieInformation(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, const WTF::String **a6, unsigned __int8 *a7, const WTF::String **a8, const WTF::String **a9, WTF::String *a10, uint64_t a11, WTF::String *a12, uint64_t a13, WTF::String *a14, uint64_t a15)
{
  v131 = *MEMORY[0x1E69E9840];
  if (WebCore::NetworkStorageSession::shouldBlockCookies())
  {
    WebKit::escapeForJSON(&v116, *a8);
    WebKit::escapeForJSON(&v115, *a6);
    if (a11)
    {
      WTF::String::number(a10);
    }

    else
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
    }

    if (a13)
    {
      WTF::String::number(a12);
      if ((a15 & 1) == 0)
      {
LABEL_10:
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        goto LABEL_13;
      }
    }

    else
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      if ((a15 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    WTF::String::number(a14);
LABEL_13:
    WebKit::escapeForJSON(&v111, *a9);
    v20 = *(a1 + 96);
    if (v20 > -2 || (*(a1 + 337) & 0x20) != 0)
    {
      v21 = qword_1ED6416F0;
      if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
      {
        WTF::String::utf8();
        if (v110)
        {
          v22 = v110 + 16;
        }

        else
        {
          v22 = 0;
        }

        WTF::String::utf8();
        if (v109)
        {
          v23 = v109 + 16;
        }

        else
        {
          v23 = 0;
        }

        WTF::String::utf8();
        if (v108)
        {
          v24 = v108 + 16;
        }

        else
        {
          v24 = 0;
        }

        WTF::String::utf8();
        if (v107)
        {
          v25 = v107 + 16;
        }

        else
        {
          v25 = 0;
        }

        WTF::String::utf8();
        if (v106)
        {
          v26 = v106 + 16;
        }

        else
        {
          v26 = 0;
        }

        *buf = 134219522;
        v118 = a4;
        v119 = 2080;
        v120 = a2;
        v121 = 2080;
        v122 = v22;
        v123 = 2080;
        v124 = v23;
        v125 = 2080;
        v126 = v24;
        v127 = 2080;
        v128 = v25;
        v129 = 2082;
        v130 = v26;
        _os_log_impl(&dword_19D52D000, v21, OS_LOG_TYPE_DEFAULT, "%p - %s::logCookieInformation: BLOCKED cookie access for webPageID=%s, frameID=%s, resourceID=%s, firstParty=%s: { url: %{public}s,", buf, 0x48u);
        v27 = v106;
        v106 = 0;
        if (v27)
        {
          if (*v27 == 1)
          {
            WTF::fastFree(v27, v19);
          }

          else
          {
            --*v27;
          }
        }

        v28 = v107;
        v107 = 0;
        if (v28)
        {
          if (*v28 == 1)
          {
            WTF::fastFree(v28, v19);
          }

          else
          {
            --*v28;
          }
        }

        v29 = v108;
        v108 = 0;
        if (v29)
        {
          if (*v29 == 1)
          {
            WTF::fastFree(v29, v19);
          }

          else
          {
            --*v29;
          }
        }

        v30 = v109;
        v109 = 0;
        if (v30)
        {
          if (*v30 == 1)
          {
            WTF::fastFree(v30, v19);
          }

          else
          {
            --*v30;
          }
        }

        v31 = v110;
        v110 = 0;
        if (v31)
        {
          if (*v31 == 1)
          {
            WTF::fastFree(v31, v19);
          }

          else
          {
            --*v31;
          }
        }

        v20 = *(a1 + 96);
      }

      if (v20 > -2)
      {
        goto LABEL_75;
      }
    }

    if ((*(a1 + 337) & 0x20) != 0)
    {
LABEL_75:
      v32 = qword_1ED6416F0;
      if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
      {
        WTF::String::utf8();
        if (v110)
        {
          v33 = v110 + 16;
        }

        else
        {
          v33 = 0;
        }

        WTF::String::utf8();
        if (v109)
        {
          v34 = v109 + 16;
        }

        else
        {
          v34 = 0;
        }

        WTF::String::utf8();
        if (v108)
        {
          v35 = v108 + 16;
        }

        else
        {
          v35 = 0;
        }

        WTF::String::utf8();
        if (v107)
        {
          v36 = v107 + 16;
        }

        else
        {
          v36 = 0;
        }

        *buf = 134219522;
        v118 = a4;
        v119 = 2080;
        v120 = a2;
        v121 = 2080;
        v122 = v33;
        v123 = 2080;
        v124 = v34;
        v125 = 2080;
        v126 = v35;
        v127 = 2080;
        v128 = v36;
        v129 = 2082;
        v130 = "BLOCKED";
        _os_log_impl(&dword_19D52D000, v32, OS_LOG_TYPE_DEFAULT, "%p - %s::logCookieInformation: BLOCKED cookie access for webPageID=%s, frameID=%s, resourceID=%s, firstParty=%s:   partition: %{public}s,", buf, 0x48u);
        v37 = v107;
        v107 = 0;
        if (v37)
        {
          if (*v37 == 1)
          {
            WTF::fastFree(v37, v19);
          }

          else
          {
            --*v37;
          }
        }

        v38 = v108;
        v108 = 0;
        if (v38)
        {
          if (*v38 == 1)
          {
            WTF::fastFree(v38, v19);
          }

          else
          {
            --*v38;
          }
        }

        v39 = v109;
        v109 = 0;
        if (v39)
        {
          if (*v39 == 1)
          {
            WTF::fastFree(v39, v19);
          }

          else
          {
            --*v39;
          }
        }

        v40 = v110;
        v110 = 0;
        if (v40)
        {
          if (*v40 == 1)
          {
            WTF::fastFree(v40, v19);
          }

          else
          {
            --*v40;
          }
        }

        v20 = *(a1 + 96);
      }

      if (v20 > -2)
      {
        goto LABEL_103;
      }
    }

    if ((*(a1 + 337) & 0x20) != 0)
    {
LABEL_103:
      v41 = qword_1ED6416F0;
      if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
      {
        WTF::String::utf8();
        if (v110)
        {
          v42 = v110 + 16;
        }

        else
        {
          v42 = 0;
        }

        WTF::String::utf8();
        if (v109)
        {
          v43 = v109 + 16;
        }

        else
        {
          v43 = 0;
        }

        WTF::String::utf8();
        if (v108)
        {
          v44 = v108 + 16;
        }

        else
        {
          v44 = 0;
        }

        WTF::String::utf8();
        if (v107)
        {
          v45 = v107 + 16;
        }

        else
        {
          v45 = 0;
        }

        *buf = 134219522;
        v118 = a4;
        v119 = 2080;
        v120 = a2;
        v121 = 2080;
        v122 = v42;
        v123 = 2080;
        v124 = v43;
        v125 = 2080;
        v126 = v44;
        v127 = 2080;
        v128 = v45;
        v129 = 2082;
        v130 = "false";
        _os_log_impl(&dword_19D52D000, v41, OS_LOG_TYPE_DEFAULT, "%p - %s::logCookieInformation: BLOCKED cookie access for webPageID=%s, frameID=%s, resourceID=%s, firstParty=%s:   hasStorageAccess: %{public}s,", buf, 0x48u);
        v46 = v107;
        v107 = 0;
        if (v46)
        {
          if (*v46 == 1)
          {
            WTF::fastFree(v46, v19);
          }

          else
          {
            --*v46;
          }
        }

        v47 = v108;
        v108 = 0;
        if (v47)
        {
          if (*v47 == 1)
          {
            WTF::fastFree(v47, v19);
          }

          else
          {
            --*v47;
          }
        }

        v48 = v109;
        v109 = 0;
        if (v48)
        {
          if (*v48 == 1)
          {
            WTF::fastFree(v48, v19);
          }

          else
          {
            --*v48;
          }
        }

        v49 = v110;
        v110 = 0;
        if (v49)
        {
          if (*v49 == 1)
          {
            WTF::fastFree(v49, v19);
          }

          else
          {
            --*v49;
          }
        }

        v20 = *(a1 + 96);
      }

      if (v20 > -2)
      {
        goto LABEL_137;
      }
    }

    if ((*(a1 + 337) & 0x20) != 0)
    {
LABEL_137:
      v50 = qword_1ED6416F0;
      if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
      {
        WTF::String::utf8();
        if (v110)
        {
          v51 = v110 + 16;
        }

        else
        {
          v51 = 0;
        }

        WTF::String::utf8();
        if (v109)
        {
          v52 = v109 + 16;
        }

        else
        {
          v52 = 0;
        }

        WTF::String::utf8();
        if (v108)
        {
          v53 = v108 + 16;
        }

        else
        {
          v53 = 0;
        }

        WTF::String::utf8();
        if (v107)
        {
          v54 = v107 + 16;
        }

        else
        {
          v54 = 0;
        }

        WTF::String::utf8();
        if (v106)
        {
          v55 = v106 + 16;
        }

        else
        {
          v55 = 0;
        }

        *buf = 134219522;
        v118 = a4;
        v119 = 2080;
        v120 = a2;
        v121 = 2080;
        v122 = v51;
        v123 = 2080;
        v124 = v52;
        v125 = 2080;
        v126 = v53;
        v127 = 2080;
        v128 = v54;
        v129 = 2082;
        v130 = v55;
        _os_log_impl(&dword_19D52D000, v50, OS_LOG_TYPE_DEFAULT, "%p - %s::logCookieInformation: BLOCKED cookie access for webPageID=%s, frameID=%s, resourceID=%s, firstParty=%s:   referer: %{public}s,", buf, 0x48u);
        if (v106)
        {
          if (*v106 == 1)
          {
            WTF::fastFree(v106, v19);
          }

          else
          {
            --*v106;
          }
        }

        v56 = v107;
        v107 = 0;
        if (v56)
        {
          if (*v56 == 1)
          {
            WTF::fastFree(v56, v19);
          }

          else
          {
            --*v56;
          }
        }

        v57 = v108;
        v108 = 0;
        if (v57)
        {
          if (*v57 == 1)
          {
            WTF::fastFree(v57, v19);
          }

          else
          {
            --*v57;
          }
        }

        v58 = v109;
        v109 = 0;
        if (v58)
        {
          if (*v58 == 1)
          {
            WTF::fastFree(v58, v19);
          }

          else
          {
            --*v58;
          }
        }

        v59 = v110;
        v110 = 0;
        if (v59)
        {
          if (*v59 == 1)
          {
            WTF::fastFree(v59, v19);
          }

          else
          {
            --*v59;
          }
        }

        v20 = *(a1 + 96);
      }

      if (v20 > -2)
      {
        goto LABEL_166;
      }
    }

    if ((*(a1 + 337) & 0x20) != 0)
    {
LABEL_166:
      v60 = qword_1ED6416F0;
      if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
      {
        WTF::String::utf8();
        if (v110)
        {
          v61 = v110 + 16;
        }

        else
        {
          v61 = 0;
        }

        WTF::String::utf8();
        if (v109)
        {
          v62 = v109 + 16;
        }

        else
        {
          v62 = 0;
        }

        WTF::String::utf8();
        if (v108)
        {
          v63 = v108 + 16;
        }

        else
        {
          v63 = 0;
        }

        WTF::String::utf8();
        v64 = v107 + 16;
        v65 = *a7;
        v66 = "true";
        *buf = 134219522;
        if (!v107)
        {
          v64 = 0;
        }

        v118 = a4;
        if (!v65)
        {
          v66 = "false";
        }

        v119 = 2080;
        v120 = a2;
        v121 = 2080;
        v122 = v61;
        v123 = 2080;
        v124 = v62;
        v125 = 2080;
        v126 = v63;
        v127 = 2080;
        v128 = v64;
        v129 = 2082;
        v130 = v66;
        _os_log_impl(&dword_19D52D000, v60, OS_LOG_TYPE_DEFAULT, "%p - %s::logCookieInformation: BLOCKED cookie access for webPageID=%s, frameID=%s, resourceID=%s, firstParty=%s:   isSameSite: %{public}s,", buf, 0x48u);
        v67 = v107;
        v107 = 0;
        if (v67)
        {
          if (*v67 == 1)
          {
            WTF::fastFree(v67, v19);
          }

          else
          {
            --*v67;
          }
        }

        v68 = v108;
        v108 = 0;
        if (v68)
        {
          if (*v68 == 1)
          {
            WTF::fastFree(v68, v19);
          }

          else
          {
            --*v68;
          }
        }

        v69 = v109;
        v109 = 0;
        if (v69)
        {
          if (*v69 == 1)
          {
            WTF::fastFree(v69, v19);
          }

          else
          {
            --*v69;
          }
        }

        v70 = v110;
        v110 = 0;
        if (v70)
        {
          if (*v70 == 1)
          {
            WTF::fastFree(v70, v19);
          }

          else
          {
            --*v70;
          }
        }

        v20 = *(a1 + 96);
      }

      if (v20 > -2)
      {
        goto LABEL_195;
      }
    }

    if ((*(a1 + 337) & 0x20) != 0)
    {
LABEL_195:
      v71 = qword_1ED6416F0;
      if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
      {
        WTF::String::utf8();
        if (v110)
        {
          v72 = v110 + 16;
        }

        else
        {
          v72 = 0;
        }

        WTF::String::utf8();
        if (v109)
        {
          v73 = v109 + 16;
        }

        else
        {
          v73 = 0;
        }

        WTF::String::utf8();
        if (v108)
        {
          v74 = v108 + 16;
        }

        else
        {
          v74 = 0;
        }

        WTF::String::utf8();
        v75 = v107 + 16;
        v76 = a7[1];
        v77 = "true";
        *buf = 134219522;
        if (!v107)
        {
          v75 = 0;
        }

        v118 = a4;
        if (!v76)
        {
          v77 = "false";
        }

        v119 = 2080;
        v120 = a2;
        v121 = 2080;
        v122 = v72;
        v123 = 2080;
        v124 = v73;
        v125 = 2080;
        v126 = v74;
        v127 = 2080;
        v128 = v75;
        v129 = 2082;
        v130 = v77;
        _os_log_impl(&dword_19D52D000, v71, OS_LOG_TYPE_DEFAULT, "%p - %s::logCookieInformation: BLOCKED cookie access for webPageID=%s, frameID=%s, resourceID=%s, firstParty=%s:   isTopSite: %{public}s,", buf, 0x48u);
        v78 = v107;
        v107 = 0;
        if (v78)
        {
          if (*v78 == 1)
          {
            WTF::fastFree(v78, v19);
          }

          else
          {
            --*v78;
          }
        }

        v79 = v108;
        v108 = 0;
        if (v79)
        {
          if (*v79 == 1)
          {
            WTF::fastFree(v79, v19);
          }

          else
          {
            --*v79;
          }
        }

        v80 = v109;
        v109 = 0;
        if (v80)
        {
          if (*v80 == 1)
          {
            WTF::fastFree(v80, v19);
          }

          else
          {
            --*v80;
          }
        }

        v81 = v110;
        v110 = 0;
        if (v81)
        {
          if (*v81 == 1)
          {
            WTF::fastFree(v81, v19);
          }

          else
          {
            --*v81;
          }
        }

        v20 = *(a1 + 96);
      }

      if (v20 > -2)
      {
        goto LABEL_223;
      }
    }

    if ((*(a1 + 337) & 0x20) != 0)
    {
LABEL_223:
      v82 = qword_1ED6416F0;
      if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
      {
        WTF::String::utf8();
        if (v110)
        {
          v83 = v110 + 16;
        }

        else
        {
          v83 = 0;
        }

        WTF::String::utf8();
        if (v109)
        {
          v84 = v109 + 16;
        }

        else
        {
          v84 = 0;
        }

        WTF::String::utf8();
        if (v108)
        {
          v85 = v108 + 16;
        }

        else
        {
          v85 = 0;
        }

        WTF::String::utf8();
        if (v107)
        {
          v86 = v107 + 16;
        }

        else
        {
          v86 = 0;
        }

        *buf = 134219266;
        v118 = a4;
        v119 = 2080;
        v120 = a2;
        v121 = 2080;
        v122 = v83;
        v123 = 2080;
        v124 = v84;
        v125 = 2080;
        v126 = v85;
        v127 = 2080;
        v128 = v86;
        _os_log_impl(&dword_19D52D000, v82, OS_LOG_TYPE_DEFAULT, "%p - %s::logCookieInformation: BLOCKED cookie access for webPageID=%s, frameID=%s, resourceID=%s, firstParty=%s:   cookies: []", buf, 0x3Eu);
        v87 = v107;
        v107 = 0;
        if (v87)
        {
          if (*v87 == 1)
          {
            WTF::fastFree(v87, v19);
          }

          else
          {
            --*v87;
          }
        }

        v88 = v108;
        v108 = 0;
        if (v88)
        {
          if (*v88 == 1)
          {
            WTF::fastFree(v88, v19);
          }

          else
          {
            --*v88;
          }
        }

        v89 = v109;
        v109 = 0;
        if (v89)
        {
          if (*v89 == 1)
          {
            WTF::fastFree(v89, v19);
          }

          else
          {
            --*v89;
          }
        }

        v90 = v110;
        v110 = 0;
        if (v90)
        {
          if (*v90 == 1)
          {
            WTF::fastFree(v90, v19);
          }

          else
          {
            --*v90;
          }
        }

        v20 = *(a1 + 96);
      }

      if (v20 > -2)
      {
        goto LABEL_225;
      }
    }

    if ((*(a1 + 337) & 0x20) != 0)
    {
LABEL_225:
      v91 = qword_1ED6416F0;
      if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
      {
        WTF::String::utf8();
        if (v110)
        {
          v92 = v110 + 16;
        }

        else
        {
          v92 = 0;
        }

        WTF::String::utf8();
        if (v109)
        {
          v93 = v109 + 16;
        }

        else
        {
          v93 = 0;
        }

        WTF::String::utf8();
        if (v108)
        {
          v94 = v108 + 16;
        }

        else
        {
          v94 = 0;
        }

        WTF::String::utf8();
        if (v107)
        {
          v95 = v107 + 16;
        }

        else
        {
          v95 = 0;
        }

        *buf = 134219266;
        v118 = a4;
        v119 = 2080;
        v120 = a2;
        v121 = 2080;
        v122 = v92;
        v123 = 2080;
        v124 = v93;
        v125 = 2080;
        v126 = v94;
        v127 = 2080;
        v128 = v95;
        _os_log_impl(&dword_19D52D000, v91, OS_LOG_TYPE_DEFAULT, "%p - %s::logCookieInformation: BLOCKED cookie access for webPageID=%s, frameID=%s, resourceID=%s, firstParty=%s:   }", buf, 0x3Eu);
        if (v107)
        {
          if (*v107 == 1)
          {
            WTF::fastFree(v107, v19);
          }

          else
          {
            --*v107;
          }
        }

        if (v108)
        {
          if (*v108 == 1)
          {
            WTF::fastFree(v108, v19);
          }

          else
          {
            --*v108;
          }
        }

        if (v109)
        {
          if (*v109 == 1)
          {
            WTF::fastFree(v109, v19);
          }

          else
          {
            --*v109;
          }
        }

        if (v110)
        {
          if (*v110 == 1)
          {
            WTF::fastFree(v110, v19);
          }

          else
          {
            --*v110;
          }
        }
      }
    }

    v96 = v111;
    v111 = 0;
    if (v96 && atomic_fetch_add_explicit(v96, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v96, v19);
    }

    v97 = v112;
    v112 = 0;
    if (v97 && atomic_fetch_add_explicit(v97, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v97, v19);
    }

    v98 = v113;
    v113 = 0;
    if (v98 && atomic_fetch_add_explicit(v98, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v98, v19);
    }

    v99 = v114;
    v114 = 0;
    if (v99 && atomic_fetch_add_explicit(v99, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v99, v19);
    }

    v100 = v115;
    v115 = 0;
    if (v100 && atomic_fetch_add_explicit(v100, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v100, v19);
    }

    result = v116;
    v116 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v19);
      }
    }

    return result;
  }

  return WebKit::logCookieInformationInternal(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t WebKit::logCookieInformationInternal(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, const WTF::URL *a6, _BYTE *a7, const WTF::String **a8, const WTF::String **a9, WTF::String *a10, uint64_t a11, WTF::String *a12, uint64_t a13, WTF::String *a14, uint64_t a15)
{
  v240 = *MEMORY[0x1E69E9840];
  v227 = 0;
  v228 = 0;
  if (!WebCore::NetworkStorageSession::getRawCookies())
  {
    return WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v227, v19);
  }

  v208 = a7;
  WebKit::escapeForJSON(&v226, *a8);
  WebKit::escapeForJSON(&v225, *MEMORY[0x1E696EBA8]);
  WebKit::escapeForJSON(&v224, *a9);
  if (a11)
  {
    WTF::String::number(a10);
    if ((a13 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    WTF::String::number(a12);
    if ((a15 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    WTF::String::number(a14);
    goto LABEL_9;
  }

  WTF::StringImpl::createWithoutCopyingNonEmpty();
  if (a13)
  {
    goto LABEL_7;
  }

LABEL_4:
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  if (a15)
  {
    goto LABEL_8;
  }

LABEL_5:
  WTF::StringImpl::createWithoutCopyingNonEmpty();
LABEL_9:
  v20 = "false";
  if (a11 & a13)
  {
    WebCore::RegistrableDomain::RegistrableDomain(buf, a8);
    WebCore::RegistrableDomain::RegistrableDomain(&v220, a6);
    if (WebCore::NetworkStorageSession::hasStorageAccess())
    {
      v20 = "true";
    }

    else
    {
      v20 = "false";
    }

    v21 = v220;
    v220 = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v19);
    }

    v22 = *buf;
    *buf = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v19);
    }
  }

  v23 = *(a1 + 96);
  if (v23 > -2 || (*(a1 + 337) & 0x20) != 0)
  {
    v24 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      WTF::String::utf8();
      if (v220)
      {
        v25 = v220 + 16;
      }

      else
      {
        v25 = 0;
      }

      WTF::String::utf8();
      if (v219)
      {
        v26 = v219 + 16;
      }

      else
      {
        v26 = 0;
      }

      WTF::String::utf8();
      if (v218)
      {
        v27 = v218 + 16;
      }

      else
      {
        v27 = 0;
      }

      WTF::String::utf8();
      if (v217)
      {
        v28 = v217 + 16;
      }

      else
      {
        v28 = 0;
      }

      *buf = 134219266;
      *&buf[4] = a4;
      v230 = 2080;
      v231 = a2;
      v232 = 2080;
      v233 = v25;
      v234 = 2080;
      v235 = v26;
      v236 = 2080;
      v237 = v27;
      v238 = 2082;
      v239 = v28;
      _os_log_impl(&dword_19D52D000, v24, OS_LOG_TYPE_DEFAULT, "%p - %s::logCookieInformation: webPageID=%s, frameID=%s, resourceID=%s: { url: %{public}s,", buf, 0x3Eu);
      v29 = v217;
      v217 = 0;
      if (v29)
      {
        if (*v29 == 1)
        {
          WTF::fastFree(v29, v19);
        }

        else
        {
          --*v29;
        }
      }

      v30 = v218;
      v218 = 0;
      if (v30)
      {
        if (*v30 == 1)
        {
          WTF::fastFree(v30, v19);
        }

        else
        {
          --*v30;
        }
      }

      v31 = v219;
      v219 = 0;
      if (v31)
      {
        if (*v31 == 1)
        {
          WTF::fastFree(v31, v19);
        }

        else
        {
          --*v31;
        }
      }

      v32 = v220;
      v220 = 0;
      if (v32)
      {
        if (*v32 == 1)
        {
          WTF::fastFree(v32, v19);
        }

        else
        {
          --*v32;
        }
      }

      v23 = *(a1 + 96);
    }

    if (v23 > -2)
    {
      goto LABEL_75;
    }
  }

  if ((*(a1 + 337) & 0x20) != 0)
  {
LABEL_75:
    v33 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      WTF::String::utf8();
      if (v220)
      {
        v34 = v220 + 16;
      }

      else
      {
        v34 = 0;
      }

      WTF::String::utf8();
      if (v219)
      {
        v35 = v219 + 16;
      }

      else
      {
        v35 = 0;
      }

      WTF::String::utf8();
      if (v218)
      {
        v36 = v218 + 16;
      }

      else
      {
        v36 = 0;
      }

      WTF::String::utf8();
      if (v217)
      {
        v37 = v217 + 16;
      }

      else
      {
        v37 = 0;
      }

      *buf = 134219266;
      *&buf[4] = a4;
      v230 = 2080;
      v231 = a2;
      v232 = 2080;
      v233 = v34;
      v234 = 2080;
      v235 = v35;
      v236 = 2080;
      v237 = v36;
      v238 = 2082;
      v239 = v37;
      _os_log_impl(&dword_19D52D000, v33, OS_LOG_TYPE_DEFAULT, "%p - %s::logCookieInformation: webPageID=%s, frameID=%s, resourceID=%s:   partition: %{public}s,", buf, 0x3Eu);
      v38 = v217;
      v217 = 0;
      if (v38)
      {
        if (*v38 == 1)
        {
          WTF::fastFree(v38, v19);
        }

        else
        {
          --*v38;
        }
      }

      v39 = v218;
      v218 = 0;
      if (v39)
      {
        if (*v39 == 1)
        {
          WTF::fastFree(v39, v19);
        }

        else
        {
          --*v39;
        }
      }

      v40 = v219;
      v219 = 0;
      if (v40)
      {
        if (*v40 == 1)
        {
          WTF::fastFree(v40, v19);
        }

        else
        {
          --*v40;
        }
      }

      v41 = v220;
      v220 = 0;
      if (v41)
      {
        if (*v41 == 1)
        {
          WTF::fastFree(v41, v19);
        }

        else
        {
          --*v41;
        }
      }

      v23 = *(a1 + 96);
    }

    if (v23 > -2)
    {
      goto LABEL_97;
    }
  }

  if ((*(a1 + 337) & 0x20) != 0)
  {
LABEL_97:
    v42 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      WTF::String::utf8();
      if (v220)
      {
        v43 = v220 + 16;
      }

      else
      {
        v43 = 0;
      }

      WTF::String::utf8();
      if (v219)
      {
        v44 = v219 + 16;
      }

      else
      {
        v44 = 0;
      }

      WTF::String::utf8();
      if (v218)
      {
        v45 = v218 + 16;
      }

      else
      {
        v45 = 0;
      }

      *buf = 134219266;
      *&buf[4] = a4;
      v230 = 2080;
      v231 = a2;
      v232 = 2080;
      v233 = v43;
      v234 = 2080;
      v235 = v44;
      v236 = 2080;
      v237 = v45;
      v238 = 2082;
      v239 = v20;
      _os_log_impl(&dword_19D52D000, v42, OS_LOG_TYPE_DEFAULT, "%p - %s::logCookieInformation: webPageID=%s, frameID=%s, resourceID=%s:   hasStorageAccess: %{public}s,", buf, 0x3Eu);
      v46 = v218;
      v218 = 0;
      if (v46)
      {
        if (*v46 == 1)
        {
          WTF::fastFree(v46, v19);
        }

        else
        {
          --*v46;
        }
      }

      v47 = v219;
      v219 = 0;
      if (v47)
      {
        if (*v47 == 1)
        {
          WTF::fastFree(v47, v19);
        }

        else
        {
          --*v47;
        }
      }

      v48 = v220;
      v220 = 0;
      if (v48)
      {
        if (*v48 == 1)
        {
          WTF::fastFree(v48, v19);
        }

        else
        {
          --*v48;
        }
      }

      v23 = *(a1 + 96);
    }

    if (v23 > -2)
    {
      goto LABEL_125;
    }
  }

  if ((*(a1 + 337) & 0x20) != 0)
  {
LABEL_125:
    v49 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      WTF::String::utf8();
      if (v220)
      {
        v50 = v220 + 16;
      }

      else
      {
        v50 = 0;
      }

      WTF::String::utf8();
      if (v219)
      {
        v51 = v219 + 16;
      }

      else
      {
        v51 = 0;
      }

      WTF::String::utf8();
      if (v218)
      {
        v52 = v218 + 16;
      }

      else
      {
        v52 = 0;
      }

      WTF::String::utf8();
      if (v217)
      {
        v53 = v217 + 16;
      }

      else
      {
        v53 = 0;
      }

      *buf = 134219266;
      *&buf[4] = a4;
      v230 = 2080;
      v231 = a2;
      v232 = 2080;
      v233 = v50;
      v234 = 2080;
      v235 = v51;
      v236 = 2080;
      v237 = v52;
      v238 = 2082;
      v239 = v53;
      _os_log_impl(&dword_19D52D000, v49, OS_LOG_TYPE_DEFAULT, "%p - %s::logCookieInformation: webPageID=%s, frameID=%s, resourceID=%s:   referer: %{public}s,", buf, 0x3Eu);
      v54 = v217;
      v217 = 0;
      if (v54)
      {
        if (*v54 == 1)
        {
          WTF::fastFree(v54, v19);
        }

        else
        {
          --*v54;
        }
      }

      v55 = v218;
      v218 = 0;
      if (v55)
      {
        if (*v55 == 1)
        {
          WTF::fastFree(v55, v19);
        }

        else
        {
          --*v55;
        }
      }

      v56 = v219;
      v219 = 0;
      if (v56)
      {
        if (*v56 == 1)
        {
          WTF::fastFree(v56, v19);
        }

        else
        {
          --*v56;
        }
      }

      v57 = v220;
      v220 = 0;
      if (v57)
      {
        if (*v57 == 1)
        {
          WTF::fastFree(v57, v19);
        }

        else
        {
          --*v57;
        }
      }

      v23 = *(a1 + 96);
    }

    if (v23 > -2)
    {
      goto LABEL_149;
    }
  }

  if ((*(a1 + 337) & 0x20) != 0)
  {
LABEL_149:
    v58 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      WTF::String::utf8();
      if (v220)
      {
        v59 = v220 + 16;
      }

      else
      {
        v59 = 0;
      }

      WTF::String::utf8();
      if (v219)
      {
        v60 = v219 + 16;
      }

      else
      {
        v60 = 0;
      }

      WTF::String::utf8();
      if (v218)
      {
        v61 = v218 + 16;
      }

      else
      {
        v61 = 0;
      }

      v62 = "false";
      if (*v208)
      {
        v62 = "true";
      }

      *buf = 134219266;
      *&buf[4] = a4;
      v230 = 2080;
      v231 = a2;
      v232 = 2080;
      v233 = v59;
      v234 = 2080;
      v235 = v60;
      v236 = 2080;
      v237 = v61;
      v238 = 2082;
      v239 = v62;
      _os_log_impl(&dword_19D52D000, v58, OS_LOG_TYPE_DEFAULT, "%p - %s::logCookieInformation: webPageID=%s, frameID=%s, resourceID=%s:   isSameSite: %{public}s,", buf, 0x3Eu);
      v63 = v218;
      v218 = 0;
      if (v63)
      {
        if (*v63 == 1)
        {
          WTF::fastFree(v63, v19);
        }

        else
        {
          --*v63;
        }
      }

      v64 = v219;
      v219 = 0;
      if (v64)
      {
        if (*v64 == 1)
        {
          WTF::fastFree(v64, v19);
        }

        else
        {
          --*v64;
        }
      }

      v65 = v220;
      v220 = 0;
      if (v65)
      {
        if (*v65 == 1)
        {
          WTF::fastFree(v65, v19);
        }

        else
        {
          --*v65;
        }
      }

      v23 = *(a1 + 96);
    }

    if (v23 > -2)
    {
      goto LABEL_173;
    }
  }

  if ((*(a1 + 337) & 0x20) != 0)
  {
LABEL_173:
    v66 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      WTF::String::utf8();
      if (v220)
      {
        v67 = v220 + 16;
      }

      else
      {
        v67 = 0;
      }

      WTF::String::utf8();
      if (v219)
      {
        v68 = v219 + 16;
      }

      else
      {
        v68 = 0;
      }

      WTF::String::utf8();
      if (v218)
      {
        v69 = v218 + 16;
      }

      else
      {
        v69 = 0;
      }

      v70 = "false";
      if (v208[1])
      {
        v70 = "true";
      }

      *buf = 134219266;
      *&buf[4] = a4;
      v230 = 2080;
      v231 = a2;
      v232 = 2080;
      v233 = v67;
      v234 = 2080;
      v235 = v68;
      v236 = 2080;
      v237 = v69;
      v238 = 2082;
      v239 = v70;
      _os_log_impl(&dword_19D52D000, v66, OS_LOG_TYPE_DEFAULT, "%p - %s::logCookieInformation: webPageID=%s, frameID=%s, resourceID=%s:   isTopSite: %{public}s,", buf, 0x3Eu);
      v71 = v218;
      v218 = 0;
      if (v71)
      {
        if (*v71 == 1)
        {
          WTF::fastFree(v71, v19);
        }

        else
        {
          --*v71;
        }
      }

      v72 = v219;
      v219 = 0;
      if (v72)
      {
        if (*v72 == 1)
        {
          WTF::fastFree(v72, v19);
        }

        else
        {
          --*v72;
        }
      }

      v73 = v220;
      v220 = 0;
      if (v73)
      {
        if (*v73 == 1)
        {
          WTF::fastFree(v73, v19);
        }

        else
        {
          --*v73;
        }
      }

      v23 = *(a1 + 96);
    }

    if (v23 > -2)
    {
      goto LABEL_175;
    }
  }

  if ((*(a1 + 337) & 0x20) != 0)
  {
LABEL_175:
    v74 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      WTF::String::utf8();
      if (v220)
      {
        v75 = v220 + 16;
      }

      else
      {
        v75 = 0;
      }

      WTF::String::utf8();
      if (v219)
      {
        v76 = v219 + 16;
      }

      else
      {
        v76 = 0;
      }

      WTF::String::utf8();
      if (v218)
      {
        v77 = v218 + 16;
      }

      else
      {
        v77 = 0;
      }

      *buf = 134219010;
      *&buf[4] = a4;
      v230 = 2080;
      v231 = a2;
      v232 = 2080;
      v233 = v75;
      v234 = 2080;
      v235 = v76;
      v236 = 2080;
      v237 = v77;
      _os_log_impl(&dword_19D52D000, v74, OS_LOG_TYPE_DEFAULT, "%p - %s::logCookieInformation: webPageID=%s, frameID=%s, resourceID=%s:   cookies: [", buf, 0x34u);
      v78 = v218;
      v218 = 0;
      if (v78)
      {
        if (*v78 == 1)
        {
          WTF::fastFree(v78, v19);
        }

        else
        {
          --*v78;
        }
      }

      v79 = v219;
      v219 = 0;
      if (v79)
      {
        if (*v79 == 1)
        {
          WTF::fastFree(v79, v19);
        }

        else
        {
          --*v79;
        }
      }

      v80 = v220;
      v220 = 0;
      if (v80)
      {
        if (*v80 == 1)
        {
          WTF::fastFree(v80, v19);
        }

        else
        {
          --*v80;
        }
      }
    }
  }

  if (HIDWORD(v228))
  {
    v207 = v227 + 144 * HIDWORD(v228);
    v81 = HIDWORD(v228) - 1;
    v82 = v227 + 66;
    do
    {
      v83 = v82 - 66;
      WebKit::escapeForJSON(&v220, *(v82 - 66));
      WebKit::escapeForJSON(&v219, *(v82 - 58));
      WebKit::escapeForJSON(&v218, *(v82 - 50));
      WebKit::escapeForJSON(&v217, *(v82 - 42));
      WebKit::escapeForJSON(&v216, *(v82 + 6));
      WebKit::escapeForJSON(&v215, *(v82 + 14));
      v84 = *(a1 + 96);
      if (v84 > -2 || (*(a1 + 337) & 0x20) != 0)
      {
        v85 = qword_1ED6416F0;
        if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
        {
          WTF::String::utf8();
          if (v214)
          {
            v86 = v214 + 16;
          }

          else
          {
            v86 = 0;
          }

          WTF::String::utf8();
          if (v213)
          {
            v87 = v213 + 16;
          }

          else
          {
            v87 = 0;
          }

          WTF::String::utf8();
          if (v212)
          {
            v88 = v212 + 16;
          }

          else
          {
            v88 = 0;
          }

          WTF::String::utf8();
          if (v211)
          {
            v89 = v211 + 16;
          }

          else
          {
            v89 = 0;
          }

          *buf = 134219266;
          *&buf[4] = a4;
          v230 = 2080;
          v231 = a2;
          v232 = 2080;
          v233 = v86;
          v234 = 2080;
          v235 = v87;
          v236 = 2080;
          v237 = v88;
          v238 = 2082;
          v239 = v89;
          _os_log_impl(&dword_19D52D000, v85, OS_LOG_TYPE_DEFAULT, "%p - %s::logCookieInformation: webPageID=%s, frameID=%s, resourceID=%s:   { name: %{public}s,", buf, 0x3Eu);
          v90 = v211;
          v211 = 0;
          if (v90)
          {
            if (*v90 == 1)
            {
              WTF::fastFree(v90, v19);
            }

            else
            {
              --*v90;
            }
          }

          v91 = v212;
          v212 = 0;
          if (v91)
          {
            if (*v91 == 1)
            {
              WTF::fastFree(v91, v19);
            }

            else
            {
              --*v91;
            }
          }

          v92 = v213;
          v213 = 0;
          if (v92)
          {
            if (*v92 == 1)
            {
              WTF::fastFree(v92, v19);
            }

            else
            {
              --*v92;
            }
          }

          v93 = v214;
          v214 = 0;
          if (v93)
          {
            if (*v93 == 1)
            {
              WTF::fastFree(v93, v19);
            }

            else
            {
              --*v93;
            }
          }

          v84 = *(a1 + 96);
        }

        if (v84 > -2)
        {
          goto LABEL_252;
        }
      }

      if ((*(a1 + 337) & 0x20) != 0)
      {
LABEL_252:
        v94 = qword_1ED6416F0;
        if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
        {
          WTF::String::utf8();
          if (v214)
          {
            v95 = v214 + 16;
          }

          else
          {
            v95 = 0;
          }

          WTF::String::utf8();
          if (v213)
          {
            v96 = v213 + 16;
          }

          else
          {
            v96 = 0;
          }

          WTF::String::utf8();
          if (v212)
          {
            v97 = v212 + 16;
          }

          else
          {
            v97 = 0;
          }

          WTF::String::utf8();
          if (v211)
          {
            v98 = v211 + 16;
          }

          else
          {
            v98 = 0;
          }

          *buf = 134219266;
          *&buf[4] = a4;
          v230 = 2080;
          v231 = a2;
          v232 = 2080;
          v233 = v95;
          v234 = 2080;
          v235 = v96;
          v236 = 2080;
          v237 = v97;
          v238 = 2082;
          v239 = v98;
          _os_log_impl(&dword_19D52D000, v94, OS_LOG_TYPE_DEFAULT, "%p - %s::logCookieInformation: webPageID=%s, frameID=%s, resourceID=%s:     value: %{public}s,", buf, 0x3Eu);
          v99 = v211;
          v211 = 0;
          if (v99)
          {
            if (*v99 == 1)
            {
              WTF::fastFree(v99, v19);
            }

            else
            {
              --*v99;
            }
          }

          v100 = v212;
          v212 = 0;
          if (v100)
          {
            if (*v100 == 1)
            {
              WTF::fastFree(v100, v19);
            }

            else
            {
              --*v100;
            }
          }

          v101 = v213;
          v213 = 0;
          if (v101)
          {
            if (*v101 == 1)
            {
              WTF::fastFree(v101, v19);
            }

            else
            {
              --*v101;
            }
          }

          v102 = v214;
          v214 = 0;
          if (v102)
          {
            if (*v102 == 1)
            {
              WTF::fastFree(v102, v19);
            }

            else
            {
              --*v102;
            }
          }

          v84 = *(a1 + 96);
        }

        if (v84 > -2)
        {
          goto LABEL_280;
        }
      }

      if ((*(a1 + 337) & 0x20) != 0)
      {
LABEL_280:
        v103 = qword_1ED6416F0;
        if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
        {
          WTF::String::utf8();
          if (v214)
          {
            v104 = v214 + 16;
          }

          else
          {
            v104 = 0;
          }

          WTF::String::utf8();
          if (v213)
          {
            v105 = v213 + 16;
          }

          else
          {
            v105 = 0;
          }

          WTF::String::utf8();
          if (v212)
          {
            v106 = v212 + 16;
          }

          else
          {
            v106 = 0;
          }

          WTF::String::utf8();
          if (v211)
          {
            v107 = v211 + 16;
          }

          else
          {
            v107 = 0;
          }

          *buf = 134219266;
          *&buf[4] = a4;
          v230 = 2080;
          v231 = a2;
          v232 = 2080;
          v233 = v104;
          v234 = 2080;
          v235 = v105;
          v236 = 2080;
          v237 = v106;
          v238 = 2082;
          v239 = v107;
          _os_log_impl(&dword_19D52D000, v103, OS_LOG_TYPE_DEFAULT, "%p - %s::logCookieInformation: webPageID=%s, frameID=%s, resourceID=%s:     domain: %{public}s,", buf, 0x3Eu);
          v108 = v211;
          v211 = 0;
          if (v108)
          {
            if (*v108 == 1)
            {
              WTF::fastFree(v108, v19);
            }

            else
            {
              --*v108;
            }
          }

          v109 = v212;
          v212 = 0;
          if (v109)
          {
            if (*v109 == 1)
            {
              WTF::fastFree(v109, v19);
            }

            else
            {
              --*v109;
            }
          }

          v110 = v213;
          v213 = 0;
          if (v110)
          {
            if (*v110 == 1)
            {
              WTF::fastFree(v110, v19);
            }

            else
            {
              --*v110;
            }
          }

          v111 = v214;
          v214 = 0;
          if (v111)
          {
            if (*v111 == 1)
            {
              WTF::fastFree(v111, v19);
            }

            else
            {
              --*v111;
            }
          }

          v84 = *(a1 + 96);
        }

        if (v84 > -2)
        {
          goto LABEL_308;
        }
      }

      if ((*(a1 + 337) & 0x20) != 0)
      {
LABEL_308:
        v112 = qword_1ED6416F0;
        if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
        {
          WTF::String::utf8();
          if (v214)
          {
            v113 = v214 + 16;
          }

          else
          {
            v113 = 0;
          }

          WTF::String::utf8();
          if (v213)
          {
            v114 = v213 + 16;
          }

          else
          {
            v114 = 0;
          }

          WTF::String::utf8();
          if (v212)
          {
            v115 = v212 + 16;
          }

          else
          {
            v115 = 0;
          }

          WTF::String::utf8();
          if (v211)
          {
            v116 = v211 + 16;
          }

          else
          {
            v116 = 0;
          }

          *buf = 134219266;
          *&buf[4] = a4;
          v230 = 2080;
          v231 = a2;
          v232 = 2080;
          v233 = v113;
          v234 = 2080;
          v235 = v114;
          v236 = 2080;
          v237 = v115;
          v238 = 2082;
          v239 = v116;
          _os_log_impl(&dword_19D52D000, v112, OS_LOG_TYPE_DEFAULT, "%p - %s::logCookieInformation: webPageID=%s, frameID=%s, resourceID=%s:     path: %{public}s,", buf, 0x3Eu);
          v117 = v211;
          v211 = 0;
          if (v117)
          {
            if (*v117 == 1)
            {
              WTF::fastFree(v117, v19);
            }

            else
            {
              --*v117;
            }
          }

          v118 = v212;
          v212 = 0;
          if (v118)
          {
            if (*v118 == 1)
            {
              WTF::fastFree(v118, v19);
            }

            else
            {
              --*v118;
            }
          }

          v119 = v213;
          v213 = 0;
          if (v119)
          {
            if (*v119 == 1)
            {
              WTF::fastFree(v119, v19);
            }

            else
            {
              --*v119;
            }
          }

          v120 = v214;
          v214 = 0;
          if (v120)
          {
            if (*v120 == 1)
            {
              WTF::fastFree(v120, v19);
            }

            else
            {
              --*v120;
            }
          }

          v84 = *(a1 + 96);
        }

        if (v84 > -2)
        {
          goto LABEL_330;
        }
      }

      if ((*(a1 + 337) & 0x20) != 0)
      {
LABEL_330:
        v121 = qword_1ED6416F0;
        if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
        {
          WTF::String::utf8();
          if (v214)
          {
            v122 = v214 + 16;
          }

          else
          {
            v122 = 0;
          }

          WTF::String::utf8();
          if (v213)
          {
            v123 = v213 + 16;
          }

          else
          {
            v123 = 0;
          }

          WTF::String::utf8();
          if (v212)
          {
            v124 = v212 + 16;
          }

          else
          {
            v124 = 0;
          }

          v125 = *(v82 - 26);
          *buf = 134219266;
          *&buf[4] = a4;
          v230 = 2080;
          v231 = a2;
          v232 = 2080;
          v233 = v122;
          v234 = 2080;
          v235 = v123;
          v236 = 2080;
          v237 = v124;
          v238 = 2048;
          v239 = v125;
          _os_log_impl(&dword_19D52D000, v121, OS_LOG_TYPE_DEFAULT, "%p - %s::logCookieInformation: webPageID=%s, frameID=%s, resourceID=%s:     created: %f,", buf, 0x3Eu);
          v126 = v212;
          v212 = 0;
          if (v126)
          {
            if (*v126 == 1)
            {
              WTF::fastFree(v126, v19);
            }

            else
            {
              --*v126;
            }
          }

          v127 = v213;
          v213 = 0;
          if (v127)
          {
            if (*v127 == 1)
            {
              WTF::fastFree(v127, v19);
            }

            else
            {
              --*v127;
            }
          }

          v128 = v214;
          v214 = 0;
          if (v128)
          {
            if (*v128 == 1)
            {
              WTF::fastFree(v128, v19);
            }

            else
            {
              --*v128;
            }
          }

          v84 = *(a1 + 96);
        }

        if (v84 > -2)
        {
          goto LABEL_354;
        }
      }

      if ((*(a1 + 337) & 0x20) != 0)
      {
LABEL_354:
        v129 = qword_1ED6416F0;
        if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
        {
          WTF::String::utf8();
          if (v214)
          {
            v130 = v214 + 16;
          }

          else
          {
            v130 = 0;
          }

          WTF::String::utf8();
          if (v213)
          {
            v131 = v213 + 16;
          }

          else
          {
            v131 = 0;
          }

          WTF::String::utf8();
          v132 = 0;
          if (v212)
          {
            v133 = v212 + 16;
          }

          else
          {
            v133 = 0;
          }

          if (*(v82 - 10) == 1)
          {
            v132 = *(v82 - 18);
          }

          *buf = 134219266;
          *&buf[4] = a4;
          v230 = 2080;
          v231 = a2;
          v232 = 2080;
          v233 = v130;
          v234 = 2080;
          v235 = v131;
          v236 = 2080;
          v237 = v133;
          v238 = 2048;
          v239 = v132;
          _os_log_impl(&dword_19D52D000, v129, OS_LOG_TYPE_DEFAULT, "%p - %s::logCookieInformation: webPageID=%s, frameID=%s, resourceID=%s:     expires: %f,", buf, 0x3Eu);
          v134 = v212;
          v212 = 0;
          if (v134)
          {
            if (*v134 == 1)
            {
              WTF::fastFree(v134, v19);
            }

            else
            {
              --*v134;
            }
          }

          v135 = v213;
          v213 = 0;
          if (v135)
          {
            if (*v135 == 1)
            {
              WTF::fastFree(v135, v19);
            }

            else
            {
              --*v135;
            }
          }

          v136 = v214;
          v214 = 0;
          if (v136)
          {
            if (*v136 == 1)
            {
              WTF::fastFree(v136, v19);
            }

            else
            {
              --*v136;
            }
          }

          v84 = *(a1 + 96);
        }

        if (v84 > -2)
        {
          goto LABEL_378;
        }
      }

      if ((*(a1 + 337) & 0x20) != 0)
      {
LABEL_378:
        v137 = qword_1ED6416F0;
        if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
        {
          WTF::String::utf8();
          if (v214)
          {
            v138 = v214 + 16;
          }

          else
          {
            v138 = 0;
          }

          WTF::String::utf8();
          if (v213)
          {
            v139 = v213 + 16;
          }

          else
          {
            v139 = 0;
          }

          WTF::String::utf8();
          if (v212)
          {
            v140 = v212 + 16;
          }

          else
          {
            v140 = 0;
          }

          v141 = "false";
          if (*(v82 - 2))
          {
            v141 = "true";
          }

          *buf = 134219266;
          *&buf[4] = a4;
          v230 = 2080;
          v231 = a2;
          v232 = 2080;
          v233 = v138;
          v234 = 2080;
          v235 = v139;
          v236 = 2080;
          v237 = v140;
          v238 = 2082;
          v239 = v141;
          _os_log_impl(&dword_19D52D000, v137, OS_LOG_TYPE_DEFAULT, "%p - %s::logCookieInformation: webPageID=%s, frameID=%s, resourceID=%s:     httpOnly: %{public}s,", buf, 0x3Eu);
          v142 = v212;
          v212 = 0;
          if (v142)
          {
            if (*v142 == 1)
            {
              WTF::fastFree(v142, v19);
            }

            else
            {
              --*v142;
            }
          }

          v143 = v213;
          v213 = 0;
          if (v143)
          {
            if (*v143 == 1)
            {
              WTF::fastFree(v143, v19);
            }

            else
            {
              --*v143;
            }
          }

          v144 = v214;
          v214 = 0;
          if (v144)
          {
            if (*v144 == 1)
            {
              WTF::fastFree(v144, v19);
            }

            else
            {
              --*v144;
            }
          }

          v84 = *(a1 + 96);
        }

        if (v84 > -2)
        {
          goto LABEL_402;
        }
      }

      if ((*(a1 + 337) & 0x20) != 0)
      {
LABEL_402:
        v145 = qword_1ED6416F0;
        if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
        {
          WTF::String::utf8();
          if (v214)
          {
            v146 = v214 + 16;
          }

          else
          {
            v146 = 0;
          }

          WTF::String::utf8();
          if (v213)
          {
            v147 = v213 + 16;
          }

          else
          {
            v147 = 0;
          }

          WTF::String::utf8();
          if (v212)
          {
            v148 = v212 + 16;
          }

          else
          {
            v148 = 0;
          }

          v149 = "false";
          if (*(v82 - 1))
          {
            v149 = "true";
          }

          *buf = 134219266;
          *&buf[4] = a4;
          v230 = 2080;
          v231 = a2;
          v232 = 2080;
          v233 = v146;
          v234 = 2080;
          v235 = v147;
          v236 = 2080;
          v237 = v148;
          v238 = 2082;
          v239 = v149;
          _os_log_impl(&dword_19D52D000, v145, OS_LOG_TYPE_DEFAULT, "%p - %s::logCookieInformation: webPageID=%s, frameID=%s, resourceID=%s:     secure: %{public}s,", buf, 0x3Eu);
          v150 = v212;
          v212 = 0;
          if (v150)
          {
            if (*v150 == 1)
            {
              WTF::fastFree(v150, v19);
            }

            else
            {
              --*v150;
            }
          }

          v151 = v213;
          v213 = 0;
          if (v151)
          {
            if (*v151 == 1)
            {
              WTF::fastFree(v151, v19);
            }

            else
            {
              --*v151;
            }
          }

          v152 = v214;
          v214 = 0;
          if (v152)
          {
            if (*v152 == 1)
            {
              WTF::fastFree(v152, v19);
            }

            else
            {
              --*v152;
            }
          }

          v84 = *(a1 + 96);
        }

        if (v84 > -2)
        {
          goto LABEL_426;
        }
      }

      if ((*(a1 + 337) & 0x20) != 0)
      {
LABEL_426:
        v153 = qword_1ED6416F0;
        if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
        {
          WTF::String::utf8();
          if (v214)
          {
            v154 = v214 + 16;
          }

          else
          {
            v154 = 0;
          }

          WTF::String::utf8();
          if (v213)
          {
            v155 = v213 + 16;
          }

          else
          {
            v155 = 0;
          }

          WTF::String::utf8();
          if (v212)
          {
            v156 = v212 + 16;
          }

          else
          {
            v156 = 0;
          }

          v157 = "false";
          if (*v82)
          {
            v157 = "true";
          }

          *buf = 134219266;
          *&buf[4] = a4;
          v230 = 2080;
          v231 = a2;
          v232 = 2080;
          v233 = v154;
          v234 = 2080;
          v235 = v155;
          v236 = 2080;
          v237 = v156;
          v238 = 2082;
          v239 = v157;
          _os_log_impl(&dword_19D52D000, v153, OS_LOG_TYPE_DEFAULT, "%p - %s::logCookieInformation: webPageID=%s, frameID=%s, resourceID=%s:     session: %{public}s,", buf, 0x3Eu);
          v158 = v212;
          v212 = 0;
          if (v158)
          {
            if (*v158 == 1)
            {
              WTF::fastFree(v158, v19);
            }

            else
            {
              --*v158;
            }
          }

          v159 = v213;
          v213 = 0;
          if (v159)
          {
            if (*v159 == 1)
            {
              WTF::fastFree(v159, v19);
            }

            else
            {
              --*v159;
            }
          }

          v160 = v214;
          v214 = 0;
          if (v160)
          {
            if (*v160 == 1)
            {
              WTF::fastFree(v160, v19);
            }

            else
            {
              --*v160;
            }
          }

          v84 = *(a1 + 96);
        }

        if (v84 > -2)
        {
          goto LABEL_454;
        }
      }

      if ((*(a1 + 337) & 0x20) != 0)
      {
LABEL_454:
        v161 = qword_1ED6416F0;
        if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
        {
          WTF::String::utf8();
          if (v214)
          {
            v162 = v214 + 16;
          }

          else
          {
            v162 = 0;
          }

          WTF::String::utf8();
          if (v213)
          {
            v163 = v213 + 16;
          }

          else
          {
            v163 = 0;
          }

          WTF::String::utf8();
          if (v212)
          {
            v164 = v212 + 16;
          }

          else
          {
            v164 = 0;
          }

          WTF::String::utf8();
          if (v211)
          {
            v165 = v211 + 16;
          }

          else
          {
            v165 = 0;
          }

          *buf = 134219266;
          *&buf[4] = a4;
          v230 = 2080;
          v231 = a2;
          v232 = 2080;
          v233 = v162;
          v234 = 2080;
          v235 = v163;
          v236 = 2080;
          v237 = v164;
          v238 = 2082;
          v239 = v165;
          _os_log_impl(&dword_19D52D000, v161, OS_LOG_TYPE_DEFAULT, "%p - %s::logCookieInformation: webPageID=%s, frameID=%s, resourceID=%s:     comment: %{public}s,", buf, 0x3Eu);
          v166 = v211;
          v211 = 0;
          if (v166)
          {
            if (*v166 == 1)
            {
              WTF::fastFree(v166, v19);
            }

            else
            {
              --*v166;
            }
          }

          v167 = v212;
          v212 = 0;
          if (v167)
          {
            if (*v167 == 1)
            {
              WTF::fastFree(v167, v19);
            }

            else
            {
              --*v167;
            }
          }

          v168 = v213;
          v213 = 0;
          if (v168)
          {
            if (*v168 == 1)
            {
              WTF::fastFree(v168, v19);
            }

            else
            {
              --*v168;
            }
          }

          v169 = v214;
          v214 = 0;
          if (v169)
          {
            if (*v169 == 1)
            {
              WTF::fastFree(v169, v19);
            }

            else
            {
              --*v169;
            }
          }

          v84 = *(a1 + 96);
        }

        if (v84 > -2)
        {
          goto LABEL_482;
        }
      }

      if ((*(a1 + 337) & 0x20) != 0)
      {
LABEL_482:
        v170 = qword_1ED6416F0;
        if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
        {
          WTF::String::utf8();
          if (v214)
          {
            v171 = v214 + 16;
          }

          else
          {
            v171 = 0;
          }

          WTF::String::utf8();
          if (v213)
          {
            v172 = v213 + 16;
          }

          else
          {
            v172 = 0;
          }

          WTF::String::utf8();
          if (v212)
          {
            v173 = v212 + 16;
          }

          else
          {
            v173 = 0;
          }

          WTF::String::utf8();
          if (v211)
          {
            v174 = v211 + 16;
          }

          else
          {
            v174 = 0;
          }

          *buf = 134219266;
          *&buf[4] = a4;
          v230 = 2080;
          v231 = a2;
          v232 = 2080;
          v233 = v171;
          v234 = 2080;
          v235 = v172;
          v236 = 2080;
          v237 = v173;
          v238 = 2082;
          v239 = v174;
          _os_log_impl(&dword_19D52D000, v170, OS_LOG_TYPE_DEFAULT, "%p - %s::logCookieInformation: webPageID=%s, frameID=%s, resourceID=%s:     commentURL: %{public}s", buf, 0x3Eu);
          v175 = v211;
          v211 = 0;
          if (v175)
          {
            if (*v175 == 1)
            {
              WTF::fastFree(v175, v19);
            }

            else
            {
              --*v175;
            }
          }

          v176 = v212;
          v212 = 0;
          if (v176)
          {
            if (*v176 == 1)
            {
              WTF::fastFree(v176, v19);
            }

            else
            {
              --*v176;
            }
          }

          v177 = v213;
          v213 = 0;
          if (v177)
          {
            if (*v177 == 1)
            {
              WTF::fastFree(v177, v19);
            }

            else
            {
              --*v177;
            }
          }

          v178 = v214;
          v214 = 0;
          if (v178)
          {
            if (*v178 == 1)
            {
              WTF::fastFree(v178, v19);
            }

            else
            {
              --*v178;
            }
          }

          v84 = *(a1 + 96);
        }

        if (v84 > -2)
        {
          goto LABEL_484;
        }
      }

      if ((*(a1 + 337) & 0x20) != 0)
      {
LABEL_484:
        v179 = qword_1ED6416F0;
        if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
        {
          WTF::String::utf8();
          if (v214)
          {
            v180 = v214 + 16;
          }

          else
          {
            v180 = 0;
          }

          WTF::String::utf8();
          if (v213)
          {
            v181 = v213 + 16;
          }

          else
          {
            v181 = 0;
          }

          WTF::String::utf8();
          if (v212)
          {
            v182 = v212 + 16;
          }

          else
          {
            v182 = 0;
          }

          *buf = 134219266;
          v183 = ",";
          if (!v81)
          {
            v183 = "";
          }

          *&buf[4] = a4;
          v230 = 2080;
          v231 = a2;
          v232 = 2080;
          v233 = v180;
          v234 = 2080;
          v235 = v181;
          v236 = 2080;
          v237 = v182;
          v238 = 2082;
          v239 = v183;
          _os_log_impl(&dword_19D52D000, v179, OS_LOG_TYPE_DEFAULT, "%p - %s::logCookieInformation: webPageID=%s, frameID=%s, resourceID=%s:   }%{public}s", buf, 0x3Eu);
          v184 = v212;
          v212 = 0;
          if (v184)
          {
            if (*v184 == 1)
            {
              WTF::fastFree(v184, v19);
            }

            else
            {
              --*v184;
            }
          }

          v185 = v213;
          v213 = 0;
          if (v185)
          {
            if (*v185 == 1)
            {
              WTF::fastFree(v185, v19);
            }

            else
            {
              --*v185;
            }
          }

          v186 = v214;
          v214 = 0;
          if (v186)
          {
            if (*v186 == 1)
            {
              WTF::fastFree(v186, v19);
            }

            else
            {
              --*v186;
            }
          }
        }
      }

      v187 = v215;
      v215 = 0;
      if (v187 && atomic_fetch_add_explicit(v187, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v187, v19);
      }

      v188 = v216;
      v216 = 0;
      if (v188 && atomic_fetch_add_explicit(v188, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v188, v19);
      }

      v189 = v217;
      v217 = 0;
      if (v189 && atomic_fetch_add_explicit(v189, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v189, v19);
      }

      v190 = v218;
      v218 = 0;
      if (v190 && atomic_fetch_add_explicit(v190, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v190, v19);
      }

      v191 = v219;
      v219 = 0;
      if (v191 && atomic_fetch_add_explicit(v191, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v191, v19);
      }

      v192 = v220;
      v220 = 0;
      if (v192 && atomic_fetch_add_explicit(v192, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v192, v19);
      }

      --v81;
      v82 += 144;
    }

    while (v83 + 144 != v207);
  }

  if (*(a1 + 96) > -2 || (*(a1 + 337) & 0x20) != 0)
  {
    v193 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      WTF::String::utf8();
      if (v220)
      {
        v194 = v220 + 16;
      }

      else
      {
        v194 = 0;
      }

      WTF::String::utf8();
      if (v219)
      {
        v195 = v219 + 16;
      }

      else
      {
        v195 = 0;
      }

      WTF::String::utf8();
      if (v218)
      {
        v196 = v218 + 16;
      }

      else
      {
        v196 = 0;
      }

      *buf = 134219010;
      *&buf[4] = a4;
      v230 = 2080;
      v231 = a2;
      v232 = 2080;
      v233 = v194;
      v234 = 2080;
      v235 = v195;
      v236 = 2080;
      v237 = v196;
      _os_log_impl(&dword_19D52D000, v193, OS_LOG_TYPE_DEFAULT, "%p - %s::logCookieInformation: webPageID=%s, frameID=%s, resourceID=%s: ]}", buf, 0x34u);
      v197 = v218;
      v218 = 0;
      if (v197)
      {
        if (*v197 == 1)
        {
          WTF::fastFree(v197, v19);
        }

        else
        {
          --*v197;
        }
      }

      v198 = v219;
      v219 = 0;
      if (v198)
      {
        if (*v198 == 1)
        {
          WTF::fastFree(v198, v19);
        }

        else
        {
          --*v198;
        }
      }

      v199 = v220;
      v220 = 0;
      if (v199)
      {
        if (*v199 == 1)
        {
          WTF::fastFree(v199, v19);
        }

        else
        {
          --*v199;
        }
      }
    }
  }

  v200 = v221;
  v221 = 0;
  if (v200 && atomic_fetch_add_explicit(v200, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v200, v19);
  }

  v201 = v222;
  v222 = 0;
  if (v201 && atomic_fetch_add_explicit(v201, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v201, v19);
  }

  v202 = v223;
  v223 = 0;
  if (v202 && atomic_fetch_add_explicit(v202, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v202, v19);
  }

  v203 = v224;
  v224 = 0;
  if (v203 && atomic_fetch_add_explicit(v203, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v203, v19);
  }

  v204 = v225;
  v225 = 0;
  if (v204 && atomic_fetch_add_explicit(v204, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v204, v19);
  }

  v205 = v226;
  v226 = 0;
  if (v205 && atomic_fetch_add_explicit(v205, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v205, v19);
  }

  return WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v227, v19);
}

IPC::Encoder *WebKit::NetworkResourceLoader::enqueueSecurityPolicyViolationEvent(void *a1, void *a2)
{
  v5 = a1[11];
  v4 = a1[12];
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 2543;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v5;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, v4);
  IPC::ArgumentCoder<WebCore::SecurityPolicyViolationEventInit,void>::encode(v6, a2);
  (*(a1[3] + 32))(a1 + 3, &v11, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

void WebKit::NetworkResourceLoader::startWithServiceWorker(WebKit::NetworkResourceLoader *this)
{
  v56 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 410);
    if (!v3)
    {
      __break(0xC471u);
      goto LABEL_40;
    }

    v5 = *(this + 11);
    v4 = *(this + 12);
    v6 = *(this + 10);
    v7 = *(this + 251) == 1;
    v8 = *(this + 3328);
    v9 = *(this + 555) != 0;
    *buf = 134219776;
    *&buf[4] = this;
    v37 = 2048;
    v38 = v6;
    v39 = 2048;
    v40 = v5;
    v41 = 2048;
    v42 = v4;
    v43 = 2048;
    v44 = v3;
    v45 = 1024;
    v46 = v7;
    v47 = 1024;
    v48 = v8;
    v49 = 1024;
    v50 = v9;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::startWithServiceWorker:", buf, 0x46u);
  }

  WebCore::ResourceRequest::ResourceRequest(v35, (this + 104));
  if (*(this + 251) == 1)
  {
    WebCore::ContentFilter::create();
    v14 = *buf;
    *buf = 0;
    v15 = *(this + 637);
    *(this + 637) = v14;
    if (v15)
    {
      WebCore::ContentFilter::operator delete();
      v23 = *buf;
      *buf = 0;
      if (v23)
      {
        WebCore::ContentFilter::operator delete();
      }

      v14 = *(this + 637);
    }

    if (!v14)
    {
      __break(0xC471u);
      JUMPOUT(0x19DCC30ECLL);
    }

    ++*(v14 + 2);
    v16 = *(this + 518);
    ++*(v16 + 20);
    v17 = *(*(v16 + 88) + 40);
    if (v17)
    {
      IPC::Connection::getAuditToken(v17, buf);
    }

    else
    {
      buf[0] = 0;
      LOBYTE(v41) = 0;
    }

    WebCore::ContentFilter::setHostProcessAuditToken();
    if (*(v16 + 20) == 1)
    {
      (*(*v16 + 8))(v16);
    }

    else
    {
      --*(v16 + 20);
    }

    v18 = WebCore::ResourceRequestBase::url(v35);
    WebCore::ContentFilter::startFilteringMainResource(v14, v18);
    WebCore::ResourceResponseBase::ResourceResponseBase(buf);
    cf = 0;
    v55 = 0;
    v53 = v53 & 0xF1 | 4;
    v20 = WebCore::ContentFilter::continueAfterWillSendRequest();
    v21 = cf;
    cf = 0;
    if (v21)
    {
      CFRelease(v21);
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(buf, v19);
    if (v20)
    {
      v22 = *(v14 + 2);
      if (v22)
      {
        *(v14 + 2) = v22 - 1;
        goto LABEL_5;
      }
    }

    else
    {
      WebCore::ContentFilter::stopFilteringMainResource(v14);
      v33 = *(v14 + 2);
      if (v33)
      {
        *(v14 + 2) = v33 - 1;
        goto LABEL_11;
      }
    }

    __break(0xC471u);
    JUMPOUT(0x19DCC310CLL);
  }

LABEL_5:
  v10 = *(this + 518);
  ++*(v10 + 5);
  WebKit::NetworkConnectionToWebProcess::createFetchTask(v10, this, v35, buf);
  v11 = *buf;
  *buf = 0;
  v12 = *(this + 584);
  *(this + 584) = v11;
  if (v12)
  {
    WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref((v12 + 8));
    v34 = *buf;
    *buf = 0;
    if (v34)
    {
      WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref((v34 + 8));
    }
  }

  if (*(v10 + 5) == 1)
  {
    (*(*v10 + 8))(v10);
  }

  else
  {
    --*(v10 + 5);
  }

  v13 = *(this + 584);
  if (v13)
  {
    v24 = qword_1ED6416F0;
    if (!os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v25 = *(this + 410);
    if (v25)
    {
      v27 = *(this + 11);
      v26 = *(this + 12);
      v28 = *(this + 10);
      v29 = *(this + 251) == 1;
      v30 = *(this + 3328);
      v31 = *(this + 555) != 0;
      v32 = *(v13 + 40);
      *buf = 134220032;
      *&buf[4] = this;
      v37 = 2048;
      v38 = v28;
      v39 = 2048;
      v40 = v27;
      v41 = 2048;
      v42 = v26;
      v43 = 2048;
      v44 = v25;
      v45 = 1024;
      v46 = v29;
      v47 = 1024;
      v48 = v30;
      v49 = 1024;
      v50 = v31;
      v51 = 2048;
      v52 = v32;
      _os_log_impl(&dword_19D52D000, v24, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::startWithServiceWorker: Created a ServiceWorkerFetchTask (fetchIdentifier=%llu)", buf, 0x50u);
      goto LABEL_11;
    }

    __break(0xC471u);
LABEL_40:
    JUMPOUT(0x19DCC30CCLL);
  }

  if (!WebKit::NetworkResourceLoader::abortIfServiceWorkersOnly(this))
  {
    WebKit::NetworkResourceLoader::startRequest(this, v35);
  }

LABEL_11:
  WebCore::ResourceRequest::~ResourceRequest(v35);
}

BOOL WebKit::NetworkResourceLoader::abortIfServiceWorkersOnly(WebKit::NetworkResourceLoader *this)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = *(this + 4000);
  if (v1 == 2)
  {
    v4 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_ERROR))
    {
      v6 = *(this + 410);
      if (!v6)
      {
        __break(0xC471u);
        goto LABEL_10;
      }

      v8 = *(this + 11);
      v7 = *(this + 12);
      v9 = *(this + 10);
      v10 = *(this + 251) == 1;
      v11 = *(this + 3328);
      v12 = *(this + 555) != 0;
      v13 = 134219776;
      v14 = this;
      v15 = 2048;
      v16 = v9;
      v17 = 2048;
      v18 = v8;
      v19 = 2048;
      v20 = v7;
      v21 = 2048;
      v22 = v6;
      v23 = 1024;
      v24 = v10;
      v25 = 1024;
      v26 = v11;
      v27 = 1024;
      v28 = v12;
      _os_log_error_impl(&dword_19D52D000, v4, OS_LOG_TYPE_ERROR, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::abortIfServiceWorkersOnly: Aborting load because the service worker did not handle the load and serviceWorkerMode only allows service workers", &v13, 0x46u);
    }

    v5 = *(this + 410);
    if (v5)
    {
      IPC::MessageSender::send<Messages::WebResourceLoader::ServiceWorkerDidNotHandle>(this + 24, v5);
      WebKit::NetworkResourceLoader::abort(this);
      return v1 == 2;
    }

    __break(0xC471u);
LABEL_10:
    JUMPOUT(0x19DCC3290);
  }

  return v1 == 2;
}

void WebKit::NetworkResourceLoader::serviceWorkerDidNotHandle(WebKit::NetworkResourceLoader *this, WebKit::ServiceWorkerFetchTask *a2)
{
  v86 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 410);
    if (!v5)
    {
      __break(0xC471u);
      JUMPOUT(0x19DCC367CLL);
    }

    v7 = *(this + 10);
    v6 = *(this + 11);
    v8 = *(this + 12);
    v9 = *(this + 251) == 1;
    v10 = *(this + 3328);
    v11 = *(this + 555) != 0;
    if (a2)
    {
      v12 = *(a2 + 5);
    }

    else
    {
      v12 = 0;
    }

    *buf = 134220032;
    v55 = this;
    v56 = 2048;
    v57 = v7;
    v58 = 2048;
    v59 = v6;
    v60 = 2048;
    v61 = v8;
    v62 = 2048;
    v63 = v5;
    v64 = 1024;
    v65 = v9;
    v66 = 1024;
    v67 = v10;
    v68 = 1024;
    v69 = v11;
    v70 = 2048;
    v71 = v12;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::serviceWorkerDidNotHandle: (fetchIdentifier=%llu)", buf, 0x50u);
  }

  if (*(this + 584) != a2)
  {
    goto LABEL_24;
  }

  if (WebKit::NetworkResourceLoader::abortIfServiceWorkersOnly(this))
  {
    return;
  }

  v13 = *(this + 584);
  if (!v13)
  {
    WebKit::NetworkResourceLoader::startRequest(this, (this + 104));
    return;
  }

  v15 = *(v13 + 8);
  v14 = v13 + 8;
  *v14 = v15 + 1;
  WTF::URL::URL(buf, (v14 + 56));
  WTF::URL::URL(&v61 + 6, (v14 + 96));
  v16 = *(v14 + 136);
  v17 = *(v14 + 144);
  *(v14 + 144) = 0u;
  v73 = v17;
  *&v17 = *(v14 + 160);
  *(v14 + 160) = 0;
  v72 = v16;
  v74 = v17;
  v18 = *(v14 + 168);
  v19 = *(v14 + 176);
  *(v14 + 168) = 0u;
  v75 = v18;
  v76 = v19;
  v20 = *(v14 + 184);
  v21 = *(v14 + 192);
  *(v14 + 184) = 0u;
  v77 = v20;
  v78 = v21;
  LODWORD(v20) = *(v14 + 200);
  v80 = *(v14 + 204);
  v79 = v20;
  v22 = *(v14 + 208);
  *(v14 + 208) = 0u;
  v81 = v22;
  v23 = *(v14 + 224);
  v24 = *(v14 + 232);
  *(v14 + 224) = 0;
  v84 = *(v14 + 240);
  v82 = v23;
  v83 = v24;
  v25 = *(v14 + 248);
  *(v14 + 248) = 0;
  v85 = v25;
  v26 = *(this + 584);
  *(this + 584) = 0;
  if (v26)
  {
    WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref((v26 + 8));
  }

  v27 = *(this + 519);
  if (v27)
  {
    v28 = v27 + 4;
    ++v27[4];
    WebKit::NetworkLoad::updateRequestAfterRedirection(v27, buf);
    WTF::RefCounted<WebKit::NetworkLoad>::deref(v28, v29);
  }

  v30 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v31 = *(this + 410);
    if (v31)
    {
      v33 = *(this + 11);
      v32 = *(this + 12);
      v34 = *(this + 10);
      v35 = *(this + 251) == 1;
      v36 = *(this + 3328);
      v37 = *(this + 555) != 0;
      *v39 = 134219776;
      *&v39[4] = this;
      v40 = 2048;
      v41 = v34;
      v42 = 2048;
      v43 = v33;
      v44 = 2048;
      v45 = v32;
      v46 = 2048;
      v47 = v31;
      v48 = 1024;
      v49 = v35;
      v50 = 1024;
      v51 = v36;
      v52 = 1024;
      v53 = v37;
      _os_log_impl(&dword_19D52D000, v30, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::serviceWorkerDidNotHandle: Restarting network load for redirect", v39, 0x46u);
      goto LABEL_17;
    }

LABEL_24:
    __break(0xC471u);
    JUMPOUT(0x19DCC365CLL);
  }

LABEL_17:
  v38 = WTF::fastMalloc(0x10);
  *v38 = &unk_1F11036A8;
  *v39 = v38;
  WebKit::NetworkResourceLoader::restartNetworkLoad(this, buf, v39);
  if (*v39)
  {
    (*(**v39 + 8))(*v39);
  }

  WebCore::ResourceRequest::~ResourceRequest(buf);
  WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref(v14);
}

IPC::Encoder *WebKit::NetworkResourceLoader::notifyReportObservers(uint64_t a1, WebCore::Report **a2)
{
  v4 = a1 + 24;
  if (*(a1 + 251) == 1 && (*(a1 + 3608) & 1) != 0)
  {
    v5 = 3600;
  }

  else
  {
    v5 = 96;
  }

  v6 = *(a1 + v5);
  v7 = *(a1 + 88);
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2636;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v7;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v13 = v8;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, v6);
  IPC::ArgumentCoder<WebCore::Report,void>::encode(v8, *a2);
  (*(*(a1 + 24) + 32))(v4, &v13, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

uint64_t WebKit::NetworkResourceLoader::sendReportToEndpoints(uint64_t a1, WTF::StringImpl *a2, atomic_uint **a3, unint64_t a4, WTF::StringImpl **a5, uint64_t a6, _DWORD **a7, char a8)
{
  v12 = a4;
  v48 = 0;
  v49 = 0;
  v50 = a4;
  if (a4)
  {
    if (a4 >> 29)
    {
      __break(0xC471u);
LABEL_36:
      JUMPOUT(0x19DCC3ABCLL);
    }

    v16 = 8 * a4;
    v17 = WTF::fastMalloc((8 * a4));
    v49 = v12;
    v48 = v17;
    do
    {
      v18 = *a3;
      if (*a3)
      {
        atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
      }

      *v17++ = v18;
      ++a3;
      v16 -= 8;
    }

    while (v16);
  }

  v46 = 0;
  v47 = 0;
  if (a6)
  {
    v19 = 8 * a6;
    do
    {
      WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,WTF::String>(&v51, a1 + 5280, a5);
      v20 = v51;
      if (v51 && *(v51 + 1))
      {
        v21 = v50;
        if (v50 == v49)
        {
          v27 = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v48, v50 + 1, &v51);
          v28 = v50;
          v29 = v50 + 1;
          v30 = v48;
          v31 = *v27;
          *v27 = 0;
          v30[v28] = v31;
          v50 = v29;
        }

        else
        {
          v51 = 0;
          v48[v50] = v20;
          v50 = v21 + 1;
        }
      }

      else
      {
        v22 = HIDWORD(v47);
        if (HIDWORD(v47) == v47)
        {
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(&v46, a5);
        }

        else
        {
          v23 = v46;
          v24 = *a5;
          if (*a5)
          {
            atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
          }

          v25 = HIDWORD(v47);
          *(v23 + 8 * v22) = v24;
          HIDWORD(v47) = v25 + 1;
        }
      }

      v26 = v51;
      v51 = 0;
      if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, a2);
      }

      ++a5;
      v19 -= 8;
    }

    while (v19);
  }

  if (*(a1 + 251) == 1 && (*(a1 + 3608) & 1) != 0)
  {
    v32 = 3600;
  }

  else
  {
    v32 = 96;
  }

  v33 = *(a1 + v32);
  v34 = *a7;
  *a7 = 0;
  v45 = v34;
  v35 = *(a1 + 88);
  v36 = IPC::Encoder::operator new(0x238, a2);
  *v36 = 2710;
  *(v36 + 2) = 0;
  *(v36 + 3) = 0;
  *(v36 + 1) = v35;
  *(v36 + 68) = 0;
  *(v36 + 70) = 0;
  *(v36 + 69) = 0;
  IPC::Encoder::encodeHeader(v36);
  v51 = v36;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v36, v33);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v36, a2);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v36, &v48);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v36, &v46);
  IPC::ArgumentCoder<IPC::FormDataReference,void>::encode(v36, &v45);
  v37 = IPC::Encoder::grow(v36, 1uLL, 1);
  if (!v38)
  {
    __break(0xC471u);
    goto LABEL_36;
  }

  *v37 = a8;
  (*(*(a1 + 24) + 32))(a1 + 24, &v51, 0);
  v40 = v51;
  v51 = 0;
  if (v40)
  {
    IPC::Encoder::~Encoder(v40, v39);
    bmalloc::api::tzoneFree(v43, v44);
    if (!v34)
    {
      goto LABEL_31;
    }

LABEL_33:
    WTF::RefCounted<WebCore::FormData>::deref(v34);
    goto LABEL_31;
  }

  if (v34)
  {
    goto LABEL_33;
  }

LABEL_31:
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v46, v39);
  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v48, v41);
}

uint64_t WebKit::NetworkResourceLoader::continueAfterServiceWorkerReceivedData(WebKit::NetworkResourceLoader *this, const WebCore::SharedBuffer *a2)
{
  v2 = *(this + 637);
  if (!v2)
  {
    return 1;
  }

  ++*(v2 + 8);
  result = WebCore::ContentFilter::continueAfterDataReceived();
  v4 = *(v2 + 8);
  if (v4)
  {
    *(v2 + 8) = v4 - 1;
  }

  else
  {
    result = 290;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::NetworkResourceLoader::continueAfterServiceWorkerReceivedResponse(WebKit::NetworkResourceLoader *this, const WebCore::ResourceResponse *a2)
{
  v2 = *(this + 637);
  if (!v2)
  {
    return 1;
  }

  ++*(v2 + 8);
  result = WebCore::ContentFilter::continueAfterResponseReceived();
  v4 = *(v2 + 8);
  if (v4)
  {
    *(v2 + 8) = v4 - 1;
  }

  else
  {
    result = 290;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::NetworkResourceLoader::serviceWorkerDidFinish(uint64_t this)
{
  v1 = *(this + 5096);
  if (v1)
  {
    ++*(v1 + 2);
    v2 = WebCore::ResourceRequestBase::url((this + 104));
    WebCore::ContentFilter::continueAfterNotifyFinished(v1, v2);
    this = WebCore::ContentFilter::stopFilteringMainResource(v1);
    v3 = *(v1 + 2);
    if (v3)
    {
      *(v1 + 2) = v3 - 1;
    }

    else
    {
      this = 290;
      __break(0xC471u);
    }
  }

  return this;
}

uint64_t WebKit::NetworkResourceLoader::contentFilterDidBlock@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, atomic_uint **a3@<X2>, const WebCore::ResourceError *a4@<X8>)
{
  v24[3] = *MEMORY[0x1E69E9840];
  WebKit::blockedByContentFilterError((a1 + 104), a4);
  v8 = *(a1 + 5096);
  if (v8)
  {
    ++*(v8 + 2);
  }

  WTF::String::operator=((a1 + 5104), a2);
  WTF::String::operator=((a1 + 5112), (a2 + 8));
  v9 = *(a2 + 32);
  *(a1 + 5120) = *(a2 + 16);
  *(a1 + 5136) = v9;
  v10 = a1 + 5152;
  std::__function::__value_func<void ()(std::function<void ()(BOOL)>)>::__value_func[abi:sn200100](v22, a2 + 48);
  if (v22 != (a1 + 5152))
  {
    v11 = v23;
    v12 = *(a1 + 5176);
    if (v23 == v22)
    {
      if (v12 == v10)
      {
        (*(*v23 + 24))();
        (*(*v23 + 32))(v23);
        v23 = 0;
        (*(**(a1 + 5176) + 24))(*(a1 + 5176), v22);
        (*(**(a1 + 5176) + 32))(*(a1 + 5176));
        *(a1 + 5176) = 0;
        v23 = v22;
        (*(v24[0] + 24))(v24, a1 + 5152);
        (*(v24[0] + 32))(v24);
      }

      else
      {
        (*(*v23 + 24))();
        (*(*v23 + 32))(v23);
        v23 = *(a1 + 5176);
      }

      *(a1 + 5176) = v10;
    }

    else if (v12 == v10)
    {
      (*(*v12 + 24))(*(a1 + 5176), v22);
      (*(**(a1 + 5176) + 32))(*(a1 + 5176));
      *(a1 + 5176) = v23;
      v23 = v22;
    }

    else
    {
      v23 = *(a1 + 5176);
      *(a1 + 5176) = v11;
    }
  }

  std::__function::__value_func<void ()(std::function<void ()(BOOL)>)>::~__value_func[abi:sn200100](v22);
  if (*(a1 + 5224) == *(a2 + 120))
  {
    if (*(a1 + 5224))
    {
      WTF::String::operator=((a1 + 5184), (a2 + 80));
      v14 = *(a2 + 104);
      *(a1 + 5192) = *(a2 + 88);
      *(a1 + 5208) = v14;
    }
  }

  else if (*(a1 + 5224))
  {
    v15 = *(a1 + 5184);
    *(a1 + 5184) = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v13);
    }

    *(a1 + 5224) = 0;
  }

  else
  {
    v16 = *(a2 + 80);
    if (v16)
    {
      atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
    }

    *(a1 + 5184) = v16;
    v17 = *(a2 + 104);
    *(a1 + 5192) = *(a2 + 88);
    *(a1 + 5208) = v17;
    *(a1 + 5224) = 1;
  }

  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=((a1 + 5232), a2 + 128);
  v18 = *(a2 + 144);
  if (v18)
  {
    CFRetain(*(a2 + 144));
  }

  v19 = *(a1 + 5248);
  *(a1 + 5248) = v18;
  if (v19)
  {
    CFRelease(v19);
  }

  *(a1 + 5256) = *(a2 + 152);
  WTF::String::operator=((a1 + 5264), a3);
  if (!WebCore::ContentFilterUnblockHandler::needsUIProcess(a2))
  {
    ++*(a1 + 20);
    if (v8)
    {
      ++*(v8 + 2);
    }

    operator new();
  }

  if (!v8 || (WebCore::ContentFilter::setBlockedError(v8, a4), result = WebCore::ContentFilter::handleProvisionalLoadFailure(), (v21 = *(v8 + 2)) == 0))
  {
    __break(0xC471u);
    JUMPOUT(0x19DCC40E4);
  }

  *(v8 + 2) = v21 - 1;
  return result;
}

void WebCore::ContentFilter::setBlockedError(WebCore::ContentFilter *this, const WebCore::ResourceError *a2)
{
  WTF::String::operator=(this + 16, a2);
  WTF::String::operator=(this + 17, a2 + 1);
  v4 = *(a2 + 2);
  *(this + 9) = *(a2 + 1);
  *(this + 10) = v4;
  WTF::String::operator=(this + 22, a2 + 6);
  v5 = *(a2 + 14);
  *(this + 94) = *(a2 + 30);
  *(this + 46) = v5;
  v6 = *(a2 + 8);
  if (v6)
  {
    CFRetain(*(a2 + 8));
  }

  v7 = *(this + 24);
  *(this + 24) = v6;
  if (v7)
  {
    CFRelease(v7);
  }

  *(this + 200) = *(a2 + 72);
}

uint64_t WebKit::NetworkResourceLoader::cancelMainResourceLoadForContentFilter(uint64_t result)
{
  if (!*(result + 5096))
  {
    result = 2199;
    __break(0xC471u);
  }

  return result;
}

uint64_t non-virtual thunk toWebKit::NetworkResourceLoader::cancelMainResourceLoadForContentFilter(uint64_t result)
{
  if (!*(result + 5040))
  {
    result = 2199;
    __break(0xC471u);
  }

  return result;
}

IPC::Encoder *WebKit::NetworkResourceLoader::handleProvisionalLoadFailureFromContentFilter(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = a1[518];
  ++*(v6 + 20);
  v7 = *(v6 + 88);
  v8 = *(v6 + 272);
  v9 = WebCore::ContentFilter::blockedPageURL(a1);
  WebCore::RegistrableDomain::RegistrableDomain(&v25, v9);
  v10 = WTF::fastMalloc(0x10);
  *v10 = &unk_1F1103718;
  v24 = v10;
  WebKit::NetworkProcess::addAllowedFirstPartyForCookies(v7, v8, &v25, 0, &v24);
  v12 = v24;
  v24 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = v25;
  v25 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v11);
  }

  if (*(v6 + 20) == 1)
  {
    (*(*v6 + 8))(v6);
  }

  else
  {
    --*(v6 + 20);
  }

  v15 = a1[3];
  v14 = a1 + 3;
  v16 = v14[634];
  v17 = (*(v15 + 56))(v14);
  v19 = IPC::Encoder::operator new(0x238, v18);
  *v19 = 3027;
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 1) = v17;
  *(v19 + 68) = 0;
  *(v19 + 70) = 0;
  *(v19 + 69) = 0;
  IPC::Encoder::encodeHeader(v19);
  v25 = v19;
  IPC::ArgumentCoder<WebCore::ContentFilterUnblockHandler,void>::encode(v19, (v14 + 635));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v19, v14 + 655);
  IPC::ArgumentCoder<WebCore::ResourceError,void>::encode(v19, (v16 + 128));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v19, a2);
  IPC::ArgumentCoder<WebCore::SubstituteData,void>::encode(v19, a3);
  (*(*v14 + 32))(v14, &v25, 0);
  result = v25;
  v25 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v20);
    return bmalloc::api::tzoneFree(v22, v23);
  }

  return result;
}

uint64_t WebKit::NetworkResourceLoader::usesWebContentRestrictions(WebKit::NetworkResourceLoader *this)
{
  v1 = *(this + 518);
  v2 = *(v1 + 20);
  *(v1 + 20) = v2 + 1;
  v3 = *(v1 + 344);
  if (v2)
  {
    *(v1 + 20) = v2;
  }

  else
  {
    (*(*v1 + 8))(v1);
  }

  return (v3 >> 4) & 1;
}

uint64_t WebKit::NetworkResourceLoader::useRedirectionForCurrentNavigation(uint64_t a1, uint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 3280);
    if (!v6)
    {
      result = 157;
      __break(0xC471u);
      return result;
    }

    v8 = *(a1 + 88);
    v7 = *(a1 + 96);
    v9 = *(a1 + 80);
    v10 = *(a1 + 251) == 1;
    v11 = *(a1 + 3328);
    v12 = *(a1 + 4440) != 0;
    v31 = 134219776;
    v32 = a1;
    v33 = 2048;
    v34 = v9;
    v35 = 2048;
    v36 = v8;
    v37 = 2048;
    v38 = v7;
    v39 = 2048;
    v40 = v6;
    v41 = 1024;
    v42 = v10;
    v43 = 1024;
    v44 = v11;
    v45 = 1024;
    v46 = v12;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::useRedirectionForCurrentNavigation", &v31, 0x46u);
  }

  if (*MEMORY[0x1E69E25B0])
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E25B0], v5);
  }

  else
  {
    NonCompact = WebCore::ResourceResponse::operatorNewSlow(0x108);
  }

  v14 = NonCompact;
  WTF::URL::URL(NonCompact, a2);
  v15 = *(a2 + 40);
  v16 = *(a2 + 48);
  *(a2 + 40) = 0;
  v17[5] = v15;
  v17[6] = v16;
  v18 = *(a2 + 56);
  *(a2 + 56) = 0;
  v17[7] = v18;
  v19 = *(a2 + 64);
  *(a2 + 64) = 0;
  v17[8] = v19;
  v20 = *(a2 + 72);
  *(a2 + 72) = 0;
  v17[9] = v20;
  v17[11] = 0;
  v17[10] = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt((v17 + 10), (a2 + 80));
  *(v14 + 96) = 0;
  *(v14 + 104) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v14 + 96, (a2 + 96));
  v21 = *(a2 + 112);
  *(a2 + 112) = 0;
  *(v14 + 112) = v21;
  *(v14 + 120) = 0;
  *(v14 + 128) = 0;
  if (*(a2 + 128) == 1)
  {
    v30 = *(a2 + 120);
    *(a2 + 120) = 0;
    *(v14 + 120) = v30;
    *(v14 + 128) = 1;
  }

  v22 = *(a2 + 136);
  *(v14 + 138) = *(a2 + 138);
  *(v14 + 136) = v22;
  v23 = *(a2 + 144);
  *(a2 + 144) = 0;
  *(v14 + 144) = v23;
  v24 = *(a2 + 152);
  *(v14 + 168) = *(a2 + 168);
  *(v14 + 152) = v24;
  v25 = *(a2 + 184);
  v26 = *(a2 + 200);
  v27 = *(a2 + 216);
  *(v14 + 227) = *(a2 + 227);
  *(v14 + 216) = v27;
  *(v14 + 200) = v26;
  *(v14 + 184) = v25;
  v28 = *(a2 + 248);
  *(a2 + 248) = 0;
  *(v14 + 248) = v28;
  *(v14 + 256) = *(a2 + 256);
  return std::unique_ptr<WebCore::ResourceResponse>::reset[abi:sn200100]((a1 + 5304), v14);
}

void WebKit::NetworkResourceLoader::reportNetworkUsageToAllSharedWorkerObjects(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ++*(a1 + 20);
  v6 = *(a1 + 88);
  v13 = *(a1 + 96);
  v7 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v6 + 240), &v13);
  if (v7)
  {
    v8 = v7;
    v9 = *(v7 + 16) + 1;
    *(v7 + 16) = v9;
    v10 = *(v7 + 800);
    if (v10)
    {
      ++*(v10 + 8);
      WebKit::WebSharedWorkerServer::reportNetworkUsageToAllSharedWorkerObjects(v10, a2, a3);
      v11 = *(v10 + 8);
      if (!v11)
      {
        goto LABEL_12;
      }

      *(v10 + 8) = v11 - 1;
      v9 = *(v8 + 16);
    }

    if (v9)
    {
      *(v8 + 16) = v9 - 1;
      goto LABEL_7;
    }

LABEL_12:
    __break(0xC471u);
    JUMPOUT(0x19DCC4824);
  }

LABEL_7:
  if (*(a1 + 20) == 1)
  {
    v12 = *(*a1 + 8);

    v12(a1);
  }

  else
  {
    --*(a1 + 20);
  }
}

uint64_t WebKit::NetworkResourceLoader::reportNetworkUsageToAllServiceWorkerClients(uint64_t a1)
{
  ++*(a1 + 20);
  v2 = *(a1 + 88);
  v8 = *(a1 + 96);
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v2 + 240), &v8);
  if (result)
  {
    v4 = result;
    v5 = *(result + 16) + 1;
    *(result + 16) = v5;
    result = *(result + 776);
    if (result)
    {
      v6 = (result + 8);
      ++*(result + 8);
      WebCore::SWServer::reportNetworkUsageToAllWorkerClients();
      result = WTF::RefCounted<WebCore::SWServer>::deref(v6);
      v5 = *(v4 + 16);
    }

    if (!v5)
    {
      result = 290;
      __break(0xC471u);
      return result;
    }

    *(v4 + 16) = v5 - 1;
  }

  if (*(a1 + 20) == 1)
  {
    v7 = *(*a1 + 8);

    return v7(a1);
  }

  else
  {
    --*(a1 + 20);
  }

  return result;
}

uint64_t WebKit::NetworkSchemeRegistry::shouldTreatURLSchemeAsCORSEnabled(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a2;
  v9 = a3;
  if (!WTF::StringView::startsWith())
  {
    v6 = *(a1 + 8);
    v5 = (a1 + 8);
    if (v6)
    {
      return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::ASCIICaseInsensitiveHash,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::lookup<WTF::HashSetTranslatorAdapter<WTF::StringViewHashTranslator>,(WTF::ShouldValidateKey)1,WTF::StringView>(v5, &v8) != 0;
    }

    return 0;
  }

  if (v9 == 4)
  {
    return 1;
  }

  if (v9 != 5)
  {
    return 0;
  }

  if (BYTE4(v9) == 1)
  {
    v7 = *(v8 + 4);
  }

  else
  {
    v7 = *(v8 + 8);
  }

  return v7 == 115;
}

WebKit::NetworkSession *WebKit::NetworkSession::NetworkSession(WebKit::NetworkSession *this, atomic_uint *a2, const WebKit::NetworkSessionCreationParameters *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  *(this + 4) = 0;
  *this = &unk_1F1103078;
  *(this + 1) = 0;
  *(this + 3) = *a3;
  atomic_fetch_add(a2 + 36, 1u);
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = a2;
  *(this + 56) = 0;
  v6 = *(a3 + 71);
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  *(this + 8) = v6;
  *(this + 9) = 0;
  *(this + 40) = *(a3 + 293);
  v7 = *(a3 + 78);
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  *(this + 11) = v7;
  *(this + 96) = *(a3 + 585);
  *(this + 97) = 1;
  *(this + 98) = *(a3 + 588);
  *(this + 99) = *(a3 + 589);
  v8 = *(a3 + 74);
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  *(this + 13) = v8;
  WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::HashTable(this + 14, a3 + 77);
  *(this + 144) = 0;
  *(this + 152) = 0;
  *(this + 120) = 0u;
  *(this + 136) = 0;
  WebKit::managerOrProxy((this + 160), this, a2, a3);
  *(this + 168) = *(a3 + 360);
  *(this + 176) = 0;
  *(this + 488) = 0;
  *(this + 496) = 0;
  *(this + 504) = 0u;
  WebKit::PrefetchCache::PrefetchCache((this + 520));
  v9 = MEMORY[0x1E69E2E48] + 16;
  *(this + 39) = 0u;
  *(this + 80) = v9;
  *(this + 680) = 0u;
  *(this + 693) = 0;
  *(this + 88) = 0;
  *(this + 81) = 0;
  *(this + 41) = 0u;
  *(this + 669) = 0;
  WebKit::NetworkBroadcastChannelRegistry::create(a2, v10, this + 89);
  *(this + 180) = *(a3 + 79);
  *(this + 724) = *(a3 + 321);
  *(this + 725) = *(a3 + 323);
  *(this + 726) = 0;
  *(this + 91) = *(a3 + 324);
  *(this + 768) = 0;
  *(this + 752) = 0;
  *(this + 46) = 0u;
  *(this + 776) = 0u;
  *(this + 792) = *(a3 + 537);
  *(this + 102) = 0;
  *(this + 100) = 0;
  *(this + 101) = 0;
  *(this + 103) = this + 840;
  *(this + 104) = 25;
  *(this + 130) = 0;
  WebKit::createNetworkStorageManager((this + 1048), a2, a3);
  *(this + 134) = 0;
  *(this + 132) = 0;
  *(this + 1063) = 0;
  if (*a3 < -1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a3 + 43);
    if (v11)
    {
      atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
    }
  }

  v32[0] = v11;
  WebKit::WebPushD::WebPushDaemonConnectionConfiguration::WebPushDaemonConnectionConfiguration(&v33, a3 + 26);
  v39 = v33;
  v12 = v34;
  v33 = 0;
  v34 = 0;
  v40 = v12;
  v13 = v35;
  v35 = 0uLL;
  v41 = v13;
  v42 = v36;
  v43 = v37;
  v44 = v38;
  WebKit::NetworkNotificationManager::create(v32, &v39, a2, this + 135);
  WebKit::WebPushD::WebPushDaemonConnectionConfiguration::~WebPushDaemonConnectionConfiguration(&v39, v14);
  WebKit::WebPushD::WebPushDaemonConnectionConfiguration::~WebPushDaemonConnectionConfiguration(&v33, v15);
  v17 = v32[0];
  v32[0] = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v16);
  }

  *(this + 1088) = *(a3 + 539);
  *(this + 137) = 0;
  v18 = *(a3 + 79);
  if (v18)
  {
    atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
  }

  *(this + 138) = v18;
  *(this + 70) = *(a3 + 1);
  if (*(this + 3) >= -1)
  {
    v23 = *(a3 + 36);
    if (v23)
    {
      atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
      v39 = v23;
      WebKit::SandboxExtension::consumePermanently(a3 + 37);
      v24 = *(a2 + 320);
      if (*(a3 + 313))
      {
        v24 |= 4u;
      }

      WebKit::NetworkCache::Cache::open(&v39, a2, v24 | *(a3 + 314), *(this + 3), v32);
      v25 = v32[0];
      v32[0] = 0;
      v26 = *(this + 78);
      *(this + 78) = v25;
      if (v26)
      {
        WTF::RefCounted<WebKit::NetworkCache::Cache>::deref((v26 + 8), v16);
        v27 = v32[0];
        v32[0] = 0;
        if (v27)
        {
          WTF::RefCounted<WebKit::NetworkCache::Cache>::deref(v27 + 2, v16);
        }

        v25 = *(this + 78);
      }

      if (!v25)
      {
        v28 = qword_1ED640DD8;
        if (os_log_type_enabled(qword_1ED640DD8, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v32[0]) = 0;
          _os_log_error_impl(&dword_19D52D000, v28, OS_LOG_TYPE_ERROR, "Failed to initialize the WebKit network disk cache", v32, 2u);
        }
      }
    }

    else
    {
      v39 = 0;
    }

    v29 = *(a3 + 71);
    if (v29 && *(v29 + 4))
    {
      WebKit::SandboxExtension::consumePermanently(a3 + 72);
    }

    v30 = *(a3 + 61);
    if (v30 && *(v30 + 4))
    {
      WTF::String::operator=(this + 132, a3 + 61);
      WebKit::SandboxExtension::consumePermanently(a3 + 62);
    }

    v31 = v39;
    v39 = 0;
    if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v31, v16);
    }
  }

  *(this + 152) = *(a3 + 315);
  WebKit::NetworkSession::setTrackingPreventionEnabled(this, *(a3 + 584));
  *(this + 726) = *(a3 + 362);
  WebKit::NetworkSession::setOptInCookiePartitioningEnabled(this, *(a3 + 361));
  WebKit::SandboxExtension::consumePermanently(a3 + 66);
  v19 = *(a3 + 65);
  if (v19)
  {
    atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
  }

  v39 = v19;
  LOBYTE(v40) = *(a3 + 536);
  std::optional<WebKit::NetworkSession::ServiceWorkerInfo>::operator=[abi:sn200100]<WebKit::NetworkSession::ServiceWorkerInfo,void>(this + 752, &v39);
  v21 = v39;
  if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v20);
  }

  WebKit::SandboxExtension::consumePermanently(a3 + 80);
  return this;
}

WebKit::PCM::ManagerProxy *WebKit::managerOrProxy(WebKit *this, WebKit::NetworkSession *a2, atomic_uint *a3, const WebKit::NetworkSessionCreationParameters *a4)
{
  v8 = *(a4 + 42);
  if (!v8 || (*(v8 + 4) ? (v9 = *(a2 + 3) < -1) : (v9 = 1), v9))
  {
    v10 = WebKit::PCM::ClientImpl::operator new(this, a2);
    v12 = WebKit::PCM::ClientImpl::ClientImpl(v10, a2, a3);
    WebKit::PrivateClickMeasurementManager::create(&v12, a4 + 568, &v13);
    result = v12;
    *this = v13;
    v12 = 0;
    v13 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  else
  {
    result = WebKit::PCM::ManagerProxy::create((a4 + 336), a2, &v13);
    *this = v13;
  }

  return result;
}

WTF::StringImpl *WebKit::createNetworkStorageManager(WebKit *this, WebKit::NetworkProcess *a2, const WebKit::NetworkSessionCreationParameters *a3)
{
  WebKit::SandboxExtension::consumePermanently(a3 + 58);
  WebKit::SandboxExtension::consumePermanently(a3 + 60);
  WebKit::SandboxExtension::consumePermanently(a3 + 62);
  WebKit::SandboxExtension::consumePermanently(a3 + 64);
  v6 = *(a2 + 5);
  if (v6)
  {
    v7 = *(v6 + 24);
    v8 = 1;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = *(a3 + 65);
  if (v9)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  v12 = v9;
  WebKit::SandboxExtension::consumePermanently(a3 + 66);
  WebKit::NetworkStorageManager::create(a2, *a3, v7, v8, a3 + 63, a3 + 456, this, (a3 + 472), a3 + 488, &v12, *(a3 + 48), *(a3 + 49), *(a3 + 50), *(a3 + 51), *(a3 + 52), *(a3 + 53), *(a3 + 27), *(a3 + 55), *(a3 + 56), HIDWORD(*(a3 + 56)), *(a3 + 376), *(a3 + 538));
  result = v12;
  v12 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v10);
    }
  }

  return result;
}

uint64_t WebKit::NetworkSession::setTrackingPreventionEnabled(uint64_t this, int a2)
{
  v35 = *MEMORY[0x1E69E9840];
  if ((((*(this + 72) == 0) ^ a2) & 1) == 0)
  {
    v3 = this;
    v4 = qword_1ED641350;
    if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(v3 + 24);
      *buf = 134218496;
      *&buf[4] = v3;
      v31 = 2048;
      v32 = v5;
      v33 = 1024;
      v34 = a2;
      _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - NetworkSession::setTrackingPreventionEnabled: sessionID=%llu, enabled=%d", buf, 0x1Cu);
    }

    v6 = *(v3 + 32);
    *buf = *(v3 + 24);
    v7 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v6 + 248), buf);
    if (v7)
    {
      v8 = v7;
      ++*(v7 + 2);
      WebCore::NetworkStorageSession::setTrackingPreventionEnabled(v7);
      v9 = *(v8 + 2);
      if (!v9)
      {
        this = 290;
        __break(0xC471u);
        return this;
      }

      *(v8 + 2) = v9 - 1;
    }

    if (a2)
    {
      WebKit::WebResourceLoadStatisticsStore::create(v3, v3 + 64, *(v3 + 80), *(v3 + 24) < -1, buf);
      v10 = *buf;
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
          goto LABEL_11;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
LABEL_11:
      v13 = *(v3 + 72);
      *(v3 + 72) = v10;
      if (v13)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v13);
      }

      if (*(v3 + 24) >= -1)
      {
        v14 = *buf;
        v15 = WTF::fastMalloc(0x10);
        *v15 = &unk_1F1103790;
        v29 = v15;
        WebKit::WebResourceLoadStatisticsStore::populateMemoryStoreFromDisk(v14, &v29);
        v16 = v29;
        v29 = 0;
        if (v16)
        {
          (*(*v16 + 8))(v16);
        }
      }

      if (*(v3 + 81) == 1)
      {
        v19 = *buf;
        v20 = WTF::fastMalloc(0x10);
        *v20 = &unk_1F11037B8;
        v29 = v20;
        WebKit::WebResourceLoadStatisticsStore::setResourceLoadStatisticsDebugMode(v19, 1, &v29);
        v21 = v29;
        v29 = 0;
        if (v21)
        {
          (*(*v21 + 8))(v21);
        }
      }

      v17 = *(v3 + 88);
      if (v17 && *(v17 + 4) && (MEMORY[0x19EB01EF0]() & 1) == 0)
      {
        v22 = *buf;
        v23 = *(v3 + 88);
        if (v23)
        {
          atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
        }

        v29 = v23;
        v24 = WTF::fastMalloc(0x10);
        *v24 = &unk_1F11037E0;
        v28 = v24;
        WebKit::WebResourceLoadStatisticsStore::setPrevalentResourceForDebugMode(v22, &v29, &v28);
        v26 = v28;
        v28 = 0;
        if (v26)
        {
          (*(*v26 + 8))(v26);
        }

        v27 = v29;
        v29 = 0;
        if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v27, v25);
        }
      }

      WebKit::NetworkSession::forwardResourceLoadStatisticsSettings(v3);
      this = *buf;
      *buf = 0;
      if (this)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(this);
      }
    }

    else
    {
      v18 = WTF::fastMalloc(0x10);
      *v18 = &unk_1F1103768;
      *buf = v18;
      WebKit::NetworkSession::destroyResourceLoadStatistics(v3, buf);
      this = *buf;
      *buf = 0;
      if (this)
      {
        return (*(*this + 8))(this);
      }
    }
  }

  return this;
}

uint64_t WebKit::NetworkSession::setOptInCookiePartitioningEnabled(uint64_t this, int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(this + 72))
  {
    v3 = this;
    v4 = qword_1ED641350;
    if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "disabled";
      v6 = *(v3 + 24);
      if (a2)
      {
        v5 = "enabled";
      }

      *v10 = 136446466;
      *&v10[4] = v5;
      v11 = 2048;
      v12 = v6;
      _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "NetworkSession::setOptInCookiePartitioningEnabled as %{public}s for session %llu", v10, 0x16u);
    }

    v7 = *(v3 + 32);
    *v10 = *(v3 + 24);
    this = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v7 + 248), v10);
    if (this)
    {
      v8 = this;
      ++*(this + 8);
      this = WebCore::NetworkStorageSession::setOptInCookiePartitioningEnabled(this);
      v9 = *(v8 + 8);
      if (v9)
      {
        *(v8 + 8) = v9 - 1;
      }

      else
      {
        this = 290;
        __break(0xC471u);
      }
    }
  }

  return this;
}

uint64_t std::optional<WebKit::NetworkSession::ServiceWorkerInfo>::operator=[abi:sn200100]<WebKit::NetworkSession::ServiceWorkerInfo,void>(uint64_t a1, WTF::StringImpl *a2)
{
  v4 = *(a1 + 16);
  v5 = *a2;
  *a2 = 0;
  if (v4 == 1)
  {
    v7 = *a1;
    *a1 = v5;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }

    *(a1 + 8) = *(a2 + 8);
  }

  else
  {
    *a1 = v5;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = 1;
  }

  return a1;
}

void WebKit::NetworkSession::~NetworkSession(WebKit::NetworkSession *this)
{
  *this = &unk_1F1103078;
  v2 = WTF::fastMalloc(0x10);
  *v2 = &unk_1F1103740;
  v42 = v2;
  WebKit::NetworkSession::destroyResourceLoadStatistics(this, &v42);
  v3 = v42;
  v42 = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 63);
  *(this + 63) = 0;
  v5 = WTF::HashTable<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::FastMalloc>::begin(v4);
  v7 = v5;
  v8 = v6;
  v9 = 0;
  if (v4)
  {
    v9 = &v4[*(v4 - 1)];
  }

  if (v9 != v5)
  {
    do
    {
      v41 = *v7++;
      WebKit::NetworkResourceLoader::abort(v41);
      while (v7 != v8 && *v7 + 1 <= 1)
      {
        ++v7;
      }
    }

    while (v7 != v9);
  }

  if (v4)
  {
    WTF::HashTable<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::FastMalloc>::deallocateTable(v4, v6);
  }

  v10 = *(this + 138);
  *(this + 138) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v6);
  }

  v11 = *(this + 137);
  *(this + 137) = 0;
  if (v11)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ResourceMonitorThrottlerHolder,(WTF::DestructionThread)1>::deref(v11);
  }

  WTF::Ref<WebKit::NetworkNotificationManager,WTF::RawPtrTraits<WebKit::NetworkNotificationManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkNotificationManager>>::~Ref(this + 135);
  v13 = *(this + 134);
  if (v13)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v13, v12);
  }

  v14 = *(this + 132);
  *(this + 132) = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v12);
  }

  v15 = *(this + 131);
  *(this + 131) = 0;
  if (v15)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v15 + 8));
  }

  WTF::Deque<WTF::Seconds,25ul>::~Deque(this + 808);
  v17 = *(this + 100);
  *(this + 100) = 0;
  if (v17)
  {
    WebKit::WebSharedWorkerServer::operator delete(v17);
  }

  v18 = *(this + 98);
  *(this + 98) = 0;
  if (v18)
  {
    if (v18[4] == 1)
    {
      (*(*v18 + 8))(v18);
    }

    else
    {
      --v18[4];
    }
  }

  v19 = *(this + 97);
  *(this + 97) = 0;
  if (v19)
  {
    WTF::RefCounted<WebCore::SWServer>::deref((v19 + 8));
  }

  std::__optional_destruct_base<WebKit::NetworkSession::ServiceWorkerInfo,false>::~__optional_destruct_base[abi:sn200100](this + 752, v16);
  v21 = *(this + 93);
  if (v21)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v21, v20);
  }

  v22 = *(this + 92);
  if (v22)
  {
    WTF::HashTable<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::FastMalloc>::deallocateTable(v22, v20);
  }

  v23 = *(this + 89);
  *(this + 89) = 0;
  if (v23)
  {
    WTF::RefCounted<WebKit::NetworkBroadcastChannelRegistry>::deref(v23);
  }

  MEMORY[0x19EB06750](this + 640);
  v25 = *(this + 79);
  *(this + 79) = 0;
  if (v25)
  {
    WTF::RefCounted<WebKit::NetworkLoadScheduler>::deref((v25 + 8));
  }

  v26 = *(this + 78);
  *(this + 78) = 0;
  if (v26)
  {
    WTF::RefCounted<WebKit::NetworkCache::Cache>::deref((v26 + 8), v24);
  }

  WebKit::PrefetchCache::~PrefetchCache((this + 520));
  v28 = *(this + 64);
  if (v28)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v28, v27);
  }

  v29 = *(this + 63);
  if (v29)
  {
    WTF::HashTable<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::FastMalloc>::deallocateTable(v29, v27);
  }

  if (*(this + 488) == 1)
  {
    WebCore::PrivateClickMeasurement::~PrivateClickMeasurement((this + 176), v27);
  }

  WTF::Ref<WebKit::PCM::ManagerInterface,WTF::RawPtrTraits<WebKit::PCM::ManagerInterface>,WTF::DefaultRefDerefTraits<WebKit::PCM::ManagerInterface>>::~Ref(this + 20);
  std::optional<WebCore::RegistrableDomain>::~optional(this + 136, v30);
  v32 = *(this + 16);
  if (v32)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebCore::IPAddress>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebCore::IPAddress>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebCore::IPAddress,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::IPAddress>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v32, v31);
  }

  v33 = *(this + 15);
  if (v33)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebCore::RegistrableDomain>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebCore::RegistrableDomain>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebCore::RegistrableDomain,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v33, v31);
  }

  v34 = *(this + 14);
  if (v34)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v34, v31);
  }

  v35 = *(this + 13);
  *(this + 13) = 0;
  if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v35, v31);
  }

  v36 = *(this + 11);
  *(this + 11) = 0;
  if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v36, v31);
  }

  v37 = *(this + 9);
  *(this + 9) = 0;
  if (v37)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v37);
  }

  v38 = *(this + 8);
  *(this + 8) = 0;
  if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v38, v31);
  }

  v39 = *(this + 5);
  if (v39)
  {
    WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::FastMalloc>::deallocateTable(v39, v31);
  }

  v40 = *(this + 4);
  *(this + 4) = 0;
  if (v40 && atomic_fetch_add(v40 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v40 + 36);
    (*(*v40 + 24))(v40);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v31);
}

{
  WebKit::NetworkSession::~NetworkSession(this);
  if (v1[4])
  {

    bzero(v1, 0x470uLL);
  }

  else
  {

    bmalloc::api::tzoneFree(v1, v2);
  }
}

atomic_ullong *WebKit::NetworkSession::destroyResourceLoadStatistics(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 72);
  if (v3)
  {
    while (1)
    {
      v5 = *v3;
      if ((*v3 & 1) == 0)
      {
        break;
      }

      v6 = *v3;
      atomic_compare_exchange_strong_explicit(v3, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v6 == v5)
      {
        goto LABEL_4;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v3);
LABEL_4:
    WebKit::WebResourceLoadStatisticsStore::didDestroyNetworkSession(v3, a2);
    v7 = *(a1 + 72);
    *(a1 + 72) = 0;
    if (v7)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v7);
    }

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v3);
  }

  else
  {
    v9 = *a2;
    *a2 = 0;
    (*(*v9 + 16))(v9);
    v10 = *(*v9 + 8);

    return v10(v9);
  }
}

WTF::StringImpl *WebKit::NetworkSession::invalidateAndCancel(WebKit::NetworkSession *this)
{
  result = WTF::ThreadSafeWeakHashSet<WebKit::NetworkDataTask>::forEach<WebKit::NetworkSession::invalidateAndCancel(void)::$_0>(this + 40);
  v4 = *(this + 9);
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
        goto LABEL_4;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_4:
    WebKit::WebResourceLoadStatisticsStore::invalidateAndCancel(v4, v3);
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v4);
  }

  v7 = *(this + 78);
  if (v7)
  {
    v9 = *(v7 + 88);
    if (v9)
    {
      atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
      v7 = *(this + 78);
      v11 = v9;
      *(this + 78) = 0;
      if (!v7)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v11 = 0;
      *(this + 78) = 0;
    }

    WTF::RefCounted<WebKit::NetworkCache::Cache>::deref((v7 + 8), v3);
LABEL_15:
    WTF::FileSystemImpl::markPurgeable(&v11, v3);
    result = v11;
    v11 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v10);
    }
  }

  v8 = *(this + 97);
  *(this + 97) = 0;
  if (v8)
  {
    WebCore::SWServer::close(v8);
    return WTF::RefCounted<WebCore::SWServer>::deref(v8 + 2);
  }

  return result;
}

uint64_t WTF::ThreadSafeWeakHashSet<WebKit::NetworkDataTask>::forEach<WebKit::NetworkSession::invalidateAndCancel(void)::$_0>(uint64_t a1)
{
  WTF::ThreadSafeWeakHashSet<WebKit::NetworkDataTask>::values(&v6, a1);
  if (v7)
  {
    v3 = v6;
    v4 = 8 * v7;
    do
    {
      v5 = *v3++;
      (*(*v5 + 32))(v5);
      v4 -= 8;
    }

    while (v4);
  }

  return WTF::Vector<WTF::Ref<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v6, v1);
}

atomic_ullong *WebKit::NetworkSession::forwardResourceLoadStatisticsSettings(WebKit::NetworkSession *this)
{
  v2 = *(this + 9);
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
  WebKit::WebResourceLoadStatisticsStore::setThirdPartyCookieBlockingMode(v2, *(this + 98));
  WebKit::WebResourceLoadStatisticsStore::setSameSiteStrictEnforcementEnabled(v2, *(this + 99));
  v5 = *(this + 100);
  v6 = WTF::fastMalloc(0x10);
  *v6 = &unk_1F1103808;
  v12 = v6;
  WebKit::WebResourceLoadStatisticsStore::setFirstPartyWebsiteDataRemovalMode(v2, v5, &v12);
  v7 = v12;
  v12 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = WTF::fastMalloc(0x10);
  *v8 = &unk_1F1103830;
  v12 = v8;
  WebKit::WebResourceLoadStatisticsStore::setStandaloneApplicationDomain(v2, this + 104, &v12);
  v10 = v12;
  v12 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  WebKit::WebResourceLoadStatisticsStore::setPersistedDomains(v2, this + 14, v9);
  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v2);
}

uint64_t WebKit::NetworkSession::deleteAndRestrictWebsiteDataForRegistrableDomains(uint64_t a1, int a2, uint64_t a3, uint64_t *a4)
{
  v8 = *(a1 + 32);
  v18 = *(a1 + 24);
  v9 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v8 + 248), &v18);
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  v11 = *(v9 + 8) + 1;
  *(v9 + 8) = v11;
  v12 = *(a3 + 60);
  if (v12)
  {
    v13 = *(a3 + 48);
    v14 = 8 * v12;
    do
    {
      v15 = WTF::fastMalloc(0x10);
      *v15 = &unk_1F1103858;
      v18 = v15;
      WebCore::NetworkStorageSession::setAllCookiesToSameSiteStrict();
      v16 = v18;
      v18 = 0;
      if (v16)
      {
        (*(*v16 + 8))(v16);
      }

      v13 += 8;
      v14 -= 8;
    }

    while (v14);
    v11 = *(v10 + 8);
  }

  if (v11)
  {
    *(v10 + 8) = v11 - 1;
LABEL_10:
    WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(a3 + 48, 0);
    return WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(*(a1 + 32), *(a1 + 24), a2, a3, a4);
  }

  result = 290;
  __break(0xC471u);
  return result;
}

atomic_ullong *WebKit::NetworkSession::setThirdPartyCookieBlockingMode(atomic_ullong *result, char a2)
{
  *(result + 98) = a2;
  v2 = result[9];
  if (v2)
  {
    while (1)
    {
      v4 = *v2;
      if ((*v2 & 1) == 0)
      {
        break;
      }

      v5 = *v2;
      atomic_compare_exchange_strong_explicit(v2, &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v5 == v4)
      {
        goto LABEL_4;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_4:
    WebKit::WebResourceLoadStatisticsStore::setThirdPartyCookieBlockingMode(v2, a2);

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v2);
  }

  return result;
}

atomic_ullong *WebKit::NetworkSession::setShouldEnbleSameSiteStrictEnforcement(atomic_ullong *result, char a2)
{
  *(result + 99) = a2;
  v2 = result[9];
  if (v2)
  {
    while (1)
    {
      v4 = *v2;
      if ((*v2 & 1) == 0)
      {
        break;
      }

      v5 = *v2;
      atomic_compare_exchange_strong_explicit(v2, &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v5 == v4)
      {
        goto LABEL_4;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_4:
    WebKit::WebResourceLoadStatisticsStore::setSameSiteStrictEnforcementEnabled(v2, a2);

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v2);
  }

  return result;
}

uint64_t WebKit::NetworkSession::setFirstPartyHostCNAMEDomain(uint64_t result, WTF **a2, const WTF::StringImpl **a3)
{
  if (*a2)
  {
    if (*(*a2 + 1))
    {
      v4 = result;
      result = *a3;
      if (*a3)
      {
        if (*(result + 4))
        {
          result = MEMORY[0x19EB01EF0]();
          if ((result & 1) == 0)
          {
            result = WTF::equal(*a2, *a3, v6);
            if ((result & 1) == 0)
            {
              return WTF::HashMap<WTF::String,WebCore::RegistrableDomain,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebCore::RegistrableDomain>((v4 + 120), a2, a3, v7);
            }
          }
        }
      }
    }
  }

  return result;
}

WTF::StringImpl **WTF::HashMap<WTF::String,WebCore::RegistrableDomain,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebCore::RegistrableDomain>@<X0>(uint64_t *a1@<X0>, WTF::StringImpl **a2@<X1>, const WTF::StringImpl *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DCC63F8);
  }

  if (!*a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DCC6418);
  }

  v8 = *a1;
  if (*a1 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebCore::RegistrableDomain>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebCore::RegistrableDomain>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebCore::RegistrableDomain,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a1, 0), (v8 = *a1) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(*a2 + 4);
  if (v10 < 0x100)
  {
    v11 = WTF::StringImpl::hashSlowCase(*a2);
  }

  else
  {
    v11 = v10 >> 8;
  }

  v12 = 0;
  for (i = 1; ; ++i)
  {
    v14 = v11 & v9;
    v15 = (v8 + 16 * (v11 & v9));
    v16 = *v15;
    if (*v15 != -1)
    {
      break;
    }

    v12 = (v8 + 16 * v14);
LABEL_14:
    v11 = i + v14;
  }

  if (!v16)
  {
    if (v12)
    {
      *v12 = 0;
      v12[1] = 0;
      --*(*a1 - 16);
      v15 = v12;
    }

    v18 = *a2;
    *a2 = 0;
    v19 = *v15;
    *v15 = v18;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, a2);
    }

    v20 = *a3;
    *a3 = 0;
    result = v15[1];
    v15[1] = v20;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, a2);
    }

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
    v27 = (*(v21 - 16) + v22);
    v28 = *(v21 - 4);
    if (v28 > 0x400)
    {
      if (v28 <= 2 * v27)
      {
LABEL_31:
        result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebCore::RegistrableDomain>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebCore::RegistrableDomain>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebCore::RegistrableDomain,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a1, v15);
        v15 = result;
        v21 = *a1;
        if (*a1)
        {
          v28 = *(v21 - 4);
        }

        else
        {
          v28 = 0;
        }
      }
    }

    else if (3 * v28 <= 4 * v27)
    {
      goto LABEL_31;
    }

    v26 = v21 + 16 * v28;
    v25 = 1;
    goto LABEL_34;
  }

  result = WTF::equal(v16, *a2, a3);
  if (!result)
  {
    goto LABEL_14;
  }

  v23 = *a1;
  if (*a1)
  {
    v24 = *(v23 - 4);
  }

  else
  {
    v24 = 0;
  }

  v25 = 0;
  v26 = v23 + 16 * v24;
LABEL_34:
  *a4 = v15;
  *(a4 + 8) = v26;
  *(a4 + 16) = v25;
  return result;
}

WTF *WebKit::NetworkSession::firstPartyHostCNAMEDomain@<X0>(WTF *this@<X0>, const WTF::StringImpl **a2@<X1>, const WTF::StringImpl *a3@<X2>, _BYTE *a4@<X8>)
{
  if (*a2 + 1 <= 1)
  {
    goto LABEL_2;
  }

  v6 = this;
  this = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebCore::RegistrableDomain>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebCore::RegistrableDomain>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebCore::RegistrableDomain,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WebCore::RegistrableDomain,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(this + 15, a2, a3);
  v7 = *(v6 + 15);
  if (v7)
  {
    v7 = (v7 + 16 * *(v7 - 1));
  }

  if (v7 == this)
  {
LABEL_2:
    v5 = 0;
    *a4 = 0;
  }

  else
  {
    v8 = *(this + 1);
    if (v8)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    }

    *a4 = v8;
    v5 = 1;
  }

  a4[8] = v5;
  return this;
}

WTF::StringImpl *WebKit::NetworkSession::resetFirstPartyDNSData(WebKit::NetworkSession *this, WTF::StringImpl *a2)
{
  v3 = *(this + 15);
  if (v3)
  {
    *(this + 15) = 0;
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebCore::RegistrableDomain>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebCore::RegistrableDomain>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebCore::RegistrableDomain,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 16);
  if (v4)
  {
    *(this + 16) = 0;
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebCore::IPAddress>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebCore::IPAddress>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebCore::IPAddress,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::IPAddress>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  return std::__optional_destruct_base<WTF::String,false>::reset[abi:sn200100]((this + 136), a2);
}

double WebKit::NetworkSession::setFirstPartyHostIPAddress(WebKit::NetworkSession *this, const WTF::String *a2, const WTF::String *a3)
{
  if (*a2 && *(*a2 + 4) && *a3 && *(*a3 + 4))
  {
    WebCore::IPAddress::fromString(&v7, a3, a2);
    if (v8 == 1)
    {
      *&result = WTF::HashMap<WTF::String,WebCore::IPAddress,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::IPAddress>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::String const&,WebCore::IPAddress>(&v6, this + 16, a2, &v7).n128_u64[0];
    }
  }

  return result;
}

uint64_t WebKit::NetworkSession::firstPartyHostIPAddress@<X0>(uint64_t this@<X0>, const WTF::StringImpl **a2@<X1>, const WTF::StringImpl *a3@<X2>, uint64_t a4@<X8>)
{
  if (!*a2 || !*(*a2 + 1))
  {
    goto LABEL_8;
  }

  v5 = this;
  this = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebCore::IPAddress>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebCore::IPAddress>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebCore::IPAddress,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::IPAddress>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WebCore::IPAddress,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::IPAddress>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>((this + 128), a2, a3);
  v6 = *(v5 + 128);
  if (v6)
  {
    v6 += 32 * *(v6 - 4);
  }

  if (v6 != this)
  {
    *a4 = *(this + 8);
    *(a4 + 16) = *(this + 24);
    v7 = 1;
  }

  else
  {
LABEL_8:
    v7 = 0;
    *a4 = 0;
  }

  *(a4 + 20) = v7;
  return this;
}

uint64_t WebKit::NetworkSession::storePrivateClickMeasurement(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 496) == 1)
  {
    *(a2 + 32) = 1;
LABEL_4:
    v3 = a1 + 176;

    return std::optional<WebCore::PrivateClickMeasurement>::operator=[abi:sn200100]<WebCore::PrivateClickMeasurement,void>(v3, a2);
  }

  if (*(a2 + 32))
  {
    goto LABEL_4;
  }

  if (*(a2 + 48) == 1)
  {
    v5 = *(*a1 + 184);

    return v5();
  }

  else
  {
    v6 = *(a1 + 160);
    v7 = WTF::fastMalloc(0x10);
    *v7 = &unk_1F1103880;
    v8 = v7;
    (*(*v6 + 16))(v6, a2, &v8);
    result = v8;
    v8 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t std::optional<WebCore::PrivateClickMeasurement>::operator=[abi:sn200100]<WebCore::PrivateClickMeasurement,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 312) == 1)
  {
    WebCore::PrivateClickMeasurement::operator=(a1, a2);
  }

  else
  {
    std::__optional_storage_base<WebCore::PrivateClickMeasurement,false>::__construct[abi:sn200100]<WebCore::PrivateClickMeasurement>(a1, a2);
  }

  return a1;
}

uint64_t WebKit::NetworkSession::handlePrivateClickMeasurementConversion(WebCore::PCM::AttributionTriggerData &&,WTF::URL const&,WebCore::ResourceRequest const&,WebCore::PCM::AttributionTriggerData &&::String &&)::$_0::~$_0(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 224);
  *(a1 + 224) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(a1 + 184);
  *(a1 + 184) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(a1 + 176);
  *(a1 + 176) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(a1 + 136);
  *(a1 + 136) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  WebCore::PCM::AttributionTriggerData::~AttributionTriggerData((a1 + 8), a2);
  v8 = *a1;
  *a1 = 0;
  if (v8 && atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v8);
    WTF::fastFree(v8, v7);
  }

  return a1;
}

void WebKit::NetworkSession::clearPrivateClickMeasurement(uint64_t a1)
{
  (*(**(a1 + 160) + 32))(*(a1 + 160));
  if (*(a1 + 488) == 1)
  {
    WebCore::PrivateClickMeasurement::~PrivateClickMeasurement((a1 + 176), v2);
    *(a1 + 488) = 0;
  }

  *(a1 + 496) = 0;
}

WTF::StringImpl *WebKit::NetworkSession::setPrivateClickMeasurementAppBundleIDForTesting(WTF *a1, uint64_t a2)
{
  WTF::applicationBundleIdentifier(&v14, a1);
  isRunningTest = WebKit::isRunningTest(&v14, v4);
  if ((isRunningTest & 1) == 0)
  {
    if (v14 && *(v14 + 1))
    {
      WTF::String::utf8();
      WTFLogAlways();
      isRunningTest = v13;
      v13 = 0;
      if (isRunningTest)
      {
        if (*isRunningTest == 1)
        {
          isRunningTest = WTF::fastFree(isRunningTest, v6);
        }

        else
        {
          --*isRunningTest;
        }
      }
    }

    else
    {
      isRunningTest = WTFLogAlways();
    }
  }

  WTF::applicationBundleIdentifier(&v13, isRunningTest);
  v9 = WebKit::isRunningTest(&v13, v7);
  v10 = v13;
  v13 = 0;
  if (!v10 || atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) != 2)
  {
    if (v9)
    {
      goto LABEL_11;
    }

LABEL_16:
    __break(0xC471u);
    JUMPOUT(0x19DCC6A10);
  }

  WTF::StringImpl::destroy(v10, v8);
  if ((v9 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  (*(**(a1 + 20) + 136))(*(a1 + 20), a2);
  result = v14;
  v14 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v11);
    }
  }

  return result;
}

void *WebKit::NetworkSession::removeKeptAliveLoad(WebKit::NetworkSession *this, WebKit::NetworkResourceLoader *a2)
{
  v6 = a2;
  result = WTF::HashTable<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::FastMalloc>::find<WTF::HashSetTranslator<WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::DefaultHash<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>>,(WTF::ShouldValidateKey)1,WebKit::NetworkResourceLoader const*>(this + 63, &v6);
  v4 = *(this + 63);
  if (v4)
  {
    v5 = (v4 + 8 * *(v4 - 4));
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
    return WTF::HashTable<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::FastMalloc>::remove(this + 63, result);
  }

  return result;
}

uint64_t WebKit::NetworkSession::CachedNetworkResourceLoader::operator new(WebKit::NetworkSession::CachedNetworkResourceLoader *this, void *a2)
{
  if (WebKit::NetworkSession::CachedNetworkResourceLoader::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::NetworkSession::CachedNetworkResourceLoader::s_heapRef, a2);
  }

  else
  {
    return WebKit::NetworkSession::CachedNetworkResourceLoader::operatorNewSlow(0x48);
  }
}

uint64_t WebKit::NetworkSession::CachedNetworkResourceLoader::CachedNetworkResourceLoader(uint64_t a1, uint64_t *a2)
{
  *a1 = 1;
  WebCore::Timer::Timer<WebKit::NetworkSession::CachedNetworkResourceLoader,WebKit::NetworkSession::CachedNetworkResourceLoader>((a1 + 8), a1);
  v4 = *a2;
  *a2 = 0;
  *(a1 + 64) = v4;
  WebCore::TimerBase::start();
  return a1;
}

uint64_t WebKit::NetworkSession::CachedNetworkResourceLoader::expirationTimerFired(WebKit::NetworkSession::CachedNetworkResourceLoader *this)
{
  v1 = *(this + 8);
  if (v1)
  {
    ++*(v1 + 20);
  }

  v2 = *(v1 + 4144);
  ++*(v2 + 20);
  v3 = *(v2 + 88);
  v8 = *(v2 + 96);
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v3 + 240), &v8);
  v5 = result;
  if (result)
  {
    ++*(result + 16);
  }

  if (*(v2 + 20) == 1)
  {
    result = (*(*v2 + 8))(v2);
    if (!v5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    --*(v2 + 20);
    if (!result)
    {
      goto LABEL_9;
    }
  }

  result = WebKit::NetworkSession::removeLoaderWaitingWebProcessTransfer(v5, *(v1 + 4696));
  v6 = *(v5 + 16);
  if (!v6)
  {
    result = 290;
    __break(0xC471u);
    return result;
  }

  *(v5 + 16) = v6 - 1;
LABEL_9:
  if (*(v1 + 20) == 1)
  {
    v7 = *(*v1 + 24);

    return v7(v1);
  }

  else
  {
    --*(v1 + 20);
  }

  return result;
}

uint64_t *WebKit::NetworkSession::removeLoaderWaitingWebProcessTransfer(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v3 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( (a1 + 512),  &v8);
  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(&v7, (a1 + 512), v3);
  v5 = v7;
  if (v7)
  {
    v6 = *(v7 + 8);
    *(v7 + 8) = 0;
    WebKit::NetworkResourceLoader::abort(v6);
    if (v6)
    {
      if (*(v6 + 5) == 1)
      {
        (*(*v6 + 24))(v6);
      }

      else
      {
        --*(v6 + 5);
      }
    }

    return WTF::RefCounted<WebKit::NetworkSession::CachedNetworkResourceLoader>::deref(v5);
  }

  return result;
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(*a3);
  v8 = *a2;
  if (*a2 || (WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, 0), (v8 = *a2) != 0))
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
        goto LABEL_12;
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
    result = WTF::RefCounted<WebKit::NetworkSession::CachedNetworkResourceLoader>::deref(result);
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
      goto LABEL_11;
    }

LABEL_23:
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, v12);
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

    goto LABEL_11;
  }

  if (3 * v19 <= 4 * v18)
  {
    goto LABEL_23;
  }

LABEL_11:
  v20 = v16 + 16 * v19;
  v21 = 1;
LABEL_12:
  *a1 = v12;
  *(a1 + 8) = v20;
  *(a1 + 16) = v21;
  return result;
}

WebKit::NetworkSession::CachedNetworkResourceLoader *WebKit::NetworkSession::takeLoaderAwaitingWebProcessTransfer@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v9 = a2;
  v5 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( (a1 + 512),  &v9);
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(&v8, (a1 + 512), v5);
  result = v8;
  if (v8)
  {
    v7 = *(v8 + 8);
    *(v8 + 8) = 0;
    result = WTF::RefCounted<WebKit::NetworkSession::CachedNetworkResourceLoader>::deref(result);
  }

  else
  {
    v7 = 0;
  }

  *a3 = v7;
  return result;
}

uint64_t WTF::ThreadSafeWeakHashSet<WebKit::NetworkDataTask>::add<WebKit::NetworkDataTask>(uint64_t a1, uint64_t a2)
{
  v4 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock((a2 + 8));
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

  v6 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock((a2 + 8));
  v7 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v6);
  v8 = *(a1 + 12);
  v9 = *(a1 + 8) + 1;
  *(a1 + 8) = v9;
  v10 = *a1;
  if (v9 > v8)
  {
    if (v10)
    {
      v24 = *(v10 - 4);
      if (!v24)
      {
        goto LABEL_35;
      }

      v25 = 0;
      v26 = (v10 + 16 * v24 - 16);
      do
      {
        if (*v26 != -1 && *v26 != 0 && WTF::ThreadSafeWeakPtrControlBlock::objectHasStartedDeletion(*v26))
        {
          v28 = *v26;
          *v26 = 0;
          if (v28)
          {
            WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v28, v27);
          }

          *v26 = -1;
          ++v25;
        }

        v26 -= 2;
        --v24;
      }

      while (v24);
      v10 = *a1;
      if (v25)
      {
        v33 = *(v10 - 12) - v25;
        *(v10 - 16) += v25;
        *(v10 - 12) = v33;
LABEL_35:
        v29 = *(v10 - 4);
        if (6 * *(v10 - 12) < v29 && v29 > 8)
        {
          WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>>,WTF::FastMalloc>::shrinkToBestSize(a1);
          v10 = *a1;
          *(a1 + 8) = 0;
          if (!v10)
          {
            v31 = 0;
            goto LABEL_41;
          }
        }

        else
        {
          *(a1 + 8) = 0;
        }

        v31 = *(v10 - 12);
        if (v31 > 0x7FFFFFFE)
        {
          v32 = -2;
          goto LABEL_45;
        }

LABEL_41:
        v32 = 2 * v31;
LABEL_45:
        *(a1 + 12) = v32;
        v10 = *a1;
        goto LABEL_5;
      }

      if (v10)
      {
        goto LABEL_35;
      }
    }

    v31 = 0;
    *(a1 + 8) = 0;
    goto LABEL_41;
  }

LABEL_5:
  if (!v10)
  {
    WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>>,WTF::FastMalloc>::expand(a1);
    v10 = *a1;
  }

  v11 = *(v10 - 8);
  result = WTF::PairHash<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>::hash(v7, a2);
  v13 = result & v11;
  v14 = (v10 + 16 * (result & v11));
  v15 = *v14;
  v16 = v14[1];
  if (*v14 != 0)
  {
    v17 = 0;
    v18 = 1;
    while (v15 != v7 || v16 != a2)
    {
      if (v15 == -1)
      {
        v17 = v14;
      }

      v13 = (v13 + v18) & v11;
      v14 = (v10 + 16 * v13);
      v15 = *v14;
      v16 = v14[1];
      ++v18;
      if (*v14 == 0)
      {
        if (v17)
        {
          *v17 = 0;
          v17[1] = 0;
          --*(*a1 - 16);
          v14 = v17;
        }

        goto LABEL_16;
      }
    }

    if (v7)
    {
      result = WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v7, v14);
    }

    goto LABEL_20;
  }

LABEL_16:
  *v14 = v7;
  v19 = *a1;
  v14[1] = a2;
  if (v19)
  {
    v20 = *(v19 - 12) + 1;
  }

  else
  {
    v20 = 1;
  }

  *(v19 - 12) = v20;
  v21 = (*(v19 - 16) + v20);
  v22 = *(v19 - 4);
  if (v22 > 0x400)
  {
    if (v22 > 2 * v21)
    {
      goto LABEL_20;
    }
  }

  else if (3 * v22 > 4 * v21)
  {
    goto LABEL_20;
  }

  result = WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>>,WTF::FastMalloc>::expand(a1);
LABEL_20:
  v23 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 16), &v23, 0, memory_order_release, memory_order_relaxed);
  if (v23 != 1)
  {

    return WTF::Lock::unlockSlow((a1 + 16));
  }

  return result;
}

BOOL WTF::ThreadSafeWeakHashSet<WebKit::NetworkDataTask>::remove<WebKit::NetworkDataTask>(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = (a1 + 16);
  atomic_compare_exchange_strong_explicit((a1 + 16), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x19EB01E30](a1 + 16);
  }

  v6 = *(a1 + 12);
  v7 = *(a1 + 8) + 1;
  *(a1 + 8) = v7;
  if (v7 <= v6)
  {
    goto LABEL_4;
  }

  v34 = *a1;
  if (!*a1)
  {
    goto LABEL_68;
  }

  v35 = *(v34 - 4);
  if (v35)
  {
    v36 = 0;
    v37 = (v34 + 16 * v35 - 16);
    do
    {
      if (*v37 != -1 && *v37 != 0 && WTF::ThreadSafeWeakPtrControlBlock::objectHasStartedDeletion(*v37))
      {
        v39 = *v37;
        *v37 = 0;
        if (v39)
        {
          WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v39, v38);
        }

        *v37 = -1;
        ++v36;
      }

      v37 -= 2;
      --v35;
    }

    while (v35);
    v34 = *a1;
    if (v36)
    {
      v43 = *(v34 - 12) - v36;
      *(v34 - 16) += v36;
      *(v34 - 12) = v43;
      goto LABEL_51;
    }

    if (!v34)
    {
LABEL_68:
      LODWORD(v34) = 0;
      *(a1 + 8) = 0;
      goto LABEL_57;
    }
  }

LABEL_51:
  v40 = *(v34 - 4);
  if (6 * *(v34 - 12) < v40 && v40 > 8)
  {
    WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>>,WTF::FastMalloc>::shrinkToBestSize(a1);
    v34 = *a1;
    *(a1 + 8) = 0;
    if (!v34)
    {
      goto LABEL_57;
    }
  }

  else
  {
    *(a1 + 8) = 0;
  }

  LODWORD(v34) = *(v34 - 12);
  if (v34 > 0x7FFFFFFE)
  {
    v42 = -2;
    goto LABEL_60;
  }

LABEL_57:
  v42 = 2 * v34;
LABEL_60:
  *(a1 + 12) = v42;
LABEL_4:
  if ((*(a2 + 8) & 1) == 0)
  {
    v8 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock((a2 + 8));
    if (WTF::ThreadSafeWeakPtrControlBlock::weakRefCount(v8))
    {
      v9 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock((a2 + 8));
      v10 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v9);
      v12 = v10;
      v13 = *a1;
      if (*a1)
      {
        v14 = *(v13 - 8);
        v15 = WTF::PairHash<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>::hash(v10, a2) & v14;
        v16 = v13 + 16 * v15;
        v17 = *v16;
        v18 = *(v16 + 8);
        if (*v16 != v12 || v18 != a2)
        {
          v20 = 1;
          while (v17 | v18)
          {
            v15 = (v15 + v20) & v14;
            v16 = v13 + 16 * v15;
            v17 = *v16;
            v18 = *(v16 + 8);
            ++v20;
            if (*v16 == v12 && v18 == a2)
            {
              goto LABEL_18;
            }
          }

          v16 = v13 + 16 * *(v13 - 4);
        }
      }

      else
      {
        v16 = 0;
      }

LABEL_18:
      if (v12)
      {
        WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v12, v11);
        v13 = *a1;
      }

      v22 = v13 ? v13 + 16 * *(v13 - 4) : 0;
      if (v22 != v16)
      {
        HasStartedDeletion = WTF::ThreadSafeWeakPtrControlBlock::objectHasStartedDeletion(*v16);
        if (*a1)
        {
          v25 = *a1 + 16 * *(*a1 - 4);
          if (v25 != v16)
          {
            goto LABEL_25;
          }
        }

        else if (v16)
        {
          v25 = 0;
LABEL_25:
          if (v25 != v16)
          {
            v26 = *v16;
            *v16 = 0;
            if (v26)
            {
              WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v26, v23);
            }

            *v16 = -1;
            v27 = *a1;
            v28 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
            *(v27 - 16) = v28;
            v29 = *(v27 - 4);
            if (6 * v28.i32[1] < v29 && v29 >= 9)
            {
              WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>>,WTF::FastMalloc>::rehash(a1, v29 >> 1);
            }
          }
        }

        v31 = !HasStartedDeletion;
        goto LABEL_34;
      }
    }
  }

  v31 = 0;
LABEL_34:
  v32 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v32, 0, memory_order_release, memory_order_relaxed);
  if (v32 != 1)
  {
    WTF::Lock::unlockSlow(v5);
  }

  return v31;
}

uint64_t WebKit::NetworkSession::networkLoadScheduler(WebKit::NetworkSession *this, void *a2)
{
  result = *(this + 79);
  if (!result)
  {
    v4 = WebKit::NetworkLoadScheduler::operator new(0x28, a2);
    result = WebKit::ShapeDetection::ObjectHeap::ObjectHeap(v4);
    if (*(this + 79))
    {
      result = 272;
      __break(0xC471u);
    }

    else
    {
      *(this + 79) = result;
    }
  }

  return result;
}

uint64_t WebKit::NetworkSession::protectedNetworkLoadScheduler@<X0>(WebKit::NetworkSession *this@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = WebKit::NetworkSession::networkLoadScheduler(this, a2);
  ++*(result + 8);
  *a3 = result;
  return result;
}

atomic_ullong *WebKit::NetworkSession::reportNetworkIssue(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  WebKit::AuxiliaryProcess::protectedParentProcessConnection(*(a1 + 32), &v13);
  v5 = v13;
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 553;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = 0;
  IPC::Encoder::encodeHeader(v7);
  v14 = v7;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v7, a3);
  IPC::Connection::sendMessageImpl(v5, &v14, 0, 0);
  v9 = v14;
  v14 = 0;
  if (v9)
  {
    IPC::Encoder::~Encoder(v9, v8);
    bmalloc::api::tzoneFree(v11, v12);
  }

  result = v13;
  v13 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  return result;
}

uint64_t WebKit::NetworkSession::lowMemoryHandler(void *a1)
{
  WebKit::PrefetchCache::clear((a1 + 65));
  v2 = a1[97];
  if (v2)
  {
    v3 = v2 + 2;
    ++v2[2];
    WebCore::SWServer::handleLowMemoryWarning(v2);
    WTF::RefCounted<WebCore::SWServer>::deref(v3);
  }

  v4 = a1[131];

  return WebKit::NetworkStorageManager::handleLowMemoryWarning(v4);
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::ServiceWorkerFetchTask&>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  if (*a2 == -1 || !v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19DCC789CLL);
  }

  v8 = result;
  v9 = *result;
  if (!*result)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(result, 0);
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
        goto LABEL_24;
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
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a3, a3);
  v20 = *a3;
  atomic_fetch_add(*a3, 1u);
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
LABEL_20:
      result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v8, v15);
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
    goto LABEL_20;
  }

  v24 = v21 + 16 * v26;
  v23 = 1;
LABEL_24:
  *a4 = v15;
  *(a4 + 8) = v24;
  *(a4 + 16) = v23;
  return result;
}

uint64_t *WebKit::NetworkSession::removeNavigationPreloaderTask(WebKit::NetworkSession *this, WebKit::ServiceWorkerFetchTask *a2)
{
  v6 = *(a2 + 5);
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(this + 93, &v6);
  v4 = *(this + 93);
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
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(this + 93, result);
  }

  return result;
}

void WebKit::NetworkSession::registerSWServerConnection(WebKit::NetworkSession *this, WebKit::WebSWServerConnection *a2)
{
  v2 = *(this + 97);
  if (v2)
  {
    v3 = *(v2 + 152);
    if (v3)
    {
      WebKit::WebSWOriginStore::registerSWServerConnection(v3, a2);
    }
  }
}

unsigned int *WebKit::NetworkSession::unregisterSWServerConnection(unsigned int *this, WebKit::WebSWServerConnection *a2)
{
  v2 = *(this + 97);
  if (v2)
  {
    this = *(v2 + 152);
    if (this)
    {
      return WebKit::WebSWOriginStore::unregisterSWServerConnection(this, a2);
    }
  }

  return this;
}

uint64_t WebKit::NetworkSession::ensureSWServer(WebKit::NetworkSession *this, void *a2)
{
  if (!*(this + 97))
  {
    if (*(this + 768))
    {
      v4 = *(this + 94);
      if (v4)
      {
        v5 = 0;
        atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
        atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
      }

      else
      {
        v5 = 1;
      }
    }

    else
    {
      v4 = 0;
      v5 = 1;
    }

    v17 = v4;
    v6 = WebKit::WebSWOriginStore::operator new(this, a2);
    v14 = 0;
    v15 = WebKit::WebSWOriginStore::WebSWOriginStore(v6);
    WebKit::NetworkProcess::parentProcessHasServiceWorkerEntitlement(*(this + 4));
    WebCore::SWServer::create();
    v8 = v16;
    v16 = 0;
    v9 = *(this + 97);
    *(this + 97) = v8;
    if (v9)
    {
      WTF::RefCounted<WebCore::SWServer>::deref((v9 + 8));
      v10 = v16;
      v16 = 0;
      if (v10)
      {
        WTF::RefCounted<WebCore::SWServer>::deref((v10 + 8));
      }
    }

    v11 = v15;
    v15 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    WTF::UniqueRef<WebKit::WebSWOriginStore>::~UniqueRef(&v14, v7);
    v13 = v17;
    v17 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v12);
    }

    if ((v5 & 1) == 0 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v12);
    }
  }

  return *(this + 97);
}

void WebKit::NetworkSession::ensureSharedWorkerServer(WebKit::NetworkSession *this, void *a2)
{
  if (!*(this + 100))
  {
    v3 = WebKit::WebSharedWorkerServer::operator new(0x38, a2);
    WebKit::WebSharedWorkerServer::WebSharedWorkerServer(v3, this);
    if (*(this + 100))
    {
      __break(0xC471u);
    }

    else
    {
      *(this + 100) = v4;
    }
  }
}

void *WebKit::NetworkSession::softUpdate(uint64_t a1, void *a2, char a3, const WebCore::ResourceRequest *a4, uint64_t *a5)
{
  v10 = WebKit::ServiceWorkerSoftUpdateLoader::operator new(0x1B0, a2);
  result = WebKit::ServiceWorkerSoftUpdateLoader::ServiceWorkerSoftUpdateLoader(v10, a1, a2, a3, a4, a5);
  if (result == -1 || !v10)
  {
    __break(0xC471u);
    JUMPOUT(0x19DCC7D74);
  }

  v12 = (a1 + 736);
  v13 = *v12;
  if (!*v12)
  {
    result = WTF::HashTable<WTF::RefPtr<WebKit::ServiceWorkerSoftUpdateLoader,WTF::RawPtrTraits<WebKit::ServiceWorkerSoftUpdateLoader>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerSoftUpdateLoader>>,WTF::RefPtr<WebKit::ServiceWorkerSoftUpdateLoader,WTF::RawPtrTraits<WebKit::ServiceWorkerSoftUpdateLoader>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerSoftUpdateLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebKit::ServiceWorkerSoftUpdateLoader,WTF::RawPtrTraits<WebKit::ServiceWorkerSoftUpdateLoader>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerSoftUpdateLoader>>>,WTF::HashTraits<WTF::RefPtr<WebKit::ServiceWorkerSoftUpdateLoader,WTF::RawPtrTraits<WebKit::ServiceWorkerSoftUpdateLoader>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerSoftUpdateLoader>>>,WTF::HashTraits<WTF::RefPtr<WebKit::ServiceWorkerSoftUpdateLoader,WTF::RawPtrTraits<WebKit::ServiceWorkerSoftUpdateLoader>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerSoftUpdateLoader>>>,WTF::FastMalloc>::expand(v12, 0);
    v13 = *v12;
  }

  v14 = *(v13 - 8);
  v15 = (~(v10 << 32) + v10) ^ ((~(v10 << 32) + v10) >> 22);
  v16 = 9 * ((v15 + ~(v15 << 13)) ^ ((v15 + ~(v15 << 13)) >> 8));
  v17 = (v16 ^ (v16 >> 15)) + ~((v16 ^ (v16 >> 15)) << 27);
  v18 = v14 & ((v17 >> 31) ^ v17);
  v19 = (v13 + 8 * v18);
  v20 = *v19;
  if (*v19)
  {
    v21 = 0;
    v22 = 1;
    while (v20 != v10)
    {
      if (v20 == -1)
      {
        v21 = v19;
      }

      v18 = (v18 + v22) & v14;
      v19 = (v13 + 8 * v18);
      v20 = *v19;
      ++v22;
      if (!*v19)
      {
        if (v21)
        {
          *v21 = 0;
          --*(*v12 - 16);
          v19 = v21;
        }

        goto LABEL_13;
      }
    }

    if (*(v10 + 20) == 1)
    {
      v27 = *(*v10 + 24);

      return v27(v10);
    }

    else
    {
      --*(v10 + 20);
    }
  }

  else
  {
LABEL_13:
    *v19 = v10;
    v23 = *v12;
    if (*v12)
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
        return result;
      }
    }

    else if (3 * v26 > 4 * v25)
    {
      return result;
    }

    return WTF::HashTable<WTF::RefPtr<WebKit::ServiceWorkerSoftUpdateLoader,WTF::RawPtrTraits<WebKit::ServiceWorkerSoftUpdateLoader>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerSoftUpdateLoader>>,WTF::RefPtr<WebKit::ServiceWorkerSoftUpdateLoader,WTF::RawPtrTraits<WebKit::ServiceWorkerSoftUpdateLoader>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerSoftUpdateLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebKit::ServiceWorkerSoftUpdateLoader,WTF::RawPtrTraits<WebKit::ServiceWorkerSoftUpdateLoader>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerSoftUpdateLoader>>>,WTF::HashTraits<WTF::RefPtr<WebKit::ServiceWorkerSoftUpdateLoader,WTF::RawPtrTraits<WebKit::ServiceWorkerSoftUpdateLoader>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerSoftUpdateLoader>>>,WTF::HashTraits<WTF::RefPtr<WebKit::ServiceWorkerSoftUpdateLoader,WTF::RawPtrTraits<WebKit::ServiceWorkerSoftUpdateLoader>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerSoftUpdateLoader>>>,WTF::FastMalloc>::expand(v12, v19);
  }

  return result;
}

atomic_ullong *WebKit::NetworkSession::createContextConnection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v29[0] = a3;
  v29[1] = a4;
  WebKit::AuxiliaryProcess::protectedParentProcessConnection(*(a1 + 32), &v28);
  v10 = v28;
  v23[0] = 1;
  v24 = a2;
  v25 = v29;
  v26 = a5;
  v27 = a1 + 24;
  v11 = *a6;
  *a6 = 0;
  v12 = WTF::fastMalloc(0x10);
  *v12 = &unk_1F11038F8;
  v12[1] = v11;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v13 = v12;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v16 = IPC::Encoder::operator new(0x238, v15);
    *v16 = 536;
    *(v16 + 68) = 0;
    *(v16 + 70) = 0;
    *(v16 + 69) = 0;
    *(v16 + 2) = 0;
    *(v16 + 3) = 0;
    *(v16 + 1) = 0;
    IPC::Encoder::encodeHeader(v16);
    v31 = v16;
    Messages::NetworkProcessProxy::EstablishRemoteWorkerContextConnectionToNetworkProcess::encode<IPC::Encoder>(v23, v16);
    v30[0] = v13;
    v30[1] = IdentifierInternal;
    IPC::Connection::sendMessageWithAsyncReply(v10, &v31, v30, 0, 0);
    v18 = v30[0];
    v30[0] = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v19 = v31;
    v31 = 0;
    if (v19)
    {
      IPC::Encoder::~Encoder(v19, v17);
      bmalloc::api::tzoneFree(v21, v22);
    }

    result = v28;
    v28 = 0;
    if (result)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
    }
  }

  return result;
}

atomic_ullong *WebKit::NetworkSession::appBoundDomains(uint64_t a1, uint64_t *a2)
{
  WebKit::AuxiliaryProcess::protectedParentProcessConnection(*(a1 + 32), &v17);
  v4 = v17;
  v5 = *a2;
  *a2 = 0;
  v6 = WTF::fastMalloc(0x10);
  *v6 = &unk_1F1103920;
  v6[1] = v5;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v7 = v6;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v10 = IPC::Encoder::operator new(0x238, v9);
    *v10 = 537;
    *(v10 + 68) = 0;
    *(v10 + 70) = 0;
    *(v10 + 69) = 0;
    *(v10 + 2) = 0;
    *(v10 + 3) = 0;
    *(v10 + 1) = 0;
    IPC::Encoder::encodeHeader(v10);
    v19 = v10;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, *(a1 + 24));
    v18[0] = v7;
    v18[1] = IdentifierInternal;
    IPC::Connection::sendMessageWithAsyncReply(v4, &v19, v18, 0, 0);
    v12 = v18[0];
    v18[0] = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v13 = v19;
    v19 = 0;
    if (v13)
    {
      IPC::Encoder::~Encoder(v13, v11);
      bmalloc::api::tzoneFree(v15, v16);
    }

    result = v17;
    v17 = 0;
    if (result)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
    }
  }

  return result;
}

uint64_t WebKit::NetworkSession::addAllowedFirstPartyForCookies(uint64_t a1, uint64_t a2, uint64_t a3, char a4, WTF **a5)
{
  if ((a4 & 1) == 0 || a3 == a2 || (result = WebKit::NetworkProcess::allowsFirstPartyForCookies(*(a1 + 32), a3, a5), result == 1))
  {
    v9 = *(a1 + 32);
    v10 = WTF::fastMalloc(0x10);
    *v10 = &unk_1F1103948;
    v11 = v10;
    WebKit::NetworkProcess::addAllowedFirstPartyForCookies(v9, a2, a5, 0, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

WebKit::WebSWRegistrationStore *WebKit::NetworkSession::createRegistrationStore@<X0>(WebKit::WebSWRegistrationStore *this@<X0>, WebCore::SWServer *a2@<X1>, WebKit::WebSWRegistrationStore **a3@<X8>)
{
  if (*(this + 3) >= -1)
  {
    this = WebKit::WebSWRegistrationStore::create(a2, *(this + 131), &v5);
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
  return this;
}

uint64_t WebKit::NetworkSession::createBackgroundFetchRecordLoader@<X0>(uint64_t a1@<X0>, void *a2@<X1>, WebCore::ResourceRequest *a3@<X2>, WTF::StringImpl *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = *(a1 + 24);
  v11 = *(a1 + 32);
  if (WebKit::BackgroundFetchLoad::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::BackgroundFetchLoad::s_heapRef, a2);
  }

  else
  {
    NonCompact = WebKit::BackgroundFetchLoad::operatorNewSlow(0x118);
  }

  result = WebKit::BackgroundFetchLoad::BackgroundFetchLoad(NonCompact, v11, v12, a2, a3, a4, a5);
  *a6 = result;
  return result;
}

uint64_t WebKit::NetworkSession::createBackgroundFetchStore@<X0>(WebKit::NetworkSession *this@<X0>, void *a2@<X8>)
{
  result = WebKit::NetworkSession::ensureBackgroundFetchStore(this);
  ++*(result + 16);
  *a2 = result;
  return result;
}

uint64_t WebKit::NetworkSession::ensureBackgroundFetchStore(WebKit::NetworkSession *this)
{
  result = *(this + 98);
  if (!result)
  {
    v3 = *(this + 131);
    v4 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock((v3 + 8));
    v5 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v4);
    v7 = WebKit::NetworkSession::ensureSWServer(this, v6);
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v7, v7);
    v8 = *v7;
    atomic_fetch_add(v8, 1u);
    result = WTF::fastMalloc(0x40);
    *(result + 16) = 1;
    *result = &unk_1F1108D30;
    *(result + 8) = 0;
    *(result + 24) = v3;
    *(result + 32) = v5;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = v8;
    if (*(this + 98))
    {
      result = 272;
      __break(0xC471u);
    }

    else
    {
      *(this + 98) = result;
    }
  }

  return result;
}

uint64_t WebKit::NetworkSession::getAllBackgroundFetchIdentifiers(WebKit::NetworkSession *a1, uint64_t *a2)
{
  Store = WebKit::NetworkSession::ensureBackgroundFetchStore(a1);
  ++Store[4];
  result = WebKit::BackgroundFetchStoreImpl::getAllBackgroundFetchIdentifiers(Store, a2);
  if (Store[4] == 1)
  {
    v5 = *(*Store + 8);

    return v5(Store);
  }

  else
  {
    --Store[4];
  }

  return result;
}

_DWORD *WebKit::NetworkSession::getBackgroundFetchState(WebKit::NetworkSession *a1, atomic_uint **a2, uint64_t *a3)
{
  Store = WebKit::NetworkSession::ensureBackgroundFetchStore(a1);
  ++Store[4];
  result = WebKit::BackgroundFetchStoreImpl::getBackgroundFetchState(Store, a2, a3);
  if (Store[4] == 1)
  {
    v7 = *(*Store + 8);

    return v7(Store);
  }

  else
  {
    --Store[4];
  }

  return result;
}

_DWORD *WebKit::NetworkSession::abortBackgroundFetch(WebKit::NetworkSession *a1, atomic_uint **a2, uint64_t *a3)
{
  Store = WebKit::NetworkSession::ensureBackgroundFetchStore(a1);
  ++Store[4];
  result = WebKit::BackgroundFetchStoreImpl::abortBackgroundFetch(Store, a2, a3);
  if (Store[4] == 1)
  {
    v7 = *(*Store + 8);

    return v7(Store);
  }

  else
  {
    --Store[4];
  }

  return result;
}

_DWORD *WebKit::NetworkSession::pauseBackgroundFetch(WebKit::NetworkSession *a1, atomic_uint **a2, uint64_t *a3)
{
  Store = WebKit::NetworkSession::ensureBackgroundFetchStore(a1);
  ++Store[4];
  result = WebKit::BackgroundFetchStoreImpl::pauseBackgroundFetch(Store, a2, a3);
  if (Store[4] == 1)
  {
    v7 = *(*Store + 8);

    return v7(Store);
  }

  else
  {
    --Store[4];
  }

  return result;
}

_DWORD *WebKit::NetworkSession::resumeBackgroundFetch(WebKit::NetworkSession *a1, atomic_uint **a2, uint64_t *a3)
{
  Store = WebKit::NetworkSession::ensureBackgroundFetchStore(a1);
  ++Store[4];
  result = WebKit::BackgroundFetchStoreImpl::resumeBackgroundFetch(Store, a2, a3);
  if (Store[4] == 1)
  {
    v7 = *(*Store + 8);

    return v7(Store);
  }

  else
  {
    --Store[4];
  }

  return result;
}

_DWORD *WebKit::NetworkSession::clickBackgroundFetch(WebKit::NetworkSession *a1, atomic_uint **a2, uint64_t *a3)
{
  Store = WebKit::NetworkSession::ensureBackgroundFetchStore(a1);
  ++Store[4];
  result = WebKit::BackgroundFetchStoreImpl::clickBackgroundFetch(Store, a2, a3);
  if (Store[4] == 1)
  {
    v7 = *(*Store + 8);

    return v7(Store);
  }

  else
  {
    --Store[4];
  }

  return result;
}

_DWORD *WebKit::NetworkSession::setInspectionForServiceWorkersAllowed(_DWORD *this, int a2)
{
  if (*(this + 792) != a2)
  {
    *(this + 792) = a2;
    this = *(this + 97);
    if (this)
    {
      v3 = this + 2;
      ++this[2];
      WebCore::SWServer::setInspectable();

      return WTF::RefCounted<WebCore::SWServer>::deref(v3);
    }
  }

  return this;
}

WTF::StringImpl **WebKit::NetworkSession::setPersistedDomains(uint64_t a1, WTF::StringImpl *a2, const WTF::StringImpl *a3)
{
  v4 = *a2;
  *a2 = 0;
  v6 = (a1 + 112);
  result = *(a1 + 112);
  *v6 = v4;
  if (result)
  {
    result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(result, a2);
  }

  v7 = *(a1 + 72);
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
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v7);
LABEL_6:
    WebKit::WebResourceLoadStatisticsStore::setPersistedDomains(v7, v6, a3);

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v7);
  }

  return result;
}

uint64_t WebKit::NetworkSession::resourceMonitorThrottler(WebKit::NetworkSession *this)
{
  v7 = *MEMORY[0x1E69E9840];
  result = *(this + 137);
  if (!result)
  {
    v3 = qword_1ED641170;
    if (os_log_type_enabled(qword_1ED641170, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(this + 3);
      *v6 = 134217984;
      *&v6[4] = v5;
      _os_log_impl(&dword_19D52D000, v3, OS_LOG_TYPE_DEFAULT, "NetworkSession::resourceMonitorThrottler sessionID=%llu, ResourceMonitorThrottler is created.", v6, 0xCu);
    }

    WebCore::ResourceMonitorThrottlerHolder::create(v6, (this + 1104), v4);
    if (*(this + 137))
    {
      result = 272;
      __break(0xC471u);
    }

    else
    {
      result = *v6;
      *(this + 137) = *v6;
    }
  }

  return result;
}

atomic_ullong *WebKit::NetworkSession::protectedResourceMonitorThrottler@<X0>(WebKit::NetworkSession *this@<X0>, atomic_ullong **a2@<X8>)
{
  result = WebKit::NetworkSession::resourceMonitorThrottler(this);
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
  *a2 = v4;
  return result;
}

atomic_ullong *WebKit::NetworkSession::clearResourceMonitorThrottlerData(WebKit::NetworkSession *a1)
{
  WebKit::NetworkSession::protectedResourceMonitorThrottler(a1, &v3);
  v1 = v3;
  result = WebCore::ResourceMonitorThrottlerHolder::clearAllData();
  if (v1)
  {

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ResourceMonitorThrottlerHolder,(WTF::DestructionThread)1>::deref(v1);
  }

  return result;
}

WTF::StringImpl *WebKit::NetworkSocketChannel::create@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, __int16 a13, int a14, unsigned __int16 a15, int a16, char a17)
{
  v21 = WebKit::NetworkSocketChannel::operator new(0xA8, a2);
  v22 = *(a1 + 88);
  v33[0] = a2;
  v23 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v22 + 240), v33);
  result = WebKit::NetworkSocketChannel::NetworkSocketChannel(v21, a1, v23, a3, a4, a5, a6, v24, a7, a8, a10, a11, a12, a13, v27, a15, 0, a17);
  if (*(v21 + 56))
  {
    *a9 = v21;
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WebKit::NetworkSocketChannel::didClose(v21, 0, v33);
    result = v33[0];
    v33[0] = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v26);
    }

    *a9 = 0;
    if (*(v21 + 24) == 1)
    {
      return (*(*v21 + 8))(v21);
    }

    else
    {
      --*(v21 + 24);
    }
  }

  return result;
}

uint64_t WebKit::NetworkSocketChannel::operator new(WebKit::NetworkSocketChannel *this, void *a2)
{
  if (this == 168 && WebKit::NetworkSocketChannel::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::NetworkSocketChannel::s_heapRef, a2);
  }

  else
  {
    return WebKit::NetworkSocketChannel::operatorNewSlow(this);
  }
}

uint64_t WebKit::NetworkSocketChannel::didClose(uint64_t this, WTF::StringImpl *a2, const WTF::String *a3)
{
  v4 = a2;
  v5 = this;
  if ((*(this + 104) & 0xFFFFFFFFFFFFLL) == 0 || *((*(this + 104) & 0xFFFFFFFFFFFFLL) + 8) == 0.0)
  {
    v6 = (*(*this + 56))(this);
    v8 = IPC::Encoder::operator new(0x238, v7);
    *v8 = 3166;
    *(v8 + 2) = 0;
    *(v8 + 3) = 0;
    *(v8 + 1) = v6;
    *(v8 + 68) = 0;
    *(v8 + 70) = 0;
    *(v8 + 69) = 0;
    IPC::Encoder::encodeHeader(v8);
    v15 = v8;
    IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(v8, v4);
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v8, a3);
    (*(*v5 + 32))(v5, &v15, 0);
    v10 = v15;
    v15 = 0;
    if (v10)
    {
      IPC::Encoder::~Encoder(v10, v9);
      bmalloc::api::tzoneFree(v11, v12);
    }

    return WebKit::NetworkSocketChannel::finishClosingIfPossible(v5);
  }

  else
  {
    v13 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
    }

    v14 = *(this + 152);
    *(this + 136) = a2;
    if (v14 == 1)
    {
      this = *(this + 144);
      v5[18] = v13;
      if (this && atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {

        return WTF::StringImpl::destroy(this, a2);
      }
    }

    else
    {
      *(this + 144) = v13;
      *(this + 152) = 1;
    }
  }

  return this;
}

uint64_t WebKit::NetworkSocketChannel::NetworkSocketChannel(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int16 a14, int a15, unsigned __int16 a16, int a17, char a18)
{
  *(a1 + 24) = 1;
  *a1 = &unk_1F11031B0;
  *(a1 + 8) = &unk_1F1103218;
  *(a1 + 16) = 0;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a2 + 64), a2 + 56);
  v25 = *(a2 + 64);
  atomic_fetch_add(v25, 1u);
  *(a1 + 32) = v25;
  *(a1 + 40) = a6;
  if (a3)
  {
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a3 + 2, a3);
    v26 = *(a3 + 1);
    if (v26)
    {
      atomic_fetch_add(v26, 1u);
    }
  }

  else
  {
    v26 = 0;
  }

  *(a1 + 48) = v26;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  WebCore::TimerBase::TimerBase((a1 + 72));
  *(a1 + 72) = &unk_1F10EB388;
  v27 = WTF::fastMalloc(0x20);
  *v27 = &unk_1F1103970;
  v27[1] = a1;
  v27[2] = WebKit::NetworkSocketChannel::sendDelayedError;
  v27[3] = 0;
  *(a1 + 120) = v27;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = a7;
  if (a3)
  {
    (*(*a3 + 200))(&v38, a3, a7, a9, a10, a11, a12, a1, a4, a5, a13, a14, a16, a18);
    v29 = v38;
    v38 = 0;
    v30 = *(a1 + 56);
    *(a1 + 56) = v29;
    if (v30)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebSocketTask,(WTF::DestructionThread)0>::deref((v30 + 40), v28);
      v32 = v38;
      v38 = 0;
      if (v32)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebSocketTask,(WTF::DestructionThread)0>::deref((v32 + 40), v31);
      }

      v29 = *(a1 + 56);
    }

    if (v29)
    {
      v33 = (v29 + 40);
      while (1)
      {
        v34 = *v33;
        if ((*v33 & 1) == 0)
        {
          break;
        }

        v35 = *v33;
        atomic_compare_exchange_strong_explicit(v33, &v35, v34 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v35 == v34)
        {
          goto LABEL_14;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v33);
LABEL_14:
      (*(*a3 + 216))(a3, a7, v29);
      [*(v29 + 56) resume];
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebSocketTask,(WTF::DestructionThread)0>::deref((v29 + 40), v36);
    }
  }

  return a1;
}

IPC::Encoder *WebKit::NetworkSocketChannel::sendDelayedError(WebKit::NetworkSocketChannel *this)
{
  v2 = (*(*this + 56))(this);
  v4 = IPC::Encoder::operator new(0x238, v3);
  *v4 = 3170;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v2;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v16 = v4;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v4, this + 16);
  (*(*this + 32))(this, &v16, 0);
  result = v16;
  v16 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    result = bmalloc::api::tzoneFree(v12, v13);
  }

  if (*(this + 152) == 1)
  {
    v7 = (*(*this + 56))(this);
    v9 = IPC::Encoder::operator new(0x238, v8);
    *v9 = 3166;
    *(v9 + 2) = 0;
    *(v9 + 3) = 0;
    *(v9 + 1) = v7;
    *(v9 + 68) = 0;
    *(v9 + 70) = 0;
    *(v9 + 69) = 0;
    IPC::Encoder::encodeHeader(v9);
    v16 = v9;
    IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(v9, *(this + 68));
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v9, this + 18);
    (*(*this + 32))(this, &v16, 0);
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      IPC::Encoder::~Encoder(v11, v10);
      bmalloc::api::tzoneFree(v14, v15);
    }

    return WebKit::NetworkSocketChannel::finishClosingIfPossible(this);
  }

  return result;
}

void WebKit::NetworkSocketChannel::~NetworkSocketChannel(WebKit::NetworkSocketChannel *this, WTF::StringImpl *a2)
{
  *this = &unk_1F11031B0;
  *(this + 1) = &unk_1F1103218;
  v3 = *(this + 7);
  if (v3)
  {
    v4 = (v3 + 40);
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
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_7:
    v7 = *(this + 6);
    if (v7)
    {
      v8 = *(v7 + 8);
      if (v8)
      {
        v9 = *(v3 + 112);
        if (v9)
        {
          v10 = *(v9 + 8);
          if (v10)
          {
            v19 = (v10 + 8);
            ++*(v10 + 8);
            ++v8[4];
            (*(*v8 + 208))(v8);
            v21 = v8[4];
            if (!v21)
            {
              goto LABEL_33;
            }

            v8[4] = v21 - 1;
            WTF::RefCounted<WebKit::SessionSet>::deref(v19, v20);
          }
        }
      }
    }

    [*(v3 + 56) cancel];
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebSocketTask,(WTF::DestructionThread)0>::deref((v3 + 40), v11);
  }

  if (*(this + 152) == 1)
  {
    v12 = *(this + 18);
    *(this + 18) = 0;
    if (v12)
    {
      if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, a2);
      }
    }
  }

  v13 = *(this + 16);
  *(this + 16) = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, a2);
  }

  *(this + 9) = &unk_1F10EB388;
  v14 = *(this + 15);
  *(this + 15) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  WebCore::TimerBase::~TimerBase((this + 72));
  v16 = *(this + 7);
  *(this + 7) = 0;
  if (v16)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebSocketTask,(WTF::DestructionThread)0>::deref((v16 + 40), v15);
  }

  v17 = *(this + 6);
  *(this + 6) = 0;
  if (v17 && atomic_fetch_add(v17, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v17);
    WTF::fastFree(v17, v15);
  }

  v18 = *(this + 4);
  *(this + 4) = 0;
  if (v18 && atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v18);
    WTF::fastFree(v18, v15);
  }

  if (*(this + 6) != 1)
  {
LABEL_33:
    __break(0xC471u);
    JUMPOUT(0x19DCC9360);
  }

  *(this + 1) = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 2, v15);
}

{
  WebKit::NetworkSocketChannel::~NetworkSocketChannel(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void non-virtual thunk toWebKit::NetworkSocketChannel::~NetworkSocketChannel(WebKit::NetworkSocketChannel *this, WTF::StringImpl *a2)
{
  WebKit::NetworkSocketChannel::~NetworkSocketChannel((this - 8), a2);
}

{
  WebKit::NetworkSocketChannel::~NetworkSocketChannel((this - 8), a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void WebKit::NetworkSocketChannel::sendString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = *(a1 + 56);
  if (v7)
  {
    v8 = (v7 + 40);
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
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_7:
    WebKit::WebSocketTask::sendString(v7, a2, a3, a4);

    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebSocketTask,(WTF::DestructionThread)0>::deref((v7 + 40), v11);
  }

  else
  {

    WebKit::WebSocketTask::sendString(0, a2, a3, a4);
  }
}

void WebKit::NetworkSocketChannel::sendData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = *(a1 + 56);
  if (v7)
  {
    v8 = (v7 + 40);
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
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_7:
    WebKit::WebSocketTask::sendData(v7, a2, a3, a4);

    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebSocketTask,(WTF::DestructionThread)0>::deref((v7 + 40), v11);
  }

  else
  {

    WebKit::WebSocketTask::sendData(0, a2, a3, a4);
  }
}

uint64_t WebKit::NetworkSocketChannel::finishClosingIfPossible(uint64_t this)
{
  if (*(this + 64))
  {
    *(this + 64) = 2;
    v1 = *(*(this + 32) + 8);
    if (v1)
    {
      ++*(v1 - 36);
      this = WebKit::NetworkConnectionToWebProcess::removeSocketChannel(v1 - 56, *(this + 40));
      if (*(v1 - 36) == 1)
      {
        v2 = *(*(v1 - 56) + 8);

        return v2(v1 - 56);
      }

      else
      {
        --*(v1 - 36);
      }
    }

    else
    {
      this = 103;
      __break(0xC471u);
    }
  }

  else
  {
    *(this + 64) = 1;
  }

  return this;
}

uint64_t WebKit::NetworkSocketChannel::close(WebKit::NetworkSocketChannel *this, int a2, const WTF::String *a3)
{
  v6 = *(this + 7);
  if (v6)
  {
    v7 = (v6 + 5);
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
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v7);
LABEL_7:
    WebKit::WebSocketTask::close(v6, a2, a3);
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebSocketTask,(WTF::DestructionThread)0>::deref(v6 + 5, v10);
  }

  else
  {
    WebKit::WebSocketTask::close(0, a2, a3);
  }

  return WebKit::NetworkSocketChannel::finishClosingIfPossible(this);
}

IPC::Encoder *WebKit::NetworkSocketChannel::didConnect(WebKit::NetworkSocketChannel *this, const WTF::String *a2, const WTF::String *a3)
{
  v6 = (*(*this + 56))(this);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 3167;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v13 = v8;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v8, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v8, a3);
  (*(*this + 32))(this, &v13, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

IPC::Encoder *WebKit::NetworkSocketChannel::didReceiveText(WebKit::NetworkSocketChannel *this, const WTF::String *a2)
{
  v4 = (*(*this + 56))(this);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 3171;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v6, a2);
  (*(*this + 32))(this, &v11, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

IPC::Encoder *WebKit::NetworkSocketChannel::didReceiveBinaryData(uint64_t a1, const void *a2, size_t a3)
{
  v6 = (*(*a1 + 56))(a1);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 3168;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v13 = v8;
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v8, a2, a3);
  (*(*a1 + 32))(a1, &v13, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

uint64_t WebKit::NetworkSocketChannel::didReceiveMessageError(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *(a1 + 128);
  *(a1 + 128) = v3;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v4 = WTF::StringImpl::destroy(v4, a2);
  }

  WTF::cryptographicallyRandomUnitInterval(v4);

  return WebCore::TimerBase::start();
}

IPC::Encoder *WebKit::NetworkSocketChannel::didSendHandshakeRequest(uint64_t a1, WebCore::ResourceRequest *a2)
{
  v4 = (*(*a1 + 56))(a1);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 3172;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<WebCore::ResourceRequest,void>::encode(v6, a2);
  (*(*a1 + 32))(a1, &v11, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

IPC::Encoder *WebKit::NetworkSocketChannel::didReceiveHandshakeResponse(uint64_t a1, WebCore::ResourceResponseBase *a2)
{
  WebCore::ResourceResponseBase::sanitizeHTTPHeaderFields();
  v4 = (*(*a1 + 56))(a1);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 3169;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<WebCore::ResourceResponse,void>::encode(v6, a2);
  (*(*a1 + 32))(a1, &v11, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

uint64_t WebKit::NetworkSocketChannel::messageSenderConnection(WebKit::NetworkSocketChannel *this)
{
  v1 = *(*(this + 4) + 8);
  if (v1)
  {
    return *(v1 + 24);
  }

  result = 92;
  __break(0xC471u);
  return result;
}

WTF::StringImpl *WebKit::PingLoad::timeoutTimerFired(WebKit::PingLoad *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = this;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - PingLoad::timeoutTimerFired", buf, 0xCu);
  }

  v3 = *(this + 521);
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v4 = *buf;
  v14 = 0;
  v5 = *(v3 + 160);
  if (v5)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  v15 = v5;
  v6 = *(v3 + 184);
  v16 = *(v3 + 168);
  v17 = v6;
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  v18 = v4;
  v19 = 0;
  v20 = 4;
  v21 = 0;
  v22 = 1;
  WebCore::ResourceResponseBase::ResourceResponseBase(buf);
  cf = 0;
  v26 = 0;
  v24 = v24 & 0xF1 | 4;
  WebKit::PingLoad::didFinish(this, &v14, buf);
  v8 = cf;
  cf = 0;
  if (v8)
  {
    CFRelease(v8);
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(buf, v7);
  v10 = v21;
  v21 = 0;
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = v18;
  v18 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v9);
  }

  v12 = v15;
  v15 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v9);
  }

  result = v14;
  v14 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v9);
    if (!v4)
    {
      return result;
    }
  }

  else if (!v4)
  {
    return result;
  }

  if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(v4, v9);
  }

  return result;
}

uint64_t WebKit::PingLoad::PingLoad(uint64_t a1, WebKit::NetworkConnectionToWebProcess *a2, __int128 *a3, uint64_t *a4)
{
  *(a1 + 16) = 1;
  *(a1 + 8) = 0;
  v41 = (a1 + 8);
  *a1 = &unk_1F1103260;
  *(a1 + 24) = 0;
  *(a1 + 32) = *(a2 + 12);
  WebKit::NetworkResourceLoadParameters::NetworkResourceLoadParameters(a1 + 48, a3);
  v7 = *a4;
  *a4 = 0;
  *(a1 + 4096) = v7;
  *(a1 + 4104) = 0;
  WebCore::TimerBase::TimerBase((a1 + 4112));
  *(a1 + 4112) = &unk_1F10EB388;
  v8 = WTF::fastMalloc(0x20);
  *v8 = &unk_1F1103998;
  v8[1] = a1;
  v8[2] = WebKit::PingLoad::timeoutTimerFired;
  v8[3] = 0;
  *(a1 + 4160) = v8;
  v9 = *(a2 + 11);
  v10 = *(a2 + 37);
  LODWORD(v52) = *(a1 + 3296);
  *(&v52 + 3) = *(a1 + 3299);
  v11 = *(a1 + 3304);
  if (v11)
  {
    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
  }

  v53 = v11;
  v12 = *(a1 + 3328);
  v54 = *(a1 + 3312);
  v55 = v12;
  v13 = *(a1 + 32);
  v14 = *(a1 + 48);
  v15 = WebCore::ResourceRequestBase::url((a1 + 72));
  v16 = *v15;
  if (*v15)
  {
    atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
  }

  v49 = v16;
  v17 = *(v15 + 24);
  v50 = *(v15 + 8);
  v51 = v17;
  v18 = *(a1 + 3592);
  if (v18)
  {
    atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
  }

  v46 = v18;
  v47 = *(a1 + 3600);
  v48 = *(a1 + 3616);
  v19 = *(a1 + 280);
  if (v19)
  {
    atomic_fetch_add(v19, 1u);
  }

  v45 = v19;
  v20 = *(a1 + 272);
  if (v20)
  {
    atomic_fetch_add(v20, 1u);
  }

  v44 = v20;
  if (*(a1 + 3556))
  {
    v21 = **(a1 + 3544);
    atomic_fetch_add(v21, 1u);
  }

  else
  {
    v21 = 0;
  }

  v43 = v21;
  v22 = *(a1 + 3537);
  WebCore::ResourceRequestBase::httpReferrer(&v42, (a1 + 72));
  WebKit::NetworkLoadChecker::create((a1 + 4168), v9, v10, &v52, v13, v14, 1, (a1 + 3504), &v49, &v46, &v45, &v44, &v43, v22, &v42, *(a1 + 3236), v40, *(a1 + 3238));
  v24 = v42;
  v42 = 0;
  if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v24, v23);
  }

  if (v43)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v43, v23);
  }

  if (v44)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v44, v23);
  }

  if (v45)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v45, v23);
  }

  v25 = v46;
  v46 = 0;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v23);
  }

  v26 = v49;
  v49 = 0;
  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, v23);
  }

  v27 = v53;
  if (v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v27, v23);
  }

  WebKit::NetworkConnectionToWebProcess::resolveBlobReferences(a2, (a1 + 48), a1 + 4176);
  v28 = *(a1 + 4188);
  if (v28)
  {
    v29 = *(a1 + 4176);
    v30 = 8 * v28;
    do
    {
      if (*v29)
      {
        (*(**v29 + 16))(*v29);
      }

      ++v29;
      v30 -= 8;
    }

    while (v30);
  }

  v31 = *(a2 + 11);
  atomic_fetch_add(v31 + 36, 1u);
  v32 = *(a1 + 4168);
  *(v32 + 528) = 1;
  if (*(a1 + 3368) == 1)
  {
    std::optional<WebCore::ContentSecurityPolicyResponseHeaders>::operator=[abi:sn200100]<WebCore::ContentSecurityPolicyResponseHeaders,void>(v32 + 264, a1 + 3344);
    v32 = *(a1 + 4168);
  }

  WebKit::NetworkLoadChecker::setParentCrossOriginEmbedderPolicy(v32, a1 + 3456);
  WebKit::NetworkLoadChecker::setCrossOriginEmbedderPolicy(*(a1 + 4168), a1 + 3480);
  v33 = *(a1 + 4168);
  v34 = *(a1 + 4072);
  v35 = *(a1 + 4080);
  WTF::URL::operator=(v33 + 344, a1 + 4032);
  WTF::URL::operator=(v33 + 384, a1 + 3416);
  *(v33 + 424) = v34;
  *(v33 + 432) = v35;
  WebCore::TimerBase::start();
  v36 = *(a1 + 4168);
  WebCore::ResourceRequest::ResourceRequest(&v52, (a1 + 72));
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v41, a1);
  v37 = *(a1 + 8);
  atomic_fetch_add(v37, 1u);
  atomic_fetch_add(v31 + 36, 1u);
  v38 = WTF::fastMalloc(0x18);
  *v38 = &unk_1F11039C0;
  *(v38 + 1) = v37;
  *(v38 + 2) = v31;
  v49 = v38;
  WebKit::NetworkLoadChecker::check(v36, &v52, 0, &v49);
  if (v49)
  {
    (*(*v49 + 8))(v49);
  }

  WebCore::ResourceRequest::~ResourceRequest(&v52);
  if (atomic_fetch_add(v31 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v31 + 36);
    (*(*v31 + 24))(v31);
  }

  return a1;
}