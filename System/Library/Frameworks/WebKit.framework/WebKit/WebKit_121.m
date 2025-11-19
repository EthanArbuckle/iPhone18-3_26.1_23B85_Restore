void *WTF::Detail::CallableWrapper<WebKit::ProcessAssertion::ProcessAssertion(int,WTF::String const&,WebKit::ProcessAssertionType,WTF::String const&,std::optional<WebKit::ExtensionProcess> &&)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1100CE8;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ProcessAssertion::ProcessAssertion(int,WTF::String const&,WebKit::ProcessAssertionType,WTF::String const&,std::optional<WebKit::ExtensionProcess> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1100CE8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ProcessAssertion::ProcessAssertion(int,WTF::String const&,WebKit::ProcessAssertionType,WTF::String const&,std::optional<WebKit::ExtensionProcess> &&)::$_0,void>::call(uint64_t a1)
{
  WTF::RunLoop::mainSingleton(a1);
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v2);
  }

  else
  {
    v4 = 0;
  }

  v7 = *(a1 + 24);
  v5 = WTF::fastMalloc(0x28);
  *v5 = &unk_1F1100D10;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  *(v5 + 24) = v7;
  v8 = v5;
  WTF::RunLoop::dispatch();
  result = v8;
  if (v8)
  {
    return (*(*v8 + 8))(v8);
  }

  return result;
}

void sub_19DC58714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebKit::ProcessAssertion::ProcessAssertion(int,WTF::String const&,WebKit::ProcessAssertionType,WTF::String const&,std::optional<WebKit::ExtensionProcess> &&)::$_0::operator() const(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1100D10;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ProcessAssertion::ProcessAssertion(int,WTF::String const&,WebKit::ProcessAssertionType,WTF::String const&,std::optional<WebKit::ExtensionProcess> &&)::$_0::operator() const(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1100D10;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::ProcessAssertion::ProcessAssertion(int,WTF::String const&,WebKit::ProcessAssertionType,WTF::String const&,std::optional<WebKit::ExtensionProcess> &&)::$_0::operator() const(void)::{lambda(void)#1},void>::call(uint64_t *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = a1[2];
  if (v2)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v8, v2, a1[1]);
    v3 = v8;
  }

  else
  {
    v3 = 0;
    v8 = 0;
  }

  v4 = qword_1ED641030;
  if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[3];
    if (v3)
    {
      v6 = *(v3 + 20);
    }

    else
    {
      v6 = 0;
    }

    *buf = 134218498;
    v10 = v3;
    v11 = 2082;
    v12 = v5;
    v13 = 1024;
    v14 = v6;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - ProcessAssertion: RBS %{public}s assertion for process with PID=%d was invalidated", buf, 0x1Cu);
  }

  if (v3)
  {
    (*(*v3 + 16))(v3);
    v8 = 0;
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v3 + 8), v7);
  }
}

void *WTF::Detail::CallableWrapper<WebKit::ProcessAssertion::acquireAsync(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1100D38;
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
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v4 + 8), a2);
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::ProcessAssertion::acquireAsync(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1100D60;
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
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v4 + 8), a2);
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::ProcessAssertion::acquireSync(void)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1100D88;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ProcessAssertion::acquireSync(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1100D88;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_uchar **WTF::Detail::CallableWrapper<WebKit::ProcessAssertion::acquireSync(void)::$_0,void>::call(atomic_uchar **result)
{
  v1 = result[2];
  if (v1)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v4, v1, result[1]);
    v2 = v4;
    if (v4)
    {
      (*(*v4 + 16))(v4);

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v2 + 8), v3);
    }
  }

  return result;
}

uint64_t WebKit::NetworkDataTask::NetworkDataTask(uint64_t a1, uint64_t a2, uint64_t a3, WebCore::ResourceRequestBase *a4, char a5, char a6, char a7)
{
  *a1 = &unk_1F1100DB0;
  *(a1 + 8) = 3;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a2 + 8), a2);
  v14 = *(a2 + 8);
  atomic_fetch_add(v14, 1u);
  *(a1 + 16) = v14;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a3 + 8), a3);
  v15 = *(a3 + 8);
  atomic_fetch_add(v15, 1u);
  *(a1 + 24) = v15;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v16 = *(a4 + 20);
  if (v16)
  {
    atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
  }

  *(a1 + 64) = v16;
  WebCore::CredentialBase::CredentialBase((a1 + 72));
  *(a1 + 96) = 0;
  *(a1 + 104) = a5;
  v17 = *WebCore::ResourceRequestBase::httpMethod(a4);
  if (v17)
  {
    atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
  }

  *(a1 + 112) = v17;
  *(a1 + 120) = 0;
  WebCore::ResourceRequest::ResourceRequest((a1 + 128), a4);
  WebCore::ResourceRequest::ResourceRequest((a1 + 328));
  *(a1 + 528) = 0u;
  *(a1 + 544) = a6;
  *(a1 + 545) = a7;
  *(a1 + 546) = 0;
  if ((*(WebCore::ResourceRequestBase::url(a4) + 8) & 1) == 0)
  {
    v27 = a1;
    v28 = 1;
    goto LABEL_16;
  }

  v18 = WebCore::ResourceRequestBase::url(a4);
  if (!WTF::portAllowed(v18, v19) || (v20 = WebCore::ResourceRequestBase::url(a4), WebCore::isIPAddressDisallowed(v20, v21)))
  {
    v27 = a1;
    v28 = 0;
LABEL_16:
    WebKit::NetworkDataTask::scheduleFailure(v27, v28);
    return a1;
  }

  if ((*(*(a2 + 32) + 393) & 1) == 0)
  {
    v22 = WebCore::ResourceRequestBase::url(a4);
    if (WTF::URL::protocolIsInFTPFamily(v22))
    {
      v27 = a1;
      v28 = 3;
      goto LABEL_16;
    }
  }

  v23 = *(a1 + 16);
  if (!v23 || (v24 = *(v23 + 8)) == 0 || (++*(v24 + 16), WTF::ThreadSafeWeakHashSet<WebKit::NetworkDataTask>::add<WebKit::NetworkDataTask>(v24 + 40, a1), (v25 = *(v24 + 16)) == 0))
  {
    __break(0xC471u);
    JUMPOUT(0x19DC58DA8);
  }

  *(v24 + 16) = v25 - 1;
  return a1;
}

uint64_t WebKit::NetworkDataTask::scheduleFailure(uint64_t a1, char a2)
{
  *(a1 + 546) = 1;
  WTF::RunLoop::mainSingleton(a1);
  v4 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock((a1 + 8));
  v5 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v4);
  v6 = WTF::fastMalloc(0x20);
  *v6 = &unk_1F11011F8;
  *(v6 + 8) = a1;
  *(v6 + 16) = v5;
  *(v6 + 24) = a2;
  v8 = v6;
  WTF::RunLoop::dispatch();
  result = v8;
  if (v8)
  {
    return (*(*v8 + 8))(v8);
  }

  return result;
}

uint64_t WTF::URL::protocolIsInFTPFamily(WTF::URL *this)
{
  if (WTF::URL::protocolIs())
  {
    return 1;
  }

  return WTF::URL::protocolIs();
}

void WebKit::NetworkDataTask::~NetworkDataTask(WebKit::NetworkDataTask *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1100DB0;
  v3 = *(this + 2);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      ++*(v4 + 16);
      WTF::ThreadSafeWeakHashSet<WebKit::NetworkDataTask>::remove<WebKit::NetworkDataTask>(v4 + 40, this);
      v5 = *(v4 + 16);
      if (!v5)
      {
        __break(0xC471u);
        return;
      }

      *(v4 + 16) = v5 - 1;
    }
  }

  v6 = *(this + 66);
  *(this + 66) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  WebCore::ResourceRequest::~ResourceRequest((this + 328));
  WebCore::ResourceRequest::~ResourceRequest((this + 128));
  v8 = *(this + 15);
  *(this + 15) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  v9 = *(this + 14);
  *(this + 14) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v7);
  }

  v10 = *(this + 12);
  *(this + 12) = 0;
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(this + 10);
  *(this + 10) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v7);
  }

  v12 = *(this + 9);
  *(this + 9) = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v7);
  }

  v13 = *(this + 8);
  *(this + 8) = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v7);
  }

  v14 = *(this + 7);
  *(this + 7) = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v7);
  }

  v15 = *(this + 6);
  *(this + 6) = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v7);
  }

  v16 = *(this + 4);
  *(this + 4) = 0;
  if (v16 && atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v16);
    WTF::fastFree(v16, v7);
  }

  v17 = *(this + 3);
  *(this + 3) = 0;
  if (v17 && atomic_fetch_add(v17, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v17);
    WTF::fastFree(v17, v7);
  }

  v18 = *(this + 2);
  *(this + 2) = 0;
  if (v18)
  {
    if (atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v18);
      WTF::fastFree(v18, v7);
    }
  }
}

uint64_t WebKit::NetworkDataTask::didReceiveInformationalResponse(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      (**v3)(v3);
      (*(*v3 + 48))(v3, a2);
      v5 = *(*v3 + 8);

      return v5(v3);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::NetworkDataTask::didReceiveResponse(uint64_t a1, WebCore::ResourceResponseBase *this, uint64_t a3, uint64_t a4, WebCore::IPAddress *a5, uint64_t *a6)
{
  v12 = WebCore::ResourceResponseBase::url(this);
  v13 = *v12;
  if (*v12)
  {
    atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
  }

  v65 = v13;
  v14 = *(v12 + 24);
  v66 = *(v12 + 8);
  v67 = v14;
  if (WebCore::ResourceResponseBase::isHTTP09(this))
  {
    if ((WTF::URL::port(&v65) & 0x10000) != 0)
    {
      WTF::URL::protocol(&v65);
      if ((WTF::isDefaultPortForProtocol() & 1) == 0)
      {
        v25 = *a6;
        *a6 = 0;
        (*(*v25 + 16))(v25, 2);
        (*(*v25 + 8))(v25);
        (*(*a1 + 16))(a1);
        v26 = *(a1 + 24);
        if (v26)
        {
          v27 = *(v26 + 8);
          if (v27)
          {
            (**v27)(v27);
            WTF::URL::stringCenterEllipsizedToLength(&v65);
            WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("Cancelled load from '", 22, &v64, "' because it is using HTTP/0.9.", 32, v45);
            v56[0] = 0;
            v28 = v65;
            if (v65)
            {
              atomic_fetch_add_explicit(v65, 2u, memory_order_relaxed);
            }

            v56[1] = v28;
            v57 = v66;
            v58 = v67;
            v29 = v45[0];
            if (v45[0])
            {
              atomic_fetch_add_explicit(v45[0], 2u, memory_order_relaxed);
            }

            v59 = v29;
            v60 = 0;
            v61 = 1;
            v62 = 0;
            v63 = 1;
            WebKit::NetworkDataTaskClient::didCompleteWithError(v27, v56);
            WebCore::ResourceError::~ResourceError(v56, v30);
            v32 = v45[0];
            v45[0] = 0;
            if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v32, v31);
            }

            v33 = v64;
            v64 = 0;
            if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v33, v31);
            }

            (*(*v27 + 8))(v27);
          }
        }

        goto LABEL_21;
      }
    }
  }

  if (WebCore::ResourceRequestBase::isNull((a1 + 328)))
  {
    v15 = (a1 + 128);
  }

  else
  {
    v15 = (a1 + 328);
  }

  WebCore::ResourceRequest::ResourceRequest(v56, v15);
  PartyForCookies = WebCore::ResourceRequestBase::firstPartyForCookies(v56);
  v17 = *PartyForCookies;
  if (*PartyForCookies)
  {
    atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
  }

  v53 = v17;
  v18 = *(PartyForCookies + 24);
  v54 = *(PartyForCookies + 8);
  v55 = v18;
  if ((*(a1 + 545) & 1) == 0)
  {
    if (WTF::URL::protocolIs())
    {
      WTF::URL::host(&v53);
      if ((WebCore::SecurityOrigin::isLocalhostAddress() & 1) == 0)
      {
        if (WTF::URL::protocolIs())
        {
          WTF::URL::host(&v65);
          if (WebCore::SecurityOrigin::isLocalhostAddress())
          {
            if (*(a5 + 20) == 1 && (WebCore::IPAddress::isLoopback(a5) & 1) == 0)
            {
              v34 = *a6;
              *a6 = 0;
              (*(*v34 + 16))(v34, 2);
              (*(*v34 + 8))(v34);
              (*(*a1 + 16))(a1);
              v35 = *(a1 + 24);
              if (!v35)
              {
                goto LABEL_19;
              }

              v20 = *(v35 + 8);
              if (!v20)
              {
                goto LABEL_19;
              }

              (**v20)(v20);
              WTF::URL::stringCenterEllipsizedToLength(&v65);
              WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("Cancelled load from '", 22, &v43, "' because localhost did not resolve to a loopback address.", 59, &v44);
              v45[0] = 0;
              v36 = v65;
              if (v65)
              {
                atomic_fetch_add_explicit(v65, 2u, memory_order_relaxed);
              }

              v45[1] = v36;
              v46 = v66;
              v47 = v67;
              v37 = v44;
              if (v44)
              {
                atomic_fetch_add_explicit(v44, 2u, memory_order_relaxed);
              }

              v48 = v37;
              v49 = 0;
              v50 = 1;
              v51 = 0;
              v52 = 1;
              WebKit::NetworkDataTaskClient::didCompleteWithError(v20, v45);
              WebCore::ResourceError::~ResourceError(v45, v38);
              v40 = v44;
              v44 = 0;
              if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v40, v39);
              }

              v41 = v43;
              v43 = 0;
              if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v41, v39);
              }

              goto LABEL_18;
            }
          }
        }
      }
    }
  }

  *(this + 120) = *(this + 120) & 0xC3FF | 0x400;
  if (a3)
  {
    *(this + 138) |= 0x10u;
  }

  if (a4)
  {
    *(this + 138) |= 0x20u;
  }

  v19 = *(a1 + 24);
  if (v19)
  {
    v20 = *(v19 + 8);
    if (v20)
    {
      (**v20)(v20);
      (*(*v20 + 56))(v20, this, a3, a4, a6);
LABEL_18:
      (*(*v20 + 8))(v20);
      goto LABEL_19;
    }
  }

  v42 = *a6;
  *a6 = 0;
  (*(*v42 + 16))(v42, 2);
  (*(*v42 + 8))(v42);
LABEL_19:
  v22 = v53;
  v53 = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v21);
  }

  WebCore::ResourceRequest::~ResourceRequest(v56);
LABEL_21:
  result = v65;
  v65 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v23);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::NetworkDataTaskClient::didCompleteWithError(WebKit::NetworkDataTaskClient *this, const WebCore::ResourceError *a2)
{
  WebCore::NetworkLoadMetrics::NetworkLoadMetrics(v7);
  (*(*this + 72))(this, a2, v7);
  v5 = v9;
  v9 = 0;
  if (v5)
  {
    WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v5, v4);
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

uint64_t WebKit::NetworkDataTask::shouldCaptureExtraNetworkLoadMetrics(WebKit::NetworkDataTask *this)
{
  v1 = *(this + 3);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8);
  if (!v2)
  {
    return 0;
  }

  (**v2)(v2);
  v3 = (*(*v2 + 120))(v2);
  (*(*v2 + 8))(v2);
  return v3;
}

void WebKit::NetworkDataTask::description(atomic_uint **a1@<X8>)
{
  v2 = *MEMORY[0x1E696EBA8];
  if (*MEMORY[0x1E696EBA8])
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a1 = v2;
}

uint64_t WebKit::NetworkDataTask::setH2PingCallback(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  WebCore::internalError();
  v18 = v12;
  v17 = v11;
  v15[0] = *v7;
  v15[1] = v8;
  v15[2] = v9;
  v16 = v10;
  v19 = cf;
  v20 = v14;
  v21 = 1;
  v4 = *a3;
  *a3 = 0;
  (*(*v4 + 16))(v4, v15);
  (*(*v4 + 8))(v4);
  std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(v15, v5);
  return 0;
}

uint64_t WebKit::NetworkDataTask::restrictRequestReferrerToOriginIfNeeded(uint64_t this, WebCore::ResourceRequest *a2)
{
  v2 = *(this + 16);
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    goto LABEL_10;
  }

  ++*(v3 + 16);
  if ((*(v3 + 24) < -1 || *(v3 + 72)) && *(v3 + 97) == 1)
  {
    this = WebCore::ResourceRequestBase::isThirdParty(a2);
    if (this)
    {
      this = WebCore::ResourceRequestBase::setExistingHTTPReferrerToOriginString(a2);
    }
  }

  v5 = *(v3 + 16);
  if (!v5)
  {
LABEL_10:
    __break(0xC471u);
    JUMPOUT(0x19DC59C34);
  }

  *(v3 + 16) = v5 - 1;
  return this;
}

uint64_t WebKit::NetworkDataTask::attributedBundleIdentifier@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, atomic_uint **a3@<X8>)
{
  v3 = *(result + 16);
  if (v3 && (v4 = *(v3 + 8)) != 0)
  {
    ++*(v4 + 16);
    v6 = a2;
    result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((v4 + 1072), &v6, a3);
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

  else
  {
    *a3 = 0;
  }

  return result;
}

unsigned int *WebKit::NetworkDataTask::setPendingDownload(WebKit::NetworkDataTask *this, WebKit::PendingDownload *a2)
{
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 2, a2);
  v5 = *(a2 + 1);
  atomic_fetch_add(v5, 1u);
  result = *(this + 4);
  *(this + 4) = v5;
  if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result);

    return WTF::fastFree(result, v4);
  }

  return result;
}

uint64_t WebKit::NetworkDataTaskBlob::NetworkDataTaskBlob(uint64_t a1, uint64_t a2, uint64_t a3, WebCore::ResourceRequestBase *a4, uint64_t a5, uint64_t *a6)
{
  v45 = *MEMORY[0x1E69E9840];
  v11 = WebKit::NetworkDataTask::NetworkDataTask(a1, a2, a3, a4, 0, 0, 0);
  v13 = (v11 + 69);
  *v11 = &unk_1F1100E20;
  v11[69] = &unk_1F1100EA8;
  v11[70] = 0;
  if (*MEMORY[0x1E69E2558])
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E2558], v12);
  }

  else
  {
    NonCompact = WebCore::AsyncFileStream::operatorNewSlow(8);
  }

  *(a1 + 568) = WebCore::AsyncFileStream::AsyncFileStream(NonCompact, v13);
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 1;
  *(a1 + 612) = 0;
  *(a1 + 616) = -1;
  *(a1 + 624) = -1;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 657) = 0u;
  WTF::FileSystemImpl::FileHandle::FileHandle((a1 + 676));
  WTF::Vector<WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1 + 680, a5);
  *(a1 + 696) = 0;
  v15 = *(a2 + 32);
  atomic_fetch_add((v15 + 144), 1u);
  *(a1 + 704) = v15;
  v16 = *(a1 + 692);
  if (v16)
  {
    v17 = *(a1 + 680);
    v18 = 8 * v16;
    do
    {
      v19 = *v17++;
      (*(*v19 + 16))(v19);
      v18 -= 8;
    }

    while (v18);
  }

  v20 = *a6;
  if (*a6)
  {
    LOBYTE(v41[0]) = 0;
    v43 = -1;
    LODWORD(v21) = *(v20 + 32);
    if (*(v20 + 32))
    {
      if (v21 == 255)
      {
        goto LABEL_14;
      }

      *v41 = *(v20 + 8);
    }

    else
    {
      v22 = *(v20 + 8);
      if (v22)
      {
        atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
      }

      v41[0] = v22;
      v21 = *(v20 + 16);
      if (v21)
      {
        atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
      }

      v41[1] = v21;
      v42 = *(v20 + 24);
      LOBYTE(v21) = *(v20 + 32);
    }

    v43 = v21;
LABEL_14:
    v44 = 1;
    goto LABEL_15;
  }

  LOBYTE(v41[0]) = 0;
  v44 = 0;
  v29 = *WebCore::ResourceRequestBase::firstPartyForCookies(a4);
  if (v29 && *(v29 + 4) && (*(WebCore::ResourceRequestBase::firstPartyForCookies(a4) + 8) & 1) != 0)
  {
    v30 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v38[0]) = 0;
      _os_log_impl(&dword_19D52D000, v30, OS_LOG_TYPE_DEFAULT, "Got request for blob without topOrigin but request specifies firstPartyForCookies", v38, 2u);
    }

    PartyForCookies = WebCore::ResourceRequestBase::firstPartyForCookies(a4);
    WebCore::SecurityOriginData::fromURLWithoutStrictOpaqueness(v38, PartyForCookies, v32);
    if (v44 == 1)
    {
      WebCore::SecurityOriginData::operator=(v41);
      v34 = v40;
      goto LABEL_39;
    }

    LOBYTE(v41[0]) = 0;
    v43 = -1;
    v34 = v40;
    if (v40)
    {
      if (v40 == 255)
      {
        goto LABEL_38;
      }

      *v41 = *v38;
    }

    else
    {
      v35 = *v38;
      v38[0] = 0;
      v38[1] = 0;
      *v41 = v35;
      v42 = v39;
    }

    v43 = v40;
LABEL_38:
    v44 = 1;
LABEL_39:
    if (!v34)
    {
      v36 = v38[1];
      v38[1] = 0;
      if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v36, v33);
      }

      v37 = v38[0];
      v38[0] = 0;
      if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v37, v33);
      }
    }
  }

LABEL_15:
  WebCore::ResourceRequestBase::url(a4);
  v23 = WebCore::BlobRegistryImpl::blobDataFromURL();
  if (v23)
  {
    atomic_fetch_add(v23, 1u);
  }

  v25 = *(a1 + 560);
  *(a1 + 560) = v23;
  if (v25)
  {
    WTF::ThreadSafeRefCounted<WebCore::BlobData,(WTF::DestructionThread)0>::deref(v25, v24);
  }

  if (v44 == 1 && !v43)
  {
    v26 = v41[1];
    v41[1] = 0;
    if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v26, v24);
    }

    v27 = v41[0];
    v41[0] = 0;
    if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v27, v24);
    }
  }

  return a1;
}

void WebKit::NetworkDataTaskBlob::~NetworkDataTaskBlob(WebKit::NetworkDataTaskBlob *this)
{
  v2 = *(this + 173);
  if (v2)
  {
    v3 = *(this + 85);
    v4 = 8 * v2;
    do
    {
      v5 = *v3++;
      (*(*v5 + 24))(v5);
      v4 -= 8;
    }

    while (v4);
  }

  WebKit::NetworkDataTaskBlob::clearStream(this);
  v7 = *(this + 88);
  *(this + 88) = 0;
  if (v7 && atomic_fetch_add(v7 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7 + 36);
    (*(*v7 + 24))(v7);
  }

  v8 = *(this + 87);
  *(this + 87) = 0;
  if (v8)
  {
    WTF::RefCounted<WebKit::SandboxExtension>::deref(v8);
  }

  WTF::Vector<WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 680, v6);
  WTF::FileSystemImpl::FileHandle::~FileHandle((this + 676));
  v10 = *(this + 74);
  if (v10)
  {
    *(this + 74) = 0;
    *(this + 150) = 0;
    WTF::fastFree(v10, v9);
  }

  v11 = *(this + 72);
  if (v11)
  {
    *(this + 72) = 0;
    *(this + 146) = 0;
    WTF::fastFree(v11, v9);
  }

  std::unique_ptr<WebCore::AsyncFileStream>::reset[abi:sn200100](this + 71);
  v13 = *(this + 70);
  *(this + 70) = 0;
  if (v13)
  {
    WTF::ThreadSafeRefCounted<WebCore::BlobData,(WTF::DestructionThread)0>::deref(v13, v12);
  }

  WebKit::NetworkDataTask::~NetworkDataTask(this, v12);
}

{
  WebKit::NetworkDataTaskBlob::~NetworkDataTaskBlob(this);

  WTF::fastFree(v1, v2);
}

uint64_t WebKit::NetworkDataTaskBlob::clearStream(uint64_t this)
{
  if (*(this + 608) != 3)
  {
    v2 = this;
    *(this + 608) = 3;
    if (*(this + 672) == 1)
    {
      *(this + 672) = 0;
      WebCore::AsyncFileStream::close(*(this + 568));
    }

    return std::unique_ptr<WebCore::AsyncFileStream>::reset[abi:sn200100]((v2 + 568));
  }

  return this;
}

void non-virtual thunk toWebKit::NetworkDataTaskBlob::~NetworkDataTaskBlob(WebKit::NetworkDataTaskBlob *this)
{
  WebKit::NetworkDataTaskBlob::~NetworkDataTaskBlob((this - 552));
}

{
  WebKit::NetworkDataTaskBlob::~NetworkDataTaskBlob((this - 552));

  WTF::fastFree(v1, v2);
}

_DWORD *WebKit::NetworkDataTaskBlob::resume(_DWORD *this)
{
  if ((this[152] & 0xFFFFFFFE) != 2)
  {
    v1 = this;
    this[152] = 0;
    WTF::RunLoop::mainSingleton(this);
    while (1)
    {
      v2 = *(v1 + 1);
      if ((v2 & 1) == 0)
      {
        break;
      }

      v3 = *(v1 + 1);
      atomic_compare_exchange_strong_explicit(v1 + 1, &v3, v2 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v3 == v2)
      {
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v1 + 1));
LABEL_7:
    v4 = WTF::fastMalloc(0x18);
    *v4 = &unk_1F1101220;
    v4[1] = v1;
    v4[2] = v1;
    v5 = v4;
    WTF::RunLoop::dispatch();
    this = v5;
    if (v5)
    {
      return (*(*v5 + 8))(v5);
    }
  }

  return this;
}

uint64_t WebKit::NetworkDataTaskBlob::cancel(uint64_t this)
{
  if ((*(this + 608) & 0xFFFFFFFE) != 2)
  {
    v1 = this;
    *(this + 608) = 2;
    if (*(this + 672) == 1)
    {
      *(this + 672) = 0;
      this = WebCore::AsyncFileStream::close(*(this + 568));
    }

    if (*(v1 + 5))
    {

      return WebKit::NetworkDataTaskBlob::cleanDownloadFiles(v1);
    }
  }

  return this;
}

uint64_t WebKit::NetworkDataTaskBlob::cleanDownloadFiles(WebKit::NetworkDataTaskBlob *this)
{
  WTF::FileSystemImpl::FileHandle::FileHandle(v4);
  WTF::FileSystemImpl::FileHandle::operator=();
  WTF::FileSystemImpl::FileHandle::~FileHandle(v4);
  return WTF::FileSystemImpl::deleteFile((this + 120), v2);
}

uint64_t WebKit::NetworkDataTaskBlob::invalidateAndCancel(WebKit::NetworkDataTaskBlob *this)
{
  WebKit::NetworkDataTaskBlob::cancel(this);

  return WebKit::NetworkDataTaskBlob::clearStream(this);
}

atomic_ullong *WebKit::NetworkDataTaskBlob::getSizeForNext(atomic_ullong *this)
{
  v1 = this;
  v2 = *(this + 166);
  v3 = this[70];
  v4 = *(v3 + 108);
  if (v4 > v2)
  {
    v5 = (*(v3 + 96) + 40 * v2);
    if (*v5 == 1)
    {
      v17 = *(v5 + 2);
      if (v17)
      {
        ++*(v17 + 2);
      }

      WebCore::BlobDataFileReference::path(v17);
      v18 = *(v5 + 2);
      if (v18)
      {
        ++*(v18 + 2);
        WebCore::BlobDataFileReference::expectedModificationTime(v18);
        this = WebCore::AsyncFileStream::getSize();
        if (*(v18 + 2) == 1)
        {
          this = (*(*v18 + 8))(v18);
        }

        else
        {
          --*(v18 + 2);
        }
      }

      else
      {
        WebCore::BlobDataFileReference::expectedModificationTime(0);
        this = WebCore::AsyncFileStream::getSize();
      }

      if (v17)
      {
        if (*(v17 + 2) == 1)
        {
          v45 = *(*v17 + 8);

          return v45(v17);
        }

        else
        {
          --*(v17 + 2);
        }
      }
    }

    else if (!*v5)
    {
      v6 = WebCore::BlobDataItem::length(v5);

      return WebKit::NetworkDataTaskBlob::didGetSize(v1, v6);
    }

    return this;
  }

  if (*(this + 612) != 1)
  {
    goto LABEL_31;
  }

  v7 = this[77];
  v8 = this[79];
  if (v7 == -1)
  {
    v9 = this + 78;
    v7 = v8 - this[78];
    this[77] = v7;
  }

  else
  {
    if (v7 >= v8)
    {

      return WebKit::NetworkDataTaskBlob::didFail(this, 3);
    }

    v9 = this + 78;
    v10 = this[78];
    if (v10 != -1 && v10 < v8)
    {
      if (v4)
      {
        goto LABEL_13;
      }

      goto LABEL_28;
    }
  }

  v10 = v8 - 1;
  *v9 = v8 - 1;
  if (!v4)
  {
LABEL_28:
    LODWORD(v11) = 0;
    v13 = v7;
LABEL_29:
    *(this + 167) = v11;
    this[82] = v13;
    v19 = v10 - v7 + 1;
    if (this[81] > v19)
    {
      this[81] = v19;
    }

LABEL_31:
    v20 = this + 1;
    while (1)
    {
      v21 = *v20;
      if ((*v20 & 1) == 0)
      {
        break;
      }

      v22 = *v20;
      atomic_compare_exchange_strong_explicit(v20, &v22, v21 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v22 == v21)
      {
        goto LABEL_36;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v20);
LABEL_36:
    v23 = WebCore::ResourceRequestBase::url((v1 + 128));
    v25 = *v23;
    if (*v23)
    {
      atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
    }

    v47 = v25;
    v26 = *(v23 + 24);
    v48 = *(v23 + 8);
    v49 = v26;
    WebCore::extractMIMETypeFromMediaType(&v46, (*(v1 + 560) + 8), v24);
    WebCore::ResourceResponseBase::ResourceResponseBase();
    cf = 0;
    v53 = 0;
    v51 = v51 & 0xF1 | 4;
    v28 = v46;
    v46 = 0;
    if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v28, v27);
    }

    v29 = v47;
    v47 = 0;
    if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v29, v27);
    }

    WebCore::ResourceResponseBase::setHTTPStatusCode(v50);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WebCore::ResourceResponseBase::setHTTPStatusText();
    v31 = v47;
    v47 = 0;
    if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v31, v30);
    }

    WebCore::ResourceResponseBase::setHTTPHeaderField();
    WebCore::extractCharsetFromMediaType();
    if ((v32 & 0x100000000) != 0)
    {
      WTF::String::String();
    }

    else
    {
      WTF::String::String();
    }

    WebCore::ResourceResponseBase::setTextEncodingName();
    v34 = v47;
    v47 = 0;
    if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v34, v33);
    }

    WTF::String::number(*(v1 + 648));
    WebCore::ResourceResponseBase::setHTTPHeaderField();
    v36 = v47;
    v47 = 0;
    if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v36, v35);
    }

    WebCore::addPolicyContainerHeaders();
    if (*(v1 + 612) == 1)
    {
      WebCore::ParsedContentRange::ParsedContentRange(&v47);
      WebCore::ParsedContentRange::headerValue(&v46, &v47);
      WebCore::ResourceResponseBase::setHTTPHeaderField();
      v38 = v46;
      v46 = 0;
      if (v38)
      {
        if (atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v38, v37);
        }
      }
    }

    LOBYTE(v47) = 0;
    BYTE12(v48) = 0;
    while (1)
    {
      v39 = *v20;
      if ((*v20 & 1) == 0)
      {
        break;
      }

      v40 = *v20;
      atomic_compare_exchange_strong_explicit(v20, &v40, v39 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v40 == v39)
      {
        goto LABEL_64;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v20);
LABEL_64:
    v41 = WTF::fastMalloc(0x18);
    *v41 = &unk_1F1101248;
    *(v41 + 1) = v1;
    *(v41 + 2) = v1;
    v46 = v41;
    WebKit::NetworkDataTask::didReceiveResponse(v1, v50, 0, 0, &v47, &v46);
    v43 = v46;
    v46 = 0;
    if (v43)
    {
      (*(*v43 + 8))(v43);
    }

    v44 = cf;
    cf = 0;
    if (v44)
    {
      CFRelease(v44);
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(v50, v42);
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v1 + 8));
  }

LABEL_13:
  v11 = 0;
  v12 = *(this + 151);
  v13 = v7;
  while (v12 != v11)
  {
    v14 = *(this[74] + 8 * v11);
    v15 = __OFSUB__(v13, v14);
    v16 = v13 - v14;
    if (v16 < 0 != v15)
    {
      goto LABEL_29;
    }

    ++v11;
    v13 = v16;
    if (v4 == v11)
    {
      LODWORD(v11) = v4;
      v13 = v16;
      goto LABEL_29;
    }
  }

  *(this + 167) = v12;
  __break(0xC471u);
  return this;
}

atomic_ullong *WebKit::NetworkDataTaskBlob::didFail(WebKit::NetworkDataTaskBlob *this, int a2)
{
  v4 = (this + 8);
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
  if (!*(this + 5))
  {
    WebKit::NetworkDataTaskBlob::clearStream(this);
    v16 = *(this + 3);
    if (v16)
    {
      v17 = *(v16 + 8);
      if (v17)
      {
        (**v17)(v17);
      }
    }

    else
    {
      v17 = 0;
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v18 = v28;
    v19 = WebCore::ResourceRequestBase::url((this + 128));
    if (v28)
    {
      atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
    }

    v20 = *v19;
    if (*v19)
    {
      atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
    }

    v29 = v20;
    v21 = *(v19 + 24);
    v30 = *(v19 + 8);
    v31 = v21;
    v32 = 0;
    v33 = a2;
    v34 = 1;
    cf = 0;
    v36 = 1;
    WebKit::NetworkDataTaskClient::didCompleteWithError(v17, &v28);
    v23 = cf;
    cf = 0;
    if (v23)
    {
      CFRelease(v23);
    }

    v24 = v32;
    v32 = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v22);
    }

    v25 = v29;
    v29 = 0;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v22);
    }

    v26 = v28;
    v28 = 0;
    if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v26, v22);
      if (v18)
      {
LABEL_42:
        if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v18, v22);
        }
      }
    }

    else if (v18)
    {
      goto LABEL_42;
    }

    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref(v4);
  }

  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v7 = v28;
  v8 = WebCore::ResourceRequestBase::url((this + 128));
  if (v28)
  {
    atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
  }

  v9 = *v8;
  if (*v8)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  v29 = v9;
  v10 = *(v8 + 24);
  v30 = *(v8 + 8);
  v31 = v10;
  v32 = 0;
  v33 = a2;
  v34 = 1;
  cf = 0;
  v36 = 1;
  WebKit::NetworkDataTaskBlob::didFailDownload(this, &v28);
  v12 = cf;
  cf = 0;
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = v32;
  v32 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v11);
  }

  v14 = v29;
  v29 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v11);
  }

  v15 = v28;
  v28 = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v11);
    if (!v7)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref(v4);
    }
  }

  else if (!v7)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref(v4);
  }

  if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v11);
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref(v4);
}

atomic_ullong *WebKit::NetworkDataTaskBlob::didGetSize(atomic_ullong *this, uint64_t a2)
{
  v3 = this;
  v13 = a2;
  v4 = this + 1;
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

  this = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_6:
  if ((*(v3 + 608) & 0xFFFFFFFE) == 2 || ((v7 = *(v3 + 24)) == 0 || !*(v7 + 8)) && !*(v3 + 40))
  {
    WebKit::NetworkDataTaskBlob::clearStream(v3);
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref(v4);
  }

  if (a2 == -1)
  {
    WebKit::NetworkDataTaskBlob::didFail(v3, 1);
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref(v4);
  }

  v8 = *(v3 + 560);
  v9 = *(v3 + 664);
  if (*(v8 + 108) > v9)
  {
    v10 = WebCore::BlobDataItem::length((*(v8 + 96) + 40 * v9));
    v13 = v10;
    v11 = *(v3 + 604);
    if (v11 == *(v3 + 600))
    {
      v12 = WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v3 + 592, v11 + 1, &v13);
      v11 = *(v3 + 604);
      *(*(v3 + 592) + 8 * v11) = *v12;
      v10 = v13;
    }

    else
    {
      *(*(v3 + 592) + 8 * v11) = v10;
    }

    *(v3 + 604) = v11 + 1;
    *(v3 + 632) += v10;
    *(v3 + 648) += v10;
    ++*(v3 + 664);
    WebKit::NetworkDataTaskBlob::getSizeForNext(v3);
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref(v4);
  }

  __break(0xC471u);
  return this;
}

WTF::StringImpl *WebKit::NetworkDataTaskBlob::read(WTF::StringImpl *this, void *a2, uint64_t a3)
{
  v3 = this;
  if (*(this + 81))
  {
    do
    {
      while (1)
      {
        v4 = *(v3 + 668);
        v5 = *(v3 + 560);
        if (*(v5 + 108) <= v4)
        {
          goto LABEL_20;
        }

        v6 = *(v5 + 96) + 40 * v4;
        if (*v6)
        {
          break;
        }

        v7 = WebCore::BlobDataItem::length(v6);
        if (v7 - *(v3 + 656) >= *(v3 + 648))
        {
          v8 = *(v3 + 648);
        }

        else
        {
          v8 = v7 - *(v3 + 656);
        }

        v9 = *(v6 + 8);
        if (v9)
        {
          atomic_fetch_add(v9, 1u);
        }

        v10 = WebCore::DataSegment::span(v9);
        v12 = *(v3 + 656) + *(v6 + 24);
        if (v11 < v12)
        {
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        if (v8 == -1)
        {
          v8 = v11 - v12;
        }

        else if (v11 - v12 < v8)
        {
          goto LABEL_56;
        }

        *(v3 + 656) = 0;
        this = WebKit::NetworkDataTaskBlob::consumeData(v3, v10 + v12, v8);
        v13 = this;
        if (v9)
        {
          this = WTF::ThreadSafeRefCounted<WebCore::DataSegment,(WTF::DestructionThread)0>::deref(v9, a2);
        }

        if (!v13)
        {
          return this;
        }

        if (!*(v3 + 648))
        {
          goto LABEL_20;
        }
      }
    }

    while (*v6 != 1);
    if (*(v3 + 672) == 1)
    {
      this = *(v3 + 568);
      a2 = *(v3 + 576);
      a3 = *(v3 + 588);

      return MEMORY[0x1EEE55CC0](this, a2, a3);
    }

    if (*(v3 + 604) <= v4)
    {
      __break(0xC471u);
      return MEMORY[0x1EEE55CC0](this, a2, a3);
    }

    v24 = *(v3 + 568);
    v25 = *(v6 + 16);
    if (v25)
    {
      ++*(v25 + 2);
      v26 = WebCore::BlobDataFileReference::path(v25);
      this = WebCore::AsyncFileStream::openForRead(v24, v26);
      if (*(v25 + 2) == 1)
      {
        this = (*(*v25 + 8))(v25);
      }

      else
      {
        --*(v25 + 2);
      }
    }

    else
    {
      v27 = WebCore::BlobDataFileReference::path(0);
      this = WebCore::AsyncFileStream::openForRead(v24, v27);
    }

    *(v3 + 672) = 1;
    *(v3 + 656) = 0;
  }

  else
  {
LABEL_20:
    if (*(v3 + 676) == -1)
    {
      WebKit::NetworkDataTaskBlob::clearStream(v3);
      v18 = *(v3 + 24);
      if (v18)
      {
        v19 = *(v18 + 8);
        if (v19)
        {
          (**v19)(v19);
        }
      }

      else
      {
        v19 = 0;
      }

      v28 = 0;
      v29 = 0;
      WTF::URL::invalidate(&v29);
      cf = 0;
      v30[0] = 0;
      *(v30 + 6) = 0;
      v32 = 1;
      WebKit::NetworkDataTaskClient::didCompleteWithError(v19, &v28);
      v21 = cf;
      cf = 0;
      if (v21)
      {
        CFRelease(v21);
      }

      v22 = v30[0];
      v30[0] = 0;
      if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v20);
      }

      v23 = v29;
      v29 = 0;
      if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v20);
      }

      this = v28;
      v28 = 0;
      if (this && atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        this = WTF::StringImpl::destroy(this, v20);
      }

      if (v19)
      {
        return (*(*v19 + 8))(v19);
      }
    }

    else
    {
      WTF::FileSystemImpl::FileHandle::FileHandle(&v28);
      WTF::FileSystemImpl::FileHandle::operator=();
      WTF::FileSystemImpl::FileHandle::~FileHandle(&v28);
      WebKit::NetworkDataTaskBlob::clearStream(v3);
      v14 = *(v3 + 704);
      ++*(v14 + 184);
      if (!*(v3 + 40))
      {
        __break(0xC471u);
        JUMPOUT(0x19DC5B39CLL);
      }

      v28 = *(v3 + 40);
      v15 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((v14 + 216), &v28);
      v6 = v15;
      if (v15)
      {
        ++*(v15 + 16);
      }

      v16 = *(v14 + 184);
      if (!v16)
      {
        __break(0xC471u);
        JUMPOUT(0x19DC5B3BCLL);
      }

      *(v14 + 184) = v16 - 1;
      v17 = *(v3 + 696);
      if (v17)
      {
        *(v3 + 696) = 0;
        v10 = *(v15 + 64);
        *(v6 + 64) = v17;
        if (v10)
        {
LABEL_57:
          WTF::RefCounted<WebKit::SandboxExtension>::deref(v10);
        }

        WebKit::Download::didFinish(v6);
      }

      else
      {
        this = WebKit::Download::didFinish(v15);
        if (!v6)
        {
          return this;
        }
      }

      return WTF::RefCounted<WebKit::Download>::deref((v6 + 16));
    }
  }

  return this;
}

uint64_t WebKit::NetworkDataTaskBlob::consumeData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 648) -= a3;
  if (!a3)
  {
    goto LABEL_18;
  }

  if (*(a1 + 676) == -1)
  {
    v11 = *(a1 + 24);
    if (v11)
    {
      v12 = *(v11 + 8);
      if (v12)
      {
        (**v12)(v12);
      }
    }

    else
    {
      v12 = 0;
    }

    WebCore::SharedBuffer::create<std::span<unsigned char const,18446744073709551615ul> &>(&v21);
    (*(*v12 + 64))(v12, v21);
    v13 = v21;
    v21 = 0;
    if (v13 && atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v13 + 2);
      (*(*v13 + 8))(v13);
    }

    (*(*v12 + 8))(v12);
LABEL_18:
    if (*(a1 + 672) == 1)
    {
      if (a3)
      {
        return 1;
      }

      *(a1 + 672) = 0;
      WebCore::AsyncFileStream::close(*(a1 + 568));
    }

    ++*(a1 + 668);
    return 1;
  }

  v5 = WTF::FileSystemImpl::FileHandle::write();
  if ((v6 & 1) != 0 && v5 == a3)
  {
    *(a1 + 640) += a3;
    v7 = *(a1 + 704);
    ++*(v7 + 184);
    if (*(a1 + 40))
    {
      v21 = *(a1 + 40);
      v8 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((v7 + 216), &v21);
      v9 = v8;
      if (v8)
      {
        ++*(v8 + 4);
      }

      v10 = *(v7 + 184);
      if (v10)
      {
        *(v7 + 184) = v10 - 1;
        WebKit::Download::didReceiveData(v8, a3, *(a1 + 640), *(a1 + 632));
        if (v9)
        {
          WTF::RefCounted<WebKit::Download>::deref(v9 + 4);
        }

        goto LABEL_18;
      }

      __break(0xC471u);
    }

    else
    {
      __break(0xC471u);
    }

    JUMPOUT(0x19DC5B678);
  }

  WebKit::cancelledError((a1 + 128), &v21);
  WebKit::NetworkDataTaskBlob::didFailDownload(a1, &v21);
  v16 = cf;
  cf = 0;
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = v23;
  v23 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v15);
  }

  v18 = v22;
  v22 = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v15);
  }

  v19 = v21;
  v21 = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v15);
  }

  return 0;
}

atomic_ullong *WebKit::NetworkDataTaskBlob::didOpen(atomic_ullong *this, void *a2, uint64_t a3)
{
  if ((this[76] & 0xFFFFFFFE) != 2 && ((v5 = this[3]) != 0 && *(v5 + 8) || this[5]))
  {
    if (a2)
    {
      v6 = this + 1;
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
          goto LABEL_17;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_17:
      WebKit::NetworkDataTaskBlob::read(this, a2, a3);

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref(this + 1);
    }

    else
    {

      return WebKit::NetworkDataTaskBlob::didFail(this, 4);
    }
  }

  else
  {

    return WebKit::NetworkDataTaskBlob::clearStream(this);
  }
}

atomic_ullong *WebKit::NetworkDataTaskBlob::didRead(atomic_ullong *this, unsigned int a2)
{
  v2 = this;
  if ((this[76] & 0xFFFFFFFE) != 2 && ((v4 = this[3]) != 0 && *(v4 + 8) || this[5]))
  {
    if ((a2 & 0x80000000) != 0)
    {

      return WebKit::NetworkDataTaskBlob::didFail(this, 4);
    }

    else
    {
      v5 = this + 1;
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
          goto LABEL_14;
        }
      }

      this = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_14:
      if (*(v2 + 147) < a2)
      {
        __break(1u);
      }

      else
      {
        if (WebKit::NetworkDataTaskBlob::consumeData(v2, v2[72], a2))
        {
          WebKit::NetworkDataTaskBlob::read(v2, v8, v9);
        }

        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref(v2 + 1);
      }
    }
  }

  else
  {

    return WebKit::NetworkDataTaskBlob::clearStream(this);
  }

  return this;
}

unsigned int *WebCore::SharedBuffer::create<std::span<unsigned char const,18446744073709551615ul> &>@<X0>(void *a1@<X8>)
{
  WebCore::FragmentedSharedBuffer::create();
  v2 = WTF::fastMalloc(0x40);
  *a1 = MEMORY[0x19EB04740](v2, &v4);
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

  return result;
}

WebKit::SandboxExtension *WebKit::NetworkDataTaskBlob::setPendingDownloadLocation(uint64_t a1, atomic_uint **a2, uint64_t *a3, int a4)
{
  v13 = 0;
  WTF::String::operator=((a1 + 120), a2);
  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v13);
  v8 = 0;
  if (*a3)
  {
    v8 = WTF::fastMalloc(0x18);
    *v8 = 1;
    v9 = *a3;
    *a3 = 0;
    *(v8 + 8) = v9;
    *(v8 + 16) = 0;
  }

  result = *(a1 + 696);
  *(a1 + 696) = v8;
  if (result)
  {
    result = WTF::RefCounted<WebKit::SandboxExtension>::deref(result);
    v8 = *(a1 + 696);
    if (!v8)
    {
LABEL_5:
      if (!a4)
      {
        return result;
      }

      goto LABEL_6;
    }
  }

  else if (!v8)
  {
    goto LABEL_5;
  }

  ++*v8;
  v12 = *(v8 + 16);
  *(v8 + 16) = v12 + 1;
  if (!v12)
  {
    WebKit::SandboxExtensionImpl::consume(*(v8 + 8));
  }

  result = WTF::RefCounted<WebKit::SandboxExtension>::deref(v8);
  if (a4)
  {
LABEL_6:
    result = WTF::FileSystemImpl::fileExists((a1 + 120), v7);
    if (result)
    {
      return WTF::FileSystemImpl::deleteFile((a1 + 120), v11);
    }
  }

  return result;
}

uint64_t WebKit::NetworkDataTaskBlob::suggestedFilename@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(this + 528);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a2 = v2;
  return this;
}

_DWORD *WebKit::NetworkDataTaskBlob::didFailDownload(WebKit::SandboxExtension **this, const WebCore::ResourceError *a2)
{
  WebKit::NetworkDataTaskBlob::clearStream(this);
  WebKit::NetworkDataTaskBlob::cleanDownloadFiles(this);
  v4 = this[87];
  this[87] = 0;
  if (v4)
  {
    v5 = *(v4 + 2) - 1;
    *(v4 + 2) = v5;
    if (!v5)
    {
      *(*(v4 + 1) + 8) = 0;
      sandbox_extension_release();
    }

    WTF::RefCounted<WebKit::SandboxExtension>::deref(v4);
  }

  v6 = this[3];
  if (v6)
  {
    v7 = *(v6 + 1);
    if (v7)
    {
      (**v7)(v7);
      WebKit::NetworkDataTaskClient::didCompleteWithError(v7, a2);
      v8 = *(*v7 + 8);

      return v8(v7);
    }
  }

  v10 = this[88];
  ++*(v10 + 46);
  if (!this[5])
  {
    __break(0xC471u);
    goto LABEL_21;
  }

  v14 = this[5];
  v11 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v10 + 27, &v14);
  v12 = v11;
  if (v11)
  {
    ++*(v11 + 16);
  }

  v13 = *(v10 + 46);
  if (!v13)
  {
    __break(0xC471u);
LABEL_21:
    JUMPOUT(0x19DC5BBD4);
  }

  *(v10 + 46) = v13 - 1;
  result = WebKit::Download::didFail(v11, a2, 0, 0);
  if (v12)
  {

    return WTF::RefCounted<WebKit::Download>::deref((v12 + 16));
  }

  return result;
}

uint64_t WebKit::NetworkLoad::NetworkLoad(uint64_t a1, uint64_t a2, __int128 *a3, WebKit::NetworkSession *a4)
{
  *(a1 + 16) = 1;
  *a1 = &unk_1F1100EF0;
  *(a1 + 8) = 0;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a2 + 8), a2);
  v8 = *(a2 + 8);
  atomic_fetch_add(v8, 1u);
  *(a1 + 24) = v8;
  v9 = *(a4 + 4);
  atomic_fetch_add((v9 + 144), 1u);
  *(a1 + 32) = v9;
  WebKit::NetworkLoadParameters::NetworkLoadParameters(a1 + 48, a3);
  *(a1 + 3312) = 0u;
  WebCore::ResourceRequest::ResourceRequest((a1 + 3328), (a1 + 96));
  WebCore::ResourceRequestBase::url((a1 + 96));
  if (WTF::URL::protocolIs())
  {
    v14 = WTF::fastMalloc(0x2C8);
    v11 = WebKit::NetworkDataTaskBlob::NetworkDataTaskBlob(v14, a4, a1, (a1 + 96), a1 + 3232, (a1 + 72));
  }

  else
  {
    v10 = WTF::fastMalloc(0x318);
    v11 = WebKit::NetworkDataTaskCocoa::NetworkDataTaskCocoa(v10, a4, a1, (a1 + 48));
  }

  v12 = *(a1 + 3312);
  *(a1 + 3312) = v11;
  if (v12)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v12 + 8));
  }

  return a1;
}

atomic_ullong *WebKit::NetworkLoad::start(atomic_ullong *this)
{
  v1 = this[414];
  if (v1)
  {
    v2 = v1 + 1;
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
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_5:
    (*(*v1 + 24))(v1);

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref(v1 + 1);
  }

  return this;
}

atomic_ullong *WebKit::NetworkLoad::startWithScheduling(atomic_ullong *this, void *a2)
{
  v2 = this[414];
  if (v2)
  {
    v3 = this;
    v4 = (v2 + 8);
    while (1)
    {
      v5 = *v4;
      if ((*v4 & 1) == 0)
      {
        break;
      }

      v15 = *v4;
      atomic_compare_exchange_strong_explicit(v4, &v15, v5 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v15 == v5)
      {
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_5:
    v6 = *(v2 + 16);
    if (v6)
    {
      v7 = *(v6 + 8);
      if (v7)
      {
        ++*(v7 + 4);
        Scheduler = WebKit::NetworkSession::networkLoadScheduler(v7, a2);
        v9 = Scheduler + 2;
        ++Scheduler[2];
        v10 = *(v7 + 4);
        if (!v10)
        {
          this = 290;
          __break(0xC471u);
          return this;
        }

        v11 = Scheduler;
        *(v7 + 4) = v10 - 1;
        WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(Scheduler, Scheduler);
        v13 = *v11;
        atomic_fetch_add(*v11, 1u);
        v14 = v3[415];
        v3[415] = v13;
        if (v14 && atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v14);
          WTF::fastFree(v14, v12);
        }

        WebKit::NetworkLoadScheduler::schedule(v11, v3);
        WTF::RefCounted<WebKit::NetworkLoadScheduler>::deref(v9);
      }
    }

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref(v4);
  }

  return this;
}

unsigned int *WebKit::NetworkLoadScheduler::schedule(WebKit::NetworkLoadScheduler *this, atomic_ullong *a2)
{
  if (WebCore::ResourceRequestBase::isTopSite((a2 + 416)))
  {

    return WebKit::NetworkLoadScheduler::scheduleMainResourceLoad(this, a2);
  }

  else
  {

    return WebKit::NetworkLoadScheduler::scheduleLoad(this, a2);
  }
}

void WebKit::NetworkLoad::~NetworkLoad(WebKit::NetworkLoad *this, void *a2)
{
  v3 = *(this + 415);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v5 = v4 + 2;
      ++v4[2];
      WebKit::NetworkLoadScheduler::unschedule(v4, this, 0);
      WTF::RefCounted<WebKit::NetworkLoadScheduler>::deref(v5);
    }
  }

  v6 = *(this + 414);
  if (v6)
  {
    v7 = (v6 + 8);
    while (1)
    {
      v8 = *v7;
      if ((*v7 & 1) == 0)
      {
        break;
      }

      v20 = *v7;
      atomic_compare_exchange_strong_explicit(v7, &v20, v8 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v20 == v8)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v7);
LABEL_8:
    v9 = *(v6 + 24);
    *(v6 + 24) = 0;
    if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v9);
      WTF::fastFree(v9, a2);
    }

    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v6 + 8));
  }

  WebCore::ResourceRequest::~ResourceRequest((this + 3328));
  v11 = *(this + 415);
  *(this + 415) = 0;
  if (v11 && atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v11);
    WTF::fastFree(v11, v10);
  }

  v12 = *(this + 414);
  *(this + 414) = 0;
  if (v12)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v12 + 8));
  }

  if (*(this + 3280) == 1)
  {
    v19 = *(this + 409);
    *(this + 409) = 0;
    if (v19)
    {
    }
  }

  WTF::Vector<WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 3232, v10);
  if (*(this + 3216) == 1)
  {
    WebKit::NavigationActionData::~NavigationActionData((this + 304), v13);
  }

  WebCore::ResourceRequest::~ResourceRequest((this + 96));
  v15 = *(this + 10);
  *(this + 10) = 0;
  if (v15)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v15, v14);
  }

  v16 = *(this + 9);
  *(this + 9) = 0;
  if (v16)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v16, v14);
  }

  v17 = *(this + 4);
  *(this + 4) = 0;
  if (v17 && atomic_fetch_add(v17 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v17 + 36);
    (*(*v17 + 24))(v17);
  }

  v18 = *(this + 3);
  *(this + 3) = 0;
  if (v18 && atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v18);
    WTF::fastFree(v18, v14);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v14);
  if (*(this + 4) != 1)
  {
    __break(0xC471u);
  }
}

{
  WebKit::NetworkLoad::~NetworkLoad(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

unsigned int *WebKit::NetworkLoadScheduler::unschedule(WebKit::NetworkLoadScheduler *this, WebKit::NetworkLoad *a2, const WTF::String **a3)
{
  if (!WebCore::ResourceRequestBase::isTopSite((a2 + 3328)))
  {
    result = WebKit::NetworkLoadScheduler::contextForLoad(this, a2);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v9 = result[3];
    v10 = result[2] + 1;
    result[2] = v10;
    if (v10 > v9)
    {
      _ZN3WTF7HashSetINS_3RefINS_18DefaultWeakPtrImplENS_12RawPtrTraitsIS2_EENS_21DefaultRefDerefTraitsIS2_EEEENS_11DefaultHashIS7_EENS_10HashTraitsIS7_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1EE8removeIfIZNS_11WeakHashSetIN6WebKit11NetworkLoadES2_LNS_32EnableWeakPtrThreadingAssertionsE1EE20removeNullReferencesEvEUlRT_E_EEbRKSL_(result, v7);
      v16 = 0;
      *(v8 + 8) = 0;
      if (*v8 && (v16 = *(*v8 - 12), v16 > 0x7FFFFFFE))
      {
        v17 = -2;
      }

      else
      {
        v17 = 2 * v16;
      }

      *(v8 + 12) = v17;
    }

    v11 = *(a2 + 1);
    if (!v11 || !*(v11 + 8))
    {
      goto LABEL_14;
    }

    v18 = *(a2 + 1);
    v12 = WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::find<WTF::HashSetTranslator<WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,(WTF::ShouldValidateKey)1,WTF::DefaultWeakPtrImpl const*>(v8, &v18);
    if (*v8)
    {
      v13 = *v8 + 8 * *(*v8 - 4);
      if (v13 == v12)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (!v12)
      {
LABEL_14:
        WTF::WeakListHashSet<WebKit::NetworkLoad,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::remove<WebKit::NetworkLoad>(v8 + 16, a2);
        result = WTF::WeakHashSet<WebKit::NetworkLoad,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::computeSize(v8, v14);
        if (result <= 1)
        {
          result = WTF::WeakListHashSet<WebKit::NetworkLoad,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::tryTakeFirst(v8 + 16);
          if (result)
          {
            v15 = result + 4;
            ++result[4];
            WebKit::NetworkLoadScheduler::HostContext::start(v8, result);

            return WTF::RefCounted<WebKit::NetworkLoad>::deref(v15);
          }
        }

        return result;
      }

      v13 = 0;
    }

    if (v13 != v12)
    {
      WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::remove(v8, v12);
    }

    goto LABEL_14;
  }

  return WebKit::NetworkLoadScheduler::unscheduleMainResourceLoad(this, a2, a3);
}

void WebKit::NetworkLoadParameters::~NetworkLoadParameters(WebKit::NetworkLoadParameters *this, void *a2)
{
  if (*(this + 3232) == 1)
  {
    v7 = *(this + 403);
    *(this + 403) = 0;
    if (v7)
    {
    }
  }

  WTF::Vector<WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 3184, a2);
  if (*(this + 3168) == 1)
  {
    WebKit::NavigationActionData::~NavigationActionData((this + 256), v3);
  }

  WebCore::ResourceRequest::~ResourceRequest((this + 48));
  v5 = *(this + 4);
  *(this + 4) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v5, v4);
  }

  v6 = *(this + 3);
  *(this + 3) = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v6, v4);
  }
}

{
  if (*(this + 3232) == 1)
  {
    v16 = *(this + 403);
    *(this + 403) = 0;
    if (v16)
    {
    }
  }

  WTF::Vector<WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 3184, a2);
  if (*(this + 3168) == 1)
  {
    WebKit::NavigationActionData::~NavigationActionData((this + 256), v3);
  }

  v4 = *(this + 30);
  *(this + 30) = 0;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 27);
  *(this + 27) = 0;
  if (v5)
  {
    WTF::RefCounted<WebCore::FormData>::deref(v5);
  }

  v6 = *(this + 26);
  *(this + 26) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v3);
  }

  v7 = *(this + 25);
  *(this + 25) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v3);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 176, v3);
  WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(this + 40, v8);
  WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(this + 144, v9);
  v11 = *(this + 17);
  *(this + 17) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v10);
  }

  v12 = *(this + 11);
  *(this + 11) = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v10);
  }

  v13 = *(this + 6);
  *(this + 6) = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v10);
  }

  v14 = *(this + 4);
  *(this + 4) = 0;
  if (v14)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v14, v10);
  }

  v15 = *(this + 3);
  *(this + 3) = 0;
  if (v15)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v15, v10);
  }
}

atomic_ullong *WebKit::NetworkLoad::cancel(atomic_ullong *this)
{
  v1 = this[414];
  if (v1)
  {
    v2 = v1 + 1;
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
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_7:
    (*(*v1 + 16))(v1);

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref(v1 + 1);
  }

  return this;
}

void WebKit::NetworkLoad::updateRequestAfterRedirection(WebKit::NetworkLoad *this, WebCore::ResourceRequest *a2)
{
  WebCore::ResourceRequest::ResourceRequest(v13, (this + 3328));
  v3 = WebCore::ResourceRequest::nsURLRequest();
  MEMORY[0x19EB06210](v20, v3);
  WebCore::ResourceRequest::updateFromDelegatePreservingOldProperties(v13, v20);
  WebCore::ResourceRequest::~ResourceRequest(v20);
  WebCore::ResourceRequestBase::RequestData::operator=(a2, v13);
  v5 = v14;
  v14 = 0;
  v6 = *(a2 + 19);
  *(a2 + 19) = v5;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  v7 = v15;
  v15 = 0;
  v8 = *(a2 + 20);
  *(a2 + 20) = v7;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v4);
  }

  v9 = v16;
  v16 = 0;
  v10 = *(a2 + 21);
  *(a2 + 21) = v9;
  if (v10)
  {
    WTF::RefCounted<WebCore::FormData>::deref(v10);
  }

  *(a2 + 22) = v17;
  *(a2 + 184) = v18;
  v11 = v19;
  v19 = 0;
  v12 = *(a2 + 24);
  *(a2 + 24) = v11;
  if (v12)
  {
    CFRelease(v12);
  }

  WebCore::ResourceRequest::~ResourceRequest(v13);
}

atomic_ullong *WebKit::NetworkLoad::reprioritizeRequest(uint64_t a1, uint64_t a2)
{
  result = WebCore::ResourceRequestBase::setPriority();
  v5 = *(a1 + 3312);
  if (v5)
  {
    v6 = v5 + 1;
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
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_5:
    (*(*v5 + 80))(v5, a2);

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref(v5 + 1);
  }

  return result;
}

uint64_t WebKit::NetworkLoad::shouldCaptureExtraNetworkLoadMetrics(WebKit::NetworkLoad *this)
{
  v1 = *(this + 3);
  if (!v1)
  {
    return 0;
  }

  result = *(v1 + 8);
  if (result)
  {
    v3 = (result + 16);
    atomic_fetch_add((result + 16), 1u);
    result = (*(*result + 120))(result);
    if (atomic_load(v3))
    {
      atomic_fetch_add(v3, 0xFFFFFFFF);
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t WebKit::NetworkLoad::isAllowedToAskUserForCredentials(WebKit::NetworkLoad *this)
{
  v1 = *(this + 3);
  if (!v1)
  {
    return 0;
  }

  result = *(v1 + 8);
  if (result)
  {
    v3 = (result + 16);
    atomic_fetch_add((result + 16), 1u);
    result = (*(*result + 40))(result);
    if (atomic_load(v3))
    {
      atomic_fetch_add(v3, 0xFFFFFFFF);
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  return result;
}

atomic_ullong *WebKit::NetworkLoad::convertTaskToDownload(void *a1, unsigned int *a2, uint64_t a3, WebCore::ResourceResponseBase *a4, uint64_t *a5)
{
  v6 = a1[414];
  if (v6)
  {
    v11 = v6 + 1;
    while (1)
    {
      v12 = *v11;
      if ((*v11 & 1) == 0)
      {
        break;
      }

      v13 = *v11;
      atomic_compare_exchange_strong_explicit(v11, &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v13 == v12)
      {
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v11);
LABEL_7:
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 2, a2);
    v15 = *(a2 + 1);
    if (v15)
    {
      atomic_fetch_add(v15, 1u);
    }

    v16 = a1[3];
    a1[3] = v15;
    if (v16 && atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v16);
      WTF::fastFree(v16, v14);
    }

    WebCore::ResourceRequestBase::operator=((a1 + 416), a3);
    v17 = *(a3 + 192);
    if (v17)
    {
      CFRetain(v17);
    }

    v18 = a1[440];
    a1[440] = v17;
    if (v18)
    {
      CFRelease(v18);
    }

    WebKit::NetworkDataTask::setPendingDownload(v6, a2);
    WebKit::NetworkProcess::findPendingDownloadLocation(a1[4], v6, a5, a4);

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref(v6 + 1);
  }

  else
  {
    v20 = *a5;
    *a5 = 0;
    (*(*v20 + 16))(v20, 2);
    v21 = *(*v20 + 8);

    return v21(v20);
  }
}

uint64_t WebKit::NetworkProcess::findPendingDownloadLocation(uint64_t a1, atomic_ullong *a2, uint64_t *a3, WebCore::ResourceResponseBase *a4)
{
  (*(*a2 + 56))(&v26, a2);
  v8 = *(a1 + 40);
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
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
  }

LABEL_6:
  atomic_fetch_add((a1 + 144), 1u);
  v11 = *a3;
  *a3 = 0;
  while (1)
  {
    v12 = a2[1];
    if ((v12 & 1) == 0)
    {
      break;
    }

    v13 = a2[1];
    atomic_compare_exchange_strong_explicit(a2 + 1, &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v13 == v12)
    {
      goto LABEL_11;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(a2[1]);
LABEL_11:
  v14 = a2[5];
  if (!v14)
  {
    __break(1u);
    goto LABEL_25;
  }

  v15 = WTF::fastMalloc(0x28);
  *v15 = &unk_1F1101EA0;
  v15[1] = a1;
  v15[2] = a1;
  v15[3] = v11;
  v15[4] = a2;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
LABEL_25:
    result = 141;
    __break(0xC471u);
    return result;
  }

  v16 = v15;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v19 = IPC::Encoder::operator new(0x238, v18);
  *v19 = 8;
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 1) = v14;
  *(v19 + 68) = 0;
  *(v19 + 70) = 0;
  *(v19 + 69) = 0;
  IPC::Encoder::encodeHeader(v19);
  v28 = v19;
  IPC::ArgumentCoder<WebCore::ResourceResponse,void>::encode(v19, a4);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v19, &v26);
  v27[0] = v16;
  v27[1] = IdentifierInternal;
  IPC::Connection::sendMessageWithAsyncReply(v8, &v28, v27, 0, 0);
  v21 = v27[0];
  v27[0] = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v22 = v28;
  v28 = 0;
  if (!v22)
  {
    if (!v8)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  IPC::Encoder::~Encoder(v22, v20);
  bmalloc::api::tzoneFree(v24, v25);
  if (v8)
  {
LABEL_17:
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v8);
  }

LABEL_18:
  result = v26;
  v26 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v20);
    }
  }

  return result;
}

atomic_ullong *WebKit::NetworkLoad::setPendingDownloadID(atomic_ullong *result, uint64_t a2)
{
  v2 = result[414];
  if (v2)
  {
    v4 = (v2 + 8);
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
    *(v2 + 40) = a2;

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v2 + 8));
  }

  return result;
}

atomic_ullong *WebKit::NetworkLoad::setPendingDownload(atomic_ullong *this, WebKit::PendingDownload *a2)
{
  v2 = this[414];
  if (v2)
  {
    v4 = v2 + 1;
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
    WebKit::NetworkDataTask::setPendingDownload(v2, a2);

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref(v2 + 1);
  }

  return this;
}

void WebKit::NetworkLoad::willPerformHTTPRedirection(uint64_t a1, uint64_t a2, CFTypeRef *this, uint64_t *a4)
{
  if ((*(*(a1 + 32) + 393) & 1) == 0)
  {
    v8 = WebCore::ResourceRequestBase::url(this);
    if (WTF::URL::protocolIsInFTPFamily(v8))
    {
      v10 = *(a1 + 3312);
      v11 = (v10 + 8);
      while (1)
      {
        v12 = *v11;
        if ((*v11 & 1) == 0)
        {
          break;
        }

        v13 = *v11;
        atomic_compare_exchange_strong_explicit(v11, &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v13 == v12)
        {
          goto LABEL_18;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v11);
LABEL_18:
      v29 = *(v10 + 24);
      *(v10 + 24) = 0;
      if (v29 && atomic_fetch_add(v29, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v29);
        WTF::fastFree(v29, v9);
      }

      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v10 + 8));
      v30 = *(a1 + 3312);
      *(a1 + 3312) = 0;
      if (v30)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v30 + 8));
      }

      WebCore::NetworkLoadMetrics::NetworkLoadMetrics(v69);
      v31 = *(MEMORY[0x1E69E26C8] + 8);
      if (v31)
      {
        if (v31 == 1)
        {
          v32 = MEMORY[0x1E696EB88];
          atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
        }

        else
        {
          WTF::StringImpl::createWithoutCopyingNonEmpty();
          v32 = v46;
        }
      }

      else
      {
        v32 = 0;
      }

      v33 = WebCore::ResourceRequestBase::url((a1 + 96));
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v34 = v46;
      if (v32)
      {
        atomic_fetch_add_explicit(v32, 2u, memory_order_relaxed);
      }

      v46 = v32;
      v35 = *v33;
      if (*v33)
      {
        atomic_fetch_add_explicit(v35, 2u, memory_order_relaxed);
      }

      v47 = v35;
      v36 = *(v33 + 8);
      v49 = *(v33 + 24);
      v48 = v36;
      if (v34)
      {
        atomic_fetch_add_explicit(v34, 2u, memory_order_relaxed);
      }

      v50 = v34;
      v51 = 0;
      v52 = 2;
      cf = 0;
      v54 = 1;
      WebKit::NetworkLoad::didCompleteWithError(a1, &v46, v69);
      v38 = cf;
      cf = 0;
      if (v38)
      {
        CFRelease(v38);
      }

      v39 = v50;
      v50 = 0;
      if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v39, v37);
      }

      v40 = v47;
      v47 = 0;
      if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v40, v37);
      }

      v41 = v46;
      v46 = 0;
      if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v41, v37);
        if (v34)
        {
LABEL_43:
          if (atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v34, v37);
          }
        }
      }

      else if (v34)
      {
        goto LABEL_43;
      }

      if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v32, v37);
      }

      if (*a4)
      {
        WebCore::ResourceRequest::ResourceRequest(&v46);
        v42 = *a4;
        *a4 = 0;
        (*(*v42 + 16))(v42, &v46);
        (*(*v42 + 8))(v42);
        WebCore::ResourceRequest::~ResourceRequest(&v46);
      }

      v43 = v71;
      v71 = 0;
      if (v43)
      {
        WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v43, v37);
      }

      v44 = v70;
      v70 = 0;
      if (v44)
      {
        if (atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v44, v37);
        }
      }

      return;
    }
  }

  v14 = *(a1 + 24);
  if (v14 && (v15 = *(v14 + 8)) != 0)
  {
    (**v15)(v15);
    *(a2 + 240) = *(a2 + 240) & 0xC3FF | 0x400;
    WTF::URL::URL(&v46, (a1 + 3328));
    WTF::URL::URL(&v49 + 8, (a1 + 3368));
    v55 = *(a1 + 3408);
    v16 = *(a1 + 3416);
    *(a1 + 3416) = 0u;
    v56 = v16;
    *&v16 = *(a1 + 3432);
    *(a1 + 3432) = 0;
    v57 = v16;
    v17 = *(a1 + 3440);
    *&v16 = *(a1 + 3448);
    *(a1 + 3440) = 0u;
    v58 = v17;
    v59 = v16;
    v18 = *(a1 + 3456);
    *&v16 = *(a1 + 3464);
    *(a1 + 3456) = 0u;
    v60 = v18;
    v61 = v16;
    LODWORD(v18) = *(a1 + 3472);
    v63 = *(a1 + 3476);
    v62 = v18;
    v19 = *(a1 + 3480);
    *(a1 + 3480) = 0;
    v64 = v19;
    v20 = *(a1 + 3496);
    *(a1 + 3488) = 0u;
    v21 = *(a1 + 3504);
    v67 = *(a1 + 3512);
    v65 = v20;
    v66 = v21;
    v22 = *(a1 + 3520);
    *(a1 + 3520) = 0;
    v68 = v22;
    *(this + 147) = HIBYTE(v62);
    WebCore::ResourceRequestBase::operator=(a1 + 3328, this);
    v23 = this[24];
    if (v23)
    {
      CFRetain(this[24]);
    }

    v24 = *(a1 + 3520);
    *(a1 + 3520) = v23;
    if (v24)
    {
      CFRelease(v24);
    }

    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
    v25 = *(a1 + 8);
    atomic_fetch_add(v25, 1u);
    v26 = *a4;
    *a4 = 0;
    v27 = WTF::fastMalloc(0x18);
    *v27 = &unk_1F1101270;
    *(v27 + 1) = v25;
    *(v27 + 2) = v26;
    v69[0] = v27;
    (*(*v15 + 56))(v15, &v46, this, a2, v69);
    v28 = v69[0];
    v69[0] = 0;
    if (v28)
    {
      (*(*v28 + 8))(v28);
    }

    WebCore::ResourceRequest::~ResourceRequest(&v46);
    (*(*v15 + 8))(v15);
  }

  else
  {
    WebCore::ResourceRequest::ResourceRequest(&v46);
    v45 = *a4;
    *a4 = 0;
    (*(*v45 + 16))(v45, &v46);
    (*(*v45 + 8))(v45);
    WebCore::ResourceRequest::~ResourceRequest(&v46);
  }
}

_DWORD *WebKit::NetworkLoad::didCompleteWithError(WebKit::NetworkLoad *this, const WebCore::ResourceError *a2, const WTF::String **a3)
{
  result = *(this + 415);
  *(this + 415) = 0;
  if (result)
  {
    v11 = *(result + 1);
    if (v11)
    {
      ++*(v11 + 2);
    }

    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      result = WTF::fastFree(result, a2);
    }

    if (v11)
    {
      WebKit::NetworkLoadScheduler::unschedule(v11, this, a3);
      result = WTF::RefCounted<WebKit::NetworkLoadScheduler>::deref(v11 + 2);
    }
  }

  v7 = *(this + 3);
  if (v7)
  {
    v8 = *(v7 + 8);
    if (v8)
    {
      (**v8)(v8);
      v9 = *v8;
      if (*(a2 + 60))
      {
        (v9[12])(v8, a2);
      }

      else
      {
        (v9[11])(v8, a3);
      }

      v10 = (*v8)[1];

      return (v10)(v8);
    }
  }

  return result;
}

uint64_t WebKit::NetworkLoad::didReceiveChallenge(uint64_t a1, WebCore::AuthenticationChallengeBase *a2, char a3, uint64_t *a4)
{
  v5 = *(a1 + 24);
  if (v5 && (v6 = *(v5 + 8)) != 0)
  {
    (**v6)(v6);
    (*(*v6 + 112))(v6, a2);
    v10 = *(WebCore::AuthenticationChallengeBase::protectionSpace(a2) + 21);
    if (WebKit::NetworkLoad::isAllowedToAskUserForCredentials(a1) & 1) != 0 || (v10 - 7) < 2 || (v11 = WebCore::AuthenticationChallengeBase::protectionSpace(a2), (WebCore::ProtectionSpaceBase::isProxy(v11)))
    {
      v12 = *(*(a1 + 3312) + 32);
      if (v12 && (v13 = *(v12 + 8)) != 0)
      {
        ++v13[5];
        WebKit::NetworkProcess::protectedAuthenticationManager(*(a1 + 32), &v31);
        v14 = v31;
        WebKit::AuthenticationManager::didReceiveAuthenticationChallenge(v31, (v13 + 6), a2, a4);
        if (v14)
        {
          WebKit::AuthenticationManager::deref(v14);
        }

        if (v13[5] == 1)
        {
          (*(*v13 + 24))(v13);
        }

        else
        {
          --v13[5];
        }
      }

      else
      {
        WebKit::NetworkProcess::protectedAuthenticationManager(*(a1 + 32), &v31);
        v15 = *(*(a1 + 3312) + 16);
        if (!v15 || (v16 = *(v15 + 8)) == 0)
        {
          result = 121;
          __break(0xC471u);
          return result;
        }

        v17 = v31;
        v18 = *(v16 + 24);
        v19 = *(a1 + 72);
        if (v19)
        {
          v20 = (v19 + 8);
        }

        else
        {
          v20 = 0;
        }

        WebKit::AuthenticationManager::didReceiveAuthenticationChallenge(v31, v18, *(a1 + 48), *(a1 + 48) != 0, v20, a2, a3, a4);
        if (v17)
        {
          WebKit::AuthenticationManager::deref(v17);
        }
      }
    }

    else
    {
      (*(*v6 + 104))(v6);
      WebCore::CredentialBase::CredentialBase(&v31);
      cf = 0;
      v21 = *a4;
      *a4 = 0;
      (*(*v21 + 16))(v21, 0, &v31);
      (*(*v21 + 8))(v21);
      v23 = cf;
      cf = 0;
      if (v23)
      {
        CFRelease(v23);
      }

      v24 = v32;
      v32 = 0;
      if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v24, v22);
      }

      v25 = v31;
      v31 = 0;
      if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v22);
      }
    }

    return (*(*v6 + 8))(v6);
  }

  else
  {
    WebCore::CredentialBase::CredentialBase(&v31);
    cf = 0;
    v27 = *a4;
    *a4 = 0;
    (*(*v27 + 16))(v27, 2, &v31);
    (*(*v27 + 8))(v27);
    v29 = cf;
    cf = 0;
    if (v29)
    {
      CFRelease(v29);
    }

    v30 = v32;
    v32 = 0;
    if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v30, v28);
    }

    result = v31;
    v31 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v28);
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcess::protectedAuthenticationManager@<X0>(WebKit::NetworkProcess *this@<X0>, void *a2@<X8>)
{
  v5[0] = "AuthenticationManager";
  v5[1] = 22;
  result = WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ASCIILiteral>>,WTF::ASCIILiteral>(this + 28, v5);
  v4 = *(*(result + 24) + 8);
  if (v4)
  {
    atomic_fetch_add((v4 + 144), 1u);
    *a2 = result;
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::NetworkLoad::didReceiveInformationalResponse(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      (**v3)(v3);
      (*(*v3 + 64))(v3, a2);
      v5 = *(*v3 + 8);

      return v5(v3);
    }
  }

  return result;
}

uint64_t WebKit::NetworkLoad::didReceiveResponse(uint64_t a1, WebCore::ResourceResponseBase *a2, int a3, uint64_t a4, uint64_t *a5)
{
  v9 = *(a1 + 3312);
  if (v9 && v9[5])
  {
    v16 = *(a1 + 32);

    return WebKit::NetworkProcess::findPendingDownloadLocation(v16, v9, a5, a2);
  }

  else
  {
    if (a3)
    {
      WebKit::NetworkProcess::protectedAuthenticationManager(*(a1 + 32), v19);
      v14 = *(a1 + 48);
      if (!v14)
      {
        result = 157;
        __break(0xC471u);
        return result;
      }

      v15 = v19[0];
      WebKit::AuthenticationManager::negotiatedLegacyTLS(v19[0], v14);
      if (v15)
      {
        WebKit::AuthenticationManager::deref(v15);
      }
    }

    v10 = *(a1 + 24);
    if (v10 && (v11 = *(v10 + 8)) != 0)
    {
      (**v11)(v11);
      if (*(a1 + 301) == 1)
      {
        v13 = *(*(a1 + 32) + 40);
        if (v13)
        {
          IPC::Connection::getAuditToken(v13, v19);
        }

        else
        {
          LOBYTE(v19[0]) = 0;
          v20 = 0;
        }

        WebCore::ResourceResponseBase::includeCertificateInfo();
      }

      (*(*v11 + 72))(v11, a2, a4, a5);
      return (*(*v11 + 8))(v11);
    }

    else
    {
      v17 = *a5;
      *a5 = 0;
      (*(*v17 + 16))(v17, 2);
      v18 = *(*v17 + 8);

      return v18(v17);
    }
  }
}

uint64_t WebKit::NetworkLoad::didReceiveData(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      (**v3)(v3);
      (*(*v3 + 80))(v3, a2);
      v5 = *(*v3 + 8);

      return v5(v3);
    }
  }

  return result;
}

uint64_t WebKit::NetworkLoad::didSendData(uint64_t this, uint64_t a2, uint64_t a3)
{
  v3 = *(this + 24);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      (**v4)(v4);
      (*(*v4 + 48))(v4, a2, a3);
      v7 = *(*v4 + 8);

      return v7(v4);
    }
  }

  return this;
}

uint64_t WebKit::NetworkLoad::wasBlocked(uint64_t this)
{
  v1 = *(this + 24);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      v3 = this;
      (**v2)(v2);
      WebKit::blockedError((v3 + 3328), &v9);
      (*(*v2 + 96))(v2, &v9);
      v5 = cf;
      cf = 0;
      if (v5)
      {
        CFRelease(v5);
      }

      v6 = v11;
      v11 = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v4);
      }

      v7 = v10;
      v10 = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v4);
      }

      v8 = v9;
      v9 = 0;
      if (v8)
      {
        if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, v4);
        }
      }

      return (*(*v2 + 8))(v2);
    }
  }

  return this;
}

uint64_t WebKit::NetworkLoad::cannotShowURL(uint64_t this)
{
  v1 = *(this + 24);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      v3 = this;
      (**v2)(v2);
      WebKit::cannotShowURLError((v3 + 3328), &v9);
      (*(*v2 + 96))(v2, &v9);
      v5 = cf;
      cf = 0;
      if (v5)
      {
        CFRelease(v5);
      }

      v6 = v11;
      v11 = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v4);
      }

      v7 = v10;
      v10 = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v4);
      }

      v8 = v9;
      v9 = 0;
      if (v8)
      {
        if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, v4);
        }
      }

      return (*(*v2 + 8))(v2);
    }
  }

  return this;
}

uint64_t WebKit::NetworkLoad::wasBlockedByRestrictions(uint64_t this)
{
  v1 = *(this + 24);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      v3 = this;
      (**v2)(v2);
      WebKit::wasBlockedByRestrictionsError((v3 + 3328), &v9);
      (*(*v2 + 96))(v2, &v9);
      v5 = cf;
      cf = 0;
      if (v5)
      {
        CFRelease(v5);
      }

      v6 = v11;
      v11 = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v4);
      }

      v7 = v10;
      v10 = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v4);
      }

      v8 = v9;
      v9 = 0;
      if (v8)
      {
        if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, v4);
        }
      }

      return (*(*v2 + 8))(v2);
    }
  }

  return this;
}

uint64_t WebKit::NetworkLoad::wasBlockedByDisabledFTP(uint64_t this)
{
  v1 = *(this + 24);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      v3 = this;
      (**v2)(v2);
      WebKit::ftpDisabledError((v3 + 3328), &v9);
      (*(*v2 + 96))(v2, &v9);
      v5 = cf;
      cf = 0;
      if (v5)
      {
        CFRelease(v5);
      }

      v6 = v11;
      v11 = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v4);
      }

      v7 = v10;
      v10 = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v4);
      }

      v8 = v9;
      v9 = 0;
      if (v8)
      {
        if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, v4);
        }
      }

      return (*(*v2 + 8))(v2);
    }
  }

  return this;
}

IPC::Encoder *WebKit::NetworkLoad::didNegotiateModernTLS(IPC::Encoder *this, const WTF::URL *a2)
{
  if (*(this + 6))
  {
    v3 = this;
    v4 = *(this + 4);
    v5 = v4[3];
    v4 += 3;
    v6 = (*(v5 + 56))(v4);
    v8 = IPC::Encoder::operator new(0x238, v7);
    *v8 = 533;
    *(v8 + 2) = 0;
    *(v8 + 3) = 0;
    *(v8 + 1) = v6;
    *(v8 + 68) = 0;
    *(v8 + 70) = 0;
    *(v8 + 69) = 0;
    IPC::Encoder::encodeHeader(v8);
    v12 = v8;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, *(v3 + 6));
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v8, a2);
    (*(*v4 + 32))(v4, &v12, 0);
    this = v12;
    v12 = 0;
    if (this)
    {
      IPC::Encoder::~Encoder(this, v9);
      return bmalloc::api::tzoneFree(v10, v11);
    }
  }

  return this;
}

atomic_ullong *WebKit::NetworkLoad::setH2PingCallback(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 3312);
  if (v5)
  {
    v6 = v5 + 1;
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
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_7:
    (*(*v5 + 72))(v5, a2, a3);

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref(v5 + 1);
  }

  else
  {
    WebCore::internalError();
    v23 = v17;
    v22 = v16;
    v20[0] = *v12;
    v20[1] = v13;
    v20[2] = v14;
    v21 = v15;
    v24 = cf;
    v25 = v19;
    v26 = 1;
    v10 = *a3;
    *a3 = 0;
    (*(*v10 + 16))(v10, v20);
    (*(*v10 + 8))(v10);
    std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(v20, v11);
    return 0;
  }
}

atomic_ullong *WebKit::NetworkLoad::setTimingAllowFailedFlag(atomic_ullong *this)
{
  v1 = this[414];
  if (v1)
  {
    v2 = v1 + 1;
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
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_7:
    (*(*v1 + 88))(v1);

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref(v1 + 1);
  }

  return this;
}

atomic_ullong *WebKit::NetworkLoad::attributedBundleIdentifier@<X0>(atomic_ullong *result@<X0>, uint64_t a2@<X1>, atomic_uint **a3@<X8>)
{
  v4 = result[414];
  if (v4)
  {
    v6 = (v4 + 8);
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
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_7:
    WebKit::NetworkDataTask::attributedBundleIdentifier(v4, a2, a3);

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v4 + 8));
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t WebKit::NetworkLoad::protectedTask@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 3312);
  if (v3)
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

    this = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v3 + 8));
  }

LABEL_6:
  *a2 = v3;
  return this;
}

uint64_t WebKit::NetworkLoad::bytesTransferredOverNetwork(WebKit::NetworkLoad *this)
{
  v1 = *(this + 414);
  if (v1)
  {
    v2 = (v1 + 8);
    while (1)
    {
      v3 = *v2;
      if ((*v2 & 1) == 0)
      {
        break;
      }

      v5 = *v2;
      atomic_compare_exchange_strong_explicit(v2, &v5, v3 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v5 == v3)
      {
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_5:
    v1 = *(v1 + 536);
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref(v2);
  }

  return v1;
}

uint64_t WebKit::NetworkLoadChecker::NetworkLoadChecker(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, int *a5, uint64_t a6, uint64_t a7, char a8, uint64_t *a9, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14, char a15, uint64_t *a16, char a17, int a18, __int16 a19, int a20, char a21, char a22)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v25 = *a5;
  *(a1 + 19) = *(a5 + 3);
  *(a1 + 16) = v25;
  v26 = *(a5 + 1);
  *(a5 + 1) = 0;
  *(a1 + 24) = v26;
  v27 = *(a5 + 2);
  *(a1 + 32) = *(a5 + 1);
  *(a1 + 48) = v27;
  *(a1 + 65) = a17;
  *(a1 + 66) = a19;
  *(a1 + 72) = a6;
  atomic_fetch_add((a2 + 144), 1u);
  if (a8)
  {
    v28 = a7;
  }

  else
  {
    v28 = 0;
  }

  *(a1 + 80) = a2;
  *(a1 + 88) = v28;
  *(a1 + 96) = 0u;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 96, a9);
  *(a1 + 112) = 0u;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 112, a9 + 2);
  WebCore::HTTPHeaderMap::HTTPHeaderMap((a1 + 128));
  WTF::URL::URL(a1 + 160, a10);
  WTF::URL::URL(a1 + 200, a11);
  v29 = *a12;
  *a12 = 0;
  *(a1 + 240) = v29;
  v30 = *a13;
  *a13 = 0;
  *(a1 + 248) = v30;
  v31 = *a14;
  *a14 = 0;
  *(a1 + 256) = v31;
  *(a1 + 264) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0u;
  WTF::URL::invalidate((a1 + 344));
  *(a1 + 384) = 0;
  WTF::URL::invalidate((a1 + 384));
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  *(a1 + 448) = 257;
  *(a1 + 456) = 0;
  *(a1 + 464) = 0u;
  WTF::URL::invalidate((a1 + 472));
  *(a1 + 512) = a15;
  v32 = *a16;
  *a16 = 0;
  *(a1 + 520) = v32;
  *(a1 + 528) = 0;
  *(a1 + 529) = a21;
  WebCore::ResourceRequest::ResourceRequest((a1 + 536));
  WebCore::ResourceResponseBase::ResourceResponseBase((a1 + 736));
  *(a1 + 984) = 0;
  *(a1 + 992) = 0;
  *(a1 + 874) = *(a1 + 874) & 0xF1 | 4;
  WebCore::NetworkLoadMetrics::NetworkLoadMetrics((a1 + 1000));
  *(a1 + 1128) = 0u;
  *(a1 + 1144) = a22;
  if (a4)
  {
    ++*a4;
  }

  *(a1 + 1152) = a4;
  if (a3)
  {
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a3 + 8), a3);
    v34 = *(a3 + 8);
    if (v34)
    {
      atomic_fetch_add(v34, 1u);
    }
  }

  else
  {
    v34 = 0;
  }

  *(a1 + 1160) = v34;
  *(a1 + 1168) = 0;
  if ((*(a1 + 1144) & 1) == 0)
  {
    v38 = *(a1 + 248);
    if (v38)
    {
      atomic_fetch_add(v38, 1u);
    }

    v39 = *(a1 + 240);
    *(a1 + 240) = v38;
    if (v39)
    {
      WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v39, v33);
    }
  }

  isSameOrigin = WebKit::NetworkLoadChecker::isSameOrigin(a1, (a1 + 160), *(a1 + 240));
  *(a1 + 448) = isSameOrigin;
  v36 = *(a5 + 2);
  if (v36 == 2)
  {
    isSameOrigin = 1;
  }

  else if (v36 != 1)
  {
    if (*(a5 + 2))
    {
      return a1;
    }

    isSameOrigin = 0;
  }

  *(a1 + 64) = isSameOrigin;
  return a1;
}

uint64_t WebKit::NetworkLoadChecker::isSameOrigin(WebKit::NetworkLoadChecker *this, const WTF::URL *a2, const WebCore::SecurityOrigin *a3)
{
  if (WTF::URL::protocolIs())
  {
    return 1;
  }

  v5 = WTF::URL::protocolIs();
  if (!a3 || (v5 & 1) != 0)
  {
    return 1;
  }

  v6 = *(this + 145);
  if (!v6 || !*(v6 + 8))
  {
    WebCore::EmptyOriginAccessPatterns::singleton(v5);
  }

  return WebCore::SecurityOrigin::canRequest();
}

void WebKit::NetworkLoadChecker::~NetworkLoadChecker(WebKit::NetworkLoadChecker *this, void *a2)
{
  v3 = *(this + 145);
  *(this + 145) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 144);
  *(this + 144) = 0;
  if (v4)
  {
    WTF::RefCounted<WebKit::NetworkSchemeRegistry>::deref(v4, a2);
  }

  WTF::Vector<WebCore::NetworkTransactionInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 282, a2);
  v6 = *(this + 140);
  *(this + 140) = 0;
  if (v6)
  {
    WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v6, v5);
  }

  v7 = *(this + 136);
  *(this + 136) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v5);
  }

  v8 = *(this + 123);
  *(this + 123) = 0;
  if (v8)
  {
    CFRelease(v8);
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase((this + 736), v5);
  WebCore::ResourceRequest::~ResourceRequest((this + 536));
  v10 = *(this + 65);
  *(this + 65) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v9);
  }

  v11 = *(this + 59);
  *(this + 59) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v9);
  }

  v12 = *(this + 57);
  *(this + 57) = 0;
  if (v12)
  {
    WebCore::ContentSecurityPolicy::operator delete();
  }

  v13 = *(this + 55);
  *(this + 55) = 0;
  if (v13)
  {
    WTF::RefCounted<WebKit::NetworkCORSPreflightChecker>::deref((v13 + 16), v9);
  }

  v14 = *(this + 48);
  *(this + 48) = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v9);
  }

  v15 = *(this + 43);
  *(this + 43) = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v9);
  }

  v16 = *(this + 42);
  *(this + 42) = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v9);
  }

  v17 = *(this + 41);
  *(this + 41) = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v9);
  }

  v18 = *(this + 39);
  *(this + 39) = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v9);
  }

  v19 = *(this + 38);
  *(this + 38) = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v9);
  }

  if (*(this + 288) == 1)
  {
    WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 264, v9);
  }

  v20 = *(this + 32);
  *(this + 32) = 0;
  if (v20)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v20, v9);
  }

  v21 = *(this + 31);
  *(this + 31) = 0;
  if (v21)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v21, v9);
  }

  v22 = *(this + 30);
  *(this + 30) = 0;
  if (v22)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v22, v9);
  }

  v23 = *(this + 25);
  *(this + 25) = 0;
  if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v23, v9);
  }

  v24 = *(this + 20);
  *(this + 20) = 0;
  if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v24, v9);
  }

  WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(this + 36, v9);
  WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(this + 128, v25);
  WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(this + 28, v26);
  WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(this + 96, v27);
  v29 = *(this + 10);
  *(this + 10) = 0;
  if (v29 && atomic_fetch_add(v29 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v29 + 36);
    (*(*v29 + 24))(v29);
  }

  v30 = *(this + 3);
  *(this + 3) = 0;
  if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v30, v28);
  }

  if (*(this + 2) == 1)
  {
    if (*this)
    {
      *(*this + 8) = 0;
      v31 = *this;
      *this = 0;
      if (v31)
      {
        if (atomic_fetch_add(v31, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v31);
          WTF::fastFree(v31, v28);
        }
      }
    }
  }

  else
  {
    __break(0xC471u);
  }
}

void WebKit::NetworkLoadChecker::check(uint64_t a1, CFTypeRef *this, uint64_t a3, WTF **a4)
{
  if (*(a1 + 529) == 1)
  {
    WebCore::ResourceRequestBase::operator=(a1 + 536, this);
    WTF::RetainPtr<NSURLRequest>::operator=((a1 + 728), this + 24);
  }

  v8 = WebCore::ResourceRequestBase::httpHeaderFields(this);
  WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::operator=(a1 + 128, v8);
  WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::operator=(a1 + 144, v8 + 16);

  WebKit::NetworkLoadChecker::checkRequest(a1, this, a3, a4);
}

void WebKit::NetworkLoadChecker::checkRequest(uint64_t a1, uint64_t a2, uint64_t a3, WTF **a4)
{
  WebCore::ResourceRequest::ResourceRequest(&v89, a2);
  v8 = WebKit::NetworkLoadChecker::contentSecurityPolicy(a1);
  if (!v8)
  {
    goto LABEL_17;
  }

  v9 = v8;
  atomic_fetch_add(v8, 1u);
  if (*(a1 + 464))
  {
    WebCore::ContentSecurityPolicy::upgradeInsecureRequestIfNeeded();
  }

  v10 = WebKit::NetworkLoadChecker::contentSecurityPolicy(a1);
  if (!v10)
  {
    __break(0xC471u);
    goto LABEL_52;
  }

  v11 = v10;
  atomic_fetch_add(v10, 1u);
  *(v10 + 16) = a3;
  v12 = *(a1 + 1160);
  if (v12 && (v13 = *(v12 + 8)) != 0)
  {
    v60 = WebCore::ResourceRequestBase::url((v13 + 104));
    v61 = *v60;
    if (*v60)
    {
      atomic_fetch_add_explicit(v61, 2u, memory_order_relaxed);
    }

    v86 = v61;
    v62 = *(v60 + 24);
    v87[0] = *(v60 + 8);
    v87[1] = v62;
  }

  else
  {
    v86 = 0;
    WTF::URL::invalidate(&v86);
  }

  v15 = *(a1 + 16);
  v16 = 1;
  if (v15 > 0x14)
  {
    goto LABEL_12;
  }

  if (!*(a1 + 16))
  {
    WebCore::ResourceRequestBase::url(a2);
    v17 = WebCore::ContentSecurityPolicy::allowConnectToSource();
LABEL_11:
    v16 = v17;
    goto LABEL_12;
  }

  if (v15 != 14)
  {
    if (((1 << v15) & 0x119004) == 0)
    {
      goto LABEL_12;
    }

    WebCore::ResourceRequestBase::url(a2);
    v17 = WebCore::ContentSecurityPolicy::allowWorkerFromSource();
    goto LABEL_11;
  }

  v16 = 1;
  if (*(a2 + 147) == 6)
  {
    WebCore::ResourceRequestBase::url(a2);
    if (!WebCore::ContentSecurityPolicy::allowScriptFromSource())
    {
      v16 = 0;
    }
  }

LABEL_12:
  v18 = v86;
  v86 = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v14);
  }

  *(v11 + 16) = 0;
  if (!atomic_load(v11))
  {
    __break(0xC471u);
    JUMPOUT(0x19DC5F5C0);
  }

  atomic_fetch_add(v11, 0xFFFFFFFF);
  v20 = atomic_load(v9);
  if (v16)
  {
    if (!v20)
    {
      __break(0xC471u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    atomic_fetch_add(v9, 0xFFFFFFFF);
LABEL_17:
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a1, a1);
    v21 = *a1;
    atomic_fetch_add(*a1, 1u);
    v22 = *a4;
    *a4 = 0;
    v67[0] = v21;
    v67[1] = v22;
    v23 = v89;
    v24 = v92;
    v89 = 0;
    v68 = v23;
    v69 = v90;
    v70 = v91;
    LODWORD(v90) = v90 & 0xFFFFFFFE;
    v92 = 0;
    v71 = v24;
    v72 = v93;
    v73 = v94;
    LODWORD(v93) = v93 & 0xFFFFFFFE;
    v25 = v97;
    v74 = v95;
    v26 = v96;
    v96 = 0u;
    v75 = v26;
    v97 = 0;
    v76 = v25;
    v27 = v98;
    v98 = 0;
    *&v77 = v27;
    *&v26 = v99;
    v99 = 0;
    *(&v77 + 1) = v26;
    v28 = v100;
    v100 = 0;
    *&v78 = v28;
    *&v26 = v101;
    v101 = 0;
    *(&v78 + 1) = v26;
    v80 = v103;
    v79 = v102;
    v29 = v104;
    v104 = 0u;
    v81 = v29;
    v84 = v107;
    v82 = v105;
    v83 = v106;
    v30 = v108;
    v105 = 0;
    v108 = 0;
    v85 = v30;
    v31 = WTF::fastMalloc(0xE0);
    *v31 = &unk_1F11012C0;
    *(v31 + 8) = *v67;
    *v67 = 0u;
    WTF::URL::URL(v31 + 24, &v68);
    WTF::URL::URL(v31 + 64, &v71);
    *&v32 = 0;
    *(v31 + 104) = v74;
    *(v31 + 112) = v75;
    v33 = *(&v75 + 1);
    v75 = 0u;
    *(v31 + 120) = v33;
    v34 = v76;
    v76 = 0;
    *(v31 + 128) = v34;
    v35 = v77;
    v77 = v32;
    *(v31 + 136) = v35;
    v36 = v78;
    v78 = v32;
    *(v31 + 152) = v36;
    LODWORD(v33) = v79;
    *(v31 + 172) = v80;
    *(v31 + 168) = v33;
    *(v31 + 176) = v81;
    v37 = *(&v81 + 1);
    v81 = 0u;
    *(v31 + 184) = v37;
    *(v31 + 192) = v82;
    v38 = v83;
    *(v31 + 208) = v84;
    *(v31 + 200) = v38;
    v39 = v85;
    v82 = 0;
    v85 = 0;
    *(v31 + 216) = v39;
    if (*(a1 + 528) != 1 || *(a1 + 432) != 1 || !*(a1 + 17))
    {
      v126 = 0;
      v125 = 0;
      v127 = 0uLL;
      v128 = 0uLL;
      v129 = 0uLL;
      WTF::URL::URL(v109, a2);
      WTF::URL::URL(v110, (a2 + 40));
      v40 = *(a2 + 80);
      v41 = *(a2 + 88);
      *(a2 + 88) = 0u;
      v111 = v41;
      *&v41 = *(a2 + 104);
      *(a2 + 104) = 0;
      v110[5] = v40;
      v112 = v41;
      v42 = *(a2 + 120);
      v113 = *(a2 + 112);
      v114 = v42;
      v43 = *(a2 + 128);
      v44 = *(a2 + 136);
      *(a2 + 112) = 0u;
      *(a2 + 128) = 0u;
      v115 = v43;
      v116 = v44;
      LODWORD(v43) = *(a2 + 144);
      v118 = *(a2 + 148);
      v117 = v43;
      v45 = *(a2 + 152);
      *(a2 + 152) = 0u;
      v119 = v45;
      v46 = *(a2 + 168);
      v47 = *(a2 + 176);
      *(a2 + 168) = 0;
      v122 = *(a2 + 184);
      v120 = v46;
      v121 = v47;
      v48 = *(a2 + 192);
      *(a2 + 192) = 0;
      v123 = v48;
      v124 = &v125;
      std::experimental::fundamentals_v3::expected<WebKit::NetworkLoadChecker::ContentExtensionResult,WebCore::ResourceError>::expected(&v86, v109);
      (*(*v31 + 16))(v31, &v86);
      (*(*v31 + 8))(v31);
      std::experimental::fundamentals_v3::expected<WebKit::NetworkLoadChecker::ContentExtensionResult,WebCore::ResourceError>::~expected(&v86, v49);
      WebCore::ResourceRequest::~ResourceRequest(v109);
      WTF::Vector<std::pair<WTF::String,WebCore::ContentRuleListResults::Result>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v129, v50);
      WTF::Vector<std::pair<WebCore::ContentExtensions::RedirectAction,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v128, v51);
      WTF::Vector<WebCore::ContentExtensions::ModifyHeadersAction,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v127, v52);
LABEL_19:
      WebCore::ResourceRequest::~ResourceRequest(&v68);
      v54 = v67[1];
      v67[1] = 0;
      if (v54)
      {
        (*(*v54 + 8))(v54);
      }

      v55 = v67[0];
      v67[0] = 0;
      if (v55 && atomic_fetch_add(v55, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v55);
        WTF::fastFree(v55, v53);
      }

      goto LABEL_24;
    }

    v63 = *(a1 + 80);
    WebKit::NetworkContentRuleListManager::ref(v63 + 272);
    if (*(a1 + 432))
    {
      v64 = *(a1 + 424);
      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a1, a1);
      v65 = *a1;
      atomic_fetch_add(*a1, 1u);
      v86 = v65;
      WebCore::ResourceRequest::ResourceRequest(v87, a2);
      v88 = v31;
      WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>::CompletionHandler<WebKit::NetworkLoadChecker::processContentRuleListsForLoad(WebCore::ResourceRequest &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebKit::NetworkLoadChecker::ContentExtensionResult,WebCore::ResourceError> &&)> &&)::$_0,void>(v109, &v86);
      WebKit::NetworkContentRuleListManager::contentExtensionsBackend((v63 + 272), v64, v109);
      v66 = v109[0];
      v109[0] = 0;
      if (v66)
      {
        (*(*v66 + 8))(v66);
      }

      WebKit::NetworkLoadChecker::processContentRuleListsForLoad(WebCore::ResourceRequest &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebKit::NetworkLoadChecker::ContentExtensionResult,WebCore::ResourceError> &&)> &&)::$_0::~$_0(&v86);
      WebKit::NetworkContentRuleListManager::deref((v63 + 272));
      goto LABEL_19;
    }

    goto LABEL_50;
  }

  if (!v20)
  {
LABEL_51:
    __break(0xC471u);
LABEL_52:
    JUMPOUT(0x19DC5F5A0);
  }

  atomic_fetch_add(v9, 0xFFFFFFFF);
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v56 = v86;
  v67[0] = v86;
  WebKit::NetworkLoadChecker::accessControlErrorForValidationHandler(&v86, a1, v67);
  v57 = *a4;
  *a4 = 0;
  (*(*v57 + 16))(v57, &v86);
  (*(*v57 + 8))(v57);
  mpark::detail::assignment<mpark::detail::traits<WebCore::ResourceRequest,WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError>>::~assignment(&v86, v58);
  if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v56, v59);
  }

LABEL_24:
  WebCore::ResourceRequest::~ResourceRequest(&v89);
}

WTF::StringImpl *WebKit::NetworkLoadChecker::checkRedirection(uint64_t a1, int64_t a2, uint64_t a3, WebCore::ResourceResponse *a4, uint64_t a5, WTF::StringImpl **a6)
{
  WebKit::NetworkLoadChecker::validateResponse(a1, a2, a4, &v197);
  if (v200)
  {
    v12 = *WebCore::ResourceRequestBase::url(a3);
    if (v12)
    {
      atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
    }

    v162 = v12;
    MEMORY[0x19EB12BA0](&v197);
    v13 = v199;
    if (v199)
    {
      atomic_fetch_add_explicit(v199, 2u, memory_order_relaxed);
    }

    v161 = v13;
    WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Cross-origin redirection to ", 29, &v162, " denied by Cross-Origin Resource Sharing policy: ", 50, &v161, &v109);
    WebKit::redirectionError(&v163, a4, &v109);
    v14 = *a6;
    *a6 = 0;
    (*(*v14 + 16))(v14, &v163);
    (*(*v14 + 8))(v14);
    if (v196 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError>,(mpark::detail::Trait)1> &>(&v163, v15);
    }

    v196 = -1;
    v16 = v109;
    v109 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v15);
    }

    v17 = v161;
    v161 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v15);
    }

    v18 = v162;
    v162 = 0;
    if (!v18)
    {
      goto LABEL_36;
    }

    goto LABEL_15;
  }

  v19 = *(a1 + 20);
  if (v19 == 2)
  {
    WTF::URL::URL(&v109, a2);
    WTF::URL::URL(v112, (a2 + 40));
    v112[5] = *(a2 + 80);
    v24 = *(a2 + 88);
    *(a2 + 88) = 0u;
    v113 = v24;
    *&v24 = *(a2 + 104);
    *(a2 + 104) = 0;
    v114 = v24;
    *&v24 = *(a2 + 120);
    v115 = *(a2 + 112);
    v116 = v24;
    v25 = *(a2 + 128);
    *&v24 = *(a2 + 136);
    *(a2 + 112) = 0u;
    *(a2 + 128) = 0u;
    v117 = v25;
    v118 = v24;
    LODWORD(v25) = *(a2 + 144);
    v120 = *(a2 + 148);
    v119 = v25;
    v26 = *(a2 + 152);
    *(a2 + 152) = 0u;
    v121 = v26;
    v124 = *(a2 + 184);
    v27 = *(a2 + 168);
    v28 = *(a2 + 176);
    *(a2 + 168) = 0;
    v122 = v27;
    v123 = v28;
    v29 = *(a2 + 192);
    *(a2 + 192) = 0;
    v125 = v29;
    WTF::URL::URL(v126, a3);
    WTF::URL::URL(v127, (a3 + 40));
    v127[5] = *(a3 + 80);
    v30 = *(a3 + 88);
    *(a3 + 88) = 0u;
    v128 = v30;
    *&v30 = *(a3 + 104);
    *(a3 + 104) = 0;
    v129 = v30;
    *&v30 = *(a3 + 120);
    v130 = *(a3 + 112);
    v131 = v30;
    v31 = *(a3 + 128);
    *&v30 = *(a3 + 136);
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    v132 = v31;
    v133 = v30;
    LODWORD(v31) = *(a3 + 144);
    v135 = *(a3 + 148);
    v134 = v31;
    v32 = *(a3 + 152);
    *(a3 + 152) = 0u;
    v136 = v32;
    v139 = *(a3 + 184);
    v33 = *(a3 + 168);
    v34 = *(a3 + 176);
    *(a3 + 168) = 0;
    v137 = v33;
    v138 = v34;
    v35 = *(a3 + 192);
    *(a3 + 192) = 0;
    v140 = v35;
    WTF::URL::URL(v141, a4);
    v36 = *(a4 + 56);
    *(a4 + 56) = 0u;
    v37 = *(a4 + 72);
    *(a4 + 72) = 0u;
    v38 = *(a4 + 5);
    v39 = *(a4 + 6);
    *(a4 + 5) = 0;
    v141[5] = v38;
    v141[6] = v39;
    v142 = v36;
    v143 = v37;
    *&v36 = *(a4 + 11);
    *(a4 + 11) = 0;
    v144 = v36;
    v40 = *(a4 + 12);
    *&v36 = *(a4 + 13);
    *(a4 + 6) = 0u;
    v145 = v40;
    v146 = v36;
    v41 = *(a4 + 14);
    *(a4 + 14) = 0;
    v147 = v41;
    LOBYTE(v148) = 0;
    v149 = 0;
    if (*(a4 + 128) == 1)
    {
      v65 = *(a4 + 15);
      *(a4 + 15) = 0;
      v148 = v65;
      v149 = 1;
    }

    v150 = *(a4 + 68);
    v151 = *(a4 + 138);
    v42 = *(a4 + 18);
    *(a4 + 18) = 0;
    v152 = v42;
    v43 = *(a4 + 200);
    v155 = *(a4 + 184);
    v156 = v43;
    v157[0] = *(a4 + 216);
    *(v157 + 11) = *(a4 + 227);
    v44 = *(a4 + 168);
    v153 = *(a4 + 152);
    v154 = v44;
    v45 = *(a4 + 31);
    *(a4 + 31) = 0;
    cf = v45;
    v159 = *(a4 + 256);
    WebKit::NetworkLoadChecker::RedirectionTriplet::RedirectionTriplet(&v163, &v109);
    v196 = 0;
    v46 = *a6;
    *a6 = 0;
    (*(*v46 + 16))(v46, &v163);
    (*(*v46 + 8))(v46);
    if (v196 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError>,(mpark::detail::Trait)1> &>(&v163, v47);
    }

    v196 = -1;
    v48 = cf;
    cf = 0;
    if (v48)
    {
      CFRelease(v48);
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(v141, v47);
    WebCore::ResourceRequest::~ResourceRequest(v126);
    WebCore::ResourceRequest::~ResourceRequest(&v109);
    goto LABEL_36;
  }

  if (v19 == 1)
  {
    v20 = *WebCore::ResourceResponseBase::url(a4);
    if (v20)
    {
      atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
    }

    v160 = v20;
    v163 = "Not allowed to follow a redirection while loading ";
    v164[0] = 51;
    result = WTF::tryMakeString<WTF::ASCIILiteral,WTF::String>(&v163, &v160, &v109);
    if (!v109)
    {
      __break(0xC471u);
      return result;
    }

    WebKit::redirectionError(&v163, a4, &v109);
    v22 = *a6;
    *a6 = 0;
    (*(*v22 + 16))(v22, &v163);
    (*(*v22 + 8))(v22);
    if (v196 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError>,(mpark::detail::Trait)1> &>(&v163, v15);
    }

    v196 = -1;
    v23 = v109;
    v109 = 0;
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v15);
    }

    v18 = v160;
    v160 = 0;
    if (!v18)
    {
      goto LABEL_36;
    }

    goto LABEL_15;
  }

  if (*(a1 + 17) == 3)
  {
    if (*(a1 + 448) != 1 || (v52 = WebCore::ResourceRequestBase::url(a2), (WebKit::NetworkLoadChecker::isSameOrigin(a1, v52, *(a1 + 240)) & 1) == 0))
    {
      v53 = WebCore::ResourceResponseBase::url(a4);
      WebCore::ResourceResponseBase::httpHeaderField();
      MEMORY[0x19EB01E00](&v109, v53, &v163, 0);
      v55 = v163;
      v163 = 0;
      if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v55, v54);
      }

      v56 = *(a1 + 1152);
      if (v56)
      {
        v57 = WTF::URL::protocol(&v109);
        if ((WebKit::NetworkSchemeRegistry::shouldTreatURLSchemeAsCORSEnabled(v56, v57, v58 & 0xFFFFFFFFFFLL) & 1) == 0)
        {
          v101 = *WebCore::ResourceRequestBase::url(a3);
          if (v101)
          {
            atomic_fetch_add_explicit(v101, 2u, memory_order_relaxed);
          }

          v107 = v101;
          WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("Cross-origin redirection to ", 29, &v107, " denied by Cross-Origin Resource Sharing policy: not allowed to follow a cross-origin CORS redirection with non CORS scheme", 124, &v108);
          WebKit::redirectionError(&v163, a4, &v108);
          v102 = *a6;
          *a6 = 0;
          (*(*v102 + 16))(v102, &v163);
          (*(*v102 + 8))(v102);
          if (v196 != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError>,(mpark::detail::Trait)1> &>(&v163, v15);
          }

          v196 = -1;
          v103 = v108;
          v108 = 0;
          if (v103 && atomic_fetch_add_explicit(v103, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v103, v15);
          }

          v64 = v107;
          v107 = 0;
          if (v64)
          {
            goto LABEL_96;
          }

          goto LABEL_98;
        }
      }

      if (v111 > v110)
      {
        v59 = *WebCore::ResourceRequestBase::url(a3);
        if (v59)
        {
          atomic_fetch_add_explicit(v59, 2u, memory_order_relaxed);
        }

        v106 = v59;
        v60 = v109;
        if (v109)
        {
          atomic_fetch_add_explicit(v109, 2u, memory_order_relaxed);
        }

        v105 = v60;
        WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("Cross-origin redirection to ", 29, &v106, " denied by Cross-Origin Resource Sharing policy: redirection URL ", 66, &v105, " has credentials", 17, &v108);
        WebKit::redirectionError(&v163, a4, &v108);
        v61 = *a6;
        *a6 = 0;
        (*(*v61 + 16))(v61, &v163);
        (*(*v61 + 8))(v61);
        if (v196 != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError>,(mpark::detail::Trait)1> &>(&v163, v15);
        }

        v196 = -1;
        v62 = v108;
        v108 = 0;
        if (v62 && atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v62, v15);
        }

        v63 = v105;
        v105 = 0;
        if (v63 && atomic_fetch_add_explicit(v63, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v63, v15);
        }

        v64 = v106;
        v106 = 0;
        if (v64)
        {
LABEL_96:
          if (atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v64, v15);
          }
        }

LABEL_98:
        v18 = v109;
        v109 = 0;
        if (!v18)
        {
          goto LABEL_36;
        }

LABEL_15:
        if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
LABEL_16:
          WTF::StringImpl::destroy(v18, v15);
          goto LABEL_36;
        }

        goto LABEL_36;
      }

      v66 = v109;
      v109 = 0;
      if (v66 && atomic_fetch_add_explicit(v66, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v66, v54);
      }
    }
  }

  v67 = *(a1 + 464) + 1;
  *(a1 + 464) = v67;
  if (v67 < 0x15)
  {
    WTF::URL::operator=(a1 + 472, a1 + 160);
    v70 = WebCore::ResourceRequestBase::url(a3);
    WTF::String::operator=((a1 + 160), v70);
    v71 = *(v70 + 24);
    *(a1 + 168) = *(v70 + 8);
    *(a1 + 184) = v71;
    v72 = *a6;
    *a6 = 0;
    v163 = v72;
    WTF::URL::URL(v164, a2);
    WTF::URL::URL(v165, (a2 + 40));
    v166 = *(a2 + 80);
    v73 = *(a2 + 88);
    *(a2 + 88) = 0u;
    v167 = v73;
    *&v73 = *(a2 + 104);
    *(a2 + 104) = 0;
    v168 = v73;
    *&v73 = *(a2 + 120);
    *&v169 = *(a2 + 112);
    *(&v169 + 1) = v73;
    v74 = *(a2 + 128);
    *&v73 = *(a2 + 136);
    *(a2 + 112) = 0u;
    *(a2 + 128) = 0u;
    *&v170 = v74;
    *(&v170 + 1) = v73;
    LODWORD(v74) = *(a2 + 144);
    v172 = *(a2 + 148);
    v171 = v74;
    v75 = *(a2 + 152);
    *(a2 + 152) = 0u;
    v173 = v75;
    v176 = *(a2 + 184);
    v76 = *(a2 + 168);
    v77 = *(a2 + 176);
    *(a2 + 168) = 0;
    v174 = v76;
    v175 = v77;
    v78 = *(a2 + 192);
    *(a2 + 192) = 0;
    v177 = v78;
    WebCore::ResourceResponse::ResourceResponse(v178, a4);
    v79 = WTF::fastMalloc(0x1E0);
    *v79 = &unk_1F1101298;
    v80 = v163;
    v163 = 0;
    *(v79 + 8) = v80;
    WTF::URL::URL(v79 + 16, v164);
    WTF::URL::URL(v79 + 56, v165);
    *&v81 = 0;
    *(v79 + 96) = v166;
    *(v79 + 104) = v167;
    v82 = *(&v167 + 1);
    v167 = 0u;
    *(v79 + 112) = v82;
    v83 = v168;
    v168 = 0;
    *(v79 + 120) = v83;
    v84 = v169;
    v169 = v81;
    *(v79 + 128) = v84;
    v85 = v170;
    v170 = v81;
    *(v79 + 144) = v85;
    LODWORD(v82) = v171;
    *(v79 + 164) = v172;
    *(v79 + 160) = v82;
    *(v79 + 168) = v173;
    v86 = *(&v173 + 1);
    v173 = 0u;
    *(v79 + 176) = v86;
    *(v79 + 184) = v174;
    v87 = v175;
    *(v79 + 200) = v176;
    *(v79 + 192) = v87;
    v88 = v177;
    v174 = 0;
    v177 = 0;
    *(v79 + 208) = v88;
    WTF::URL::URL(v79 + 216, v178);
    v89 = v179;
    v179 = 0;
    *(v79 + 256) = v89;
    *(v79 + 264) = *v180;
    *(v79 + 280) = *&v180[16];
    *(v79 + 288) = v181;
    v90 = *(&v181 + 1);
    *&v180[8] = 0u;
    v181 = 0u;
    *(v79 + 296) = v90;
    v91 = v182;
    v182 = 0u;
    *(v79 + 304) = v91;
    v92 = v183;
    v183 = 0u;
    *(v79 + 320) = v92;
    *(v79 + 336) = 0;
    *(v79 + 344) = 0;
    if (v185 == 1)
    {
      v104 = v184;
      v184 = 0;
      *(v79 + 336) = v104;
      *(v79 + 344) = 1;
    }

    *(v79 + 352) = v186;
    *(v79 + 354) = v187;
    *(v79 + 360) = v188;
    v93 = v191;
    v94 = v192;
    v95 = v193[0];
    *(v79 + 443) = *(v193 + 11);
    *(v79 + 416) = v94;
    *(v79 + 432) = v95;
    *(v79 + 400) = v93;
    v96 = v190;
    *(v79 + 368) = v189;
    *(v79 + 384) = v96;
    v97 = v194;
    v188 = 0;
    v194 = 0;
    *(v79 + 464) = v97;
    *(v79 + 472) = v195;
    v109 = v79;
    WebKit::NetworkLoadChecker::checkRequest(a1, a3, a5, &v109);
    if (v109)
    {
      (*(*v109 + 8))(v109);
    }

    v99 = v194;
    v194 = 0;
    if (v99)
    {
      CFRelease(v99);
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(v178, v98);
    WebCore::ResourceRequest::~ResourceRequest(v164);
    v100 = v163;
    v163 = 0;
    if (v100)
    {
      (*(*v100 + 8))(v100);
    }

    goto LABEL_36;
  }

  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v68 = v163;
  v109 = v163;
  WebKit::redirectionError(&v163, a4, &v109);
  v69 = *a6;
  *a6 = 0;
  (*(*v69 + 16))(v69, &v163);
  (*(*v69 + 8))(v69);
  if (v196 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError>,(mpark::detail::Trait)1> &>(&v163, v15);
  }

  v196 = -1;
  if (v68 && atomic_fetch_add_explicit(v68, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v18 = v68;
    goto LABEL_16;
  }

LABEL_36:
  v49 = v201;
  v201 = 0;
  if (v49)
  {
    CFRelease(v49);
  }

  v50 = v199;
  v199 = 0;
  if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v50, v15);
  }

  v51 = v198;
  v198 = 0;
  if (v51 && atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v51, v15);
  }

  result = v197;
  v197 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v15);
    }
  }

  return result;
}

_DWORD *WebKit::NetworkLoadChecker::validateResponse@<X0>(WebKit::NetworkLoadChecker *this@<X0>, int64_t a2@<X1>, WebCore::ResourceResponse *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = WebCore::ResourceResponseBase::containsInvalidHTTPHeaders(a3);
  if (!v8)
  {
    ++*(this + 2);
    if (*(this + 58))
    {
      *(a3 + 120) |= 0x40u;
    }

    if ((*(a3 + 242) & 7) == 5)
    {
      v12 = *(a3 + 120) | 0x300;
      goto LABEL_16;
    }

    if (*(this + 17) && *(this + 448) != 1)
    {
      hasHTTPHeaderField = WebCore::ResourceRequestBase::hasHTTPHeaderField();
      if (hasHTTPHeaderField)
      {
        *(a3 + 120) |= 0x80u;
      }

      if (*(this + 17) == 2)
      {
        a2 = *(this + 30);
        if (a2)
        {
          atomic_fetch_add(a2, 1u);
        }

        v38 = *(this + 145);
        if (v38 && (v39 = *(v38 + 8)) != 0)
        {
          ++*(v39 + 5);
          WebKit::performCORPCheck(&v47, this + 320, a2, this + 160, a3, 0, v39);
          if (*(v39 + 5) == 1)
          {
            (*(*v39 + 24))(v39);
          }

          else
          {
            --*(v39 + 5);
          }
        }

        else
        {
          WebCore::EmptyOriginAccessPatterns::singleton(hasHTTPHeaderField);
          WebKit::performCORPCheck(&v47, this + 320, a2, this + 160, a3, 0, 0);
        }

        WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(a2, v40);
        if (v51 != 1)
        {
          std::optional<WebCore::ResourceError>::~optional(&v47, v41);
          v12 = *(a3 + 120) & 0xFCFF | 0x200;
          goto LABEL_16;
        }

        WebCore::ResourceError::ResourceError(a4, &v47);
        std::optional<WebCore::ResourceError>::~optional(&v47, v42);
      }

      else
      {
        if (WebCore::ResourceResponseBase::httpStatusCode(a3) == 304)
        {
          v12 = *(a3 + 120) & 0xFCFF | 0x100;
          goto LABEL_16;
        }

        a2 = *(this + 30);
        if (a2)
        {
          atomic_fetch_add(a2, 1u);
        }

        WebCore::passesAccessControlCheck();
        WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(a2, v43);
        if (v48 == 1)
        {
          *a4 = 0;
          v44 = *(this + 20);
          if (v44)
          {
            atomic_fetch_add_explicit(v44, 2u, memory_order_relaxed);
          }

          *(a4 + 8) = v44;
          v45 = *(this + 184);
          *(a4 + 16) = *(this + 168);
          *(a4 + 32) = v45;
          if (v47)
          {
            atomic_fetch_add_explicit(v47, 2u, memory_order_relaxed);
          }

          *(a4 + 48) = v47;
          *(a4 + 56) = 0;
          *(a4 + 60) = 2;
          *(a4 + 64) = 0;
        }

        else
        {
          *(a3 + 120) = *(a3 + 120) & 0xFCFF | 0x100;
          *a4 = 0;
          *(a4 + 8) = 0;
          WTF::URL::invalidate((a4 + 8));
          *(a4 + 64) = 0;
          *(a4 + 48) = 0;
          *(a4 + 54) = 0;
        }

        *(a4 + 72) = 1;
        if (v48 == 1)
        {
          v46 = v47;
          v47 = 0;
          if (v46)
          {
            if (atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v46, v13);
            }
          }
        }
      }
    }

    else
    {
      a2 = *(this + 32);
      if (!a2)
      {
LABEL_15:
        v12 = *(a3 + 120) & 0xFCFF;
LABEL_16:
        *(a3 + 120) = v12;
        *a4 = 0;
        *(a4 + 8) = 0;
        WTF::URL::invalidate((a4 + 8));
        *(a4 + 64) = 0;
        *(a4 + 48) = 0;
        *(a4 + 54) = 0;
        *(a4 + 72) = 1;
        goto LABEL_17;
      }

      atomic_fetch_add(a2, 1u);
      if (*(this + 17))
      {
        goto LABEL_14;
      }

      v10 = *(this + 145);
      if (v10 && (v11 = *(v10 + 8)) != 0)
      {
        ++*(v11 + 5);
        WebKit::performCORPCheck(&v47, this + 296, a2, this + 160, a3, 1, v11);
        if (*(v11 + 5) == 1)
        {
          (*(*v11 + 24))(v11);
        }

        else
        {
          --*(v11 + 5);
        }
      }

      else
      {
        WebCore::EmptyOriginAccessPatterns::singleton(v8);
        WebKit::performCORPCheck(&v47, this + 296, a2, this + 160, a3, 1, 0);
      }

      if (v51 != 1)
      {
LABEL_14:
        WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(a2, v9);
        goto LABEL_15;
      }

      WebCore::ResourceError::ResourceError(a4, &v47);
      std::optional<WebCore::ResourceError>::~optional(&v47, v23);
      WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(a2, v24);
    }

LABEL_17:
    if ((*(this + 1168) & 1) == 0)
    {
      if (*(this + 30))
      {
        WebCore::ResourceResponseBase::httpHeaderField();
        if (v60)
        {
          v14 = *(v60 + 8);
          v15 = *(v60 + 4) | (((*(v60 + 16) >> 2) & 1) << 32);
        }

        else
        {
          v14 = 0;
          v15 = 0x100000000;
        }

        v47 = v14;
        v48 = v15;
        v49 = 44;
        v50 = 0;
        v56 = &v47;
        v57 = 0;
        v59 = v15 == 0;
        WTF::StringView::SplitResult::Iterator::findNextSubstring(&v56);
        v16 = v48;
        v13 = v57;
        v17 = 1;
        if (v57 != v48 || !v59)
        {
          while (1)
          {
            v53 = WTF::StringView::substring(v56, v13, v58);
            v54 = v26;
            v55 = v27;
            v28 = WTF::StringView::trim<BOOL ()(char16_t)>(&v53, WTF::isASCIIWhitespaceWithoutFF<char16_t>);
            v30 = v29;
            if (WTF::operator==(v28, v29 & 0xFFFFFFFFFFLL, "*", 2))
            {
              break;
            }

            v31 = *(this + 30);
            if (v31)
            {
              atomic_fetch_add(v31, 1u);
            }

            WebCore::SecurityOrigin::toString(&v52, v31);
            v32 = v52;
            if (v52)
            {
              v33 = *(v52 + 1);
              v32 = *(v52 + 1);
              v34 = ((*(v52 + 4) >> 2) & 1) << 32;
            }

            else
            {
              v33 = 0;
              v34 = 0x100000000;
            }

            a2 = v32 | a2 & 0xFFFFFF0000000000 | v34;
            v35 = WTF::operator==(v28, v30 & 0xFFFFFFFFFFLL, v33, a2);
            v36 = v52;
            v52 = 0;
            if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v36, v13);
            }

            if (v31)
            {
              WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v31, v13);
            }

            if (!v35)
            {
              WTF::StringView::SplitResult::Iterator::operator++();
              v13 = v57;
              if (v57 != v16 || !v59)
              {
                continue;
              }
            }

            v17 = !v35;
            goto LABEL_23;
          }

          v17 = 0;
        }

LABEL_23:
        v18 = v60;
        v60 = 0;
        if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v18, v13);
        }

        if (!v17)
        {
          return WTF::RefCounted<WebKit::NetworkLoadChecker>::deref(this + 2, v13);
        }
      }

      if (*(this + 17) || (*(this + 448) & 1) != 0)
      {
        v19 = *(a3 + 120) & 0x300;
        *(this + 1168) = (*(a3 + 120) & 0x300) != 0;
        if (!v19)
        {
          return WTF::RefCounted<WebKit::NetworkLoadChecker>::deref(this + 2, v13);
        }
      }

      else
      {
        *(this + 1168) = 1;
      }
    }

    v21 = *(a3 + 14);
    *(a3 + 14) = 0;
    if (v21)
    {
      *(v21 + 106) |= 0x40u;
      v22 = *(a3 + 14);
      *(a3 + 14) = v21;
      if (v22)
      {
        WTF::ThreadSafeRefCounted<WTF::Box<WebCore::NetworkLoadMetrics>::Data,(WTF::DestructionThread)0>::deref(v22, v13);
      }
    }

    return WTF::RefCounted<WebKit::NetworkLoadChecker>::deref(this + 2, v13);
  }

  v25 = WebCore::ResourceRequestBase::url(a2);

  return MEMORY[0x1EEE58F78](v25);
}

uint64_t WebKit::redirectionError(uint64_t a1, WebCore::ResourceResponseBase *this, atomic_uint **a3)
{
  v5 = WebCore::ResourceResponseBase::url(this);
  v6 = *v5;
  if (*v5)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  v7 = *(v5 + 8);
  v8 = *(v5 + 24);
  v9 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = 0;
  v18 = 2;
  v19 = 0;
  v20 = 1;
  v13 = v6;
  *a1 = 0;
  WTF::URL::URL(a1 + 8, &v13);
  v11 = v13;
  *(a1 + 48) = v16;
  *(a1 + 56) = v17;
  *(a1 + 60) = v18;
  *(a1 + 64) = v19;
  *(a1 + 72) = v20;
  *(a1 + 664) = 1;
  v19 = 0;
  v16 = 0;
  v13 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v10);
  }

  return 0;
}

uint64_t WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v13[0] = a1;
  v13[1] = a2;
  v12[0] = a4;
  v12[1] = a5;
  v11[0] = a7;
  v11[1] = a8;
  result = WTF::tryMakeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>(v13, a3, v12, a6, v11, a9);
  if (!*a9)
  {
    __break(0xC471u);
  }

  return result;
}

WTF::StringImpl *WebKit::performCORPCheck(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, WebKit::NetworkResourceLoader *a7)
{
  result = WebCore::validateCrossOriginResourcePolicy();
  if ((a1[80] & 1) == 0)
  {
    if (a2[1] == 1 && a7 != 0)
    {
      WebCore::validateCrossOriginResourcePolicy();
      if (v17 == 1)
      {
        WebKit::contextURLforCORPViolation(&v15, a7);
        WebCore::sendCOEPCORPViolation();
        v14 = v15;
        v15 = 0;
        if (v14)
        {
          if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v14, v13);
          }
        }
      }

      result = std::optional<WebCore::ResourceError>::~optional(v16, v13);
    }

    if (*a2 == 1 && (result = WebCore::validateCrossOriginResourcePolicy(), a1[80] == 1))
    {
      if (a7)
      {
        WebKit::contextURLforCORPViolation(v16, a7);
        WebCore::sendCOEPCORPViolation();
        result = v16[0];
        v16[0] = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(result, v12);
          }
        }
      }
    }

    else
    {
      *a1 = 0;
      a1[80] = 0;
    }
  }

  return result;
}

uint64_t WebCore::ResourceError::ResourceError(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  WTF::URL::URL(a1 + 8, a2 + 1);
  v5 = a2[6];
  a2[6] = 0;
  *(a1 + 48) = v5;
  LODWORD(v5) = *(a2 + 14);
  *(a1 + 60) = *(a2 + 30);
  *(a1 + 56) = v5;
  v6 = a2[8];
  a2[8] = 0;
  *(a1 + 64) = v6;
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t WTF::StringView::trim<BOOL ()(char16_t)>(unsigned __int16 **a1, uint64_t (*a2)(void))
{
  v4 = *a1;
  v5 = *(a1 + 2);
  if (*(a1 + 12) != 1)
  {
    if (v5)
    {
      v10 = 0;
      v11 = (v5 - 1);
      for (i = *a1; ; ++i)
      {
        result = a2(*i);
        if ((result & 1) == 0)
        {
          break;
        }

        if (v5 == ++v10)
        {
          return "";
        }
      }

      if (v5 != 1)
      {
        while (v11 < v5)
        {
          result = a2(v4[v11]);
          if (result)
          {
            if (--v11)
            {
              continue;
            }
          }

          goto LABEL_25;
        }

        goto LABEL_30;
      }

LABEL_25:
      if (!v10 && v11 == *(a1 + 2) - 1)
      {
        return *a1;
      }

      if (v5 - v10 < (v11 - v10 + 1))
      {
        goto LABEL_30;
      }

      return i;
    }

    return *a1;
  }

  if (!v5)
  {
    return *a1;
  }

  v6 = 0;
  v7 = (v5 - 1);
  for (i = *a1; ; i = (i + 1))
  {
    result = a2(*i);
    if ((result & 1) == 0)
    {
      break;
    }

    if (v5 == ++v6)
    {
      return "";
    }
  }

  if (v5 != 1)
  {
    while (v7 < v5)
    {
      result = a2(*(v4 + v7));
      if (result)
      {
        if (--v7)
        {
          continue;
        }
      }

      goto LABEL_17;
    }

    goto LABEL_30;
  }

LABEL_17:
  if (!v6 && v7 == *(a1 + 2) - 1)
  {
    return *a1;
  }

  if (v5 - v6 >= (v7 - v6 + 1))
  {
    return i;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t WebKit::NetworkLoadChecker::accessControlErrorForValidationHandler(uint64_t a1, uint64_t a2, atomic_uint **a3)
{
  v4 = *(a2 + 160);
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  v10 = v4;
  v5 = *(a2 + 184);
  v11 = *(a2 + 168);
  v12 = v5;
  v6 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  v14 = 0;
  v15 = 2;
  v16 = 0;
  v17 = 1;
  v13 = v6;
  *a1 = 0;
  WTF::URL::URL(a1 + 8, &v10);
  v8 = v10;
  *(a1 + 48) = v13;
  *(a1 + 56) = v14;
  *(a1 + 60) = v15;
  *(a1 + 64) = v16;
  *(a1 + 72) = v17;
  *(a1 + 664) = 2;
  v16 = 0;
  v13 = 0;
  v10 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  return 0;
}

uint64_t mpark::variant<WebCore::ResourceRequest,WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError>::variant<WebCore::ResourceError,WebCore::ResourceError,0,0,0,2ul,WebCore::ResourceError,0>(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  WTF::URL::URL(a1 + 8, a2 + 1);
  v5 = a2[6];
  a2[6] = 0;
  *(a1 + 48) = v5;
  LODWORD(v5) = *(a2 + 14);
  *(a1 + 60) = *(a2 + 30);
  *(a1 + 56) = v5;
  v6 = a2[8];
  a2[8] = 0;
  *(a1 + 64) = v6;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 664) = 2;
  return a1;
}

uint64_t WebKit::NetworkLoadChecker::contentSecurityPolicy(WebKit::NetworkLoadChecker *this)
{
  if (*(this + 57) || *(this + 288) != 1)
  {
    return *(this + 57);
  }

  v3 = *(this + 30);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
  }

  WebCore::SecurityOrigin::toRawString(&v23, v3);
  MEMORY[0x19EB01DD0](v24, &v23, 0);
  v5 = *(this + 145);
  if (v5)
  {
    v6 = *(v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v7 = WebCore::ContentSecurityPolicy::operator new(0x100, v4);
  v8 = v7;
  if (v6)
  {
    v9 = v6 + 72;
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x19EB09300](v7, v24, 0, v9);
  v11 = *(this + 57);
  *(this + 57) = v8;
  if (v11)
  {
    WebCore::ContentSecurityPolicy::operator delete();
  }

  v12 = v24[0];
  v24[0] = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v10);
  }

  v13 = v23;
  v23 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v10);
  }

  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v3, v10);
  }

  v14 = *(this + 57);
  if (!v14)
  {
    __break(0xC471u);
    goto LABEL_36;
  }

  atomic_fetch_add(v14, 1u);
  if ((*(this + 288) & 1) == 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v15 = *(this + 65);
  if (v15)
  {
    atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
  }

  v24[0] = v15;
  WebCore::ContentSecurityPolicy::didReceiveHeaders();
  v17 = v24[0];
  v24[0] = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v16);
  }

  if (atomic_load(v14))
  {
    atomic_fetch_add(v14, 0xFFFFFFFF);
    v19 = *(this + 25);
    if (v19 && v19[1])
    {
      v20 = *(this + 57);
      if (*(v20 + 112) == 1)
      {
        WTF::String::operator=((v20 + 72), this + 25);
        v22 = *(this + 14);
        *(v20 + 80) = *(this + 13);
        *(v20 + 96) = v22;
      }

      else
      {
        atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
        *(v20 + 72) = v19;
        v21 = *(this + 14);
        *(v20 + 80) = *(this + 13);
        *(v20 + 96) = v21;
        *(v20 + 112) = 1;
      }
    }

    return *(this + 57);
  }

LABEL_37:
  result = 290;
  __break(0xC471u);
  return result;
}

void WebKit::NetworkLoadChecker::checkCORSRequest(uint64_t a1, WebCore::ResourceRequestBase *this, uint64_t *a3)
{
  v6 = *(a1 + 512);
  if (*(a1 + 512))
  {
    if (v6 != 2)
    {
      if (v6 != 1)
      {
        return;
      }

      goto LABEL_11;
    }
  }

  else if (*(a1 + 449) != 1 || (v7 = WebCore::ResourceRequestBase::httpMethod(this), (WebCore::isSimpleCrossOriginAccessRequest(v7, (a1 + 96), v8) & 1) == 0))
  {
LABEL_11:

    WebKit::NetworkLoadChecker::checkCORSRequestWithPreflight(a1, this, a3);
    return;
  }

  v9 = *(a1 + 240);
  if (v9)
  {
    atomic_fetch_add(v9, 1u);
  }

  WebCore::updateRequestForAccessControl();
  WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v9, v10);
  WTF::URL::URL(v19, this);
  WTF::URL::URL(v20, this + 5);
  v20[5] = *(this + 10);
  v11 = *(this + 88);
  *(this + 88) = 0u;
  v21 = v11;
  *&v11 = *(this + 13);
  *(this + 13) = 0;
  v22 = v11;
  *&v11 = *(this + 15);
  v23 = *(this + 14);
  v24 = v11;
  v12 = *(this + 16);
  *&v11 = *(this + 17);
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  v25 = v12;
  v26 = v11;
  LODWORD(v12) = *(this + 36);
  v28 = *(this + 148);
  v27 = v12;
  v13 = *(this + 152);
  *(this + 152) = 0u;
  v29 = v13;
  v32 = *(this + 184);
  v14 = *(this + 21);
  v15 = *(this + 22);
  *(this + 21) = 0;
  v30 = v14;
  v31 = v15;
  v16 = *(this + 24);
  *(this + 24) = 0;
  v33 = v16;
  v34 = 0;
  v17 = *a3;
  *a3 = 0;
  (*(*v17 + 16))(v17, v19);
  (*(*v17 + 8))(v17);
  mpark::detail::assignment<mpark::detail::traits<WebCore::ResourceRequest,WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError>>::~assignment(v19, v18);
}

void WebKit::NetworkLoadChecker::checkCORSRequestWithPreflight(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v147 = *MEMORY[0x1E69E9840];
  *(a1 + 449) = 0;
  WebCore::CrossOriginPreflightResultCache::singleton(a1);
  v6 = *(a1 + 248);
  buf[0] = 0;
  v123[0] = -1;
  LODWORD(v7) = *(v6 + 32);
  if (!*(v6 + 32))
  {
    v8 = *(v6 + 8);
    if (v8)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    }

    *buf = v8;
    v7 = *(v6 + 16);
    if (v7)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    }

    *&buf[8] = v7;
    *&buf[16] = *(v6 + 24);
    LOBYTE(v7) = *(v6 + 32);
    goto LABEL_7;
  }

  if (v7 != 255)
  {
    *buf = *(v6 + 8);
LABEL_7:
    v123[0] = v7;
  }

  v9 = *(a1 + 240);
  v123[8] = 0;
  BYTE8(v124) = -1;
  if (!*(v9 + 32))
  {
    v10 = *(v9 + 8);
    if (v10)
    {
      atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
    }

    *&v123[8] = v10;
    v11 = *(v9 + 16);
    if (v11)
    {
      atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
    }

    *&v123[16] = v11;
    LODWORD(v124) = *(v9 + 24);
    goto LABEL_14;
  }

  if (*(v9 + 32) != 255)
  {
    *&v123[8] = *(v9 + 8);
LABEL_14:
    BYTE8(v124) = *(v9 + 32);
  }

  WebCore::ResourceRequestBase::url(a2);
  WebCore::ResourceRequestBase::httpMethod(a2);
  canSkipPreflight = WebCore::CrossOriginPreflightResultCache::canSkipPreflight();
  if (!BYTE8(v124))
  {
    v14 = *&v123[16];
    *&v123[16] = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v12);
    }

    v15 = *&v123[8];
    *&v123[8] = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v12);
    }
  }

  BYTE8(v124) = -1;
  if (!v123[0])
  {
    v16 = *&buf[8];
    *&buf[8] = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v12);
    }

    v17 = *buf;
    *buf = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v12);
    }
  }

  if (canSkipPreflight)
  {
    v18 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = a1;
      _os_log_impl(&dword_19D52D000, v18, OS_LOG_TYPE_DEFAULT, "%p - NetworkLoadChecker::checkCORSRequestWithPreflight - preflight can be skipped thanks to cached result", buf, 0xCu);
    }

    v19 = *(a1 + 240);
    if (v19)
    {
      atomic_fetch_add(v19, 1u);
    }

    WebCore::updateRequestForAccessControl();
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v19, v20);
    WTF::URL::URL(buf, a2);
    WTF::URL::URL(&v123[16], (a2 + 40));
    v21 = *(a2 + 80);
    v22 = *(a2 + 88);
    *(a2 + 88) = 0u;
    v127 = v22;
    *&v22 = *(a2 + 104);
    *(a2 + 104) = 0;
    v126 = v21;
    v128 = v22;
    v23 = *(a2 + 120);
    v129 = *(a2 + 112);
    v130 = v23;
    v24 = *(a2 + 128);
    v25 = *(a2 + 136);
    *(a2 + 112) = 0u;
    *(a2 + 128) = 0u;
    v131 = v24;
    v132 = v25;
    LODWORD(v24) = *(a2 + 144);
    v134 = *(a2 + 148);
    v133 = v24;
    v26 = *(a2 + 152);
    *(a2 + 152) = 0u;
    v135 = v26;
    v27 = *(a2 + 168);
    v28 = *(a2 + 176);
    *(a2 + 168) = 0;
    v138 = *(a2 + 184);
    v136 = v27;
    v137 = v28;
    v29 = *(a2 + 192);
    *(a2 + 192) = 0;
    v139 = v29;
    v146 = 0;
    v30 = *a3;
    *a3 = 0;
    (*(*v30 + 16))(v30, buf);
    (*(*v30 + 8))(v30);
    mpark::detail::assignment<mpark::detail::traits<WebCore::ResourceRequest,WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError>>::~assignment(buf, v31);
    return;
  }

  WebCore::ResourceRequest::ResourceRequest(&v102, a2);
  WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::Vector(v100, a1 + 96);
  WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::Vector(v101, a1 + 112);
  WebCore::ResourceRequestBase::setHTTPHeaderFields();
  WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(v101, v32);
  WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(v100, v33);
  *&buf[8] = v103;
  LODWORD(v103) = v103 & 0xFFFFFFFE;
  v34 = v102;
  v35 = v105;
  v102 = 0;
  *v123 = v104;
  v105 = 0;
  *buf = v34;
  *&v123[16] = v35;
  v124 = v106;
  v125 = v107;
  LODWORD(v106) = v106 & 0xFFFFFFFE;
  v36 = v109;
  v109 = 0u;
  v127 = v36;
  v37 = v110;
  v110 = 0;
  v126 = v108;
  v128 = v37;
  v38 = v111;
  v111 = 0;
  v129 = v38;
  *&v36 = v112;
  v112 = 0;
  v130 = v36;
  v39 = v113;
  v113 = 0;
  v131 = v39;
  *&v36 = v114;
  v114 = 0;
  v132 = v36;
  v134 = v116;
  v133 = v115;
  v40 = v117;
  v117 = 0u;
  v135 = v40;
  v138 = v120;
  v136 = v118;
  v137 = v119;
  v41 = v121;
  v118 = 0;
  v121 = 0;
  v139 = v41;
  v42 = *(a1 + 240);
  atomic_fetch_add(v42, 1u);
  v140 = v42;
  v43 = *(a1 + 248);
  atomic_fetch_add(v43, 1u);
  v141 = v43;
  WebCore::ResourceRequestBase::httpReferrer(&v142, a2);
  WebCore::ResourceRequestBase::httpUserAgent(v143, a2);
  v44 = *(a1 + 88);
  v143[1] = *(a1 + 72);
  v143[2] = v44;
  v144 = *(a1 + 64);
  hasHTTPHeaderField = WebCore::ResourceRequestBase::hasHTTPHeaderField();
  v45 = *(a1 + 1160);
  if (v45)
  {
    v46 = *(v45 + 8);
    if (v46)
    {
      v47 = 0;
      ++v46[5];
      goto LABEL_38;
    }
  }

  else
  {
    v46 = 0;
  }

  v47 = 1;
LABEL_38:
  v48 = *(a1 + 80);
  v49 = *(a1 + 529);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a1, a1);
  v50 = *a1;
  atomic_fetch_add(*a1, 1u);
  v83 = v50;
  WTF::URL::URL(v84, a2);
  WTF::URL::URL(v85, (a2 + 40));
  *&v51 = 0;
  v82 = v51;
  v86 = *(a2 + 80);
  v52 = *(a2 + 88);
  *(a2 + 88) = 0u;
  v87 = v52;
  *&v52 = *(a2 + 104);
  *(a2 + 104) = 0;
  v88 = v52;
  *&v52 = *(a2 + 120);
  *&v89 = *(a2 + 112);
  *(&v89 + 1) = v52;
  v53 = *(a2 + 128);
  *&v52 = *(a2 + 136);
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *&v90 = v53;
  *(&v90 + 1) = v52;
  LODWORD(v53) = *(a2 + 144);
  v92 = *(a2 + 148);
  v91 = v53;
  v54 = *(a2 + 152);
  *(a2 + 152) = 0u;
  v93 = v54;
  v96 = *(a2 + 184);
  v55 = *(a2 + 168);
  v56 = *(a2 + 176);
  *(a2 + 168) = 0;
  v94 = v55;
  v95 = v56;
  v57 = *(a2 + 192);
  *(a2 + 192) = 0;
  v58 = *a3;
  *a3 = 0;
  *&v97 = v57;
  *(&v97 + 1) = v58;
  v98 = *(a1 + 464) != 0;
  v59 = WTF::fastMalloc(0xE8);
  *v59 = &unk_1F11012E8;
  *(v59 + 8) = v83;
  WTF::URL::URL(v59 + 16, v84);
  WTF::URL::URL(v59 + 56, v85);
  *(v59 + 96) = v86;
  *(v59 + 104) = v87;
  v61 = *(&v87 + 1);
  v87 = 0u;
  *(v59 + 112) = v61;
  v62 = v88;
  v88 = 0;
  *(v59 + 120) = v62;
  v63 = v89;
  v89 = v82;
  *(v59 + 128) = v63;
  v64 = v90;
  v90 = v82;
  *(v59 + 144) = v64;
  LODWORD(v61) = v91;
  *(v59 + 164) = v92;
  *(v59 + 160) = v61;
  *(v59 + 168) = v93;
  v65 = *(&v93 + 1);
  v93 = 0u;
  *(v59 + 176) = v65;
  v66 = v94;
  v94 = 0;
  *(v59 + 184) = v66;
  v67 = v95;
  *(v59 + 200) = v96;
  *(v59 + 192) = v67;
  *(v59 + 208) = v97;
  v97 = 0u;
  *(v59 + 224) = v98;
  v99 = v59;
  if (WebKit::NetworkCORSPreflightChecker::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::NetworkCORSPreflightChecker::s_heapRef, v60);
  }

  else
  {
    NonCompact = WebKit::NetworkCORSPreflightChecker::operatorNewSlow(0x4A0);
  }

  v69 = WebKit::NetworkCORSPreflightChecker::NetworkCORSPreflightChecker(NonCompact, v48, v46, buf, v49, &v99);
  v71 = *(a1 + 440);
  *(a1 + 440) = v69;
  if (v71)
  {
    WTF::RefCounted<WebKit::NetworkCORSPreflightChecker>::deref((v71 + 16), v70);
  }

  v72 = v99;
  v99 = 0;
  if (v72)
  {
    (*(*v72 + 8))(v72);
  }

  v73 = *(&v97 + 1);
  *(&v97 + 1) = 0;
  if (v73)
  {
    (*(*v73 + 8))(v73);
  }

  WebCore::ResourceRequest::~ResourceRequest(v84);
  v74 = *(a1 + 440);
  if (v74)
  {
    v75 = v74 + 4;
    ++v74[4];
    WebKit::NetworkCORSPreflightChecker::startPreflight(v74);
    WTF::RefCounted<WebKit::NetworkCORSPreflightChecker>::deref(v75, v76);
    if ((v47 & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else
  {
    WebKit::NetworkCORSPreflightChecker::startPreflight(0);
    if ((v47 & 1) == 0)
    {
LABEL_48:
      if (v46[5] == 1)
      {
        (*(*v46 + 24))(v46);
      }

      else
      {
        --v46[5];
      }
    }
  }

  v78 = v143[0];
  v143[0] = 0;
  if (v78 && atomic_fetch_add_explicit(v78, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v78, v77);
  }

  v79 = v142;
  v142 = 0;
  if (v79 && atomic_fetch_add_explicit(v79, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v79, v77);
  }

  v80 = v141;
  v141 = 0;
  if (v80)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v80, v77);
  }

  v81 = v140;
  v140 = 0;
  if (v81)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v81, v77);
  }

  WebCore::ResourceRequest::~ResourceRequest(buf);
  WebCore::ResourceRequest::~ResourceRequest(&v102);
}

uint64_t std::experimental::fundamentals_v3::expected<WebKit::NetworkLoadChecker::ContentExtensionResult,WebCore::ResourceError>::expected(uint64_t a1, uint64_t a2)
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
  *(a1 + 136) = 0;
  *(a1 + 128) = 0;
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
  *(a1 + 208) = 0;
  return a1;
}

WebCore::ResourceRequest *std::experimental::fundamentals_v3::expected<WebKit::NetworkLoadChecker::ContentExtensionResult,WebCore::ResourceError>::~expected(WebCore::ResourceRequest *this, WTF::StringImpl *a2)
{
  if (*(this + 208))
  {
    if (*(this + 208) != 255)
    {
      v4 = *(this + 8);
      *(this + 8) = 0;
      if (v4)
      {
        CFRelease(v4);
      }

      v5 = *(this + 6);
      *(this + 6) = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }

      v6 = *(this + 1);
      *(this + 1) = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }

      v7 = *this;
      *this = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, a2);
      }
    }
  }

  else
  {
    WebCore::ResourceRequest::~ResourceRequest(this);
  }

  *(this + 208) = -1;
  return this;
}

uint64_t *WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>::CompletionHandler<WebKit::NetworkLoadChecker::processContentRuleListsForLoad(WebCore::ResourceRequest &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebKit::NetworkLoadChecker::ContentExtensionResult,WebCore::ResourceError> &&)> &&)::$_0,void>(uint64_t *a1, uint64_t *a2)
{
  v4 = WTF::fastMalloc(0xE0);
  v5 = *a2;
  *a2 = 0;
  *v4 = &unk_1F1101310;
  *(v4 + 8) = v5;
  WTF::URL::URL(v4 + 16, a2 + 1);
  WTF::URL::URL(v4 + 56, a2 + 6);
  *(v4 + 96) = a2[11];
  v6 = a2[12];
  a2[12] = 0;
  *(v4 + 104) = v6;
  *(v4 + 120) = 0;
  *(v4 + 112) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v4 + 112, a2 + 13);
  *(v4 + 136) = 0;
  *(v4 + 128) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v4 + 128, a2 + 15);
  *(v4 + 152) = 0;
  *(v4 + 144) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v4 + 144, a2 + 34);
  v7 = *(a2 + 38);
  *(v4 + 164) = *(a2 + 156);
  *(v4 + 160) = v7;
  v8 = a2[20];
  a2[20] = 0;
  *(v4 + 168) = v8;
  v9 = a2[21];
  a2[21] = 0;
  *(v4 + 176) = v9;
  v10 = a2[22];
  a2[22] = 0;
  *(v4 + 184) = v10;
  v11 = a2[23];
  *(v4 + 200) = *(a2 + 192);
  *(v4 + 192) = v11;
  v12 = *(a2 + 25);
  a2[25] = 0;
  a2[26] = 0;
  *(v4 + 208) = v12;
  *a1 = v4;
  return a1;
}

uint64_t WebKit::NetworkLoadChecker::processContentRuleListsForLoad(WebCore::ResourceRequest &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebKit::NetworkLoadChecker::ContentExtensionResult,WebCore::ResourceError> &&)> &&)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 208);
  *(a1 + 208) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  WebCore::ResourceRequest::~ResourceRequest((a1 + 8));
  v4 = *a1;
  *a1 = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, v3);
  }

  return a1;
}

void WebKit::NetworkLoadChecker::storeRedirectionIfNeeded(WebKit::NetworkLoadChecker *this, const WebCore::ResourceRequest *a2, const WebCore::ResourceResponse *a3)
{
  if (*(this + 529) == 1)
  {
    v19 = v3;
    v20 = v4;
    v12[0] = 0;
    WebCore::ResourceRequest::ResourceRequest(v13, a2);
    WebCore::ResourceResponse::ResourceResponse(v14, a3);
    WebCore::NetworkLoadMetrics::NetworkLoadMetrics(&v16);
    v7 = *(this + 285);
    if (v7 == *(this + 284))
    {
      WTF::Vector<WebCore::NetworkTransactionInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::NetworkTransactionInformation>(this + 1128, v12);
    }

    else
    {
      WebCore::NetworkTransactionInformation::NetworkTransactionInformation(*(this + 141) + 600 * v7, v12);
      ++*(this + 285);
    }

    v9 = v18;
    v18 = 0;
    if (v9)
    {
      WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v9, v8);
    }

    v10 = v17;
    v17 = 0;
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

    WebCore::ResourceResponseBase::~ResourceResponseBase(v14, v8);
    WebCore::ResourceRequest::~ResourceRequest(v13);
  }
}

unsigned int *WebKit::NetworkLoadScheduler::HostContext::schedule(WebKit::NetworkLoadScheduler::HostContext *this, WebKit::NetworkLoad *a2)
{
  if (WebCore::ResourceRequestBase::priority((a2 + 3328)) <= 1 && (WebCore::ResourceRequestBase::isConditional((a2 + 3328)) & 1) == 0 && WTF::WeakHashSet<WebKit::NetworkLoad,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::computeSize(this, v5) > 1)
  {
    return WTF::WeakListHashSet<WebKit::NetworkLoad,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::NetworkLoad>(this + 16, a2, v6);
  }

  WTF::WeakHashSet<WebKit::NetworkLoad,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::NetworkLoad>(this, a2, v6);
  return WebKit::NetworkLoad::start(a2);
}

unsigned int *WTF::WeakListHashSet<WebKit::NetworkLoad,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::NetworkLoad>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 28);
  v7 = *(a1 + 24) + 1;
  *(a1 + 24) = v7;
  if (v7 > v6)
  {
    WTF::WeakListHashSet<WebKit::NetworkLoad,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::removeNullReferences(a1);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a2 + 8), a2);
  v8 = *(a2 + 8);
  atomic_fetch_add(v8, 1u);
  v11 = v8;
  WTF::ListHashSet<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>::add(a1, &v11, a3);
  result = v11;
  v11 = 0;
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, v9);
    }
  }

  return result;
}

uint64_t WTF::WeakListHashSet<WebKit::NetworkLoad,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::remove<WebKit::NetworkLoad>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 28);
  v5 = *(a1 + 24) + 1;
  *(a1 + 24) = v5;
  if (v5 > v4)
  {
    WTF::WeakListHashSet<WebKit::NetworkLoad,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::removeNullReferences(a1);
  }

  v6 = *(a2 + 8);
  if (!v6 || !*(v6 + 8))
  {
    return 0;
  }

  v11 = *(a2 + 8);
  v7 = WTF::HashTable<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::FastMalloc>::find<WTF::ListHashSetTranslator<WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,(WTF::ShouldValidateKey)1,WTF::DefaultWeakPtrImpl const*>(a1, &v11);
  v8 = *a1;
  if (*a1)
  {
    v8 += 8 * *(v8 - 4);
  }

  if (v8 == v7)
  {
    return 0;
  }

  v10 = *v7;
  if (!*v7)
  {
    return 0;
  }

  v11 = *v7;
  WTF::HashTable<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::FastMalloc>::remove<(WTF::ShouldValidateKey)1>(a1, &v11);
  WTF::ListHashSet<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>::unlinkAndDelete(a1, v10);
  return 1;
}

uint64_t WTF::WeakListHashSet<WebKit::NetworkLoad,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::tryTakeFirst(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0;
  }

  while (1)
  {
    v2 = *(*v1 + 8);
    if (v2)
    {
      break;
    }

    v1 = *(v1 + 2);
    if (!v1)
    {
      return v2;
    }
  }

  WTF::WeakListHashSet<WebKit::NetworkLoad,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::remove(a1, a1, v1);
  return v2;
}

atomic_ullong *WebKit::NetworkLoadScheduler::HostContext::prioritize(WebKit::NetworkLoadScheduler::HostContext *this, WebKit::NetworkLoad *a2)
{
  v4 = WebCore::ResourceRequestBase::priority((a2 + 96));
  WebKit::NetworkLoad::reprioritizeRequest(a2, (v4 + 1));
  result = WTF::WeakListHashSet<WebKit::NetworkLoad,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::remove<WebKit::NetworkLoad>(this + 16, a2);
  if (result)
  {

    return WebKit::NetworkLoadScheduler::HostContext::start(this, a2);
  }

  return result;
}

unsigned int *WTF::WeakHashSet<WebKit::NetworkLoad,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::NetworkLoad>@<X0>(unsigned int *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[3];
  v7 = a1[2] + 1;
  a1[2] = v7;
  if (v7 > v6)
  {
    _ZN3WTF7HashSetINS_3RefINS_18DefaultWeakPtrImplENS_12RawPtrTraitsIS2_EENS_21DefaultRefDerefTraitsIS2_EEEENS_11DefaultHashIS7_EENS_10HashTraitsIS7_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1EE8removeIfIZNS_11WeakHashSetIN6WebKit11NetworkLoadES2_LNS_32EnableWeakPtrThreadingAssertionsE1EE20removeNullReferencesEvEUlRT_E_EEbRKSL_(a1, a2);
    v11 = 0;
    a1[2] = 0;
    if (*a1 && (v11 = *(*a1 - 12), v11 > 0x7FFFFFFE))
    {
      v12 = -2;
    }

    else
    {
      v12 = 2 * v11;
    }

    a1[3] = v12;
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 2, a2);
  v8 = *(a2 + 1);
  atomic_fetch_add(v8, 1u);
  v13 = v8;
  WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(a1, &v13, a3);
  result = v13;
  v13 = 0;
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, v9);
    }
  }

  return result;
}

void WebKit::NetworkLoadScheduler::HostContext::~HostContext(WebKit::NetworkLoadScheduler::HostContext *this, WebKit::NetworkLoad *a2)
{
  v3 = *(this + 3);
  if (v3)
  {
    while (1)
    {
      a2 = *(*v3 + 8);
      if (a2)
      {
        break;
      }

      v3 = v3[2];
      if (!v3)
      {
        goto LABEL_2;
      }
    }

LABEL_6:
    v5 = (a2 + 16);
    ++*(a2 + 4);
    WebKit::NetworkLoadScheduler::HostContext::start(this, a2);
    WTF::RefCounted<WebKit::NetworkLoad>::deref(v5);
    while (1)
    {
      v3 = v3[2];
      if (!v3)
      {
        break;
      }

      a2 = *(*v3 + 8);
      if (a2)
      {
        ++*(this + 10);
        goto LABEL_6;
      }
    }

    ++*(this + 10);
  }

LABEL_2:
  WTF::ListHashSet<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>::~ListHashSet(this + 2, a2);
  if (*this)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(*this, v4);
  }
}

void WebKit::NetworkLoadScheduler::~NetworkLoadScheduler(WebKit::NetworkLoadScheduler *this, WTF::StringImpl *a2)
{
  v3 = *(this + 4);
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 3);
  if (v4)
  {
    v5 = *(v4 - 4);
    if (v5)
    {
      v6 = (v4 + 24);
      do
      {
        if (*(v6 - 3) != -1)
        {
          WTF::ListHashSet<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>::~ListHashSet(v6, a2);
          v7 = *(v6 - 2);
          *(v6 - 2) = 0;
          if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v7, a2);
          }

          v8 = *(v6 - 3);
          *(v6 - 3) = 0;
          if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v8, a2);
          }
        }

        v6 += 7;
        --v5;
      }

      while (v5);
    }

    WTF::fastFree((v4 - 16), a2);
  }

  v9 = *(this + 2);
  if (v9)
  {
    v10 = *(v9 - 4);
    if (v10)
    {
      v11 = (v9 + 8);
      do
      {
        if (*(v11 - 1) != -1)
        {
          v11 = std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::~unique_ptr[abi:sn200100](v11, a2);
        }

        v11 += 2;
        --v10;
      }

      while (v10);
    }

    WTF::fastFree((v9 - 16), a2);
  }

  if (*(this + 2) == 1)
  {
    if (*this)
    {
      *(*this + 8) = 0;
      v12 = *this;
      *this = 0;
      if (v12)
      {
        if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v12);
          WTF::fastFree(v12, a2);
        }
      }
    }
  }

  else
  {
    __break(0xC471u);
  }
}

WTF::StringImpl *WebKit::NetworkLoadScheduler::scheduleMainResourceLoad(WebKit::NetworkLoadScheduler *this, atomic_ullong *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = WebCore::ResourceRequestBase::url((a2 + 12));
  WTF::URL::protocolHostAndPort(&v24, v4);
  if (!*(this + 4) || !WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::String>,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(this + 4, &v24, v5))
  {
    goto LABEL_2;
  }

  WebCore::ResourceRequestBase::httpUserAgent(&v23, (a2 + 12));
  v9 = v23;
  v10 = v24;
  v11 = MEMORY[0x1E696EBA8];
  v12 = *MEMORY[0x1E696EBA8];
  if (!v24)
  {
    v10 = *MEMORY[0x1E696EBA8];
  }

  if (v10)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
    v12 = *v11;
  }

  *buf = v10;
  if (v9)
  {
    v13 = v23;
  }

  else
  {
    v13 = v12;
  }

  if (v13)
  {
    atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
  }

  *&buf[8] = v13;
  v14 = WTF::HashTable<std::tuple<WTF::String,WTF::String>,WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>>,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashMap<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>>,(WTF::ShouldValidateKey)1,std::tuple<WTF::String,WTF::String>>(this + 3, buf, v8);
  WTF::KeyValuePair<WTF::String,WTF::String>::~KeyValuePair(buf, v15);
  v17 = v23;
  v23 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v16);
  }

  v18 = *(this + 3);
  if (v18)
  {
    v18 += 7 * *(v18 - 1);
  }

  if (v18 != v14 && (v19 = *(v14 + 4)) != 0)
  {
    *(v14 + 4) = v19 - 1;
    WTF::WeakListHashSet<WebKit::NetworkLoad,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::NetworkLoad>((v14 + 3), a2, buf);
    v20 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(v14 + 4);
      WTF::WeakListHashSet<WebKit::NetworkLoad,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::removeNullReferences((v14 + 3));
      v22 = v14[3];
      if (v22)
      {
        LODWORD(v22) = *(v22 - 3);
      }

      *buf = 134218752;
      *&buf[4] = this;
      *&buf[12] = 2048;
      *&buf[14] = a2;
      v26 = 1024;
      v27 = v21;
      v28 = 1024;
      v29 = v22;
      _os_log_impl(&dword_19D52D000, v20, OS_LOG_TYPE_DEFAULT, "%p - NetworkLoadScheduler::scheduleMainResourceLoad deferring load %p; %u pending preconnects; %u pending loads", buf, 0x22u);
    }
  }

  else
  {
LABEL_2:
    WebKit::NetworkLoad::start(a2);
  }

  result = v24;
  v24 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v6);
    }
  }

  return result;
}

unsigned int *WebKit::NetworkLoadScheduler::scheduleLoad(WebKit::NetworkLoadScheduler *this, WebKit::NetworkLoad *a2)
{
  v3 = WebKit::NetworkLoadScheduler::contextForLoad(this, a2);
  if (v3)
  {

    return WebKit::NetworkLoadScheduler::HostContext::schedule(v3, a2);
  }

  else
  {

    return WebKit::NetworkLoad::start(a2);
  }
}

WTF::StringImpl *WebKit::NetworkLoadScheduler::unscheduleMainResourceLoad(WebKit::NetworkLoadScheduler *this, WebKit::NetworkLoad *a2, const WTF::String **a3)
{
  v6 = WebCore::ResourceRequestBase::url((a2 + 96));
  WTF::URL::protocolHostAndPort(&v22, v6);
  if (a3)
  {
    WebKit::NetworkLoadScheduler::updateOriginProtocolInfo(this, &v22, a3[11]);
  }

  WebCore::ResourceRequestBase::httpUserAgent(&v19, (a2 + 96));
  v8 = v22;
  v9 = v19;
  v10 = MEMORY[0x1E696EBA8];
  v11 = *MEMORY[0x1E696EBA8];
  if (!v22)
  {
    v8 = *MEMORY[0x1E696EBA8];
  }

  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    v11 = *v10;
  }

  v20[0] = v8;
  if (v9)
  {
    v12 = v19;
  }

  else
  {
    v12 = v11;
  }

  if (v12)
  {
    atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
  }

  v20[1] = v12;
  v13 = WTF::HashTable<std::tuple<WTF::String,WTF::String>,WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>>,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashMap<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>>,(WTF::ShouldValidateKey)1,std::tuple<WTF::String,WTF::String>>(this + 3, v20, v7);
  v21[0] = v13;
  v21[1] = v14;
  WTF::KeyValuePair<WTF::String,WTF::String>::~KeyValuePair(v20, v14);
  v16 = v19;
  v19 = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v15);
  }

  v17 = *(this + 3);
  if (v17)
  {
    v17 += 7 * *(v17 - 1);
  }

  if (v17 != v13 && WTF::WeakListHashSet<WebKit::NetworkLoad,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::remove<WebKit::NetworkLoad>((v13 + 3), a2))
  {
    WebKit::NetworkLoadScheduler::maybePrunePreconnectInfo(this, v21);
  }

  result = v22;
  v22 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v15);
    }
  }

  return result;
}

uint64_t *WebKit::NetworkLoadScheduler::contextForLoad(WebKit::NetworkLoadScheduler *this, const WebKit::NetworkLoad *a2)
{
  if ((*(WebCore::ResourceRequestBase::url((a2 + 96)) + 8) & 2) == 0)
  {
    return 0;
  }

  v4 = *(a2 + 7);
  if (v4 == -1)
  {
    goto LABEL_46;
  }

  if (!v4)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC62F7CLL);
  }

  v5 = *(this + 2);
  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 - 8);
  v7 = (v4 + ~(v4 << 32)) ^ ((v4 + ~(v4 << 32)) >> 22);
  v8 = 9 * ((v7 + ~(v7 << 13)) ^ ((v7 + ~(v7 << 13)) >> 8));
  v9 = (v8 ^ (v8 >> 15)) + ~((v8 ^ (v8 >> 15)) << 27);
  v10 = v6 & ((v9 >> 31) ^ v9);
  v11 = *(v5 + 16 * v10);
  if (v11 != v4)
  {
    v12 = 1;
    while (v11)
    {
      v10 = (v10 + v12) & v6;
      v11 = *(v5 + 16 * v10);
      ++v12;
      if (v11 == v4)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

LABEL_9:
  v13 = *(v5 + 16 * v10 + 8);
  if (v13)
  {
    v14 = WebCore::ResourceRequestBase::url((a2 + 96));
    WTF::URL::host(v14);
    if ((v15 & 0x100000000) != 0)
    {
      WTF::String::String();
    }

    else
    {
      WTF::String::String();
    }

    if (v33 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DC62F9CLL);
    }

    if (v33)
    {
      v17 = *v13;
      if (*v13 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(v13, 0), (v17 = *v13) != 0))
      {
        v18 = *(v17 - 8);
      }

      else
      {
        v18 = 0;
      }

      v19 = *(v33 + 4);
      if (v19 < 0x100)
      {
        v20 = WTF::StringImpl::hashSlowCase(v33);
      }

      else
      {
        v20 = v19 >> 8;
      }

      v21 = 0;
      for (i = 1; ; ++i)
      {
        v23 = v20 & v18;
        v24 = (v17 + 16 * (v20 & v18));
        v25 = *v24;
        if (!*v24)
        {
          break;
        }

        if (v25 == -1)
        {
          v21 = (v17 + 16 * v23);
        }

        else if (WTF::equal(v25, v33, v16))
        {
          goto LABEL_22;
        }

        v20 = i + v23;
      }

      if (v21)
      {
        *v21 = 0;
        v21[1] = 0;
        --*(*v13 - 16);
        v24 = v21;
      }

      WTF::HashMapEnsureTranslator<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::String const&,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WebKit::NetworkLoadScheduler::contextForLoad(WebKit::NetworkLoad const&)::$_0>(v24, &v33);
      v29 = *v13;
      if (*v13)
      {
        v30 = *(v29 - 12) + 1;
      }

      else
      {
        v30 = 1;
      }

      *(v29 - 12) = v30;
      v31 = (*(v29 - 16) + v30);
      v32 = *(v29 - 4);
      if (v32 > 0x400)
      {
        if (v32 > 2 * v31)
        {
          goto LABEL_22;
        }
      }

      else if (3 * v32 > 4 * v31)
      {
LABEL_22:
        v13 = v24[1];
        v27 = v33;
        v33 = 0;
        if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v27, v26);
        }

        return v13;
      }

      v24 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(v13, v24);
      goto LABEL_22;
    }

LABEL_46:
    __break(0xC471u);
    JUMPOUT(0x19DC62F5CLL);
  }

  return v13;
}

WTF::StringImpl *WebKit::NetworkLoadScheduler::updateOriginProtocolInfo(WebKit::NetworkLoadScheduler *this, WTF::StringImpl **a2, const WTF::String *a3)
{
  if (MEMORY[0x19EB01EF0](a3, "http/1.1", 8))
  {
    v6 = *(this + 4);
    if (v6)
    {
      if (*(v6 - 12) >= 0x80u)
      {
        v9 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::random(this + 4);
        WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove(this + 4, v9);
      }
    }

    return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(this + 4, a2, v5, v10);
  }

  else
  {
    v8 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::String>,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(this + 4, a2, v5);

    return WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove(this + 4, v8);
  }
}

uint64_t *WebKit::NetworkLoadScheduler::maybePrunePreconnectInfo(uint64_t *result, void *a2)
{
  if (!*(*a2 + 16))
  {
    v3 = result;
    result = WTF::WeakListHashSet<WebKit::NetworkLoad,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::isEmptyIgnoringNullReferences((*a2 + 24), a2);
    if (result)
    {
      v4 = *a2;

      return WTF::HashMap<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(v3 + 3, v4);
    }
  }

  return result;
}

WTF::StringImpl **WebKit::NetworkLoadScheduler::startedPreconnectForMainResource(WebKit::NetworkLoadScheduler *this, const WTF::URL *a2, atomic_uint **a3)
{
  WTF::URL::protocolHostAndPort(&v20, a2);
  v7 = v20;
  v8 = *a3;
  v9 = MEMORY[0x1E696EBA8];
  v10 = *MEMORY[0x1E696EBA8];
  if (!v20)
  {
    v7 = *MEMORY[0x1E696EBA8];
  }

  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    v10 = *v9;
  }

  v11 = *a3;
  v22[0] = v7;
  if (v8)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
  }

  v22[1] = v12;
  v13 = v20;
  v20 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v5);
  }

  v14 = WTF::HashTable<std::tuple<WTF::String,WTF::String>,WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>>,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashMap<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>>,(WTF::ShouldValidateKey)1,std::tuple<WTF::String,WTF::String>>(this + 3, v22, v6);
  v16 = *(this + 3);
  if (v16)
  {
    v16 += 7 * *(v16 - 1);
  }

  if (v16 == v14)
  {
    LODWORD(v20) = 1;
    memset(v21, 0, sizeof(v21));
    WTF::HashMap<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>(&v19, this + 3, v22, &v20);
    WTF::ListHashSet<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>::~ListHashSet(v21, v17);
  }

  else
  {
    ++*(v14 + 4);
  }

  return WTF::KeyValuePair<WTF::String,WTF::String>::~KeyValuePair(v22, v15);
}

uint64_t WTF::HashMap<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>(uint64_t a1, uint64_t *a2, WTF **a3, int *a4)
{
  v24 = a4;
  WTF::checkHashTableKey<std::tuple<WTF::String,WTF::String>,WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>>,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashMap<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashMapTranslator<WTF::HashMap<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>>,(WTF::ShouldValidateKey)1,std::tuple<WTF::String,WTF::String>>(a3, a2, a3);
  v7 = *a2;
  if (*a2 || (WTF::HashTable<std::tuple<WTF::String,WTF::String>,WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>>,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashMap<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::FastMalloc>::expand(a2, 0), (v7 = *a2) != 0))
  {
    v8 = *(v7 - 8);
  }

  else
  {
    v8 = 0;
  }

  v9 = WTF::TupleHash<WTF::String,WTF::String>::hash<0ul>(a3) & v8;
  v10 = (v7 + 56 * v9);
  v25 = 0;
  v26 = 0;
  if ((std::__tuple_equal<2ul>::operator()[abi:sn200100]<std::tuple<WTF::String,WTF::String>,std::tuple<WTF::String,WTF::String>>(v10, &v25, v11) & 1) == 0)
  {
    v20 = 0;
    v21 = 1;
    do
    {
      if (*v10 == -1)
      {
        v20 = v10;
      }

      else
      {
        result = WTF::TupleHash<WTF::String,WTF::String>::equal<0ul>(v10, a3, v12);
        if (result)
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
          v18 = v22 + 56 * v23;
          goto LABEL_10;
        }
      }

      v9 = (v9 + v21) & v8;
      v10 = (v7 + 56 * v9);
      v25 = 0;
      v26 = 0;
      ++v21;
    }

    while (!std::__tuple_equal<2ul>::operator()[abi:sn200100]<std::tuple<WTF::String,WTF::String>,std::tuple<WTF::String,WTF::String>>(v10, &v25, v12));
    if (v20)
    {
      *v20 = 0;
      v20[1] = 0;
      v20[2] = 1;
      *(v20 + 3) = 0u;
      *(v20 + 5) = 0u;
      --*(*a2 - 16);
      v10 = v20;
    }
  }

  result = WTF::HashMapTranslator<WTF::HashMap<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>>::translate<std::tuple<WTF::String,WTF::String> const&,WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<std::tuple<WTF::String,WTF::String>,WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>>,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashMap<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::FastMalloc>,std::tuple<WTF::String,WTF::String>,WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>>,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashMap<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>>> WTF::HashMap<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<std::tuple<WTF::String,WTF::String> const&,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>(std::tuple<WTF::String,WTF::String> const&,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo &&)::{lambda(void)#1}>(v10, a3, &v24);
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
    result = WTF::HashTable<std::tuple<WTF::String,WTF::String>,WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>>,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashMap<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::FastMalloc>::expand(a2, v10);
    v10 = result;
    v14 = *a2;
    if (*a2)
    {
      LODWORD(v17) = *(v14 - 4);
    }

    else
    {
      LODWORD(v17) = 0;
    }

    goto LABEL_9;
  }

  if (3 * v17 <= 4 * v16)
  {
    goto LABEL_21;
  }

LABEL_9:
  v18 = v14 + 56 * v17;
  v19 = 1;
LABEL_10:
  *a1 = v10;
  *(a1 + 8) = v18;
  *(a1 + 16) = v19;
  return result;
}

WTF::StringImpl *WebKit::NetworkLoadScheduler::finishedPreconnectForMainResource(WebKit::NetworkLoadScheduler *this, const WTF::URL *a2, atomic_uint **a3, const WebCore::ResourceError *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  WTF::URL::protocolHostAndPort(&v25, a2);
  v8 = v25;
  v9 = *a3;
  v10 = MEMORY[0x1E696EBA8];
  v11 = *MEMORY[0x1E696EBA8];
  if (!v25)
  {
    v8 = *MEMORY[0x1E696EBA8];
  }

  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    v11 = *v10;
  }

  v12 = *a3;
  *buf = v8;
  if (v9)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
  }

  *&buf[8] = v13;
  v14 = WTF::HashTable<std::tuple<WTF::String,WTF::String>,WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>>,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashMap<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>>,(WTF::ShouldValidateKey)1,std::tuple<WTF::String,WTF::String>>(this + 3, buf, v7);
  v26[0] = v14;
  v26[1] = v15;
  WTF::KeyValuePair<WTF::String,WTF::String>::~KeyValuePair(buf, v15);
  result = v25;
  v25 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v16);
  }

  v18 = *(this + 3);
  if (v18)
  {
    v18 += 7 * *(v18 - 1);
  }

  if (v18 != v14)
  {
    if (WTF::WeakListHashSet<WebKit::NetworkLoad,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::isEmptyIgnoringNullReferences(v14 + 3, v16))
    {
      --*(v14 + 4);
    }

    else
    {
      v19 = WTF::WeakListHashSet<WebKit::NetworkLoad,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::takeFirst((v14 + 3));
      ++*(v19 + 16);
      v20 = qword_1ED6416F0;
      if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(a4 + 60);
        v22 = *(v14 + 4);
        WTF::WeakListHashSet<WebKit::NetworkLoad,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::removeNullReferences((v14 + 3));
        v23 = v14[3];
        if (v23)
        {
          LODWORD(v23) = *(v23 - 3);
        }

        *buf = 134219008;
        *&buf[4] = this;
        *&buf[12] = 1024;
        *&buf[14] = v21;
        v28 = 2048;
        v29 = v19;
        v30 = 1024;
        v31 = v22;
        v32 = 1024;
        v33 = v23;
        _os_log_impl(&dword_19D52D000, v20, OS_LOG_TYPE_DEFAULT, "%p - NetworkLoadScheduler::finishedPreconnectForMainResource (error: %d) starting delayed main resource load %p; %u pending preconnects; %u total pending loads", buf, 0x28u);
      }

      WebKit::NetworkLoad::start(v19);
      WTF::RefCounted<WebKit::NetworkLoad>::deref((v19 + 16), v24);
    }

    return WebKit::NetworkLoadScheduler::maybePrunePreconnectInfo(this, v26);
  }

  return result;
}

uint64_t WTF::WeakListHashSet<WebKit::NetworkLoad,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::isEmptyIgnoringNullReferences(void *a1, void *a2)
{
  if (!*a1)
  {
    return 1;
  }

  if (!*(*a1 - 12))
  {
    return 1;
  }

  v3 = a1[1];
  if (!v3)
  {
LABEL_9:
    WTF::WeakListHashSet<WebKit::NetworkLoad,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::clear(a1, a2);
    return 1;
  }

  while (!*(*v3 + 8))
  {
    v3 = v3[2];
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  return 0;
}

uint64_t WTF::WeakListHashSet<WebKit::NetworkLoad,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::takeFirst(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = 0;
    while (!*(*v1 + 8))
    {
      v1 = *(v1 + 2);
      if (!v1)
      {
        goto LABEL_3;
      }
    }

    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

LABEL_3:
  v3 = *(*v2 + 8);
  WTF::WeakListHashSet<WebKit::NetworkLoad,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::remove(a1, a1, v2);
  return v3;
}

uint64_t *WTF::HashMap<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(uint64_t *a1, uint64_t a2)
{
  if (*a1)
  {
    v2 = *a1 + 56 * *(*a1 - 4);
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
    return WTF::HashTable<std::tuple<WTF::String,WTF::String>,WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>>,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashMap<std::tuple<WTF::String,WTF::String>,WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo,WTF::DefaultHash<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::HashTraits<WebKit::NetworkLoadScheduler::PendingMainResourcePreconnectInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::tuple<WTF::String,WTF::String>>,WTF::FastMalloc>::remove(a1, a2);
  }

  return a1;
}

uint64_t WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove(uint64_t *a1, WTF::StringImpl *a2)
{
  if (!*a1)
  {
    if (a2)
    {
      v2 = 0;
      goto LABEL_3;
    }

    return 0;
  }

  v2 = *a1 + 8 * *(*a1 - 4);
  if (v2 == a2)
  {
    return 0;
  }

LABEL_3:
  if (v2 != a2)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::remove(a1, a2);
  }

  return 1;
}

uint64_t *WebKit::NetworkLoadScheduler::setResourceLoadSchedulingMode(uint64_t *result, uint64_t a2, int a3)
{
  v3 = result;
  v6 = a2;
  if (a3)
  {
    if (a3 == 1)
    {
      return WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::ensure<WebKit::NetworkLoadScheduler::setResourceLoadSchedulingMode(WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::LoadSchedulingMode)::$_0>(&v5, result + 2, &v6);
    }
  }

  else
  {
    v4 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( result + 2,  &v6);
    return WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(v3 + 2, v4);
  }

  return result;
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::ensure<WebKit::NetworkLoadScheduler::setResourceLoadSchedulingMode(WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::LoadSchedulingMode)::$_0>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMapEnsureTranslator<WTF::HashMapEnsureTranslator,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(*a3);
  v6 = *a2;
  if (*a2 || (WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, 0), (v6 = *a2) != 0))
  {
    v7 = *(v6 - 8);
  }

  else
  {
    v7 = 0;
  }

  result = WTF::ObjectIdentifierGenericBaseHash<unsigned long long>::hash(a3);
  v9 = result & v7;
  v10 = (v6 + 16 * (result & v7));
  v11 = *v10;
  v12 = *a3;
  if (*v10)
  {
    v19 = 0;
    v20 = 1;
    do
    {
      if (v11 == v12)
      {
        v21 = *a2;
        if (*a2)
        {
          v22 = *(v21 - 4);
        }

        else
        {
          v22 = 0;
        }

        v18 = 0;
        v17 = v21 + 16 * v22;
        goto LABEL_10;
      }

      if (v11 == -1)
      {
        v19 = v10;
      }

      v9 = (v9 + v20) & v7;
      v10 = (v6 + 16 * v9);
      v11 = *v10;
      ++v20;
    }

    while (*v10);
    if (v19)
    {
      *v19 = 0;
      v19[1] = 0;
      --*(*a2 - 16);
      v12 = *a3;
      v10 = v19;
    }
  }

  result = WTF::HashMapEnsureTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::translate<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WebKit::NetworkLoadScheduler::setResourceLoadSchedulingMode(WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::LoadSchedulingMode)::$_0>(v10, v12);
  v13 = *a2;
  if (*a2)
  {
    v14 = *(v13 - 12) + 1;
  }

  else
  {
    v14 = 1;
  }

  *(v13 - 12) = v14;
  v15 = (*(v13 - 16) + v14);
  v16 = *(v13 - 4);
  if (v16 > 0x400)
  {
    if (v16 > 2 * v15)
    {
      goto LABEL_9;
    }

LABEL_20:
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, v10);
    v10 = result;
    v13 = *a2;
    if (*a2)
    {
      v16 = *(v13 - 4);
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_9;
  }

  if (3 * v16 <= 4 * v15)
  {
    goto LABEL_20;
  }

LABEL_9:
  v17 = v13 + 16 * v16;
  v18 = 1;
LABEL_10:
  *a1 = v10;
  *(a1 + 8) = v17;
  *(a1 + 16) = v18;
  return result;
}

WebKit::NetworkLoadScheduler *WebKit::NetworkLoadScheduler::prioritizeLoads(WebKit::NetworkLoadScheduler *this, uint64_t a2)
{
  v2 = *(a2 + 12);
  if (v2)
  {
    v3 = this;
    v4 = *a2;
    v5 = 8 * v2;
    do
    {
      v6 = *v4;
      if (*v4)
      {
        ++*(v6 + 4);
      }

      v7 = WebKit::NetworkLoadScheduler::contextForLoad(v3, v6);
      if (v7)
      {
        WebKit::NetworkLoadScheduler::HostContext::prioritize(v7, v6);
      }

      this = WTF::RefCounted<WebKit::NetworkLoad>::deref(v6 + 4, v8);
      ++v4;
      v5 -= 8;
    }

    while (v5);
  }

  return this;
}

uint64_t *WebKit::NetworkLoadScheduler::clearPageData(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v3 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( (a1 + 16),  &v5);
  return WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkLoadScheduler::HostContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove((a1 + 16), v3);
}

uint64_t WebKit::NetworkOriginAccessPatterns::anyPatternMatches(WebKit::NetworkOriginAccessPatterns *this, const WTF::URL *a2)
{
  v2 = *(this + 5);
  if (!v2)
  {
    return 0;
  }

  v4 = *(this + 1);
  v5 = 32 * v2 - 32;
  do
  {
    result = WebCore::UserContentURLPattern::matches<WTF::URL>(v4, a2);
    if (result)
    {
      break;
    }

    v4 = (v4 + 32);
    v7 = v5;
    v5 -= 32;
  }

  while (v7);
  return result;
}

void WebKit::NetworkProcess::~NetworkProcess(WebKit::NetworkProcess *this, void *a2)
{
  v3 = *(this + 51);
  if (v3)
  {
    v4 = *(v3 - 4);
    if (v4)
    {
      v5 = (v3 + 40);
      do
      {
        if (*(v5 - 5) != -1)
        {
          v6 = *v5;
          *v5 = 0;
          if (v6)
          {
            (*(*v6 + 8))(v6);
          }
        }

        v5 += 6;
        --v4;
      }

      while (v4);
    }

    WTF::fastFree((v3 - 16), a2);
  }

  v7 = *(this + 48);
  if (v7)
  {
    WTF::fastFree((v7 - 16), a2);
  }

  v8 = *(this + 47);
  if (v8)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v8, a2);
  }

  v9 = *(this + 46);
  if (v9)
  {
    v10 = *(v9 - 4);
    if (v10)
    {
      v11 = *(this + 46);
      do
      {
        v12 = *v11;
        if (*v11 != -1)
        {
          *v11 = 0;
          if (v12)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v12 + 8));
          }
        }

        ++v11;
        --v10;
      }

      while (v10);
    }

    WTF::fastFree((v9 - 16), a2);
  }

  v13 = *(this + 45);
  if (v13)
  {
    v14 = *(v13 - 4);
    if (v14)
    {
      v15 = (v13 + 8);
      do
      {
        if (*(v15 - 1) != -1)
        {
          v15 = WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v15, a2);
        }

        v15 += 6;
        --v14;
      }

      while (v14);
    }

    WTF::fastFree((v13 - 16), a2);
  }

  WebCore::MessagePortChannelRegistry::~MessagePortChannelRegistry((this + 328));
  v17 = *(this + 39);
  *(this + 39) = 0;
  if (v17)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v17 + 8), v16);
  }

  v18 = *(this + 38);
  *(this + 38) = 0;
  if (v18)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v18 + 8), v16);
  }

  v19 = *(this + 37);
  *(this + 37) = 0;
  if (v19)
  {
    WTF::RefCounted<WebKit::WebSQLiteDatabaseTracker>::deref((v19 + 8));
  }

  WebKit::NetworkContentRuleListManager::~NetworkContentRuleListManager((this + 272), v16);
  v21 = *(this + 33);
  if (v21)
  {
    os_release(v21);
  }

  v22 = *(this + 32);
  if (v22)
  {
    v23 = *(v22 - 4);
    if (v23)
    {
      v24 = (v22 + 16);
      do
      {
        if (*(v24 - 2) != -1 && *v24)
        {
          WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*v24, v20);
        }

        v24 += 3;
        --v23;
      }

      while (v23);
    }

    WTF::fastFree((v22 - 16), v20);
  }

  v25 = *(this + 31);
  if (v25)
  {
    v26 = *(v25 - 4);
    if (v26)
    {
      v27 = (v25 + 8);
      do
      {
        if (*(v27 - 1) != -1)
        {
          v28 = *v27;
          *v27 = 0;
          if (v28)
          {
            WebCore::NetworkStorageSession::operator delete();
          }
        }

        v27 += 2;
        --v26;
      }

      while (v26);
    }

    WTF::fastFree((v25 - 16), v20);
  }

  v29 = *(this + 30);
  if (v29)
  {
    v30 = *(v29 - 4);
    if (v30)
    {
      v31 = (v29 + 8);
      do
      {
        if (*(v31 - 1) != -1)
        {
          v32 = *v31;
          *v31 = 0;
          if (v32)
          {
            (*(*v32 + 8))(v32);
          }
        }

        v31 += 2;
        --v30;
      }

      while (v30);
    }

    WTF::fastFree((v29 - 16), v20);
  }

  v33 = *(this + 29);
  if (v33)
  {
    WTF::fastFree((v33 - 16), v20);
  }

  v34 = *(this + 28);
  if (v34)
  {
    v35 = *(v34 - 4);
    if (v35)
    {
      v36 = (v34 + 16);
      do
      {
        if (*(v36 - 2) != -1)
        {
          v37 = *v36;
          *v36 = 0;
          if (v37)
          {
            (*(*v37 + 8))(v37);
          }
        }

        v36 += 3;
        --v35;
      }

      while (v35);
    }

    WTF::fastFree((v34 - 16), v20);
  }

  WebKit::DownloadManager::~DownloadManager((this + 184), v20);
  v39 = *(this + 22);
  *(this + 22) = 0;
  if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v39, v38);
  }

  v40 = *(this + 20);
  if (v40)
  {
    v41 = *(v40 - 4);
    if (v41)
    {
      v42 = v40 + 8;
      do
      {
        if (*(v42 - 8) != -1)
        {
          v42 = WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v42, v38);
        }

        v42 += 24;
        --v41;
      }

      while (v41);
    }

    WTF::fastFree((v40 - 16), v38);
  }

  v43 = *(this + 19);
  if (v43)
  {
    v44 = *(v43 - 4);
    if (v44)
    {
      v45 = (v43 + 8);
      do
      {
        if (*(v45 - 1) != -1)
        {
          v46 = *v45;
          *v45 = 0;
          if (v46)
          {
            if (v46[5] == 1)
            {
              (*(*v46 + 8))(v46);
            }

            else
            {
              --v46[5];
            }
          }
        }

        v45 += 2;
        --v44;
      }

      while (v44);
    }

    WTF::fastFree((v43 - 16), v38);
  }

  WebKit::AuxiliaryProcess::~AuxiliaryProcess(this);
}

void non-virtual thunk toWebKit::NetworkProcess::~NetworkProcess(WebKit::NetworkProcess *this, void *a2)
{
  WebKit::NetworkProcess::~NetworkProcess((this - 24), a2);
}

{
  WebKit::NetworkProcess::~NetworkProcess((this - 136), a2);
}

{
  WebKit::NetworkProcess::operator delete((this - 24), a2);
}

{
  WebKit::NetworkProcess::operator delete((this - 136), a2);
}

double WebKit::NetworkProcess::operator delete(WebKit::NetworkProcess *a1, void *a2)
{
  WebKit::NetworkProcess::~NetworkProcess(a1, a2);
  if (atomic_load((v2 + 16)))
  {
    result = 0.0;
    *(v2 + 384) = 0u;
    *(v2 + 400) = 0u;
    *(v2 + 352) = 0u;
    *(v2 + 368) = 0u;
    *(v2 + 320) = 0u;
    *(v2 + 336) = 0u;
    *(v2 + 288) = 0u;
    *(v2 + 304) = 0u;
    *(v2 + 256) = 0u;
    *(v2 + 272) = 0u;
    *(v2 + 224) = 0u;
    *(v2 + 240) = 0u;
    *(v2 + 192) = 0u;
    *(v2 + 208) = 0u;
    *(v2 + 160) = 0u;
    *(v2 + 176) = 0u;
    *(v2 + 128) = 0u;
    *(v2 + 144) = 0u;
    *(v2 + 96) = 0u;
    *(v2 + 112) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 80) = 0u;
    *(v2 + 32) = 0u;
    *(v2 + 48) = 0u;
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  else
  {

    bmalloc::api::tzoneFree(v2, v3);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::removeNetworkConnectionToWebProcess(WebKit::NetworkProcess *this, WebKit::NetworkConnectionToWebProcess *a2)
{
  v13.n128_u64[0] = *(a2 + 34);
  v4 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( this + 19,  &v13);
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(this + 19, v4);
  v13.n128_u64[0] = *(a2 + 34);
  v5 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( this + 32,  &v13);
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(this + 32, v5);
  v6 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(this + 20, *(a2 + 34));
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(&v13, this + 20, v6, v7);
  if (v13.n128_u32[3])
  {
    v10 = v13.n128_u64[0];
    v11 = 8 * v13.n128_u32[3];
    do
    {
      v12 = *v10;
      *v10++ = 0;
      (*(*v12 + 16))(v12);
      (*(*v12 + 8))(v12);
      v11 -= 8;
    }

    while (v11);
  }

  return WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v13, v8);
}

uint64_t WebKit::NetworkProcess::didClose(atomic_uint *this, IPC::Connection *a2)
{
  v3 = this + 36;
  atomic_fetch_add(this + 36, 1u);
  v4 = WTF::fastMalloc(0x10);
  *v4 = &unk_1F1101388;
  v4[1] = this;
  v5 = WTF::fastMalloc(0x10);
  *v5 = 1;
  *(v5 + 8) = v4;
  atomic_fetch_add(v3, 1u);
  v6 = WTF::fastMalloc(0x18);
  *v6 = &unk_1F11013B0;
  v6[1] = this;
  v8[0] = 0;
  v8[1] = 0;
  v6[2] = v5;
  v9 = v6;
  WebKit::NetworkProcess::forEachNetworkSession(this, &v9);
  (*(*v6 + 8))(v6);
  WebKit::NetworkProcess::didClose(IPC::Connection &)::$_1::~$_1(v8);
  result = this[99];
  if (result != -1)
  {
    return notify_cancel(result);
  }

  return result;
}

void *WebKit::NetworkProcess::forEachNetworkSession(uint64_t a1, void *a2)
{
  v3 = *(a1 + 240);
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(v3);
  v5 = result;
  v7 = v6;
  if (v3)
  {
    v3 += 2 * *(v3 - 1);
  }

  if (v3 != result)
  {
    do
    {
      result = (*(**a2 + 16))(*a2, v5[1]);
      do
      {
        v5 += 2;
      }

      while (v5 != v7 && (*v5 + 1) <= 1);
    }

    while (v5 != v3);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::didClose(IPC::Connection &)::$_1::~$_1(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3 && atomic_fetch_add(v3 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 36);
    (*(*v3 + 24))(v3);
  }

  return a1;
}

uint64_t WebKit::NetworkProcess::downloadsAuthenticationManager(WebKit::NetworkProcess *this)
{
  v2[0] = "AuthenticationManager";
  v2[1] = 22;
  return WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ASCIILiteral>>,WTF::ASCIILiteral>(this + 28, v2);
}

uint64_t non-virtual thunk toWebKit::NetworkProcess::downloadsAuthenticationManager(WebKit::NetworkProcess *this)
{
  v2[0] = "AuthenticationManager";
  v2[1] = 22;
  return WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ASCIILiteral>>,WTF::ASCIILiteral>(this + 11, v2);
}

uint64_t WebKit::NetworkProcess::lowMemoryHandler(uint64_t result, char a2)
{
  if ((*(result + 170) & 1) == 0)
  {
    v3 = result;
    MEMORY[0x19EB01BE0]();
    v4 = WTF::fastMalloc(0x10);
    *v4 = &unk_1F1101428;
    v4[8] = a2;
    v5 = v4;
    WebKit::NetworkProcess::forEachNetworkSession(v3, &v5);
    return (*(*v4 + 8))(v4);
  }

  return result;
}

void WebKit::NetworkProcess::initializeNetworkProcess(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  *a3 = 0;
  v47 = v5;
  WebKit::AuxiliaryProcess::applyProcessCreationParameters(a1, a2);
  v6 = WTF::setProcessPrivileges();
  WebCore::SQLiteDatabase::useFastMalloc(v6);
  WebCore::NetworkStorageSession::permitProcessToUseCookieAPI(1);
  WebKit::NetworkProcess::platformInitializeNetworkProcess(a1, a2);
  IsUserInitiated = WTF::Thread::setCurrentThreadIsUserInitiated(0);
  v8 = WebCore::initializeCommonAtomStrings(IsUserInitiated);
  v9 = *(a2 + 33);
  *(a1 + 170) = v9;
  if ((v9 & 1) == 0)
  {
    v10 = WTF::MemoryPressureHandler::singleton(v8);
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
    v11 = *(a1 + 8);
    atomic_fetch_add(v11, 1u);
    v12 = WTF::fastMalloc(0x10);
    *v12 = &unk_1F1101450;
    v12[1] = v11;
    v13 = *(v10 + 6);
    *(v10 + 6) = v12;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    WTF::MemoryPressureHandler::install(v10);
  }

  WebKit::NetworkProcess::setCacheModel(a1, *(a2 + 32));
  *(a1 + 392) = *(a2 + 144);
  v14 = *(a2 + 180);
  if (v14)
  {
    v37 = *(a2 + 168);
    v38 = &v37[2 * v14];
    do
    {
      v40 = *v37;
      v39 = v37[1];
      *buf = *v37;
      if (v39)
      {
        atomic_fetch_add_explicit(v39, 2u, memory_order_relaxed);
        v40 = *buf;
      }

      *&buf[8] = v39;
      v41 = WTF::fastMalloc(0x10);
      *v41 = &unk_1F1101478;
      v46 = v41;
      WebKit::NetworkProcess::addAllowedFirstPartyForCookies(a1, v40, &buf[8], 0, &v46);
      if (v46)
      {
        (*(*v46 + 8))(v46);
      }

      v43 = *&buf[8];
      *&buf[8] = 0;
      if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v43, v42);
      }

      v37 += 2;
    }

    while (v37 != v38);
  }

  v15 = *(a1 + 224);
  v16 = WTF::HashTable<WTF::ASCIILiteral,WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>>>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ASCIILiteral>,WTF::FastMalloc>::begin(v15);
  v18 = v16;
  v19 = v17;
  if (v15)
  {
    v15 = (v15 + 24 * *(v15 - 1));
  }

  if (v15 != v16)
  {
    do
    {
      (*(**(v18 + 2) + 24))(*(v18 + 2), a2);
      do
      {
        v18 = (v18 + 24);
        if (v18 == v19)
        {
          break;
        }
      }

      while (!*(v18 + 1) || *v18 == -1);
    }

    while (v18 != v15);
  }

  v21 = *(a2 + 92);
  if (v21)
  {
    v22 = *(a2 + 80);
    v23 = 8 * v21;
    do
    {
      WebCore::LegacySchemeRegistry::registerURLSchemeAsSecure(v22, v17);
      v22 = (v22 + 8);
      v23 -= 8;
    }

    while (v23);
  }

  v24 = *(a2 + 108);
  if (v24)
  {
    v25 = *(a2 + 96);
    v26 = 8 * v24;
    do
    {
      WebCore::LegacySchemeRegistry::registerURLSchemeAsBypassingContentSecurityPolicy(v25, v17);
      v25 = (v25 + 8);
      v26 -= 8;
    }

    while (v26);
  }

  v27 = *(a2 + 124);
  if (v27)
  {
    v44 = *(a2 + 112);
    v45 = 8 * v27;
    do
    {
      WebCore::LegacySchemeRegistry::registerURLSchemeAsLocal(v44, v17);
      v44 = (v44 + 8);
      v45 -= 8;
    }

    while (v45);
  }

  v28 = *(a2 + 164);
  if (v28)
  {
    v29 = *(a2 + 152);
    v30 = 768 * v28;
    do
    {
      WebKit::NetworkProcess::addWebsiteDataStore(a1, v29);
      v29 += 768;
      v30 -= 768;
    }

    while (v30);
  }

  v31 = *(a2 + 184);
  *(a2 + 184) = 0;
  v32 = *(a1 + 376);
  *(a1 + 376) = v31;
  if (v32)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v32, v17);
  }

  updated = WebCore::NetworkStorageSession::updateStorageAccessPromptQuirks();
  WebCore::ResourceRequestBase::setDefaultTimeoutInterval(updated, *(a2 + 208));
  v34 = qword_1ED6416A0;
  v35 = os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT);
  if (v35)
  {
    v36 = WTF::legacyPresentingApplicationPID(v35);
    *buf = 134218240;
    *&buf[4] = a1;
    *&buf[12] = 1024;
    *&buf[14] = v36;
    _os_log_impl(&dword_19D52D000, v34, OS_LOG_TYPE_DEFAULT, "%p - NetworkProcess::initializeNetworkProcess: Presenting processPID=%d", buf, 0x12u);
  }

  WTF::CompletionHandlerCallingScope::~CompletionHandlerCallingScope(&v47);
}

uint64_t WebKit::NetworkProcess::setCacheModel(uint64_t result, int a2)
{
  v2 = result;
  if (*(result + 168) != 1 || *(result + 169) != a2)
  {
    *(result + 168) = 1;
    *(result + 169) = a2;
    v3 = WTF::fastMalloc(0x10);
    *v3 = &unk_1F1101EF0;
    v4 = v3;
    WebKit::NetworkProcess::forEachNetworkSession(v2, &v4);
    return (*(*v3 + 8))(v3);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::addAllowedFirstPartyForCookies(uint64_t a1, uint64_t a2, WTF **a3, int a4, uint64_t *a5)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v27 = a2;
  if (*a3 == -1 || WTF::equal(*a3, 0, a3))
  {
    v20 = *a5;
    *a5 = 0;
    (*(*v20 + 16))(v20);
    v21 = *(*v20 + 8);

    return v21(v20);
  }

  else
  {
    WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::ensure<WebKit::NetworkProcess::addAllowedFirstPartyForCookies(WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain&&,WebKit::LoadedWebArchive,WTF::CompletionHandler<void ()(void)> &&)::$_0>(v25, (a1 + 256), &v27);
    v9 = v25[0];
    WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>((v25[0] + 16), a3, v10, v25);
    if (v26 == 1)
    {
      v11 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( (a1 + 152),  &v27);
      v12 = *(a1 + 152);
      if (v12)
      {
        v12 += 16 * *(v12 - 4);
      }

      if (v12 != v11)
      {
        v22 = *(*(*(v11 + 8) + 80) + 24);
        v15 = *v25[0];
        if (*v25[0])
        {
          atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
        }

        v29[0] = v15;
        WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v23, v29, 1uLL);
        std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::NetworkProcess::addAllowedFirstPartyForCookies(WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &&,WebKit::LoadedWebArchive,WTF::CompletionHandler<void ()(void)> &&)::$_1,void,WebKit::NetworkSession &>,WTF::CompletionHandler<void ()(void)> &,0>(&v28, &v22);
        v16 = v28;
        v24 = v28;
        WebKit::NetworkProcess::forEachNetworkSession(a1, &v24);
        if (v16)
        {
          (*(*v16 + 8))(v16);
        }

        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v23, v17);
        v19 = v29[0];
        v29[0] = 0;
        if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v19, v18);
        }
      }
    }

    if (a4)
    {
      *(v9 + 8) = 1;
    }

    v13 = *a5;
    *a5 = 0;
    (*(*v13 + 16))(v13);
    return (*(*v13 + 8))(v13);
  }
}

uint64_t WebKit::NetworkProcess::addWebsiteDataStore(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v10 = v4;
  if (*(a2 + 696) == 1)
  {
    WebKit::SandboxExtension::consumePermanently((a2 + 688));
  }

  if (*(a2 + 712) == 1)
  {
    WebKit::SandboxExtension::consumePermanently((a2 + 704));
  }

  if (*(a2 + 728) == 1)
  {
    WebKit::SandboxExtension::consumePermanently((a2 + 720));
  }

  if (*(a2 + 744) == 1)
  {
    WebKit::AuxiliaryProcess::grantAccessToContainerTempDirectory(a1, (a2 + 736));
  }

  if (*(a2 + 760) == 1)
  {
    WebKit::SandboxExtension::consumePermanently((a2 + 752));
  }

  WebKit::NetworkProcess::addStorageSession(a1, v4, a2);
  *(a2 + 304) = *(a2 + 571);
  v8[0] = a1;
  v8[1] = a2;
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::ensure<WebKit::NetworkProcess::addWebsiteDataStore(WebKit::WebsiteDataStoreParameters &&)::$_0>(v9, (a1 + 240), &v10, v8);
  if (*(a1 + 394) == 1)
  {
    v6 = *(*(v9[0] + 8) + 1048);
    v7 = WTF::fastMalloc(0x10);
    *v7 = &unk_1F11014C8;
    v9[0] = v7;
    WebKit::NetworkStorageManager::suspend(v6, v9);
    result = v9[0];
    v9[0] = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t WebKit::callExitSoon(WebKit *this, IPC::Connection *a2)
{
  WTF::WorkQueue::create();
  v2 = v7;
  v3 = WTF::fastMalloc(0x10);
  *v3 = &unk_1F11011D0;
  v6 = v3;
  (*(*v2 + 16))(v2, &v6, 10.0);
  v4 = v6;
  v6 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  result = v7;
  v7 = 0;
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::createNetworkConnectionToWebProcess(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v59 = *MEMORY[0x1E69E9840];
  v53 = a2;
  v10 = qword_1ED6416A0;
  if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v55 = a1;
    v56 = 2048;
    v57 = a2;
    _os_log_impl(&dword_19D52D000, v10, OS_LOG_TYPE_DEFAULT, "%p - NetworkProcess::createNetworkConnectionToWebProcess: Create connection for web process core identifier %llu", buf, 0x16u);
  }

  IPC::Connection::createConnectionIdentifierPair(buf);
  if (v58)
  {
    WebKit::NetworkConnectionToWebProcess::create(a1, v53, a3, a4, buf, &v52);
    v11 = v52;
    ++v52[5];
    WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>(&v50, a1 + 19, &v53, &v52);
    *&v50 = a3;
    v12 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(a1 + 31, &v50);
    v13 = v12;
    if (v12)
    {
      ++*(v12 + 8);
      if (v58)
      {
        WTF::MachSendRight::MachSendRight();
        BYTE4(v50) = 1;
        v14 = WebCore::NetworkStorageSession::cookieAcceptPolicy(v13);
        goto LABEL_7;
      }
    }

    else if (v58)
    {
      WTF::MachSendRight::MachSendRight();
      v14 = 1;
      BYTE4(v50) = 1;
LABEL_7:
      v15 = *a5;
      *a5 = 0;
      (*(*v15 + 16))(v15, &v50, v14);
      v16 = (*(*v15 + 8))(v15);
      if (BYTE4(v50) == 1)
      {
        WTF::MachSendRight::~MachSendRight(&v50);
      }

      v17 = WebCore::NetworkStateNotifier::singleton(v16);
      v18 = WebCore::NetworkStateNotifier::onLine(v17);
      WebKit::NetworkConnectionToWebProcess::setOnLineState(v11, v18);
      v19 = *(a4 + 36);
      if (v19)
      {
        v45 = *(a4 + 24);
        v46 = 8 * v19;
        do
        {
          v47 = *v45++;
          v48 = v47;
          WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(a1 + 48, &v48, &v50);
          v46 -= 8;
        }

        while (v46);
      }

      *&v50 = a3;
      v20 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(a1 + 30, &v50);
      if (v20)
      {
        v21 = v20;
        ++*(v20 + 16);
        v48 = 0;
        v49 = 0;
        v22 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( a1 + 32,  &v53);
        v25 = v22;
        v26 = a1[32];
        if (v26)
        {
          v26 += 3 * *(v26 - 1);
        }

        if (v26 != v22)
        {
          v34 = WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin(v22 + 2, v23, v24);
          v37 = v34;
          *&v50 = v34;
          *(&v50 + 1) = v35;
          v38 = v25[2];
          v39 = v38 ? v38 + 8 * *(v38 - 4) : 0;
          if (v39 != v34)
          {
            do
            {
              v40 = HIDWORD(v49);
              if (HIDWORD(v49) == v49)
              {
                WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::RegistrableDomain const&>(&v48, v37);
              }

              else
              {
                v41 = v48;
                v42 = *v37;
                if (v42)
                {
                  atomic_fetch_add_explicit(v42, 2u, memory_order_relaxed);
                }

                v43 = HIDWORD(v49);
                *(v41 + 8 * v40) = v42;
                HIDWORD(v49) = v43 + 1;
              }

              *&v50 = v50 + 8;
              WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(&v50, v35, v36);
              v37 = v50;
            }

            while (v50 != v39);
          }
        }

        v27 = *(v21 + 1048);
        v28 = *(v11 + 80);
        v50 = *(v11 + 328);
        v51 = *(v11 + 344);
        WebKit::NetworkStorageManager::startReceivingMessageFromConnection(v27, v28, &v48, &v50);
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v48, v29);
        v30 = *(v21 + 16);
        if (!v30)
        {
          goto LABEL_48;
        }

        *(v21 + 16) = v30 - 1;
      }

      if (!v13)
      {
LABEL_19:
        if (v11)
        {
          if (*(v11 + 20) == 1)
          {
            (*(*v11 + 8))(v11);
          }

          else
          {
            --*(v11 + 20);
          }
        }

        v32 = v52;
        v52 = 0;
        if (v32)
        {
          if (v32[5] == 1)
          {
            (*(*v32 + 8))(v32);
          }

          else
          {
            --v32[5];
          }
        }

        return std::optional<IPC::Connection::ConnectionIdentifierPair>::~optional(buf);
      }

      v31 = *(v13 + 2);
      if (v31)
      {
        *(v13 + 2) = v31 - 1;
        goto LABEL_19;
      }

LABEL_48:
      __break(0xC471u);
      JUMPOUT(0x19DC65210);
    }

    __break(1u);
  }

  LOBYTE(v50) = 0;
  BYTE4(v50) = 0;
  v44 = *a5;
  *a5 = 0;
  (*(*v44 + 16))(v44, &v50, 1);
  (*(*v44 + 8))(v44);
  if (BYTE4(v50) == 1)
  {
    WTF::MachSendRight::~MachSendRight(&v50);
  }

  return std::optional<IPC::Connection::ConnectionIdentifierPair>::~optional(buf);
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v24 = a4;
  WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(*a3);
  v7 = *a2;
  if (*a2 || (WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, 0), (v7 = *a2) != 0))
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
        goto LABEL_9;
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

  result = WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::translate<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>> WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>(WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>> &&)::{lambda(void)#1}>( v11,  v13,  &v24);
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
      goto LABEL_8;
    }

LABEL_21:
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, v11);
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

    goto LABEL_8;
  }

  if (3 * v17 <= 4 * v16)
  {
    goto LABEL_21;
  }

LABEL_8:
  v18 = v14 + 16 * v17;
  v19 = 1;
LABEL_9:
  *a1 = v11;
  *(a1 + 8) = v18;
  *(a1 + 16) = v19;
  return result;
}

_DWORD **WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>::~Ref(_DWORD **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (v2[5] == 1)
    {
      (*(*v2 + 8))(v2);
    }

    else
    {
      --v2[5];
    }
  }

  return a1;
}

uint64_t WebKit::NetworkProcess::sharedPreferencesForWebProcessDidChange(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t *a4)
{
  v10 = a2;
  v6 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( (a1 + 152),  &v10);
  if (v6)
  {
    v9 = *(v6 + 8);
    if (v9)
    {
      ++v9[5];
      WebKit::NetworkConnectionToWebProcess::updateSharedPreferencesForWebProcess(v9, a3);
      if (v9[5] == 1)
      {
        (*(*v9 + 8))(v9);
      }

      else
      {
        --v9[5];
      }
    }
  }

  v7 = *a4;
  *a4 = 0;
  (*(*v7 + 16))(v7);
  return (*(*v7 + 8))(v7);
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::ensure<WebKit::NetworkProcess::addAllowedFirstPartyForCookies(WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain&&,WebKit::LoadedWebArchive,WTF::CompletionHandler<void ()(void)> &&)::$_0>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMapEnsureTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(*a3);
  v6 = *a2;
  if (*a2 || (WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, 0), (v6 = *a2) != 0))
  {
    v7 = *(v6 - 8);
  }

  else
  {
    v7 = 0;
  }

  result = WTF::ObjectIdentifierGenericBaseHash<unsigned long long>::hash(a3);
  v10 = result & v7;
  v11 = v6 + 24 * (result & v7);
  v12 = *v11;
  v13 = *a3;
  if (*v11)
  {
    v9 = 0;
    v20 = 1;
    do
    {
      if (v12 == v13)
      {
        v21 = *a2;
        if (*a2)
        {
          v22 = *(v21 - 4);
        }

        else
        {
          v22 = 0;
        }

        v19 = 0;
        v18 = v21 + 24 * v22;
        goto LABEL_13;
      }

      if (v12 == -1)
      {
        v9 = v11;
      }

      v10 = (v10 + v20) & v7;
      v11 = v6 + 24 * v10;
      v12 = *v11;
      ++v20;
    }

    while (*v11);
    if (!v9)
    {
      goto LABEL_5;
    }

    *v9 = 0;
    *(v9 + 8) = 0;
    *(v9 + 16) = 0;
    --*(*a2 - 16);
    *v9 = *a3;
    *(v9 + 8) = 0;
    *(v9 + 16) = 0;
  }

  else
  {
LABEL_5:
    result = *(v11 + 16);
    *v11 = v13;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    if (result)
    {
      result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(result, v9);
    }

    v9 = v11;
  }

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
      goto LABEL_12;
    }

LABEL_23:
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, v9);
    v9 = result;
    v14 = *a2;
    if (*a2)
    {
      LODWORD(v17) = *(v14 - 4);
    }

    else
    {
      LODWORD(v17) = 0;
    }

    goto LABEL_12;
  }

  if (3 * v17 <= 4 * v16)
  {
    goto LABEL_23;
  }

LABEL_12:
  v18 = v14 + 24 * v17;
  v19 = 1;
  v11 = v9;
LABEL_13:
  *a1 = v11;
  *(a1 + 8) = v18;
  *(a1 + 16) = v19;
  return result;
}