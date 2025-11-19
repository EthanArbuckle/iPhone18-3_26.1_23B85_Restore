void non-virtual thunk toWebKit::NetworkResourceLoader::~NetworkResourceLoader(WebKit::NetworkResourceLoader *this)
{
  WebKit::NetworkResourceLoader::~NetworkResourceLoader((this - 24));
}

{
  WebKit::NetworkResourceLoader::~NetworkResourceLoader((this - 32));
}

{
  WebKit::NetworkResourceLoader::~NetworkResourceLoader((this - 40));
}

{
  WebKit::NetworkResourceLoader::~NetworkResourceLoader((this - 56));
}

{
  WebKit::NetworkResourceLoader::~NetworkResourceLoader((this - 72));
}

{
  WebKit::NetworkResourceLoader::operator delete((this - 24));
}

{
  WebKit::NetworkResourceLoader::operator delete((this - 32));
}

{
  WebKit::NetworkResourceLoader::operator delete((this - 40));
}

{
  WebKit::NetworkResourceLoader::operator delete((this - 56));
}

{
  WebKit::NetworkResourceLoader::operator delete((this - 72));
}

void WebKit::NetworkResourceLoader::operator delete(WebKit::NetworkResourceLoader *a1)
{
  WebKit::NetworkResourceLoader::~NetworkResourceLoader(a1);
  if (atomic_load(v1 + 4))
  {

    bzero(v1, 0x14C0uLL);
  }

  else
  {

    WTF::fastFree(v1, v2);
  }
}

BOOL WebKit::NetworkResourceLoader::canUseCache(WebKit::NetworkResourceLoader *this, const WebCore::ResourceRequest *a2)
{
  if (!*(this + 569))
  {
    return 0;
  }

  if ((*(WebCore::ResourceRequestBase::url(a2) + 8) & 2) != 0)
  {
    return WebCore::ResourceRequestBase::cachePolicy((this + 104)) != 4;
  }

  return 0;
}

void WebKit::NetworkResourceLoader::startRequest(WebKit::NetworkResourceLoader *this, const WebCore::ResourceRequest *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = *(this + 575);
  if (v4)
  {
    ++*(v4 + 8);
  }

  v5 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(this + 410);
    if (!v6)
    {
      __break(0xC471u);
LABEL_35:
      JUMPOUT(0x19DCB06E8);
    }

    v8 = *(this + 11);
    v7 = *(this + 12);
    v9 = *(this + 10);
    v10 = *(this + 251) == 1;
    v11 = *(this + 3328);
    v12 = *(this + 555) != 0;
    *buf = 134220032;
    *&buf[4] = this;
    v26 = 2048;
    *cf = v9;
    *&cf[8] = 2048;
    v28 = v8;
    v29 = 2048;
    v30 = v7;
    v31 = 2048;
    v32 = v6;
    v33 = 1024;
    v34 = v10;
    v35 = 1024;
    v36 = v11;
    v37 = 1024;
    v38 = v12;
    v39 = 1024;
    v40 = v4 != 0;
    _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::startRequest: hasNetworkLoadChecker=%d", buf, 0x4Cu);
  }

  v13 = *(this + 518);
  ++*(v13 + 20);
  v14 = *(this + 410);
  if (!v14)
  {
    __break(0xC471u);
    goto LABEL_35;
  }

  v15 = *(this + 251) == 1 && *(this + 897) == 0;
  WebKit::NetworkConnectionToWebProcess::startTrackingResourceLoad(v13, *(this + 11), v14, v15, buf);
  v16 = (this + 4640);
  if (*(this + 4664) == v28)
  {
    if (*(this + 4664))
    {
      WebKit::NetworkActivityTracker::operator=(v16, buf);
    }
  }

  else if (*(this + 4664))
  {
    v22 = *(this + 582);
    *(this + 582) = 0;
    if (v22)
    {
    }

    *(this + 4664) = 0;
  }

  else
  {
    *v16 = *buf;
    *(this + 4648) = buf[8];
    v20 = *&cf[2];
    *(this + 582) = *&cf[2];
    if (v20)
    {
      CFRetain(v20);
    }

    *(this + 4664) = 1;
  }

  if (v28 == 1)
  {
    v21 = *&cf[2];
    *&cf[2] = 0;
    if (v21)
    {
    }
  }

  if (*(v13 + 20) == 1)
  {
    (*(*v13 + 8))(v13);
  }

  else
  {
    --*(v13 + 20);
  }

  *(this + 4464) = 1;
  if (v4)
  {
    WebCore::ResourceRequest::ResourceRequest(buf, a2);
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 2, this);
    v17 = *(this + 1);
    atomic_fetch_add(v17, 1u);
    v18 = WTF::fastMalloc(0x10);
    *v18 = &unk_1F11033D8;
    *(v18 + 1) = v17;
    v24 = v18;
    WebKit::NetworkLoadChecker::check(v4, buf, this + 32, &v24);
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }

    WebCore::ResourceRequest::~ResourceRequest(buf);
    WTF::RefCounted<WebKit::NetworkLoadChecker>::deref((v4 + 8), v19);
  }

  else if (WebKit::NetworkResourceLoader::canUseCache(this, a2))
  {
    WebKit::NetworkResourceLoader::retrieveCacheEntry(this, (this + 104));
  }

  else
  {
    WebCore::ResourceRequest::ResourceRequest(buf, a2);
    WebKit::NetworkResourceLoader::startNetworkLoad(this, buf, 1, v23);
    WebCore::ResourceRequest::~ResourceRequest(buf);
  }
}

unsigned int *WebKit::NetworkResourceLoader::retrieveCacheEntry(WebKit::NetworkResourceLoader *this, const WebCore::ResourceRequest *a2)
{
  v113 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 410);
    if (!v5)
    {
      __break(0xC471u);
      goto LABEL_60;
    }

    v7 = *(this + 10);
    v6 = *(this + 11);
    v8 = *(this + 12);
    v9 = *(this + 555) != 0;
    v10 = *(this + 3328);
    v11 = *(this + 251) == 1;
    v12 = *(this + 251) == 1 && *(this + 897) == 0;
    *buf = 134220032;
    *&buf[4] = this;
    v85 = 2048;
    v86 = v7;
    v87 = 2048;
    v88 = v6;
    v89 = 2048;
    v90 = v8;
    v91 = 2048;
    v92 = v5;
    v93 = 1024;
    v94 = v11;
    v95 = 1024;
    v96 = v10;
    v97 = 1024;
    v98 = v9;
    v99 = 1024;
    v100 = v12;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::retrieveCacheEntry: isMainFrameLoad=%d", buf, 0x4Cu);
  }

  ++*(this + 5);
  v13 = *(this + 569);
  if (v13)
  {
    ++*(v13 + 2);
  }

  if (*(this + 251) != 1 || *(this + 897))
  {
    goto LABEL_9;
  }

  v40 = *(this + 518);
  ++*(v40 + 20);
  v41 = *(v40 + 88);
  *buf = *(v40 + 96);
  v42 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v41 + 240), buf);
  v43 = v42;
  if (v42)
  {
    ++*(v42 + 16);
  }

  if (*(v40 + 20) == 1)
  {
    (*(*v40 + 8))(v40);
  }

  else
  {
    --*(v40 + 20);
  }

  if (!v43)
  {
    goto LABEL_9;
  }

  ++*(v43 + 520);
  v44 = WebCore::ResourceRequestBase::url(a2);
  WebKit::PrefetchCache::take((v43 + 520), v44, v77);
  v45 = *(v43 + 520);
  if (!v45)
  {
    __break(0xC471u);
    JUMPOUT(0x19DCB0F8CLL);
  }

  *(v43 + 520) = v45 - 1;
  v46 = v77[0];
  if (!v77[0])
  {
    std::unique_ptr<WebKit::PrefetchCache::Entry>::~unique_ptr[abi:sn200100](v77);
    v47 = *(v43 + 16);
    if (!v47)
    {
      __break(0xC471u);
      JUMPOUT(0x19DCB0FACLL);
    }

    *(v43 + 16) = v47 - 1;
LABEL_9:
    v14 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(this + 410);
      if (!v15)
      {
        __break(0xC471u);
        JUMPOUT(0x19DCB0F6CLL);
      }

      v17 = *(this + 11);
      v16 = *(this + 12);
      v18 = *(this + 10);
      v19 = *(this + 251) == 1;
      v20 = *(this + 3328);
      v21 = *(this + 555) != 0;
      *buf = 134219776;
      *&buf[4] = this;
      v85 = 2048;
      v86 = v18;
      v87 = 2048;
      v88 = v17;
      v89 = 2048;
      v90 = v16;
      v91 = 2048;
      v92 = v15;
      v93 = 1024;
      v94 = v19;
      v95 = 1024;
      v96 = v20;
      v97 = 1024;
      v98 = v21;
      _os_log_impl(&dword_19D52D000, v14, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::retrieveCacheEntry: Checking the HTTP disk cache", buf, 0x46u);
    }

    v22 = *(this + 12);
    *v77 = *(this + 5);
    v78 = v22;
    v79 = 1;
    v23 = *(this + 3265);
    v24 = *(this + 3268);
    v25 = *(this + 1635);
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 2, this);
    v26 = *(this + 1);
    atomic_fetch_add(v26, 1u);
    *buf = v26;
    WebCore::ResourceRequest::ResourceRequest(&buf[8], a2);
    v27 = WTF::fastMalloc(0xD8);
    *v27 = &unk_1F1103428;
    v28 = *buf;
    *buf = 0;
    *(v27 + 8) = v28;
    WTF::URL::URL(v27 + 16, &buf[8]);
    WTF::URL::URL(v27 + 56, (&v92 + 4));
    *&v29 = 0;
    *(v27 + 96) = v101;
    *(v27 + 104) = v102;
    v30 = v103;
    v103 = 0;
    v102 = 0u;
    *(v27 + 120) = v30;
    v31 = v104;
    v104 = v29;
    *(v27 + 128) = v31;
    v32 = v105;
    v105 = v29;
    *(v27 + 144) = v32;
    v33 = v106;
    *(v27 + 164) = v107;
    *(v27 + 160) = v33;
    *(v27 + 168) = v108;
    v34 = *(&v108 + 1);
    v108 = 0u;
    *(v27 + 176) = v34;
    *(v27 + 184) = v109;
    v35 = v110;
    *(v27 + 200) = v111;
    *(v27 + 192) = v35;
    v36 = v112;
    v109 = 0;
    v112 = 0;
    *(v27 + 208) = v36;
    v83 = v27;
    WebKit::NetworkCache::Cache::retrieve(v13, a2, v77, v23, v24, v25, &v83);
    v37 = v83;
    v83 = 0;
    if (v37)
    {
      (*(*v37 + 8))(v37);
    }

    WebCore::ResourceRequest::~ResourceRequest(&buf[8]);
    result = *buf;
    *buf = 0;
    if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      result = WTF::fastFree(result, v38);
    }

    goto LABEL_17;
  }

  v48 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v49 = *(this + 410);
    if (v49)
    {
      v50 = *(this + 11);
      v75 = *(this + 12);
      v51 = *(this + 10);
      v76 = *(this + 3328);
      v73 = *(this + 555) != 0;
      v74 = *(this + 251) == 1;
      isNull = WebCore::ResourceRequestBase::isNull((v46 + 280));
      *buf = 134220032;
      *&buf[4] = this;
      v85 = 2048;
      v86 = v51;
      v87 = 2048;
      v88 = v50;
      v89 = 2048;
      v90 = v75;
      v91 = 2048;
      v92 = v49;
      v93 = 1024;
      v94 = v74;
      v95 = 1024;
      v96 = v76;
      v97 = 1024;
      v98 = v73;
      v99 = 1024;
      v100 = isNull ^ 1;
      _os_log_impl(&dword_19D52D000, v48, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::retrieveCacheEntry: retrieved an entry from the prefetch cache (isRedirect=%d)", buf, 0x4Cu);
      v46 = v77[0];
      goto LABEL_36;
    }

    __break(0xC471u);
LABEL_60:
    JUMPOUT(0x19DCB0F4CLL);
  }

LABEL_36:
  if (WebCore::ResourceRequestBase::isNull((v46 + 280)))
  {
    v53 = v77[0];
    v54 = *(v77[0] + 34);
    *(v77[0] + 34) = 0;
    v55 = *(v53 + 264);
    atomic_fetch_add((v54 + 8), 1u);
    *buf = v54;
    WebKit::NetworkCache::Cache::makeEntry(v13, a2, v53, v55, buf, &v83);
    v56 = *buf;
    *buf = 0;
    if (v56 && atomic_fetch_add(v56 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v56 + 2);
      (*(*v56 + 8))(v56);
    }

    WebCore::ResourceRequest::ResourceRequest(buf, a2);
    WebKit::NetworkResourceLoader::retrieveCacheEntryInternal(this, &v83, buf);
    WebCore::ResourceRequest::~ResourceRequest(buf);
    v57 = *(v77[0] + 264);
    *buf = v54;
    v80 = 0;
    WebKit::NetworkCache::Cache::store(a2, v77[0], v13, v57, buf, &v80, &v81);
    v59 = v81;
    v81 = 0;
    if (v59)
    {
      WebKit::NetworkCache::Entry::~Entry(v59, v58);
      bmalloc::api::tzoneFree(v69, v70);
    }

    v60 = v80;
    v80 = 0;
    if (v60)
    {
      (*(*v60 + 8))(v60);
    }

    v61 = *buf;
    *buf = 0;
    if (v61 && atomic_fetch_add(v61 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v61 + 2);
      (*(*v61 + 8))(v61);
    }
  }

  else
  {
    WebKit::NetworkCache::Cache::makeRedirectEntry(v13, a2, v77[0], (v77[0] + 280), &v83);
    WebCore::ResourceRequest::ResourceRequest(buf, a2);
    WebKit::NetworkResourceLoader::retrieveCacheEntryInternal(this, &v83, buf);
    WebCore::ResourceRequest::~ResourceRequest(buf);
    v63 = WebKit::NetworkResourceLoader::validateCacheEntryForMaxAgeCapValidation(this, a2, v77[0], v62);
    WebKit::NetworkCache::Cache::storeRedirect(a2, v77[0], v13, (v77[0] + 280), v63, v64, &v82);
    if (v82)
    {
      WebKit::NetworkCache::Entry::~Entry(v82, v58);
      bmalloc::api::tzoneFree(v71, v72);
    }
  }

  v65 = v83;
  v83 = 0;
  if (v65)
  {
    WebKit::NetworkCache::Entry::~Entry(v65, v58);
    bmalloc::api::tzoneFree(v67, v68);
  }

  result = std::unique_ptr<WebKit::PrefetchCache::Entry>::~unique_ptr[abi:sn200100](v77);
  v66 = *(v43 + 16);
  if (!v66)
  {
    __break(0xC471u);
    JUMPOUT(0x19DCB0FCCLL);
  }

  *(v43 + 16) = v66 - 1;
LABEL_17:
  if (v13)
  {
    result = WTF::RefCounted<WebKit::NetworkCache::Cache>::deref(v13 + 2, v38);
  }

  if (*(this + 5) == 1)
  {
    return (*(*this + 24))(this);
  }

  --*(this + 5);
  return result;
}

uint64_t WebKit::NetworkResourceLoader::startNetworkLoad(WebKit::NetworkResourceLoader *this, uint64_t a2, int a3, __n128 a4)
{
  v137 = *MEMORY[0x1E69E9840];
  v7 = this + 3265;
  if (a3)
  {
    WebKit::NetworkResourceLoader::consumeSandboxExtensions(this, a2, a4);
    if (*(this + 555) || *(this + 415) > 0.0)
    {
      WebCore::SharedBufferBuilder::empty((this + 4424));
    }

    if (WebKit::NetworkResourceLoader::canUseCache(this, a2))
    {
      WebCore::SharedBufferBuilder::empty((this + 4560));
    }
  }

  WebKit::NetworkResourceLoadParameters::networkLoadParameters((this + 80), &v119);
  v8 = (this + 4640);
  if (v135 == v7[1399])
  {
    if (v135)
    {
      WebKit::NetworkActivityTracker::operator=(&v132, v8);
    }
  }

  else if (v135)
  {
    v80 = v134;
    v134 = 0;
    if (v80)
    {
    }

    v135 = 0;
  }

  else
  {
    v132 = *v8;
    v133 = *(this + 4648);
    v56 = *(this + 582);
    v134 = v56;
    if (v56)
    {
      CFRetain(v56);
    }

    v135 = 1;
  }

  if (v129 == 1)
  {
    v9 = *(this + 575);
    if (v9)
    {
      v129 = *(v9 + 64);
    }
  }

  v10 = *(this + 518);
  ++*(v10 + 20);
  v11 = *(v10 + 88);
  *buf = *(v10 + 96);
  v12 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v11 + 240), buf);
  v13 = v12;
  if (v12)
  {
    ++*(v12 + 16);
  }

  if (*(v10 + 20) == 1)
  {
    (*(*v10 + 8))(v10);
  }

  else
  {
    --*(v10 + 20);
  }

  if (v13)
  {
    if (*(a2 + 148) < 0)
    {
      v68 = *(v13 + 1040);
      if (v68 == 0.0)
      {
        v68 = 3.0;
      }

      WebCore::ResourceRequestBase::setTimeoutInterval(a2, v68);
    }

    v14 = qword_1ED6416F0;
    v97 = v13;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      v94 = a3;
      v95 = v7;
      v15 = *(this + 410);
      if (!v15)
      {
        __break(0xC471u);
        JUMPOUT(0x19DCB1AECLL);
      }

      v17 = *(this + 11);
      v16 = *(this + 12);
      v18 = *(this + 10);
      v19 = *(this + 251) == 1;
      v20 = *(this + 3328);
      v21 = *(this + 555) != 0;
      WebCore::ResourceRequestBase::timeoutInterval(a2);
      *buf = 134220288;
      *&buf[4] = this;
      v104 = 2048;
      *v105 = v18;
      *&v105[8] = 2048;
      v106 = v17;
      v107 = 2048;
      v108 = v16;
      v109 = 2048;
      v110 = v15;
      v111 = 1024;
      v112 = v19;
      v113 = 1024;
      v114 = v20;
      v115 = 1024;
      v116 = v21;
      v117 = 1024;
      LODWORD(v118[0]) = v94;
      WORD2(v118[0]) = 2048;
      *(v118 + 6) = v22;
      _os_log_impl(&dword_19D52D000, v14, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::startNetworkLoad: (isFirstLoad=%d, timeout=%f)", buf, 0x56u);
      v7 = v95;
      v13 = v97;
    }

    WebCore::ResourceRequestBase::url(a2);
    if (WTF::URL::protocolIs())
    {
      WebCore::ResourceRequestBase::url((this + 104));
      v69 = v120;
      if (v120)
      {
        mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(buf, v120 + 8);
        v69 = 1;
      }

      else
      {
        buf[0] = 0;
      }

      LOBYTE(v107) = v69;
      WebCore::BlobRegistryImpl::filesInBlob();
      WTF::Vector<WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(v131, v99);
      WTF::Vector<WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v99, v70);
      std::optional<WebCore::SecurityOriginData>::~optional(buf);
    }

    if ((*(this + 3592) & 1) == 0 && v7[855] != 1)
    {
LABEL_25:
      if (*(v13 + 726) == 1)
      {
        v71 = *(this + 518);
        ++*(v71 + 20);
        WebKit::AuxiliaryProcess::protectedParentProcessConnection(*(v71 + 88), v99);
        v72 = v99[0];
        v101 = *(*(this + 518) + 96);
        v73 = *(a2 + 148);
        v74 = WebCore::ResourceRequestBase::url(a2);
        *buf = &v101;
        buf[8] = (v73 & 0x40) != 0;
        *&v105[2] = v74;
        IPC::Connection::send<Messages::NetworkProcessProxy::DidAllowPrivateTokenUsageByThirdPartyForTesting>(v72, buf);
        v75 = v99[0];
        v99[0] = 0;
        if (v75)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v75);
        }

        if (*(v71 + 20) == 1)
        {
          (*(*v71 + 8))(v71);
        }

        else
        {
          --*(v71 + 20);
        }
      }

      WebCore::ResourceRequestBase::RequestData::operator=(v122, a2);
      v24 = *(a2 + 152);
      *(a2 + 152) = 0;
      v25 = v123;
      v123 = v24;
      if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v23);
      }

      v26 = *(a2 + 160);
      *(a2 + 160) = 0;
      v27 = v124;
      v124 = v26;
      if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v23);
      }

      v28 = *(a2 + 168);
      *(a2 + 168) = 0;
      v29 = v125;
      v125 = v28;
      if (v29)
      {
        WTF::RefCounted<WebCore::FormData>::deref(v29);
      }

      v126 = *(a2 + 176);
      v127 = *(a2 + 184);
      v30 = *(a2 + 192);
      *(a2 + 192) = 0;
      v31 = cf;
      cf = v30;
      if (v31)
      {
        CFRelease(v31);
      }

      v136 = *v7;
      v32 = WebKit::NetworkLoad::operator new(0xDD0, v23);
      v33 = WebKit::NetworkLoad::NetworkLoad(v32, this, &v119, v13);
      v35 = *(this + 519);
      *(this + 519) = v33;
      if (v35)
      {
        WTF::RefCounted<WebKit::NetworkLoad>::deref((v35 + 16), v34);
      }

      WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 2, this);
      v37 = *(this + 1);
      atomic_fetch_add(v37, 1u);
      v38 = *(this + 519);
      if (v38)
      {
        ++*(v38 + 16);
      }

      if (*(this + 555))
      {
        WebKit::NetworkLoad::start(v38);
      }

      else
      {
        WebKit::NetworkLoad::startWithScheduling(v38, v36);
      }

      if (v37 && *(v37 + 8))
      {
        if (!v38)
        {
          goto LABEL_54;
        }

        v40 = qword_1ED6416F0;
        if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
        {
          v41 = *(this + 410);
          if (!v41)
          {
            __break(0xC471u);
            JUMPOUT(0x19DCB1B0CLL);
          }

          v42 = *(this + 11);
          v43 = *(this + 12);
          v44 = *(this + 10);
          v45 = *(this + 251) == 1;
          v96 = *(this + 3328);
          v46 = *(this + 555) != 0;
          v47 = *(v38 + 3312);
          if (v47)
          {
            (*(*v47 + 64))(&v101);
          }

          else
          {
            v79 = *MEMORY[0x1E696EBA8];
            if (*MEMORY[0x1E696EBA8])
            {
              atomic_fetch_add_explicit(v79, 2u, memory_order_relaxed);
            }

            v101 = v79;
          }

          WTF::String::utf8();
          if (v99[0])
          {
            v48 = v99[0] + 16;
          }

          else
          {
            v48 = 0;
          }

          *buf = 134220034;
          *&buf[4] = this;
          v104 = 2048;
          *v105 = v44;
          *&v105[8] = 2048;
          v106 = v42;
          v107 = 2048;
          v108 = v43;
          v109 = 2048;
          v110 = v41;
          v111 = 1024;
          v112 = v45;
          v113 = 1024;
          v114 = v96;
          v115 = 1024;
          v116 = v46;
          v117 = 2082;
          v118[0] = v48;
          _os_log_impl(&dword_19D52D000, v40, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::startNetworkLoad: Going to the network (description=%{public}s)", buf, 0x50u);
          v49 = v99[0];
          v99[0] = 0;
          v13 = v97;
          if (v49)
          {
            if (*v49 == 1)
            {
              WTF::fastFree(v49, v39);
            }

            else
            {
              --*v49;
            }
          }

          v50 = v101;
          v101 = 0;
          if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v50, v39);
          }
        }
      }

      else if (!v38)
      {
LABEL_53:
        if (!v37)
        {
LABEL_56:
          v51 = *(v13 + 16);
          if (v51)
          {
            *(v13 + 16) = v51 - 1;
            goto LABEL_58;
          }

          __break(0xC471u);
LABEL_134:
          JUMPOUT(0x19DCB1ACCLL);
        }

LABEL_54:
        if (atomic_fetch_add(v37, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v37);
          WTF::fastFree(v37, v39);
        }

        goto LABEL_56;
      }

      WTF::RefCounted<WebKit::NetworkLoad>::deref((v38 + 16), v39);
      goto LABEL_53;
    }

    LOBYTE(v101) = 0;
    v102 = 0;
    WebCore::ResourceRequestBase::httpBody(buf, a2);
    if (*buf)
    {
      v76 = WebCore::FormData::lengthInBytes(*buf);
      v77 = *buf;
      if (v76 > 0x100000)
      {
        goto LABEL_104;
      }

      *buf = 0;
      if (v102 == 1)
      {
        v78 = v101;
        v101 = v77;
        if (v78)
        {
          WTF::RefCounted<WebCore::FormData>::deref(v78);
          v77 = *buf;
LABEL_104:
          *buf = 0;
          if (v77)
          {
            WTF::RefCounted<WebCore::FormData>::deref(v77);
          }
        }
      }

      else
      {
        v101 = v77;
        v102 = 1;
      }
    }

    v81 = *(this + 518);
    ++*(v81 + 20);
    WebKit::AuxiliaryProcess::protectedParentProcessConnection(*(v81 + 88), &v100);
    v82 = v100;
    v98 = *(this + 10);
    WebKit::NetworkResourceLoader::resourceLoadInfo(buf, this);
    v99[0] = &v98;
    v99[1] = buf;
    v99[2] = a2;
    v99[3] = &v101;
    IPC::Connection::send<Messages::NetworkProcessProxy::ResourceLoadDidSendRequest>(v82, v99);
    WebKit::ResourceLoadInfo::~ResourceLoadInfo(buf, v83);
    v84 = v100;
    v100 = 0;
    if (v84)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v84);
    }

    if (*(v81 + 20) == 1)
    {
      (*(*v81 + 8))(v81);
    }

    else
    {
      --*(v81 + 20);
    }

    if (v102 == 1)
    {
      v85 = v101;
      v101 = 0;
      if (v85)
      {
        WTF::RefCounted<WebCore::FormData>::deref(v85);
      }
    }

    goto LABEL_25;
  }

  WTFLogAlways();
  v58 = qword_1ED6416F0;
  v59 = os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_ERROR);
  if (v59)
  {
    v86 = *(this + 410);
    if (!v86)
    {
      __break(0xC471u);
      goto LABEL_134;
    }

    v88 = *(this + 11);
    v87 = *(this + 12);
    v89 = *(this + 10);
    v90 = *(this + 251) == 1;
    v91 = *(this + 3328);
    v92 = *(this + 555) != 0;
    v93 = *(*(this + 518) + 96);
    *buf = 134220032;
    *&buf[4] = this;
    v104 = 2048;
    *v105 = v89;
    *&v105[8] = 2048;
    v106 = v88;
    v107 = 2048;
    v108 = v87;
    v109 = 2048;
    v110 = v86;
    v111 = 1024;
    v112 = v90;
    v113 = 1024;
    v114 = v91;
    v115 = 1024;
    v116 = v92;
    v117 = 2048;
    v118[0] = v93;
    _os_log_error_impl(&dword_19D52D000, v58, OS_LOG_TYPE_ERROR, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::startNetworkLoad: Attempted to create a NetworkLoad for a session that does not exist (sessionID=%llu)", buf, 0x50u);
  }

  v60 = *(this + 518);
  ++*(v60 + 20);
  v61 = *(v60 + 88);
  v62 = *(this + 10);
  v63 = WebCore::DiagnosticLoggingKeys::internalErrorKey(buf, v59);
  WebCore::DiagnosticLoggingKeys::invalidSessionIDKey(v99, v63);
  WebKit::NetworkProcess::logDiagnosticMessage(v61, v62, buf, v99, 0);
  v65 = v99[0];
  v99[0] = 0;
  if (v65 && atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v65, v64);
  }

  v66 = *buf;
  *buf = 0;
  if (v66 && atomic_fetch_add_explicit(v66, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v66, v64);
  }

  if (*(v60 + 20) == 1)
  {
    (*(*v60 + 8))(v60);
  }

  else
  {
    --*(v60 + 20);
  }

  WebCore::ResourceRequestBase::url(a2);
  WebCore::internalError();
  WebKit::NetworkResourceLoader::didFailLoading(this, buf);
  WebCore::ResourceError::~ResourceError(buf, v67);
LABEL_58:
  if (v135 == 1)
  {
    v57 = v134;
    v134 = 0;
    if (v57)
    {
    }
  }

  WTF::Vector<WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v131, v39);
  if (v130[2912] == 1)
  {
    WebKit::NavigationActionData::~NavigationActionData(v130, v52);
  }

  WebCore::ResourceRequest::~ResourceRequest(v122);
  v54 = v121;
  v121 = 0;
  if (v54)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v54, v53);
  }

  result = v120;
  v120 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(result, v53);
  }

  return result;
}

void WebKit::NetworkResourceLoader::retrieveCacheEntryInternal(uint64_t a1, WebKit::NetworkCache::Entry **a2, WebCore::ResourceRequestBase *a3)
{
  v92 = *MEMORY[0x1E69E9840];
  v6 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 3280);
    if (!v7)
    {
      __break(0xC471u);
      goto LABEL_56;
    }

    v9 = *(a1 + 88);
    v8 = *(a1 + 96);
    v10 = *(a1 + 80);
    v11 = *(a1 + 251) == 1;
    v12 = *(a1 + 3328);
    v13 = *(a1 + 4440) != 0;
    *buf = 134219776;
    v77 = a1;
    v78 = 2048;
    v79 = v10;
    v80 = 2048;
    v81 = v9;
    v82 = 2048;
    v83 = v8;
    v84 = 2048;
    v85 = v7;
    v86 = 1024;
    v87 = v11;
    v88 = 1024;
    v89 = v12;
    v90 = 1024;
    v91 = v13;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::retrieveCacheEntryInternal:", buf, 0x46u);
  }

  if (WebKit::NetworkCache::Entry::hasReachedPrevalentResourceAgeCap(*a2))
  {
    v56 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      v57 = *(a1 + 3280);
      if (!v57)
      {
        __break(0xC471u);
        JUMPOUT(0x19DCB22D0);
      }

      v59 = *(a1 + 88);
      v58 = *(a1 + 96);
      v60 = *(a1 + 80);
      v61 = *(a1 + 251) == 1;
      v62 = *(a1 + 3328);
      v63 = *(a1 + 4440) != 0;
      *buf = 134219776;
      v77 = a1;
      v78 = 2048;
      v79 = v60;
      v80 = 2048;
      v81 = v59;
      v82 = 2048;
      v83 = v58;
      v84 = 2048;
      v85 = v57;
      v86 = 1024;
      v87 = v61;
      v88 = 1024;
      v89 = v62;
      v90 = 1024;
      v91 = v63;
      _os_log_impl(&dword_19D52D000, v56, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::retrieveCacheEntryInternal: Revalidating cached entry because it reached the prevalent resource age cap", buf, 0x46u);
    }

    v64 = *a2;
    *a2 = 0;
    std::unique_ptr<WebKit::NetworkCache::Entry>::reset[abi:sn200100]((a1 + 4576), v64);
    WebCore::ResourceRequest::ResourceRequest(buf, (a1 + 104));
    goto LABEL_16;
  }

  v14 = *a2;
  if (*(*a2 + 560) != 1)
  {
    if (*(a1 + 329) == 1 && (*(v14 + 208) & 1) == 0)
    {
      v47 = qword_1ED6416F0;
      if (!os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
      {
LABEL_39:
        WebKit::NetworkResourceLoader::startNetworkLoad(a1, a3, 1, v48);
        return;
      }

      v49 = *(a1 + 3280);
      if (v49)
      {
        v51 = *(a1 + 88);
        v50 = *(a1 + 96);
        v52 = *(a1 + 80);
        v53 = *(a1 + 251) == 1;
        v54 = *(a1 + 3328);
        v55 = *(a1 + 4440) != 0;
        *buf = 134219776;
        v77 = a1;
        v78 = 2048;
        v79 = v52;
        v80 = 2048;
        v81 = v51;
        v82 = 2048;
        v83 = v50;
        v84 = 2048;
        v85 = v49;
        v86 = 1024;
        v87 = v53;
        v88 = 1024;
        v89 = v54;
        v90 = 1024;
        v91 = v55;
        _os_log_impl(&dword_19D52D000, v47, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::retrieveCacheEntryInternal: Cached entry is missing certificate information so we are not using it", buf, 0x46u);
        goto LABEL_39;
      }

      __break(0xC471u);
LABEL_56:
      JUMPOUT(0x19DCB2248);
    }

    if (WebCore::ResourceResponseBase::source((v14 + 80)) != 3 && WebCore::ResourceRequestBase::cachePolicy(a3) != 5)
    {
      v32 = qword_1ED6416F0;
      if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
      {
        v33 = *(a1 + 3280);
        if (!v33)
        {
          __break(0xC471u);
          JUMPOUT(0x19DCB22A8);
        }

        v35 = *(a1 + 88);
        v34 = *(a1 + 96);
        v36 = *(a1 + 80);
        v37 = *(a1 + 251) == 1;
        v38 = *(a1 + 3328);
        v39 = *(a1 + 4440) != 0;
        *buf = 134219776;
        v77 = a1;
        v78 = 2048;
        v79 = v36;
        v80 = 2048;
        v81 = v35;
        v82 = 2048;
        v83 = v34;
        v84 = 2048;
        v85 = v33;
        v86 = 1024;
        v87 = v37;
        v88 = 1024;
        v89 = v38;
        v90 = 1024;
        v91 = v39;
        _os_log_impl(&dword_19D52D000, v32, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::retrieveCacheEntryInternal: Cached entry is directly usable", buf, 0x46u);
      }

      v40 = *a2;
      *a2 = 0;
      v73 = v40;
      WebKit::NetworkResourceLoader::didRetrieveCacheEntry(a1, &v73);
      if (v73)
      {
        WebKit::NetworkCache::Entry::~Entry(v73, v41);
        bmalloc::api::tzoneFree(v42, v43);
      }

      return;
    }

    v15 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 3280);
      if (!v16)
      {
        __break(0xC471u);
        JUMPOUT(0x19DCB2268);
      }

      v18 = *(a1 + 88);
      v17 = *(a1 + 96);
      v19 = *(a1 + 80);
      v20 = *(a1 + 251) == 1;
      v21 = *(a1 + 3328);
      v22 = *(a1 + 4440) != 0;
      *buf = 134219776;
      v77 = a1;
      v78 = 2048;
      v79 = v19;
      v80 = 2048;
      v81 = v18;
      v82 = 2048;
      v83 = v17;
      v84 = 2048;
      v85 = v16;
      v86 = 1024;
      v87 = v20;
      v88 = 1024;
      v89 = v21;
      v90 = 1024;
      v91 = v22;
      _os_log_impl(&dword_19D52D000, v15, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::retrieveCacheEntryInternal: Cached entry needs revalidation", buf, 0x46u);
      v15 = qword_1ED6416F0;
    }

    v23 = *a2;
    *a2 = 0;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(a1 + 3280);
      if (!v24)
      {
        __break(0xC471u);
        JUMPOUT(0x19DCB2288);
      }

      v26 = *(a1 + 88);
      v25 = *(a1 + 96);
      v27 = *(a1 + 80);
      v28 = *(a1 + 251) == 1;
      v29 = *(a1 + 3328);
      v30 = *(a1 + 4440) != 0;
      *buf = 134219776;
      v77 = a1;
      v78 = 2048;
      v79 = v27;
      v80 = 2048;
      v81 = v26;
      v82 = 2048;
      v83 = v25;
      v84 = 2048;
      v85 = v24;
      v86 = 1024;
      v87 = v28;
      v88 = 1024;
      v89 = v29;
      v90 = 1024;
      v91 = v30;
      _os_log_impl(&dword_19D52D000, v15, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::validateCacheEntry:", buf, 0x46u);
    }

    WebCore::ResourceRequest::ResourceRequest(buf, (a1 + 104));
    if ((WebCore::ResourceRequestBase::isConditional(buf) & 1) == 0)
    {
      WebCore::ResourceResponseBase::httpHeaderField();
      WebCore::ResourceResponseBase::httpHeaderField();
      if (v75 && *(v75 + 1))
      {
        WebCore::ResourceRequestBase::setHTTPHeaderField();
      }

      v45 = v74;
      if (v74)
      {
        if (*(v74 + 1))
        {
          WebCore::ResourceRequestBase::setHTTPHeaderField();
          v45 = v74;
        }

        v74 = 0;
        if (atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v45, v44);
        }
      }

      v46 = v75;
      v75 = 0;
      if (v46)
      {
        if (atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v46, v44);
        }
      }
    }

    std::unique_ptr<WebKit::NetworkCache::Entry>::reset[abi:sn200100]((a1 + 4568), v23);
LABEL_16:
    WebKit::NetworkResourceLoader::startNetworkLoad(a1, buf, 1, v31);
    WebCore::ResourceRequest::~ResourceRequest(buf);
    return;
  }

  v65 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v66 = *(a1 + 3280);
    if (!v66)
    {
      __break(0xC471u);
      JUMPOUT(0x19DCB22F0);
    }

    v68 = *(a1 + 88);
    v67 = *(a1 + 96);
    v69 = *(a1 + 80);
    v70 = *(a1 + 251) == 1;
    v71 = *(a1 + 3328);
    v72 = *(a1 + 4440) != 0;
    *buf = 134219776;
    v77 = a1;
    v78 = 2048;
    v79 = v69;
    v80 = 2048;
    v81 = v68;
    v82 = 2048;
    v83 = v67;
    v84 = 2048;
    v85 = v66;
    v86 = 1024;
    v87 = v70;
    v88 = 1024;
    v89 = v71;
    v90 = 1024;
    v91 = v72;
    _os_log_impl(&dword_19D52D000, v65, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::retrieveCacheEntryInternal: Cached entry is a redirect", buf, 0x46u);
  }

  WebKit::NetworkResourceLoader::dispatchWillSendRequestForCacheEntry(a1, a3, a2);
}

uint64_t WebKit::NetworkResourceLoader::validateCacheEntryForMaxAgeCapValidation(WebKit::NetworkResourceLoader *this, const WebCore::ResourceRequest *a2, const WebCore::ResourceRequest *a3, const WebCore::ResourceResponse *a4)
{
  if (*(this + 572))
  {
    WebCore::ResourceResponseBase::httpHeaderField();
    WebCore::ResourceResponseBase::httpHeaderField();
    v8 = WTF::equal(v24, v23, v6);
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v7);
    }

    v9 = v24;
    v24 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v7);
    }

    v10 = *(this + 569);
    if (v10)
    {
      v12 = *(v10 + 8);
      v11 = v10 + 8;
      *v11 = v12 + 1;
      WebKit::NetworkCache::Storage::remove(*(v11 + 8), *(this + 572));
      WTF::RefCounted<WebKit::NetworkCache::Cache>::deref(v11, v13);
    }

    else
    {
      WebKit::NetworkCache::Storage::remove(MEMORY[0x10], *(this + 572));
    }

    std::unique_ptr<WebKit::NetworkCache::Entry>::reset[abi:sn200100](this + 572, 0);
    if (v8)
    {
      goto LABEL_18;
    }
  }

  v14 = *(this + 518);
  ++*(v14 + 20);
  v15 = *(v14 + 88);
  v24 = *(v14 + 96);
  v16 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v15 + 248), &v24);
  v17 = v16;
  if (v16)
  {
    ++*(v16 + 8);
  }

  if (*(v14 + 20) != 1)
  {
    --*(v14 + 20);
    if (v16)
    {
      goto LABEL_15;
    }

LABEL_18:
    v21 = 0;
    v20 = 0;
    return v20 | v21;
  }

  (*(*v14 + 8))(v14);
  if (!v17)
  {
    goto LABEL_18;
  }

LABEL_15:
  v18 = WebCore::NetworkStorageSession::maxAgeCacheCap(v17, a2);
  v19 = *(v17 + 2);
  if (v19)
  {
    v20 = v18 & 0xFFFFFFFFFFFFFF00;
    *(v17 + 2) = v19 - 1;
    v21 = v18;
    return v20 | v21;
  }

  result = 290;
  __break(0xC471u);
  return result;
}

void **std::unique_ptr<WebKit::PrefetchCache::Entry>::~unique_ptr[abi:sn200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    WebCore::ResourceRequest::~ResourceRequest((v2 + 35));
    v5 = v2[34];
    v2[34] = 0;
    if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v5 + 2);
      (*(*v5 + 8))(v5);
    }

    v6 = v2[31];
    v2[31] = 0;
    if (v6)
    {
      CFRelease(v6);
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(v2, v4);
    WTF::fastFree(v7, v8);
  }

  return a1;
}

void WebKit::NetworkResourceLoader::dispatchWillSendRequestForCacheEntry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 3280);
    if (!v7)
    {
      __break(0xC471u);
      goto LABEL_11;
    }

    v9 = *(a1 + 88);
    v8 = *(a1 + 96);
    v10 = *(a1 + 80);
    v11 = *(a1 + 251) == 1;
    v12 = *(a1 + 3328);
    v13 = *(a1 + 4440) != 0;
    *buf = 134219776;
    v20 = a1;
    v21 = 2048;
    v22 = v10;
    v23 = 2048;
    v24 = v9;
    v25 = 2048;
    v26 = v8;
    v27 = 2048;
    v28 = v7;
    v29 = 1024;
    v30 = v11;
    v31 = 1024;
    v32 = v12;
    v33 = 1024;
    v34 = v13;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::dispatchWillSendRequestForCacheEntry:", buf, 0x46u);
  }

  *(a1 + 4584) = 1;
  if ((*(*a3 + 560) & 1) == 0)
  {
LABEL_11:
    __break(1u);
    return;
  }

  WebCore::ResourceRequest::ResourceRequest(v18, (*a3 + 360));
  WebCore::ResourceResponse::ResourceResponse(buf, (*a3 + 80));
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F1103680;
  v17 = v14;
  WebKit::NetworkResourceLoader::willSendRedirectedRequestInternal(a1, a2, v18, buf, 0, &v17);
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v16 = cf;
  cf = 0;
  if (v16)
  {
    CFRelease(v16);
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(buf, v15);
  WebCore::ResourceRequest::~ResourceRequest(v18);
}

void WebKit::NetworkResourceLoader::didRetrieveCacheEntry(uint64_t a1, WebKit::NetworkCache::Entry **a2)
{
  v122 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 3280);
    if (!v5)
    {
      __break(0xC471u);
      goto LABEL_72;
    }

    v7 = *(a1 + 88);
    v6 = *(a1 + 96);
    v8 = *(a1 + 80);
    v9 = *(a1 + 251) == 1;
    v10 = *(a1 + 3328);
    v11 = *(a1 + 4440) != 0;
    *buf = 134219776;
    v105 = a1;
    v106 = 2048;
    v107 = v8;
    v108 = 2048;
    v109 = v7;
    v110 = 2048;
    v111 = v6;
    v112 = 2048;
    v113 = v5;
    v114 = 1024;
    v115 = v9;
    v116 = 1024;
    v117 = v10;
    v118 = 1024;
    v119 = v11;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::didRetrieveCacheEntry:", buf, 0x46u);
  }

  WebCore::ResourceResponse::ResourceResponse(buf, (*a2 + 80));
  v12 = *(a1 + 5096);
  if (!v12 || (++*(v12 + 8), (*(v12 + 209) & 1) != 0) || WebCore::ContentFilter::continueAfterResponseReceived())
  {
    if (*(a1 + 251) == 1)
    {
      WebKit::NetworkResourceLoader::didReceiveMainResourceResponse(a1, buf);
    }

    WebKit::NetworkResourceLoader::initializeReportingEndpoints(a1, buf);
    if (*(a1 + 251) == 1 && WebKit::NetworkResourceLoader::shouldInterruptLoadForCSPFrameAncestorsOrXFrameOptions(a1, buf))
    {
      v35 = qword_1ED6416F0;
      if (!os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_ERROR))
      {
LABEL_40:
        WebKit::NetworkResourceLoader::sanitizeResponseIfPossible(v90, a1, buf);
        WebCore::ResourceResponse::operator=(buf, v90);
        WebCore::ResourceResponse::~ResourceResponse(v90, v36);
        *v90 = buf;
        IPC::MessageSender::send<Messages::WebResourceLoader::StopLoadingAfterXFrameOptionsOrContentSecurityPolicyDenied>(a1 + 24, v90);
        goto LABEL_28;
      }

      goto LABEL_64;
    }

    v13 = *(a1 + 4600);
    if (v13)
    {
      v14 = v13 + 2;
      ++v13[2];
      WebKit::NetworkLoadChecker::validateResponse(v13, a1 + 104, buf, v90);
      if (v98)
      {
        v44 = qword_1ED6416F0;
        if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_ERROR))
        {
          v52 = *(a1 + 3280);
          if (!v52)
          {
            __break(0xC471u);
            JUMPOUT(0x19DCB2FDCLL);
          }

          v54 = *(a1 + 88);
          v53 = *(a1 + 96);
          v55 = *(a1 + 80);
          v56 = *(a1 + 251) == 1;
          v57 = *(a1 + 3328);
          v58 = *(a1 + 4440) != 0;
          *v74 = 134219776;
          v75 = a1;
          v76 = 2048;
          v77 = v55;
          v78 = 2048;
          v79 = v54;
          v80 = 2048;
          v81 = v53;
          v82 = 2048;
          v83 = v52;
          v84 = 1024;
          v85 = v56;
          v86 = 1024;
          v87 = v57;
          v88 = 1024;
          v89 = v58;
          _os_log_error_impl(&dword_19D52D000, v44, OS_LOG_TYPE_ERROR, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::didRetrieveCacheEntry: Failing load due to NetworkLoadChecker::validateResponse", v74, 0x46u);
        }

        WebKit::NetworkResourceLoader::didFailLoading(a1, v90);
        WebCore::ResourceError::~ResourceError(v90, v45);
        WTF::RefCounted<WebKit::NetworkLoadChecker>::deref(v14, v46);
        goto LABEL_28;
      }

      v16 = v99;
      v99 = 0;
      if (v16)
      {
        CFRelease(v16);
      }

      v17 = *&v96[4];
      *&v96[4] = 0;
      if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v15);
      }

      v18 = *&v90[8];
      *&v90[8] = 0;
      if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v15);
      }

      v19 = *v90;
      *v90 = 0;
      if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v15);
      }

      WTF::RefCounted<WebKit::NetworkLoadChecker>::deref(v14, v15);
    }

    WebKit::NetworkResourceLoader::doCrossOriginOpenerHandlingOfResponse(a1, buf, v90);
    if (v101)
    {
      v35 = qword_1ED6416F0;
      if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_ERROR))
      {
        v59 = *(a1 + 3280);
        if (!v59)
        {
          __break(0xC471u);
          JUMPOUT(0x19DCB2FFCLL);
        }

        v61 = *(a1 + 88);
        v60 = *(a1 + 96);
        v62 = *(a1 + 80);
        v63 = *(a1 + 251) == 1;
        v64 = *(a1 + 3328);
        v65 = *(a1 + 4440) != 0;
        *v74 = 134219776;
        v75 = a1;
        v76 = 2048;
        v77 = v62;
        v78 = 2048;
        v79 = v61;
        v80 = 2048;
        v81 = v60;
        v82 = 2048;
        v83 = v59;
        v84 = 1024;
        v85 = v63;
        v86 = 1024;
        v87 = v64;
        v88 = 1024;
        v89 = v65;
        _os_log_error_impl(&dword_19D52D000, v35, OS_LOG_TYPE_ERROR, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::didRetrieveCacheEntry: Interrupting load due to Cross-Origin-Opener-Policy", v74, 0x46u);
        if ((v101 & 1) == 0)
        {
          __break(1u);
LABEL_64:
          v66 = *(a1 + 3280);
          if (v66)
          {
            v68 = *(a1 + 88);
            v67 = *(a1 + 96);
            v69 = *(a1 + 80);
            v70 = *(a1 + 251) == 1;
            v71 = *(a1 + 3328);
            v72 = *(a1 + 4440) != 0;
            *v90 = 134219776;
            *&v90[4] = a1;
            *&v90[12] = 2048;
            *&v90[14] = v69;
            v91 = 2048;
            v92 = v68;
            v93 = 2048;
            v94 = v67;
            v95 = 2048;
            *v96 = v66;
            *&v96[8] = 1024;
            *&v96[10] = v70;
            v97 = 1024;
            v98 = v71;
            LOWORD(v99) = 1024;
            *(&v99 + 2) = v72;
            _os_log_error_impl(&dword_19D52D000, v35, OS_LOG_TYPE_ERROR, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::didRetrieveCacheEntry: Stopping load due to CSP Frame-Ancestors or X-Frame-Options", v90, 0x46u);
            goto LABEL_40;
          }

          __break(0xC471u);
LABEL_72:
          JUMPOUT(0x19DCB2F7CLL);
        }
      }

      WebKit::NetworkResourceLoader::didFailLoading(a1, v90);
      std::optional<WebCore::ResourceError>::~optional(v90, v47);
    }

    else
    {
      WebKit::NetworkResourceLoader::sanitizeResponseIfPossible(v90, a1, buf);
      WebCore::ResourceResponseBase::operator=(buf, v90);
      v21 = v102;
      v102 = 0;
      v22 = cf;
      cf = v21;
      if (v22)
      {
        CFRelease(v22);
        v40 = v102;
        v121 = v103;
        v102 = 0;
        if (v40)
        {
          CFRelease(v40);
        }
      }

      else
      {
        v121 = v103;
        v102 = 0;
      }

      WebCore::ResourceResponseBase::~ResourceResponseBase(v90, v20);
      v23 = *(a1 + 4440);
      if (v23)
      {
        WebCore::ResourceResponse::operator=(v23 + 208, buf);
        v48 = *(a1 + 4440);
        v49 = *a2;
        v50 = *(*a2 + 71);
        if (v50 || (WebKit::NetworkCache::Entry::initializeBufferFromStorageRecord(v49), (v50 = *(v49 + 71)) != 0))
        {
          atomic_fetch_add(v50 + 2, 1u);
        }

        WebCore::NetworkLoadMetrics::NetworkLoadMetrics(v90);
        WebKit::sendReplyToSynchronousRequest(v48, v50, v90);
        WebCore::NetworkLoadMetrics::~NetworkLoadMetrics(v90, v51);
        if (v50 && atomic_fetch_add(v50 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v50 + 2);
          (*(*v50 + 8))(v50);
        }

        goto LABEL_27;
      }

      v24 = *(a1 + 251);
      v25 = qword_1ED6416F0;
      if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *(a1 + 3280);
        if (!v26)
        {
          __break(0xC471u);
          JUMPOUT(0x19DCB2F9CLL);
        }

        v28 = *(a1 + 88);
        v27 = *(a1 + 96);
        v29 = *(a1 + 80);
        v30 = *(a1 + 3328);
        *v90 = 134220032;
        *&v90[4] = a1;
        *&v90[12] = 2048;
        *&v90[14] = v29;
        v91 = 2048;
        v92 = v28;
        v93 = 2048;
        v94 = v27;
        v95 = 2048;
        *v96 = v26;
        *&v96[8] = 1024;
        *&v96[10] = v24 == 1;
        v97 = 1024;
        v98 = v30;
        LOWORD(v99) = 1024;
        *(&v99 + 2) = 0;
        HIWORD(v99) = 1024;
        v100 = *&v96[10];
        _os_log_impl(&dword_19D52D000, v25, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::didRetrieveCacheEntry: Sending WebResourceLoader::DidReceiveResponse IPC (needsContinueDidReceiveResponseMessage=%d)", v90, 0x4Cu);
      }

      WebKit::NetworkResourceLoader::sendDidReceiveResponsePotentiallyInNewBrowsingContextGroup(a1, buf, *(*a2 + 768), v24 == 1);
      if (v24 != 1)
      {
        v31 = *a2;
        *a2 = 0;
        v73 = v31;
        WebKit::NetworkResourceLoader::sendResultForCacheEntry(a1, &v73);
        if (v31)
        {
          WebKit::NetworkCache::Entry::~Entry(v31, v32);
          bmalloc::api::tzoneFree(v41, v42);
        }

LABEL_27:
        WebKit::NetworkResourceLoader::cleanup(a1, 1);
        goto LABEL_28;
      }

      WebCore::ResourceResponseBase::operator=(a1 + 4160, buf);
      v37 = cf;
      cf = 0;
      v38 = *(a1 + 4408);
      *(a1 + 4408) = v37;
      if (v38)
      {
        CFRelease(v38);
      }

      *(a1 + 4416) = v121;
      v39 = *a2;
      *(a1 + 5272) = *(*a2 + 768);
      *a2 = 0;
      std::unique_ptr<WebKit::NetworkCache::Entry>::reset[abi:sn200100]((a1 + 4592), v39);
    }

LABEL_28:
    if (!v12)
    {
      goto LABEL_29;
    }
  }

  v43 = *(v12 + 8);
  if (!v43)
  {
    __break(0xC471u);
    JUMPOUT(0x19DCB2FBCLL);
  }

  *(v12 + 8) = v43 - 1;
LABEL_29:
  v34 = cf;
  cf = 0;
  if (v34)
  {
    CFRelease(v34);
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(buf, v33);
}

void WebKit::NetworkResourceLoader::consumeSandboxExtensions(WebKit::NetworkResourceLoader *this, void *a2, __n128 a3)
{
  a3.n128_u64[0] = 0;
  v4 = *(this + 411);
  v27 = v4;
  v5 = *(this + 825);
  v28 = *(this + 824);
  v29 = v5;
  *v26 = a3;
  *(this + 411) = 0;
  *(this + 412) = 0;
  if (v5)
  {
    v11 = 8 * v5;
    do
    {
      WebKit::SandboxExtension::create(v4, &v25);
      if (v25)
      {
        WebKit::SandboxExtension::consume(v25);
        v12 = v25;
        v24 = v25;
        v25 = 0;
        v13 = *(this + 1035);
        if (v13 == *(this + 1034))
        {
          WTF::Vector<WTF::Ref<WebCore::FilterEffect,WTF::RawPtrTraits<WebCore::FilterEffect>,WTF::DefaultRefDerefTraits<WebCore::FilterEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::Ref<WebCore::FilterEffect,WTF::RawPtrTraits<WebCore::FilterEffect>,WTF::DefaultRefDerefTraits<WebCore::FilterEffect>>>(this + 4128, &v24);
        }

        else
        {
          v14 = *(this + 516);
          v24 = 0;
          *(v14 + 8 * v13) = v12;
          *(this + 1035) = v13 + 1;
        }

        v15 = v24;
        v24 = 0;
        if (v15)
        {
          WTF::RefCounted<WebKit::SandboxExtension>::deref(v15);
        }

        v16 = v25;
        v25 = 0;
        if (v16)
        {
          WTF::RefCounted<WebKit::SandboxExtension>::deref(v16);
        }
      }

      v4 = (v4 + 8);
      v11 -= 8;
    }

    while (v11);
  }

  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v27, a2);
  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v26, v6);
  v7 = (this + 3304);
  LOBYTE(v26[0]) = 0;
  LOBYTE(v26[1]) = 0;
  LOBYTE(v27) = 0;
  LOBYTE(v28) = 0;
  v8 = *(this + 3312);
  if (v8 == 1)
  {
    v10 = *v7;
    *v7 = 0;
    v27 = v10;
    LOBYTE(v28) = 1;
  }

  std::__optional_storage_base<WebKit::SandboxExtensionHandle,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebKit::SandboxExtensionHandle,false>>(v7, v26);
  if (LOBYTE(v26[1]) == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v26);
  }

  if (v8)
  {
    WebKit::SandboxExtension::create(&v27, v26);
    if (v26[0])
    {
      WebKit::SandboxExtension::consume(v26[0]);
      v20 = v26[0];
      v25 = v26[0];
      v26[0] = 0;
      v21 = *(this + 1035);
      if (v21 == *(this + 1034))
      {
        WTF::Vector<WTF::Ref<WebCore::FilterEffect,WTF::RawPtrTraits<WebCore::FilterEffect>,WTF::DefaultRefDerefTraits<WebCore::FilterEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::Ref<WebCore::FilterEffect,WTF::RawPtrTraits<WebCore::FilterEffect>,WTF::DefaultRefDerefTraits<WebCore::FilterEffect>>>(this + 4128, &v25);
        v22 = v25;
        v25 = 0;
        if (v22)
        {
          WTF::RefCounted<WebKit::SandboxExtension>::deref(v22);
        }
      }

      else
      {
        *(*(this + 516) + 8 * v21) = v20;
        *(this + 1035) = v21 + 1;
      }

      v23 = v26[0];
      v26[0] = 0;
      if (v23)
      {
        WTF::RefCounted<WebKit::SandboxExtension>::deref(v23);
      }
    }

    if (v28)
    {
      WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v27);
    }
  }

  v9 = *(this + 1115);
  if (v9)
  {
    v17 = *(this + 556);
    v18 = 8 * v9;
    do
    {
      v19 = *v17++;
      (*(*v19 + 16))(v19);
      v18 -= 8;
    }

    while (v18);
  }

  *(this + 4465) = 1;
}

unsigned int *WebCore::SharedBufferBuilder::empty(WebCore::SharedBufferBuilder *this)
{
  WebCore::FragmentedSharedBuffer::create(&v4, this);
  v2 = v4;
  v4 = 0;
  result = *this;
  *this = v2;
  if (result)
  {
    if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 2);
      (*(*result + 8))(result);
    }

    result = v4;
    v4 = 0;
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

uint64_t WebKit::NetworkResourceLoader::didFailLoading(WebKit::NetworkResourceLoader *this, atomic_uint **a2)
{
  v66[16] = *MEMORY[0x1E69E9840];
  v4 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_ERROR))
  {
    log = v4;
    v5 = *(this + 410);
    if (!v5)
    {
      __break(0xC471u);
      goto LABEL_49;
    }

    v6 = *(this + 11);
    v37 = *(this + 12);
    v7 = *(this + 10);
    v38 = *(this + 584) != 0;
    v8 = *(this + 251) == 1;
    v9 = *(this + 3328);
    v10 = *(this + 555) != 0;
    v11 = *(a2 + 60);
    v36 = v11 == 4;
    v12 = v11 == 3;
    v13 = v11 == 2;
    MEMORY[0x19EB12BA0](a2);
    v14 = *(a2 + 14);
    *buf = 134221056;
    *&buf[4] = this;
    *&buf[12] = 2048;
    *&buf[14] = v7;
    *&buf[22] = 2048;
    *v44 = v6;
    *&v44[8] = 2048;
    *&v44[10] = v37;
    v45 = 2048;
    v46 = v5;
    v47 = 1024;
    v48 = v8;
    v49 = 1024;
    v50 = v9;
    v51 = 1024;
    v52 = v10;
    v53 = 1024;
    v54 = v38;
    v55 = 1024;
    v56 = v36;
    v57 = 1024;
    v58 = v12;
    v59 = 1024;
    v60 = v13;
    v61 = 1024;
    v62 = v14;
    _os_log_error_impl(&dword_19D52D000, log, OS_LOG_TYPE_ERROR, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::didFailLoading: (wasServiceWorkerLoad=%d, isTimeout=%d, isCancellation=%d, isAccessControl=%d, errorCode=%d)", buf, 0x64u);
  }

  v15 = *(this + 518);
  ++*(v15 + 20);
  if (*(this + 4624) == 1)
  {
    if (!*(this + 410))
    {
      __break(0xC471u);
      JUMPOUT(0x19DCB3818);
    }

    *buf = *(this + 410);
    WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkLoadInformation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove((v15 + 160), buf);
  }

  std::unique_ptr<WebKit::NetworkCache::Entry>::reset[abi:sn200100](this + 571, 0);
  v16 = *(this + 555);
  if (!v16)
  {
    v17 = *(*(this + 518) + 80);
    if (!v17)
    {
      goto LABEL_13;
    }

    while (1)
    {
      v18 = *v17;
      if ((*v17 & 1) == 0)
      {
        break;
      }

      v35 = *v17;
      atomic_compare_exchange_strong_explicit(v17, &v35, v18 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v35 == v18)
      {
        goto LABEL_9;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v17);
LABEL_9:
    if (!*(this + 584))
    {
      *buf = a2;
      v19 = *(this + 410);
      if (!v19)
      {
        __break(0xC471u);
        JUMPOUT(0x19DCB37F8);
      }

      IPC::Connection::send<Messages::WebResourceLoader::DidFailResourceLoad>(v17, buf, v19);
      goto LABEL_12;
    }

    *buf = a2;
    v31 = *(this + 410);
    if (v31)
    {
      IPC::Connection::send<Messages::WebResourceLoader::DidFailServiceWorkerLoad>(v17, buf, v31);
LABEL_12:
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v17);
      goto LABEL_13;
    }

    __break(0xC471u);
LABEL_49:
    JUMPOUT(0x19DCB37D8);
  }

  WebCore::ResourceError::operator=(v16 + 472, a2);
  v21 = *(this + 555);
  WebCore::NetworkLoadMetrics::NetworkLoadMetrics(buf);
  WebKit::sendReplyToSynchronousRequest(v21, 0, buf);
  WebCore::NetworkLoadMetrics::~NetworkLoadMetrics(buf, v22);
LABEL_13:
  if ((*(this + 3592) & 1) != 0 || *(this + 4120) == 1)
  {
    WebKit::AuxiliaryProcess::protectedParentProcessConnection(*(v15 + 88), &v42);
    v27 = v42;
    v40 = *(this + 10);
    WebKit::NetworkResourceLoader::resourceLoadInfo(v66, this);
    WebCore::ResourceResponseBase::ResourceResponseBase(buf);
    v64 = 0;
    v65 = 0;
    v63 = v63 & 0xF1 | 4;
    v41[0] = &v40;
    v41[1] = v66;
    v41[2] = buf;
    v41[3] = a2;
    IPC::Connection::send<Messages::NetworkProcessProxy::ResourceLoadDidCompleteWithError>(v27, v41);
    WebCore::ResourceResponse::~ResourceResponse(buf, v28);
    WebKit::ResourceLoadInfo::~ResourceLoadInfo(v66, v29);
    v30 = v42;
    v42 = 0;
    if (v30)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v30);
    }
  }

  if (!WebCore::ResourceError::blockedKnownTracker(a2))
  {
    result = WebKit::NetworkResourceLoader::cleanup(this, 2);
    if (!v15)
    {
      return result;
    }

    goto LABEL_17;
  }

  MEMORY[0x19EB12BA0](a2);
  v23 = a2[1];
  if (v23)
  {
    atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
  }

  *buf = v23;
  v24 = *(a2 + 2);
  *&buf[8] = *(a2 + 1);
  *v44 = v24;
  WebCore::ResourceError::blockedTrackerHostName(v66, a2);
  v26 = v66[0];
  if (v66[0])
  {
    if (!*(v66[0] + 1))
    {
      v66[0] = 0;
      goto LABEL_34;
    }

    WTF::URL::setHost();
    v26 = v66[0];
    v66[0] = 0;
    if (v26)
    {
LABEL_34:
      if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v25);
      }
    }
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(*(v15 + 88), v41);
  v42 = *(this + 10);
  v66[0] = &v42;
  v66[1] = buf;
  IPC::Connection::send<Messages::NetworkProcessProxy::DidBlockLoadToKnownTracker>(v41[0], v66);
  v33 = v41[0];
  v41[0] = 0;
  if (v33)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v33);
  }

  v34 = *buf;
  *buf = 0;
  if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v34, v32);
  }

  result = WebKit::NetworkResourceLoader::cleanup(this, 2);
LABEL_17:
  if (*(v15 + 20) == 1)
  {
    return (*(*v15 + 8))(v15);
  }

  --*(v15 + 20);
  return result;
}

uint64_t WTF::Vector<WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 12);
  if (v4)
  {
    WTF::VectorDestructor<true,WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>>::destruct(*a1, (*a1 + 8 * v4));
  }

  WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a1, a2);
  return a1;
}

IPC::Encoder *IPC::Connection::send<Messages::NetworkProcessProxy::ResourceLoadDidSendRequest>(uint64_t *a1, void **a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 560;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v4, **a2);
  IPC::ArgumentCoder<WebKit::ResourceLoadInfo,void>::encode(v4, a2[1]);
  IPC::ArgumentCoder<WebCore::ResourceRequest,void>::encode(v4, a2[2]);
  IPC::ArgumentCoder<std::optional<IPC::FormDataReference>,void>::encode<IPC::Encoder,std::optional<IPC::FormDataReference> const&>(v4, a2[3]);
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

uint64_t WebKit::NetworkResourceLoader::resourceLoadInfo(WebKit::NetworkResourceLoader *this, uint64_t a2)
{
  v4 = *(a2 + 96);
  *this = *(a2 + 4696);
  *(this + 1) = v4;
  *(this + 16) = 1;
  *(this + 3) = *(a2 + 3600);
  *(this + 32) = *(a2 + 3608);
  v5 = (a2 + 3360);
  if (*(a2 + 3360) == 0)
  {
    v5 = (a2 + 3344);
  }

  *(this + 3) = *v5;
  v6 = WebCore::ResourceRequestBase::url((a2 + 104));
  v7 = *v6;
  if (*v6)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  *(this + 8) = v7;
  *(this + 72) = *(v6 + 8);
  *(this + 88) = *(v6 + 24);
  v8 = WebCore::ResourceRequestBase::httpMethod((a2 + 104));
  v9 = *v8;
  if (*v8)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  *(this + 13) = v9;
  WTF::WallTime::now(v8);
  *(this + 14) = v10;
  result = WebCore::ResourceResponseBase::source((a2 + 4160));
  *(this + 120) = (result < 9) & (0x1BCu >> result);
  v12 = *(a2 + 251) - 2;
  if (v12 < 7 && ((0x63u >> v12) & 1) != 0)
  {
    v13 = 0x10A0D0D0D040DuLL >> (8 * (v12 & 0x1F));
  }

  else if (*(a2 + 3328) - 1 > 0x14)
  {
    LOBYTE(v13) = 9;
  }

  else
  {
    LOBYTE(v13) = byte_19E703A00[(*(a2 + 3328) - 1)];
  }

  *(this + 121) = v13;
  return result;
}

void WebKit::ResourceLoadInfo::~ResourceLoadInfo(WebKit::ResourceLoadInfo *this, WTF::StringImpl *a2)
{
  v3 = *(this + 13);
  *(this + 13) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }
}

IPC::Encoder *IPC::Connection::send<Messages::NetworkProcessProxy::DidAllowPrivateTokenUsageByThirdPartyForTesting>(uint64_t *a1, char *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 530;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v4, **a2);
  IPC::Encoder::operator<<<BOOL &>(v4, a2 + 8);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v4, *(a2 + 2));
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

uint64_t WebKit::NetworkResourceLoader::cleanup(uint64_t a1, int a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 3280);
    if (!v5)
    {
      __break(0xC471u);
LABEL_32:
      JUMPOUT(0x19DCB3EACLL);
    }

    v7 = *(a1 + 88);
    v6 = *(a1 + 96);
    v8 = *(a1 + 80);
    v9 = *(a1 + 251) == 1;
    v10 = *(a1 + 3328);
    v11 = *(a1 + 4440) != 0;
    *buf = 134220032;
    *&buf[4] = a1;
    *v32 = 2048;
    *&v32[2] = v8;
    v33 = 2048;
    v34 = v7;
    v35 = 2048;
    v36 = v6;
    v37 = 2048;
    v38 = v5;
    v39 = 1024;
    v40 = v9;
    v41 = 1024;
    v42 = v10;
    v43 = 1024;
    v44 = v11;
    v45 = 1024;
    v46 = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::cleanup: (result=%u)", buf, 0x4Cu);
  }

  v12 = *(a1 + 4144);
  ++*(v12 + 20);
  v13 = *(a1 + 3280);
  if (!v13)
  {
    __break(0xC471u);
    goto LABEL_32;
  }

  WebKit::NetworkConnectionToWebProcess::stopTrackingResourceLoad(v12, v13);
  if ((*(a1 + 4528) & 0xFFFFFFFFFFFFLL) != 0)
  {
    WebCore::TimerBase::stopSlowCase((a1 + 4496));
  }

  if (*(a1 + 4465) == 1)
  {
    *&v15 = 0;
    v16 = *(a1 + 4128);
    *buf = v16;
    v17 = *(a1 + 4140);
    *&buf[8] = *(a1 + 4136);
    *v32 = v17;
    v30 = v15;
    *(a1 + 4128) = 0;
    *(a1 + 4136) = 0;
    if (v17)
    {
      v25 = 8 * v17;
      do
      {
        v26 = *v16++;
        ++*v26;
        WebKit::SandboxExtension::revoke(v26);
        WTF::RefCounted<WebKit::SandboxExtension>::deref(v26);
        v25 -= 8;
      }

      while (v25);
    }

    WTF::Vector<WTF::Ref<WebKit::SandboxExtension,WTF::RawPtrTraits<WebKit::SandboxExtension>,WTF::DefaultRefDerefTraits<WebKit::SandboxExtension>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v14);
    WTF::Vector<WTF::Ref<WebKit::SandboxExtension,WTF::RawPtrTraits<WebKit::SandboxExtension>,WTF::DefaultRefDerefTraits<WebKit::SandboxExtension>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v30, v18);
    v19 = *(a1 + 4460);
    if (v19)
    {
      v27 = *(a1 + 4448);
      v28 = 8 * v19;
      do
      {
        v29 = *v27++;
        (*(*v29 + 24))(v29);
        v28 -= 8;
      }

      while (v28);
    }

    *(a1 + 4465) = 0;
  }

  if (*(a1 + 4456))
  {
    v23 = *(a1 + 4460);
    v24 = *(a1 + 4448);
    if (v23)
    {
      WTF::VectorDestructor<true,WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>>::destruct(v24, v24 + v23);
      *(a1 + 4460) = 0;
      v24 = *(a1 + 4448);
    }

    if (v24)
    {
      *(a1 + 4448) = 0;
      *(a1 + 4456) = 0;
      WTF::fastFree(v24, v14);
    }
  }

  v20 = *(a1 + 4152);
  *(a1 + 4152) = 0;
  if (v20)
  {
    v21 = *(v20 + 24);
    *(v20 + 24) = 0;
    if (v21 && atomic_fetch_add(v21, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v21);
      WTF::fastFree(v21, v14);
    }

    WTF::RefCounted<WebKit::NetworkLoad>::deref((v20 + 16), v14);
  }

  result = WebKit::NetworkConnectionToWebProcess::didCleanupResourceLoader(v12, a1);
  if (*(v12 + 20) == 1)
  {
    return (*(*v12 + 8))(v12);
  }

  --*(v12 + 20);
  return result;
}

_DWORD *WebKit::NetworkResourceLoader::convertToDownload(uint64_t a1, uint64_t a2, WebCore::ResourceRequestBase *a3, WebCore::ResourceResponseBase *a4)
{
  v66 = *MEMORY[0x1E69E9840];
  v8 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 3280);
    if (!v10)
    {
      __break(0xC471u);
      JUMPOUT(0x19DCB4394);
    }

    v12 = *(a1 + 88);
    v11 = *(a1 + 96);
    v13 = *(a1 + 80);
    v14 = *(a1 + 251) == 1;
    v15 = *(a1 + 3328);
    v16 = *(a1 + 4440) != 0;
    v17 = *(a1 + 4152) != 0;
    v18 = *(a1 + 4616) != 0;
    *buf = 134220544;
    *&buf[4] = a1;
    *&buf[12] = 2048;
    *&buf[14] = v13;
    v48 = 2048;
    v49 = v12;
    v50 = 2048;
    v51 = v11;
    v52 = 2048;
    v53 = v10;
    v54 = 1024;
    v55 = v14;
    v56 = 1024;
    v57 = v15;
    v58 = 1024;
    v59 = v16;
    v60 = 2048;
    v61 = a2;
    v62 = 1024;
    v63 = v17;
    v64 = 1024;
    v65 = v18;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::convertToDownload: (downloadID=%llu, hasNetworkLoad=%d, hasResponseCompletionHandler=%d)", buf, 0x5Cu);
  }

  v19 = *(a1 + 4672);
  if (v19)
  {
    ++*(v19 + 8);
    v20 = *(a1 + 4144);
    ++*(v20 + 20);
    v21 = *(v20 + 88);
    v23 = *(v21 + 184);
    v22 = (v21 + 184);
    *v22 = v23 + 1;
    v24 = WebKit::ServiceWorkerFetchTask::convertToDownload(v19, v22, a2, a3, a4);
    if (!*v22)
    {
      __break(0xC471u);
      goto LABEL_55;
    }

    v25 = v24;
    --*v22;
    if (*(v20 + 20) == 1)
    {
      (*(*v20 + 8))(v20);
      if (v25)
      {
        return WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref((v19 + 8));
      }
    }

    else
    {
      --*(v20 + 20);
      if (v24)
      {
        return WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref((v19 + 8));
      }
    }
  }

  v27 = *(a1 + 4152);
  if (!v27)
  {
    v33 = *(a1 + 4144);
    ++*(v33 + 20);
    v34 = *(v33 + 88);
    v36 = *(v34 + 184);
    v35 = (v34 + 184);
    *v35 = v36 + 1;
    v37 = *(v33 + 96);
    v38 = *(a1 + 304);
    if (!v38)
    {
      buf[0] = 0;
LABEL_30:
      LOBYTE(v50) = v38;
      v41 = *(a1 + 3265);
      v46 = 0;
      WebKit::DownloadManager::startDownload(v35, v37, a2, a3, buf, v41, &v46, 0, 0, 0, 0, 0, 0, 0);
      v43 = v46;
      v46 = 0;
      if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v43, v42);
      }

      if (v50 == 1 && !v49)
      {
        v44 = *&buf[8];
        *&buf[8] = 0;
        if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v44, v42);
        }

        v45 = *buf;
        *buf = 0;
        if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v45, v42);
        }
      }

      if (*v35)
      {
        --*v35;
        if (*(v33 + 20) == 1)
        {
          (*(*v33 + 8))(v33);
        }

        else
        {
          --*(v33 + 20);
        }

        result = WebKit::NetworkResourceLoader::abort(a1);
        if (v19)
        {
          return WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref((v19 + 8));
        }

        return result;
      }

      __break(0xC471u);
LABEL_55:
      JUMPOUT(0x19DCB4374);
    }

    buf[0] = 0;
    LOBYTE(v49) = -1;
    LODWORD(v39) = *(v38 + 32);
    if (*(v38 + 32))
    {
      if (v39 == 255)
      {
        goto LABEL_26;
      }

      *buf = *(v38 + 8);
    }

    else
    {
      v40 = *(v38 + 8);
      if (v40)
      {
        atomic_fetch_add_explicit(v40, 2u, memory_order_relaxed);
      }

      *buf = v40;
      v39 = *(v38 + 16);
      if (v39)
      {
        atomic_fetch_add_explicit(v39, 2u, memory_order_relaxed);
      }

      *&buf[8] = v39;
      *&buf[16] = *(v38 + 24);
      LOBYTE(v39) = *(v38 + 32);
    }

    LOBYTE(v49) = v39;
LABEL_26:
    LOBYTE(v38) = 1;
    goto LABEL_30;
  }

  *(a1 + 4152) = 0;
  if (*(a1 + 4616))
  {
    v28 = *(a1 + 4144);
    ++*(v28 + 20);
    v29 = *(v28 + 88);
    v31 = *(v29 + 184);
    v30 = (v29 + 184);
    *v30 = v31 + 1;
    *buf = v27;
    result = WebKit::DownloadManager::convertNetworkLoadToDownload(v30, a2, buf, (a1 + 4616), a1 + 4448, a3, a4);
    if (*buf)
    {
      result = WTF::RefCounted<WebKit::NetworkLoad>::deref((*buf + 16), v32);
    }

    if (!*v30)
    {
      __break(0xC471u);
      JUMPOUT(0x19DCB43B4);
    }

    --*v30;
    if (*(v28 + 20) == 1)
    {
      result = (*(*v28 + 8))(v28);
      if (v19)
      {
        return WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref((v19 + 8));
      }
    }

    else
    {
      --*(v28 + 20);
      if (v19)
      {
        return WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref((v19 + 8));
      }
    }
  }

  else
  {
    result = WTF::RefCounted<WebKit::NetworkLoad>::deref((v27 + 16), v9);
    if (v19)
    {
      return WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref((v19 + 8));
    }
  }

  return result;
}

_DWORD *WebKit::NetworkResourceLoader::abort(WebKit::NetworkResourceLoader *this)
{
  v73 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 410);
    if (!v3)
    {
      __break(0xC471u);
      goto LABEL_58;
    }

    v5 = *(this + 11);
    v4 = *(this + 12);
    v6 = *(this + 10);
    v7 = *(this + 251) == 1;
    v8 = *(this + 3328);
    v9 = *(this + 555) != 0;
    v10 = *(this + 519) != 0;
    *v61 = 134220032;
    *&v61[4] = this;
    *&v61[12] = 2048;
    *&v61[14] = v6;
    v62 = 2048;
    v63 = v5;
    v64 = 2048;
    v65 = v4;
    v66 = 2048;
    *&v67 = v3;
    WORD4(v67) = 1024;
    *(&v67 + 10) = v7;
    HIWORD(v67) = 1024;
    v68 = v8;
    LOWORD(cf) = 1024;
    *(&cf + 2) = v9;
    HIWORD(cf) = 1024;
    LODWORD(v70) = v10;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::abort: (hasNetworkLoad=%d)", v61, 0x4Cu);
  }

  if (*(this + 3334) == 1 && (*(this + 4298) & 1) != 0 && (*(this + 4625) & 1) == 0)
  {
    *(this + 4625) = 1;
    v51 = qword_1ED6416F0;
    if (!os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_48;
    }

    v52 = *(this + 410);
    if (v52)
    {
      v54 = *(this + 11);
      v53 = *(this + 12);
      v55 = *(this + 10);
      v56 = *(this + 251) == 1;
      v57 = *(this + 3328);
      v58 = *(this + 555) != 0;
      *v61 = 134219776;
      *&v61[4] = this;
      *&v61[12] = 2048;
      *&v61[14] = v55;
      v62 = 2048;
      v63 = v54;
      v64 = 2048;
      v65 = v53;
      v66 = 2048;
      *&v67 = v52;
      WORD4(v67) = 1024;
      *(&v67 + 10) = v56;
      HIWORD(v67) = 1024;
      v68 = v57;
      LOWORD(cf) = 1024;
      *(&cf + 2) = v58;
      _os_log_impl(&dword_19D52D000, v51, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::abort: Keeping network load alive due to keepalive option", v61, 0x46u);
LABEL_48:
      v59 = *(this + 518);
      ++*(v59 + 5);
      result = WebKit::NetworkConnectionToWebProcess::transferKeptAliveLoad(v59, this);
      if (*(v59 + 5) == 1)
      {
        return (*(*v59 + 8))(v59);
      }

      --*(v59 + 5);
      return result;
    }

    __break(0xC471u);
LABEL_58:
    JUMPOUT(0x19DCB49F8);
  }

  v11 = *(this + 584);
  *(this + 584) = 0;
  if (v11)
  {
    v12 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(this + 410);
      if (!v13)
      {
        __break(0xC471u);
        JUMPOUT(0x19DCB4A38);
      }

      v15 = *(this + 11);
      v14 = *(this + 12);
      v16 = *(this + 10);
      v17 = *(this + 251) == 1;
      v18 = *(this + 3328);
      v19 = *(this + 555) != 0;
      v20 = *(v11 + 40);
      *v61 = 134220032;
      *&v61[4] = this;
      *&v61[12] = 2048;
      *&v61[14] = v16;
      v62 = 2048;
      v63 = v15;
      v64 = 2048;
      v65 = v14;
      v66 = 2048;
      *&v67 = v13;
      WORD4(v67) = 1024;
      *(&v67 + 10) = v17;
      HIWORD(v67) = 1024;
      v68 = v18;
      LOWORD(cf) = 1024;
      *(&cf + 2) = v19;
      HIWORD(cf) = 2048;
      v70 = v20;
      _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::abort: Cancelling pending service worker fetch task (fetchIdentifier=%llu)", v61, 0x50u);
    }

    WebKit::ServiceWorkerFetchTask::cancelFromClient(v11);
    WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref((v11 + 8));
  }

  v21 = *(this + 519);
  if (v21)
  {
    ++*(v21 + 16);
    if (WebKit::NetworkResourceLoader::canUseCache(this, (v21 + 3328)) && (*(this + 4298) & 1) == 0)
    {
      v22 = *(this + 569);
      if (v22)
      {
        v23 = (v22 + 8);
        ++*(v22 + 8);
        WebKit::NetworkCache::Cache::remove(v22, (v21 + 3328));
        WTF::RefCounted<WebKit::NetworkCache::Cache>::deref(v23, v24);
      }

      else
      {
        WebKit::NetworkCache::Cache::remove(0, (v21 + 3328));
      }
    }

    v25 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(this + 410);
      if (!v26)
      {
        __break(0xC471u);
        JUMPOUT(0x19DCB4A18);
      }

      v28 = *(this + 11);
      v27 = *(this + 12);
      v29 = *(this + 10);
      v30 = *(this + 251) == 1;
      v31 = *(this + 3328);
      v32 = *(this + 555) != 0;
      *v61 = 134219776;
      *&v61[4] = this;
      *&v61[12] = 2048;
      *&v61[14] = v29;
      v62 = 2048;
      v63 = v28;
      v64 = 2048;
      v65 = v27;
      v66 = 2048;
      *&v67 = v26;
      WORD4(v67) = 1024;
      *(&v67 + 10) = v30;
      HIWORD(v67) = 1024;
      v68 = v31;
      LOWORD(cf) = 1024;
      *(&cf + 2) = v32;
      _os_log_impl(&dword_19D52D000, v25, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::abort: Cancelling network load", v61, 0x46u);
    }

    WebKit::NetworkLoad::cancel(v21);
    WTF::RefCounted<WebKit::NetworkLoad>::deref((v21 + 16), v33);
  }

  if (*(this + 555))
  {
    *v61 = 0;
    *&v61[8] = 0;
    WTF::URL::invalidate(&v61[8]);
    HIDWORD(v67) = 0;
    LOWORD(v68) = 3;
    cf = 0;
    LOBYTE(v70) = 1;
    v35 = *(this + 555);
    v36 = *v61;
    *(&v67 + 4) = 0;
    *v61 = 0;
    v37 = *(v35 + 472);
    *(v35 + 472) = v36;
    if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v37, v34);
    }

    WTF::URL::operator=(v35 + 480, &v61[8]);
    v39 = *(&v67 + 4);
    *(&v67 + 4) = 0;
    v40 = *(v35 + 520);
    *(v35 + 520) = v39;
    if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v40, v38);
    }

    *(v35 + 528) = HIDWORD(v67);
    *(v35 + 532) = v68;
    v41 = cf;
    cf = 0;
    v42 = *(v35 + 536);
    *(v35 + 536) = v41;
    if (v42)
    {
      CFRelease(v42);
      v60 = cf;
      *(v35 + 544) = v70;
      cf = 0;
      if (v60)
      {
        CFRelease(v60);
      }
    }

    else
    {
      *(v35 + 544) = v70;
      cf = 0;
    }

    v43 = *(&v67 + 4);
    *(&v67 + 4) = 0;
    if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v43, v38);
    }

    v44 = *&v61[8];
    *&v61[8] = 0;
    if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v44, v38);
    }

    v45 = *v61;
    *v61 = 0;
    if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v45, v38);
    }

    v46 = *(this + 555);
    WebCore::NetworkLoadMetrics::NetworkLoadMetrics(v61);
    WebKit::sendReplyToSynchronousRequest(v46, 0, v61);
    v48 = v72;
    v72 = 0;
    if (v48)
    {
      WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v48, v47);
    }

    v49 = v71;
    v71 = 0;
    if (v49)
    {
      if (atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v49, v47);
      }
    }
  }

  return WebKit::NetworkResourceLoader::cleanup(this, 3);
}

void *WebKit::sendReplyToSynchronousRequest(void *result, WebCore::FragmentedSharedBuffer *this, __int128 *a3)
{
  if (result[25])
  {
    v4 = result;
    v73 = 0;
    v74 = 0;
    if (this && *(this + 7))
    {
      WebCore::FragmentedSharedBuffer::makeContiguous(&v103, this);
      result = WebCore::SharedBuffer::span(v103);
      if (v5)
      {
        v6 = result;
        v7 = v5;
        v8 = HIDWORD(v74);
        v9 = v5 + HIDWORD(v74);
        if (v9 > v74)
        {
          v10 = v74 + (v74 >> 1);
          if (v10 <= v74 + 1)
          {
            v10 = v74 + 1;
          }

          if (v10 <= v9)
          {
            v10 = v5 + HIDWORD(v74);
          }

          if (v10 <= 0x10)
          {
            v11 = 16;
          }

          else
          {
            v11 = v10;
          }

          result = WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(&v73, v11);
          v8 = HIDWORD(v74);
        }

        if (v9 < v8)
        {
          __break(0xC471u);
          return result;
        }

        memcpy(v73 + v8, v6, v7);
        HIDWORD(v74) = v9;
      }

      v12 = v103;
      v103 = 0;
      if (v12 && atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v12 + 2);
        (*(*v12 + 8))(v12);
      }
    }

    v13 = WTF::fastMalloc(0x88);
    *v13 = 1;
    v15 = *a3;
    *(v13 + 24) = a3[1];
    *(v13 + 8) = v15;
    v16 = a3[2];
    v17 = a3[3];
    v18 = a3[4];
    *(v13 + 88) = *(a3 + 10);
    *(v13 + 72) = v18;
    *(v13 + 56) = v17;
    *(v13 + 40) = v16;
    v19 = *(a3 + 11);
    if (v19)
    {
      atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
    }

    *(v13 + 96) = v19;
    v20 = a3[6];
    *(v13 + 120) = *(a3 + 14);
    *(v13 + 104) = v20;
    v21 = *(a3 + 15);
    if (v21)
    {
      ++*v21;
    }

    *(v13 + 128) = v21;
    v22 = v4[40];
    v4[40] = v13;
    if (v22)
    {
      WTF::ThreadSafeRefCounted<WTF::Box<WebCore::NetworkLoadMetrics>::Data,(WTF::DestructionThread)0>::deref(v22, v14);
    }

    WebCore::ResourceResponse::ResourceResponse(&v46, (v4 + 26));
    v23 = v4[25];
    v4[25] = 0;
    v24 = v46;
    v46 = 0;
    v75 = v24;
    v25 = v47;
    v76 = v47;
    v77 = v48;
    v78 = v49;
    v79 = v50;
    v80 = v51;
    v81 = v52;
    v82 = v53;
    v26 = v47 & 0xFFFFFFFE;
    LODWORD(v47) = v47 & 0xFFFFFFFE;
    v27 = v54;
    v54 = 0;
    v83 = v27;
    v84 = v55;
    v28 = *&v56[0];
    v85 = v56[0];
    v29 = *(v56 + 8);
    v30 = *(&v56[1] + 1);
    memset(v56, 0, sizeof(v56));
    v31 = v57;
    v57 = 0;
    v32 = v58;
    v58 = 0;
    v33 = v59;
    v59 = 0;
    v34 = v60;
    v60 = 0;
    LOBYTE(v91) = 0;
    v92 = 0;
    if (v62 == 1)
    {
      v44 = v61;
      v61 = 0;
      v91 = v44;
      v92 = 1;
    }

    v93 = v63;
    v94 = v64;
    v98 = v68;
    v99 = v69;
    v100[0] = v70[0];
    *(v100 + 11) = *(v70 + 11);
    v96 = v66;
    v97 = v67;
    v35 = v65;
    v36 = v71;
    v65 = 0;
    v71 = 0;
    v95 = v35;
    v101 = v36;
    v102 = v72;
    v75 = 0;
    v103 = v24;
    v104 = v25;
    v105 = HIDWORD(v47);
    v106 = v48;
    v107 = v49;
    v108 = v50;
    v109 = v51;
    v110 = v52;
    v111 = v53;
    LODWORD(v76) = v26;
    v83 = 0;
    v112 = v27;
    v113 = v55;
    v114 = v28;
    v85 = 0uLL;
    v115 = v29;
    v86 = 0uLL;
    v116 = v30;
    v87 = 0;
    v117 = v31;
    v88 = 0;
    v118 = v32;
    v89 = 0;
    v119 = v33;
    v90 = 0;
    v120 = v34;
    LOBYTE(v121) = 0;
    v122 = 0;
    if (v62)
    {
      v45 = v91;
      v91 = 0;
      v121 = v45;
      v122 = 1;
    }

    v123 = v63;
    v124 = v64;
    v95 = 0;
    *(v130 + 11) = *(v70 + 11);
    v130[0] = v70[0];
    v129 = v69;
    v128 = v68;
    v126 = v66;
    v127 = v67;
    v125 = v35;
    cf = v36;
    v132 = v72;
    (*(*v23 + 16))(v23, v4 + 59, &v103, &v73);
    v38 = cf;
    cf = 0;
    if (v38)
    {
      CFRelease(v38);
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(&v103, v37);
    v101 = 0;
    WebCore::ResourceResponseBase::~ResourceResponseBase(&v75, v39);
    (*(*v23 + 8))(v23);
    v41 = v71;
    v71 = 0;
    if (v41)
    {
      CFRelease(v41);
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(&v46, v40);
    v43 = v4[25];
    v4[25] = 0;
    if (v43)
    {
      (*(*v43 + 8))(v43);
    }

    result = v73;
    if (v73)
    {
      v73 = 0;
      LODWORD(v74) = 0;
      return WTF::fastFree(result, v42);
    }
  }

  return result;
}

double WebKit::NetworkResourceLoader::computeResponseMetrics(WebKit::NetworkResourceLoader *this, const WebCore::ResourceResponse *a2, uint64_t a3)
{
  if (*(a2 + 3329))
  {
    *this = 0;
    *(this + 128) = 0;
  }

  else
  {
    WebCore::NetworkLoadMetrics::NetworkLoadMetrics(&v22);
    v7 = *(a3 + 112);
    if (v7)
    {
      v13 = *(v7 + 40);
      v14 = *(v7 + 56);
      v15 = *(v7 + 72);
      v16 = *(v7 + 96);
      v27 = *(v7 + 88);
      v17 = *(v7 + 24);
      v22 = *(v7 + 8);
      v23 = v17;
      v25 = v14;
      v26 = v15;
      v24 = v13;
      if (v16)
      {
        atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
      }

      v18 = v28;
      v28 = v16;
      if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v6);
      }

      v19 = *(v7 + 104);
      v20 = *(v7 + 128);
      v30 = *(v7 + 120);
      v29 = v19;
      if (v20)
      {
        ++*v20;
      }

      v21 = v31;
      v31 = v20;
      if (v21)
      {
        WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v21, v6);
      }
    }

    LOWORD(v29) = *(a2 + 1108);
    v8 = v25;
    *(this + 2) = v24;
    *(this + 3) = v8;
    *(this + 4) = v26;
    v9 = v23;
    *this = v22;
    *(this + 1) = v9;
    v10 = v28;
    *(this + 10) = v27;
    *(this + 11) = v10;
    result = *&v29;
    *(this + 6) = v29;
    v12 = v31;
    *(this + 14) = v30;
    *(this + 15) = v12;
    *(this + 128) = 1;
  }

  return result;
}

uint64_t WebKit::NetworkResourceLoader::transferToNewWebProcess(WebKit::NetworkResourceLoader *this, WebKit::NetworkConnectionToWebProcess *a2, const WebKit::NetworkResourceLoadParameters *a3)
{
  WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>::operator=(this + 518, a2);
  *(this + 410) = *(a3 + 400);
  *(this + 10) = *a3;
  *(this + 11) = *(a3 + 1);
  *(this + 12) = *(a3 + 2);
  *(this + 209) = *(a3 + 204);
  if (*(a3 + 205) != 0 && *(this + 210) != 0)
  {
    v14[0] = (a3 + 3280);
    v14[1] = (this + 3360);
    IPC::MessageSender::send<Messages::WebResourceLoader::UpdateResultingClientIdentifier>(this + 24, v14);
  }

  v6 = *(this + 585);
  if (v6)
  {
    v10 = *(v6 + 8);
    if (v10)
    {
      ++*(v10 + 8);
      v11 = WebKit::NetworkConnectionToWebProcess::swConnection(a2);
      if (v11)
      {
        v12 = v11;
        ++v11[4];
        WebKit::WebSWServerConnection::transferServiceWorkerLoadToNewWebProcess(v11, this, v10, (a3 + 24));
        if (v12[4] == 1)
        {
          (*(*v12 + 8))(v12);
        }

        else
        {
          --v12[4];
        }
      }

      WTF::RefCounted<WebCore::SWServerRegistration>::deref((v10 + 8));
    }
  }

  if (*(this + 586) == 0.0)
  {
    goto LABEL_6;
  }

  v14[0] = (this + 4688);
  v13 = *(this + 410);
  if (v13)
  {
    IPC::MessageSender::send<Messages::WebResourceLoader::SetWorkerStart>(this + 24, v14, v13);
LABEL_6:
    v7 = *(this + 5272);
    WebKit::NetworkResourceLoader::computeResponseMetrics(v14, this, this + 4160);
    v15 = this + 4160;
    v16 = v7;
    v17 = 1;
    v18 = v14;
    IPC::MessageSender::send<Messages::WebResourceLoader::DidReceiveResponse>(this + 24, &v15);
    return std::optional<WebCore::NetworkLoadMetrics>::~optional(v14, v8);
  }

  result = 157;
  __break(0xC471u);
  return result;
}

_DWORD **WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>::operator=(_DWORD **a1, _DWORD *a2)
{
  ++a2[5];
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    if (v3[5] == 1)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      --v3[5];
    }
  }

  return a1;
}

IPC::Encoder *IPC::MessageSender::send<Messages::WebResourceLoader::UpdateResultingClientIdentifier>(uint64_t a1, void *a2)
{
  v4 = (*(*a1 + 56))(a1);

  return IPC::MessageSender::send<Messages::WebResourceLoader::UpdateResultingClientIdentifier>(a1, a2, v4);
}

IPC::Encoder *IPC::MessageSender::send<Messages::WebResourceLoader::DidReceiveResponse>(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 56))(a1);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 3034;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  Messages::WebResourceLoader::DidReceiveResponse::encode<IPC::Encoder>(a2, v6);
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

uint64_t WebKit::NetworkResourceLoader::shouldInterruptLoadForXFrameOptions(WebKit::NetworkResourceLoader *this, atomic_uint **a2, const WTF::URL *a3)
{
  if (*(this + 251) == 1 && !*(this + 897))
  {
    return 0;
  }

  v6 = WebCore::parseXFrameOptionsHeader();
  v8 = 0;
  if (v6 > 3)
  {
    if (v6 == 4)
    {
      WTF::URL::stringCenterEllipsizedToLength(a3);
      v27 = *a2;
      if (*a2)
      {
        atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
      }

      v43 = v27;
      WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("Invalid 'X-Frame-Options' header encountered when loading '", 60, &v44, "': '", 5, &v43, "' is not a recognized directive. The header will be ignored.", 61, &v54);
      v29 = v43;
      v43 = 0;
      if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v29, v28);
      }

      v30 = v44;
      v44 = 0;
      if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v30, v28);
      }

      v47 = *(this + 12);
      if (*(this + 410))
      {
        v45 = *(this + 410);
        v46 = 1;
        v48 = &v47;
        v49 = 513;
        v50 = &v54;
        v51 = &v45;
        v31 = *(this + 11);
        v32 = IPC::Encoder::operator new(0x238, v28);
        *v32 = 2430;
        *(v32 + 2) = 0;
        *(v32 + 3) = 0;
        *(v32 + 1) = v31;
        *(v32 + 68) = 0;
        *(v32 + 70) = 0;
        *(v32 + 69) = 0;
        IPC::Encoder::encodeHeader(v32);
        v55 = v32;
        Messages::WebPage::AddConsoleMessage::encode<IPC::Encoder>(&v48, v32);
        (*(*(this + 3) + 32))(this + 24, &v55, 0);
        v34 = v55;
        v55 = 0;
        if (v34)
        {
          IPC::Encoder::~Encoder(v34, v33);
          bmalloc::api::tzoneFree(v41, v42);
        }

        v35 = v54;
        v54 = 0;
        if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v35, v33);
        }

        return 0;
      }

      __break(0xC471u);
LABEL_55:
      JUMPOUT(0x19DCB5830);
    }

    if (v6 != 5)
    {
      return v8;
    }

    v18 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
    }

    v53 = v18;
    WTF::URL::stringCenterEllipsizedToLength(a3);
    WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("Multiple 'X-Frame-Options' headers with conflicting values ('", 62, &v53, "') encountered when loading '", 30, &v52, "'. Falling back to 'DENY'.", 27, &v54);
    v20 = v52;
    v52 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v19);
    }

    v21 = v53;
    v53 = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v19);
    }

    v47 = *(this + 12);
    if (!*(this + 410))
    {
      __break(0xC471u);
      JUMPOUT(0x19DCB5850);
    }

    v45 = *(this + 410);
    v46 = 1;
    v48 = &v47;
    v49 = 513;
    v50 = &v54;
    v51 = &v45;
    v22 = *(this + 11);
    v23 = IPC::Encoder::operator new(0x238, v19);
    *v23 = 2430;
    *(v23 + 2) = 0;
    *(v23 + 3) = 0;
    *(v23 + 1) = v22;
    *(v23 + 68) = 0;
    *(v23 + 70) = 0;
    *(v23 + 69) = 0;
    IPC::Encoder::encodeHeader(v23);
    v55 = v23;
    Messages::WebPage::AddConsoleMessage::encode<IPC::Encoder>(&v48, v23);
    (*(*(this + 3) + 32))(this + 24, &v55, 0);
    v25 = v55;
    v55 = 0;
    if (v25)
    {
      IPC::Encoder::~Encoder(v25, v24);
      bmalloc::api::tzoneFree(v39, v40);
    }

    v26 = v54;
    v54 = 0;
    if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v26, v24);
    }

    return 1;
  }

  if (v6 == 1)
  {
    return 1;
  }

  if (v6 != 2)
  {
    return v8;
  }

  WebCore::SecurityOrigin::create(&v48, a3, v7);
  v9 = *(this + 897);
  if (!v9)
  {
    __break(0xC471u);
    goto LABEL_55;
  }

  v10 = *(*(this + 447) + 8 * v9 - 8);
  v8 = 1;
  atomic_fetch_add(v10, 1u);
  if (WebCore::SecurityOrigin::isSameSchemeHostPort(v48, v10))
  {
    v12 = *(this + 897);
    if (v12)
    {
      v13 = *(this + 447);
      v14 = 8 * v12 - 8;
      do
      {
        v15 = *v13++;
        isSameSchemeHostPort = WebCore::SecurityOrigin::isSameSchemeHostPort(v48, v15);
        if (isSameSchemeHostPort)
        {
          v17 = v14 == 0;
        }

        else
        {
          v17 = 1;
        }

        v14 -= 8;
      }

      while (!v17);
      v8 = isSameSchemeHostPort ^ 1u;
    }

    else
    {
      v8 = 0;
    }
  }

  WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v10, v11);
  v37 = v48;
  v48 = 0;
  if (v37)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v37, v36);
  }

  return v8;
}

IPC::Encoder *IPC::MessageSender::send<Messages::WebPage::AddConsoleMessage,WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 2430;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  Messages::WebPage::AddConsoleMessage::encode<IPC::Encoder>(a2, v6);
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

uint64_t WebKit::NetworkResourceLoader::shouldInterruptLoadForCSPFrameAncestorsOrXFrameOptions(WebKit::NetworkResourceLoader *this, const WebCore::ResourceResponse *a2)
{
  if ((*(*(this + 518) + 340) & 0x80) != 0)
  {
    return 0;
  }

  v4 = WebCore::ResourceResponseBase::mimeType(a2);
  if (WebCore::PreviewConverter::supportsMIMEType(v4, v5))
  {
    return 0;
  }

  v6 = WebCore::ResourceResponseBase::url(a2);
  v7 = *v6;
  if (*v6)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    v41 = v7;
    v8 = *(v6 + 24);
    v42 = *(v6 + 8);
    v43 = v8;
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  else
  {
    v41 = 0;
    v18 = *(v6 + 24);
    v42 = *(v6 + 8);
    v43 = v18;
  }

  v37 = v7;
  v38 = v42;
  v39 = v43;
  MEMORY[0x19EB09300](v40, &v37, this + 32, this + 72);
  v10 = v37;
  v37 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v9);
  }

  MEMORY[0x19EB0D930](&v37, a2);
  WebCore::ResourceRequestBase::httpReferrer(&v30, (this + 104));
  WebCore::ContentSecurityPolicy::didReceiveHeaders();
  v12 = v30;
  v30 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v11);
  }

  WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v37, v11);
  if (!WebCore::ContentSecurityPolicy::allowFrameAncestors() || (WebKit::NetworkResourceLoader::shouldInterruptNavigationForCrossOriginEmbedderPolicy(this, a2, v13) & 1) != 0)
  {
    goto LABEL_30;
  }

  if ((WebCore::ContentSecurityPolicy::overridesXFrameOptions(v40) & 1) != 0 || (WebCore::ResourceResponseBase::httpHeaderField(), !v36))
  {
LABEL_11:
    v14 = 0;
    goto LABEL_12;
  }

  v19 = WebCore::ResourceResponseBase::url(a2);
  if (!WebKit::NetworkResourceLoader::shouldInterruptLoadForXFrameOptions(this, &v36, v19))
  {
    v29 = v36;
    v36 = 0;
    if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v29, v20);
    }

    goto LABEL_11;
  }

  v21 = WebCore::ResourceResponseBase::url(a2);
  WTF::URL::stringCenterEllipsizedToLength(v21);
  v22 = v36;
  if (v36)
  {
    atomic_fetch_add_explicit(v36, 2u, memory_order_relaxed);
  }

  v33 = v22;
  WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("Refused to display '", 21, &v34, "' in a frame because it set 'X-Frame-Options' to '", 51, &v33, "'.", 3, &v35);
  v24 = v33;
  v33 = 0;
  if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v24, v23);
  }

  v25 = v34;
  v34 = 0;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v23);
  }

  v32 = *(this + 12);
  if (*(this + 410))
  {
    v30 = *(this + 410);
    v31 = 1;
    v37 = &v32;
    LOWORD(v38) = 520;
    *(&v38 + 1) = &v35;
    *&v39 = &v30;
    IPC::MessageSender::send<Messages::WebPage::AddConsoleMessage,WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>(this + 24, &v37, *(this + 11));
    v27 = v35;
    v35 = 0;
    if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v27, v26);
    }

    v28 = v36;
    v36 = 0;
    if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v28, v26);
    }

LABEL_30:
    v14 = 1;
LABEL_12:
    MEMORY[0x19EB09310](v40);
    v16 = v41;
    v41 = 0;
    if (v16)
    {
      if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v15);
      }
    }

    return v14;
  }

  result = 157;
  __break(0xC471u);
  return result;
}

uint64_t WebKit::NetworkResourceLoader::shouldInterruptNavigationForCrossOriginEmbedderPolicy(WebKit::NetworkResourceLoader *this, const WebCore::ResourceResponse *a2, const WebCore::ScriptExecutionContext *a3)
{
  if ((*(this + 3488) & 1) != 0 || *(this + 3489) == 1)
  {
    v5 = WebCore::obtainCrossOriginEmbedderPolicy(&v28, a2, 0, a3);
    v7 = v28;
    if (*(this + 3489) == 1)
    {
      if (v28)
      {
        v8 = 1;
LABEL_5:
        v9 = v30;
        v30 = 0;
        if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, v6);
        }

        v10 = v29;
        v29 = 0;
        if (v10)
        {
          if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v10, v6);
          }
        }

        return !v8;
      }

      if ((*(this + 3416) & 1) == 0)
      {
        WTF::aboutBlankURL(v5);
      }

      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WebCore::sendCOEPInheritenceViolation();
      v18 = v22;
      v22 = 0;
      if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v6);
      }

      v7 = v28;
    }

    v8 = 1;
    if (*(this + 3488) == 1 && (v7 & 1) == 0)
    {
      v12 = WebCore::ResourceResponseBase::url(a2);
      WTF::URL::stringCenterEllipsizedToLength(v12);
      WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("Refused to display '", 21, &v26, "' in a frame because of Cross-Origin-Embedder-Policy.", 54, &v27);
      v14 = v26;
      v26 = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v13);
      }

      v21 = *(this + 12);
      if (!*(this + 410))
      {
        result = 157;
        __break(0xC471u);
        return result;
      }

      v19 = *(this + 410);
      v20 = 1;
      v22 = &v21;
      v23 = 520;
      v24 = &v27;
      v25 = &v19;
      v15 = IPC::MessageSender::send<Messages::WebPage::AddConsoleMessage,WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>(this + 24, &v22, *(this + 11));
      if ((*(this + 3416) & 1) == 0)
      {
        WTF::aboutBlankURL(v15);
      }

      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WebCore::sendCOEPInheritenceViolation();
      v16 = v22;
      v22 = 0;
      if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v6);
      }

      v17 = v27;
      v27 = 0;
      if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v6);
      }

      v8 = 0;
    }

    goto LABEL_5;
  }

  return 0;
}

void WebKit::NetworkResourceLoader::doCrossOriginOpenerHandlingOfResponse(atomic_uint **this@<X0>, const WebCore::ResourceResponse *a2@<X1>, _BYTE *a3@<X8>)
{
  v43 = *MEMORY[0x1E69E9840];
  if (*(this + 251) == 1 && !*(this + 897) && (this[458] & 1) != 0)
  {
    WebCore::ResourceResponseBase::httpHeaderField();
    v7 = v32;
    v32 = 0;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v6);
      }

      v17 = WebCore::ResourceResponseBase::url(a2);
      v18 = *v17;
      if (*v17)
      {
        atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
      }

      v32 = v18;
      v19 = *(v17 + 24);
      *v33 = *(v17 + 8);
      *&v33[16] = v19;
      v39 = this;
      std::make_unique[abi:sn200100]<WebCore::ContentSecurityPolicy,WTF::URL,decltype(nullptr),WebKit::NetworkResourceLoader *,0>(&v40, &v32, &v39);
      v8 = v40;
      v21 = v32;
      v32 = 0;
      if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v21, v20);
      }

      MEMORY[0x19EB0D930](&v32, a2);
      WebCore::ResourceRequestBase::httpReferrer(&v40, (this + 13));
      WebCore::ContentSecurityPolicy::didReceiveHeaders();
      v23 = v40;
      v40 = 0;
      if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v22);
      }

      v7 = WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v32, v22);
    }

    else
    {
      v8 = 0;
    }

    if ((this[636] & 1) == 0)
    {
      v9 = this[39];
      if (v9)
      {
        atomic_fetch_add(v9, 1u);
        v40 = v9;
      }

      else
      {
        WebCore::SecurityOrigin::createOpaque(&v40, v7);
      }

      v41[0] = 0;
      v42 = 0;
      if (*(this + 3984) == 1)
      {
        WebCore::NavigationRequester::NavigationRequester(v41, (this + 470));
        v42 = 1;
      }

      WebCore::CrossOriginOpenerPolicyEnforcementResult::from();
      std::optional<WebCore::CrossOriginOpenerPolicyEnforcementResult>::operator=[abi:sn200100]<WebCore::CrossOriginOpenerPolicyEnforcementResult,void>((this + 626), &v32);
      WebCore::CrossOriginOpenerPolicyEnforcementResult::~CrossOriginOpenerPolicyEnforcementResult(&v32, v10);
      if (v42 == 1)
      {
        WebCore::NavigationRequester::~NavigationRequester(v41, v11);
      }

      v12 = v40;
      v40 = 0;
      if (v12)
      {
        WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v12, v11);
      }
    }

    if (v8)
    {
      atomic_fetch_add(v8, 1u);
    }

    WebCore::ResourceRequestBase::httpReferrer(&v40, (this + 13));
    if ((this[636] & 1) == 0)
    {
      __break(1u);
    }

    WebCore::doCrossOriginOpenerHandlingOfResponse();
    std::__optional_storage_base<WebCore::CrossOriginOpenerPolicyEnforcementResult,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::CrossOriginOpenerPolicyEnforcementResult,false>>((this + 626), &v32);
    std::optional<WebCore::CrossOriginOpenerPolicyEnforcementResult>::~optional(&v32, v13);
    v15 = v40;
    v40 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v14);
    }

    if (v8)
    {
      if (!atomic_load(v8))
      {
        __break(0xC471u);
        return;
      }

      atomic_fetch_add(v8, 0xFFFFFFFF);
    }

    if (this[636])
    {
      *a3 = 0;
      a3[80] = 0;
    }

    else
    {
      WTF::String::String(&v40, *MEMORY[0x1E69E26C8], *(MEMORY[0x1E69E26C8] + 8));
      v24 = WebCore::ResourceResponseBase::url(a2);
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v25 = v32;
      v26 = v40;
      if (v40)
      {
        atomic_fetch_add_explicit(v40, 2u, memory_order_relaxed);
      }

      v32 = v26;
      v27 = *v24;
      if (*v24)
      {
        atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
      }

      *v33 = v27;
      v28 = *(v24 + 8);
      *&v33[24] = *(v24 + 24);
      *&v33[8] = v28;
      if (v25)
      {
        atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
      }

      v34 = v25;
      v35 = 0;
      v36 = 2;
      v37 = 0;
      v38 = 1;
      _ZNSt3__127__optional_copy_assign_baseIN7WebCore13ResourceErrorELb0EECI2NS_24__optional_destruct_baseIS2_Lb0EEEIJS2_EEENS_10in_place_tEDpOT_(a3, &v32);
      WebCore::ResourceError::~ResourceError(&v32, v29);
      if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v30);
      }

      v31 = v40;
      v40 = 0;
      if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v31, v30);
      }
    }

    if (v8)
    {
      WebCore::ContentSecurityPolicy::operator delete();
    }
  }

  else
  {
    *a3 = 0;
    a3[80] = 0;
  }
}

void std::optional<WebCore::CrossOriginOpenerPolicyEnforcementResult>::operator=[abi:sn200100]<WebCore::CrossOriginOpenerPolicyEnforcementResult,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 80) == 1)
  {
    WebCore::CrossOriginOpenerPolicyEnforcementResult::operator=(a1, a2);
  }

  else
  {
    WebCore::CrossOriginOpenerPolicyEnforcementResult::CrossOriginOpenerPolicyEnforcementResult(a1, a2);
    *(v2 + 80) = 1;
  }
}

void WebCore::CrossOriginOpenerPolicyEnforcementResult::~CrossOriginOpenerPolicyEnforcementResult(WebCore::CrossOriginOpenerPolicyEnforcementResult *this, WTF::StringImpl *a2)
{
  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 5);
  *(this + 5) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v5, a2);
  }

  v6 = *this;
  *this = 0;
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }
  }
}

uint64_t WebKit::NetworkResourceLoader::processClearSiteDataHeader(WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(void)> &&)::$_0::~$_0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t IPC::Connection::sendWithAsyncReply<Messages::NetworkProcessProxy::DeleteWebsiteDataInWebProcessesForOrigin,WebKit::NetworkResourceLoader::processClearSiteDataHeader(WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(void)> &&)::$_2>(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  *a3 = 0;
  v6 = WTF::fastMalloc(0x10);
  *v6 = &unk_1F11034A0;
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
    *v10 = 529;
    *(v10 + 68) = 0;
    *(v10 + 70) = 0;
    *(v10 + 69) = 0;
    *(v10 + 2) = 0;
    *(v10 + 3) = 0;
    *(v10 + 1) = 0;
    IPC::Encoder::encodeHeader(v10);
    v17 = v10;
    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v10, **a2);
    IPC::ArgumentCoder<WebCore::ClientOrigin,void>::encode(v10, *(a2 + 8));
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, **(a2 + 16));
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, **(a2 + 24));
    v16[0] = v7;
    v16[1] = IdentifierInternal;
    IPC::Connection::sendMessageWithAsyncReply(a1, &v17, v16, 0, 0);
    v12 = v16[0];
    v16[0] = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    result = v17;
    v17 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v11);
      return bmalloc::api::tzoneFree(v14, v15);
    }
  }

  return result;
}

uint64_t IPC::Connection::sendWithAsyncReply<Messages::NetworkProcessProxy::ReloadExecutionContextsForOrigin,WebKit::NetworkResourceLoader::processClearSiteDataHeader(WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(void)> &&)::$_3>(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  *a3 = 0;
  v6 = WTF::fastMalloc(0x10);
  *v6 = &unk_1F11034C8;
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
    *v10 = 550;
    *(v10 + 68) = 0;
    *(v10 + 70) = 0;
    *(v10 + 69) = 0;
    *(v10 + 2) = 0;
    *(v10 + 3) = 0;
    *(v10 + 1) = 0;
    IPC::Encoder::encodeHeader(v10);
    v17 = v10;
    IPC::ArgumentCoder<WebCore::ClientOrigin,void>::encode(v10, *a2);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, **(a2 + 8));
    IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v10, *(a2 + 16));
    v16[0] = v7;
    v16[1] = IdentifierInternal;
    IPC::Connection::sendMessageWithAsyncReply(a1, &v17, v16, 0, 0);
    v12 = v16[0];
    v16[0] = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    result = v17;
    v17 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v11);
      return bmalloc::api::tzoneFree(v14, v15);
    }
  }

  return result;
}

uint64_t WebKit::NetworkResourceLoader::didReceiveInformationalResponse(uint64_t a1, WebCore::ResourceResponseBase *this)
{
  result = WebCore::ResourceResponseBase::httpStatusCode(this);
  if (result == 103)
  {
    v6 = *(a1 + 4632);
    if (!v6)
    {
      if (WebKit::EarlyHintsResourceLoader::s_heapRef)
      {
        NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::EarlyHintsResourceLoader::s_heapRef, v5);
      }

      else
      {
        NonCompact = WebKit::EarlyHintsResourceLoader::operatorNewSlow(0x18);
      }

      v6 = NonCompact;
      *NonCompact = &unk_1F10FF518;
      WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
      v8 = *(a1 + 8);
      if (v8)
      {
        atomic_fetch_add(v8, 1u);
      }

      *(v6 + 8) = v8;
      *(v6 + 16) = 0;
      v9 = *(a1 + 4632);
      *(a1 + 4632) = v6;
      if (v9)
      {
        (*(*v9 + 16))(v9);
        v6 = *(a1 + 4632);
      }
    }

    return WebKit::EarlyHintsResourceLoader::handleEarlyHintsResponse(v6, this);
  }

  return result;
}

WTF::StringImpl *WebKit::NetworkResourceLoader::didReceiveResponse(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v5 = a1;
  v242 = *MEMORY[0x1E69E9840];
  v6 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    log = v6;
    v7 = *(v5 + 3280);
    if (!v7)
    {
      __break(0xC471u);
      goto LABEL_248;
    }

    v9 = *(v5 + 88);
    v8 = *(v5 + 96);
    v10 = *(v5 + 80);
    v11 = *(v5 + 251) == 1;
    v197 = *(v5 + 3328);
    v12 = *(v5 + 4440) != 0;
    v13 = WebCore::ResourceResponseBase::httpStatusCode(a2);
    WebCore::ResourceResponseBase::mimeType(a2);
    WTF::String::utf8();
    if (*v215)
    {
      v14 = *v215 + 16;
    }

    else
    {
      v14 = 0;
    }

    v15 = WebCore::ResourceResponseBase::expectedContentLength(a2);
    v16 = *(v5 + 4568) != 0;
    v17 = *(v5 + 4600) != 0;
    *buf = 134221058;
    *&buf[4] = v5;
    *&buf[12] = 2048;
    *&buf[14] = v10;
    *&buf[22] = 2048;
    *&buf[24] = v9;
    *v229 = 2048;
    *&v229[2] = v8;
    *&v229[10] = 2048;
    *&v229[12] = v7;
    *&v229[20] = 1024;
    *&v229[22] = v11;
    *&v229[26] = 1024;
    *&v229[28] = v197;
    *v230 = 1024;
    *&v230[2] = v12;
    *&v230[6] = 1024;
    *&v230[8] = v13;
    *&v230[12] = 2082;
    *&v230[14] = v14;
    *&v230[22] = 2048;
    *&v230[24] = v15;
    LOWORD(v231) = 1024;
    *(&v231 + 2) = v16;
    HIWORD(v231) = 1024;
    LODWORD(v232) = v17;
    _os_log_impl(&dword_19D52D000, log, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::didReceiveResponse: (httpStatusCode=%d, MIMEType=%{public}s, expectedContentLength=%lld, hasCachedEntryForValidation=%d, hasNetworkLoadChecker=%d)", buf, 0x6Cu);
    v19 = *v215;
    *v215 = 0;
    if (v19)
    {
      if (*v19 == 1)
      {
        WTF::fastFree(v19, v18);
      }

      else
      {
        --*v19;
      }
    }

    v5 = a1;
  }

  v20 = *(v5 + 5096);
  if (v20)
  {
    ++*(v20 + 8);
    v80 = WebCore::ContentFilter::continueAfterResponseReceived();
    v81 = *(v20 + 8);
    if (!v81)
    {
      __break(0xC471u);
      JUMPOUT(0x19DCB8298);
    }

    *(v20 + 8) = v81 - 1;
    if ((v80 & 1) == 0)
    {
      v82 = *a4;
      *a4 = 0;
      (*(*v82 + 16))(v82, 2);
      return (*(*v82 + 8))(v82);
    }
  }

  if (*(v5 + 251) == 1)
  {
    WebKit::NetworkResourceLoader::didReceiveMainResourceResponse(v5, a2);
  }

  v21 = v5 + 4096;
  WebCore::ResourceResponseBase::operator=(v5 + 4160, a2);
  v22 = *(a2 + 248);
  *(a2 + 248) = 0;
  v23 = *(v5 + 4408);
  *(v5 + 4408) = v22;
  if (v23)
  {
    CFRelease(v23);
  }

  *(v5 + 4416) = *(a2 + 256);
  *(v5 + 5272) = a3;
  if ((*(v5 + 4976) & 1) == 0)
  {
    v24 = WebCore::ResourceResponseBase::url((v5 + 4160));
    WTF::String::operator=((v5 + 4968), v24);
    v25 = *(v24 + 24);
    *(v5 + 4976) = *(v24 + 8);
    *(v5 + 4992) = v25;
  }

  v26 = *(v5 + 4144);
  ++*(v26 + 20);
  v27 = *(v5 + 4600);
  if (v27)
  {
    ++*(v27 + 8);
    if (*(v5 + 4624) == 1)
    {
      WebCore::NetworkLoadInformation::NetworkLoadInformation(buf, v27 + 536);
      WebCore::ResourceResponse::operator=(&v238, v5 + 4160);
      v95 = *(v5 + 3280);
      if (!v95)
      {
        __break(0xC471u);
        JUMPOUT(0x19DCB82D8);
      }

      WebKit::NetworkConnectionToWebProcess::addNetworkLoadInformation(v26, v95, buf);
      WebCore::NetworkLoadInformation::~NetworkLoadInformation(buf, v96);
    }
  }

  WebCore::ResourceResponseBase::url((v5 + 4160));
  if (WTF::URL::protocolIs())
  {
    v89 = *(v26 + 88);
    *buf = *(v26 + 96);
    v90 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v89 + 240), buf);
    if (v90)
    {
      v91 = v90;
      ++*(v90 + 16);
      WebKit::NetworkResourceLoader::computeResponseMetrics(buf, v5, v5 + 4160);
      if (BYTE8(v233) == 1)
      {
        WebKit::NetworkSession::recordHTTPSConnectionTiming(v91, buf);
      }

      std::optional<WebCore::NetworkLoadMetrics>::~optional(buf, v92);
      v93 = *(v91 + 4);
      if (!v93)
      {
        __break(0xC471u);
        JUMPOUT(0x19DCB82B8);
      }

      *(v91 + 4) = v93 - 1;
    }
  }

  WebKit::NetworkResourceLoader::resourceLoadInfo(v221, v5);
  if (!*(v5 + 4424) && WebCore::ResourceResponseBase::expectedContentLength((v5 + 4160)) > 0x100000 && (HIBYTE(v227) == 13 || HIBYTE(v227) == 4))
  {
    v78 = WebCore::ResourceResponseBase::mimeType((v5 + 4160));
    if (WebKit::NetworkResourceLoader::didReceiveResponse(WebCore::ResourceResponse &&,WebKit::PrivateRelayed,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_1::operator()(v78))
    {
      WebCore::SharedBufferBuilder::empty((v5 + 4424));
      *(v5 + 3320) = 0x3FA999999999999ALL;
    }
  }

  if (!*(v5 + 4440))
  {
    v28 = WebCore::ResourceResponseBase::mimeType((v5 + 4160));
    if (MEMORY[0x19EB01EF0](*v28, "multipart/x-mixed-replace", 25))
    {
      v97 = *(v5 + 4424);
      *(v5 + 4424) = 0;
      if (v97)
      {
        if (atomic_fetch_add(v97 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v97 + 2);
          (*(*v97 + 8))(v97);
        }
      }
    }
  }

  v29 = WebCore::ResourceResponseBase::mimeType((v5 + 4160));
  if (MEMORY[0x19EB01EF0](*v29, "multipart/x-mixed-replace", 25))
  {
    v94 = *(v5 + 4560);
    *(v5 + 4560) = 0;
    if (v94)
    {
      if (atomic_fetch_add(v94 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v94 + 2);
        (*(*v94 + 8))(v94);
      }
    }
  }

  if (!*(v5 + 4568))
  {
    goto LABEL_58;
  }

  v30 = WebCore::ResourceResponseBase::httpStatusCode((v5 + 4160));
  v31 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v198 = v27;
    loga = v26;
    v32 = *(v5 + 3280);
    if (!v32)
    {
      __break(0xC471u);
      JUMPOUT(0x19DCB8278);
    }

    v34 = *(v5 + 88);
    v33 = *(v5 + 96);
    v35 = *(v5 + 80);
    v36 = *(v5 + 251) == 1;
    v37 = *(v5 + 3328);
    v38 = *(v5 + 4440) != 0;
    isConditional = WebCore::ResourceRequestBase::isConditional((v5 + 104));
    *buf = 134220288;
    *&buf[4] = v5;
    *&buf[12] = 2048;
    *&buf[14] = v35;
    *&buf[22] = 2048;
    *&buf[24] = v34;
    *v229 = 2048;
    *&v229[2] = v33;
    *&v229[10] = 2048;
    *&v229[12] = v32;
    *&v229[20] = 1024;
    *&v229[22] = v36;
    *&v229[26] = 1024;
    *&v229[28] = v37;
    *v230 = 1024;
    *&v230[2] = v38;
    *&v230[6] = 1024;
    *&v230[8] = v30 == 304;
    *&v230[12] = 1024;
    *&v230[14] = isConditional;
    _os_log_impl(&dword_19D52D000, v31, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::didReceiveResponse: Received revalidation response (validationSucceeded=%d, wasOriginalRequestConditional=%d)", buf, 0x52u);
    v27 = v198;
    v26 = loga;
    v21 = v5 + 4096;
  }

  if (v30 == 304)
  {
    v40 = *(v5 + 4552);
    if (v40)
    {
      ++*(v40 + 8);
    }

    WebKit::NetworkCache::Cache::update(v40, (v5 + 104), *(v5 + 4568), (v5 + 4160), *(v21 + 1176), buf);
    v41 = *buf;
    *buf = 0;
    std::unique_ptr<WebKit::NetworkCache::Entry>::reset[abi:sn200100]((v5 + 4568), v41);
    v43 = *buf;
    *buf = 0;
    if (v43)
    {
      WebKit::NetworkCache::Entry::~Entry(v43, v42);
      bmalloc::api::tzoneFree(v83, v84);
    }

    if (v40)
    {
      WTF::RefCounted<WebKit::NetworkCache::Cache>::deref((v40 + 8), v42);
    }

    if (WebCore::ResourceRequestBase::isConditional((v5 + 104)))
    {
      WebCore::ResourceResponseBase::httpHeaderField();
      if (*buf && *(*buf + 4))
      {
        WebCore::ResourceResponseBase::setHTTPHeaderField();
      }

      WebCore::ResourceResponseBase::httpHeaderField();
      if (*v215 && *(*v215 + 4))
      {
        WebCore::ResourceResponseBase::setHTTPHeaderField();
      }

      std::unique_ptr<WebKit::NetworkCache::Entry>::reset[abi:sn200100]((v5 + 4568), 0);
      v45 = *v215;
      *v215 = 0;
      if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v45, v44);
      }

      v46 = *buf;
      *buf = 0;
      if (v46 && atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v46, v44);
      }
    }
  }

  else
  {
    std::unique_ptr<WebKit::NetworkCache::Entry>::reset[abi:sn200100]((v5 + 4568), 0);
  }

  if (!*(v5 + 4568))
  {
LABEL_58:
    if (v27)
    {
      v47 = *(v5 + 4152);
      v48 = v47 ? v47 + 3328 : v5 + 104;
      WebKit::NetworkLoadChecker::validateResponse(v27, v48, (v5 + 4160), v215);
      v50 = v219;
      if (v219)
      {
        v98 = qword_1ED6416F0;
        v99 = os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_ERROR);
        if (v99)
        {
          v199 = v27;
          logb = v26;
          v166 = *(v5 + 3280);
          if (!v166)
          {
            __break(0xC471u);
            JUMPOUT(0x19DCB8338);
          }

          v168 = *(a1 + 88);
          v167 = *(a1 + 96);
          v169 = *(a1 + 80);
          v170 = *(a1 + 251) == 1;
          v195 = *(a1 + 3328);
          v171 = *(a1 + 4440) != 0;
          MEMORY[0x19EB12BA0](v215);
          WTF::String::utf8();
          if (v239)
          {
            v172 = v239 + 16;
          }

          else
          {
            v172 = 0;
          }

          MEMORY[0x19EB12BA0](v215);
          *buf = 134220290;
          *&buf[4] = a1;
          *&buf[12] = 2048;
          *&buf[14] = v169;
          *&buf[22] = 2048;
          *&buf[24] = v168;
          *v229 = 2048;
          *&v229[2] = v167;
          *&v229[10] = 2048;
          *&v229[12] = v166;
          *&v229[20] = 1024;
          *&v229[22] = v170;
          *&v229[26] = 1024;
          *&v229[28] = v195;
          *v230 = 1024;
          *&v230[2] = v171;
          *&v230[6] = 2082;
          *&v230[8] = v172;
          *&v230[16] = 1024;
          *&v230[18] = *&v218[24];
          _os_log_error_impl(&dword_19D52D000, v98, OS_LOG_TYPE_ERROR, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::didReceiveResponse: NetworkLoadChecker::validateResponse returned an error (error.domain=%{public}s, error.code=%d)", buf, 0x56u);
          v99 = v239;
          *&v239 = 0;
          if (v99)
          {
            if (*v99 == 1)
            {
              v99 = WTF::fastFree(v99, v173);
            }

            else
            {
              --*v99;
            }
          }

          v27 = v199;
          v26 = logb;
          v5 = a1;
        }

        WTF::RunLoop::mainSingleton(v99);
        ++*(v5 + 20);
        *buf = v5;
        WebCore::ResourceError::ResourceError(&buf[8], v215);
        WTF::Function<void ()(void)>::Function<WebKit::NetworkResourceLoader::didReceiveResponse(WebCore::ResourceResponse &&,WebKit::PrivateRelayed,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_2,void>(&v239, buf);
        WTF::RunLoop::dispatch();
        v101 = v239;
        *&v239 = 0;
        if (v101)
        {
          (*(*v101 + 8))(v101);
        }

        WebKit::NetworkResourceLoader::didReceiveResponse(WebCore::ResourceResponse &&,WebKit::PrivateRelayed,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_2::~$_2(buf, v100);
        v102 = *a4;
        *a4 = 0;
        (*(*v102 + 16))(v102, 2);
        (*(*v102 + 8))(v102);
      }

      else
      {
        v51 = *(v5 + 4152);
        if (v51)
        {
          v52 = (v51 + 16);
          ++*(v51 + 16);
          if (*(v27 + 1168) == 1)
          {
            WebKit::NetworkLoad::setTimingAllowFailedFlag(v51);
          }

          WTF::RefCounted<WebKit::NetworkLoad>::deref(v52, v49);
        }
      }

      v53 = cf;
      cf = 0;
      if (v53)
      {
        CFRelease(v53);
      }

      v54 = *&v218[16];
      *&v218[16] = 0;
      if (v54 && atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v54, v49);
      }

      v55 = *&v215[8];
      *&v215[8] = 0;
      if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v55, v49);
      }

      v56 = *v215;
      *v215 = 0;
      if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v56, v49);
      }

      if (v50)
      {
        goto LABEL_59;
      }
    }

    WebKit::NetworkResourceLoader::initializeReportingEndpoints(v5, (v5 + 4160));
    if (*(v5 + 251) == 1 && WebKit::NetworkResourceLoader::shouldInterruptLoadForCSPFrameAncestorsOrXFrameOptions(v5, (v5 + 4160)))
    {
      v85 = qword_1ED6416F0;
      if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_ERROR))
      {
        v181 = *(v5 + 3280);
        if (!v181)
        {
          __break(0xC471u);
          JUMPOUT(0x19DCB8378);
        }

        v182 = *(v5 + 96);
        v184 = *(v5 + 80);
        v183 = *(v5 + 88);
        v185 = *(v5 + 251) == 1;
        v186 = *(v5 + 3328);
        v187 = *(v5 + 4440) != 0;
        *buf = 134219776;
        *&buf[4] = v5;
        *&buf[12] = 2048;
        *&buf[14] = v184;
        *&buf[22] = 2048;
        *&buf[24] = v183;
        *v229 = 2048;
        *&v229[2] = v182;
        *&v229[10] = 2048;
        *&v229[12] = v181;
        *&v229[20] = 1024;
        *&v229[22] = v185;
        *&v229[26] = 1024;
        *&v229[28] = v186;
        *v230 = 1024;
        *&v230[2] = v187;
        _os_log_error_impl(&dword_19D52D000, v85, OS_LOG_TYPE_ERROR, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::didReceiveResponse: Interrupting main resource load due to CSP frame-ancestors or X-Frame-Options", buf, 0x46u);
      }

      WebCore::ResourceResponse::ResourceResponse(v215, (v5 + 4160));
      WebKit::NetworkResourceLoader::sanitizeResponseIfPossible(buf, v5, v215);
      WebCore::ResourceResponse::~ResourceResponse(v215, v86);
      *v215 = buf;
      IPC::MessageSender::send<Messages::WebResourceLoader::StopLoadingAfterXFrameOptionsOrContentSecurityPolicyDenied>(v5 + 24, v215);
      v87 = *a4;
      *a4 = 0;
      (*(*v87 + 16))(v87, 2);
      (*(*v87 + 8))(v87);
      WebCore::ResourceResponse::~ResourceResponse(buf, v88);
      goto LABEL_59;
    }

    if (*(v5 + 3328) == 20 && ((*(v5 + 3512) & 1) != 0 || *(v5 + 3513) == 1))
    {
      v142 = WebCore::obtainCrossOriginEmbedderPolicy(v215, (v5 + 4160), 0, v59);
      v144 = v215[0];
      if (*(v5 + 3513) == 1 && (v215[0] & 1) == 0)
      {
        if ((*(v5 + 3456) & 1) == 0)
        {
          WTF::aboutBlankURL(v142);
        }

        WTF::StringImpl::createWithoutCopyingNonEmpty();
        WebCore::sendCOEPInheritenceViolation();
        v151 = *buf;
        *buf = 0;
        if (v151 && atomic_fetch_add_explicit(v151, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v151, v143);
        }

        v144 = v215[0];
      }

      if (*(v5 + 3512) == 1 && (v144 & 1) == 0)
      {
        v152 = WebCore::ResourceResponseBase::url((v5 + 4160));
        WTF::URL::stringCenterEllipsizedToLength(v152);
        WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("Refused to load '", 18, &v205, "' worker because of Cross-Origin-Embedder-Policy.", 50, &v210);
        v154 = v205;
        v205 = 0;
        if (v154 && atomic_fetch_add_explicit(v154, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v154, v153);
        }

        v209 = *(v5 + 96);
        if (!*(v5 + 3280))
        {
          __break(0xC471u);
          JUMPOUT(0x19DCB8318);
        }

        *&v239 = *(v5 + 3280);
        BYTE8(v239) = 1;
        *buf = &v209;
        *&buf[8] = 520;
        *&buf[16] = &v210;
        *&buf[24] = &v239;
        v155 = IPC::MessageSender::send<Messages::WebPage::AddConsoleMessage,WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>(v5 + 24, buf, *(v5 + 88));
        if ((*(v5 + 3456) & 1) == 0)
        {
          WTF::aboutBlankURL(v155);
        }

        WTF::StringImpl::createWithoutCopyingNonEmpty();
        WebCore::sendCOEPInheritenceViolation();
        v157 = *buf;
        *buf = 0;
        if (v157 && atomic_fetch_add_explicit(v157, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v157, v156);
        }

        v158 = v210;
        v210 = 0;
        if (v158 && atomic_fetch_add_explicit(v158, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v158, v156);
        }

        WebCore::CrossOriginOpenerPolicy::~CrossOriginOpenerPolicy(v215, v156);
        v159 = qword_1ED6416F0;
        v160 = os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_ERROR);
        if (!v160)
        {
          goto LABEL_203;
        }

        v188 = *(v5 + 3280);
        if (v188)
        {
          v190 = *(v5 + 88);
          v189 = *(v5 + 96);
          v191 = *(v5 + 80);
          v192 = *(v5 + 251) == 1;
          v193 = *(v5 + 3328);
          v194 = *(v5 + 4440) != 0;
          *buf = 134219776;
          *&buf[4] = v5;
          *&buf[12] = 2048;
          *&buf[14] = v191;
          *&buf[22] = 2048;
          *&buf[24] = v190;
          *v229 = 2048;
          *&v229[2] = v189;
          *&v229[10] = 2048;
          *&v229[12] = v188;
          *&v229[20] = 1024;
          *&v229[22] = v192;
          *&v229[26] = 1024;
          *&v229[28] = v193;
          *v230 = 1024;
          *&v230[2] = v194;
          _os_log_error_impl(&dword_19D52D000, v159, OS_LOG_TYPE_ERROR, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::didReceiveResponse: Interrupting worker load due to Cross-Origin-Opener-Policy", buf, 0x46u);
LABEL_203:
          WTF::RunLoop::mainSingleton(v160);
          ++*(v5 + 20);
          *buf = v5;
          v161 = WebCore::ResourceResponseBase::url((v5 + 4160));
          v162 = *v161;
          if (*v161)
          {
            atomic_fetch_add_explicit(v162, 2u, memory_order_relaxed);
          }

          *&buf[8] = v162;
          v163 = *(v161 + 24);
          *&buf[16] = *(v161 + 8);
          *v229 = v163;
          WTF::Function<void ()(void)>::Function<WebKit::NetworkResourceLoader::didReceiveResponse(WebCore::ResourceResponse &&,WebKit::PrivateRelayed,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_3,void>(v215, buf);
          WTF::RunLoop::dispatch();
          v165 = *v215;
          *v215 = 0;
          if (v165)
          {
            (*(*v165 + 8))(v165);
          }

          WebKit::NetworkResourceLoader::didReceiveResponse(WebCore::ResourceResponse &&,WebKit::PrivateRelayed,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_3::~$_3(buf, v164);
          v79 = *a4;
          *a4 = 0;
          (*(*v79 + 16))(v79, 2);
          goto LABEL_107;
        }

        __break(0xC471u);
        goto LABEL_247;
      }

      WebCore::CrossOriginOpenerPolicy::~CrossOriginOpenerPolicy(v215, v143);
    }

    WebKit::NetworkResourceLoader::doCrossOriginOpenerHandlingOfResponse(v5, (v5 + 4160), buf);
    if (v230[16] == 1)
    {
      v145 = qword_1ED6416F0;
      v146 = os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_ERROR);
      if (v146)
      {
        v174 = *(v5 + 3280);
        if (!v174)
        {
          __break(0xC471u);
          JUMPOUT(0x19DCB8358);
        }

        v175 = *(v5 + 96);
        v177 = *(v5 + 80);
        v176 = *(v5 + 88);
        v178 = *(v5 + 251) == 1;
        v179 = *(v5 + 3328);
        v180 = *(v5 + 4440) != 0;
        *v215 = 134219776;
        *&v215[4] = v5;
        *&v215[12] = 2048;
        *&v215[14] = v177;
        v216 = 2048;
        v217 = v176;
        *v218 = 2048;
        *&v218[2] = v175;
        *&v218[10] = 2048;
        *&v218[12] = v174;
        *&v218[20] = 1024;
        *&v218[22] = v178;
        *&v218[26] = 1024;
        v219 = v179;
        LOWORD(cf) = 1024;
        *(&cf + 2) = v180;
        _os_log_error_impl(&dword_19D52D000, v145, OS_LOG_TYPE_ERROR, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::didReceiveResponse: Interrupting load due to Cross-Origin-Opener-Policy", v215, 0x46u);
      }

      WTF::RunLoop::mainSingleton(v146);
      ++*(v5 + 20);
      *v215 = v5;
      if (v230[16])
      {
        WebCore::ResourceError::ResourceError(&v215[8], buf);
        WTF::Function<void ()(void)>::Function<WebKit::NetworkResourceLoader::didReceiveResponse(WebCore::ResourceResponse &&,WebKit::PrivateRelayed,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_4,void>(&v239, v215);
        WTF::RunLoop::dispatch();
        v148 = v239;
        *&v239 = 0;
        if (v148)
        {
          (*(*v148 + 8))(v148);
        }

        WebKit::NetworkResourceLoader::didReceiveResponse(WebCore::ResourceResponse &&,WebKit::PrivateRelayed,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_2::~$_2(v215, v147);
        v149 = *a4;
        *a4 = 0;
        (*(*v149 + 16))(v149, 2);
        (*(*v149 + 8))(v149);
        std::optional<WebCore::ResourceError>::~optional(buf, v150);
        goto LABEL_59;
      }

LABEL_247:
      __break(1u);
LABEL_248:
      JUMPOUT(0x19DCB8258);
    }

    *buf = v5;
    ++*(v5 + 20);
    buf[16] = a3;
    *v229 = v221[0];
    *&v229[16] = v221[1];
    *v230 = v221[2];
    *&v230[16] = v221[3];
    v232 = v223;
    v233 = v224;
    v60 = v222;
    v61 = v225;
    v222 = 0;
    v225 = 0;
    v231 = v60;
    v234 = v61;
    v236 = v227;
    v235 = v226;
    v62 = *a4;
    *a4 = 0;
    v237 = v62;
    v63 = WTF::fastMalloc(0xC0);
    *v63 = &unk_1F1103568;
    *(v63 + 16) = v5;
    *(v63 + 24) = v5;
    *(v63 + 32) = a3;
    v65 = *v230;
    v64 = *&v230[16];
    v66 = *&v229[16];
    *(v63 + 48) = *v229;
    *(v63 + 64) = v66;
    *&buf[8] = 0;
    *(v63 + 80) = v65;
    *(v63 + 96) = v64;
    v68.n128_f64[0] = WTF::URL::URL(v63 + 112, &v231);
    v69 = v235;
    *(v63 + 152) = v234;
    *(v63 + 160) = v69;
    *(v63 + 168) = v236;
    v70 = v237;
    v234 = 0;
    v237 = 0;
    *(v63 + 176) = v70;
    if ((*(v5 + 3665) & 1) == 0)
    {
      goto LABEL_89;
    }

    v71 = WebCore::parseClearSiteDataHeader((v5 + 4160), v67);
    if (v71)
    {
      v72 = 6;
    }

    else
    {
      v72 = 0;
    }

    if ((v71 & 2) != 0)
    {
      v72 |= 1u;
    }

    if ((v71 & 8) != 0)
    {
      v72 |= 0x8C0F0u;
    }

    v214 = v72;
    v73 = *(v5 + 3666) == 1 && (v71 >> 2) & 1;
    if (!v72 && !v73)
    {
LABEL_89:
      (*(*v63 + 16))(v63, v68);
      (*(*v63 + 8))(v63);
LABEL_90:
      v74 = v237;
      v237 = 0;
      if (v74)
      {
        (*(*v74 + 8))(v74);
      }

      v75 = v234;
      v234 = 0;
      if (v75 && atomic_fetch_add_explicit(v75, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v75, v49);
      }

      v76 = v231;
      v231 = 0;
      if (v76 && atomic_fetch_add_explicit(v76, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v76, v49);
      }

      v77 = *&buf[8];
      *&buf[8] = 0;
      if (v77)
      {
        if (v77[5] == 1)
        {
          (*(*v77 + 24))(v77);
        }

        else
        {
          --v77[5];
        }
      }

      goto LABEL_59;
    }

    v103 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      v104 = *(v5 + 3280);
      if (!v104)
      {
        __break(0xC471u);
        JUMPOUT(0x19DCB82F8);
      }

      v106 = *(v5 + 88);
      v105 = *(v5 + 96);
      v107 = *(v5 + 80);
      v108 = *(v5 + 251) == 1;
      v109 = *(v5 + 3328);
      v110 = *(v5 + 4440) != 0;
      *v215 = 134219776;
      *&v215[4] = v5;
      *&v215[12] = 2048;
      *&v215[14] = v107;
      v216 = 2048;
      v217 = v106;
      *v218 = 2048;
      *&v218[2] = v105;
      *&v218[10] = 2048;
      *&v218[12] = v104;
      *&v218[20] = 1024;
      *&v218[22] = v108;
      *&v218[26] = 1024;
      v219 = v109;
      LOWORD(cf) = 1024;
      *(&cf + 2) = v110;
      _os_log_impl(&dword_19D52D000, v103, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::processClearSiteDataHeader: BEGIN", v215, 0x46u);
    }

    v111 = WebCore::ResourceResponseBase::url((v5 + 4160));
    WebCore::SecurityOrigin::create(v215, v111, v112);
    mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(&v239, *v215 + 8);
    v114 = *v215;
    *v215 = 0;
    if (v114)
    {
      WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v114, v113);
    }

    v115 = *(v5 + 304);
    if (v115)
    {
      v116 = (v115 + 8);
    }

    else
    {
      v116 = &v239;
    }

    mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v215, v116);
    v218[0] = 0;
    v218[24] = -1;
    v117 = v241;
    if (v241)
    {
      if (v241 == 255)
      {
        goto LABEL_155;
      }

      *v218 = v239;
    }

    else
    {
      v118 = v239;
      if (v239)
      {
        atomic_fetch_add_explicit(v239, 2u, memory_order_relaxed);
      }

      *v218 = v118;
      v119 = *(&v239 + 1);
      if (*(&v239 + 1))
      {
        atomic_fetch_add_explicit(*(&v239 + 1), 2u, memory_order_relaxed);
      }

      *&v218[8] = v119;
      *&v218[16] = v240;
      v117 = v241;
    }

    v218[24] = v117;
LABEL_155:
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v5 + 8), v5);
    v120 = *(v5 + 8);
    v121 = v5;
    atomic_fetch_add(v120, 1u);
    v122 = WTF::fastMalloc(0x18);
    *v122 = &unk_1F1103450;
    v122[1] = v120;
    v210 = 0;
    v211 = 0;
    v122[2] = v63;
    v123 = WTF::fastMalloc(0x10);
    *v123 = 1;
    *(v123 + 8) = v122;
    WebKit::NetworkResourceLoader::processClearSiteDataHeader(WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(void)> &&)::$_0::~$_0(&v210, v124);
    v125 = v214;
    if (v214)
    {
      v126 = v27;
      v127 = *(v5 + 4144);
      ++*(v127 + 20);
      v128 = *(v127 + 88);
      v129 = *(v127 + 96);
      atomic_fetch_add(v123, 1u);
      v130 = WTF::fastMalloc(0x10);
      *v130 = &unk_1F1103478;
      *(v130 + 1) = v123;
      v210 = v130;
      WebKit::NetworkProcess::deleteWebsiteDataForOrigin(v128, v129, v125, v215, &v210);
      v131 = v210;
      v210 = 0;
      if (v131)
      {
        (*(*v131 + 8))(v131);
      }

      if (*(v127 + 20) == 1)
      {
        (*(*v127 + 8))(v127);
      }

      else
      {
        --*(v127 + 20);
      }

      v27 = v126;
      v121 = v5;
    }

    if (WebKit::WebsiteDataStore::computeWebProcessAccessTypeForDataRemoval(v214))
    {
      v132 = *(v121 + 4144);
      ++*(v132 + 20);
      WebKit::AuxiliaryProcess::protectedParentProcessConnection(*(v132 + 88), &v205);
      v133 = v205;
      v134 = *(*(v121 + 4144) + 96);
      v208 = *(v121 + 80);
      v209 = v134;
      v210 = &v214;
      v211 = v215;
      v212 = &v209;
      v213 = &v208;
      atomic_fetch_add(v123, 1u);
      v207 = v123;
      IPC::Connection::sendWithAsyncReply<Messages::NetworkProcessProxy::DeleteWebsiteDataInWebProcessesForOrigin,WebKit::NetworkResourceLoader::processClearSiteDataHeader(WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(void)> &&)::$_2>(v133, &v210, &v207);
      if (v207)
      {
        WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v207);
      }

      v135 = v205;
      v205 = 0;
      if (v135)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v135);
      }

      if (*(v132 + 20) == 1)
      {
        (*(*v132 + 8))(v132);
      }

      else
      {
        --*(v132 + 20);
      }
    }

    if (v73)
    {
      LOBYTE(v205) = 0;
      v206 = 0;
      if (*(v121 + 251) == 1)
      {
        v136 = *(v121 + 96);
        v206 = 1;
        v205 = v136;
      }

      v137 = *(v121 + 4144);
      ++*(v137 + 20);
      WebKit::AuxiliaryProcess::protectedParentProcessConnection(*(v137 + 88), &v209);
      v138 = v209;
      v139 = *(*(v121 + 4144) + 96);
      v207 = v123;
      v208 = v139;
      v210 = v215;
      v211 = &v208;
      v212 = &v205;
      atomic_fetch_add(v123, 1u);
      IPC::Connection::sendWithAsyncReply<Messages::NetworkProcessProxy::ReloadExecutionContextsForOrigin,WebKit::NetworkResourceLoader::processClearSiteDataHeader(WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(void)> &&)::$_3>(v138, &v210, &v207);
      if (v207)
      {
        WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v207);
      }

      v140 = v209;
      v209 = 0;
      if (v140)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v140);
      }

      if (*(v137 + 20) == 1)
      {
        (*(*v137 + 8))(v137);
      }

      else
      {
        --*(v137 + 20);
      }
    }

    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v123);
    WebCore::ClientOrigin::~ClientOrigin(v215, v141);
    WebCore::SecurityOriginData::~SecurityOriginData(&v239);
    goto LABEL_90;
  }

  v79 = *a4;
  *a4 = 0;
  (*(*v79 + 16))(v79, 0);
LABEL_107:
  (*(*v79 + 8))(v79);
LABEL_59:
  v57 = v225;
  if (v225 && atomic_fetch_add_explicit(v225, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v57, v49);
  }

  result = v222;
  if (v222 && atomic_fetch_add_explicit(v222, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v49);
  }

  if (v27)
  {
    result = WTF::RefCounted<WebKit::NetworkLoadChecker>::deref((v27 + 8), v49);
  }

  if (*(v26 + 20) == 1)
  {
    return (*(*v26 + 8))(v26);
  }

  --*(v26 + 20);
  return result;
}

void WebKit::NetworkResourceLoader::didReceiveMainResourceResponse(WebKit::NetworkResourceLoader *this, const WebCore::ResourceResponse *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 410);
    if (!v5)
    {
      __break(0xC471u);
      goto LABEL_11;
    }

    v7 = *(this + 11);
    v6 = *(this + 12);
    v8 = *(this + 10);
    v9 = *(this + 251) == 1;
    v10 = *(this + 3328);
    v11 = *(this + 555) != 0;
    *v15 = 134219776;
    *&v15[4] = this;
    *&v15[12] = 2048;
    *&v15[14] = v8;
    *&v15[22] = 2048;
    v16 = v7;
    v17 = 2048;
    v18 = v6;
    v19 = 2048;
    v20 = v5;
    v21 = 1024;
    v22 = v9;
    v23 = 1024;
    v24 = v10;
    v25 = 1024;
    v26 = v11;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::didReceiveMainResourceResponse:", v15, 0x46u);
  }

  v12 = *(this + 569);
  if (v12)
  {
    v13 = *(v12 + 48);
    if (v13)
    {
      ++*(v13 + 8);
      *v15 = *(this + 5);
      *&v15[16] = *(this + 12);
      WebKit::NetworkCache::SpeculativeLoadManager::registerMainResourceLoadResponse(v13, v15, (this + 104), a2);
      v14 = *(v13 + 8);
      if (v14)
      {
        *(v13 + 8) = v14 - 1;
        return;
      }

      __break(0xC471u);
LABEL_11:
      JUMPOUT(0x19DCB8520);
    }
  }
}

uint64_t WebCore::ResourceResponse::operator=(uint64_t a1, uint64_t a2)
{
  WebCore::ResourceResponseBase::operator=(a1, a2);
  v4 = *(a2 + 248);
  *(a2 + 248) = 0;
  v5 = *(a1 + 248);
  *(a1 + 248) = v4;
  if (v5)
  {
    CFRelease(v5);
  }

  *(a1 + 256) = *(a2 + 256);
  return a1;
}

{
  WebCore::ResourceResponseBase::operator=(a1, a2);
  v4 = *(a2 + 248);
  if (v4)
  {
    CFRetain(*(a2 + 248));
  }

  v5 = *(a1 + 248);
  *(a1 + 248) = v4;
  if (v5)
  {
    CFRelease(v5);
  }

  *(a1 + 256) = *(a2 + 256);
  return a1;
}

WTF::StringImpl **WebKit::NetworkConnectionToWebProcess::addNetworkLoadInformation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = WTF::fastMalloc(0x260);
  Information = WebCore::NetworkLoadInformation::NetworkLoadInformation(v6, a3);
  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DCB879CLL);
  }

  v7 = *(a1 + 160);
  if (!v7)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkLoadInformation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((a1 + 160), 0);
    v7 = *(a1 + 160);
  }

  v8 = *(v7 - 8);
  v9 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
  v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
  v12 = v8 & ((v11 >> 31) ^ v11);
  v13 = (v7 + 16 * v12);
  v14 = *v13;
  if (!*v13)
  {
LABEL_13:
    *v13 = a2;
    Information = 0;
    v23 = 0;
    std::unique_ptr<WebCore::NetworkLoadInformation>::reset[abi:sn200100](v13 + 1, v6);
    std::unique_ptr<WebCore::NetworkLoadInformation>::reset[abi:sn200100](&v23, 0);
    v17 = *(a1 + 160);
    if (v17)
    {
      v18 = *(v17 - 12) + 1;
    }

    else
    {
      v18 = 1;
    }

    *(v17 - 12) = v18;
    v19 = (*(v17 - 16) + v18);
    v20 = *(v17 - 4);
    if (v20 > 0x400)
    {
      if (v20 > 2 * v19)
      {
        return std::unique_ptr<WebCore::NetworkLoadInformation>::reset[abi:sn200100](&Information, 0);
      }
    }

    else if (3 * v20 > 4 * v19)
    {
      return std::unique_ptr<WebCore::NetworkLoadInformation>::reset[abi:sn200100](&Information, 0);
    }

    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkLoadInformation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((a1 + 160), v13);
    return std::unique_ptr<WebCore::NetworkLoadInformation>::reset[abi:sn200100](&Information, 0);
  }

  v15 = 0;
  v16 = 1;
  while (v14 != a2)
  {
    if (v14 == -1)
    {
      v15 = v13;
    }

    v12 = (v12 + v16) & v8;
    v13 = (v7 + 16 * v12);
    v14 = *v13;
    ++v16;
    if (!*v13)
    {
      if (v15)
      {
        *v15 = 0;
        v15[1] = 0;
        --*(*(a1 + 160) - 16);
        v13 = v15;
      }

      goto LABEL_13;
    }
  }

  return std::unique_ptr<WebCore::NetworkLoadInformation>::reset[abi:sn200100](&Information, 0);
}

void WebKit::NetworkSession::recordHTTPSConnectionTiming(WebKit::NetworkSession *this, const WebCore::NetworkLoadMetrics *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 98) & 0x20) != 0)
  {
    return;
  }

  v2 = *(a2 + 5);
  if (v2 == -1.0)
  {
    return;
  }

  v3 = *(a2 + 6) - v2;
  if (v3 <= 0.0)
  {
    return;
  }

  v5 = *(this + 101);
  v6 = *(this + 102);
  v7 = v6;
  if (v5 > v6)
  {
    v7 = v6 + *(this + 208);
  }

  if (v7 - v5 >= 0x19)
  {
    if (v5 == v6)
    {
      __break(0xC471u);
      goto LABEL_76;
    }

    v8 = *(this + 208);
    if (v5 >= v8)
    {
      goto LABEL_76;
    }

    if (v5 == v8 - 1)
    {
      v5 = 0;
    }

    else
    {
      ++v5;
    }

    *(this + 101) = v5;
  }

  if (v5)
  {
    if (v6 + 1 != v5)
    {
      goto LABEL_47;
    }

    LODWORD(v9) = *(this + 208);
  }

  else
  {
    v9 = *(this + 208);
    if (v6)
    {
      if (v6 != v9 - 1)
      {
        goto LABEL_47;
      }
    }

    else if (v9)
    {
      v6 = 0;
      goto LABEL_47;
    }
  }

  v10 = v9;
  v11 = *(this + 103);
  v12 = (v9 >> 2) + v9;
  v13 = 15;
  if (v12 > 0xF)
  {
    v13 = v12;
  }

  if (v12 < 0x19)
  {
    v15 = (this + 840);
    *(this + 103) = this + 840;
    v14 = 25;
    *(this + 208) = 25;
  }

  else
  {
    if (v12 >= 0x1FFFFFFF)
    {
LABEL_77:
      __break(0xC471u);
      return;
    }

    v14 = v13 + 1;
    v15 = WTF::fastMalloc((8 * (v13 + 1)));
    *(this + 208) = v14;
    *(this + 103) = v15;
    v5 = *(this + 101);
    v6 = *(this + 102);
  }

  v16 = v6 - v5;
  if (v6 < v5)
  {
    if (v6 > v10)
    {
      goto LABEL_76;
    }

    if (v6)
    {
      v17 = 8 * v6;
      v18 = v15;
      v19 = v11;
      do
      {
        v20 = *v19;
        v19 = (v19 + 8);
        *v18 = v20;
        v18 = (v18 + 8);
        v17 -= 8;
      }

      while (v17);
    }

    if (v10 < v5 || v14 < v10 - v5)
    {
      goto LABEL_76;
    }

    if (v10 != v5)
    {
      v21 = (v11 + 8 * v5);
      v22 = 8 * v5 - 8 * v10;
      do
      {
        v23 = *v21++;
        *(v15 + 8 * v14 + v22) = v23;
        v22 += 8;
      }

      while (v22);
    }

    *(this + 101) = v14 - (v10 - v5);
    goto LABEL_45;
  }

  if (v10 < v5)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if (v16 != -1)
  {
    if (v10 - v5 >= v16)
    {
      goto LABEL_41;
    }

    goto LABEL_76;
  }

  v16 = v10 - v5;
LABEL_41:
  if (v5 > v14)
  {
    goto LABEL_76;
  }

  if (v16)
  {
    v24 = (v11 + 8 * v5);
    v25 = 8 * v16;
    v26 = v15 + 8 * v5;
    do
    {
      v27 = *v24++;
      *v26 = v27;
      v26 += 8;
      v25 -= 8;
    }

    while (v25);
  }

LABEL_45:
  if ((this + 840) != v11 && v11)
  {
    if (v15 == v11)
    {
      *(this + 103) = 0;
      *(this + 208) = 0;
    }

    WTF::fastFree(v11, a2);
    v6 = *(this + 102);
  }

LABEL_47:
  v28 = *(this + 208);
  if (v6 >= v28)
  {
    goto LABEL_76;
  }

  *(*(this + 103) + 8 * v6) = v3;
  if (v6 == v28 - 1)
  {
    v29 = 0;
  }

  else
  {
    v29 = v6 + 1;
  }

  *(this + 102) = v29;
  v30 = *(this + 101);
  if (v29 != v30)
  {
    v32 = *(this + 208);
    v33 = *(this + 103);
    v34 = 0.0;
    v35 = *(this + 101);
    while (v35 < v32)
    {
      v36 = *(v33 + 8 * v35);
      v35 += v32 + 1;
      do
      {
        v35 -= v32;
      }

      while (v35 >= v32);
      v34 = v34 + v36;
      if (v29 == v35)
      {
        if (v29 >= v30)
        {
          v37 = 0;
        }

        else
        {
          v37 = *(this + 208);
        }

        v38 = v34 / (v29 - v30 + v37);
        while (v30 < v32)
        {
          v39 = *(v33 + 8 * v30);
          v30 += v32 + 1;
          do
          {
            v30 -= v32;
          }

          while (v30 >= v32);
          v38 = v38 * 0.25 + v39 * 0.75;
          if (v29 == v30)
          {
            v31 = v38 * 1.5;
            goto LABEL_67;
          }
        }

        goto LABEL_76;
      }
    }

    goto LABEL_76;
  }

  v31 = NAN;
LABEL_67:
  v40 = fmax(v31, 3.0);
  if (v40 != *(this + 130))
  {
    *(this + 130) = v40;
    v41 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      v42 = 134217984;
      v43 = v40;
      _os_log_impl(&dword_19D52D000, v41, OS_LOG_TYPE_DEFAULT, "NetworkSession::recordHTTPSConnectionTiming: Updating moving average: %lf", &v42, 0xCu);
    }
  }
}

uint64_t WebKit::NetworkResourceLoader::didReceiveResponse(WebCore::ResourceResponse &&,WebKit::PrivateRelayed,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_1::operator()(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    if (WTF::startsWithLettersIgnoringASCIICaseCommon<WTF::StringImpl>(result, "audio/", 6uLL))
    {
      return 1;
    }

    result = *a1;
    if (!*a1)
    {
      return result;
    }

    if (WTF::startsWithLettersIgnoringASCIICaseCommon<WTF::StringImpl>(result, "video/", 6uLL))
    {
      return 1;
    }

    else
    {
      result = *a1;
      if (*a1)
      {

        return WTF::equalLettersIgnoringASCIICaseCommon<WTF::StringImpl>(result, "application/octet-stream", 0x18uLL);
      }
    }
  }

  return result;
}

uint64_t *WTF::Function<void ()(void)>::Function<WebKit::NetworkResourceLoader::didReceiveResponse(WebCore::ResourceResponse &&,WebKit::PrivateRelayed,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_2,void>(uint64_t *a1, uint64_t *a2)
{
  v4 = WTF::fastMalloc(0x60);
  v5 = *a2;
  *a2 = 0;
  *v4 = &unk_1F11034F0;
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

uint64_t WebKit::NetworkResourceLoader::didReceiveResponse(WebCore::ResourceResponse &&,WebKit::PrivateRelayed,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_2::~$_2(uint64_t a1, WTF::StringImpl *a2)
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
    if (v7[5] == 1)
    {
      (*(*v7 + 24))(v7);
    }

    else
    {
      --v7[5];
    }
  }

  return a1;
}

WTF::StringImpl *WebKit::NetworkResourceLoader::initializeReportingEndpoints(WebKit::NetworkResourceLoader *this, const WebCore::ResourceResponse *a2)
{
  WebCore::ResourceResponseBase::httpHeaderField();
  result = v10;
  if (v10)
  {
    if (!*(v10 + 1))
    {
      v10 = 0;
LABEL_4:
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v4);
      }

      return result;
    }

    v6 = WebCore::ResourceResponseBase::url(a2);
    WebCore::ReportingScope::parseReportingEndpointsFromHeader(&v8, &v10, v6, v7);
    WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::operator=(this + 5280, &v8);
    if (v8)
    {
      WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v8, v9);
    }

    result = v10;
    v10 = 0;
    if (result)
    {
      goto LABEL_4;
    }
  }

  return result;
}

uint64_t WebKit::NetworkResourceLoader::sanitizeResponseIfPossible(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 3568))
  {
    v6 = *(*(a2 + 4144) + 88);
    v7 = 1;
    atomic_fetch_add(v6 + 36, 1u);
    v8 = *(a2 + 88);
    v9 = WebCore::ResourceRequestBase::url((a2 + 104));
    if (*(a2 + 3328))
    {
      v11 = 0;
    }

    else
    {
      v11 = *(a2 + 3329) == 2;
    }

    if (v11)
    {
      v7 = WebKit::NetworkProcess::shouldDisableCORSForRequestTo(v6, v8, v9, v10) ^ 1;
    }

    if (v6 && atomic_fetch_add(v6 + 36, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v6 + 36);
      (*(*v6 + 24))(v6);
    }

    if (v7)
    {
      WebCore::ResourceResponseBase::sanitizeHTTPHeaderFields();
    }

    WTF::URL::URL(a1, a3);
    v12 = *(a3 + 40);
    v13 = *(a3 + 48);
    *(a3 + 40) = 0;
    *(a1 + 40) = v12;
    *(a1 + 48) = v13;
    v14 = *(a3 + 56);
    *(a3 + 56) = 0u;
    *(a1 + 56) = v14;
    v15 = *(a3 + 72);
    *(a3 + 72) = 0;
    *(a1 + 72) = v15;
    *(v16 + 80) = 0u;
    WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v16 + 80, (a3 + 80));
    *(a1 + 96) = 0u;
    result = WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 96, (a3 + 96));
    v18 = *(a3 + 112);
    *(a3 + 112) = 0;
    *(a1 + 112) = v18;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    if (*(a3 + 128) == 1)
    {
      v21 = *(a3 + 120);
      *(a3 + 120) = 0;
      *(a1 + 120) = v21;
      *(a1 + 128) = 1;
    }

    *(a1 + 136) = *(a3 + 136);
    *(a1 + 138) = *(a3 + 138);
    v19 = *(a3 + 144);
    *(a3 + 144) = 0;
    *(a1 + 144) = v19;
    *(a1 + 184) = *(a3 + 184);
    *(a1 + 200) = *(a3 + 200);
    *(a1 + 216) = *(a3 + 216);
    *(a1 + 227) = *(a3 + 227);
    *(a1 + 152) = *(a3 + 152);
    *(a1 + 168) = *(a3 + 168);
    v20 = *(a3 + 248);
    *(a3 + 248) = 0;
    *(a1 + 248) = v20;
    *(a1 + 256) = *(a3 + 256);
  }

  else
  {

    return std::__tuple_leaf<0ul,WebCore::ResourceResponse,false>::__tuple_leaf[abi:sn200100]<WebCore::ResourceResponse,0>(a1, a3);
  }

  return result;
}

IPC::Encoder *IPC::MessageSender::send<Messages::WebResourceLoader::StopLoadingAfterXFrameOptionsOrContentSecurityPolicyDenied>(uint64_t a1, WebCore::ResourceResponseBase **a2)
{
  v4 = (*(*a1 + 56))(a1);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 3038;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<WebCore::ResourceResponse,void>::encode(v6, *a2);
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

void *WTF::Function<void ()(void)>::Function<WebKit::NetworkResourceLoader::didReceiveResponse(WebCore::ResourceResponse &&,WebKit::PrivateRelayed,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_3,void>(void *a1, uint64_t *a2)
{
  v4 = WTF::fastMalloc(0x38);
  v5 = *a2;
  *a2 = 0;
  *v4 = &unk_1F1103518;
  v4[1] = v5;
  WTF::URL::URL((v4 + 2), a2 + 1);
  *a1 = v4;
  return a1;
}

uint64_t WebKit::NetworkResourceLoader::didReceiveResponse(WebCore::ResourceResponse &&,WebKit::PrivateRelayed,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_3::~$_3(uint64_t a1, WTF::StringImpl *a2)
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
    if (v4[5] == 1)
    {
      (*(*v4 + 24))(v4);
    }

    else
    {
      --v4[5];
    }
  }

  return a1;
}

uint64_t *WTF::Function<void ()(void)>::Function<WebKit::NetworkResourceLoader::didReceiveResponse(WebCore::ResourceResponse &&,WebKit::PrivateRelayed,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_4,void>(uint64_t *a1, uint64_t *a2)
{
  v4 = WTF::fastMalloc(0x60);
  v5 = *a2;
  *a2 = 0;
  *v4 = &unk_1F1103540;
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

IPC::Encoder *WebKit::NetworkResourceLoader::sendDidReceiveResponsePotentiallyInNewBrowsingContextGroup(WebCore::ResourceResponse *a1, WebCore::ResourceResponseBase *a2, char a3, int a4)
{
  v86 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 518);
  ++*(v8 + 20);
  if ((*(v8 + 336) & 0x40) == 0 && *(a1 + 5088) == 1 && *(a1 + 5081) == 1)
  {
    if (*(a1 + 5056) == 2)
    {
      v20 = 2;
    }

    else
    {
      v20 = 1;
    }

    v21 = *(a1 + 410);
    if (v21)
    {
      WebKit::NetworkConnectionToWebProcess::takeNetworkResourceLoader(v8, v21, &v60);
      if (v60)
      {
        if (*(a1 + 3744))
        {
          v22 = *(v60 + 587);
          v59 = v22;
          v23 = *(v8 + 88);
          *buf = *(v8 + 96);
          v24 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v23 + 240), buf);
          if (v24)
          {
            v25 = v24;
            ++*(v24 + 16);
            *buf = v60;
            v60 = 0;
            WebKit::NetworkSession::addLoaderAwaitingWebProcessTransfer(v24, buf);
            if (*buf)
            {
              if (*(*buf + 20) == 1)
              {
                (*(**buf + 24))();
              }

              else
              {
                --*(*buf + 20);
              }
            }

            v26 = *(v25 + 16);
            if (!v26)
            {
              __break(0xC471u);
LABEL_53:
              __break(1u);
              goto LABEL_54;
            }

            *(v25 + 16) = v26 - 1;
          }

          v27 = WebCore::ResourceResponseBase::url(a2);
          MEMORY[0x19EB0E640](&v61, v27);
          WebKit::AuxiliaryProcess::protectedParentProcessConnection(*(v8 + 88), &v58);
          v28 = v58;
          v57 = *(a1 + 10);
          if (*(a1 + 3744))
          {
            *buf = &v57;
            *&buf[8] = a1 + 3736;
            buf[16] = v20;
            v68 = &v61;
            *v69 = &v59;
            v55 = v22;
            v29 = *(v8 + 88);
            v65 = *(v8 + 96);
            v30 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v29 + 240), &v65);
            if (v30)
            {
              v46 = v30;
              WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v30 + 8), v30);
              v31 = *(v46 + 8);
              if (v31)
              {
                atomic_fetch_add(v31, 1u);
              }
            }

            else
            {
              v31 = 0;
            }

            v56 = v31;
            IPC::Connection::sendWithAsyncReply<Messages::NetworkProcessProxy::TriggerBrowsingContextGroupSwitchForNavigation,WebKit::NetworkResourceLoader::sendDidReceiveResponsePotentiallyInNewBrowsingContextGroup(WebCore::ResourceResponse const&,WebKit::PrivateRelayed,BOOL)::$_0>(v28, buf, &v55);
            v33 = v56;
            v56 = 0;
            if (v33 && atomic_fetch_add(v33, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v33);
              WTF::fastFree(v33, v32);
            }

            v34 = v58;
            v58 = 0;
            if (v34)
            {
              WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v34);
            }

            WTF::KeyValuePair<WTF::String,WTF::String>::~KeyValuePair(&v61, v32);
            goto LABEL_34;
          }

          goto LABEL_53;
        }

        v35 = qword_1ED6416F0;
        if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_FAULT))
        {
          v37 = *(a1 + 410);
          if (v37)
          {
            v39 = *(a1 + 11);
            v38 = *(a1 + 12);
            v40 = *(a1 + 10);
            v41 = *(a1 + 251) == 1;
            v42 = *(a1 + 3328);
            v43 = *(a1 + 555) != 0;
            v44 = *(a1 + 4625);
            *buf = 134220544;
            *&buf[4] = a1;
            *&buf[12] = 2048;
            *&buf[14] = v40;
            v67 = 2048;
            v68 = v39;
            *v69 = 2048;
            *&v69[2] = v38;
            v70 = 2048;
            v71 = v37;
            v72 = 1024;
            v73 = v41;
            v74 = 1024;
            v75 = v42;
            v76 = 1024;
            v77 = v43;
            v78 = 2048;
            v79 = v37;
            v80 = 1024;
            v81 = v44;
            v82 = 1024;
            LODWORD(v83) = a4;
            v45 = "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::sendDidReceiveResponsePotentiallyInNewBrowsingContextGroup: Missing navigationID, loaderIdentifier %llu, m_isKeptAlive=%d, needsContinueDidReceiveResponseMessage=%d";
LABEL_48:
            _os_log_fault_impl(&dword_19D52D000, v35, OS_LOG_TYPE_FAULT, v45, buf, 0x5Cu);
            goto LABEL_40;
          }

          __break(0xC471u);
LABEL_56:
          JUMPOUT(0x19DCB98D0);
        }
      }

      else
      {
        v35 = qword_1ED6416F0;
        if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_FAULT))
        {
          v47 = *(a1 + 410);
          if (!v47)
          {
LABEL_54:
            __break(0xC471u);
            JUMPOUT(0x19DCB9910);
          }

          v49 = *(a1 + 11);
          v48 = *(a1 + 12);
          v50 = *(a1 + 10);
          v51 = *(a1 + 251) == 1;
          v52 = *(a1 + 3328);
          v53 = *(a1 + 555) != 0;
          v54 = *(a1 + 4625);
          *buf = 134220544;
          *&buf[4] = a1;
          *&buf[12] = 2048;
          *&buf[14] = v50;
          v67 = 2048;
          v68 = v49;
          *v69 = 2048;
          *&v69[2] = v48;
          v70 = 2048;
          v71 = v47;
          v72 = 1024;
          v73 = v51;
          v74 = 1024;
          v75 = v52;
          v76 = 1024;
          v77 = v53;
          v78 = 2048;
          v79 = v47;
          v80 = 1024;
          v81 = v54;
          v82 = 1024;
          LODWORD(v83) = a4;
          v45 = "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::sendDidReceiveResponsePotentiallyInNewBrowsingContextGroup: Failed to find loader with identifier %llu, m_isKeptAlive=%d, needsContinueDidReceiveResponseMessage=%d";
          goto LABEL_48;
        }
      }

LABEL_40:
      WebKit::NetworkResourceLoader::computeResponseMetrics(buf, a1, a2);
      v61 = a2;
      v62 = a3;
      v63 = a4;
      v64 = buf;
      IPC::MessageSender::send<Messages::WebResourceLoader::DidReceiveResponse>(a1 + 24, &v61);
      std::optional<WebCore::NetworkLoadMetrics>::~optional(buf, v36);
LABEL_34:
      result = v60;
      v60 = 0;
      if (result)
      {
        if (*(result + 5) == 1)
        {
          result = (*(*result + 24))(result);
        }

        else
        {
          --*(result + 5);
        }
      }

      goto LABEL_9;
    }

    __break(0xC471u);
    goto LABEL_56;
  }

  v9 = WebKit::NetworkResourceLoader::computeResponseMetrics(buf, a1, a2);
  v61 = a2;
  v62 = a3;
  v63 = a4;
  v64 = buf;
  v11 = *(a1 + 3);
  v10 = a1 + 24;
  v12 = (*(v11 + 56))(v10, v9);
  v14 = IPC::Encoder::operator new(0x238, v13);
  *v14 = 3034;
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 1) = v12;
  *(v14 + 68) = 0;
  *(v14 + 70) = 0;
  *(v14 + 69) = 0;
  IPC::Encoder::encodeHeader(v14);
  v55 = v14;
  Messages::WebResourceLoader::DidReceiveResponse::encode<IPC::Encoder>(&v61, v14);
  (*(*v10 + 32))(v10, &v55, 0);
  result = v55;
  v55 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v15);
    result = bmalloc::api::tzoneFree(v18, v19);
  }

  if (v85 == 1)
  {
    v17 = v84;
    v84 = 0;
    if (v17)
    {
      WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v17, v15);
    }

    result = v83;
    v83 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v15);
    }
  }

LABEL_9:
  if (*(v8 + 20) == 1)
  {
    return (*(*v8 + 8))(v8);
  }

  --*(v8 + 20);
  return result;
}

WebKit::NetworkSession::CachedNetworkResourceLoader *WebKit::NetworkSession::addLoaderAwaitingWebProcessTransfer(uint64_t a1, void *a2)
{
  v8 = *(*a2 + 4696);
  v4 = WebKit::NetworkSession::CachedNetworkResourceLoader::operator new(0x48, a2);
  v7 = WebKit::NetworkSession::CachedNetworkResourceLoader::CachedNetworkResourceLoader(v4, a2);
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>(v6, (a1 + 512), &v8, &v7);
  result = v7;
  if (v7)
  {
    return WTF::RefCounted<WebKit::NetworkSession::CachedNetworkResourceLoader>::deref(v7);
  }

  return result;
}

IPC::Encoder *IPC::Connection::sendWithAsyncReply<Messages::NetworkProcessProxy::TriggerBrowsingContextGroupSwitchForNavigation,WebKit::NetworkResourceLoader::sendDidReceiveResponsePotentiallyInNewBrowsingContextGroup(WebCore::ResourceResponse const&,WebKit::PrivateRelayed,BOOL)::$_0>(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  IPC::Connection::makeAsyncReplyHandler<Messages::NetworkProcessProxy::TriggerBrowsingContextGroupSwitchForNavigation,WebKit::NetworkResourceLoader::sendDidReceiveResponsePotentiallyInNewBrowsingContextGroup(WebCore::ResourceResponse const&,WebKit::PrivateRelayed,BOOL)::$_0>(v15, a3);
  v5 = v15[1];
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 566;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = 0;
  IPC::Encoder::encodeHeader(v7);
  v14 = v7;
  Messages::NetworkProcessProxy::TriggerBrowsingContextGroupSwitchForNavigation::encode<IPC::Encoder>(a2, v7);
  v13[0] = v15[0];
  v13[1] = v5;
  IPC::Connection::sendMessageWithAsyncReply(a1, &v14, v13, 0, 0);
  v9 = v13[0];
  v13[0] = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

uint64_t WebKit::NetworkResourceLoader::didReceiveBuffer(WebKit::NetworkResourceLoader *this, const WebCore::FragmentedSharedBuffer *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = *(this + 559);
  if (!v4)
  {
    v12 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(this + 410);
      if (!v13)
      {
        result = 157;
        __break(0xC471u);
        return result;
      }

      v15 = *(this + 11);
      v14 = *(this + 12);
      v16 = *(this + 10);
      v17 = *(this + 251) == 1;
      v18 = *(this + 3328);
      v19 = *(this + 555) != 0;
      v20 = 134219776;
      v21 = this;
      v22 = 2048;
      v23 = v16;
      v24 = 2048;
      v25 = v15;
      v26 = 2048;
      v27 = v14;
      v28 = 2048;
      v29 = v13;
      v30 = 1024;
      v31 = v17;
      v32 = 1024;
      v33 = v18;
      v34 = 1024;
      v35 = v19;
      _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::didReceiveData: Started receiving data", &v20, 0x46u);
      v4 = *(this + 559);
    }

    else
    {
      v4 = 0;
    }
  }

  *(this + 559) = *(a2 + 7) + v4;
  v5 = *(this + 570);
  if (v5)
  {
    v6 = *(this + 569);
    if (!v6)
    {
      v10 = *(MEMORY[0x10] + 40) >> 3;
LABEL_5:
      if (*(a2 + 7) + *(v5 + 56) > v10)
      {
        *(this + 570) = 0;
        if (atomic_fetch_add((v5 + 8), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, (v5 + 8));
          (*(*v5 + 8))(v5);
        }

        goto LABEL_7;
      }

      goto LABEL_6;
    }

    v8 = *(v6 + 8);
    v7 = v6 + 8;
    *v7 = v8 + 1;
    v9 = *(*(v7 + 8) + 40);
    WTF::RefCounted<WebKit::NetworkCache::Cache>::deref(v7, a2);
    v5 = *(this + 570);
    v10 = v9 >> 3;
    if (v5)
    {
      goto LABEL_5;
    }

    if (*(a2 + 7) <= v10)
    {
LABEL_6:
      WebCore::SharedBufferBuilder::append<WebCore::FragmentedSharedBuffer const&>((this + 4560));
      goto LABEL_7;
    }

    *(this + 570) = 0;
  }

LABEL_7:
  result = WebKit::NetworkResourceLoader::isCrossOriginPrefetch(this);
  if ((result & 1) == 0)
  {
    if (*(this + 553))
    {
      result = WebCore::SharedBufferBuilder::append<WebCore::FragmentedSharedBuffer const&>((this + 4424));
      if (!*(this + 555) && ((*(this + 566) & 0xFFFFFFFFFFFFLL) == 0 || *((*(this + 566) & 0xFFFFFFFFFFFFLL) + 8) == 0.0))
      {
        return WebCore::TimerBase::start();
      }
    }

    else
    {
      return WebKit::NetworkResourceLoader::sendBuffer(this, a2);
    }
  }

  return result;
}

uint64_t WebCore::SharedBufferBuilder::append<WebCore::FragmentedSharedBuffer const&>(WebCore::SharedBufferBuilder *a1)
{
  WebCore::SharedBufferBuilder::ensureBuffer(a1);
  v2 = *a1;
  atomic_fetch_add(v2 + 2, 1u);
  result = WebCore::FragmentedSharedBuffer::append();
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    v4 = *(*v2 + 8);

    return v4(v2);
  }

  return result;
}

uint64_t WebKit::NetworkResourceLoader::isCrossOriginPrefetch(WebKit::NetworkResourceLoader *this)
{
  if (*(this + 4123) != 1)
  {
    return 0;
  }

  v2 = *(this + 39);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
  }

  WebCore::ResourceRequestBase::url((this + 104));
  result = WebCore::SecurityOrigin::canRequest() ^ 1;
  if (v2)
  {
    v4 = result;
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v2, v3);
    return v4;
  }

  return result;
}

uint64_t WebKit::NetworkResourceLoader::sendBuffer(WebKit::NetworkResourceLoader *this, const WebCore::FragmentedSharedBuffer *a2)
{
  v4 = *(this + 637);
  if (!v4)
  {
    return WebKit::NetworkResourceLoader::sendDidReceiveDataMessage(this, a2);
  }

  ++*(v4 + 8);
  WebCore::FragmentedSharedBuffer::makeContiguous(&v8, a2);
  v6 = WebCore::ContentFilter::continueAfterDataReceived();
  result = v8;
  v8 = 0;
  if (result)
  {
    if (atomic_fetch_add((result + 8), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, (result + 8));
      result = (*(*result + 8))(result);
    }
  }

  v7 = *(v4 + 8);
  if (v7)
  {
    *(v4 + 8) = v7 - 1;
    if (v6)
    {
      return WebKit::NetworkResourceLoader::sendDidReceiveDataMessage(this, a2);
    }
  }

  else
  {
    result = 290;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::NetworkResourceLoader::didFinishLoading(WebKit::NetworkResourceLoader *this, const WebCore::NetworkLoadMetrics *a2)
{
  v139 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 410);
    if (!v5)
    {
      __break(0xC471u);
      goto LABEL_109;
    }

    v7 = *(this + 11);
    v6 = *(this + 12);
    v8 = *(this + 10);
    v9 = *(this + 251) == 1;
    v10 = *(this + 3328);
    v11 = *(this + 555) != 0;
    v12 = *(this + 559);
    v13 = *(this + 571) != 0;
    *buf = 134220288;
    *&buf[4] = this;
    v120 = 2048;
    v121 = v8;
    v122 = 2048;
    v123 = v7;
    v124 = 2048;
    v125 = v6;
    v126 = 2048;
    v127 = v5;
    v128 = 1024;
    v129 = v9;
    v130 = 1024;
    v131 = v10;
    v132 = 1024;
    v133 = v11;
    v134 = 2048;
    *v135 = v12;
    *&v135[8] = 1024;
    *v136 = v13;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::didFinishLoading: (numBytesReceived=%zd, hasCacheEntryForValidation=%d)", buf, 0x56u);
  }

  if (WebCore::ResourceResponseBase::httpStatusCode((this + 4160)) < 400 || !*(a2 + 15))
  {
    goto LABEL_5;
  }

  WebCore::HTTPHeaderMap::get();
  v55 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEBUG))
  {
    v100 = *(this + 410);
    if (v100)
    {
      v105 = *(this + 10);
      v106 = *(this + 11);
      v107 = *(this + 12);
      v109 = *(this + 251) == 1;
      v110 = *(this + 3328);
      v108 = *(this + 555) != 0;
      v101 = WebCore::ResourceResponseBase::httpStatusCode((this + 4160));
      v102 = *(*(a2 + 15) + 68) + *(*(a2 + 15) + 52);
      if (v116[0])
      {
        v103 = *(v116[0] + 1);
      }

      else
      {
        v103 = 0;
      }

      WTF::String::split();
      *buf = 134220800;
      *&buf[4] = this;
      v120 = 2048;
      v121 = v105;
      v122 = 2048;
      v123 = v106;
      v124 = 2048;
      v125 = v107;
      v126 = 2048;
      v127 = v100;
      v128 = 1024;
      v129 = v109;
      v130 = 1024;
      v131 = v110;
      v132 = 1024;
      v133 = v108;
      v134 = 1024;
      *v135 = v101;
      *&v135[4] = 1024;
      *&v135[6] = v102;
      *v136 = 1024;
      *&v136[2] = v103;
      v137 = 2048;
      v138 = HIDWORD(v112);
      _os_log_debug_impl(&dword_19D52D000, v55, OS_LOG_TYPE_DEBUG, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::didFinishLoading: (httpStatusCode=%d, headerCount=%u, cookieHeaderLength=%u, cookieCount=%zu)", buf, 0x62u);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v111, v104);
      goto LABEL_54;
    }

    __break(0xC471u);
LABEL_109:
    JUMPOUT(0x19DCBABF0);
  }

LABEL_54:
  v57 = v116[0];
  v116[0] = 0;
  if (v57 && atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v57, v56);
  }

LABEL_5:
  v15 = *(this + 518);
  ++*(v15 + 20);
  if (*(this + 4624) == 1)
  {
    v58 = *(this + 410);
    if (!v58)
    {
      __break(0xC471u);
      JUMPOUT(0x19DCBAC78);
    }

    WebKit::NetworkConnectionToWebProcess::addNetworkLoadInformationMetrics(v15, v58, a2);
  }

  v16 = *(this + 571);
  if (v16)
  {
    *(this + 571) = 0;
    v117 = v16;
    WebKit::NetworkResourceLoader::didRetrieveCacheEntry(this, &v117);
    result = v117;
    if (v117)
    {
      WebKit::NetworkCache::Entry::~Entry(v117, v47);
      result = bmalloc::api::tzoneFree(v48, v49);
    }
  }

  else
  {
    if (WebKit::NetworkResourceLoader::shouldLogCookieInformation(*(v15 + 88), *(*(this + 518) + 96), v14))
    {
      WebKit::NetworkResourceLoader::logCookieInformation(this);
    }

    v17 = *(this + 555);
    v18 = *(this + 553);
    if (v17)
    {
      if (v18)
      {
        atomic_fetch_add((v18 + 8), 1u);
        WebKit::sendReplyToSynchronousRequest(v17, v18, a2);
        if (atomic_fetch_add((v18 + 8), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, (v18 + 8));
          (*(*v18 + 8))(v18);
        }
      }

      else
      {
        WebKit::sendReplyToSynchronousRequest(v17, 0, a2);
      }

LABEL_17:
      v25 = *(a2 + 13);
      if (v25 != -1)
      {
        WebKit::NetworkResourceLoader::updateBytesTransferredOverNetwork(this, v25);
      }

      if (WebKit::NetworkResourceLoader::canUseCache(this, (*(this + 519) + 3328)))
      {
        if (*(this + 570))
        {
          if (WebKit::NetworkResourceLoader::isCrossOriginPrefetch(this))
          {
            v80 = *(this + 518);
            ++*(v80 + 20);
            v81 = *(v80 + 88);
            *buf = *(v80 + 96);
            v82 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v81 + 240), buf);
            v83 = v82;
            if (v82)
            {
              ++*(v82 + 16);
            }

            if (*(v80 + 20) == 1)
            {
              (*(*v80 + 8))(v80);
            }

            else
            {
              --*(v80 + 20);
            }

            if (v83)
            {
              v84 = qword_1ED6416F0;
              if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
              {
                v85 = *(this + 410);
                if (!v85)
                {
                  __break(0xC471u);
                  JUMPOUT(0x19DCBAD18);
                }

                v87 = *(this + 11);
                v86 = *(this + 12);
                v88 = *(this + 10);
                v89 = *(this + 251) == 1;
                v90 = *(this + 3328);
                v91 = *(this + 555) != 0;
                *buf = 134219776;
                *&buf[4] = this;
                v120 = 2048;
                v121 = v88;
                v122 = 2048;
                v123 = v87;
                v124 = 2048;
                v125 = v86;
                v126 = 2048;
                v127 = v85;
                v128 = 1024;
                v129 = v89;
                v130 = 1024;
                v131 = v90;
                v132 = 1024;
                v133 = v91;
                _os_log_impl(&dword_19D52D000, v84, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::tryStoreAsCacheEntry: Storing entry in prefetch cache", buf, 0x46u);
              }

              ++*(v83 + 520);
              v92 = WebCore::ResourceRequestBase::url((*(this + 519) + 3328));
              v93 = *(this + 5272);
              WebCore::SharedBufferBuilder::take(&v111, (this + 4560));
              v94 = v111;
              v111 = 0;
              *buf = v94;
              v95.n128_f64[0] = WebKit::PrefetchCache::store(v83 + 520, v92, this + 4160, v93, buf);
              v96 = *buf;
              *buf = 0;
              if (v96 && atomic_fetch_add(v96 + 2, 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v96 + 2);
                (*(*v96 + 8))(v96, v95.n128_f64[0]);
              }

              v97 = v111;
              v111 = 0;
              if (v97 && atomic_fetch_add(v97 + 2, 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v97 + 2);
                (*(*v97 + 8))(v97, v95);
              }

              v98 = *(v83 + 520);
              if (!v98)
              {
                __break(0xC471u);
                JUMPOUT(0x19DCBAC98);
              }

              *(v83 + 520) = v98 - 1;
              v99 = *(v83 + 16);
              if (!v99)
              {
                __break(0xC471u);
                JUMPOUT(0x19DCBACB8);
              }

              *(v83 + 16) = v99 - 1;
            }
          }

          else
          {
            v26 = qword_1ED6416F0;
            if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
            {
              v27 = *(this + 410);
              if (!v27)
              {
                __break(0xC471u);
                JUMPOUT(0x19DCBAC10);
              }

              v29 = *(this + 11);
              v28 = *(this + 12);
              v30 = *(this + 10);
              v31 = *(this + 251) == 1;
              v32 = *(this + 3328);
              v33 = *(this + 555) != 0;
              *buf = 134219776;
              *&buf[4] = this;
              v120 = 2048;
              v121 = v30;
              v122 = 2048;
              v123 = v29;
              v124 = 2048;
              v125 = v28;
              v126 = 2048;
              v127 = v27;
              v128 = 1024;
              v129 = v31;
              v130 = 1024;
              v131 = v32;
              v132 = 1024;
              v133 = v33;
              _os_log_impl(&dword_19D52D000, v26, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::tryStoreAsCacheEntry: Storing entry in HTTP disk cache", buf, 0x46u);
            }

            v34 = *(this + 569);
            if (v34)
            {
              ++*(v34 + 8);
            }

            v35 = *(this + 519);
            v36 = *(this + 5272);
            WebCore::SharedBufferBuilder::take(v116, (this + 4560));
            v37 = v116[0];
            v116[0] = 0;
            v111 = v37;
            ++*(this + 5);
            v38 = WTF::fastMalloc(0x10);
            *v38 = &unk_1F1103658;
            v38[1] = this;
            v118 = v38;
            WebKit::NetworkCache::Cache::store((v35 + 3328), (this + 4160), v34, v36, &v111, &v118, buf);
            v40 = *buf;
            *buf = 0;
            if (v40)
            {
              WebKit::NetworkCache::Entry::~Entry(v40, v39);
              bmalloc::api::tzoneFree(v52, v53);
            }

            v41 = v118;
            v118 = 0;
            if (v41)
            {
              (*(*v41 + 8))(v41);
            }

            v42 = v111;
            v111 = 0;
            if (v42 && atomic_fetch_add(v42 + 2, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v42 + 2);
              (*(*v42 + 8))(v42);
            }

            v43 = v116[0];
            v116[0] = 0;
            if (v43 && atomic_fetch_add(v43 + 2, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v43 + 2);
              (*(*v43 + 8))(v43);
            }

            if (v34)
            {
              WTF::RefCounted<WebKit::NetworkCache::Cache>::deref((v34 + 8), v39);
            }
          }

          goto LABEL_39;
        }

        v59 = qword_1ED6416F0;
        if (!os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
        {
LABEL_39:
          if ((*(this + 3592) & 1) != 0 || *(this + 4120) == 1)
          {
            v68 = *(this + 518);
            ++*(v68 + 20);
            WebKit::AuxiliaryProcess::protectedParentProcessConnection(*(v68 + 88), &v118);
            v69 = v118;
            v115 = *(this + 10);
            WebKit::NetworkResourceLoader::resourceLoadInfo(buf, this);
            v111 = 0;
            v112 = 0;
            WTF::URL::invalidate(&v112);
            v113[2] = 0;
            v113[0] = 0;
            *(v113 + 6) = 0;
            v114 = 1;
            v116[0] = &v115;
            v116[1] = buf;
            v116[2] = (this + 4160);
            v116[3] = &v111;
            IPC::Connection::send<Messages::NetworkProcessProxy::ResourceLoadDidCompleteWithError>(v69, v116);
            WebCore::ResourceError::~ResourceError(&v111, v70);
            WebKit::ResourceLoadInfo::~ResourceLoadInfo(buf, v71);
            v72 = v118;
            v118 = 0;
            if (v72)
            {
              WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v72);
            }

            if (*(v68 + 20) == 1)
            {
              (*(*v68 + 8))(v68);
            }

            else
            {
              --*(v68 + 20);
            }
          }

          result = WebKit::NetworkResourceLoader::cleanup(this, 1);
          goto LABEL_42;
        }

        v73 = *(this + 410);
        if (!v73)
        {
          __break(0xC471u);
          JUMPOUT(0x19DCBACF8);
        }

        v75 = *(this + 11);
        v74 = *(this + 12);
        v76 = *(this + 10);
        v77 = *(this + 251) == 1;
        v78 = *(this + 3328);
        v79 = *(this + 555) != 0;
        *buf = 134219776;
        *&buf[4] = this;
        v120 = 2048;
        v121 = v76;
        v122 = 2048;
        v123 = v75;
        v124 = 2048;
        v125 = v74;
        v126 = 2048;
        v127 = v73;
        v128 = 1024;
        v129 = v77;
        v130 = 1024;
        v131 = v78;
        v132 = 1024;
        v133 = v79;
        v67 = "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::tryStoreAsCacheEntry: Not storing cache entry because m_bufferedDataForCache is null";
      }

      else
      {
        v59 = qword_1ED6416F0;
        if (!os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_39;
        }

        v60 = *(this + 410);
        if (!v60)
        {
          __break(0xC471u);
          JUMPOUT(0x19DCBACD8);
        }

        v62 = *(this + 11);
        v61 = *(this + 12);
        v63 = *(this + 10);
        v64 = *(this + 251) == 1;
        v65 = *(this + 3328);
        v66 = *(this + 555) != 0;
        *buf = 134219776;
        *&buf[4] = this;
        v120 = 2048;
        v121 = v63;
        v122 = 2048;
        v123 = v62;
        v124 = 2048;
        v125 = v61;
        v126 = 2048;
        v127 = v60;
        v128 = 1024;
        v129 = v64;
        v130 = 1024;
        v131 = v65;
        v132 = 1024;
        v133 = v66;
        v67 = "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::tryStoreAsCacheEntry: Not storing cache entry because request is not eligible";
      }

      _os_log_impl(&dword_19D52D000, v59, OS_LOG_TYPE_DEFAULT, v67, buf, 0x46u);
      goto LABEL_39;
    }

    if (v18)
    {
      if (*(v18 + 56))
      {
        atomic_fetch_add((v18 + 8), 1u);
        WebKit::NetworkResourceLoader::sendBuffer(this, v18);
        if (atomic_fetch_add((v18 + 8), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, (v18 + 8));
          (*(*v18 + 8))(v18);
        }
      }
    }

    v19 = *(this + 637);
    if (!v19)
    {
LABEL_15:
      v20 = (*(*(this + 3) + 56))(this + 24);
      v22 = IPC::Encoder::operator new(0x238, v21);
      *v22 = 3031;
      *(v22 + 2) = 0;
      *(v22 + 3) = 0;
      *(v22 + 1) = v20;
      *(v22 + 68) = 0;
      *(v22 + 70) = 0;
      *(v22 + 69) = 0;
      IPC::Encoder::encodeHeader(v22);
      *buf = v22;
      IPC::ArgumentCoder<WebCore::NetworkLoadMetrics,void>::encode(v22, a2);
      (*(*(this + 3) + 32))(this + 24, buf, 0);
      v24 = *buf;
      *buf = 0;
      if (v24)
      {
        IPC::Encoder::~Encoder(v24, v23);
        bmalloc::api::tzoneFree(v50, v51);
      }

      goto LABEL_17;
    }

    ++*(v19 + 2);
    v45 = WebCore::ResourceRequestBase::url((this + 104));
    result = WebCore::ContentFilter::continueAfterNotifyFinished(v19, v45);
    if (result)
    {
      WebCore::ContentFilter::stopFilteringMainResource(v19);
      v46 = *(v19 + 2);
      if (!v46)
      {
        __break(0xC471u);
        JUMPOUT(0x19DCBAC30);
      }

      *(v19 + 2) = v46 - 1;
      goto LABEL_15;
    }

    v54 = *(v19 + 2);
    if (!v54)
    {
      __break(0xC471u);
      JUMPOUT(0x19DCBAC58);
    }

    *(v19 + 2) = v54 - 1;
  }

LABEL_42:
  if (*(v15 + 20) == 1)
  {
    return (*(*v15 + 8))(v15);
  }

  --*(v15 + 20);
  return result;
}

WebCore::AdditionalNetworkLoadMetricsForWebInspector *WebKit::NetworkConnectionToWebProcess::addNetworkLoadInformationMetrics(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DCBAF84);
  }

  v6 = *(a1 + 160);
  if (!v6)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkLoadInformation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((a1 + 160), 0);
    v6 = *(a1 + 160);
  }

  v7 = *(v6 - 8);
  v8 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
  v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
  v11 = v7 & ((v10 >> 31) ^ v10);
  v12 = v6 + 16 * v11;
  v13 = *v12;
  if (!*v12)
  {
LABEL_13:
    *v12 = a2;
    v16 = WTF::fastMalloc(0x260);
    bzero(v16, 0x260uLL);
    WebCore::ResourceRequest::ResourceRequest(v16);
    WebCore::ResourceResponseBase::ResourceResponseBase((v16 + 200));
    *(v16 + 448) = 0;
    *(v16 + 456) = 0;
    *(v16 + 338) = *(v16 + 338) & 0xF1 | 4;
    WebCore::NetworkLoadMetrics::NetworkLoadMetrics((v16 + 464));
    *(v16 + 592) = 0u;
    v30 = 0;
    std::unique_ptr<WebCore::NetworkLoadInformation>::reset[abi:sn200100]((v12 + 8), v16);
    std::unique_ptr<WebCore::NetworkLoadInformation>::reset[abi:sn200100](&v30, 0);
    v17 = *(a1 + 160);
    if (v17)
    {
      v18 = *(v17 - 12) + 1;
    }

    else
    {
      v18 = 1;
    }

    *(v17 - 12) = v18;
    v19 = (*(v17 - 16) + v18);
    v20 = *(v17 - 4);
    if (v20 > 0x400)
    {
      if (v20 > 2 * v19)
      {
        goto LABEL_19;
      }
    }

    else if (3 * v20 > 4 * v19)
    {
      goto LABEL_19;
    }

    v12 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkLoadInformation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((a1 + 160), v12);
    goto LABEL_19;
  }

  v14 = 0;
  v15 = 1;
  while (v13 != a2)
  {
    if (v13 == -1)
    {
      v14 = v12;
    }

    v11 = (v11 + v15) & v7;
    v12 = v6 + 16 * v11;
    v13 = *v12;
    ++v15;
    if (!*v12)
    {
      if (v14)
      {
        *v14 = 0;
        v14[1] = 0;
        --*(*(a1 + 160) - 16);
        v12 = v14;
      }

      goto LABEL_13;
    }
  }

LABEL_19:
  v21 = *(v12 + 8);
  v22 = *(a3 + 16);
  *(v21 + 464) = *a3;
  *(v21 + 480) = v22;
  v23 = *(a3 + 32);
  v24 = *(a3 + 48);
  v25 = *(a3 + 64);
  *(v21 + 544) = *(a3 + 80);
  *(v21 + 512) = v24;
  *(v21 + 528) = v25;
  *(v21 + 496) = v23;
  WTF::String::operator=((v21 + 552), (a3 + 88));
  v27 = *(a3 + 96);
  *(v21 + 576) = *(a3 + 112);
  *(v21 + 560) = v27;
  v28 = *(a3 + 120);
  if (v28)
  {
    ++*v28;
  }

  result = *(v21 + 584);
  *(v21 + 584) = v28;
  if (result)
  {
    return WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(result, v26);
  }

  return result;
}

uint64_t WebKit::NetworkResourceLoader::shouldLogCookieInformation(WebKit::NetworkResourceLoader *this, WebKit::NetworkConnectionToWebProcess *a2, SessionID a3)
{
  v6 = a2;
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(this + 30, &v6);
  if (result)
  {
    v4 = result;
    ++*(result + 16);
    result = (*(*result + 88))(result);
    v5 = *(v4 + 16);
    if (v5)
    {
      *(v4 + 16) = v5 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::NetworkResourceLoader::logCookieInformation(WebKit::NetworkResourceLoader *this)
{
  v2 = *(this + 518);
  ++*(v2 + 20);
  v3 = *(v2 + 88);
  v15 = *(v2 + 96);
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v3 + 248), &v15);
  v5 = v4;
  if (v4)
  {
    ++*(v4 + 8);
  }

  if (*(v2 + 20) != 1)
  {
    --*(v2 + 20);
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_12:
    __break(0xC471u);
    goto LABEL_15;
  }

  (*(*v2 + 8))(v2);
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_5:
  v6 = *(this + 518);
  PartyForCookies = WebCore::ResourceRequestBase::firstPartyForCookies((this + 104));
  v8 = WebCore::SameSiteInfo::create();
  v13 = v8;
  v14 = BYTE2(v8);
  v9 = WebCore::ResourceRequestBase::url((this + 104));
  WebCore::ResourceRequestBase::httpReferrer(&v15, (this + 104));
  if (!*(this + 410))
  {
    __break(0xC471u);
    JUMPOUT(0x19DCBB1ECLL);
  }

  WebKit::NetworkResourceLoader::logCookieInformation(v6, "NetworkResourceLoader", 22, this, v5, PartyForCookies, &v13, v9, &v15, *(this + 12), 1, *(this + 11), 1, *(this + 410), 1);
  result = v15;
  v15 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v10);
  }

  v12 = *(v5 + 8);
  if (!v12)
  {
    __break(0xC471u);
LABEL_15:
    JUMPOUT(0x19DCBB1CCLL);
  }

  *(v5 + 8) = v12 - 1;
  return result;
}

IPC::Encoder *IPC::MessageSender::send<Messages::WebResourceLoader::DidFinishResourceLoad>(uint64_t a1, uint64_t *a2)
{
  v4 = (*(*a1 + 56))(a1);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 3031;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<WebCore::NetworkLoadMetrics,void>::encode(v6, *a2);
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

void WebKit::NetworkResourceLoader::updateBytesTransferredOverNetwork(WebKit::NetworkResourceLoader *this, uint64_t a2)
{
  v2 = *(this + 560);
  *(this + 560) = a2;
  v3 = a2 - v2;
  if (a2 == v2)
  {
    return;
  }

  v4 = this;
  v5 = *(this + 5);
  *(this + 5) = v5 + 8;
  v6 = v5 + 7;
  if (!v6)
  {
    this = (*(*this + 24))(this);
    v6 = *(v4 + 5);
  }

  *(v4 + 5) = v6 + 2;
  if (v6 == -1)
  {
    this = (*(*v4 + 24))(v4);
    v6 = *(v4 + 5) - 1;
  }

  else
  {
    *(v4 + 5) = v6 + 1;
  }

  if (v6)
  {
    *(v4 + 5) = v6;
  }

  else
  {
    this = (*(*v4 + 24))(v4);
    v6 = *(v4 + 5);
  }

  v7 = v6 - 1;
  if (v7)
  {
    *(v4 + 5) = v7;
  }

  else
  {
    this = (*(*v4 + 24))(v4);
    v7 = *(v4 + 5);
  }

  v8 = v7 - 1;
  if (v8)
  {
    *(v4 + 5) = v8;
  }

  else
  {
    this = (*(*v4 + 24))(v4);
    v8 = *(v4 + 5);
  }

  v9 = v8 - 1;
  if (v9)
  {
    *(v4 + 5) = v9;
  }

  else
  {
    this = (*(*v4 + 24))(v4);
  }

  v10 = *(v4 + 4056);
  if (v10 == 255)
  {
    v11 = -1;
  }

  else
  {
    v11 = *(v4 + 4056);
  }

  if (v11)
  {
    if (v11 == 1)
    {
      if (v10 == 1)
      {
        WebKit::NetworkResourceLoader::reportNetworkUsageToAllSharedWorkerObjects(*(v4 + 518), *(v4 + 506), v3);
        goto LABEL_19;
      }
    }

    else if (v10 == 2)
    {
      WebKit::NetworkResourceLoader::reportNetworkUsageToAllServiceWorkerClients(*(v4 + 518));
      goto LABEL_19;
    }

LABEL_43:
    mpark::throw_bad_variant_access(this);
  }

  if (*(v4 + 4056))
  {
    goto LABEL_43;
  }

LABEL_19:
  v12 = *(v4 + 5) - 1;
  if (*(v4 + 5) == 1)
  {
    (*(*v4 + 24))(v4);
    v12 = *(v4 + 5);
  }

  else
  {
    *(v4 + 5) = v12;
  }

  v13 = v12 - 1;
  if (v13)
  {
    *(v4 + 5) = v13;
  }

  else
  {
    (*(*v4 + 24))(v4);
    v13 = *(v4 + 5);
  }

  v14 = v13 - 1;
  if (v14)
  {
    *(v4 + 5) = v14;
  }

  else
  {
    (*(*v4 + 24))(v4);
    v14 = *(v4 + 5);
  }

  v15 = v14 - 1;
  if (v15)
  {
    *(v4 + 5) = v15;
  }

  else
  {
    v16 = *(*v4 + 24);

    v16(v4);
  }
}

IPC::Encoder *IPC::Connection::send<Messages::NetworkProcessProxy::ResourceLoadDidCompleteWithError>(uint64_t *a1, void **a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 556;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v4, **a2);
  IPC::ArgumentCoder<WebKit::ResourceLoadInfo,void>::encode(v4, a2[1]);
  IPC::ArgumentCoder<WebCore::ResourceResponse,void>::encode(v4, a2[2]);
  IPC::ArgumentCoder<WebCore::ResourceError,void>::encode(v4, a2[3]);
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

uint64_t WebCore::ResourceError::operator=(uint64_t a1, uint64_t a2)
{
  WTF::String::operator=(a1, a2);
  WTF::String::operator=((a1 + 8), (a2 + 8));
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  WTF::String::operator=((a1 + 48), (a2 + 48));
  v5 = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 56) = v5;
  v6 = *(a2 + 64);
  if (v6)
  {
    CFRetain(*(a2 + 64));
  }

  v7 = *(a1 + 64);
  *(a1 + 64) = v6;
  if (v7)
  {
    CFRelease(v7);
  }

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

IPC::Encoder *IPC::Connection::send<Messages::WebResourceLoader::DidFailServiceWorkerLoad>(uint64_t *a1, WebCore::ResourceError **a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 3030;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<WebCore::ResourceError,void>::encode(v6, *a2);
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

uint64_t WebKit::NetworkResourceLoader::messageSenderDestinationID(WebKit::NetworkResourceLoader *this)
{
  result = *(this + 410);
  if (!result)
  {
    result = 154;
    __break(0xC471u);
  }

  return result;
}

IPC::Encoder *IPC::Connection::send<Messages::WebResourceLoader::DidFailResourceLoad>(uint64_t *a1, WebCore::ResourceError **a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 3029;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<WebCore::ResourceError,void>::encode(v6, *a2);
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

IPC::Encoder *IPC::Connection::send<Messages::NetworkProcessProxy::DidBlockLoadToKnownTracker>(uint64_t *a1, uint64_t **a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 531;
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

uint64_t WebKit::NetworkResourceLoader::didBlockAuthenticationChallenge(WebKit::NetworkResourceLoader *this)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 410);
    if (!v3)
    {
      result = 157;
      __break(0xC471u);
      return result;
    }

    v5 = *(this + 11);
    v4 = *(this + 12);
    v6 = *(this + 10);
    v7 = *(this + 251) == 1;
    v8 = *(this + 3328);
    v9 = *(this + 555) != 0;
    *v19 = 134219776;
    *&v19[4] = this;
    v20 = 2048;
    v21 = v6;
    v22 = 2048;
    v23 = v5;
    v24 = 2048;
    v25 = v4;
    v26 = 2048;
    v27 = v3;
    v28 = 1024;
    v29 = v7;
    v30 = 1024;
    v31 = v8;
    v32 = 1024;
    v33 = v9;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::didBlockAuthenticationChallenge:", v19, 0x46u);
  }

  v11 = *(this + 3);
  v10 = this + 24;
  v12 = (*(v11 + 56))(v10);
  v14 = IPC::Encoder::operator new(0x238, v13);
  *v14 = 3028;
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 1) = v12;
  *(v14 + 68) = 0;
  *(v14 + 70) = 0;
  *(v14 + 69) = 0;
  IPC::Encoder::encodeHeader(v14);
  *v19 = v14;
  (*(*v10 + 32))(v10, v19, 0);
  result = *v19;
  *v19 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v15);
    return bmalloc::api::tzoneFree(v17, v18);
  }

  return result;
}

atomic_ullong *WebKit::NetworkResourceLoader::didReceiveChallenge(atomic_ullong *this, const WebCore::AuthenticationChallenge *a2)
{
  v3 = this;
  v20 = *MEMORY[0x1E69E9840];
  if ((this[449] & 1) != 0 || *(this + 4120) == 1)
  {
    v4 = this[518];
    ++*(v4 + 20);
    WebKit::AuxiliaryProcess::protectedParentProcessConnection(*(v4 + 88), &v15);
    v5 = v15;
    v6 = *(v3 + 80);
    WebKit::NetworkResourceLoader::resourceLoadInfo(v17, v3);
    v8 = IPC::Encoder::operator new(0x238, v7);
    *v8 = 558;
    *(v8 + 68) = 0;
    *(v8 + 70) = 0;
    *(v8 + 69) = 0;
    *(v8 + 2) = 0;
    *(v8 + 3) = 0;
    *(v8 + 1) = 0;
    IPC::Encoder::encodeHeader(v8);
    v16 = v8;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, v6);
    IPC::ArgumentCoder<WebKit::ResourceLoadInfo,void>::encode(v8, v17);
    IPC::ArgumentCoder<WebCore::AuthenticationChallenge,void>::encode(v8, a2);
    IPC::Connection::sendMessageImpl(v5, &v16, 0, 0);
    v10 = v16;
    v16 = 0;
    if (v10)
    {
      IPC::Encoder::~Encoder(v10, v9);
      bmalloc::api::tzoneFree(v13, v14);
    }

    v11 = v19;
    v19 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v9);
    }

    v12 = v18;
    v18 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v9);
    }

    this = v15;
    v15 = 0;
    if (this)
    {
      this = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(this);
    }

    if (*(v4 + 20) == 1)
    {
      return (*(*v4 + 8))(v4);
    }

    else
    {
      --*(v4 + 20);
    }
  }

  return this;
}

void WebKit::NetworkResourceLoader::willSendRedirectedRequestInternal(uint64_t a1, char *a2, WebCore::ResourceRequestBase *a3, uint64_t a4, char a5, uint64_t *a6)
{
  v145 = *MEMORY[0x1E69E9840];
  v12 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 3280);
    if (!v13)
    {
      goto LABEL_171;
    }

    v15 = *(a1 + 88);
    v14 = *(a1 + 96);
    v16 = *(a1 + 80);
    v17 = *(a1 + 251) == 1;
    v18 = *(a1 + 3328);
    v19 = *(a1 + 4440) != 0;
    *buf = 134219776;
    *&buf[4] = a1;
    *&buf[12] = 2048;
    *&buf[14] = v16;
    *&buf[22] = 2048;
    *&buf[24] = v15;
    *v133 = 2048;
    *&v133[2] = v14;
    *&v133[10] = 2048;
    *&v133[12] = v13;
    *&v133[20] = 1024;
    *&v133[22] = v17;
    *&v133[26] = 1024;
    v134 = v18;
    LOWORD(cf) = 1024;
    *(&cf + 2) = v19;
    _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::willSendRedirectedRequest:", buf, 0x46u);
  }

  ++*(a1 + 4432);
  WebCore::ResourceResponseBase::operator=(a1 + 4704, a4);
  v20 = *(a4 + 248);
  if (v20)
  {
    CFRetain(*(a4 + 248));
  }

  v21 = *(a1 + 4952);
  *(a1 + 4952) = v20;
  if (v21)
  {
    CFRelease(v21);
  }

  *(a1 + 4960) = *(a4 + 256);
  if ((*(a1 + 4976) & 1) == 0)
  {
    v22 = WebCore::ResourceResponseBase::url(a4);
    WTF::String::operator=((a1 + 4968), v22);
    v23 = *(v22 + 24);
    *(a1 + 4976) = *(v22 + 8);
    *(a1 + 4992) = v23;
  }

  v24 = *(a1 + 5096);
  if (!v24)
  {
    goto LABEL_13;
  }

  ++*(v24 + 8);
  v25 = WebCore::ContentFilter::continueAfterWillSendRequest();
  v27 = *(v24 + 8);
  if (!v27)
  {
    __break(0xC471u);
    goto LABEL_168;
  }

  *(v24 + 8) = v27 - 1;
  if (v25)
  {
LABEL_13:
    LOBYTE(v117) = 0;
    v131 = 0;
    v28 = WebCore::ResourceRequestBase::url(a3);
    v30 = WebCore::PrivateClickMeasurement::parseAttributionRequest(buf, v28, v29);
    if (BYTE8(v140) == 1)
    {
      if (!*buf)
      {
        goto LABEL_56;
      }

      if (*(*buf + 4))
      {
        WebKit::NetworkResourceLoader::addConsoleMessage(a1, 0xE, 2, buf);
      }

LABEL_50:
      if (BYTE8(v140) != 255)
      {
        if (!BYTE8(v140))
        {
          WebCore::PCM::AttributionTriggerData::~AttributionTriggerData(buf, v31);
          if (a5)
          {
            goto LABEL_67;
          }

LABEL_57:
          v46 = WebKit::NetworkResourceLoader::validateCacheEntryForMaxAgeCapValidation(a1, a2, a4, v33);
          v48 = v47;
          if (WebCore::ResourceResponseBase::source(a4) != 1 || !WebKit::NetworkResourceLoader::canUseCache(a1, a2) || *(a1 + 4576) || *(a1 + 4432) > 5u)
          {
            goto LABEL_67;
          }

          v49 = *(a1 + 4552);
          if (v49)
          {
            ++*(v49 + 2);
          }

          WebKit::NetworkCache::Cache::storeRedirect(a2, a4, v49, a3, v46, v48, &v116);
          v51 = v116;
          v116 = 0;
          if (v51)
          {
            WebKit::NetworkCache::Entry::~Entry(v51, v50);
            bmalloc::api::tzoneFree(v105, v106);
            if (!v49)
            {
LABEL_67:
              if (*(a1 + 251) == 1 && WebKit::NetworkResourceLoader::shouldInterruptNavigationForCrossOriginEmbedderPolicy(a1, a4, v32))
              {
                v52 = *(MEMORY[0x1E69E26C8] + 8);
                if (v52)
                {
                  if (v52 == 1)
                  {
                    v53 = MEMORY[0x1E696EB88];
                    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
                  }

                  else
                  {
                    WTF::StringImpl::createWithoutCopyingNonEmpty();
                    v53 = *buf;
                  }
                }

                else
                {
                  v53 = 0;
                }

                v54 = WebCore::ResourceRequestBase::url(a3);
                WTF::StringImpl::createWithoutCopyingNonEmpty();
                v55 = *buf;
                if (v53)
                {
                  atomic_fetch_add_explicit(v53, 2u, memory_order_relaxed);
                }

                *buf = v53;
                v56 = *v54;
                if (*v54)
                {
                  atomic_fetch_add_explicit(v56, 2u, memory_order_relaxed);
                }

                *&buf[8] = v56;
                v57 = *(v54 + 8);
                *v133 = *(v54 + 24);
                *&buf[16] = v57;
                if (v55)
                {
                  atomic_fetch_add_explicit(v55, 2u, memory_order_relaxed);
                }

                *&v133[16] = v55;
                *&v133[24] = 0;
                LOWORD(v134) = 2;
                cf = 0;
                v136 = 1;
                WebKit::NetworkResourceLoader::didFailLoading(a1, buf);
                v59 = cf;
                cf = 0;
                if (v59)
                {
                  CFRelease(v59);
                }

                v60 = *&v133[16];
                *&v133[16] = 0;
                if (v60 && atomic_fetch_add_explicit(v60, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v60, v58);
                }

                v61 = *&buf[8];
                *&buf[8] = 0;
                if (v61 && atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v61, v58);
                }

                v62 = *buf;
                *buf = 0;
                if (v62 && atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v62, v58);
                }

                if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v55, v58);
                }

                if (v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v53, v58);
                }

                WebCore::ResourceRequest::ResourceRequest(buf);
                v63 = *a6;
                *a6 = 0;
                (*(*v63 + 16))(v63, buf);
                (*(*v63 + 8))(v63);
                WebCore::ResourceRequest::~ResourceRequest(buf);
LABEL_151:
                if (v131 == 1)
                {
                  WebCore::PCM::AttributionTriggerData::~AttributionTriggerData(&v117, v64);
                }

                return;
              }

              WebKit::NetworkResourceLoader::doCrossOriginOpenerHandlingOfResponse(a1, a4, &v111);
              if (v115 == 1)
              {
                WebKit::NetworkResourceLoader::didFailLoading(a1, &v111);
                WebCore::ResourceRequest::ResourceRequest(buf);
                v65 = *a6;
                *a6 = 0;
                (*(*v65 + 16))(v65, buf);
                (*(*v65 + 8))(v65);
                WebCore::ResourceRequest::~ResourceRequest(buf);
                if (v115 == 1)
                {
                  v66 = v114;
                  v114 = 0;
                  if (v66)
                  {
                    CFRelease(v66);
                  }

                  v67 = v113;
                  v113 = 0;
                  if (v67 && atomic_fetch_add_explicit(v67, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v67, v64);
                  }

                  v68 = v112;
                  v112 = 0;
                  if (v68 && atomic_fetch_add_explicit(v68, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v68, v64);
                  }

                  v69 = v111;
                  v111 = 0;
                  if (v69 && atomic_fetch_add_explicit(v69, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v69, v64);
                  }
                }

                goto LABEL_151;
              }

              WebCore::ResourceRequestBase::httpHeaderField();
              if (*buf)
              {
                if (WTF::linkedOnOrAfterSDKWithBehavior())
                {
                  v71 = WebCore::ResourceRequestBase::url(a2);
                  v72 = WebCore::ResourceRequestBase::url(a3);
                  if (WTF::protocolHostAndPortAreEqual(v71, v72, v73))
                  {
                    WebCore::ResourceRequestBase::setHTTPHeaderField();
                  }
                }

                v74 = *buf;
                *buf = 0;
                if (v74 && atomic_fetch_add_explicit(v74, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v74, v70);
                }
              }

              if ((a2[148] & 0x80000000) == 0)
              {
LABEL_121:
                v83 = *(a1 + 4600);
                if (v83)
                {
                  ++*(v83 + 8);
                  if (v131 == 1)
                  {
                    *(v83 + 528) = v131;
                  }

                  WebKit::NetworkLoadChecker::storeRedirectionIfNeeded(v83, a2, a4);
                  v84 = qword_1ED6416F0;
                  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
                  {
                    v85 = *(a1 + 3280);
                    if (!v85)
                    {
                      __break(0xC471u);
                      JUMPOUT(0x19DCBCB5CLL);
                    }

                    v87 = *(a1 + 88);
                    v86 = *(a1 + 96);
                    v88 = *(a1 + 80);
                    v89 = *(a1 + 251) == 1;
                    v90 = *(a1 + 3328);
                    v91 = *(a1 + 4440) != 0;
                    *buf = 134219776;
                    *&buf[4] = a1;
                    *&buf[12] = 2048;
                    *&buf[14] = v88;
                    *&buf[22] = 2048;
                    *&buf[24] = v87;
                    *v133 = 2048;
                    *&v133[2] = v86;
                    *&v133[10] = 2048;
                    *&v133[12] = v85;
                    *&v133[20] = 1024;
                    *&v133[22] = v89;
                    *&v133[26] = 1024;
                    v134 = v90;
                    LOWORD(cf) = 1024;
                    *(&cf + 2) = v91;
                    _os_log_impl(&dword_19D52D000, v84, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::willSendRedirectedRequest: Checking redirect using NetworkLoadChecker", buf, 0x46u);
                  }

                  *buf = a1;
                  ++*(a1 + 20);
                  v92 = *(v83 + 64);
                  buf[16] = v92;
                  buf[24] = 0;
                  v143 = 0;
                  v93 = v131;
                  if (v131 == 1)
                  {
                    *&buf[24] = v117;
                    buf[26] = v118;
                    v133[0] = 0;
                    v133[8] = 0;
                    if (v120 == 1)
                    {
                      v109 = v119;
                      v119 = 0;
                      *v133 = v109;
                      v133[8] = 1;
                    }

                    v133[16] = 0;
                    v133[24] = 0;
                    if (v122 == 1)
                    {
                      v94 = v121;
                      v121 = 0;
                      *&v133[16] = v94;
                      v133[24] = 1;
                    }

                    LOBYTE(cf) = 0;
                    v136 = 0;
                    if (v124 == 1)
                    {
                      v110 = v123;
                      v123 = 0;
                      cf = v110;
                      v136 = 1;
                    }

                    LOBYTE(v137) = 0;
                    LOBYTE(v139) = 0;
                    if (v127 == 1)
                    {
                      v95 = v125;
                      v125 = 0u;
                      v137 = v95;
                      v96 = v126;
                      v126 = 0u;
                      v138 = v96;
                      LOBYTE(v139) = v127;
                    }

                    LOBYTE(v140) = 0;
                    v142 = 0;
                    if (v130 == 1)
                    {
                      v97 = v128;
                      v128 = 0uLL;
                      v140 = v97;
                      v98 = v129;
                      v129 = 0;
                      v141 = v98;
                      v142 = 1;
                    }

                    v143 = 1;
                  }

                  v99 = *a6;
                  *a6 = 0;
                  v144 = v99;
                  v100 = WTF::fastMalloc(0xB0);
                  *v100 = &unk_1F11035E0;
                  *(v100 + 8) = a1;
                  *&buf[8] = 0;
                  *(v100 + 16) = a1;
                  *(v100 + 24) = v92;
                  *(v100 + 32) = 0;
                  *(v100 + 160) = 0;
                  if (v93)
                  {
                    std::__optional_storage_base<WebCore::PCM::AttributionTriggerData,false>::__construct[abi:sn200100]<WebCore::PCM::AttributionTriggerData>(v100 + 32, &buf[24]);
                    v99 = v144;
                  }

                  v144 = 0;
                  *(v100 + 168) = v99;
                  v111 = v100;
                  WebKit::NetworkLoadChecker::checkRedirection(v83, a2, a3, a4, a1 + 32, &v111);
                  v102 = v111;
                  v111 = 0;
                  if (v102)
                  {
                    (*(*v102 + 8))(v102);
                  }

                  v103 = v144;
                  v144 = 0;
                  if (v103)
                  {
                    (*(*v103 + 8))(v103);
                  }

                  if (v143 == 1)
                  {
                    WebCore::PCM::AttributionTriggerData::~AttributionTriggerData(&buf[24], v101);
                  }

                  v104 = *&buf[8];
                  *&buf[8] = 0;
                  if (v104)
                  {
                    if (v104[5] == 1)
                    {
                      (*(*v104 + 24))(v104);
                    }

                    else
                    {
                      --v104[5];
                    }
                  }

                  WTF::RefCounted<WebKit::NetworkLoadChecker>::deref((v83 + 8), v101);
                }

                else
                {
                  WebKit::NetworkResourceLoader::continueWillSendRedirectedRequest(a1, a2, a3, a4, &v117, a6);
                }

                goto LABEL_151;
              }

              v75 = qword_1ED6416F0;
              if (!os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
              {
LABEL_120:
                WebCore::ResourceRequestBase::resetTimeoutInterval(a3);
                goto LABEL_121;
              }

              v76 = *(a1 + 3280);
              if (v76)
              {
                v78 = *(a1 + 88);
                v77 = *(a1 + 96);
                v79 = *(a1 + 80);
                v80 = *(a1 + 251) == 1;
                v81 = *(a1 + 3328);
                v82 = *(a1 + 4440) != 0;
                *buf = 134219776;
                *&buf[4] = a1;
                *&buf[12] = 2048;
                *&buf[14] = v79;
                *&buf[22] = 2048;
                *&buf[24] = v78;
                *v133 = 2048;
                *&v133[2] = v77;
                *&v133[10] = 2048;
                *&v133[12] = v76;
                *&v133[20] = 1024;
                *&v133[22] = v80;
                *&v133[26] = 1024;
                v134 = v81;
                LOWORD(cf) = 1024;
                *(&cf + 2) = v82;
                _os_log_impl(&dword_19D52D000, v75, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::willSendRedirectedRequest: Resetting request timeout to the default value after redirect", buf, 0x46u);
                goto LABEL_120;
              }

LABEL_171:
              __break(0xC471u);
              JUMPOUT(0x19DCBCB3CLL);
            }
          }

          else if (!v49)
          {
            goto LABEL_67;
          }

          WTF::RefCounted<WebKit::NetworkCache::Cache>::deref(v49 + 2, v50);
          goto LABEL_67;
        }

        v45 = *buf;
        *buf = 0;
        if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v45, v31);
          if (a5)
          {
            goto LABEL_67;
          }

          goto LABEL_57;
        }
      }

LABEL_56:
      if (a5)
      {
        goto LABEL_67;
      }

      goto LABEL_57;
    }

    if (BYTE8(v140))
    {
      mpark::throw_bad_variant_access(v30);
    }

    v117 = *buf;
    v118 = buf[2];
    LOBYTE(v119) = 0;
    v120 = 0;
    if (buf[16] == 1)
    {
      v107 = *&buf[8];
      if (*&buf[8])
      {
        atomic_fetch_add_explicit(*&buf[8], 2u, memory_order_relaxed);
      }

      v119 = v107;
      v120 = 1;
    }

    LOBYTE(v121) = 0;
    v122 = 0;
    if (v133[0] == 1)
    {
      v37 = *&buf[24];
      if (*&buf[24])
      {
        atomic_fetch_add_explicit(*&buf[24], 2u, memory_order_relaxed);
      }

      v121 = v37;
      v122 = 1;
    }

    LOBYTE(v123) = 0;
    v124 = 0;
    if (v133[16] == 1)
    {
      v108 = *&v133[8];
      if (*&v133[8])
      {
        atomic_fetch_add_explicit(*&v133[8], 2u, memory_order_relaxed);
      }

      v123 = v108;
      v124 = 1;
    }

    LOBYTE(v125) = 0;
    v127 = 0;
    if (BYTE8(v137) == 1)
    {
      std::__optional_storage_base<WebCore::PCM::DestinationUnlinkableToken,false>::__construct[abi:sn200100]<WebCore::PCM::DestinationUnlinkableToken const&>(&v125, &v133[24]);
    }

    LOBYTE(v128) = 0;
    v130 = 0;
    if (v140 == 1)
    {
      v38 = v138;
      if (v138)
      {
        atomic_fetch_add_explicit(v138, 2u, memory_order_relaxed);
      }

      *&v128 = v38;
      v39 = *(&v138 + 1);
      if (*(&v138 + 1))
      {
        atomic_fetch_add_explicit(*(&v138 + 1), 2u, memory_order_relaxed);
      }

      *(&v128 + 1) = v39;
      v40 = v139;
      if (v139)
      {
        atomic_fetch_add_explicit(v139, 2u, memory_order_relaxed);
      }

      v129 = v40;
      v130 = 1;
    }

    v131 = 1;
    PartyForCookies = WebCore::ResourceRequestBase::firstPartyForCookies(a2);
    WebCore::RegistrableDomain::RegistrableDomain(&v111, PartyForCookies);
    if (v131)
    {
      v42 = v111;
      v111 = 0;
      if (v124 == 1)
      {
        v43 = v123;
        v123 = v42;
        if (v43)
        {
          if (atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v43, v31);
          }

          v44 = v111;
          v111 = 0;
          if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v44, v31);
          }
        }
      }

      else
      {
        v123 = v42;
        v124 = 1;
      }

      goto LABEL_50;
    }

LABEL_168:
    __break(1u);
    goto LABEL_171;
  }

  v34 = *(a1 + 4152);
  *(a1 + 4152) = 0;
  if (v34)
  {
    v35 = *(v34 + 24);
    *(v34 + 24) = 0;
    if (v35 && atomic_fetch_add(v35, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v35);
      WTF::fastFree(v35, v26);
    }

    WTF::RefCounted<WebKit::NetworkLoad>::deref((v34 + 16), v26);
  }

  WebCore::ResourceRequest::ResourceRequest(buf);
  v36 = *a6;
  *a6 = 0;
  (*(*v36 + 16))(v36, buf);
  (*(*v36 + 8))(v36);
  WebCore::ResourceRequest::~ResourceRequest(buf);
}

uint64_t WebKit::NetworkResourceLoader::willSendServiceWorkerRedirectedRequest(uint64_t a1, char *a2, WebCore::ResourceRequestBase *a3, uint64_t a4)
{
  v8 = WTF::fastMalloc(0x10);
  *v8 = &unk_1F11035B8;
  v11 = v8;
  WebKit::NetworkResourceLoader::willSendRedirectedRequestInternal(a1, a2, a3, a4, 1, &v11);
  result = v11;
  if (v11)
  {
    v10 = *(*v11 + 8);

    return v10();
  }

  return result;
}

uint64_t WebKit::NetworkResourceLoader::addConsoleMessage(void *a1, void *a2, char a3, uint64_t a4)
{
  v13 = a1[12];
  if (a1[410])
  {
    v11 = a1[410];
    v12 = 1;
    v14 = &v13;
    v15 = a2;
    v16 = a3;
    v17 = a4;
    v18 = &v11;
    v5 = a1[11];
    v6 = IPC::Encoder::operator new(0x238, a2);
    *v6 = 2430;
    *(v6 + 2) = 0;
    *(v6 + 3) = 0;
    *(v6 + 1) = v5;
    *(v6 + 68) = 0;
    *(v6 + 70) = 0;
    *(v6 + 69) = 0;
    IPC::Encoder::encodeHeader(v6);
    v19 = v6;
    Messages::WebPage::AddConsoleMessage::encode<IPC::Encoder>(&v14, v6);
    (*(a1[3] + 32))(a1 + 3, &v19, 0);
    result = v19;
    v19 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v7);
      return bmalloc::api::tzoneFree(v9, v10);
    }
  }

  else
  {
    result = 157;
    __break(0xC471u);
  }

  return result;
}

void WebKit::NetworkResourceLoader::continueWillSendRedirectedRequest(uint64_t a1, WebCore::ResourceRequestBase *a2, WebCore::ResourceRequestBase *this, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v176 = *MEMORY[0x1E69E9840];
  WebCore::ResourceRequestBase::setIsAppInitiated(this);
  v12 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 3280);
    if (!v13)
    {
      __break(0xC471u);
      goto LABEL_118;
    }

    v15 = *(a1 + 88);
    v14 = *(a1 + 96);
    v16 = *(a1 + 80);
    v17 = *(a1 + 251) == 1;
    v18 = *(a1 + 3328);
    v19 = *(a1 + 4440) != 0;
    v20 = *(a1 + 4625);
    v21 = *(a5 + 128);
    *buf = 134220288;
    *&buf[4] = a1;
    *&buf[12] = 2048;
    *&buf[14] = v16;
    *&buf[22] = 2048;
    *v155 = v15;
    *&v155[8] = 2048;
    *&v155[10] = v14;
    *&v155[18] = 2048;
    *&v155[20] = v13;
    *&v155[28] = 1024;
    *&v155[30] = v17;
    v156 = 1024;
    v157 = v18;
    LOWORD(v158[0]) = 1024;
    *(v158 + 2) = v19;
    WORD3(v158[0]) = 1024;
    DWORD2(v158[0]) = v20;
    WORD6(v158[0]) = 1024;
    *(v158 + 14) = v21;
    _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::continueWillSendRedirectedRequest: (m_isKeptAlive=%d, hasAdClickConversion=%d)", buf, 0x52u);
  }

  if (*(a5 + 128) != 1)
  {
    goto LABEL_100;
  }

  v22 = *(a1 + 4144);
  ++*(v22 + 20);
  v23 = *(v22 + 88);
  *buf = *(v22 + 96);
  v24 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v23 + 240), buf);
  v25 = v24;
  if (v24)
  {
    ++*(v24 + 16);
  }

  if (*(v22 + 20) == 1)
  {
    (*(*v22 + 8))(v22);
    if (!v25)
    {
      goto LABEL_100;
    }
  }

  else
  {
    --*(v22 + 20);
    if (!v24)
    {
      goto LABEL_100;
    }
  }

  v26 = *(a1 + 4152);
  if (v26)
  {
    ++*(v26 + 16);
    WebKit::NetworkLoad::attributedBundleIdentifier(v26, *(a1 + 80), &v119);
  }

  else
  {
    v119 = 0;
  }

  if ((*(a5 + 128) & 1) == 0)
  {
    goto LABEL_118;
  }

  v118 = a4;
  v27 = WebCore::ResourceRequestBase::url(a2);
  v29 = v27;
  v30 = v119;
  v119 = 0;
  v153 = v30;
  if (!v30 || !*(v30 + 1))
  {
    WTF::applicationBundleIdentifier(buf, v27);
    v31 = *buf;
    v153 = *buf;
    *buf = 0;
    if (v30)
    {
      if (atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v30, v28);
        v32 = *buf;
        *buf = 0;
        if (v32)
        {
          if (atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v32, v28);
          }
        }
      }
    }

    v30 = v31;
  }

  if ((*(v25 + 488) & 1) == 0)
  {
    if (*(v25 + 24) >= -1)
    {
      v57 = *(v25 + 160);
      v58 = WebCore::ResourceRequestBase::url(this);
      WebCore::RegistrableDomain::RegistrableDomain(buf, v58);
      PartyForCookies = WebCore::ResourceRequestBase::firstPartyForCookies(this);
      (*(*v57 + 24))(v57, a5, v29, buf, PartyForCookies, &v153);
      v60 = *buf;
      *buf = 0;
      if (v60 && atomic_fetch_add_explicit(v60, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v60, v28);
      }

      v30 = v153;
    }

    goto LABEL_90;
  }

  buf[0] = 0;
  v175 = 0;
  std::__optional_storage_base<WebCore::PrivateClickMeasurement,false>::__construct[abi:sn200100]<WebCore::PrivateClickMeasurement>(buf, v25 + 176);
  if (*(v25 + 488))
  {
    WebCore::PrivateClickMeasurement::~PrivateClickMeasurement((v25 + 176), v33);
    *(v25 + 488) = 0;
  }

  if ((v175 & 1) == 0)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  LOBYTE(v125) = buf[0];
  v34 = *&buf[8];
  *&buf[8] = 0;
  *&buf[16] = 0;
  *v126 = v34;
  *v127 = *v155;
  *(&v127[1] + 1) = *&v155[9];
  LOBYTE(v128) = 0;
  v142 = 0;
  if (v164 == 1)
  {
    v128 = *&v155[32];
    v129 = v156;
    LOBYTE(v130) = 0;
    v131 = 0;
    if (BYTE8(v158[0]) == 1)
    {
      v112 = *&v158[0];
      *&v158[0] = 0;
      v130 = v112;
      v131 = 1;
    }

    LOBYTE(v132) = 0;
    v133 = 0;
    if (BYTE8(v158[1]) == 1)
    {
      v35 = *&v158[1];
      *&v158[1] = 0;
      v132 = v35;
      v133 = 1;
    }

    LOBYTE(v134) = 0;
    v135 = 0;
    if (v160[0] == 1)
    {
      v113 = v159;
      v159 = 0;
      v134 = v113;
      v135 = 1;
    }

    LOBYTE(v136) = 0;
    v138 = 0;
    if (v162[0] == 1)
    {
      v36 = *&v160[8];
      v37 = v161;
      *&v160[8] = 0u;
      v161 = 0u;
      v136 = v36;
      v137 = v37;
      v138 = v162[0];
    }

    LOBYTE(v139) = 0;
    v141 = 0;
    if (v163 == 1)
    {
      v38 = *&v162[8];
      memset(&v162[8], 0, 24);
      v139 = v38;
      v140 = *&v162[24];
      v141 = 1;
    }

    v142 = 1;
  }

  v143 = v165;
  v144 = v166;
  LOBYTE(v145) = 0;
  v146 = 0;
  if (v168 == 1)
  {
    v39 = v167;
    v167 = 0;
    v145 = v39;
    v146 = 1;
  }

  v40 = *cf;
  v41 = v170;
  *cf = 0u;
  v170 = 0u;
  v147 = v40;
  v148 = v41;
  LOBYTE(v149) = 0;
  v151 = 0;
  if (v173 == 1)
  {
    v42 = v171;
    v171 = 0uLL;
    v149 = v42;
    v43 = v172;
    v172 = 0;
    v150 = v43;
    v151 = 1;
  }

  v44 = v174;
  v174 = 0;
  v152 = v44;
  WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(buf, v33);
  v45 = WebCore::ResourceRequestBase::url(this);
  WebCore::RegistrableDomain::RegistrableDomain(&v124, v45);
  v46 = WebCore::ResourceRequestBase::firstPartyForCookies(this);
  v47 = *v46;
  if (*v46)
  {
    atomic_fetch_add_explicit(v47, 2u, memory_order_relaxed);
  }

  v121 = v47;
  v48 = *(v46 + 24);
  v122 = *(v46 + 8);
  v123 = v48;
  v49 = WTF::WallTime::now(v46);
  v51 = v50 - v127[0];
  WebCore::PrivateClickMeasurement::maxAge(v49);
  if (v51 <= v52)
  {
    if ((WebCore::PrivateClickMeasurement::isNeitherSameSiteNorCrossSiteTriggeringEvent() & 1) == 0)
    {
      WebCore::RegistrableDomain::RegistrableDomain(buf, &v121);
      v62 = WTF::equal(v126[1], *buf, v61);
      v63 = *buf;
      *buf = 0;
      if (v63 && atomic_fetch_add_explicit(v63, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v63, v55);
      }

      if (v62)
      {
        v64 = *(v25 + 160);
        WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v25 + 8), v25);
        v65 = *(v25 + 8);
        atomic_fetch_add(v65, 1u);
        *buf = v65;
        *&buf[8] = *a5;
        buf[10] = *(a5 + 2);
        buf[16] = 0;
        v155[0] = 0;
        if (*(a5 + 16) == 1)
        {
          v114 = *(a5 + 8);
          *(a5 + 8) = 0;
          *&buf[16] = v114;
          v155[0] = 1;
        }

        v155[8] = 0;
        v155[16] = 0;
        if (*(a5 + 32) == 1)
        {
          v66 = *(a5 + 24);
          *(a5 + 24) = 0;
          *&v155[8] = v66;
          v155[16] = 1;
        }

        v155[24] = 0;
        v155[32] = 0;
        if (*(a5 + 48) == 1)
        {
          v115 = *(a5 + 40);
          *(a5 + 40) = 0;
          *&v155[24] = v115;
          v155[32] = 1;
        }

        LOBYTE(v158[0]) = 0;
        LOBYTE(v159) = 0;
        if (*(a5 + 88) == 1)
        {
          v67 = *(a5 + 56);
          *(a5 + 56) = 0u;
          v68 = *(a5 + 72);
          *(a5 + 72) = 0u;
          v158[0] = v67;
          v158[1] = v68;
          LOBYTE(v159) = 1;
        }

        v160[0] = 0;
        LOBYTE(v161) = 0;
        if (*(a5 + 120) == 1)
        {
          v69 = *(a5 + 96);
          *(a5 + 96) = 0;
          *(a5 + 104) = 0;
          *v160 = v69;
          v70 = *(a5 + 112);
          *(a5 + 112) = 0;
          *&v160[16] = v70;
          LOBYTE(v161) = 1;
        }

        v71 = *v29;
        if (*v29)
        {
          atomic_fetch_add_explicit(v71, 2u, memory_order_relaxed);
        }

        *(&v161 + 1) = v71;
        v72 = *(v29 + 24);
        *v162 = *(v29 + 8);
        *&v162[16] = v72;
        v73 = v124;
        v124 = 0;
        v74 = v121;
        v121 = 0;
        v163 = v73;
        v164 = v74;
        v165 = v122;
        v166 = v123;
        LODWORD(v122) = v122 & 0xFFFFFFFE;
        v75 = v153;
        v153 = 0;
        v167 = v75;
        v76 = WTF::fastMalloc(0xF0);
        v77 = v76;
        *v76 = &unk_1F11038A8;
        v78 = *buf;
        *buf = 0;
        *(v76 + 8) = v78;
        *(v76 + 16) = *&buf[8];
        *(v76 + 18) = buf[10];
        *(v76 + 24) = 0;
        *(v76 + 32) = 0;
        if (v155[0] == 1)
        {
          v116 = *&buf[16];
          *&buf[16] = 0;
          *(v76 + 24) = v116;
          *(v76 + 32) = 1;
        }

        *(v76 + 40) = 0;
        *(v76 + 48) = 0;
        if (v155[16] == 1)
        {
          v79 = *&v155[8];
          *&v155[8] = 0;
          *(v76 + 40) = v79;
          *(v76 + 48) = 1;
        }

        *(v76 + 56) = 0;
        *(v76 + 64) = 0;
        if (v155[32] == 1)
        {
          v117 = *&v155[24];
          *&v155[24] = 0;
          *(v76 + 56) = v117;
          *(v76 + 64) = 1;
        }

        *(v76 + 72) = 0;
        *(v76 + 104) = 0;
        if (v159 == 1)
        {
          *(v76 + 72) = v158[0];
          *(v76 + 88) = *&v158[1];
          v80 = *(&v158[1] + 1);
          memset(v158, 0, sizeof(v158));
          *(v76 + 96) = v80;
          *(v76 + 104) = 1;
        }

        *(v76 + 112) = 0;
        *(v76 + 136) = 0;
        if (v161 == 1)
        {
          *(v76 + 112) = *v160;
          v81 = *&v160[8];
          *v160 = 0;
          *&v160[8] = 0;
          *(v76 + 120) = v81;
          v82 = *&v160[16];
          *&v160[16] = 0;
          *(v76 + 128) = v82;
          *(v76 + 136) = 1;
        }

        v83 = *(&v161 + 1);
        if (*(&v161 + 1))
        {
          atomic_fetch_add_explicit(*(&v161 + 1), 2u, memory_order_relaxed);
        }

        *(v76 + 144) = v83;
        v84 = *v162;
        *(v76 + 168) = *&v162[16];
        *(v76 + 152) = v84;
        v85 = v163;
        v163 = 0;
        *(v76 + 184) = v85;
        v86 = WTF::URL::URL(v76 + 192, &v164);
        v87 = v167;
        v167 = 0;
        *(v77 + 232) = v87;
        v120 = v77;
        (*(*v64 + 16))(v64, &v125, &v120, v86);
        v89 = v120;
        v120 = 0;
        if (v89)
        {
          (*(*v89 + 8))(v89);
        }

        WebKit::NetworkSession::handlePrivateClickMeasurementConversion(WebCore::PCM::AttributionTriggerData &&,WTF::URL const&,WebCore::ResourceRequest const&,WebCore::PCM::AttributionTriggerData &&::String &&)::$_0::~$_0(buf, v88);
        v30 = 0;
      }
    }
  }

  else
  {
    v54 = *(v25 + 24);
    v53 = *(v25 + 32);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WebKit::NetworkProcess::broadcastConsoleMessage(v53, v54, 14, 4, buf);
    v56 = *buf;
    *buf = 0;
    if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v56, v55);
    }
  }

  v90 = v121;
  v121 = 0;
  if (v90 && atomic_fetch_add_explicit(v90, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v90, v55);
  }

  v91 = v124;
  v124 = 0;
  if (v91 && atomic_fetch_add_explicit(v91, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v91, v55);
  }

  WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(&v125, v55);
LABEL_90:
  v153 = 0;
  if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v30, v28);
  }

  v92 = v119;
  v119 = 0;
  if (v92 && atomic_fetch_add_explicit(v92, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v92, v28);
  }

  a4 = v118;
  if (v26)
  {
    WTF::RefCounted<WebKit::NetworkLoad>::deref((v26 + 16), v28);
  }

  v93 = *(v25 + 16);
  if (!v93)
  {
    goto LABEL_119;
  }

  *(v25 + 16) = v93 - 1;
LABEL_100:
  if (*(a1 + 4625) == 1)
  {
    WebKit::NetworkResourceLoader::continueWillSendRequest(a1, this, 0, a6);
    return;
  }

  WebCore::ResourceRequestBase::httpBody(&v124, this);
  v94 = v124;
  v124 = 0;
  v153 = v94;
  WebKit::NetworkResourceLoader::sanitizeResponseIfPossible(buf, a1, a4);
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
  v95 = *(a1 + 8);
  atomic_fetch_add(v95, 1u);
  v97 = *(a1 + 24);
  v96 = a1 + 24;
  v98 = *a6;
  *a6 = 0;
  v99 = (*(v97 + 56))(v96);
  v101 = IPC::Encoder::operator new(0x238, v100);
  *v101 = 3040;
  *(v101 + 2) = 0;
  *(v101 + 3) = 0;
  *(v101 + 1) = v99;
  *(v101 + 68) = 0;
  *(v101 + 70) = 0;
  *(v101 + 69) = 0;
  IPC::Encoder::encodeHeader(v101);
  v121 = v101;
  IPC::ArgumentCoder<WebCore::ResourceRequest,void>::encode(v101, this);
  IPC::ArgumentCoder<IPC::FormDataReference,void>::encode(v101, &v153);
  IPC::ArgumentCoder<WebCore::ResourceResponse,void>::encode(v101, buf);
  v102 = WTF::fastMalloc(0x18);
  *v102 = &unk_1F1103608;
  v102[1] = v95;
  v102[2] = v98;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
LABEL_119:
    __break(0xC471u);
    JUMPOUT(0x19DCBD9DCLL);
  }

  v103 = v102;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v125 = v103;
  v126[0] = IdentifierInternal;
  (*(*v96 + 40))(v96, &v121, &v125, 0);
  v106 = v125;
  v125 = 0;
  if (v106)
  {
    (*(*v106 + 8))(v106);
  }

  v107 = v121;
  v121 = 0;
  if (v107)
  {
    IPC::Encoder::~Encoder(v107, v105);
    bmalloc::api::tzoneFree(v110, v111);
  }

  v108 = cf[1];
  cf[1] = 0;
  if (v108)
  {
    CFRelease(v108);
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(buf, v105);
  if (v153)
  {
    WTF::RefCounted<WebCore::FormData>::deref(v153);
  }

  v109 = v124;
  v124 = 0;
  if (v109)
  {
    WTF::RefCounted<WebCore::FormData>::deref(v109);
  }
}

void WebKit::NetworkResourceLoader::continueWillSendRequest(uint64_t a1, const WebCore::ResourceRequest *a2, int a3, uint64_t *a4)
{
  v135 = *MEMORY[0x1E69E9840];
  v8 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 3280);
    if (!v10)
    {
      __break(0xC471u);
      goto LABEL_119;
    }

    v12 = *(a1 + 88);
    v11 = *(a1 + 96);
    v13 = *(a1 + 80);
    v14 = *(a1 + 251) == 1;
    v15 = *(a1 + 3328);
    v16 = *(a1 + 4440) != 0;
    *buf = 134220032;
    *&buf[4] = a1;
    *&buf[12] = 2048;
    *&buf[14] = v13;
    *&buf[22] = 2048;
    *&buf[24] = v12;
    *v130 = 2048;
    *&v130[2] = v11;
    *&v130[10] = 2048;
    *&v130[12] = v10;
    *&v130[20] = 1024;
    *&v130[22] = v14;
    *&v130[26] = 1024;
    v131 = v15;
    LOWORD(cf) = 1024;
    *(&cf + 2) = v16;
    HIWORD(cf) = 1024;
    LODWORD(v133) = a3;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::continueWillSendRequest: (isAllowedToAskUserForCredentials=%d)", buf, 0x4Cu);
  }

  v17 = *(a1 + 5304);
  if (v17)
  {
    v18 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 3280);
      if (!v19)
      {
        __break(0xC471u);
        JUMPOUT(0x19DCBE810);
      }

      v21 = *(a1 + 88);
      v20 = *(a1 + 96);
      v22 = *(a1 + 80);
      v23 = *(a1 + 251) == 1;
      v24 = *(a1 + 3328);
      v25 = *(a1 + 4440) != 0;
      *buf = 134219776;
      *&buf[4] = a1;
      *&buf[12] = 2048;
      *&buf[14] = v22;
      *&buf[22] = 2048;
      *&buf[24] = v21;
      *v130 = 2048;
      *&v130[2] = v20;
      *&v130[10] = 2048;
      *&v130[12] = v19;
      *&v130[20] = 1024;
      *&v130[22] = v23;
      *&v130[26] = 1024;
      v131 = v24;
      LOWORD(cf) = 1024;
      *(&cf + 2) = v25;
      _os_log_impl(&dword_19D52D000, v18, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::continueWillSendRequest: using stored redirect response", buf, 0x46u);
      v17 = *(a1 + 5304);
    }

    *(a1 + 5304) = 0;
    std::unique_ptr<WebCore::ResourceResponse>::reset[abi:sn200100]((a1 + 5304), 0);
    WebCore::ResourceRequestBase::redirectedRequest();
    *(a1 + 4608) = 1;
    WebKit::NetworkResourceLoader::willSendRedirectedRequestInternal(a1, a2, buf, v17, 0, a4);
    WebCore::ResourceRequest::~ResourceRequest(buf);
    v27 = *(v17 + 31);
    *(v17 + 31) = 0;
    if (v27)
    {
      CFRelease(v27);
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(v17, v26);
    bmalloc::api::tzoneFree(v28, v29);
    return;
  }

  v30 = *(a1 + 4672);
  if (v30 && *(a1 + 3329))
  {
    if ((*(a1 + 3328) & 0xFB) != 0x10)
    {
      goto LABEL_17;
    }
  }

  else if (*(a1 + 3329))
  {
    if (!v30)
    {
      goto LABEL_46;
    }

LABEL_17:
    v31 = qword_1ED6416F0;
    if (!os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v32 = *(a1 + 3280);
    if (!v32)
    {
      __break(0xC471u);
      JUMPOUT(0x19DCBE830);
    }

    v34 = *(a1 + 88);
    v33 = *(a1 + 96);
    v35 = *(a1 + 80);
    v36 = *(a1 + 251) == 1;
    v37 = *(a1 + 3328);
    v38 = *(a1 + 4440) != 0;
    v39 = *(v30 + 40);
    *buf = 134220032;
    *&buf[4] = a1;
    *&buf[12] = 2048;
    *&buf[14] = v35;
    *&buf[22] = 2048;
    *&buf[24] = v34;
    *v130 = 2048;
    *&v130[2] = v33;
    *&v130[10] = 2048;
    *&v130[12] = v32;
    *&v130[20] = 1024;
    *&v130[22] = v36;
    *&v130[26] = 1024;
    v131 = v37;
    LOWORD(cf) = 1024;
    *(&cf + 2) = v38;
    HIWORD(cf) = 2048;
    v133 = v39;
    _os_log_impl(&dword_19D52D000, v31, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::continueWillSendRequest: Continuing fetch task with redirect (fetchIdentifier=%llu)", buf, 0x50u);
    v30 = *(a1 + 4672);
    if (!v30)
    {
      WebKit::ServiceWorkerFetchTask::continueFetchTaskWith(0, a2);
    }

    else
    {
LABEL_20:
      ++*(v30 + 8);
      WebKit::ServiceWorkerFetchTask::continueFetchTaskWith(v30, a2);
      WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref((v30 + 8));
    }

    goto LABEL_21;
  }

  v41 = *(a1 + 4680);
  *(a1 + 4680) = 0;
  if (v41 && atomic_fetch_add(v41, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v41);
    WTF::fastFree(v41, v9);
  }

  WebKit::NetworkResourceLoader::setWorkerStart(a1, v9, 0.0);
  v42 = *(a1 + 4144);
  ++*(v42 + 5);
  WebKit::NetworkConnectionToWebProcess::createFetchTask(v42, a1, a2, &v128);
  if (*(v42 + 5) == 1)
  {
    (*(*v42 + 8))(v42);
  }

  else
  {
    --*(v42 + 5);
  }

  v43 = v128;
  if (v128)
  {
    v44 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      v46 = *(a1 + 3280);
      if (!v46)
      {
        __break(0xC471u);
        JUMPOUT(0x19DCBE850);
      }

      v48 = *(a1 + 88);
      v47 = *(a1 + 96);
      v49 = *(a1 + 80);
      v50 = *(a1 + 251) == 1;
      v51 = *(a1 + 3328);
      v52 = *(a1 + 4440) != 0;
      v53 = *(v43 + 5);
      *buf = 134220032;
      *&buf[4] = a1;
      *&buf[12] = 2048;
      *&buf[14] = v49;
      *&buf[22] = 2048;
      *&buf[24] = v48;
      *v130 = 2048;
      *&v130[2] = v47;
      *&v130[10] = 2048;
      *&v130[12] = v46;
      *&v130[20] = 1024;
      *&v130[22] = v50;
      *&v130[26] = 1024;
      v131 = v51;
      LOWORD(cf) = 1024;
      *(&cf + 2) = v52;
      HIWORD(cf) = 2048;
      v133 = v53;
      _os_log_impl(&dword_19D52D000, v44, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::continueWillSendRequest: Created a ServiceWorkerFetchTask to handle the redirect (fetchIdentifier=%llu)", buf, 0x50u);
    }

    v54 = *(a1 + 4152);
    *(a1 + 4152) = 0;
    if (v54)
    {
      v55 = *(v54 + 24);
      *(v54 + 24) = 0;
      if (v55 && atomic_fetch_add(v55, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v55);
        WTF::fastFree(v55, v45);
      }

      WTF::RefCounted<WebKit::NetworkLoad>::deref((v54 + 16), v45);
    }

    v56 = v128;
    v128 = 0;
    v57 = *(a1 + 4672);
    *(a1 + 4672) = v56;
    if (v57)
    {
      WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref((v57 + 8));
    }

    WebCore::ResourceRequest::ResourceRequest(buf);
    v58 = *a4;
    *a4 = 0;
    (*(*v58 + 16))(v58, buf);
    (*(*v58 + 8))(v58);
    WebCore::ResourceRequest::~ResourceRequest(buf);
    v59 = v128;
    v128 = 0;
    if (v59)
    {
      WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref(v59 + 2);
    }

    return;
  }

  v60 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v61 = *(a1 + 3280);
    if (!v61)
    {
      __break(0xC471u);
      JUMPOUT(0x19DCBE870);
    }

    v63 = *(a1 + 88);
    v62 = *(a1 + 96);
    v64 = *(a1 + 80);
    v65 = *(a1 + 251) == 1;
    v66 = *(a1 + 3328);
    v67 = *(a1 + 4440) != 0;
    *buf = 134219776;
    *&buf[4] = a1;
    *&buf[12] = 2048;
    *&buf[14] = v64;
    *&buf[22] = 2048;
    *&buf[24] = v63;
    *v130 = 2048;
    *&v130[2] = v62;
    *&v130[10] = 2048;
    *&v130[12] = v61;
    *&v130[20] = 1024;
    *&v130[22] = v65;
    *&v130[26] = 1024;
    v131 = v66;
    LOWORD(cf) = 1024;
    *(&cf + 2) = v67;
    _os_log_impl(&dword_19D52D000, v60, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::continueWillSendRequest: Navigation is not using service workers", buf, 0x46u);
  }

  v68 = *(a1 + 4672);
  *(a1 + 4608) = v68 != 0;
  *(a1 + 4672) = 0;
  if (!v68)
  {
    goto LABEL_53;
  }

  WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref((v68 + 8));
  v30 = *(a1 + 4672);
  if (v30)
  {
    goto LABEL_17;
  }

LABEL_46:
  if (*(a1 + 4608))
  {
    *(a1 + 4608) = 0;
    v69 = *(a1 + 4152);
    if (v69)
    {
      v70 = v69 + 4;
      ++v69[4];
      WebKit::NetworkLoad::updateRequestAfterRedirection(v69, a2);
      WTF::RefCounted<WebKit::NetworkLoad>::deref(v70, v71);
    }

    v72 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      v73 = *(a1 + 3280);
      if (!v73)
      {
        __break(0xC471u);
        JUMPOUT(0x19DCBE8D0);
      }

      v75 = *(a1 + 88);
      v74 = *(a1 + 96);
      v76 = *(a1 + 80);
      v77 = *(a1 + 251) == 1;
      v78 = *(a1 + 3328);
      v79 = *(a1 + 4440) != 0;
      *buf = 134219776;
      *&buf[4] = a1;
      *&buf[12] = 2048;
      *&buf[14] = v76;
      *&buf[22] = 2048;
      *&buf[24] = v75;
      *v130 = 2048;
      *&v130[2] = v74;
      *&v130[10] = 2048;
      *&v130[12] = v73;
      *&v130[20] = 1024;
      *&v130[22] = v77;
      *&v130[26] = 1024;
      v131 = v78;
      LOWORD(cf) = 1024;
      *(&cf + 2) = v79;
      _os_log_impl(&dword_19D52D000, v72, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::continueWillSendRequest: Restarting network load", buf, 0x46u);
    }

    WebKit::NetworkResourceLoader::restartNetworkLoad(a1, a2, a4);
    return;
  }

LABEL_53:
  if (*(a1 + 4600))
  {
    if ((*(WebCore::ResourceRequestBase::url(a2) + 8) & 2) == 0)
    {
      WebCore::ResourceRequestBase::url(a2);
      if ((WTF::URL::protocolIs() & 1) == 0)
      {
        if (*(a1 + 4432))
        {
          v80 = qword_1ED6416F0;
          if (!os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_ERROR))
          {
LABEL_58:
            v81 = WebCore::ResourceRequestBase::url(a2);
            WTF::StringImpl::createWithoutCopyingNonEmpty();
            v82 = *buf;
            *buf = 0;
            v83 = *v81;
            if (*v81)
            {
              atomic_fetch_add_explicit(v83, 2u, memory_order_relaxed);
            }

            *&buf[8] = v83;
            v84 = *(v81 + 24);
            *&buf[16] = *(v81 + 8);
            *v130 = v84;
            if (v82)
            {
              atomic_fetch_add_explicit(v82, 2u, memory_order_relaxed);
            }

            *&v130[16] = v82;
            *&v130[24] = 0;
            LOWORD(v131) = 2;
            cf = 0;
            LOBYTE(v133) = 1;
            WebKit::NetworkResourceLoader::didFailLoading(a1, buf);
            v86 = cf;
            cf = 0;
            if (v86)
            {
              CFRelease(v86);
            }

            v87 = *&v130[16];
            *&v130[16] = 0;
            if (v87 && atomic_fetch_add_explicit(v87, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v87, v85);
            }

            v88 = *&buf[8];
            *&buf[8] = 0;
            if (v88 && atomic_fetch_add_explicit(v88, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v88, v85);
            }

            v89 = *buf;
            *buf = 0;
            if (v89 && atomic_fetch_add_explicit(v89, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v89, v85);
            }

            if (v82 && atomic_fetch_add_explicit(v82, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v82, v85);
            }

            goto LABEL_21;
          }

          v120 = *(a1 + 3280);
          if (v120)
          {
            v122 = *(a1 + 88);
            v121 = *(a1 + 96);
            v123 = *(a1 + 80);
            v124 = *(a1 + 251) == 1;
            v125 = *(a1 + 3328);
            v126 = *(a1 + 4440) != 0;
            *buf = 134219776;
            *&buf[4] = a1;
            *&buf[12] = 2048;
            *&buf[14] = v123;
            *&buf[22] = 2048;
            *&buf[24] = v122;
            *v130 = 2048;
            *&v130[2] = v121;
            *&v130[10] = 2048;
            *&v130[12] = v120;
            *&v130[20] = 1024;
            *&v130[22] = v124;
            *&v130[26] = 1024;
            v131 = v125;
            LOWORD(cf) = 1024;
            *(&cf + 2) = v126;
            _os_log_error_impl(&dword_19D52D000, v80, OS_LOG_TYPE_ERROR, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::continueWillSendRequest: Failing load because it redirected to a scheme that is not HTTP(S)", buf, 0x46u);
            goto LABEL_58;
          }

          __break(0xC471u);
LABEL_119:
          JUMPOUT(0x19DCBE7F0);
        }
      }
    }
  }

  *(a1 + 4466) = a3;
  WebCore::ResourceRequestBase::cachePolicy((a1 + 104));
  WebCore::ResourceRequestBase::setCachePolicy();
  WebCore::ResourceRequestBase::setCachePartition(a2, (a1 + 264));
  if (*(a1 + 4584) == 1)
  {
    *(a1 + 4584) = 0;
    v90 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      v91 = *(a1 + 3280);
      if (!v91)
      {
        __break(0xC471u);
        JUMPOUT(0x19DCBE890);
      }

      v93 = *(a1 + 88);
      v92 = *(a1 + 96);
      v94 = *(a1 + 80);
      v95 = *(a1 + 251) == 1;
      v96 = *(a1 + 3328);
      v97 = *(a1 + 4440) != 0;
      *buf = 134219776;
      *&buf[4] = a1;
      *&buf[12] = 2048;
      *&buf[14] = v94;
      *&buf[22] = 2048;
      *&buf[24] = v93;
      *v130 = 2048;
      *&v130[2] = v92;
      *&v130[10] = 2048;
      *&v130[12] = v91;
      *&v130[20] = 1024;
      *&v130[22] = v95;
      *&v130[26] = 1024;
      v131 = v96;
      LOWORD(cf) = 1024;
      *(&cf + 2) = v97;
      _os_log_impl(&dword_19D52D000, v90, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::continueWillSendRequest: m_isWaitingContinueWillSendRequestForCachedRedirect was set", buf, 0x46u);
    }

    if (!WebKit::NetworkResourceLoader::canUseCache(a1, a2) || *(a1 + 4576) || *(a1 + 4432) > 5u)
    {
      WebKit::NetworkResourceLoader::startNetworkLoad(a1, a2, 1, v98);
    }

    else
    {
      WebKit::NetworkResourceLoader::retrieveCacheEntry(a1, a2);
    }

    goto LABEL_21;
  }

  if (!*(a1 + 4152))
  {
LABEL_21:
    WebCore::ResourceRequest::ResourceRequest(buf);
    v40 = *a4;
    *a4 = 0;
    (*(*v40 + 16))(v40, buf);
    (*(*v40 + 8))(v40);
    WebCore::ResourceRequest::~ResourceRequest(buf);
    return;
  }

  v99 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v100 = *(a1 + 3280);
    if (!v100)
    {
      __break(0xC471u);
      JUMPOUT(0x19DCBE8B0);
    }

    v102 = *(a1 + 88);
    v101 = *(a1 + 96);
    v103 = *(a1 + 80);
    v104 = *(a1 + 251) == 1;
    v105 = *(a1 + 3328);
    v106 = *(a1 + 4440) != 0;
    *buf = 134219776;
    *&buf[4] = a1;
    *&buf[12] = 2048;
    *&buf[14] = v103;
    *&buf[22] = 2048;
    *&buf[24] = v102;
    *v130 = 2048;
    *&v130[2] = v101;
    *&v130[10] = 2048;
    *&v130[12] = v100;
    *&v130[20] = 1024;
    *&v130[22] = v104;
    *&v130[26] = 1024;
    v131 = v105;
    LOWORD(cf) = 1024;
    *(&cf + 2) = v106;
    _os_log_impl(&dword_19D52D000, v99, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::continueWillSendRequest: Telling NetworkLoad to proceed with the redirect", buf, 0x46u);
  }

  if (((*(a1 + 3592) & 1) != 0 || *(a1 + 4120) == 1) && (WebCore::ResourceRequestBase::isNull(a2) & 1) == 0)
  {
    v107 = *(a1 + 4144);
    ++*(v107 + 20);
    WebKit::AuxiliaryProcess::protectedParentProcessConnection(*(v107 + 88), &v127);
    v108 = v127;
    v109 = *(a1 + 80);
    WebKit::NetworkResourceLoader::resourceLoadInfo(buf, a1);
    v111 = IPC::Encoder::operator new(0x238, v110);
    *v111 = 557;
    *(v111 + 68) = 0;
    *(v111 + 70) = 0;
    *(v111 + 69) = 0;
    *(v111 + 2) = 0;
    *(v111 + 3) = 0;
    *(v111 + 1) = 0;
    IPC::Encoder::encodeHeader(v111);
    v128 = v111;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v111, v109);
    IPC::ArgumentCoder<WebKit::ResourceLoadInfo,void>::encode(v111, buf);
    IPC::ArgumentCoder<WebCore::ResourceResponse,void>::encode(v111, (a1 + 4704));
    IPC::ArgumentCoder<WebCore::ResourceRequest,void>::encode(v111, a2);
    IPC::Connection::sendMessageImpl(v108, &v128, 0, 0);
    v113 = v128;
    v128 = 0;
    if (v113)
    {
      IPC::Encoder::~Encoder(v113, v112);
      bmalloc::api::tzoneFree(v118, v119);
    }

    v114 = v134;
    v134 = 0;
    if (v114 && atomic_fetch_add_explicit(v114, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v114, v112);
    }

    v115 = cf;
    cf = 0;
    if (v115 && atomic_fetch_add_explicit(v115, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v115, v112);
    }

    v116 = v127;
    v127 = 0;
    if (v116)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v116);
    }

    if (*(v107 + 20) == 1)
    {
      (*(*v107 + 8))(v107);
    }

    else
    {
      --*(v107 + 20);
    }
  }

  v117 = *a4;
  *a4 = 0;
  (*(*v117 + 16))(v117, a2);
  (*(*v117 + 8))(v117);
}