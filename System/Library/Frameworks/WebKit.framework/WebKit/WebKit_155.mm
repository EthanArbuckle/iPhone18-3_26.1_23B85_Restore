uint64_t WTF::Detail::CallableWrapper<WebKit::MockLocalConnection::verifyUser(__SecAccessControl *,LAContext *,WTF::CompletionHandler<void ()(WebKit::LocalConnection::UserVerification)> &&)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F110C2A8;
  v3 = a1[25];
  a1[25] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WebCore::MockWebAuthenticationConfiguration::~MockWebAuthenticationConfiguration((a1 + 1), a2);

  return WTF::fastFree(a1, v4);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::MockLocalConnection::verifyUser(__SecAccessControl *,LAContext *,WTF::CompletionHandler<void ()(WebKit::LocalConnection::UserVerification)> &&)::$_0,void>::call(uint64_t result)
{
  if (*(result + 56))
  {
    return WTF::CompletionHandler<void ()(WebKit::LocalConnection::UserVerification)>::operator()((result + 200));
  }

  __break(1u);
  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::MockNfcService::receiveStartPolling(void)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F110C2D0;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::MockNfcService::receiveStartPolling(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110C2D0;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::MockNfcService::receiveStartPolling(void)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      if (*(v2 + 256))
      {
        if (*(v2 + 224) != 1)
        {
          WebCore::MockWebAuthenticationConfiguration::MockWebAuthenticationConfiguration(v7, v2 + 96);
          WebCore::MockWebAuthenticationConfiguration::MockWebAuthenticationConfiguration(v8, v7);
          v3 = malloc_type_malloc(0xE0uLL, 0x10E204030A1B97EuLL);
          *v3 = MEMORY[0x1E69E9818];
          v3[1] = 50331650;
          v3[2] = WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::MockNfcService::detectTags(void)::$_0>(WebKit::MockNfcService::detectTags(void)::$_0)::{lambda(void *)#1}::__invoke;
          v3[3] = &WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::MockNfcService::detectTags(void)::$_0>(WebKit::MockNfcService::detectTags(void)::$_0)::descriptor;
          WebCore::MockWebAuthenticationConfiguration::MockWebAuthenticationConfiguration(v3 + 32, v8);
          WebCore::MockWebAuthenticationConfiguration::~MockWebAuthenticationConfiguration(v8, v4);
          WebCore::MockWebAuthenticationConfiguration::~MockWebAuthenticationConfiguration(v7, v5);
          global_queue = dispatch_get_global_queue(0, 0);
          dispatch_async(global_queue, v3);
          _Block_release(v3);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::fetchAllDataStoreIdentifiers(WTF::CompletionHandler<void ()(WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110C2F8;
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
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::fetchAllDataStoreIdentifiers(WTF::CompletionHandler<void ()(WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(uint64_t a1, void *a2)
{
  *a1 = &unk_1F110C320;
  v3 = *(a1 + 16);
  if (v3)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    WTF::fastFree(v3, a2);
  }

  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::removeDataStoreWithIdentifierImpl(WTF::UUID const&,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110C348;
  v3 = a1[6];
  a1[6] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::removeDataStoreWithIdentifierImpl(WTF::UUID const&,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F110C348;
  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::removeDataStoreWithIdentifierImpl(WTF::UUID const&,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0,void>::call(uint64_t a1)
{
  v37[16] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695AC50]);
  WTF::UUID::toString(v36, (a1 + 32));
  v3 = v36[0];
  if (v36[0])
  {
    atomic_fetch_add_explicit(v36[0], 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](v37, v3);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  else
  {
    v37[0] = &stru_1F1147748;
    v5 = &stru_1F1147748;
  }

  v7 = [v2 _initWithIdentifier:v37[0] private:0];
  v8 = v37[0];
  v37[0] = 0;
  if (v8)
  {
  }

  v9 = v36[0];
  v36[0] = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v6);
  }

  v10 = [v7 allCredentials];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v14 = [v11 countByEnumeratingWithState:&v32 objects:v37 count:{16, a1}];
  if (v14)
  {
    v15 = *v33;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v32 + 1) + 8 * i);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v18 = [objc_msgSend(v11 objectForKeyedSubscript:{v17), "allValues"}];
        v19 = [v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v19)
        {
          v20 = *v29;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v29 != v20)
              {
                objc_enumerationMutation(v18);
              }

              [v7 removeCredential:*(*(&v28 + 1) + 8 * j) forProtectionSpace:v17];
            }

            v19 = [v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
          }

          while (v19);
        }
      }

      v14 = [v11 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v14);
  }

  v22 = WTF::FileSystemImpl::deleteNonEmptyDirectory((v26 + 48), v13);
  v23 = v22;
  WTF::RunLoop::mainSingleton(v22);
  v24 = *(v26 + 16);
  *(v26 + 16) = 0;
  v25 = WTF::fastMalloc(0x18);
  *v25 = &unk_1F110C370;
  *(v25 + 8) = v24;
  *(v25 + 16) = v23;
  v27 = v25;
  WTF::RunLoop::dispatch();
  if (!v27)
  {
    if (!v11)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  (*(*v27 + 8))(v27);
  if (v11)
  {
LABEL_28:
  }

LABEL_29:
  if (v7)
  {
  }
}

void sub_19DE2ED54(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, WTF::StringImpl *a27)
{
  if (a27)
  {
    if (atomic_fetch_add_explicit(a27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a27, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::removeDataStoreWithIdentifierImpl(WTF::UUID const&,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F110C370;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::removeDataStoreWithIdentifierImpl(WTF::UUID const&,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110C370;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::removeDataStoreWithIdentifierImpl(WTF::UUID const&,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v4 = 0;
    WTF::CompletionHandler<void ()(WTF::String const&)>::operator()((a1 + 8), &v4);
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::CompletionHandler<void ()(WTF::String const&)>::operator()((a1 + 8), &v4);
  }

  result = v4;
  v4 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v2);
    }
  }

  return result;
}

void sub_19DE2EFD0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::removeDataStoreWithIdentifier(WTF::UUID const&,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0,void,WTF::String const&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F110C398;
  v2 = a1[4];
  a1[4] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::removeDataStoreWithIdentifier(WTF::UUID const&,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0,void,WTF::String const&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110C398;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::EnsureSessionWithDataStoreIdentifierRemoved,WebKit::WebsiteDataStore::removeDataStoreWithIdentifier(WTF::UUID const&,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_1>(WebKit::WebsiteDataStore::removeDataStoreWithIdentifier(WTF::UUID const&,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_1 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebsiteDataStore::removeDataStoreWithIdentifier(WTF::UUID const&,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_1,IPC::Decoder)#1},void,WebKit::WebsiteDataStore::removeDataStoreWithIdentifier(WTF::UUID const&,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_1,IPC::Decoder>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F110C3C0;
  v2 = a1[6];
  a1[6] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::EnsureSessionWithDataStoreIdentifierRemoved,WebKit::WebsiteDataStore::removeDataStoreWithIdentifier(WTF::UUID const&,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_1>(WebKit::WebsiteDataStore::removeDataStoreWithIdentifier(WTF::UUID const&,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_1 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebsiteDataStore::removeDataStoreWithIdentifier(WTF::UUID const&,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_1,IPC::Decoder)#1},void,WebKit::WebsiteDataStore::removeDataStoreWithIdentifier(WTF::UUID const&,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_1,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110C3C0;
  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::EnsureSessionWithDataStoreIdentifierRemoved,WebKit::WebsiteDataStore::removeDataStoreWithIdentifier(WTF::UUID const&,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_1>(WebKit::WebsiteDataStore::removeDataStoreWithIdentifier(WTF::UUID const&,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_1 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebsiteDataStore::removeDataStoreWithIdentifier(WTF::UUID const&,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_1,IPC::Decoder)#1},void,WebKit::WebsiteDataStore::removeDataStoreWithIdentifier(WTF::UUID const&,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_1,IPC::Decoder>::call(uint64_t a1)
{
  v2 = WTF::fastMalloc(0x30);
  *v2 = &unk_1F110C398;
  *(v2 + 16) = *(a1 + 32);
  v3 = *(a1 + 48);
  *(a1 + 48) = 0;
  *(v2 + 32) = v3;
  v5 = v2;
  WebKit::WebsiteDataStore::removeDataStoreWithIdentifierImpl((a1 + 16), &v5);
  result = v5;
  if (v5)
  {
    return (*(*v5 + 8))(v5);
  }

  return result;
}

void sub_19DE2F2DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::initializeAppBoundDomains(WebKit::WebsiteDataStore::ForceReinitialization)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F110C410;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::ensureAppBoundDomains(WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F110C460;
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
    CFRelease(*(v3 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::ensureAppBoundDomains(WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110C460;
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
    CFRelease(*(v4 + 8));
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::ensureAppBoundDomains(WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)> &&)::$_0,void>::call(WTF::RunLoop *a1)
{
  v2 = *(a1 + 1);
  WTF::RunLoop::mainSingleton(a1);
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  v5 = WTF::fastMalloc(0x20);
  *v5 = &unk_1F110C488;
  v5[1] = v2;
  v5[2] = v3;
  v5[3] = v4;
  v7 = v5;
  WTF::RunLoop::dispatch();
  result = v7;
  if (v7)
  {
    return (*(*v7 + 8))(v7);
  }

  return result;
}

void sub_19DE2F548(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::ensureAppBoundDomains(WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F110C488;
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
    CFRelease(*(v3 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::ensureAppBoundDomains(WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110C488;
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
    CFRelease(*(v4 + 8));
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::ensureAppBoundDomains(WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::call(uint64_t *a1)
{
  if (*(*(a1[1] + 224) + 488) == 1)
  {
    WebKit::WebsiteDataStore::addTestDomains(a1);
  }

  {
    WebKit::appBoundDomains(void)::appBoundDomains = 0;
  }

  if ((byte_1ED64278E & 1) == 0)
  {
    qword_1ED6427E8 = 0;
    byte_1ED64278E = 1;
  }

  return WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)>::operator()(a1 + 3);
}

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::beginAppBoundDomainCheck(WTF::String const&,WTF::String const&,WebKit::WebFramePolicyListenerProxy &)::$_0,void,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F110C4B0;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    CFRelease(*(v2 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::beginAppBoundDomainCheck(WTF::String const&,WTF::String const&,WebKit::WebFramePolicyListenerProxy &)::$_0,void,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110C4B0;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::beginAppBoundDomainCheck(WTF::String const&,WTF::String const&,WebKit::WebFramePolicyListenerProxy &)::$_0,void,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&>::call(void *a1, uint64_t *a2, const WTF::StringImpl *a3)
{
  v4 = atomic_load(WebKit::keyExists);
  if ((v4 & 1) != 0 || *a2 && *(*a2 - 12))
  {
    v6 = a1[2];
    v5 = a1[3];
    v7 = a1[1];
    v8 = *v6;
    if (*v6 && (v9 = *a3) != 0)
    {
      if (v8 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x19DE2FA58);
      }

      if (!v8)
      {
        __break(0xC471u);
        goto LABEL_42;
      }

      v25 = *(v9 - 8);
      v26 = *(v8 + 4);
      if (v26 < 0x100)
      {
        v27 = WTF::StringImpl::hashSlowCase(v8);
      }

      else
      {
        v27 = v26 >> 8;
      }

      for (i = 0; ; v27 = i + v29)
      {
        v29 = v27 & v25;
        v30 = *(v9 + 8 * (v27 & v25));
        if (v30 != -1)
        {
          if (!v30)
          {
            goto LABEL_6;
          }

          if (WTF::equal(v30, *v6, a3))
          {
            break;
          }
        }

        ++i;
      }

      v10 = 1;
    }

    else
    {
LABEL_6:
      v10 = 0;
    }

    WebCore::RegistrableDomain::uncheckedCreateFromHost(v7, &v31);
    if (!*a2)
    {
      v22 = 0;
      goto LABEL_17;
    }

    if (!WTF::equal(v31, 0, v12))
    {
      v13 = v31;
      if (v31 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x19DE2FA38);
      }

      v14 = *a2;
      if (!*a2)
      {
        v22 = 0;
        goto LABEL_18;
      }

      v15 = *(v14 - 8);
      v16 = WTF::ASCIICaseInsensitiveHash::hash(v31, v11);
      for (j = 0; ; v16 = j + v19)
      {
        v19 = v16 & v15;
        v20 = WTF::equal(*(v14 + 8 * v19), 0, v17);
        if (v20)
        {
          break;
        }

        v21 = *(v14 + 8 * v19);
        if (v21 != -1 && (WTF::equalIgnoringASCIICase(v21, v31, v17) & 1) != 0)
        {
          break;
        }

        ++j;
      }

      v22 = v20 ^ 1;
LABEL_17:
      v13 = v31;
LABEL_18:
      v31 = 0;
      if (v13)
      {
        if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v13, v11);
        }
      }

      return WebKit::WebFramePolicyListenerProxy::didReceiveAppBoundDomainResult(v5, (v10 | v22) & 1 | 0x100u);
    }

    __break(0xC471u);
LABEL_42:
    JUMPOUT(0x19DE2FA18);
  }

  v24 = a1[3];

  return WebKit::WebFramePolicyListenerProxy::didReceiveAppBoundDomainResult(v24, 0);
}

void sub_19DE2FA7C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::getAppBoundDomains(WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)> &&)::$_0,void,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::HashSet<WTF::String,WTF::DefaultHash<WebKit::WebsiteDataStore::getAppBoundDomains(WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)> &&)::$_0>,WTF::HashTraits<WebKit::WebsiteDataStore::getAppBoundDomains(WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)> &&)::$_0>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F110C4D8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::getAppBoundDomains(WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)> &&)::$_0,void,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::HashSet<WTF::String,WTF::DefaultHash<WebKit::WebsiteDataStore::getAppBoundDomains(WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)> &&)::$_0>,WTF::HashTraits<WebKit::WebsiteDataStore::getAppBoundDomains(WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)> &&)::$_0>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110C4D8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::getAppBoundSchemes(WTF::CompletionHandler<void ()(WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)> &&)::$_0,void,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F110C500;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::getAppBoundSchemes(WTF::CompletionHandler<void ()(WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)> &&)::$_0,void,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110C500;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::getAppBoundSchemes(WTF::CompletionHandler<void ()(WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)> &&)::$_0,void,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&>::call(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v3 + 16))(v3, a3);
  v4 = *(*v3 + 8);

  return v4(v3);
}

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::initializeManagedDomains(WebKit::WebsiteDataStore::ForceReinitialization)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F110C550;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::saveRecentSearches(WTF::String const&,WTF::Vector<WebCore::RecentSearch,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110C5A0;
  v3 = a1[4];
  a1[4] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 2), a2);
  v5 = a1[1];
  a1[1] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::saveRecentSearches(WTF::String const&,WTF::Vector<WebCore::RecentSearch,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)::$_0,void>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110C5A0;
  v3 = *(a1 + 4);
  *(a1 + 4) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 16, a2);
  v5 = *(a1 + 1);
  *(a1 + 1) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  return WTF::fastFree(a1, v4);
}

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::loadRecentSearches(WTF::String const&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::RecentSearch,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110C5C8;
  v3 = a1[3];
  a1[3] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[1];
  a1[1] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::loadRecentSearches(WTF::String const&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::RecentSearch,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F110C5C8;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::loadRecentSearches(WTF::String const&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::RecentSearch,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void>::call(void *a1, uint64_t a2, const WTF::String *a3)
{
  RecentSearchesFromFile = WebCore::loadRecentSearchesFromFile(v17, (a1 + 1), (a1 + 3), a3);
  WTF::RunLoop::mainSingleton(RecentSearchesFromFile);
  v5 = a1[2];
  a1[2] = 0;
  v13 = v5;
  WTF::map<0ul,WTF::CrashOnOverflow,16ul,WTF::CrossThreadCopierBase<false,false,WTF::Vector<WebCore::RecentSearch,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::copy(WTF::Vector<WebCore::RecentSearch,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)::{lambda(0ul &)#1},WTF::Vector<WebCore::RecentSearch,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const>(&v14, v17);
  v6 = WTF::fastMalloc(0x20);
  *v6 = &unk_1F110C5F0;
  v6[1] = v13;
  v7 = v14;
  v14 = 0;
  v6[2] = v7;
  v8 = v15;
  v15 = 0;
  v16 = v6;
  v6[3] = v8;
  WTF::RunLoop::dispatch();
  v10 = v16;
  v16 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v14, v9);
  return WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v17, v11);
}

void sub_19DE30154(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (a6)
  {
    (*(*a6 + 8))(a6);
  }

  WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v6 | 8, a2);
  if (a3)
  {
    (*(*a3 + 8))(a3);
  }

  WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, v8);
  _Unwind_Resume(a1);
}

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::loadRecentSearches(WTF::String const&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::RecentSearch,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F110C5F0;
  WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 2), a2);
  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::loadRecentSearches(WTF::String const&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::RecentSearch,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F110C5F0;
  WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 16, a2);
  v4 = *(a1 + 1);
  *(a1 + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(a1, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::removeRecentSearches(WTF::WallTime,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110C618;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::removeRecentSearches(WTF::WallTime,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F110C618;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::removeRecentSearches(WTF::WallTime,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::call(uint64_t a1)
{
  v2 = WebCore::removeRecentlyModifiedRecentSearchesFromFile();
  WTF::RunLoop::mainSingleton(v2);
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 24), &v4);
  WTF::RunLoop::dispatch();
  result = v4;
  v4 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_19DE304B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::RTCDataChannelRemoteManagerProxy::registerConnectionToWebProcess(WebKit::RTCDataChannelRemoteManagerProxy *this, WebKit::NetworkConnectionToWebProcess *a2)
{
  v4 = *(this + 2);
  while (1)
  {
    v5 = *(this + 1);
    if ((v5 & 1) == 0)
    {
      break;
    }

    v6 = *(this + 1);
    atomic_compare_exchange_strong_explicit(this + 1, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v6 == v5)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 1));
LABEL_6:
  v7 = *(a2 + 34);
  v8 = *(*(a2 + 10) + 24);
  v9 = WTF::fastMalloc(0x28);
  *v9 = &unk_1F110C790;
  v9[1] = this;
  v9[2] = this;
  v9[3] = v7;
  v9[4] = v8;
  v11 = v9;
  (*(*v4 + 48))(v4, &v11);
  v10 = v11;
  v11 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  IPC::Connection::addWorkQueueMessageReceiver(*(a2 + 10), 0x35, *(this + 2), this, 0);
}

void WebKit::RTCDataChannelRemoteManagerProxy::unregisterConnectionToWebProcess(WebKit::RTCDataChannelRemoteManagerProxy *this, WebKit::NetworkConnectionToWebProcess *a2)
{
  v4 = *(this + 2);
  while (1)
  {
    v5 = *(this + 1);
    if ((v5 & 1) == 0)
    {
      break;
    }

    v6 = *(this + 1);
    atomic_compare_exchange_strong_explicit(this + 1, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v6 == v5)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 1));
LABEL_6:
  v7 = *(a2 + 34);
  v8 = WTF::fastMalloc(0x20);
  *v8 = &unk_1F110C7B8;
  v8[1] = this;
  v8[2] = this;
  v8[3] = v7;
  v10 = v8;
  (*(*v4 + 48))(v4, &v10);
  v9 = v10;
  v10 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  IPC::Connection::removeWorkQueueMessageReceiver(*(a2 + 10), 0x35u, 0);
}

void WebKit::RTCDataChannelRemoteManagerProxy::sendData(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v26 = a2;
  v27 = a3;
  v25[0] = a5;
  v25[1] = a6;
  if (a3 == -1 || !a3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE308B8);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *(v6 - 8);
    v8 = (a3 + ~(a3 << 32)) ^ ((a3 + ~(a3 << 32)) >> 22);
    v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
    v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
    v11 = v7 & ((v10 >> 31) ^ v10);
    v12 = *(v6 + 16 * v11);
    if (v12 == a3)
    {
LABEL_8:
      v14 = *(v6 + 16 * v11 + 8);
      v23[0] = a4;
      v24 = v25;
      IPC::Connection::connection(v14, &v28);
      v16 = v28;
      if (v28)
      {
        v17 = IPC::Encoder::operator new(0x238, v15);
        *v17 = 924;
        *(v17 + 68) = 0;
        *(v17 + 70) = 0;
        *(v17 + 69) = 0;
        *(v17 + 2) = 0;
        *(v17 + 3) = 0;
        *(v17 + 1) = 0;
        IPC::Encoder::encodeHeader(v17);
        v29 = v17;
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, v26);
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, v27);
        IPC::Encoder::operator<<<BOOL &>(v17, v23);
        IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v17, *v24, v24[1]);
        IPC::Connection::sendMessageImpl(v16, &v29, 0, 0);
        v19 = v29;
        v29 = 0;
        if (v19)
        {
          IPC::Encoder::~Encoder(v19, v18);
          bmalloc::api::tzoneFree(v21, v22);
        }

        v20 = v28;
        v28 = 0;
        if (v20)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v20);
        }
      }
    }

    else
    {
      v13 = 1;
      while (v12)
      {
        v11 = (v11 + v13) & v7;
        v12 = *(v6 + 16 * v11);
        ++v13;
        if (v12 == a3)
        {
          goto LABEL_8;
        }
      }
    }
  }
}

uint64_t WebKit::RTCDataChannelRemoteManagerProxy::close(uint64_t result, uint64_t a2, uint64_t a3)
{
  v13[0] = a2;
  v13[1] = a3;
  if (a3 == -1 || !a3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE309C0);
  }

  v3 = *(result + 24);
  if (v3)
  {
    v4 = *(v3 - 8);
    v5 = (a3 + ~(a3 << 32)) ^ ((a3 + ~(a3 << 32)) >> 22);
    v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
    v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
    v8 = v4 & ((v7 >> 31) ^ v7);
    v9 = *(v3 + 16 * v8);
    if (v9 == a3)
    {
LABEL_8:
      v11 = *(v3 + 16 * v8 + 8);
      v12 = v13;
      return IPC::Connection::send<Messages::RTCDataChannelRemoteManager::Close>(v11, &v12, 0, 0, 0);
    }

    else
    {
      v10 = 1;
      while (v9)
      {
        v8 = (v8 + v10) & v4;
        v9 = *(v3 + 16 * v8);
        ++v10;
        if (v9 == a3)
        {
          goto LABEL_8;
        }
      }
    }
  }

  return result;
}

uint64_t IPC::Connection::send<Messages::RTCDataChannelRemoteManager::Close>(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  IPC::Connection::connection(a1, &v12);
  if (!v12)
  {
    return 2;
  }

  v9 = IPC::Connection::send<Messages::RTCDataChannelRemoteManager::Close>(v12, a2, a3, a4, a5);
  v10 = v12;
  v12 = 0;
  if (v10)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v10);
  }

  return v9;
}

void WebKit::RTCDataChannelRemoteManagerProxy::changeReadyState(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a3 == -1 || !a3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE30BECLL);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    v8 = *(v5 - 8);
    v9 = (a3 + ~(a3 << 32)) ^ ((a3 + ~(a3 << 32)) >> 22);
    v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
    v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
    v12 = v8 & ((v11 >> 31) ^ v11);
    v13 = *(v5 + 16 * v12);
    if (v13 == a3)
    {
LABEL_8:
      IPC::Connection::connection(*(v5 + 16 * v12 + 8), &v23);
      v16 = v23;
      if (v23)
      {
        v17 = IPC::Encoder::operator new(0x238, v15);
        *v17 = 920;
        *(v17 + 68) = 0;
        *(v17 + 70) = 0;
        *(v17 + 69) = 0;
        *(v17 + 2) = 0;
        *(v17 + 3) = 0;
        *(v17 + 1) = 0;
        IPC::Encoder::encodeHeader(v17);
        v24 = v17;
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, a2);
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, a3);
        IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v17, a4);
        IPC::Connection::sendMessageImpl(v16, &v24, 0, 0);
        v19 = v24;
        v24 = 0;
        if (v19)
        {
          IPC::Encoder::~Encoder(v19, v18);
          bmalloc::api::tzoneFree(v21, v22);
        }

        v20 = v23;
        v23 = 0;
        if (v20)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v20);
        }
      }
    }

    else
    {
      v14 = 1;
      while (v13)
      {
        v12 = (v12 + v14) & v8;
        v13 = *(v5 + 16 * v12);
        ++v14;
        if (v13 == a3)
        {
          goto LABEL_8;
        }
      }
    }
  }
}

void WebKit::RTCDataChannelRemoteManagerProxy::receiveData(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v26 = a2;
  v27 = a3;
  v25[0] = a5;
  v25[1] = a6;
  if (a3 == -1 || !a3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE30DB4);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *(v6 - 8);
    v8 = (a3 + ~(a3 << 32)) ^ ((a3 + ~(a3 << 32)) >> 22);
    v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
    v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
    v11 = v7 & ((v10 >> 31) ^ v10);
    v12 = *(v6 + 16 * v11);
    if (v12 == a3)
    {
LABEL_8:
      v14 = *(v6 + 16 * v11 + 8);
      v23[0] = a4;
      v24 = v25;
      IPC::Connection::connection(v14, &v28);
      v16 = v28;
      if (v28)
      {
        v17 = IPC::Encoder::operator new(0x238, v15);
        *v17 = 923;
        *(v17 + 68) = 0;
        *(v17 + 70) = 0;
        *(v17 + 69) = 0;
        *(v17 + 2) = 0;
        *(v17 + 3) = 0;
        *(v17 + 1) = 0;
        IPC::Encoder::encodeHeader(v17);
        v29 = v17;
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, v26);
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, v27);
        IPC::Encoder::operator<<<BOOL &>(v17, v23);
        IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v17, *v24, v24[1]);
        IPC::Connection::sendMessageImpl(v16, &v29, 0, 0);
        v19 = v29;
        v29 = 0;
        if (v19)
        {
          IPC::Encoder::~Encoder(v19, v18);
          bmalloc::api::tzoneFree(v21, v22);
        }

        v20 = v28;
        v28 = 0;
        if (v20)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v20);
        }
      }
    }

    else
    {
      v13 = 1;
      while (v12)
      {
        v11 = (v11 + v13) & v7;
        v12 = *(v6 + 16 * v11);
        ++v13;
        if (v12 == a3)
        {
          goto LABEL_8;
        }
      }
    }
  }
}

void WebKit::RTCDataChannelRemoteManagerProxy::detectError(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  if (a3 == -1 || !a3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE30F70);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    v10 = *(v6 - 8);
    v11 = (a3 + ~(a3 << 32)) ^ ((a3 + ~(a3 << 32)) >> 22);
    v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
    v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
    v14 = v10 & ((v13 >> 31) ^ v13);
    v15 = *(v6 + 16 * v14);
    if (v15 == a3)
    {
LABEL_8:
      IPC::Connection::connection(*(v6 + 16 * v14 + 8), &v25);
      v18 = v25;
      if (v25)
      {
        v19 = IPC::Encoder::operator new(0x238, v17);
        *v19 = 922;
        *(v19 + 68) = 0;
        *(v19 + 70) = 0;
        *(v19 + 69) = 0;
        *(v19 + 2) = 0;
        *(v19 + 3) = 0;
        *(v19 + 1) = 0;
        IPC::Encoder::encodeHeader(v19);
        v26 = v19;
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v19, a2);
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v19, a3);
        IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v19, a4);
        IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v19, a5);
        IPC::Connection::sendMessageImpl(v18, &v26, 0, 0);
        v21 = v26;
        v26 = 0;
        if (v21)
        {
          IPC::Encoder::~Encoder(v21, v20);
          bmalloc::api::tzoneFree(v23, v24);
        }

        v22 = v25;
        v25 = 0;
        if (v22)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v22);
        }
      }
    }

    else
    {
      v16 = 1;
      while (v15)
      {
        v14 = (v14 + v16) & v10;
        v15 = *(v6 + 16 * v14);
        ++v16;
        if (v15 == a3)
        {
          goto LABEL_8;
        }
      }
    }
  }
}

void WebKit::RTCDataChannelRemoteManagerProxy::bufferedAmountIsDecreasing(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == -1 || !a3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE3111CLL);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    v8 = *(v5 - 8);
    v9 = (a3 + ~(a3 << 32)) ^ ((a3 + ~(a3 << 32)) >> 22);
    v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
    v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
    v12 = v8 & ((v11 >> 31) ^ v11);
    v13 = *(v5 + 16 * v12);
    if (v13 == a3)
    {
LABEL_8:
      IPC::Connection::connection(*(v5 + 16 * v12 + 8), &v23);
      v16 = v23;
      if (v23)
      {
        v17 = IPC::Encoder::operator new(0x238, v15);
        *v17 = 919;
        *(v17 + 68) = 0;
        *(v17 + 70) = 0;
        *(v17 + 69) = 0;
        *(v17 + 2) = 0;
        *(v17 + 3) = 0;
        *(v17 + 1) = 0;
        IPC::Encoder::encodeHeader(v17);
        v24 = v17;
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, a2);
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, a3);
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, a4);
        IPC::Connection::sendMessageImpl(v16, &v24, 0, 0);
        v19 = v24;
        v24 = 0;
        if (v19)
        {
          IPC::Encoder::~Encoder(v19, v18);
          bmalloc::api::tzoneFree(v21, v22);
        }

        v20 = v23;
        v23 = 0;
        if (v20)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v20);
        }
      }
    }

    else
    {
      v14 = 1;
      while (v13)
      {
        v12 = (v12 + v14) & v8;
        v13 = *(v5 + 16 * v12);
        ++v14;
        if (v13 == a3)
        {
          goto LABEL_8;
        }
      }
    }
  }
}

WebKit::NetworkRTCSharedMonitor *WebKit::NetworkRTCSharedMonitor::NetworkRTCSharedMonitor(WebKit::NetworkRTCSharedMonitor *this)
{
  *this = 0;
  *(this + 1) = 0;
  WTF::ConcurrentWorkQueue::create();
  v2 = WTF::fastMalloc(0x10);
  *v2 = &unk_1F110C808;
  WebCore::TimerBase::TimerBase((this + 24));
  *(this + 3) = &unk_1F10EB388;
  *(this + 9) = v2;
  *(this + 80) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 120) = 0;
  *(this + 140) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 19) = 0;
  return this;
}

void WebKit::NetworkRTCSharedMonitor::addListener(WebKit::NetworkRTCSharedMonitor *this, WebKit::NetworkRTCMonitor *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  if (*(this + 80) == 1)
  {
    WebKit::NetworkRTCMonitor::onNetworksChanged(a2, this + 88, this + 104, this + 124);
  }

  isEmptyIgnoringNullReferences = WTF::WeakHashSet<WebKit::NetworkRTCMonitor,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::isEmptyIgnoringNullReferences(this);
  v6 = *(this + 3);
  v7 = *(this + 2) + 1;
  *(this + 2) = v7;
  if (v7 > v6)
  {
    v8 = *this;
    if (*this)
    {
      v9 = *(v8 - 4);
      if (!v9)
      {
LABEL_17:
        v15 = *(v8 - 4);
        if (6 * *(v8 - 12) < v15 && v15 > 8)
        {
          WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::shrinkToBestSize(this);
          v8 = *this;
          *(this + 2) = 0;
          if (!v8)
          {
            goto LABEL_24;
          }
        }

        else
        {
          *(this + 2) = 0;
        }

        LODWORD(v8) = *(v8 - 12);
        if (v8 > 0x7FFFFFFE)
        {
          v17 = -2;
          goto LABEL_26;
        }

LABEL_24:
        v17 = 2 * v8;
LABEL_26:
        *(this + 3) = v17;
        goto LABEL_27;
      }

      v10 = 0;
      v11 = 8 * v9;
      v12 = v8 - 8;
      do
      {
        v13 = *(v12 + v11);
        if ((v13 + 1) >= 2 && !*(v13 + 8))
        {
          *(v12 + v11) = 0;
          if (atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v13);
            WTF::fastFree(v13, v4);
          }

          *(v12 + v11) = -1;
          ++v10;
        }

        v11 -= 8;
      }

      while (v11);
      v8 = *this;
      if (v10)
      {
        v14 = *(v8 - 12) - v10;
        *(v8 - 16) += v10;
        *(v8 - 12) = v14;
        goto LABEL_17;
      }

      if (v8)
      {
        goto LABEL_17;
      }
    }

    LODWORD(v8) = 0;
    *(this + 2) = 0;
    goto LABEL_24;
  }

LABEL_27:
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2, a2);
  v18 = *a2;
  atomic_fetch_add(*a2, 1u);
  v33 = v18;
  WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(this, &v33, buf);
  v20 = v33;
  v33 = 0;
  if (v20 && atomic_fetch_add(v20, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v20);
    WTF::fastFree(v20, v19);
  }

  v21 = qword_1ED641580;
  if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(this + 80);
    *buf = 67109632;
    v35 = isEmptyIgnoringNullReferences;
    v36 = 1024;
    v37 = v22;
    v38 = 2048;
    v39 = a2;
    _os_log_impl(&dword_19D52D000, v21, OS_LOG_TYPE_DEFAULT, "NetworkRTCSharedMonitor::addListener shouldStart=%d didReceiveResults=%d listener=%p", buf, 0x18u);
  }

  if (isEmptyIgnoringNullReferences)
  {
    v23 = *(a2 + 1);
    if (!v23)
    {
      __break(0xC471u);
      return;
    }

    v24 = *(v23 + 56);
    if (v24)
    {
      v25 = *(v24 + 8);
      if (v25)
      {
        v26 = *(v25 - 36);
        *(v25 - 36) = v26 + 1;
        v27 = *(v25 + 290);
        if (v26)
        {
          *(v25 - 36) = v26;
          if (v27)
          {
LABEL_36:
            v28 = *(this + 20);
            *(this + 20) = 0;
            if (v28)
            {
              nw_path_monitor_cancel(0);
              CFRelease(v28);
            }

            v29 = qword_1ED641580;
            if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_19D52D000, v29, OS_LOG_TYPE_DEFAULT, "NetworkRTCSharedMonitor::createNWPathMonitor", buf, 2u);
            }

            v30 = nw_path_monitor_create();
            nw_path_monitor_set_queue(v30, MEMORY[0x1E69E96A0]);
            v31 = malloc_type_malloc(0x28uLL, 0x10E0040C0B912BCuLL);
            *v31 = MEMORY[0x1E69E9818];
            v31[1] = 50331650;
            v31[2] = WTF::BlockPtr<void ()(nw_path *)>::fromCallable<WebKit::createNWPathMonitor(void)::$_0>(WebKit::createNWPathMonitor(void)::$_0)::{lambda(void *,nw_path *)#1}::__invoke;
            v31[3] = &WTF::BlockPtr<void ()(nw_path *)>::fromCallable<WebKit::createNWPathMonitor(void)::$_0>(WebKit::createNWPathMonitor(void)::$_0)::descriptor;
            nw_path_monitor_set_update_handler(v30, v31);
            _Block_release(v31);
            v32 = *(this + 20);
            *(this + 20) = v30;
            if (v32)
            {
              CFRelease(v32);
              v30 = *(this + 20);
            }

            nw_path_monitor_start(v30);
            return;
          }
        }

        else
        {
          (*(*(v25 - 56) + 8))();
          if (v27)
          {
            goto LABEL_36;
          }
        }
      }
    }

    WebKit::NetworkRTCSharedMonitor::updateNetworks(this);
    WebCore::TimerBase::start();
  }
}

uint64_t WebKit::NetworkRTCMonitor::onNetworksChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = a1;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "%p - NetworkRTCMonitor::onNetworksChanged sent", buf, 0xCu);
  }

  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = *(v10 + 64);
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
        goto LABEL_9;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v11);
LABEL_9:
    v14 = IPC::Encoder::operator new(0x238, v9);
    *v14 = 3024;
    *(v14 + 68) = 0;
    *(v14 + 70) = 0;
    *(v14 + 69) = 0;
    *(v14 + 2) = 0;
    *(v14 + 3) = 0;
    *(v14 + 1) = 0;
    IPC::Encoder::encodeHeader(v14);
    *buf = v14;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v14, *(a2 + 12));
    v15 = *(a2 + 12);
    if (v15)
    {
      v16 = *a2;
      v17 = 96 * v15;
      do
      {
        IPC::ArgumentCoder<WebKit::RTCNetwork,void>::encode(v14, v16);
        v16 += 96;
        v17 -= 96;
      }

      while (v17);
    }

    v23 = *(a3 + 16);
    IPC::Encoder::operator<<<BOOL>(v14, &v23);
    IPC::ArgumentCoder<mpark::variant<WebKit::WebRTCNetwork::IPAddress::UnspecifiedFamily,unsigned int,std::array<unsigned int,4ul>>,void>::encode<IPC::Encoder,mpark::variant<WebKit::WebRTCNetwork::IPAddress::UnspecifiedFamily,unsigned int,std::array<unsigned int,4ul>> const&>(v14, a3, v23);
    v23 = *(a4 + 16);
    IPC::Encoder::operator<<<BOOL>(v14, &v23);
    IPC::ArgumentCoder<mpark::variant<WebKit::WebRTCNetwork::IPAddress::UnspecifiedFamily,unsigned int,std::array<unsigned int,4ul>>,void>::encode<IPC::Encoder,mpark::variant<WebKit::WebRTCNetwork::IPAddress::UnspecifiedFamily,unsigned int,std::array<unsigned int,4ul>> const&>(v14, a4, v23);
    IPC::Connection::sendMessageImpl(v11, buf, 0, 0);
    v19 = *buf;
    *buf = 0;
    if (v19)
    {
      IPC::Encoder::~Encoder(v19, v18);
      bmalloc::api::tzoneFree(v21, v22);
    }

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v11);
  }

  else
  {
    result = 120;
    __break(0xC471u);
  }

  return result;
}

BOOL WTF::WeakHashSet<WebKit::NetworkRTCMonitor,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::isEmptyIgnoringNullReferences(uint64_t *a1)
{
  if (!*a1 || !*(*a1 - 12))
  {
    return 1;
  }

  v12 = a1;
  v13 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(a1);
  v14 = v2;
  v3 = *v12;
  if (*v12)
  {
    v4 = *(v3 - 4);
    v5 = (v3 + 8 * v4);
    v15 = v5;
    v16 = v5;
    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v12);
  }

  else
  {
    v15 = 0;
    v16 = 0;
    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v12);
    v5 = 0;
    v4 = 0;
  }

  v7 = a1;
  v8 = v5;
  v9 = v5;
  v10 = v5;
  v11 = v3 + 8 * v4;
  WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v7);
  return v13 == v8;
}

atomic_uint *WebKit::NetworkRTCSharedMonitor::updateNetworks(WebKit::NetworkRTCSharedMonitor *this)
{
  v2 = WTF::fastMalloc(0x10);
  *v2 = &unk_1F110C830;
  v3 = WTF::fastMalloc(0x40);
  *v3 = 1;
  *(v3 + 8) = v2;
  *(v3 + 16) = 0;
  *(v3 + 40) = 0;
  *(v3 + 60) = 0;
  v4 = *(this + 2);
  atomic_fetch_add((v4 + 32), 1u);
  atomic_fetch_add(v3, 1u);
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F110C858;
  v5[1] = v3;
  v12 = v5;
  MEMORY[0x19EB01930](v4, &v12);
  v6 = v12;
  v12 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  atomic_fetch_add(v3, 1u);
  v7 = WTF::fastMalloc(0x10);
  *v7 = &unk_1F110C8D0;
  v7[1] = v3;
  v12 = v7;
  MEMORY[0x19EB01930](v4, &v12);
  v8 = v12;
  v12 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  atomic_fetch_add(v3, 1u);
  v9 = WTF::fastMalloc(0x10);
  *v9 = &unk_1F110C8F8;
  v9[1] = v3;
  v12 = v9;
  MEMORY[0x19EB01930](v4, &v12);
  v10 = v12;
  v12 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
    if (!v4)
    {
      return WTF::ThreadSafeRefCounted<WebKit::CallbackAggregator,(WTF::DestructionThread)2>::deref(v3);
    }

    goto LABEL_7;
  }

  if (v4)
  {
LABEL_7:
    WTF::ThreadSafeRefCounted<WTF::ConcurrentWorkQueue,(WTF::DestructionThread)0>::deref((v4 + 32));
  }

  return WTF::ThreadSafeRefCounted<WebKit::CallbackAggregator,(WTF::DestructionThread)2>::deref(v3);
}

void WebKit::NetworkRTCSharedMonitor::removeListener(uint64_t a1, uint64_t *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 12);
  v5 = *(a1 + 8) + 1;
  *(a1 + 8) = v5;
  if (v5 > v4)
  {
    v6 = *a1;
    if (*a1)
    {
      v7 = *(v6 - 4);
      if (!v7)
      {
LABEL_15:
        v13 = *(v6 - 4);
        if (6 * *(v6 - 12) < v13 && v13 > 8)
        {
          WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::shrinkToBestSize(a1);
          v6 = *a1;
          *(a1 + 8) = 0;
          if (!v6)
          {
            goto LABEL_22;
          }
        }

        else
        {
          *(a1 + 8) = 0;
        }

        LODWORD(v6) = *(v6 - 12);
        if (v6 > 0x7FFFFFFE)
        {
          v15 = -2;
          goto LABEL_24;
        }

LABEL_22:
        v15 = 2 * v6;
LABEL_24:
        *(a1 + 12) = v15;
        goto LABEL_25;
      }

      v8 = 0;
      v9 = 8 * v7;
      v10 = v6 - 8;
      do
      {
        v11 = *(v10 + v9);
        if ((v11 + 1) >= 2 && !*(v11 + 8))
        {
          *(v10 + v9) = 0;
          if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v11);
            WTF::fastFree(v11, a2);
          }

          *(v10 + v9) = -1;
          ++v8;
        }

        v9 -= 8;
      }

      while (v9);
      v6 = *a1;
      if (v8)
      {
        v12 = *(v6 - 12) - v8;
        *(v6 - 16) += v8;
        *(v6 - 12) = v12;
        goto LABEL_15;
      }

      if (v6)
      {
        goto LABEL_15;
      }
    }

    LODWORD(v6) = 0;
    *(a1 + 8) = 0;
    goto LABEL_22;
  }

LABEL_25:
  if (*a2 && *(*a2 + 8))
  {
    v21 = *a2;
    v16 = WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::find<WTF::HashSetTranslator<WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,(WTF::ShouldValidateKey)1,WTF::DefaultWeakPtrImpl const*>(a1, &v21);
    if (*a1)
    {
      v17 = *a1 + 8 * *(*a1 - 4);
      if (v17 == v16)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (!v16)
      {
        goto LABEL_34;
      }

      v17 = 0;
    }

    if (v17 != v16)
    {
      WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::remove(a1, v16);
    }
  }

LABEL_34:
  isEmptyIgnoringNullReferences = WTF::WeakHashSet<WebKit::NetworkRTCMonitor,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::isEmptyIgnoringNullReferences(a1);
  v19 = qword_1ED641580;
  if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v21) = 67109376;
    HIDWORD(v21) = isEmptyIgnoringNullReferences;
    v22 = 2048;
    v23 = a2;
    _os_log_impl(&dword_19D52D000, v19, OS_LOG_TYPE_DEFAULT, "NetworkRTCSharedMonitor::removeListener shouldStop=%d listener=%p", &v21, 0x12u);
  }

  if (isEmptyIgnoringNullReferences)
  {
    v20 = *(a1 + 160);
    *(a1 + 160) = 0;
    if (v20)
    {
      nw_path_monitor_cancel(v20);
      CFRelease(v20);
    }

    if ((*(a1 + 56) & 0xFFFFFFFFFFFFLL) != 0)
    {
      WebCore::TimerBase::stopSlowCase((a1 + 24));
    }
  }
}

uint64_t WebKit::isEqual(WebKit *this, const WebKit::WebRTCNetwork::IPAddress *a2, const WebKit::WebRTCNetwork::IPAddress *a3)
{
  WebKit::WebRTCNetwork::IPAddress::rtcAddress(this, v6);
  WebKit::WebRTCNetwork::IPAddress::rtcAddress(a2, &v5);
  return webrtc::IPAddress::operator==();
}

BOOL WebKit::sortNetworks(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  v3 = *(a2 + 56);
  v4 = v2 < v3;
  if (v2 != v3)
  {
    return v4;
  }

  if (!*(a1 + 92))
  {
    __break(0xC471u);
    goto LABEL_12;
  }

  v6 = *(a1 + 80);
  WebKit::WebRTCNetwork::IPAddress::rtcAddress(v6, v20);
  v7 = *(v6 + 20);
  v17 = v21;
  v18 = v22;
  v16 = &off_1F110D978;
  v19 = v7;
  v9 = webrtc::IPAddressPrecedence(&v16, v8);
  if (!*(a2 + 92))
  {
    __break(0xC471u);
LABEL_12:
    JUMPOUT(0x19DE31E64);
  }

  v10 = v9;
  v11 = *(a2 + 80);
  WebKit::WebRTCNetwork::IPAddress::rtcAddress(v11, v20);
  v12 = *(v11 + 20);
  v17 = v21;
  v18 = v22;
  v16 = &off_1F110D978;
  v19 = v12;
  v14 = webrtc::IPAddressPrecedence(&v16, v13);
  v4 = v10 < v14;
  if (v10 == v14)
  {
    return (WTF::codePointCompare() & 0x80u) != 0;
  }

  return v4;
}

void WebKit::NetworkRTCMonitor::startUpdatingIfNeeded(WebKit::NetworkRTCMonitor *this)
{
  v2 = this;
  {
    WebKit::NetworkRTCSharedMonitor::NetworkRTCSharedMonitor(&WebKit::networkSharedMonitor(void)::networkSharedMonitor);
    v2 = this;
  }

  WebKit::NetworkRTCSharedMonitor::addListener(&WebKit::networkSharedMonitor(void)::networkSharedMonitor, v2);
}

void WebKit::NetworkRTCMonitor::stopUpdating(WebKit::NetworkRTCMonitor *this)
{
  v2 = this;
  {
    WebKit::NetworkRTCSharedMonitor::NetworkRTCSharedMonitor(&WebKit::networkSharedMonitor(void)::networkSharedMonitor);
    v2 = this;
  }

  WebKit::NetworkRTCSharedMonitor::removeListener(&WebKit::networkSharedMonitor(void)::networkSharedMonitor, v2);
}

atomic_uint *WebKit::NetworkRTCProvider::NetworkRTCProvider(atomic_uint *this, WebKit::NetworkConnectionToWebProcess *a2)
{
  v4 = WTF::FunctionDispatcher::FunctionDispatcher(this);
  v4[3] = 1;
  *v4 = &unk_1F110C640;
  v4[1] = &unk_1F110C680;
  v4[2] = 0;
  v4[6] = 0;
  v4[5] = 0;
  v4[4] = v4 + 5;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 16, a2 + 56);
  v5 = *(a2 + 8);
  if (v5)
  {
    atomic_fetch_add(v5, 1u);
  }

  *(this + 7) = v5;
  v6 = *(a2 + 10);
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

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_8:
  *(this + 8) = v6;
  *(this + 72) = 1;
  *(this + 10) = 0;
  *(this + 11) = this;
  atomic_fetch_add(this + 7, 1u);
  *(this + 12) = 0;
  v9 = *(*(a2 + 11) + 40);
  if (v9)
  {
    IPC::Connection::getAuditToken(v9, (this + 26));
  }

  else
  {
    *(this + 104) = 0;
    *(this + 136) = 0;
  }

  *(this + 18) = 0;
  WTF::WorkQueue::create();
  v10 = *(a2 + 11);
  v20 = *(a2 + 12);
  v11 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v10 + 240), &v20);
  if (v11)
  {
    v12 = v11;
    if (((*(*v11 + 288))(v11) & 1) == 0)
    {
      goto LABEL_22;
    }

    ++*(v12 + 16);
    WTF::String::utf8();
    v14 = v20;
    v20 = 0;
    v15 = *(this + 18);
    *(this + 18) = v14;
    if (v15)
    {
      v16 = *v15 - 1;
      if (*v15 != 1)
      {
LABEL_14:
        *v15 = v16;
        goto LABEL_15;
      }

      WTF::fastFree(v15, v13);
      v15 = v20;
      v20 = 0;
      if (v15)
      {
        v16 = *v15 - 1;
        if (*v15 != 1)
        {
          goto LABEL_14;
        }

        WTF::fastFree(v15, v19);
      }
    }

LABEL_15:
    v17 = *(v12 + 16);
    if (v17)
    {
      *(v12 + 16) = v17 - 1;
      goto LABEL_17;
    }

LABEL_22:
    __break(0xC471u);
    JUMPOUT(0x19DE32194);
  }

LABEL_17:
  WebCore::LibWebRTCProvider::setRTCLogging();
  return this;
}

atomic_ullong *WebKit::NetworkRTCProvider::startListeningForIPC(WebKit::NetworkRTCProvider *this)
{
  v2 = *(this + 8);
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
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_6:
  IPC::Connection::addMessageReceiver(v2, this, this + 8, 41, 0);

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
}

void WebKit::NetworkRTCProvider::~NetworkRTCProvider(WebKit::NetworkRTCProvider *this, void *a2)
{
  *this = &unk_1F110C640;
  *(this + 1) = &unk_1F110C680;
  v3 = *(this + 19);
  *(this + 19) = 0;
  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = *(this + 18);
  *(this + 18) = 0;
  if (v4)
  {
    if (*v4 == 1)
    {
      WTF::fastFree(v4, a2);
    }

    else
    {
      --*v4;
    }
  }

  v5 = *(this + 12);
  if (v5)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v5, a2);
  }

  {
    WebKit::NetworkRTCSharedMonitor::NetworkRTCSharedMonitor(&WebKit::networkSharedMonitor(void)::networkSharedMonitor);
  }

  WebKit::NetworkRTCSharedMonitor::removeListener(&WebKit::networkSharedMonitor(void)::networkSharedMonitor, this + 10);
  v7 = *(this + 11);
  *(this + 11) = 0;
  if (v7)
  {
    v8 = (v7 + 28);
    if (!atomic_load(v8))
    {
      __break(0xC471u);
      return;
    }

    atomic_fetch_add(v8, 0xFFFFFFFF);
  }

  v10 = *(this + 10);
  if (v10)
  {
    *(v10 + 8) = 0;
    v11 = *(this + 10);
    *(this + 10) = 0;
    if (v11)
    {
      if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v11);
        WTF::fastFree(v11, v6);
      }
    }
  }

  v12 = *(this + 8);
  *(this + 8) = 0;
  if (v12)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v12);
  }

  v13 = *(this + 7);
  *(this + 7) = 0;
  if (v13 && atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v13);
    WTF::fastFree(v13, v6);
  }

  std::__tree<std::__value_type<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkRTCProvider::Socket>>,std::__map_value_compare<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::__value_type<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkRTCProvider::Socket>>,WebKit::SocketComparator,true>,WTF::FastAllocator<std::__value_type<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkRTCProvider::Socket>>>>::destroy(*(this + 5));
  *(this + 1) = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 2, v14);

  WTF::FunctionDispatcher::~FunctionDispatcher(this);
}

void non-virtual thunk toWebKit::NetworkRTCProvider::~NetworkRTCProvider(WebKit::NetworkRTCProvider *this, void *a2)
{
  WebKit::NetworkRTCProvider::~NetworkRTCProvider((this - 8), a2);
}

{
  WebKit::NetworkRTCProvider::operator delete((this - 8), a2);
}

double WebKit::NetworkRTCProvider::operator delete(WebKit::NetworkRTCProvider *a1, void *a2)
{
  WebKit::NetworkRTCProvider::~NetworkRTCProvider(a1, a2);
  if (atomic_load((v2 + 28)))
  {
    result = 0.0;
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

    WTF::fastFree(v2, v3);
  }

  return result;
}

uint64_t WebKit::NetworkRTCProvider::close(WebKit::NetworkRTCProvider *this)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 134217984;
    *&v11[4] = this;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - NetworkRTCProvider::close", v11, 0xCu);
  }

  v3 = *(this + 8);
  while (1)
  {
    v4 = *v3;
    if ((*v3 & 1) == 0)
    {
      break;
    }

    v5 = *v3;
    atomic_compare_exchange_strong_explicit(v3, &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v4)
    {
      goto LABEL_8;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v3);
LABEL_8:
  v11[8] = 0;
  *v11 = 297;
  v12 = 0;
  IPC::Connection::removeMessageReceiveQueue(v3, v11);
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  v7 = *(this + 7);
  *(this + 7) = 0;
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    WTF::fastFree(v7, v6);
  }

  v8 = *(this + 11);
  if (v8)
  {
    atomic_fetch_add((v8 + 24), 1u);
    *v11 = this + 80;
    WebKit::NetworkRTCMonitor::stopUpdating((this + 80));
    WTF::Ref<WebKit::NetworkRTCMonitor,WTF::RawPtrTraits<WebKit::NetworkRTCMonitor>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCMonitor>>::~Ref(v11);
    atomic_fetch_add(this + 6, 1u);
    v9 = WTF::fastMalloc(0x18);
    *v9 = &unk_1F110C948;
    v9[1] = this;
    v9[2] = this;
    *v11 = v9;
    (*(**(this + 19) + 48))(*(this + 19), v11);
    result = *v11;
    *v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  else
  {
    result = 120;
    __break(0xC471u);
  }

  return result;
}

uint64_t WTF::Ref<WebKit::NetworkRTCMonitor,WTF::RawPtrTraits<WebKit::NetworkRTCMonitor>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCMonitor>>::~Ref(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (!v2)
  {
    return a1;
  }

  v3 = *(v2 + 8);
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebKit::NetworkRTCProvider,(WTF::DestructionThread)2>::deref((v3 + 24));
    return a1;
  }

  result = 120;
  __break(0xC471u);
  return result;
}

void WebKit::NetworkRTCProvider::sendToSocket(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, WebKit::WebRTCNetwork::SocketAddress *this, uint64_t a6)
{
  v8 = *(a1 + 40);
  v6 = a1 + 40;
  v7 = v8;
  if (v8)
  {
    v12 = v6;
    do
    {
      v13 = *(v7 + 32);
      v14 = v13 >= a2;
      v15 = v13 < a2;
      if (v14)
      {
        v12 = v7;
      }

      v7 = *(v7 + 8 * v15);
    }

    while (v7);
    if (v12 != v6 && *(v12 + 32) <= a2)
    {
      v16 = *(v12 + 40);
      WebKit::WebRTCNetwork::SocketAddress::rtcAddress(this, __p);
      (*(*v16 + 48))(v16, a3, a4, __p, a6);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

uint64_t WebKit::NetworkRTCProvider::closeSocket(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 40);
  result = a1 + 40;
  v3 = v4;
  if (v4)
  {
    v5 = result;
    do
    {
      v6 = *(v3 + 32);
      v7 = v6 >= a2;
      v8 = v6 < a2;
      if (v7)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * v8);
    }

    while (v3);
    if (v5 != result && *(v5 + 32) <= a2)
    {
      return (*(**(v5 + 40) + 32))();
    }
  }

  return result;
}

uint64_t WebKit::NetworkRTCProvider::setSocketOption(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 40);
  result = a1 + 40;
  v5 = v6;
  if (v6)
  {
    v7 = result;
    do
    {
      v8 = *(v5 + 32);
      v9 = v8 >= a2;
      v10 = v8 < a2;
      if (v9)
      {
        v7 = v5;
      }

      v5 = *(v5 + 8 * v10);
    }

    while (v5);
    if (v7 != result && *(v7 + 32) <= a2)
    {
      return (*(**(v7 + 40) + 40))(*(v7 + 40), a3, a4);
    }
  }

  return result;
}

void WebKit::NetworkRTCProvider::addSocket(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = (a1 + 40);
  v6 = *(a1 + 40);
  if (v6)
  {
    while (1)
    {
      while (1)
      {
        v8 = v6;
        v9 = v6[4];
        if (v9 <= a2)
        {
          break;
        }

        v6 = *v8;
        v7 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (v9 >= a2)
      {
        break;
      }

      v6 = v8[1];
      if (!v6)
      {
        v7 = v8 + 1;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v8 = (a1 + 40);
LABEL_9:
    v10 = WTF::fastMalloc(0x30);
    v10[4] = a2;
    v11 = *a3;
    *a3 = 0;
    v10[5] = v11;
    *v10 = 0;
    v10[1] = 0;
    v10[2] = v8;
    *v7 = v10;
    v12 = **(a1 + 32);
    if (v12)
    {
      *(a1 + 32) = v12;
      v13 = *v7;
    }

    else
    {
      v13 = v10;
    }

    std::__tree_balance_after_insert[abi:sn200100]<std::__tree_node_base<void *> *>(*(a1 + 40), v13);
    ++*(a1 + 48);
  }

  v14 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 48);
    v18 = 134218496;
    v19 = a1;
    v20 = 2048;
    v21 = a2;
    v22 = 2048;
    v23 = v15;
    _os_log_impl(&dword_19D52D000, v14, OS_LOG_TYPE_DEFAULT, "%p - NetworkRTCProvider::new socket %llu, total socket number is %lu", &v18, 0x20u);
  }

  if (*(a1 + 48) >= 0x101uLL)
  {
    v16 = *(*(a1 + 32) + 32);
    v17 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_ERROR))
    {
      v18 = 134218240;
      v19 = a1;
      v20 = 2048;
      v21 = v16;
      _os_log_error_impl(&dword_19D52D000, v17, OS_LOG_TYPE_ERROR, "%p - NetworkRTCProvider::too many sockets, closing %llu", &v18, 0x16u);
    }

    WebKit::NetworkRTCProvider::closeSocket(a1, v16);
  }
}

uint64_t *WebKit::NetworkRTCProvider::takeSocket@<X0>(uint64_t *result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = result + 5;
  v4 = result[5];
  if (!v4)
  {
    goto LABEL_9;
  }

  result += 4;
  v5 = v3;
  do
  {
    v6 = v4[4];
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v4;
    }

    v4 = v4[v8];
  }

  while (v4);
  if (v5 != v3 && v5[4] <= a2)
  {
    v9 = v5[5];
    v5[5] = 0;
    *a3 = v9;
    return std::__tree<std::__value_type<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkRTCProvider::Socket>>,std::__map_value_compare<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::__value_type<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkRTCProvider::Socket>>,WebKit::SocketComparator,true>,WTF::FastAllocator<std::__value_type<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkRTCProvider::Socket>>>>::erase(result, v5);
  }

  else
  {
LABEL_9:
    *a3 = 0;
  }

  return result;
}

WTF::StringImpl *WebKit::NetworkRTCProvider::createResolver(uint64_t a1, uint64_t a2, const WTF::StringImpl **a3)
{
  if ((WTF::isMainRunLoop(a1) & 1) == 0)
  {
    v38 = a1;
    v39 = a1;
    atomic_fetch_add((a1 + 24), 1u);
    v40 = a2;
    WTF::String::isolatedCopy();
    v20 = WTF::fastMalloc(0x28);
    *v20 = &unk_1F110C970;
    v20[1] = v38;
    v20[2] = v39;
    v20[3] = v40;
    v21 = v41;
    v39 = 0;
    v41 = 0;
    v42 = v20;
    v20[4] = v21;
    WTF::callOnMainRunLoop();
    v23 = v42;
    v42 = 0;
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }

    result = v41;
    v41 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v22);
    }

    v25 = v39;
    v39 = 0;
    if (v25)
    {
      return WTF::ThreadSafeRefCounted<WebKit::NetworkRTCProvider,(WTF::DestructionThread)2>::deref((v25 + 24));
    }

    return result;
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    v8 = *(v7 + 8);
    v9 = v8 == 0;
    if (!v8)
    {
      v13 = 0;
LABEL_21:
      atomic_fetch_add(v7, 1u);
      goto LABEL_22;
    }

    v11 = (v8 + 120);
    v10 = *(v8 + 120);
    ++*(v8 - 36);
    v12 = *(v10 + 8);
    if (!v12)
    {
      __break(0xC471u);
      JUMPOUT(0x19DE32F24);
    }

    v13 = (v8 - 56);
    ++*(v12 - 36);
    hasRegisteredName = WebKit::NetworkMDNSRegister::hasRegisteredName(v11, a3, v6);
    WebKit::NetworkMDNSRegister::deref(v11);
    if (hasRegisteredName)
    {
      v38 = 0;
      v39 = 0;
      v15 = *(a1 + 88);
      if (!v15)
      {
        __break(0xC471u);
        JUMPOUT(0x19DE32F44);
      }

      atomic_fetch_add((v15 + 24), 1u);
      v42 = (a1 + 80);
      {
        WebKit::NetworkRTCSharedMonitor::NetworkRTCSharedMonitor(&WebKit::networkSharedMonitor(void)::networkSharedMonitor);
      }

      if (dword_1EB01E068)
      {
        v16 = WTF::Vector<WebCore::FloatLine,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v38, HIDWORD(v39) + 1, &xmmword_1EB01E058);
        v17 = HIDWORD(v39);
        v18 = v38 + 20 * HIDWORD(v39);
        v19 = *(v16 + 16);
        *v18 = *v16;
        *(v18 + 4) = v19;
        HIDWORD(v39) = v17 + 1;
        {
          WebKit::NetworkRTCSharedMonitor::NetworkRTCSharedMonitor(&WebKit::networkSharedMonitor(void)::networkSharedMonitor);
        }
      }

      if (dword_1EB01E07C)
      {
        v27 = HIDWORD(v39);
        if (HIDWORD(v39) == v39)
        {
          v28 = WTF::Vector<WebCore::FloatLine,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v38, HIDWORD(v39) + 1, &xmmword_1EB01E06C);
          v27 = HIDWORD(v39);
          v29 = v38 + 20 * HIDWORD(v39);
          v30 = *(v28 + 16);
          *v29 = *v28;
          *(v29 + 4) = v30;
        }

        else
        {
          v31 = v38 + 20 * HIDWORD(v39);
          v32 = xmmword_1EB01E06C;
          *(v31 + 4) = dword_1EB01E07C;
          *v31 = v32;
        }

        HIDWORD(v39) = v27 + 1;
      }

      v33 = *(a1 + 64);
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
          goto LABEL_36;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v33);
LABEL_36:
      v37 = &v38;
      IPC::Connection::send<Messages::WebRTCResolver::SetResolvedAddress>(v33, &v37, a2);
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v33);
      WTF::Ref<WebKit::NetworkRTCMonitor,WTF::RawPtrTraits<WebKit::NetworkRTCMonitor>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCMonitor>>::~Ref(&v42);
      result = v38;
      if (v38)
      {
        v38 = 0;
        LODWORD(v39) = 0;
        result = WTF::fastFree(result, v36);
      }

      goto LABEL_38;
    }

    v7 = *(a1 + 56);
    if (v7)
    {
      goto LABEL_21;
    }

    v9 = 0;
  }

  else
  {
    v13 = 0;
    v9 = 1;
  }

LABEL_22:
  v26 = WTF::fastMalloc(0x18);
  *v26 = &unk_1F110C998;
  *(v26 + 1) = v7;
  *(v26 + 2) = a2;
  v38 = v26;
  WebCore::resolveDNS();
  result = v38;
  v38 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (!v9)
  {
LABEL_38:
    if (v13[5] == 1)
    {
      return (*(*v13 + 8))(v13);
    }

    else
    {
      --v13[5];
    }
  }

  return result;
}

uint64_t WebKit::NetworkRTCProvider::stopResolver(atomic_uint *a1, uint64_t a2)
{
  if (WTF::isMainRunLoop(a1))
  {

    return MEMORY[0x1EEE55C48](a2);
  }

  else
  {
    atomic_fetch_add(a1 + 6, 1u);
    v4 = WTF::fastMalloc(0x20);
    *v4 = &unk_1F110C9C0;
    v4[1] = a1;
    v4[2] = a1;
    v4[3] = a2;
    v6 = v4;
    WTF::callOnMainRunLoop();
    result = v6;
    if (v6)
    {
      return (*(*v6 + 8))(v6);
    }
  }

  return result;
}

uint64_t *WebKit::NetworkRTCProvider::attributedBundleIdentifierFromPageIdentifier(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 24);
  atomic_fetch_add((a1 + 24), 1u);
  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE33268);
  }

  v5 = *(a1 + 96);
  if (!v5)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((a1 + 96), 0);
    v5 = *(a1 + 96);
  }

  v6 = *(v5 - 8);
  v7 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v8 = 9 * ((v7 + ~(v7 << 13)) ^ ((v7 + ~(v7 << 13)) >> 8));
  v9 = (v8 ^ (v8 >> 15)) + ~((v8 ^ (v8 >> 15)) << 27);
  v10 = v6 & ((v9 >> 31) ^ v9);
  v11 = (v5 + 16 * v10);
  v12 = *v11;
  if (!*v11)
  {
LABEL_13:
    *v11 = a2;
    v26 = 0;
    atomic_fetch_add((a1 + 24), 1u);
    v15 = WTF::fastMalloc(0x20);
    *v15 = &unk_1F110C9E8;
    v15[1] = a1;
    v15[2] = &v26;
    v15[3] = a2;
    v27 = v15;
    WTF::callOnMainRunLoopAndWait();
    if (v27)
    {
      (*(*v27 + 8))(v27);
    }

    v17 = v26;
    v26 = 0;
    v18 = v11[1];
    v11[1] = v17;
    if (v18)
    {
      if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v16);
      }

      v19 = v26;
      v26 = 0;
      if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v16);
      }
    }

    v20 = *(a1 + 96);
    if (v20)
    {
      v21 = *(v20 - 12) + 1;
    }

    else
    {
      v21 = 1;
    }

    *(v20 - 12) = v21;
    v23 = (*(v20 - 16) + v21);
    v24 = *(v20 - 4);
    if (v24 > 0x400)
    {
      if (v24 > 2 * v23)
      {
LABEL_29:
        v22 = v11 + 1;
LABEL_30:
        WTF::ThreadSafeRefCounted<WebKit::NetworkRTCProvider,(WTF::DestructionThread)2>::deref(v2);
        return v22;
      }
    }

    else if (3 * v24 > 4 * v23)
    {
      goto LABEL_29;
    }

    v11 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((a1 + 96), v11);
    goto LABEL_29;
  }

  v13 = 0;
  v14 = 1;
  while (v12 != a2)
  {
    if (v12 == -1)
    {
      v13 = v11;
    }

    v10 = (v10 + v14) & v6;
    v11 = (v5 + 16 * v10);
    v12 = *v11;
    ++v14;
    if (!*v11)
    {
      if (v13)
      {
        *v13 = 0;
        v13[1] = 0;
        --*(*(a1 + 96) - 16);
        v11 = v13;
      }

      goto LABEL_13;
    }
  }

  v22 = v11 + 1;
  if (a1)
  {
    goto LABEL_30;
  }

  return v22;
}

void WebKit::NetworkRTCProvider::createUDPSocket(uint64_t a1, unint64_t a2, WebKit::WebRTCNetwork::SocketAddress *this, int a4, int a5, uint64_t a6, char a7, char a8, atomic_uint **a9)
{
  v14 = *(a1 + 40);
  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = a1 + 40;
  do
  {
    v16 = *(v14 + 32);
    v17 = v16 >= a2;
    v18 = v16 < a2;
    if (v17)
    {
      v15 = v14;
    }

    v14 = *(v14 + 8 * v18);
  }

  while (v14);
  if (v15 != a1 + 40 && *(v15 + 32) <= a2)
  {
    v29 = qword_1ED641580;
    if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_error_impl(&dword_19D52D000, v29, OS_LOG_TYPE_ERROR, "NetworkRTCProvider::createUDPSocket duplicate identifier", __p, 2u);
    }
  }

  else
  {
LABEL_9:
    WebKit::WebRTCNetwork::SocketAddress::rtcAddress(this, __p);
    v19 = *(a1 + 64);
    while (1)
    {
      v20 = *v19;
      if ((*v19 & 1) == 0)
      {
        break;
      }

      v21 = *v19;
      atomic_compare_exchange_strong_explicit(v19, &v21, v20 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v21 == v20)
      {
        goto LABEL_14;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v19);
LABEL_14:
    v31 = v19;
    v23 = *WebKit::NetworkRTCProvider::attributedBundleIdentifierFromPageIdentifier(a1, a6);
    if (v23)
    {
      atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
    }

    v30 = v23;
    if (WebKit::NetworkRTCUDPSocketCocoa::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::NetworkRTCUDPSocketCocoa::s_heapRef, v22);
    }

    else
    {
      NonCompact = WebKit::NetworkRTCUDPSocketCocoa::operatorNewSlow(0x20);
    }

    v25 = NonCompact;
    WebKit::NetworkRTCUDPSocketCocoa::NetworkRTCUDPSocketCocoa(NonCompact, a2, a1, __p, &v31, &v30, a7, a8, a9);
    v27 = v30;
    v30 = 0;
    if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v27, v26);
    }

    v28 = v31;
    v31 = 0;
    if (v28)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v28);
    }

    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    __p[0] = v25;
    WebKit::NetworkRTCProvider::addSocket(a1, a2, __p);
    if (__p[0])
    {
      (*(*__p[0] + 8))(__p[0]);
    }
  }
}

void WebKit::NetworkRTCProvider::createClientTCPSocket(void *a1, atomic_ullong *a2, int a3, WebKit::WebRTCNetwork::SocketAddress *this, int a5, unsigned int a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, atomic_uint **a10)
{
  v15 = a1[5];
  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = a1 + 5;
  do
  {
    v17 = v15[4];
    v18 = v17 >= a2;
    v19 = v17 < a2;
    if (v18)
    {
      v16 = v15;
    }

    v15 = v15[v19];
  }

  while (v15);
  if (v16 != a1 + 5 && v16[4] <= a2)
  {
    v27 = qword_1ED641580;
    if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0].__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_19D52D000, v27, OS_LOG_TYPE_ERROR, "NetworkRTCProvider::createClientTCPSocket duplicate identifier", __p, 2u);
    }
  }

  else
  {
LABEL_9:
    WebKit::WebRTCNetwork::SocketAddress::rtcAddress(this, __p);
    v20 = WebKit::NetworkRTCProvider::attributedBundleIdentifierFromPageIdentifier(a1, a7);
    v21 = a1[8];
    while (1)
    {
      v22 = *v21;
      if ((*v21 & 1) == 0)
      {
        break;
      }

      v23 = *v21;
      atomic_compare_exchange_strong_explicit(v21, &v23, v22 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v23 == v22)
      {
        goto LABEL_14;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v21);
LABEL_14:
    v31 = v21;
    WebKit::NetworkRTCTCPSocketCocoa::createClientTCPSocket(a2, a1, __p, a6, v20, a8, a9, a10, &v29, &v31);
    if (v31)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v31);
    }

    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (v29)
    {
      WebKit::NetworkRTCProvider::addSocket(a1, a2, &v29);
      if (v29)
      {
        (*(*v29 + 8))(v29);
      }
    }

    else
    {
      v24 = a1[8];
      v31 = a2;
      while (1)
      {
        v25 = *v24;
        if ((*v24 & 1) == 0)
        {
          break;
        }

        v26 = *v24;
        atomic_compare_exchange_strong_explicit(v24, &v26, v25 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v26 == v25)
        {
          goto LABEL_26;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v24);
LABEL_26:
      v30 = 1;
      __p[0].__r_.__value_.__r.__words[0] = &v31;
      __p[0].__r_.__value_.__l.__size_ = &v30;
      IPC::Connection::send<Messages::LibWebRTCNetwork::SignalClose>(v24, __p, 0, 0, 0);
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v24);
    }
  }
}

WTF::StringImpl *WebKit::NetworkRTCProvider::getInterfaceName(WebKit::NetworkRTCTCPSocketCocoa *a1, WebKit::NetworkRTCProvider *a2, uint64_t a3, const WTF::String *a4, int a5, atomic_uint **a6, uint64_t *a7)
{
  v90[1] = *MEMORY[0x1E69E9840];
  if ((*(a2 + 8) & 2) != 0)
  {
    v16 = WebKit::NetworkRTCProvider::attributedBundleIdentifierFromPageIdentifier(a1, a3);
    WebKit::NetworkRTCTCPSocketCocoa::getInterfaceName(a1, a2, v16, a4, a5, a6, &v64);
    v17 = v64;
    v18 = *(a1 + 19);
    v19 = *a7;
    *a7 = 0;
    v20 = WTF::fastMalloc(0x50);
    while (1)
    {
      v21 = *(v18 + 32);
      if ((v21 & 1) == 0)
      {
        break;
      }

      v22 = *(v18 + 32);
      atomic_compare_exchange_strong_explicit((v18 + 32), &v22, v21 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v22 == v21)
      {
        goto LABEL_10;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v18 + 32));
LABEL_10:
    v23 = WTF::fastMalloc(0x10);
    v24 = 0;
    *v23 = &unk_1F110C708;
    v23[1] = v19;
    *(v20 + 8) = 1;
    *(v20 + 16) = v18 + 24;
    *(v20 + 24) = 0uLL;
    *(v20 + 40) = "getInterfaceName";
    *(v20 + 48) = 0;
    *(v20 + 56) = 0;
    *v20 = &unk_1F110C730;
    *(v20 + 64) = 0;
    *(v20 + 72) = v23;
    atomic_fetch_add(v17 + 2, 1u);
    v67 = 0uLL;
    v68 = "getInterfaceName";
    v69 = 0;
    v65 = v17;
    v66 = 0;
    v25 = (v17 + 48);
    v70 = v20;
    v71 = (v17 + 48);
    v72 = 1;
    atomic_compare_exchange_strong_explicit(v17 + 48, &v24, 1u, memory_order_acquire, memory_order_acquire);
    if (v24)
    {
      v25 = MEMORY[0x19EB01E30]();
    }

    *(v17 + 120) = 1;
    v26 = WTF::NativePromiseBase::logChannel(v25);
    if (*v26)
    {
      v27 = v26;
      if (v26[16] >= 4u)
      {
        WTF::Logger::LogSiteIdentifier::toString(&v81, &v67);
        WTF::String::String(&v80, " invoking maybeSettle() [");
        WTF::LogArgument<WTF::NativePromise<WTF::String,void,0u>>::toString(v17, &v79);
        WTF::String::String(&v78, " callback:");
        WTF::LogArgument<void const*>::toString();
        WTF::String::String(&v76, " isNothing:");
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        WTF::String::String(&v74, "]");
        result = WTF::tryMakeString<WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String>(&v81, &v80, &v79, &v78, &v77, &v76, &v75, &v74, &v82);
        if (!v82)
        {
          __break(0xC471u);
          return result;
        }

        v29 = v74;
        v74 = 0;
        if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v29, v28);
        }

        v30 = v75;
        v75 = 0;
        if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v30, v28);
        }

        v31 = v76;
        v76 = 0;
        if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v31, v28);
        }

        v32 = v77;
        v77 = 0;
        if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v32, v28);
        }

        v33 = v78;
        v78 = 0;
        if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v33, v28);
        }

        v34 = v79;
        v79 = 0;
        if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v34, v28);
        }

        v35 = v80;
        v80 = 0;
        if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v35, v28);
        }

        v36 = v81;
        v81 = 0;
        if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v36, v28);
        }

        v37 = *(v27 + 4);
        v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
        if (v38)
        {
          WTF::String::utf8();
          v40 = v73[0] ? v73[0] + 16 : 0;
          *buf = 136446210;
          *&buf[4] = v40;
          _os_log_impl(&dword_19D52D000, v37, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
          v38 = v73[0];
          v73[0] = 0;
          if (v38)
          {
            if (*v38 == 1)
            {
              v38 = WTF::fastFree(v38, v39);
            }

            else
            {
              --*v38;
            }
          }
        }

        if (*v27 && v27[16] >= 4u)
        {
          v41 = MEMORY[0x1E696EBC0];
          while (1)
          {
            v42 = *v41;
            if (v42)
            {
              break;
            }

            v43 = *v41;
            atomic_compare_exchange_strong_explicit(v41, &v43, v42 | 1, memory_order_acquire, memory_order_acquire);
            if (v43 == v42)
            {
              v44 = WTF::Logger::observers(v38);
              v45 = *(v44 + 12);
              if (v45)
              {
                v46 = *v44;
                v47 = *v44 + 8 * v45;
                do
                {
                  v48 = *v46;
                  *buf = 0;
                  WTF::Logger::LogSiteIdentifier::toString(&buf[8], &v67);
                  v84 = 0;
                  WTF::String::String(v85, " invoking maybeSettle() [");
                  v85[2] = 0;
                  WTF::LogArgument<WTF::NativePromise<WTF::String,void,0u>>::toString(v17, &v86);
                  v87 = 0;
                  WTF::String::String(v88, " callback:");
                  v88[2] = 0;
                  WTF::LogArgument<void const*>::toString();
                  v88[6] = 0;
                  WTF::String::String(v89, " isNothing:");
                  v89[2] = 0;
                  WTF::StringImpl::createWithoutCopyingNonEmpty();
                  v89[6] = 0;
                  WTF::String::String(v90, "]");
                  WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v73, buf, 8uLL);
                  (*(*v48 + 16))(v48, v27, 4, v73);
                  WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v73, v49);
                  for (i = 120; i != -8; i -= 16)
                  {
                    v51 = *&buf[i];
                    *&buf[i] = 0;
                    if (v51 && atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v51, v39);
                    }
                  }

                  ++v46;
                }

                while (v46 != v47);
              }

              v52 = 1;
              atomic_compare_exchange_strong_explicit(v41, &v52, 0, memory_order_release, memory_order_relaxed);
              if (v52 != 1)
              {
                WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
              }

              break;
            }
          }
        }

        v53 = v82;
        v82 = 0;
        if (v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v53, v39);
        }
      }
    }

    if (*(v17 + 72))
    {
      WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase::dispatch(v70, v17, &v71);
    }

    else
    {
      v54 = *(v17 + 23);
      if (v54 == *(v17 + 22))
      {
        v55 = WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v17 + 80, v54 + 1, &v70);
        v54 = *(v17 + 23);
        v56 = v54 + 1;
        v57 = *(v17 + 10);
        v58 = *v55;
        *v55 = 0;
      }

      else
      {
        v56 = v54 + 1;
        v57 = *(v17 + 10);
        v58 = v70;
        v70 = 0;
      }

      *(v57 + 8 * v54) = v58;
      *(v17 + 23) = v56;
    }

    v59 = v72;
    if (v72 == 1)
    {
      v60 = v71;
      atomic_compare_exchange_strong_explicit(v71, &v59, 0, memory_order_release, memory_order_relaxed);
      if (v59 != 1)
      {
        WTF::Lock::unlockSlow(v60);
      }
    }

    v61 = v70;
    v70 = 0;
    if (v61 && atomic_fetch_add(v61 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v61 + 2);
      (*(*v61 + 8))(v61);
    }

    v62 = v66;
    v66 = 0;
    if (v62 && atomic_fetch_add(v62 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v62 + 2);
      (*(*v62 + 8))(v62);
    }

    v63 = v65;
    v65 = 0;
    if (v63 && atomic_fetch_add(v63 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v63 + 2);
      (*(*v63 + 16))(v63);
    }

    result = v64;
    v64 = 0;
    if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 2);
      return (*(*result + 16))(result);
    }
  }

  else
  {
    *buf = 0;
    v8 = *a7;
    *a7 = 0;
    (*(*v8 + 16))(v8, buf);
    (*(*v8 + 8))(v8);
    result = *buf;
    *buf = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v9);
      }
    }
  }

  return result;
}

void WebKit::NetworkTransportSession::~NetworkTransportSession(WebKit::NetworkTransportSession *this, void *a2)
{
  *this = &unk_1F110CA10;
  *(this + 3) = &unk_1F110CA68;
  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 7);
  *(this + 7) = 0;
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(this + 6);
  *(this + 6) = 0;
  if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    WTF::fastFree(v6, a2);
  }

  v7 = *(this + 5);
  if (v7)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v7, a2);
  }

  *this = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);
  if (*(this + 4) != 1)
  {
    __break(0xC471u);
  }
}

{
  WebKit::NetworkTransportSession::~NetworkTransportSession(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void non-virtual thunk toWebKit::NetworkTransportSession::~NetworkTransportSession(WebKit::NetworkTransportSession *this, void *a2)
{
  WebKit::NetworkTransportSession::~NetworkTransportSession((this - 24), a2);
}

{
  WebKit::NetworkTransportSession::~NetworkTransportSession((this - 24), a2);

  bmalloc::api::tzoneFree(v2, v3);
}

uint64_t WebKit::NetworkTransportSession::messageSenderConnection(WebKit::NetworkTransportSession *this)
{
  v1 = *(this + 6);
  if (v1 && (v2 = *(v1 + 8)) != 0)
  {
    return *(v2 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t non-virtual thunk toWebKit::NetworkTransportSession::messageSenderConnection(WebKit::NetworkTransportSession *this)
{
  v1 = *(this + 3);
  if (v1 && (v2 = *(v1 + 8)) != 0)
  {
    return *(v2 + 24);
  }

  else
  {
    return 0;
  }
}

WTF::StringImpl *WebKit::NetworkTransportSession::streamSendBytes(uint64_t a1, uint64_t a2, char *a3, WTF *a4, BOOL a5, uint64_t *a6)
{
  v19 = a2;
  v10 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 40), &v19);
  if (v10)
  {
    v11 = v10;
    ++*v10;
    WebKit::NetworkTransportStream::sendBytes(v10, a3, a4, a5, a6);
    return WTF::RefCounted<WebKit::NetworkTransportStream>::deref(v11, v12);
  }

  else
  {
    v16[0] = 8;
    v17 = 0;
    v18 = 1;
    v14 = *a6;
    *a6 = 0;
    (*(*v14 + 16))(v14, v16);
    result = (*(*v14 + 8))(v14);
    if (v18 == 1)
    {
      result = v17;
      v17 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v15);
        }
      }
    }
  }

  return result;
}

IPC::Encoder *WebKit::NetworkTransportSession::receiveDatagram(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v16[0] = a2;
  v16[1] = a3;
  v13 = v16;
  v14 = a4;
  v15 = a5;
  v5 = a1 + 24;
  v6 = (*(*(a1 + 24) + 56))(a1 + 24);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 3175;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v17 = v8;
  Messages::WebTransportSession::ReceiveDatagram::encode<IPC::Encoder>(&v13, v8);
  (*(*v5 + 32))(v5, &v17, 0);
  result = v17;
  v17 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

IPC::Encoder *WebKit::NetworkTransportSession::streamReceiveBytes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v17[1] = a4;
  v18 = a2;
  v16 = a6;
  v17[0] = a3;
  v14[0] = &v18;
  v14[1] = v17;
  v15 = a5;
  v6 = a1 + 24;
  v7 = (*(*(a1 + 24) + 56))(a1 + 24);
  v9 = IPC::Encoder::operator new(0x238, v8);
  *v9 = 3177;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = v7;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  IPC::Encoder::encodeHeader(v9);
  v19 = v9;
  Messages::WebTransportSession::StreamReceiveBytes::encode<IPC::Encoder>(v14, v9);
  (*(*v6 + 32))(v6, &v19, 0);
  result = v19;
  v19 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v10);
    return bmalloc::api::tzoneFree(v12, v13);
  }

  return result;
}

IPC::Encoder *WebKit::NetworkTransportSession::receiveIncomingUnidirectionalStream(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 24;
  v4 = (*(*(a1 + 24) + 56))(a1 + 24);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 3176;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, a2);
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

IPC::Encoder *WebKit::NetworkTransportSession::receiveBidirectionalStream(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 24;
  v4 = (*(*(a1 + 24) + 56))(a1 + 24);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 3174;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, a2);
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

_DWORD *WebKit::NetworkTransportSession::cancelReceiveStream(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 40), &v5);
  if (result)
  {
    v3 = result;
    ++*result;
    WebKit::NetworkTransportStream::cancelReceive(result);
    return WTF::RefCounted<WebKit::NetworkTransportStream>::deref(v3, v4);
  }

  return result;
}

_DWORD *WebKit::NetworkTransportSession::cancelSendStream(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 40), &v5);
  if (result)
  {
    v3 = result;
    ++*result;
    WebKit::NetworkTransportStream::cancelSend(result);
    return WTF::RefCounted<WebKit::NetworkTransportStream>::deref(v3, v4);
  }

  return result;
}

uint64_t WebKit::NetworkTransportSession::destroyStream(uint64_t a1, uint64_t a2)
{
  v9 = a2;
  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 40), &v9);
  if (result)
  {
    v4 = result;
    ++*result;
    nw_connection_cancel(*(result + 32));
    v5 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( (a1 + 40),  &v9);
    v6 = v5;
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = (v7 + 16 * *(v7 - 4));
      if (v8 == v5)
      {
        return WTF::RefCounted<WebKit::NetworkTransportStream>::deref(v4, v6);
      }
    }

    else
    {
      if (!v5)
      {
        return WTF::RefCounted<WebKit::NetworkTransportStream>::deref(v4, v6);
      }

      v8 = 0;
    }

    if (v8 != v5)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove((a1 + 40), v5);
    }

    return WTF::RefCounted<WebKit::NetworkTransportStream>::deref(v4, v6);
  }

  return result;
}

_DWORD *WebKit::NetworkTransportSession::deref(_DWORD *this)
{
  if (this[4] == 1)
  {
    return (*(*this + 24))();
  }

  --this[4];
  return this;
}

atomic_uint *WTF::BlockPtr<void ()(nw_path *)>::fromCallable<WebKit::createNWPathMonitor(void)::$_0>(WebKit::createNWPathMonitor(void)::$_0)::{lambda(void *,nw_path *)#1}::__invoke(uint64_t a1, NSObject *a2)
{
  {
    WebKit::NetworkRTCSharedMonitor::NetworkRTCSharedMonitor(&WebKit::networkSharedMonitor(void)::networkSharedMonitor);
  }

  v3 = qword_1ED641580;
  if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_19D52D000, v3, OS_LOG_TYPE_DEFAULT, "NetworkRTCSharedMonitor::updateNetworksFromPath", v6, 2u);
  }

  result = nw_path_get_status(a2);
  if ((result & 0xFFFFFFFD) == 1)
  {
    v5 = malloc_type_malloc(0x28uLL, 0x10E0040C0B912BCuLL);
    *v5 = MEMORY[0x1E69E9818];
    v5[1] = 50331650;
    v5[2] = WTF::BlockPtr<BOOL ()(nw_interface *)>::fromCallable<WebKit::NetworkRTCSharedMonitor::updateNetworksFromPath(nw_path *)::$_0>(WebKit::NetworkRTCSharedMonitor::updateNetworksFromPath(nw_path *)::$_0)::{lambda(void *,nw_interface *)#1}::__invoke;
    v5[3] = &WTF::BlockPtr<BOOL ()(nw_interface *)>::fromCallable<WebKit::NetworkRTCSharedMonitor::updateNetworksFromPath(nw_path *)::$_0>(WebKit::NetworkRTCSharedMonitor::updateNetworksFromPath(nw_path *)::$_0)::descriptor;
    nw_path_enumerate_interfaces(a2, v5);
    _Block_release(v5);
    return WebKit::NetworkRTCSharedMonitor::updateNetworks(&WebKit::networkSharedMonitor(void)::networkSharedMonitor);
  }

  return result;
}

uint64_t WTF::BlockPtr<BOOL ()(nw_interface *)>::fromCallable<WebKit::NetworkRTCSharedMonitor::updateNetworksFromPath(nw_path *)::$_0>(WebKit::NetworkRTCSharedMonitor::updateNetworksFromPath(nw_path *)::$_0)::{lambda(void *,nw_interface *)#1}::__invoke(int a1, nw_interface_t interface)
{
  {
    WebKit::NetworkRTCSharedMonitor::NetworkRTCSharedMonitor(&WebKit::networkSharedMonitor(void)::networkSharedMonitor);
  }

  name = nw_interface_get_name(interface);
  WTF::String::fromUTF8(&v26, name, v4);
  type = nw_interface_get_type(interface);
  if (type > nw_interface_type_loopback)
  {
    v8 = 0;
  }

  else
  {
    v8 = dword_19E703D00[type];
  }

  if (v26 == -1 || !v26)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE34A8CLL);
  }

  v9 = qword_1EB01E098;
  if (qword_1EB01E098 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,webrtc::AdapterType>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,webrtc::AdapterType>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,webrtc::AdapterType,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<webrtc::AdapterType>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(), (v9 = qword_1EB01E098) != 0))
  {
    v10 = *(v9 - 8);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v26 + 4);
  if (v11 < 0x100)
  {
    v12 = WTF::StringImpl::hashSlowCase(v26);
  }

  else
  {
    v12 = v11 >> 8;
  }

  v13 = 0;
  for (i = 1; ; ++i)
  {
    v15 = v12 & v10;
    v16 = v9 + 16 * (v12 & v10);
    v17 = *v16;
    if (*v16 == -1)
    {
      v13 = v9 + 16 * v15;
      goto LABEL_19;
    }

    if (!v17)
    {
      break;
    }

    if (WTF::equal(v17, v26, v7))
    {
      *(v16 + 8) = v8;
      goto LABEL_31;
    }

LABEL_19:
    v12 = i + v15;
  }

  if (v13)
  {
    *v13 = 0;
    *(v13 + 8) = 0;
    --*(qword_1EB01E098 - 16);
    v16 = v13;
  }

  v18 = v26;
  v26 = 0;
  v19 = *v16;
  *v16 = v18;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v6);
  }

  *(v16 + 8) = v8;
  v20 = qword_1EB01E098;
  if (qword_1EB01E098)
  {
    v21 = *(qword_1EB01E098 - 12) + 1;
  }

  else
  {
    v21 = 1;
  }

  *(qword_1EB01E098 - 12) = v21;
  v22 = (*(v20 - 16) + v21);
  v23 = *(v20 - 4);
  if (v23 > 0x400)
  {
    if (v23 <= 2 * v22)
    {
LABEL_30:
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,webrtc::AdapterType>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,webrtc::AdapterType>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,webrtc::AdapterType,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<webrtc::AdapterType>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand();
    }
  }

  else if (3 * v23 <= 4 * v22)
  {
    goto LABEL_30;
  }

LABEL_31:
  v24 = v26;
  v26 = 0;
  if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v24, v6);
  }

  return 1;
}

_DWORD *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,webrtc::AdapterType>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,webrtc::AdapterType>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,webrtc::AdapterType,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<webrtc::AdapterType>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand()
{
  v0 = qword_1EB01E098;
  if (qword_1EB01E098)
  {
    v1 = *(qword_1EB01E098 - 4);
    v2 = *(qword_1EB01E098 - 12);
    if (v1)
    {
      v3 = v1 << (6 * v2 >= (2 * v1));
      goto LABEL_6;
    }
  }

  else
  {
    v1 = 0;
    v2 = 0;
  }

  v3 = 8;
LABEL_6:
  result = WTF::fastMalloc((16 * v3 + 16));
  if (v3)
  {
    v6 = v3;
    v7 = result + 6;
    do
    {
      *(v7 - 1) = 0;
      *v7 = 0;
      v7 += 4;
      --v6;
    }

    while (v6);
  }

  qword_1EB01E098 = (result + 4);
  result[2] = v3 - 1;
  result[3] = v3;
  *result = 0;
  result[1] = v2;
  if (v1)
  {
    for (i = 0; i != v1; ++i)
    {
      v9 = v0 + 16 * i;
      v10 = *v9;
      if (*v9 != -1)
      {
        if (v10)
        {
          v11 = qword_1EB01E098;
          if (qword_1EB01E098)
          {
            v12 = *(qword_1EB01E098 - 8);
          }

          else
          {
            v12 = 0;
          }

          v13 = *(v10 + 4);
          if (v13 < 0x100)
          {
            v14 = WTF::StringImpl::hashSlowCase(v10);
          }

          else
          {
            v14 = v13 >> 8;
          }

          v15 = 0;
          do
          {
            v16 = v14 & v12;
            v14 = ++v15 + v16;
          }

          while (*(v11 + 16 * v16));
          v17 = v11 + 16 * v16;
          v18 = *v9;
          *v9 = 0;
          *v17 = v18;
          *(v17 + 8) = *(v9 + 8);
          v19 = *v9;
          *v9 = 0;
          if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v19, v5);
          }
        }

        else
        {
          *v9 = 0;
        }
      }
    }
  }

  else if (!v0)
  {
    return result;
  }

  return WTF::fastFree((v0 - 16), v5);
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::RTCNetwork>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::RTCNetwork>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::RTCNetwork,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::RTCNetwork>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = a1;
    do
    {
      if (*v4 != -1)
      {
        v5 = *(v4 + 88);
        if (v5)
        {
          *(v4 + 88) = 0;
          *(v4 + 96) = 0;
          WTF::fastFree(v5, a2);
        }

        v6 = *(v4 + 24);
        if (v6)
        {
          *(v4 + 24) = 0;
          *(v4 + 32) = 0;
          WTF::fastFree(v6, a2);
        }

        v7 = *(v4 + 8);
        if (v7)
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          WTF::fastFree(v7, a2);
        }

        v8 = *v4;
        *v4 = 0;
        if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, a2);
        }
      }

      v4 += 104;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t std::__introsort<std::_RangeAlgPolicy,BOOL (*&)(WebKit::RTCNetwork const&,WebKit::RTCNetwork const&),WebKit::RTCNetwork*,false>(uint64_t result, unint64_t a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4, char a5)
{
  v8 = result;
  v264 = *MEMORY[0x1E69E9840];
LABEL_2:
  v252 = a2 - 96;
  v245 = a2 - 288;
  v247 = a2 - 192;
  v9 = v8;
  while (1)
  {
    v8 = v9;
    v10 = a2 - v9;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v9) >> 5);
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        result = (*a3)(v252, v9);
        if (result)
        {
LABEL_146:
          v103 = v9;
LABEL_147:
          v112 = v252;
LABEL_148:

          return std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::RTCNetwork>(v103, v112, v110, v111);
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {

      return std::__sort4[abi:sn200100]<std::_RangeAlgPolicy,BOOL (*&)(WebKit::RTCNetwork const&,WebKit::RTCNetwork const&),WebKit::RTCNetwork*,0>(v9, v9 + 96, v9 + 192, v252, a3);
    }

    if (v11 == 5)
    {
      std::__sort4[abi:sn200100]<std::_RangeAlgPolicy,BOOL (*&)(WebKit::RTCNetwork const&,WebKit::RTCNetwork const&),WebKit::RTCNetwork*,0>(v9, v9 + 96, v9 + 192, v9 + 288, a3);
      result = (*a3)(v252, v9 + 288);
      if (!result)
      {
        return result;
      }

      std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::RTCNetwork>(v9 + 288, v252, v104, v105);
      result = (*a3)(v9 + 288, v9 + 192);
      if (!result)
      {
        return result;
      }

      std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::RTCNetwork>(v9 + 192, v9 + 288, v106, v107);
      result = (*a3)(v9 + 192, v9 + 96);
      if (!result)
      {
        return result;
      }

      v108 = v9 + 96;
      v109 = v9 + 192;
LABEL_243:
      std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::RTCNetwork>(v108, v109, v110, v111);
      result = (*a3)(v9 + 96, v9);
      if (result)
      {
        v112 = v9 + 96;
        v103 = v9;
        goto LABEL_148;
      }

      return result;
    }

LABEL_10:
    if (v10 <= 2303)
    {
      if (a5)
      {
        if (v9 != a2)
        {
          v113 = (v9 + 96);
          if (v9 + 96 != a2)
          {
            v114 = 0;
            v115 = v9;
            do
            {
              v116 = v113;
              result = (*a3)(v113, v115);
              if (result)
              {
                v117 = *v116;
                *v116 = 0;
                v254 = v117;
                v118 = *(v115 + 104);
                *(v115 + 104) = 0;
                v255 = v118;
                v119 = *(v115 + 112);
                *(v115 + 112) = 0;
                v256 = v119;
                v120 = *(v115 + 120);
                *(v115 + 120) = 0;
                v257 = v120;
                v121 = *(v115 + 144);
                v258 = *(v115 + 128);
                v259[0] = v121;
                *(v259 + 12) = *(v115 + 156);
                v122 = *(v115 + 176);
                *(v115 + 176) = 0;
                v260 = v122;
                v123 = *(v115 + 184);
                *(v115 + 184) = 0;
                v124 = v114;
                v261 = v123;
                while (1)
                {
                  v125 = v9 + v124;
                  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v9 + v124 + 96, (v9 + v124));
                  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v125 + 112, (v125 + 16));
                  v126 = *(v9 + v124 + 48);
                  *(v125 + 128) = *(v125 + 32);
                  *(v125 + 144) = v126;
                  *(v125 + 156) = *(v125 + 60);
                  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v125 + 176, (v125 + 80));
                  if (!v124)
                  {
                    break;
                  }

                  v124 -= 96;
                  if (((*a3)(&v254, v124 + v9) & 1) == 0)
                  {
                    v128 = v9 + v124 + 96;
                    goto LABEL_164;
                  }
                }

                v128 = v9;
LABEL_164:
                v129 = *v128;
                if (*v128)
                {
                  *v128 = 0;
                  *(v128 + 8) = 0;
                  WTF::fastFree(v129, v127);
                }

                v130 = v254;
                v254 = 0;
                *v128 = v130;
                LODWORD(v130) = v255;
                LODWORD(v255) = 0;
                *(v128 + 8) = v130;
                LODWORD(v130) = HIDWORD(v255);
                HIDWORD(v255) = 0;
                *(v128 + 12) = v130;
                v131 = *(v125 + 16);
                if (v131)
                {
                  *(v125 + 16) = 0;
                  *(v128 + 24) = 0;
                  WTF::fastFree(v131, v127);
                }

                v132 = v256;
                v256 = 0;
                *(v125 + 16) = v132;
                LODWORD(v132) = v257;
                LODWORD(v257) = 0;
                *(v128 + 24) = v132;
                LODWORD(v132) = HIDWORD(v257);
                HIDWORD(v257) = 0;
                *(v128 + 28) = v132;
                v133 = v258;
                v134 = v259[0];
                *(v125 + 60) = *(v259 + 12);
                *(v125 + 32) = v133;
                *(v125 + 48) = v134;
                v135 = *(v125 + 80);
                if (v135)
                {
                  *(v125 + 80) = 0;
                  *(v128 + 88) = 0;
                  WTF::fastFree(v135, v127);
                }

                v136 = v260;
                v260 = 0;
                *(v125 + 80) = v136;
                LODWORD(v136) = v261;
                LODWORD(v261) = 0;
                *(v128 + 88) = v136;
                LODWORD(v136) = HIDWORD(v261);
                HIDWORD(v261) = 0;
                *(v128 + 92) = v136;
                v137 = v256;
                if (v256)
                {
                  v256 = 0;
                  LODWORD(v257) = 0;
                  WTF::fastFree(v137, v127);
                }

                result = v254;
                if (v254)
                {
                  v254 = 0;
                  LODWORD(v255) = 0;
                  result = WTF::fastFree(result, v127);
                }
              }

              v113 = v116 + 12;
              v114 += 96;
              v115 = v116;
            }

            while (v116 + 12 != a2);
          }
        }
      }

      else if (v9 != a2)
      {
        v214 = (v9 + 96);
        if (v9 + 96 != a2)
        {
          v215 = 0;
          v216 = 96;
          v217 = v9;
          do
          {
            v218 = v216;
            result = (*a3)(v214, v217);
            if (result)
            {
              v219 = *v214;
              *v214 = 0;
              v254 = v219;
              v220 = *(v217 + 104);
              *(v217 + 104) = 0;
              v255 = v220;
              v221 = *(v217 + 112);
              *(v217 + 112) = 0;
              v256 = v221;
              v222 = *(v217 + 120);
              *(v217 + 120) = 0;
              v257 = v222;
              v223 = *(v217 + 144);
              v258 = *(v217 + 128);
              v259[0] = v223;
              *(v259 + 12) = *(v217 + 156);
              v224 = *(v217 + 176);
              *(v217 + 176) = 0;
              v260 = v224;
              v225 = *(v217 + 184);
              *(v217 + 184) = 0;
              v261 = v225;
              do
              {
                v226 = v9 + v215;
                WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v9 + v215 + 96, (v9 + v215));
                WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v226 + 112, (v226 + 16));
                v227 = *(v9 + v215 + 48);
                *(v226 + 128) = *(v226 + 32);
                *(v226 + 144) = v227;
                *(v226 + 156) = *(v226 + 60);
                WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v226 + 176, (v226 + 80));
                if (v215 == -96)
                {
                  goto LABEL_264;
                }

                v215 -= 96;
              }

              while (((*a3)(&v254, v215 + v9) & 1) != 0);
              v229 = v9 + v215;
              v230 = *(v9 + v215 + 96);
              if (v230)
              {
                *(v229 + 96) = 0;
                *(v229 + 104) = 0;
                WTF::fastFree(v230, v228);
              }

              v231 = v254;
              v254 = 0;
              *(v229 + 96) = v231;
              LODWORD(v231) = v255;
              LODWORD(v255) = 0;
              *(v229 + 104) = v231;
              LODWORD(v231) = HIDWORD(v255);
              HIDWORD(v255) = 0;
              *(v229 + 108) = v231;
              v232 = *(v229 + 112);
              if (v232)
              {
                *(v229 + 112) = 0;
                *(v9 + v215 + 120) = 0;
                WTF::fastFree(v232, v228);
              }

              v233 = v256;
              v256 = 0;
              *(v229 + 112) = v233;
              LODWORD(v233) = v257;
              LODWORD(v257) = 0;
              v234 = (v9 + v215);
              v234[30] = v233;
              LODWORD(v233) = HIDWORD(v257);
              HIDWORD(v257) = 0;
              v234[31] = v233;
              v235 = v258;
              v236 = v259[0];
              *(v229 + 156) = *(v259 + 12);
              *(v229 + 128) = v235;
              *(v229 + 144) = v236;
              v237 = *(v229 + 176);
              if (v237)
              {
                *(v229 + 176) = 0;
                v234[46] = 0;
                WTF::fastFree(v237, v228);
                v237 = v256;
              }

              v238 = v260;
              v260 = 0;
              *(v229 + 176) = v238;
              LODWORD(v238) = v261;
              LODWORD(v261) = 0;
              v234[46] = v238;
              LODWORD(v238) = HIDWORD(v261);
              HIDWORD(v261) = 0;
              v234[47] = v238;
              if (v237)
              {
                v256 = 0;
                LODWORD(v257) = 0;
                WTF::fastFree(v237, v228);
              }

              result = v254;
              if (v254)
              {
                v254 = 0;
                LODWORD(v255) = 0;
                result = WTF::fastFree(result, v228);
              }
            }

            v217 = v9 + v218;
            v216 = v218 + 96;
            v214 = (v9 + v218 + 96);
            v215 = v218;
          }

          while (v214 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v9 == a2)
      {
        return result;
      }

      v138 = (v11 - 2) >> 1;
      v253 = v138;
      do
      {
        v139 = v138;
        if (v253 >= v138)
        {
          v140 = (2 * v138) | 1;
          v141 = v8 + 96 * v140;
          if (2 * v138 + 2 < v11 && (*a3)(v8 + 96 * v140, v141 + 96))
          {
            v141 += 96;
            v140 = 2 * v139 + 2;
          }

          v142 = v8 + 96 * v139;
          result = (*a3)(v141, v142);
          if ((result & 1) == 0)
          {
            v250 = v139;
            v143 = *v142;
            *v142 = 0;
            v254 = v143;
            LODWORD(v143) = *(v142 + 8);
            *(v142 + 8) = 0;
            LODWORD(v255) = v143;
            LODWORD(v143) = *(v142 + 12);
            *(v142 + 12) = 0;
            HIDWORD(v255) = v143;
            v144 = *(v142 + 16);
            *(v142 + 16) = 0;
            v256 = v144;
            LODWORD(v144) = *(v142 + 24);
            *(v142 + 24) = 0;
            LODWORD(v257) = v144;
            LODWORD(v144) = *(v142 + 28);
            *(v142 + 28) = 0;
            HIDWORD(v257) = v144;
            v145 = *(v142 + 32);
            v146 = *(v142 + 48);
            *(v259 + 12) = *(v142 + 60);
            v258 = v145;
            v259[0] = v146;
            v147 = *(v142 + 80);
            *(v142 + 80) = 0;
            v260 = v147;
            LODWORD(v147) = *(v142 + 88);
            *(v142 + 88) = 0;
            LODWORD(v261) = v147;
            LODWORD(v147) = *(v142 + 92);
            *(v142 + 92) = 0;
            HIDWORD(v261) = v147;
            do
            {
              v148 = v141;
              WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v142, v141);
              WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v142 + 16, (v141 + 16));
              v149 = *(v141 + 32);
              v150 = *(v141 + 48);
              *(v142 + 60) = *(v141 + 60);
              *(v142 + 32) = v149;
              *(v142 + 48) = v150;
              WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v142 + 80, (v141 + 80));
              if (v253 < v140)
              {
                break;
              }

              v152 = (2 * v140) | 1;
              v141 = v8 + 96 * v152;
              v153 = 2 * v140 + 2;
              if (v153 < v11 && (*a3)(v8 + 96 * v152, v141 + 96))
              {
                v141 += 96;
                v152 = v153;
              }

              v142 = v148;
              v140 = v152;
            }

            while (!(*a3)(v141, &v254));
            v154 = *v148;
            if (*v148)
            {
              *v148 = 0;
              *(v148 + 8) = 0;
              WTF::fastFree(v154, v151);
            }

            v155 = v254;
            v254 = 0;
            *v148 = v155;
            LODWORD(v155) = v255;
            LODWORD(v255) = 0;
            *(v148 + 8) = v155;
            LODWORD(v155) = HIDWORD(v255);
            HIDWORD(v255) = 0;
            *(v148 + 12) = v155;
            v156 = *(v148 + 16);
            if (v156)
            {
              *(v148 + 16) = 0;
              *(v148 + 24) = 0;
              WTF::fastFree(v156, v151);
            }

            v157 = v256;
            v256 = 0;
            *(v148 + 16) = v157;
            LODWORD(v157) = v257;
            LODWORD(v257) = 0;
            *(v148 + 24) = v157;
            LODWORD(v157) = HIDWORD(v257);
            HIDWORD(v257) = 0;
            *(v148 + 28) = v157;
            v158 = v258;
            v159 = v259[0];
            *(v148 + 60) = *(v259 + 12);
            *(v148 + 32) = v158;
            *(v148 + 48) = v159;
            v160 = *(v148 + 80);
            if (v160)
            {
              *(v148 + 80) = 0;
              *(v148 + 88) = 0;
              WTF::fastFree(v160, v151);
            }

            v161 = v260;
            v260 = 0;
            *(v148 + 80) = v161;
            LODWORD(v161) = v261;
            LODWORD(v261) = 0;
            *(v148 + 88) = v161;
            LODWORD(v161) = HIDWORD(v261);
            HIDWORD(v261) = 0;
            *(v148 + 92) = v161;
            v162 = v260;
            if (v260)
            {
              v260 = 0;
              LODWORD(v261) = 0;
              WTF::fastFree(v162, v151);
            }

            v163 = v256;
            v139 = v250;
            if (v256)
            {
              v256 = 0;
              LODWORD(v257) = 0;
              WTF::fastFree(v163, v151);
            }

            result = v254;
            if (v254)
            {
              v254 = 0;
              LODWORD(v255) = 0;
              result = WTF::fastFree(result, v151);
            }
          }
        }

        v138 = v139 - 1;
      }

      while (v139);
      v164 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 5);
      while (v164 > 0)
      {
        if (v164 != 1)
        {
          v165 = a2;
          v166 = 0;
          v241 = *v8;
          *v8 = 0;
          v239 = *(v8 + 12);
          v240 = *(v8 + 8);
          *(v8 + 8) = 0;
          v244 = *(v8 + 16);
          *(v8 + 16) = 0;
          v242 = *(v8 + 28);
          v243 = *(v8 + 24);
          *(v8 + 24) = 0;
          v167 = *(v8 + 48);
          v168 = *(v8 + 60);
          v262 = *(v8 + 32);
          v263[0] = v167;
          *(v263 + 12) = v168;
          v251 = *(v8 + 80);
          *(v8 + 80) = 0;
          v248 = *(v8 + 88);
          v246 = *(v8 + 92);
          v169 = v8;
          *(v8 + 88) = 0;
          do
          {
            v170 = &v169[6 * v166];
            v171 = (v170 + 6);
            v172 = (2 * v166) | 1;
            v173 = 2 * v166 + 2;
            if (v173 < v164)
            {
              v174 = (v170 + 12);
              if ((*a3)((v170 + 6), (v170 + 12)))
              {
                v171 = v174;
                v172 = v173;
              }
            }

            WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v169, v171);
            WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt((v169 + 1), (v171 + 16));
            v175 = *(v171 + 32);
            v176 = *(v171 + 48);
            *(v169 + 60) = *(v171 + 60);
            v169[2] = v175;
            v169[3] = v176;
            WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt((v169 + 5), (v171 + 80));
            v169 = v171;
            v166 = v172;
          }

          while (v172 <= ((v164 - 2) >> 1));
          a2 = v165 - 96;
          if (v171 == v165 - 96)
          {
            v209 = *v171;
            if (*v171)
            {
              *v171 = 0;
              *(v171 + 8) = 0;
              WTF::fastFree(v209, v177);
            }

            *v171 = v241;
            *(v171 + 8) = v240;
            *(v171 + 12) = v239;
            v210 = *(v171 + 16);
            if (v210)
            {
              *(v171 + 16) = 0;
              *(v171 + 24) = 0;
              WTF::fastFree(v210, v177);
            }

            *(v171 + 16) = v244;
            *(v171 + 24) = v243;
            *(v171 + 28) = v242;
            v211 = *(v263 + 12);
            v212 = v263[0];
            *(v171 + 32) = v262;
            *(v171 + 48) = v212;
            *(v171 + 60) = v211;
            result = *(v171 + 80);
            if (result)
            {
              *(v171 + 80) = 0;
              *(v171 + 88) = 0;
              result = WTF::fastFree(result, v177);
            }

            *(v171 + 80) = v251;
            *(v171 + 88) = v248;
            *(v171 + 92) = v246;
          }

          else
          {
            WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v171, (v165 - 96));
            WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v171 + 16, (v165 - 80));
            v178 = *(v165 - 64);
            v179 = *(v165 - 48);
            *(v171 + 60) = *(v165 - 36);
            *(v171 + 32) = v178;
            *(v171 + 48) = v179;
            WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v171 + 80, (v165 - 16));
            v181 = *(v165 - 96);
            if (v181)
            {
              *(v165 - 96) = 0;
              *(v165 - 88) = 0;
              WTF::fastFree(v181, v180);
            }

            *(v165 - 96) = v241;
            *(v165 - 88) = v240;
            *(v165 - 84) = v239;
            v182 = *(v165 - 80);
            if (v182)
            {
              *(v165 - 80) = 0;
              *(v165 - 72) = 0;
              WTF::fastFree(v182, v180);
            }

            v183 = (v165 - 64);
            *(v165 - 80) = v244;
            *(v165 - 72) = v243;
            *(v165 - 68) = v242;
            v184 = v262;
            v185 = v263[0];
            *(v183 + 28) = *(v263 + 12);
            *v183 = v184;
            v183[1] = v185;
            result = *(v165 - 16);
            if (result)
            {
              *(v165 - 16) = 0;
              *(v165 - 8) = 0;
              result = WTF::fastFree(result, v180);
            }

            *(v165 - 16) = v251;
            *(v165 - 8) = v248;
            *(v165 - 4) = v246;
            v186 = v171 + 96 - v8;
            if (v186 >= 97)
            {
              v187 = (-2 - 0x5555555555555555 * (v186 >> 5)) >> 1;
              v188 = v8 + 96 * v187;
              result = (*a3)(v188, v171);
              if (result)
              {
                v190 = *v171;
                *&v189 = 0;
                v191 = *(v171 + 8);
                v192 = *(v171 + 16);
                v193 = *(v171 + 24);
                *v171 = v189;
                *(v171 + 16) = 0u;
                v254 = v190;
                v255 = v191;
                v256 = v192;
                v257 = v193;
                v194 = *(v171 + 32);
                v195 = *(v171 + 48);
                *(v259 + 12) = *(v171 + 60);
                v258 = v194;
                v259[0] = v195;
                v196 = *(v171 + 80);
                *(v171 + 80) = 0;
                v260 = v196;
                *&v194 = *(v171 + 88);
                *(v171 + 88) = 0;
                v261 = v194;
                do
                {
                  v197 = v188;
                  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v171, v188);
                  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v171 + 16, (v188 + 16));
                  v198 = *(v188 + 32);
                  v199 = *(v188 + 48);
                  *(v171 + 60) = *(v188 + 60);
                  *(v171 + 32) = v198;
                  *(v171 + 48) = v199;
                  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v171 + 80, (v188 + 80));
                  if (!v187)
                  {
                    break;
                  }

                  v187 = (v187 - 1) >> 1;
                  v188 = v8 + 96 * v187;
                  v171 = v197;
                }

                while (((*a3)(v188, &v254) & 1) != 0);
                v201 = *v197;
                if (*v197)
                {
                  *v197 = 0;
                  *(v197 + 8) = 0;
                  WTF::fastFree(v201, v200);
                }

                v202 = v254;
                v254 = 0;
                *v197 = v202;
                LODWORD(v202) = v255;
                LODWORD(v255) = 0;
                *(v197 + 8) = v202;
                LODWORD(v202) = HIDWORD(v255);
                HIDWORD(v255) = 0;
                *(v197 + 12) = v202;
                v203 = *(v197 + 16);
                if (v203)
                {
                  *(v197 + 16) = 0;
                  *(v197 + 24) = 0;
                  WTF::fastFree(v203, v200);
                }

                v204 = v256;
                v256 = 0;
                *(v197 + 16) = v204;
                LODWORD(v204) = v257;
                LODWORD(v257) = 0;
                *(v197 + 24) = v204;
                LODWORD(v204) = HIDWORD(v257);
                HIDWORD(v257) = 0;
                *(v197 + 28) = v204;
                v205 = v258;
                v206 = v259[0];
                *(v197 + 60) = *(v259 + 12);
                *(v197 + 32) = v205;
                *(v197 + 48) = v206;
                v207 = *(v197 + 80);
                if (v207)
                {
                  *(v197 + 80) = 0;
                  *(v197 + 88) = 0;
                  WTF::fastFree(v207, v200);
                  v207 = v256;
                }

                v208 = v260;
                v260 = 0;
                *(v197 + 80) = v208;
                LODWORD(v208) = v261;
                LODWORD(v261) = 0;
                *(v197 + 88) = v208;
                LODWORD(v208) = HIDWORD(v261);
                HIDWORD(v261) = 0;
                *(v197 + 92) = v208;
                if (v207)
                {
                  v256 = 0;
                  LODWORD(v257) = 0;
                  WTF::fastFree(v207, v200);
                }

                result = v254;
                if (v254)
                {
                  v254 = 0;
                  LODWORD(v255) = 0;
                  result = WTF::fastFree(result, v200);
                }
              }
            }
          }

          if (v164-- > 2)
          {
            continue;
          }
        }

        return result;
      }

LABEL_264:
      __break(1u);
    }

    v12 = v11 >> 1;
    v13 = v9 + 96 * (v11 >> 1);
    v14 = *a3;
    if (v10 > 0x3000)
    {
      v15 = v14(v8 + 96 * v12, v8);
      v16 = (*a3)(v252, v8 + 96 * v12);
      if (v15)
      {
        if (v16)
        {
          v19 = v8;
          goto LABEL_27;
        }

        std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::RTCNetwork>(v8, v8 + 96 * v12, v17, v18);
        if ((*a3)(v252, v8 + 96 * v12))
        {
          v19 = v8 + 96 * v12;
LABEL_27:
          v25 = a2 - 96;
LABEL_28:
          std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::RTCNetwork>(v19, v25, v17, v18);
        }
      }

      else if (v16)
      {
        std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::RTCNetwork>(v8 + 96 * v12, v252, v17, v18);
        if ((*a3)(v8 + 96 * v12, v8))
        {
          v19 = v8;
          v25 = v8 + 96 * v12;
          goto LABEL_28;
        }
      }

      v27 = v8 + 96 * v12 - 96;
      v28 = (*a3)(v27, v8 + 96);
      v29 = (*a3)(v247, v27);
      if (v28)
      {
        if (v29)
        {
          v32 = v8 + 96;
          goto LABEL_40;
        }

        std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::RTCNetwork>(v8 + 96, v8 + 96 * v12 - 96, v30, v31);
        if ((*a3)(v247, v8 + 96 * v12 - 96))
        {
          v32 = v8 + 96 * v12 - 96;
LABEL_40:
          v33 = a2 - 192;
LABEL_41:
          std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::RTCNetwork>(v32, v33, v30, v31);
        }
      }

      else if (v29)
      {
        std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::RTCNetwork>(v8 + 96 * v12 - 96, v247, v30, v31);
        if ((*a3)(v8 + 96 * v12 - 96, v8 + 96))
        {
          v32 = v8 + 96;
          v33 = v8 + 96 * v12 - 96;
          goto LABEL_41;
        }
      }

      v34 = v8 + 96 * v12;
      v35 = (*a3)(v34 + 96, v8 + 192);
      v36 = (*a3)(v245, v34 + 96);
      if (v35)
      {
        if (v36)
        {
          v39 = v8 + 192;
          goto LABEL_50;
        }

        std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::RTCNetwork>(v8 + 192, v34 + 96, v37, v38);
        if ((*a3)(v245, v34 + 96))
        {
          v39 = v34 + 96;
LABEL_50:
          v40 = a2 - 288;
LABEL_51:
          std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::RTCNetwork>(v39, v40, v37, v38);
        }
      }

      else if (v36)
      {
        std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::RTCNetwork>(v34 + 96, v245, v37, v38);
        if ((*a3)(v34 + 96, v8 + 192))
        {
          v39 = v8 + 192;
          v40 = v34 + 96;
          goto LABEL_51;
        }
      }

      v41 = (*a3)(v13, v27);
      v42 = (*a3)(v34 + 96, v13);
      if (v41)
      {
        if (v42)
        {
          v43 = v34 + 96;
          v44 = v27;
          goto LABEL_60;
        }

        std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::RTCNetwork>(v27, v13, v22, v23);
        if ((*a3)(v34 + 96, v13))
        {
          v43 = v34 + 96;
          v44 = v13;
LABEL_60:
          std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::RTCNetwork>(v44, v43, v22, v23);
        }
      }

      else if (v42)
      {
        std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::RTCNetwork>(v13, v34 + 96, v22, v23);
        if ((*a3)(v13, v27))
        {
          v44 = v27;
          v43 = v13;
          goto LABEL_60;
        }
      }

      v24 = v8;
      v26 = v13;
      goto LABEL_62;
    }

    v20 = v14(v8, v8 + 96 * v12);
    v21 = (*a3)(v252, v8);
    if (v20)
    {
      if (v21)
      {
        v24 = v8 + 96 * v12;
      }

      else
      {
        std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::RTCNetwork>(v8 + 96 * v12, v8, v22, v23);
        if (!(*a3)(v252, v8))
        {
          goto LABEL_63;
        }

        v24 = v8;
      }

      v26 = a2 - 96;
    }

    else
    {
      if (!v21)
      {
        goto LABEL_63;
      }

      std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::RTCNetwork>(v8, v252, v22, v23);
      if (!(*a3)(v8, v8 + 96 * v12))
      {
        goto LABEL_63;
      }

      v24 = v8 + 96 * v12;
      v26 = v8;
    }

LABEL_62:
    std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::RTCNetwork>(v24, v26, v22, v23);
LABEL_63:
    --a4;
    if (a5 & 1) != 0 || ((*a3)(v8 - 96, v8))
    {
      v45 = 0;
      v46 = *v8;
      v23.n128_u64[0] = 0;
      v47 = *(v8 + 8);
      *v8 = v23;
      v254 = v46;
      v255 = v47;
      v48 = *(v8 + 16);
      v49 = *(v8 + 24);
      *(v8 + 16) = 0u;
      v256 = v48;
      v257 = v49;
      v50 = *(v8 + 32);
      v51 = *(v8 + 48);
      v52 = *(v8 + 60);
      v53 = *(v8 + 80);
      *(v8 + 80) = 0;
      v260 = v53;
      *(v259 + 12) = v52;
      v258 = v50;
      v259[0] = v51;
      *&v50 = *(v8 + 88);
      *(v8 + 88) = 0;
      v261 = v50;
      do
      {
        v54 = v8 + v45 + 96;
        if (v54 == a2)
        {
          goto LABEL_264;
        }

        v45 += 96;
      }

      while (((*a3)(v54, &v254) & 1) != 0);
      v58 = v8 + v45;
      v59 = a2;
      if (v45 != 96)
      {
        while (v59 != v8)
        {
          v59 -= 96;
          if ((*a3)(v59, &v254))
          {
            goto LABEL_75;
          }
        }

        goto LABEL_264;
      }

      v59 = a2;
      do
      {
        if (v58 >= v59)
        {
          break;
        }

        v59 -= 96;
      }

      while (((*a3)(v59, &v254) & 1) == 0);
LABEL_75:
      v9 = v8 + v45;
      if (v58 < v59)
      {
        v60 = v59;
        do
        {
          std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::RTCNetwork>(v9, v60, v56, v57);
          do
          {
            v9 += 96;
            if (v9 == a2)
            {
              goto LABEL_264;
            }
          }

          while (((*a3)(v9, &v254) & 1) != 0);
          do
          {
            if (v60 == v8)
            {
              goto LABEL_264;
            }

            v60 -= 96;
          }

          while (!(*a3)(v60, &v254));
        }

        while (v9 < v60);
      }

      v61 = (v9 - 96);
      if (v9 - 96 != v8)
      {
        WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v8, (v9 - 96));
        WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v8 + 16, (v9 - 80));
        v62 = *(v9 - 64);
        v63 = *(v9 - 48);
        *(v8 + 60) = *(v9 - 36);
        *(v8 + 32) = v62;
        *(v8 + 48) = v63;
        WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v8 + 80, (v9 - 16));
      }

      v64 = *v61;
      if (*v61)
      {
        *(v9 - 96) = 0;
        *(v9 - 88) = 0;
        WTF::fastFree(v64, v55);
      }

      v65 = v254;
      v254 = 0;
      *(v9 - 96) = v65;
      LODWORD(v65) = v255;
      LODWORD(v255) = 0;
      *(v9 - 88) = v65;
      LODWORD(v65) = HIDWORD(v255);
      HIDWORD(v255) = 0;
      *(v9 - 84) = v65;
      v66 = *(v9 - 80);
      if (v66)
      {
        *(v9 - 80) = 0;
        *(v9 - 72) = 0;
        WTF::fastFree(v66, v55);
      }

      v67 = v256;
      v256 = 0;
      *(v9 - 80) = v67;
      LODWORD(v67) = v257;
      LODWORD(v257) = 0;
      *(v9 - 72) = v67;
      LODWORD(v67) = HIDWORD(v257);
      HIDWORD(v257) = 0;
      *(v9 - 68) = v67;
      v68 = v258;
      v69 = v259[0];
      *(v9 - 36) = *(v259 + 12);
      *(v9 - 64) = v68;
      *(v9 - 48) = v69;
      v70 = *(v9 - 16);
      if (v70)
      {
        *(v9 - 16) = 0;
        *(v9 - 8) = 0;
        WTF::fastFree(v70, v55);
      }

      v71 = v260;
      v260 = 0;
      *(v9 - 16) = v71;
      LODWORD(v71) = v261;
      LODWORD(v261) = 0;
      *(v9 - 8) = v71;
      LODWORD(v71) = HIDWORD(v261);
      HIDWORD(v261) = 0;
      *(v9 - 4) = v71;
      v72 = v260;
      if (v260)
      {
        v260 = 0;
        LODWORD(v261) = 0;
        WTF::fastFree(v72, v55);
      }

      v73 = v256;
      if (v256)
      {
        v256 = 0;
        LODWORD(v257) = 0;
        WTF::fastFree(v73, v55);
      }

      v74 = v254;
      if (v254)
      {
        v254 = 0;
        LODWORD(v255) = 0;
        WTF::fastFree(v74, v55);
      }

      if (v58 < v59)
      {
        goto LABEL_100;
      }

      v75 = std::__insertion_sort_incomplete[abi:sn200100]<std::_RangeAlgPolicy,BOOL (*&)(WebKit::RTCNetwork const&,WebKit::RTCNetwork const&),WebKit::RTCNetwork*>(v8, v9 - 96, a3);
      result = std::__insertion_sort_incomplete[abi:sn200100]<std::_RangeAlgPolicy,BOOL (*&)(WebKit::RTCNetwork const&,WebKit::RTCNetwork const&),WebKit::RTCNetwork*>(v9, a2, a3);
      if (result)
      {
        a2 = v9 - 96;
        if (v75)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v75)
      {
LABEL_100:
        result = std::__introsort<std::_RangeAlgPolicy,BOOL (*&)(WebKit::RTCNetwork const&,WebKit::RTCNetwork const&),WebKit::RTCNetwork*,false>(v8, v9 - 96, a3, a4, a5 & 1);
        goto LABEL_101;
      }
    }

    else
    {
      v76 = *v8;
      v23.n128_u64[0] = 0;
      v77 = *(v8 + 8);
      *v8 = v23;
      v254 = v76;
      v255 = v77;
      v78 = *(v8 + 16);
      v79 = *(v8 + 24);
      *(v8 + 16) = 0u;
      v256 = v78;
      v257 = v79;
      v80 = *(v8 + 32);
      v81 = *(v8 + 48);
      *(v259 + 12) = *(v8 + 60);
      v258 = v80;
      v259[0] = v81;
      v82 = *(v8 + 80);
      *(v8 + 80) = 0;
      v260 = v82;
      *&v80 = *(v8 + 88);
      *(v8 + 88) = 0;
      v261 = v80;
      if ((*a3)(&v254, v252))
      {
        v9 = v8;
        while (1)
        {
          v9 += 96;
          if (v9 == a2)
          {
            goto LABEL_264;
          }

          if ((*a3)(&v254, v9))
          {
            goto LABEL_110;
          }
        }
      }

      v86 = v8 + 96;
      do
      {
        v9 = v86;
        if (v86 >= a2)
        {
          break;
        }

        v87 = (*a3)(&v254, v86);
        v86 = v9 + 96;
      }

      while (!v87);
LABEL_110:
      v88 = a2;
      if (v9 < a2)
      {
        v88 = a2;
        while (v88 != v8)
        {
          v88 -= 96;
          if (((*a3)(&v254, v88) & 1) == 0)
          {
            goto LABEL_120;
          }
        }

        goto LABEL_264;
      }

LABEL_120:
      if (v9 < v88)
      {
        std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::RTCNetwork>(v9, v88, v84, v85);
        do
        {
          v9 += 96;
          if (v9 == a2)
          {
            goto LABEL_264;
          }
        }

        while (!(*a3)(&v254, v9));
        while (v88 != v8)
        {
          v88 -= 96;
          if (((*a3)(&v254, v88) & 1) == 0)
          {
            goto LABEL_120;
          }
        }

        goto LABEL_264;
      }

      v89 = (v9 - 96);
      if (v9 - 96 != v8)
      {
        WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v8, (v9 - 96));
        WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v8 + 16, (v9 - 80));
        v90 = *(v9 - 64);
        v91 = *(v9 - 48);
        *(v8 + 60) = *(v9 - 36);
        *(v8 + 32) = v90;
        *(v8 + 48) = v91;
        WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v8 + 80, (v9 - 16));
      }

      v92 = *v89;
      if (*v89)
      {
        *(v9 - 96) = 0;
        *(v9 - 88) = 0;
        WTF::fastFree(v92, v83);
      }

      v93 = v254;
      v254 = 0;
      *(v9 - 96) = v93;
      LODWORD(v93) = v255;
      LODWORD(v255) = 0;
      *(v9 - 88) = v93;
      LODWORD(v93) = HIDWORD(v255);
      HIDWORD(v255) = 0;
      *(v9 - 84) = v93;
      v94 = *(v9 - 80);
      if (v94)
      {
        *(v9 - 80) = 0;
        *(v9 - 72) = 0;
        WTF::fastFree(v94, v83);
      }

      v95 = v256;
      v256 = 0;
      *(v9 - 80) = v95;
      LODWORD(v95) = v257;
      LODWORD(v257) = 0;
      *(v9 - 72) = v95;
      LODWORD(v95) = HIDWORD(v257);
      HIDWORD(v257) = 0;
      *(v9 - 68) = v95;
      v96 = v258;
      v97 = v259[0];
      *(v9 - 36) = *(v259 + 12);
      *(v9 - 64) = v96;
      *(v9 - 48) = v97;
      v98 = *(v9 - 16);
      if (v98)
      {
        *(v9 - 16) = 0;
        *(v9 - 8) = 0;
        WTF::fastFree(v98, v83);
      }

      v99 = v260;
      v260 = 0;
      *(v9 - 16) = v99;
      LODWORD(v99) = v261;
      LODWORD(v261) = 0;
      *(v9 - 8) = v99;
      LODWORD(v99) = HIDWORD(v261);
      HIDWORD(v261) = 0;
      *(v9 - 4) = v99;
      v100 = v260;
      if (v260)
      {
        v260 = 0;
        LODWORD(v261) = 0;
        WTF::fastFree(v100, v83);
      }

      v101 = v256;
      if (v256)
      {
        v256 = 0;
        LODWORD(v257) = 0;
        WTF::fastFree(v101, v83);
      }

      result = v254;
      if (v254)
      {
        v254 = 0;
        LODWORD(v255) = 0;
        result = WTF::fastFree(result, v83);
      }

LABEL_101:
      a5 = 0;
    }
  }

  v102 = (*a3)(v9 + 96, v9);
  result = (*a3)(v252, v9 + 96);
  if ((v102 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v108 = v9 + 96;
    v109 = v252;
    goto LABEL_243;
  }

  if (result)
  {
    goto LABEL_146;
  }

  std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::RTCNetwork>(v9, v9 + 96, v110, v111);
  result = (*a3)(v252, v9 + 96);
  if (result)
  {
    v103 = v9 + 96;
    goto LABEL_147;
  }

  return result;
}

WTF *std::__sort4[abi:sn200100]<std::_RangeAlgPolicy,BOOL (*&)(WebKit::RTCNetwork const&,WebKit::RTCNetwork const&),WebKit::RTCNetwork*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (**a5)(uint64_t, uint64_t))
{
  v10 = (*a5)(a2, a1);
  v11 = (*a5)(a3, a2);
  if (v10)
  {
    if (v11)
    {
      v14 = a1;
LABEL_9:
      v15 = a3;
      goto LABEL_10;
    }

    std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::RTCNetwork>(a1, a2, v12, v13);
    if ((*a5)(a3, a2))
    {
      v14 = a2;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::RTCNetwork>(a2, a3, v12, v13);
    if ((*a5)(a2, a1))
    {
      v14 = a1;
      v15 = a2;
LABEL_10:
      std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::RTCNetwork>(v14, v15, v12, v13);
    }
  }

  result = (*a5)(a4, a3);
  if (result)
  {
    std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::RTCNetwork>(a3, a4, v17, v18);
    result = (*a5)(a3, a2);
    if (result)
    {
      std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::RTCNetwork>(a2, a3, v19, v20);
      result = (*a5)(a2, a1);
      if (result)
      {

        return std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::RTCNetwork>(a1, a2, v21, v22);
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:sn200100]<std::_RangeAlgPolicy,BOOL (*&)(WebKit::RTCNetwork const&,WebKit::RTCNetwork const&),WebKit::RTCNetwork*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 5);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v18 = a2 - 96;
        v19 = (*a3)(a1 + 96, a1);
        v20 = (*a3)(v18, a1 + 96);
        if (v19)
        {
          if (v20)
          {
            v9 = a1;
          }

          else
          {
            std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::RTCNetwork>(a1, a1 + 96, v7, v8);
            if (!(*a3)(v18, a1 + 96))
            {
              return 1;
            }

            v9 = a1 + 96;
          }

          v10 = v18;
          goto LABEL_30;
        }

        if (!v20)
        {
          return 1;
        }

        v16 = a1 + 96;
        v17 = v18;
        break;
      case 4:
        std::__sort4[abi:sn200100]<std::_RangeAlgPolicy,BOOL (*&)(WebKit::RTCNetwork const&,WebKit::RTCNetwork const&),WebKit::RTCNetwork*,0>(a1, a1 + 96, a1 + 192, a2 - 96, a3);
        return 1;
      case 5:
        v11 = a2 - 96;
        std::__sort4[abi:sn200100]<std::_RangeAlgPolicy,BOOL (*&)(WebKit::RTCNetwork const&,WebKit::RTCNetwork const&),WebKit::RTCNetwork*,0>(a1, a1 + 96, a1 + 192, a1 + 288, a3);
        if (!(*a3)(v11, a1 + 288))
        {
          return 1;
        }

        std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::RTCNetwork>(a1 + 288, v11, v12, v13);
        if (!(*a3)(a1 + 288, a1 + 192))
        {
          return 1;
        }

        std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::RTCNetwork>(a1 + 192, a1 + 288, v14, v15);
        if (!(*a3)(a1 + 192, a1 + 96))
        {
          return 1;
        }

        v16 = a1 + 96;
        v17 = a1 + 192;
        break;
      default:
        goto LABEL_16;
    }

    std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::RTCNetwork>(v16, v17, v7, v8);
    if ((*a3)(a1 + 96, a1))
    {
      v10 = a1 + 96;
      v9 = a1;
      goto LABEL_30;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(a2 - 96, a1))
    {
      v9 = a1;
      v10 = a2 - 96;
LABEL_30:
      std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::RTCNetwork>(v9, v10, v7, v8);
      return 1;
    }

    return 1;
  }

LABEL_16:
  v21 = a1 + 192;
  v22 = (*a3)(a1 + 96, a1);
  v23 = (*a3)(a1 + 192, a1 + 96);
  if (v22)
  {
    if (v23)
    {
      v26 = a1;
    }

    else
    {
      std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::RTCNetwork>(a1, a1 + 96, v24, v25);
      if (!(*a3)(a1 + 192, a1 + 96))
      {
        goto LABEL_35;
      }

      v26 = a1 + 96;
    }

    v27 = a1 + 192;
    goto LABEL_34;
  }

  if (v23)
  {
    std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::RTCNetwork>(a1 + 96, a1 + 192, v24, v25);
    if ((*a3)(a1 + 96, a1))
    {
      v27 = a1 + 96;
      v26 = a1;
LABEL_34:
      std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::RTCNetwork>(v26, v27, v24, v25);
    }
  }

LABEL_35:
  v28 = a1 + 288;
  if (a1 + 288 == a2)
  {
    return 1;
  }

  v29 = 0;
  v30 = 0;
  while (1)
  {
    if ((*a3)(v28, v21))
    {
      *&v31 = 0;
      v32 = *(v28 + 8);
      v56 = *v28;
      v57 = v32;
      v33 = *(v28 + 16);
      v34 = *(v28 + 24);
      *v28 = v31;
      *(v28 + 16) = 0u;
      v58 = v33;
      v59 = v34;
      v35 = *(v28 + 48);
      v60 = *(v28 + 32);
      v61[0] = v35;
      *(v61 + 12) = *(v28 + 60);
      v36 = *(v28 + 80);
      *(v28 + 80) = 0;
      v62 = v36;
      v37 = *(v28 + 88);
      *(v28 + 88) = 0;
      v38 = v29;
      v63 = v37;
      while (1)
      {
        v39 = a1 + v38;
        WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + v38 + 288, (a1 + v38 + 192));
        WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v39 + 304, (v39 + 208));
        v40 = *(a1 + v38 + 240);
        *(v39 + 320) = *(v39 + 224);
        *(v39 + 336) = v40;
        *(v39 + 348) = *(v39 + 252);
        WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v39 + 368, (v39 + 272));
        if (v38 == -192)
        {
          break;
        }

        v38 -= 96;
        if (((*a3)(&v56, v39 + 96) & 1) == 0)
        {
          v42 = a1 + v38 + 288;
          goto LABEL_43;
        }
      }

      v42 = a1;
LABEL_43:
      v43 = *v42;
      if (*v42)
      {
        *v42 = 0;
        *(v42 + 8) = 0;
        WTF::fastFree(v43, v41);
      }

      *v42 = v56;
      v44 = v57;
      v45 = HIDWORD(v57);
      v56 = 0;
      v57 = 0;
      *(v42 + 8) = v44;
      *(v42 + 12) = v45;
      v46 = *(v39 + 208);
      if (v46)
      {
        *(v39 + 208) = 0;
        *(v42 + 24) = 0;
        WTF::fastFree(v46, v41);
      }

      *(v39 + 208) = v58;
      v47 = v59;
      v48 = HIDWORD(v59);
      v58 = 0;
      v59 = 0;
      *(v42 + 24) = v47;
      *(v42 + 28) = v48;
      *(v39 + 252) = *(v61 + 12);
      v49 = v61[0];
      *(v39 + 224) = v60;
      *(v39 + 240) = v49;
      v50 = *(v39 + 272);
      if (v50)
      {
        *(v39 + 272) = 0;
        *(v42 + 88) = 0;
        WTF::fastFree(v50, v41);
      }

      *(v39 + 272) = v62;
      v51 = v63;
      v52 = HIDWORD(v63);
      v62 = 0;
      v63 = 0;
      *(v42 + 88) = v51;
      *(v42 + 92) = v52;
      v53 = v58;
      if (v58)
      {
        v58 = 0;
        LODWORD(v59) = 0;
        WTF::fastFree(v53, v41);
      }

      v54 = v56;
      if (v56)
      {
        v56 = 0;
        LODWORD(v57) = 0;
        WTF::fastFree(v54, v41);
      }

      if (++v30 == 8)
      {
        return v28 + 96 == a2;
      }
    }

    v21 = v28;
    v29 += 96;
    v28 += 96;
    if (v28 == a2)
    {
      return 1;
    }
  }
}

WTF *std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::RTCNetwork>(uint64_t a1, uint64_t a2, double a3, __n128 a4)
{
  v6 = *a1;
  a4.n128_u64[0] = 0;
  v7 = *(a1 + 8);
  *a1 = a4;
  v8 = a1 + 16;
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *(a1 + 16) = 0u;
  v20 = *(a1 + 32);
  *v21 = *(a1 + 48);
  *&v21[12] = *(a1 + 60);
  v11 = a1 + 80;
  v12 = *(a1 + 80);
  v13 = *(a1 + 88);
  *(a1 + 80) = 0u;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v8, (a2 + 16));
  v14 = *(a2 + 32);
  v15 = *(a2 + 48);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 32) = v14;
  *(a1 + 48) = v15;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v11, (a2 + 80));
  v17 = *a2;
  if (*a2)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    WTF::fastFree(v17, v16);
  }

  *a2 = v6;
  *(a2 + 8) = v7;
  v18 = *(a2 + 16);
  if (v18)
  {
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    WTF::fastFree(v18, v16);
  }

  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v20;
  *(a2 + 48) = *v21;
  *(a2 + 60) = *&v21[12];
  result = *(a2 + 80);
  if (result)
  {
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    result = WTF::fastFree(result, v16);
  }

  *(a2 + 80) = v12;
  *(a2 + 88) = v13;
  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseINS_6StringEvLj0EE11whenSettledIZN6WebKit18NetworkRTCProvider16getInterfaceNameEONS_3URLENS_23ObjectIdentifierGenericINS6_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEbbON7WebCore17RegistrableDomainEONS_17CompletionHandlerIFvOS3_EEEE3__0EEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedIS3_NS_6detail15VoidPlaceholderEEEE_vJS13_EED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F110C708;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseINS_6StringEvLj0EE11whenSettledIZN6WebKit18NetworkRTCProvider16getInterfaceNameEONS_3URLENS_23ObjectIdentifierGenericINS6_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEbbON7WebCore17RegistrableDomainEONS_17CompletionHandlerIFvOS3_EEEE3__0EEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedIS3_NS_6detail15VoidPlaceholderEEEE_vJS13_EED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110C708;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *_ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseINS_6StringEvLj0EE11whenSettledIZN6WebKit18NetworkRTCProvider16getInterfaceNameEONS_3URLENS_23ObjectIdentifierGenericINS6_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEbbON7WebCore17RegistrableDomainEONS_17CompletionHandlerIFvOS3_EEEE3__0EEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedIS3_NS_6detail15VoidPlaceholderEEEE_vJS13_EE4callES13_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v4 = 0;
  }

  else
  {
    v4 = *a2;
    *a2 = 0;
  }

  v8[3] = v2;
  v8[4] = v3;
  v8[0] = v4;
  v5 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v5 + 16))(v5, v8);
  (*(*v5 + 8))(v5);
  result = v8[0];
  v8[0] = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v6);
    }
  }

  return result;
}

uint64_t WTF::NativePromise<WTF::String,void,0u>::ThenCallback<false,void>::~ThenCallback(uint64_t a1)
{
  *a1 = &unk_1F110C730;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F110C760;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v3 + 8));
  }

  return a1;
}

{
  *a1 = &unk_1F110C730;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F110C760;
  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v4 + 8));
  }

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::NativePromise<WTF::String,void,0u>::ThenCallback<false,void>::disconnect(uint64_t a1)
{
  *(a1 + 56) = 1;
  result = *(a1 + 72);
  *(a1 + 72) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t WTF::NativePromise<WTF::String,void,0u>::ThenCallback<false,void>::processResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64[1] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 8);
  v7 = WTF::NativePromiseBase::logChannel(a1);
  if (*v7)
  {
    v8 = v7[16] >= 4u;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = v7;
    if (v6)
    {
      v10 = "Rejecting";
    }

    else
    {
      v10 = "Resolving";
    }

    v43 = v10;
    WTF::String::String(&v52, v10);
    WTF::String::String(&v51, " then() call made from ");
    WTF::Logger::LogSiteIdentifier::toString(&v50, (a1 + 24));
    WTF::String::String(&v49, "[");
    WTF::LogArgument<WTF::NativePromise<WTF::String,void,0u>>::toString(a2, &v48);
    WTF::String::String(&v47, " callback:");
    WTF::LogArgument<void const*>::toString();
    WTF::String::String(&v45, "]");
    result = WTF::tryMakeString<WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String>(&v52, &v51, &v50, &v49, &v48, &v47, &v46, &v45, &v53);
    if (!v53)
    {
      __break(0xC471u);
      return result;
    }

    v13 = v45;
    v45 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v12);
    }

    v14 = v46;
    v46 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v12);
    }

    v15 = v47;
    v47 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v12);
    }

    v16 = v48;
    v48 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v12);
    }

    v17 = v49;
    v49 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v12);
    }

    v18 = v50;
    v50 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v12);
    }

    v19 = v51;
    v51 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v12);
    }

    v20 = v52;
    v52 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v12);
    }

    v21 = *(v9 + 4);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (v22)
    {
      WTF::String::utf8();
      v24 = v44[0] ? v44[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v24;
      _os_log_impl(&dword_19D52D000, v21, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v22 = v44[0];
      v44[0] = 0;
      if (v22)
      {
        if (*v22 == 1)
        {
          v22 = WTF::fastFree(v22, v23);
        }

        else
        {
          --*v22;
        }
      }
    }

    if (*v9 && v9[16] >= 4u)
    {
      v25 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v26 = *v25;
        if (v26)
        {
          break;
        }

        v27 = *v25;
        atomic_compare_exchange_strong_explicit(v25, &v27, v26 | 1, memory_order_acquire, memory_order_acquire);
        if (v27 == v26)
        {
          v28 = WTF::Logger::observers(v22);
          v29 = *(v28 + 12);
          if (v29)
          {
            v30 = *v28;
            v31 = *v28 + 8 * v29;
            do
            {
              v32 = *v30;
              *buf = 0;
              WTF::String::String(&buf[8], v43);
              LODWORD(v55) = 0;
              WTF::String::String(&v56, " then() call made from ");
              v57 = 0;
              WTF::Logger::LogSiteIdentifier::toString(&v58, (a1 + 24));
              v59 = 0;
              WTF::String::String(v60, "[");
              v60[2] = 0;
              WTF::LogArgument<WTF::NativePromise<WTF::String,void,0u>>::toString(a2, &v61);
              v62 = 0;
              WTF::String::String(v63, " callback:");
              v63[2] = 0;
              WTF::LogArgument<void const*>::toString();
              v63[6] = 0;
              WTF::String::String(v64, "]");
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v44, buf, 8uLL);
              (*(*v32 + 16))(v32, v9, 4, v44);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v44, v33);
              for (i = 120; i != -8; i -= 16)
              {
                v35 = *&buf[i];
                *&buf[i] = 0;
                if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v35, v23);
                }
              }

              ++v30;
            }

            while (v30 != v31);
          }

          v36 = 1;
          atomic_compare_exchange_strong_explicit(v25, &v36, 0, memory_order_release, memory_order_relaxed);
          if (v36 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v37 = v53;
    v53 = 0;
    if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v37, v23);
    }
  }

  v38 = 0;
  v39 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 57), &v38, 1u, memory_order_acquire, memory_order_acquire);
  if (v38)
  {
    MEMORY[0x19EB01E30](a1 + 57);
  }

  v40 = *(a1 + 64);
  *(a1 + 64) = 0;
  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  atomic_compare_exchange_strong_explicit((a1 + 57), &v39, 0, memory_order_release, memory_order_relaxed);
  if (v39 != 1)
  {
    WTF::Lock::unlockSlow((a1 + 57));
  }

  (*(**(a1 + 72) + 16))(*(a1 + 72), a3);
  if (v40)
  {
    *buf = 0uLL;
    v55 = "<chained completion promise>";
    v56 = 0;
    WTF::NativePromiseProducer<void,void,0u>::resolve<std::enable_if<true,void>>(v40, buf);
  }

  result = *(a1 + 72);
  *(a1 + 72) = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v40)
  {
    v41 = WTF::NativePromiseProducer<void,void,0u>::~NativePromiseProducer(v40);
    return WTF::fastFree(v41, v42);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::RTCDataChannelRemoteManagerProxy::registerConnectionToWebProcess(WebKit::NetworkConnectionToWebProcess &)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F110C790;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RTCDataChannelRemoteManagerProxy::registerConnectionToWebProcess(WebKit::NetworkConnectionToWebProcess &)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110C790;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::Detail::CallableWrapper<WebKit::RTCDataChannelRemoteManagerProxy::registerConnectionToWebProcess(WebKit::NetworkConnectionToWebProcess &)::$_0,void>::call(_DWORD *result)
{
  v1 = *(result + 3);
  if (v1 == -1 || !v1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE375C4);
  }

  v2 = result;
  v3 = *(result + 1);
  v4 = *(v3 + 24);
  if (!v4)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v3 + 24));
    v4 = *(v3 + 24);
    v1 = *(v2 + 3);
  }

  v5 = *(v4 - 8);
  v6 = (v1 + ~(v1 << 32)) ^ ((v1 + ~(v1 << 32)) >> 22);
  v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
  v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
  v9 = v5 & ((v8 >> 31) ^ v8);
  v10 = (v4 + 16 * v9);
  v11 = *v10;
  if (*v10)
  {
    v12 = 0;
    v13 = 1;
    while (v11 != v1)
    {
      if (v11 == -1)
      {
        v12 = v10;
      }

      v9 = (v9 + v13) & v5;
      v10 = (v4 + 16 * v9);
      v11 = *v10;
      ++v13;
      if (!*v10)
      {
        if (v12)
        {
          *v12 = 0;
          v12[1] = 0;
          --*(*(v3 + 24) - 16);
          v1 = *(v2 + 3);
          v10 = v12;
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    *v10 = v1;
    v10[1] = *(v2 + 4);
    v14 = *(v3 + 24);
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
      if (v17 > 2 * v16)
      {
        return result;
      }
    }

    else if (3 * v17 > 4 * v16)
    {
      return result;
    }

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v3 + 24));
  }

  return result;
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v3);
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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
      if ((*v10 + 1) >= 2)
      {
        v11 = *a1;
        if (*a1)
        {
          v12 = *(v11 - 8);
        }

        else
        {
          v12 = 0;
        }

        v13 = (*v10 + ~(*v10 << 32)) ^ ((*v10 + ~(*v10 << 32)) >> 22);
        v14 = 9 * ((v13 + ~(v13 << 13)) ^ ((v13 + ~(v13 << 13)) >> 8));
        v15 = (v14 ^ (v14 >> 15)) + ~((v14 ^ (v14 >> 15)) << 27);
        v16 = v12 & ((v15 >> 31) ^ v15);
        v17 = 1;
        do
        {
          v18 = v16;
          v19 = *(v11 + 16 * v16);
          v16 = (v16 + v17++) & v12;
        }

        while (v19);
        *(v11 + 16 * v18) = *v10;
      }
    }
  }

  else if (!v4)
  {
    return result;
  }

  return WTF::fastFree((v4 - 16), v8);
}

void *WTF::Detail::CallableWrapper<WebKit::RTCDataChannelRemoteManagerProxy::unregisterConnectionToWebProcess(WebKit::NetworkConnectionToWebProcess &)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F110C7B8;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RTCDataChannelRemoteManagerProxy::unregisterConnectionToWebProcess(WebKit::NetworkConnectionToWebProcess &)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110C7B8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t *WTF::Detail::CallableWrapper<WebKit::RTCDataChannelRemoteManagerProxy::unregisterConnectionToWebProcess(WebKit::NetworkConnectionToWebProcess &)::$_0,void>::call(uint64_t a1)
{
  v2 = *(a1 + 8);
  v5 = *(v2 + 24);
  result = (v2 + 24);
  v4 = v5;
  if (v5)
  {
    v6 = *(a1 + 24);
    if (v6 == -1 || !v6)
    {
      __break(0xC471u);
      JUMPOUT(0x19DE37938);
    }

    v7 = *(v4 - 8);
    v8 = (v6 + ~(v6 << 32)) ^ ((v6 + ~(v6 << 32)) >> 22);
    v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
    v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
    v11 = v7 & ((v10 >> 31) ^ v10);
    v12 = *(v4 + 16 * v11);
    if (v12 != v6)
    {
      v13 = 1;
      while (v12)
      {
        v11 = (v11 + v13) & v7;
        v12 = *(v4 + 16 * v11);
        ++v13;
        if (v12 == v6)
        {
          goto LABEL_10;
        }
      }

      v11 = *(v4 - 4);
    }

LABEL_10:
    v14 = *(v4 - 4);
    if (v11 != v14)
    {
      *(v4 + 16 * v11) = -1;
      v15 = vadd_s32(*(v4 - 16), 0xFFFFFFFF00000001);
      *(v4 - 16) = v15;
      if (6 * v15.i32[1] < v14 && v14 >= 9)
      {
        return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(result, v14 >> 1);
      }
    }
  }

  return result;
}

uint64_t IPC::Connection::send<Messages::RTCDataChannelRemoteManager::Close>(uint64_t *a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 921;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = a3;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v18 = v10;
  v11 = *a2;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, **a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, v11[1]);
  v13 = IPC::Connection::sendMessageImpl(a1, &v18, a4, a5);
  v14 = v18;
  v18 = 0;
  if (v14)
  {
    IPC::Encoder::~Encoder(v14, v12);
    bmalloc::api::tzoneFree(v16, v17);
  }

  return v13;
}

atomic_uint *WTF::ThreadSafeRefCounted<WebKit::CallbackAggregator,(WTF::DestructionThread)2>::deref(atomic_uint *result)
{
  add = atomic_fetch_add(result, 0xFFFFFFFF);
  if (add == 1)
  {
    v2 = result;
    atomic_store(add, result);
    v3 = WTF::fastMalloc(0x10);
    *v3 = &unk_1F110C7E0;
    *(v3 + 1) = v2;
    v4 = v3;
    WTF::ensureOnMainRunLoop();
    result = v4;
    if (v4)
    {
      return (*(*v4 + 8))(v4);
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WTF::ThreadSafeRefCounted<WebKit::CallbackAggregator,(WTF::DestructionThread)2>::deref(void)::{lambda(void)#1},void>::call(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = *(v1 + 1);
    *(v1 + 1) = 0;
    (*(*v2 + 16))(v2, v1 + 3, v1 + 44, v1 + 2);
    (*(*v2 + 8))(v2);
    v4 = *(v1 + 2);
    if (v4)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::RTCNetwork>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::RTCNetwork>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::RTCNetwork,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::RTCNetwork>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, v3);
    }

    v5 = *(v1 + 1);
    *(v1 + 1) = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    return WTF::fastFree(v1, v3);
  }

  return result;
}

atomic_uint *WTF::Detail::CallableWrapper<WebKit::NetworkRTCSharedMonitor::NetworkRTCSharedMonitor(void)::$_0,void>::call()
{
  {
    WebKit::NetworkRTCSharedMonitor::NetworkRTCSharedMonitor(&WebKit::networkSharedMonitor(void)::networkSharedMonitor);
  }

  return WebKit::NetworkRTCSharedMonitor::updateNetworks(&WebKit::networkSharedMonitor(void)::networkSharedMonitor);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkRTCSharedMonitor::updateNetworks(void)::$_0,void,WebKit::WebRTCNetwork::IPAddress &&,WebKit::WebRTCNetwork::IPAddress &,WTF::HashMap<WTF::String,WebKit::RTCNetwork,WTF::DefaultHash<WTF::HashMap>,WTF::HashTraits<WTF::HashMap>,WTF::DefaultHash<WTF::HashMap><WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&>::call(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t *a4)
{
  {
    WebKit::NetworkRTCSharedMonitor::NetworkRTCSharedMonitor(&WebKit::networkSharedMonitor(void)::networkSharedMonitor);
  }

  if ((byte_1EB01E040 & 1) == 0)
  {
    byte_1EB01E040 = 1;
    v33 = *a4;
    *a4 = 0;
    v34 = qword_1EB01E088;
    qword_1EB01E088 = v33;
    if (v34)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::RTCNetwork>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::RTCNetwork>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::RTCNetwork,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::RTCNetwork>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v34, a2);
      v33 = qword_1EB01E088;
    }

    v35 = *a2;
    dword_1EB01E068 = a2[4];
    xmmword_1EB01E058 = v35;
    v36 = *a3;
    dword_1EB01E07C = *(a3 + 16);
    xmmword_1EB01E06C = v36;
    v37 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::RTCNetwork>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::RTCNetwork>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::RTCNetwork,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::RTCNetwork>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(v33);
    if (v33)
    {
      v39 = &v33[13 * *(v33 - 1)];
    }

    else
    {
      v39 = 0;
    }

    if (v39 != v37)
    {
      v50 = dword_1EB01E080;
      do
      {
        *(v37 + 34) = ++v50;
        do
        {
          v37 += 13;
        }

        while (v37 != v38 && (*v37 + 1) <= 1);
      }

      while (v37 != v39);
      dword_1EB01E080 = v50;
    }

    goto LABEL_64;
  }

  v122 = a3;
  v123 = a2;
  v124 = a4;
  v7 = *a4;
  v8 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::RTCNetwork>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::RTCNetwork>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::RTCNetwork,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::RTCNetwork>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(v7);
  v11 = v8;
  v12 = v9;
  if (v7)
  {
    v7 += 13 * *(v7 - 1);
  }

  if (v7 == v8)
  {
    goto LABEL_54;
  }

  LOBYTE(v13) = 0;
  v14 = &dword_1EB01E000;
  v125 = v7;
  do
  {
    v15 = *(v14 + 17);
    if (!v15)
    {
      goto LABEL_36;
    }

    v16 = *v11;
    if (*v11 == -1)
    {
      goto LABEL_174;
    }

    if (!v16)
    {
      __break(0xC471u);
      JUMPOUT(0x19DE38740);
    }

    v17 = *(v15 - 8);
    v18 = *(v16 + 4);
    v19 = v18 < 0x100 ? WTF::StringImpl::hashSlowCase(v16) : v18 >> 8;
    for (i = 0; ; v19 = ++i + v21)
    {
      v21 = v19 & v17;
      v22 = v15 + 104 * (v19 & v17);
      v23 = *v22;
      if (*v22 != -1)
      {
        if (!v23)
        {
          v24 = *(v14 + 17);
          v7 = v125;
          if (!v24)
          {
            goto LABEL_36;
          }

          v25 = *(v24 - 4);
          v22 = v24 + 104 * v25;
          goto LABEL_22;
        }

        if (WTF::equal(v23, *v11, v10))
        {
          break;
        }
      }
    }

    v24 = *(v14 + 17);
    if (v24)
    {
      v25 = *(v24 - 4);
      v7 = v125;
LABEL_22:
      v24 += 104 * v25;
      goto LABEL_24;
    }

    v7 = v125;
LABEL_24:
    if (v24 == v22)
    {
LABEL_36:
      *(v11 + 34) = ++dword_1EB01E080;
LABEL_37:
      v26 = 1;
      goto LABEL_38;
    }

    *(v11 + 34) = *(v22 + 68);
    if (!WebKit::isEqual((v11 + 5), (v22 + 40), v10))
    {
      goto LABEL_37;
    }

    if (*(v11 + 15) != *(v22 + 60))
    {
      goto LABEL_37;
    }

    if (*(v11 + 16) != *(v22 + 64))
    {
      goto LABEL_37;
    }

    if (*(v11 + 20) != *(v22 + 80))
    {
      goto LABEL_37;
    }

    v26 = *(v11 + 25);
    if (v26 != *(v22 + 100))
    {
      goto LABEL_37;
    }

    if (v26)
    {
      v27 = 0;
      v28 = 20;
      do
      {
        if (v27 >= *(v22 + 100))
        {
          __break(0xC471u);
          JUMPOUT(0x19DE38748);
        }

        v29 = (v11[11] + v28);
        v30 = *(v22 + 88) + v28;
        WebKit::WebRTCNetwork::IPAddress::rtcAddress(v29 - 20, buf);
        v31 = *v29;
        *v127 = v130;
        *&v127[4] = v131;
        v126 = &off_1F110D978;
        v128 = v31;
        WebKit::WebRTCNetwork::IPAddress::rtcAddress((v30 - 20), buf);
        v32 = webrtc::InterfaceAddress::operator==();
        if ((v32 & 1) == 0)
        {
          break;
        }

        ++v27;
        v28 += 24;
      }

      while (v27 < *(v11 + 25));
      v26 = v32 ^ 1;
      v14 = &dword_1EB01E000;
      v7 = v125;
    }

    do
    {
LABEL_38:
      v11 += 13;
    }

    while (v11 != v12 && (*v11 + 1) <= 1);
    v13 = v26 | v13 & 1;
  }

  while (v11 != v7);
  if (v13)
  {
    goto LABEL_48;
  }

LABEL_54:
  v44 = qword_1EB01E088;
  result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::RTCNetwork>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::RTCNetwork>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::RTCNetwork,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::RTCNetwork>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(qword_1EB01E088);
  v47 = result;
  v48 = v9;
  if (v44)
  {
    v49 = (v44 + 104 * *(v44 - 4));
  }

  else
  {
    v49 = 0;
  }

  v113 = v124;
  if (v49 == result)
  {
LABEL_163:
    if (*(v123 + 16))
    {
      result = WebKit::isEqual(v123, &xmmword_1EB01E058, v46);
      if (!result)
      {
        goto LABEL_48;
      }
    }

    if (*(v122 + 16))
    {
      result = WebKit::isEqual(v122, &xmmword_1EB01E06C, v46);
      if ((result & 1) == 0)
      {
        goto LABEL_48;
      }
    }
  }

  else
  {
    while (1)
    {
      v114 = *v113;
      if (!*v113)
      {
        break;
      }

      v115 = *v47;
      if (*v47 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x19DE38768);
      }

      if (!v115)
      {
        __break(0xC471u);
        JUMPOUT(0x19DE38788);
      }

      v116 = *(v114 - 8);
      v117 = *(v115 + 4);
      if (v117 < 0x100)
      {
        v118 = WTF::StringImpl::hashSlowCase(v115);
      }

      else
      {
        v118 = v117 >> 8;
      }

      for (j = 0; ; v118 = j + v120)
      {
        v120 = v118 & v116;
        v121 = *(v114 + 104 * (v118 & v116));
        if (v121 != -1)
        {
          if (!v121)
          {
            goto LABEL_48;
          }

          result = WTF::equal(v121, *v47, v46);
          if (result)
          {
            break;
          }
        }

        ++j;
      }

      v47 += 13;
      if (v47 == v48)
      {
        v113 = v124;
      }

      else
      {
        v113 = v124;
        do
        {
          if (*v47 + 1 > 1)
          {
            break;
          }

          v47 += 13;
        }

        while (v47 != v48);
      }

      if (v47 == v49)
      {
        goto LABEL_163;
      }
    }

LABEL_48:
    v40 = *v124;
    *v124 = 0;
    v41 = qword_1EB01E088;
    qword_1EB01E088 = v40;
    if (v41)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::RTCNetwork>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::RTCNetwork>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::RTCNetwork,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::RTCNetwork>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v41, v9);
    }

    if (*(v123 + 16))
    {
      v42 = *v123;
      dword_1EB01E068 = *(v123 + 4);
      xmmword_1EB01E058 = v42;
    }

    if (*(v122 + 16))
    {
      v43 = *v122;
      dword_1EB01E07C = *(v122 + 4);
      xmmword_1EB01E06C = v43;
    }

LABEL_64:
    v51 = qword_1ED641580;
    if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19D52D000, v51, OS_LOG_TYPE_DEFAULT, "NetworkRTCSharedMonitor::onGatheredNetworks - networks changed", buf, 2u);
    }

    v52 = qword_1EB01E088;
    v53 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::RTCNetwork>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::RTCNetwork>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::RTCNetwork,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::RTCNetwork>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(qword_1EB01E088);
    v55 = v54;
    if (v52)
    {
      v56 = (v52 + 104 * *(v52 - 4));
      v126 = 0;
      *v127 = 0;
      v57 = *(v52 - 12);
      if (v57)
      {
        if (v57 >= 0x2AAAAAB)
        {
          __break(0xC471u);
          JUMPOUT(0x19DE38790);
        }

        v58 = 96 * v57;
        v52 = WTF::fastMalloc((96 * v57));
        *v127 = v58 / 0x60;
        v126 = v52;
      }

      else
      {
        v52 = 0;
      }
    }

    else
    {
      v56 = 0;
      v126 = 0;
      *v127 = 0;
    }

    if (v53 == v56)
    {
      v59 = 0;
    }

    else
    {
      do
      {
        v60 = *(v53 + 5);
        *buf = 0;
        v130 = 0;
        LODWORD(v131) = v60;
        if (v60)
        {
          v61 = WTF::fastMalloc(v60);
          v130 = v60;
          *buf = v61;
          memcpy(v61, v53[1], *(v53 + 5));
        }

        v62 = *(v53 + 9);
        *(&v131 + 4) = 0;
        HIDWORD(v131) = 0;
        v132 = v62;
        if (v62)
        {
          v63 = WTF::fastMalloc(v62);
          HIDWORD(v131) = v62;
          *(&v131 + 4) = v63;
          memcpy(v63, v53[3], *(v53 + 9));
        }

        v64 = *(v53 + 5);
        v65 = *(v53 + 7);
        *(v134 + 12) = *(v53 + 68);
        v133 = v64;
        v134[0] = v65;
        WTF::Vector<WebKit::WebRTCNetwork::InterfaceAddress,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v135, v53 + 11);
        v67 = *&v127[4];
        v52 = v126;
        v68 = &v126[12 * *&v127[4]];
        *v68 = 0;
        v68[1] = 0;
        v69 = *buf;
        *buf = 0;
        *v68 = v69;
        LODWORD(v69) = v130;
        v130 = 0;
        *(v68 + 2) = v69;
        LODWORD(v69) = v131;
        LODWORD(v131) = 0;
        *(v68 + 3) = v69;
        v68[2] = 0;
        v68[3] = 0;
        v70 = *(&v131 + 4);
        *(&v131 + 4) = 0;
        v68[2] = v70;
        LODWORD(v70) = HIDWORD(v131);
        HIDWORD(v131) = 0;
        *(v68 + 6) = v70;
        LODWORD(v70) = v132;
        v132 = 0;
        *(v68 + 7) = v70;
        v71 = v133;
        v72 = v134[0];
        *(v68 + 60) = *(v134 + 12);
        *(v68 + 2) = v71;
        *(v68 + 3) = v72;
        v68[10] = 0;
        v68[11] = 0;
        v73 = v135;
        v135 = 0;
        v68[10] = v73;
        LODWORD(v73) = v136;
        v136 = 0;
        *(v68 + 22) = v73;
        LODWORD(v73) = v137;
        v137 = 0;
        *(v68 + 23) = v73;
        v59 = v67 + 1;
        *&v127[4] = v67 + 1;
        v74 = v135;
        if (v135)
        {
          v135 = 0;
          v136 = 0;
          WTF::fastFree(v74, v66);
        }

        v75 = *(&v131 + 4);
        if (*(&v131 + 4))
        {
          *(&v131 + 4) = 0;
          HIDWORD(v131) = 0;
          WTF::fastFree(v75, v66);
        }

        v76 = *buf;
        if (*buf)
        {
          *buf = 0;
          v130 = 0;
          WTF::fastFree(v76, v66);
        }

        do
        {
          v53 += 13;
        }

        while (v53 != v55 && (*v53 + 1) <= 1);
      }

      while (v53 != v56);
    }

    *buf = WebKit::sortNetworks;
    v77 = 126 - 2 * __clz(v59);
    if (v59)
    {
      v78 = v77;
    }

    else
    {
      v78 = 0;
    }

    std::__introsort<std::_RangeAlgPolicy,BOOL (*&)(WebKit::RTCNetwork const&,WebKit::RTCNetwork const&),WebKit::RTCNetwork*,false>(v52, v52 + 96 * v59, buf, v78, 1);
    if (*&v127[4])
    {
      v79 = 0;
      v80 = 127;
      if (*&v127[4] > 0x7FuLL)
      {
        v80 = *&v127[4];
      }

      v81 = 96 * *&v127[4] - 96;
      v82 = vdupq_n_s64(v81 / 0x60);
      v83 = v126 + 32;
      do
      {
        v84 = vdupq_n_s64(v79);
        v85 = vmovn_s64(vcgeq_u64(v82, vorrq_s8(v84, xmmword_19E703CF0)));
        if (vuzp1_s16(v85, 2).u8[0])
        {
          *(v83 - 48) = v80;
        }

        if (vuzp1_s16(v85, 2).i8[2])
        {
          *(v83 - 24) = v80 - 1;
        }

        if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v82, vorrq_s8(v84, xmmword_19E703CE0)))).i32[1])
        {
          *v83 = v80 - 2;
          v83[24] = v80 - 3;
        }

        v79 += 4;
        v80 -= 4;
        v83 += 96;
      }

      while (((v81 / 0x60 + 4) & 0x7FFFFFFFFFFFFFCLL) != v79);
    }

    v86 = WTF::fastMalloc(0x10);
    *v86 = &unk_1F110C920;
    v86[1] = &WebKit::networkSharedMonitor(void)::networkSharedMonitor;
    if (WebKit::networkSharedMonitor(void)::networkSharedMonitor && (v87 = *(WebKit::networkSharedMonitor(void)::networkSharedMonitor - 12), v87))
    {
      if (v87 >> 29)
      {
LABEL_174:
        __break(0xC471u);
        JUMPOUT(0x19DE38720);
      }

      v88 = WTF::fastMalloc((8 * v87));
    }

    else
    {
      v88 = 0;
    }

    v89 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(&WebKit::networkSharedMonitor(void)::networkSharedMonitor);
    v91 = v89;
    v92 = v90;
    if (WebKit::networkSharedMonitor(void)::networkSharedMonitor)
    {
      v93 = WebKit::networkSharedMonitor(void)::networkSharedMonitor + 8 * *(WebKit::networkSharedMonitor(void)::networkSharedMonitor - 4);
    }

    else
    {
      v93 = 0;
    }

    if (v93 != v89)
    {
      v94 = 0;
      v95 = 1;
      do
      {
        v96 = v95;
        v97 = *(*v91 + 8);
        if (v97)
        {
          WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(*(*v91 + 8), *(*v91 + 8));
          v98 = *v97;
          if (*v97)
          {
            atomic_fetch_add(v98, 1u);
          }
        }

        else
        {
          v98 = 0;
        }

        *(v88 + v94) = v98;
        do
        {
          ++v91;
        }

        while (v91 != v92 && (*v91 + 1) <= 1);
        ++v94;
        v95 = v96 + 1;
      }

      while (v91 != v93);
      if (v94)
      {
        v99 = v88;
        do
        {
          v100 = *v99;
          if (*v99)
          {
            v90 = *(v100 + 8);
            if (v90)
            {
              if (WebKit::networkSharedMonitor(void)::networkSharedMonitor)
              {
                v101 = *(WebKit::networkSharedMonitor(void)::networkSharedMonitor - 8);
                v102 = (~(v100 << 32) + v100) ^ ((~(v100 << 32) + v100) >> 22);
                v103 = 9 * ((v102 + ~(v102 << 13)) ^ ((v102 + ~(v102 << 13)) >> 8));
                v104 = (v103 ^ (v103 >> 15)) + ~((v103 ^ (v103 >> 15)) << 27);
                v105 = v101 & ((v104 >> 31) ^ v104);
                for (k = 1; ; ++k)
                {
                  v107 = *(WebKit::networkSharedMonitor(void)::networkSharedMonitor + 8 * v105);
                  if (!v107)
                  {
                    break;
                  }

                  if (v107 != -1 && v107 == v100)
                  {
                    (*(*v86 + 16))(v86);
                    break;
                  }

                  v105 = (v105 + k) & v101;
                }
              }
            }
          }

          v99 = (v99 + 8);
        }

        while (v99 != (v88 + 8 * v94));
        v109 = 8 * v96;
        v110 = v88;
        do
        {
          v111 = *v110;
          *v110 = 0;
          if (v111 && atomic_fetch_add(v111, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v111);
            WTF::fastFree(v111, v90);
          }

          ++v110;
          v109 -= 8;
        }

        while (v109);
      }
    }

    if (v88)
    {
      WTF::fastFree(v88, v90);
    }

    (*(*v86 + 8))(v86);
    return WTF::Vector<WebKit::RTCNetwork,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v126, v112);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkRTCSharedMonitor::updateNetworks(void)::$_1,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F110C858;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::CallbackAggregator,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkRTCSharedMonitor::updateNetworks(void)::$_1,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110C858;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebKit::CallbackAggregator,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

double WTF::Detail::CallableWrapper<WebKit::NetworkRTCSharedMonitor::updateNetworks(void)::$_1,void>::call(uint64_t a1)
{
  WebKit::getDefaultIPAddress(&v4, 1);
  if (v6 == 1)
  {
    v3 = *(a1 + 8);
    result = *&v4;
    *(v3 + 24) = v4;
    *(v3 + 40) = v5;
  }

  return result;
}

void WebKit::getDefaultIPAddress(WebKit *this, int a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 30;
  }

  v5 = socket(v4, 2, 0);
  if (v5 != -1)
  {
    v6 = v5;
    v7 = "2001:4860:4860::8888";
    if (a2)
    {
      v7 = "8.8.8.8";
    }

    *v20 = v7;
    v17 = 53;
    v8 = WTF::fastMalloc(0x20);
    v9 = v8;
    if (a2)
    {
      *v8 = &unk_1F110C880;
      v8[1] = v16;
      v8[2] = &v17;
      v8[3] = v20;
      v21 = 0;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      *v16 = 16;
      v21.sa_family = 2;
      strcpy(v21.sa_data, "5");
      if (inet_pton(2, "8.8.8.8", &v21.sa_data[2]))
      {
        v21.sa_family = 2;
        (*(*v9 + 8))(v9);
        goto LABEL_15;
      }
    }

    else
    {
      *v8 = &unk_1F110C8A8;
      v8[1] = v16;
      v8[2] = &v17;
      v8[3] = v20;
      v21 = 0;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      *v16 = 28;
      v21.sa_family = 30;
      strcpy(v21.sa_data, "5");
      if (inet_pton(30, "2001:4860:4860::8888", &v21.sa_data[6]))
      {
        v21.sa_family = 30;
        (*(*v9 + 8))(v9);
LABEL_15:
        if ((connect(v6, &v21, v16[0]) & 0x80000000) == 0)
        {
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v21 = 0;
          v22 = 0u;
          v16[0] = 128;
          if (getsockname(v6, &v21, v16) < 0)
          {
            v14 = qword_1ED641580;
            if (!os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_26;
            }

            *v20 = 67109120;
            *&v20[4] = a2;
            v15 = "getDefaultIPAddress getsockname failed, useIPv4=%d";
          }

          else
          {
            if (v4 == v21.sa_family)
            {
              WebKit::WebRTCNetwork::IPAddress::IPAddress(this, &v21);
              v11 = 1;
LABEL_27:
              *(this + 20) = v11;
              goto LABEL_28;
            }

            v14 = qword_1ED641580;
            if (!os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_ERROR))
            {
LABEL_26:
              v11 = 0;
              *this = 0;
              goto LABEL_27;
            }

            *v20 = 67109120;
            *&v20[4] = a2;
            v15 = "getDefaultIPAddress address is not of the expected family, useIPv4=%d";
          }

          _os_log_error_impl(&dword_19D52D000, v14, OS_LOG_TYPE_ERROR, v15, v20, 8u);
          goto LABEL_26;
        }

        v12 = qword_1ED641580;
        if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v19 = a2;
          v13 = "getDefaultIPAddress connect failed, useIPv4=%d";
LABEL_30:
          _os_log_error_impl(&dword_19D52D000, v12, OS_LOG_TYPE_ERROR, v13, buf, 8u);
          goto LABEL_22;
        }

        goto LABEL_22;
      }
    }

    (*(*v9 + 8))(v9);
    v12 = qword_1ED641580;
    if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v19 = a2;
      v13 = "getDefaultIPAddress inet_pton failed, useIPv4=%d";
      goto LABEL_30;
    }

LABEL_22:
    *this = 0;
    *(this + 20) = 0;
LABEL_28:
    close(v6);
    return;
  }

  v10 = qword_1ED641580;
  if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_ERROR))
  {
    *&v21.sa_len = 67109120;
    *&v21.sa_data[2] = a2;
    _os_log_error_impl(&dword_19D52D000, v10, OS_LOG_TYPE_ERROR, "getDefaultIPAddress socket creation failed, useIPv4=%d", &v21.sa_len, 8u);
  }

  *this = 0;
  *(this + 20) = 0;
}

BOOL WTF::Detail::CallableWrapper<WebKit::connectToRemoteAddress(int,BOOL)::$_0,BOOL,sockaddr_in &>::call(uint64_t a1, uint64_t a2)
{
  **(a1 + 8) = 16;
  *(a2 + 1) = 2;
  *(a2 + 2) = 53;
  return inet_pton(2, **(a1 + 24), (a2 + 4)) != 0;
}

BOOL WTF::Detail::CallableWrapper<WebKit::connectToRemoteAddress(int,BOOL)::$_1,BOOL,sockaddr_in6 &>::call(uint64_t a1, uint64_t a2)
{
  **(a1 + 8) = 28;
  *(a2 + 1) = 30;
  *(a2 + 2) = 53;
  return inet_pton(30, **(a1 + 24), (a2 + 8)) != 0;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkRTCSharedMonitor::updateNetworks(void)::$_2,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F110C8D0;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::CallbackAggregator,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkRTCSharedMonitor::updateNetworks(void)::$_2,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110C8D0;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebKit::CallbackAggregator,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

double WTF::Detail::CallableWrapper<WebKit::NetworkRTCSharedMonitor::updateNetworks(void)::$_2,void>::call(uint64_t a1)
{
  WebKit::getDefaultIPAddress(&v4, 0);
  if (v6 == 1)
  {
    v3 = *(a1 + 8);
    result = *&v4;
    *(v3 + 44) = v4;
    *(v3 + 60) = v5;
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkRTCSharedMonitor::updateNetworks(void)::$_3,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F110C8F8;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::CallbackAggregator,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkRTCSharedMonitor::updateNetworks(void)::$_3,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110C8F8;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebKit::CallbackAggregator,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkRTCSharedMonitor::updateNetworks(void)::$_3,void>::call(uint64_t a1)
{
  v164 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  v145 = 0;
  if (getifaddrs(&v145))
  {
    v136 = 0;
LABEL_3:
    v3 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::RTCNetwork>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::RTCNetwork>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::RTCNetwork,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::RTCNetwork>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(0);
    v4 = v2;
    v5 = 0;
    v6 = 0;
    goto LABEL_188;
  }

  v7 = v145;
  v136 = 0;
  if (!v145)
  {
    goto LABEL_3;
  }

  v129 = v1;
  v130 = v145;
  v133 = 0;
  do
  {
    ifa_addr = v7->ifa_addr;
    if (!ifa_addr)
    {
      goto LABEL_171;
    }

    ifa_netmask = v7->ifa_netmask;
    if (!ifa_netmask)
    {
      goto LABEL_171;
    }

    sa_family = ifa_addr->sa_family;
    v11 = sa_family == 30 || sa_family == 2;
    if (!v11 || (v7->ifa_flags & 0x40) == 0)
    {
      goto LABEL_171;
    }

    if (sa_family == 2)
    {
      v12 = *&ifa_addr->sa_data[2];
      v13 = 1;
    }

    else
    {
      if (sa_family != 30)
      {
        __break(0xC471u);
        JUMPOUT(0x19DE39BA0);
      }

      v14 = *&ifa_addr->sa_data[6];
      v132 = *&ifa_addr[1].sa_len;
      v12 = v14;
      v133 = HIDWORD(v14);
      v13 = 2;
    }

    LOBYTE(v143) = 0;
    v15 = ifa_netmask->sa_family;
    if (ifa_netmask->sa_family)
    {
      if (v15 == 2)
      {
        v16 = *&ifa_netmask->sa_data[2];
        LOBYTE(v143) = 1;
        LODWORD(v142) = v16;
      }

      else
      {
        if (v15 != 30)
        {
          __break(0xC471u);
          JUMPOUT(0x19DE39BC0);
        }

        v142 = *&ifa_netmask->sa_data[6];
        LOBYTE(v143) = 2;
        ifa_addr = v7->ifa_addr;
      }
    }

    v17 = 0;
    *&v140 = v12 | (v133 << 32);
    *(&v140 + 1) = v132;
    LOBYTE(v141) = v13;
    HIDWORD(v141) = 0;
    v144 = 1;
    if (ifa_addr && ifa_addr->sa_family == 30)
    {
      v17 = *&ifa_addr[1].sa_data[6];
    }

    WebKit::WebRTCNetwork::IPAddress::rtcAddress(&v142, &v156);
    v19 = webrtc::CountIPMaskBits(&v156, v18);
    ifa_name = v7->ifa_name;
    if (ifa_name)
    {
      v21 = strlen(v7->ifa_name);
    }

    else
    {
      v21 = 0;
    }

    if ((v144 & 1) == 0)
    {
      goto LABEL_212;
    }

    WebKit::WebRTCNetwork::IPAddress::rtcAddress(&v142, &v156);
    webrtc::IPAddress::ToString(__p, &v156);
    v24 = __p[0];
    if (v139 >= 0)
    {
      v24 = __p;
    }

    if (v139 >= 0)
    {
      v25 = v139;
    }

    else
    {
      v25 = __p[1];
    }

    if (v21 >> 31)
    {
      __break(0xC471u);
      JUMPOUT(0x19DE39B20);
    }

    if (v25 >> 31)
    {
      __break(0xC471u);
      JUMPOUT(0x19DE39B40);
    }

    v131 = v17;
    __src = v24;
    if ((v19 & 0x80000000) != 0)
    {
      v29 = -v19;
      v26 = 1;
      do
      {
        ++v26;
        v30 = v29 >= 0xA;
        v29 /= 0xAu;
      }

      while (v30);
    }

    else
    {
      v26 = 0;
      v27 = v19;
      do
      {
        ++v26;
        v28 = v27 > 9;
        v27 /= 0xAu;
      }

      while (v28);
    }

    if ((v25 & 0x80000000) != 0)
    {
      goto LABEL_222;
    }

    v31 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      goto LABEL_222;
    }

    if (v26 < 0)
    {
      goto LABEL_222;
    }

    v32 = __OFADD__(v26, v31);
    v33 = v26 + v31;
    if (v32)
    {
      goto LABEL_222;
    }

    v32 = __OFADD__(v33, 1);
    v34 = v33 + 1;
    if (v32)
    {
      goto LABEL_222;
    }

    v35 = (v21 + v34);
    if (__OFADD__(v21, v34))
    {
      goto LABEL_222;
    }

    if (v35)
    {
      if ((v35 & 0x80000000) != 0)
      {
        goto LABEL_222;
      }

      WTF::tryFastCompactMalloc((v35 + 20));
      v36 = v156;
      if (!v156)
      {
        goto LABEL_222;
      }

      v37 = v19;
      v38 = (v156 + 5);
      *v156 = 2;
      v36[1] = v35;
      *(v36 + 1) = v36 + 5;
      v36[4] = 4;
      if (v21)
      {
        if (v21 == 1)
        {
          *v38 = *ifa_name;
        }

        else
        {
          memcpy(v36 + 5, ifa_name, v21);
        }
      }

      if (v21 > v35)
      {
        goto LABEL_212;
      }

      v38[v21] = 45;
      if (v21 == v35)
      {
        goto LABEL_212;
      }

      v39 = v35 + ~v21;
      v40 = &v38[v21 + 1];
      v19 = v37;
      if ((v37 & 0x80000000) == 0)
      {
        v41 = 0;
        v42 = 13;
        v43 = 12;
        v44 = v37;
        do
        {
          if (v41 == -13)
          {
            goto LABEL_212;
          }

          v45 = v43;
          v46 = v42;
          v47 = &v156 + v41--;
          v47[12] = (v44 % 0xA) | 0x30;
          v43 = v45 - 1;
          --v42;
          v28 = v44 > 9;
          v44 /= 0xAu;
        }

        while (v28);
        v48 = v35 + ~v21;
        v49 = v40;
        while (v48)
        {
          *v49++ = *(&v156 + v45++);
          ++v46;
          --v48;
          if (v46 == 14)
          {
            goto LABEL_71;
          }
        }

LABEL_212:
        __break(1u);
      }

      v50 = 0;
      v51 = -v37;
      v52 = -1;
      do
      {
        if (v50 == -13)
        {
          goto LABEL_212;
        }

        v53 = v50;
        v54 = v52;
        *(&v157 + v50-- + 4) = (v51 % 0xA) | 0x30;
        --v52;
        v28 = v51 > 9;
        v51 /= 0xAu;
      }

      while (v28);
      if ((v50 + 12) >= 0xD)
      {
        goto LABEL_212;
      }

      *(&v157 + v50 + 4) = 45;
      v55 = v35 + ~v21;
      v56 = v40;
      do
      {
        if (!v55)
        {
          goto LABEL_212;
        }

        *v56++ = *(&v157 + v54++ + 4);
        ++v53;
        --v55;
      }

      while (v53 != 2);
LABEL_71:
      if ((v37 & 0x80000000) != 0)
      {
        v59 = -v37;
        v57 = 1;
        do
        {
          ++v57;
          v30 = v59 >= 0xA;
          v59 /= 0xAu;
        }

        while (v30);
      }

      else
      {
        v57 = 0;
        v58 = v37;
        do
        {
          ++v57;
          v28 = v58 > 9;
          v58 /= 0xAu;
        }

        while (v28);
      }

      if (v39 < v57)
      {
        goto LABEL_212;
      }

      v60 = (v40 + v57);
      *v60 = 45;
      if (v39 == v57)
      {
        goto LABEL_212;
      }

      if (v25)
      {
        if (v25 == 1)
        {
          v60[1] = *__src;
        }

        else
        {
          memcpy(v60 + 1, __src, v25);
        }
      }
    }

    else
    {
      v36 = MEMORY[0x1E696EB88];
      atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    }

    v137 = v36;
    if (v36 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DE39B60);
    }

    if (!v36)
    {
      __break(0xC471u);
      JUMPOUT(0x19DE39B80);
    }

    __srca = v19;
    v61 = v136;
    if (v136 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::RTCNetwork>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::RTCNetwork>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::RTCNetwork,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::RTCNetwork>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(&v136, 0), (v61 = v136) != 0))
    {
      v62 = *(v61 - 2);
    }

    else
    {
      v62 = 0;
    }

    v63 = *(v137 + 4);
    if (v63 < 0x100)
    {
      v64 = WTF::StringImpl::hashSlowCase(v137);
    }

    else
    {
      v64 = v63 >> 8;
    }

    v65 = 0;
    for (i = 1; ; ++i)
    {
      v67 = v64 & v62;
      v68 = &v61[13 * (v64 & v62)];
      v69 = *v68;
      if (*v68 == -1)
      {
        v65 = &v61[13 * v67];
        goto LABEL_95;
      }

      if (!v69)
      {
        break;
      }

      if (WTF::equal(v69, v137, v23))
      {
        goto LABEL_162;
      }

LABEL_95:
      v64 = i + v67;
    }

    if (v65)
    {
      v69 = 0;
      v65[12] = 0;
      *(v65 + 4) = 0u;
      *(v65 + 5) = 0u;
      *(v65 + 2) = 0u;
      *(v65 + 3) = 0u;
      *v65 = 0u;
      *(v65 + 1) = 0u;
      --*(v61 - 4);
      v68 = v65;
    }

    v70 = v137;
    if (v137)
    {
      atomic_fetch_add_explicit(v137, 2u, memory_order_relaxed);
      v69 = *v68;
    }

    *v68 = v70;
    if (v69 && atomic_fetch_add_explicit(v69, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v69, v22);
    }

    {
      WebKit::NetworkRTCSharedMonitor::NetworkRTCSharedMonitor(&WebKit::networkSharedMonitor(void)::networkSharedMonitor);
    }

    v71 = v7->ifa_name;
    WTF::String::fromUTF8(v148, v71, v22);
    v74 = qword_1EB01E098;
    if (!qword_1EB01E098)
    {
LABEL_117:
      v81 = 0;
      goto LABEL_119;
    }

    if (v148[0] == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DE39BE0);
    }

    if (!v148[0])
    {
      __break(0xC471u);
      JUMPOUT(0x19DE39C00);
    }

    v75 = *(qword_1EB01E098 - 8);
    v76 = *(v148[0] + 4);
    if (v76 < 0x100)
    {
      v77 = WTF::StringImpl::hashSlowCase(v148[0]);
    }

    else
    {
      v77 = v76 >> 8;
    }

    v78 = 0;
    while (2)
    {
      v79 = v77 & v75;
      v80 = *(v74 + 16 * v79);
      if (v80 == -1)
      {
LABEL_114:
        v77 = ++v78 + v79;
        continue;
      }

      break;
    }

    if (v80)
    {
      if (WTF::equal(v80, v148[0], v73))
      {
        v81 = v74 + 16 * v79;
        goto LABEL_119;
      }

      goto LABEL_114;
    }

    if (!qword_1EB01E098)
    {
      goto LABEL_117;
    }

    v81 = qword_1EB01E098 + 16 * *(qword_1EB01E098 - 4);
LABEL_119:
    v82 = v148[0];
    v148[0] = 0;
    if (v82 && atomic_fetch_add_explicit(v82, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v82, v72);
    }

    v83 = qword_1EB01E098;
    if (qword_1EB01E098)
    {
      v83 = qword_1EB01E098 + 16 * *(qword_1EB01E098 - 4);
    }

    if (v83 != v81)
    {
      AdapterTypeFromName = *(v81 + 8);
      goto LABEL_128;
    }

    if (!v71)
    {
      goto LABEL_212;
    }

    strlen(v71);
    AdapterTypeFromName = webrtc::GetAdapterTypeFromName();
LABEL_128:
    v153 = 0;
    v154 = 0;
    v155 = v21;
    if (v21)
    {
      v85 = WTF::fastMalloc(v21);
      v154 = v21;
      v153 = v85;
      do
      {
        v86 = *ifa_name++;
        *v85 = v86;
        v85 = (v85 + 1);
        --v21;
      }

      while (v21);
    }

    WTF::String::utf8();
    if (!v150)
    {
      v151 = 0;
      v152 = 0;
      goto LABEL_136;
    }

    v87 = *(v150 + 1);
    v151 = 0;
    LODWORD(v152) = 0;
    HIDWORD(v152) = v87;
    if (!v87)
    {
      goto LABEL_136;
    }

    if (v87 >> 32)
    {
LABEL_222:
      __break(0xC471u);
      JUMPOUT(0x19DE39B00);
    }

    v88 = v150 + 16;
    v89 = WTF::fastMalloc(v87);
    LODWORD(v152) = v87;
    v151 = v89;
    do
    {
      v90 = *v88++;
      *v89 = v90;
      v89 = (v89 + 1);
      v87 = (v87 - 1);
    }

    while (v87);
LABEL_136:
    if ((v144 & 1) == 0)
    {
      goto LABEL_212;
    }

    *v148 = v142;
    v149 = v143;
    v146 = 0;
    v147 = 0;
    WebKit::RTCNetwork::RTCNetwork(&v156, &v153, &v151, v148, __srca, AdapterTypeFromName, 0, 0, 1, 0, v131, &v146);
    v91 = v146;
    if (v146)
    {
      v146 = 0;
      LODWORD(v147) = 0;
      WTF::fastFree(v91, v22);
    }

    v92 = v151;
    if (v151)
    {
      v151 = 0;
      LODWORD(v152) = 0;
      WTF::fastFree(v92, v22);
    }

    v93 = v150;
    v150 = 0;
    if (v93)
    {
      if (*v93 == 1)
      {
        WTF::fastFree(v93, v22);
      }

      else
      {
        --*v93;
      }
    }

    v94 = v153;
    if (v153)
    {
      v153 = 0;
      v154 = 0;
      WTF::fastFree(v94, v22);
    }

    v95 = *(v68 + 8);
    if (v95)
    {
      *(v68 + 8) = 0;
      *(v68 + 16) = 0;
      WTF::fastFree(v95, v22);
    }

    *(v68 + 8) = v156;
    v96 = v157;
    v156 = 0;
    v157 = 0;
    *(v68 + 16) = v96;
    v97 = *(v68 + 24);
    if (v97)
    {
      *(v68 + 24) = 0;
      *(v68 + 32) = 0;
      WTF::fastFree(v97, v22);
    }

    *(v68 + 24) = v158;
    v98 = v159;
    v158 = 0;
    v159 = 0;
    *(v68 + 32) = v98;
    v99 = v160;
    v100 = v161[0];
    *(v68 + 68) = *(v161 + 12);
    *(v68 + 56) = v100;
    *(v68 + 40) = v99;
    v101 = *(v68 + 88);
    if (v101)
    {
      *(v68 + 88) = 0;
      *(v68 + 96) = 0;
      WTF::fastFree(v101, v22);
      v101 = v158;
    }

    *(v68 + 88) = v162;
    v102 = v163;
    v162 = 0;
    v163 = 0;
    *(v68 + 96) = v102;
    if (v101)
    {
      v158 = 0;
      LODWORD(v159) = 0;
      WTF::fastFree(v101, v22);
    }

    v103 = v156;
    if (v156)
    {
      v156 = 0;
      LODWORD(v157) = 0;
      WTF::fastFree(v103, v22);
    }

    v104 = v136;
    v105 = v136 ? *(v136 - 3) + 1 : 1;
    *(v136 - 3) = v105;
    v106 = (*(v104 - 4) + v105);
    v107 = *(v104 - 1);
    if (v107 > 0x400)
    {
      if (v107 <= 2 * v106)
      {
LABEL_161:
        v68 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::RTCNetwork>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::RTCNetwork>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::RTCNetwork,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::RTCNetwork>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(&v136, v68);
      }
    }

    else if (3 * v107 <= 4 * v106)
    {
      goto LABEL_161;
    }

LABEL_162:
    if ((v144 & 1) == 0)
    {
      goto LABEL_212;
    }

    v108 = *(v68 + 100);
    if (v108 == *(v68 + 96))
    {
      v109 = WTF::Vector<WebKit::WebRTCNetwork::InterfaceAddress,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v68 + 88, v108 + 1, &v140);
      v110 = *(v68 + 88) + 24 * *(v68 + 100);
      v111 = *v109;
      v112 = *(v109 + 16);
    }

    else
    {
      v110 = *(v68 + 88) + 24 * v108;
      v111 = v140;
      v112 = v141;
    }

    *(v110 + 16) = v112;
    *v110 = v111;
    ++*(v68 + 100);
    v113 = v137;
    v137 = 0;
    if (v113 && atomic_fetch_add_explicit(v113, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v113, v22);
    }

    if (v139 < 0)
    {
      operator delete(__p[0]);
    }

LABEL_171:
    v7 = v7->ifa_next;
  }

  while (v7);
  MEMORY[0x19EB14CF0](v130, 0x10B0C40815C8216);
  v5 = v136;
  v114 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::RTCNetwork>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::RTCNetwork>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::RTCNetwork,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::RTCNetwork>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(v136);
  v3 = v114;
  v4 = v2;
  if (v5)
  {
    v6 = &v5[13 * *(v5 - 1)];
  }

  else
  {
    v6 = 0;
  }

  v1 = v129;
LABEL_188:
  if (v6 != v3)
  {
    do
    {
      WTF::String::isolatedCopy();
      v116 = v156;
      v156 = 0;
      v117 = *v3;
      *v3 = v116;
      if (v117 && atomic_fetch_add_explicit(v117, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v117, v115);
      }

      v118 = v156;
      v156 = 0;
      if (v118 && atomic_fetch_add_explicit(v118, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v118, v115);
      }

      WebKit::RTCNetwork::isolatedCopy((v3 + 1), &v156);
      v119 = v3[1];
      if (v119)
      {
        v3[1] = 0;
        *(v3 + 4) = 0;
        WTF::fastFree(v119, v2);
      }

      v3[1] = v156;
      v120 = v157;
      v156 = 0;
      v157 = 0;
      v3[2] = v120;
      v121 = v3[3];
      if (v121)
      {
        v3[3] = 0;
        *(v3 + 8) = 0;
        WTF::fastFree(v121, v2);
      }

      v3[3] = v158;
      v122 = v159;
      v158 = 0;
      v159 = 0;
      v3[4] = v122;
      v123 = v160;
      v124 = v161[0];
      *(v3 + 68) = *(v161 + 12);
      *(v3 + 7) = v124;
      *(v3 + 5) = v123;
      v125 = v3[11];
      if (v125)
      {
        v3[11] = 0;
        *(v3 + 24) = 0;
        WTF::fastFree(v125, v2);
        v125 = v158;
      }

      v3[11] = v162;
      v126 = v163;
      v162 = 0;
      v163 = 0;
      v3[12] = v126;
      if (v125)
      {
        v158 = 0;
        LODWORD(v159) = 0;
        WTF::fastFree(v125, v2);
      }

      v127 = v156;
      if (v156)
      {
        v156 = 0;
        LODWORD(v157) = 0;
        WTF::fastFree(v127, v2);
      }

      do
      {
        v3 += 13;
      }

      while (v3 != v4 && (*v3 + 1) <= 1);
    }

    while (v3 != v6);
    v5 = v136;
  }

  result = *(v1 + 16);
  *(v1 + 16) = v5;
  if (result)
  {
    return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::RTCNetwork>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::RTCNetwork>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::RTCNetwork,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::RTCNetwork>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(result, v2);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::RTCNetwork>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::RTCNetwork>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::RTCNetwork,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::RTCNetwork>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 - 4);
    v4 = *(v2 - 12);
    if (v3)
    {
      v5 = v3 << (6 * v4 >= 2 * v3);
      goto LABEL_6;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v5 = 8;
LABEL_6:
  v6 = WTF::fastMalloc((104 * v5 + 16));
  v8 = v6;
  v9 = v6 + 16;
  if (v5)
  {
    bzero((v6 + 16), 104 * v5);
  }

  *a1 = v9;
  v8[2] = v5 - 1;
  v8[3] = v5;
  *v8 = 0;
  v8[1] = v4;
  if (v3)
  {
    v10 = 0;
    v11 = 0;
    v12 = v3;
    do
    {
      v13 = v2 + 104 * v10;
      v14 = *v13;
      if (*v13 != -1)
      {
        if (v14)
        {
          v19 = *a1;
          if (*a1)
          {
            v20 = *(v19 - 8);
          }

          else
          {
            v20 = 0;
          }

          v21 = *(v14 + 4);
          if (v21 < 0x100)
          {
            v22 = WTF::StringImpl::hashSlowCase(v14);
          }

          else
          {
            v22 = v21 >> 8;
          }

          v23 = 0;
          do
          {
            v24 = v19 + 104 * (v22 & v20);
            v22 = ++v23 + (v22 & v20);
          }

          while (*v24);
          v25 = *(v24 + 88);
          if (v25)
          {
            *(v24 + 88) = 0;
            *(v24 + 96) = 0;
            WTF::fastFree(v25, v7);
          }

          v26 = *(v24 + 24);
          if (v26)
          {
            *(v24 + 24) = 0;
            *(v24 + 32) = 0;
            WTF::fastFree(v26, v7);
          }

          v27 = *(v24 + 8);
          if (v27)
          {
            *(v24 + 8) = 0;
            *(v24 + 16) = 0;
            WTF::fastFree(v27, v7);
          }

          v28 = *v24;
          *v24 = 0;
          if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v28, v7);
          }

          v29 = *v13;
          *v13 = 0;
          *v24 = v29;
          *(v24 + 8) = 0;
          *(v24 + 16) = 0;
          WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v24 + 8, (v13 + 8));
          *(v24 + 24) = 0;
          *(v24 + 32) = 0;
          WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v24 + 24, (v13 + 24));
          v30 = *(v13 + 40);
          v31 = *(v13 + 56);
          *(v24 + 68) = *(v13 + 68);
          *(v24 + 56) = v31;
          *(v24 + 40) = v30;
          *(v24 + 88) = 0;
          *(v24 + 96) = 0;
          WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v24 + 88, (v13 + 88));
          v32 = *(v13 + 88);
          if (v32)
          {
            *(v13 + 88) = 0;
            *(v13 + 96) = 0;
            WTF::fastFree(v32, v7);
          }

          v33 = *(v13 + 24);
          if (v33)
          {
            *(v13 + 24) = 0;
            *(v13 + 32) = 0;
            WTF::fastFree(v33, v7);
          }

          v34 = *(v13 + 8);
          if (v34)
          {
            *(v13 + 8) = 0;
            *(v13 + 16) = 0;
            WTF::fastFree(v34, v7);
          }

          v35 = *v13;
          *v13 = 0;
          if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v35, v7);
          }

          if (v13 == a2)
          {
            v11 = v24;
          }
        }

        else
        {
          v15 = *(v13 + 88);
          if (v15)
          {
            *(v13 + 88) = 0;
            *(v13 + 96) = 0;
            WTF::fastFree(v15, v7);
          }

          v16 = *(v13 + 24);
          if (v16)
          {
            *(v13 + 24) = 0;
            *(v13 + 32) = 0;
            WTF::fastFree(v16, v7);
          }

          v17 = *(v13 + 8);
          if (v17)
          {
            *(v13 + 8) = 0;
            *(v13 + 16) = 0;
            WTF::fastFree(v17, v7);
          }

          v18 = *v13;
          *v13 = 0;
          if (v18)
          {
            if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v18, v7);
            }
          }
        }
      }

      ++v10;
    }

    while (v10 != v12);
  }

  else
  {
    v11 = 0;
    result = 0;
    if (!v2)
    {
      return result;
    }
  }

  WTF::fastFree((v2 - 16), v7);
  return v11;
}

void *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::RTCNetwork>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::RTCNetwork>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::RTCNetwork,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::RTCNetwork>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(void *result)
{
  if (!result)
  {
    return 0;
  }

  v1 = *(result - 1);
  v2 = &result[13 * v1];
  if (!*(result - 3))
  {
    return &result[13 * v1];
  }

  if (v1)
  {
    v3 = 104 * v1;
    while ((*result + 1) <= 1)
    {
      result += 13;
      v3 -= 104;
      if (!v3)
      {
        return v2;
      }
    }
  }

  return result;
}

uint64_t WTF::Vector<WebKit::WebRTCNetwork::InterfaceAddress,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, __int128 **a2)
{
  v2 = result;
  v3 = *(a2 + 3);
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = v3;
  if (!v3)
  {
    return v2;
  }

  if (v3 < 0xAAAAAAB)
  {
    v5 = 24 * v3;
    v6 = WTF::fastMalloc((24 * v3));
    *(v2 + 8) = v5 / 0x18;
    *v2 = v6;
    v7 = *(a2 + 3);
    if (v7)
    {
      v8 = *a2;
      v9 = 24 * v7;
      do
      {
        v10 = *v8;
        *(v6 + 16) = *(v8 + 2);
        *v6 = v10;
        v6 += 24;
        v8 = (v8 + 24);
        v9 -= 24;
      }

      while (v9);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkRTCSharedMonitor::onGatheredNetworks(WebKit::WebRTCNetwork::IPAddress &&,WebKit::WebRTCNetwork::IPAddress &,WTF::HashMap<WTF::String,WebKit::RTCNetwork,WTF::DefaultHash<WTF::HashMap>,WTF::HashTraits<WTF::HashMap>,WTF::DefaultHash<WTF::HashMap><WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&)::$_0,void,WebKit::NetworkRTCMonitor &>::call(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    v3 = *(a1 + 8);
    atomic_fetch_add((v2 + 24), 1u);
    v5 = a2;
    WebKit::NetworkRTCMonitor::onNetworksChanged(a2, v3 + 88, v3 + 104, v3 + 124);
    return WTF::Ref<WebKit::NetworkRTCMonitor,WTF::RawPtrTraits<WebKit::NetworkRTCMonitor>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCMonitor>>::~Ref(&v5);
  }

  else
  {
    result = 120;
    __break(0xC471u);
  }

  return result;
}

WTF *std::__tree<std::__value_type<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkRTCProvider::Socket>>,std::__map_value_compare<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::__value_type<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkRTCProvider::Socket>>,WebKit::SocketComparator,true>,WTF::FastAllocator<std::__value_type<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkRTCProvider::Socket>>>>::destroy(WTF *result)
{
  if (result)
  {
    v1 = result;
    std::__tree<std::__value_type<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkRTCProvider::Socket>>,std::__map_value_compare<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::__value_type<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkRTCProvider::Socket>>,WebKit::SocketComparator,true>,WTF::FastAllocator<std::__value_type<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkRTCProvider::Socket>>>>::destroy(*result);
    std::__tree<std::__value_type<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkRTCProvider::Socket>>,std::__map_value_compare<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::__value_type<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkRTCProvider::Socket>>,WebKit::SocketComparator,true>,WTF::FastAllocator<std::__value_type<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkRTCProvider::Socket>>>>::destroy(*(v1 + 1));
    v3 = *(v1 + 5);
    *(v1 + 5) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    return WTF::fastFree(v1, v2);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkRTCProvider::close(void)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F110C948;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::NetworkRTCProvider,(WTF::DestructionThread)2>::deref((v2 + 24));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkRTCProvider::close(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110C948;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebKit::NetworkRTCProvider,(WTF::DestructionThread)2>::deref((v3 + 24));
  }

  return WTF::fastFree(this, a2);
}

WTF *WTF::Detail::CallableWrapper<WebKit::NetworkRTCProvider::close(void)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  v13 = 0;
  v14 = 0;
  v3 = v1 + 5;
  v2 = v1[5];
  v15 = v1[4];
  v16 = v2;
  if (v1[6])
  {
    *(v2 + 2) = &v16;
    v2 = 0;
    v1[4] = v3;
    *v3 = 0;
    v1[6] = 0;
  }

  else
  {
    v15 = &v16;
  }

  std::__tree<std::__value_type<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkRTCProvider::Socket>>,std::__map_value_compare<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::__value_type<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkRTCProvider::Socket>>,WebKit::SocketComparator,true>,WTF::FastAllocator<std::__value_type<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkRTCProvider::Socket>>>>::destroy(v2);
  v4 = v13;
  v1[4] = &v13;
  v1[5] = v4;
  v5 = v14;
  v1[6] = v14;
  if (v5)
  {
    *(v4 + 2) = v3;
    v13 = 0;
    v14 = 0;
    v4 = 0;
  }

  else
  {
    v1[4] = v3;
  }

  std::__tree<std::__value_type<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkRTCProvider::Socket>>,std::__map_value_compare<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::__value_type<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkRTCProvider::Socket>>,WebKit::SocketComparator,true>,WTF::FastAllocator<std::__value_type<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkRTCProvider::Socket>>>>::destroy(v4);
  v7 = v15;
  if (v15 != &v16)
  {
    do
    {
      (*(*v7[5] + 32))(v7[5]);
      v8 = v7[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v7[2];
          v10 = *v9 == v7;
          v7 = v9;
        }

        while (!v10);
      }

      v7 = v9;
    }

    while (v9 != &v16);
  }

  v11 = v1[12];
  if (v11)
  {
    v1[12] = 0;
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v11, v6);
  }

  return std::__tree<std::__value_type<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkRTCProvider::Socket>>,std::__map_value_compare<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::__value_type<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkRTCProvider::Socket>>,WebKit::SocketComparator,true>,WTF::FastAllocator<std::__value_type<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkRTCProvider::Socket>>>>::destroy(v16);
}

uint64_t *std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = v7[1];
      if (v18 && (v18[3] & 1) == 0)
      {
LABEL_58:
        v17 = v7;
      }

      else
      {
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = v17[1];
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = v7[2];
        v17[2] = v27;
        v27[*v27 != v7] = v17;
        v17[1] = v7;
        v7[2] = v17;
        v18 = v7;
      }

      v28 = v17[2];
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_71;
    }

    v18 = v7[1];
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_58;
    }

    *(v7 + 24) = 0;
    v19 = v7[2];
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = v13[1];
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    v13[2] = v21;
    v21[*v21 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v22 = v7[1];
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_67;
  }

  v24 = v7[1];
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = v7[2];
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (v23 && (v23[3] & 1) == 0)
  {
LABEL_67:
    v24 = v7;
    goto LABEL_68;
  }

  *(v24 + 24) = 1;
  *(v7 + 24) = 0;
  v32 = *v24;
  v7[1] = *v24;
  if (v32)
  {
    *(v32 + 16) = v7;
  }

  v33 = v7[2];
  v24[2] = v33;
  v33[*v33 != v7] = v24;
  *v24 = v7;
  v7[2] = v24;
  v23 = v7;
LABEL_68:
  v28 = v24[2];
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_71:
  *(v28 + 16) = v29;
  return result;
}

uint64_t *std::__tree<std::__value_type<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkRTCProvider::Socket>>,std::__map_value_compare<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::__value_type<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkRTCProvider::Socket>>,WebKit::SocketComparator,true>,WTF::FastAllocator<std::__value_type<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkRTCProvider::Socket>>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v4 = std::__tree<std::__value_type<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkRTCProvider::Socket>>,std::__map_value_compare<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::__value_type<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkRTCProvider::Socket>>,WebKit::SocketComparator,true>,WTF::FastAllocator<std::__value_type<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkRTCProvider::Socket>>>>::__remove_node_pointer(a1, a2);
  v5 = a2[5];
  a2[5] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  WTF::fastFree(a2, v3);
  return v4;
}

uint64_t *std::__tree<std::__value_type<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkRTCProvider::Socket>>,std::__map_value_compare<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::__value_type<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkRTCProvider::Socket>>,WebKit::SocketComparator,true>,WTF::FastAllocator<std::__value_type<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkRTCProvider::Socket>>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkRTCProvider::createResolver(WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110C970;
  v3 = a1[4];
  a1[4] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCounted<WebKit::NetworkRTCProvider,(WTF::DestructionThread)2>::deref((v4 + 24));
  }

  return a1;
}