@interface WKNetworkSessionDelegate
- (RefPtr<WebKit::NetworkDataTaskCocoa,)existingTask:(id)a3;
- (RefPtr<WebKit::WebSocketTask,)existingWebSocketTask:(id)a3;
- (WKNetworkSessionDelegate)initWithNetworkSession:(reference_wrapper<WebKit:(void *)a4 :(BOOL)a5 NetworkSessionCocoa>)a3 wrapper:withCredentials:;
- (id).cxx_construct;
- (uint64_t)URLSession:(const void *)a1 dataTask:didReceiveResponse:completionHandler:;
- (uint64_t)URLSession:(const void *)a1 task:_schemeUpgraded:completionHandler:;
- (uint64_t)URLSession:(const void *)a1 task:didReceiveChallenge:completionHandler:;
- (uint64_t)URLSession:(const void *)a1 task:willPerformHTTPRedirection:newRequest:completionHandler:;
- (uint64_t)URLSession:(uint64_t)a1 dataTask:didReceiveResponse:completionHandler:;
- (uint64_t)URLSession:(uint64_t)a1 task:_schemeUpgraded:completionHandler:;
- (uint64_t)URLSession:(uint64_t)a1 task:didReceiveChallenge:completionHandler:;
- (uint64_t)URLSession:(uint64_t)a1 task:willPerformHTTPRedirection:newRequest:completionHandler:;
- (void)URLSession:(WebCore::Credential *)this task:didReceiveChallenge:completionHandler:;
- (void)URLSession:(id)a3 dataTask:(id)a4 didBecomeDownloadTask:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didWriteData:(int64_t)a5 totalBytesWritten:(int64_t)a6 totalBytesExpectedToWrite:(int64_t)a7;
- (void)URLSession:(id)a3 task:(id)a4 _didReceiveInformationalResponse:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 _schemeUpgraded:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 didReceiveInformationalResponse:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didSendBodyData:(int64_t)a5 totalBytesSent:(int64_t)a6 totalBytesExpectedToSend:(int64_t)a7;
- (void)URLSession:(id)a3 task:(id)a4 needNewBodyStream:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7;
- (void)URLSession:(id)a3 webSocketTask:(id)a4 didCloseWithCode:(int64_t)a5 reason:(id)a6;
- (void)URLSession:(id)a3 webSocketTask:(id)a4 didOpenWithProtocol:(id)a5;
- (void)URLSession:(uint64_t)a1 task:_schemeUpgraded:completionHandler:;
- (void)URLSession:(uint64_t)a1 task:willPerformHTTPRedirection:newRequest:completionHandler:;
- (void)URLSession:task:didReceiveChallenge:completionHandler:;
- (void)sessionFromTask:(id)a3;
- (void)sessionInvalidated;
@end

@implementation WKNetworkSessionDelegate

- (WKNetworkSessionDelegate)initWithNetworkSession:(reference_wrapper<WebKit:(void *)a4 :(BOOL)a5 NetworkSessionCocoa>)a3 wrapper:withCredentials:
{
  v16.receiver = self;
  v16.super_class = WKNetworkSessionDelegate;
  v8 = [(WKNetworkSessionDelegate *)&v16 init];
  if (v8)
  {
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a3.var0 + 2, a3.var0);
    v10 = *(a3.var0 + 1);
    atomic_fetch_add(v10, 1u);
    m_ptr = v8->_session.m_impl.m_ptr;
    v8->_session.m_impl.m_ptr = v10;
    if (m_ptr && atomic_fetch_add(m_ptr, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, m_ptr);
      WTF::fastFree(m_ptr, v9);
    }

    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a4, a4);
    v13 = *a4;
    atomic_fetch_add(*a4, 1u);
    v14 = v8->_sessionWrapper.m_impl.m_ptr;
    v8->_sessionWrapper.m_impl.m_ptr = v13;
    if (v14 && atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v14);
      WTF::fastFree(v14, v12);
    }

    v8->_withCredentials = a5;
  }

  return v8;
}

- (void)sessionInvalidated
{
  m_ptr = self->_sessionWrapper.m_impl.m_ptr;
  self->_sessionWrapper.m_impl.m_ptr = 0;
  if (m_ptr)
  {
    if (atomic_fetch_add(m_ptr, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, m_ptr);
      WTF::fastFree(m_ptr, a2);
    }
  }
}

- (RefPtr<WebKit::NetworkDataTaskCocoa,)existingTask:(id)a3
{
  v4 = v3;
  m_ptr = self->_sessionWrapper.m_impl.m_ptr;
  if (!m_ptr)
  {
    goto LABEL_10;
  }

  v6 = *(m_ptr + 1);
  if (!v6 || !a3)
  {
    goto LABEL_10;
  }

  self = [a3 taskIdentifier];
  if (self == -1 || !self)
  {
    __break(0xC471u);
    JUMPOUT(0x19D932D2CLL);
  }

  v7 = *(v6 + 32);
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = *(v7 - 8);
  v9 = (self + ~(self << 32)) ^ ((self + ~(self << 32)) >> 22);
  v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
  v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
  v12 = v8 & ((v11 >> 31) ^ v11);
  v13 = *(v7 + 24 * v12);
  if (v13 != self)
  {
    v16 = 1;
    while (v13)
    {
      v12 = (v12 + v16) & v8;
      v13 = *(v7 + 24 * v12);
      ++v16;
      if (v13 == self)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_10;
  }

LABEL_8:
  v14 = v7 + 24 * v12;
  self = *(v14 + 16);
  if (!self || (v15 = *(v14 + 8), (self = WTF::ThreadSafeWeakPtrControlBlock::weakRef(self)) == 0))
  {
LABEL_10:
    *v4 = 0;
    return self;
  }

  v17 = self;
  v18 = v4;
  v19 = v17;
  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::NetworkDataTaskCocoa>(v18, v17, v15);

  return WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v19, v20);
}

- (void)URLSession:(id)a3 task:(id)a4 didSendBodyData:(int64_t)a5 totalBytesSent:(int64_t)a6 totalBytesExpectedToSend:(int64_t)a7
{
  if (self)
  {
    [(WKNetworkSessionDelegate *)self existingTask:a4];
    if (v9)
    {
      WebKit::NetworkDataTaskCocoa::didSendData(v9, a6, a7);
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref(v9 + 1);
    }
  }
}

- (void)URLSession:(id)a3 task:(id)a4 needNewBodyStream:(id)a5
{
  if (!self)
  {
    v11 = 0;
    goto LABEL_8;
  }

  [(WKNetworkSessionDelegate *)self existingTask:a4];
  if (!v11)
  {
LABEL_8:
    (*(a5 + 2))(a5, 0);
    goto LABEL_12;
  }

  WebCore::ResourceRequestBase::httpBody(&v10, (v11 + 128));
  if (v10)
  {
    v8 = v10;
    v10 = 0;
    WebCore::createHTTPBodyNSInputStream();
    (*(a5 + 2))(a5);
    if (v9)
    {
    }

    WTF::RefCounted<WebCore::FormData>::deref(v8);
  }

  else
  {
    (*(a5 + 2))(a5, 0);
  }

  v6 = v10;
  v10 = 0;
  if (v6)
  {
    WTF::RefCounted<WebCore::FormData>::deref(v6);
  }

LABEL_12:
  v7 = v11;
  v11 = 0;
  if (v7)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v7 + 8));
  }
}

- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7
{
  v12 = [a4 taskIdentifier];
  if (!self)
  {
    v53 = 0;
    v48 = 0;
    goto LABEL_10;
  }

  v13 = v12;
  [(WKNetworkSessionDelegate *)self existingTask:a4];
  if (!v53)
  {
    [(WKNetworkSessionDelegate *)self existingWebSocketTask:a4];
    if (v48)
    {
      WebCore::ResourceResponse::ResourceResponse(&v51, a5);
      v21 = v48;
      MEMORY[0x19EB06210](v49, a6);
      v22 = _Block_copy(a7);
      v23 = WTF::fastMalloc(0x18);
      *v23 = &unk_1F10ED7D8;
      v23[1] = v22;
      v23[2] = v13;
      v47 = v23;
      WebKit::NetworkTaskCocoa::willPerformHTTPRedirection(v21, &v51, v49, &v47);
      v24 = v47;
      v47 = 0;
      if (v24)
      {
        (*(*v24 + 8))(v24);
      }

      _Block_release(0);
      v25 = v50;
      v50 = 0;
      if (v25)
      {
      }

      WebCore::ResourceRequestBase::~ResourceRequestBase(v49);
      v27 = v52;
      v52 = 0;
      if (v27)
      {
      }

      WebCore::ResourceResponseBase::~ResourceResponseBase(&v51, v26);
      goto LABEL_19;
    }

LABEL_10:
    (*(a7 + 2))(a7, 0);
LABEL_19:
    v28 = v48;
    v48 = 0;
    if (v28)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebSocketTask,(WTF::DestructionThread)0>::deref((v28 + 40), v20);
    }

    goto LABEL_55;
  }

  v14 = *(v53 + 16);
  if (v14)
  {
    v15 = *(v14 + 8);
    if (v15)
    {
      ++*(v15 + 16);
      v16 = *(v15 + 32);
      v51.super.isa = *(v15 + 24);
      v17 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v16 + 248), &v51);
      v18 = v17;
      if (v17)
      {
        ++*(v17 + 8);
      }

      if (*(v53 + 545) == 1)
      {
        v19 = [a6 URL];
      }

      else
      {
        v19 = [a6 mainDocumentURL];
      }

      v29 = v19;
      if (v19)
      {
        v30 = v19;
      }

      if ((objc_opt_respondsToSelector() & 1) != 0 && [a6 _schemeWasUpgradedDueToDynamicHSTS])
      {
        if (!v18)
        {
          __break(0xC471u);
          JUMPOUT(0x19D93340CLL);
        }

        MEMORY[0x19EB01DE0](&v51, v29);
        MEMORY[0x19EB01DE0](v49, [a6 URL]);
        WebKit::NetworkTaskCocoa::shouldRelaxThirdPartyCookieBlocking((v53 + 552));
        shouldBlockCookies = WebCore::NetworkStorageSession::shouldBlockCookies();
        v33 = v49[0];
        v49[0] = 0;
        if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v33, v31);
        }

        isa = v51.super.isa;
        v51.super.isa = 0;
        if (isa && atomic_fetch_add_explicit(isa, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(isa, v31);
        }

        if (shouldBlockCookies)
        {
          downgradeRequest(&v51, a6);
          updateIgnoreStrictTransportSecuritySetting(&v51.super.isa, 1);
          v35 = v51.super.isa;
          (*(a7 + 2))(a7, v51.super.isa);
          if (v35)
          {
          }

          if (v29)
          {
          }

          v36 = *(v18 + 8);
          if (v36)
          {
            *(v18 + 8) = v36 - 1;
            v37 = *(v15 + 16);
            if (v37)
            {
              *(v15 + 16) = v37 - 1;
              goto LABEL_55;
            }
          }

LABEL_61:
          __break(0xC471u);
          JUMPOUT(0x19D9333CCLL);
        }
      }

      if (v29)
      {
      }

      if (v18)
      {
        v38 = *(v18 + 8);
        if (!v38)
        {
          __break(0xC471u);
          JUMPOUT(0x19D9333ECLL);
        }

        *(v18 + 8) = v38 - 1;
      }

      v39 = *(v15 + 16);
      if (!v39)
      {
        goto LABEL_61;
      }

      *(v15 + 16) = v39 - 1;
    }
  }

  WebCore::ResourceResponse::ResourceResponse(&v51, a5);
  v40 = v53;
  MEMORY[0x19EB06210](v49, a6);
  v41 = _Block_copy(a7);
  v42 = WTF::fastMalloc(0x20);
  *v42 = &unk_1F10ED7B0;
  *(v42 + 8) = v41;
  *(v42 + 16) = v13;
  *(v42 + 24) = 0;
  v48 = v42;
  WebKit::NetworkDataTaskCocoa::willPerformHTTPRedirection(v40, &v51, v49, &v48);
  if (v48)
  {
    (*(*v48 + 8))(v48);
  }

  _Block_release(0);
  v43 = v50;
  v50 = 0;
  if (v43)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(v49);
  v45 = v52;
  v52 = 0;
  if (v45)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(&v51, v44);
LABEL_55:
  v46 = v53;
  v53 = 0;
  if (v46)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v46 + 8));
  }
}

- (void)URLSession:(id)a3 task:(id)a4 _schemeUpgraded:(id)a5 completionHandler:(id)a6
{
  v10 = [a4 taskIdentifier];
  if (!self)
  {
    v45 = 0;
    goto LABEL_19;
  }

  v11 = v10;
  [(WKNetworkSessionDelegate *)self existingTask:a4];
  if (!v45)
  {
LABEL_19:
    (*(a6 + 2))(a6, 0);
    goto LABEL_38;
  }

  v12 = *(v45 + 16);
  if (v12)
  {
    v13 = *(v12 + 8);
    if (v13)
    {
      ++*(v13 + 16);
      v14 = *(v13 + 32);
      v42.super.isa = *(v13 + 24);
      v15 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v14 + 248), &v42);
      v16 = v15;
      if (v15)
      {
        ++*(v15 + 8);
      }

      if ((objc_opt_respondsToSelector() & 1) != 0 && [a5 _schemeWasUpgradedDueToDynamicHSTS])
      {
        if (!v16)
        {
          __break(0xC471u);
          JUMPOUT(0x19D933CBCLL);
        }

        MEMORY[0x19EB06210](&v42, a5);
        WebKit::NetworkTaskCocoa::shouldRelaxThirdPartyCookieBlocking((v45 + 552));
        shouldBlockCookies = WebCore::NetworkStorageSession::shouldBlockCookies();
        v18 = v43;
        v43 = 0;
        if (v18)
        {
        }

        WebCore::ResourceRequestBase::~ResourceRequestBase(&v42);
        if (shouldBlockCookies)
        {
          downgradeRequest(&v42, a5);
          updateIgnoreStrictTransportSecuritySetting(&v42.super.isa, 1);
          isa = v42.super.isa;
          (*(a6 + 2))(a6, v42.super.isa);
          if (isa)
          {
          }

          v20 = *(v16 + 8);
          if (v20)
          {
            *(v16 + 8) = v20 - 1;
            v21 = *(v13 + 16);
            if (v21)
            {
              *(v13 + 16) = v21 - 1;
              goto LABEL_38;
            }
          }

LABEL_44:
          __break(0xC471u);
          JUMPOUT(0x19D933C7CLL);
        }
      }

      else if (!v16)
      {
LABEL_23:
        v23 = *(v13 + 16);
        if (!v23)
        {
          goto LABEL_44;
        }

        *(v13 + 16) = v23 - 1;
        goto LABEL_25;
      }

      v22 = *(v16 + 8);
      if (!v22)
      {
        __break(0xC471u);
        JUMPOUT(0x19D933C9CLL);
      }

      *(v16 + 8) = v22 - 1;
      goto LABEL_23;
    }
  }

LABEL_25:
  v24 = [a4 currentRequest];
  v26 = WebCore::synthesizeRedirectResponseIfNecessary(v24, a5, 0, v25);
  WebCore::ResourceResponse::ResourceResponse(&v42, v26);
  v27 = [a5 valueForHTTPHeaderField:@"Origin"];
  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = @"*";
  }

  v29 = v28;
  MEMORY[0x19EB02040](v40, v28);
  WebCore::ResourceResponseBase::setHTTPHeaderField();
  v31 = v40[0];
  v40[0] = 0;
  if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v31, v30);
  }

  v32 = v45;
  MEMORY[0x19EB06210](v40, a5);
  v33 = _Block_copy(a6);
  v34 = WTF::fastMalloc(0x20);
  *v34 = &unk_1F10ED800;
  *(v34 + 8) = v33;
  *(v34 + 16) = v11;
  *(v34 + 24) = 0;
  v39 = v34;
  WebKit::NetworkDataTaskCocoa::willPerformHTTPRedirection(v32, &v42, v40, &v39);
  if (v39)
  {
    (*(*v39 + 8))(v39);
  }

  _Block_release(0);
  v35 = v41;
  v41 = 0;
  if (v35)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(v40);

  v37 = v44;
  v44 = 0;
  if (v37)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(&v42, v36);
LABEL_38:
  v38 = v45;
  v45 = 0;
  if (v38)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v38 + 8));
  }
}

- (void)sessionFromTask:(id)a3
{
  if (self)
  {
    [(WKNetworkSessionDelegate *)self existingTask:a3];
    v5 = v37;
    if (v37)
    {
      v6 = *(v37 + 16);
      if (v6 && (v7 = *(v6 + 8)) != 0)
      {
        if (((*(*v7 + 288))(v7) & 1) == 0)
        {
          __break(0xC471u);
          JUMPOUT(0x19D9341B4);
        }

        v5 = v37;
        v37 = 0;
      }

      else
      {
        v7 = 0;
        v37 = 0;
      }

      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v5 + 8));
      return v7;
    }
  }

  m_ptr = self->_sessionWrapper.m_impl.m_ptr;
  if (!m_ptr)
  {
    return 0;
  }

  v9 = *(m_ptr + 1);
  if (!v9)
  {
    return 0;
  }

  v10 = [a3 taskIdentifier];
  if (v10 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19D934174);
  }

  if (!v10)
  {
    __break(0xC471u);
    JUMPOUT(0x19D934194);
  }

  v11 = *(v9 + 40);
  if (!v11)
  {
    goto LABEL_24;
  }

  v12 = *(v11 - 8);
  v13 = (v10 + ~(v10 << 32)) ^ ((v10 + ~(v10 << 32)) >> 22);
  v14 = 9 * ((v13 + ~(v13 << 13)) ^ ((v13 + ~(v13 << 13)) >> 8));
  v15 = (v14 ^ (v14 >> 15)) + ~((v14 ^ (v14 >> 15)) << 27);
  v16 = v12 & ((v15 >> 31) ^ v15);
  v17 = *(v11 + 16 * v16);
  if (v17 == v10)
  {
LABEL_16:
    v19 = self->_session.m_impl.m_ptr;
    if (v19)
    {
      v20 = *(v19 + 1);
      if (v20)
      {
        v21 = *(v11 + 16 * v16 + 8);
        ++*(v20 + 16);
        v22 = *(v20 + 32);
        ++*(v22 + 184);
        v37 = v21;
        v23 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((v22 + 216), &v37);
        if (v23)
        {
          v24 = (v23 + 16);
          ++*(v23 + 16);
          v25 = *(v22 + 184);
          if (v25)
          {
            *(v22 + 184) = v25 - 1;
            v26 = *(v20 + 32);
            v37 = *(v23 + 160);
            v27 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v26 + 240), &v37);
            v7 = v27;
            if (v27 && ((*(*v27 + 288))(v27) & 1) == 0)
            {
              goto LABEL_43;
            }

            WTF::RefCounted<WebKit::Download>::deref(v24);
            v28 = *(v20 + 16);
            if (v28)
            {
LABEL_23:
              *(v20 + 16) = v28 - 1;
              return v7;
            }

            goto LABEL_42;
          }
        }

        else
        {
          v36 = *(v22 + 184);
          if (v36)
          {
            *(v22 + 184) = v36 - 1;
            v28 = *(v20 + 16);
            if (v28)
            {
              v7 = 0;
              goto LABEL_23;
            }

LABEL_42:
            __break(0xC471u);
            JUMPOUT(0x19D9341F4);
          }
        }

        __break(0xC471u);
        JUMPOUT(0x19D9341D4);
      }
    }

    return 0;
  }

  v18 = 1;
  while (v17)
  {
    v16 = (v16 + v18) & v12;
    v17 = *(v11 + 16 * v16);
    ++v18;
    if (v17 == v10)
    {
      goto LABEL_16;
    }
  }

LABEL_24:
  v29 = self->_sessionWrapper.m_impl.m_ptr;
  if (!v29 || (v30 = *(v29 + 1)) == 0)
  {
LABEL_43:
    __break(0xC471u);
    JUMPOUT(0x19D934154);
  }

  WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<unsigned long long>>,unsigned long long>(&v37, (v30 + 48), [a3 taskIdentifier]);
  v31 = v38;
  if (!v38)
  {
    return 0;
  }

  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v38, v37, &v39);
  WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v31, v32);
  if (!v39)
  {
    return 0;
  }

  v7 = WebKit::WebSocketTask::networkSession(v39);
  v34 = v39;
  v39 = 0;
  if (v34)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebSocketTask,(WTF::DestructionThread)0>::deref(v34 + 5, v33);
  }

  return v7;
}

- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v127 = *MEMORY[0x1E69E9840];
  v10 = [(WKNetworkSessionDelegate *)self sessionFromTask:a4];
  v11 = v10;
  if (!v10 || (++v10[4], [v8 state] == 2))
  {
    (*(a6 + 2))(a6, 2, 0);
LABEL_4:
    if (v11)
    {
      goto LABEL_51;
    }

    return;
  }

  v12 = [v8 taskIdentifier];
  if ([objc_msgSend(a5 "protectionSpace")] && !*(v11 + 1204) && (*(v11 + 1232) & 1) == 0)
  {
    (*(a6 + 2))(a6, 0, 0);
    goto LABEL_51;
  }

  v13 = [objc_msgSend(a5 "protectionSpace")];
  if (![v13 isEqualToString:*MEMORY[0x1E695AB80]])
  {
LABEL_38:
    v29 = 0;
    goto LABEL_39;
  }

  MEMORY[0x19EB0B400](&to, a5);
  WebKit::NetworkProcess::sourceApplicationAuditData(&location, *(*(v11 + 32) + 40));
  v15 = location;
  if (!location)
  {
    goto LABEL_18;
  }

  v16 = v119;
  if (v119)
  {
    v17 = v119;
  }

  v18 = [-[WTF::StringImpl protectionSpace](v16 "protectionSpace")];
  if (v18)
  {
    goto LABEL_161;
  }

  while (1)
  {
    SecTrustSetClientAuditToken();
    if (v18)
    {
      CFRelease(v18);
      if (!v16)
      {
        goto LABEL_17;
      }

LABEL_16:

      goto LABEL_17;
    }

    if (v16)
    {
      goto LABEL_16;
    }

LABEL_17:
    CFRelease(v15);
LABEL_18:
    v19 = v119;
    v119 = 0;
    if (v19)
    {
    }

    v20 = v118;
    v118 = 0;
    if (v20)
    {
    }

    WebCore::AuthenticationChallengeBase::~AuthenticationChallengeBase(&to, v14);
    v15 = checkForLegacyTLS([objc_msgSend(objc_msgSend(v8 "_incompleteTaskMetrics")]);
    if (v15)
    {
      break;
    }

    if (*(v11 + 1219) != 1)
    {
      goto LABEL_38;
    }

    if (!self)
    {
      v112 = 0;
LABEL_143:
      location = 0;
      objc_initWeak(&location, self);
      WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v11 + 8), v11);
      v86 = *(v11 + 8);
      if (v86)
      {
        atomic_fetch_add(v86, 1u);
      }

      *&v123 = v86;
      *(&v123 + 1) = _Block_copy(a6);
      v124 = v12;
      v87 = v112;
      if (v112)
      {
        while (1)
        {
          v88 = *(v87 + 8);
          if ((v88 & 1) == 0)
          {
            break;
          }

          v89 = *(v87 + 8);
          atomic_compare_exchange_strong_explicit((v87 + 8), &v89, v88 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v89 == v88)
          {
            goto LABEL_150;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v87 + 8));
      }

LABEL_150:
      v125 = v87;
      v126 = 0;
      to = 0;
      objc_moveWeak(&to, &location);
      v90 = v123;
      v123 = 0uLL;
      *v114 = v90;
      v91 = v125;
      v125 = 0;
      v115 = v124;
      v116 = v91;
      v117 = v126;
      v92 = malloc_type_malloc(0x50uLL, 0x10E00402AFD4002uLL);
      *v92 = MEMORY[0x1E69E9818];
      *(v92 + 1) = 50331650;
      *(v92 + 2) = WTF::BlockPtr<void ()(NSURLAuthenticationChallenge *,int)>::fromCallable<[WKNetworkSessionDelegate URLSession:task:didReceiveChallenge:completionHandler:]::$_16>([WKNetworkSessionDelegate URLSession:task:didReceiveChallenge:completionHandler:]::$_16)::{lambda(void *,NSURLAuthenticationChallenge *,int)#1}::__invoke;
      *(v92 + 3) = &WTF::BlockPtr<void ()(NSURLAuthenticationChallenge *,int)>::fromCallable<[WKNetworkSessionDelegate URLSession:task:didReceiveChallenge:completionHandler:]::$_16>([WKNetworkSessionDelegate URLSession:task:didReceiveChallenge:completionHandler:]::$_16)::descriptor;
      *(v92 + 4) = 0;
      objc_moveWeak(v92 + 4, &to);
      v93 = *v114;
      v114[0] = 0;
      v114[1] = 0;
      *(v92 + 40) = v93;
      v94 = v116;
      *(v92 + 7) = v115;
      *(v92 + 8) = v94;
      v92[72] = v117;
      v116 = 0;
      _Block_release(0);
      v96 = v114[0];
      v114[0] = 0;
      if (v96 && atomic_fetch_add(v96, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v96);
        WTF::fastFree(v96, v95);
      }

      objc_destroyWeak(&to);
      v97 = v125;
      v125 = 0;
      if (v97)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v97 + 8));
      }

      _Block_release(*(&v123 + 1));
      v99 = v123;
      *&v123 = 0;
      if (v99 && atomic_fetch_add(v99, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v99);
        WTF::fastFree(v99, v98);
      }

      objc_destroyWeak(&location);
      [MEMORY[0x1E695AC78] _strictTrustEvaluate:a5 queue:objc_msgSend(objc_msgSend(MEMORY[0x1E696ADC8] completionHandler:{"mainQueue"), "underlyingQueue"), v92}];
      _Block_release(v92);
      v100 = v112;
      v112 = 0;
      if (v100)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v100 + 8));
      }

      goto LABEL_4;
    }

    [(WKNetworkSessionDelegate *)self existingTask:v8];
    if (!v112)
    {
      goto LABEL_143;
    }

    v21 = [a5 protectionSpace];
    v8 = v21;
    if (v21)
    {
      v22 = v21;
    }

    v106 = v112;
    MEMORY[0x19EB02040](&v110, [v8 protocol]);
    MEMORY[0x19EB02040](&v109, [v8 host]);
    v23 = [v8 port];
    v18 = v23;
    v16 = v110;
    v107 = v109;
    if (v110)
    {
      v24 = *(v110 + 1);
    }

    else
    {
      v24 = 0;
    }

    v25 = v109;
    if (v109)
    {
      v25 = *(v109 + 1);
    }

    if (v23 < 0)
    {
      v41 = -v23;
      v26 = 1;
      do
      {
        ++v26;
        v42 = v41 >= 0xA;
        v41 /= 0xAuLL;
      }

      while (v42);
    }

    else
    {
      v26 = 0;
      v27 = v23;
      do
      {
        ++v26;
        v28 = v27 > 9;
        v27 /= 0xAuLL;
      }

      while (v28);
    }

    if (v26 < 0)
    {
      goto LABEL_172;
    }

    v43 = __OFADD__(v26, 1);
    v44 = v26 + 1;
    v45 = v43;
    if (v25 < 0)
    {
      goto LABEL_172;
    }

    if (v45)
    {
      goto LABEL_172;
    }

    v43 = __OFADD__(v25, v44);
    v46 = v25 + v44;
    if (v43)
    {
      goto LABEL_172;
    }

    v43 = __OFADD__(v46, 3);
    v47 = v46 + 3;
    v48 = v43;
    if (v24 < 0)
    {
      goto LABEL_172;
    }

    if (v48)
    {
      goto LABEL_172;
    }

    v49 = (v24 + v47);
    if (__OFADD__(v24, v47))
    {
      goto LABEL_172;
    }

    if ((!v110 || (*(v110 + 16) & 4) != 0) && (!v109 || (*(v109 + 16) & 4) != 0))
    {
      if (!v49)
      {
LABEL_109:
        v69 = MEMORY[0x1E696EB88];
        atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
        goto LABEL_126;
      }

      if ((v49 & 0x80000000) != 0)
      {
        goto LABEL_172;
      }

      WTF::tryFastCompactMalloc((v49 + 20));
      v60 = location;
      if (!location)
      {
        goto LABEL_172;
      }

      v103 = location;
      v105 = v8;
      v8 = location + 20;
      *location = 2;
      *(v60 + 1) = v49;
      *(v60 + 1) = v60 + 20;
      *(v60 + 4) = 4;
      v120 = v16;
      WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v120, v60 + 20);
      if (v120)
      {
        v61 = *(v120 + 1);
        if (v61 > v49)
        {
          goto LABEL_160;
        }
      }

      else
      {
        v61 = 0;
      }

      v62 = v49 - v61;
      v102 = v61;
      v63 = &v8[v61];
      v63[2] = 47;
      *v63 = 12090;
      if (v62 <= 2)
      {
        goto LABEL_160;
      }

      v16 = (v62 - 3);
      v8 = v63 + 3;
      v121 = v107;
      WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v121, v63 + 3);
      if (!v121)
      {
        v64 = 0;
LABEL_100:
        if (v16 == v64)
        {
          goto LABEL_160;
        }

        v8[v64] = 58;
        v65 = &v8[v64 + 1];
        if ((v18 & 0x8000000000000000) == 0)
        {
          v66 = 0;
          v8 = v105;
          while (v66 != -25)
          {
            *(&v124 + v66--) = (v18 % 0xA) | 0x30;
            v28 = v18 > 9;
            v18 /= 0xAuLL;
            if (!v28)
            {
              v67 = 0;
              v68 = v49 - v64 - v102 - 4;
              while (v68 != v67)
              {
                v65[v67] = *(&v124 + v67 + v66 + 1);
                if (-v66 == ++v67)
                {
                  goto LABEL_125;
                }
              }

              goto LABEL_160;
            }
          }

          goto LABEL_160;
        }

        v74 = -v18;
        v75 = 24;
        v8 = v105;
        do
        {
          if (v75 == -1)
          {
            goto LABEL_160;
          }

          *(&location + v75--) = (v74 % 0xA) | 0x30;
          v28 = v74 > 9;
          v74 /= 0xAuLL;
        }

        while (v28);
        if (v75 >= 0x19)
        {
          goto LABEL_160;
        }

        v76 = v75 - 24;
        v77 = v75 - 23;
        *(&location + v75) = 45;
        v78 = v64 + v102 - v49 + 4;
        do
        {
          if (!v78)
          {
            goto LABEL_160;
          }

          *v65++ = *(&v124 + v76);
          ++v77;
          ++v76;
          ++v78;
        }

        while (v77 != 2);
LABEL_125:
        v69 = v103;
LABEL_126:
        v111 = v69;
        MEMORY[0x19EB01DD0](&to, &v111, 0);
        v80 = *(v106 + 24);
        if (v80)
        {
          v81 = *(v80 + 8);
          if (v81)
          {
            (**v81)(v81);
            (*(*v81 + 128))(v81, &to);
            (*(*v81 + 8))(v81);
          }
        }

        v82 = to;
        to = 0;
        if (v82 && atomic_fetch_add_explicit(v82, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v82, v79);
        }

        v83 = v111;
        v111 = 0;
        if (v83 && atomic_fetch_add_explicit(v83, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v83, v79);
        }

        v84 = v109;
        v109 = 0;
        if (v84 && atomic_fetch_add_explicit(v84, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v84, v79);
        }

        v85 = v110;
        v110 = 0;
        if (v85 && atomic_fetch_add_explicit(v85, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v85, v79);
        }

        if (v8)
        {
        }

        goto LABEL_143;
      }

      v64 = *(v121 + 1);
      if (v16 >= v64)
      {
        goto LABEL_100;
      }
    }

    else
    {
      if (!v49)
      {
        goto LABEL_109;
      }

      if (v49 > 0x7FFFFFEF || (WTF::tryFastCompactMalloc((2 * v49 + 20)), (v50 = location) == 0))
      {
LABEL_172:
        __break(0xC471u);
LABEL_173:
        JUMPOUT(0x19D934EB0);
      }

      v103 = location;
      v104 = v8;
      v8 = location + 20;
      *location = 2;
      *(v50 + 1) = v49;
      *(v50 + 1) = v50 + 20;
      *(v50 + 4) = 0;
      v120 = v16;
      WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v120, v50 + 20);
      if (v120)
      {
        v51 = *(v120 + 1);
        if (v51 > v49)
        {
          goto LABEL_160;
        }
      }

      else
      {
        v51 = 0;
      }

      v52 = &v8[2 * v51];
      *v52 = 3080250;
      *(v52 + 2) = 47;
      v101 = v51;
      if ((v49 - v51) > 2)
      {
        v8 = v52 + 6;
        v16 = (v49 - v51 - 3);
        v121 = v107;
        WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v121, v52 + 6);
        if (!v121)
        {
          v53 = 0;
LABEL_83:
          if (v16 != v53)
          {
            v54 = &v8[2 * v53];
            *v54 = 58;
            v55 = v54 + 2;
            if ((v18 & 0x8000000000000000) != 0)
            {
              v70 = -v18;
              v71 = 24;
              v8 = v104;
              while (v71 != -1)
              {
                *(&location + v71--) = (v70 % 0xA) | 0x30;
                v28 = v70 > 9;
                v70 /= 0xAuLL;
                if (!v28)
                {
                  if (v71 < 0x19)
                  {
                    v72 = v71 + 1;
                    *(&location + v71) = 45;
                    v73 = v53 + v101 - v49 + 4;
                    while (v73)
                    {
                      *v55++ = *(&location + v71);
                      ++v72;
                      ++v71;
                      ++v73;
                      if (v72 == 26)
                      {
                        goto LABEL_125;
                      }
                    }
                  }

                  goto LABEL_160;
                }
              }
            }

            else
            {
              v56 = 24;
              v8 = v104;
              while (v56 != -1)
              {
                *(&location + v56--) = (v18 % 0xA) | 0x30;
                v28 = v18 > 9;
                v18 /= 0xAuLL;
                if (!v28)
                {
                  v57 = v53 + v101 - v49 + 4;
                  v58 = v56 + 1;
                  v59 = v56 + 2;
                  while (v57)
                  {
                    *v55++ = *(&location + v58);
                    ++v59;
                    ++v58;
                    ++v57;
                    if (v59 == 26)
                    {
                      goto LABEL_125;
                    }
                  }

                  goto LABEL_160;
                }
              }
            }
          }

          goto LABEL_160;
        }

        v53 = *(v121 + 1);
        if (v16 >= v53)
        {
          goto LABEL_83;
        }
      }
    }

LABEL_160:
    __break(1u);
LABEL_161:
    CFRetain(v18);
  }

  if ([v8 _preconnect])
  {
    (*(a6 + 2))(a6, 2, 0);
    goto LABEL_51;
  }

  v29 = 1;
LABEL_39:
  m_ptr = self->_sessionWrapper.m_impl.m_ptr;
  if (!m_ptr || (v31 = *(m_ptr + 1)) == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19D934ED0);
  }

  ++*(v31 + 8);
  MEMORY[0x19EB0B400](&to, a5);
  [(WKNetworkSessionDelegate *)self existingTask:v8];
  v32 = _Block_copy(a6);
  v33 = WTF::fastMalloc(0x10);
  *v33 = &unk_1F10ED828;
  v33[1] = v32;
  location = v33;
  WebKit::NetworkSessionCocoa::continueDidReceiveChallenge(v11, v31, &to, v29, v12, &v108, &location);
  v34 = location;
  location = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  _Block_release(0);
  v36 = v108;
  v108 = 0;
  if (v36)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v36 + 8));
  }

  v37 = v119;
  v119 = 0;
  if (v37)
  {
  }

  v38 = v118;
  v118 = 0;
  if (v38)
  {
  }

  WebCore::AuthenticationChallengeBase::~AuthenticationChallengeBase(&to, v35);
  v39 = *(v31 + 8);
  if (!v39)
  {
    __break(0xC471u);
    JUMPOUT(0x19D934EF0);
  }

  *(v31 + 8) = v39 - 1;
LABEL_51:
  v40 = *(v11 + 16);
  if (!v40)
  {
    __break(0xC471u);
    goto LABEL_173;
  }

  *(v11 + 16) = v40 - 1;
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v90 = *MEMORY[0x1E69E9840];
  v75 = a5;
  if (a5)
  {
    v37 = a5;
    v38 = [a5 userInfo];
    v39 = v38;
    if (v38)
    {
      v40 = v38;
      v41 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v39];
    }

    else
    {
      v41 = [MEMORY[0x1E695DF90] dictionary];
    }

    v42 = v41;
    if (v41)
    {
      v43 = v41;
    }

    [v42 setObject:objc_msgSend(a4 forKeyedSubscript:{"description"), @"networkTaskDescription"}];
    if (self)
    {
      [(WKNetworkSessionDelegate *)self existingTask:a4];
      if (*v76)
      {
        if (*(*v76 + 715) - 1 > 4)
        {
          v44 = @"Unknown";
        }

        else
        {
          v44 = off_1E7630BA8[(*(*v76 + 715) - 1)];
        }

        v45 = v44;
        [v42 setObject:v44 forKeyedSubscript:@"networkTaskMetricsPrivacyStance"];

        ResolutionReport = extractResolutionReport(v75);
        if (ResolutionReport)
        {
          [v42 setObject:ResolutionReport forKeyedSubscript:@"networkResolutionReport"];
        }

        else
        {
          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          v47 = [(NSError *)v75 underlyingErrors];
          v48 = [(NSArray *)v47 countByEnumeratingWithState:&v71 objects:v80 count:16];
          if (v48)
          {
            v52 = *v72;
            while (2)
            {
              for (i = 0; i != v48; ++i)
              {
                if (*v72 != v52)
                {
                  objc_enumerationMutation(v47);
                }

                v54 = extractResolutionReport(*(*(&v71 + 1) + 8 * i));
                if (v54)
                {
                  [v42 setObject:v54 forKeyedSubscript:@"networkResolutionReport"];
                  goto LABEL_66;
                }
              }

              v48 = [(NSArray *)v47 countByEnumeratingWithState:&v71 objects:v80 count:16];
              if (v48)
              {
                continue;
              }

              break;
            }
          }
        }

LABEL_66:
        v49 = *v76;
        *v76 = 0;
        if (v49)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v49 + 8));
        }
      }
    }

    v50 = MEMORY[0x1E696ABC0];
    v51 = [(NSError *)v75 domain];
    WTF::RetainPtr<NSError>::operator=(&v75, [v50 errorWithDomain:v51 code:-[NSError code](v75 userInfo:{"code"), v42}]);
    if (v42)
    {
    }

    if (v39)
    {
    }
  }

  if (!self)
  {
    v70 = 0;
    *buf = 0;
LABEL_16:
    if (v75)
    {
      m_ptr = self->_sessionWrapper.m_impl.m_ptr;
      if (m_ptr)
      {
        v15 = *(m_ptr + 1);
        if (v15)
        {
          v16 = WTF::HashMap<unsigned long long,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::takeOptional((v15 + 40), [a4 taskIdentifier]);
          if (a2)
          {
            v17 = self->_session.m_impl.m_ptr;
            if (v17)
            {
              v18 = *(v17 + 1);
              if (v18)
              {
                ++*(v18 + 16);
                v19 = *(v18 + 32);
                ++*(v19 + 184);
                *v76 = v16;
                v20 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((v19 + 216), v76);
                v21 = v20;
                if (v20)
                {
                  ++*(v20 + 16);
                }

                v22 = *(v19 + 184);
                if (!v22 || (*(v19 + 184) = v22 - 1, (v23 = *(v18 + 16)) == 0))
                {
                  __break(0xC471u);
                  JUMPOUT(0x19D936C90);
                }

                *(v18 + 16) = v23 - 1;
                if (v20)
                {
                  v69 = 0;
                  v24 = [(NSError *)v75 userInfo];
                  if (v24 && WTF::ObjCTypeCastTraits<NSDictionary>::isType<NSObject>())
                  {
                    v63 = v24;
                    WTF::OSObjectPtr<NSObject  {objcproto13OS_xpc_object}*>::operator=(&v69, [(NSDictionary *)v24 objectForKeyedSubscript:@"NSURLSessionDownloadTaskResumeData"]);
                    if (v69)
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        v64 = qword_1ED640E78;
                        if (os_log_type_enabled(qword_1ED640E78, OS_LOG_TYPE_DEFAULT))
                        {
                          v65 = [a4 taskIdentifier];
                          v66 = objc_opt_class();
                          v67 = [NSStringFromClass(v66) UTF8String];
                          *v76 = 134218242;
                          *&v76[4] = v65;
                          *&v76[12] = 2080;
                          *&v76[14] = v67;
                          _os_log_impl(&dword_19D52D000, v64, OS_LOG_TYPE_DEFAULT, "Download task %llu finished with resume data of wrong class: %s", v76, 0x16u);
                        }

                        v68 = v69;
                        v69 = 0;
                        if (v68)
                        {
                        }
                      }
                    }
                  }

                  v25 = v69;
                  if (v69)
                  {
                    v26 = [v69 bytes];
                    v25 = [v25 length];
                  }

                  else
                  {
                    v26 = 0;
                  }

                  MEMORY[0x19EB04D40](v76, v75);
                  WebKit::Download::didFail(v21, v76, v26, v25);
                  v28 = v79;
                  v79 = 0;
                  if (v28)
                  {
                  }

                  v29 = v77;
                  v77 = 0;
                  if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v29, v27);
                  }

                  v30 = *&v76[8];
                  *&v76[8] = 0;
                  if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v30, v27);
                  }

                  v31 = *v76;
                  *v76 = 0;
                  if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v31, v27);
                  }

                  v32 = v69;
                  v69 = 0;
                  if (v32)
                  {
                  }

                  WTF::RefCounted<WebKit::Download>::deref((v21 + 16));
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_38;
  }

  [(WKNetworkSessionDelegate *)self existingTask:a4];
  if (v70)
  {
    MEMORY[0x19EB04D40](v76, v75);
    if (!kdebug_is_enabled())
    {
LABEL_5:
      v8 = *(v70 + 24);
      if (v8)
      {
        v9 = *(v8 + 8);
        if (v9)
        {
          (**v9)(v9);
          (*(*v9 + 72))(v9, v76, v70 + 616);
          (*(*v9 + 8))(v9);
        }
      }

      v10 = v79;
      v79 = 0;
      if (v10)
      {
      }

      v11 = v77;
      v77 = 0;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v7);
      }

      v12 = *&v76[8];
      *&v76[8] = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v7);
      }

      v13 = *v76;
      *v76 = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v7);
      }

      goto LABEL_40;
    }

    v55 = *MEMORY[0x1E696EB68];
    v56 = WTFSignpostLogHandle();
    v57 = v56;
    if (v55)
    {
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v58 = *(v70 + 608);
        v59 = WTFCurrentContinuousTime();
        *buf = 67110144;
        *&buf[4] = 0;
        v82 = 1024;
        v83 = 0;
        v84 = 2048;
        v85 = v58;
        v86 = 2048;
        v87 = v59;
        v88 = 1024;
        v89 = v78 != 0;
        _os_log_impl(&dword_19D52D000, v57, OS_LOG_TYPE_DEFAULT, "type=%d name=%d p=%lu ts=%llu completed with error: %d", buf, 0x28u);
      }

      goto LABEL_5;
    }

    if (v56)
    {
      v60 = v56;
    }

    v61 = *(v70 + 608);
    if (v61)
    {
      v62 = os_signpost_id_make_with_pointer(v57, v61);
      if (v62 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
LABEL_97:
        if (v57)
        {
        }

        goto LABEL_5;
      }
    }

    else
    {
      v62 = 0xEEEEB0B5B2B2EEEELL;
    }

    if (os_signpost_enabled(v57))
    {
      *buf = 67109120;
      *&buf[4] = v78 != 0;
      _os_signpost_emit_with_name_impl(&dword_19D52D000, v57, OS_SIGNPOST_EVENT, v62, "DataTask", "completed with error: %d", buf, 8u);
    }

    goto LABEL_97;
  }

  [(WKNetworkSessionDelegate *)self existingWebSocketTask:a4];
  if (!*buf)
  {
    goto LABEL_16;
  }

  WebKit::WebSocketTask::didClose(*buf, 0x3EE, MEMORY[0x1E696EBA8]);
LABEL_38:
  v33 = *buf;
  *buf = 0;
  if (v33)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebSocketTask,(WTF::DestructionThread)0>::deref((v33 + 40), a2);
  }

LABEL_40:
  v34 = v70;
  v70 = 0;
  if (v34)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v34 + 8));
  }

  v35 = v75;
  v75 = 0;
  if (v35)
  {
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5
{
  v112 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  [(WKNetworkSessionDelegate *)self existingTask:a4];
  if (!v110)
  {
    return;
  }

  v7 = [a5 transactionMetrics];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  v10 = [v8 lastObject];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  v13 = v110;
  [objc_msgSend(objc_msgSend(v8 "firstObject")];
  v15 = v14;
  v16 = 0;
  if (*&v15 != 0.0)
  {
    v100 = v15;
    WTF::WallTime::approximateMonotonicTime(&v100);
  }

  *(v13 + 77) = v16;
  [objc_msgSend(v11 "fetchStartDate")];
  v18 = v17;
  v19 = 0;
  if (*&v18 != 0.0)
  {
    v100 = v18;
    WTF::WallTime::approximateMonotonicTime(&v100);
  }

  *(v13 + 78) = v19;
  [objc_msgSend(v11 "domainLookupStartDate")];
  v21 = v20;
  v22 = 0;
  if (*&v21 != 0.0)
  {
    v100 = v21;
    WTF::WallTime::approximateMonotonicTime(&v100);
  }

  *(v13 + 79) = v22;
  [objc_msgSend(v11 "domainLookupEndDate")];
  v24 = v23;
  v25 = 0;
  if (*&v24 != 0.0)
  {
    v100 = v24;
    WTF::WallTime::approximateMonotonicTime(&v100);
  }

  *(v13 + 80) = v25;
  [objc_msgSend(v11 "connectStartDate")];
  v27 = v26;
  v28 = 0;
  if (*&v27 != 0.0)
  {
    v100 = v27;
    WTF::WallTime::approximateMonotonicTime(&v100);
  }

  *(v13 + 81) = v28;
  if ([v11 isReusedConnection] && objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(v11, "response"), "URL"), "scheme"), "isEqualToString:", @"https"))
  {
    *(v13 + 82) = 0xBFF0000000000000;
  }

  else
  {
    [objc_msgSend(v11 "secureConnectionStartDate")];
    v30 = v29;
    v31 = 0;
    if (*&v30 != 0.0)
    {
      v100 = v30;
      WTF::WallTime::approximateMonotonicTime(&v100);
    }

    *(v13 + 82) = v31;
  }

  [objc_msgSend(v11 "connectEndDate")];
  v33 = v32;
  v34 = 0;
  if (*&v33 != 0.0)
  {
    v100 = v33;
    WTF::WallTime::approximateMonotonicTime(&v100);
  }

  *(v13 + 83) = v34;
  [objc_msgSend(v11 "requestStartDate")];
  v36 = v35;
  v37 = 0;
  if (*&v36 != 0.0)
  {
    v100 = v36;
    WTF::WallTime::approximateMonotonicTime(&v100);
  }

  *(v13 + 84) = v37;
  [objc_msgSend(v11 "responseStartDate")];
  v39 = v38;
  v40 = 0.0;
  if (*&v39 != 0.0)
  {
    v100 = v39;
    WTF::WallTime::approximateMonotonicTime(&v100);
  }

  if (*(v13 + 84) >= v40)
  {
    v40 = *(v13 + 84);
  }

  *(v13 + 85) = v40;
  [objc_msgSend(v11 "responseEndDate")];
  v42 = v41;
  v43 = 0;
  if (*&v42 != 0.0)
  {
    v100 = v42;
    WTF::WallTime::approximateMonotonicTime(&v100);
  }

  *(v13 + 86) = v43;
  *(v13 + 714) |= 1u;
  *(v13 + 356) = [a5 redirectCount];
  MEMORY[0x19EB02040](&v100, [v11 networkProtocolName]);
  v45 = v100;
  v100 = 0;
  v46 = *(v13 + 88);
  *(v13 + 88) = v45;
  if (v46)
  {
    if (atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v46, v44);
    }

    v56 = v100;
    v100 = 0;
    if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v56, v44);
    }
  }

  if ([v11 isCellular])
  {
    v47 = 2;
  }

  else
  {
    v47 = 0;
  }

  *(v13 + 714) = *(v13 + 714) & 0xFD | v47;
  if ([v11 isExpensive])
  {
    v48 = 4;
  }

  else
  {
    v48 = 0;
  }

  *(v13 + 714) = *(v13 + 714) & 0xFB | v48;
  if ([v11 isConstrained])
  {
    v49 = 8;
  }

  else
  {
    v49 = 0;
  }

  *(v13 + 714) = *(v13 + 714) & 0xF7 | v49;
  if ([v11 isMultipath])
  {
    v50 = 16;
  }

  else
  {
    v50 = 0;
  }

  *(v13 + 714) = *(v13 + 714) & 0xEF | v50;
  if ([v11 isReusedConnection])
  {
    v51 = 32;
  }

  else
  {
    v51 = 0;
  }

  *(v13 + 714) = *(v13 + 714) & 0xDF | v51;
  v52 = [v11 _privacyStance];
  if (v52 >= 6)
  {
    v53 = 0;
  }

  else
  {
    v53 = v52;
  }

  *(v13 + 715) = v53;
  if (WebKit::NetworkDataTask::shouldCaptureExtraNetworkLoadMetrics(v110))
  {
    WebCore::AdditionalNetworkLoadMetricsForWebInspector::create(&v109);
    [a4 priority];
    if (*MEMORY[0x1E695ABC8] > v57)
    {
      v58 = 1;
    }

    else
    {
      v58 = 2;
    }

    if (*MEMORY[0x1E695ABD0] >= v57)
    {
      v58 = 0;
    }

    *(v109 + 4) = v58;
    v59 = [objc_msgSend(v11 "remotePort")];
    if (v59)
    {
      MEMORY[0x19EB02040](&v108, [v11 remoteAddress]);
      WTF::makeString<WTF::String,char,unsigned int>(&v100, v108, v59);
      v61 = *(v109 + 8);
      *(v109 + 8) = v100;
      if (v61 && atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v61, v60);
      }

      v62 = v108;
      v108 = 0;
      if (!v62)
      {
        goto LABEL_82;
      }
    }

    else
    {
      MEMORY[0x19EB02040](&v100, [v11 remoteAddress]);
      v63 = v100;
      v100 = 0;
      v64 = *(v109 + 8);
      *(v109 + 8) = v63;
      if (!v64)
      {
        goto LABEL_82;
      }

      if (atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v64, v60);
      }

      v62 = v100;
      v100 = 0;
      if (!v62)
      {
        goto LABEL_82;
      }
    }

    if (atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v62, v60);
    }

LABEL_82:
    MEMORY[0x19EB02040](&v100, [objc_msgSend(v11 "_connectionIdentifier")]);
    v66 = v100;
    v100 = 0;
    v67 = *(v109 + 16);
    *(v109 + 16) = v66;
    if (v67)
    {
      if (atomic_fetch_add_explicit(v67, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v67, v65);
      }

      v92 = v100;
      v100 = 0;
      if (v92 && atomic_fetch_add_explicit(v92, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v92, v65);
      }
    }

    stringForTLSProtocolVersion(&v100, [objc_msgSend(v11 "negotiatedTLSProtocolVersion")]);
    v69 = *(v109 + 24);
    *(v109 + 24) = v100;
    if (v69 && atomic_fetch_add_explicit(v69, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v69, v68);
    }

    stringForTLSCipherSuite(&v100, [objc_msgSend(v11 "negotiatedTLSCipherSuite")]);
    v71 = *(v109 + 32);
    *(v109 + 32) = v100;
    if (v71 && atomic_fetch_add_explicit(v71, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v71, v70);
    }

    v100 = 0;
    v101 = &v100;
    v102 = 0x5012000000;
    v103 = __Block_byref_object_copy__0;
    v104 = __Block_byref_object_dispose__0;
    v105 = 0;
    WebCore::HTTPHeaderMap::HTTPHeaderMap(v106);
    v72 = [objc_msgSend(v11 "request")];
    v99[0] = MEMORY[0x1E69E9820];
    v99[1] = 3221225472;
    v99[2] = __71__WKNetworkSessionDelegate_URLSession_task_didFinishCollectingMetrics___block_invoke;
    v99[3] = &unk_1E7630B20;
    v99[4] = &v100;
    [v72 enumerateKeysAndObjectsUsingBlock:v99];
    v73 = v101;
    v74 = v109;
    WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::operator=(v109 + 40, v101 + 6);
    WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::operator=(v74 + 56, v73 + 8);
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v75 = [a5 transactionMetrics];
    v76 = [v75 countByEnumeratingWithState:&v95 objects:v111 count:16];
    v93 = a4;
    v77 = 0;
    v78 = 0;
    if (v76)
    {
      v79 = *v96;
      obj = v75;
      do
      {
        for (i = 0; i != v76; ++i)
        {
          if (*v96 != v79)
          {
            objc_enumerationMutation(obj);
          }

          v81 = *(*(&v95 + 1) + 8 * i);
          v77 += [v81 countOfRequestHeaderBytesSent];
          v78 += [v81 countOfResponseHeaderBytesReceived];
        }

        v76 = [obj countByEnumeratingWithState:&v95 objects:v111 count:16];
      }

      while (v76);
    }

    *(v109 + 72) = v77;
    v82 = [v93 countOfBytesSent];
    v83 = v109;
    *(v109 + 80) = v78;
    *(v83 + 88) = v82;
    v84 = [v11 isProxyConnection];
    v86 = v109;
    *(v109 + 96) = v84;
    v109 = 0;
    v87 = *(v13 + 92);
    *(v13 + 92) = v86;
    if (v87)
    {
      WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v87, v85);
    }

    _Block_object_dispose(&v100, 8);
    WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(v107, v88);
    WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(v106, v89);
    v91 = v109;
    v109 = 0;
    if (v91)
    {
      WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v91, v90);
    }
  }

  *(v13 + 90) = [v11 countOfResponseBodyBytesReceived];
  v54 = [v11 countOfResponseBodyBytesAfterDecoding];
  *(v13 + 91) = v54;
  if (!v54)
  {
    *(v13 + 90) = 0;
  }

  if (v11)
  {
  }

  if (v8)
  {
  }

  v55 = v110;
  v110 = 0;
  if (v55)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref(v55 + 1);
  }
}

WTF::StringImpl *__71__WKNetworkSessionDelegate_URLSession_task_didFinishCollectingMetrics___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 8);
  MEMORY[0x19EB02040](&v9);
  MEMORY[0x19EB02040](&v8, a3);
  WebCore::HTTPHeaderMap::set((v4 + 48), &v9, &v8);
  v6 = v8;
  v8 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  result = v9;
  v9 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v5);
    }
  }

  return result;
}

- (void)URLSession:(id)a3 task:(id)a4 didReceiveInformationalResponse:(id)a5
{
  if (self)
  {
    [(WKNetworkSessionDelegate *)self existingTask:a4];
    if (v11)
    {
      WebCore::ResourceResponse::ResourceResponse(v9, a5);
      WebKit::NetworkDataTask::didReceiveInformationalResponse(v11, v9);
      v7 = v10;
      v10 = 0;
      if (v7)
      {
      }

      WebCore::ResourceResponseBase::~ResourceResponseBase(v9, v6);
      v8 = v11;
      v11 = 0;
      if (v8)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v8 + 8));
      }
    }
  }
}

- (void)URLSession:(id)a3 task:(id)a4 _didReceiveInformationalResponse:(id)a5
{
  v8 = WTF::dynamic_objc_cast<NSHTTPURLResponse>(a5);
  if (v8)
  {
    v10 = v8;
    v9 = v8;
    [(WKNetworkSessionDelegate *)self URLSession:a3 task:a4 didReceiveInformationalResponse:v10];
  }
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v79 = *MEMORY[0x1E69E9840];
  v10 = [a4 taskIdentifier];
  if (!self)
  {
    v70 = 0;
    goto LABEL_40;
  }

  v11 = v10;
  [(WKNetworkSessionDelegate *)self existingTask:a4];
  if (!v70)
  {
LABEL_40:
    (*(a6 + 2))(a6, 0);
    goto LABEL_36;
  }

  v12 = [a4 _incompleteTaskMetrics];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  v15 = [objc_msgSend(v13 "transactionMetrics")];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  v64 = [(NSURLSessionTaskTransactionMetrics *)v16 _privacyStance]!= 4 && [(NSURLSessionTaskTransactionMetrics *)v16 _privacyStance]!= 1;
  if ([(NSURLSessionTaskTransactionMetrics *)v16 _establishmentReport]&& (v18 = nw_establishment_report_copy_proxy_endpoint([(NSURLSessionTaskTransactionMetrics *)v16 _establishmentReport]), (v19 = v18) != 0))
  {
    hostname = nw_endpoint_get_hostname(v18);
    if (hostname)
    {
      strlen(hostname);
      WTF::String::fromUTF8();
      v20 = v66[0];
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v62 = checkForLegacyTLS(v16);
  v21 = WTF::dynamic_objc_cast<NSHTTPURLResponse>(a5);
  v22 = v21;
  if (!v21)
  {
    v26 = 0;
    v63 = 1;
LABEL_50:
    [a5 _CFURLResponse];
    WebCore::adjustMIMETypeIfNecessary();
    goto LABEL_16;
  }

  v23 = v21;
  v24 = [v22 statusCode];
  v25 = [v22 valueForHTTPHeaderField:@"X-Content-Type-Options"];
  v26 = v25;
  v63 = v25 == 0;
  if (v25)
  {
    v45 = v25;
    [v26 caseInsensitiveCompare:@"nosniff"];
  }

  if (v24 != 304)
  {
    goto LABEL_50;
  }

LABEL_16:
  WebCore::ResourceResponse::ResourceResponse(v66, a5);
  v27 = WebCore::ResourceResponseBase::url(v66);
  if ((WTF::URL::hasSpecialScheme(v27) & 1) == 0)
  {
    v64 = 0;
  }

  WebCore::ResourceResponse::disableLazyInitialization(v66);
  WebCore::copyTimingData();
  v29 = *buf;
  *buf = 0;
  v30 = v67;
  v67 = v29;
  if (v30)
  {
    WTF::ThreadSafeRefCounted<WTF::Box<WebCore::NetworkLoadMetrics>::Data,(WTF::DestructionThread)0>::deref(v30, v28);
    v46 = *buf;
    *buf = 0;
    if (v46)
    {
      WTF::ThreadSafeRefCounted<WTF::Box<WebCore::NetworkLoadMetrics>::Data,(WTF::DestructionThread)0>::deref(v46, v28);
    }
  }

  v31 = v68;
  v68 = v20;
  if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v31, v28);
  }

  v32 = v70;
  v33 = _Block_copy(a6);
  v34 = WTF::fastMalloc(0x18);
  *v34 = &unk_1F10ED850;
  v34[1] = v33;
  v34[2] = v11;
  v65 = v34;
  if (!kdebug_is_enabled())
  {
    goto LABEL_21;
  }

  v48 = *MEMORY[0x1E696EB68];
  v49 = WTFSignpostLogHandle();
  v50 = v49;
  if (!v48)
  {
    if (v49)
    {
      v59 = v49;
    }

    v60 = *(v32 + 608);
    if (v60)
    {
      v61 = os_signpost_id_make_with_pointer(v50, v60);
      if (v61 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
LABEL_71:
        if (v50)
        {
        }

        goto LABEL_21;
      }
    }

    else
    {
      v61 = 0xEEEEB0B5B2B2EEEELL;
    }

    if (os_signpost_enabled(v50))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19D52D000, v50, OS_SIGNPOST_EVENT, v61, "DataTask", "received response headers", buf, 2u);
    }

    goto LABEL_71;
  }

  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    v51 = *(v32 + 608);
    v52 = WTFCurrentContinuousTime();
    *buf = 67109888;
    *&buf[4] = 0;
    v73 = 1024;
    v74 = 0;
    v75 = 2048;
    v76 = v51;
    v77 = 2048;
    v78 = v52;
    _os_log_impl(&dword_19D52D000, v50, OS_LOG_TYPE_DEFAULT, "type=%d name=%d p=%lu ts=%llu received response headers", buf, 0x22u);
  }

LABEL_21:
  if (*(v32 + 545) == 1)
  {
    v47 = WebCore::ResourceResponseBase::url(v66);
    WebKit::NetworkDataTaskCocoa::updateFirstPartyInfoForSession(v32, v47);
  }

  else
  {
    v35 = [*(v32 + 608) _incompleteTaskMetrics];
    if (WebKit::NetworkIssueReporter::shouldReport(v35, v36))
    {
      v54 = *(v32 + 16);
      if (v54)
      {
        v55 = *(v54 + 8);
        if (v55)
        {
          ++*(v55 + 16);
          v56 = *(v32 + 760);
          if (!v56 || (v57 = WebCore::ResourceRequestBase::url((v32 + 128)), WebKit::NetworkSession::reportNetworkIssue(v55, v56, v57), (v58 = *(v55 + 16)) == 0))
          {
            __break(0xC471u);
            JUMPOUT(0x19D938C74);
          }

          *(v55 + 16) = v58 - 1;
        }
      }
    }
  }

  v37 = MEMORY[0x19EB02040](&v71, [objc_msgSend(objc_msgSend(objc_msgSend(*(v32 + 608) "_incompleteTaskMetrics")]);
  WebCore::IPAddress::fromString(buf, v37, v38);
  WebKit::NetworkDataTask::didReceiveResponse(v32, v66, v62, v64, buf, &v65);
  v40 = v71;
  v71 = 0;
  if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v40, v39);
  }

  v41 = v65;
  v65 = 0;
  if (v41)
  {
    (*(*v41 + 8))(v41);
  }

  _Block_release(0);
  v43 = v69;
  v69 = 0;
  if (v43)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(v66, v42);
  if (!v63)
  {
  }

  if (v22)
  {
  }

  if (v16)
  {
  }

  if (v13)
  {
  }

LABEL_36:
  v44 = v70;
  v70 = 0;
  if (v44)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v44 + 8));
  }
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v24 = a5;
  if (!self)
  {
    return;
  }

  [(WKNetworkSessionDelegate *)self existingTask:a4];
  v6 = v23;
  if (!v23)
  {
    return;
  }

  WebCore::SharedBuffer::create<NSData *&>(&v24, v5, &v22);
  v7 = v22;
  if (kdebug_is_enabled())
  {
    v12 = *MEMORY[0x1E696EB68];
    v13 = WTFSignpostLogHandle();
    v14 = v13;
    if (v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(v6 + 608);
        v16 = WTFCurrentContinuousTime();
        v17 = *(v7 + 56);
        *buf = 67110144;
        *v26 = 0;
        *&v26[4] = 1024;
        *&v26[6] = 0;
        v27 = 2048;
        v28 = v15;
        v29 = 2048;
        v30 = v16;
        v31 = 2048;
        v32 = v17;
        _os_log_impl(&dword_19D52D000, v14, OS_LOG_TYPE_DEFAULT, "type=%d name=%d p=%lu ts=%llu received %zd bytes", buf, 0x2Cu);
      }

      goto LABEL_4;
    }

    if (v13)
    {
      v18 = v13;
    }

    v19 = *(v6 + 608);
    if (v19)
    {
      v20 = os_signpost_id_make_with_pointer(v14, v19);
      if (v20 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
LABEL_24:
        if (v14)
        {
        }

        goto LABEL_4;
      }
    }

    else
    {
      v20 = 0xEEEEB0B5B2B2EEEELL;
    }

    if (os_signpost_enabled(v14))
    {
      v21 = *(v7 + 56);
      *buf = 134217984;
      *v26 = v21;
      _os_signpost_emit_with_name_impl(&dword_19D52D000, v14, OS_SIGNPOST_EVENT, v20, "DataTask", "received %zd bytes", buf, 0xCu);
    }

    goto LABEL_24;
  }

LABEL_4:
  *(v6 + 536) = [*(v6 + 608) _countOfBytesReceivedEncoded];
  v8 = *(v6 + 24);
  if (v8)
  {
    v9 = *(v8 + 8);
    if (v9)
    {
      (**v9)(v9);
      (*(*v9 + 64))(v9, v7);
      (*(*v9 + 8))(v9);
    }
  }

  v10 = v22;
  v22 = 0;
  if (v10 && atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v10 + 2);
    (*(*v10 + 8))(v10);
  }

  v11 = v23;
  v23 = 0;
  if (v11)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v11 + 8));
  }
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5
{
  m_ptr = self->_sessionWrapper.m_impl.m_ptr;
  if (m_ptr)
  {
    v6 = *(m_ptr + 1);
    if (v6)
    {
      v8 = WTF::HashMap<unsigned long long,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::takeOptional((v6 + 40), [a4 taskIdentifier]);
      if (v9)
      {
        v10 = self->_session.m_impl.m_ptr;
        if (v10)
        {
          v11 = *(v10 + 1);
          if (v11)
          {
            ++*(v11 + 16);
            v12 = *(v11 + 32);
            ++*(v12 + 184);
            v18 = v8;
            v13 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((v12 + 216), &v18);
            if (v13)
            {
              v14 = v13 + 4;
              ++v13[4];
              v15 = *(v12 + 184);
              if (!v15)
              {
                goto LABEL_14;
              }

              *(v12 + 184) = v15 - 1;
              WebKit::Download::didFinish(v13);
              WTF::RefCounted<WebKit::Download>::deref(v14);
            }

            else
            {
              v17 = *(v12 + 184);
              if (!v17)
              {
                goto LABEL_14;
              }

              *(v12 + 184) = v17 - 1;
            }

            v16 = *(v11 + 16);
            if (v16)
            {
              *(v11 + 16) = v16 - 1;
              return;
            }

LABEL_14:
            __break(0xC471u);
            JUMPOUT(0x19D939394);
          }
        }
      }
    }
  }
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didWriteData:(int64_t)a5 totalBytesWritten:(int64_t)a6 totalBytesExpectedToWrite:(int64_t)a7
{
  m_ptr = self->_sessionWrapper.m_impl.m_ptr;
  if (!m_ptr)
  {
    return;
  }

  v8 = *(m_ptr + 1);
  if (!v8)
  {
    return;
  }

  v13 = [a4 taskIdentifier];
  if (v13 == -1)
  {
    __break(0xC471u);
    goto LABEL_24;
  }

  if (!v13)
  {
    __break(0xC471u);
    JUMPOUT(0x19D9395C0);
  }

  v14 = *(v8 + 40);
  if (!v14)
  {
    return;
  }

  v15 = *(v14 - 8);
  v16 = (v13 + ~(v13 << 32)) ^ ((v13 + ~(v13 << 32)) >> 22);
  v17 = 9 * ((v16 + ~(v16 << 13)) ^ ((v16 + ~(v16 << 13)) >> 8));
  v18 = (v17 ^ (v17 >> 15)) + ~((v17 ^ (v17 >> 15)) << 27);
  v19 = v15 & ((v18 >> 31) ^ v18);
  v20 = *(v14 + 16 * v19);
  if (v20 == v13)
  {
LABEL_10:
    v22 = self->_session.m_impl.m_ptr;
    if (!v22)
    {
      return;
    }

    v23 = *(v22 + 1);
    if (!v23)
    {
      return;
    }

    v24 = *(v14 + 16 * v19 + 8);
    ++*(v23 + 16);
    v25 = *(v23 + 32);
    ++*(v25 + 184);
    v31 = v24;
    v26 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((v25 + 216), &v31);
    if (v26)
    {
      v27 = v26 + 4;
      ++v26[4];
      v28 = *(v25 + 184);
      if (v28)
      {
        *(v25 + 184) = v28 - 1;
        WebKit::Download::didReceiveData(v26, a5, a6, a7);
        WTF::RefCounted<WebKit::Download>::deref(v27);
LABEL_15:
        v29 = *(v23 + 16);
        if (v29)
        {
          *(v23 + 16) = v29 - 1;
          return;
        }

        __break(0xC471u);
LABEL_24:
        JUMPOUT(0x19D9395A0);
      }
    }

    else
    {
      v30 = *(v25 + 184);
      if (v30)
      {
        *(v25 + 184) = v30 - 1;
        goto LABEL_15;
      }
    }

    __break(0xC471u);
    JUMPOUT(0x19D9395E0);
  }

  v21 = 1;
  while (v20)
  {
    v19 = (v19 + v21) & v15;
    v20 = *(v14 + 16 * v19);
    ++v21;
    if (v20 == v13)
    {
      goto LABEL_10;
    }
  }
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didBecomeDownloadTask:(id)a5
{
  if (!self)
  {
    return;
  }

  [(WKNetworkSessionDelegate *)self existingTask:a4];
  v7 = v44;
  if (!v44)
  {
    return;
  }

  v8 = *(v44 + 2);
  if (!v8 || (v9 = *(v8 + 8)) == 0)
  {
    v44 = 0;
LABEL_33:
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref(v7 + 1);
    return;
  }

  ++*(v9 + 16);
  v10 = (v7 + 8);
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
      goto LABEL_10;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
  v7 = v44;
LABEL_10:
  v13 = *(v7 + 5);
  if (!v13)
  {
    __break(1u);
    goto LABEL_37;
  }

  v43 = *(v7 + 5);
  v14 = *(v9 + 32);
  v16 = *(v14 + 184);
  v15 = (v14 + 184);
  *v15 = v16 + 1;
  WebKit::NetworkDataTaskCocoa::suggestedFilename(v7, v40);
  v18 = WebKit::Download::operator new(0x1C8, v17);
  v42 = WebKit::Download::Download(v18, v15, v13, a5, v9);
  v20 = v40[0];
  v40[0] = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v19);
  }

  v21 = v44;
  v22 = v42;
  v23 = *(v44 + 75);
  *(v44 + 75) = 0;
  v24 = *(v22 + 8);
  *(v22 + 8) = v23;
  if (v24)
  {
    WTF::RefCounted<WebKit::SandboxExtension>::deref(v24);
    v22 = v42;
    v21 = v44;
  }

  WebKit::Download::didCreateDestination(v22, (v21 + 120));
  WebKit::DownloadManager::dataTaskBecameDownloadTask(v15, v43, &v42);
  m_ptr = self->_sessionWrapper.m_impl.m_ptr;
  if (!m_ptr || (v26 = *(m_ptr + 1)) == 0)
  {
LABEL_37:
    __break(0xC471u);
    JUMPOUT(0x19D9398F8);
  }

  v27 = [a5 taskIdentifier];
  v28 = *(v26 + 40);
  if (v28)
  {
    if (v27 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19D939978);
    }

    if (!v27 || (v29 = *(v28 - 8), v30 = (v27 + ~(v27 << 32)) ^ ((v27 + ~(v27 << 32)) >> 22), v31 = 9 * ((v30 + ~(v30 << 13)) ^ ((v30 + ~(v30 << 13)) >> 8)), v32 = (v31 ^ (v31 >> 15)) + ~((v31 ^ (v31 >> 15)) << 27), v33 = v29 & ((v32 >> 31) ^ v32), v34 = *(v28 + 16 * v33), v34 == v27))
    {
LABEL_42:
      __break(0xC471u);
      JUMPOUT(0x19D939820);
    }

    v35 = 1;
    while (v34)
    {
      v33 = (v33 + v35) & v29;
      v34 = *(v28 + 16 * v33);
      ++v35;
      if (v34 == v27)
      {
        goto LABEL_42;
      }
    }
  }

  v36 = self->_sessionWrapper.m_impl.m_ptr;
  if (!v36 || (v37 = *(v36 + 1)) == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19D939918);
  }

  v41 = [a5 taskIdentifier];
  WTF::HashMap<unsigned long long,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>&>((v37 + 40), &v41, &v43, v40);
  v38 = v42;
  v42 = 0;
  if (v38)
  {
    WTF::RefCounted<WebKit::Download>::deref(v38 + 4);
  }

  if (!*v15)
  {
    __break(0xC471u);
    JUMPOUT(0x19D939938);
  }

  --*v15;
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref(v10);
  v39 = *(v9 + 16);
  if (!v39)
  {
    __break(0xC471u);
    JUMPOUT(0x19D939958);
  }

  *(v9 + 16) = v39 - 1;
  v7 = v44;
  v44 = 0;
  if (v7)
  {
    goto LABEL_33;
  }
}

- (RefPtr<WebKit::WebSocketTask,)existingWebSocketTask:(id)a3
{
  v4 = v3;
  m_ptr = self->_sessionWrapper.m_impl.m_ptr;
  if (m_ptr && (v6 = *(m_ptr + 1)) != 0 && a3 && (self = WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<unsigned long long>>,unsigned long long>(&v9, (v6 + 48), [a3 taskIdentifier]), (v7 = v10) != 0))
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v10, v9, v4);
    return WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v7, v8);
  }

  else
  {
    *v4 = 0;
  }

  return self;
}

- (void)URLSession:(id)a3 webSocketTask:(id)a4 didOpenWithProtocol:(id)a5
{
  if (self)
  {
    [(WKNetworkSessionDelegate *)self existingWebSocketTask:a4];
    v6 = v11;
    if (v11)
    {
      MEMORY[0x19EB02040](&v10, a5);
      WebKit::WebSocketTask::didConnect(v6, &v10);
      v8 = v10;
      v10 = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v7);
      }

      v9 = v11;
      v11 = 0;
      if (v9)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebSocketTask,(WTF::DestructionThread)0>::deref(v9 + 5, v7);
      }
    }
  }
}

- (void)URLSession:(id)a3 webSocketTask:(id)a4 didCloseWithCode:(int64_t)a5 reason:(id)a6
{
  if (self)
  {
    v7 = a5;
    [(WKNetworkSessionDelegate *)self existingWebSocketTask:a4];
    if (v14)
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:a6 encoding:4];
      v9 = v14;
      MEMORY[0x19EB02040](&v13, v8);
      WebKit::WebSocketTask::didClose(v9, v7, &v13);
      v11 = v13;
      v13 = 0;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v10);
        if (!v8)
        {
LABEL_7:
          v12 = v14;
          v14 = 0;
          if (v12)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebSocketTask,(WTF::DestructionThread)0>::deref((v12 + 40), v10);
          }

          return;
        }
      }

      else if (!v8)
      {
        goto LABEL_7;
      }

      goto LABEL_7;
    }
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (void)URLSession:task:didReceiveChallenge:completionHandler:
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (!WeakRetained || (v8 = *(WeakRetained + 2)) == 0 || !*(v8 + 8))
  {
    (*(*(a1 + 48) + 16))();
    goto LABEL_34;
  }

  v9 = *(a1 + 64);
  *(a1 + 64) = 0;
  v10 = *(a1 + 40);
  if (!v10)
  {
    v11 = 0;
    goto LABEL_28;
  }

  v11 = *(v10 + 8);
  if (!v11)
  {
LABEL_28:
    LOBYTE(a3) = 1;
LABEL_29:
    (*(*(a1 + 48) + 16))();
    if (a3)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  ++*(v11 + 16);
  if (!a3)
  {
    goto LABEL_29;
  }

  v12 = *(WeakRetained + 2);
  if (!v12 || (v13 = *(v12 + 8)) == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19D943C7CLL);
  }

  ++*(v13 + 8);
  v14 = *(a1 + 72);
  v15 = *(a1 + 56);
  v16 = WTF::fastMalloc(0x10);
  v17 = *(a1 + 48);
  *(a1 + 48) = 0;
  *v16 = &unk_1F10ED478;
  v16[1] = v17;
  MEMORY[0x19EB0B400](v31, a2);
  if (v9)
  {
    while (1)
    {
      v18 = *(v9 + 8);
      if ((v18 & 1) == 0)
      {
        break;
      }

      v19 = *(v9 + 8);
      atomic_compare_exchange_strong_explicit((v9 + 8), &v19, v18 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v19 == v18)
      {
        goto LABEL_15;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v9 + 8));
  }

LABEL_15:
  v30 = v9;
  v20 = [objc_msgSend(a2 "protectionSpace")];
  v21 = v20;
  if (v20)
  {
    CFRetain(v20);
  }

  v22 = WTF::fastMalloc(0x18);
  *v22 = &unk_1F10ED450;
  v22[1] = v16;
  v22[2] = v21;
  v29 = v22;
  WebKit::NetworkSessionCocoa::continueDidReceiveChallenge(v11, v13, v31, v14, v15, &v30, &v29);
  v24 = v29;
  v29 = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  if (v9)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v9 + 8));
  }

  v25 = v33;
  v33 = 0;
  if (v25)
  {
  }

  v26 = v32;
  v32 = 0;
  if (v26)
  {
  }

  WebCore::AuthenticationChallengeBase::~AuthenticationChallengeBase(v31, v23);
  v27 = *(v13 + 8);
  if (!v27)
  {
LABEL_39:
    __break(0xC471u);
    JUMPOUT(0x19D943C5CLL);
  }

  *(v13 + 8) = v27 - 1;
LABEL_30:
  v28 = *(v11 + 16);
  if (!v28)
  {
    goto LABEL_39;
  }

  *(v11 + 16) = v28 - 1;
LABEL_32:
  if (v9)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v9 + 8));
  }

LABEL_34:
  if (v7)
  {
  }
}

- (uint64_t)URLSession:(uint64_t)a1 task:willPerformHTTPRedirection:newRequest:completionHandler:
{
  *a1 = &unk_1F10ED7D8;
  _Block_release(*(a1 + 8));
  return a1;
}

- (uint64_t)URLSession:(const void *)a1 task:willPerformHTTPRedirection:newRequest:completionHandler:
{
  *a1 = &unk_1F10ED7D8;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

- (void)URLSession:(uint64_t)a1 task:willPerformHTTPRedirection:newRequest:completionHandler:
{
  v3 = WebCore::ResourceRequest::nsURLRequest();
  if (v3)
  {
    v2 = v3;
  }

  (*(*(a1 + 8) + 16))();
  if (v3)
  {
  }
}

- (uint64_t)URLSession:(uint64_t)a1 task:_schemeUpgraded:completionHandler:
{
  *a1 = &unk_1F10ED800;
  _Block_release(*(a1 + 8));
  return a1;
}

- (uint64_t)URLSession:(const void *)a1 task:_schemeUpgraded:completionHandler:
{
  *a1 = &unk_1F10ED800;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

- (void)URLSession:(uint64_t)a1 task:_schemeUpgraded:completionHandler:
{
  v2 = WebCore::ResourceRequest::nsURLRequest();
  v5 = v2;
  if (v2)
  {
    v3 = v2;
  }

  updateIgnoreStrictTransportSecuritySetting(&v5, *(a1 + 24));
  v4 = v5;
  (*(*(a1 + 8) + 16))();
  if (v4)
  {
  }
}

- (uint64_t)URLSession:(uint64_t)a1 task:didReceiveChallenge:completionHandler:
{
  *a1 = &unk_1F10ED828;
  _Block_release(*(a1 + 8));
  return a1;
}

- (uint64_t)URLSession:(const void *)a1 task:didReceiveChallenge:completionHandler:
{
  *a1 = &unk_1F10ED828;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

- (void)URLSession:(WebCore::Credential *)this task:didReceiveChallenge:completionHandler:
{
  v5 = WebCore::Credential::nsCredential(this);
  if (v5)
  {
    v4 = v5;
  }

  (*(*(a1 + 8) + 16))();
  if (v5)
  {
  }
}

- (uint64_t)URLSession:(uint64_t)a1 dataTask:didReceiveResponse:completionHandler:
{
  *a1 = &unk_1F10ED850;
  _Block_release(*(a1 + 8));
  return a1;
}

- (uint64_t)URLSession:(const void *)a1 dataTask:didReceiveResponse:completionHandler:
{
  *a1 = &unk_1F10ED850;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

@end