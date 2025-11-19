void WebKit::PingLoad::~PingLoad(WebKit::PingLoad *this, void *a2)
{
  v3 = *(this + 513);
  if (v3)
  {
    v4 = v3 + 1;
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
    v7 = v3[3];
    v3[3] = 0;
    if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v7);
      WTF::fastFree(v7, a2);
    }

    (*(*v3 + 16))(v3);
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref(v3 + 1);
  }

  v8 = *(this + 1047);
  if (v8)
  {
    v9 = *(this + 522);
    v10 = 8 * v8;
    do
    {
      if (*v9)
      {
        (*(**v9 + 24))(*v9);
      }

      ++v9;
      v10 -= 8;
    }

    while (v10);
  }

  WTF::Vector<WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 4176, a2);
  v12 = *(this + 521);
  *(this + 521) = 0;
  if (v12)
  {
    WTF::RefCounted<WebKit::NetworkLoadChecker>::deref((v12 + 8), v11);
  }

  *(this + 514) = &unk_1F10EB388;
  v13 = *(this + 520);
  *(this + 520) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  WebCore::TimerBase::~TimerBase((this + 4112));
  v15 = *(this + 513);
  *(this + 513) = 0;
  if (v15)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v15 + 8));
  }

  v16 = *(this + 512);
  *(this + 512) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  WebKit::NetworkResourceLoadParameters::~NetworkResourceLoadParameters((this + 48), v14);
  v18 = *(this + 3);
  *(this + 3) = 0;
  if (v18)
  {
    WTF::RefCounted<WebKit::PingLoad>::deref(v18 + 16);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v17);
  if (*(this + 4) != 1)
  {
    __break(0xC471u);
  }
}

{
  WebKit::PingLoad::~PingLoad(this, a2);

  WTF::fastFree(v2, v3);
}

_DWORD *WebKit::PingLoad::didFinish(WebKit::PingLoad *this, const WebCore::ResourceError *a2, const WebCore::ResourceResponse *a3)
{
  v4 = *(this + 512);
  *(this + 512) = 0;
  (*(*v4 + 16))(v4, a2, a3);
  result = (*(*v4 + 8))(v4);
  v7 = *(this + 3);
  *(this + 3) = 0;
  if (v7)
  {

    return WTF::RefCounted<WebKit::PingLoad>::deref((v7 + 16), v6);
  }

  return result;
}

void WebKit::PingLoad::willPerformHTTPRedirection(uint64_t a1, WebCore::ResourceResponse *a2, uint64_t a3, uint64_t *a4)
{
  v8 = *(a1 + 4168);
  WebCore::ResourceRequest::ResourceRequest(v13);
  ++*(a1 + 16);
  v9 = *a4;
  *a4 = 0;
  v10 = WTF::fastMalloc(0x18);
  *v10 = &unk_1F11039E8;
  *(v10 + 1) = a1;
  *(v10 + 2) = v9;
  v12 = v10;
  WebKit::NetworkLoadChecker::checkRedirection(v8, v13, a3, a2, 0, &v12);
  v11 = v12;
  v12 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  WebCore::ResourceRequest::~ResourceRequest(v13);
}

WTF::StringImpl *WebKit::PingLoad::didReceiveChallenge(uint64_t a1, WebCore::AuthenticationChallengeBase *a2, char a3, uint64_t *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v8 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a1;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "%p - PingLoad::didReceiveChallenge", &buf, 0xCu);
  }

  if (*(WebCore::AuthenticationChallengeBase::protectionSpace(a2) + 21) == 8)
  {
    v9 = *(*(a1 + 4168) + 80);
    atomic_fetch_add(v9 + 36, 1u);
    WebKit::NetworkProcess::protectedAuthenticationManager(v9, &buf);
    v10 = buf;
    v11 = *(a1 + 272);
    if (v11)
    {
      v12 = (v11 + 8);
    }

    else
    {
      v12 = 0;
    }

    result = WebKit::AuthenticationManager::didReceiveAuthenticationChallenge(buf, *(a1 + 32), *(a1 + 48), 1, v12, a2, a3, a4);
    *&buf = 0;
    if (v10)
    {
      result = WebKit::AuthenticationManager::deref(v10);
    }

    if (v9)
    {
      if (atomic_fetch_add(v9 + 36, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v9 + 36);
        return (*(*v9 + 24))(v9);
      }
    }

    return result;
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
  v14 = *(a1 + 8);
  atomic_fetch_add(v14, 1u);
  WebCore::CredentialBase::CredentialBase(&buf);
  v38 = 0;
  v15 = *a4;
  *a4 = 0;
  (*(*v15 + 16))(v15, 2, &buf);
  (*(*v15 + 8))(v15);
  v17 = v38;
  v38 = 0;
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(&buf + 1);
  *(&buf + 1) = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v16);
  }

  result = buf;
  *&buf = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v16);
    if (!v14)
    {
      return result;
    }
  }

  else if (!v14)
  {
    return result;
  }

  if (*(v14 + 8))
  {
    v19 = *(a1 + 4168);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v20 = buf;
    v28 = 0;
    v21 = *(v19 + 160);
    if (v21)
    {
      atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
    }

    v29 = v21;
    v22 = *(v19 + 184);
    v30 = *(v19 + 168);
    v31 = v22;
    if (v20)
    {
      atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
    }

    v32 = v20;
    v33 = 0;
    v34 = 2;
    v35 = 0;
    v36 = 1;
    WebCore::ResourceResponseBase::ResourceResponseBase(&buf);
    cf = 0;
    v41 = 0;
    v39 = v39 & 0xF1 | 4;
    WebKit::PingLoad::didFinish(a1, &v28, &buf);
    v24 = cf;
    cf = 0;
    if (v24)
    {
      CFRelease(v24);
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(&buf, v23);
    v25 = v35;
    v35 = 0;
    if (v25)
    {
      CFRelease(v25);
    }

    v26 = v32;
    v32 = 0;
    if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v26, v16);
    }

    v27 = v29;
    v29 = 0;
    if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v27, v16);
    }

    result = v28;
    v28 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v16);
      if (v20)
      {
LABEL_38:
        if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(v20, v16);
        }
      }
    }

    else if (v20)
    {
      goto LABEL_38;
    }
  }

  if (atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v14);
    return WTF::fastFree(v14, v16);
  }

  return result;
}

WTF::StringImpl *WebKit::PingLoad::didReceiveResponse(unsigned int *a1, WebCore::ResourceResponseBase *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 134218240;
    *&v16[4] = a1;
    *&v16[12] = 1024;
    *&v16[14] = WebCore::ResourceResponseBase::httpStatusCode(a2);
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "%p - PingLoad::didReceiveResponse - httpStatusCode=%d", v16, 0x12u);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a1 + 2, a1);
  v9 = *(a1 + 1);
  atomic_fetch_add(v9, 1u);
  v10 = *a5;
  *a5 = 0;
  (*(*v10 + 16))(v10, 2);
  result = (*(*v10 + 8))(v10);
  if (v9)
  {
    if (*(v9 + 8))
    {
      *v16 = 0;
      *&v16[8] = 0;
      WTF::URL::invalidate(&v16[8]);
      cf = 0;
      v17[0] = 0;
      *(v17 + 6) = 0;
      v19 = 1;
      WebKit::PingLoad::didFinish(a1, v16, a2);
      v13 = cf;
      cf = 0;
      if (v13)
      {
        CFRelease(v13);
      }

      v14 = v17[0];
      v17[0] = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v12);
      }

      v15 = *&v16[8];
      *&v16[8] = 0;
      if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v12);
      }

      result = *v16;
      *v16 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v12);
      }
    }

    if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v9);
      return WTF::fastFree(v9, v12);
    }
  }

  return result;
}

void WebKit::PingLoad::didReceiveData(WebKit::PingLoad *this, const WebCore::SharedBuffer *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = this;
    _os_log_impl(&dword_19D52D000, v3, OS_LOG_TYPE_DEFAULT, "%p - PingLoad::didReceiveData", &v4, 0xCu);
  }
}

void WebKit::PingLoad::didCompleteWithError(WebKit::PingLoad *this, const WebCore::ResourceError *a2, const WebCore::NetworkLoadMetrics *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 60);
  v6 = qword_1ED6416F0;
  v7 = os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    MEMORY[0x19EB12BA0](a2);
    v8 = *(a2 + 14);
    v14 = 134218240;
    v15 = this;
    v16 = 1024;
    v17 = v8;
    v9 = "%p - PingLoad::didCompleteWithError, error_code=%d";
    v10 = v6;
    v11 = 18;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v14 = 134217984;
    v15 = this;
    v9 = "%p - PingLoad::didComplete";
    v10 = v6;
    v11 = 12;
  }

  _os_log_impl(&dword_19D52D000, v10, OS_LOG_TYPE_DEFAULT, v9, &v14, v11);
LABEL_7:
  WebCore::ResourceResponseBase::ResourceResponseBase(&v14);
  cf = 0;
  v20 = 0;
  v18 = v18 & 0xF1 | 4;
  WebKit::PingLoad::didFinish(this, a2, &v14);
  v13 = cf;
  cf = 0;
  if (v13)
  {
    CFRelease(v13);
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(&v14, v12);
}

WTF::StringImpl *WebKit::PingLoad::wasBlocked(WebKit::PingLoad *this)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v24 = this;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - PingLoad::wasBlocked", buf, 0xCu);
  }

  v3 = *(this + 521);
  v4 = *(v3 + 160);
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  v14 = v4;
  v15 = *(v3 + 168);
  v16 = *(v3 + 184);
  WebCore::ResourceRequestBase::ResourceRequestBase(v17, &v14, 0);
  v18 = 0;
  WebKit::blockedError(v17, &v19);
  WebCore::ResourceResponseBase::ResourceResponseBase(buf);
  cf = 0;
  v27 = 0;
  v25 = v25 & 0xF1 | 4;
  WebKit::PingLoad::didFinish(this, &v19, buf);
  v6 = cf;
  cf = 0;
  if (v6)
  {
    CFRelease(v6);
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(buf, v5);
  v8 = v22;
  v22 = 0;
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = v21;
  v21 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v7);
  }

  v10 = v20;
  v20 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v7);
  }

  v11 = v19;
  v19 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v7);
  }

  WebCore::ResourceRequest::~ResourceRequest(v17);
  result = v14;
  v14 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v12);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::PingLoad::cannotShowURL(WebKit::PingLoad *this)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v24 = this;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - PingLoad::cannotShowURL", buf, 0xCu);
  }

  v3 = *(this + 521);
  v4 = *(v3 + 160);
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  v14 = v4;
  v15 = *(v3 + 168);
  v16 = *(v3 + 184);
  WebCore::ResourceRequestBase::ResourceRequestBase(v17, &v14, 0);
  v18 = 0;
  WebKit::cannotShowURLError(v17, &v19);
  WebCore::ResourceResponseBase::ResourceResponseBase(buf);
  cf = 0;
  v27 = 0;
  v25 = v25 & 0xF1 | 4;
  WebKit::PingLoad::didFinish(this, &v19, buf);
  v6 = cf;
  cf = 0;
  if (v6)
  {
    CFRelease(v6);
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(buf, v5);
  v8 = v22;
  v22 = 0;
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = v21;
  v21 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v7);
  }

  v10 = v20;
  v20 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v7);
  }

  v11 = v19;
  v19 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v7);
  }

  WebCore::ResourceRequest::~ResourceRequest(v17);
  result = v14;
  v14 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v12);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::PingLoad::wasBlockedByRestrictions(WebKit::PingLoad *this)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v24 = this;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - PingLoad::wasBlockedByRestrictions", buf, 0xCu);
  }

  v3 = *(this + 521);
  v4 = *(v3 + 160);
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  v14 = v4;
  v15 = *(v3 + 168);
  v16 = *(v3 + 184);
  WebCore::ResourceRequestBase::ResourceRequestBase(v17, &v14, 0);
  v18 = 0;
  WebKit::wasBlockedByRestrictionsError(v17, &v19);
  WebCore::ResourceResponseBase::ResourceResponseBase(buf);
  cf = 0;
  v27 = 0;
  v25 = v25 & 0xF1 | 4;
  WebKit::PingLoad::didFinish(this, &v19, buf);
  v6 = cf;
  cf = 0;
  if (v6)
  {
    CFRelease(v6);
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(buf, v5);
  v8 = v22;
  v22 = 0;
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = v21;
  v21 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v7);
  }

  v10 = v20;
  v20 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v7);
  }

  v11 = v19;
  v19 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v7);
  }

  WebCore::ResourceRequest::~ResourceRequest(v17);
  result = v14;
  v14 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v12);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::PingLoad::wasBlockedByDisabledFTP(WebKit::PingLoad *this)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v24 = this;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - PingLoad::wasBlockedByDisabledFTP", buf, 0xCu);
  }

  v3 = *(this + 521);
  v4 = *(v3 + 160);
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  v14 = v4;
  v15 = *(v3 + 168);
  v16 = *(v3 + 184);
  WebCore::ResourceRequestBase::ResourceRequestBase(v17, &v14, 0);
  v18 = 0;
  WebKit::ftpDisabledError(v17, &v19);
  WebCore::ResourceResponseBase::ResourceResponseBase(buf);
  cf = 0;
  v27 = 0;
  v25 = v25 & 0xF1 | 4;
  WebKit::PingLoad::didFinish(this, &v19, buf);
  v6 = cf;
  cf = 0;
  if (v6)
  {
    CFRelease(v6);
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(buf, v5);
  v8 = v22;
  v22 = 0;
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = v21;
  v21 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v7);
  }

  v10 = v20;
  v20 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v7);
  }

  v11 = v19;
  v19 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v7);
  }

  WebCore::ResourceRequest::~ResourceRequest(v17);
  result = v14;
  v14 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v12);
    }
  }

  return result;
}

void *WebKit::PreconnectTask::create@<X0>(void *a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v6 = WTF::fastMalloc(0x30);
  result = WebKit::PreconnectTask::PreconnectTask(v6, a1, a2);
  *a3 = result;
  return result;
}

void *WebKit::PreconnectTask::PreconnectTask(void *a1, void *a2, __int128 *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  a1[2] = 0x100000000;
  *a1 = &unk_1F11032F8;
  a1[1] = 0;
  v6 = WebKit::NetworkLoad::operator new(0xDD0, a2);
  v7 = WebKit::NetworkLoad::NetworkLoad(v6, a1, a3, a2);
  a1[4] = 0;
  a1[5] = 0;
  a1[3] = v7;
  v8 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = a1;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "%p - PreconnectTask::PreconnectTask()", &v10, 0xCu);
  }

  return a1;
}

atomic_ullong *WebKit::PreconnectTask::start(uint64_t a1, uint64_t *a2, double a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 134218240;
    v16 = a1;
    v17 = 2048;
    v18 = a3;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "%p - PreconnectTask::start() timeout=%g", &v15, 0x16u);
  }

  ++*(a1 + 20);
  v7 = *a2;
  *a2 = 0;
  v9 = WTF::fastMalloc(0x18);
  *v9 = &unk_1F1103A10;
  v9[1] = a1;
  v9[2] = v7;
  v10 = *(a1 + 32);
  *(a1 + 32) = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = WebCore::Timer::operator new(0x38, v8);
  *WebCore::TimerBase::TimerBase(v11) = &unk_1F10EB388;
  v12 = WTF::fastMalloc(0x20);
  *v12 = &unk_1F1103388;
  v12[1] = a1;
  v12[2] = WebKit::PreconnectTask::didTimeout;
  v12[3] = 0;
  *(v11 + 6) = v12;
  v13 = *(a1 + 40);
  *(a1 + 40) = v11;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  WebCore::TimerBase::start();
  return WebKit::NetworkLoad::start(*(a1 + 24));
}

WTF::StringImpl *WebKit::PreconnectTask::didTimeout(WebKit::PreconnectTask *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    *&buf[4] = this;
    _os_log_error_impl(&dword_19D52D000, v2, OS_LOG_TYPE_ERROR, "%p - PreconnectTask::didTimeout", buf, 0xCu);
  }

  v3 = WebCore::ResourceRequestBase::url((*(this + 3) + 96));
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v4 = *buf;
  v15 = 0;
  v5 = *v3;
  if (*v3)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  v16 = v5;
  v6 = *(v3 + 24);
  v17 = *(v3 + 8);
  v18 = v6;
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  v19 = v4;
  v20 = 0;
  v21 = 4;
  cf = 0;
  v23 = 1;
  WebCore::NetworkLoadMetrics::NetworkLoadMetrics(buf);
  v7 = *(this + 4);
  *(this + 4) = 0;
  (*(*v7 + 16))(v7, &v15, buf);
  (*(*v7 + 8))(v7);
  v9 = v26;
  v26 = 0;
  if (v9)
  {
    WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v9, v8);
  }

  v10 = v25;
  v25 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v8);
  }

  v11 = cf;
  cf = 0;
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = v19;
  v19 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v8);
  }

  v13 = v16;
  v16 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v8);
  }

  result = v15;
  v15 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v8);
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
    return WTF::StringImpl::destroy(v4, v8);
  }

  return result;
}

void WebKit::PreconnectTask::~PreconnectTask(unsigned int **this)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = this;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - PreconnectTask::~PreconnectTask()", &v7, 0xCu);
  }

  v4 = this[5];
  this[5] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = this[4];
  this[4] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = this[3];
  this[3] = 0;
  if (v6)
  {
    WTF::RefCounted<WebKit::NetworkLoad>::deref(v6 + 4, v3);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v3);
  if (*(this + 5) != 1)
  {
    __break(0xC471u);
  }
}

{
  WebKit::PreconnectTask::~PreconnectTask(this);
  if (atomic_load((v1 + 16)))
  {
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
    *v1 = 0u;
  }

  else
  {

    WTF::fastFree(v1, v2);
  }
}

uint64_t WebKit::PreconnectTask::willSendRedirectedRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  *a5 = 0;
  (*(*v5 + 16))(v5, a3);
  v6 = *(*v5 + 8);

  return v6(v5);
}

uint64_t WebKit::PreconnectTask::didReceiveResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_ERROR))
  {
    v9 = 134217984;
    v10 = a1;
    _os_log_error_impl(&dword_19D52D000, v6, OS_LOG_TYPE_ERROR, "%p - PreconnectTask::didReceiveResponse", &v9, 0xCu);
  }

  v7 = *a4;
  *a4 = 0;
  (*(*v7 + 16))(v7, 2);
  return (*(*v7 + 8))(v7);
}

void WebKit::PreconnectTask::didReceiveBuffer(WebKit::PreconnectTask *this, const WebCore::FragmentedSharedBuffer *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_ERROR))
  {
    v4 = 134217984;
    v5 = this;
    _os_log_error_impl(&dword_19D52D000, v3, OS_LOG_TYPE_ERROR, "%p - PreconnectTask::didReceiveBuffer", &v4, 0xCu);
  }
}

WTF::StringImpl *WebKit::PreconnectTask::didFinishLoading(WebKit::PreconnectTask *this, const WebCore::NetworkLoadMetrics *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v11[0]) = 134217984;
    *(v11 + 4) = this;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - PreconnectTask::didFinishLoading", v11, 0xCu);
  }

  *v11 = 0uLL;
  WTF::URL::invalidate(&v11[1]);
  cf = 0;
  memset(&v11[6], 0, 14);
  v13 = 1;
  v5 = *(this + 4);
  *(this + 4) = 0;
  (*(*v5 + 16))(v5, v11, a2);
  (*(*v5 + 8))(v5);
  v7 = cf;
  cf = 0;
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = v11[6];
  v11[6] = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v6);
  }

  v9 = v11[1];
  v11[1] = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v6);
  }

  result = v11[0];
  v11[0] = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v6);
    }
  }

  return result;
}

uint64_t WebKit::PreconnectTask::didFailLoading(WebKit::PreconnectTask *this, const WebCore::ResourceError *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED6416F0;
  v5 = os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    MEMORY[0x19EB12BA0](a2);
    v6 = *(a2 + 14);
    v10 = 134218240;
    v11 = this;
    v12 = 1024;
    v13 = v6;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - PreconnectTask::didFailLoading, error_code=%d", &v10, 0x12u);
  }

  v7 = WebCore::NetworkLoadMetrics::emptyMetrics(v5);
  v8 = *(this + 4);
  *(this + 4) = 0;
  (*(*v8 + 16))(v8, a2, v7);
  return (*(*v8 + 8))(v8);
}

_DWORD *WebKit::NetworkResourceLoader::deref(_DWORD *this)
{
  if (this[5] == 1)
  {
    return (*(*this + 24))();
  }

  --this[5];
  return this;
}

uint64_t non-virtual thunk toWebKit::NetworkResourceLoader::messageSenderDestinationID(WebKit::NetworkResourceLoader *this)
{
  result = *(this + 407);
  if (!result)
  {
    result = 154;
    __break(0xC471u);
  }

  return result;
}

uint64_t non-virtual thunk toWebKit::NetworkResourceLoader::deref(uint64_t this)
{
  if (*(this - 36) == 1)
  {
    return (*(*(this - 56) + 24))();
  }

  --*(this - 36);
  return this;
}

uint64_t WebKit::NetworkSession::removeNetworkWebsiteData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  *a5 = 0;
  (*(*v5 + 16))(v5);
  v6 = *(*v5 + 8);

  return v6(v5);
}

_DWORD *WebKit::NetworkSocketChannel::deref(_DWORD *this)
{
  if (this[6] == 1)
  {
    return (*(*this + 8))();
  }

  --this[6];
  return this;
}

uint64_t non-virtual thunk toWebKit::NetworkSocketChannel::deref(uint64_t this)
{
  if (*(this + 16) == 1)
  {
    return (*(*(this - 8) + 8))();
  }

  --*(this + 16);
  return this;
}

_DWORD *WebKit::PreconnectTask::deref(_DWORD *this)
{
  if (this[5] == 1)
  {
    return (*(*this + 24))();
  }

  --this[5];
  return this;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(void *a1, void *a2)
{
  v2 = a1;
  v3 = *(a1 - 1);
  if (v3)
  {
    do
    {
      if (*a1 != -1)
      {
        a1 = WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>::~KeyValuePair(a1);
      }

      a1 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((v2 - 2), a2);
}

uint64_t WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>::~KeyValuePair(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    if (v2[5] == 1)
    {
      (*(*v2 + 24))(v2);
    }

    else
    {
      --v2[5];
    }
  }

  return a1;
}

void *std::__optional_storage_base<WebCore::PCM::DestinationUnlinkableToken,false>::__construct[abi:sn200100]<WebCore::PCM::DestinationUnlinkableToken const&>(void *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = *a2;
    *v3 = *a2;
    if (v4)
    {
      CFRetain(v4);
    }

    v5 = *(a2 + 8);
    v3[1] = v5;
    if (v5)
    {
      CFRetain(v5);
    }

    result = *(a2 + 16);
    v3[2] = result;
    if (result)
    {
      result = CFRetain(result);
    }

    v6 = *(a2 + 24);
    if (v6)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    }

    v3[3] = v6;
    *(v3 + 32) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t std::__optional_storage_base<WebCore::PrivateClickMeasurement,false>::__construct[abi:sn200100]<WebCore::PrivateClickMeasurement>(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    *result = *a2;
    v4 = *(a2 + 8);
    *(a2 + 8) = 0;
    *(result + 8) = v4;
    v5 = *(a2 + 16);
    *(a2 + 16) = 0;
    *(result + 16) = v5;
    v6 = *(a2 + 24);
    v7 = *(a2 + 33);
    *(result + 56) = 0;
    result += 56;
    *(result - 23) = v7;
    *(result - 32) = v6;
    *(result + 128) = 0;
    if (*(a2 + 184) == 1)
    {
      result = std::__optional_storage_base<WebCore::PCM::AttributionTriggerData,false>::__construct[abi:sn200100]<WebCore::PCM::AttributionTriggerData>(result, a2 + 56);
    }

    v8 = *(a2 + 208);
    *(v3 + 192) = *(a2 + 192);
    *(v3 + 208) = v8;
    *(v3 + 224) = 0;
    *(v3 + 232) = 0;
    if (*(a2 + 232) == 1)
    {
      v9 = *(a2 + 224);
      *(a2 + 224) = 0;
      *(v3 + 224) = v9;
      *(v3 + 232) = 1;
    }

    v10 = *(a2 + 240);
    *(a2 + 240) = 0;
    *(v3 + 240) = v10;
    v11 = *(a2 + 248);
    *(a2 + 248) = 0;
    *(v3 + 248) = v11;
    v12 = *(a2 + 256);
    *(a2 + 256) = 0;
    *(v3 + 256) = v12;
    v13 = *(a2 + 264);
    *(a2 + 264) = 0;
    *(v3 + 264) = v13;
    *(v3 + 272) = 0;
    *(v3 + 296) = 0;
    if (*(a2 + 296) == 1)
    {
      v14 = *(a2 + 272);
      *(a2 + 272) = 0;
      *(v3 + 272) = v14;
      v15 = *(a2 + 280);
      *(a2 + 280) = 0;
      *(v3 + 280) = v15;
      v16 = *(a2 + 288);
      *(a2 + 288) = 0;
      *(v3 + 288) = v16;
      *(v3 + 296) = 1;
    }

    v17 = *(a2 + 304);
    *(a2 + 304) = 0;
    *(v3 + 304) = v17;
    *(v3 + 312) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t WebKit::NetworkResourceLoader::SynchronousLoadData::SynchronousLoadData(uint64_t a1, uint64_t *a2)
{
  v4 = WebCore::ResourceRequest::ResourceRequest(a1);
  v5 = *a2;
  *a2 = 0;
  *(v4 + 25) = v5;
  WebCore::ResourceResponseBase::ResourceResponseBase((v4 + 208));
  *(a1 + 456) = 0;
  *(a1 + 464) = 0;
  *(a1 + 346) = *(a1 + 346) & 0xF1 | 4;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  WTF::URL::invalidate((a1 + 480));
  *(a1 + 536) = 0;
  *(a1 + 520) = 0;
  *(a1 + 526) = 0;
  *(a1 + 544) = 1;
  return a1;
}

WebKit::NetworkResourceLoader::SynchronousLoadData *std::unique_ptr<WebKit::NetworkResourceLoader::SynchronousLoadData>::reset[abi:sn200100](WebKit::NetworkResourceLoader::SynchronousLoadData **a1, WTF::StringImpl *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    WebKit::NetworkResourceLoader::SynchronousLoadData::~SynchronousLoadData(result, a2);

    return WTF::fastFree(v5, v6);
  }

  return result;
}

void WebKit::NetworkResourceLoader::SynchronousLoadData::~SynchronousLoadData(WebKit::NetworkResourceLoader::SynchronousLoadData *this, WTF::StringImpl *a2)
{
  v3 = *(this + 67);
  *(this + 67) = 0;
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 65);
  *(this + 65) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 60);
  *(this + 60) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 59);
  *(this + 59) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(this + 57);
  *(this + 57) = 0;
  if (v7)
  {
    CFRelease(v7);
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase((this + 208), a2);
  v8 = *(this + 25);
  *(this + 25) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  WebCore::ResourceRequest::~ResourceRequest(this);
}

WebCore::ResourceResponse *std::unique_ptr<WebCore::ResourceResponse>::reset[abi:sn200100](WebCore::ResourceResponse **a1, WTF::StringImpl *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    WebCore::ResourceResponse::~ResourceResponse(result, a2);

    return bmalloc::api::tzoneFree(v5, v6);
  }

  return result;
}

uint64_t WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(WTF *this, WTF::StringImpl *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = (this + 8);
    do
    {
      v5 = *v4;
      *v4 = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }

      v6 = *(v4 - 1);
      *(v4 - 1) = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree(this, a2);
}

double WebCore::ContentFilter::operator delete()
{
  v0 = MEMORY[0x19EB04A20]();
  if (*(v0 + 8))
  {
    *(v0 + 208) = 0;
    result = 0.0;
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0u;
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0u;
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *v0 = 0u;
  }

  else
  {

    WTF::fastFree(v0, v1);
  }

  return result;
}

uint64_t std::optional<WebCore::CrossOriginOpenerPolicyEnforcementResult>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 80) == 1)
  {
    v4 = *(a1 + 64);
    *(a1 + 64) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    v5 = *(a1 + 56);
    *(a1 + 56) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    v6 = *(a1 + 40);
    *(a1 + 40) = 0;
    if (v6)
    {
      WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v6, a2);
    }

    v7 = *a1;
    *a1 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }
  }

  return a1;
}

WebKit::NetworkCache::Entry *std::unique_ptr<WebKit::NetworkCache::Entry>::reset[abi:sn200100](WebKit::NetworkCache::Entry **a1, WTF::StringImpl *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    WebKit::NetworkCache::Entry::~Entry(result, a2);

    return bmalloc::api::tzoneFree(v5, v6);
  }

  return result;
}

void WebKit::NetworkCache::Entry::~Entry(WebKit::NetworkCache::Entry *this, WTF::StringImpl *a2)
{
  v3 = *(this + 87);
  if (v3)
  {
    os_release(v3);
  }

  v4 = *(this + 83);
  if (v4)
  {
    os_release(v4);
  }

  v5 = *(this + 76);
  *(this + 76) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 75);
  *(this + 75) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(this + 74);
  *(this + 74) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(this + 73);
  *(this + 73) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  v9 = *(this + 72);
  *(this + 72) = 0;
  if (v9)
  {
    WTF::ThreadSafeRefCounted<WebCore::ShareableResource,(WTF::DestructionThread)0>::deref(v9);
  }

  v10 = *(this + 71);
  *(this + 71) = 0;
  if (v10 && atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v10 + 2);
    (*(*v10 + 8))(v10);
  }

  if (*(this + 560) == 1)
  {
    WebCore::ResourceRequest::~ResourceRequest((this + 360));
  }

  WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 344, a2);
  v12 = *(this + 41);
  *(this + 41) = 0;
  if (v12)
  {
    CFRelease(v12);
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase((this + 80), v11);
  v14 = *(this + 3);
  *(this + 3) = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v13);
  }

  v15 = *(this + 2);
  *(this + 2) = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v13);
  }

  v16 = *(this + 1);
  *(this + 1) = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v13);
  }

  v17 = *this;
  *this = 0;
  if (v17)
  {
    if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v13);
    }
  }
}

atomic_uint *WTF::ThreadSafeRefCounted<WebCore::ShareableResource,(WTF::DestructionThread)0>::deref(atomic_uint *result)
{
  add = atomic_fetch_add(result, 0xFFFFFFFF);
  if (add == 1)
  {
    v5 = v1;
    atomic_store(add, result);
    WebCore::ShareableResource::~ShareableResource(result);

    return WTF::fastFree(v3, v4);
  }

  return result;
}

uint64_t WebKit::NetworkActivityTracker::operator=(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *a1 = v3;
  v4 = a2[2];
  if (v4)
  {
    CFRetain(a2[2]);
  }

  v5 = *(a1 + 16);
  *(a1 + 16) = v4;
  if (v5)
  {
    CFRelease(v5);
  }

  return a1;
}

uint64_t WebKit::NetworkLoad::operator new(WebKit::NetworkLoad *this, void *a2)
{
  if (this == 3536 && WebKit::NetworkLoad::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::NetworkLoad::s_heapRef, a2);
  }

  else
  {
    return WebKit::NetworkLoad::operatorNewSlow(this);
  }
}

uint64_t std::make_unique[abi:sn200100]<WebCore::ContentSecurityPolicy,WTF::URL,decltype(nullptr),WebKit::NetworkResourceLoader *,0>(uint64_t *a1, void *a2, void *a3)
{
  v6 = WebCore::ContentSecurityPolicy::operator new(0x100, a2);
  if (*a3)
  {
    v7 = *a3 + 72;
  }

  else
  {
    v7 = 0;
  }

  result = MEMORY[0x19EB09300](v6, a2, 0, v7);
  *a1 = result;
  return result;
}

uint64_t WebCore::CrossOriginOpenerPolicyEnforcementResult::operator=(uint64_t a1, uint64_t a2)
{
  WTF::URL::operator=(a1, a2);
  v5 = *(a2 + 40);
  *(a2 + 40) = 0;
  v6 = *(a1 + 40);
  *(a1 + 40) = v5;
  if (v6)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v6, v4);
  }

  *(a1 + 48) = *(a2 + 48);
  v7 = *(a2 + 56);
  *(a2 + 56) = 0;
  v8 = *(a1 + 56);
  *(a1 + 56) = v7;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v4);
  }

  v9 = *(a2 + 64);
  *(a2 + 64) = 0;
  v10 = *(a1 + 64);
  *(a1 + 64) = v9;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v4);
  }

  v11 = *(a2 + 72);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 72) = v11;
  return a1;
}

void WebCore::CrossOriginOpenerPolicyEnforcementResult::CrossOriginOpenerPolicyEnforcementResult(uint64_t a1, uint64_t a2)
{
  WTF::URL::URL(a1, a2);
  v3 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(v4 + 40) = v3;
  *(v4 + 48) = *(a2 + 48);
  v5 = *(a2 + 56);
  *(a2 + 56) = 0;
  *(v4 + 56) = v5;
  v6 = *(a2 + 64);
  *(a2 + 64) = 0;
  *(v4 + 64) = v6;
  LOWORD(v6) = *(a2 + 72);
  *(v4 + 74) = *(a2 + 74);
  *(v4 + 72) = v6;
}

void std::__optional_storage_base<WebCore::CrossOriginOpenerPolicyEnforcementResult,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::CrossOriginOpenerPolicyEnforcementResult,false>>(WebCore::CrossOriginOpenerPolicyEnforcementResult *a1, unsigned __int8 *a2)
{
  if (*(a1 + 80) == a2[80])
  {
    if (*(a1 + 80))
    {

      WebCore::CrossOriginOpenerPolicyEnforcementResult::operator=(a1, a2);
    }
  }

  else if (*(a1 + 80))
  {
    WebCore::CrossOriginOpenerPolicyEnforcementResult::~CrossOriginOpenerPolicyEnforcementResult(a1, a2);
    *(v2 + 80) = 0;
  }

  else
  {
    WebCore::CrossOriginOpenerPolicyEnforcementResult::CrossOriginOpenerPolicyEnforcementResult(a1, a2);
    *(v3 + 80) = 1;
  }
}

uint64_t WebCore::NetworkLoadInformation::NetworkLoadInformation(uint64_t a1, uint64_t a2)
{
  WTF::URL::URL(a1, a2);
  WTF::URL::URL(v4 + 40, (a2 + 40));
  *(a1 + 80) = *(a2 + 80);
  v5 = *(a2 + 88);
  *(a2 + 88) = 0;
  *(a1 + 88) = v5;
  *(a1 + 104) = 0;
  *(a1 + 96) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 96, (a2 + 96));
  *(a1 + 120) = 0;
  *(a1 + 112) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 112, (a2 + 112));
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 128, (a2 + 128));
  v6 = *(a2 + 144);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 144) = v6;
  v7 = *(a2 + 152);
  *(a2 + 152) = 0;
  *(a1 + 152) = v7;
  v8 = *(a2 + 160);
  *(a2 + 160) = 0;
  *(a1 + 160) = v8;
  v9 = *(a2 + 168);
  *(a2 + 168) = 0;
  *(a1 + 168) = v9;
  v10 = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 176) = v10;
  v11 = *(a2 + 192);
  *(a2 + 192) = 0;
  *(a1 + 192) = v11;
  WTF::URL::URL(a1 + 200, (a2 + 200));
  v12 = *(a2 + 240);
  v13 = *(a2 + 248);
  *(a2 + 240) = 0;
  *(a1 + 240) = v12;
  *(a1 + 248) = v13;
  v14 = *(a2 + 256);
  *(a2 + 256) = 0;
  *(a1 + 256) = v14;
  v15 = *(a2 + 264);
  *(a2 + 264) = 0;
  *(a1 + 264) = v15;
  v16 = *(a2 + 272);
  *(a2 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 272) = v16;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 280, (a2 + 280));
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 296, (a2 + 296));
  v17 = *(a2 + 312);
  *(a2 + 312) = 0;
  *(a1 + 312) = v17;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  if (*(a2 + 328) == 1)
  {
    v33 = *(a2 + 320);
    *(a2 + 320) = 0;
    *(a1 + 320) = v33;
    *(a1 + 328) = 1;
  }

  v18 = *(a2 + 336);
  *(a1 + 338) = *(a2 + 338);
  *(a1 + 336) = v18;
  v19 = *(a2 + 344);
  *(a2 + 344) = 0;
  *(a1 + 344) = v19;
  v20 = *(a2 + 368);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 368) = v20;
  v21 = *(a2 + 384);
  v22 = *(a2 + 400);
  v23 = *(a2 + 416);
  *(a1 + 427) = *(a2 + 427);
  *(a1 + 400) = v22;
  *(a1 + 416) = v23;
  *(a1 + 384) = v21;
  v24 = *(a2 + 448);
  *(a2 + 448) = 0;
  *(a1 + 448) = v24;
  *(a1 + 456) = *(a2 + 456);
  v25 = *(a2 + 480);
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 480) = v25;
  v26 = *(a2 + 496);
  v27 = *(a2 + 512);
  v28 = *(a2 + 528);
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 512) = v27;
  *(a1 + 528) = v28;
  *(a1 + 496) = v26;
  v29 = *(a2 + 552);
  *(a2 + 552) = 0;
  *(a1 + 552) = v29;
  v30 = *(a2 + 560);
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 560) = v30;
  v31 = *(a2 + 584);
  *(a2 + 584) = 0;
  *(a1 + 584) = v31;
  *(a1 + 592) = 0u;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 592, (a2 + 592));
  return a1;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkLoadInformation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkLoadInformation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

void WebCore::NetworkLoadInformation::~NetworkLoadInformation(WebCore::NetworkLoadInformation *this, WTF::StringImpl *a2)
{
  WTF::Vector<WebCore::NetworkTransactionInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 148, a2);
  v4 = *(this + 73);
  *(this + 73) = 0;
  if (v4)
  {
    WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v4, v3);
  }

  v5 = *(this + 69);
  *(this + 69) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v3);
  }

  v6 = *(this + 56);
  *(this + 56) = 0;
  if (v6)
  {
    CFRelease(v6);
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase((this + 200), v3);

  WebCore::ResourceRequest::~ResourceRequest(this);
}

WTF::StringImpl **WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkLoadInformation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(uint64_t *a1, uint64_t *a2)
{
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkLoadInformation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkLoadInformation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1, a2);
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

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkLoadInformation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(a1, result);
  }

  return result;
}

void std::__optional_storage_base<WebCore::PCM::DestinationUnlinkableToken,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::PCM::DestinationUnlinkableToken,false> const&>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 32))
  {
    if (*(a1 + 32))
    {
      v4 = *a2;
      if (*a2)
      {
        CFRetain(*a2);
      }

      v5 = *a1;
      *a1 = v4;
      if (v5)
      {
        CFRelease(v5);
      }

      v6 = *(a2 + 8);
      if (v6)
      {
        CFRetain(*(a2 + 8));
      }

      v7 = *(a1 + 8);
      *(a1 + 8) = v6;
      if (v7)
      {
        CFRelease(v7);
      }

      v8 = *(a2 + 16);
      if (v8)
      {
        CFRetain(*(a2 + 16));
      }

      v9 = *(a1 + 16);
      *(a1 + 16) = v8;
      if (v9)
      {
        CFRelease(v9);
      }

      WTF::String::operator=((a1 + 24), (a2 + 24));
    }
  }

  else if (*(a1 + 32))
  {

    std::__optional_destruct_base<WebCore::PCM::DestinationUnlinkableToken,false>::reset[abi:sn200100](a1, a2);
  }

  else
  {

    std::__optional_storage_base<WebCore::PCM::DestinationUnlinkableToken,false>::__construct[abi:sn200100]<WebCore::PCM::DestinationUnlinkableToken const&>(a1, a2);
  }
}

void std::__optional_destruct_base<WebCore::PCM::DestinationUnlinkableToken,false>::reset[abi:sn200100](uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 32) == 1)
  {
    v3 = *(a1 + 24);
    *(a1 + 24) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    v4 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *a1;
    *a1 = 0;
    if (v6)
    {
      CFRelease(v6);
    }

    *(a1 + 32) = 0;
  }
}

uint64_t *std::__optional_storage_base<WebCore::PCM::DestinationSecretToken,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::PCM::DestinationSecretToken,false> const&>(uint64_t *result, uint64_t a2)
{
  v3 = result;
  if (*(result + 24) == *(a2 + 24))
  {
    if (*(result + 24))
    {
      WTF::String::operator=(result, a2);
      WTF::String::operator=(v3 + 1, (a2 + 8));

      return WTF::String::operator=(v3 + 2, (a2 + 16));
    }
  }

  else if (*(result + 24))
  {

    return std::__optional_destruct_base<WebCore::PCM::DestinationSecretToken,false>::reset[abi:sn200100](result, a2);
  }

  else
  {
    v4 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    }

    *result = v4;
    v5 = *(a2 + 8);
    if (v5)
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    }

    result[1] = v5;
    v6 = *(a2 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    }

    result[2] = v6;
    *(result + 24) = 1;
  }

  return result;
}

uint64_t std::__optional_destruct_base<WebCore::PCM::DestinationSecretToken,false>::reset[abi:sn200100](uint64_t result, WTF::StringImpl *a2)
{
  if (*(result + 24) == 1)
  {
    v2 = result;
    v3 = *(result + 16);
    *(v2 + 16) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    v4 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    result = *v2;
    *v2 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, a2);
      }
    }

    *(v2 + 24) = 0;
  }

  return result;
}

uint64_t WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::operator=(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *(a2 + 4);
  *(a2 + 4) = 0;
  v5 = *(a2 + 20);
  *(a2 + 20) = 0;
  v6 = *a1;
  *a1 = v3;
  v7 = a2[1];
  a2[1] = 0;
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;
  *(a1 + 16) = v4;
  *(a1 + 20) = v5;
  if (v6)
  {
    WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v6, v8);
  }

  return a1;
}

WTF::StringImpl **WebKit::escapeForJSON(WTF::StringImpl **this, const WTF::String *a2)
{
  v2 = this;
  if (a2 && (this = WTF::StringImpl::replace(), v4))
  {
    this = WTF::StringImpl::replace();
    *v2 = v4;
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v4, v3);
    }
  }

  else
  {
    *v2 = 0;
  }

  return this;
}

uint64_t WebKit::PCM::ClientImpl::operator new(WebKit::PCM::ClientImpl *this, void *a2)
{
  if (WebKit::PCM::ClientImpl::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::PCM::ClientImpl::s_heapRef, a2);
  }

  else
  {
    return WebKit::PCM::ClientImpl::operatorNewSlow(0x18);
  }
}

WebKit::WebPushD::WebPushDaemonConnectionConfiguration *WebKit::WebPushD::WebPushDaemonConnectionConfiguration::WebPushDaemonConnectionConfiguration(WebKit::WebPushD::WebPushDaemonConnectionConfiguration *this, const void **a2)
{
  v4 = *(a2 + 3);
  *this = 0;
  *(this + 1) = 0;
  *(this + 3) = v4;
  if (v4)
  {
    v5 = WTF::fastMalloc(v4);
    *(this + 2) = v4;
    *this = v5;
    memcpy(v5, *a2, *(a2 + 3));
  }

  v6 = a2[2];
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  *(this + 2) = v6;
  v7 = a2[3];
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  *(this + 3) = v7;
  v8 = *(a2 + 2);
  v9 = *(a2 + 3);
  *(this + 64) = *(a2 + 64);
  *(this + 2) = v8;
  *(this + 3) = v9;
  return this;
}

uint64_t WTF::HashTable<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::FastMalloc>::deallocateTable(_DWORD **a1, void *a2)
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
          if (v5[5] == 1)
          {
            (*(*v5 + 24))(v5);
          }

          else
          {
            --v5[5];
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

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, WTF::StringImpl *a2)
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
          if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v5, a2);
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

uint64_t WTF::Deque<WTF::Seconds,25ul>::~Deque(uint64_t a1)
{
  WTF::Deque<WTF::Seconds,25ul>::destroyAll(a1);
  v3 = *(a1 + 16);
  if ((a1 + 32) != v3 && v3 != 0)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    WTF::fastFree(v3, v2);
  }

  return a1;
}

unint64_t *WTF::Deque<WTF::Seconds,25ul>::destroyAll(unint64_t *result)
{
  v1 = *(result + 6);
  v2 = *result;
  v3 = result[1];
  v4 = v3 - *result;
  if (v3 < *result)
  {
    if (v3 > v1 || v1 < v2)
    {
LABEL_12:
      __break(1u);
    }
  }

  else
  {
    v6 = v1 >= v2;
    v5 = v1 - v2;
    if (!v6)
    {
      goto LABEL_12;
    }

    v6 = v4 == -1 || v5 >= v4;
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  return result;
}

double WebKit::WebSharedWorkerServer::operator delete(WebKit::WebSharedWorkerServer *a1)
{
  WebKit::WebSharedWorkerServer::~WebSharedWorkerServer(a1);
  if (*(v1 + 8))
  {
    *(v1 + 48) = 0;
    result = 0.0;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
    *v1 = 0u;
  }

  else
  {

    bmalloc::api::tzoneFree(v1, v2);
  }

  return result;
}

uint64_t std::__optional_destruct_base<WebKit::NetworkSession::ServiceWorkerInfo,false>::~__optional_destruct_base[abi:sn200100](uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 16) == 1)
  {
    v3 = *a1;
    *a1 = 0;
    if (v3)
    {
      if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, a2);
      }
    }
  }

  return a1;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
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
          if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v5);
            WTF::fastFree(v5, a2);
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

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
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
          WTF::RefCounted<WebKit::NetworkSession::CachedNetworkResourceLoader>::deref(v5);
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebCore::IPAddress>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebCore::IPAddress>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebCore::IPAddress,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::IPAddress>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(WTF::StringImpl **a1, WTF::StringImpl *a2)
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
          if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v5, a2);
          }
        }
      }

      v4 += 4;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 2), a2);
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebCore::RegistrableDomain>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebCore::RegistrableDomain>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebCore::RegistrableDomain,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(WTF::StringImpl **a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 1);
  if (v3)
  {
    v4 = a1;
    do
    {
      if (*v4 != -1)
      {
        v5 = v4[1];
        v4[1] = 0;
        if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, a2);
        }

        v6 = *v4;
        *v4 = 0;
        if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, a2);
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 2), a2);
}

uint64_t WebCore::PrivateClickMeasurement::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(a2 + 16);
  *(a2 + 16) = 0;
  v7 = *(a1 + 16);
  *(a1 + 16) = v6;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(a2 + 24);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 24) = v8;
  std::__optional_storage_base<WebCore::PCM::AttributionTriggerData,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::PCM::AttributionTriggerData,false>>((a1 + 56), (a2 + 56));
  v9 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v9;
  std::__optional_storage_base<WebCore::RegistrableDomain,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::RegistrableDomain,false>>((a1 + 224), (a2 + 224));
  v11 = *(a2 + 240);
  *(a2 + 240) = 0;
  v12 = *(a1 + 240);
  *(a1 + 240) = v11;
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(a2 + 248);
  *(a2 + 248) = 0;
  v14 = *(a1 + 248);
  *(a1 + 248) = v13;
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(a2 + 256);
  *(a2 + 256) = 0;
  v16 = *(a1 + 256);
  *(a1 + 256) = v15;
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(a2 + 264);
  *(a2 + 264) = 0;
  v18 = *(a1 + 264);
  *(a1 + 264) = v17;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v10);
  }

  std::__optional_storage_base<WebCore::PCM::DestinationSecretToken,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::PCM::DestinationSecretToken,false>>(a1 + 272, (a2 + 272));
  v20 = *(a2 + 304);
  *(a2 + 304) = 0;
  v21 = *(a1 + 304);
  *(a1 + 304) = v20;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v19);
  }

  return a1;
}

void std::__optional_storage_base<WebCore::PCM::AttributionTriggerData,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::PCM::AttributionTriggerData,false>>(WebCore::PCM::AttributionTriggerData *this, unsigned __int8 *a2)
{
  if (*(this + 128) == a2[128])
  {
    if (*(this + 128))
    {
      v4 = *a2;
      *(this + 2) = a2[2];
      *this = v4;
      std::__optional_storage_base<WebCore::RegistrableDomain,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::RegistrableDomain,false>>((this + 8), a2 + 8);
      std::__optional_storage_base<WebCore::RegistrableDomain,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::RegistrableDomain,false>>((this + 24), a2 + 24);
      std::__optional_storage_base<WebCore::RegistrableDomain,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::RegistrableDomain,false>>((this + 40), a2 + 40);
      std::__optional_storage_base<WebCore::PCM::DestinationUnlinkableToken,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::PCM::DestinationUnlinkableToken,false>>(this + 56, (a2 + 56));

      std::__optional_storage_base<WebCore::PCM::DestinationSecretToken,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::PCM::DestinationSecretToken,false>>(this + 96, (a2 + 96));
    }
  }

  else if (*(this + 128))
  {
    WebCore::PCM::AttributionTriggerData::~AttributionTriggerData(this, a2);
    *(this + 128) = 0;
  }

  else
  {

    std::__optional_storage_base<WebCore::PCM::AttributionTriggerData,false>::__construct[abi:sn200100]<WebCore::PCM::AttributionTriggerData>(this, a2);
  }
}

uint64_t WebKit::NetworkLoadScheduler::operator new(WebKit::NetworkLoadScheduler *this, void *a2)
{
  if (this == 40 && WebKit::NetworkLoadScheduler::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::NetworkLoadScheduler::s_heapRef, a2);
  }

  else
  {
    return WebKit::NetworkLoadScheduler::operatorNewSlow(this);
  }
}

uint64_t *WTF::UniqueRef<WebKit::WebSWOriginStore>::~UniqueRef(uint64_t *a1, void *a2)
{
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    v5 = *(v3 + 152);
    if (v5)
    {
      WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v5, a2);
    }

    *(v3 + 96) = &unk_1F10E6DC8;
    v6 = *(v3 + 136);
    *(v3 + 136) = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    WTF::RunLoop::TimerBase::~TimerBase((v3 + 96));
    v8 = *(v3 + 80);
    if (v8)
    {
      *(v3 + 80) = 0;
      *(v3 + 88) = 0;
      WTF::fastFree(v8, v7);
    }

    v9 = *(v3 + 48);
    *(v3 + 48) = 0;
    if (v9)
    {
      WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v9);
    }

    *v3 = &unk_1F1103A38;
    v10 = *(v3 + 8);
    if (v10)
    {
      WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,unsigned long long>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,unsigned long long,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v10, v7);
    }

    bmalloc::api::tzoneFree(v3, v7);
  }

  return a1;
}

void WebKit::WebSWOriginStore::~WebSWOriginStore(WebKit::WebSWOriginStore *this, void *a2)
{
  v3 = *(this + 19);
  if (v3)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  *(this + 12) = &unk_1F10E6DC8;
  v4 = *(this + 17);
  *(this + 17) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  WTF::RunLoop::TimerBase::~TimerBase((this + 96));
  v6 = *(this + 10);
  if (v6)
  {
    *(this + 10) = 0;
    *(this + 22) = 0;
    WTF::fastFree(v6, v5);
  }

  v7 = *(this + 6);
  *(this + 6) = 0;
  if (v7)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v7);
  }

  *this = &unk_1F1103A38;
  v8 = *(this + 1);
  if (v8)
  {
    WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,unsigned long long>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,unsigned long long,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v8, v5);
  }
}

uint64_t WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,unsigned long long>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,unsigned long long,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(WTF::StringImpl *a1, WTF::StringImpl *a2)
{
  v2 = a1;
  v3 = *(a1 - 1);
  if (v3)
  {
    v4 = a1;
    while (!*(v4 + 24))
    {
      if (*v4 != -1)
      {
        v5 = *(v4 + 1);
        *(v4 + 1) = 0;
        if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, a2);
        }

        a1 = *v4;
        *v4 = 0;
        if (a1 && atomic_fetch_add_explicit(a1, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          a1 = WTF::StringImpl::destroy(a1, a2);
        }

LABEL_11:
        *(v4 + 24) = -1;
      }

      v4 = (v4 + 40);
      if (!--v3)
      {
        goto LABEL_16;
      }
    }

    if (*(v4 + 24) != 1)
    {
      mpark::throw_bad_variant_access(a1);
    }

    goto LABEL_11;
  }

LABEL_16:

  return WTF::fastFree((v2 - 16), a2);
}

uint64_t WebKit::WebSharedWorkerServer::operator new(WebKit::WebSharedWorkerServer *this, void *a2)
{
  if (this == 56 && WebKit::WebSharedWorkerServer::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebSharedWorkerServer::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebSharedWorkerServer::operatorNewSlow(this);
  }
}

uint64_t WebCore::Timer::operator new(WebCore::Timer *this, void *a2)
{
  if (this == 56 && *MEMORY[0x1E69E2760])
  {
    return bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E2760], a2);
  }

  else
  {
    return MEMORY[0x1EEE5AB98]();
  }
}

uint64_t WTF::Detail::CallableWrapper<WebCore::Timer::Timer<WebKit::PreconnectTask,WebKit::PreconnectTask>(WebKit::PreconnectTask &,void (WebKit::PreconnectTask::*)(void))::{lambda(void)#1},void>::call(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  ++v2[5];
  v3 = a1[3];
  v4 = (v2 + (v3 >> 1));
  if (v3)
  {
    v1 = *(*v4 + v1);
  }

  result = v1(v4);
  if (v2[5] == 1)
  {
    v6 = *(*v2 + 24);

    return v6(v2);
  }

  else
  {
    --v2[5];
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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
            if (v25[5] == 1)
            {
              (*(*v25 + 24))(v25);
            }

            else
            {
              --v25[5];
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
            if (v27[5] == 1)
            {
              (*(*v27 + 24))(v27);
            }

            else
            {
              --v27[5];
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
          if (v28[5] == 1)
          {
            (*(*v28 + 24))(v28);
          }

          else
          {
            --v28[5];
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

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = (v3 + 16 * *(v3 - 4));
  }

  else
  {
    v4 = 0;
  }

  if (v4 == a2)
  {
    *a3 = 0;
    return a1;
  }

  v5 = a2[1];
  if (v5)
  {
    a2[1] = 0;
    v3 = *a1;
  }

  *a3 = v5;
  if (v3)
  {
    v6 = (v3 + 16 * *(v3 - 4));
    if (v6 == a2)
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

    v6 = 0;
  }

  if (v6 != a2)
  {
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(a1, a2);
  }

  return a1;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *a1, void *a2)
{
  result = WTF::KeyValuePairHashTraits<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>>::customDeleteBucket(a2);
  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }

  return result;
}

_DWORD *WTF::KeyValuePairHashTraits<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>>::customDeleteBucket(void *a1)
{
  result = a1[1];
  *a1 = -1;
  a1[1] = 0;
  if (result)
  {
    if (result[5] == 1)
    {
      return (*(*result + 24))();
    }

    else
    {
      --result[5];
    }
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
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
    JUMPOUT(0x19DCCE860);
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

  v11 = 1;
  while (v9)
  {
    v8 = (v8 + v11) & v4;
    v9 = *(v2 + 16 * v8);
    ++v11;
    if (v9 == v3)
    {
      return v2 + 16 * v8;
    }
  }

  return v2 + 16 * *(v2 - 4);
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 == -1 || !v2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DCCE93CLL);
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

uint64_t WTF::Detail::CallableWrapper<WebCore::Timer::Timer<WebKit::NetworkResourceLoader,WebKit::NetworkResourceLoader>(WebKit::NetworkResourceLoader &,void (WebKit::NetworkResourceLoader::*)(void))::{lambda(void)#1},void>::call(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  ++v2[5];
  v3 = a1[3];
  v4 = (v2 + (v3 >> 1));
  if (v3)
  {
    v1 = *(*v4 + v1);
  }

  result = v1(v4);
  if (v2[5] == 1)
  {
    v6 = *(*v2 + 24);

    return v6(v2);
  }

  else
  {
    --v2[5];
  }

  return result;
}

uint64_t WTF::Vector<WTF::Ref<WebKit::SandboxExtension,WTF::RawPtrTraits<WebKit::SandboxExtension>,WTF::DefaultRefDerefTraits<WebKit::SandboxExtension>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v6 = *a1;
    v7 = 8 * v3;
    do
    {
      v8 = *v6;
      *v6 = 0;
      if (v8)
      {
        WTF::RefCounted<WebKit::SandboxExtension>::deref(v8);
      }

      ++v6;
      v7 -= 8;
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

void *WTF::Detail::CallableWrapper<WebKit::NetworkResourceLoader::startRequest(WebCore::ResourceRequest const&)::$_0,void,mpark::variant<WebCore::ResourceRequest,WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError> &&>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F11033D8;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkResourceLoader::startRequest(WebCore::ResourceRequest const&)::$_0,void,mpark::variant<WebCore::ResourceRequest,WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError> &&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11033D8;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkResourceLoader::startRequest(WebCore::ResourceRequest const&)::$_0,void,mpark::variant<WebCore::ResourceRequest,WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError> &&>::call(uint64_t result, unsigned __int8 *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = *(result + 8);
  if (!v2)
  {
    return result;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return result;
  }

  v5 = *(v3 + 20);
  *(v3 + 20) = v5 + 9;
  v30 = v3;
  v6 = v5 + 8;
  if (!v6)
  {
    result = (*(*v3 + 24))(v3);
    v6 = *(v3 + 20);
  }

  *(v3 + 20) = v6 + 4;
  v31[0] = v3;
  v7 = v6 + 3;
  if (!v7)
  {
    result = (*(*v3 + 24))(v3);
    v7 = *(v3 + 20);
  }

  *(v3 + 20) = v7 + 2;
  v31[1] = v3;
  if (v7 == -1)
  {
    result = (*(*v3 + 24))(v3);
    v7 = *(v3 + 20) - 1;
  }

  else
  {
    *(v3 + 20) = v7 + 1;
  }

  if (v7)
  {
    *(v3 + 20) = v7;
  }

  else
  {
    result = (*(*v3 + 24))(v3);
    v7 = *(v3 + 20);
  }

  v8 = v7 - 1;
  if (v8)
  {
    *(v3 + 20) = v8;
  }

  else
  {
    result = (*(*v3 + 24))(v3);
    v8 = *(v3 + 20);
  }

  v9 = v8 - 1;
  if (v9)
  {
    *(v3 + 20) = v9;
  }

  else
  {
    result = (*(*v3 + 24))(v3);
    v9 = *(v3 + 20);
  }

  v10 = v9 - 1;
  if (v10)
  {
    *(v3 + 20) = v10;
  }

  else
  {
    result = (*(*v3 + 24))(v3);
    v10 = *(v3 + 20);
  }

  v11 = v10 - 1;
  if (v11)
  {
    *(v3 + 20) = v11;
  }

  else
  {
    result = (*(*v3 + 24))(v3);
  }

  v12 = a2[664];
  if (v12 == 255)
  {
    v13 = -1;
  }

  else
  {
    v13 = a2[664];
  }

  if (!v13)
  {
    if (!a2[664])
    {
      v14 = qword_1ED6416F0;
      if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(v3 + 3280);
        if (!v15)
        {
          result = 157;
          __break(0xC471u);
          return result;
        }

        v17 = *(v3 + 88);
        v16 = *(v3 + 96);
        v18 = *(v3 + 80);
        v19 = *(v3 + 251) == 1;
        v20 = *(v3 + 3328);
        v21 = *(v3 + 4440) != 0;
        *buf = 134219776;
        v33 = v3;
        v34 = 2048;
        v35 = v18;
        v36 = 2048;
        v37 = v17;
        v38 = 2048;
        v39 = v16;
        v40 = 2048;
        v41 = v15;
        v42 = 1024;
        v43 = v19;
        v44 = 1024;
        v45 = v20;
        v46 = 1024;
        v47 = v21;
        _os_log_impl(&dword_19D52D000, v14, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::start: NetworkLoadChecker::check is done", buf, 0x46u);
      }

      if (WebKit::NetworkResourceLoader::canUseCache(v3, a2))
      {
        result = WebKit::NetworkResourceLoader::retrieveCacheEntry(v3, a2);
      }

      else
      {
        result = WebKit::NetworkResourceLoader::startNetworkLoad(v3, a2, 1, v22);
      }

      goto LABEL_29;
    }

LABEL_62:
    mpark::throw_bad_variant_access(result);
  }

  if (v13 == 1)
  {
    if (v12 != 1)
    {
      goto LABEL_62;
    }

    result = _ZZZN6WebKit21NetworkResourceLoader12startRequestERKN7WebCore15ResourceRequestEENK3__0clIN5mpark7variantIJS2_NS_18NetworkLoadChecker18RedirectionTripletENS1_13ResourceErrorEEEEEEDaOT_ENKUlRSA_E_clESG_(v31, a2);
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_62;
    }

    result = _ZZZN6WebKit21NetworkResourceLoader12startRequestERKN7WebCore15ResourceRequestEENK3__0clIN5mpark7variantIJS2_NS_18NetworkLoadChecker18RedirectionTripletENS1_13ResourceErrorEEEEEEDaOT_ENKUlRSB_E_clESG_(&v30, a2);
  }

LABEL_29:
  v23 = *(v3 + 20) - 1;
  if (*(v3 + 20) == 1)
  {
    result = (*(*v3 + 24))(v3);
    v23 = *(v3 + 20);
  }

  else
  {
    *(v3 + 20) = v23;
  }

  v24 = v23 - 1;
  if (v24)
  {
    *(v3 + 20) = v24;
  }

  else
  {
    result = (*(*v3 + 24))(v3);
    v24 = *(v3 + 20);
  }

  v25 = v24 - 1;
  if (v25)
  {
    *(v3 + 20) = v25;
  }

  else
  {
    result = (*(*v3 + 24))(v3);
    v25 = *(v3 + 20);
  }

  v26 = v25 - 1;
  if (v26)
  {
    *(v3 + 20) = v26;
  }

  else
  {
    result = (*(*v3 + 24))(v3);
    v26 = *(v3 + 20);
  }

  v27 = v26 - 1;
  if (v27)
  {
    *(v3 + 20) = v27;
  }

  else
  {
    result = (*(*v3 + 24))(v3);
    v27 = *(v3 + 20);
  }

  v28 = v27 - 1;
  if (v28)
  {
    *(v3 + 20) = v28;
  }

  else
  {
    result = (*(*v3 + 24))(v3);
    v28 = *(v3 + 20);
  }

  v29 = v28 - 1;
  if (!v29)
  {
    return (*(*v3 + 24))(v3);
  }

  *(v3 + 20) = v29;
  return result;
}

uint64_t _ZZZN6WebKit21NetworkResourceLoader12startRequestERKN7WebCore15ResourceRequestEENK3__0clIN5mpark7variantIJS2_NS_18NetworkLoadChecker18RedirectionTripletENS1_13ResourceErrorEEEEEEDaOT_ENKUlRSA_E_clESG_(uint64_t *a1, char *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a1;
    v6 = *(*a1 + 3280);
    if (!v6)
    {
      result = 157;
      __break(0xC471u);
      return result;
    }

    v8 = *(v5 + 88);
    v7 = *(v5 + 96);
    v9 = *(v5 + 80);
    v10 = *(v5 + 251) == 1;
    v11 = *(v5 + 3328);
    v12 = *(v5 + 4440) != 0;
    *v16 = 134219776;
    *&v16[4] = v5;
    v17 = 2048;
    v18 = v9;
    v19 = 2048;
    v20 = v8;
    v21 = 2048;
    v22 = v7;
    v23 = 2048;
    v24 = v6;
    v25 = 1024;
    v26 = v10;
    v27 = 1024;
    v28 = v11;
    v29 = 1024;
    v30 = v12;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::start: NetworkLoadChecker::check returned a synthetic redirect", v16, 0x46u);
  }

  v13 = *a1;
  *(v13 + 4584) = 1;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F1103400;
  *v16 = v14;
  WebKit::NetworkResourceLoader::willSendRedirectedRequestInternal(v13, a2, (a2 + 200), (a2 + 400), 0, v16);
  result = *v16;
  if (*v16)
  {
    return (*(**v16 + 8))(*v16);
  }

  return result;
}

uint64_t _ZZZN6WebKit21NetworkResourceLoader12startRequestERKN7WebCore15ResourceRequestEENK3__0clIN5mpark7variantIJS2_NS_18NetworkLoadChecker18RedirectionTripletENS1_13ResourceErrorEEEEEEDaOT_ENKUlRSB_E_clESG_(WebKit::NetworkResourceLoader **a1, uint64_t a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED6416F0;
  result = os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v18 = a1;
    v6 = *a1;
    v7 = *(*a1 + 410);
    if (!v7)
    {
      result = 157;
      __break(0xC471u);
      return result;
    }

    v9 = *(v6 + 11);
    v8 = *(v6 + 12);
    v10 = *(v6 + 10);
    v11 = *(v6 + 251) == 1;
    v17 = *(v6 + 3328);
    v12 = *(v6 + 555) != 0;
    MEMORY[0x19EB12BA0](a2);
    WTF::String::utf8();
    if (v19)
    {
      v13 = v19 + 16;
    }

    else
    {
      v13 = 0;
    }

    MEMORY[0x19EB12BA0](a2);
    v14 = *(a2 + 56);
    v15 = *(a2 + 60) == 3;
    *buf = 134220546;
    v21 = v6;
    v22 = 2048;
    v23 = v10;
    v24 = 2048;
    v25 = v9;
    v26 = 2048;
    v27 = v8;
    v28 = 2048;
    v29 = v7;
    v30 = 1024;
    v31 = v11;
    v32 = 1024;
    v33 = v17;
    v34 = 1024;
    v35 = v12;
    v36 = 2082;
    v37 = v13;
    v38 = 1024;
    v39 = v14;
    v40 = 1024;
    v41 = v15;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::start: NetworkLoadChecker::check returned an error (error.domain=%{public}s, error.code=%d, isCancellation=%d)", buf, 0x5Cu);
    result = v19;
    if (v19)
    {
      if (*v19 == 1)
      {
        result = WTF::fastFree(v19, v16);
      }

      else
      {
        --*v19;
      }
    }

    a1 = v18;
  }

  if (*(a2 + 60) != 3)
  {
    return WebKit::NetworkResourceLoader::didFailLoading(*a1, a2);
  }

  return result;
}

__n128 _ZN3WTF6Detail15CallableWrapperIZZZN6WebKit21NetworkResourceLoader12startRequestERKN7WebCore15ResourceRequestEENK3__0clIN5mpark7variantIJS5_NS2_18NetworkLoadChecker18RedirectionTripletENS4_13ResourceErrorEEEEEEDaOT_ENKUlRSD_E_clESJ_EUlSH_E_vJOS5_EE4callESM_(uint64_t a1, uint64_t a2)
{
  WTF::URL::URL(v10, a2);
  WTF::URL::URL(v11, (a2 + 40));
  v11[5] = *(a2 + 80);
  v3 = *(a2 + 88);
  *(a2 + 88) = 0u;
  v12 = v3;
  *&v3 = *(a2 + 104);
  *(a2 + 104) = 0;
  v13 = v3;
  *&v3 = *(a2 + 120);
  v14 = *(a2 + 112);
  v15 = v3;
  v4 = *(a2 + 128);
  *&v3 = *(a2 + 136);
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  v16 = v4;
  v17 = v3;
  LODWORD(v4) = *(a2 + 144);
  v19 = *(a2 + 148);
  v18 = v4;
  v5 = *(a2 + 152);
  *(a2 + 152) = 0u;
  v20 = v5;
  v23 = *(a2 + 184);
  v6 = *(a2 + 168);
  v7 = *(a2 + 176);
  *(a2 + 168) = 0;
  v21 = v6;
  v22 = v7;
  v8 = *(a2 + 192);
  *(a2 + 192) = 0;
  v24 = v8;
  WebCore::ResourceRequest::~ResourceRequest(v10);
  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkResourceLoader::retrieveCacheEntry(WebCore::ResourceRequest const&)::$_0,void,std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::Cache::RetrieveInfo const&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1103428;
  WebCore::ResourceRequest::~ResourceRequest((a1 + 2));
  v3 = a1[1];
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkResourceLoader::retrieveCacheEntry(WebCore::ResourceRequest const&)::$_0,void,std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::Cache::RetrieveInfo const&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1103428;
  WebCore::ResourceRequest::~ResourceRequest((a1 + 2));
  v3 = a1[1];
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, v2);
  }

  return WTF::fastFree(a1, v2);
}

void WTF::Detail::CallableWrapper<WebKit::NetworkResourceLoader::retrieveCacheEntry(WebCore::ResourceRequest const&)::$_0,void,std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::Cache::RetrieveInfo const&>::call(uint64_t a1, WTF::StringImpl *a2, uint64_t a3)
{
  v128 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  *a2 = 0;
  v107 = v3;
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = *(v4 + 8);
  if (v5)
  {
    v8 = *a3;
    v7 = *(a3 + 8);
    v9 = *(a3 + 16);
    v10 = *(a3 + 24);
    v11 = *(a3 + 32);
    v12 = *(a3 + 40);
    v13 = *(a3 + 48);
    v14 = *(a3 + 56);
    v105 = *(a3 + 64);
    v15 = *(a3 + 72);
    v16 = *(a3 + 80);
    v17 = *(a3 + 88);
    v18 = *(a3 + 96);
    v19 = *(a3 + 97);
    v106 = *(a3 + 98);
    v20 = *(a3 + 104);
    ++*(v5 + 20);
    v21 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(v5 + 3280);
      if (!v23)
      {
        __break(0xC471u);
        goto LABEL_62;
      }

      v25 = *(v5 + 88);
      v24 = *(v5 + 96);
      v26 = *(v5 + 80);
      v27 = *(v5 + 251) == 1;
      v28 = *(v5 + 3328);
      v29 = *(v5 + 4440) != 0;
      *buf = 134220032;
      v109 = v5;
      v110 = 2048;
      v111 = v26;
      v112 = 2048;
      v113 = v25;
      v114 = 2048;
      v115 = v24;
      v116 = 2048;
      v117 = v23;
      v118 = 1024;
      v119 = v27;
      v120 = 1024;
      v121 = v28;
      v122 = 1024;
      v123 = v29;
      v124 = 1024;
      LODWORD(v125) = v3 != 0;
      _os_log_impl(&dword_19D52D000, v21, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::retrieveCacheEntry: Done checking the HTTP disk cache (foundCachedEntry=%d)", buf, 0x4Cu);
    }

    v30 = v7 - v8;
    v22.n128_u64[0] = 1.0;
    if (v30 < 1.0)
    {
      goto LABEL_7;
    }

    v33 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      v34 = *(v5 + 3280);
      if (!v34)
      {
        __break(0xC471u);
        JUMPOUT(0x19DCD0000);
      }

      v36 = *(v5 + 88);
      v35 = *(v5 + 96);
      v37 = *(v5 + 80);
      v38 = *(v5 + 251) == 1;
      v39 = *(v5 + 3328);
      v40 = *(v5 + 4440) != 0;
      *buf = 134220288;
      v109 = v5;
      v110 = 2048;
      v111 = v37;
      v112 = 2048;
      v113 = v36;
      v114 = 2048;
      v115 = v35;
      v116 = 2048;
      v117 = v34;
      v118 = 1024;
      v119 = v38;
      v120 = 1024;
      v121 = v39;
      v122 = 1024;
      v123 = v40;
      v124 = 2048;
      v125 = v30 * 1000.0;
      v126 = 1024;
      LODWORD(v127) = v9;
      _os_log_impl(&dword_19D52D000, v33, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::logSlowCacheRetrieveIfNeeded: Took %.0fms, priority %d", buf, 0x56u);
    }

    if (v20)
    {
      v41 = qword_1ED6416F0;
      if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
      {
        v42 = *(v5 + 3280);
        if (!v42)
        {
          __break(0xC471u);
          JUMPOUT(0x19DCD0040);
        }

        v44 = *(v5 + 88);
        v43 = *(v5 + 96);
        v45 = *(v5 + 80);
        v46 = *(v5 + 251) == 1;
        v47 = *(v5 + 3328);
        v48 = *(v5 + 4440) != 0;
        *buf = 134219776;
        v109 = v5;
        v110 = 2048;
        v111 = v45;
        v112 = 2048;
        v113 = v44;
        v114 = 2048;
        v115 = v43;
        v116 = 2048;
        v117 = v42;
        v118 = 1024;
        v119 = v46;
        v120 = 1024;
        v121 = v47;
        v122 = 1024;
        v123 = v48;
        _os_log_impl(&dword_19D52D000, v41, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::logSlowCacheRetrieveIfNeeded: Was speculative load", buf, 0x46u);
      }
    }

    if (v10 == 0.0)
    {
      goto LABEL_7;
    }

    v49 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      v50 = *(v5 + 3280);
      if (!v50)
      {
        __break(0xC471u);
        JUMPOUT(0x19DCD0020);
      }

      v52 = *(v5 + 88);
      v51 = *(v5 + 96);
      v53 = *(v5 + 80);
      v54 = *(v5 + 251) == 1;
      v55 = *(v5 + 3328);
      v56 = *(v5 + 4440) != 0;
      *buf = 134220032;
      v109 = v5;
      v110 = 2048;
      v111 = v53;
      v112 = 2048;
      v113 = v52;
      v114 = 2048;
      v115 = v51;
      v116 = 2048;
      v117 = v50;
      v118 = 1024;
      v119 = v54;
      v120 = 1024;
      v121 = v55;
      v122 = 1024;
      v123 = v56;
      v124 = 2048;
      v125 = (v15 - v10) * 1000.0;
      _os_log_impl(&dword_19D52D000, v49, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::logSlowCacheRetrieveIfNeeded: Storage retrieve time %.0fms", buf, 0x50u);
    }

    if (v11 != 0.0)
    {
      v57 = qword_1ED6416F0;
      if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
      {
        v58 = *(v5 + 3280);
        if (!v58)
        {
          __break(0xC471u);
          JUMPOUT(0x19DCD0060);
        }

        v60 = *(v5 + 88);
        v59 = *(v5 + 96);
        v61 = *(v5 + 80);
        v62 = *(v5 + 251) == 1;
        v63 = *(v5 + 3328);
        v64 = *(v5 + 4440) != 0;
        *buf = 134220288;
        v109 = v5;
        v110 = 2048;
        v111 = v61;
        v112 = 2048;
        v113 = v60;
        v114 = 2048;
        v115 = v59;
        v116 = 2048;
        v117 = v58;
        v118 = 1024;
        v119 = v62;
        v120 = 1024;
        v121 = v63;
        v122 = 1024;
        v123 = v64;
        v124 = 2048;
        v125 = (v11 - v10) * 1000.0;
        v126 = 2048;
        v127 = v17 - v16;
        _os_log_impl(&dword_19D52D000, v57, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::logSlowCacheRetrieveIfNeeded: Dispatch delay %.0fms, dispatched %lu resources first", buf, 0x5Au);
      }
    }

    if (v12 != 0.0)
    {
      v65 = qword_1ED6416F0;
      if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
      {
        v66 = *(v5 + 3280);
        if (!v66)
        {
          __break(0xC471u);
          JUMPOUT(0x19DCD0080);
        }

        v68 = *(v5 + 88);
        v67 = *(v5 + 96);
        v69 = *(v5 + 80);
        v70 = *(v5 + 251) == 1;
        v71 = *(v5 + 3328);
        v72 = *(v5 + 4440) != 0;
        *buf = 134220032;
        v109 = v5;
        v110 = 2048;
        v111 = v69;
        v112 = 2048;
        v113 = v68;
        v114 = 2048;
        v115 = v67;
        v116 = 2048;
        v117 = v66;
        v118 = 1024;
        v119 = v70;
        v120 = 1024;
        v121 = v71;
        v122 = 1024;
        v123 = v72;
        v124 = 2048;
        v125 = (v13 - v12) * 1000.0;
        _os_log_impl(&dword_19D52D000, v65, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::logSlowCacheRetrieveIfNeeded: Record I/O time %.0fms", buf, 0x50u);
      }
    }

    if (v14 != 0.0)
    {
      v73 = qword_1ED6416F0;
      if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
      {
        v74 = *(v5 + 3280);
        if (!v74)
        {
          __break(0xC471u);
          JUMPOUT(0x19DCD00A0);
        }

        v76 = *(v5 + 88);
        v75 = *(v5 + 96);
        v77 = *(v5 + 80);
        v78 = *(v5 + 251) == 1;
        v79 = *(v5 + 3328);
        v80 = *(v5 + 4440) != 0;
        *buf = 134220032;
        v109 = v5;
        v110 = 2048;
        v111 = v77;
        v112 = 2048;
        v113 = v76;
        v114 = 2048;
        v115 = v75;
        v116 = 2048;
        v117 = v74;
        v118 = 1024;
        v119 = v78;
        v120 = 1024;
        v121 = v79;
        v122 = 1024;
        v123 = v80;
        v124 = 2048;
        v125 = (v105 - v14) * 1000.0;
        _os_log_impl(&dword_19D52D000, v73, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::logSlowCacheRetrieveIfNeeded: Blob I/O time %.0fms", buf, 0x50u);
      }
    }

    if (v18)
    {
      v81 = qword_1ED6416F0;
      if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
      {
        v82 = *(v5 + 3280);
        if (!v82)
        {
          __break(0xC471u);
          JUMPOUT(0x19DCD00C0);
        }

        v84 = *(v5 + 88);
        v83 = *(v5 + 96);
        v85 = *(v5 + 80);
        v86 = *(v5 + 251) == 1;
        v87 = *(v5 + 3328);
        v88 = *(v5 + 4440) != 0;
        *buf = 134219776;
        v109 = v5;
        v110 = 2048;
        v111 = v85;
        v112 = 2048;
        v113 = v84;
        v114 = 2048;
        v115 = v83;
        v116 = 2048;
        v117 = v82;
        v118 = 1024;
        v119 = v86;
        v120 = 1024;
        v121 = v87;
        v122 = 1024;
        v123 = v88;
        _os_log_impl(&dword_19D52D000, v81, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::logSlowCacheRetrieveIfNeeded: Synchronization was in progress", buf, 0x46u);
      }
    }

    if (v19)
    {
      v89 = qword_1ED6416F0;
      if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
      {
        v90 = *(v5 + 3280);
        if (!v90)
        {
          __break(0xC471u);
          JUMPOUT(0x19DCD00E0);
        }

        v92 = *(v5 + 88);
        v91 = *(v5 + 96);
        v93 = *(v5 + 80);
        v94 = *(v5 + 251) == 1;
        v95 = *(v5 + 3328);
        v96 = *(v5 + 4440) != 0;
        *buf = 134219776;
        v109 = v5;
        v110 = 2048;
        v111 = v93;
        v112 = 2048;
        v113 = v92;
        v114 = 2048;
        v115 = v91;
        v116 = 2048;
        v117 = v90;
        v118 = 1024;
        v119 = v94;
        v120 = 1024;
        v121 = v95;
        v122 = 1024;
        v123 = v96;
        _os_log_impl(&dword_19D52D000, v89, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::logSlowCacheRetrieveIfNeeded: Shrink was in progress", buf, 0x46u);
      }
    }

    if ((v106 & 1) == 0)
    {
      goto LABEL_7;
    }

    v97 = qword_1ED6416F0;
    if (!os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v98 = *(v5 + 3280);
    if (v98)
    {
      v100 = *(v5 + 88);
      v99 = *(v5 + 96);
      v101 = *(v5 + 80);
      v102 = *(v5 + 251) == 1;
      v103 = *(v5 + 3328);
      v104 = *(v5 + 4440) != 0;
      *buf = 134219776;
      v109 = v5;
      v110 = 2048;
      v111 = v101;
      v112 = 2048;
      v113 = v100;
      v114 = 2048;
      v115 = v99;
      v116 = 2048;
      v117 = v98;
      v118 = 1024;
      v119 = v102;
      v120 = 1024;
      v121 = v103;
      v122 = 1024;
      v123 = v104;
      _os_log_impl(&dword_19D52D000, v97, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::logSlowCacheRetrieveIfNeeded: Retrieve was canceled", buf, 0x46u);
LABEL_7:
      if (v3)
      {
        WebKit::NetworkResourceLoader::retrieveCacheEntryInternal(v5, &v107, (a1 + 16));
      }

      else
      {
        WebKit::NetworkResourceLoader::startNetworkLoad(v5, a1 + 16, 1, v22);
      }

      if (*(v5 + 20) == 1)
      {
        (*(*v5 + 24))(v5);
      }

      else
      {
        --*(v5 + 20);
      }

      goto LABEL_11;
    }

    __break(0xC471u);
LABEL_62:
    JUMPOUT(0x19DCCFFE0);
  }

LABEL_11:
  v3 = v107;
LABEL_12:
  if (v3)
  {
    WebKit::NetworkCache::Entry::~Entry(v3, a2);
    bmalloc::api::tzoneFree(v31, v32);
  }
}

uint64_t IPC::ArgumentCoder<std::optional<IPC::FormDataReference>,void>::encode<IPC::Encoder,std::optional<IPC::FormDataReference> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 8))
    {
      return IPC::ArgumentCoder<IPC::FormDataReference,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::MessageSender::send<Messages::WebResourceLoader::UpdateResultingClientIdentifier>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

IPC::Encoder *IPC::MessageSender::send<Messages::WebResourceLoader::UpdateResultingClientIdentifier>(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 3039;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  Messages::WebResourceLoader::UpdateResultingClientIdentifier::encode<IPC::Encoder>(a2, v6);
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

uint64_t Messages::WebResourceLoader::UpdateResultingClientIdentifier::encode<IPC::Encoder>(uint64_t **a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<WTF::UUID,void>::encode(a2, *a1);
  v4 = a1[1];

  return IPC::ArgumentCoder<WTF::UUID,void>::encode(a2, v4);
}

_DWORD *WTF::RefCounted<WebCore::SWServerRegistration>::deref(_DWORD *result)
{
  if (*result == 1)
  {
    v2 = MEMORY[0x19EB08F60](result - 2);

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

IPC::Encoder *IPC::MessageSender::send<Messages::WebResourceLoader::SetWorkerStart>(uint64_t a1, double **a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 3037;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v6, **a2);
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

uint64_t Messages::WebResourceLoader::DidReceiveResponse::encode<IPC::Encoder>(uint64_t a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<WebCore::ResourceResponse,void>::encode(a2, *a1);
  v5 = *(a1 + 8);
  IPC::Encoder::operator<<<BOOL>(a2, &v5);
  IPC::Encoder::operator<<<BOOL &>(a2, (a1 + 9));
  return IPC::ArgumentCoder<std::optional<WebCore::NetworkLoadMetrics>,void>::encode<IPC::Encoder,std::optional<WebCore::NetworkLoadMetrics> const&>(a2, *(a1 + 16));
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkResourceLoader::processClearSiteDataHeader(WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1103450;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkResourceLoader::processClearSiteDataHeader(WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1103450;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkResourceLoader::processClearSiteDataHeader(WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::call(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  if (v2 && (v3 = *(v2 + 8)) != 0)
  {
    ++*(v3 + 20);
    v4 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(v3 + 3280);
      if (!v5)
      {
        result = 157;
        __break(0xC471u);
        return result;
      }

      v7 = *(v3 + 88);
      v6 = *(v3 + 96);
      v8 = *(v3 + 80);
      v9 = *(v3 + 251) == 1;
      v10 = *(v3 + 3328);
      v11 = *(v3 + 4440) != 0;
      v16 = 134219776;
      v17 = v3;
      v18 = 2048;
      v19 = v8;
      v20 = 2048;
      v21 = v7;
      v22 = 2048;
      v23 = v6;
      v24 = 2048;
      v25 = v5;
      v26 = 1024;
      v27 = v9;
      v28 = 1024;
      v29 = v10;
      v30 = 1024;
      v31 = v11;
      _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::processClearSiteDataHeader: END", &v16, 0x46u);
    }

    v12 = *(a1 + 16);
    *(a1 + 16) = 0;
    (*(*v12 + 16))(v12);
    result = (*(*v12 + 8))(v12);
    if (*(v3 + 20) == 1)
    {
      return (*(*v3 + 24))(v3);
    }

    else
    {
      --*(v3 + 20);
    }
  }

  else
  {
    v14 = *(a1 + 16);
    *(a1 + 16) = 0;
    (*(*v14 + 16))(v14);
    v15 = *(*v14 + 8);

    return v15(v14);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkResourceLoader::processClearSiteDataHeader(WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(void)> &&)::$_1,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1103478;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkResourceLoader::processClearSiteDataHeader(WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(void)> &&)::$_1,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1103478;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcessProxy::DeleteWebsiteDataInWebProcessesForOrigin,WebKit::NetworkResourceLoader::processClearSiteDataHeader(WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(void)> &&)::$_2>(WebKit::NetworkResourceLoader::processClearSiteDataHeader(WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(void)> &&)::$_2 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::NetworkResourceLoader::processClearSiteDataHeader(WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(void)> &&)::$_2,IPC::Decoder)#1},void,WebKit::NetworkResourceLoader::processClearSiteDataHeader(WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(void)> &&)::$_2,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11034A0;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcessProxy::DeleteWebsiteDataInWebProcessesForOrigin,WebKit::NetworkResourceLoader::processClearSiteDataHeader(WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(void)> &&)::$_2>(WebKit::NetworkResourceLoader::processClearSiteDataHeader(WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(void)> &&)::$_2 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::NetworkResourceLoader::processClearSiteDataHeader(WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(void)> &&)::$_2,IPC::Decoder)#1},void,WebKit::NetworkResourceLoader::processClearSiteDataHeader(WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(void)> &&)::$_2,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11034A0;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcessProxy::ReloadExecutionContextsForOrigin,WebKit::NetworkResourceLoader::processClearSiteDataHeader(WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(void)> &&)::$_3>(WebKit::NetworkResourceLoader::processClearSiteDataHeader(WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(void)> &&)::$_3 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::NetworkResourceLoader::processClearSiteDataHeader(WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(void)> &&)::$_3,IPC::Decoder)#1},void,WebKit::NetworkResourceLoader::processClearSiteDataHeader(WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(void)> &&)::$_3,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11034C8;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcessProxy::ReloadExecutionContextsForOrigin,WebKit::NetworkResourceLoader::processClearSiteDataHeader(WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(void)> &&)::$_3>(WebKit::NetworkResourceLoader::processClearSiteDataHeader(WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(void)> &&)::$_3 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::NetworkResourceLoader::processClearSiteDataHeader(WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(void)> &&)::$_3,IPC::Decoder)#1},void,WebKit::NetworkResourceLoader::processClearSiteDataHeader(WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(void)> &&)::$_3,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11034C8;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkResourceLoader::didReceiveResponse(WebCore::ResourceResponse &&,WebKit::PrivateRelayed,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_2,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11034F0;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkResourceLoader::didReceiveResponse(WebCore::ResourceResponse &&,WebKit::PrivateRelayed,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_2,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  v2 = WTF::Detail::CallableWrapper<WebKit::NetworkResourceLoader::didReceiveResponse(WebCore::ResourceResponse &&,WebKit::PrivateRelayed,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_2,void>::~CallableWrapper(a1, a2);

  return WTF::fastFree(v2, v3);
}

WebKit::NetworkResourceLoader *WTF::Detail::CallableWrapper<WebKit::NetworkResourceLoader::didReceiveResponse(WebCore::ResourceResponse &&,WebKit::PrivateRelayed,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_2,void>::call(uint64_t a1)
{
  result = *(a1 + 8);
  if (*(result + 519))
  {
    return WebKit::NetworkResourceLoader::didFailLoading(result, (a1 + 16));
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkResourceLoader::didReceiveResponse(WebCore::ResourceResponse &&,WebKit::PrivateRelayed,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_3,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1103518;
  v3 = a1[2];
  a1[2] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[1];
  a1[1] = 0;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkResourceLoader::didReceiveResponse(WebCore::ResourceResponse &&,WebKit::PrivateRelayed,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_3,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1103518;
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
    if (v4[5] == 1)
    {
      (*(*v4 + 24))(v4);
    }

    else
    {
      --v4[5];
    }
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::NetworkResourceLoader::didReceiveResponse(WebCore::ResourceResponse &&,WebKit::PrivateRelayed,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_3,void>::call(WTF::StringImpl *result)
{
  v1 = *(result + 1);
  if (!*(v1 + 519))
  {
    return result;
  }

  v2 = result;
  v3 = *(MEMORY[0x1E69E26C8] + 8);
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = MEMORY[0x1E696EB88];
      atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
      v5 = (result + 16);
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v6 = v14;
      goto LABEL_5;
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v4 = v14;
    v5 = (v2 + 16);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v6 = v14;
    if (v14)
    {
LABEL_5:
      v7 = 0;
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
      goto LABEL_8;
    }
  }

  else
  {
    v5 = (result + 16);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v4 = 0;
    v6 = v14;
  }

  v7 = 1;
LABEL_8:
  v14 = v4;
  v8 = *v5;
  if (*v5)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  v15 = v8;
  v9 = *(v2 + 40);
  v16 = *(v2 + 24);
  v17 = v9;
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  v18 = v6;
  v19 = 0;
  v20 = 2;
  cf = 0;
  v22 = 1;
  WebKit::NetworkResourceLoader::didFailLoading(v1, &v14);
  v11 = cf;
  cf = 0;
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = v18;
  v18 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v10);
  }

  v13 = v15;
  v15 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v10);
  }

  result = v14;
  v14 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v10);
    if (v6)
    {
LABEL_23:
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(v6, v10);
      }
    }
  }

  else if (v6)
  {
    goto LABEL_23;
  }

  if ((v7 & 1) == 0 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(v4, v10);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkResourceLoader::didReceiveResponse(WebCore::ResourceResponse &&,WebKit::PrivateRelayed,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_4,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1103540;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkResourceLoader::didReceiveResponse(WebCore::ResourceResponse &&,WebKit::PrivateRelayed,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_4,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  v2 = WTF::Detail::CallableWrapper<WebKit::NetworkResourceLoader::didReceiveResponse(WebCore::ResourceResponse &&,WebKit::PrivateRelayed,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_4,void>::~CallableWrapper(a1, a2);

  return WTF::fastFree(v2, v3);
}

WebKit::NetworkResourceLoader *WTF::Detail::CallableWrapper<WebKit::NetworkResourceLoader::didReceiveResponse(WebCore::ResourceResponse &&,WebKit::PrivateRelayed,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_4,void>::call(uint64_t a1)
{
  result = *(a1 + 8);
  if (*(result + 519))
  {
    return WebKit::NetworkResourceLoader::didFailLoading(result, (a1 + 16));
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkResourceLoader::didReceiveResponse(WebCore::ResourceResponse &&,WebKit::PrivateRelayed,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_5,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1103568;
  v3 = a1[22];
  a1[22] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[19];
  a1[19] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[14];
  a1[14] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = a1[3];
  a1[3] = 0;
  if (v6)
  {
    if (v6[5] == 1)
    {
      (*(*v6 + 24))(v6);
    }

    else
    {
      --v6[5];
    }
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkResourceLoader::didReceiveResponse(WebCore::ResourceResponse &&,WebKit::PrivateRelayed,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_5,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1103568;
  v3 = *(this + 22);
  *(this + 22) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 19);
  *(this + 19) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 14);
  *(this + 14) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 3);
  *(this + 3) = 0;
  if (v6)
  {
    if (v6[5] == 1)
    {
      (*(*v6 + 24))(v6);
    }

    else
    {
      --v6[5];
    }
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::NetworkResourceLoader::didReceiveResponse(WebCore::ResourceResponse &&,WebKit::PrivateRelayed,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_5,void>::call(uint64_t a1)
{
  v82 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  WebCore::ResourceResponse::ResourceResponse(buf, (v2 + 4160));
  WebKit::NetworkResourceLoader::sanitizeResponseIfPossible(v65, v2, buf);
  v4 = cf;
  cf = 0;
  if (v4)
  {
    CFRelease(v4);
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(buf, v3);
  v5 = *(v2 + 4440);
  if (v5)
  {
    v28 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(v2 + 3280);
      if (!v29)
      {
        __break(0xC471u);
        JUMPOUT(0x19DCD18D4);
      }

      v31 = *(v2 + 88);
      v30 = *(v2 + 96);
      v32 = *(v2 + 80);
      v33 = *(v2 + 251) == 1;
      v34 = *(v2 + 3328);
      *buf = 134219776;
      *&buf[4] = v2;
      *&buf[12] = 2048;
      *&buf[14] = v32;
      *&buf[22] = 2048;
      v68 = v31;
      v69 = 2048;
      v70 = v30;
      v71 = 2048;
      v72 = v29;
      v73 = 1024;
      v74 = v33;
      v75 = 1024;
      v76 = v34;
      v77 = 1024;
      v78 = 1;
      _os_log_impl(&dword_19D52D000, v28, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::didReceiveResponse: Using response for synchronous load", buf, 0x46u);
      v5 = *(v2 + 4440);
    }

    WebCore::ResourceResponse::operator=(v5 + 208, v65);
    goto LABEL_15;
  }

  if (WebKit::NetworkResourceLoader::isCrossOriginPrefetch(v2))
  {
    v35 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      v36 = *(v2 + 3280);
      if (!v36)
      {
        __break(0xC471u);
        JUMPOUT(0x19DCD18F4);
      }

      v38 = *(v2 + 88);
      v37 = *(v2 + 96);
      v39 = *(v2 + 80);
      v40 = *(v2 + 251) == 1;
      v41 = *(v2 + 3328);
      v42 = *(v2 + 4440) != 0;
      *buf = 134219776;
      *&buf[4] = v2;
      *&buf[12] = 2048;
      *&buf[14] = v39;
      *&buf[22] = 2048;
      v68 = v38;
      v69 = 2048;
      v70 = v37;
      v71 = 2048;
      v72 = v36;
      v73 = 1024;
      v74 = v40;
      v75 = 1024;
      v76 = v41;
      v77 = 1024;
      v78 = v42;
      _os_log_impl(&dword_19D52D000, v35, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::didReceiveResponse: Using response for cross-origin prefetch", buf, 0x46u);
    }

    WebCore::ResourceResponseBase::httpHeaderField();
    if (!*buf)
    {
      goto LABEL_15;
    }

    v44 = WTF::StringImpl::find();
    v45 = *buf;
    *buf = 0;
    if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v45, v43);
    }

    if (v44 == -1)
    {
      goto LABEL_15;
    }

    v46 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      v47 = *(v2 + 3280);
      if (!v47)
      {
        goto LABEL_52;
      }

      v49 = *(v2 + 88);
      v48 = *(v2 + 96);
      v50 = *(v2 + 80);
      v51 = *(v2 + 251) == 1;
      v52 = *(v2 + 3328);
      v53 = *(v2 + 4440) != 0;
      *buf = 134219776;
      *&buf[4] = v2;
      *&buf[12] = 2048;
      *&buf[14] = v50;
      *&buf[22] = 2048;
      v68 = v49;
      v69 = 2048;
      v70 = v48;
      v71 = 2048;
      v72 = v47;
      v73 = 1024;
      v74 = v51;
      v75 = 1024;
      v76 = v52;
      v77 = 1024;
      v78 = v53;
      _os_log_impl(&dword_19D52D000, v46, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::didReceiveResponse: Canceling cross-origin prefetch for Vary: Cookie", buf, 0x46u);
    }

    WebKit::NetworkResourceLoader::abort(v2);
    goto LABEL_38;
  }

  v6 = *(v2 + 251);
  v7 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(v2 + 3280);
    if (v8)
    {
      v10 = *(v2 + 88);
      v9 = *(v2 + 96);
      v11 = *(v2 + 80);
      v12 = *(v2 + 3328);
      v13 = *(v2 + 4440) != 0;
      *buf = 134220032;
      *&buf[4] = v2;
      *&buf[12] = 2048;
      *&buf[14] = v11;
      *&buf[22] = 2048;
      v68 = v10;
      v69 = 2048;
      v70 = v9;
      v71 = 2048;
      v72 = v8;
      v73 = 1024;
      v74 = v6 == 1;
      v75 = 1024;
      v76 = v12;
      v77 = 1024;
      v78 = v13;
      v79 = 1024;
      v80 = v74;
      _os_log_impl(&dword_19D52D000, v7, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::didReceiveResponse: Sending WebResourceLoader::DidReceiveResponse IPC (willWaitForContinueDidReceiveResponse=%d)", buf, 0x4Cu);
      goto LABEL_8;
    }

LABEL_52:
    __break(0xC471u);
    JUMPOUT(0x19DCD1894);
  }

LABEL_8:
  WebKit::NetworkResourceLoader::sendDidReceiveResponsePotentiallyInNewBrowsingContextGroup(v2, v65, *(a1 + 32), v6 == 1);
  if ((*(v2 + 3592) & 1) != 0 || *(v2 + 4120) == 1)
  {
    v54 = *(v2 + 4144);
    ++*(v54 + 20);
    WebKit::AuxiliaryProcess::protectedParentProcessConnection(*(v54 + 88), &v64);
    v63 = *(v2 + 80);
    *buf = &v63;
    *&buf[8] = a1 + 48;
    *&buf[16] = v65;
    IPC::Connection::send<Messages::NetworkProcessProxy::ResourceLoadDidReceiveResponse>(v64, buf);
    v55 = v64;
    v64 = 0;
    if (v55)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v55);
    }

    if (*(v54 + 20) == 1)
    {
      (*(*v54 + 8))(v54);
    }

    else
    {
      --*(v54 + 20);
    }
  }

  if (v6 != 1)
  {
    v15 = *(v2 + 4625);
    v16 = qword_1ED6416F0;
    v17 = os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT);
    if (v15 != 1)
    {
      if (v17)
      {
        v18 = *(v2 + 3280);
        if (!v18)
        {
          __break(0xC471u);
          JUMPOUT(0x19DCD18B4);
        }

        v20 = *(v2 + 88);
        v19 = *(v2 + 96);
        v21 = *(v2 + 80);
        v22 = *(v2 + 251) == 1;
        v23 = *(v2 + 3328);
        v24 = *(v2 + 4440) != 0;
        *buf = 134219776;
        *&buf[4] = v2;
        *&buf[12] = 2048;
        *&buf[14] = v21;
        *&buf[22] = 2048;
        v68 = v20;
        v69 = 2048;
        v70 = v19;
        v71 = 2048;
        v72 = v18;
        v73 = 1024;
        v74 = v22;
        v75 = 1024;
        v76 = v23;
        v77 = 1024;
        v78 = v24;
        _os_log_impl(&dword_19D52D000, v16, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::didReceiveResponse: Using response", buf, 0x46u);
      }

LABEL_15:
      v25 = *(a1 + 176);
      *(a1 + 176) = 0;
      (*(*v25 + 16))(v25, 0);
LABEL_16:
      (*(*v25 + 8))(v25);
      goto LABEL_17;
    }

    if (v17)
    {
      v56 = *(v2 + 3280);
      if (!v56)
      {
        __break(0xC471u);
        JUMPOUT(0x19DCD1914);
      }

      v58 = *(v2 + 88);
      v57 = *(v2 + 96);
      v59 = *(v2 + 80);
      v60 = *(v2 + 251) == 1;
      v61 = *(v2 + 3328);
      v62 = *(v2 + 4440) != 0;
      *buf = 134219776;
      *&buf[4] = v2;
      *&buf[12] = 2048;
      *&buf[14] = v59;
      *&buf[22] = 2048;
      v68 = v58;
      v69 = 2048;
      v70 = v57;
      v71 = 2048;
      v72 = v56;
      v73 = 1024;
      v74 = v60;
      v75 = 1024;
      v76 = v61;
      v77 = 1024;
      v78 = v62;
      _os_log_impl(&dword_19D52D000, v16, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::didReceiveResponse: Ignoring response because of keepalive option", buf, 0x46u);
    }

LABEL_38:
    v25 = *(a1 + 176);
    *(a1 + 176) = 0;
    (*(*v25 + 16))(v25, 2);
    goto LABEL_16;
  }

  v27 = *(a1 + 176);
  *(a1 + 176) = 0;
  v25 = *(v2 + 4616);
  *(v2 + 4616) = v27;
  if (v25)
  {
    goto LABEL_16;
  }

LABEL_17:
  v26 = v66;
  v66 = 0;
  if (v26)
  {
    CFRelease(v26);
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(v65, v14);
}

IPC::Encoder *IPC::Connection::send<Messages::NetworkProcessProxy::ResourceLoadDidReceiveResponse>(uint64_t *a1, void **a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 559;
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

uint64_t IPC::Connection::makeAsyncReplyHandler<Messages::NetworkProcessProxy::TriggerBrowsingContextGroupSwitchForNavigation,WebKit::NetworkResourceLoader::sendDidReceiveResponsePotentiallyInNewBrowsingContextGroup(WebCore::ResourceResponse const&,WebKit::PrivateRelayed,BOOL)::$_0>(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  a2[1] = 0;
  v5 = WTF::fastMalloc(0x18);
  *v5 = &unk_1F1103590;
  v5[1] = v3;
  v5[2] = v4;
  *a1 = v5;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    result = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    a1[1] = result;
  }

  return result;
}

uint64_t Messages::NetworkProcessProxy::TriggerBrowsingContextGroupSwitchForNavigation::encode<IPC::Encoder>(uint64_t a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, **a1);
  IPC::ArgumentCoder<WebKit::CallbackID,void>::encode(a2, *(a1 + 8));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a2, *(a1 + 16));
  IPC::ArgumentCoder<WebCore::Site,void>::encode(a2, *(a1 + 24));
  v4 = **(a1 + 32);

  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, v4);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcessProxy::TriggerBrowsingContextGroupSwitchForNavigation,WebKit::NetworkResourceLoader::sendDidReceiveResponsePotentiallyInNewBrowsingContextGroup(WebCore::ResourceResponse const&,WebKit::PrivateRelayed,BOOL)::$_0>(WebKit::NetworkResourceLoader::sendDidReceiveResponsePotentiallyInNewBrowsingContextGroup(WebCore::ResourceResponse const&,WebKit::PrivateRelayed,BOOL)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1103590;
  v3 = a1[2];
  a1[2] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcessProxy::TriggerBrowsingContextGroupSwitchForNavigation,WebKit::NetworkResourceLoader::sendDidReceiveResponsePotentiallyInNewBrowsingContextGroup(WebCore::ResourceResponse const&,WebKit::PrivateRelayed,BOOL)::$_0>(WebKit::NetworkResourceLoader::sendDidReceiveResponsePotentiallyInNewBrowsingContextGroup(WebCore::ResourceResponse const&,WebKit::PrivateRelayed,BOOL)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1103590;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t *IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcessProxy::TriggerBrowsingContextGroupSwitchForNavigation,WebKit::NetworkResourceLoader::sendDidReceiveResponsePotentiallyInNewBrowsingContextGroup(WebCore::ResourceResponse const&,WebKit::PrivateRelayed,BOOL)::$_0>(WebKit::NetworkResourceLoader::sendDidReceiveResponsePotentiallyInNewBrowsingContextGroup(WebCore::ResourceResponse const&,WebKit::PrivateRelayed,BOOL)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1}::operator()(uint64_t *result, IPC::Decoder *a2)
{
  v2 = result;
  if (a2 && *a2)
  {
    return IPC::Connection::callReply<Messages::NetworkProcessProxy::TriggerBrowsingContextGroupSwitchForNavigation,WebKit::NetworkResourceLoader::sendDidReceiveResponsePotentiallyInNewBrowsingContextGroup(WebCore::ResourceResponse const&,WebKit::PrivateRelayed,BOOL)::$_0>(a2, result);
  }

  v3 = result[1];
  if (v3)
  {
    result = *(v3 + 8);
    if (result)
    {
      return WebKit::NetworkSession::removeLoaderWaitingWebProcessTransfer(result, *v2);
    }
  }

  return result;
}

uint64_t IPC::Connection::callReply<Messages::NetworkProcessProxy::TriggerBrowsingContextGroupSwitchForNavigation,WebKit::NetworkResourceLoader::sendDidReceiveResponsePotentiallyInNewBrowsingContextGroup(WebCore::ResourceResponse const&,WebKit::PrivateRelayed,BOOL)::$_0>(IPC::Decoder *a1, uint64_t *a2)
{
  result = IPC::Decoder::decode<std::tuple<BOOL>>(a1);
  if ((result & 0x100) == 0 || (result & 1) == 0)
  {
    v4 = a2[1];
    if (v4)
    {
      result = *(v4 + 8);
      if (result)
      {
        v5 = *a2;

        return WebKit::NetworkSession::removeLoaderWaitingWebProcessTransfer(result, v5);
      }
    }
  }

  return result;
}

__n128 WTF::Detail::CallableWrapper<WebKit::NetworkResourceLoader::willSendServiceWorkerRedirectedRequest(WebCore::ResourceRequest &&,WebCore::ResourceRequest &,WebCore::ResourceResponse &&)::$_0,void,WebCore::ResourceRequest &>::call(uint64_t a1, uint64_t a2)
{
  WTF::URL::URL(v10, a2);
  WTF::URL::URL(v11, (a2 + 40));
  v11[5] = *(a2 + 80);
  v3 = *(a2 + 88);
  *(a2 + 88) = 0u;
  v12 = v3;
  *&v3 = *(a2 + 104);
  *(a2 + 104) = 0;
  v13 = v3;
  *&v3 = *(a2 + 120);
  v14 = *(a2 + 112);
  v15 = v3;
  v4 = *(a2 + 128);
  *&v3 = *(a2 + 136);
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  v16 = v4;
  v17 = v3;
  LODWORD(v4) = *(a2 + 144);
  v19 = *(a2 + 148);
  v18 = v4;
  v5 = *(a2 + 152);
  *(a2 + 152) = 0u;
  v20 = v5;
  v23 = *(a2 + 184);
  v6 = *(a2 + 168);
  v7 = *(a2 + 176);
  *(a2 + 168) = 0;
  v21 = v6;
  v22 = v7;
  v8 = *(a2 + 192);
  *(a2 + 192) = 0;
  v24 = v8;
  WebCore::ResourceRequest::~ResourceRequest(v10);
  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkResourceLoader::willSendRedirectedRequestInternal(WebCore::ResourceRequest &&,WebCore::ResourceRequest &,WebCore::ResourceResponse &&,WebKit::NetworkResourceLoader::IsFromServiceWorker,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &)> &&)::$_0,void,std::experimental::fundamentals_v3::expected<WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError> &&>::~CallableWrapper(uint64_t a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11035E0;
  v3 = *(a1 + 168);
  *(a1 + 168) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a1 + 160) == 1)
  {
    WebCore::PCM::AttributionTriggerData::~AttributionTriggerData((a1 + 32), a2);
  }

  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkResourceLoader::willSendRedirectedRequestInternal(WebCore::ResourceRequest &&,WebCore::ResourceRequest &,WebCore::ResourceResponse &&,WebKit::NetworkResourceLoader::IsFromServiceWorker,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &)> &&)::$_0,void,std::experimental::fundamentals_v3::expected<WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError> &&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F11035E0;
  v3 = *(this + 21);
  *(this + 21) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(this + 160) == 1)
  {
    WebCore::PCM::AttributionTriggerData::~AttributionTriggerData((this + 32), a2);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
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

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::NetworkResourceLoader::willSendRedirectedRequestInternal(WebCore::ResourceRequest &&,WebCore::ResourceRequest &,WebCore::ResourceResponse &&,WebKit::NetworkResourceLoader::IsFromServiceWorker,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &)> &&)::$_0,void,std::experimental::fundamentals_v3::expected<WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError> &&>::call(_BOOL8 a1, _BYTE *a2)
{
  v3 = a1;
  v84 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  if (!a2[664])
  {
    v13 = *(v4 + 4152);
    if (v13)
    {
      v14 = (v13 + 16);
      ++*(v13 + 16);
      v15 = *(v4 + 4600);
      if (v15 && *(v15 + 1168) == 1)
      {
        WebKit::NetworkLoad::setTimingAllowFailedFlag(v13);
      }

      WTF::RefCounted<WebKit::NetworkLoad>::deref(v14, a2);
    }

    v16 = qword_1ED6416F0;
    a1 = os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT);
    if (a1)
    {
      v17 = *(v4 + 3280);
      if (!v17)
      {
        goto LABEL_66;
      }

      v19 = *(v4 + 88);
      v18 = *(v4 + 96);
      v20 = *(v4 + 80);
      v21 = *(v4 + 251) == 1;
      v22 = *(v4 + 3328);
      v23 = *(v4 + 4440) != 0;
      *buf = 134219776;
      *&buf[4] = v4;
      *&buf[12] = 2048;
      *&buf[14] = v20;
      v67 = 2048;
      v68 = v19;
      v69 = 2048;
      v70 = v18;
      v71 = 2048;
      v72 = v17;
      v73 = 1024;
      v74 = v21;
      v75 = 1024;
      v76 = v22;
      v77 = 1024;
      v78 = v23;
      _os_log_impl(&dword_19D52D000, v16, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::willSendRedirectedRequest: NetworkLoadChecker::checkRedirection is done", buf, 0x46u);
    }

    if (*(v4 + 3332) != 2)
    {
      v39 = *(v3 + 24);
      v40 = *(*(v4 + 4600) + 64);
      if (*(v4 + 4440))
      {
        if (v39 == v40)
        {
          if (!a2[664])
          {
            WebKit::NetworkResourceLoader::continueWillSendRequest(v4, (a2 + 200), 0, (v3 + 168));
            return;
          }
        }

        else
        {
          v47 = qword_1ED6416F0;
          a1 = os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT);
          if (a1)
          {
            v48 = *(v4 + 3280);
            if (!v48)
            {
              __break(0xC471u);
              JUMPOUT(0x19DCD26F4);
            }

            v50 = *(v4 + 88);
            v49 = *(v4 + 96);
            v51 = *(v4 + 80);
            v52 = *(v4 + 251) == 1;
            v53 = *(v4 + 3328);
            *buf = 134219776;
            *&buf[4] = v4;
            *&buf[12] = 2048;
            *&buf[14] = v51;
            v67 = 2048;
            v68 = v50;
            v69 = 2048;
            v70 = v49;
            v71 = 2048;
            v72 = v48;
            v73 = 1024;
            v74 = v52;
            v75 = 1024;
            v76 = v53;
            v77 = 1024;
            v78 = 1;
            _os_log_impl(&dword_19D52D000, v47, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::willSendRedirectedRequest: Restarting network load due to credential policy change for synchronous load", buf, 0x46u);
          }

          if (!a2[664])
          {
            WebKit::NetworkResourceLoader::restartNetworkLoad(v4, (a2 + 200), (v3 + 168));
            return;
          }
        }
      }

      else
      {
        *(v4 + 4608) = v39 != v40;
        if (!a2[664])
        {
          WebKit::NetworkResourceLoader::continueWillSendRedirectedRequest(v4, a2, (a2 + 200), (a2 + 400), v3 + 32, (v3 + 168));
          return;
        }
      }

      goto LABEL_57;
    }

    if (a2[664])
    {
      goto LABEL_57;
    }

    v24 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(v4 + 3280);
      if (!v25)
      {
        __break(0xC471u);
        JUMPOUT(0x19DCD2694);
      }

      v27 = *(v4 + 88);
      v26 = *(v4 + 96);
      v28 = *(v4 + 80);
      v29 = *(v4 + 251) == 1;
      v30 = *(v4 + 3328);
      v31 = *(v4 + 4440) != 0;
      *buf = 134219776;
      *&buf[4] = v4;
      *&buf[12] = 2048;
      *&buf[14] = v28;
      v67 = 2048;
      v68 = v27;
      v69 = 2048;
      v70 = v26;
      v71 = 2048;
      v72 = v25;
      v73 = 1024;
      v74 = v29;
      v75 = 1024;
      v76 = v30;
      v77 = 1024;
      v78 = v31;
      _os_log_impl(&dword_19D52D000, v24, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::didFinishWithRedirectResponse:", buf, 0x46u);
    }

    WebCore::ResourceResponseBase::setType();
    if ((WebKit::NetworkResourceLoader::isCrossOriginPrefetch(v4) & 1) == 0)
    {
      v41 = WTF::fastMalloc(0x10);
      *v41 = &unk_1F1103630;
      *buf = v41;
      WebKit::NetworkResourceLoader::didReceiveResponse(v4, (a2 + 400), 0, buf);
      if (*buf)
      {
        (*(**buf + 8))(*buf);
      }

      goto LABEL_37;
    }

    v32 = *(v4 + 4144);
    ++*(v32 + 20);
    v33 = *(v32 + 88);
    *buf = *(v32 + 96);
    v34 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v33 + 240), buf);
    v35 = v34;
    if (v34)
    {
      ++*(v34 + 16);
    }

    if (*(v32 + 20) == 1)
    {
      (*(*v32 + 8))(v32);
      if (v35)
      {
        goto LABEL_25;
      }
    }

    else
    {
      --*(v32 + 20);
      if (v34)
      {
LABEL_25:
        ++*(v35 + 520);
        v36 = WebCore::ResourceRequestBase::url(a2);
        WebKit::PrefetchCache::storeRedirect(v35 + 520, v36, (a2 + 400), (a2 + 200));
        v37 = *(v35 + 520);
        if (!v37)
        {
          __break(0xC471u);
          JUMPOUT(0x19DCD26B4);
        }

        *(v35 + 520) = v37 - 1;
        v38 = *(v35 + 16);
        if (!v38)
        {
          __break(0xC471u);
          JUMPOUT(0x19DCD26D4);
        }

        *(v35 + 16) = v38 - 1;
      }
    }

LABEL_37:
    WebCore::NetworkLoadMetrics::NetworkLoadMetrics(buf);
    v80 |= 1u;
    v81 = 0;
    v82 = 0;
    v42 = *(v4 + 4672);
    if (v42)
    {
      v44 = *(v42 + 8);
      v43 = v42 + 8;
      *v43 = v44 + 1;
      v45 = *(v43 + 272);
      if (v45)
      {
        v46 = *(v45 + 3840);
      }

      else
      {
        v46 = 0;
      }

      *&buf[8] = v46;
      WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref(v43);
    }

    v65 = buf;
    IPC::MessageSender::send<Messages::WebResourceLoader::DidFinishResourceLoad>(v4 + 24, &v65);
    WebKit::NetworkResourceLoader::cleanup(v4, 1);
    v55 = v83;
    v83 = 0;
    if (v55)
    {
      WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v55, v54);
    }

    v56 = v79;
    v79 = 0;
    if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v56, v54);
    }

    goto LABEL_54;
  }

  if (a2[664] != 1)
  {
    goto LABEL_57;
  }

  v5 = qword_1ED6416F0;
  if (a2[60] == 3)
  {
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(v4 + 3280);
      if (!v6)
      {
        __break(0xC471u);
        JUMPOUT(0x19DCD2674);
      }

      v8 = *(v4 + 88);
      v7 = *(v4 + 96);
      v9 = *(v4 + 80);
      v10 = *(v4 + 251) == 1;
      v11 = *(v4 + 3328);
      v12 = *(v4 + 4440) != 0;
      *buf = 134219776;
      *&buf[4] = v4;
      *&buf[12] = 2048;
      *&buf[14] = v9;
      v67 = 2048;
      v68 = v8;
      v69 = 2048;
      v70 = v7;
      v71 = 2048;
      v72 = v6;
      v73 = 1024;
      v74 = v10;
      v75 = 1024;
      v76 = v11;
      v77 = 1024;
      v78 = v12;
      _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::willSendRedirectedRequest: NetworkLoadChecker::checkRedirection returned with a cancellation", buf, 0x46u);
    }

    goto LABEL_54;
  }

  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_ERROR))
  {
    v58 = *(v4 + 3280);
    if (v58)
    {
      v60 = *(v4 + 88);
      v59 = *(v4 + 96);
      v61 = *(v4 + 80);
      v62 = *(v4 + 251) == 1;
      v63 = *(v4 + 3328);
      v64 = *(v4 + 4440) != 0;
      *buf = 134219776;
      *&buf[4] = v4;
      *&buf[12] = 2048;
      *&buf[14] = v61;
      v67 = 2048;
      v68 = v60;
      v69 = 2048;
      v70 = v59;
      v71 = 2048;
      v72 = v58;
      v73 = 1024;
      v74 = v62;
      v75 = 1024;
      v76 = v63;
      v77 = 1024;
      v78 = v64;
      _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "%p - [pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, isMainResource=%d, destination=%u, isSynchronous=%d] NetworkResourceLoader::willSendRedirectedRequest: NetworkLoadChecker::checkRedirection returned an error", buf, 0x46u);
      if (a2[664] == 1)
      {
        goto LABEL_29;
      }

LABEL_57:
      mpark::throw_bad_variant_access(a1);
    }

LABEL_66:
    __break(0xC471u);
    JUMPOUT(0x19DCD2654);
  }

LABEL_29:
  WebKit::NetworkResourceLoader::didFailLoading(v4, a2);
LABEL_54:
  WebCore::ResourceRequest::ResourceRequest(buf);
  v57 = *(v3 + 168);
  *(v3 + 168) = 0;
  (*(*v57 + 16))(v57, buf);
  (*(*v57 + 8))(v57);
  WebCore::ResourceRequest::~ResourceRequest(buf);
}

void *WTF::Detail::CallableWrapper<std::optional<WebCore::PCM::AttributionTriggerData><void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebResourceLoader::WillSendRequest,WebKit::NetworkResourceLoader::continueWillSendRedirectedRequest(WebCore::ResourceRequest &&,WebCore::ResourceRequest &,WebCore::ResourceResponse &&,std::optional<WebCore::PCM::AttributionTriggerData> &&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &)> &&)::$_0>(WebKit::NetworkResourceLoader::continueWillSendRedirectedRequest(WebCore::ResourceRequest &&,WebCore::ResourceRequest &,WebCore::ResourceResponse &&,std::optional<WebCore::PCM::AttributionTriggerData> &&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ResourceRequest &)>,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &)> &&)#1},void,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &)>,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &)> &&>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1103608;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<std::optional<WebCore::PCM::AttributionTriggerData><void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebResourceLoader::WillSendRequest,WebKit::NetworkResourceLoader::continueWillSendRedirectedRequest(WebCore::ResourceRequest &&,WebCore::ResourceRequest &,WebCore::ResourceResponse &&,std::optional<WebCore::PCM::AttributionTriggerData> &&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &)> &&)::$_0>(WebKit::NetworkResourceLoader::continueWillSendRedirectedRequest(WebCore::ResourceRequest &&,WebCore::ResourceRequest &,WebCore::ResourceResponse &&,std::optional<WebCore::PCM::AttributionTriggerData> &&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ResourceRequest &)>,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &)> &&)#1},void,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &)>,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &)> &&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1103608;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<std::optional<WebCore::PCM::AttributionTriggerData><void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebResourceLoader::WillSendRequest,WebKit::NetworkResourceLoader::continueWillSendRedirectedRequest(WebCore::ResourceRequest &&,WebCore::ResourceRequest &,WebCore::ResourceResponse &&,std::optional<WebCore::PCM::AttributionTriggerData> &&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &)> &&)::$_0>(WebKit::NetworkResourceLoader::continueWillSendRedirectedRequest(WebCore::ResourceRequest &&,WebCore::ResourceRequest &,WebCore::ResourceResponse &&,std::optional<WebCore::PCM::AttributionTriggerData> &&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ResourceRequest &)>,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &)> &&)#1},void,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &)>,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &)> &&>::call(uint64_t a1, int a2, IPC::Decoder *this)
{
  if (this && *this)
  {
    IPC::ArgumentCoder<WebCore::ResourceRequest,void>::decode(this, v27);
    if ((v28 & 1) == 0)
    {
      v16 = *this;
      v17 = *(this + 1);
      *this = 0;
      *(this + 1) = 0;
      v18 = *(this + 3);
      if (!v18 || !v17 || ((*(*v18 + 16))(v18, v16), (v28 & 1) == 0))
      {
        v25[0] = 0;
        v26 = 0;
LABEL_28:
        v19 = *this;
        v20 = *(this + 1);
        *this = 0;
        *(this + 1) = 0;
        v21 = *(this + 3);
        if (!v21 || !v20 || ((*(*v21 + 16))(v21, v19), (v26 & 1) == 0))
        {
          v13 = 0;
LABEL_16:
          if (v26 == 1)
          {
            WebCore::ResourceRequest::~ResourceRequest(v25);
          }

          if ((v13 & 1) == 0)
          {
            IPC::Connection::cancelReply<Messages::WebResourceLoader::WillSendRequest,WebKit::NetworkResourceLoader::continueWillSendRedirectedRequest(WebCore::ResourceRequest &&,WebCore::ResourceRequest &,WebCore::ResourceResponse &&,std::optional<WebCore::PCM::AttributionTriggerData> &&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &)> &&)::$_0>((a1 + 8));
          }

          return;
        }

LABEL_11:
        v10 = *(a1 + 8);
        if (v10 && (v11 = *(v10 + 8)) != 0)
        {
          v12 = v25[200];
          ++v11[5];
          WebKit::NetworkResourceLoader::continueWillSendRequest(v11, v25, v12, (a1 + 16));
          if (v11[5] == 1)
          {
            (*(*v11 + 24))(v11);
          }

          else
          {
            --v11[5];
          }
        }

        else
        {
          WebCore::ResourceRequest::ResourceRequest(v27);
          v15 = *(a1 + 16);
          *(a1 + 16) = 0;
          (*(*v15 + 16))(v15, v27);
          (*(*v15 + 8))(v15);
          WebCore::ResourceRequest::~ResourceRequest(v27);
        }

        v13 = 1;
        goto LABEL_16;
      }
    }

    v5 = *(this + 1);
    v6 = *(this + 2);
    v7 = *this;
    if (v5 <= &v6[-*this])
    {
      *this = 0;
      *(this + 1) = 0;
      v22 = *(this + 3);
      if (v22)
      {
        if (v5)
        {
          (*(*v22 + 16))(v22);
          v5 = *(this + 1);
        }
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      *(this + 2) = v6 + 1;
      if (v6)
      {
        v8 = *v6;
        if (v8 < 2)
        {
          v29 = v8 | 0x100;
          std::tuple<WebCore::ResourceRequest,BOOL>::tuple[abi:sn200100]<WebCore::ResourceRequest,BOOL,0>(v25, v27, &v29);
          v9 = 1;
          goto LABEL_8;
        }

LABEL_41:
        *this = 0;
        *(this + 1) = 0;
        v24 = *(this + 3);
        if (v24 && v5)
        {
          (*(*v24 + 16))(v24, v7);
        }

        v9 = 0;
        v25[0] = 0;
LABEL_8:
        v26 = v9;
        if (v28)
        {
          WebCore::ResourceRequest::~ResourceRequest(v27);
          v9 = v26;
        }

        if (v9)
        {
          goto LABEL_11;
        }

        goto LABEL_28;
      }
    }

    *this = 0;
    *(this + 1) = 0;
    v23 = *(this + 3);
    if (v23)
    {
      if (v5)
      {
        (*(*v23 + 16))(v23);
        v7 = *this;
        v5 = *(this + 1);
        goto LABEL_41;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = 0;
    goto LABEL_41;
  }

  v14 = (a1 + 8);

  IPC::Connection::cancelReply<Messages::WebResourceLoader::WillSendRequest,WebKit::NetworkResourceLoader::continueWillSendRedirectedRequest(WebCore::ResourceRequest &&,WebCore::ResourceRequest &,WebCore::ResourceResponse &&,std::optional<WebCore::PCM::AttributionTriggerData> &&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &)> &&)::$_0>(v14);
}

void IPC::Connection::cancelReply<Messages::WebResourceLoader::WillSendRequest,WebKit::NetworkResourceLoader::continueWillSendRedirectedRequest(WebCore::ResourceRequest &&,WebCore::ResourceRequest &,WebCore::ResourceResponse &&,std::optional<WebCore::PCM::AttributionTriggerData> &&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &)> &&)::$_0>(uint64_t *a1)
{
  WebCore::ResourceRequest::ResourceRequest(v7);
  v6 = 0;
  std::tuple<WebCore::ResourceRequest,BOOL>::tuple[abi:sn200100]<WebCore::ResourceRequest,BOOL,0>(v5, v7, &v6);
  WebCore::ResourceRequest::~ResourceRequest(v7);
  if (*a1 && (v2 = *(*a1 + 8)) != 0)
  {
    v3 = v5[200];
    ++v2[5];
    WebKit::NetworkResourceLoader::continueWillSendRequest(v2, v5, v3, a1 + 1);
    if (v2[5] == 1)
    {
      (*(*v2 + 24))(v2);
    }

    else
    {
      --v2[5];
    }
  }

  else
  {
    WebCore::ResourceRequest::ResourceRequest(v7);
    v4 = a1[1];
    a1[1] = 0;
    (*(*v4 + 16))(v4, v7);
    (*(*v4 + 8))(v4);
    WebCore::ResourceRequest::~ResourceRequest(v7);
  }

  WebCore::ResourceRequest::~ResourceRequest(v5);
}

uint64_t std::tuple<WebCore::ResourceRequest,BOOL>::tuple[abi:sn200100]<WebCore::ResourceRequest,BOOL,0>(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  WTF::URL::URL(a1, a2);
  WTF::URL::URL(v6 + 40, (a2 + 40));
  *(a1 + 80) = *(a2 + 80);
  v7 = *(a2 + 88);
  *(a2 + 88) = 0;
  *(a1 + 88) = v7;
  *(a1 + 104) = 0;
  *(a1 + 96) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 96, (a2 + 96));
  *(a1 + 120) = 0;
  *(a1 + 112) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 112, (a2 + 112));
  *(a1 + 136) = 0;
  *(a1 + 128) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 128, (a2 + 128));
  v8 = *(a2 + 144);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 144) = v8;
  v9 = *(a2 + 152);
  *(a2 + 152) = 0;
  *(a1 + 152) = v9;
  v10 = *(a2 + 160);
  *(a2 + 160) = 0;
  *(a1 + 160) = v10;
  v11 = *(a2 + 168);
  *(a2 + 168) = 0;
  *(a1 + 168) = v11;
  v12 = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 176) = v12;
  v13 = *(a2 + 192);
  *(a2 + 192) = 0;
  *(a1 + 192) = v13;
  *(a1 + 200) = *a3;
  return a1;
}

IPC::Encoder *IPC::MessageSender::send<Messages::WebResourceLoader::DidSendData>(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 3035;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  Messages::WebResourceLoader::DidSendData::encode<IPC::Encoder>(a2, v6);
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

uint64_t Messages::WebResourceLoader::DidSendData::encode<IPC::Encoder>(uint64_t *a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, *a1);
  v4 = a1[1];

  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, v4);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkResourceLoader::tryStoreAsCacheEntry(void)::$_0,void,WebKit::NetworkCache::MappedBody &&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1103658;
  a1[1] = 0;
  if (v2)
  {
    if (v2[5] == 1)
    {
      (*(*v2 + 24))(v2);
    }

    else
    {
      --v2[5];
    }
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkResourceLoader::tryStoreAsCacheEntry(void)::$_0,void,WebKit::NetworkCache::MappedBody &&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1103658;
  *(this + 1) = 0;
  if (v3)
  {
    if (v3[5] == 1)
    {
      (*(*v3 + 24))(v3);
    }

    else
    {
      --v3[5];
    }
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::NetworkResourceLoader::tryStoreAsCacheEntry(void)::$_0,void,WebKit::NetworkCache::MappedBody &&>::call(IPC::Encoder *result, uint64_t a2)
{
  if (*(a2 + 32) == 1)
  {
    v13[5] = v2;
    v13[6] = v3;
    v5 = *(result + 1);
    v6 = v5[3];
    v5 += 3;
    v7 = (*(v6 + 56))(v5);
    v9 = IPC::Encoder::operator new(0x238, v8);
    *v9 = 514;
    *(v9 + 2) = 0;
    *(v9 + 3) = 0;
    *(v9 + 1) = v7;
    *(v9 + 68) = 0;
    *(v9 + 70) = 0;
    *(v9 + 69) = 0;
    IPC::Encoder::encodeHeader(v9);
    v13[0] = v9;
    IPC::ArgumentCoder<WebCore::ResourceRequest,void>::encode(v9, (v5 + 10));
    IPC::ArgumentCoder<WebCore::ShareableResourceHandle,void>::encode(v9, a2 + 8);
    (*(*v5 + 32))(v5, v13, 0);
    result = v13[0];
    v13[0] = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v10);
      return bmalloc::api::tzoneFree(v11, v12);
    }
  }

  return result;
}

__n128 WTF::Detail::CallableWrapper<WebKit::NetworkResourceLoader::dispatchWillSendRequestForCacheEntry(WebCore::ResourceRequest &&,std::unique_ptr<WebKit::NetworkCache::Entry,WebCore::ResourceRequest &&::default_delete<WebKit::NetworkCache>> &&)::$_0,void,WebCore::ResourceRequest &>::call(uint64_t a1, uint64_t a2)
{
  WTF::URL::URL(v10, a2);
  WTF::URL::URL(v11, (a2 + 40));
  v11[5] = *(a2 + 80);
  v3 = *(a2 + 88);
  *(a2 + 88) = 0u;
  v12 = v3;
  *&v3 = *(a2 + 104);
  *(a2 + 104) = 0;
  v13 = v3;
  *&v3 = *(a2 + 120);
  v14 = *(a2 + 112);
  v15 = v3;
  v4 = *(a2 + 128);
  *&v3 = *(a2 + 136);
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  v16 = v4;
  v17 = v3;
  LODWORD(v4) = *(a2 + 144);
  v19 = *(a2 + 148);
  v18 = v4;
  v5 = *(a2 + 152);
  *(a2 + 152) = 0u;
  v20 = v5;
  v23 = *(a2 + 184);
  v6 = *(a2 + 168);
  v7 = *(a2 + 176);
  *(a2 + 168) = 0;
  v21 = v6;
  v22 = v7;
  v8 = *(a2 + 192);
  *(a2 + 192) = 0;
  v24 = v8;
  WebCore::ResourceRequest::~ResourceRequest(v10);
  return result;
}

IPC::Encoder *IPC::MessageSender::send<Messages::WebResourceLoader::ServiceWorkerDidNotHandle>(uint64_t a1, void *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3036;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = a2;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  (*(*a1 + 32))(a1, &v9, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

__n128 WTF::Detail::CallableWrapper<WebKit::NetworkResourceLoader::serviceWorkerDidNotHandle(WebKit::ServiceWorkerFetchTask *)::$_0,void,WebCore::ResourceRequest &&>::call(uint64_t a1, uint64_t a2)
{
  WTF::URL::URL(v10, a2);
  WTF::URL::URL(v11, (a2 + 40));
  v11[5] = *(a2 + 80);
  v3 = *(a2 + 88);
  *(a2 + 88) = 0u;
  v12 = v3;
  *&v3 = *(a2 + 104);
  *(a2 + 104) = 0;
  v13 = v3;
  *&v3 = *(a2 + 120);
  v14 = *(a2 + 112);
  v15 = v3;
  v4 = *(a2 + 128);
  *&v3 = *(a2 + 136);
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  v16 = v4;
  v17 = v3;
  LODWORD(v4) = *(a2 + 144);
  v19 = *(a2 + 148);
  v18 = v4;
  v5 = *(a2 + 152);
  *(a2 + 152) = 0u;
  v20 = v5;
  v23 = *(a2 + 184);
  v6 = *(a2 + 168);
  v7 = *(a2 + 176);
  *(a2 + 168) = 0;
  v21 = v6;
  v22 = v7;
  v8 = *(a2 + 192);
  *(a2 + 192) = 0;
  v24 = v8;
  WebCore::ResourceRequest::~ResourceRequest(v10);
  return result;
}

WTF *WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,WTF::String>(WTF *result, uint64_t a2, WTF::StringImpl **a3)
{
  v3 = result;
  v4 = *a2;
  if (*a2)
  {
    v7 = *(a2 + 8);
    v8 = v7 - 1;
    v9 = *(a2 + 16);
    v10 = *(*a3 + 4);
    if (v10 < 0x100)
    {
      v11 = WTF::StringImpl::hashSlowCase(*a3);
      v4 = *a2;
    }

    else
    {
      v11 = v10 >> 8;
    }

    v12 = (v11 ^ v9) & v8;
    v13 = &v4[4 * v12];
    result = *v13;
    if (*v13)
    {
      v14 = -1;
      do
      {
        v15 = *(result + 4);
        result = v15 < 0x100 ? WTF::StringImpl::hashSlowCase(result) : (v15 >> 8);
        if (++v14 > ((v12 + v7 - ((result ^ v9) & v8)) & v8))
        {
          break;
        }

        if (result == v11)
        {
          result = WTF::equal(*v13, *a3, a3);
          if (result)
          {
            v4 = *(v13 + 8);
            if (v4)
            {
              atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
            }

            goto LABEL_15;
          }
        }

        v12 = (v12 + 1) & v8;
        v13 = *a2 + 16 * v12;
        result = *v13;
      }

      while (*v13);
    }

    v4 = 0;
  }

LABEL_15:
  *v3 = v4;
  return result;
}

uint64_t std::__function::__func<WebKit::NetworkResourceLoader::contentFilterDidBlock(WebCore::ContentFilterUnblockHandler,WTF::String &&)::$_0,std::allocator<WTF::String &&>,void ()(BOOL)>::~__func(void *a1)
{
  *a1 = &unk_1F11036D0;
  v2 = a1[3];
  if (v2)
  {
    v3 = *(v2 + 8);
    if (!v3)
    {
      result = 290;
      __break(0xC471u);
      return result;
    }

    *(v2 + 8) = v3 - 1;
  }

  v4 = a1[2];
  a1[2] = 0;
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

void std::__function::__func<WebKit::NetworkResourceLoader::contentFilterDidBlock(WebCore::ContentFilterUnblockHandler,WTF::String &&)::$_0,std::allocator<WTF::String &&>,void ()(BOOL)>::~__func(void *a1)
{
  *a1 = &unk_1F11036D0;
  v2 = a1[3];
  if (v2)
  {
    v3 = *(v2 + 8);
    if (!v3)
    {
      __break(0xC471u);
      goto LABEL_12;
    }

    *(v2 + 8) = v3 - 1;
  }

  v4 = a1[2];
  a1[2] = 0;
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

LABEL_12:
  JUMPOUT(0x19EB14CF0);
}

void *std::__function::__func<WebKit::NetworkResourceLoader::contentFilterDidBlock(WebCore::ContentFilterUnblockHandler,WTF::String &&)::$_0,std::allocator<WTF::String &&>,void ()(BOOL)>::__clone(void *result, void *a2)
{
  v2 = result[1];
  *a2 = &unk_1F11036D0;
  a2[1] = v2;
  v4 = result[2];
  v3 = result[3];
  ++*(v4 + 20);
  a2[2] = v4;
  a2[3] = v3;
  if (v3)
  {
    ++*(v3 + 8);
  }

  return result;
}

uint64_t std::__function::__func<WebKit::NetworkResourceLoader::contentFilterDidBlock(WebCore::ContentFilterUnblockHandler,WTF::String &&)::$_0,std::allocator<WTF::String &&>,void ()(BOOL)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (!v3)
    {
      result = 290;
      __break(0xC471u);
      return result;
    }

    *(v2 + 8) = v3 - 1;
  }

  result = *(a1 + 16);
  *(a1 + 16) = 0;
  if (result)
  {
    if (*(result + 20) == 1)
    {
      return (*(*result + 24))();
    }

    else
    {
      --*(result + 20);
    }
  }

  return result;
}

void std::__function::__func<WebKit::NetworkResourceLoader::contentFilterDidBlock(WebCore::ContentFilterUnblockHandler,WTF::String &&)::$_0,std::allocator<WTF::String &&>,void ()(BOOL)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    v3 = *(v2 + 8);
    if (!v3)
    {
      __break(0xC471u);
      return;
    }

    *(v2 + 8) = v3 - 1;
  }

  v4 = __p[2];
  __p[2] = 0;
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

  operator delete(__p);
}

void std::__function::__func<WebKit::NetworkResourceLoader::contentFilterDidBlock(WebCore::ContentFilterUnblockHandler,WTF::String &&)::$_0,std::allocator<WTF::String &&>,void ()(BOOL)>::operator()(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  WebCore::ContentFilterUnblockHandler::setUnblockedAfterRequest((v4 + 5104));
  v5 = WebCore::ResourceRequest::ResourceRequest(v41);
  if ((*(v4 + 4464) | v3))
  {
    WebCore::ResourceRequestBase::operator=(v5, v4 + 104);
    v6 = *(v4 + 296);
    if (v6)
    {
      CFRetain(*(v4 + 296));
    }

    v7 = v47;
    v47 = v6;
    if (v7)
    {
      CFRelease(v7);
    }
  }

  else
  {
    v8 = WTF::aboutBlankURL(v5);
    v9 = *v8;
    if (*v8)
    {
      atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
    }

    v28 = v9;
    v10 = *(v8 + 24);
    v29 = *(v8 + 8);
    v30 = v10;
    WebCore::ResourceRequestBase::ResourceRequestBase(&v31, &v28, 0);
    v40 = 0;
    WebCore::ResourceRequestBase::RequestData::operator=(v41, &v31);
    v12 = v35;
    v35 = 0;
    v13 = v42;
    v42 = v12;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v11);
    }

    v14 = v36;
    v36 = 0;
    v15 = v43;
    v43 = v14;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v11);
    }

    v16 = v37;
    v37 = 0;
    v17 = v44;
    v44 = v16;
    if (v17)
    {
      WTF::RefCounted<WebCore::FormData>::deref(v17);
    }

    v45 = v38;
    v46 = v39;
    v18 = v40;
    v40 = 0;
    v19 = v47;
    v47 = v18;
    if (v19)
    {
      CFRelease(v19);
    }

    WebCore::ResourceRequest::~ResourceRequest(&v31);
    v21 = v28;
    v28 = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v20);
    }
  }

  WebKit::blockedByContentFilterError(v41, &v31);
  v22 = *(a1 + 24);
  if (!v22 || (WebCore::ContentFilter::setBlockedError(v22, &v31), !*(a1 + 24)))
  {
    __break(0xC471u);
    JUMPOUT(0x19DCD3A50);
  }

  WebCore::ContentFilter::handleProvisionalLoadFailure();
  v24 = cf;
  cf = 0;
  if (v24)
  {
    CFRelease(v24);
  }

  v25 = v33;
  v33 = 0;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v23);
  }

  v26 = v32;
  v32 = 0;
  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, v23);
  }

  v27 = v31;
  v31 = 0;
  if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v27, v23);
  }

  WebCore::ResourceRequest::~ResourceRequest(v41);
}

uint64_t std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:sn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

WTF::StringImpl **WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::ASCIICaseInsensitiveHash,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>@<X0>(uint64_t *a1@<X0>, WTF::ASCIICaseInsensitiveHash **a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DCD3CC8);
  }

  if (!*a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DCD3CE8);
  }

  v6 = *a1;
  if (*a1 || (WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::ASCIICaseInsensitiveHash,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a1, 0), (v6 = *a1) != 0))
  {
    v7 = *(v6 - 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = WTF::ASCIICaseInsensitiveHash::hash(*a2, a2);
  v10 = 0;
  for (i = 1; ; ++i)
  {
    v12 = v8 & v7;
    v13 = (v6 + 8 * (v8 & v7));
    v14 = *v13;
    if (!*v13)
    {
      if (v10)
      {
        *v10 = 0;
        --*(*a1 - 16);
        v13 = v10;
      }

      v15 = *a2;
      *a2 = 0;
      result = *v13;
      *v13 = v15;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v9);
      }

      v17 = *a1;
      if (*a1)
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
          goto LABEL_15;
        }
      }

      else if (3 * v20 > 4 * v19)
      {
LABEL_15:
        v21 = v17 + 8 * v20;
        v22 = 1;
        goto LABEL_16;
      }

      result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::ASCIICaseInsensitiveHash,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a1, v13);
      v13 = result;
      v17 = *a1;
      if (*a1)
      {
        v20 = *(v17 - 4);
      }

      else
      {
        v20 = 0;
      }

      goto LABEL_15;
    }

    if (v14 == -1)
    {
      v10 = (v6 + 8 * v12);
      goto LABEL_26;
    }

    result = WTF::equalIgnoringASCIICaseCommon<WTF::StringImpl,WTF::StringImpl>(v14, *a2);
    if (result)
    {
      break;
    }

LABEL_26:
    v8 = i + v12;
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

  v22 = 0;
  v21 = v23 + 8 * v24;
LABEL_16:
  *a3 = v13;
  *(a3 + 8) = v21;
  *(a3 + 16) = v22;
  return result;
}

void *WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::ASCIICaseInsensitiveHash,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::lookup<WTF::HashSetTranslatorAdapter<WTF::StringViewHashTranslator>,(WTF::ShouldValidateKey)1,WTF::StringView>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v4 = *(v2 - 8);
  v5 = *a2;
  v6 = *(a2 + 8);
  if ((v6 & 0x100000000) != 0)
  {
    v7 = WTF::SuperFastHash::computeHashImpl<unsigned char,WTF::StringHasher::DefaultConverter>(v5, v6);
  }

  else
  {
    v7 = WTF::SuperFastHash::computeHashImpl<char16_t,WTF::StringHasher::DefaultConverter>(v5, v6);
  }

  v8 = 0;
  v9 = (v7 ^ (8 * v7)) + ((v7 ^ (8 * v7)) >> 5);
  v10 = (v9 ^ (4 * v9)) + ((v9 ^ (4 * v9)) >> 15);
  v11 = (v10 ^ (v10 << 10)) & 0xFFFFFF;
  if (!v11)
  {
    v11 = 0x800000;
  }

  while (1)
  {
    v12 = v11 & v4;
    v13 = (v2 + 8 * (v11 & v4));
    if (*v13 != -1)
    {
      if (!*v13)
      {
        return 0;
      }

      if (WTF::StringViewHashTranslator::equal((v2 + 8 * v12), *a2, *(a2 + 8)))
      {
        break;
      }
    }

    v11 = ++v8 + v12;
  }

  return v13;
}

_DWORD **WTF::Ref<WebKit::PCM::ManagerInterface,WTF::RawPtrTraits<WebKit::PCM::ManagerInterface>,WTF::DefaultRefDerefTraits<WebKit::PCM::ManagerInterface>>::~Ref(_DWORD **a1)
{
  v2 = *a1;
  *a1 = 0;
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

_DWORD **WTF::Ref<WebKit::NetworkNotificationManager,WTF::RawPtrTraits<WebKit::NetworkNotificationManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkNotificationManager>>::~Ref(_DWORD **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (v2[4] == 1)
    {
      (*(*v2 + 24))(v2);
    }

    else
    {
      --v2[4];
    }
  }

  return a1;
}

void *WTF::HashTable<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::FastMalloc>::begin(void *result)
{
  if (!result)
  {
    return 0;
  }

  v2 = *(result - 1);
  v3 = &result[v2];
  if (!*(result - 3))
  {
    return &result[v2];
  }

  if (v2)
  {
    v4 = 8 * v2;
    while ((*result + 1) <= 1)
    {
      ++result;
      v4 -= 8;
      if (!v4)
      {
        return v3;
      }
    }
  }

  return result;
}

uint64_t WTF::ThreadSafeWeakHashSet<WebKit::NetworkDataTask>::values(void *a1, uint64_t a2)
{
  v4 = 0;
  *a1 = 0;
  a1[1] = 0;
  v5 = (a2 + 16);
  atomic_compare_exchange_strong_explicit((a2 + 16), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x19EB01E30](a2 + 16);
  }

  v13 = 0;
  v11 = &v13;
  WTF::compactMap<0ul,WTF::CrashOnOverflow,16ul,WTF::ThreadSafeWeakHashSet<WebKit::NetworkDataTask>::values(void)::{lambda(0ul &)#1},WTF::HashSet<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0>>(v12, a2, &v11);
  WTF::Vector<WTF::Ref<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(a1, v12);
  result = WTF::Vector<WTF::Ref<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v12, v6);
  if (v13 == 1)
  {
    result = _ZN3WTF9HashTableINSt3__14pairINS_6RefPtrINS_29ThreadSafeWeakPtrControlBlockENS_12RawPtrTraitsIS4_EENS_43ThreadSafeWeakPtrControlBlockRefDerefTraitsEEEPKN6WebKit15NetworkDataTaskEEESD_NS_17IdentityExtractorENS_11DefaultHashISD_EENS_10HashTraitsISD_EESI_NS_10FastMallocEE8removeIfIZNKS_21ThreadSafeWeakHashSetISA_E6valuesEvEUlRT_E0_EEbRKSO_(a2);
  }

  *(a2 + 8) = 0;
  v8 = *a2;
  if (*a2 && (LODWORD(v8) = *(v8 - 3), v8 > 0x7FFFFFFE))
  {
    v9 = -2;
  }

  else
  {
    v9 = 2 * v8;
  }

  *(a2 + 12) = v9;
  v10 = 1;
  atomic_compare_exchange_strong_explicit((a2 + 16), &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 != 1)
  {
    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

void *WTF::compactMap<0ul,WTF::CrashOnOverflow,16ul,WTF::ThreadSafeWeakHashSet<WebKit::NetworkDataTask>::values(void)::{lambda(0ul &)#1},WTF::HashSet<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0>>(void *result, atomic_uchar ***a2, _BYTE **a3)
{
  v5 = result;
  *result = 0;
  result[1] = 0;
  v6 = *a2;
  if (v6)
  {
    v7 = *(v6 - 3);
    if (v7)
    {
      if (v7 >> 29)
      {
        __break(0xC471u);
        return result;
      }

      v8 = WTF::fastMalloc((8 * v7));
      *(v5 + 8) = v7;
      *v5 = v8;
      v6 = *a2;
    }
  }

  return _ZN3WTF13CompactMapperIZNKS_21ThreadSafeWeakHashSetIN6WebKit15NetworkDataTaskEE6valuesEvEUlRT_E_NS_6VectorINS_3RefIS3_NS_12RawPtrTraitsIS3_EENS_21DefaultRefDerefTraitsIS3_EEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEERNS_7HashSetINSt3__14pairINS_6RefPtrINS_29ThreadSafeWeakPtrControlBlockENSA_ISM_EENS_43ThreadSafeWeakPtrControlBlockRefDerefTraitsEEEPKS3_EENS_11DefaultHashISS_EENS_10HashTraitsISS_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE0EEEvE10compactMapERSH_S10_RKS7_(v5, v6, a3);
}

uint64_t WTF::Vector<WTF::Ref<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 12);
  if (v4)
  {
    v6 = *a1;
    v7 = 8 * v4;
    do
    {
      v8 = *v6;
      *v6 = 0;
      if (v8)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v8 + 8));
      }

      ++v6;
      v7 -= 8;
    }

    while (v7);
  }

  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  return a1;
}

uint64_t _ZN3WTF13CompactMapperIZNKS_21ThreadSafeWeakHashSetIN6WebKit15NetworkDataTaskEE6valuesEvEUlRT_E_NS_6VectorINS_3RefIS3_NS_12RawPtrTraitsIS3_EENS_21DefaultRefDerefTraitsIS3_EEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEERNS_7HashSetINSt3__14pairINS_6RefPtrINS_29ThreadSafeWeakPtrControlBlockENSA_ISM_EENS_43ThreadSafeWeakPtrControlBlockRefDerefTraitsEEEPKS3_EENS_11DefaultHashISS_EENS_10HashTraitsISS_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE0EEEvE10compactMapERSH_S10_RKS7_(uint64_t a1, atomic_uchar **a2, _BYTE **a3)
{
  v4 = a2;
  v6 = WTF::HashTable<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::FastMalloc>::begin(a2);
  v7 = v6;
  v9 = v8;
  if (v4)
  {
    v4 += 2 * *(v4 - 1);
  }

  if (v4 != v6)
  {
    do
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*v7, v7[1], &v18);
      v11 = v18;
      if (v18)
      {
        v17 = v18;
        v18 = 0;
        v12 = *(a1 + 12);
        if (v12 == *(a1 + 8))
        {
          WTF::Vector<WTF::Ref<WebCore::FilterEffect,WTF::RawPtrTraits<WebCore::FilterEffect>,WTF::DefaultRefDerefTraits<WebCore::FilterEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::Ref<WebCore::FilterEffect,WTF::RawPtrTraits<WebCore::FilterEffect>,WTF::DefaultRefDerefTraits<WebCore::FilterEffect>>>(a1, &v17);
        }

        else
        {
          v13 = *a1;
          v17 = 0;
          *(v13 + 8 * v12) = v11;
          *(a1 + 12) = v12 + 1;
        }

        v14 = v17;
        v17 = 0;
        if (v14)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v14 + 8));
        }

        v15 = v18;
        v18 = 0;
        if (v15)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v15 + 8));
        }
      }

      else
      {
        **a3 = 1;
      }

      do
      {
        v7 += 2;
        if (v7 == v9)
        {
          break;
        }
      }

      while (*v7 == -1 || *v7 == 0);
    }

    while (v7 != v4);
  }

  return WTF::Vector<WTF::Ref<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(a1, *(a1 + 12));
}

uint64_t WTF::Vector<WTF::Ref<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, unint64_t a2)
{
  if (*(result + 8) > a2)
  {
    v3 = result;
    if (*(result + 12) > a2)
    {
      result = WTF::Vector<WTF::Ref<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(result, a2);
    }

    v4 = *v3;
    if (a2)
    {
      if (*(v3 + 8))
      {
        *(v3 + 8) = a2;
        result = WTF::fastRealloc(v4, (8 * a2));
        *v3 = result;
        return result;
      }

      if (a2 >> 29)
      {
        __break(0xC471u);
        return result;
      }

      v5 = *(v3 + 12);
      result = WTF::fastMalloc((8 * a2));
      *(v3 + 8) = a2;
      *v3 = result;
      if (result != v4)
      {
        result = memcpy(result, v4, 8 * v5);
      }
    }

    if (v4)
    {
      if (*v3 == v4)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      return WTF::fastFree(v4, a2);
    }
  }

  return result;
}

atomic_ullong *WTF::Vector<WTF::Ref<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(atomic_ullong *result, unint64_t a2)
{
  v2 = *(result + 3);
  if (v2 < a2)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v4 = result;
    if (v2 != a2)
    {
      v5 = (*result + 8 * a2);
      v6 = 8 * v2 - 8 * a2;
      do
      {
        v7 = *v5;
        *v5 = 0;
        if (v7)
        {
          result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v7 + 8));
        }

        ++v5;
        v6 -= 8;
      }

      while (v6);
    }

    *(v4 + 3) = v3;
  }

  return result;
}

atomic_uchar *_ZN3WTF9HashTableINSt3__14pairINS_6RefPtrINS_29ThreadSafeWeakPtrControlBlockENS_12RawPtrTraitsIS4_EENS_43ThreadSafeWeakPtrControlBlockRefDerefTraitsEEEPKN6WebKit15NetworkDataTaskEEESD_NS_17IdentityExtractorENS_11DefaultHashISD_EENS_10HashTraitsISD_EESI_NS_10FastMallocEE8removeIfIZNKS_21ThreadSafeWeakHashSetISA_E6valuesEvEUlRT_E0_EEbRKSO_(atomic_uchar *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = result;
    v3 = *(v1 - 4);
    if (v3)
    {
      v4 = 0;
      v5 = (v1 + 16 * v3 - 16);
      do
      {
        result = *v5;
        if (*v5 != -1 && *v5 != 0)
        {
          result = WTF::ThreadSafeWeakPtrControlBlock::objectHasStartedDeletion(result);
          if (result)
          {
            result = *v5;
            *v5 = 0;
            if (result)
            {
              result = WTF::ThreadSafeWeakPtrControlBlock::weakDeref(result, v6);
            }

            *v5 = -1;
            ++v4;
          }
        }

        v5 -= 2;
        --v3;
      }

      while (v3);
      v1 = *v2;
      if (v4)
      {
        v7 = *(v1 - 12) - v4;
        *(v1 - 16) += v4;
        *(v1 - 12) = v7;
      }

      else if (!v1)
      {
        return result;
      }
    }

    v8 = 6 * *(v1 - 12);
    v9 = *(v1 - 4);
    if (v8 < v9 && v9 >= 9)
    {

      return WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>>,WTF::FastMalloc>::shrinkToBestSize(v2);
    }
  }

  return result;
}

_DWORD *WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>>,WTF::FastMalloc>::shrinkToBestSize(uint64_t *a1)
{
  if (*a1)
  {
    v2 = *(*a1 - 12);
  }

  else
  {
    v2 = 0;
  }

  v3 = WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>>,WTF::FastMalloc>::computeBestTableSize(v2);

  return WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>>,WTF::FastMalloc>::rehash(a1, v3);
}

_DWORD *WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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

  result = WTF::fastZeroedMalloc((16 * a2 + 16));
  *a1 = (result + 4);
  result[2] = a2 - 1;
  result[3] = a2;
  *result = 0;
  result[1] = v6;
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v10 = (v4 + 16 * i);
      v11 = *v10;
      if (*v10 != -1)
      {
        v8 = v10[1];
        if (v11 | v8)
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

          v14 = WTF::PairHash<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>::hash(v11, v8);
          v15 = 0;
          do
          {
            v16 = (v12 + 16 * (v14 & v13));
            v14 = ++v15 + (v14 & v13);
          }

          while (*v16 != 0);
          *v16 = 0;
          v17 = *v10;
          *v10 = 0;
          *v16 = v17;
          v18 = *v10;
          *v10 = 0;
          if (v18)
          {
            WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v18, v8);
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

uint64_t WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>>,WTF::FastMalloc>::computeBestTableSize(uint64_t result)
{
  if (result > 1)
  {
    v4 = __clz(result - 1);
    if (!v4)
    {
      __break(1u);
      return result;
    }

    v2 = (1 << -v4);
    v1 = result;
    if (result > 0x400)
    {
      if (v2 > 2 * result)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v1 = result;
    v2 = 1;
  }

  if (3 * v2 <= 4 * v1)
  {
LABEL_4:
    LODWORD(v2) = 2 * v2;
  }

LABEL_5:
  if (v2 > 0x400)
  {
    v3 = 0.416666667;
  }

  else
  {
    v3 = 0.604166667;
  }

  if (v2 * v3 <= result)
  {
    LODWORD(v2) = 2 * v2;
  }

  if (v2 <= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

uint64_t WTF::Vector<WTF::Ref<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v6 = *a1;
    v7 = 8 * v3;
    do
    {
      v8 = *v6;
      *v6 = 0;
      if (v8)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v8 + 8));
      }

      v6 = (v6 + 8);
      v7 -= 8;
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

WTF::StringImpl **WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebCore::RegistrableDomain>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebCore::RegistrableDomain>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebCore::RegistrableDomain,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(uint64_t *a1, WTF::StringImpl **a2)
{
  v4 = *a1;
  if (!*a1)
  {
    v5 = 0;
    v6 = 0;
LABEL_3:
    v7 = 8;
    goto LABEL_4;
  }

  v5 = *(v4 - 4);
  v6 = *(v4 - 12);
  if (!v5)
  {
    goto LABEL_3;
  }

  v7 = v5 << (6 * v6 >= (2 * v5));
LABEL_4:
  v8 = WTF::fastZeroedMalloc((16 * v7 + 16));
  *a1 = (v8 + 4);
  v8[2] = v7 - 1;
  v8[3] = v7;
  *v8 = 0;
  v8[1] = v6;
  if (v5)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = (v4 + 16 * v10);
      v13 = *v12;
      if (*v12 != -1)
      {
        if (v13)
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

          v18 = *(v13 + 4);
          if (v18 < 0x100)
          {
            v19 = WTF::StringImpl::hashSlowCase(v13);
          }

          else
          {
            v19 = v18 >> 8;
          }

          v20 = 0;
          do
          {
            v21 = v19 & v17;
            v19 = ++v20 + v21;
          }

          while (*(v16 + 16 * v21));
          v22 = (v16 + 16 * v21);
          v23 = v22[1];
          v22[1] = 0;
          if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v23, v9);
          }

          v24 = *v22;
          *v22 = 0;
          if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v24, v9);
          }

          v25 = *v12;
          *v12 = 0;
          *v22 = v25;
          v26 = v12[1];
          v12[1] = 0;
          v22[1] = v26;
          v27 = v12[1];
          v12[1] = 0;
          if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v27, v9);
          }

          v28 = *v12;
          *v12 = 0;
          if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v28, v9);
          }

          if (v12 == a2)
          {
            v11 = v22;
          }
        }

        else
        {
          v14 = v12[1];
          v12[1] = 0;
          if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v14, v9);
          }

          v15 = *v12;
          *v12 = 0;
          if (v15)
          {
            if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v15, v9);
            }
          }
        }
      }

      ++v10;
    }

    while (v10 != v5);
  }

  else
  {
    v11 = 0;
    result = 0;
    if (!v4)
    {
      return result;
    }
  }

  WTF::fastFree((v4 - 16), v9);
  return v11;
}

WTF *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebCore::RegistrableDomain>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebCore::RegistrableDomain>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebCore::RegistrableDomain,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WebCore::RegistrableDomain,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(uint64_t *a1, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  if (!*a1)
  {
    return 0;
  }

  result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebCore::RegistrableDomain>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebCore::RegistrableDomain>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebCore::RegistrableDomain,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WebCore::RegistrableDomain,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(a1, a2, a3);
  v5 = *a1;
  if (!result)
  {
    if (v5)
    {
      return (v5 + 16 * *(v5 - 4));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

WTF *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebCore::RegistrableDomain>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebCore::RegistrableDomain>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebCore::RegistrableDomain,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WebCore::RegistrableDomain,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(uint64_t *a1, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  v4 = *a2;
  if (*a2 == -1 || !v4)
  {
    __break(0xC471u);
    JUMPOUT(0x19DCD4A9CLL);
  }

  v5 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v7 = *(v5 - 8);
  v8 = *(v4 + 4);
  if (v8 < 0x100)
  {
    v9 = WTF::StringImpl::hashSlowCase(v4);
  }

  else
  {
    v9 = v8 >> 8;
  }

  for (i = 0; ; v9 = i + v11)
  {
    v11 = v9 & v7;
    result = *(v5 + 16 * v11);
    if (result != -1)
    {
      if (!result)
      {
        return result;
      }

      if (WTF::equal(result, *a2, a3))
      {
        break;
      }
    }

    ++i;
  }

  return (v5 + 16 * v11);
}

__n128 WTF::HashMap<WTF::String,WebCore::IPAddress,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::IPAddress>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::String const&,WebCore::IPAddress>(uint64_t a1, uint64_t *a2, uint64_t *a3, __n128 *a4)
{
  WTF::checkHashTableKey<WTF::String,WTF::KeyValuePair<WTF::String,WebCore::IPAddress>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebCore::IPAddress>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebCore::IPAddress,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::IPAddress>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::HashMapTranslator<WTF::HashMap<WTF::String,WebCore::IPAddress,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::IPAddress>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(*a3);
  v9 = *a2;
  if (*a2 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebCore::IPAddress>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebCore::IPAddress>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebCore::IPAddress,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::IPAddress>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a2, 0), (v9 = *a2) != 0))
  {
    v10 = *(v9 - 8);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(*a3 + 16);
  if (v11 < 0x100)
  {
    v12 = WTF::StringImpl::hashSlowCase(*a3);
  }

  else
  {
    v12 = v11 >> 8;
  }

  v13 = 0;
  for (i = 1; ; ++i)
  {
    v15 = v12 & v10;
    v16 = v9 + 32 * v15;
    v17 = *v16;
    if (!*v16)
    {
      if (v13)
      {
        *v13 = 0;
        *(v13 + 8) = 0;
        *(v13 + 24) = 0;
        --*(*a2 - 16);
        v16 = v13;
      }

      WTF::String::operator=(v16, a3);
      v18 = a4[1].n128_u32[0];
      result = *a4;
      *(v16 + 8) = *a4;
      *(v16 + 24) = v18;
      v20 = *a2;
      if (*a2)
      {
        v21 = *(v20 - 12) + 1;
      }

      else
      {
        v21 = 1;
      }

      *(v20 - 12) = v21;
      v22 = (*(v20 - 16) + v21);
      v23 = *(v20 - 4);
      if (v23 > 0x400)
      {
        if (v23 > 2 * v22)
        {
          goto LABEL_17;
        }
      }

      else if (3 * v23 > 4 * v22)
      {
LABEL_17:
        *a1 = v16;
        *(a1 + 8) = v20 + 32 * v23;
        *(a1 + 16) = 1;
        return result;
      }

      v16 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebCore::IPAddress>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebCore::IPAddress>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebCore::IPAddress,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::IPAddress>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a2, v16);
      v20 = *a2;
      if (*a2)
      {
        v23 = *(v20 - 4);
      }

      else
      {
        v23 = 0;
      }

      goto LABEL_17;
    }

    if (v17 == -1)
    {
      v13 = v9 + 32 * v15;
      goto LABEL_10;
    }

    if (WTF::equal(v17, *a3, v8))
    {
      break;
    }

LABEL_10:
    v12 = i + v15;
  }

  v25 = *a2;
  if (*a2)
  {
    v26 = *(v25 - 4);
  }

  else
  {
    v26 = 0;
  }

  *a1 = v16;
  *(a1 + 8) = v25 + 32 * v26;
  *(a1 + 16) = 0;
  result = *a4;
  *(v16 + 24) = a4[1].n128_u32[0];
  *(v16 + 8) = result;
  return result;
}

uint64_t WTF::checkHashTableKey<WTF::String,WTF::KeyValuePair<WTF::String,WebCore::IPAddress>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebCore::IPAddress>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebCore::IPAddress,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::IPAddress>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::HashMapTranslator<WTF::HashMap<WTF::String,WebCore::IPAddress,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::IPAddress>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19DCD4CBCLL);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebCore::IPAddress>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebCore::IPAddress>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebCore::IPAddress,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::IPAddress>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(uint64_t *a1, WTF::StringImpl **a2)
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

  return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebCore::IPAddress>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebCore::IPAddress>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebCore::IPAddress,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::IPAddress>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebCore::IPAddress>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebCore::IPAddress>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebCore::IPAddress,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::IPAddress>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, WTF::StringImpl **a3)
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

  Table = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebCore::IPAddress>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebCore::IPAddress>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebCore::IPAddress,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::IPAddress>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::allocateTable(a2);
  *a1 = Table;
  *(Table - 8) = a2 - 1;
  *(Table - 4) = a2;
  *(Table - 16) = 0;
  *(Table - 12) = v8;
  v11 = 0;
  if (v7)
  {
    v13 = v6;
    v14 = v7;
    do
    {
      if (*v13 != -1)
      {
        if (*v13)
        {
          WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebCore::IPAddress>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebCore::IPAddress>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebCore::IPAddress,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::IPAddress>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::reinsert(*a1, v13);
          v16 = v15;
          v17 = *v13;
          *v13 = 0;
          if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v17, v10);
          }

          if (v13 == a3)
          {
            v11 = v16;
          }
        }

        else
        {
          *v13 = 0;
        }
      }

      v13 += 4;
      --v14;
    }

    while (v14);
    goto LABEL_14;
  }

  result = 0;
  if (v6)
  {
LABEL_14:
    WTF::fastFree((v6 - 16), v10);
    return v11;
  }

  return result;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebCore::IPAddress>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebCore::IPAddress>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebCore::IPAddress,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::IPAddress>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::allocateTable(unsigned int a1)
{
  v2 = a1;
  v3 = WTF::fastMalloc(((32 * a1) | 0x10));
  if (a1)
  {
    v4 = v3 + 24;
    do
    {
      *(v4 - 8) = 0;
      *v4 = 0;
      *(v4 + 16) = 0;
      v4 += 32;
      --v2;
    }

    while (v2);
  }

  return v3 + 16;
}

__n128 WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebCore::IPAddress>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebCore::IPAddress>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebCore::IPAddress,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::IPAddress>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::reinsert(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (a1)
  {
    v5 = *(a1 - 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v4 + 4);
  if (v6 < 0x100)
  {
    v7 = WTF::StringImpl::hashSlowCase(v4);
  }

  else
  {
    v7 = v6 >> 8;
  }

  v8 = 0;
  do
  {
    v9 = v7 & v5;
    v7 = ++v8 + v9;
  }

  while (*(a1 + 32 * v9));
  v10 = a1 + 32 * v9;
  v11 = *a2;
  *a2 = 0;
  *v10 = v11;
  result = *(a2 + 8);
  *(v10 + 24) = *(a2 + 24);
  *(v10 + 8) = result;
  return result;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebCore::IPAddress>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebCore::IPAddress>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebCore::IPAddress,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::IPAddress>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WebCore::IPAddress,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::IPAddress>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(uint64_t *a1, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v6 = *a2;
  if (*a2 == -1 || !v6)
  {
    __break(0xC471u);
    JUMPOUT(0x19DCD4FF4);
  }

  v7 = *(v3 - 8);
  v8 = *(v6 + 4);
  if (v8 < 0x100)
  {
    v9 = WTF::StringImpl::hashSlowCase(v6);
  }

  else
  {
    v9 = v8 >> 8;
  }

  for (i = 0; ; v9 = i + v11)
  {
    v11 = v9 & v7;
    v12 = *(v3 + 32 * v11);
    if (!v12)
    {
      break;
    }

    if (v12 != -1 && (WTF::equal(v12, *a2, a3) & 1) != 0)
    {
      return v3 + 32 * v11;
    }

    ++i;
  }

  if (*a1)
  {
    return *a1 + 32 * *(*a1 - 4);
  }

  else
  {
    return 0;
  }
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkSession::handlePrivateClickMeasurementConversion(WebCore::PCM::AttributionTriggerData &&,WTF::URL const&,WebCore::ResourceRequest const&,WTF::String &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11038A8;
  WebKit::NetworkSession::handlePrivateClickMeasurementConversion(WebCore::PCM::AttributionTriggerData &&,WTF::URL const&,WebCore::ResourceRequest const&,WebCore::PCM::AttributionTriggerData &&::String &&)::$_0::~$_0((a1 + 1), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkSession::handlePrivateClickMeasurementConversion(WebCore::PCM::AttributionTriggerData &&,WTF::URL const&,WebCore::ResourceRequest const&,WTF::String &&)::$_0,void>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11038A8;
  WebKit::NetworkSession::handlePrivateClickMeasurementConversion(WebCore::PCM::AttributionTriggerData &&,WTF::URL const&,WebCore::ResourceRequest const&,WebCore::PCM::AttributionTriggerData &&::String &&)::$_0::~$_0(a1 + 8, a2);

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkSession::handlePrivateClickMeasurementConversion(WebCore::PCM::AttributionTriggerData &&,WTF::URL const&,WebCore::ResourceRequest const&,WTF::String &&)::$_0,void>::call(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      ++*(v2 + 16);
      result = (*(**(v2 + 160) + 24))(*(v2 + 160), result + 16, result + 144, result + 184, result + 192, result + 232);
      v3 = *(v2 + 16);
      if (v3)
      {
        *(v2 + 16) = v3 - 1;
      }

      else
      {
        result = 290;
        __break(0xC471u);
      }
    }
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>@<X0>(uint64_t *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DCD535CLL);
  }

  if (!*a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DCD537CLL);
  }

  v5 = result;
  v6 = *result;
  if (*result || (result = WTF::HashTable<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::FastMalloc>::expand(result, 0), (v6 = *v5) != 0))
  {
    v7 = 0;
    v8 = *(v6 - 8);
  }

  else
  {
    v8 = 0;
    v7 = 1;
  }

  v9 = 0;
  v10 = *a2;
  v11 = ~(*a2 << 32) + *a2;
  v12 = 9 * (((v11 ^ (v11 >> 22)) + ~((v11 ^ (v11 >> 22)) << 13)) ^ (((v11 ^ (v11 >> 22)) + ~((v11 ^ (v11 >> 22)) << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = (v13 >> 31) ^ v13;
  for (i = 1; ; ++i)
  {
    v16 = v14 & v8;
    v17 = (v6 + 8 * v16);
    v18 = *v17;
    if (*v17 != -1)
    {
      break;
    }

    v9 = (v6 + 8 * v16);
LABEL_12:
    v14 = i + v16;
  }

  if (!v18)
  {
    if (v9)
    {
      *v9 = 0;
      --*(*v5 - 16);
      v10 = *a2;
      v17 = v9;
    }

    *a2 = 0;
    result = *v17;
    *v17 = v10;
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

    v19 = *v5;
    if (*v5)
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
      if (v22 <= 2 * v21)
      {
LABEL_22:
        result = WTF::HashTable<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::FastMalloc>::expand(v5, v17);
        v17 = result;
        v19 = *v5;
        if (*v5)
        {
          v22 = *(v19 - 4);
        }

        else
        {
          v22 = 0;
        }
      }
    }

    else if (3 * v22 <= 4 * v21)
    {
      goto LABEL_22;
    }

    v23 = v19 + 8 * v22;
    v24 = 1;
    goto LABEL_28;
  }

  if (v18 != v10)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    v25 = 0;
  }

  else
  {
    v25 = *(v6 - 4);
  }

  v24 = 0;
  v23 = v6 + 8 * v25;
LABEL_28:
  *a3 = v17;
  *(a3 + 8) = v23;
  *(a3 + 16) = v24;
  return result;
}

void *WTF::HashTable<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::FastMalloc>::expand(uint64_t *a1, void *a2)
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

  return WTF::HashTable<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::FastMalloc>::rehash(a1, v4, a2);
}

void *WTF::HashTable<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, void *a3)
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

  v9 = WTF::fastZeroedMalloc((8 * a2 + 16));
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
      v13 = (v6 + 8 * v11);
      v14 = *v13;
      if (*v13 != -1)
      {
        if (v14)
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
            v23 = *(v15 + 8 * v20);
            v20 = (v20 + v21++) & v16;
          }

          while (v23);
          v24 = (v15 + 8 * v22);
          *v13 = 0;
          *v24 = v14;
          v25 = *v13;
          *v13 = 0;
          if (v25)
          {
            if (v25[5] == 1)
            {
              (*(*v25 + 24))(v25);
            }

            else
            {
              --v25[5];
            }
          }

          if (v13 == a3)
          {
            v12 = v24;
          }
        }

        else
        {
          *v13 = 0;
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

void *WTF::HashTable<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::FastMalloc>::remove(uint64_t *a1, _DWORD **a2)
{
  result = WTF::HashTable<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::FastMalloc>::deleteBucket(a2);
  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }

  return result;
}

_DWORD *WTF::HashTable<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::FastMalloc>::deleteBucket(_DWORD **a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    if (result[5] == 1)
    {
      result = (*(*result + 24))(result);
    }

    else
    {
      --result[5];
    }
  }

  *a1 = -1;
  return result;
}

uint64_t WTF::HashTable<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::FastMalloc>::find<WTF::HashSetTranslator<WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::DefaultHash<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>>,(WTF::ShouldValidateKey)1,WebKit::NetworkResourceLoader const*>(uint64_t *a1, void *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = *(v2 - 8);
  v4 = ~(*a2 << 32) + *a2;
  v5 = 9 * (((v4 ^ (v4 >> 22)) + ~((v4 ^ (v4 >> 22)) << 13)) ^ (((v4 ^ (v4 >> 22)) + ~((v4 ^ (v4 >> 22)) << 13)) >> 8));
  v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27);
  v7 = v3 & ((v6 >> 31) ^ v6);
  for (i = 1; ; ++i)
  {
    v9 = v7;
    v10 = *(v2 + 8 * v7);
    if (v10 != -1)
    {
      if (!v10)
      {
        return v2 + 8 * *(v2 - 4);
      }

      if (v10 == *a2)
      {
        break;
      }
    }

    v7 = (v9 + i) & v3;
  }

  return v2 + 8 * v9;
}

WebKit::NetworkSession::CachedNetworkResourceLoader *WTF::RefCounted<WebKit::NetworkSession::CachedNetworkResourceLoader>::deref(WebKit::NetworkSession::CachedNetworkResourceLoader *result)
{
  if (*result == 1)
  {
    WebKit::NetworkSession::CachedNetworkResourceLoader::~CachedNetworkResourceLoader(result);

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

void WebKit::NetworkSession::CachedNetworkResourceLoader::~CachedNetworkResourceLoader(WebKit::NetworkSession::CachedNetworkResourceLoader *this)
{
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    if (v2[5] == 1)
    {
      (*(*v2 + 24))(v2);
    }

    else
    {
      --v2[5];
    }
  }

  *(this + 1) = &unk_1F10EB388;
  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WebCore::TimerBase::~TimerBase((this + 8));
  if (*this != 1)
  {
    __break(0xC471u);
  }
}

WebCore::TimerBase *WebCore::Timer::Timer<WebKit::NetworkSession::CachedNetworkResourceLoader,WebKit::NetworkSession::CachedNetworkResourceLoader>(WebCore::TimerBase *a1, uint64_t a2)
{
  *WebCore::TimerBase::TimerBase(a1) = &unk_1F10EB388;
  v4 = WTF::fastMalloc(0x20);
  *v4 = &unk_1F11038D0;
  v4[1] = a2;
  v4[2] = WebKit::NetworkSession::CachedNetworkResourceLoader::expirationTimerFired;
  v4[3] = 0;
  *(a1 + 6) = v4;
  return a1;
}

WebKit::NetworkSession::CachedNetworkResourceLoader *WTF::Detail::CallableWrapper<WebCore::Timer::Timer<WebKit::NetworkSession::CachedNetworkResourceLoader,WebKit::NetworkSession::CachedNetworkResourceLoader>(WebKit::NetworkSession::CachedNetworkResourceLoader &,void (WebKit::NetworkSession::CachedNetworkResourceLoader::*)(void))::{lambda(void)#1},void>::call(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  ++*v2;
  v3 = a1[3];
  v4 = (v2 + (v3 >> 1));
  if (v3)
  {
    v1 = *(*v4 + v1);
  }

  v1(v4);

  return WTF::RefCounted<WebKit::NetworkSession::CachedNetworkResourceLoader>::deref(v2);
}

uint64_t WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19DCD5938);
  }

  return result;
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, void *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, void *a3)
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
  v11 = 0;
  if (v7)
  {
    v13 = v7;
    v14 = v6;
    do
    {
      if (*v14 != -1)
      {
        if (*v14)
        {
          v16 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::reinsert(*a1, v14);
          v17 = v14[1];
          v14[1] = 0;
          if (v17)
          {
            WTF::RefCounted<WebKit::NetworkSession::CachedNetworkResourceLoader>::deref(v17);
          }

          if (v14 == a3)
          {
            v11 = v16;
          }
        }

        else
        {
          v15 = v14[1];
          v14[1] = 0;
          if (v15)
          {
            WTF::RefCounted<WebKit::NetworkSession::CachedNetworkResourceLoader>::deref(v15);
          }
        }
      }

      v14 += 2;
      --v13;
    }

    while (v13);
    goto LABEL_16;
  }

  result = 0;
  if (v6)
  {
LABEL_16:
    WTF::fastFree((v6 - 16), v10);
    return v11;
  }

  return result;
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::reinsert(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = *(a1 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a2 + ~(*a2 << 32);
  v5 = (v4 ^ (v4 >> 22)) + ~((v4 ^ (v4 >> 22)) << 13);
  v6 = (9 * (v5 ^ (v5 >> 8))) ^ ((9 * (v5 ^ (v5 >> 8))) >> 15);
  v7 = v3 & (((v6 + ~(v6 << 27)) >> 31) ^ (v6 + ~(v6 << 27)));
  v8 = 1;
  do
  {
    v9 = v7;
    v10 = *(a1 + 16 * v7);
    v7 = (v7 + v8++) & v3;
  }

  while (v10);
  v11 = (a1 + 16 * v9);
  v12 = v11[1];
  v11[1] = 0;
  if (v12)
  {
    WTF::RefCounted<WebKit::NetworkSession::CachedNetworkResourceLoader>::deref(v12);
  }

  *v11 = *a2;
  v13 = a2[1];
  a2[1] = 0;
  v11[1] = v13;
  return v11;
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(uint64_t *result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v3 += 16 * *(v3 - 4);
  }

  if (v3 == a3)
  {
    *result = 0;
  }

  else
  {
    v4 = a3[1];
    if (v4)
    {
      a3[1] = 0;
    }

    *result = v4;
    return WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(a2, a3);
  }

  return result;
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(uint64_t *a1, void *a2)
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
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(a1, a2);
  }

  return a1;
}

WebKit::NetworkSession::CachedNetworkResourceLoader *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *a1, void *a2)
{
  result = a2[1];
  *a2 = -1;
  a2[1] = 0;
  if (result)
  {
    result = WTF::RefCounted<WebKit::NetworkSession::CachedNetworkResourceLoader>::deref(result);
  }

  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  if (!*a1)
  {
    return 0;
  }

  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( a1,  a2);
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

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(*a2);
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

uint64_t WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSession::CachedNetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkSession::CachedNetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19DCD5D8CLL);
  }

  return result;
}

_DWORD *WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  return WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::NetworkDataTask const*>>,WTF::FastMalloc>::rehash(a1, v3);
}

atomic_uint **WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>@<X0>(atomic_uint **result@<X0>, uint64_t *a2@<X1>, atomic_uint **a3@<X8>)
{
  v3 = *a2;
  if (*a2 == -1 || !v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DCD5EB0);
  }

  v4 = *result;
  if (*result)
  {
    v5 = *(v4 - 2);
    v6 = (v3 + ~(v3 << 32)) ^ ((v3 + ~(v3 << 32)) >> 22);
    v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
    v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
    v9 = v5 & ((v8 >> 31) ^ v8);
    v10 = *&v4[4 * v9];
    if (v10 == v3)
    {
LABEL_8:
      v4 = *&v4[4 * v9 + 2];
      if (v4)
      {
        atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
      }
    }

    else
    {
      v11 = 1;
      while (v10)
      {
        v9 = (v9 + v11) & v5;
        v10 = *&v4[4 * v9];
        ++v11;
        if (v10 == v3)
        {
          goto LABEL_8;
        }
      }

      v4 = 0;
    }
  }

  *a3 = v4;
  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *a1, void *a2)
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

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
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
    JUMPOUT(0x19DCD6264);
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

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 == -1 || !v2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DCD6348);
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
LABEL_8:
      v11 = *(v3 + 16 * v8 + 8);
      if (v11)
      {
        return *(v11 + 8);
      }
    }

    else
    {
      v10 = 1;
      while (v9)
      {
        v8 = (v8 + v10) & v4;
        v9 = *(v3 + 16 * v8);
        ++v10;
        if (v9 == v2)
        {
          goto LABEL_8;
        }
      }
    }
  }

  return 0;
}

uint64_t WebKit::WebSWOriginStore::operator new(WebKit::WebSWOriginStore *this, void *a2)
{
  if (WebKit::WebSWOriginStore::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebSWOriginStore::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebSWOriginStore::operatorNewSlow(0xA8);
  }
}

void *WTF::HashTable<WTF::RefPtr<WebKit::ServiceWorkerSoftUpdateLoader,WTF::RawPtrTraits<WebKit::ServiceWorkerSoftUpdateLoader>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerSoftUpdateLoader>>,WTF::RefPtr<WebKit::ServiceWorkerSoftUpdateLoader,WTF::RawPtrTraits<WebKit::ServiceWorkerSoftUpdateLoader>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerSoftUpdateLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebKit::ServiceWorkerSoftUpdateLoader,WTF::RawPtrTraits<WebKit::ServiceWorkerSoftUpdateLoader>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerSoftUpdateLoader>>>,WTF::HashTraits<WTF::RefPtr<WebKit::ServiceWorkerSoftUpdateLoader,WTF::RawPtrTraits<WebKit::ServiceWorkerSoftUpdateLoader>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerSoftUpdateLoader>>>,WTF::HashTraits<WTF::RefPtr<WebKit::ServiceWorkerSoftUpdateLoader,WTF::RawPtrTraits<WebKit::ServiceWorkerSoftUpdateLoader>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerSoftUpdateLoader>>>,WTF::FastMalloc>::expand(uint64_t *a1, void *a2)
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

  return WTF::HashTable<WTF::RefPtr<WebKit::ServiceWorkerSoftUpdateLoader,WTF::RawPtrTraits<WebKit::ServiceWorkerSoftUpdateLoader>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerSoftUpdateLoader>>,WTF::RefPtr<WebKit::ServiceWorkerSoftUpdateLoader,WTF::RawPtrTraits<WebKit::ServiceWorkerSoftUpdateLoader>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerSoftUpdateLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebKit::ServiceWorkerSoftUpdateLoader,WTF::RawPtrTraits<WebKit::ServiceWorkerSoftUpdateLoader>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerSoftUpdateLoader>>>,WTF::HashTraits<WTF::RefPtr<WebKit::ServiceWorkerSoftUpdateLoader,WTF::RawPtrTraits<WebKit::ServiceWorkerSoftUpdateLoader>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerSoftUpdateLoader>>>,WTF::HashTraits<WTF::RefPtr<WebKit::ServiceWorkerSoftUpdateLoader,WTF::RawPtrTraits<WebKit::ServiceWorkerSoftUpdateLoader>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerSoftUpdateLoader>>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

void *WTF::HashTable<WTF::RefPtr<WebKit::ServiceWorkerSoftUpdateLoader,WTF::RawPtrTraits<WebKit::ServiceWorkerSoftUpdateLoader>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerSoftUpdateLoader>>,WTF::RefPtr<WebKit::ServiceWorkerSoftUpdateLoader,WTF::RawPtrTraits<WebKit::ServiceWorkerSoftUpdateLoader>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerSoftUpdateLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebKit::ServiceWorkerSoftUpdateLoader,WTF::RawPtrTraits<WebKit::ServiceWorkerSoftUpdateLoader>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerSoftUpdateLoader>>>,WTF::HashTraits<WTF::RefPtr<WebKit::ServiceWorkerSoftUpdateLoader,WTF::RawPtrTraits<WebKit::ServiceWorkerSoftUpdateLoader>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerSoftUpdateLoader>>>,WTF::HashTraits<WTF::RefPtr<WebKit::ServiceWorkerSoftUpdateLoader,WTF::RawPtrTraits<WebKit::ServiceWorkerSoftUpdateLoader>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerSoftUpdateLoader>>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, void *a3)
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

  v9 = WTF::fastZeroedMalloc((8 * a2 + 16));
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
      v13 = (v6 + 8 * v11);
      v14 = *v13;
      if (*v13 != -1)
      {
        if (v14)
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
            v23 = *(v15 + 8 * v20);
            v20 = (v20 + v21++) & v16;
          }

          while (v23);
          v24 = (v15 + 8 * v22);
          *v13 = 0;
          *v24 = v14;
          v25 = *v13;
          *v13 = 0;
          if (v25)
          {
            if (v25[5] == 1)
            {
              (*(*v25 + 24))(v25);
            }

            else
            {
              --v25[5];
            }
          }

          if (v13 == a3)
          {
            v12 = v24;
          }
        }

        else
        {
          *v13 = 0;
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

uint64_t Messages::NetworkProcessProxy::EstablishRemoteWorkerContextConnectionToNetworkProcess::encode<IPC::Encoder>(uint64_t a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a2, *a1);
  IPC::ArgumentCoder<WebCore::Site,void>::encode(a2, *(a1 + 8));
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(a2, *(a1 + 16));
  IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::UUID>>,void>::encode<IPC::Encoder,std::optional<WebCore::ProcessQualified<WTF::UUID>> const&>(a2, *(a1 + 24));
  v4 = **(a1 + 32);

  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, v4);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcessProxy::EstablishRemoteWorkerContextConnectionToNetworkProcess,WebKit::NetworkSession::createContextConnection(WebCore::Site const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::ProcessQualified<WTF::UUID>>,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::NetworkSession::createContextConnection(WebCore::Site const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::ProcessQualified<WTF::UUID>>,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::NetworkSession::createContextConnection(WebCore::Site const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::ProcessQualified<WTF::UUID>>,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::NetworkSession::createContextConnection(WebCore::Site const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::ProcessQualified<WTF::UUID>>,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11038F8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcessProxy::EstablishRemoteWorkerContextConnectionToNetworkProcess,WebKit::NetworkSession::createContextConnection(WebCore::Site const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::ProcessQualified<WTF::UUID>>,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::NetworkSession::createContextConnection(WebCore::Site const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::ProcessQualified<WTF::UUID>>,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::NetworkSession::createContextConnection(WebCore::Site const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::ProcessQualified<WTF::UUID>>,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::NetworkSession::createContextConnection(WebCore::Site const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::ProcessQualified<WTF::UUID>>,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11038F8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcessProxy::EstablishRemoteWorkerContextConnectionToNetworkProcess,WebKit::NetworkSession::createContextConnection(WebCore::Site const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::ProcessQualified<WTF::UUID>>,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::NetworkSession::createContextConnection(WebCore::Site const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::ProcessQualified<WTF::UUID>>,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::NetworkSession::createContextConnection(WebCore::Site const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::ProcessQualified<WTF::UUID>>,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::NetworkSession::createContextConnection(WebCore::Site const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::ProcessQualified<WTF::UUID>>,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    IPC::ArgumentCoder<std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder>(a3, v12);
    if ((v12[16] & 1) == 0)
    {
      v9 = *a3;
      v10 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v11 = *(a3 + 3);
      if (v11)
      {
        if (v10)
        {
          (*(*v11 + 16))(v11, v9);
        }
      }
    }

    v5 = *(a1 + 8);
    *(a1 + 8) = 0;
    (*(*v5 + 16))(v5);
    return (*(*v5 + 8))(v5);
  }

  else
  {
    v7 = *(a1 + 8);
    *(a1 + 8) = 0;
    (*(*v7 + 16))(v7);
    v8 = *(*v7 + 8);

    return v8(v7);
  }
}

IPC::Decoder *IPC::ArgumentCoder<std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<std::optional<PAL::SessionID>,void>::decode<IPC::Decoder>(a1, &v9);
  if (v10 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v10)))
  {
    *a2 = v9;
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a2 = 0;
  }

  *(a2 + 16) = v5;
  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcessProxy::GetAppBoundDomains,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>(WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1103920;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcessProxy::GetAppBoundDomains,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>(WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1103920;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl **WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcessProxy::GetAppBoundDomains,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>(WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>,IPC::Decoder>::call(uint64_t a1, uint64_t a2, WTF::StringImpl *a3)
{
  if (a3 && *a3)
  {
    IPC::Decoder::decode<std::tuple<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>(a3, &v8);
    if (v9 == 1)
    {
      v4 = *(a1 + 8);
      *(a1 + 8) = 0;
      (*(*v4 + 16))(v4, &v8);
      result = (*(*v4 + 8))(v4);
      if (v9)
      {
        result = v8;
        if (v8)
        {
          return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v8, v6);
        }
      }
    }

    else
    {
      return IPC::Connection::cancelReply<Messages::NetworkProcessProxy::GetAppBoundDomains,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>((a1 + 8));
    }
  }

  else
  {
    v7 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::NetworkProcessProxy::GetAppBoundDomains,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>(v7);
  }

  return result;
}

WTF::StringImpl **IPC::Connection::cancelReply<Messages::NetworkProcessProxy::GetAppBoundDomains,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>(uint64_t *a1)
{
  v4 = 0;
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1, &v4);
  (*(*v1 + 8))(v1);
  result = v4;
  if (v4)
  {
    return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, v2);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebCore::Timer::Timer<WebKit::NetworkSocketChannel,WebKit::NetworkSocketChannel>(WebKit::NetworkSocketChannel &,void (WebKit::NetworkSocketChannel::*)(void))::{lambda(void)#1},void>::call(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  ++v2[6];
  v3 = a1[3];
  v4 = (v2 + (v3 >> 1));
  if (v3)
  {
    v1 = *(*v4 + v1);
  }

  result = v1(v4);
  if (v2[6] == 1)
  {
    v6 = *(*v2 + 8);

    return v6(v2);
  }

  else
  {
    --v2[6];
  }

  return result;
}

_DWORD *WTF::Detail::CallableWrapper<WebCore::Timer::Timer<WebKit::PingLoad,WebKit::PingLoad>(WebKit::PingLoad &,void (WebKit::PingLoad::*)(void))::{lambda(void)#1},void>::call(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = a1[3];
  v4 = (v2 + (v3 >> 1));
  v6 = *(v2 + 16);
  v5 = (v2 + 16);
  *v5 = v6 + 1;
  if (v3)
  {
    v1 = *(*v4 + v1);
  }

  v1(v4);

  return WTF::RefCounted<WebKit::PingLoad>::deref(v5, v7);
}

void *WTF::Detail::CallableWrapper<WebKit::PingLoad::initialize(WebKit::NetworkProcess &)::$_0,void,mpark::variant<WebCore::ResourceRequest,WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError> &&>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F11039C0;
  v3 = a1[2];
  a1[2] = 0;
  if (v3 && atomic_fetch_add(v3 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 36);
    (*(*v3 + 24))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PingLoad::initialize(WebKit::NetworkProcess &)::$_0,void,mpark::variant<WebCore::ResourceRequest,WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError> &&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F11039C0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 36);
    (*(*v3 + 24))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PingLoad::initialize(WebKit::NetworkProcess &)::$_0,void,mpark::variant<WebCore::ResourceRequest,WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError> &&>::call(uint64_t result, uint64_t a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v2 = *(result + 8);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      ++*(v3 + 16);
      v5 = *(a2 + 664);
      if (v5 == 255)
      {
        v6 = -1;
      }

      else
      {
        v6 = *(a2 + 664);
      }

      if (v6 == 2)
      {
        if (v5 != 2)
        {
          goto LABEL_48;
        }

        WebCore::ResourceResponseBase::ResourceResponseBase(v33);
        v44 = 0;
        v45[0] = 0;
        v37 = v37 & 0xF1 | 4;
        WebKit::PingLoad::didFinish(v3, a2, v33);
        v8 = v44;
        v44 = 0;
        if (v8)
        {
          CFRelease(v8);
        }

        WebCore::ResourceResponseBase::~ResourceResponseBase(v33, v7);
      }

      else if (v6 == 1)
      {
        if (v5 != 1)
        {
LABEL_48:
          mpark::throw_bad_variant_access(result);
        }
      }

      else
      {
        if (*(a2 + 664))
        {
          goto LABEL_48;
        }

        v9 = *(result + 16);
        v10 = qword_1ED6416F0;
        if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
        {
          *v33 = 134217984;
          *&v33[4] = v3;
          _os_log_impl(&dword_19D52D000, v10, OS_LOG_TYPE_DEFAULT, "%p - PingLoad::startNetworkLoad", v33, 0xCu);
        }

        *v33 = *(v3 + 32);
        v11 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v9 + 240), v33);
        if (v11)
        {
          v12 = v11;
          ++*(v11 + 16);
          WebKit::NetworkResourceLoadParameters::networkLoadParameters((v3 + 48), v33);
          WebCore::ResourceRequestBase::RequestData::operator=(v36, a2);
          v14 = *(a2 + 152);
          *(a2 + 152) = 0;
          v15 = v38;
          v38 = v14;
          if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v15, v13);
          }

          v16 = *(a2 + 160);
          *(a2 + 160) = 0;
          v17 = v39;
          v39 = v16;
          if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v17, v13);
          }

          v18 = *(a2 + 168);
          *(a2 + 168) = 0;
          v19 = v40;
          v40 = v18;
          if (v19)
          {
            WTF::RefCounted<WebCore::FormData>::deref(v19);
          }

          v41 = *(a2 + 176);
          v42 = *(a2 + 184);
          v20 = *(a2 + 192);
          *(a2 + 192) = 0;
          v21 = cf;
          cf = v20;
          if (v21)
          {
            CFRelease(v21);
          }

          v22 = WTF::fastMalloc(0x318);
          v23 = (WebKit::NetworkDataTaskCocoa::NetworkDataTaskCocoa(v22, v12, v3, v33) + 8);
          while (1)
          {
            v24 = *v23;
            if ((*v23 & 1) == 0)
            {
              break;
            }

            v25 = *v23;
            atomic_compare_exchange_strong_explicit(v23, &v25, v24 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v25 == v24)
            {
              goto LABEL_33;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v23);
LABEL_33:
          v26 = *(v3 + 4104);
          *(v3 + 4104) = v22;
          if (v26)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v26 + 8));
          }

          (*(*v22 + 24))(v22);
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref(v23);
          if (v48 == 1)
          {
            v32 = v47;
            v47 = 0;
            if (v32)
            {
            }
          }

          WTF::Vector<WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v46, v27);
          if (v45[2912] == 1)
          {
            WebKit::NavigationActionData::~NavigationActionData(v45, v28);
          }

          WebCore::ResourceRequest::~ResourceRequest(v36);
          v29 = v35;
          v35 = 0;
          if (v29)
          {
            WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v29, a2);
          }

          v30 = v34;
          v34 = 0;
          if (v30)
          {
            WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v30, a2);
          }

          v31 = *(v12 + 4);
          if (!v31)
          {
            result = 290;
            __break(0xC471u);
            return result;
          }

          *(v12 + 4) = v31 - 1;
        }
      }

      return WTF::RefCounted<WebKit::PingLoad>::deref((v3 + 16), a2);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::PingLoad::willPerformHTTPRedirection(WebCore::ResourceResponse &&,WebCore::ResourceRequest &&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest)> &&)::$_0,void,std::experimental::fundamentals_v3::expected<WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError> &&>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F11039E8;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    WTF::RefCounted<WebKit::PingLoad>::deref((v4 + 16), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PingLoad::willPerformHTTPRedirection(WebCore::ResourceResponse &&,WebCore::ResourceRequest &&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest)> &&)::$_0,void,std::experimental::fundamentals_v3::expected<WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError> &&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F11039E8;
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
    WTF::RefCounted<WebKit::PingLoad>::deref((v4 + 16), a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::PingLoad::willPerformHTTPRedirection(WebCore::ResourceResponse &&,WebCore::ResourceRequest &&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest)> &&)::$_0,void,std::experimental::fundamentals_v3::expected<WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError> &&>::call(mpark *a1, uint64_t a2)
{
  if (!*(a2 + 664))
  {
    WTF::URL::URL(v43, (a2 + 200));
    WTF::URL::URL(v44, (a2 + 240));
    v9 = *(a2 + 280);
    v10 = *(a2 + 288);
    *(a2 + 288) = 0u;
    v45 = v10;
    *&v10 = *(a2 + 304);
    *(a2 + 304) = 0;
    v44[5] = v9;
    v46 = v10;
    v11 = *(a2 + 312);
    v12 = *(a2 + 320);
    *(a2 + 312) = 0u;
    v47 = v11;
    v48 = v12;
    v13 = *(a2 + 328);
    v14 = *(a2 + 336);
    *(a2 + 328) = 0u;
    v49 = v13;
    v50 = v14;
    v15 = *(a2 + 344);
    v52 = *(a2 + 348);
    v51 = v15;
    v16 = *(a2 + 352);
    *(a2 + 352) = 0u;
    v53 = v16;
    v17 = *(a2 + 368);
    v18 = *(a2 + 376);
    *(a2 + 368) = 0;
    v56 = *(a2 + 384);
    v54 = v17;
    v55 = v18;
    v19 = *(a2 + 392);
    *(a2 + 392) = 0;
    v57 = v19;
    if ((*(WebCore::ResourceRequestBase::url(v43) + 8) & 2) != 0)
    {
      v32 = *(a1 + 2);
      *(a1 + 2) = 0;
      (*(*v32 + 16))(v32, v43);
      (*(*v32 + 8))(v32);
LABEL_29:
      v8 = v43;
      goto LABEL_30;
    }

    v20 = *(a1 + 1);
    v21 = WebCore::ResourceRequestBase::url(v43);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v22 = v58[0];
    v34 = 0;
    v23 = *v21;
    if (*v21)
    {
      atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
    }

    v35 = v23;
    v24 = *(v21 + 24);
    v36 = *(v21 + 8);
    v37 = v24;
    if (v22)
    {
      atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
    }

    v38 = v22;
    v39 = 0;
    v40 = 2;
    v41 = 0;
    v42 = 1;
    WebCore::ResourceResponseBase::ResourceResponseBase(v58);
    cf = 0;
    v61 = 0;
    v59 = v59 & 0xF1 | 4;
    WebKit::PingLoad::didFinish(v20, &v34, v58);
    v26 = cf;
    cf = 0;
    if (v26)
    {
      CFRelease(v26);
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(v58, v25);
    v28 = v41;
    v41 = 0;
    if (v28)
    {
      CFRelease(v28);
    }

    v29 = v38;
    v38 = 0;
    if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v29, v27);
    }

    v30 = v35;
    v35 = 0;
    if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v30, v27);
    }

    v31 = v34;
    v34 = 0;
    if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v31, v27);
      if (v22)
      {
LABEL_24:
        if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v22, v27);
        }
      }
    }

    else if (v22)
    {
      goto LABEL_24;
    }

    WebCore::ResourceRequest::ResourceRequest(v58);
    v33 = *(a1 + 2);
    *(a1 + 2) = 0;
    (*(*v33 + 16))(v33, v58);
    (*(*v33 + 8))(v33);
    WebCore::ResourceRequest::~ResourceRequest(v58);
    goto LABEL_29;
  }

  if (*(a2 + 664) != 1)
  {
    mpark::throw_bad_variant_access(a1);
  }

  v4 = *(a1 + 1);
  WebCore::ResourceResponseBase::ResourceResponseBase(v58);
  cf = 0;
  v61 = 0;
  v59 = v59 & 0xF1 | 4;
  WebKit::PingLoad::didFinish(v4, a2, v58);
  v6 = cf;
  cf = 0;
  if (v6)
  {
    CFRelease(v6);
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(v58, v5);
  WebCore::ResourceRequest::ResourceRequest(v58);
  v7 = *(a1 + 2);
  *(a1 + 2) = 0;
  (*(*v7 + 16))(v7, v58);
  (*(*v7 + 8))(v7);
  v8 = v58;
LABEL_30:
  WebCore::ResourceRequest::~ResourceRequest(v8);
}