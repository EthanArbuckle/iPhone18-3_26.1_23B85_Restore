@interface WKDigitalCredentialsPicker
- (WKDigitalCredentialsPicker)initWithView:(id)view page:(void *)page;
- (WKDigitalCredentialsPickerDelegate)delegate;
- (id).cxx_construct;
- (id)presentationAnchor;
- (uint64_t)fetchRawRequestsWithCompletionHandler:(const void *)handler;
- (uint64_t)fetchRawRequestsWithCompletionHandler:(uint64_t)handler;
- (void)completeWith:(void *)with;
- (void)dismiss;
- (void)dismissWithCompletionHandler:(void *)handler;
- (void)fetchRawRequestsWithCompletionHandler:(id)handler;
- (void)fetchRawRequestsWithCompletionHandler:(uint64_t)handler;
- (void)handleNSError:(id)error;
- (void)handlePresentmentCompletionWithResponse:(id)response error:(id)error;
- (void)performRequest:;
- (void)performRequest:(const void *)request;
- (void)presentWithRequestData:(const void *)data completionHandler:(void *)handler;
- (void)setupPresentmentController;
@end

@implementation WKDigitalCredentialsPicker

- (WKDigitalCredentialsPicker)initWithView:(id)view page:(void *)page
{
  v12.receiver = self;
  v12.super_class = WKDigitalCredentialsPicker;
  v6 = [(WKDigitalCredentialsPicker *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_webView.m_weakReference, view);
    if (page)
    {
      WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(page + 6, page + 16);
      v9 = *(page + 3);
      if (v9)
      {
        atomic_fetch_add(v9, 1u);
      }
    }

    else
    {
      v9 = 0;
    }

    m_ptr = v7->_page.m_impl.m_ptr;
    v7->_page.m_impl.m_ptr = v9;
    if (m_ptr && atomic_fetch_add(m_ptr, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, m_ptr);
      WTF::fastFree(m_ptr, v8);
    }
  }

  return v7;
}

- (WKDigitalCredentialsPickerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate.m_weakReference);
  v3 = WeakRetained;
  if (WeakRetained)
  {
  }

  return v3;
}

- (id)presentationAnchor
{
  Weak = objc_loadWeak(&self->_webView.m_weakReference);

  return [Weak window];
}

- (void)fetchRawRequestsWithCompletionHandler:(id)handler
{
  m_ptr = self->_page.m_impl.m_ptr;
  if (m_ptr && (v4 = *(m_ptr + 1)) != 0)
  {
    v5 = _Block_copy(handler);
    v6 = WTF::fastMalloc(0x10);
    *v6 = &unk_1F11079A0;
    v6[1] = v5;
    v8 = v6;
    WebKit::WebPageProxy::sendWithAsyncReply<Messages::DigitalCredentialsCoordinator::ProvideRawDigitalCredentialRequests,WTF::CompletionHandler<void ()(WTF::Vector<mpark::variant<WebCore::MobileDocumentRequest,WebCore::OpenID4VPRequest>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)>>(v4 - 16, &v9, &v8);
    v7 = v8;
    v8 = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    _Block_release(0);
  }

  else
  {
    __break(0xC471u);
  }
}

- (void)presentWithRequestData:(const void *)data completionHandler:(void *)handler
{
  v6 = *handler;
  *handler = 0;
  ptr = self->_completionHandler.m_function.m_callableWrapper.__ptr_;
  self->_completionHandler.m_function.m_callableWrapper.__ptr_ = v6;
  if (ptr)
  {
    (*(*ptr + 8))(ptr, a2);
  }

  [(WKDigitalCredentialsPicker *)self setupPresentmentController];
  v8 = [[WKDigitalCredentialsPickerDelegate alloc] initWithDigitalCredentialsPickerDelegate:self];
  m_ptr = self->_digitalCredentialsPickerDelegate.m_ptr;
  self->_digitalCredentialsPickerDelegate.m_ptr = v8;
  if (m_ptr)
  {
  }

  [(WKDigitalCredentialsPicker *)self performRequest:data];
  [(WKDigitalCredentialsPicker *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate = [(WKDigitalCredentialsPicker *)self delegate];

    [(WKDigitalCredentialsPickerDelegate *)delegate digitalCredentialsPickerDidPresent:self];
  }
}

- (void)dismissWithCompletionHandler:(void *)handler
{
  [(WKDigitalCredentialsPicker *)self dismiss];

  WTF::CompletionHandler<void ()(BOOL)>::operator()(handler, 1);
}

- (void)performRequest:(const void *)request
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  requestCopy = request;
  v5 = *(request + 3);
  v74 = v4;
  if (!v5)
  {
LABEL_85:
    WebCore::SecurityOriginData::toURL(&to, (requestCopy + 2));
    WTF::URL::createCFURL(&v84, &to);
    v51 = to;
    to = 0;
    if (v51 && atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v51 = WTF::StringImpl::destroy(v51, v50);
    }

    v52 = objc_alloc(WebKit::getWKIdentityDocumentPresentmentRequestClass(v51));
    v53 = [v52 initWithOrigin:v84 mobileDocumentRequests:v4];
    if ([v4 count])
    {
      m_ptr = self->_presentmentController.m_ptr;
      location = 0;
      objc_initWeak(&location, self);
      to = 0;
      objc_moveWeak(&to, &location);
      v55 = malloc_type_malloc(0x28uLL, 0x10E0040799C3B1DuLL);
      *v55 = MEMORY[0x1E69E9818];
      *(v55 + 1) = 50331650;
      *(v55 + 2) = WTF::BlockPtr<void ()(WKIdentityDocumentPresentmentResponse *,NSError *)>::fromCallable<[WKDigitalCredentialsPicker performRequest:]::$_0>([WKDigitalCredentialsPicker performRequest:]::$_0)::{lambda(void *,WKIdentityDocumentPresentmentResponse *,NSError *)#1}::__invoke;
      *(v55 + 3) = &WTF::BlockPtr<void ()(WKIdentityDocumentPresentmentResponse *,NSError *)>::fromCallable<[WKDigitalCredentialsPicker performRequest:]::$_0>([WKDigitalCredentialsPicker performRequest:]::$_0)::descriptor;
      *(v55 + 4) = 0;
      objc_moveWeak(v55 + 4, &to);
      objc_destroyWeak(&to);
      [(WKIdentityDocumentPresentmentController *)m_ptr performRequest:v53 completionHandler:v55];
      _Block_release(v55);
      objc_destroyWeak(&location);
    }

    else
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v56 = to;
      if (to)
      {
        atomic_fetch_add_explicit(to, 2u, memory_order_relaxed);
      }

      LOBYTE(to) = 33;
      v80 = v56;
      LOBYTE(v81) = 1;
      [(WKDigitalCredentialsPicker *)self completeWith:&to];
      std::experimental::fundamentals_v3::expected<WebCore::DigitalCredentialsResponseData,WebCore::ExceptionData>::~expected(&to, v57);
      if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v56, v58);
      }
    }

    if (v53)
    {
    }

    v59 = v84;
    v84 = 0;
    if (v59)
    {
    }

    if (v4)
    {
    }

    return;
  }

  v6 = *request;
  v64 = *requestCopy + 40 * v5;
  while (*(v6 + 32))
  {
LABEL_4:
    v6 += 40;
    if (v6 == v64)
    {
      goto LABEL_85;
    }
  }

  WTF::Vector<WebCore::CertificateInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&to, v6);
  v60 = v6;
  WTF::Vector<WebCore::ISO18013PresentmentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v81, v6 + 16);
  v65 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v82)
  {
    v7 = v81;
    v62 = &v81[24 * v82];
    while (1)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v9 = v8;
      v66 = v7;
      v10 = *(v7 + 5);
      v69 = v8;
      if (v10)
      {
        break;
      }

LABEL_55:
      v35 = [objc_alloc(WebKit::getWKIdentityDocumentPresentmentMobileDocumentPresentmentRequestClass(v8)) initWithDocumentSets:v9 isMandatory:*v66];
      [v65 addObject:v35];
      if (v35)
      {
      }

      if (v9)
      {
      }

      v7 = v66 + 24;
      if (v66 + 24 == v62)
      {
        goto LABEL_60;
      }
    }

    v67 = *(v7 + 1) + 16 * v10;
    v68 = *(v7 + 1);
    while (1)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v12 = *(v68 + 3);
      v71 = v11;
      if (v12)
      {
        break;
      }

LABEL_52:
      v8 = [(WebKit *)v9 addObject:v11];
      if (v11)
      {
      }

      v68 += 2;
      if (v68 == v67)
      {
        goto LABEL_55;
      }
    }

    v72 = *v68;
    v70 = *v68 + 24 * v12;
    while (1)
    {
      v77 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v13 = *(v72 + 20);
      if (v13)
      {
        break;
      }

LABEL_41:
      v29 = *v72;
      if (*v72)
      {
        atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
        v30 = MEMORY[0x19EB00B70](&v84, v29);
        if (atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v30 = WTF::StringImpl::destroy(v29, v31);
        }
      }

      else
      {
        v84 = &stru_1F1147748;
        v30 = &stru_1F1147748;
      }

      v32 = objc_alloc(WebKit::getWKIdentityDocumentPresentmentMobileDocumentIndividualDocumentRequestClass(v30));
      v33 = [v32 initWithDocumentType:v84 namespaces:v77];
      v11 = v71;
      v9 = v69;
      [v71 addObject:v33];
      if (v33)
      {
      }

      v34 = v84;
      v84 = 0;
      if (v34)
      {
      }

      if (v77)
      {
      }

      v72 += 24;
      if (v72 == v70)
      {
        goto LABEL_52;
      }
    }

    v14 = *(v72 + 8);
    v75 = v14 + 24 * v13;
    while (1)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v16 = *v14;
      if (*v14)
      {
        atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
      }

      WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v84, (v14 + 8));
      if (v85)
      {
        v17 = v84;
        v18 = (v84 + 16 * v85);
        do
        {
          isa = v17->isa;
          if (v17->isa)
          {
            atomic_fetch_add_explicit(isa, 2u, memory_order_relaxed);
            v20 = MEMORY[0x19EB00B70](&location, isa);
            if (atomic_fetch_add_explicit(isa, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              v20 = WTF::StringImpl::destroy(isa, v21);
            }
          }

          else
          {
            location = &stru_1F1147748;
            v20 = &stru_1F1147748;
          }

          v22 = [objc_alloc(WebKit::getWKIdentityDocumentPresentmentMobileDocumentElementInfoClass(v20)) initWithIsRetaining:LOBYTE(v17->info)];
          [v15 setObject:v22 forKey:location];
          if (v22)
          {
          }

          v23 = location;
          location = 0;
          if (v23)
          {
          }

          v17 = (v17 + 16);
        }

        while (v17 != v18);
      }

      if (v16)
      {
        atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
        v4 = v74;
        MEMORY[0x19EB00B70](&location, v16);
        if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v16, v24);
        }
      }

      else
      {
        location = &stru_1F1147748;
        v4 = v74;
        v25 = &stru_1F1147748;
      }

      [v77 setObject:v15 forKey:location];
      v27 = location;
      location = 0;
      if (v27)
      {
      }

      WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v84, v26);
      if (v16)
      {
        if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          break;
        }
      }

      if (v15)
      {
        goto LABEL_36;
      }

LABEL_37:
      v14 += 24;
      if (v14 == v75)
      {
        goto LABEL_41;
      }
    }

    WTF::StringImpl::destroy(v16, v28);
    if (!v15)
    {
      goto LABEL_37;
    }

LABEL_36:

    goto LABEL_37;
  }

LABEL_60:
  v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v76 = v36;
  if (!HIDWORD(v80))
  {
LABEL_76:
    v45 = [objc_alloc(WebKit::getWKIdentityDocumentPresentmentMobileDocumentRequestClass(v36)) initWithPresentmentRequests:v65 authenticationCertificates:v76];
    v46 = v45;
    if (v45)
    {
      v47 = v45;
    }

    [v4 addObject:v46];
    if (v46)
    {
    }

    if (v76)
    {
    }

    if (v65)
    {
    }

    WTF::Vector<WebCore::ISO18013PresentmentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v81, v48);
    WTF::Vector<WebCore::CertificateInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&to, v49);
    v6 = v60;
    goto LABEL_4;
  }

  v78 = to;
  v73 = (to + 8 * HIDWORD(v80));
  while (1)
  {
    v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v38 = SecTrustCopyCertificateChain(*v78);
    Count = CFArrayGetCount(v38);
    if (Count >= 1)
    {
      break;
    }

LABEL_69:
    v36 = [(WebKit *)v76 addObject:v37];
    if (v38)
    {
      CFRelease(v38);
      if (!v37)
      {
        goto LABEL_72;
      }

LABEL_71:

      goto LABEL_72;
    }

    if (v37)
    {
      goto LABEL_71;
    }

LABEL_72:
    ++v78;
    v4 = v74;
    if (v78 == v73)
    {
      goto LABEL_76;
    }
  }

  v40 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v38, v40);
    v42 = ValueAtIndex;
    if (ValueAtIndex)
    {
      v43 = CFGetTypeID(ValueAtIndex);
      ValueAtIndex = SecCertificateGetTypeID();
      if (v43 != ValueAtIndex)
      {
        break;
      }
    }

    v44 = [objc_alloc(WebKit::getWKIdentityDocumentPresentmentRequestAuthenticationCertificateClass(ValueAtIndex)) initWithCertificate:v42];
    [v37 addObject:v44];
    if (v44)
    {
    }

    if (Count == ++v40)
    {
      goto LABEL_69;
    }
  }

  __break(0xC471u);
}

- (void)setupPresentmentController
{
  v3 = [objc_alloc(WebKit::getWKIdentityDocumentPresentmentControllerClass(self)) init];
  m_ptr = self->_presentmentController.m_ptr;
  self->_presentmentController.m_ptr = v3;
  if (m_ptr)
  {

    v3 = self->_presentmentController.m_ptr;
  }

  [(WKIdentityDocumentPresentmentController *)v3 setDelegate:self];
}

- (void)handlePresentmentCompletionWithResponse:(id)response error:(id)error
{
  if (!(response | error))
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v18 = v41;
    if (v41)
    {
      atomic_fetch_add_explicit(v41, 2u, memory_order_relaxed);
    }

    LOBYTE(v41) = 24;
    v42 = v18;
    v43 = 1;
    [(WKDigitalCredentialsPicker *)self completeWith:&v41];
    goto LABEL_16;
  }

  if (!response)
  {
LABEL_60:
    [(WKDigitalCredentialsPicker *)self handleNSError:error];
    return;
  }

  if (![objc_msgSend(response "responseData")])
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v18 = v41;
    if (v41)
    {
      atomic_fetch_add_explicit(v41, 2u, memory_order_relaxed);
    }

    LOBYTE(v41) = 33;
    v42 = v18;
    v43 = 1;
    [(WKDigitalCredentialsPicker *)self completeWith:&v41];
LABEL_16:
    std::experimental::fundamentals_v3::expected<WebCore::DigitalCredentialsResponseData,WebCore::ExceptionData>::~expected(&v41, v19);
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v20);
    }

    return;
  }

  responseData = [response responseData];
  if (responseData)
  {
    v8 = responseData;
    [responseData bytes];
    [v8 length];
  }

  WTF::base64EncodeToString();
  v9 = v40;
  if (!v40)
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v21 = v41;
    if (v41)
    {
      atomic_fetch_add_explicit(v41, 2u, memory_order_relaxed);
    }

    LOBYTE(v41) = 33;
    v42 = v21;
    v43 = 1;
    [(WKDigitalCredentialsPicker *)self completeWith:&v41];
    std::experimental::fundamentals_v3::expected<WebCore::DigitalCredentialsResponseData,WebCore::ExceptionData>::~expected(&v41, v22);
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v23);
    }

    goto LABEL_56;
  }

  protocolString = [response protocolString];
  v11 = protocolString;
  if (protocolString)
  {
    v12 = protocolString;
  }

  v13 = [v11 isEqualToString:@"org.iso.mdoc"];
  if (!v13)
  {
    if ([v11 isEqualToString:@"openid4vp"])
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v24 = v41;
      if (v41)
      {
        atomic_fetch_add_explicit(v41, 2u, memory_order_relaxed);
      }

      LOBYTE(v41) = 6;
      v42 = v24;
      v43 = 1;
      [(WKDigitalCredentialsPicker *)self completeWith:&v41];
    }

    else
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v24 = v41;
      if (v41)
      {
        atomic_fetch_add_explicit(v41, 2u, memory_order_relaxed);
      }

      LOBYTE(v41) = 33;
      v42 = v24;
      v43 = 1;
      [(WKDigitalCredentialsPicker *)self completeWith:&v41];
    }

    std::experimental::fundamentals_v3::expected<WebCore::DigitalCredentialsResponseData,WebCore::ExceptionData>::~expected(&v41, v25);
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v23);
      if (!v11)
      {
        goto LABEL_56;
      }

      goto LABEL_55;
    }

LABEL_54:
    if (!v11)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  WTF::JSONImpl::Object::create(&v39, v13);
  v14 = v39;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v38 = v41;
  WTF::JSONImpl::Value::create(&v36, &v40, v15);
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>(v14 + 2, &v38, &v36, &v41);
  if (v43 == 1)
  {
    v17 = *(v14 + 9);
    if (v17 == *(v14 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v14 + 24, &v38);
    }

    else
    {
      v26 = *(v14 + 3);
      v27 = v38;
      if (v38)
      {
        atomic_fetch_add_explicit(v38, 2u, memory_order_relaxed);
      }

      v28 = *(v14 + 9);
      *(v26 + 8 * v17) = v27;
      *(v14 + 9) = v28 + 1;
    }
  }

  v29 = v36;
  v36 = 0;
  if (v29)
  {
    if (*v29 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v29;
    }
  }

  v30 = v38;
  v38 = 0;
  if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v30, v16);
  }

  LOBYTE(v36) = 1;
  WTF::JSONImpl::Value::toJSONString(&v37, v39);
  LOBYTE(v41) = v36;
  v31 = v37;
  v37 = 0;
  v42 = v31;
  v43 = 0;
  [(WKDigitalCredentialsPicker *)self completeWith:&v41];
  std::experimental::fundamentals_v3::expected<WebCore::DigitalCredentialsResponseData,WebCore::ExceptionData>::~expected(&v41, v32);
  v33 = v37;
  v37 = 0;
  if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v33, v23);
  }

  v34 = v39;
  v39 = 0;
  if (!v34)
  {
    goto LABEL_54;
  }

  if (*v34 != 1)
  {
    --*v34;
    goto LABEL_54;
  }

  WTF::JSONImpl::Value::operator delete();
  if (v11)
  {
LABEL_55:
  }

LABEL_56:
  v35 = v40;
  v40 = 0;
  if (v35)
  {
    if (atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v35, v23);
    }
  }

  if (v9)
  {
    goto LABEL_60;
  }
}

- (void)handleNSError:(id)error
{
  code = [error code];
  if (code > 2)
  {
    if (code == 3)
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v6 = v36;
      v7 = 16;
      v12 = 1;
      goto LABEL_15;
    }

    if (code == 4)
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v6 = v36;
      v7 = 31;
      goto LABEL_13;
    }

LABEL_8:
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v6 = v36;
    userInfo = [error userInfo];
    v9 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696A278]];
    if (v9 || (v10 = [error userInfo], (v9 = objc_msgSend(v10, "objectForKeyedSubscript:", *MEMORY[0x1E696A578])) != 0))
    {
      v11 = v9;
    }

    v7 = 24;
    goto LABEL_13;
  }

  if (code == 1)
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v6 = v36;
    v7 = 33;
    goto LABEL_13;
  }

  if (code != 2)
  {
    goto LABEL_8;
  }

  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v6 = v36;
  v7 = 8;
LABEL_13:
  v12 = 2;
LABEL_15:
  m_ptr = self->_page.m_impl.m_ptr;
  if (!m_ptr || !*(m_ptr + 1))
  {
LABEL_52:
    if (!v6)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  userInfo2 = [error userInfo];
  v15 = WTF::dynamic_objc_cast<NSString>([userInfo2 objectForKeyedSubscript:*MEMORY[0x1E696A278]]);
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  v18 = v6;
  if ([v16 length])
  {
    if (v6)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    }

    v35 = v6;
    MEMORY[0x19EB02040](&v34, v16);
    WTF::makeString<WTF::String,WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>(&v35, " (", 3, &v34, ")", 2, &v36);
    v18 = v36;
    v36 = 0;
    if (v6)
    {
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v19);
      }

      v20 = v36;
      v36 = 0;
      if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v19);
      }
    }

    v21 = v34;
    v34 = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v19);
    }

    v22 = v35;
    v35 = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v19);
    }
  }

  v23 = self->_page.m_impl.m_ptr;
  if (!v23 || (v24 = *(v23 + 1)) == 0)
  {
    __break(0xC471u);
    goto LABEL_64;
  }

  v25 = *(v24 + 416);
  if (!v25)
  {
    v25 = *(v24 + 408);
  }

  v26 = *(v25 + 288);
  if (v18)
  {
    atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
  }

  v32 = v18;
  v36 = "Digital Credential request failed: ";
  v37 = 36;
  WTF::tryMakeString<WTF::ASCIILiteral,WTF::String>(&v36, &v32, &v33);
  if (!v33)
  {
    __break(0xC471u);
LABEL_64:
    JUMPOUT(0x19DD66194);
  }

  v41 = v26;
  v40[0] = 0;
  v40[1] = 0;
  v36 = &v41;
  LOBYTE(v37) = 1;
  BYTE1(v37) = v12;
  v38 = &v33;
  v39 = v40;
  WebKit::WebPageProxy::send<Messages::WebPage::AddConsoleMessage>(v24 - 16, &v36);
  v28 = v33;
  v33 = 0;
  if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v28, v27);
  }

  v29 = v32;
  v32 = 0;
  if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v29, v27);
    if (!v16)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  if (v16)
  {
LABEL_49:
  }

LABEL_50:
  if (!v18 || atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) != 2)
  {
    goto LABEL_52;
  }

  WTF::StringImpl::destroy(v18, v27);
  if (v6)
  {
LABEL_53:
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

LABEL_54:
  LOBYTE(v36) = v7;
  v37 = v6;
  LOBYTE(v38) = 1;
  [(WKDigitalCredentialsPicker *)self completeWith:&v36];
  std::experimental::fundamentals_v3::expected<WebCore::DigitalCredentialsResponseData,WebCore::ExceptionData>::~expected(&v36, v30);
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v31);
    }
  }
}

- (void)dismiss
{
  [(WKIdentityDocumentPresentmentController *)self->_presentmentController.m_ptr cancelRequest];
  m_ptr = self->_presentmentController.m_ptr;
  self->_presentmentController.m_ptr = 0;
  if (m_ptr)
  {
  }

  [(WKDigitalCredentialsPicker *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate = [(WKDigitalCredentialsPicker *)self delegate];

    [(WKDigitalCredentialsPickerDelegate *)delegate digitalCredentialsPickerDidDismiss:self];
  }
}

- (void)completeWith:(void *)with
{
  ptr = self->_completionHandler.m_function.m_callableWrapper.__ptr_;
  p_completionHandler = &self->_completionHandler;
  if (ptr)
  {
    WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::DigitalCredentialsResponseData,WebCore::ExceptionData> &&)>::operator()(p_completionHandler);
  }

  [(WKDigitalCredentialsPicker *)self dismiss];
}

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

- (void)performRequest:
{
  WeakRetained = objc_loadWeakRetained((self + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    [WeakRetained handlePresentmentCompletionWithResponse:a2 error:a3];
  }
}

- (uint64_t)fetchRawRequestsWithCompletionHandler:(uint64_t)handler
{
  *handler = &unk_1F11079A0;
  _Block_release(*(handler + 8));
  return handler;
}

- (uint64_t)fetchRawRequestsWithCompletionHandler:(const void *)handler
{
  *handler = &unk_1F11079A0;
  _Block_release(handler[1]);

  return WTF::fastFree(handler, v2);
}

- (void)fetchRawRequestsWithCompletionHandler:(uint64_t)handler
{
  v27[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = *(a2 + 12);
  if (v4)
  {
    v5 = 24 * v4;
    v6 = *a2 + 8;
    do
    {
      if (!*(v6 + 8))
      {
        v7 = *(v6 - 8);
        if (v7)
        {
          atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
          MEMORY[0x19EB00B70](&v25, v7);
          if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v7, v8);
          }
        }

        else
        {
          v25 = &stru_1F1147748;
          v9 = &stru_1F1147748;
        }

        v10 = *v6;
        if (*v6)
        {
          atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
          MEMORY[0x19EB00B70](&v24, v10);
          if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v10, v11);
          }
        }

        else
        {
          v24 = &stru_1F1147748;
          v12 = &stru_1F1147748;
        }

        v26[0] = @"deviceRequest";
        v26[1] = @"encryptionInfo";
        v27[0] = v25;
        v27[1] = v24;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
        v14 = v13;
        if (v13)
        {
          v15 = v13;
        }

        v23 = 0;
        v16 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v14 options:0 error:&v23];
        v17 = v16;
        if (v16)
        {
          v18 = v16;
          v19 = [objc_alloc(WebKit::getWKIdentityDocumentPresentmentRawRequestClass(v18)) initWithRequestProtocol:@"org.iso.mdoc" requestData:v17];
          [v3 addObject:v19];
          if (v19)
          {
          }
        }

        if (v14)
        {
        }

        v20 = v24;
        v24 = 0;
        if (v20)
        {
        }

        v21 = v25;
        v25 = 0;
        if (v21)
        {
        }
      }

      v6 += 24;
      v5 -= 24;
    }

    while (v5);
  }

  (*(*(handler + 8) + 16))();
  if (v3)
  {
  }
}

@end