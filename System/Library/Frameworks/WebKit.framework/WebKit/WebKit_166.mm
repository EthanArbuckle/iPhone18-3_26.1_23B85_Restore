WTF *WebKit::WebsiteDataStore::setMockWebAuthenticationConfiguration(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 376);
  ++v4[4];
  if ((*(*v4 + 56))(v4))
  {
    *(v4 + 944) = *a2;
    std::__optional_storage_base<WebCore::MockWebAuthenticationConfiguration::LocalConfiguration,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::MockWebAuthenticationConfiguration::LocalConfiguration,false>>((v4 + 238), (a2 + 8));
    std::__optional_storage_base<WebCore::MockWebAuthenticationConfiguration::HidConfiguration,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::MockWebAuthenticationConfiguration::HidConfiguration,false>>((v4 + 250), (a2 + 56));
    std::__optional_storage_base<WebCore::MockWebAuthenticationConfiguration::NfcConfiguration,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::MockWebAuthenticationConfiguration::NfcConfiguration,false>>((v4 + 268), (a2 + 128));
    result = std::__optional_storage_base<WebCore::MockWebAuthenticationConfiguration::CcidConfiguration,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::MockWebAuthenticationConfiguration::CcidConfiguration,false>>((v4 + 278), (a2 + 168));
    if (v4[4] != 1)
    {
      --v4[4];
      return result;
    }

    v8 = *(*v4 + 24);
    result = v4;
LABEL_13:

    return v8(result);
  }

  if (v4[4] == 1)
  {
    (*(*v4 + 24))(v4);
  }

  else
  {
    --v4[4];
  }

  v7 = WebKit::MockAuthenticatorManager::operator new(0x470, v5);
  WebKit::MockAuthenticatorManager::MockAuthenticatorManager(v7, a2);
  result = *(a1 + 376);
  *(a1 + 376) = v7;
  if (result)
  {
    if (*(result + 4) != 1)
    {
      --*(result + 4);
      return result;
    }

    v8 = *(*result + 24);
    goto LABEL_13;
  }

  return result;
}

uint64_t WebKit::WebsiteDataStore::virtualAuthenticatorManager(WebKit::WebsiteDataStore *this)
{
  if (((*(**(this + 47) + 64))(*(this + 47)) & 1) == 0)
  {
    v3 = WebKit::VirtualAuthenticatorManager::operator new(0x3C0, v2);
    v4 = WebKit::AuthenticatorManager::AuthenticatorManager(v3);
    *v4 = &unk_1F11357D0;
    *(v4 + 3) = &unk_1F1135898;
    *(v4 + 59) = 0u;
    v5 = *(this + 47);
    *(this + 47) = v3;
    if (v5)
    {
      if (v5[4] == 1)
      {
        (*(*v5 + 24))(v5);
      }

      else
      {
        --v5[4];
      }
    }
  }

  v6 = *(this + 47);
  if ((*(*v6 + 64))(v6))
  {
    return v6;
  }

  result = 96;
  __break(0xC471u);
  return result;
}

atomic_uint *WebKit::WebsiteDataStore::resetQuota(WebKit::WebsiteDataStore *a1, void *a2)
{
  v4 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  v5 = (v4 + 16);
  atomic_fetch_add((v4 + 16), 1u);
  v6 = *(a1 + 3);
  v8 = &v9;
  v9 = v6;
  WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::ResetQuota,WTF::CompletionHandler<void ()(void)>>(v4, &v8, a2, 0, 0, 1);

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v5);
}

atomic_uint *WebKit::WebsiteDataStore::resetStoragePersistedState(WebKit::WebsiteDataStore *a1, void *a2)
{
  v4 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  v5 = (v4 + 16);
  atomic_fetch_add((v4 + 16), 1u);
  v6 = *(a1 + 3);
  v8 = &v9;
  v9 = v6;
  WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::ResetStoragePersistedState,WTF::CompletionHandler<void ()(void)>>(v4, &v8, a2, 0, 0, 1);

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v5);
}

atomic_uint *WebKit::WebsiteDataStore::renameOriginInWebsiteData(WebKit::WebsiteDataStore *a1, void *a2, void *a3, int a4, uint64_t *a5)
{
  v10 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  v11 = (v10 + 16);
  atomic_fetch_add((v10 + 16), 1u);
  v15 = *(a1 + 3);
  v14 = a4;
  v13[0] = &v15;
  v13[1] = a2;
  v13[2] = a3;
  v13[3] = &v14;
  WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::RenameOriginInWebsiteData,WTF::CompletionHandler<void ()(void)>>(v10, v13, a5, 0, 0, 1);

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v11);
}

atomic_uint *WebKit::WebsiteDataStore::originDirectoryForTesting(WebKit::WebsiteDataStore *a1, void *a2, int a3, uint64_t *a4)
{
  v8 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  v9 = (v8 + 16);
  atomic_fetch_add((v8 + 16), 1u);
  v13 = *(a1 + 3);
  v12 = a3;
  v11[0] = &v13;
  v11[1] = a2;
  v11[2] = &v12;
  WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::WebsiteDataOriginDirectoryForTesting,WTF::CompletionHandler<void ()(WTF::String const&)>>(v8, v11, a4, 0, 0, 1);

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v9);
}

atomic_uint *WebKit::WebsiteDataStore::hasAppBoundSession(uint64_t *a1, void *a2)
{
  v4 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  v5 = (v4 + 16);
  atomic_fetch_add((v4 + 16), 1u);
  WebKit::NetworkProcessProxy::hasAppBoundSession(v4, a1[3], a2);

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v5);
}

atomic_uint *WebKit::WebsiteDataStore::clearAppBoundSession(uint64_t *a1, void *a2)
{
  v4 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  v5 = (v4 + 16);
  atomic_fetch_add((v4 + 16), 1u);
  WebKit::NetworkProcessProxy::clearAppBoundSession(v4, a1[3], a2);

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v5);
}

atomic_uint *WebKit::WebsiteDataStore::forwardAppBoundDomainsToITPIfInitialized(uint64_t *a1)
{
  v2 = WTF::fastMalloc(0x10);
  *v2 = 1;
  v3 = *a1;
  *a1 = 0;
  *(v2 + 8) = v3;
  LOBYTE(v3) = atomic_load(WebKit::hasInitializedAppBoundDomains);
  if ((v3 & 1) == 0)
  {
    return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  v4 = &qword_1ED643000;
  {
    goto LABEL_23;
  }

  while (1)
  {
    WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>&>(&v16, &WebKit::appBoundDomains(void)::appBoundDomains);
    v17 = 1;
    atomic_fetch_add(v2, 1u);
    v15 = v2;
    {
      v5 = WebKit::globalDefaultDataStore(void)::globalDefaultDataStore ? *(WebKit::globalDefaultDataStore(void)::globalDefaultDataStore + 8) : 0;
    }

    else
    {
      v5 = 0;
      WebKit::globalDefaultDataStore(void)::globalDefaultDataStore = 0;
    }

    v4 = v17;
    if (v17)
    {
      break;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    WebKit::appBoundDomains(void)::appBoundDomains = 0;
    *(v4 + 1160) = 1;
  }

  v6 = WebKit::WebsiteDataStore::forwardAppBoundDomainsToITPIfInitialized(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(&v15, v5, &v16);
  WebKit::allDataStores(v6);
  v7 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::WallTime>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::WallTime,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(&WebKit::allDataStores(void)::map);
  v8 = v7;
  v10 = v9;
  if (WebKit::allDataStores(void)::map)
  {
    v11 = WebKit::allDataStores(void)::map + 16 * *(WebKit::allDataStores(void)::map - 4);
  }

  else
  {
    v11 = 0;
  }

  if (v11 == v7)
  {
LABEL_18:
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
    if (v17)
    {
      if (v16)
      {
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v16, v13);
      }
    }

    return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  while (1)
  {
    v12 = *(v8[1] + 8);
    if (!v12)
    {
      break;
    }

    CFRetain(v12[1]);
    v4 = v17;
    if ((v17 & 1) == 0)
    {
      goto LABEL_22;
    }

    WebKit::WebsiteDataStore::forwardAppBoundDomainsToITPIfInitialized(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(&v15, v12, &v16);
    CFRelease(v12[1]);
    do
    {
      v8 += 2;
    }

    while (v8 != v10 && (*v8 + 1) <= 1);
    if (v8 == v11)
    {
      goto LABEL_18;
    }
  }

  result = 103;
  __break(0xC471u);
  return result;
}

atomic_uint *volatile *WebKit::WebsiteDataStore::forwardAppBoundDomainsToITPIfInitialized(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(atomic_uint *volatile *result, WebKit::WebsiteDataStore *this, void *a3)
{
  if (this)
  {
    v5 = result;
    if (WebKit::WebsiteDataStore::thirdPartyCookieBlockingMode(this) != 1)
    {
      v6 = *v5;
      atomic_fetch_add(*v5, 1u);
      v7 = WTF::fastMalloc(0x10);
      *v7 = &unk_1F11211C0;
      *(v7 + 1) = v6;
      v10 = v7;
      WebKit::WebsiteDataStore::setThirdPartyCookieBlockingMode(this, 1, &v10);
      if (v10)
      {
        (*(*v10 + 1))(v10);
      }
    }

    v8 = *v5;
    atomic_fetch_add(v8, 1u);
    v9 = WTF::fastMalloc(0x10);
    *v9 = &unk_1F11211E8;
    *(v9 + 1) = v8;
    v10 = v9;
    WebKit::WebsiteDataStore::setAppBoundDomainsForITP(this, a3, &v10);
    result = v10;
    if (v10)
    {
      return (*(*v10 + 1))(v10);
    }
  }

  return result;
}

atomic_uint *WebKit::WebsiteDataStore::setAppBoundDomainsForITP(void **a1, void *a2, uint64_t *a3)
{
  v6 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  v7 = (v6 + 16);
  atomic_fetch_add((v6 + 16), 1u);
  WebKit::NetworkProcessProxy::setAppBoundDomainsForResourceLoadStatistics(v6, a1[3], a2, a3);

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v7);
}

atomic_uint *volatile *WebKit::WebsiteDataStore::forwardManagedDomainsToITPIfInitialized(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(atomic_uint *volatile *result, void **this, uint64_t *a3)
{
  if (this)
  {
    v5 = result;
    if (WebKit::WebsiteDataStore::thirdPartyCookieBlockingMode(this) != 1 && WebKit::WebsiteDataStore::thirdPartyCookieBlockingMode(this) != 2)
    {
      v6 = *v5;
      atomic_fetch_add(*v5, 1u);
      v7 = WTF::fastMalloc(0x10);
      *v7 = &unk_1F1121210;
      *(v7 + 1) = v6;
      v13 = v7;
      WebKit::WebsiteDataStore::setThirdPartyCookieBlockingMode(this, 2, &v13);
      if (v13)
      {
        (*(*v13 + 1))(v13);
      }
    }

    v8 = *v5;
    atomic_fetch_add(v8, 1u);
    v9 = WTF::fastMalloc(0x10);
    *v9 = &unk_1F1121238;
    *(v9 + 1) = v8;
    v13 = v9;
    v11 = WebKit::WebsiteDataStore::networkProcess(this, v10);
    v12 = (v11 + 16);
    atomic_fetch_add((v11 + 16), 1u);
    WebKit::NetworkProcessProxy::setManagedDomainsForResourceLoadStatistics(v11, this[3], a3, &v13);
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v12);
    result = v13;
    if (v13)
    {
      return (*(*v13 + 1))(v13);
    }
  }

  return result;
}

atomic_uint *WebKit::WebsiteDataStore::updateBundleIdentifierInNetworkProcess(WebKit::WebsiteDataStore *a1, void *a2, uint64_t *a3)
{
  v5 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  v6 = (v5 + 16);
  atomic_fetch_add((v5 + 16), 1u);
  v8 = a2;
  WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::UpdateBundleIdentifier,WTF::CompletionHandler<void ()(void)>>(v5, &v8, a3, 0, 0, 1);

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v6);
}

atomic_uint *WebKit::WebsiteDataStore::clearBundleIdentifierInNetworkProcess(WebKit::WebsiteDataStore *a1, void *a2)
{
  v3 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  v4 = (v3 + 16);
  atomic_fetch_add((v3 + 16), 1u);
  WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::ClearBundleIdentifier,WTF::CompletionHandler<void ()(void)>>(v3, &v6, a2, 0, 0, 1);

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v4);
}

atomic_uint *WebKit::WebsiteDataStore::countNonDefaultSessionSets(void *a1, void *a2)
{
  v4 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  v5 = (v4 + 16);
  atomic_fetch_add((v4 + 16), 1u);
  v7 = a1 + 3;
  WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::CountNonDefaultSessionSets,WTF::CompletionHandler<void ()(unsigned long long)>>(v4, &v7, a2, 0, 0, 1);
  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v5);
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::CountNonDefaultSessionSets,WTF::CompletionHandler<void ()(unsigned long long)>>(uint64_t a1, void **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 593;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F1121C10;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebKit::WebsiteDataStore::showPersistentNotification(WebKit::WebsiteDataStore *this, atomic_ullong *a2, const WebCore::NotificationData *a3)
{
  v6 = (*(**(this + 52) + 48))(*(this + 52), a3);
  if (v6)
  {
    return 1;
  }

  v8 = WebKit::WebNotificationManagerProxy::serviceWorkerManagerSingleton(v6);
  v12 = 0;
  v7 = WebKit::WebNotificationManagerProxy::showPersistent(v8, this, a2, a3, &v12);
  v10 = v12;
  v12 = 0;
  if (v10)
  {
    WTF::ThreadSafeRefCounted<WebCore::NotificationResources,(WTF::DestructionThread)0>::deref(v10, v9);
  }

  return v7;
}

WTF *WebKit::WebsiteDataStore::clearServiceWorkerNotification(WebKit::WebsiteDataStore *this, const WTF::UUID *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *a2;
  v2 = WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v6, &v8, 1uLL);
  v3 = WebKit::WebNotificationManagerProxy::serviceWorkerManagerSingleton(v2);
  WebKit::WebNotificationManagerProxy::clearNotifications(v3, 0, &v6);
  result = v6;
  if (v6)
  {
    v6 = 0;
    v7 = 0;
    return WTF::fastFree(result, v4);
  }

  return result;
}

uint64_t WebKit::WebsiteDataStore::openWindowFromServiceWorker(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  *a4 = 0;
  v7 = *(a1 + 416);
  v8 = WTF::fastMalloc(0x10);
  *v8 = &unk_1F1121C38;
  v8[1] = v6;
  v10 = v8;
  (*(*v7 + 32))(v7, a2, a3, &v10);
  result = v10;
  v10 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

WTF::StringImpl *WebKit::WebsiteDataStore::getNotifications(uint64_t a1, WebCore::SecurityOriginData *this, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 416);
  WebCore::SecurityOriginData::fromURL(&v8, this, this);
  result = (*(*v4 + 72))(v4, &v8, a3);
  if (!v10)
  {
    v7 = v9;
    v9 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v6);
    }

    result = v8;
    v8 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v6);
      }
    }
  }

  return result;
}

atomic_uint *WebKit::WebsiteDataStore::createDownloadProxy@<X0>(WebKit::WebsiteDataStore *a1@<X0>, void *a2@<X1>, const WebCore::ResourceRequest *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  v13 = (v12 + 16);
  atomic_fetch_add((v12 + 16), 1u);
  WebKit::NetworkProcessProxy::createDownloadProxy(v12, a1, a2, a3, a5, a4, a6);

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v13);
}

void WebKit::WebsiteDataStore::download(WebKit::WebsiteDataStore *this, const WebKit::DownloadProxy *a2, const WTF::String *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  WebCore::ResourceRequest::ResourceRequest(v40, (a2 + 72));
  LOBYTE(v44) = 0;
  v47 = 0;
  v6 = *(a2 + 36);
  if (v6 && (v7 = *(v6 + 8)) != 0)
  {
    CFRetain(*(v7 - 8));
    v8 = *(v7 + 1378);
    WTF::URL::URL(v37, (*(v7 + 16) + 1176));
    WebCore::ResourceRequestBase::setFirstPartyForCookies(v40, v37);
    v9 = WebCore::ResourceRequestBase::url((a2 + 72));
    WebCore::RegistrableDomain::RegistrableDomain(v41, v37);
    v10 = WTF::URL::host(v9);
    WebCore::RegistrableDomain::matches(v41, v10, v11 & 0xFFFFFFFFFFLL);
    v13 = v41[0];
    v41[0] = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v12);
    }

    WebCore::ResourceRequestBase::setIsSameSite(v40);
    std::optional<WebCore::SecurityOriginData>::operator=[abi:sn200100]<WebCore::SecurityOriginData const&,void>(&v44, (*(v7 + 16) + 1184));
    if ((WebCore::ResourceRequestBase::hasHTTPHeaderField() & 1) == 0)
    {
      WebCore::ResourceRequestBase::url((a2 + 72));
      v15 = *(v7 + 424);
      if (v15)
      {
        atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
      }

      v41[0] = v15;
      WebCore::ResourceRequestBase::setHTTPUserAgent(v40, v41);
      v16 = v41[0];
      v41[0] = 0;
      if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v14);
      }
    }

    v17 = v37[0];
    v37[0] = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v14);
    }

    v18 = v8 >> 8;
    CFRelease(*(v7 - 8));
  }

  else
  {
    v37[0] = 0;
    WTF::URL::invalidate(v37);
    WebCore::ResourceRequestBase::setFirstPartyForCookies(v40, v37);
    v20 = v37[0];
    v37[0] = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v19);
    }

    WebCore::ResourceRequestBase::setIsSameSite(v40);
    if ((WebCore::ResourceRequestBase::hasHTTPHeaderField() & 1) == 0)
    {
      v41[0] = 0;
      WebCore::standardUserAgentWithApplicationName();
      WebCore::ResourceRequestBase::setHTTPUserAgent(v40, v37);
      v22 = v37[0];
      v37[0] = 0;
      if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v21);
      }

      v23 = v41[0];
      v41[0] = 0;
      if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v21);
      }
    }

    LOBYTE(v8) = 0;
    LOBYTE(v18) = 1;
  }

  WebCore::ResourceRequestBase::setIsTopSite(v40);
  v25 = WebKit::WebsiteDataStore::networkProcess(this, v24);
  atomic_fetch_add((v25 + 16), 1u);
  v36 = *(a2 + 7);
  v37[0] = (this + 24);
  v37[1] = &v36;
  v37[2] = v40;
  v37[3] = &v44;
  *v38 = v8 | (v18 << 8);
  v39 = a3;
  v27 = IPC::Encoder::operator new(0x238, v26);
  *v27 = 604;
  *(v27 + 68) = 0;
  *(v27 + 70) = 0;
  *(v27 + 69) = 0;
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  *(v27 + 1) = 0;
  IPC::Encoder::encodeHeader(v27);
  v43 = v27;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v27, *(this + 3));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v27, v36);
  IPC::ArgumentCoder<WebCore::ResourceRequest,void>::encode(v27, v40);
  IPC::ArgumentCoder<std::optional<WebCore::SecurityOriginData>,void>::encode<IPC::Encoder,std::optional<WebCore::SecurityOriginData> const&>(v27, &v44);
  IPC::ArgumentCoder<std::optional<WebKit::NavigatingToAppBoundDomain>,void>::encode<IPC::Encoder,std::optional<WebKit::NavigatingToAppBoundDomain>&>(v27, v38);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v27, v39);
  LOBYTE(v41[0]) = 0;
  v42 = 0;
  WebKit::AuxiliaryProcessProxy::sendMessage(v25, &v43, 0, v41, 1);
  if (v42 == 1)
  {
    v29 = v41[0];
    v41[0] = 0;
    if (v29)
    {
      (*(*v29 + 8))(v29);
    }
  }

  v30 = v43;
  v43 = 0;
  if (v30)
  {
    IPC::Encoder::~Encoder(v30, v28);
    bmalloc::api::tzoneFree(v34, v35);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v25 + 16));
  if (v47 == 1 && !v46)
  {
    v32 = v45;
    v45 = 0;
    if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v32, v31);
    }

    v33 = v44;
    v44 = 0;
    if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v33, v31);
    }
  }

  WebCore::ResourceRequest::~ResourceRequest(v40);
}

void WebKit::WebsiteDataStore::resumeDownload(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v27 = 0;
  if (*a4)
  {
    if (*(*a4 + 4))
    {
      WebKit::SandboxExtension::createHandle(1, &v28);
      if (v29 == 1)
      {
        v27 = v28;
        v28 = 0;
        WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v28);
      }
    }
  }

  activityAccessToken(&v28);
  v9 = v28;
  v10 = v30;
  v12 = WebKit::WebsiteDataStore::networkProcess(a1, v11);
  atomic_fetch_add((v12 + 16), 1u);
  v13 = *(a2 + 56);
  v15 = *(a3 + 16);
  v14 = *(a3 + 24);
  v17 = IPC::Encoder::operator new(0x238, v16);
  *v17 = 663;
  *(v17 + 68) = 0;
  *(v17 + 70) = 0;
  *(v17 + 69) = 0;
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 1) = 0;
  IPC::Encoder::encodeHeader(v17);
  v32 = v17;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, a1[3]);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, v13);
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v17, v15, v14);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v17, a4);
  IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::encode(v17, &v27);
  v18 = IPC::Encoder::grow(v17, 1uLL, 1);
  if (v19)
  {
    *v18 = a5;
    IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v17, v9, v10);
    LOBYTE(v28) = 0;
    v31 = 0;
    WebKit::AuxiliaryProcessProxy::sendMessage(v12, &v32, 0, &v28, 1);
    if (v31 == 1)
    {
      v21 = v28;
      v28 = 0;
      if (v21)
      {
        (*(*v21 + 8))(v21);
      }
    }

    v22 = v32;
    v32 = 0;
    if (v22)
    {
      IPC::Encoder::~Encoder(v22, v20);
      bmalloc::api::tzoneFree(v24, v25);
    }

    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v12 + 16));
    if (v9)
    {
      WTF::fastFree(v9, v23);
    }

    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v27);
  }

  else
  {
    __break(0xC471u);
  }
}

BOOL WebKit::WebsiteDataStore::hasActivePages(WebKit::WebsiteDataStore *this)
{
  WebKit::WebProcessPool::allProcessPools(&v9);
  if (v10)
  {
    v3 = v9;
    v4 = 8 * v10 - 8;
    do
    {
      v5 = *v3++;
      hasPagesUsingWebsiteDataStore = WebKit::WebProcessPool::hasPagesUsingWebsiteDataStore(v5, this);
      if (hasPagesUsingWebsiteDataStore)
      {
        break;
      }

      v7 = v4;
      v4 -= 8;
    }

    while (v7);
  }

  else
  {
    hasPagesUsingWebsiteDataStore = 0;
  }

  WTF::Vector<WTF::Ref<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v9, v2);
  return hasPagesUsingWebsiteDataStore;
}

atomic_uint *WebKit::WebsiteDataStore::clearProxyConfigData(WebKit::WebsiteDataStore *this, void *a2)
{
  v3 = WebKit::WebsiteDataStore::networkProcess(this, a2);
  v4 = (v3 + 16);
  atomic_fetch_add((v3 + 16), 1u);
  v6 = (this + 24);
  WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::ClearProxyConfigData>(v3, &v6, 0, 0);
  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v4);
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::ClearProxyConfigData>(uint64_t a1, void **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 586;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, **a2);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

uint64_t WebKit::WebsiteDataStore::setProxyConfigData(WebKit::WebsiteDataStore *this, _DWORD *a2)
{
  if (*(this + 512) == 1)
  {
    WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 496, a2);
    *(this + 512) = 0;
  }

  v4 = WebKit::WebsiteDataStore::networkProcess(this, a2);
  v5 = (v4 + 16);
  atomic_fetch_add((v4 + 16), 1u);
  v7[0] = (this + 24);
  v7[1] = a2;
  WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::SetProxyConfigData>(v4, v7, 0, 0);
  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v5);
  return std::optional<WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::operator=[abi:sn200100]<WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,void>(this + 496, a2);
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::SetProxyConfigData>(uint64_t a1, uint64_t **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 697;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, **a2);
  IPC::VectorArgumentCoder<false,std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v8, a2[1]);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

uint64_t std::optional<WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::operator=[abi:sn200100]<WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,void>(uint64_t a1, _DWORD *a2)
{
  if (*(a1 + 16) == 1)
  {
    v4 = *(a1 + 12);
    if (v4)
    {
      v5 = *a1;
      v6 = 48 * v4;
      do
      {
        v7 = *v5;
        if (*v5)
        {
          *v5 = 0;
          *(v5 + 8) = 0;
          WTF::fastFree(v7, a2);
        }

        v5 += 48;
        v6 -= 48;
      }

      while (v6);
    }

    WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
    *(a1 + 16) = 1;
  }

  return a1;
}

uint64_t WebKit::WebsiteDataStore::setCompletionHandlerForRemovalFromNetworkProcess(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 472))
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v4 = *(a1 + 472);
    *(a1 + 472) = 0;
    (*(*v4 + 16))(v4, &v9);
    (*(*v4 + 8))(v4);
    v6 = v9;
    v9 = 0;
    if (v6)
    {
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v5);
      }
    }
  }

  v7 = *a2;
  *a2 = 0;
  result = *(a1 + 472);
  *(a1 + 472) = v7;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

atomic_uint *WebKit::WebsiteDataStore::setOriginQuotaRatioEnabledForTesting(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = *(a1 + 432);
  if (v4)
  {
    v5 = (v4 + 16);
    atomic_fetch_add((v4 + 16), 1u);
    v9 = a1 + 24;
    v10 = a2;
    WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetOriginQuotaRatioEnabledForTesting,WTF::CompletionHandler<void ()(void)>>(v4, &v9, a3, 0, 0, 1);
    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v5);
  }

  else
  {
    v7 = *a3;
    *a3 = 0;
    (*(*v7 + 16))(v7);
    v8 = *(*v7 + 8);

    return v8(v7);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetOriginQuotaRatioEnabledForTesting,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 685;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::Encoder::operator<<<BOOL &>(v12, a2 + 8);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F1121C88;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

atomic_uint *WebKit::WebsiteDataStore::getAppBadgeForTesting(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 432);
  if (v3)
  {
    v4 = (v3 + 16);
    atomic_fetch_add((v3 + 16), 1u);
    v8 = (a1 + 24);
    WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::GetAppBadgeForTesting,WTF::CompletionHandler<void ()(std::optional<unsigned long long>)>>(v3, &v8, a2, 0, 0, 1);
    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v4);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    (*(*v6 + 16))(v6, 0, 0);
    v7 = *(*v6 + 8);

    return v7(v6);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::GetAppBadgeForTesting,WTF::CompletionHandler<void ()(std::optional<unsigned long long>)>>(uint64_t a1, void **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 614;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F1121CB0;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void WebKit::WebsiteDataStore::processPushMessage(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a2 + 208);
  v38 = a1;
  CFRetain(*(a1 + 8));
  v39 = a1;
  v40 = v6;
  LOBYTE(v41) = 0;
  v43 = 0;
  if (*(a2 + 16) == 1)
  {
    v7 = *(a2 + 12);
    v41 = 0;
    LODWORD(v42) = 0;
    HIDWORD(v42) = v7;
    if (v7)
    {
      LODWORD(v42) = v7;
      v41 = WTF::fastMalloc(v7);
      memcpy(v41, *a2, *(a2 + 12));
    }

    v43 = 1;
  }

  v8 = *(a2 + 24);
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  v44 = v8;
  v9 = *(a2 + 32);
  if (v9)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  v45 = v9;
  v10 = *(a2 + 56);
  v46 = *(a2 + 40);
  v47 = v10;
  LOBYTE(v48) = 0;
  v62 = 0;
  if (*(a2 + 208) == 1)
  {
    v11 = *(a2 + 72);
    if (v11)
    {
      atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
    }

    v48 = v11;
    v12 = *(a2 + 96);
    v49 = *(a2 + 80);
    v50 = v12;
    v13 = *(a2 + 112);
    if (v13)
    {
      atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
    }

    v51 = v13;
    v52 = *(a2 + 120);
    v53 = 0;
    v60 = 0;
    if (*(a2 + 192) == 1)
    {
      v53 = *(a2 + 136);
      v14 = *(a2 + 144);
      if (v14)
      {
        atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
      }

      v54 = v14;
      v15 = *(a2 + 152);
      if (v15)
      {
        atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
      }

      v55 = v15;
      v16 = *(a2 + 160);
      if (v16)
      {
        atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
      }

      v56 = v16;
      v17 = *(a2 + 168);
      if (v17)
      {
        atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
      }

      v57 = v17;
      v18 = *(a2 + 176);
      if (v18)
      {
        atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
      }

      v58 = v18;
      v59 = *(a2 + 184);
      v60 = 1;
    }

    v19 = *(a2 + 200);
    v61 = v19;
    v62 = 1;
    v20 = *(a2 + 208);
    v21 = *a3;
    *a3 = 0;
    v63 = v21;
    if ((v20 & 1) != 0 && (v19 & 1) == 0 && *(*(a1 + 224) + 491) == 1)
    {
      WebKit::WebsiteDataStore::processPushMessage(WebKit::WebPushMessage &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(&v38, 1, a2 + 72);
      goto LABEL_40;
    }
  }

  else
  {
    v23 = *a3;
    *a3 = 0;
    v63 = v23;
  }

  v24 = qword_1ED6410A8;
  if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v37) = 0;
    _os_log_impl(&dword_19D52D000, v24, OS_LOG_TYPE_DEFAULT, "Sending push message to network process to handle", &v37, 2u);
  }

  v26 = WebKit::WebsiteDataStore::networkProcess(a1, v25);
  atomic_fetch_add(v26 + 4, 1u);
  v27 = *(a1 + 24);
  v28 = WTF::fastMalloc(0x100);
  v29 = v28;
  *v28 = &unk_1F1121CD8;
  *(v28 + 8) = v38;
  v30 = v39;
  v39 = 0;
  *(v28 + 16) = v30;
  *(v28 + 24) = v40;
  *(v28 + 32) = 0;
  *(v28 + 48) = 0;
  if (v43 == 1)
  {
    *(v28 + 32) = v41;
    v31 = v42;
    v41 = 0;
    v42 = 0;
    *(v28 + 40) = v31;
    *(v28 + 48) = 1;
  }

  v32 = v44;
  v44 = 0;
  *(v28 + 56) = v32;
  WTF::URL::URL(v28 + 64, &v45);
  *(v29 + 104) = 0;
  *(v29 + 240) = 0;
  if (v62 == 1)
  {
    std::__optional_storage_base<WebCore::NotificationPayload,false>::__construct[abi:sn200100]<WebCore::NotificationPayload>(v29 + 104, &v48);
  }

  v33 = v63;
  v63 = 0;
  *(v29 + 248) = v33;
  v37 = v29;
  WebKit::NetworkProcessProxy::processPushMessage(v26, v27, a2, &v37);
  v34 = v37;
  v37 = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v26 + 4);
LABEL_40:
  v35 = v63;
  v63 = 0;
  if (v35)
  {
    (*(*v35 + 8))(v35);
  }

  WebKit::WebPushMessage::~WebPushMessage(&v41, v22);
  v36 = v39;
  v39 = 0;
  if (v36)
  {
    CFRelease(*(v36 + 8));
  }
}

void WebKit::WebsiteDataStore::processPushMessage(WebKit::WebPushMessage &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16) == 1 && (v4 = *a1, (*(*(*a1 + 224) + 491) & 1) != 0))
  {
    if (*(a3 + 136))
    {
      v6 = *(a1 + 232);
      v7 = a1 + 96;
      if (v6 == 1)
      {
        WTF::URL::operator=(v7, a3);
        v9 = *(a3 + 40);
        *(a3 + 40) = 0;
        v10 = *(a1 + 136);
        *(a1 + 136) = v9;
        if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v10, v8);
        }

        v11 = *(a3 + 48);
        *(a1 + 152) = *(a3 + 56);
        *(a1 + 144) = v11;
        std::__optional_storage_base<WebCore::NotificationOptionsPayload,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::NotificationOptionsPayload,false>>(a1 + 160, a3 + 64);
        *(a1 + 224) = *(a3 + 128);
      }

      else
      {
        std::__optional_storage_base<WebCore::NotificationPayload,false>::__construct[abi:sn200100]<WebCore::NotificationPayload>(v7, a3);
      }

      WebKit::WebPushMessage::notificationPayloadToCoreData((a1 + 24), v12, &v23);
      v15 = WebKit::WebsiteDataStore::showPersistentNotification(v4, 0, &v23);
      WebCore::NotificationData::~NotificationData(&v23, v16);
      if (*(a1 + 232))
      {
        if (*(a1 + 152) != 1)
        {
LABEL_24:
          v22 = *(a1 + 240);
          *(a1 + 240) = 0;
          (*(*v22 + 16))(v22, v15);
          (*(*v22 + 8))(v22);
          return;
        }

        v18 = *(v4 + 52);
        WebCore::SecurityOriginData::fromURL(&v23, (a1 + 56), v17);
        if (*(a1 + 232) & 1) != 0 && (*(a1 + 152))
        {
          (*(*v18 + 80))(v18, &v23, *(a1 + 144), 1);
          if (!v25)
          {
            v20 = v24;
            v24 = 0;
            if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v20, v19);
            }

            v21 = v23;
            v23 = 0;
            if (v21)
            {
              if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v21, v19);
              }
            }
          }

          goto LABEL_24;
        }
      }
    }

    else
    {
      __break(0xC471u);
    }

    __break(1u);
  }

  else
  {
    v13 = *(a1 + 240);
    *(a1 + 240) = 0;
    (*(*v13 + 16))(v13);
    v14 = *(*v13 + 8);

    v14(v13);
  }
}

uint64_t WebKit::WebsiteDataStore::openerTypeForDomain(WebKit::WebsiteDataStore *this, WTF **a2, const WTF::StringImpl *a3)
{
  v3 = *(this + 61);
  if (v3 && *(v3 - 12))
  {
    v6 = WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WebKit::RestrictedOpenerType>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WebKit::RestrictedOpenerType>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WebKit::RestrictedOpenerType,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebKit::RestrictedOpenerType>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::RegistrableDomain,WebKit::RestrictedOpenerType,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebKit::RestrictedOpenerType>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::RegistrableDomain>>,(WTF::ShouldValidateKey)1,WebCore::RegistrableDomain>(this + 61, a2, a3);
    v7 = *(this + 61);
    if (v7)
    {
      v7 += 16 * *(v7 - 4);
    }

    if (v7 == v6)
    {
      return 0;
    }

    else
    {
      return *(v6 + 8);
    }
  }

  else
  {
    {
      v8 = a2;
      WebKit::RestrictedOpenerDomainsController::RestrictedOpenerDomainsController(&WebKit::RestrictedOpenerDomainsController::shared(void)::sharedInstance);
      a2 = v8;
    }

    return WebKit::RestrictedOpenerDomainsController::lookup(&WebKit::RestrictedOpenerDomainsController::shared(void)::sharedInstance, a2);
  }
}

uint64_t WebKit::WebsiteDataStore::setRestrictedOpenerTypeForDomainForTesting(uint64_t a1, WTF **a2, char a3)
{
  v7 = a3;
  result = *a2;
  if (*a2 && *(result + 4))
  {
    result = MEMORY[0x19EB01EF0]();
    if ((result & 1) == 0)
    {
      return WTF::HashMap<WebCore::RegistrableDomain,WebKit::RestrictedOpenerType,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebKit::RestrictedOpenerType>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::RegistrableDomain const&,WebKit::RestrictedOpenerType&>((a1 + 488), a2, &v7, &v6);
    }
  }

  return result;
}

atomic_uint *WebKit::WebsiteDataStore::fetchLocalStorage(WebKit::WebsiteDataStore *this, void *a2)
{
  v4 = *(this + 54);
  if (!v4)
  {
    v4 = WebKit::WebsiteDataStore::networkProcess(this, a2);
  }

  v5 = (v4 + 16);
  atomic_fetch_add((v4 + 16), 1u);
  v6 = *(this + 3);
  v8 = &v9;
  v9 = v6;
  WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::FetchLocalStorage,WTF::CompletionHandler<void ()(std::optional<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> &&)>>(v4, &v8, a2, 0, 0, 1);

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v5);
}

atomic_uint *WebKit::WebsiteDataStore::restoreLocalStorage(WebKit::WebsiteDataStore *a1, void *a2, uint64_t *a3)
{
  v6 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  v7 = (v6 + 16);
  atomic_fetch_add((v6 + 16), 1u);
  v8 = *(a1 + 3);
  v10[1] = a2;
  v11 = v8;
  v10[0] = &v11;
  WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::RestoreLocalStorage,WTF::CompletionHandler<void ()(BOOL)>>(v6, v10, a3, 0, 0, 1);

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v7);
}

uint64_t WebKit::WebsiteDataStore::builtInNotificationsEnabled(WebKit::WebsiteDataStore *this, void *a2)
{
  v2 = (this + 344);
  if (WTF::WeakHashSet<WebKit::ProcessThrottlerActivity,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::computeSize(this + 344, a2))
  {
    WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(v2, &v18);
    v3 = *v2;
    if (*v2)
    {
      v4 = *(v3 - 1);
      v5 = &v3[v4];
    }

    else
    {
      v5 = 0;
      v4 = 0;
    }

    v13 = v2;
    v14 = v5;
    v15 = v5;
    v16 = v5;
    v17 = &v3[v4];
    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v13);
    v7 = v19;
    if (v19 == v14)
    {
      return 0;
    }

    do
    {
      v8 = *(*v7 + 8);
      if (v8)
      {
        v9 = v8 - 16;
      }

      else
      {
        v9 = 0;
      }

      CFRetain(*(v9 + 8));
      v10 = *(v9 + 368);
      CFRetain(*(v10 + 8));
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::builtInNotificationsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::builtInNotificationsEnabledKey(void)::key = WebKit::WebPreferencesKey::builtInNotificationsEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      BoolValueForKey = WebKit::WebPreferencesStore::getBoolValueForKey((v10 + 40), &WebKit::WebPreferencesKey::builtInNotificationsEnabledKey(void)::key, v11);
      CFRelease(*(v10 + 8));
      if (v8)
      {
        CFRelease(*(v8 - 8));
      }

      if (BoolValueForKey)
      {
        break;
      }

      WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v18);
      v7 = v19;
    }

    while (v19 != v14);
    return BoolValueForKey;
  }

  else
  {

    return _os_feature_enabled_impl();
  }
}

atomic_uint *WebKit::WebsiteDataStore::resetResourceMonitorThrottlerForTesting(WebKit::WebsiteDataStore *a1, void *a2)
{
  v4 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  v5 = (v4 + 16);
  atomic_fetch_add((v4 + 16), 1u);
  v6 = *(a1 + 3);
  v8 = &v9;
  v9 = v6;
  WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::ResetResourceMonitorThrottlerForTesting,WTF::CompletionHandler<void ()(void)>>(v4, &v8, a2, 0, 0, 1);

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v5);
}

atomic_uint *WebKit::WebsiteDataStore::setCookies(WebKit::WebsiteDataStore *a1, void *a2, uint64_t *a3)
{
  v6 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  v7 = (v6 + 16);
  atomic_fetch_add((v6 + 16), 1u);
  v8 = *(a1 + 69) + 1;
  *(a1 + 69) = v8;
  v10[0] = a1 + 24;
  v10[1] = a2;
  v10[2] = v8;
  WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebCookieManager::SetCookie,WTF::CompletionHandler<void ()(void)>>(v6, v10, a3, 0, 0, 1);
  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v7);
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebCookieManager::SetCookie,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 1853;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::VectorArgumentCoder<false,WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v12, a2[1]);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, a2[2]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F1121D00;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

WebKit::WebsiteDataStoreConfiguration *WebKit::WebsiteDataStoreConfiguration::WebsiteDataStoreConfiguration(WebKit::WebsiteDataStoreConfiguration *this, const WTF::UUID *a2)
{
  v4 = API::Object::Object(this);
  *v4 = &unk_1F1121198;
  *(v4 + 8) = 513;
  *(v4 + 2) = *a2;
  WebKit::WebsiteDataStore::defaultWebsiteDataStoreDirectory(a2, v5);
  WebKit::WebsiteDataStore::defaultWebsiteDataStoreDirectory(a2, v6);
  v7 = WTF::StringImpl::createWithoutCopyingNonEmpty();
  *(this + 8) = v13;
  *(this + 216) = 0u;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  *(this + 168) = 0u;
  *(this + 152) = 0u;
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 29) = 1048576000;
  isFullWebBrowserOrRunningTest = WebKit::isFullWebBrowserOrRunningTest(v7);
  v9 = 0x3FC3333333333333;
  if (isFullWebBrowserOrRunningTest)
  {
    v9 = 0x3FE3333333333333;
  }

  *(this + 30) = v9;
  *(this + 248) = 1;
  v10 = WebKit::isFullWebBrowserOrRunningTest(isFullWebBrowserOrRunningTest);
  v11 = 0x3FC999999999999ALL;
  if (v10)
  {
    v11 = 0x3FE999999999999ALL;
  }

  *(this + 32) = v11;
  *(this + 264) = 1;
  *(this + 34) = 0x1000000000;
  *(this + 280) = 1;
  *(this + 288) = 0;
  *(this + 296) = 0;
  *(this + 152) = 256;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 43) = 0;
  WTF::URL::invalidate((this + 344));
  *(this + 48) = 0;
  WTF::URL::invalidate((this + 384));
  *(this + 53) = 0x10000010000;
  *(this + 432) = 1;
  *(this + 440) = 0;
  *(this + 433) = 0;
  *(this + 111) = 1;
  *(this + 56) = 0;
  WTF::URL::invalidate((this + 448));
  *(this + 122) = 0;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  *(this + 62) = v13;
  *(this + 530) = 0u;
  *(this + 504) = 0u;
  *(this + 520) = 0u;
  WebKit::WebsiteDataStoreConfiguration::initializePaths(this);
  return this;
}

WebKit::WebsiteDataStoreConfiguration *WebKit::WebsiteDataStoreConfiguration::WebsiteDataStoreConfiguration(WebKit::WebsiteDataStoreConfiguration *this, atomic_uint **a2, atomic_uint **a3)
{
  v6 = API::Object::Object(this);
  *v6 = &unk_1F1121198;
  *(v6 + 8) = 513;
  *(v6 + 4) = 0;
  *(v6 + 5) = 0;
  v7 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  *(this + 6) = v7;
  v8 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  *(this + 7) = v8;
  v9 = WTF::StringImpl::createWithoutCopyingNonEmpty();
  *(this + 8) = v15;
  *(this + 216) = 0u;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  *(this + 168) = 0u;
  *(this + 152) = 0u;
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 29) = 1048576000;
  isFullWebBrowserOrRunningTest = WebKit::isFullWebBrowserOrRunningTest(v9);
  v11 = 0x3FC3333333333333;
  if (isFullWebBrowserOrRunningTest)
  {
    v11 = 0x3FE3333333333333;
  }

  *(this + 30) = v11;
  *(this + 248) = 1;
  v12 = WebKit::isFullWebBrowserOrRunningTest(isFullWebBrowserOrRunningTest);
  v13 = 0x3FC999999999999ALL;
  if (v12)
  {
    v13 = 0x3FE999999999999ALL;
  }

  *(this + 32) = v13;
  *(this + 264) = 1;
  *(this + 34) = 0x1000000000;
  *(this + 280) = 1;
  *(this + 288) = 0;
  *(this + 296) = 0;
  *(this + 152) = 256;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 43) = 0;
  WTF::URL::invalidate((this + 344));
  *(this + 48) = 0;
  WTF::URL::invalidate((this + 384));
  *(this + 53) = 0x10000010000;
  *(this + 432) = 1;
  *(this + 440) = 0;
  *(this + 433) = 0;
  *(this + 111) = 1;
  *(this + 56) = 0;
  WTF::URL::invalidate((this + 448));
  *(this + 122) = 0;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
  *(this + 272) = 0;
  WebKit::WebsiteDataStoreConfiguration::initializePaths(this);
  return this;
}

void WebKit::CtapNfcDriver::~CtapNfcDriver(WebKit::CtapNfcDriver *this, void *a2)
{
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    WTF::RefCounted<WebKit::NfcConnection>::deref((v3 + 8));
  }

  if (*(this + 4) == 1)
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);
  }

  else
  {
    __break(0xC471u);
  }
}

{
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    WTF::RefCounted<WebKit::NfcConnection>::deref((v3 + 8));
  }

  if (*(this + 4) == 1)
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);

    bmalloc::api::tzoneFree(this, v4);
  }

  else
  {
    __break(0xC471u);
  }
}

void WebKit::U2fAuthenticator::~U2fAuthenticator(WebKit::U2fAuthenticator *this, void *a2)
{
  v3 = *(this + 111);
  if (v3)
  {
    *(this + 111) = 0;
    *(this + 224) = 0;
    WTF::fastFree(v3, a2);
  }

  *(this + 105) = &unk_1F10E6DC8;
  v4 = *(this + 110);
  *(this + 110) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  WTF::RunLoop::TimerBase::~TimerBase((this + 840));

  WebKit::FidoAuthenticator::~FidoAuthenticator(this);
}

{
  v3 = *(this + 111);
  if (v3)
  {
    *(this + 111) = 0;
    *(this + 224) = 0;
    WTF::fastFree(v3, a2);
  }

  *(this + 105) = &unk_1F10E6DC8;
  v4 = *(this + 110);
  *(this + 110) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  WTF::RunLoop::TimerBase::~TimerBase((this + 840));
  WebKit::FidoAuthenticator::~FidoAuthenticator(this);

  WTF::fastFree(v5, v6);
}

uint64_t WTF::Vector<WTF::CompletionHandler<void ()(WebCore::DeviceOrientationOrMotionPermissionState)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
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

uint64_t WebKit::SOAuthorizationCoordinator::operator new(WebKit::SOAuthorizationCoordinator *this, void *a2)
{
  if (this == 16 && WebKit::SOAuthorizationCoordinator::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::SOAuthorizationCoordinator::s_heapRef, a2);
  }

  else
  {
    return WebKit::SOAuthorizationCoordinator::operatorNewSlow(this);
  }
}

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::forwardAppBoundDomainsToITPIfInitialized(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator() const(WebKit::WebsiteDataStore*,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11211C0;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::forwardAppBoundDomainsToITPIfInitialized(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator() const(WebKit::WebsiteDataStore*,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11211C0;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::forwardAppBoundDomainsToITPIfInitialized(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator() const(WebKit::WebsiteDataStore*,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::{lambda(void)#2},void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11211E8;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::forwardAppBoundDomainsToITPIfInitialized(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator() const(WebKit::WebsiteDataStore*,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::{lambda(void)#2},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11211E8;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::forwardManagedDomainsToITPIfInitialized(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator() const(WebKit::WebsiteDataStore*,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1121210;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::forwardManagedDomainsToITPIfInitialized(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator() const(WebKit::WebsiteDataStore*,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1121210;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::forwardManagedDomainsToITPIfInitialized(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator() const(WebKit::WebsiteDataStore*,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::{lambda(void)#2},void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1121238;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::forwardManagedDomainsToITPIfInitialized(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator() const(WebKit::WebsiteDataStore*,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::{lambda(void)#2},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1121238;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void std::__optional_storage_base<WebCore::NotificationPayload,false>::__construct[abi:sn200100]<WebCore::NotificationPayload>(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    WTF::URL::URL(a1, a2);
    v4 = *(a2 + 40);
    *(a2 + 40) = 0;
    *(v3 + 40) = v4;
    *(v3 + 48) = *(a2 + 48);
    *(v3 + 64) = 0;
    *(v3 + 120) = 0;
    if (*(a2 + 120) == 1)
    {
      *(v3 + 64) = *(a2 + 64);
      v5 = *(a2 + 72);
      *(a2 + 72) = 0;
      *(v3 + 72) = v5;
      v6 = *(a2 + 80);
      *(a2 + 80) = 0;
      *(v3 + 80) = v6;
      v7 = *(a2 + 88);
      *(a2 + 88) = 0;
      *(v3 + 88) = v7;
      v8 = *(a2 + 96);
      *(a2 + 96) = 0;
      *(v3 + 96) = v8;
      v9 = *(a2 + 104);
      *(a2 + 104) = 0;
      *(v3 + 104) = v9;
      *(v3 + 112) = *(a2 + 112);
      *(v3 + 120) = 1;
    }

    *(v3 + 128) = *(a2 + 128);
    *(v3 + 136) = 1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t std::__optional_storage_base<WebCore::NotificationOptionsPayload,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::NotificationOptionsPayload,false>>(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (*(result + 56) == *(a2 + 56))
  {
    if (*(result + 56))
    {

      return WebCore::NotificationOptionsPayload::operator=(result, a2);
    }
  }

  else if (*(result + 56))
  {
    v3 = *(result + 40);
    *(v2 + 40) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    v4 = *(v2 + 32);
    *(v2 + 32) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    v5 = *(v2 + 24);
    *(v2 + 24) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    v6 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }

    result = *(v2 + 8);
    *(v2 + 8) = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, a2);
    }

    *(v2 + 56) = 0;
  }

  else
  {
    *result = *a2;
    v7 = *(a2 + 8);
    *(a2 + 8) = 0;
    *(result + 8) = v7;
    v8 = *(a2 + 16);
    *(a2 + 16) = 0;
    *(result + 16) = v8;
    v9 = *(a2 + 24);
    *(a2 + 24) = 0;
    *(result + 24) = v9;
    v10 = *(a2 + 32);
    *(a2 + 32) = 0;
    *(result + 32) = v10;
    v11 = *(a2 + 40);
    *(a2 + 40) = 0;
    *(result + 40) = v11;
    *(result + 48) = *(a2 + 48);
    *(result + 56) = 1;
  }

  return result;
}

uint64_t WebCore::NotificationOptionsPayload::operator=(uint64_t a1, uint64_t a2)
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
  *(a2 + 24) = 0;
  v9 = *(a1 + 24);
  *(a1 + 24) = v8;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, a2);
  }

  v10 = *(a2 + 32);
  *(a2 + 32) = 0;
  v11 = *(a1 + 32);
  *(a1 + 32) = v10;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, a2);
  }

  v12 = *(a2 + 40);
  *(a2 + 40) = 0;
  v13 = *(a1 + 40);
  *(a1 + 40) = v12;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, a2);
  }

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::CtapNfcDriver::respondAsync(WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)::$_0,void>::~CallableWrapper(uint64_t a1, void *a2)
{
  *a1 = &unk_1F1121260;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::CtapNfcDriver::respondAsync(WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1121260;
  v3 = *(this + 2);
  if (v3)
  {
    *(this + 2) = 0;
    *(this + 6) = 0;
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::FidoService::getInfo(WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>> &&)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1121288;
  v3 = a1[2];
  a1[2] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
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

uint64_t WTF::Detail::CallableWrapper<WebKit::FidoService::getInfo(WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>> &&)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1121288;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
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

uint64_t *WTF::Detail::CallableWrapper<WebKit::FidoService::getInfo(WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>> &&)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::call(uint64_t *result, uint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = result[1];
  if (!v2 || (v3 = *(v2 + 8)) == 0)
  {
    v15 = result[2];
    if (!v15)
    {
      return result;
    }

    v5 = *(v15 + 8);
    if (!v5)
    {
      return result;
    }

    v16 = v5[4];
    v5[4] = v16 + 1;
    if (v16)
    {
      v5[4] = v16;
      return result;
    }

    v3 = 0;
    v40 = 1;
    goto LABEL_76;
  }

  ++*(v3 + 24);
  v4 = result[2];
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      ++v5[4];
      result = (v3 + 32);
      v6 = *(v3 + 32);
      if (!v6)
      {
        goto LABEL_60;
      }

      v8 = *(v6 - 8);
      v9 = (v5 + ~(v5 << 32)) ^ ((v5 + ~(v5 << 32)) >> 22);
      v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
      v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
      v12 = v8 & ((v11 >> 31) ^ v11);
      for (i = 1; ; v12 = (v12 + i++) & v8)
      {
        v14 = *(v6 + 8 * v12);
        if (v14 != -1)
        {
          if (!v14)
          {
            goto LABEL_60;
          }

          if (v14 == v5)
          {
            break;
          }
        }
      }

      if (*(v6 - 4) == v12)
      {
        goto LABEL_60;
      }

      v17 = (v6 + 8 * v12);
      *v17 = 0;
      v18 = *result;
      if (*result)
      {
        v19 = (v18 + 8 * *(v18 - 4));
        if (v19 == v17)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v19 = 0;
      }

      if (v19 != v17)
      {
        *v17 = -1;
        v20 = vadd_s32(*(v18 - 16), 0xFFFFFFFF00000001);
        *(v18 - 16) = v20;
        v21 = *(v18 - 4);
        if (6 * v20.i32[1] < v21 && v21 >= 9)
        {
          result = WTF::HashTable<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>,WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::HashTraits<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::HashTraits<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::FastMalloc>::rehash(result, v21 >> 1, 0);
        }
      }

LABEL_27:
      v23 = *(v3 + 16);
      if (!v23)
      {
        goto LABEL_58;
      }

      v24 = *(v23 + 8);
      if (!v24)
      {
        goto LABEL_58;
      }

      (**v24)(v24);
      if (!*(a2 + 12))
      {
LABEL_57:
        result = (*(*v24 + 8))(v24);
        if (!v14)
        {
LABEL_60:
          if (v5[4] != 1)
          {
            --v5[4];
            goto LABEL_62;
          }

          v40 = 0;
LABEL_76:
          result = (*(*v5 + 8))(v5);
          if (v40)
          {
            return result;
          }

          goto LABEL_62;
        }

LABEL_58:
        if (v14[4] == 1)
        {
          result = (*(*v14 + 8))(v14);
        }

        else
        {
          --v14[4];
        }

        goto LABEL_60;
      }

      v25 = qword_1ED641530;
      if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
      {
        WTF::base64EncodeToString();
        WTF::String::utf8();
        if (v42)
        {
          v26 = v42 + 16;
        }

        else
        {
          v26 = 0;
        }

        *buf = 134218242;
        *v44 = v3;
        *&v44[8] = 2080;
        *&v44[10] = v26;
        _os_log_impl(&dword_19D52D000, v25, OS_LOG_TYPE_DEFAULT, "%p - FidoService::Got response from getInfo: %s", buf, 0x16u);
        v28 = v42;
        v42 = 0;
        if (v28)
        {
          if (*v28 == 1)
          {
            WTF::fastFree(v28, v27);
          }

          else
          {
            --*v28;
          }
        }

        v29 = v41;
        v41 = 0;
        if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v29, v27);
        }
      }

      result = fido::readCTAPGetInfoResponse();
      if (v47 != 1)
      {
        goto LABEL_48;
      }

      v30 = *&v44[4];
      if (!*&v44[4])
      {
        goto LABEL_48;
      }

      v31 = &v44[4];
      do
      {
        v32 = *(v30 + 28);
        if ((v32 & 0x80000000) == 0)
        {
          v31 = v30;
        }

        v30 = *(v30 + ((v32 >> 28) & 8));
      }

      while (v30);
      if (v31 != &v44[4] && v31[7] <= 0)
      {
        v37 = v46;
        v14[7] = v45;
        *(v14 + 32) = v37;
        v41 = v14;
        if ((v47 & 1) == 0)
        {
          __break(1u);
          return result;
        }

        v38 = WTF::fastMalloc(0x450);
        v42 = WebKit::CtapAuthenticator::CtapAuthenticator(v38, &v41, buf);
        (*(*v24 + 32))(v24, &v42);
        v39 = v42;
        v42 = 0;
        if (v39)
        {
          if (*(v39 + 4) == 1)
          {
            (*(*v39 + 8))(v39);
          }

          else
          {
            --*(v39 + 4);
          }
        }

        v35 = v41;
        v41 = 0;
        if (!v35)
        {
          goto LABEL_54;
        }
      }

      else
      {
LABEL_48:
        v14[5] = 3;
        v41 = v14;
        v33 = WTF::fastMalloc(0x3A0);
        v42 = WebKit::U2fAuthenticator::U2fAuthenticator(v33, &v41);
        (*(*v24 + 32))(v24, &v42);
        v34 = v42;
        v42 = 0;
        if (v34)
        {
          if (*(v34 + 4) == 1)
          {
            (*(*v34 + 8))(v34);
          }

          else
          {
            --*(v34 + 4);
          }
        }

        v35 = v41;
        if (!v41)
        {
          goto LABEL_54;
        }
      }

      if (*(v35 + 4) == 1)
      {
        (*(*v35 + 8))(v35);
      }

      else
      {
        --*(v35 + 4);
      }

LABEL_54:
      if (v47 == 1)
      {
        fido::AuthenticatorGetInfoResponse::~AuthenticatorGetInfoResponse(buf);
      }

      v14 = 0;
      goto LABEL_57;
    }
  }

LABEL_62:
  if (*(v3 + 24) == 1)
  {
    v36 = *(*v3 + 24);

    return v36(v3);
  }

  else
  {
    --*(v3 + 24);
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>,WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::HashTraits<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::HashTraits<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>@<X0>(uint64_t *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 == -1 || !*a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19E15CE50);
  }

  v5 = result;
  v6 = *result;
  if (*result || (result = WTF::HashTable<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>,WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::HashTraits<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::HashTraits<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::FastMalloc>::expand(result, 0), (v6 = *v5) != 0))
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
      if (*(result + 4) == 1)
      {
        result = (*(*result + 8))(result);
      }

      else
      {
        --*(result + 4);
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
    v24 = (*(v19 - 16) + v20);
    v25 = *(v19 - 4);
    if (v25 > 0x400)
    {
      if (v25 <= 2 * v24)
      {
LABEL_27:
        result = WTF::HashTable<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>,WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::HashTraits<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::HashTraits<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::FastMalloc>::expand(v5, v17);
        v17 = result;
        v19 = *v5;
        if (*v5)
        {
          v25 = *(v19 - 4);
        }

        else
        {
          v25 = 0;
        }
      }
    }

    else if (3 * v25 <= 4 * v24)
    {
      goto LABEL_27;
    }

    v23 = v19 + 8 * v25;
    v22 = 1;
    goto LABEL_32;
  }

  if (v18 != v10)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    v21 = 0;
  }

  else
  {
    v21 = *(v6 - 4);
  }

  v22 = 0;
  v23 = v6 + 8 * v21;
LABEL_32:
  *a3 = v17;
  *(a3 + 8) = v23;
  *(a3 + 16) = v22;
  return result;
}

void *WTF::HashTable<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>,WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::HashTraits<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::HashTraits<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::FastMalloc>::expand(uint64_t *a1, void *a2)
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

  return WTF::HashTable<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>,WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::HashTraits<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::HashTraits<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

void *WTF::HashTable<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>,WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::HashTraits<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::HashTraits<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, void *a3)
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
            if (v25[4] == 1)
            {
              (*(*v25 + 8))(v25);
            }

            else
            {
              --v25[4];
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

uint64_t WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::U2fAuthenticator>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::U2fAuthenticator *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>::call(void *a1)
{
  v1 = a1[1];
  if (v1)
  {
    ++v1[4];
  }

  v2 = a1[2];
  v3 = a1[3];
  v4 = (v1 + (v3 >> 1));
  if (v3)
  {
    result = (*(*v4 + v2))();
  }

  else
  {
    result = v2(v4);
    if (!v1)
    {
      return result;
    }
  }

  if (v1[4] == 1)
  {
    v6 = *(*v1 + 8);

    return v6(v1);
  }

  else
  {
    --v1[4];
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::U2fAuthenticator::issueCommand(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WebKit::U2fAuthenticator::CommandType)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>&&>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F11212D8;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::U2fAuthenticator::issueCommand(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WebKit::U2fAuthenticator::CommandType)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>&&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11212D8;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::U2fAuthenticator::issueCommand(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WebKit::U2fAuthenticator::CommandType)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>&&>::call(uint64_t result)
{
  v94 = *MEMORY[0x1E69E9840];
  v1 = *(result + 8);
  if (!v1)
  {
    return result;
  }

  v2 = *(v1 + 8);
  if (!v2)
  {
    return result;
  }

  v3 = *(result + 16);
  apdu::ApduResponse::createFromMessage();
  v4 = qword_1ED641530;
  result = os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT);
  if ((v82 & 1) == 0)
  {
    if (result)
    {
      WebCore::toString();
      WTF::String::utf8();
      if (v83)
      {
        v20 = v83 + 16;
      }

      else
      {
        v20 = 0;
      }

      *buf = 134218242;
      *&buf[4] = v2;
      *&buf[12] = 2080;
      *&buf[14] = v20;
      _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p [transport=%s] - U2fAuthenticator::responseReceived: Failed to parse response.", buf, 0x16u);
      if (v83)
      {
        if (*v83 == 1)
        {
          WTF::fastFree(v83, v21);
        }

        else
        {
          --*v83;
        }
      }

      v22 = v85;
      v85 = 0;
      if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v21);
      }
    }

LABEL_58:
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v23 = 24;
LABEL_59:
    buf[0] = v23;
    buf[16] = 1;
LABEL_60:
    WebKit::Authenticator::receiveRespond(v2, buf);
    result = mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::~variant(buf);
    goto LABEL_61;
  }

  if (result)
  {
    WebCore::toString();
    WTF::String::utf8();
    if (v83)
    {
      v6 = v83 + 16;
    }

    else
    {
      v6 = 0;
    }

    *buf = 134218498;
    *&buf[4] = v2;
    *&buf[12] = 2080;
    *&buf[14] = v6;
    *&buf[22] = 1024;
    v87 = v3;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p [transport=%s] - U2fAuthenticator::responseReceived: Got response for command type: %hhu", buf, 0x1Cu);
    v7 = v83;
    v83 = 0;
    if (v7)
    {
      if (*v7 == 1)
      {
        WTF::fastFree(v7, v5);
      }

      else
      {
        --*v7;
      }
    }

    result = v85;
    v85 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v5);
    }
  }

  if (v3 <= 1)
  {
    if (v3)
    {
      if (v82)
      {
        v24 = qword_1ED641530;
        v25 = os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT);
        if (v25)
        {
          WebCore::toString();
          WTF::String::utf8();
          if (v83)
          {
            v26 = v83 + 16;
          }

          else
          {
            v26 = 0;
          }

          *buf = 134218498;
          *&buf[4] = v2;
          *&buf[12] = 2080;
          *&buf[14] = v26;
          *&buf[22] = 1024;
          v87 = v81;
          _os_log_impl(&dword_19D52D000, v24, OS_LOG_TYPE_DEFAULT, "%p [transport=%s] - U2fAuthenticator::continueCheckOnlyCommandAfterResponseReceived: Status %hu", buf, 0x1Cu);
          if (v83)
          {
            if (*v83 == 1)
            {
              WTF::fastFree(v83, v27);
            }

            else
            {
              --*v83;
            }
          }

          v25 = v85;
          v85 = 0;
          if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            v25 = WTF::StringImpl::destroy(v25, v27);
          }
        }

        if (v81 == 36864 || v81 == 27013)
        {
          fido::constructBogusU2fRegistrationCommand(buf, v25);
          WebKit::U2fAuthenticator::issueNewCommand(v2, buf, 2);
          result = *buf;
          if (*buf)
          {
            *buf = 0;
            *&buf[8] = 0;
            result = WTF::fastFree(result, v5);
          }
        }

        else
        {
          v50 = *(v2 + 912);
          *(v2 + 912) = v50 + 1;
          result = WebKit::U2fAuthenticator::checkExcludeList(v2, v50);
        }

        goto LABEL_61;
      }

      goto LABEL_234;
    }

    if (v82)
    {
      v38 = qword_1ED641530;
      v9 = os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        WebCore::toString();
        WTF::String::utf8();
        if (v83)
        {
          v39 = v83 + 16;
        }

        else
        {
          v39 = 0;
        }

        *buf = 134218498;
        *&buf[4] = v2;
        *&buf[12] = 2080;
        *&buf[14] = v39;
        *&buf[22] = 1024;
        v87 = v81;
        _os_log_impl(&dword_19D52D000, v38, OS_LOG_TYPE_DEFAULT, "%p [transport=%s] - U2fAuthenticator::continueRegisterCommandAfterResponseReceived: Status %hu", buf, 0x1Cu);
        v41 = v83;
        v83 = 0;
        if (v41)
        {
          if (*v41 == 1)
          {
            WTF::fastFree(v41, v40);
          }

          else
          {
            --*v41;
          }
        }

        v9 = v85;
        v85 = 0;
        if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v9 = WTF::StringImpl::destroy(v9, v40);
        }
      }

      v31 = v81;
      if (v81 == 27013)
      {
        goto LABEL_181;
      }

      if (v81 != 36864)
      {
        goto LABEL_141;
      }

      if (!*(v2 + 336))
      {
        if (!*(v2 + 64))
        {
          v42 = qword_1ED641530;
          if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
          {
            WebCore::toString();
            WTF::String::utf8();
            if (v83)
            {
              v43 = v83 + 16;
            }

            else
            {
              v43 = 0;
            }

            *buf = 134218242;
            *&buf[4] = v2;
            *&buf[12] = 2080;
            *&buf[14] = v43;
            _os_log_impl(&dword_19D52D000, v42, OS_LOG_TYPE_DEFAULT, "%p [transport=%s] - U2fAuthenticator::continueRegisterCommandAfterResponseReceived: rp.id empty. Should not be.", buf, 0x16u);
            v45 = v83;
            v83 = 0;
            if (v45)
            {
              if (*v45 == 1)
              {
                WTF::fastFree(v45, v44);
              }

              else
              {
                --*v45;
              }
            }

            v46 = v85;
            v85 = 0;
            if (v46 && atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v46, v44);
            }
          }
        }

        LOBYTE(v85) = *(*(v2 + 832) + 24);
        WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(buf, &v85, 1);
        fido::readU2fRegisterResponse();
        v48 = *buf;
        if (*buf)
        {
          *buf = 0;
          *&buf[8] = 0;
          WTF::fastFree(v48, v47);
        }

        if (v83)
        {
          *buf = v83;
          buf[16] = 0;
        }

        else
        {
          WTF::StringImpl::createWithoutCopyingNonEmpty();
          buf[0] = 24;
          buf[16] = 1;
        }

        WebKit::Authenticator::receiveRespond(v2, buf);
        mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::~variant(buf);
        result = 0;
        goto LABEL_61;
      }

LABEL_248:
      mpark::throw_bad_variant_access(v9);
    }

LABEL_234:
    __break(1u);
    goto LABEL_235;
  }

  if (v3 == 2)
  {
    if (v82)
    {
      v28 = qword_1ED641530;
      if (!os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_92;
      }

      WebCore::toString();
      WTF::String::utf8();
      if (v83)
      {
        v29 = v83 + 16;
      }

      else
      {
        v29 = 0;
      }

      *buf = 134218498;
      *&buf[4] = v2;
      *&buf[12] = 2080;
      *&buf[14] = v29;
      *&buf[22] = 1024;
      v87 = v81;
      _os_log_impl(&dword_19D52D000, v28, OS_LOG_TYPE_DEFAULT, "%p [transport=%s] - U2fAuthenticator::continueBogusCommandExcludeCredentialsMatchAfterResponseReceived: Status %hu", buf, 0x1Cu);
      result = v83;
      if (v83)
      {
        if (*v83 == 1)
        {
LABEL_235:
          WTF::fastFree(result, v5);
          goto LABEL_89;
        }

        --*v83;
      }

LABEL_89:
      v30 = v85;
      v85 = 0;
      if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v30, v5);
      }

LABEL_92:
      v31 = v81;
      if (v81 != 27013)
      {
        if (v81 == 36864)
        {
          WTF::StringImpl::createWithoutCopyingNonEmpty();
          v23 = 8;
          goto LABEL_59;
        }

LABEL_141:
        WTF::makeString<WTF::ASCIILiteral,unsigned int>("Unknown internal error. Error code: ", 37, v31, &v84);
        buf[0] = 24;
        v49 = v84;
        v84 = 0;
        *&buf[8] = v49;
        buf[16] = 1;
        WebKit::Authenticator::receiveRespond(v2, buf);
        mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::~variant(buf);
        result = v84;
        v84 = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v5);
        }

        goto LABEL_61;
      }

      goto LABEL_181;
    }

    goto LABEL_234;
  }

  if (v3 == 3)
  {
    if (v82)
    {
      v32 = qword_1ED641530;
      if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
      {
        WebCore::toString();
        WTF::String::utf8();
        if (v83)
        {
          v33 = v83 + 16;
        }

        else
        {
          v33 = 0;
        }

        *buf = 134218498;
        *&buf[4] = v2;
        *&buf[12] = 2080;
        *&buf[14] = v33;
        *&buf[22] = 1024;
        v87 = v81;
        _os_log_impl(&dword_19D52D000, v32, OS_LOG_TYPE_DEFAULT, "%p [transport=%s] - U2fAuthenticator::continueBogusCommandNoCredentialsAfterResponseReceived: Status %hu", buf, 0x1Cu);
        if (v83)
        {
          if (*v83 == 1)
          {
            WTF::fastFree(v83, v34);
          }

          else
          {
            --*v83;
          }
        }

        v35 = v85;
        v85 = 0;
        if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v35, v34);
        }
      }

      v31 = v81;
      if (v81 != 27013)
      {
        if (v81 == 36864)
        {
          v36 = *(v2 + 24);
          if (v36)
          {
            v37 = *(v36 + 8);
            if (v37)
            {
              (**v37)(v37);
              (*(*v37 + 48))(v37, 1);
              (*(*v37 + 8))(v37);
            }
          }

          WTF::StringImpl::createWithoutCopyingNonEmpty();
          v23 = 31;
          goto LABEL_59;
        }

        goto LABEL_141;
      }

      goto LABEL_181;
    }

    goto LABEL_234;
  }

  if (v3 != 4)
  {
    goto LABEL_61;
  }

  if ((v82 & 1) == 0)
  {
    goto LABEL_234;
  }

  v8 = qword_1ED641530;
  v9 = os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    WebCore::toString();
    WTF::String::utf8();
    if (v83)
    {
      v10 = v83 + 16;
    }

    else
    {
      v10 = 0;
    }

    *buf = 134218498;
    *&buf[4] = v2;
    *&buf[12] = 2080;
    *&buf[14] = v10;
    *&buf[22] = 1024;
    v87 = v81;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "%p [transport=%s] - U2fAuthenticator::continueSignCommandAfterResponseReceived: Status %hu", buf, 0x1Cu);
    v12 = v83;
    v83 = 0;
    if (v12)
    {
      if (*v12 == 1)
      {
        WTF::fastFree(v12, v11);
      }

      else
      {
        --*v12;
      }
    }

    v9 = v85;
    v85 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v9 = WTF::StringImpl::destroy(v9, v11);
    }
  }

  if (*(v2 + 336) != 1)
  {
    goto LABEL_248;
  }

  if (v81 != 27013)
  {
    if (v81 == 27264)
    {
      v51 = qword_1ED641530;
      if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
      {
        WebCore::toString();
        WTF::String::utf8();
        if (v83)
        {
          v52 = v83 + 16;
        }

        else
        {
          v52 = 0;
        }

        *buf = 134218242;
        *&buf[4] = v2;
        *&buf[12] = 2080;
        *&buf[14] = v52;
        _os_log_impl(&dword_19D52D000, v51, OS_LOG_TYPE_DEFAULT, "%p [transport=%s] - U2fAuthenticator::continueSignCommandAfterResponseReceived: SW_WRONG_DATA", buf, 0x16u);
        v54 = v83;
        v83 = 0;
        if (v54)
        {
          if (*v54 == 1)
          {
            WTF::fastFree(v54, v53);
          }

          else
          {
            --*v54;
          }
        }

        v55 = v85;
        v85 = 0;
        if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v55, v53);
        }
      }

      if (*(v2 + 248) == 1 && *(v2 + 104))
      {
        v56 = *(v2 + 920);
        v57 = qword_1ED641530;
        v58 = os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT);
        if ((v56 & 1) == 0)
        {
          if (v58)
          {
            WebCore::toString();
            WTF::String::utf8();
            if (v83)
            {
              v77 = v83 + 16;
            }

            else
            {
              v77 = 0;
            }

            *buf = 134218242;
            *&buf[4] = v2;
            *&buf[12] = 2080;
            *&buf[14] = v77;
            _os_log_impl(&dword_19D52D000, v57, OS_LOG_TYPE_DEFAULT, "%p [transport=%s] - U2fAuthenticator::continueSignCommandAfterResponseReceived: trying appID extension.", buf, 0x16u);
            if (v83)
            {
              if (*v83 == 1)
              {
                WTF::fastFree(v83, v78);
              }

              else
              {
                --*v83;
              }
            }

            v79 = v85;
            v85 = 0;
            if (v79 && atomic_fetch_add_explicit(v79, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v79, v78);
            }
          }

          *(v2 + 920) = 1;
          v62 = *(v2 + 912) - 1;
          goto LABEL_170;
        }

        if (v58)
        {
          WebCore::toString();
          WTF::String::utf8();
          if (v83)
          {
            v59 = v83 + 16;
          }

          else
          {
            v59 = 0;
          }

          *buf = 134218242;
          *&buf[4] = v2;
          *&buf[12] = 2080;
          *&buf[14] = v59;
          _os_log_impl(&dword_19D52D000, v57, OS_LOG_TYPE_DEFAULT, "%p [transport=%s] - U2fAuthenticator::continueSignCommandAfterResponseReceived: SW_WRONG_DATA and m_IsAppId", buf, 0x16u);
          if (v83)
          {
            if (*v83 == 1)
            {
              WTF::fastFree(v83, v60);
            }

            else
            {
              --*v83;
            }
          }

          v61 = v85;
          v85 = 0;
          if (v61 && atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v61, v60);
          }
        }

        *(v2 + 920) = 0;
      }
    }

    else if (v81 == 36864)
    {
      v13 = qword_1ED641530;
      if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
      {
        WebCore::toString();
        WTF::String::utf8();
        if (v83)
        {
          v14 = v83 + 16;
        }

        else
        {
          v14 = 0;
        }

        v15 = *(v2 + 920);
        *buf = 134218498;
        *&buf[4] = v2;
        *&buf[12] = 2080;
        *&buf[14] = v14;
        *&buf[22] = 1024;
        v87 = v15;
        _os_log_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEFAULT, "%p [transport=%s] - U2fAuthenticator::continueSignCommandAfterResponseReceived: m_isAppId=%d", buf, 0x1Cu);
        v17 = v83;
        v83 = 0;
        if (v17)
        {
          if (*v17 == 1)
          {
            WTF::fastFree(v17, v16);
          }

          else
          {
            --*v17;
          }
        }

        v18 = v85;
        v85 = 0;
        if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v18, v16);
        }
      }

      if (*(v2 + 920) != 1)
      {
        if (*(v2 + 912) - 1 < *(v2 + 92))
        {
          goto LABEL_198;
        }

        goto LABEL_249;
      }

      if (*(v2 + 248) == 1)
      {
        if (*(v2 + 104))
        {
          goto LABEL_197;
        }

        v19 = qword_1ED641530;
        if (!os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_197;
        }

LABEL_187:
        WebCore::toString();
        WTF::String::utf8();
        if (v83)
        {
          v67 = v83 + 16;
        }

        else
        {
          v67 = 0;
        }

        *buf = 134218242;
        *&buf[4] = v2;
        *&buf[12] = 2080;
        *&buf[14] = v67;
        _os_log_impl(&dword_19D52D000, v19, OS_LOG_TYPE_DEFAULT, "%p [transport=%s] - U2fAuthenticator::continueSignCommandAfterResponseReceived: appid and m_isAppId mismatch", buf, 0x16u);
        v68 = v83;
        v83 = 0;
        if (v68)
        {
          if (*v68 == 1)
          {
            WTF::fastFree(v68, v5);
          }

          else
          {
            --*v68;
          }
        }

        result = v85;
        v85 = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v5);
        }

        if (*(v2 + 248))
        {
LABEL_197:
          if (*(v2 + 912) - 1 < *(v2 + 92))
          {
LABEL_198:
            fido::readU2fSignResponse();
            v69 = *buf;
            if (*buf)
            {
              if (*(v2 + 920) == 1)
              {
                buf[0] = 1;
                *&buf[1] = 1;
                buf[3] = 0;
                buf[8] = 0;
                v88 = 0;
                v89 = 0;
                v93 = 0;
                WebCore::AuthenticatorResponse::setExtensions();
                if (v93 == 1 && v92 == 1)
                {
                  v70 = v91;
                  v91 = 0;
                  if (v70)
                  {
                    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v70);
                  }

                  v71 = v90;
                  v90 = 0;
                  if (v71)
                  {
                    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v71);
                  }
                }

                if (v88 == 1)
                {
                  v72 = *&buf[16];
                  *&buf[16] = 0;
                  if (v72)
                  {
                    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v72);
                  }
                }
              }

              *buf = v69;
              buf[16] = 0;
              goto LABEL_60;
            }

            v73 = qword_1ED641530;
            if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
            {
              WebCore::toString();
              WTF::String::utf8();
              if (v83)
              {
                v74 = v83 + 16;
              }

              else
              {
                v74 = 0;
              }

              *buf = 134218242;
              *&buf[4] = v2;
              *&buf[12] = 2080;
              *&buf[14] = v74;
              _os_log_impl(&dword_19D52D000, v73, OS_LOG_TYPE_DEFAULT, "%p [transport=%s] - U2fAuthenticator::continueSignCommandAfterResponseReceived: Couldn't parse the U2F sign response.", buf, 0x16u);
              if (v83)
              {
                if (*v83 == 1)
                {
                  WTF::fastFree(v83, v75);
                }

                else
                {
                  --*v83;
                }
              }

              v76 = v85;
              v85 = 0;
              if (v76 && atomic_fetch_add_explicit(v76, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v76, v75);
              }
            }

            goto LABEL_58;
          }

LABEL_249:
          __break(0xC471u);
          JUMPOUT(0x19E15E40CLL);
        }

        goto LABEL_234;
      }

      v19 = qword_1ED641530;
      result = os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT);
      if (result)
      {
        goto LABEL_187;
      }

      goto LABEL_234;
    }

    v62 = *(v2 + 912);
    *(v2 + 912) = v62 + 1;
LABEL_170:
    result = WebKit::U2fAuthenticator::issueSignCommand(v2, v62);
    goto LABEL_61;
  }

  v63 = qword_1ED641530;
  if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
  {
    WebCore::toString();
    WTF::String::utf8();
    if (v83)
    {
      v64 = v83 + 16;
    }

    else
    {
      v64 = 0;
    }

    *buf = 134218242;
    *&buf[4] = v2;
    *&buf[12] = 2080;
    *&buf[14] = v64;
    _os_log_impl(&dword_19D52D000, v63, OS_LOG_TYPE_DEFAULT, "%p [transport=%s] - U2fAuthenticator::continueSignCommandAfterResponseReceived: SW_CONDITIONS_NOT_SATISFIED", buf, 0x16u);
    if (v83)
    {
      if (*v83 == 1)
      {
        WTF::fastFree(v83, v65);
      }

      else
      {
        --*v83;
      }
    }

    v66 = v85;
    v85 = 0;
    if (v66 && atomic_fetch_add_explicit(v66, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v66, v65);
    }
  }

LABEL_181:
  result = WTF::RunLoop::TimerBase::start();
LABEL_61:
  if (v82 == 1)
  {
    result = v80;
    if (v80)
    {
      return WTF::fastFree(v80, v5);
    }
  }

  return result;
}

uint64_t WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::DeviceOrientationOrMotionPermissionState)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::DeviceOrientationOrMotionPermissionState)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::DeviceOrientationOrMotionPermissionState)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(WebCore::DeviceOrientationOrMotionPermissionState)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::DeviceOrientationOrMotionPermissionState)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::DeviceOrientationOrMotionPermissionState)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::DeviceOrientationOrMotionPermissionState)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(WebCore::DeviceOrientationOrMotionPermissionState)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::DeviceOrientationOrMotionPermissionState)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::DeviceOrientationOrMotionPermissionState)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::DeviceOrientationOrMotionPermissionState)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(WebCore::DeviceOrientationOrMotionPermissionState)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
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

  v7 = WTF::fastMalloc((48 * a2 + 16));
  v9 = v7;
  v10 = v7 + 16;
  if (a2)
  {
    bzero((v7 + 16), 48 * a2);
  }

  *a1 = v10;
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v6;
  if (v5)
  {
    v11 = 0;
    v12 = 0;
    v13 = v5;
    v32 = v5;
    while (1)
    {
      v14 = v4 + 48 * v11;
      if (*(v14 + 24))
      {
        break;
      }

      if (*v14 != -1)
      {
        goto LABEL_10;
      }

LABEL_41:
      if (++v11 == v13)
      {
        goto LABEL_46;
      }
    }

    if (*(v14 + 24) != 1)
    {
      mpark::throw_bad_variant_access(v7);
    }

LABEL_10:
    if (WebCore::SecurityOriginData::isNull((v4 + 48 * v11)))
    {
      v7 = WTF::Vector<WTF::CompletionHandler<void ()(WebCore::DeviceOrientationOrMotionPermissionState)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v14 + 32, v15);
      if (!*(v14 + 24))
      {
        v16 = *(v14 + 8);
        *(v14 + 8) = 0;
        if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v16, v8);
        }

        v7 = *v14;
        *v14 = 0;
        if (v7)
        {
          if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            v7 = WTF::StringImpl::destroy(v7, v8);
          }
        }
      }

      *(v14 + 24) = -1;
    }

    else
    {
      v17 = v4;
      v18 = *a1;
      if (*a1)
      {
        v19 = *(v18 - 8);
      }

      else
      {
        v19 = 0;
      }

      v35 = -1640531527;
      v36 = 0;
      v37 = 0;
      WTF::add<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(&v35, v14);
      v20 = WTF::SuperFastHash::hash(&v35);
      v21 = 0;
      do
      {
        v22 = v20 & v19;
        v23 = v18 + 48 * (v20 & v19);
        isNull = WebCore::SecurityOriginData::isNull(v23);
        v20 = ++v21 + v22;
      }

      while (!isNull);
      WTF::Vector<WTF::CompletionHandler<void ()(WebCore::DeviceOrientationOrMotionPermissionState)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v23 + 32, v24);
      v4 = v17;
      if (!*(v23 + 24))
      {
        v27 = *(v23 + 8);
        *(v23 + 8) = 0;
        if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v27, v26);
        }

        v28 = *v23;
        *v23 = 0;
        if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v28, v26);
        }
      }

      *(v23 + 24) = -1;
      mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v23);
      *(v23 + 32) = 0;
      *(v23 + 40) = 0;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v23 + 32, (v14 + 32));
      v7 = WTF::Vector<WTF::CompletionHandler<void ()(WebCore::DeviceOrientationOrMotionPermissionState)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v14 + 32, v29);
      if (!*(v14 + 24))
      {
        v30 = *(v14 + 8);
        *(v14 + 8) = 0;
        if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v30, v8);
        }

        v7 = *v14;
        *v14 = 0;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v7 = WTF::StringImpl::destroy(v7, v8);
        }
      }

      *(v14 + 24) = -1;
      if (v14 == a3)
      {
        v12 = v23;
      }

      v13 = v32;
    }

    goto LABEL_41;
  }

  v12 = 0;
  result = 0;
  if (v4)
  {
LABEL_46:
    WTF::fastFree((v4 - 16), v8);
    return v12;
  }

  return result;
}

unint64_t WTF::Vector<WTF::CompletionHandler<void ()(WebCore::DeviceOrientationOrMotionPermissionState)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 8 * a1[3] <= a3)
  {
    v10 = a1[2];
    if (v10 + (v10 >> 1) <= v10 + 1)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = v10 + (v10 >> 1);
    }

    if (v11 <= a2)
    {
      v11 = a2;
    }

    if (v11 <= 0x10)
    {
      v12 = 16;
    }

    else
    {
      v12 = v11;
    }

    WTF::Vector<WTF::CompletionHandler<void ()(WebCore::DeviceOrientationOrMotionPermissionState)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
  }

  else
  {
    v6 = a3 - v5;
    v7 = a1[2];
    if (v7 + (v7 >> 1) <= v7 + 1)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = v7 + (v7 >> 1);
    }

    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v8 <= 0x10)
    {
      v9 = 16;
    }

    else
    {
      v9 = v8;
    }

    WTF::Vector<WTF::CompletionHandler<void ()(WebCore::DeviceOrientationOrMotionPermissionState)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

unsigned int *WTF::Vector<WTF::CompletionHandler<void ()(WebCore::DeviceOrientationOrMotionPermissionState)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(unsigned int *result, unint64_t a2)
{
  if (result[2] < a2)
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
      v5 = result[3];
      result = WTF::fastMalloc((8 * a2));
      v3[2] = v2;
      *v3 = result;
      if (v5)
      {
        v7 = result;
        v8 = 8 * v5;
        v9 = v4;
        do
        {
          v10 = *v9;
          *v9 = 0;
          *v7 = v10;
          result = *v9;
          *v9 = 0;
          if (result)
          {
            result = (*(*result + 8))(result);
          }

          v7 += 2;
          ++v9;
          v8 -= 8;
        }

        while (v8);
      }

      if (v4)
      {
        if (*v3 == v4)
        {
          *v3 = 0;
          v3[2] = 0;
        }

        return WTF::fastFree(v4, v6);
      }
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebDeviceOrientationAndMotionAccessController::shouldAllowAccess(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::FrameInfoData &&,BOOL,WTF::CompletionHandler<void ()(WebCore::DeviceOrientationOrMotionPermissionState)> &&)::$_1,void,BOOL>::~CallableWrapper(uint64_t a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1121300;
  if (!*(a1 + 40))
  {
    v3 = *(a1 + 24);
    *(a1 + 24) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    v4 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  *(a1 + 40) = -1;
  v5 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebDeviceOrientationAndMotionAccessController::shouldAllowAccess(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::FrameInfoData &&,BOOL,WTF::CompletionHandler<void ()(WebCore::DeviceOrientationOrMotionPermissionState)> &&)::$_1,void,BOOL>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1121300;
  if (!*(this + 40))
  {
    v3 = *(this + 3);
    *(this + 3) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    v4 = *(this + 2);
    *(this + 2) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  *(this + 40) = -1;
  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::WebDeviceOrientationAndMotionAccessController::shouldAllowAccess(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::FrameInfoData &&,BOOL,WTF::CompletionHandler<void ()(WebCore::DeviceOrientationOrMotionPermissionState)> &&)::$_1,void,BOOL>::call(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return;
  }

  WebKit::WebDeviceOrientationAndMotionAccessController::ref(*(v2 + 8));
  isNull = WebCore::SecurityOriginData::isNull((a1 + 16));
  if (isNull)
  {
    __break(0xC471u);
    goto LABEL_75;
  }

  if (*(a1 + 40))
  {
    if (*(a1 + 40) != 1)
    {
      goto LABEL_70;
    }
  }

  else if (*(a1 + 16) == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E15EE98);
  }

  v7 = v3[1];
  if (v7 || (WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,BOOL>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,BOOL,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::expand(v3 + 1, 0), (v7 = v3[1]) != 0))
  {
    v8 = *(v7 - 8);
  }

  else
  {
    v8 = 0;
  }

  LODWORD(v38) = -1640531527;
  WORD2(v38) = 0;
  BYTE6(v38) = 0;
  WTF::add<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(&v38, a1 + 16);
  v9 = WTF::SuperFastHash::hash(&v38) & v8;
  v10 = (v7 + 40 * v9);
  isNull = WebCore::SecurityOriginData::isNull(v10);
  if (isNull)
  {
    goto LABEL_22;
  }

  v11 = 0;
  v12 = 1;
  do
  {
    if (*(v10 + 24))
    {
      if (*(v10 + 24) != 1)
      {
        goto LABEL_70;
      }
    }

    else if (*v10 == -1)
    {
      v11 = v10;
      goto LABEL_16;
    }

    if (WebCore::operator==())
    {
      *(v10 + 32) = a2;
      goto LABEL_28;
    }

LABEL_16:
    v9 = (v9 + v12) & v8;
    v10 = (v7 + 40 * v9);
    isNull = WebCore::SecurityOriginData::isNull(v10);
    ++v12;
  }

  while (!isNull);
  if (v11)
  {
    *(v11 + 32) = 0;
    *v11 = 0u;
    *(v11 + 1) = 0u;
    --*(v3[1] - 16);
    v10 = v11;
  }

LABEL_22:
  mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::generic_assign<mpark::detail::copy_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1> const&>(v10, (a1 + 16));
  *(v10 + 32) = a2;
  v15 = v3[1];
  if (v15)
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
    if (v18 <= 2 * v17)
    {
LABEL_27:
      WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,BOOL>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,BOOL,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::expand(v3 + 1, v10);
    }
  }

  else if (3 * v18 <= 4 * v17)
  {
    goto LABEL_27;
  }

LABEL_28:
  v19 = v3 + 2;
  if (!v3[2])
  {
    goto LABEL_51;
  }

  isNull = WebCore::SecurityOriginData::isNull((a1 + 16));
  if (isNull)
  {
    __break(0xC471u);
    JUMPOUT(0x19E15EEB8);
  }

  if (!*(a1 + 40))
  {
    if (*(a1 + 16) != -1)
    {
      goto LABEL_32;
    }

    __break(0xC471u);
LABEL_75:
    JUMPOUT(0x19E15EE78);
  }

  if (*(a1 + 40) != 1)
  {
LABEL_70:
    mpark::throw_bad_variant_access(isNull);
  }

LABEL_32:
  v20 = *v19;
  if (!*v19)
  {
    goto LABEL_51;
  }

  v21 = *(v20 - 8);
  LODWORD(v38) = -1640531527;
  WORD2(v38) = 0;
  BYTE6(v38) = 0;
  WTF::add<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(&v38, a1 + 16);
  v22 = WTF::SuperFastHash::hash(&v38) & v21;
  v23 = v20 + 48 * v22;
  isNull = WebCore::SecurityOriginData::isNull(v23);
  if (isNull)
  {
LABEL_34:
    v24 = *v19;
    if (*v19)
    {
      v23 = v24 + 48 * *(v24 - 4);
LABEL_36:
      v24 += 48 * *(v24 - 4);
      goto LABEL_37;
    }

LABEL_51:
    *&v14 = 0;
    v37 = v14;
    v38 = v14;
    WTF::Vector<WTF::CompletionHandler<void ()(WebCore::DeviceOrientationOrMotionPermissionState)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v38, v13);
    goto LABEL_52;
  }

  v36 = 1;
  while (2)
  {
    if (!*(v23 + 24))
    {
      if (*v23 != -1)
      {
        goto LABEL_57;
      }

      goto LABEL_58;
    }

    if (*(v23 + 24) != 1)
    {
      goto LABEL_70;
    }

LABEL_57:
    if ((WebCore::operator==() & 1) == 0)
    {
LABEL_58:
      v22 = (v22 + v36) & v21;
      v23 = v20 + 48 * v22;
      isNull = WebCore::SecurityOriginData::isNull(v23);
      ++v36;
      if (isNull)
      {
        goto LABEL_34;
      }

      continue;
    }

    break;
  }

  v24 = *v19;
  if (*v19)
  {
    goto LABEL_36;
  }

LABEL_37:
  if (v24 == v23)
  {
    goto LABEL_51;
  }

  v25 = *(v23 + 32);
  *&v37 = v25;
  v26 = *(v23 + 40);
  v27 = *(v23 + 44);
  *(v23 + 32) = 0;
  *(v23 + 40) = 0;
  *(&v37 + 1) = __PAIR64__(v27, v26);
  v28 = *v19;
  if (!*v19 || (v28 += 48 * *(v28 - 4), v28 != v23))
  {
    if (v28 != v23)
    {
      WTF::hashTraitsDeleteBucket<WTF::HashTraits<WebCore::SecurityOriginData>,WebCore::SecurityOriginData>(v23, v13);
      WTF::Vector<WTF::CompletionHandler<void ()(WebCore::DeviceOrientationOrMotionPermissionState)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v23 + 32, v29);
      v30 = *v19;
      v31 = vadd_s32(*(*v19 - 16), 0xFFFFFFFF00000001);
      *(v30 - 16) = v31;
      v32 = *(v30 - 4);
      if (6 * v31.i32[1] < v32 && v32 >= 9)
      {
        WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::DeviceOrientationOrMotionPermissionState)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::DeviceOrientationOrMotionPermissionState)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::DeviceOrientationOrMotionPermissionState)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(WebCore::DeviceOrientationOrMotionPermissionState)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::rehash(v3 + 2, v32 >> 1, 0);
      }
    }
  }

  if (v27)
  {
    v34 = 8 * v27;
    do
    {
      v35 = *v25;
      *v25++ = 0;
      (*(*v35 + 16))(v35, a2 ^ 1u);
      (*(*v35 + 8))(v35);
      v34 -= 8;
    }

    while (v34);
  }

LABEL_52:
  WTF::Vector<WTF::CompletionHandler<void ()(WebCore::DeviceOrientationOrMotionPermissionState)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v37, v13);
  WebKit::WebDeviceOrientationAndMotionAccessController::deref(v3);
}

uint64_t WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,BOOL>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,BOOL,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,BOOL>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,BOOL,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,BOOL>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,BOOL,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *a1;
  if (*a1)
  {
    LODWORD(v5) = *(v4 - 4);
    v6 = *(v4 - 12);
  }

  else
  {
    LODWORD(v5) = 0;
    v6 = 0;
  }

  isNull = WTF::fastMalloc((40 * a2 + 16));
  if (a2)
  {
    v9 = a2;
    v10 = (isNull + 16);
    do
    {
      *(v10 + 32) = 0;
      *v10 = 0uLL;
      *(v10 + 1) = 0uLL;
      v10 += 10;
      --v9;
    }

    while (v9);
  }

  *a1 = isNull + 16;
  *(isNull + 2) = a2 - 1;
  *(isNull + 3) = a2;
  *isNull = 0;
  *(isNull + 1) = v6;
  if (v5)
  {
    v11 = 0;
    v12 = 0;
    v5 = v5;
    v28 = v5;
    while (1)
    {
      v13 = v4 + 40 * v11;
      if (*(v13 + 24))
      {
        break;
      }

      if (*v13 != -1)
      {
        goto LABEL_11;
      }

LABEL_42:
      if (++v11 == v5)
      {
        goto LABEL_47;
      }
    }

    if (*(v13 + 24) != 1)
    {
      mpark::throw_bad_variant_access(isNull);
    }

LABEL_11:
    isNull = WebCore::SecurityOriginData::isNull((v4 + 40 * v11));
    if (isNull)
    {
      if (!*(v13 + 24))
      {
        v14 = *(v13 + 8);
        *(v13 + 8) = 0;
        if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v14, v8);
        }

        isNull = *v13;
        *v13 = 0;
        if (isNull)
        {
          if (atomic_fetch_add_explicit(isNull, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            isNull = WTF::StringImpl::destroy(isNull, v8);
          }
        }
      }

      *(v13 + 24) = -1;
    }

    else
    {
      v15 = v12;
      v16 = *a1;
      if (*a1)
      {
        v17 = *(v16 - 8);
      }

      else
      {
        v17 = 0;
      }

      v31 = -1640531527;
      v32 = 0;
      v33 = 0;
      WTF::add<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(&v31, v4 + 40 * v11);
      v18 = WTF::SuperFastHash::hash(&v31);
      v19 = 0;
      do
      {
        v20 = v18 & v17;
        v21 = v16 + 40 * (v18 & v17);
        v23 = WebCore::SecurityOriginData::isNull(v21);
        v18 = ++v19 + v20;
      }

      while (!v23);
      v12 = v15;
      if (!*(v21 + 24))
      {
        v24 = *(v21 + 8);
        *(v21 + 8) = 0;
        if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v24, v22);
        }

        v25 = *v21;
        *v21 = 0;
        if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v25, v22);
        }
      }

      *(v21 + 24) = -1;
      isNull = mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v21);
      *(v21 + 32) = *(v13 + 32);
      if (!*(v13 + 24))
      {
        v26 = *(v13 + 8);
        *(v13 + 8) = 0;
        if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v26, v8);
        }

        isNull = *v13;
        *v13 = 0;
        if (isNull && atomic_fetch_add_explicit(isNull, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          isNull = WTF::StringImpl::destroy(isNull, v8);
        }
      }

      *(v13 + 24) = -1;
      if (v13 == a3)
      {
        v12 = v21;
      }

      v5 = v28;
    }

    goto LABEL_42;
  }

  v12 = 0;
  result = 0;
  if (v4)
  {
LABEL_47:
    WTF::fastFree((v4 - 16), v8);
    return v12;
  }

  return result;
}

uint64_t WTF::hashTraitsDeleteBucket<WTF::HashTraits<WebCore::SecurityOriginData>,WebCore::SecurityOriginData>(uint64_t result, WTF::StringImpl *a2)
{
  v2 = result;
  if (!*(result + 24))
  {
    v3 = *(result + 8);
    *(v2 + 8) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    result = *v2;
    *v2 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, a2);
    }
  }

  *v2 = -1;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  return result;
}

WebCore::SecurityOriginData *WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,BOOL>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,BOOL,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::SecurityOriginData,BOOL,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::SecurityOriginData>>,(WTF::ShouldValidateKey)1,WebCore::SecurityOriginData>(uint64_t *a1, WebCore::SecurityOriginData *a2)
{
  if (!*a1)
  {
    return 0;
  }

  result = WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,BOOL>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,BOOL,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::SecurityOriginData,BOOL,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::SecurityOriginData>>,(WTF::ShouldValidateKey)1,WebCore::SecurityOriginData>(a1, a2);
  v4 = *a1;
  if (!result)
  {
    if (v4)
    {
      return (v4 + 40 * *(v4 - 4));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

WebCore::SecurityOriginData *WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,BOOL>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,BOOL,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::SecurityOriginData,BOOL,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::SecurityOriginData>>,(WTF::ShouldValidateKey)1,WebCore::SecurityOriginData>(uint64_t *a1, WebCore::SecurityOriginData *this)
{
  isNull = WebCore::SecurityOriginData::isNull(this);
  if (isNull)
  {
    goto LABEL_18;
  }

  if (!*(this + 24))
  {
    if (*this != -1)
    {
      goto LABEL_4;
    }

LABEL_18:
    __break(0xC471u);
    JUMPOUT(0x19E15F3D8);
  }

  if (*(this + 24) != 1)
  {
LABEL_15:
    mpark::throw_bad_variant_access(isNull);
  }

LABEL_4:
  v5 = *a1;
  if (*a1)
  {
    v6 = *(v5 - 8);
    v11 = -1640531527;
    v12 = 0;
    v13 = 0;
    WTF::add<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(&v11, this);
    v7 = WTF::SuperFastHash::hash(&v11) & v6;
    v8 = (v5 + 40 * v7);
    isNull = WebCore::SecurityOriginData::isNull(v8);
    if ((isNull & 1) == 0)
    {
      v10 = 1;
      while (!*(v8 + 24))
      {
        if (*v8 != -1)
        {
          goto LABEL_11;
        }

LABEL_12:
        v7 = (v7 + v10) & v6;
        v8 = (v5 + 40 * v7);
        isNull = WebCore::SecurityOriginData::isNull(v8);
        ++v10;
        if (isNull)
        {
          return 0;
        }
      }

      if (*(v8 + 24) != 1)
      {
        goto LABEL_15;
      }

LABEL_11:
      if (WebCore::operator==())
      {
        return v8;
      }

      goto LABEL_12;
    }
  }

  return 0;
}

void WTF::HashMap<WebCore::SecurityOriginData,BOOL,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::SecurityOriginData const&,BOOL>(WebCore::SecurityOriginData *this@<X1>, uint64_t *a2@<X0>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  isNull = WebCore::SecurityOriginData::isNull(this);
  if (isNull)
  {
    goto LABEL_38;
  }

  if (!*(this + 24))
  {
    if (*this != -1)
    {
      goto LABEL_4;
    }

LABEL_38:
    __break(0xC471u);
    JUMPOUT(0x19E15F654);
  }

  if (*(this + 24) != 1)
  {
LABEL_17:
    mpark::throw_bad_variant_access(isNull);
  }

LABEL_4:
  v9 = *a2;
  if (*a2 || (WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,BOOL>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,BOOL,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::expand(a2, 0), (v9 = *a2) != 0))
  {
    v10 = *(v9 - 8);
  }

  else
  {
    v10 = 0;
  }

  v22 = -1640531527;
  v23 = 0;
  v24 = 0;
  WTF::add<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(&v22, this);
  v11 = WTF::SuperFastHash::hash(&v22) & v10;
  v12 = (v9 + 40 * v11);
  isNull = WebCore::SecurityOriginData::isNull(v12);
  if ((isNull & 1) == 0)
  {
    v21 = a3;
    v13 = 0;
    v14 = 1;
    while (!*(v12 + 24))
    {
      if (*v12 != -1)
      {
        goto LABEL_11;
      }

      v13 = v12;
LABEL_14:
      v11 = (v11 + v14) & v10;
      v12 = (v9 + 40 * v11);
      isNull = WebCore::SecurityOriginData::isNull(v12);
      ++v14;
      if (isNull)
      {
        a3 = v21;
        if (v13)
        {
          *(v13 + 32) = 0;
          *v13 = 0u;
          *(v13 + 1) = 0u;
          --*(*a2 - 16);
          v12 = v13;
        }

        goto LABEL_20;
      }
    }

    if (*(v12 + 24) != 1)
    {
      goto LABEL_17;
    }

LABEL_11:
    if (WebCore::operator==())
    {
      v19 = *a2;
      if (*a2)
      {
        v20 = *(v19 - 4);
      }

      else
      {
        v20 = 0;
      }

      *a4 = v12;
      *(a4 + 8) = v19 + 40 * v20;
      *(a4 + 16) = 0;
      *(v12 + 32) = *v21;
      return;
    }

    goto LABEL_14;
  }

LABEL_20:
  mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::generic_assign<mpark::detail::copy_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1> const&>(v12, this);
  *(v12 + 32) = *a3;
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
    if (v18 <= 2 * v17)
    {
LABEL_25:
      v12 = WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,BOOL>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,BOOL,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::expand(a2, v12);
      v15 = *a2;
      if (*a2)
      {
        LODWORD(v18) = *(v15 - 4);
      }

      else
      {
        LODWORD(v18) = 0;
      }
    }
  }

  else if (3 * v18 <= 4 * v17)
  {
    goto LABEL_25;
  }

  *a4 = v12;
  *(a4 + 8) = v15 + 40 * v18;
  *(a4 + 16) = 1;
}

uint64_t WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,BOOL>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,BOOL,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::remove(uint64_t *a1, WTF::StringImpl *a2)
{
  result = WTF::hashTraitsDeleteBucket<WTF::HashTraits<WebCore::SecurityOriginData>,WebCore::SecurityOriginData>(a2, a2);
  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,BOOL>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,BOOL,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }

  return result;
}

uint64_t WebKit::WebsiteDataStoreClient::requestStorageSpace(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v7 = *a7;
  *a7 = 0;
  (*(*v7 + 16))(v7, 0, 0);
  v8 = *(*v7 + 8);

  return v8(v7);
}

WTF::StringImpl *WebKit::WebsiteDataStoreClient::didReceiveAuthenticationChallenge(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 472);
  WebCore::CredentialBase::CredentialBase(&v7);
  cf = 0;
  WebKit::AuthenticationDecisionListener::completeChallenge(v2);
  v4 = cf;
  cf = 0;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = v8;
  v8 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v3);
  }

  result = v7;
  v7 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v3);
    }
  }

  return result;
}

uint64_t WebKit::WebsiteDataStoreClient::openWindowFromServiceWorker(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  *a4 = 0;
  (*(*v4 + 16))(v4, 0);
  v5 = *(*v4 + 8);

  return v5(v4);
}

uint64_t WebKit::WebsiteDataStoreClient::getDisplayedNotifications(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6[0] = 0;
  v6[1] = 0;
  v3 = *a3;
  *a3 = 0;
  (*(*v3 + 16))(v3, v6);
  (*(*v3 + 8))(v3);
  return WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v6, v4);
}

uint64_t WebKit::WebsiteDataStoreClient::requestBackgroundFetchPermission(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  *a4 = 0;
  (*(*v4 + 16))(v4, 0);
  v5 = *(*v4 + 8);

  return v5(v4);
}

WTF *WebKit::WebsiteDataStoreClient::webCryptoMasterKey(uint64_t a1, uint64_t *a2)
{
  LOBYTE(v5) = 0;
  v7 = 0;
  v2 = *a2;
  *a2 = 0;
  (*(*v2 + 16))(v2, &v5);
  result = (*(*v2 + 8))(v2);
  if (v7 == 1)
  {
    result = v5;
    if (v5)
    {
      v5 = 0;
      v6 = 0;
      return WTF::fastFree(result, v4);
    }
  }

  return result;
}

void WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,PAL::SessionID>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,PAL::SessionID>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,PAL::SessionID,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<PAL::SessionID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand()
{
  if (qword_1ED642B80 && (v0 = *(qword_1ED642B80 - 4)) != 0)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,PAL::SessionID>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,PAL::SessionID>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,PAL::SessionID,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<PAL::SessionID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(v0 << (6 * *(qword_1ED642B80 - 12) >= (2 * v0)));
  }

  else
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,PAL::SessionID>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,PAL::SessionID>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,PAL::SessionID,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<PAL::SessionID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(8u);
  }
}

void WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,PAL::SessionID>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,PAL::SessionID>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,PAL::SessionID,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<PAL::SessionID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(unsigned int a1)
{
  v2 = qword_1ED642B80;
  if (qword_1ED642B80)
  {
    v3 = *(qword_1ED642B80 - 4);
    v4 = *(qword_1ED642B80 - 12);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v5 = WTF::fastMalloc((16 * a1 + 16));
  v7 = v5;
  v8 = v5 + 16;
  if (a1)
  {
    bzero((v5 + 16), 16 * a1);
  }

  qword_1ED642B80 = v8;
  v7[2] = a1 - 1;
  v7[3] = a1;
  *v7 = 0;
  v7[1] = v4;
  if (v3)
  {
    v9 = 0;
    v10 = v3;
    do
    {
      v11 = v2 + 16 * v9;
      v12 = *v11;
      if (*v11 != -1)
      {
        if (v12)
        {
          v13 = qword_1ED642B80;
          if (qword_1ED642B80)
          {
            v14 = *(qword_1ED642B80 - 8);
          }

          else
          {
            v14 = 0;
          }

          v15 = *(v12 + 4);
          if (v15 < 0x100)
          {
            v16 = WTF::StringImpl::hashSlowCase(v12);
          }

          else
          {
            v16 = v15 >> 8;
          }

          v17 = 0;
          do
          {
            v18 = v16 & v14;
            v16 = ++v17 + v18;
          }

          while (*(v13 + 16 * v18));
          v19 = (v13 + 16 * v18);
          v20 = *v11;
          v21 = *(v11 + 8);
          *v11 = 0;
          *v19 = v20;
          v19[1] = v21;
          v22 = *v11;
          *v11 = 0;
          if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v22, v6);
          }
        }

        else
        {
          *v11 = 0;
        }
      }

      ++v9;
    }

    while (v9 != v10);
  }

  else if (!v2)
  {
    return;
  }

  WTF::fastFree((v2 - 16), v6);
}

void WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::rehash(unsigned int a1)
{
  v2 = WebKit::allDataStores(void)::map;
  if (WebKit::allDataStores(void)::map)
  {
    v3 = *(WebKit::allDataStores(void)::map - 4);
    v4 = *(WebKit::allDataStores(void)::map - 12);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v5 = WTF::fastMalloc((16 * a1 + 16));
  v7 = v5;
  v8 = v5 + 16;
  if (a1)
  {
    bzero((v5 + 16), 16 * a1);
  }

  WebKit::allDataStores(void)::map = v8;
  v7[2] = a1 - 1;
  v7[3] = a1;
  *v7 = 0;
  v7[1] = v4;
  if (v3)
  {
    v9 = 0;
    while (1)
    {
      v10 = (v2 + 16 * v9);
      v11 = *v10;
      if (*v10 != -1)
      {
        if (v11)
        {
          if (WebKit::allDataStores(void)::map)
          {
            v13 = *(WebKit::allDataStores(void)::map - 8);
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
            v20 = *(WebKit::allDataStores(void)::map + 16 * v17);
            v17 = (v17 + v18++) & v13;
          }

          while (v20);
          v21 = (WebKit::allDataStores(void)::map + 16 * v19);
          v22 = v21[1];
          v21[1] = 0;
          if (v22 && atomic_fetch_add(v22, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v22);
            WTF::fastFree(v22, v6);
          }

          v23 = *v10;
          v24 = v10[1];
          v10[1] = 0;
          *v21 = v23;
          v21[1] = v24;
          v12 = v10[1];
          v10[1] = 0;
          if (!v12 || atomic_fetch_add(v12, 0xFFFFFFFF) != 1)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v12 = v10[1];
          v10[1] = 0;
          if (!v12 || atomic_fetch_add(v12, 0xFFFFFFFF) != 1)
          {
            goto LABEL_20;
          }
        }

        atomic_store(1u, v12);
        WTF::fastFree(v12, v6);
      }

LABEL_20:
      if (++v9 == v3)
      {
        goto LABEL_27;
      }
    }
  }

  if (v2)
  {
LABEL_27:

    WTF::fastFree((v2 - 16), v6);
  }
}

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::~WebsiteDataStore()::$_0,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11213C8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::~WebsiteDataStore()::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11213C8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::~WebsiteDataStore()::$_0,void>::call(uint64_t a1)
{
  v4 = 0;
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1, &v4);
  (*(*v1 + 8))(v1);
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

void WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::expand()
{
  if (WebKit::allDataStores(void)::map && (v0 = *(WebKit::allDataStores(void)::map - 4)) != 0)
  {
    WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::rehash(v0 << (6 * *(WebKit::allDataStores(void)::map - 12) >= (2 * v0)));
  }

  else
  {
    WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::rehash(8u);
  }
}

uint64_t WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 == -1 || !v2)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1600ECLL);
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

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::resolveDirectoriesAsynchronously(void)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11213F0;
  WebKit::WebsiteDataStoreConfiguration::Directories::~Directories((a1 + 3), a2);
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::resolveDirectoriesAsynchronously(void)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1121418;
  a1[1] = 0;
  if (v2)
  {
    CFRelease(*(v2 + 8));
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::handleResolvedDirectoriesAsynchronously(WebKit::WebsiteDataStoreConfiguration::Directories const&,BOOL)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1121440;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 4), a2);
  v4 = a1[3];
  a1[3] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v3);
  }

  v5 = a1[2];
  a1[2] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v3);
  }

  v6 = a1[1];
  a1[1] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v3);
  }

  return a1;
}

WTF::WorkQueue *WTF::Detail::CallableWrapper<WTF::ThreadSafeRefCounted<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::CallbackAggregator,(WTF::DestructionThread)2>::deref(void)::{lambda(void)#1},void>::call(WTF::WorkQueue *result)
{
  v75 = *MEMORY[0x1E69E9840];
  v1 = *(result + 1);
  if (!v1)
  {
    return result;
  }

  v58 = 0;
  v59 = 0;
  v2 = *(v1 + 3);
  if (!v2)
  {
    v7 = 0;
    v6 = 0;
    v5 = 0;
    goto LABEL_84;
  }

  v3 = *(v2 - 12);
  if (v3)
  {
    if (v3 >= 0x3333334)
    {
      __break(0xC471u);
      return result;
    }

    v4 = 80 * v3;
    result = WTF::fastMalloc((80 * v3));
    v5 = result;
    v6 = v4 / 0x50;
    LODWORD(v59) = v4 / 0x50;
    v58 = result;
    v2 = *(v1 + 3);
    if (!v2)
    {
      goto LABEL_83;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (*(v2 - 12))
  {
    v8 = *(v2 - 4);
    v9 = v2;
    if (v8)
    {
      v10 = 88 * v8;
      v9 = v2;
      while ((*v9 + 1) <= 1)
      {
        v9 += 88;
        v10 -= 88;
        if (!v10)
        {
          goto LABEL_83;
        }
      }
    }

    v11 = v2 + 88 * v8;
    if (v11 != v9)
    {
      v7 = 0;
      while (1)
      {
        v12 = *(v1 + 1);
        if (v12 != WTF::WorkQueue::mainSingleton(result))
        {
          break;
        }

        v17 = *(v9 + 8);
        *(v9 + 8) = 0;
        v18 = *(v9 + 16);
        LODWORD(v61) = v18;
        LOBYTE(v62) = 0;
        v64 = 0;
        if (*(v9 + 40) == 1)
        {
          v19 = *(v9 + 24);
          v20 = *(v9 + 32);
          *(v9 + 32) = 0;
          v62 = v19;
          v63 = v20;
          v64 = 1;
        }

        v21 = *(v9 + 48);
        v22 = *(v9 + 64);
        *(v9 + 48) = 0u;
        *(v9 + 64) = 0u;
        *v65 = v21;
        v66 = v22;
        v23 = *(v9 + 80);
        *(v9 + 80) = 0;
        v67 = v23;
LABEL_61:
        v35 = v5 + 80 * v7;
        v60 = 0;
        *v35 = v17;
        *(v35 + 2) = v18;
        v35[16] = 0;
        v35[32] = 0;
        if (v64 == 1)
        {
          *(v35 + 2) = v62;
          v36 = v63;
          v63 = 0;
          *(v35 + 3) = v36;
          v35[32] = 1;
        }

        v37 = v65[0];
        v65[0] = 0;
        *(v35 + 5) = v37;
        v38 = v65[1];
        v65[1] = 0;
        *(v35 + 6) = v38;
        v39 = v66;
        *&v66 = 0;
        *(v35 + 7) = v39;
        v40 = *(&v66 + 1);
        *(&v66 + 1) = 0;
        *(v35 + 8) = v40;
        v41 = v67;
        v67 = 0;
        *(v35 + 9) = v41;
        if (v67)
        {
          WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v67, v13);
        }

        if (*(&v66 + 1))
        {
          WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*(&v66 + 1), v13);
        }

        if (v66)
        {
          WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v66, v13);
        }

        if (v65[1])
        {
          WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v65[1], v13);
        }

        if (v65[0])
        {
          WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v65[0], v13);
        }

        if (v64 == 1 && v63)
        {
          WTF::fastFree((v63 - 16), v13);
        }

        result = v60;
        v60 = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v13);
        }

        do
        {
          v9 += 88;
        }

        while (v9 != v11 && (*v9 + 1) <= 1);
        ++v7;
        if (v9 == v11)
        {
          v5 = v58;
          v6 = v59;
          goto LABEL_84;
        }
      }

      WTF::String::isolatedCopy();
      LODWORD(v61) = *(v9 + 16);
      LOBYTE(v62) = 0;
      v64 = 0;
      if (*(v9 + 40) == 1)
      {
        v62 = *(v9 + 24);
        WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,unsigned long long>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,unsigned long long,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::HashTable(&v63, (v9 + 32));
        v64 = 1;
      }

      v15 = (v9 + 48);
      v14 = *(v9 + 48);
      v65[0] = 0;
      if (v14)
      {
        v16 = *(v14 - 12);
      }

      else
      {
        v16 = 0;
      }

      WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::reserveInitialCapacity(v65, v16);
      while (1)
      {
        if (!*v15 || !*(*v15 - 12))
        {
          WTF::CrossThreadCopierBase<false,false,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::copy((v9 + 56), &v65[1]);
          WTF::CrossThreadCopierBase<false,false,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::copy((v9 + 64), &v66);
          WTF::CrossThreadCopierBase<false,false,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::copy((v9 + 72), &v66 + 1);
          WTF::CrossThreadCopierBase<false,false,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::copy((v9 + 80), &v67);
          v17 = v60;
          v18 = v61;
          goto LABEL_61;
        }

        v24 = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::begin((v9 + 48));
        v25 = *v15;
        if (*v15)
        {
          v26 = (v25 + 32 * *(v25 - 4));
        }

        else
        {
          v26 = 0;
        }

        if (v26 == v24)
        {
          v71 = 0;
          v69[0] = 0;
          v69[1] = 0;
          v70 = 0;
          goto LABEL_44;
        }

        LOBYTE(v69[0]) = 0;
        v71 = -1;
        v27 = *(v24 + 24);
        if (!*(v24 + 24))
        {
          break;
        }

        if (v27 != 255)
        {
          *v69 = *v24;
          goto LABEL_35;
        }

LABEL_36:
        if (v25)
        {
          v29 = (v25 + 32 * *(v25 - 4));
          if (v29 == v24)
          {
            goto LABEL_44;
          }
        }

        else
        {
          if (!v24)
          {
            goto LABEL_44;
          }

          v29 = 0;
        }

        if (v29 != v24)
        {
          WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::remove((v9 + 48), v24);
        }

LABEL_44:
        WebCore::SecurityOriginData::isolatedCopy();
        WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v72, v65, v68);
        if (!v74)
        {
          v31 = v73;
          v73 = 0;
          if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v31, v30);
          }

          v32 = v72;
          v72 = 0;
          if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v32, v30);
          }
        }

        v74 = -1;
        if (!v71)
        {
          v33 = v69[1];
          v69[1] = 0;
          if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v33, v30);
          }

          v34 = v69[0];
          v69[0] = 0;
          if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v34, v30);
          }
        }
      }

      v28 = *v24;
      *v24 = 0;
      *(v24 + 1) = 0;
      *v69 = v28;
      v70 = *(v24 + 4);
      v25 = *v15;
LABEL_35:
      v71 = v27;
      goto LABEL_36;
    }
  }

LABEL_83:
  v7 = 0;
LABEL_84:
  v42 = *(v1 + 1);
  v43 = *(v1 + 2);
  *(v1 + 2) = 0;
  v58 = 0;
  v59 = 0;
  v63 = *(*(v1 + 4) + 24);
  v44 = v63;
  v45 = WTF::fastMalloc(0x28);
  *v45 = &unk_1F1121490;
  *(v45 + 8) = v43;
  v60 = 0;
  v61 = 0;
  *(v45 + 16) = v5;
  v62 = 0;
  *(v45 + 24) = v6;
  *(v45 + 28) = v7;
  *(v45 + 32) = v44;
  v72 = v45;
  (*(*v42 + 48))(v42, &v72);
  v47 = v72;
  v72 = 0;
  if (v47)
  {
    (*(*v47 + 8))(v47);
  }

  WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v61, v46);
  v49 = v60;
  v60 = 0;
  if (v49)
  {
    (*(*v49 + 8))(v49);
  }

  WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v58, v48);
  v51 = *(v1 + 4);
  *(v1 + 4) = 0;
  if (v51)
  {
    CFRelease(*(v51 + 8));
  }

  v52 = *(v1 + 3);
  if (v52)
  {
    v53 = *(v52 - 4);
    if (v53)
    {
      v54 = (v52 + 8);
      do
      {
        if (*(v54 - 1) != -1)
        {
          WebKit::WebsiteDataRecord::~WebsiteDataRecord(v54, v50);
          v55 = *(v54 - 1);
          *(v54 - 1) = 0;
          if (v55)
          {
            if (atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v55, v50);
            }
          }
        }

        v54 = (v54 + 88);
        --v53;
      }

      while (v53);
    }

    WTF::fastFree((v52 - 16), v50);
  }

  v56 = *(v1 + 2);
  *(v1 + 2) = 0;
  if (v56)
  {
    (*(*v56 + 8))(v56);
  }

  v57 = *(v1 + 1);
  *(v1 + 1) = 0;
  if (v57)
  {
    (*(*v57 + 40))(v57);
  }

  return WTF::fastFree(v1, v50);
}

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::CallbackAggregator::~CallbackAggregator()::{lambda(void)#1},void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1121490;
  WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 2), a2);
  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::CallbackAggregator::~CallbackAggregator()::{lambda(void)#1},void>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1121490;
  WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 16, a2);
  v4 = *(a1 + 1);
  *(a1 + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::CallbackAggregator::~CallbackAggregator()::{lambda(void)#1},void>::call(uint64_t a1, __n128 a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v4 = *(a1 + 28);
  if (v4)
  {
    v5 = 0;
    v6 = 80 * v4;
    v7 = (v3 + 8);
    do
    {
      v8 = *v7;
      v7 += 20;
      v5 |= v8;
      v6 -= 80;
    }

    while (v6);
  }

  else
  {
    v5 = 0;
  }

  a2.n128_u64[0] = 0;
  v9 = *(a1 + 24);
  *(a1 + 16) = a2;
  v10 = *(a1 + 8);
  v24 = a2;
  *buf = v3;
  *&buf[8] = v9;
  *&buf[12] = v4;
  (*(*v10 + 16))(v10, buf);
  WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v11);
  WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v24, v12);
  v13 = qword_1ED641350;
  result = os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v15 = *(a1 + 32);
    memset(buf, 0, 20);
    buf[20] = 1;
    if (v5)
    {
      do
      {
        if (*&buf[16])
        {
          WTF::StringBuilder::append();
        }

        WTF::StringBuilder::append();
        v5 &= v5 - 1;
      }

      while (v5);
      v17 = *buf;
      if (*buf)
      {
        goto LABEL_13;
      }
    }

    WTF::StringBuilder::shrinkToFit(buf);
    WTF::StringBuilder::reifyString(buf);
    v17 = *buf;
    if (*buf)
    {
LABEL_13:
      atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
    }

    v22 = v17;
    v18 = *&buf[8];
    *&buf[8] = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v16);
    }

    v19 = *buf;
    *buf = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v16);
    }

    WTF::String::utf8();
    if (v23)
    {
      v20 = v23 + 16;
    }

    else
    {
      v20 = 0;
    }

    *buf = 134218242;
    *&buf[4] = v15;
    *&buf[12] = 2082;
    *&buf[14] = v20;
    _os_log_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEFAULT, "WebsiteDataStore::fetchDataAndApply finished fetching data for session %llu(fetched types: %{public}s)", buf, 0x16u);
    if (v23)
    {
      if (*v23 == 1)
      {
        WTF::fastFree(v23, v21);
      }

      else
      {
        --*v23;
      }
    }

    result = v22;
    if (v22)
    {
      if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(v22, v21);
      }
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::$_0,void>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F11214B8;
  WTF::Ref<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>,WTF::DefaultRefDerefTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>>::~Ref((a1 + 16));
  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, v2);
  }

  return a1;
}

{
  *a1 = &unk_1F11214B8;
  WTF::Ref<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>,WTF::DefaultRefDerefTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>>::~Ref((a1 + 16));
  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, v2);
  }

  return WTF::fastFree(a1, v2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::$_0,void>::call(uint64_t a1)
{
  v25 = 0;
  *v23 = 0u;
  v24 = 0u;
  result = MEMORY[0x19EB06A00](&v22, a1 + 8);
  v20 = 0;
  v21 = 0;
  if (v22 && (v4 = *(v22 - 3), v4))
  {
    if (v4 >= 0x5555556)
    {
      __break(0xC471u);
      return result;
    }

    v5 = 48 * v4;
    v6 = WTF::fastMalloc((48 * v4));
    LODWORD(v21) = v5 / 0x30;
    v20 = v6;
  }

  else
  {
    v6 = 0;
  }

  v7 = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::begin(&v22);
  v9 = v7;
  v10 = v8;
  if (v22)
  {
    v11 = (v22 + 32 * *(v22 - 1));
  }

  else
  {
    v11 = 0;
  }

  if (v11 == v7)
  {
    v12 = 0;
    goto LABEL_42;
  }

  v12 = 0;
  do
  {
    v13 = *(v9 + 24);
    if (*(v9 + 24))
    {
      if (v13 == 255)
      {
        goto LABEL_36;
      }

      v14 = *v9;
      v15 = *(v9 + 1);
      if (*(v9 + 24))
      {
LABEL_33:
        if (v13 == 255)
        {
LABEL_36:
          v16 = v6 + 48 * v12;
          *v16 = 0;
          LOBYTE(v13) = -1;
        }

        else
        {
          v16 = v6 + 48 * v12;
          *v16 = v14;
          *(v16 + 8) = v15;
        }

        *(v16 + 24) = v13;
        goto LABEL_26;
      }
    }

    else
    {
      v14 = *v9;
      if (*v9)
      {
        atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
      }

      v15 = *(v9 + 1);
      if (v15)
      {
        atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
      }

      v1 = *(v9 + 4);
      v13 = *(v9 + 24);
      if (*(v9 + 24))
      {
        goto LABEL_33;
      }
    }

    if (v14)
    {
      atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
    }

    if (v15 && (atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed), atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2))
    {
      WTF::StringImpl::destroy(v15, v8);
      if (v14)
      {
LABEL_22:
        if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v14, v8);
        }
      }
    }

    else if (v14)
    {
      goto LABEL_22;
    }

    v16 = v6 + 48 * v12;
    *v16 = v14;
    *(v16 + 8) = v15;
    *(v16 + 16) = v1;
    *(v16 + 24) = 0;
LABEL_26:
    *(v16 + 32) = 2;
    *(v16 + 40) = 0;
    do
    {
      v9 = (v9 + 32);
    }

    while (v9 != v10 && WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v9));
    ++v12;
  }

  while (v9 != v11);
  v17 = v23[0];
  if (HIDWORD(v23[1]))
  {
    WTF::VectorTypeOperations<WebKit::WebsiteData::Entry>::destruct(v23[0], (v23[0] + 48 * HIDWORD(v23[1])));
  }

  if (v17)
  {
    WTF::fastFree(v17, v8);
  }

LABEL_42:
  v23[0] = v20;
  v18 = v21;
  v20 = 0;
  v21 = 0;
  v23[1] = __PAIR64__(v12, v18);
  WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v20, v8);
  WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::CallbackAggregator::addWebsiteData(*(a1 + 16), v23);
  if (v22)
  {
    WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v22, v19);
  }

  if (v25)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v25, v19);
  }

  if (*(&v24 + 1))
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*(&v24 + 1), v19);
  }

  if (v24)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v24, v19);
  }

  return WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v23, v19);
}

unsigned int **WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::CallbackAggregator::addWebsiteData(uint64_t a1, uint64_t a2)
{
  v4 = WTF::RunLoop::mainSingleton(a1);
  isCurrent = WTF::RunLoop::isCurrent(v4);
  if (isCurrent)
  {
    v97 = a2;
    v6 = *(a2 + 12);
    if (v6)
    {
      v7 = *a2;
      v8 = *a2 + 48 * v6;
      v9 = MEMORY[0x1E696EBA8];
      do
      {
        v10 = v7;
        if (*(v7 + 24))
        {
          if (*(v7 + 24) != 1)
          {
            goto LABEL_104;
          }

          v10 = v9;
        }

        if (MEMORY[0x19EB01EF0](*v10, "file", 4))
        {
          isCurrent = WebCore::localizedString(v98, @"Local documents on your computer", v11);
        }

        else
        {
          isCurrent = MEMORY[0x19EB01EF0](*v10, "http", 4);
          if ((isCurrent & 1) == 0)
          {
            isCurrent = MEMORY[0x19EB01EF0](*v10, "https", 5);
            if (!isCurrent)
            {
              v98[0] = 0;
              goto LABEL_16;
            }
          }

          isCurrent = WebCore::PublicSuffixStore::singleton(isCurrent);
          if (*(v7 + 24) && *(v7 + 24) != 1)
          {
LABEL_104:
            mpark::throw_bad_variant_access(isCurrent);
          }

          isCurrent = WebCore::PublicSuffixStore::topPrivatelyControlledDomain();
        }

        if (v98[0])
        {
          goto LABEL_56;
        }

LABEL_16:
        if (WebKit::allowsWebsiteDataRecordsForAllOrigins == 1)
        {
          if (*(v7 + 24))
          {
            v12 = v9;
            if (*(v7 + 24) != 1)
            {
              goto LABEL_104;
            }
          }

          else
          {
            v12 = (v7 + 8);
          }

          v13 = *v12;
          if (v13 && v13[1])
          {
            if (*(v7 + 24))
            {
              v14 = v9;
            }

            else
            {
              v14 = (v7 + 8);
            }

            v15 = *v14;
            if (*v14)
            {
              atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
            }

            LOBYTE(v105[0]) = 32;
            v99[0] = v15;
            isCurrent = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::String,void>>(v105, v99, v107);
            if (!v107[0])
            {
              __break(0xC471u);
              JUMPOUT(0x19E161DB0);
            }

            if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              isCurrent = WTF::StringImpl::destroy(v15, v16);
            }
          }

          else
          {
            v17 = *v9;
            if (*v9)
            {
              atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
            }

            v107[0] = v17;
          }

          v18 = v7;
          if (*(v7 + 24))
          {
            if (*(v7 + 24) != 1)
            {
              goto LABEL_104;
            }

            v18 = v9;
          }

          v19 = *v18;
          if (*v18)
          {
            atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
          }

          v20 = v107[0];
          if (v107[0])
          {
            atomic_fetch_add_explicit(v107[0], 2u, memory_order_relaxed);
          }

          v99[0] = v19;
          v105[0] = v20;
          WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(v99, v105, &v106);
          v22 = v106;
          if (!v106)
          {
            __break(0xC471u);
            JUMPOUT(0x19E161DA8);
          }

          v106 = 0;
          v23 = v98[0];
          v98[0] = v22;
          if (!v23)
          {
            goto LABEL_46;
          }

          if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v23, v21);
          }

          v24 = v106;
          v106 = 0;
          if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v24, v21);
            if (v20)
            {
              goto LABEL_47;
            }
          }

          else
          {
LABEL_46:
            if (v20)
            {
LABEL_47:
              if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v20, v21);
              }
            }
          }

          if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v19, v21);
          }

          v25 = v107[0];
          v107[0] = 0;
          if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v25, v21);
          }

LABEL_56:
          v99[0] = 0;
          LODWORD(v99[1]) = 0;
          LOBYTE(v100) = 0;
          BYTE8(v101) = 0;
          v102 = 0u;
          v103 = 0u;
          v104 = 0;
          WTF::HashMap<WTF::String,WebKit::WebsiteDataRecord,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::WebsiteDataRecord>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::WebsiteDataRecord>(v105, (a1 + 24), v98, v99);
          v27 = v105[0];
          if (v104)
          {
            WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v104, v26);
          }

          if (*(&v103 + 1))
          {
            WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*(&v103 + 1), v26);
          }

          if (v103)
          {
            WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v103, v26);
          }

          if (*(&v102 + 1))
          {
            WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*(&v102 + 1), v26);
          }

          if (v102)
          {
            WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v102, v26);
          }

          if (BYTE8(v101) == 1 && v101)
          {
            WTF::fastFree((v101 - 16), v26);
          }

          v28 = v99[0];
          if (v99[0] && atomic_fetch_add_explicit(v99[0], 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v28, v26);
          }

          if (!*(v27 + 8))
          {
            v29 = v98[0];
            v98[0] = 0;
            *(v27 + 8) = v29;
          }

          *(v27 + 16) |= *(v7 + 32);
          WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v7, (v27 + 48), v99);
          if (*(a1 + 4))
          {
            if (*(v27 + 40) == 1)
            {
              v31 = *(v27 + 24);
            }

            else
            {
              v31 = 0;
              *(v27 + 24) = 0;
              *(v27 + 32) = 0;
              *(v27 + 40) = 1;
            }

            v32 = *(v7 + 40);
            *(v27 + 24) = v31 + v32;
            v33 = *(v7 + 32);
            if (v33 == -1)
            {
              __break(0xC471u);
              JUMPOUT(0x19E161D80);
            }

            if (!v33)
            {
              __break(0xC471u);
              JUMPOUT(0x19E161DA0);
            }

            v34 = *(v27 + 32);
            if (!v34)
            {
              WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,unsigned long long>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,unsigned long long,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::expand((v27 + 32), 0);
              v34 = *(v27 + 32);
            }

            v35 = *(v34 - 8);
            v36 = 9 * ((v33 + ~(v33 << 15)) ^ ((v33 + ~(v33 << 15)) >> 10));
            v37 = (v36 ^ (v36 >> 6)) + ~((v36 ^ (v36 >> 6)) << 11);
            v38 = v35 & (v37 ^ HIWORD(v37));
            v30 = (v34 + 16 * v38);
            v39 = *v30;
            if (!*v30)
            {
LABEL_90:
              *v30 = v33;
              *(v30 + 1) = 0;
              v42 = *(v34 - 16);
              v43 = *(v34 - 12) + 1;
              *(v34 - 12) = v43;
              v44 = (v42 + v43);
              v45 = *(v34 - 4);
              if (v45 > 0x400)
              {
                if (v45 > 2 * v44)
                {
                  goto LABEL_93;
                }
              }

              else if (3 * v45 > 4 * v44)
              {
                goto LABEL_93;
              }

              v30 = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,unsigned long long>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,unsigned long long,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::expand((v27 + 32), v30);
              goto LABEL_93;
            }

            v40 = 0;
            v41 = 1;
            while (v39 != v33)
            {
              if (v39 == -1)
              {
                v40 = v30;
              }

              v38 = (v38 + v41) & v35;
              v30 = (v34 + 16 * v38);
              v39 = *v30;
              ++v41;
              if (!*v30)
              {
                if (v40)
                {
                  *v40 = 0;
                  v40[1] = 0;
                  v34 = *(v27 + 32);
                  --*(v34 - 16);
                  v30 = v40;
                }

                goto LABEL_90;
              }
            }

LABEL_93:
            *(v30 + 1) += v32;
          }

          isCurrent = v98[0];
          v98[0] = 0;
          if (isCurrent && atomic_fetch_add_explicit(isCurrent, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            isCurrent = WTF::StringImpl::destroy(isCurrent, v30);
          }
        }

        v7 += 48;
      }

      while (v7 != v8);
    }

    v54 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin((v97 + 16));
    v55 = v54;
    v57 = v56;
    v58 = *(v97 + 16);
    if (v58)
    {
      v59 = (v58 + 8 * *(v58 - 4));
    }

    else
    {
      v59 = 0;
    }

    if (v59 != v54)
    {
      v60 = *MEMORY[0x1E695ADA8];
      do
      {
        MEMORY[0x19EB02040](v99, v60);
        v63 = WTF::equal(*v55, v99[0], v61);
        v64 = v99[0];
        v99[0] = 0;
        if (v64 && atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v64, v62);
          if (!v63)
          {
LABEL_123:
            WebKit::WebsiteDataRecord::displayNameForHostName(v98, v55);
            goto LABEL_124;
          }
        }

        else if (!v63)
        {
          goto LABEL_123;
        }

        WebCore::localizedString(v98, @"Local documents on your computer", v62);
LABEL_124:
        if (v98[0])
        {
          v99[0] = 0;
          LODWORD(v99[1]) = 0;
          LOBYTE(v100) = 0;
          BYTE8(v101) = 0;
          v102 = 0u;
          v103 = 0u;
          v104 = 0;
          WTF::HashMap<WTF::String,WebKit::WebsiteDataRecord,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::WebsiteDataRecord>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::WebsiteDataRecord>(v105, (a1 + 24), v98, v99);
          v67 = v105[0];
          if (v104)
          {
            WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v104, v65);
          }

          if (*(&v103 + 1))
          {
            WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*(&v103 + 1), v65);
          }

          if (v103)
          {
            WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v103, v65);
          }

          if (*(&v102 + 1))
          {
            WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*(&v102 + 1), v65);
          }

          if (v102)
          {
            WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v102, v65);
          }

          if (BYTE8(v101) == 1 && v101)
          {
            WTF::fastFree((v101 - 16), v65);
          }

          v68 = v99[0];
          if (v99[0] && atomic_fetch_add_explicit(v99[0], 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v68, v65);
          }

          if (!*(v67 + 8))
          {
            v69 = v98[0];
            v98[0] = 0;
            *(v67 + 8) = v69;
          }

          *(v67 + 16) |= 1u;
          WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>((v67 + 56), v55, v66, v99);
          v71 = v98[0];
          v98[0] = 0;
          if (v71 && atomic_fetch_add_explicit(v71, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v71, v70);
          }
        }

        do
        {
          ++v55;
        }

        while (v55 != v57 && *v55 + 1 <= 1);
      }

      while (v55 != v59);
    }

    v72 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin((v97 + 24));
    v75 = v72;
    v76 = v73;
    v77 = *(v97 + 24);
    if (v77)
    {
      v78 = (v77 + 8 * *(v77 - 4));
    }

    else
    {
      v78 = 0;
    }

    if (v78 != v72)
    {
      do
      {
        WebKit::WebsiteDataRecord::displayNameForHostName(v98, v75);
        if (v98[0])
        {
          v99[0] = 0;
          LODWORD(v99[1]) = 0;
          LOBYTE(v100) = 0;
          BYTE8(v101) = 0;
          v102 = 0u;
          v103 = 0u;
          v104 = 0;
          WTF::HashMap<WTF::String,WebKit::WebsiteDataRecord,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::WebsiteDataRecord>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::WebsiteDataRecord>(v105, (a1 + 24), v98, v99);
          v81 = v105[0];
          if (v104)
          {
            WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v104, v79);
          }

          if (*(&v103 + 1))
          {
            WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*(&v103 + 1), v79);
          }

          if (v103)
          {
            WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v103, v79);
          }

          if (*(&v102 + 1))
          {
            WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*(&v102 + 1), v79);
          }

          if (v102)
          {
            WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v102, v79);
          }

          if (BYTE8(v101) == 1 && v101)
          {
            WTF::fastFree((v101 - 16), v79);
          }

          v82 = v99[0];
          if (v99[0] && atomic_fetch_add_explicit(v99[0], 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v82, v79);
          }

          if (!*(v81 + 8))
          {
            v83 = v98[0];
            v98[0] = 0;
            *(v81 + 8) = v83;
          }

          *(v81 + 16) |= 0x200u;
          WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>((v81 + 64), v75, v80, v99);
          v84 = v98[0];
          v98[0] = 0;
          if (v84 && atomic_fetch_add_explicit(v84, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v84, v73);
          }
        }

        do
        {
          v75 = (v75 + 8);
        }

        while (v75 != v76 && (*v75 + 1) <= 1);
      }

      while (v75 != v78);
    }

    result = WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin((v97 + 32), v73, v74);
    v85 = result;
    v98[0] = result;
    v98[1] = v86;
    v87 = *(v97 + 32);
    if (v87)
    {
      v88 = (v87 + 8 * *(v87 - 4));
    }

    else
    {
      v88 = 0;
    }

    if (v88 != result)
    {
      do
      {
        WebKit::WebsiteDataRecord::displayNameForHostName(v107, v85);
        if (v107[0])
        {
          v99[0] = 0;
          LODWORD(v99[1]) = 0;
          LOBYTE(v100) = 0;
          BYTE8(v101) = 0;
          v102 = 0u;
          v103 = 0u;
          v104 = 0;
          WTF::HashMap<WTF::String,WebKit::WebsiteDataRecord,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::WebsiteDataRecord>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::WebsiteDataRecord>(v105, (a1 + 24), v107, v99);
          v93 = v105[0];
          if (v104)
          {
            WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v104, v91);
          }

          if (*(&v103 + 1))
          {
            WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*(&v103 + 1), v91);
          }

          if (v103)
          {
            WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v103, v91);
          }

          if (*(&v102 + 1))
          {
            WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*(&v102 + 1), v91);
          }

          if (v102)
          {
            WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v102, v91);
          }

          if (BYTE8(v101) == 1 && v101)
          {
            WTF::fastFree((v101 - 16), v91);
          }

          v94 = v99[0];
          if (v99[0] && atomic_fetch_add_explicit(v99[0], 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v94, v91);
          }

          if (!*(v93 + 8))
          {
            v95 = v107[0];
            v107[0] = 0;
            *(v93 + 8) = v95;
          }

          *(v93 + 16) |= 0x1000u;
          WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>((v93 + 80), v85, v92, v99);
          v96 = v107[0];
          v107[0] = 0;
          if (v96)
          {
            if (atomic_fetch_add_explicit(v96, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v96, v89);
            }
          }
        }

        v98[0] = (v98[0] + 8);
        result = WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(v98, v89, v90);
        v85 = v98[0];
      }

      while (v98[0] != v88);
    }
  }

  else
  {
    WTF::RunLoop::mainSingleton(isCurrent);
    atomic_fetch_add(a1, 1u);
    v99[0] = a1;
    WebKit::WebsiteData::isolatedCopy(a2, &v99[1]);
    v46 = WTF::fastMalloc(0x38);
    *v46 = &unk_1F11214E0;
    *(v46 + 8) = v99[0];
    v47 = v99[1];
    *v99 = 0u;
    *(v46 + 16) = v47;
    v48 = v100;
    v100 = 0;
    *(v46 + 24) = v48;
    *(v46 + 32) = v101;
    v49 = *(&v101 + 1);
    v101 = 0u;
    *(v46 + 40) = v49;
    v50 = v102;
    *&v102 = 0;
    *(v46 + 48) = v50;
    v105[0] = v46;
    WTF::RunLoop::dispatch();
    v52 = v105[0];
    v105[0] = 0;
    if (v52)
    {
      (*(*v52 + 8))(v52);
    }

    if (v102)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v102, v51);
    }

    if (*(&v101 + 1))
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*(&v101 + 1), v51);
    }

    if (v101)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v101, v51);
    }

    WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v99[1], v51);
    return WTF::Ref<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>,WTF::DefaultRefDerefTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>>::~Ref(v99);
  }

  return result;
}

WTF::StringImpl *WTF::VectorTypeOperations<WebKit::WebsiteData::Entry>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      if (!*(v3 + 24))
      {
        v4 = *(v3 + 1);
        *(v3 + 1) = 0;
        if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v4, a2);
        }

        result = *v3;
        *v3 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, a2);
          }
        }
      }

      *(v3 + 24) = -1;
      v3 = (v3 + 48);
    }

    while (v3 != a2);
  }

  return result;
}

WTF::StringImpl **WTF::HashMap<WTF::String,WebKit::WebsiteDataRecord,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::WebsiteDataRecord>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::WebsiteDataRecord>(uint64_t a1, uint64_t *a2, WTF::StringImpl **a3, uint64_t *a4)
{
  if (*a3 == -1 || !*a3)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1621A4);
  }

  v8 = *a2;
  if (*a2 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::WebsiteDataRecord>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::WebsiteDataRecord>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::WebsiteDataRecord,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::WebsiteDataRecord>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a2, 0), (v8 = *a2) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(*a3 + 4);
  v47 = a1;
  if (v10 < 0x100)
  {
    v11 = WTF::StringImpl::hashSlowCase(*a3);
  }

  else
  {
    v11 = v10 >> 8;
  }

  v12 = 0;
  for (i = 1; ; ++i)
  {
    v14 = v11 & v9;
    v15 = v8 + 88 * (v11 & v9);
    v16 = *v15;
    if (*v15 != -1)
    {
      break;
    }

    v12 = v8 + 88 * v14;
LABEL_14:
    v11 = i + v14;
  }

  if (!v16)
  {
    if (v12)
    {
      *(v12 + 80) = 0;
      *(v12 + 48) = 0u;
      *(v12 + 64) = 0u;
      *(v12 + 16) = 0u;
      *(v12 + 32) = 0u;
      *v12 = 0u;
      --*(*a2 - 16);
      v15 = v12;
    }

    WTF::GenericHashTraits<WebCore::RegistrableDomain>::assignToEmpty<WebCore::RegistrableDomain,WebCore::RegistrableDomain const&>(v15, a3);
    v19 = *a4;
    *a4 = 0;
    if (*(a4 + 32) == 1)
    {
      v20 = a4[2];
      v45 = a4[3];
      v21 = 1;
      a4[3] = 0;
    }

    else
    {
      v21 = 0;
      v20 = 0;
    }

    v24 = *(a4 + 2);
    v26 = a4[5];
    v25 = a4[6];
    *(a4 + 5) = 0u;
    v28 = a4[7];
    v27 = a4[8];
    *(a4 + 7) = 0u;
    v29 = a4[9];
    a4[9] = 0;
    v30 = *(v15 + 8);
    *(v15 + 8) = v19;
    v46 = v21;
    if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v30, v18);
      v21 = v46;
    }

    *(v15 + 16) = v24;
    if (*(v15 + 40) == v21)
    {
      if (*(v15 + 40))
      {
        v31 = *(v15 + 32);
        *(v15 + 24) = v20;
        *(v15 + 32) = v45;
        if (v31)
        {
          WTF::fastFree((v31 - 16), v18);
          v21 = v46;
        }

        goto LABEL_38;
      }
    }

    else
    {
      if (!*(v15 + 40))
      {
        *(v15 + 24) = v20;
        *(v15 + 32) = v45;
        *(v15 + 40) = 1;
LABEL_38:
        v34 = 0;
        v33 = v47;
LABEL_39:
        v37 = *(v15 + 48);
        *(v15 + 48) = v26;
        if (v37)
        {
          WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v37, v18);
          v21 = v46;
        }

        v38 = *(v15 + 56);
        *(v15 + 56) = v25;
        if (v38)
        {
          WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v38, v18);
          v21 = v46;
        }

        v39 = *(v15 + 64);
        *(v15 + 64) = v28;
        if (v39)
        {
          WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v39, v18);
          v21 = v46;
        }

        v40 = *(v15 + 72);
        *(v15 + 72) = v27;
        if (v40)
        {
          WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v40, v18);
          v21 = v46;
        }

        result = *(v15 + 80);
        *(v15 + 80) = v29;
        if (result)
        {
          result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(result, v18);
          if (!v46)
          {
            goto LABEL_51;
          }
        }

        else if (!v21)
        {
          goto LABEL_51;
        }

        if (v34)
        {
          result = WTF::fastFree((v34 - 16), v18);
        }

LABEL_51:
        v41 = *a2;
        if (*a2)
        {
          v42 = *(v41 - 12) + 1;
        }

        else
        {
          v42 = 1;
        }

        *(v41 - 12) = v42;
        v43 = (*(v41 - 16) + v42);
        v44 = *(v41 - 4);
        if (v44 > 0x400)
        {
          if (v44 <= 2 * v43)
          {
LABEL_56:
            result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::WebsiteDataRecord>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::WebsiteDataRecord>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::WebsiteDataRecord,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::WebsiteDataRecord>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a2, v15);
            v15 = result;
            v41 = *a2;
            if (*a2)
            {
              LODWORD(v44) = *(v41 - 4);
            }

            else
            {
              LODWORD(v44) = 0;
            }
          }
        }

        else if (3 * v44 <= 4 * v43)
        {
          goto LABEL_56;
        }

        v36 = v41 + 88 * v44;
        v35 = 1;
        goto LABEL_60;
      }

      v32 = *(v15 + 32);
      if (v32)
      {
        WTF::fastFree((v32 - 16), v18);
        v21 = v46;
      }

      *(v15 + 40) = 0;
    }

    v33 = v47;
    v34 = v45;
    goto LABEL_39;
  }

  result = WTF::equal(v16, *a3, a3);
  if (!result)
  {
    goto LABEL_14;
  }

  v22 = *a2;
  if (*a2)
  {
    v23 = *(v22 - 4);
  }

  else
  {
    v23 = 0;
  }

  v33 = v47;
  v35 = 0;
  v36 = v22 + 88 * v23;
LABEL_60:
  *v33 = v15;
  *(v33 + 8) = v36;
  *(v33 + 16) = v35;
  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::CallbackAggregator::addWebsiteData(WebKit::WebsiteData &&)::{lambda(void)#1},void>::~CallableWrapper(uint64_t a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11214E0;
  v3 = *(a1 + 48);
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v5, a2);
  }

  WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 16, a2);
  WTF::Ref<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>,WTF::DefaultRefDerefTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>>::~Ref((a1 + 8));
  return a1;
}

{
  *a1 = &unk_1F11214E0;
  v3 = *(a1 + 48);
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v5, a2);
  }

  WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 16, a2);
  WTF::Ref<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>,WTF::DefaultRefDerefTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>>::~Ref((a1 + 8));

  return WTF::fastFree(a1, v6);
}

char *WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::String,void>>@<X0>(char *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *a2;
  if (!*a2)
  {
    v6 = 1;
    v7 = 1;
    return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::String,void>>(v6, v7, *result, v3, a3);
  }

  v4 = *(v3 + 4);
  if ((v4 & 0x80000000) == 0)
  {
    v5 = __OFADD__(v4, 1);
    v6 = (v4 + 1);
    if (!v5)
    {
      v7 = (*(v3 + 16) >> 2) & 1;
      return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::String,void>>(v6, v7, *result, v3, a3);
    }
  }

  *a3 = 0;
  return result;
}

uint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::String,void>>@<X0>(uint64_t result@<X0>, int a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = result;
  if (a2)
  {
    if (result)
    {
      if ((result & 0x80000000) == 0)
      {
        result = WTF::tryFastCompactMalloc((result + 20));
        v9 = v10;
        if (v10)
        {
          *(v10 + 20) = a3;
          *v9 = 2;
          *(v9 + 4) = v7;
          *(v9 + 8) = v9 + 20;
          *(v9 + 16) = 4;
          v10 = a4;
          result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v10, (v9 + 21));
        }

        goto LABEL_12;
      }

LABEL_8:
      v9 = 0;
      goto LABEL_12;
    }

LABEL_9:
    v9 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_12;
  }

  if (!result)
  {
    goto LABEL_9;
  }

  if (result > 0x7FFFFFEF)
  {
    goto LABEL_8;
  }

  result = WTF::tryFastCompactMalloc((2 * result + 20));
  v9 = v10;
  if (v10)
  {
    *v10 = 2;
    *(v9 + 4) = v7;
    *(v9 + 20) = a3;
    *(v9 + 8) = v9 + 20;
    *(v9 + 16) = 0;
    v10 = a4;
    result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v10, (v9 + 22));
  }

LABEL_12:
  *a5 = v9;
  return result;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::WebsiteDataRecord>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::WebsiteDataRecord>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::WebsiteDataRecord,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::WebsiteDataRecord>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 - 4);
    v5 = *(v3 - 12);
    if (v4)
    {
      v6 = v4 << (6 * v5 >= 2 * v4);
      goto LABEL_6;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = 8;
LABEL_6:
  v7 = WTF::fastMalloc((88 * v6 + 16));
  v9 = v7;
  v10 = v7 + 16;
  if (v6)
  {
    bzero((v7 + 16), 88 * v6);
  }

  *a1 = v10;
  v9[2] = v6 - 1;
  v9[3] = v6;
  *v9 = 0;
  v9[1] = v5;
  if (v4)
  {
    v11 = 0;
    v12 = 0;
    v13 = v4;
    do
    {
      v14 = v3 + 88 * v11;
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

          v19 = *(v15 + 4);
          if (v19 < 0x100)
          {
            v20 = WTF::StringImpl::hashSlowCase(v15);
          }

          else
          {
            v20 = v19 >> 8;
          }

          v21 = 0;
          do
          {
            v22 = v17 + 88 * (v20 & v18);
            v20 = ++v21 + (v20 & v18);
          }

          while (*v22);
          WebKit::WebsiteDataRecord::~WebsiteDataRecord((v22 + 8), v8);
          v24 = *v22;
          *v22 = 0;
          if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v24, v23);
          }

          v25 = *v14;
          *v14 = 0;
          *v22 = v25;
          v26 = *(v14 + 8);
          *(v14 + 8) = 0;
          *(v22 + 8) = v26;
          *(v22 + 16) = *(v14 + 16);
          *(v22 + 24) = 0;
          *(v22 + 40) = 0;
          if (*(v14 + 40) == 1)
          {
            *(v22 + 32) = 0;
            v27 = *(v14 + 24);
            v28 = *(v14 + 32);
            *(v14 + 32) = 0;
            *(v22 + 24) = v27;
            *(v22 + 32) = v28;
            *(v22 + 40) = 1;
          }

          *(v22 + 48) = 0;
          v29 = *(v14 + 48);
          *(v14 + 48) = 0;
          *(v22 + 48) = v29;
          *(v22 + 56) = 0;
          v30 = *(v14 + 56);
          *(v14 + 56) = 0;
          *(v22 + 56) = v30;
          *(v22 + 64) = 0;
          v31 = *(v14 + 64);
          *(v14 + 64) = 0;
          *(v22 + 64) = v31;
          *(v22 + 72) = 0;
          v32 = *(v14 + 72);
          *(v14 + 72) = 0;
          *(v22 + 72) = v32;
          *(v22 + 80) = 0;
          v33 = *(v14 + 80);
          *(v14 + 80) = 0;
          *(v22 + 80) = v33;
          WebKit::WebsiteDataRecord::~WebsiteDataRecord((v14 + 8), v23);
          v34 = *v14;
          *v14 = 0;
          if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v34, v8);
          }

          if (v14 == a2)
          {
            v12 = v22;
          }
        }

        else
        {
          WebKit::WebsiteDataRecord::~WebsiteDataRecord((v14 + 8), v8);
          v16 = *v14;
          *v14 = 0;
          if (v16)
          {
            if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v16, v8);
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
    if (!v3)
    {
      return result;
    }
  }

  WTF::fastFree((v3 - 16), v8);
  return v12;
}

_OWORD *WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,unsigned long long>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,unsigned long long,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::expand(uint64_t *a1, _DWORD *a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 12);
    if (v5)
    {
      v7 = v5 << (6 * v6 >= (2 * v5));
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = 8;
LABEL_6:
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
      if ((*v12 + 1) >= 2)
      {
        v13 = *a1;
        if (*a1)
        {
          v14 = *(v13 - 8);
        }

        else
        {
          v14 = 0;
        }

        v15 = 0;
        v16 = 9 * ((*v12 + ~(*v12 << 15)) ^ ((*v12 + ~(*v12 << 15)) >> 10));
        v17 = ((v16 ^ (v16 >> 6)) + ~((v16 ^ (v16 >> 6)) << 11)) ^ (((v16 ^ (v16 >> 6)) + ~((v16 ^ (v16 >> 6)) << 11)) >> 16);
        do
        {
          v18 = v17 & v14;
          v17 = ++v15 + v18;
        }

        while (*(v13 + 16 * v18));
        v19 = (v13 + 16 * v18);
        *v19 = *v12;
        if (v12 == a2)
        {
          v11 = v19;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::$_3,void,WebKit::WebsiteData>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F1121508;
  WTF::Ref<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>,WTF::DefaultRefDerefTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>>::~Ref((a1 + 8));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::$_3,void,WebKit::WebsiteData>::~CallableWrapper(unsigned int **a1)
{
  *a1 = &unk_1F1121508;
  WTF::Ref<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>,WTF::DefaultRefDerefTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>>::~Ref(a1 + 1);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::$_3,void,WebKit::WebsiteData>::call(uint64_t a1, uint64_t a2)
{
  v7[0] = *a2;
  v2 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  v7[1] = v2;
  v3 = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v8 = v3;
  v4 = *(a2 + 32);
  *(a2 + 32) = 0;
  v9 = v4;
  WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::CallbackAggregator::addWebsiteData(*(a1 + 8), v7);
  if (v9)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v9, v5);
  }

  if (*(&v8 + 1))
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*(&v8 + 1), v5);
  }

  if (v8)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v8, v5);
  }

  return WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v7, v5);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::$_4,void,WebKit::WebsiteData>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F1121530;
  WTF::Ref<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>,WTF::DefaultRefDerefTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>>::~Ref((a1 + 8));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::$_4,void,WebKit::WebsiteData>::~CallableWrapper(unsigned int **a1)
{
  *a1 = &unk_1F1121530;
  WTF::Ref<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>,WTF::DefaultRefDerefTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>>::~Ref(a1 + 1);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::$_4,void,WebKit::WebsiteData>::call(uint64_t a1, uint64_t a2)
{
  v7[0] = *a2;
  v2 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  v7[1] = v2;
  v3 = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v8 = v3;
  v4 = *(a2 + 32);
  *(a2 + 32) = 0;
  v9 = v4;
  WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::CallbackAggregator::addWebsiteData(*(a1 + 8), v7);
  if (v9)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v9, v5);
  }

  if (*(&v8 + 1))
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*(&v8 + 1), v5);
  }

  if (v8)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v8, v5);
  }

  return WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v7, v5);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::$_5,void,WTF::HashSet<WebCore::SecurityOriginData,WTF::DefaultHash<WTF::HashSet>,WTF::HashTraits<WTF::HashSet>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F1121558;
  WTF::Ref<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>,WTF::DefaultRefDerefTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>>::~Ref((a1 + 8));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::$_5,void,WTF::HashSet<WebCore::SecurityOriginData,WTF::DefaultHash<WTF::HashSet>,WTF::HashTraits<WTF::HashSet>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&>::~CallableWrapper(unsigned int **a1)
{
  *a1 = &unk_1F1121558;
  WTF::Ref<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>,WTF::DefaultRefDerefTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>>::~Ref(a1 + 1);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::$_5,void,WTF::HashSet<WebCore::SecurityOriginData,WTF::DefaultHash<WTF::HashSet>,WTF::HashTraits<WTF::HashSet>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&>::call(uint64_t result, uint64_t *a2)
{
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = result;
  if (*a2 && (v4 = *(*a2 - 12), v4))
  {
    if (v4 >= 0x5555556)
    {
      __break(0xC471u);
      return result;
    }

    v5 = 48 * v4;
    v6 = WTF::fastMalloc((48 * v4));
    v19 = v5 / 0x30;
  }

  else
  {
    v19 = 0;
    v6 = 0;
  }

  v7 = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::begin(a2);
  v10 = v7;
  v11 = v8;
  if (*a2)
  {
    v12 = *a2 + 32 * *(*a2 - 4);
  }

  else
  {
    v12 = 0;
  }

  if (v12 != v7)
  {
    v13 = 0;
    while (1)
    {
      v14 = *(v10 + 24);
      if (*(v10 + 24))
      {
        if (v14 == 255)
        {
          goto LABEL_36;
        }

        v15 = *v10;
        v16 = *(v10 + 1);
        if (!*(v10 + 24))
        {
          goto LABEL_17;
        }
      }

      else
      {
        v15 = *v10;
        if (*v10)
        {
          atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
        }

        v16 = *(v10 + 1);
        if (v16)
        {
          atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
        }

        v2 = *(v10 + 4);
        v14 = *(v10 + 24);
        if (!*(v10 + 24))
        {
LABEL_17:
          if (v15)
          {
            atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
          }

          if (v16 && (atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed), atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2))
          {
            WTF::StringImpl::destroy(v16, v8);
            if (v15)
            {
              goto LABEL_22;
            }
          }

          else if (v15)
          {
LABEL_22:
            if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v15, v8);
            }
          }

          v17 = v6 + 48 * v13;
          *v17 = v15;
          *(v17 + 8) = v16;
          *(v17 + 16) = v2;
          *(v17 + 24) = 0;
          goto LABEL_26;
        }
      }

      if (v14 == 255)
      {
LABEL_36:
        v17 = v6 + 48 * v13;
        *v17 = 0;
        LOBYTE(v14) = -1;
        goto LABEL_35;
      }

      v17 = v6 + 48 * v13;
      *v17 = v15;
      *(v17 + 8) = v16;
LABEL_35:
      *(v17 + 24) = v14;
LABEL_26:
      *(v17 + 32) = 0x10000;
      *(v17 + 40) = 0;
      do
      {
        v10 = (v10 + 32);
      }

      while (v10 != v11 && WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v10));
      ++v13;
      if (v10 == v12)
      {
        goto LABEL_38;
      }
    }
  }

  v13 = 0;
LABEL_38:
  *&v9 = 0;
  v21 = v9;
  *&v22 = v6;
  *(&v22 + 1) = __PAIR64__(v13, v19);
  WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v21, v8);
  WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::CallbackAggregator::addWebsiteData(*(v20 + 8), &v22);
  if (v24)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v24, v18);
  }

  if (*(&v23 + 1))
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*(&v23 + 1), v18);
  }

  if (v23)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v23, v18);
  }

  return WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v22, v18);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::$_1,void>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F1121580;
  WTF::Ref<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>,WTF::DefaultRefDerefTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>>::~Ref((a1 + 16));
  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, v2);
  }

  return a1;
}

{
  *a1 = &unk_1F1121580;
  WTF::Ref<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>,WTF::DefaultRefDerefTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>>::~Ref((a1 + 16));
  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, v2);
  }

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::$_1,void>::call(uint64_t a1, const WTF::String *a2)
{
  v68 = *MEMORY[0x1E69E9840];
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v49 = 0;
  v50 = 0;
  WTF::FileSystemImpl::listDirectory(&v60, (a1 + 8), a2);
  if (v61)
  {
    v9 = v60;
    v10 = 8 * v61;
    v6 = 255;
    do
    {
      v11 = *(a1 + 8);
      if (v11)
      {
        v12 = *(v11 + 16);
        v11 = *(v11 + 4);
        v13 = ((v12 >> 2) & 1) << 32;
      }

      else
      {
        v13 = 0x100000000;
      }

      v14 = *v9;
      if (*v9)
      {
        v15 = *(v14 + 16);
        v14 = *(v14 + 4);
        v16 = ((v15 >> 2) & 1) << 32;
      }

      else
      {
        v16 = 0x100000000;
      }

      v3 = v11 | v3 & 0xFFFFFF0000000000 | v13;
      v5 = v14 | v5 & 0xFFFFFF0000000000 | v16;
      WTF::FileSystemImpl::pathByAppendingComponent();
      WebKit::computeMediaKeyFile(&v58, v59);
      if (WTF::FileSystemImpl::fileExists(&v58, v17))
      {
        v18 = v59;
        if (v59)
        {
          v18 = *(v59 + 1);
          v19 = ((*(v59 + 4) >> 2) & 1) << 32;
        }

        else
        {
          v19 = 0x100000000;
        }

        v4 = v18 | v4 & 0xFFFFFF0000000000 | v19;
        v2 = v2 & 0xFFFFFF0000000000 | 0x100000006;
        WTF::FileSystemImpl::pathByAppendingComponent();
        WebCore::StorageUtilities::readOriginFromFile(v62, &v57, v20);
        if (v67 == 1)
        {
          if (HIDWORD(v50) == v50)
          {
            WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::SecurityOriginData&>(&v49, &v64);
          }

          else
          {
            mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((v49 + 32 * HIDWORD(v50)), &v64);
            ++HIDWORD(v50);
          }
        }

        if (v67 == 1)
        {
          if (!v66)
          {
            v21 = v65;
            v65 = 0;
            if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v21, v8);
            }

            v22 = v64;
            v64 = 0;
            if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v22, v8);
            }
          }

          v66 = -1;
          if (!v63)
          {
            v23 = v62[1];
            v62[1] = 0;
            if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v23, v8);
            }

            v24 = v62[0];
            v62[0] = 0;
            if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v24, v8);
            }
          }
        }

        v25 = v57;
        v57 = 0;
        if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v25, v8);
        }
      }

      v26 = v58;
      v58 = 0;
      if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v8);
      }

      v27 = v59;
      v59 = 0;
      if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v8);
      }

      ++v9;
      v10 -= 8;
    }

    while (v10);
  }

  result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v60, v8);
  if (HIDWORD(v50))
  {
    if (HIDWORD(v50) >= 0x5555556)
    {
      __break(0xC471u);
      return result;
    }

    v31 = 48 * HIDWORD(v50);
    v32 = WTF::fastMalloc((48 * HIDWORD(v50)));
    v33 = v31 / 0x30;
    if (HIDWORD(v50))
    {
      v48 = v31 / 0x30;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      while (1)
      {
        v37 = v49;
        v38 = v49 + v34;
        v39 = *(v49 + v34 + 24);
        if (*(v49 + v34 + 24))
        {
          if (v39 == 255)
          {
            goto LABEL_69;
          }

          v40 = *(v49 + v34);
          v42 = *(v49 + v34 + 8);
          if (!*(v49 + v34 + 24))
          {
LABEL_53:
            if (v40)
            {
              atomic_fetch_add_explicit(v40, 2u, memory_order_relaxed);
            }

            if (v42 && (atomic_fetch_add_explicit(v42, 2u, memory_order_relaxed), atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2))
            {
              WTF::StringImpl::destroy(v42, v29);
              if (v40)
              {
                goto LABEL_58;
              }
            }

            else if (v40)
            {
LABEL_58:
              if (atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v40, v29);
              }
            }

            v43 = v32 + v35;
            *(v32 + v35 + 24) = -1;
            v44 = (v32 + v35 + 24);
            *v43 = v40;
            *(v43 + 8) = v42;
            *(v43 + 16) = v6;
            goto LABEL_62;
          }
        }

        else
        {
          v40 = *v38;
          if (*v38)
          {
            atomic_fetch_add_explicit(v40, 2u, memory_order_relaxed);
          }

          v41 = v37 + v34;
          v42 = *(v41 + 8);
          if (v42)
          {
            atomic_fetch_add_explicit(v42, 2u, memory_order_relaxed);
          }

          v6 = *(v41 + 16);
          v39 = *(v38 + 24);
          if (!*(v38 + 24))
          {
            goto LABEL_53;
          }
        }

        if (v39 == 255)
        {
LABEL_69:
          v43 = v32 + v35;
          *v43 = 0;
          *(v43 + 24) = -1;
          goto LABEL_63;
        }

        v45 = v32 + v35;
        *(v45 + 24) = -1;
        v43 = v32 + 48 * v36;
        v44 = (v43 + 24);
        *v45 = v40;
        *(v45 + 8) = v42;
LABEL_62:
        *v44 = v39;
LABEL_63:
        *(v43 + 32) = 256;
        *(v43 + 40) = 0;
        ++v36;
        v35 += 48;
        v34 += 32;
        if (v36 >= HIDWORD(v50))
        {
          v33 = v48;
          goto LABEL_72;
        }
      }
    }

    LODWORD(v36) = 0;
  }

  else
  {
    LODWORD(v36) = 0;
    v33 = 0;
    v32 = 0;
  }

LABEL_72:
  *&v30 = 0;
  *v62 = v30;
  v51 = v32;
  v52 = v33;
  v53 = v36;
  WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v62, v29);
  WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v49, v46);
  WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::CallbackAggregator::addWebsiteData(*(a1 + 16), &v51);
  if (v56)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v56, v47);
  }

  if (v55)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v55, v47);
  }

  if (v54)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v54, v47);
  }

  return WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v51, v47);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::$_2,void,WTF::HashSet<WTF::URL,WTF::DefaultHash<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::$_2>,WTF::HashTraits<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::$_2>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F11215A8;
  WTF::Ref<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>,WTF::DefaultRefDerefTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>>::~Ref((a1 + 8));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::$_2,void,WTF::HashSet<WTF::URL,WTF::DefaultHash<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::$_2>,WTF::HashTraits<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::$_2>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&>::~CallableWrapper(unsigned int **a1)
{
  *a1 = &unk_1F11215A8;
  WTF::Ref<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>,WTF::DefaultRefDerefTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>>::~Ref(a1 + 1);

  return WTF::fastFree(a1, v2);
}

WTF::StringImpl **WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::$_2,void,WTF::HashSet<WTF::URL,WTF::DefaultHash<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::$_2>,WTF::HashTraits<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::$_2>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&>::call(WTF::StringImpl **result, WTF::StringImpl ***a2)
{
  v2 = result;
  v37 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  *a2 = 0;
  v27 = v3;
  v28 = 0;
  v32 = 0;
  *v30 = 0u;
  v31 = 0u;
  v29 = 0;
  if (v3 && (v4 = *(v3 - 3), v4))
  {
    if (v4 >= 0x5555556)
    {
      __break(0xC471u);
      return result;
    }

    v5 = 48 * v4;
    v6 = WTF::fastMalloc((48 * v4));
    LODWORD(v29) = v5 / 0x30;
    v28 = v6;
  }

  else
  {
    v6 = 0;
  }

  v7 = WTF::HashTable<WTF::URL,WTF::URL,WTF::IdentityExtractor,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::begin(&v27);
  v9 = v7;
  v10 = v8;
  if (v27)
  {
    v11 = &v27[5 * *(v27 - 1)];
  }

  else
  {
    v11 = 0;
  }

  if (v11 == v7)
  {
    v12 = 0;
    goto LABEL_43;
  }

  v12 = 0;
  do
  {
    WebCore::SecurityOriginData::fromURL(&v33, v9, v8);
    LOBYTE(v13) = v36;
    if (v36)
    {
      v21 = v6 + 48 * v12;
      if (v36 != 255)
      {
        v14 = v33;
        v15 = v34;
        *v21 = 0;
        *(v21 + 24) = -1;
LABEL_26:
        *v21 = v14;
        *(v21 + 8) = v15;
        *(v21 + 24) = v13;
        v20 = (v21 + 40);
        *(v21 + 32) = 0x200000;
        goto LABEL_27;
      }

      v22 = v12;
      *v21 = 0;
      *(v21 + 24) = -1;
    }

    else
    {
      v14 = v33;
      if (v33)
      {
        atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
      }

      v15 = v34;
      if (v34)
      {
        atomic_fetch_add_explicit(v34, 2u, memory_order_relaxed);
      }

      v13 = v36;
      if (!v36)
      {
        v16 = v35;
        v17 = v34;
        v34 = 0;
        if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v17, v8);
        }

        v18 = v33;
        v33 = 0;
        if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v18, v8);
        }

        v19 = v6 + 48 * v12;
        *v19 = v14;
        *(v19 + 8) = v15;
        *(v19 + 16) = v16;
        *(v19 + 24) = 0;
        goto LABEL_24;
      }

      v21 = v6 + 48 * v12;
      *v21 = 0;
      *(v21 + 24) = -1;
      if (v13 != 255)
      {
        goto LABEL_26;
      }

      v22 = v12;
    }

    v19 = v6 + 48 * v22;
LABEL_24:
    *(v19 + 32) = 0x200000;
    v20 = (v19 + 40);
LABEL_27:
    *v20 = 0;
    do
    {
      v9 = (v9 + 40);
    }

    while (v9 != v10 && ((WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v9) & 1) != 0 || *v9 == -1));
    ++v12;
  }

  while (v9 != v11);
  v23 = v30[0];
  if (HIDWORD(v30[1]))
  {
    WTF::VectorTypeOperations<WebKit::WebsiteData::Entry>::destruct(v30[0], (v30[0] + 48 * HIDWORD(v30[1])));
  }

  if (v23)
  {
    WTF::fastFree(v23, v8);
  }

LABEL_43:
  v30[0] = v28;
  v24 = v29;
  v28 = 0;
  v29 = 0;
  v30[1] = __PAIR64__(v12, v24);
  WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v28, v8);
  WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::CallbackAggregator::addWebsiteData(v2[1], v30);
  if (v32)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v32, v25);
  }

  if (*(&v31 + 1))
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*(&v31 + 1), v25);
  }

  if (v31)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v31, v25);
  }

  WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v30, v25);
  result = v27;
  if (v27)
  {
    return WTF::HashTable<WTF::URL,WTF::URL,WTF::IdentityExtractor,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::deallocateTable(v27, v26);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::$_6,void,WTF::HashSet<WebCore::SecurityOriginData,WTF::DefaultHash<WTF::HashSet>,WTF::HashTraits<WTF::HashSet>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F11215D0;
  WTF::Ref<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>,WTF::DefaultRefDerefTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>>::~Ref((a1 + 8));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::$_6,void,WTF::HashSet<WebCore::SecurityOriginData,WTF::DefaultHash<WTF::HashSet>,WTF::HashTraits<WTF::HashSet>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&>::~CallableWrapper(unsigned int **a1)
{
  *a1 = &unk_1F11215D0;
  WTF::Ref<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>,WTF::DefaultRefDerefTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>>::~Ref(a1 + 1);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::$_6,void,WTF::HashSet<WebCore::SecurityOriginData,WTF::DefaultHash<WTF::HashSet>,WTF::HashTraits<WTF::HashSet>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&>::call(uint64_t result, uint64_t *a2)
{
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = result;
  if (*a2 && (v4 = *(*a2 - 12), v4))
  {
    if (v4 >= 0x5555556)
    {
      __break(0xC471u);
      return result;
    }

    v5 = 48 * v4;
    v6 = WTF::fastMalloc((48 * v4));
    v19 = v5 / 0x30;
  }

  else
  {
    v19 = 0;
    v6 = 0;
  }

  v7 = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::begin(a2);
  v10 = v7;
  v11 = v8;
  if (*a2)
  {
    v12 = *a2 + 32 * *(*a2 - 4);
  }

  else
  {
    v12 = 0;
  }

  if (v12 != v7)
  {
    v13 = 0;
    while (1)
    {
      v14 = *(v10 + 24);
      if (*(v10 + 24))
      {
        if (v14 == 255)
        {
          goto LABEL_36;
        }

        v15 = *v10;
        v16 = *(v10 + 1);
        if (!*(v10 + 24))
        {
          goto LABEL_17;
        }
      }

      else
      {
        v15 = *v10;
        if (*v10)
        {
          atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
        }

        v16 = *(v10 + 1);
        if (v16)
        {
          atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
        }

        v2 = *(v10 + 4);
        v14 = *(v10 + 24);
        if (!*(v10 + 24))
        {
LABEL_17:
          if (v15)
          {
            atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
          }

          if (v16 && (atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed), atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2))
          {
            WTF::StringImpl::destroy(v16, v8);
            if (v15)
            {
              goto LABEL_22;
            }
          }

          else if (v15)
          {
LABEL_22:
            if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v15, v8);
            }
          }

          v17 = v6 + 48 * v13;
          *v17 = v15;
          *(v17 + 8) = v16;
          *(v17 + 16) = v2;
          *(v17 + 24) = 0;
          goto LABEL_26;
        }
      }

      if (v14 == 255)
      {
LABEL_36:
        v17 = v6 + 48 * v13;
        *v17 = 0;
        LOBYTE(v14) = -1;
        goto LABEL_35;
      }

      v17 = v6 + 48 * v13;
      *v17 = v15;
      *(v17 + 8) = v16;
LABEL_35:
      *(v17 + 24) = v14;
LABEL_26:
      *(v17 + 32) = 256;
      *(v17 + 40) = 0;
      do
      {
        v10 = (v10 + 32);
      }

      while (v10 != v11 && WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v10));
      ++v13;
      if (v10 == v12)
      {
        goto LABEL_38;
      }
    }
  }

  v13 = 0;
LABEL_38:
  *&v9 = 0;
  v21 = v9;
  *&v22 = v6;
  *(&v22 + 1) = __PAIR64__(v13, v19);
  WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v21, v8);
  WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::CallbackAggregator::addWebsiteData(*(v20 + 8), &v22);
  if (v24)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v24, v18);
  }

  if (*(&v23 + 1))
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*(&v23 + 1), v18);
  }

  if (v23)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v23, v18);
  }

  return WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v22, v18);
}

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::fetchDataForRegistrableDomains(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_0,void,WebKit::WebsiteDataRecord>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F11215F8;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 1), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::fetchDataForRegistrableDomains(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_0,void,WebKit::WebsiteDataRecord>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F11215F8;
  v3 = *(a1 + 3);
  *(a1 + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 8, a2);

  return WTF::fastFree(a1, v4);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::fetchDataForRegistrableDomains(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_0,void,WebKit::WebsiteDataRecord>::call(uint64_t isEmptyOrDeletedBucket, uint64_t a2)
{
  v5 = isEmptyOrDeletedBucket;
  v67 = 0uLL;
  v66 = 0;
  v6 = *(a2 + 12);
  if (!v6)
  {
LABEL_70:
    WTF::RunLoop::mainSingleton(isEmptyOrDeletedBucket);
    v53 = *(v5 + 24);
    *(v5 + 24) = 0;
    v5 = &v62;
    v54 = v66;
    v55 = v67;
    v67 = 0u;
    v66 = 0;
    v56 = WTF::fastMalloc(0x28);
    *v56 = &unk_1F1121620;
    *(v56 + 1) = v53;
    v62 = 0;
    v63 = 0;
    *(v56 + 2) = v55;
    v64 = 0u;
    *(v56 + 3) = *(&v55 + 1);
    *(v56 + 4) = v54;
    v65 = v56;
    WTF::RunLoop::dispatch();
    isEmptyOrDeletedBucket = v65;
    v65 = 0;
    if (isEmptyOrDeletedBucket)
    {
      goto LABEL_77;
    }

    goto LABEL_71;
  }

  v7 = *a2;
  v61 = *a2 + 80 * v6;
  while (1)
  {
    v8 = *(v5 + 20);
    if (v8)
    {
      break;
    }

LABEL_69:
    v7 += 80;
    if (v7 == v61)
    {
      goto LABEL_70;
    }
  }

  v9 = *(v5 + 8);
  v10 = &v9[v8];
  while (1)
  {
    isEmptyOrDeletedBucket = *v9;
    if (!*v9)
    {
      goto LABEL_56;
    }

    if (!*(isEmptyOrDeletedBucket + 4))
    {
      goto LABEL_56;
    }

    isEmptyOrDeletedBucket = MEMORY[0x19EB01EF0]();
    if (isEmptyOrDeletedBucket)
    {
      goto LABEL_56;
    }

    if (*(v7 + 8))
    {
      v11 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin((v7 + 48));
      v12 = v11;
      v14 = v13;
      v15 = *(v7 + 48);
      v3 = v15 ? v15 + 8 * *(v15 - 4) : 0;
      if (v3 != v11)
      {
        break;
      }
    }

LABEL_30:
    isEmptyOrDeletedBucket = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::begin((v7 + 40));
    v25 = isEmptyOrDeletedBucket;
    v27 = v26;
    v28 = *(v7 + 40);
    if (v28)
    {
      v4 = v28 + 32 * *(v28 - 4);
    }

    else
    {
      v4 = 0;
    }

    if (v4 != isEmptyOrDeletedBucket)
    {
      while (1)
      {
        if (*(v25 + 24))
        {
          v29 = MEMORY[0x1E696EBA8];
          if (*(v25 + 24) != 1)
          {
            mpark::throw_bad_variant_access(isEmptyOrDeletedBucket);
          }
        }

        else
        {
          v29 = v25 + 1;
        }

        v30 = *v29;
        if (*v29)
        {
          v31 = *(v30 + 16);
          v32 = *(v30 + 8);
          v30 = *(v30 + 4);
          v33 = ((v31 >> 2) & 1) << 32;
        }

        else
        {
          v32 = 0;
          v33 = 0x100000000;
        }

        v34 = *v9;
        if (*v9)
        {
          v35 = *(v34 + 4);
          v36 = ((*(v34 + 16) >> 2) & 1) << 32;
        }

        else
        {
          v35 = 0;
          v36 = 0x100000000;
        }

        v3 = v30 | v3 & 0xFFFFFF0000000000 | v33;
        v2 = v2 & 0xFFFFFF0000000000 | v36 | v35;
        v62 = v32;
        v63 = v3;
        isEmptyOrDeletedBucket = WTF::StringView::endsWithIgnoringASCIICase();
        if (isEmptyOrDeletedBucket)
        {
          if (v63 == v35)
          {
            break;
          }

          v37 = v63 + ~v35;
          if (BYTE4(v63) == 1)
          {
            if (v63 <= v37)
            {
              goto LABEL_76;
            }

            v38 = *(v62 + v37);
          }

          else
          {
            if (v63 <= v37)
            {
              goto LABEL_76;
            }

            v38 = *(v62 + 2 * v37);
          }

          if (v38 == 46)
          {
            break;
          }
        }

        do
        {
          v25 += 4;
          if (v25 == v27)
          {
            break;
          }

          isEmptyOrDeletedBucket = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v25);
        }

        while (isEmptyOrDeletedBucket);
        if (v25 == v4)
        {
          goto LABEL_56;
        }
      }

LABEL_59:
      if (HIDWORD(v67) == DWORD2(v67))
      {
        v39 = WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v67, HIDWORD(v67) + 1, v7);
        v40 = v67 + 80 * HIDWORD(v67);
        v41 = *v39;
        *v39 = 0;
        *v40 = v41;
        *(v40 + 8) = *(v39 + 8);
        *(v40 + 16) = 0;
        *(v40 + 32) = 0;
        if (*(v39 + 32) == 1)
        {
          *(v40 + 16) = *(v39 + 16);
          *(v40 + 24) = 0;
          v42 = *(v39 + 24);
          *(v39 + 24) = 0;
          *(v40 + 24) = v42;
          *(v40 + 32) = 1;
        }

        *(v40 + 40) = 0;
        v43 = *(v39 + 40);
        *(v39 + 40) = 0;
        *(v40 + 40) = v43;
      }

      else
      {
        v40 = v67 + 80 * HIDWORD(v67);
        v44 = *v7;
        *v7 = 0;
        *v40 = v44;
        *(v40 + 8) = *(v7 + 8);
        *(v40 + 16) = 0;
        *(v40 + 32) = 0;
        if (*(v7 + 32) == 1)
        {
          *(v40 + 16) = *(v7 + 16);
          *(v40 + 24) = 0;
          v45 = *(v7 + 24);
          *(v7 + 24) = 0;
          *(v40 + 24) = v45;
          *(v40 + 32) = 1;
        }

        *(v40 + 40) = 0;
        v46 = *(v7 + 40);
        *(v7 + 40) = 0;
        *(v40 + 40) = v46;
        v39 = v7;
      }

      *(v40 + 48) = 0;
      v47 = *(v39 + 48);
      *(v39 + 48) = 0;
      *(v40 + 48) = v47;
      *(v40 + 56) = 0;
      v48 = *(v39 + 56);
      *(v39 + 56) = 0;
      *(v40 + 56) = v48;
      *(v40 + 64) = 0;
      v49 = *(v39 + 64);
      *(v39 + 64) = 0;
      *(v40 + 64) = v49;
      *(v40 + 72) = 0;
      v50 = *(v39 + 72);
      *(v39 + 72) = 0;
      *(v40 + 72) = v50;
      ++HIDWORD(v67);
      WebCore::RegistrableDomain::isolatedCopy(&v65);
      WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v66, &v65, v51, &v62);
      isEmptyOrDeletedBucket = v65;
      v65 = 0;
      if (isEmptyOrDeletedBucket && atomic_fetch_add_explicit(isEmptyOrDeletedBucket, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        isEmptyOrDeletedBucket = WTF::StringImpl::destroy(isEmptyOrDeletedBucket, v52);
      }

      goto LABEL_69;
    }

LABEL_56:
    if (++v9 == v10)
    {
      goto LABEL_69;
    }
  }

  while (1)
  {
    v16 = *v12;
    if (*v12)
    {
      v17 = *(v16 + 16);
      v18 = *(v16 + 8);
      v16 = *(v16 + 4);
      v19 = ((v17 >> 2) & 1) << 32;
    }

    else
    {
      v18 = 0;
      v19 = 0x100000000;
    }

    v20 = *v9;
    if (*v9)
    {
      v21 = *(v20 + 4);
      v22 = ((*(v20 + 16) >> 2) & 1) << 32;
    }

    else
    {
      v21 = 0;
      v22 = 0x100000000;
    }

    v4 = v16 | v4 & 0xFFFFFF0000000000 | v19;
    v2 = v2 & 0xFFFFFF0000000000 | v22 | v21;
    v62 = v18;
    v63 = v4;
    isEmptyOrDeletedBucket = WTF::StringView::endsWithIgnoringASCIICase();
    if ((isEmptyOrDeletedBucket & 1) == 0)
    {
      goto LABEL_24;
    }

    if (v63 == v21)
    {
      goto LABEL_59;
    }

    v23 = v63 + ~v21;
    if (BYTE4(v63) == 1)
    {
      if (v63 <= v23)
      {
        break;
      }

      v24 = *(v62 + v23);
      goto LABEL_23;
    }

    if (v63 <= v23)
    {
      break;
    }

    v24 = *(v62 + 2 * v23);
LABEL_23:
    if (v24 == 46)
    {
      goto LABEL_59;
    }

    do
    {
LABEL_24:
      ++v12;
    }

    while (v12 != v14 && (*v12 + 1) <= 1);
    if (v12 == v3)
    {
      goto LABEL_30;
    }
  }

LABEL_76:
  __break(1u);
LABEL_77:
  (*(*isEmptyOrDeletedBucket + 8))(isEmptyOrDeletedBucket);
LABEL_71:
  WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5 | 8, v57);
  v59 = v62;
  v62 = 0;
  if (v59)
  {
    (*(*v59 + 8))(v59);
  }

  if (v66)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v66, v58);
  }

  return WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v67, v58);
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit16WebsiteDataStore30fetchDataForRegistrableDomainsENS_9OptionSetINS2_15WebsiteDataTypeEEENS4_INS2_22WebsiteDataFetchOptionEEEONS_6VectorIN7WebCore17RegistrableDomainELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONS9_INS2_17WebsiteDataRecordELm0ESC_Lm16ESD_EEONS_7HashSetISB_NS_11DefaultHashISB_EENS_10HashTraitsISB_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1EEEEEEEN3__0clISI_EEDaOT_EUlvE_vJEED1Ev(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1121620;
  v3 = a1[4];
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 2), a2);
  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit16WebsiteDataStore30fetchDataForRegistrableDomainsENS_9OptionSetINS2_15WebsiteDataTypeEEENS4_INS2_22WebsiteDataFetchOptionEEEONS_6VectorIN7WebCore17RegistrableDomainELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONS9_INS2_17WebsiteDataRecordELm0ESC_Lm16ESD_EEONS_7HashSetISB_NS_11DefaultHashISB_EENS_10HashTraitsISB_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1EEEEEEEN3__0clISI_EEDaOT_EUlvE_vJEED0Ev(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1121620;
  v3 = *(a1 + 4);
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 16, a2);
  v5 = *(a1 + 1);
  *(a1 + 1) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return WTF::fastFree(a1, v4);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit16WebsiteDataStore30fetchDataForRegistrableDomainsENS_9OptionSetINS2_15WebsiteDataTypeEEENS4_INS2_22WebsiteDataFetchOptionEEEONS_6VectorIN7WebCore17RegistrableDomainELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONS9_INS2_17WebsiteDataRecordELm0ESC_Lm16ESD_EEONS_7HashSetISB_NS_11DefaultHashISB_EENS_10HashTraitsISB_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1EEEEEEEN3__0clISI_EEDaOT_EUlvE_vJEE4callEv(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1, a1 + 16, a1 + 32);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::removeData(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::Function<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1121648;
  v2 = a1[4];
  a1[4] = 0;
  if (v2)
  {
    v3 = *v2;
    v4 = *(v2 + 8) - 1;
    *(v2 + 8) = v4;
    if (v3)
    {
      v5 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }

      v6 = *(v2 + 16);
      *(v2 + 16) = 1;
      (*(*v5 + 16))(v5, 0);
      *(v2 + 16) = v6;
      if (*v2)
      {
        goto LABEL_8;
      }

      v4 = *(v2 + 8);
    }

    if (!v4)
    {
      MEMORY[0x19EB14CF0](v2, 0x1020C40545B2139);
    }
  }

LABEL_8:
  v7 = a1[3];
  a1[3] = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = a1[1];
  a1[1] = 0;
  if (v8)
  {
    CFRelease(*(v8 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::removeData(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::Function<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1121648;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    v4 = *v3;
    v5 = *(v3 + 8) - 1;
    *(v3 + 8) = v5;
    if (v4)
    {
      v6 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }

      v7 = *(v3 + 16);
      *(v3 + 16) = 1;
      (*(*v6 + 16))(v6, 0);
      *(v3 + 16) = v7;
      if (*v3)
      {
        goto LABEL_8;
      }

      v5 = *(v3 + 8);
    }

    if (!v5)
    {
      MEMORY[0x19EB14CF0](v3, 0x1020C40545B2139);
    }
  }

LABEL_8:
  v8 = *(this + 3);
  *(this + 3) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 1);
  *(this + 1) = 0;
  if (v9)
  {
    CFRelease(*(v9 + 8));
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::removeData(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::Function<void ()(void)> &&)::$_0,void>::call(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED641350;
  if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 16);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "WebsiteDataStore::removeData finished deleting modified data for session %llu", &v5, 0xCu);
  }

  return (*(**(a1 + 24) + 16))(*(a1 + 24));
}

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::removeData(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::Function<void ()(void)> &&)::$_1,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1121670;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v3);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::removeData(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::Function<void ()(void)> &&)::$_1,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1121670;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::removeData(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::Function<void ()(void)> &&)::$_2,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1121698;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::removeData(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::Function<void ()(void)> &&)::$_2,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1121698;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::removeData(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::Function<void ()(void)> &&)::$_3,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11216C0;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::removeData(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::Function<void ()(void)> &&)::$_3,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11216C0;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::removeData(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::Function<void ()(void)> &&)::$_4,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11216E8;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::removeData(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::Function<void ()(void)> &&)::$_4,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11216E8;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::removeData(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::Function<void ()(void)> &&)::$_5,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1121710;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::removeData(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::Function<void ()(void)> &&)::$_5,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1121710;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::removeData(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::Function<void ()(void)> &&)::$_6,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1121738;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::removeData(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::Function<void ()(void)> &&)::$_6,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1121738;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::removeData(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::Function<void ()(void)> &&)::$_6,void>::call(uint64_t a1, const WTF::String *a2)
{
  v7 = *(a1 + 24);
  WTF::FileSystemImpl::listDirectory(&v30, (a1 + 8), a2);
  if (v31)
  {
    v9 = v30;
    v10 = 8 * v31;
    do
    {
      v11 = *(a1 + 8);
      if (v11)
      {
        v12 = *(v11 + 16);
        v11 = *(v11 + 4);
        v13 = ((v12 >> 2) & 1) << 32;
      }

      else
      {
        v13 = 0x100000000;
      }

      v14 = *v9;
      if (*v9)
      {
        v15 = *(v14 + 16);
        v14 = *(v14 + 4);
        v16 = ((v15 >> 2) & 1) << 32;
      }

      else
      {
        v16 = 0x100000000;
      }

      v3 = v11 | v3 & 0xFFFFFF0000000000 | v13;
      v5 = v14 | v5 & 0xFFFFFF0000000000 | v16;
      WTF::FileSystemImpl::pathByAppendingComponent();
      WebKit::computeMediaKeyFile(&v28, v29);
      v18 = COERCE_DOUBLE(WTF::FileSystemImpl::fileModificationTime(&v28, v17));
      if ((v8 & 1) != 0 && v7 <= v18)
      {
        WTF::FileSystemImpl::deleteFile(&v28, v8);
        v19 = v29;
        if (v29)
        {
          v19 = *(v29 + 1);
          v20 = ((*(v29 + 4) >> 2) & 1) << 32;
        }

        else
        {
          v20 = 0x100000000;
        }

        v4 = v19 | v4 & 0xFFFFFF0000000000 | v20;
        v2 = v2 & 0xFFFFFF0000000000 | 0x100000006;
        WTF::FileSystemImpl::pathByAppendingComponent();
        WTF::FileSystemImpl::deleteFile(&v27, v21);
        v23 = v27;
        v27 = 0;
        if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v23, v22);
        }

        WTF::FileSystemImpl::deleteEmptyDirectory(&v29, v22);
      }

      v24 = v28;
      v28 = 0;
      if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v24, v8);
      }

      v25 = v29;
      v29 = 0;
      if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v8);
      }

      ++v9;
      v10 -= 8;
    }

    while (v10);
  }

  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v30, v8);
}