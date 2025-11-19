void WebKit::InitializeWebKit2(WebKit *this)
{
  if (atomic_load_explicit(&WebKit::flag, memory_order_acquire) != -1)
  {
    v5[1] = v1;
    v5[2] = v2;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&WebKit::flag, &v4, std::__call_once_proxy[abi:sn200100]<std::tuple<WebKit::InitializeWebKit2(void)::$_0 &&>>);
  }
}

uint64_t std::__call_once_proxy[abi:sn200100]<std::tuple<WebKit::InitializeWebKit2(void)::$_0 &&>>()
{
  v0 = [MEMORY[0x1E696AF00] isMainThread];
  if ((v0 & 1) != 0 || (v0 = WTF::linkedOnOrAfterSDKWithBehavior(), v0))
  {

    return WebKit::runInitializationCode(v0, v1);
  }

  else
  {
    v3 = WTF::WorkQueue::mainSingleton(v0);
    v4 = WTF::fastMalloc(0x10);
    *v4 = &unk_1F10F2180;
    v5 = v4;
    (*(*v3 + 24))(v3, &v5);
    result = v5;
    v5 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_19D530470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::runInitializationCode(WebKit *this, void *a2)
{
  v2 = [MEMORY[0x1E696AF00] isMainThread];
  if (v2)
  {
    v3 = WTF::initializeMainThread(v2);
    v4 = JSC::initialize(v3);
    WebCore::initializeCommonAtomStrings(v4);
    inited = InitWebCoreThreadSystemInterface();

    return WebCore::populateJITOperations(inited);
  }

  else
  {
    result = 59;
    __break(0xC471u);
  }

  return result;
}

WebKit *WebKit::WebProcessPool::registerGlobalURLSchemeAsHavingCustomProtocolHandlers(WebKit *this, const WTF::String *a2)
{
  if (*this)
  {
    v2 = this;
    WebKit::InitializeWebKit2(this);
    {
      WebKit::globalURLSchemesWithCustomProtocolHandlers(void)::set = 0;
    }

    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::ASCIICaseInsensitiveHash,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&WebKit::globalURLSchemesWithCustomProtocolHandlers(void)::set, v2, &v9);
    WebKit::NetworkProcessProxy::allNetworkProcesses(v3, &v9);
    if (v10)
    {
      v5 = v9;
      v6 = 8 * v10;
      do
      {
        v7 = *v5;
        v8 = (*v5 + 16);
        atomic_fetch_add(v8, 1u);
        v11 = v2;
        WebKit::AuxiliaryProcessProxy::send<Messages::LegacyCustomProtocolManager::RegisterScheme>(v7, &v11, 0, 0);
        if (v7)
        {
          WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
        }

        ++v5;
        v6 -= 8;
      }

      while (v6);
    }

    return WTF::Vector<WTF::Ref<WebKit::NetworkProcessProxy,WTF::RawPtrTraits<WebKit::NetworkProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::NetworkProcessProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v9, v4);
  }

  return this;
}

uint64_t WTF::ASCIICaseInsensitiveHash::hash(WTF::ASCIICaseInsensitiveHash *this, const WTF::StringImpl *a2)
{
  v4 = *(this + 1);
  v5 = *(this + 1);
  if ((*(this + 16) & 4) != 0)
  {
    v6 = WTF::SuperFastHash::computeHashImpl<unsigned char,WTF::ASCIICaseInsensitiveHash::FoldCase>(v4, v5);
    v7 = (v6 ^ (8 * v6)) + ((v6 ^ (8 * v6)) >> 5);
    v8 = (v7 ^ (4 * v7)) + ((v7 ^ (4 * v7)) >> 15);
    v9 = (v8 ^ (v8 << 10)) & 0xFFFFFF;
    if (v9)
    {
      return v9;
    }

    else
    {
      return 0x800000;
    }
  }

  else
  {

    return WTF::StringHasher::computeHashAndMaskTop8Bits<char16_t,WTF::ASCIICaseInsensitiveHash::FoldCase>(v4, v5);
  }
}

uint64_t WTF::SuperFastHash::computeHashImpl<unsigned char,WTF::ASCIICaseInsensitiveHash::FoldCase>(uint64_t a1, unint64_t a2)
{
  result = 2654435769;
  if (a2 >= 2)
  {
    v4 = 0;
    do
    {
      v5 = result + *(MEMORY[0x1E696EBB8] + *(a1 + v4));
      v6 = (v5 << 16) ^ (*(MEMORY[0x1E696EBB8] + *(a1 + v4 + 1)) << 11) ^ v5;
      result = v6 + (v6 >> 11);
      v7 = v4 + 3;
      v4 += 2;
    }

    while (v7 < a2);
  }

  if (a2)
  {
    v8 = result + *(MEMORY[0x1E696EBB8] + *(a1 + a2 - 1));
    return (v8 ^ (v8 << 11)) + ((v8 ^ (v8 << 11)) >> 17);
  }

  return result;
}

uint64_t WebKit::NetworkProcessProxy::allNetworkProcesses@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  {
    WebKit::networkProcessesSet(void)::set = 0;
    *algn_1ED643778 = 0;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  result = WTF::WeakHashSet<WebKit::ProcessThrottlerActivity,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::computeSize(&WebKit::networkProcessesSet(void)::set, a1);
  if (result)
  {
    v5 = result;
    if (result >> 29)
    {
      __break(0xC471u);
      return result;
    }

    v6 = WTF::fastMalloc((8 * result));
    *(a2 + 8) = v5;
    *a2 = v6;
  }

  WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(&WebKit::networkProcessesSet(void)::set, &v17);
  if (WebKit::networkProcessesSet(void)::set)
  {
    v7 = *(WebKit::networkProcessesSet(void)::set - 4);
    v8 = WebKit::networkProcessesSet(void)::set + 8 * v7;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v12 = &WebKit::networkProcessesSet(void)::set;
  v13 = v8;
  v14 = v8;
  v15 = v8;
  v16 = WebKit::networkProcessesSet(void)::set + 8 * v7;
  result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v12);
  for (i = v18; v18 != v13; i = v18)
  {
    v10 = *(*i + 8);
    atomic_fetch_add((v10 + 16), 1u);
    v11 = *(a2 + 12);
    *(*a2 + 8 * v11) = v10;
    *(a2 + 12) = v11 + 1;
    result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v17);
  }

  return result;
}

void *WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(a1);
  *a2 = a1;
  a2[1] = v4;
  a2[2] = v5;
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 1);
    v8 = &v6[v7];
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  a2[3] = v8;
  a2[4] = &v6[v7];

  return WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(a2);
}

uint64_t WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::computeSize(uint64_t a1, void *a2)
{
  v3 = *a1;
  if (!*a1)
  {
    goto LABEL_18;
  }

  v4 = *(v3 - 4);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = 0;
  v6 = 8 * v4;
  v7 = v3 - 8;
  do
  {
    v8 = *(v7 + v6);
    if ((v8 + 1) >= 2 && !*(v8 + 8))
    {
      *(v7 + v6) = 0;
      if (atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v8);
        WTF::fastFree(v8, a2);
      }

      *(v7 + v6) = -1;
      ++v5;
    }

    v6 -= 8;
  }

  while (v6);
  v3 = *a1;
  if (!v5)
  {
    if (v3)
    {
      goto LABEL_9;
    }

LABEL_18:
    result = 0;
    *(a1 + 8) = 0;
    return result;
  }

  v14 = *(v3 - 12) - v5;
  *(v3 - 16) += v5;
  *(v3 - 12) = v14;
LABEL_9:
  v9 = *(v3 - 4);
  if (6 * *(v3 - 12) < v9 && v9 > 8)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::shrinkToBestSize(a1);
    v3 = *a1;
    *(a1 + 8) = 0;
    if (!v3)
    {
      result = 0;
      *(a1 + 12) = 0;
      return result;
    }
  }

  else
  {
    *(a1 + 8) = 0;
  }

  v11 = *(v3 - 12);
  if (v11 >= 0x7FFFFFFF)
  {
    v12 = -2;
  }

  else
  {
    v12 = 2 * v11;
  }

  *(a1 + 12) = v12;
  return *(v3 - 12);
}

void *WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(void *result)
{
  v1 = result[3];
  v2 = result[1];
  while (v2 != v1 && !*(*v2 + 8))
  {
    v2 += 8;
    result[1] = v2;
    v3 = result[2];
    while (v2 != v3 && (*v2 + 1) <= 1)
    {
      v2 += 8;
      result[1] = v2;
    }
  }

  return result;
}

void *API::Object::apiObjectsUnderConstruction(API::Object *this)
{
  if (atomic_load_explicit(&qword_1ED6428D8, memory_order_acquire) != -1)
  {
    v4 = &v2;
    v3 = &v4;
    std::__call_once(&qword_1ED6428D8, &v3, std::__call_once_proxy[abi:sn200100]<std::tuple<API::Object::apiObjectsUnderConstruction(void)::$_0 &&>>);
  }

  result = pthread_getspecific(_MergedGlobals_89);
  if (!result)
  {
    return WTF::ThreadSpecific<WTF::HashMap<API::Object *,void const*,WTF::DefaultHash<API::Object *>,WTF::HashTraits<API::Object *>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,(WTF::CanBeGCThread)0>::set(0);
  }

  return result;
}

uint64_t std::__call_once_proxy[abi:sn200100]<std::tuple<API::Object::apiObjectsUnderConstruction(void)::$_0 &&>>()
{
  _MergedGlobals_89 = 0;
  result = pthread_key_create(&_MergedGlobals_89, WTF::ThreadSpecific<WTF::HashMap<API::Object *,void const*,WTF::DefaultHash<API::Object *>,WTF::HashTraits<API::Object *>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,(WTF::CanBeGCThread)0>::destroy);
  if (result)
  {
    __break(0xC471u);
  }

  return result;
}

WebKit::WebUserContentControllerProxy *WebKit::WebUserContentControllerProxy::WebUserContentControllerProxy(WebKit::WebUserContentControllerProxy *this)
{
  v2 = API::Object::Object(this);
  *v2 = &unk_1F1120EB8;
  *(v2 + 2) = &unk_1F10EA5E0;
  *(v2 + 3) = 0;
  *(this + 4) = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  *(this + 5) = 0;
  *this = &unk_1F1120C08;
  *(this + 2) = &unk_1F1120C48;
  *(this + 6) = 0;
  v6 = 0;
  v7 = 0;
  API::Array::create(&v6, this + 7);
  WTF::Vector<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v6, v3);
  v6 = 0;
  v7 = 0;
  API::Array::create(&v6, this + 8);
  WTF::Vector<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v6, v4);
  *(this + 13) = 0;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  {
    WebKit::webUserContentControllerProxies(void)::proxies = 0;
  }

  v8 = *(this + 4);
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebUserContentControllerProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebUserContentControllerProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::WebUserContentControllerProxy&>(&WebKit::webUserContentControllerProxies(void)::proxies, &v8, this, &v6);
  return this;
}

API::Object *API::Object::Object(API::Object *this)
{
  *this = &unk_1F110EC18;
  v2 = API::Object::apiObjectsUnderConstruction(this);
  v6 = this;
  v3 = WTF::HashTable<API::Object *,WTF::KeyValuePair<API::Object *,void const*>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<API::Object *,void const*>>,WTF::DefaultHash<API::Object *>,WTF::HashMap<API::Object *,void const*,WTF::DefaultHash<API::Object *>,WTF::HashTraits<API::Object *>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<API::Object *>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<API::Object *,void const*,WTF::DefaultHash<API::Object *>,WTF::HashTraits<API::Object *>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<API::Object *>>,(WTF::ShouldValidateKey)1,API::Object *>(v2, &v6);
  if (!*v2)
  {
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    goto LABEL_4;
  }

  if ((*v2 + 16 * *(*v2 - 4)) == v3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = *(v3 + 1);
  v3 = WTF::HashTable<API::Object *,WTF::KeyValuePair<API::Object *,void const*>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<API::Object *,void const*>>,WTF::DefaultHash<API::Object *>,WTF::HashMap<API::Object *,void const*,WTF::DefaultHash<API::Object *>,WTF::HashTraits<API::Object *>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<API::Object *>,WTF::FastMalloc>::remove(v2, v3);
LABEL_4:
  *(this + 1) = v4;
  WebKit::InitializeWebKit2(v3);
  return this;
}

WTF *API::Array::create@<X0>(_DWORD *a1@<X0>, API::Object **a2@<X8>)
{
  v4 = API::Object::newObject(0x20uLL, 1);
  v5 = API::Object::Object(v4);
  *v5 = &unk_1F110EB38;
  *(v5 + 3) = 0;
  *(v5 + 2) = 0;
  result = WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v5 + 16, a1);
  *a2 = v4;
  return result;
}

uint64_t API::Object::newObject(size_t a1, int a2)
{
  switch(a2)
  {
    case 1:
      v3 = WKNSArray;
      goto LABEL_3;
    case 8:
      v3 = WKNSData;
      goto LABEL_3;
    case 9:
      v3 = WKNSDictionary;
      goto LABEL_3;
    case 11:
      v3 = _WKFrameHandle;
      goto LABEL_3;
    case 17:
      v3 = _WKResourceLoadInfo;
      goto LABEL_3;
    case 18:
      v3 = WKSecurityOrigin;
      goto LABEL_3;
    case 21:
      v3 = _WKTargetedElementInfo;
      goto LABEL_3;
    case 22:
      v3 = _WKTargetedElementRequest;
      goto LABEL_3;
    case 27:
      v3 = WKUserScript;
      goto LABEL_3;
    case 28:
      v3 = _WKUserStyleSheet;
      goto LABEL_3;
    case 31:
    case 32:
    case 33:
    case 34:
      Instance = [WKNSNumber alloc];
      v6 = Instance;
      Instance->_type = a2;
      goto LABEL_6;
    case 39:
      v3 = _WKApplicationManifest;
      goto LABEL_3;
    case 40:
      v3 = _WKAttachment;
      goto LABEL_3;
    case 41:
      v3 = _WKAutomationSession;
      goto LABEL_3;
    case 42:
      v3 = WKBackForwardList;
      goto LABEL_3;
    case 43:
      v3 = WKBackForwardListItem;
      goto LABEL_3;
    case 46:
      v3 = WKContentRuleList;
      goto LABEL_3;
    case 47:
      v3 = _WKContentRuleListAction;
      goto LABEL_3;
    case 48:
      v3 = WKContentRuleListStore;
      goto LABEL_3;
    case 49:
      v3 = WKContentWorld;
      goto LABEL_3;
    case 50:
      v3 = WKContextMenuElementInfo;
      goto LABEL_3;
    case 52:
      v3 = _WKCustomHeaderFields;
      goto LABEL_3;
    case 53:
      v3 = _WKDataTask;
      goto LABEL_3;
    case 54:
      v3 = _WKInspectorDebuggableInfo;
      goto LABEL_3;
    case 55:
      v3 = WKDownload;
      goto LABEL_3;
    case 56:
      v3 = _WKFeature;
      goto LABEL_3;
    case 59:
      v3 = WKFrameInfo;
      goto LABEL_3;
    case 61:
      v3 = _WKFrameTreeNode;
      goto LABEL_3;
    case 65:
      v3 = WKHTTPCookieStore;
      goto LABEL_3;
    case 66:
      v3 = _WKHitTestResult;
      goto LABEL_3;
    case 67:
      v3 = _WKGeolocationPosition;
      goto LABEL_3;
    case 70:
      v3 = _WKInspector;
      goto LABEL_3;
    case 71:
      v3 = _WKInspectorConfiguration;
      goto LABEL_3;
    case 75:
      v3 = WKNavigation;
      goto LABEL_3;
    case 76:
      v3 = WKNavigationAction;
      goto LABEL_3;
    case 77:
      v3 = WKNavigationData;
      goto LABEL_3;
    case 78:
      v3 = WKNavigationResponse;
      goto LABEL_3;
    case 82:
      v3 = WKOpenPanelParameters;
      goto LABEL_3;
    case 86:
      v3 = WKWebViewConfiguration;
      goto LABEL_3;
    case 88:
      v3 = WKProcessPool;
      goto LABEL_3;
    case 89:
      v3 = _WKProcessPoolConfiguration;
      goto LABEL_3;
    case 91:
      v3 = WKPreferences;
      goto LABEL_3;
    case 94:
      v3 = _WKResourceLoadStatisticsFirstParty;
      goto LABEL_3;
    case 95:
      v3 = _WKResourceLoadStatisticsThirdParty;
      goto LABEL_3;
    case 102:
      v3 = _WKTextRun;
      goto LABEL_3;
    case 103:
      v3 = WKURLSchemeTaskImpl;
      goto LABEL_3;
    case 104:
      v3 = WKUserContentController;
      goto LABEL_3;
    case 105:
      v3 = _WKUserInitiatedAction;
      goto LABEL_3;
    case 109:
      v3 = _WKVisitedLinkStore;
      goto LABEL_3;
    case 110:
      v3 = WKWebExtension;
      goto LABEL_3;
    case 111:
      v3 = WKWebExtensionAction;
      goto LABEL_3;
    case 112:
      v3 = WKWebExtensionCommand;
      goto LABEL_3;
    case 113:
      v3 = WKWebExtensionContext;
      goto LABEL_3;
    case 114:
      v3 = WKWebExtensionController;
      goto LABEL_3;
    case 115:
      v3 = WKWebExtensionControllerConfiguration;
      goto LABEL_3;
    case 116:
      v3 = WKWebExtensionDataRecord;
      goto LABEL_3;
    case 117:
      v3 = WKWebExtensionMatchPattern;
      goto LABEL_3;
    case 118:
      v3 = WKWebExtensionMessagePort;
      goto LABEL_3;
    case 120:
      v3 = _WKWebPushDaemonConnection;
      goto LABEL_3;
    case 121:
      v3 = _WKWebPushMessage;
      goto LABEL_3;
    case 122:
      v3 = _WKWebPushSubscriptionData;
      goto LABEL_3;
    case 123:
      v3 = WKWebsiteDataRecord;
      goto LABEL_3;
    case 124:
      v3 = WKWebsiteDataStore;
      goto LABEL_3;
    case 125:
      v3 = _WKWebsiteDataStoreConfiguration;
      goto LABEL_3;
    case 126:
      v3 = WKWebpagePreferences;
      goto LABEL_3;
    case 127:
      v3 = WKWindowFeatures;
      goto LABEL_3;
    case 129:
      v3 = _WKWebAuthenticationAssertionResponse;
      goto LABEL_3;
    case 130:
      v3 = _WKWebAuthenticationPanel;
      goto LABEL_3;
    case 133:
      v3 = WKWebProcessPlugInController;
      goto LABEL_3;
    case 136:
      v3 = WKWebProcessPlugInCSSStyleDeclarationHandle;
      goto LABEL_3;
    case 138:
      v3 = WKWebProcessPlugInFrame;
      goto LABEL_3;
    case 139:
      v3 = WKWebProcessPlugInHitTestResult;
      goto LABEL_3;
    case 140:
      v3 = WKWebProcessPlugInNodeHandle;
      goto LABEL_3;
    case 141:
      v3 = WKWebProcessPlugInBrowserContextController;
      goto LABEL_3;
    case 144:
      v3 = WKWebProcessPlugInRangeHandle;
      goto LABEL_3;
    case 145:
      v3 = WKWebProcessPlugInScriptWorld;
LABEL_3:
      Instance = [v3 alloc];
      break;
    default:
      v5 = objc_opt_class();
      Instance = class_createInstance(v5, a1);
      break;
  }

  v6 = Instance;
LABEL_6:
  v7 = API::Object::apiObjectsUnderConstruction(Instance);
  v12 = [(WKNSNumber *)v6 _apiObject];
  v11 = v6;
  WTF::HashMap<API::Object *,void const*,WTF::DefaultHash<API::Object *>,WTF::HashTraits<API::Object *>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<void const*>(v7, &v12, &v11, v10);
  return [(WKNSNumber *)v6 _apiObject];
}

uint64_t WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 8 * v3;
    do
    {
      v6 = *v4;
      *v4 = 0;
      if (v6)
      {
        CFRelease(*(v6 + 8));
      }

      v4 = (v4 + 8);
      v5 -= 8;
    }

    while (v5);
  }

  v7 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v7, a2);
  }

  return a1;
}

unsigned int *WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(unsigned int *result, uint64_t a2)
{
  if (!*result)
  {
    v3 = result;
    v5 = WTF::fastCompactMalloc(0x10);
    *v5 = 1;
    *(v5 + 8) = a2;
    result = *v3;
    *v3 = v5;
    if (result)
    {
      if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result);

        return WTF::fastFree(result, v4);
      }
    }
  }

  return result;
}

WTF::StringImpl *WebKit::WebExtensionMatchPattern::registerCustomURLScheme(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    v3 = WTF::URLParser::maybeCanonicalizeScheme();
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v3 = WTF::StringImpl::destroy(v2, v4);
    }
  }

  else
  {
    v3 = WTF::URLParser::maybeCanonicalizeScheme();
  }

  WebKit::WebExtensionMatchPattern::extensionSchemes(v3);
  if (v19 & 1) != 0 && (v6 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&WebKit::WebExtensionMatchPattern::extensionSchemes(void)::schemes, &v18, v5, &v20), WebKit::WebExtensionMatchPattern::validSchemes(v6), (v19) && (v8 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&WebKit::WebExtensionMatchPattern::validSchemes(void)::schemes, &v18, v7, &v20), WebKit::WebExtensionMatchPattern::supportedSchemes(v8), (v19))
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&WebKit::WebExtensionMatchPattern::supportedSchemes(void)::schemes, &v18, v9, &v20);
    WebKit::WebProcessPool::allProcessPools(&v20);
    v11 = v21;
    if (!v21)
    {
      goto LABEL_9;
    }
  }

  else
  {
    std::__throw_bad_optional_access[abi:sn200100]();
  }

  v14 = v20;
  v15 = 8 * v11;
  do
  {
    v16 = *v14++;
    v17 = a1;
    WebKit::WebProcessPool::sendToAllProcesses<Messages::WebProcess::RegisterURLSchemeAsWebExtension>(v16, &v17);
    v15 -= 8;
  }

  while (v15);
LABEL_9:
  result = WTF::Vector<WTF::Ref<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v20, v10);
  if (v19 == 1)
  {
    result = v18;
    v18 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v13);
      }
    }
  }

  return result;
}

uint64_t *WebKit::WebExtensionMatchPattern::extensionSchemes(WebKit::WebExtensionMatchPattern *this)
{
  v4[1] = *MEMORY[0x1E69E9840];
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&WebKit::WebExtensionMatchPattern::extensionSchemes(void)::schemes, v4, 1);
    v3 = v4[0];
    v4[0] = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v2);
    }
  }

  return &WebKit::WebExtensionMatchPattern::extensionSchemes(void)::schemes;
}

API::ProcessPoolConfiguration *API::ProcessPoolConfiguration::ProcessPoolConfiguration(API::ProcessPoolConfiguration *this)
{
  v2 = API::Object::Object(this);
  *v2 = &unk_1F111B768;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 59) = 0u;
  *(v2 + 75) = 16842753;
  *(this + 20) = getpid();
  *(this + 84) = 0;
  *(this + 23) = 16777217;
  *(this + 96) = 0;
  *(this + 100) = 0;
  *(this + 132) = 0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  return this;
}

void WTF::makeVector<WTF::String>(void *a1@<X0>, unsigned int *a2@<X8>)
{
  v4 = a1;
  v3 = &v4;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WTF::String>(NSArray *)::{lambda(unsigned long)#1}>(a2, [v4 count], &v3, 0);
}

unsigned int *WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t a2)
{
  if (result[2] > a2)
  {
    v3 = result;
    v4 = result[3];
    if (v4 > a2)
    {
      result = WTF::VectorDestructor<true,WTF::String>::destruct((*result + 8 * a2), (*result + 8 * v4));
      v3[3] = a2;
      LODWORD(v4) = a2;
    }

    v5 = *v3;
    if (a2)
    {
      if (v3[2])
      {
        v3[2] = a2;
        result = WTF::fastRealloc(v5, (8 * a2));
        *v3 = result;
        return result;
      }

      if (a2 >> 29)
      {
        __break(0xC471u);
        return result;
      }

      result = WTF::fastMalloc((8 * a2));
      v3[2] = a2;
      *v3 = result;
      if (result != v5)
      {
        result = memcpy(result, v5, 8 * v4);
      }
    }

    if (v5)
    {
      if (*v3 == v5)
      {
        *v3 = 0;
        v3[2] = 0;
      }

      return WTF::fastFree(v5, a2);
    }
  }

  return result;
}

uint64_t WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WTF::String>::destruct(*a1, (*a1 + 8 * v3));
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

{
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1, a2);
  return a1;
}

unsigned int *WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(unsigned int *a1, uint64_t a2)
{
  if (a2 != a1)
  {
    v4 = a1[3];
    v5 = *(a2 + 12);
    if (v4 > v5)
    {
      WTF::VectorDestructor<true,WTF::String>::destruct((*a1 + 8 * v5), (*a1 + 8 * v4));
      a1[3] = v5;
    }

    else
    {
      if (v5 > a1[2])
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(a1, 0);
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, *(a2 + 12));
      }

      LODWORD(v5) = a1[3];
    }

    v6 = *a2;
    v7 = *a1;
    if (v5)
    {
      v15 = 8 * v5;
      do
      {
        WTF::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::operator=(v7++, v6++);
        v15 -= 8;
      }

      while (v15);
      v6 = *a2;
      v8 = a1[3];
      v7 = *a1;
    }

    else
    {
      v8 = 0;
    }

    v9 = *(a2 + 12);
    if (v8 != v9)
    {
      v10 = &v7[v8];
      v11 = &v6[v8];
      v12 = 8 * v9 - 8 * v8;
      do
      {
        v13 = *v11;
        if (*v11)
        {
          atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
        }

        *v10++ = v13;
        ++v11;
        v12 -= 8;
      }

      while (v12);
      v8 = *(a2 + 12);
    }

    a1[3] = v8;
  }

  return a1;
}

uint64_t WTF::Vector<WTF::Ref<WebKit::NetworkProcessProxy,WTF::RawPtrTraits<WebKit::NetworkProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::NetworkProcessProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 8 * v3;
    do
    {
      v6 = *v4;
      *v4 = 0;
      if (v6)
      {
        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v6 + 16));
      }

      v4 = (v4 + 8);
      v5 -= 8;
    }

    while (v5);
  }

  v7 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v7, a2);
  }

  return a1;
}

uint64_t *WebKit::WebExtensionMatchPattern::validSchemes(WebKit::WebExtensionMatchPattern *this)
{
  v6[6] = *MEMORY[0x1E69E9840];
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v6[1] = v5;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v6[2] = v5;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v6[3] = v5;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v6[4] = v5;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v6[5] = v5;
    WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&WebKit::WebExtensionMatchPattern::validSchemes(void)::schemes, v6, 6);
    for (i = 5; i != -1; --i)
    {
      v4 = v6[i];
      v6[i] = 0;
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, v2);
      }
    }
  }

  return &WebKit::WebExtensionMatchPattern::validSchemes(void)::schemes;
}

uint64_t *WebKit::WebExtensionMatchPattern::supportedSchemes(WebKit::WebExtensionMatchPattern *this)
{
  v6[4] = *MEMORY[0x1E69E9840];
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v6[1] = v5;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v6[2] = v5;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v6[3] = v5;
    WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&WebKit::WebExtensionMatchPattern::supportedSchemes(void)::schemes, v6, 4);
    for (i = 3; i != -1; --i)
    {
      v4 = v6[i];
      v6[i] = 0;
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, v2);
      }
    }
  }

  return &WebKit::WebExtensionMatchPattern::supportedSchemes(void)::schemes;
}

uint64_t WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  v2 = a2;
  if (!(a2 >> 29))
  {
    v3 = result;
    v4 = *result;
    v5 = *(result + 12);
    v6 = WTF::fastMalloc((8 * a2));
    *(v3 + 8) = v2;
    *v3 = v6;
    memcpy(v6, v4, 8 * v5);
    if (v4)
    {
      if (*v3 == v4)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      WTF::fastFree(v4, v7);
    }

    return 1;
  }

  __break(0xC471u);
  return result;
}

WebKit::WebPreferences **WebKit::WebPageGroup::WebPageGroup(WebKit::WebPreferences **this, WTF::StringImpl **a2)
{
  v4 = API::Object::Object(this);
  *(v4 + 2) = 0;
  v6 = (v4 + 16);
  *v4 = &unk_1F1116AA8;
  v7 = (v4 + 24);
  if ((byte_1ED6429B5 & 1) == 0)
  {
    qword_1ED6429D8 = 0;
    byte_1ED6429B5 = 1;
  }

  if (*a2 + 1 < 2)
  {
    IdentifierInternal = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
    goto LABEL_26;
  }

  v9 = qword_1ED6429D8;
  if (qword_1ED6429D8 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(0), (v9 = qword_1ED6429D8) != 0))
  {
    v10 = *(v9 - 8);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(*a2 + 4);
  if (v11 < 0x100)
  {
    v12 = WTF::StringImpl::hashSlowCase(*a2);
  }

  else
  {
    v12 = v11 >> 8;
  }

  v13 = 0;
  for (i = 1; ; ++i)
  {
    v15 = v12 & v10;
    v16 = (v9 + 16 * (v12 & v10));
    v17 = *v16;
    if (*v16 == -1)
    {
      v13 = (v9 + 16 * v15);
      goto LABEL_16;
    }

    if (!v17)
    {
      break;
    }

    if (WTF::equal(v17, *a2, v5))
    {
      goto LABEL_25;
    }

LABEL_16:
    v12 = i + v15;
  }

  if (v13)
  {
    *v13 = 0;
    v13[1] = 0;
    --*(qword_1ED6429D8 - 16);
    v16 = v13;
  }

  WTF::String::operator=(v16, a2);
  v16[1] = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  v18 = qword_1ED6429D8;
  if (qword_1ED6429D8)
  {
    v19 = *(qword_1ED6429D8 - 12) + 1;
  }

  else
  {
    v19 = 1;
  }

  *(qword_1ED6429D8 - 12) = v19;
  v20 = (*(v18 - 16) + v19);
  v21 = *(v18 - 4);
  if (v21 > 0x400)
  {
    if (v21 <= 2 * v20)
    {
LABEL_24:
      v16 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(v16);
    }
  }

  else if (3 * v21 <= 4 * v20)
  {
    goto LABEL_24;
  }

LABEL_25:
  IdentifierInternal = v16[1];
LABEL_26:
  v22 = *a2;
  if (!*a2 || !*(v22 + 1))
  {
    v50[0] = "__uniquePageGroupID-";
    v50[1] = 21;
    v49 = IdentifierInternal;
    WTF::tryMakeString<WTF::ASCIILiteral,unsigned long long>(v50, &v49, &v48);
    v22 = v48;
    if (v48)
    {
      goto LABEL_30;
    }

    goto LABEL_71;
  }

  atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
LABEL_30:
  this[3] = v22;
  this[4] = IdentifierInternal;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WebKit::WebPreferences::createWithLegacyDefaults(v7, v50, &v49, this + 5);
  v24 = v49;
  v49 = 0;
  if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v24, v23);
  }

  v25 = v50[0];
  v50[0] = 0;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v23);
  }

  if ((byte_1ED6429B6 & 1) == 0)
  {
    qword_1ED6429E0 = 0;
    byte_1ED6429B6 = 1;
  }

  v26 = this[4];
  if (v26 == -1)
  {
LABEL_71:
    __break(0xC471u);
    JUMPOUT(0x19D5323D8);
  }

  if (!v26)
  {
    __break(0xC471u);
    JUMPOUT(0x19D5323F8);
  }

  v27 = qword_1ED6429E0;
  if (!qword_1ED6429E0)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebPageGroup,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebPageGroup,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebPageGroup,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebPageGroup,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand();
    v27 = qword_1ED6429E0;
    v26 = this[4];
  }

  v28 = *(v27 - 8);
  v29 = (v26 + ~(v26 << 32)) ^ ((v26 + ~(v26 << 32)) >> 22);
  v30 = 9 * ((v29 + ~(v29 << 13)) ^ ((v29 + ~(v29 << 13)) >> 8));
  v31 = (v30 ^ (v30 >> 15)) + ~((v30 ^ (v30 >> 15)) << 27);
  v32 = v28 & ((v31 >> 31) ^ v31);
  v33 = (v27 + 16 * v32);
  v34 = *v33;
  if (!*v33)
  {
LABEL_50:
    *v33 = v26;
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v6, this);
    v38 = this[2];
    atomic_fetch_add(v38, 1u);
    v39 = v33[1];
    v33[1] = v38;
    if (v39 && atomic_fetch_add(v39, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v39);
      WTF::fastFree(v39, v37);
    }

    v40 = qword_1ED6429E0;
    if (qword_1ED6429E0)
    {
      v41 = *(qword_1ED6429E0 - 12) + 1;
    }

    else
    {
      v41 = 1;
    }

    *(qword_1ED6429E0 - 12) = v41;
    v45 = (*(v40 - 16) + v41);
    v46 = *(v40 - 4);
    if (v46 > 0x400)
    {
      if (v46 > 2 * v45)
      {
        return this;
      }
    }

    else if (3 * v46 > 4 * v45)
    {
      return this;
    }

    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebPageGroup,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebPageGroup,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebPageGroup,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebPageGroup,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand();
    return this;
  }

  v35 = 0;
  v36 = 1;
  while (v34 != v26)
  {
    if (v34 == -1)
    {
      v35 = v33;
    }

    v32 = (v32 + v36) & v28;
    v33 = (v27 + 16 * v32);
    v34 = *v33;
    ++v36;
    if (!*v33)
    {
      if (v35)
      {
        *v35 = 0;
        v35[1] = 0;
        --*(v27 - 16);
        v26 = this[4];
        v33 = v35;
      }

      goto LABEL_50;
    }
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v6, this);
  v43 = this[2];
  atomic_fetch_add(v43, 1u);
  v44 = v33[1];
  v33[1] = v43;
  if (v44 && atomic_fetch_add(v44, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v44);
    WTF::fastFree(v44, v42);
  }

  return this;
}

void WebKit::WebProcessPool::allProcessPools(uint64_t a1@<X8>)
{
  {
    WebKit::processPools(void)::processPools = 0;
    *&dword_1ED643648 = 0;
    *a1 = 0;
    *(a1 + 8) = 0;
    return;
  }

  v3 = dword_1ED64364C;
  *a1 = 0;
  *(a1 + 8) = 0;
  if (v3)
  {
    if (v3 >> 29)
    {
      __break(0xC471u);
    }

    else
    {
      v4 = WTF::fastMalloc((8 * v3));
      *(a1 + 8) = v3;
      *a1 = v4;
      if (!dword_1ED64364C)
      {
        return;
      }

      v5 = v4;
      v6 = 0;
      v7 = WebKit::processPools(void)::processPools;
      v8 = 8 * dword_1ED64364C;
      while (1)
      {
        v9 = *(*(v7 + 8 * v6) + 8);
        if (!v9)
        {
          break;
        }

        v10 = v9 - 16;
        CFRetain(*(v9 - 8));
        v11 = v6 + 1;
        *(v5 + 8 * v6++) = v10;
        v8 -= 8;
        if (!v8)
        {
          *(a1 + 12) = v11;
          return;
        }
      }

      *(a1 + 12) = v6;
      __break(0xC471u);
    }

    JUMPOUT(0x19D5324DCLL);
  }
}

void WebKit::WebProcessPool::WebProcessPool(WebKit::WebProcessPool *this, API::ProcessPoolConfiguration *a2)
{
  v4 = API::Object::Object(this);
  *(v4 + 3) = 0;
  *v4 = &unk_1F1119E20;
  *(v4 + 2) = &unk_1F1119E78;
  *(v4 + 4) = &unk_1F1119EC0;
  *(v4 + 5) = 0;
  API::ProcessPoolConfiguration::copy(a2, v4 + 6);
  *(this + 56) = 0u;
  *(this + 152) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 20) = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0;
  v16[0] = 0;
  v5 = API::Object::newObject(0x30uLL, 87);
  *(this + 23) = WebKit::WebPageGroup::WebPageGroup(v5, v16);
  v7 = v16[0];
  v16[0] = 0;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v6);
    }
  }

  *(this + 24) = 0;
  v8 = API::InjectedBundleClient::operator new(8, v6);
  *v8 = &unk_1F111A1C0;
  *(this + 25) = v8;
  *(this + 36) = 0;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 13) = 0u;
  v10 = API::AutomationClient::operator new(8, v9);
  *v10 = &unk_1F10FE188;
  *(this + 37) = v10;
  *(this + 38) = 0;
  v12 = API::LegacyContextHistoryClient::operator new(8, v11);
  *v12 = &unk_1F111A1F8;
  *(this + 39) = v12;
  *(this + 40) = 0;
  v13 = API::Object::newObject(0xB8uLL, 109);
  *(this + 41) = WebKit::VisitedLinkStore::VisitedLinkStore(v13);
  *(this + 336) = 0;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 386) = 0u;
  *(this + 440) = 0;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 56) = 0x4095E00000000000;
  *(this + 57) = 0;
  *(this + 116) = 1065353216;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 504) = 0u;
  *(this + 260) = 1;
  *(this + 522) = 0;
  *(this + 66) = 0;
  v14 = *(this + 6);
  *(this + 536) = *(v14 + 76);
  *(this + 537) = *(v14 + 77);
  v15 = WTF::fastMalloc(0x10);
  *v15 = &unk_1F111A3F8;
  v15[1] = this;
  *(this + 68) = v15;
  operator new();
}

unsigned int *API::ProcessPoolConfiguration::copy@<X0>(API::ProcessPoolConfiguration *this@<X0>, API::ProcessPoolConfiguration **a2@<X8>)
{
  v4 = API::Object::newObject(0xA8uLL, 89);
  *a2 = API::ProcessPoolConfiguration::ProcessPoolConfiguration(v4);
  v6 = *(this + 2);
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  v7 = *(v4 + 16);
  *(v4 + 16) = v6;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v5);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=((v4 + 24), this + 24);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=((v4 + 40), this + 40);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=((v4 + 56), this + 56);
  *(v4 + 72) = *(this + 18);
  *(v4 + 76) = *(this + 38);
  *(v4 + 78) = *(this + 78);
  *(v4 + 94) = *(this + 47);
  *(v4 + 80) = *(this + 20);
  *(v4 + 84) = *(this + 42);
  *(v4 + 86) = *(this + 43);
  *(v4 + 88) = *(this + 88);
  *(v4 + 89) = *(this + 89);
  *(v4 + 91) = *(this + 91);
  *(v4 + 96) = *(this + 96);
  v9 = *(this + 116);
  v10 = *(this + 100);
  *(v4 + 132) = *(this + 132);
  *(v4 + 100) = v10;
  *(v4 + 116) = v9;
  v11 = *(this + 17);
  if (v11)
  {
    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
  }

  v12 = *(v4 + 136);
  *(v4 + 136) = v11;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v8);
  }

  *(v4 + 144) = *(this + 18);

  return WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=((v4 + 152), this + 152);
}

uint64_t WTF::tryMakeString<WTF::ASCIILiteral,unsigned long long>@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = a1[1];
  v4 = v3 != 0;
  v5 = v3 - 1;
  if (!v4)
  {
    v5 = 0;
  }

  v8[0] = *a1;
  v8[1] = v5;
  if (v5 >> 31)
  {
    result = 161;
    __break(0xC471u);
  }

  else
  {
    v7 = *a2;
    return WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned long long,void>>(v8, &v7, a3);
  }

  return result;
}

uint64_t WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned long long,void>>@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = 0;
  v4 = *(result + 8);
  v5 = *a2;
  do
  {
    ++v3;
    v6 = v5 > 9;
    v5 /= 0xAuLL;
  }

  while (v6);
  if (((v3 | v4) & 0x80000000) == 0)
  {
    v7 = __OFADD__(v4, v3);
    v8 = (v4 + v3);
    if (!v7)
    {
      return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned long long,void>>(v8, 1, *result, v4, *a2, a3);
    }
  }

  *a3 = 0;
  return result;
}

uint64_t WebKit::WebPreferences::createWithLegacyDefaults@<X0>(WebKit::WebPreferences *this@<X0>, const WTF::String *a2@<X1>, const WTF::String *a3@<X2>, WebKit::WebPreferences **a4@<X8>)
{
  v9 = API::Object::newObject(0x88uLL, 91);
  v10 = WebKit::WebPreferences::WebPreferences(v9, this, a2, a3);
  *a4 = v10;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::storageBlockingPolicyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::storageBlockingPolicyKey(void)::key = WebKit::WebPreferencesKey::storageBlockingPolicyKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferences::registerDefaultUInt32ValueForKey(v10, &WebKit::WebPreferencesKey::storageBlockingPolicyKey(void)::key, 0);
}

WebKit::WebPreferences *WebKit::WebPreferences::WebPreferences(WebKit::WebPreferences *this, atomic_uint **a2, atomic_uint **a3, atomic_uint **a4)
{
  *API::Object::Object(this) = &unk_1F1119DC8;
  v8 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  *(this + 2) = v8;
  v9 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  *(this + 3) = v9;
  v10 = *a4;
  if (*a4)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  *(this + 4) = v10;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 113) = 0u;
  WebKit::WebPreferences::platformInitializeStore(this);
  if (WebKit::forceSiteIsolationAlwaysOnForTesting == 1)
  {
    v12 = WebKit::forceSiteIsolationAlwaysOnForTesting;
    WebKit::WebPreferences::setSiteIsolationEnabled(this, &v12);
  }

  return this;
}

void WebKit::WebPreferences::platformInitializeStore(atomic_uint **this)
{
  v2 = objc_autoreleasePoolPush();
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaDevicesEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::mediaDevicesEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaDevicesEnabledKey(void)::$_0::operator() const(void)::impl;
    v3 = 1;
  }

  v4 = 1;
  if ((WebKit::checkUsageDescriptionStringForType(1, v3) & 1) == 0)
  {
    v4 = WebKit::checkUsageDescriptionStringForType(2, v5);
  }

  v6 = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::mediaDevicesEnabledKey(void)::key, v4);
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::interruptAudioOnPageVisibilityChangeEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::interruptAudioOnPageVisibilityChangeEnabledKey(void)::key = WebKit::WebPreferencesKey::interruptAudioOnPageVisibilityChangeEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v7 = WebCore::RealtimeMediaSourceCenter::shouldInterruptAudioOnPageVisibilityChange(v6);
  v8 = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::interruptAudioOnPageVisibilityChangeEnabledKey(void)::key, v7);
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::iFrameResourceMonitoringEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::iFrameResourceMonitoringEnabledKey(void)::key = WebKit::WebPreferencesKey::iFrameResourceMonitoringEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  isFullWebBrowserOrRunningTest = WebKit::isFullWebBrowserOrRunningTest(v8);
  WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::iFrameResourceMonitoringEnabledKey(void)::key, isFullWebBrowserOrRunningTest);
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::visibleDebugOverlayRegionsKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::visibleDebugOverlayRegionsKey(void)::key = WebKit::WebPreferencesKey::visibleDebugOverlayRegionsKey(void)::$_0::operator() const(void)::impl;
  }

  WebKit::debugUserDefaultsValue(&v476, this + 2, this + 3, this + 4, &WebKit::WebPreferencesKey::visibleDebugOverlayRegionsKey(void)::key);
  v11 = v476;
  if (v476)
  {
    if (objc_opt_respondsToSelector())
    {
      WebKit::WebPreferencesStore::setUInt32ValueForKey((this + 5), &WebKit::WebPreferencesKey::visibleDebugOverlayRegionsKey(void)::key, [(WTF::StringImpl *)v11 unsignedIntegerValue]);
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::developerExtrasEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::developerExtrasEnabledKey(void)::key = WebKit::WebPreferencesKey::developerExtrasEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  WebKit::setDebugBoolValueIfInUserDefaults(this + 2, this + 3, this + 4, &WebKit::WebPreferencesKey::developerExtrasEnabledKey(void)::key, (this + 5), v10);
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::compositingBordersVisibleKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::compositingBordersVisibleKey(void)::key = WebKit::WebPreferencesKey::compositingBordersVisibleKey(void)::$_0::operator() const(void)::impl;
  }

  WebKit::setDebugBoolValueIfInUserDefaults(this + 2, this + 3, this + 4, &WebKit::WebPreferencesKey::compositingBordersVisibleKey(void)::key, (this + 5), v12);
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::compositingRepaintCountersVisibleKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::compositingRepaintCountersVisibleKey(void)::key = WebKit::WebPreferencesKey::compositingRepaintCountersVisibleKey(void)::$_0::operator() const(void)::impl;
  }

  WebKit::setDebugBoolValueIfInUserDefaults(this + 2, this + 3, this + 4, &WebKit::WebPreferencesKey::compositingRepaintCountersVisibleKey(void)::key, (this + 5), v13);
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::declarativeWebPushKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::declarativeWebPushKey(void)::key = WebKit::WebPreferencesKey::declarativeWebPushKey(void)::$_0::operator() const(void)::impl;
  }

  WebKit::setDebugBoolValueIfInUserDefaults(this + 2, this + 3, this + 4, &WebKit::WebPreferencesKey::declarativeWebPushKey(void)::key, (this + 5), v14);
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::disableScreenSizeOverrideKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::disableScreenSizeOverrideKey(void)::key = WebKit::WebPreferencesKey::disableScreenSizeOverrideKey(void)::$_0::operator() const(void)::impl;
  }

  WebKit::setDebugBoolValueIfInUserDefaults(this + 2, this + 3, this + 4, &WebKit::WebPreferencesKey::disableScreenSizeOverrideKey(void)::key, (this + 5), v15);
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::enableDebuggingFeaturesInSandboxKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::enableDebuggingFeaturesInSandboxKey(void)::key = WebKit::WebPreferencesKey::enableDebuggingFeaturesInSandboxKey(void)::$_0::operator() const(void)::impl;
  }

  WebKit::setDebugBoolValueIfInUserDefaults(this + 2, this + 3, this + 4, &WebKit::WebPreferencesKey::enableDebuggingFeaturesInSandboxKey(void)::key, (this + 5), v16);
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::forceAlwaysUserScalableKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::forceAlwaysUserScalableKey(void)::key = WebKit::WebPreferencesKey::forceAlwaysUserScalableKey(void)::$_0::operator() const(void)::impl;
  }

  WebKit::setDebugBoolValueIfInUserDefaults(this + 2, this + 3, this + 4, &WebKit::WebPreferencesKey::forceAlwaysUserScalableKey(void)::key, (this + 5), v17);
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::iFrameResourceMonitoringTestingSettingsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::iFrameResourceMonitoringTestingSettingsEnabledKey(void)::key = WebKit::WebPreferencesKey::iFrameResourceMonitoringTestingSettingsEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  WebKit::setDebugBoolValueIfInUserDefaults(this + 2, this + 3, this + 4, &WebKit::WebPreferencesKey::iFrameResourceMonitoringTestingSettingsEnabledKey(void)::key, (this + 5), v18);
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::iFrameResourceMonitoringEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::iFrameResourceMonitoringEnabledKey(void)::key = WebKit::WebPreferencesKey::iFrameResourceMonitoringEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  WebKit::setDebugBoolValueIfInUserDefaults(this + 2, this + 3, this + 4, &WebKit::WebPreferencesKey::iFrameResourceMonitoringEnabledKey(void)::key, (this + 5), v19);
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::acceleratedDrawingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::acceleratedDrawingEnabledKey(void)::key = WebKit::WebPreferencesKey::acceleratedDrawingEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  WebKit::setDebugBoolValueIfInUserDefaults(this + 2, this + 3, this + 4, &WebKit::WebPreferencesKey::acceleratedDrawingEnabledKey(void)::key, (this + 5), v20);
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::legacyLineLayoutVisualCoverageEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::legacyLineLayoutVisualCoverageEnabledKey(void)::key = WebKit::WebPreferencesKey::legacyLineLayoutVisualCoverageEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  WebKit::setDebugBoolValueIfInUserDefaults(this + 2, this + 3, this + 4, &WebKit::WebPreferencesKey::legacyLineLayoutVisualCoverageEnabledKey(void)::key, (this + 5), v21);
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::logsPageMessagesToSystemConsoleEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::logsPageMessagesToSystemConsoleEnabledKey(void)::key = WebKit::WebPreferencesKey::logsPageMessagesToSystemConsoleEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  WebKit::setDebugBoolValueIfInUserDefaults(this + 2, this + 3, this + 4, &WebKit::WebPreferencesKey::logsPageMessagesToSystemConsoleEnabledKey(void)::key, (this + 5), v22);
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::needsInAppBrowserPrivacyQuirksKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::needsInAppBrowserPrivacyQuirksKey(void)::key = WebKit::WebPreferencesKey::needsInAppBrowserPrivacyQuirksKey(void)::$_0::operator() const(void)::impl;
  }

  WebKit::setDebugBoolValueIfInUserDefaults(this + 2, this + 3, this + 4, &WebKit::WebPreferencesKey::needsInAppBrowserPrivacyQuirksKey(void)::key, (this + 5), v23);
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::preferSpatialAudioExperienceKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::preferSpatialAudioExperienceKey(void)::key = WebKit::WebPreferencesKey::preferSpatialAudioExperienceKey(void)::$_0::operator() const(void)::impl;
  }

  WebKit::setDebugBoolValueIfInUserDefaults(this + 2, this + 3, this + 4, &WebKit::WebPreferencesKey::preferSpatialAudioExperienceKey(void)::key, (this + 5), v24);
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::resourceUsageOverlayVisibleKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::resourceUsageOverlayVisibleKey(void)::key = WebKit::WebPreferencesKey::resourceUsageOverlayVisibleKey(void)::$_0::operator() const(void)::impl;
  }

  WebKit::setDebugBoolValueIfInUserDefaults(this + 2, this + 3, this + 4, &WebKit::WebPreferencesKey::resourceUsageOverlayVisibleKey(void)::key, (this + 5), v25);
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::respondToThermalPressureAggressivelyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::respondToThermalPressureAggressivelyKey(void)::key = WebKit::WebPreferencesKey::respondToThermalPressureAggressivelyKey(void)::$_0::operator() const(void)::impl;
  }

  WebKit::setDebugBoolValueIfInUserDefaults(this + 2, this + 3, this + 4, &WebKit::WebPreferencesKey::respondToThermalPressureAggressivelyKey(void)::key, (this + 5), v26);
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::showFrameProcessBordersEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::showFrameProcessBordersEnabledKey(void)::key = WebKit::WebPreferencesKey::showFrameProcessBordersEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  WebKit::setDebugBoolValueIfInUserDefaults(this + 2, this + 3, this + 4, &WebKit::WebPreferencesKey::showFrameProcessBordersEnabledKey(void)::key, (this + 5), v27);
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::tiledScrollingIndicatorVisibleKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::tiledScrollingIndicatorVisibleKey(void)::key = WebKit::WebPreferencesKey::tiledScrollingIndicatorVisibleKey(void)::$_0::operator() const(void)::impl;
  }

  WebKit::setDebugBoolValueIfInUserDefaults(this + 2, this + 3, this + 4, &WebKit::WebPreferencesKey::tiledScrollingIndicatorVisibleKey(void)::key, (this + 5), v28);
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::usesWebContentRestrictionsForFilterKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::usesWebContentRestrictionsForFilterKey(void)::key = WebKit::WebPreferencesKey::usesWebContentRestrictionsForFilterKey(void)::$_0::operator() const(void)::impl;
  }

  WebKit::setDebugBoolValueIfInUserDefaults(this + 2, this + 3, this + 4, &WebKit::WebPreferencesKey::usesWebContentRestrictionsForFilterKey(void)::key, (this + 5), v29);
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webInspectorEngineeringSettingsAllowedKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::webInspectorEngineeringSettingsAllowedKey(void)::key = WebKit::WebPreferencesKey::webInspectorEngineeringSettingsAllowedKey(void)::$_0::operator() const(void)::impl;
  }

  WebKit::setDebugBoolValueIfInUserDefaults(this + 2, this + 3, this + 4, &WebKit::WebPreferencesKey::webInspectorEngineeringSettingsAllowedKey(void)::key, (this + 5), v30);
  if (this[2])
  {
    v476 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::ftpDirectoryTemplatePathKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::ftpDirectoryTemplatePathKey(void)::key = WebKit::WebPreferencesKey::ftpDirectoryTemplatePathKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetStringUserValueForKey(this, &WebKit::WebPreferencesKey::ftpDirectoryTemplatePathKey(void)::key, &v476))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::ftpDirectoryTemplatePathKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::ftpDirectoryTemplatePathKey(void)::key = WebKit::WebPreferencesKey::ftpDirectoryTemplatePathKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setStringValueForKey((this + 5), &WebKit::WebPreferencesKey::ftpDirectoryTemplatePathKey(void)::key, &v476);
    }

    v475 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::wirelessPlaybackTargetAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::wirelessPlaybackTargetAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::wirelessPlaybackTargetAPIEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::wirelessPlaybackTargetAPIEnabledKey(void)::key, &v475))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::wirelessPlaybackTargetAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::wirelessPlaybackTargetAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::wirelessPlaybackTargetAPIEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::wirelessPlaybackTargetAPIEnabledKey(void)::key, v475);
    }

    v474 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::acceleratedCompositingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::acceleratedCompositingEnabledKey(void)::key = WebKit::WebPreferencesKey::acceleratedCompositingEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::acceleratedCompositingEnabledKey(void)::key, &v474))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::acceleratedCompositingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::acceleratedCompositingEnabledKey(void)::key = WebKit::WebPreferencesKey::acceleratedCompositingEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::acceleratedCompositingEnabledKey(void)::key, v474);
    }

    v473 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::acceleratedCompositingForFixedPositionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::acceleratedCompositingForFixedPositionEnabledKey(void)::key = WebKit::WebPreferencesKey::acceleratedCompositingForFixedPositionEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::acceleratedCompositingForFixedPositionEnabledKey(void)::key, &v473))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::acceleratedCompositingForFixedPositionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::acceleratedCompositingForFixedPositionEnabledKey(void)::key = WebKit::WebPreferencesKey::acceleratedCompositingForFixedPositionEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::acceleratedCompositingForFixedPositionEnabledKey(void)::key, v473);
    }

    v472 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::windowFocusRestrictedKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::windowFocusRestrictedKey(void)::key = WebKit::WebPreferencesKey::windowFocusRestrictedKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::windowFocusRestrictedKey(void)::key, &v472))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::windowFocusRestrictedKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::windowFocusRestrictedKey(void)::key = WebKit::WebPreferencesKey::windowFocusRestrictedKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::windowFocusRestrictedKey(void)::key, v472);
    }

    v471 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webSocketEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webSocketEnabledKey(void)::key = WebKit::WebPreferencesKey::webSocketEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::webSocketEnabledKey(void)::key, &v471))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webSocketEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::webSocketEnabledKey(void)::key = WebKit::WebPreferencesKey::webSocketEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::webSocketEnabledKey(void)::key, v471);
    }

    v470 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webSecurityEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webSecurityEnabledKey(void)::key = WebKit::WebPreferencesKey::webSecurityEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::webSecurityEnabledKey(void)::key, &v470))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webSecurityEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::webSecurityEnabledKey(void)::key = WebKit::WebPreferencesKey::webSecurityEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::webSecurityEnabledKey(void)::key, v470);
    }

    v469 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webAudioEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webAudioEnabledKey(void)::key = WebKit::WebPreferencesKey::webAudioEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::webAudioEnabledKey(void)::key, &v469))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webAudioEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::webAudioEnabledKey(void)::key = WebKit::WebPreferencesKey::webAudioEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::webAudioEnabledKey(void)::key, v469);
    }

    v468 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::wantsBalancedSetDefersLoadingBehaviorKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::wantsBalancedSetDefersLoadingBehaviorKey(void)::key = WebKit::WebPreferencesKey::wantsBalancedSetDefersLoadingBehaviorKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::wantsBalancedSetDefersLoadingBehaviorKey(void)::key, &v468))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::wantsBalancedSetDefersLoadingBehaviorKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::wantsBalancedSetDefersLoadingBehaviorKey(void)::key = WebKit::WebPreferencesKey::wantsBalancedSetDefersLoadingBehaviorKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::wantsBalancedSetDefersLoadingBehaviorKey(void)::key, v468);
    }

    v467 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::aggressiveTileRetentionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::aggressiveTileRetentionEnabledKey(void)::key = WebKit::WebPreferencesKey::aggressiveTileRetentionEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::aggressiveTileRetentionEnabledKey(void)::key, &v467))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::aggressiveTileRetentionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::aggressiveTileRetentionEnabledKey(void)::key = WebKit::WebPreferencesKey::aggressiveTileRetentionEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::aggressiveTileRetentionEnabledKey(void)::key, v467);
    }

    v466 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowContentSecurityPolicySourceStarToMatchAnyProtocolKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::allowContentSecurityPolicySourceStarToMatchAnyProtocolKey(void)::key = WebKit::WebPreferencesKey::allowContentSecurityPolicySourceStarToMatchAnyProtocolKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::allowContentSecurityPolicySourceStarToMatchAnyProtocolKey(void)::key, &v466))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowContentSecurityPolicySourceStarToMatchAnyProtocolKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::allowContentSecurityPolicySourceStarToMatchAnyProtocolKey(void)::key = WebKit::WebPreferencesKey::allowContentSecurityPolicySourceStarToMatchAnyProtocolKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::allowContentSecurityPolicySourceStarToMatchAnyProtocolKey(void)::key, v466);
    }

    v465 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowDisplayOfInsecureContentKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::allowDisplayOfInsecureContentKey(void)::key = WebKit::WebPreferencesKey::allowDisplayOfInsecureContentKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::allowDisplayOfInsecureContentKey(void)::key, &v465))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowDisplayOfInsecureContentKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::allowDisplayOfInsecureContentKey(void)::key = WebKit::WebPreferencesKey::allowDisplayOfInsecureContentKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::allowDisplayOfInsecureContentKey(void)::key, v465);
    }

    v464 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowFileAccessFromFileURLsKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::allowFileAccessFromFileURLsKey(void)::key = WebKit::WebPreferencesKey::allowFileAccessFromFileURLsKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::allowFileAccessFromFileURLsKey(void)::key, &v464))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowFileAccessFromFileURLsKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::allowFileAccessFromFileURLsKey(void)::key = WebKit::WebPreferencesKey::allowFileAccessFromFileURLsKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::allowFileAccessFromFileURLsKey(void)::key, v464);
    }

    v463 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::visualViewportEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::visualViewportEnabledKey(void)::key = WebKit::WebPreferencesKey::visualViewportEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::visualViewportEnabledKey(void)::key, &v463))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::visualViewportEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::visualViewportEnabledKey(void)::key = WebKit::WebPreferencesKey::visualViewportEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::visualViewportEnabledKey(void)::key, v463);
    }

    v462 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowMultiElementImplicitSubmissionKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::allowMultiElementImplicitSubmissionKey(void)::key = WebKit::WebPreferencesKey::allowMultiElementImplicitSubmissionKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::allowMultiElementImplicitSubmissionKey(void)::key, &v462))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowMultiElementImplicitSubmissionKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::allowMultiElementImplicitSubmissionKey(void)::key = WebKit::WebPreferencesKey::allowMultiElementImplicitSubmissionKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::allowMultiElementImplicitSubmissionKey(void)::key, v462);
    }

    v461 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::visibleDebugOverlayRegionsKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::visibleDebugOverlayRegionsKey(void)::key = WebKit::WebPreferencesKey::visibleDebugOverlayRegionsKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetUInt32UserValueForKey(this, &WebKit::WebPreferencesKey::visibleDebugOverlayRegionsKey(void)::key, &v461))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::visibleDebugOverlayRegionsKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::visibleDebugOverlayRegionsKey(void)::key = WebKit::WebPreferencesKey::visibleDebugOverlayRegionsKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setUInt32ValueForKey((this + 5), &WebKit::WebPreferencesKey::visibleDebugOverlayRegionsKey(void)::key, v461);
    }

    v460 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowRunningOfInsecureContentKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::allowRunningOfInsecureContentKey(void)::key = WebKit::WebPreferencesKey::allowRunningOfInsecureContentKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::allowRunningOfInsecureContentKey(void)::key, &v460))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowRunningOfInsecureContentKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::allowRunningOfInsecureContentKey(void)::key = WebKit::WebPreferencesKey::allowRunningOfInsecureContentKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::allowRunningOfInsecureContentKey(void)::key, v460);
    }

    v459 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowTestOnlyIPCKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::allowTestOnlyIPCKey(void)::key = WebKit::WebPreferencesKey::allowTestOnlyIPCKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::allowTestOnlyIPCKey(void)::key, &v459))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowTestOnlyIPCKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::allowTestOnlyIPCKey(void)::key = WebKit::WebPreferencesKey::allowTestOnlyIPCKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::allowTestOnlyIPCKey(void)::key, v459);
    }

    v458 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::videoQualityIncludesDisplayCompositingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::videoQualityIncludesDisplayCompositingEnabledKey(void)::key = WebKit::WebPreferencesKey::videoQualityIncludesDisplayCompositingEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::videoQualityIncludesDisplayCompositingEnabledKey(void)::key, &v458))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::videoQualityIncludesDisplayCompositingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::videoQualityIncludesDisplayCompositingEnabledKey(void)::key = WebKit::WebPreferencesKey::videoQualityIncludesDisplayCompositingEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::videoQualityIncludesDisplayCompositingEnabledKey(void)::key, v458);
    }

    v457 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::videoPresentationModeAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::videoPresentationModeAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::videoPresentationModeAPIEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::videoPresentationModeAPIEnabledKey(void)::key, &v457))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::videoPresentationModeAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::videoPresentationModeAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::videoPresentationModeAPIEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::videoPresentationModeAPIEnabledKey(void)::key, v457);
    }

    v456 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::videoPresentationManagerEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::videoPresentationManagerEnabledKey(void)::key = WebKit::WebPreferencesKey::videoPresentationManagerEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::videoPresentationManagerEnabledKey(void)::key, &v456))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::videoPresentationManagerEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::videoPresentationManagerEnabledKey(void)::key = WebKit::WebPreferencesKey::videoPresentationManagerEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::videoPresentationManagerEnabledKey(void)::key, v456);
    }

    v455 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::videoFullscreenRequiresElementFullscreenKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::videoFullscreenRequiresElementFullscreenKey(void)::key = WebKit::WebPreferencesKey::videoFullscreenRequiresElementFullscreenKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::videoFullscreenRequiresElementFullscreenKey(void)::key, &v455))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::videoFullscreenRequiresElementFullscreenKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::videoFullscreenRequiresElementFullscreenKey(void)::key = WebKit::WebPreferencesKey::videoFullscreenRequiresElementFullscreenKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::videoFullscreenRequiresElementFullscreenKey(void)::key, v455);
    }

    v454 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowsAirPlayForMediaPlaybackKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::allowsAirPlayForMediaPlaybackKey(void)::key = WebKit::WebPreferencesKey::allowsAirPlayForMediaPlaybackKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::allowsAirPlayForMediaPlaybackKey(void)::key, &v454))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowsAirPlayForMediaPlaybackKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::allowsAirPlayForMediaPlaybackKey(void)::key = WebKit::WebPreferencesKey::allowsAirPlayForMediaPlaybackKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::allowsAirPlayForMediaPlaybackKey(void)::key, v454);
    }

    v453 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowsInlineMediaPlaybackKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::allowsInlineMediaPlaybackKey(void)::key = WebKit::WebPreferencesKey::allowsInlineMediaPlaybackKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::allowsInlineMediaPlaybackKey(void)::key, &v453))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowsInlineMediaPlaybackKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::allowsInlineMediaPlaybackKey(void)::key = WebKit::WebPreferencesKey::allowsInlineMediaPlaybackKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::allowsInlineMediaPlaybackKey(void)::key, v453);
    }

    v452 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowsInlineMediaPlaybackAfterFullscreenKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::allowsInlineMediaPlaybackAfterFullscreenKey(void)::key = WebKit::WebPreferencesKey::allowsInlineMediaPlaybackAfterFullscreenKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::allowsInlineMediaPlaybackAfterFullscreenKey(void)::key, &v452))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowsInlineMediaPlaybackAfterFullscreenKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::allowsInlineMediaPlaybackAfterFullscreenKey(void)::key = WebKit::WebPreferencesKey::allowsInlineMediaPlaybackAfterFullscreenKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::allowsInlineMediaPlaybackAfterFullscreenKey(void)::key, v452);
    }

    v451 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowsPictureInPictureMediaPlaybackKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::allowsPictureInPictureMediaPlaybackKey(void)::key = WebKit::WebPreferencesKey::allowsPictureInPictureMediaPlaybackKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::allowsPictureInPictureMediaPlaybackKey(void)::key, &v451))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowsPictureInPictureMediaPlaybackKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::allowsPictureInPictureMediaPlaybackKey(void)::key = WebKit::WebPreferencesKey::allowsPictureInPictureMediaPlaybackKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::allowsPictureInPictureMediaPlaybackKey(void)::key, v451);
    }

    v450 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::alternateFullScreenControlDesignEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::alternateFullScreenControlDesignEnabledKey(void)::key = WebKit::WebPreferencesKey::alternateFullScreenControlDesignEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::alternateFullScreenControlDesignEnabledKey(void)::key, &v450))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::alternateFullScreenControlDesignEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::alternateFullScreenControlDesignEnabledKey(void)::key = WebKit::WebPreferencesKey::alternateFullScreenControlDesignEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::alternateFullScreenControlDesignEnabledKey(void)::key, v450);
    }

    v449 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::vp9DecoderEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::vp9DecoderEnabledKey(void)::key = WebKit::WebPreferencesKey::vp9DecoderEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::vp9DecoderEnabledKey(void)::key, &v449))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::vp9DecoderEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::vp9DecoderEnabledKey(void)::key = WebKit::WebPreferencesKey::vp9DecoderEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::vp9DecoderEnabledKey(void)::key, v449);
    }

    v448 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::usesSingleWebProcessKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::usesSingleWebProcessKey(void)::key = WebKit::WebPreferencesKey::usesSingleWebProcessKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::usesSingleWebProcessKey(void)::key, &v448))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::usesSingleWebProcessKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::usesSingleWebProcessKey(void)::key = WebKit::WebPreferencesKey::usesSingleWebProcessKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::usesSingleWebProcessKey(void)::key, v448);
    }

    v447 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::usesEncodingDetectorKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::usesEncodingDetectorKey(void)::key = WebKit::WebPreferencesKey::usesEncodingDetectorKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::usesEncodingDetectorKey(void)::key, &v447))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::usesEncodingDetectorKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::usesEncodingDetectorKey(void)::key = WebKit::WebPreferencesKey::usesEncodingDetectorKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::usesEncodingDetectorKey(void)::key, v447);
    }

    v446 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::animatedImageAsyncDecodingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::animatedImageAsyncDecodingEnabledKey(void)::key = WebKit::WebPreferencesKey::animatedImageAsyncDecodingEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::animatedImageAsyncDecodingEnabledKey(void)::key, &v446))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::animatedImageAsyncDecodingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::animatedImageAsyncDecodingEnabledKey(void)::key = WebKit::WebPreferencesKey::animatedImageAsyncDecodingEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::animatedImageAsyncDecodingEnabledKey(void)::key, v446);
    }

    v445 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::usesBackForwardCacheKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::usesBackForwardCacheKey(void)::key = WebKit::WebPreferencesKey::usesBackForwardCacheKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::usesBackForwardCacheKey(void)::key, &v445))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::usesBackForwardCacheKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::usesBackForwardCacheKey(void)::key = WebKit::WebPreferencesKey::usesBackForwardCacheKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::usesBackForwardCacheKey(void)::key, v445);
    }

    v444 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::userInterfaceDirectionPolicyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::userInterfaceDirectionPolicyKey(void)::key = WebKit::WebPreferencesKey::userInterfaceDirectionPolicyKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetUInt32UserValueForKey(this, &WebKit::WebPreferencesKey::userInterfaceDirectionPolicyKey(void)::key, &v444))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::userInterfaceDirectionPolicyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::userInterfaceDirectionPolicyKey(void)::key = WebKit::WebPreferencesKey::userInterfaceDirectionPolicyKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setUInt32ValueForKey((this + 5), &WebKit::WebPreferencesKey::userInterfaceDirectionPolicyKey(void)::key, v444);
    }

    v443 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::appleMailPaginationQuirkEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::appleMailPaginationQuirkEnabledKey(void)::key = WebKit::WebPreferencesKey::appleMailPaginationQuirkEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::appleMailPaginationQuirkEnabledKey(void)::key, &v443))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::appleMailPaginationQuirkEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::appleMailPaginationQuirkEnabledKey(void)::key = WebKit::WebPreferencesKey::appleMailPaginationQuirkEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::appleMailPaginationQuirkEnabledKey(void)::key, v443);
    }

    v442 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::applePayCapabilityDisclosureAllowedKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::applePayCapabilityDisclosureAllowedKey(void)::key = WebKit::WebPreferencesKey::applePayCapabilityDisclosureAllowedKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::applePayCapabilityDisclosureAllowedKey(void)::key, &v442))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::applePayCapabilityDisclosureAllowedKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::applePayCapabilityDisclosureAllowedKey(void)::key = WebKit::WebPreferencesKey::applePayCapabilityDisclosureAllowedKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::applePayCapabilityDisclosureAllowedKey(void)::key, v442);
    }

    v441 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::applePayEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::applePayEnabledKey(void)::key = WebKit::WebPreferencesKey::applePayEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::applePayEnabledKey(void)::key, &v441))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::applePayEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::applePayEnabledKey(void)::key = WebKit::WebPreferencesKey::applePayEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::applePayEnabledKey(void)::key, v441);
    }

    v440 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::useSystemAppearanceKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::useSystemAppearanceKey(void)::key = WebKit::WebPreferencesKey::useSystemAppearanceKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::useSystemAppearanceKey(void)::key, &v440))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::useSystemAppearanceKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::useSystemAppearanceKey(void)::key = WebKit::WebPreferencesKey::useSystemAppearanceKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::useSystemAppearanceKey(void)::key, v440);
    }

    v439 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::usePreHTML5ParserQuirksKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::usePreHTML5ParserQuirksKey(void)::key = WebKit::WebPreferencesKey::usePreHTML5ParserQuirksKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::usePreHTML5ParserQuirksKey(void)::key, &v439))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::usePreHTML5ParserQuirksKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::usePreHTML5ParserQuirksKey(void)::key = WebKit::WebPreferencesKey::usePreHTML5ParserQuirksKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::usePreHTML5ParserQuirksKey(void)::key, v439);
    }

    v438 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::useImageDocumentForSubframePDFKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::useImageDocumentForSubframePDFKey(void)::key = WebKit::WebPreferencesKey::useImageDocumentForSubframePDFKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::useImageDocumentForSubframePDFKey(void)::key, &v438))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::useImageDocumentForSubframePDFKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::useImageDocumentForSubframePDFKey(void)::key = WebKit::WebPreferencesKey::useImageDocumentForSubframePDFKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::useImageDocumentForSubframePDFKey(void)::key, v438);
    }

    v437 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::asynchronousSpellCheckingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::asynchronousSpellCheckingEnabledKey(void)::key = WebKit::WebPreferencesKey::asynchronousSpellCheckingEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::asynchronousSpellCheckingEnabledKey(void)::key, &v437))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::asynchronousSpellCheckingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::asynchronousSpellCheckingEnabledKey(void)::key = WebKit::WebPreferencesKey::asynchronousSpellCheckingEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::asynchronousSpellCheckingEnabledKey(void)::key, v437);
    }

    v436 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::treatsAnyTextCSSLinkAsStylesheetKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::treatsAnyTextCSSLinkAsStylesheetKey(void)::key = WebKit::WebPreferencesKey::treatsAnyTextCSSLinkAsStylesheetKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::treatsAnyTextCSSLinkAsStylesheetKey(void)::key, &v436))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::treatsAnyTextCSSLinkAsStylesheetKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::treatsAnyTextCSSLinkAsStylesheetKey(void)::key = WebKit::WebPreferencesKey::treatsAnyTextCSSLinkAsStylesheetKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::treatsAnyTextCSSLinkAsStylesheetKey(void)::key, v436);
    }

    v435 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::forceFTPDirectoryListingsKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::forceFTPDirectoryListingsKey(void)::key = WebKit::WebPreferencesKey::forceFTPDirectoryListingsKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::forceFTPDirectoryListingsKey(void)::key, &v435))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::forceFTPDirectoryListingsKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::forceFTPDirectoryListingsKey(void)::key = WebKit::WebPreferencesKey::forceFTPDirectoryListingsKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::forceFTPDirectoryListingsKey(void)::key, v435);
    }

    v434 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::forceCompositingModeKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::forceCompositingModeKey(void)::key = WebKit::WebPreferencesKey::forceCompositingModeKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::forceCompositingModeKey(void)::key, &v434))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::forceCompositingModeKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::forceCompositingModeKey(void)::key = WebKit::WebPreferencesKey::forceCompositingModeKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::forceCompositingModeKey(void)::key, v434);
    }

    v433 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::fixedFontFamilyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::fixedFontFamilyKey(void)::key = WebKit::WebPreferencesKey::fixedFontFamilyKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetStringUserValueForKey(this, &WebKit::WebPreferencesKey::fixedFontFamilyKey(void)::key, &v433))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::fixedFontFamilyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::fixedFontFamilyKey(void)::key = WebKit::WebPreferencesKey::fixedFontFamilyKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setStringValueForKey((this + 5), &WebKit::WebPreferencesKey::fixedFontFamilyKey(void)::key, &v433);
    }

    v432 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::fantasyFontFamilyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::fantasyFontFamilyKey(void)::key = WebKit::WebPreferencesKey::fantasyFontFamilyKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetStringUserValueForKey(this, &WebKit::WebPreferencesKey::fantasyFontFamilyKey(void)::key, &v432))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::fantasyFontFamilyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::fantasyFontFamilyKey(void)::key = WebKit::WebPreferencesKey::fantasyFontFamilyKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setStringValueForKey((this + 5), &WebKit::WebPreferencesKey::fantasyFontFamilyKey(void)::key, &v432);
    }

    v431 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::isExtensibleSSOEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::isExtensibleSSOEnabledKey(void)::key = WebKit::WebPreferencesKey::isExtensibleSSOEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::isExtensibleSSOEnabledKey(void)::key, &v431))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::isExtensibleSSOEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::isExtensibleSSOEnabledKey(void)::key = WebKit::WebPreferencesKey::isExtensibleSSOEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::isExtensibleSSOEnabledKey(void)::key, v431);
    }

    v430 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::audioControlsScaleWithPageZoomKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::audioControlsScaleWithPageZoomKey(void)::key = WebKit::WebPreferencesKey::audioControlsScaleWithPageZoomKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::audioControlsScaleWithPageZoomKey(void)::key, &v430))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::audioControlsScaleWithPageZoomKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::audioControlsScaleWithPageZoomKey(void)::key = WebKit::WebPreferencesKey::audioControlsScaleWithPageZoomKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::audioControlsScaleWithPageZoomKey(void)::key, v430);
    }

    v429 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::threadedScrollingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::threadedScrollingEnabledKey(void)::key = WebKit::WebPreferencesKey::threadedScrollingEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::threadedScrollingEnabledKey(void)::key, &v429))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::threadedScrollingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::threadedScrollingEnabledKey(void)::key = WebKit::WebPreferencesKey::threadedScrollingEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::threadedScrollingEnabledKey(void)::key, v429);
    }

    v428 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::authorAndUserStylesEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::authorAndUserStylesEnabledKey(void)::key = WebKit::WebPreferencesKey::authorAndUserStylesEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::authorAndUserStylesEnabledKey(void)::key, &v428))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::authorAndUserStylesEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::authorAndUserStylesEnabledKey(void)::key = WebKit::WebPreferencesKey::authorAndUserStylesEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::authorAndUserStylesEnabledKey(void)::key, v428);
    }

    v427 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::textInteractionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::textInteractionEnabledKey(void)::key = WebKit::WebPreferencesKey::textInteractionEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::textInteractionEnabledKey(void)::key, &v427))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::textInteractionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::textInteractionEnabledKey(void)::key = WebKit::WebPreferencesKey::textInteractionEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::textInteractionEnabledKey(void)::key, v427);
    }

    v426 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::textExtractionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::textExtractionEnabledKey(void)::key = WebKit::WebPreferencesKey::textExtractionEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::textExtractionEnabledKey(void)::key, &v426))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::textExtractionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::textExtractionEnabledKey(void)::key = WebKit::WebPreferencesKey::textExtractionEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::textExtractionEnabledKey(void)::key, v426);
    }

    v425 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::textAutosizingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::textAutosizingEnabledKey(void)::key = WebKit::WebPreferencesKey::textAutosizingEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::textAutosizingEnabledKey(void)::key, &v425))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::textAutosizingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::textAutosizingEnabledKey(void)::key = WebKit::WebPreferencesKey::textAutosizingEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::textAutosizingEnabledKey(void)::key, v425);
    }

    v424 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::textAreasAreResizableKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::textAreasAreResizableKey(void)::key = WebKit::WebPreferencesKey::textAreasAreResizableKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::textAreasAreResizableKey(void)::key, &v424))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::textAreasAreResizableKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::textAreasAreResizableKey(void)::key = WebKit::WebPreferencesKey::textAreasAreResizableKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::textAreasAreResizableKey(void)::key, v424);
    }

    v423 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::temporaryTileCohortRetentionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::temporaryTileCohortRetentionEnabledKey(void)::key = WebKit::WebPreferencesKey::temporaryTileCohortRetentionEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::temporaryTileCohortRetentionEnabledKey(void)::key, &v423))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::temporaryTileCohortRetentionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::temporaryTileCohortRetentionEnabledKey(void)::key = WebKit::WebPreferencesKey::temporaryTileCohortRetentionEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::temporaryTileCohortRetentionEnabledKey(void)::key, v423);
    }

    v422 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::telephoneNumberParsingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::telephoneNumberParsingEnabledKey(void)::key = WebKit::WebPreferencesKey::telephoneNumberParsingEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::telephoneNumberParsingEnabledKey(void)::key, &v422))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::telephoneNumberParsingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::telephoneNumberParsingEnabledKey(void)::key = WebKit::WebPreferencesKey::telephoneNumberParsingEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::telephoneNumberParsingEnabledKey(void)::key, v422);
    }

    v421 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::backspaceKeyNavigationEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::backspaceKeyNavigationEnabledKey(void)::key = WebKit::WebPreferencesKey::backspaceKeyNavigationEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::backspaceKeyNavigationEnabledKey(void)::key, &v421))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::backspaceKeyNavigationEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::backspaceKeyNavigationEnabledKey(void)::key = WebKit::WebPreferencesKey::backspaceKeyNavigationEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::backspaceKeyNavigationEnabledKey(void)::key, v421);
    }

    v420 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::tabsToLinksKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::tabsToLinksKey(void)::key = WebKit::WebPreferencesKey::tabsToLinksKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::tabsToLinksKey(void)::key, &v420))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::tabsToLinksKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::tabsToLinksKey(void)::key = WebKit::WebPreferencesKey::tabsToLinksKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::tabsToLinksKey(void)::key, v420);
    }

    v419 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::systemPreviewEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::systemPreviewEnabledKey(void)::key = WebKit::WebPreferencesKey::systemPreviewEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::systemPreviewEnabledKey(void)::key, &v419))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::systemPreviewEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::systemPreviewEnabledKey(void)::key = WebKit::WebPreferencesKey::systemPreviewEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::systemPreviewEnabledKey(void)::key, v419);
    }

    v418 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::systemLayoutDirectionKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::systemLayoutDirectionKey(void)::key = WebKit::WebPreferencesKey::systemLayoutDirectionKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetUInt32UserValueForKey(this, &WebKit::WebPreferencesKey::systemLayoutDirectionKey(void)::key, &v418))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::systemLayoutDirectionKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::systemLayoutDirectionKey(void)::key = WebKit::WebPreferencesKey::systemLayoutDirectionKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setUInt32ValueForKey((this + 5), &WebKit::WebPreferencesKey::systemLayoutDirectionKey(void)::key, v418);
    }

    v417 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::suppressesIncrementalRenderingKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::suppressesIncrementalRenderingKey(void)::key = WebKit::WebPreferencesKey::suppressesIncrementalRenderingKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::suppressesIncrementalRenderingKey(void)::key, &v417))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::suppressesIncrementalRenderingKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::suppressesIncrementalRenderingKey(void)::key = WebKit::WebPreferencesKey::suppressesIncrementalRenderingKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::suppressesIncrementalRenderingKey(void)::key, v417);
    }

    v416 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::standardFontFamilyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::standardFontFamilyKey(void)::key = WebKit::WebPreferencesKey::standardFontFamilyKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetStringUserValueForKey(this, &WebKit::WebPreferencesKey::standardFontFamilyKey(void)::key, &v416))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::standardFontFamilyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::standardFontFamilyKey(void)::key = WebKit::WebPreferencesKey::standardFontFamilyKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setStringValueForKey((this + 5), &WebKit::WebPreferencesKey::standardFontFamilyKey(void)::key, &v416);
    }

    v415 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::standaloneKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::standaloneKey(void)::key = WebKit::WebPreferencesKey::standaloneKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::standaloneKey(void)::key, &v415))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::standaloneKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::standaloneKey(void)::key = WebKit::WebPreferencesKey::standaloneKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::standaloneKey(void)::key, v415);
    }

    v414 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::spatialNavigationEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::spatialNavigationEnabledKey(void)::key = WebKit::WebPreferencesKey::spatialNavigationEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::spatialNavigationEnabledKey(void)::key, &v414))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::spatialNavigationEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::spatialNavigationEnabledKey(void)::key = WebKit::WebPreferencesKey::spatialNavigationEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::spatialNavigationEnabledKey(void)::key, v414);
    }

    v413 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::sourceBufferChangeTypeEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::sourceBufferChangeTypeEnabledKey(void)::key = WebKit::WebPreferencesKey::sourceBufferChangeTypeEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::sourceBufferChangeTypeEnabledKey(void)::key, &v413))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::sourceBufferChangeTypeEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::sourceBufferChangeTypeEnabledKey(void)::key = WebKit::WebPreferencesKey::sourceBufferChangeTypeEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::sourceBufferChangeTypeEnabledKey(void)::key, v413);
    }

    v412 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::smartInsertDeleteEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::smartInsertDeleteEnabledKey(void)::key = WebKit::WebPreferencesKey::smartInsertDeleteEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::smartInsertDeleteEnabledKey(void)::key, &v412))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::smartInsertDeleteEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::smartInsertDeleteEnabledKey(void)::key = WebKit::WebPreferencesKey::smartInsertDeleteEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::smartInsertDeleteEnabledKey(void)::key, v412);
    }

    v411 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shrinksStandaloneImagesToFitKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::shrinksStandaloneImagesToFitKey(void)::key = WebKit::WebPreferencesKey::shrinksStandaloneImagesToFitKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::shrinksStandaloneImagesToFitKey(void)::key, &v411))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shrinksStandaloneImagesToFitKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::shrinksStandaloneImagesToFitKey(void)::key = WebKit::WebPreferencesKey::shrinksStandaloneImagesToFitKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::shrinksStandaloneImagesToFitKey(void)::key, v411);
    }

    v410 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::showsURLsInToolTipsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::showsURLsInToolTipsEnabledKey(void)::key = WebKit::WebPreferencesKey::showsURLsInToolTipsEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::showsURLsInToolTipsEnabledKey(void)::key, &v410))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::showsURLsInToolTipsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::showsURLsInToolTipsEnabledKey(void)::key = WebKit::WebPreferencesKey::showsURLsInToolTipsEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::showsURLsInToolTipsEnabledKey(void)::key, v410);
    }

    v409 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::showsToolTipOverTruncatedTextKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::showsToolTipOverTruncatedTextKey(void)::key = WebKit::WebPreferencesKey::showsToolTipOverTruncatedTextKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::showsToolTipOverTruncatedTextKey(void)::key, &v409))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::showsToolTipOverTruncatedTextKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::showsToolTipOverTruncatedTextKey(void)::key = WebKit::WebPreferencesKey::showsToolTipOverTruncatedTextKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::showsToolTipOverTruncatedTextKey(void)::key, v409);
    }

    v408 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldUseServiceWorkerShortTimeoutKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::shouldUseServiceWorkerShortTimeoutKey(void)::key = WebKit::WebPreferencesKey::shouldUseServiceWorkerShortTimeoutKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::shouldUseServiceWorkerShortTimeoutKey(void)::key, &v408))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldUseServiceWorkerShortTimeoutKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::shouldUseServiceWorkerShortTimeoutKey(void)::key = WebKit::WebPreferencesKey::shouldUseServiceWorkerShortTimeoutKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::shouldUseServiceWorkerShortTimeoutKey(void)::key, v408);
    }

    v407 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldSuppressTextInputFromEditingDuringProvisionalNavigationKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::shouldSuppressTextInputFromEditingDuringProvisionalNavigationKey(void)::key = WebKit::WebPreferencesKey::shouldSuppressTextInputFromEditingDuringProvisionalNavigationKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::shouldSuppressTextInputFromEditingDuringProvisionalNavigationKey(void)::key, &v407))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldSuppressTextInputFromEditingDuringProvisionalNavigationKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::shouldSuppressTextInputFromEditingDuringProvisionalNavigationKey(void)::key = WebKit::WebPreferencesKey::shouldSuppressTextInputFromEditingDuringProvisionalNavigationKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::shouldSuppressTextInputFromEditingDuringProvisionalNavigationKey(void)::key, v407);
    }

    v406 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldRestrictBaseURLSchemesKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::shouldRestrictBaseURLSchemesKey(void)::key = WebKit::WebPreferencesKey::shouldRestrictBaseURLSchemesKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::shouldRestrictBaseURLSchemesKey(void)::key, &v406))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldRestrictBaseURLSchemesKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::shouldRestrictBaseURLSchemesKey(void)::key = WebKit::WebPreferencesKey::shouldRestrictBaseURLSchemesKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::shouldRestrictBaseURLSchemesKey(void)::key, v406);
    }

    v405 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldRespectImageOrientationKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::shouldRespectImageOrientationKey(void)::key = WebKit::WebPreferencesKey::shouldRespectImageOrientationKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::shouldRespectImageOrientationKey(void)::key, &v405))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldRespectImageOrientationKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::shouldRespectImageOrientationKey(void)::key = WebKit::WebPreferencesKey::shouldRespectImageOrientationKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::shouldRespectImageOrientationKey(void)::key, v405);
    }

    v404 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldPrintBackgroundsKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::shouldPrintBackgroundsKey(void)::key = WebKit::WebPreferencesKey::shouldPrintBackgroundsKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::shouldPrintBackgroundsKey(void)::key, &v404))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldPrintBackgroundsKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::shouldPrintBackgroundsKey(void)::key = WebKit::WebPreferencesKey::shouldPrintBackgroundsKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::shouldPrintBackgroundsKey(void)::key, v404);
    }

    v403 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldIgnoreMetaViewportKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::shouldIgnoreMetaViewportKey(void)::key = WebKit::WebPreferencesKey::shouldIgnoreMetaViewportKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::shouldIgnoreMetaViewportKey(void)::key, &v403))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldIgnoreMetaViewportKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::shouldIgnoreMetaViewportKey(void)::key = WebKit::WebPreferencesKey::shouldIgnoreMetaViewportKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::shouldIgnoreMetaViewportKey(void)::key, v403);
    }

    v402 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldEnableTextAutosizingBoostKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::shouldEnableTextAutosizingBoostKey(void)::key = WebKit::WebPreferencesKey::shouldEnableTextAutosizingBoostKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::shouldEnableTextAutosizingBoostKey(void)::key, &v402))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldEnableTextAutosizingBoostKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::shouldEnableTextAutosizingBoostKey(void)::key = WebKit::WebPreferencesKey::shouldEnableTextAutosizingBoostKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::shouldEnableTextAutosizingBoostKey(void)::key, v402);
    }

    v401 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldDisplayTextDescriptionsKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::shouldDisplayTextDescriptionsKey(void)::key = WebKit::WebPreferencesKey::shouldDisplayTextDescriptionsKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::shouldDisplayTextDescriptionsKey(void)::key, &v401))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldDisplayTextDescriptionsKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::shouldDisplayTextDescriptionsKey(void)::key = WebKit::WebPreferencesKey::shouldDisplayTextDescriptionsKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::shouldDisplayTextDescriptionsKey(void)::key, v401);
    }

    v400 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldDisplaySubtitlesKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::shouldDisplaySubtitlesKey(void)::key = WebKit::WebPreferencesKey::shouldDisplaySubtitlesKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::shouldDisplaySubtitlesKey(void)::key, &v400))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldDisplaySubtitlesKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::shouldDisplaySubtitlesKey(void)::key = WebKit::WebPreferencesKey::shouldDisplaySubtitlesKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::shouldDisplaySubtitlesKey(void)::key, v400);
    }

    v399 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldDisplayCaptionsKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::shouldDisplayCaptionsKey(void)::key = WebKit::WebPreferencesKey::shouldDisplayCaptionsKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::shouldDisplayCaptionsKey(void)::key, &v399))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldDisplayCaptionsKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::shouldDisplayCaptionsKey(void)::key = WebKit::WebPreferencesKey::shouldDisplayCaptionsKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::shouldDisplayCaptionsKey(void)::key, v399);
    }

    v398 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldDecidePolicyBeforeLoadingQuickLookPreviewKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::shouldDecidePolicyBeforeLoadingQuickLookPreviewKey(void)::key = WebKit::WebPreferencesKey::shouldDecidePolicyBeforeLoadingQuickLookPreviewKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::shouldDecidePolicyBeforeLoadingQuickLookPreviewKey(void)::key, &v398))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldDecidePolicyBeforeLoadingQuickLookPreviewKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::shouldDecidePolicyBeforeLoadingQuickLookPreviewKey(void)::key = WebKit::WebPreferencesKey::shouldDecidePolicyBeforeLoadingQuickLookPreviewKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::shouldDecidePolicyBeforeLoadingQuickLookPreviewKey(void)::key, v398);
    }

    v397 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldConvertPositionStyleOnCopyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::shouldConvertPositionStyleOnCopyKey(void)::key = WebKit::WebPreferencesKey::shouldConvertPositionStyleOnCopyKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::shouldConvertPositionStyleOnCopyKey(void)::key, &v397))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldConvertPositionStyleOnCopyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::shouldConvertPositionStyleOnCopyKey(void)::key = WebKit::WebPreferencesKey::shouldConvertPositionStyleOnCopyKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::shouldConvertPositionStyleOnCopyKey(void)::key, v397);
    }

    v396 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldConvertInvalidURLsToBlankKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::shouldConvertInvalidURLsToBlankKey(void)::key = WebKit::WebPreferencesKey::shouldConvertInvalidURLsToBlankKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::shouldConvertInvalidURLsToBlankKey(void)::key, &v396))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldConvertInvalidURLsToBlankKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::shouldConvertInvalidURLsToBlankKey(void)::key = WebKit::WebPreferencesKey::shouldConvertInvalidURLsToBlankKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::shouldConvertInvalidURLsToBlankKey(void)::key, v396);
    }

    v395 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldAllowUserInstalledFontsKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::shouldAllowUserInstalledFontsKey(void)::key = WebKit::WebPreferencesKey::shouldAllowUserInstalledFontsKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::shouldAllowUserInstalledFontsKey(void)::key, &v395))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldAllowUserInstalledFontsKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::shouldAllowUserInstalledFontsKey(void)::key = WebKit::WebPreferencesKey::shouldAllowUserInstalledFontsKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::shouldAllowUserInstalledFontsKey(void)::key, v395);
    }

    v394 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::serviceWorkerEntitlementDisabledForTestingKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::serviceWorkerEntitlementDisabledForTestingKey(void)::key = WebKit::WebPreferencesKey::serviceWorkerEntitlementDisabledForTestingKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::serviceWorkerEntitlementDisabledForTestingKey(void)::key, &v394))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::serviceWorkerEntitlementDisabledForTestingKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::serviceWorkerEntitlementDisabledForTestingKey(void)::key = WebKit::WebPreferencesKey::serviceWorkerEntitlementDisabledForTestingKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::serviceWorkerEntitlementDisabledForTestingKey(void)::key, v394);
    }

    v393 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::serviceControlsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::serviceControlsEnabledKey(void)::key = WebKit::WebPreferencesKey::serviceControlsEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::serviceControlsEnabledKey(void)::key, &v393))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::serviceControlsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::serviceControlsEnabledKey(void)::key = WebKit::WebPreferencesKey::serviceControlsEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::serviceControlsEnabledKey(void)::key, v393);
    }

    v392 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::serifFontFamilyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::serifFontFamilyKey(void)::key = WebKit::WebPreferencesKey::serifFontFamilyKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetStringUserValueForKey(this, &WebKit::WebPreferencesKey::serifFontFamilyKey(void)::key, &v392))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::serifFontFamilyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::serifFontFamilyKey(void)::key = WebKit::WebPreferencesKey::serifFontFamilyKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setStringValueForKey((this + 5), &WebKit::WebPreferencesKey::serifFontFamilyKey(void)::key, &v392);
    }

    v391 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::selectTrailingWhitespaceEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::selectTrailingWhitespaceEnabledKey(void)::key = WebKit::WebPreferencesKey::selectTrailingWhitespaceEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::selectTrailingWhitespaceEnabledKey(void)::key, &v391))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::selectTrailingWhitespaceEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::selectTrailingWhitespaceEnabledKey(void)::key = WebKit::WebPreferencesKey::selectTrailingWhitespaceEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::selectTrailingWhitespaceEnabledKey(void)::key, v391);
    }

    v390 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::sansSerifFontFamilyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::sansSerifFontFamilyKey(void)::key = WebKit::WebPreferencesKey::sansSerifFontFamilyKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetStringUserValueForKey(this, &WebKit::WebPreferencesKey::sansSerifFontFamilyKey(void)::key, &v390))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::sansSerifFontFamilyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::sansSerifFontFamilyKey(void)::key = WebKit::WebPreferencesKey::sansSerifFontFamilyKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setStringValueForKey((this + 5), &WebKit::WebPreferencesKey::sansSerifFontFamilyKey(void)::key, &v390);
    }

    v389 = 0.0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::sampledPageTopColorMinHeightKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::sampledPageTopColorMinHeightKey(void)::key = WebKit::WebPreferencesKey::sampledPageTopColorMinHeightKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetDoubleUserValueForKey(this, &WebKit::WebPreferencesKey::sampledPageTopColorMinHeightKey(void)::key, &v389))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::sampledPageTopColorMinHeightKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::sampledPageTopColorMinHeightKey(void)::key = WebKit::WebPreferencesKey::sampledPageTopColorMinHeightKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setDoubleValueForKey((this + 5), &WebKit::WebPreferencesKey::sampledPageTopColorMinHeightKey(void)::key, v389);
    }

    v388 = 0.0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::sampledPageTopColorMaxDifferenceKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::sampledPageTopColorMaxDifferenceKey(void)::key = WebKit::WebPreferencesKey::sampledPageTopColorMaxDifferenceKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetDoubleUserValueForKey(this, &WebKit::WebPreferencesKey::sampledPageTopColorMaxDifferenceKey(void)::key, &v388))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::sampledPageTopColorMaxDifferenceKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::sampledPageTopColorMaxDifferenceKey(void)::key = WebKit::WebPreferencesKey::sampledPageTopColorMaxDifferenceKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setDoubleValueForKey((this + 5), &WebKit::WebPreferencesKey::sampledPageTopColorMaxDifferenceKey(void)::key, v388);
    }

    v387 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::rubberBandingForSubScrollableRegionsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::rubberBandingForSubScrollableRegionsEnabledKey(void)::key = WebKit::WebPreferencesKey::rubberBandingForSubScrollableRegionsEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::rubberBandingForSubScrollableRegionsEnabledKey(void)::key, &v387))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::rubberBandingForSubScrollableRegionsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::rubberBandingForSubScrollableRegionsEnabledKey(void)::key = WebKit::WebPreferencesKey::rubberBandingForSubScrollableRegionsEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::rubberBandingForSubScrollableRegionsEnabledKey(void)::key, v387);
    }

    v386 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::requiresUserGestureToLoadVideoKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::requiresUserGestureToLoadVideoKey(void)::key = WebKit::WebPreferencesKey::requiresUserGestureToLoadVideoKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::requiresUserGestureToLoadVideoKey(void)::key, &v386))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::requiresUserGestureToLoadVideoKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::requiresUserGestureToLoadVideoKey(void)::key = WebKit::WebPreferencesKey::requiresUserGestureToLoadVideoKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::requiresUserGestureToLoadVideoKey(void)::key, v386);
    }

    v385 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::requiresUserGestureForVideoPlaybackKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::requiresUserGestureForVideoPlaybackKey(void)::key = WebKit::WebPreferencesKey::requiresUserGestureForVideoPlaybackKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::requiresUserGestureForVideoPlaybackKey(void)::key, &v385))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::requiresUserGestureForVideoPlaybackKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::requiresUserGestureForVideoPlaybackKey(void)::key = WebKit::WebPreferencesKey::requiresUserGestureForVideoPlaybackKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::requiresUserGestureForVideoPlaybackKey(void)::key, v385);
    }

    v384 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::requiresUserGestureForMediaPlaybackKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::requiresUserGestureForMediaPlaybackKey(void)::key = WebKit::WebPreferencesKey::requiresUserGestureForMediaPlaybackKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::requiresUserGestureForMediaPlaybackKey(void)::key, &v384))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::requiresUserGestureForMediaPlaybackKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::requiresUserGestureForMediaPlaybackKey(void)::key = WebKit::WebPreferencesKey::requiresUserGestureForMediaPlaybackKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::requiresUserGestureForMediaPlaybackKey(void)::key, v384);
    }

    v383 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::requiresUserGestureForAudioPlaybackKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::requiresUserGestureForAudioPlaybackKey(void)::key = WebKit::WebPreferencesKey::requiresUserGestureForAudioPlaybackKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::requiresUserGestureForAudioPlaybackKey(void)::key, &v383))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::requiresUserGestureForAudioPlaybackKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::requiresUserGestureForAudioPlaybackKey(void)::key = WebKit::WebPreferencesKey::requiresUserGestureForAudioPlaybackKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::requiresUserGestureForAudioPlaybackKey(void)::key, v383);
    }

    v382 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::requiresPageVisibilityToPlayAudioKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::requiresPageVisibilityToPlayAudioKey(void)::key = WebKit::WebPreferencesKey::requiresPageVisibilityToPlayAudioKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::requiresPageVisibilityToPlayAudioKey(void)::key, &v382))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::requiresPageVisibilityToPlayAudioKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::requiresPageVisibilityToPlayAudioKey(void)::key = WebKit::WebPreferencesKey::requiresPageVisibilityToPlayAudioKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::requiresPageVisibilityToPlayAudioKey(void)::key, v382);
    }

    v381 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::requiresPageVisibilityForVideoToBeNowPlayingKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::requiresPageVisibilityForVideoToBeNowPlayingKey(void)::key = WebKit::WebPreferencesKey::requiresPageVisibilityForVideoToBeNowPlayingKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::requiresPageVisibilityForVideoToBeNowPlayingKey(void)::key, &v381))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::requiresPageVisibilityForVideoToBeNowPlayingKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::requiresPageVisibilityForVideoToBeNowPlayingKey(void)::key = WebKit::WebPreferencesKey::requiresPageVisibilityForVideoToBeNowPlayingKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::requiresPageVisibilityForVideoToBeNowPlayingKey(void)::key, v381);
    }

    v380 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::punchOutWhiteBackgroundsInDarkModeKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::punchOutWhiteBackgroundsInDarkModeKey(void)::key = WebKit::WebPreferencesKey::punchOutWhiteBackgroundsInDarkModeKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::punchOutWhiteBackgroundsInDarkModeKey(void)::key, &v380))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::punchOutWhiteBackgroundsInDarkModeKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::punchOutWhiteBackgroundsInDarkModeKey(void)::key = WebKit::WebPreferencesKey::punchOutWhiteBackgroundsInDarkModeKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::punchOutWhiteBackgroundsInDarkModeKey(void)::key, v380);
    }

    v379 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::pitchCorrectionAlgorithmKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::pitchCorrectionAlgorithmKey(void)::key = WebKit::WebPreferencesKey::pitchCorrectionAlgorithmKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetUInt32UserValueForKey(this, &WebKit::WebPreferencesKey::pitchCorrectionAlgorithmKey(void)::key, &v379))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::pitchCorrectionAlgorithmKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::pitchCorrectionAlgorithmKey(void)::key = WebKit::WebPreferencesKey::pitchCorrectionAlgorithmKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setUInt32ValueForKey((this + 5), &WebKit::WebPreferencesKey::pitchCorrectionAlgorithmKey(void)::key, v379);
    }

    v378 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::pictureInPictureAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::pictureInPictureAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::pictureInPictureAPIEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::pictureInPictureAPIEnabledKey(void)::key, &v378))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::pictureInPictureAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::pictureInPictureAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::pictureInPictureAPIEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::pictureInPictureAPIEnabledKey(void)::key, v378);
    }

    v377 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::pictographFontFamilyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::pictographFontFamilyKey(void)::key = WebKit::WebPreferencesKey::pictographFontFamilyKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetStringUserValueForKey(this, &WebKit::WebPreferencesKey::pictographFontFamilyKey(void)::key, &v377))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::pictographFontFamilyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::pictographFontFamilyKey(void)::key = WebKit::WebPreferencesKey::pictographFontFamilyKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setStringValueForKey((this + 5), &WebKit::WebPreferencesKey::pictographFontFamilyKey(void)::key, &v377);
    }

    v376 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::passwordEchoEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::passwordEchoEnabledKey(void)::key = WebKit::WebPreferencesKey::passwordEchoEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::passwordEchoEnabledKey(void)::key, &v376))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::passwordEchoEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::passwordEchoEnabledKey(void)::key = WebKit::WebPreferencesKey::passwordEchoEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::passwordEchoEnabledKey(void)::key, v376);
    }

    v375 = 0.0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::passwordEchoDurationKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::passwordEchoDurationKey(void)::key = WebKit::WebPreferencesKey::passwordEchoDurationKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetDoubleUserValueForKey(this, &WebKit::WebPreferencesKey::passwordEchoDurationKey(void)::key, &v375))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::passwordEchoDurationKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::passwordEchoDurationKey(void)::key = WebKit::WebPreferencesKey::passwordEchoDurationKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setDoubleValueForKey((this + 5), &WebKit::WebPreferencesKey::passwordEchoDurationKey(void)::key, v375);
    }

    v374 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::passiveTouchListenersAsDefaultOnDocumentKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::passiveTouchListenersAsDefaultOnDocumentKey(void)::key = WebKit::WebPreferencesKey::passiveTouchListenersAsDefaultOnDocumentKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::passiveTouchListenersAsDefaultOnDocumentKey(void)::key, &v374))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::passiveTouchListenersAsDefaultOnDocumentKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::passiveTouchListenersAsDefaultOnDocumentKey(void)::key = WebKit::WebPreferencesKey::passiveTouchListenersAsDefaultOnDocumentKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::passiveTouchListenersAsDefaultOnDocumentKey(void)::key, v374);
    }

    v373 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::pdfPluginPageNumberIndicatorEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::pdfPluginPageNumberIndicatorEnabledKey(void)::key = WebKit::WebPreferencesKey::pdfPluginPageNumberIndicatorEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::pdfPluginPageNumberIndicatorEnabledKey(void)::key, &v373))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::pdfPluginPageNumberIndicatorEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::pdfPluginPageNumberIndicatorEnabledKey(void)::key = WebKit::WebPreferencesKey::pdfPluginPageNumberIndicatorEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::pdfPluginPageNumberIndicatorEnabledKey(void)::key, v373);
    }

    v372 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::pdfPluginHUDEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::pdfPluginHUDEnabledKey(void)::key = WebKit::WebPreferencesKey::pdfPluginHUDEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::pdfPluginHUDEnabledKey(void)::key, &v372))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::pdfPluginHUDEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::pdfPluginHUDEnabledKey(void)::key = WebKit::WebPreferencesKey::pdfPluginHUDEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::pdfPluginHUDEnabledKey(void)::key, v372);
    }

    v371 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::pdfPluginEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::pdfPluginEnabledKey(void)::key = WebKit::WebPreferencesKey::pdfPluginEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::pdfPluginEnabledKey(void)::key, &v371))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::pdfPluginEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::pdfPluginEnabledKey(void)::key = WebKit::WebPreferencesKey::pdfPluginEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::pdfPluginEnabledKey(void)::key, v371);
    }

    v370 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::needsKeyboardEventDisambiguationQuirksKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::needsKeyboardEventDisambiguationQuirksKey(void)::key = WebKit::WebPreferencesKey::needsKeyboardEventDisambiguationQuirksKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::needsKeyboardEventDisambiguationQuirksKey(void)::key, &v370))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::needsKeyboardEventDisambiguationQuirksKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::needsKeyboardEventDisambiguationQuirksKey(void)::key = WebKit::WebPreferencesKey::needsKeyboardEventDisambiguationQuirksKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::needsKeyboardEventDisambiguationQuirksKey(void)::key, v370);
    }

    v369 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::needsFrameNameFallbackToIdQuirkKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::needsFrameNameFallbackToIdQuirkKey(void)::key = WebKit::WebPreferencesKey::needsFrameNameFallbackToIdQuirkKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::needsFrameNameFallbackToIdQuirkKey(void)::key, &v369))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::needsFrameNameFallbackToIdQuirkKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::needsFrameNameFallbackToIdQuirkKey(void)::key = WebKit::WebPreferencesKey::needsFrameNameFallbackToIdQuirkKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::needsFrameNameFallbackToIdQuirkKey(void)::key, v369);
    }

    v368 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::needsAdobeFrameReloadingQuirkKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::needsAdobeFrameReloadingQuirkKey(void)::key = WebKit::WebPreferencesKey::needsAdobeFrameReloadingQuirkKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::needsAdobeFrameReloadingQuirkKey(void)::key, &v368))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::needsAdobeFrameReloadingQuirkKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::needsAdobeFrameReloadingQuirkKey(void)::key = WebKit::WebPreferencesKey::needsAdobeFrameReloadingQuirkKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::needsAdobeFrameReloadingQuirkKey(void)::key, v368);
    }

    v367 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mockScrollbarsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::mockScrollbarsEnabledKey(void)::key = WebKit::WebPreferencesKey::mockScrollbarsEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::mockScrollbarsEnabledKey(void)::key, &v367))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mockScrollbarsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::mockScrollbarsEnabledKey(void)::key = WebKit::WebPreferencesKey::mockScrollbarsEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::mockScrollbarsEnabledKey(void)::key, v367);
    }

    v366 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mockScrollbarsControllerEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::mockScrollbarsControllerEnabledKey(void)::key = WebKit::WebPreferencesKey::mockScrollbarsControllerEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::mockScrollbarsControllerEnabledKey(void)::key, &v366))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mockScrollbarsControllerEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::mockScrollbarsControllerEnabledKey(void)::key = WebKit::WebPreferencesKey::mockScrollbarsControllerEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::mockScrollbarsControllerEnabledKey(void)::key, v366);
    }

    v365 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mockCaptureDevicesPromptEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::mockCaptureDevicesPromptEnabledKey(void)::key = WebKit::WebPreferencesKey::mockCaptureDevicesPromptEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::mockCaptureDevicesPromptEnabledKey(void)::key, &v365))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mockCaptureDevicesPromptEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::mockCaptureDevicesPromptEnabledKey(void)::key = WebKit::WebPreferencesKey::mockCaptureDevicesPromptEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::mockCaptureDevicesPromptEnabledKey(void)::key, v365);
    }

    v364 = 0.0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::minimumZoomFontSizeKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::minimumZoomFontSizeKey(void)::key = WebKit::WebPreferencesKey::minimumZoomFontSizeKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetDoubleUserValueForKey(this, &WebKit::WebPreferencesKey::minimumZoomFontSizeKey(void)::key, &v364))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::minimumZoomFontSizeKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::minimumZoomFontSizeKey(void)::key = WebKit::WebPreferencesKey::minimumZoomFontSizeKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setDoubleValueForKey((this + 5), &WebKit::WebPreferencesKey::minimumZoomFontSizeKey(void)::key, v364);
    }

    v363 = 0.0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::minimumLogicalFontSizeKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::minimumLogicalFontSizeKey(void)::key = WebKit::WebPreferencesKey::minimumLogicalFontSizeKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetDoubleUserValueForKey(this, &WebKit::WebPreferencesKey::minimumLogicalFontSizeKey(void)::key, &v363))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::minimumLogicalFontSizeKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::minimumLogicalFontSizeKey(void)::key = WebKit::WebPreferencesKey::minimumLogicalFontSizeKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setDoubleValueForKey((this + 5), &WebKit::WebPreferencesKey::minimumLogicalFontSizeKey(void)::key, v363);
    }

    v362 = 0.0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::minimumFontSizeKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::minimumFontSizeKey(void)::key = WebKit::WebPreferencesKey::minimumFontSizeKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetDoubleUserValueForKey(this, &WebKit::WebPreferencesKey::minimumFontSizeKey(void)::key, &v362))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::minimumFontSizeKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::minimumFontSizeKey(void)::key = WebKit::WebPreferencesKey::minimumFontSizeKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setDoubleValueForKey((this + 5), &WebKit::WebPreferencesKey::minimumFontSizeKey(void)::key, v362);
    }

    v361 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaVideoCodecIDsAllowedInLockdownModeKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::mediaVideoCodecIDsAllowedInLockdownModeKey(void)::key = WebKit::WebPreferencesKey::mediaVideoCodecIDsAllowedInLockdownModeKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetStringUserValueForKey(this, &WebKit::WebPreferencesKey::mediaVideoCodecIDsAllowedInLockdownModeKey(void)::key, &v361))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaVideoCodecIDsAllowedInLockdownModeKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::mediaVideoCodecIDsAllowedInLockdownModeKey(void)::key = WebKit::WebPreferencesKey::mediaVideoCodecIDsAllowedInLockdownModeKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setStringValueForKey((this + 5), &WebKit::WebPreferencesKey::mediaVideoCodecIDsAllowedInLockdownModeKey(void)::key, &v361);
    }

    v360 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaUserGestureInheritsFromDocumentKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::mediaUserGestureInheritsFromDocumentKey(void)::key = WebKit::WebPreferencesKey::mediaUserGestureInheritsFromDocumentKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::mediaUserGestureInheritsFromDocumentKey(void)::key, &v360))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaUserGestureInheritsFromDocumentKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::mediaUserGestureInheritsFromDocumentKey(void)::key = WebKit::WebPreferencesKey::mediaUserGestureInheritsFromDocumentKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::mediaUserGestureInheritsFromDocumentKey(void)::key, v360);
    }

    v359 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaPreloadingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::mediaPreloadingEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaPreloadingEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::mediaPreloadingEnabledKey(void)::key, &v359))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaPreloadingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::mediaPreloadingEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaPreloadingEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::mediaPreloadingEnabledKey(void)::key, v359);
    }

    v358 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::caretBrowsingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::caretBrowsingEnabledKey(void)::key = WebKit::WebPreferencesKey::caretBrowsingEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::caretBrowsingEnabledKey(void)::key, &v358))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::caretBrowsingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::caretBrowsingEnabledKey(void)::key = WebKit::WebPreferencesKey::caretBrowsingEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::caretBrowsingEnabledKey(void)::key, v358);
    }

    v357 = 0.0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaPreferredFullscreenWidthKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::mediaPreferredFullscreenWidthKey(void)::key = WebKit::WebPreferencesKey::mediaPreferredFullscreenWidthKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetDoubleUserValueForKey(this, &WebKit::WebPreferencesKey::mediaPreferredFullscreenWidthKey(void)::key, &v357))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaPreferredFullscreenWidthKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::mediaPreferredFullscreenWidthKey(void)::key = WebKit::WebPreferencesKey::mediaPreferredFullscreenWidthKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setDoubleValueForKey((this + 5), &WebKit::WebPreferencesKey::mediaPreferredFullscreenWidthKey(void)::key, v357);
    }

    v356 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaDataLoadsAutomaticallyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::mediaDataLoadsAutomaticallyKey(void)::key = WebKit::WebPreferencesKey::mediaDataLoadsAutomaticallyKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::mediaDataLoadsAutomaticallyKey(void)::key, &v356))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaDataLoadsAutomaticallyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::mediaDataLoadsAutomaticallyKey(void)::key = WebKit::WebPreferencesKey::mediaDataLoadsAutomaticallyKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::mediaDataLoadsAutomaticallyKey(void)::key, v356);
    }

    v355 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaControlsScaleWithPageZoomKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::mediaControlsScaleWithPageZoomKey(void)::key = WebKit::WebPreferencesKey::mediaControlsScaleWithPageZoomKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::mediaControlsScaleWithPageZoomKey(void)::key, &v355))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaControlsScaleWithPageZoomKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::mediaControlsScaleWithPageZoomKey(void)::key = WebKit::WebPreferencesKey::mediaControlsScaleWithPageZoomKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::mediaControlsScaleWithPageZoomKey(void)::key, v355);
    }

    v354 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaControlsContextMenusEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::mediaControlsContextMenusEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaControlsContextMenusEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::mediaControlsContextMenusEnabledKey(void)::key, &v354))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaControlsContextMenusEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::mediaControlsContextMenusEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaControlsContextMenusEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::mediaControlsContextMenusEnabledKey(void)::key, v354);
    }

    v353 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaContentTypesRequiringHardwareSupportKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::mediaContentTypesRequiringHardwareSupportKey(void)::key = WebKit::WebPreferencesKey::mediaContentTypesRequiringHardwareSupportKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetStringUserValueForKey(this, &WebKit::WebPreferencesKey::mediaContentTypesRequiringHardwareSupportKey(void)::key, &v353))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaContentTypesRequiringHardwareSupportKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::mediaContentTypesRequiringHardwareSupportKey(void)::key = WebKit::WebPreferencesKey::mediaContentTypesRequiringHardwareSupportKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setStringValueForKey((this + 5), &WebKit::WebPreferencesKey::mediaContentTypesRequiringHardwareSupportKey(void)::key, &v353);
    }

    v352 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::colorFilterEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::colorFilterEnabledKey(void)::key = WebKit::WebPreferencesKey::colorFilterEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::colorFilterEnabledKey(void)::key, &v352))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::colorFilterEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::colorFilterEnabledKey(void)::key = WebKit::WebPreferencesKey::colorFilterEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::colorFilterEnabledKey(void)::key, v352);
    }

    v351 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaContainerTypesAllowedInLockdownModeKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::mediaContainerTypesAllowedInLockdownModeKey(void)::key = WebKit::WebPreferencesKey::mediaContainerTypesAllowedInLockdownModeKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetStringUserValueForKey(this, &WebKit::WebPreferencesKey::mediaContainerTypesAllowedInLockdownModeKey(void)::key, &v351))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaContainerTypesAllowedInLockdownModeKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::mediaContainerTypesAllowedInLockdownModeKey(void)::key = WebKit::WebPreferencesKey::mediaContainerTypesAllowedInLockdownModeKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setStringValueForKey((this + 5), &WebKit::WebPreferencesKey::mediaContainerTypesAllowedInLockdownModeKey(void)::key, &v351);
    }

    v350 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaCodecTypesAllowedInLockdownModeKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::mediaCodecTypesAllowedInLockdownModeKey(void)::key = WebKit::WebPreferencesKey::mediaCodecTypesAllowedInLockdownModeKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetStringUserValueForKey(this, &WebKit::WebPreferencesKey::mediaCodecTypesAllowedInLockdownModeKey(void)::key, &v350))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaCodecTypesAllowedInLockdownModeKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::mediaCodecTypesAllowedInLockdownModeKey(void)::key = WebKit::WebPreferencesKey::mediaCodecTypesAllowedInLockdownModeKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setStringValueForKey((this + 5), &WebKit::WebPreferencesKey::mediaCodecTypesAllowedInLockdownModeKey(void)::key, &v350);
    }

    v349 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaCaptionFormatTypesAllowedInLockdownModeKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::mediaCaptionFormatTypesAllowedInLockdownModeKey(void)::key = WebKit::WebPreferencesKey::mediaCaptionFormatTypesAllowedInLockdownModeKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetStringUserValueForKey(this, &WebKit::WebPreferencesKey::mediaCaptionFormatTypesAllowedInLockdownModeKey(void)::key, &v349))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaCaptionFormatTypesAllowedInLockdownModeKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::mediaCaptionFormatTypesAllowedInLockdownModeKey(void)::key = WebKit::WebPreferencesKey::mediaCaptionFormatTypesAllowedInLockdownModeKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setStringValueForKey((this + 5), &WebKit::WebPreferencesKey::mediaCaptionFormatTypesAllowedInLockdownModeKey(void)::key, &v349);
    }

    v348 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaCapabilitiesEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::mediaCapabilitiesEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaCapabilitiesEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::mediaCapabilitiesEnabledKey(void)::key, &v348))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaCapabilitiesEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::mediaCapabilitiesEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaCapabilitiesEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::mediaCapabilitiesEnabledKey(void)::key, v348);
    }

    v347 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaAudioCodecIDsAllowedInLockdownModeKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::mediaAudioCodecIDsAllowedInLockdownModeKey(void)::key = WebKit::WebPreferencesKey::mediaAudioCodecIDsAllowedInLockdownModeKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetStringUserValueForKey(this, &WebKit::WebPreferencesKey::mediaAudioCodecIDsAllowedInLockdownModeKey(void)::key, &v347))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaAudioCodecIDsAllowedInLockdownModeKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::mediaAudioCodecIDsAllowedInLockdownModeKey(void)::key = WebKit::WebPreferencesKey::mediaAudioCodecIDsAllowedInLockdownModeKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setStringValueForKey((this + 5), &WebKit::WebPreferencesKey::mediaAudioCodecIDsAllowedInLockdownModeKey(void)::key, &v347);
    }

    v346 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::contentChangeObserverEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::contentChangeObserverEnabledKey(void)::key = WebKit::WebPreferencesKey::contentChangeObserverEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::contentChangeObserverEnabledKey(void)::key, &v346))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::contentChangeObserverEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::contentChangeObserverEnabledKey(void)::key = WebKit::WebPreferencesKey::contentChangeObserverEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::contentChangeObserverEnabledKey(void)::key, v346);
    }

    v345 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::contentDispositionAttachmentSandboxEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::contentDispositionAttachmentSandboxEnabledKey(void)::key = WebKit::WebPreferencesKey::contentDispositionAttachmentSandboxEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::contentDispositionAttachmentSandboxEnabledKey(void)::key, &v345))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::contentDispositionAttachmentSandboxEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::contentDispositionAttachmentSandboxEnabledKey(void)::key = WebKit::WebPreferencesKey::contentDispositionAttachmentSandboxEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::contentDispositionAttachmentSandboxEnabledKey(void)::key, v345);
    }

    v344 = 0.0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::maxParseDurationKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::maxParseDurationKey(void)::key = WebKit::WebPreferencesKey::maxParseDurationKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetDoubleUserValueForKey(this, &WebKit::WebPreferencesKey::maxParseDurationKey(void)::key, &v344))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::maxParseDurationKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::maxParseDurationKey(void)::key = WebKit::WebPreferencesKey::maxParseDurationKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setDoubleValueForKey((this + 5), &WebKit::WebPreferencesKey::maxParseDurationKey(void)::key, v344);
    }

    v343 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::contextMenuQRCodeDetectionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::contextMenuQRCodeDetectionEnabledKey(void)::key = WebKit::WebPreferencesKey::contextMenuQRCodeDetectionEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::contextMenuQRCodeDetectionEnabledKey(void)::key, &v343))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::contextMenuQRCodeDetectionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::contextMenuQRCodeDetectionEnabledKey(void)::key = WebKit::WebPreferencesKey::contextMenuQRCodeDetectionEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::contextMenuQRCodeDetectionEnabledKey(void)::key, v343);
    }

    v342 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mathMLEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::mathMLEnabledKey(void)::key = WebKit::WebPreferencesKey::mathMLEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::mathMLEnabledKey(void)::key, &v342))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mathMLEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::mathMLEnabledKey(void)::key = WebKit::WebPreferencesKey::mathMLEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::mathMLEnabledKey(void)::key, v342);
    }

    v341 = 0.0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::managedMediaSourceLowThresholdKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::managedMediaSourceLowThresholdKey(void)::key = WebKit::WebPreferencesKey::managedMediaSourceLowThresholdKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetDoubleUserValueForKey(this, &WebKit::WebPreferencesKey::managedMediaSourceLowThresholdKey(void)::key, &v341))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::managedMediaSourceLowThresholdKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::managedMediaSourceLowThresholdKey(void)::key = WebKit::WebPreferencesKey::managedMediaSourceLowThresholdKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setDoubleValueForKey((this + 5), &WebKit::WebPreferencesKey::managedMediaSourceLowThresholdKey(void)::key, v341);
    }

    v340 = 0.0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::managedMediaSourceHighThresholdKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::managedMediaSourceHighThresholdKey(void)::key = WebKit::WebPreferencesKey::managedMediaSourceHighThresholdKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetDoubleUserValueForKey(this, &WebKit::WebPreferencesKey::managedMediaSourceHighThresholdKey(void)::key, &v340))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::managedMediaSourceHighThresholdKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::managedMediaSourceHighThresholdKey(void)::key = WebKit::WebPreferencesKey::managedMediaSourceHighThresholdKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setDoubleValueForKey((this + 5), &WebKit::WebPreferencesKey::managedMediaSourceHighThresholdKey(void)::key, v340);
    }

    v339 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::lowPowerVideoAudioBufferSizeEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::lowPowerVideoAudioBufferSizeEnabledKey(void)::key = WebKit::WebPreferencesKey::lowPowerVideoAudioBufferSizeEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::lowPowerVideoAudioBufferSizeEnabledKey(void)::key, &v339))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::lowPowerVideoAudioBufferSizeEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::lowPowerVideoAudioBufferSizeEnabledKey(void)::key = WebKit::WebPreferencesKey::lowPowerVideoAudioBufferSizeEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::lowPowerVideoAudioBufferSizeEnabledKey(void)::key, v339);
    }

    v338 = 0.0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::longRunningMediaCaptureStreamRepromptIntervalInHoursKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::longRunningMediaCaptureStreamRepromptIntervalInHoursKey(void)::key = WebKit::WebPreferencesKey::longRunningMediaCaptureStreamRepromptIntervalInHoursKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetDoubleUserValueForKey(this, &WebKit::WebPreferencesKey::longRunningMediaCaptureStreamRepromptIntervalInHoursKey(void)::key, &v338))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::longRunningMediaCaptureStreamRepromptIntervalInHoursKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::longRunningMediaCaptureStreamRepromptIntervalInHoursKey(void)::key = WebKit::WebPreferencesKey::longRunningMediaCaptureStreamRepromptIntervalInHoursKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setDoubleValueForKey((this + 5), &WebKit::WebPreferencesKey::longRunningMediaCaptureStreamRepromptIntervalInHoursKey(void)::key, v338);
    }

    v337 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::loadsImagesAutomaticallyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::loadsImagesAutomaticallyKey(void)::key = WebKit::WebPreferencesKey::loadsImagesAutomaticallyKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::loadsImagesAutomaticallyKey(void)::key, &v337))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::loadsImagesAutomaticallyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::loadsImagesAutomaticallyKey(void)::key = WebKit::WebPreferencesKey::loadsImagesAutomaticallyKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::loadsImagesAutomaticallyKey(void)::key, v337);
    }

    v336 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::loadDeferringEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::loadDeferringEnabledKey(void)::key = WebKit::WebPreferencesKey::loadDeferringEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::loadDeferringEnabledKey(void)::key, &v336))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::loadDeferringEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::loadDeferringEnabledKey(void)::key = WebKit::WebPreferencesKey::loadDeferringEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::loadDeferringEnabledKey(void)::key, v336);
    }

    v335 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::linkPreloadEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::linkPreloadEnabledKey(void)::key = WebKit::WebPreferencesKey::linkPreloadEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::linkPreloadEnabledKey(void)::key, &v335))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::linkPreloadEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::linkPreloadEnabledKey(void)::key = WebKit::WebPreferencesKey::linkPreloadEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::linkPreloadEnabledKey(void)::key, v335);
    }

    v334 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::linkPreconnectKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::linkPreconnectKey(void)::key = WebKit::WebPreferencesKey::linkPreconnectKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::linkPreconnectKey(void)::key, &v334))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::linkPreconnectKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::linkPreconnectKey(void)::key = WebKit::WebPreferencesKey::linkPreconnectKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::linkPreconnectKey(void)::key, v334);
    }

    v333 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cursiveFontFamilyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::cursiveFontFamilyKey(void)::key = WebKit::WebPreferencesKey::cursiveFontFamilyKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetStringUserValueForKey(this, &WebKit::WebPreferencesKey::cursiveFontFamilyKey(void)::key, &v333))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cursiveFontFamilyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::cursiveFontFamilyKey(void)::key = WebKit::WebPreferencesKey::cursiveFontFamilyKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setStringValueForKey((this + 5), &WebKit::WebPreferencesKey::cursiveFontFamilyKey(void)::key, &v333);
    }

    v332 = 0.0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::layoutViewportHeightExpansionFactorKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::layoutViewportHeightExpansionFactorKey(void)::key = WebKit::WebPreferencesKey::layoutViewportHeightExpansionFactorKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetDoubleUserValueForKey(this, &WebKit::WebPreferencesKey::layoutViewportHeightExpansionFactorKey(void)::key, &v332))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::layoutViewportHeightExpansionFactorKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::layoutViewportHeightExpansionFactorKey(void)::key = WebKit::WebPreferencesKey::layoutViewportHeightExpansionFactorKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setDoubleValueForKey((this + 5), &WebKit::WebPreferencesKey::layoutViewportHeightExpansionFactorKey(void)::key, v332);
    }

    v331 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::layoutFallbackWidthKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::layoutFallbackWidthKey(void)::key = WebKit::WebPreferencesKey::layoutFallbackWidthKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetUInt32UserValueForKey(this, &WebKit::WebPreferencesKey::layoutFallbackWidthKey(void)::key, &v331))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::layoutFallbackWidthKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::layoutFallbackWidthKey(void)::key = WebKit::WebPreferencesKey::layoutFallbackWidthKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setUInt32ValueForKey((this + 5), &WebKit::WebPreferencesKey::layoutFallbackWidthKey(void)::key, v331);
    }

    v330 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::largeImageAsyncDecodingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::largeImageAsyncDecodingEnabledKey(void)::key = WebKit::WebPreferencesKey::largeImageAsyncDecodingEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::largeImageAsyncDecodingEnabledKey(void)::key, &v330))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::largeImageAsyncDecodingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::largeImageAsyncDecodingEnabledKey(void)::key = WebKit::WebPreferencesKey::largeImageAsyncDecodingEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::largeImageAsyncDecodingEnabledKey(void)::key, v330);
    }

    v329 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::domPasteAllowedKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::domPasteAllowedKey(void)::key = WebKit::WebPreferencesKey::domPasteAllowedKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::domPasteAllowedKey(void)::key, &v329))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::domPasteAllowedKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::domPasteAllowedKey(void)::key = WebKit::WebPreferencesKey::domPasteAllowedKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::domPasteAllowedKey(void)::key, v329);
    }

    v328 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::javaScriptRuntimeFlagsKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::javaScriptRuntimeFlagsKey(void)::key = WebKit::WebPreferencesKey::javaScriptRuntimeFlagsKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetUInt32UserValueForKey(this, &WebKit::WebPreferencesKey::javaScriptRuntimeFlagsKey(void)::key, &v328))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::javaScriptRuntimeFlagsKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::javaScriptRuntimeFlagsKey(void)::key = WebKit::WebPreferencesKey::javaScriptRuntimeFlagsKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setUInt32ValueForKey((this + 5), &WebKit::WebPreferencesKey::javaScriptRuntimeFlagsKey(void)::key, v328);
    }

    v327 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::javaScriptMarkupEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::javaScriptMarkupEnabledKey(void)::key = WebKit::WebPreferencesKey::javaScriptMarkupEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::javaScriptMarkupEnabledKey(void)::key, &v327))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::javaScriptMarkupEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::javaScriptMarkupEnabledKey(void)::key = WebKit::WebPreferencesKey::javaScriptMarkupEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::javaScriptMarkupEnabledKey(void)::key, v327);
    }

    v326 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::dataDetectorTypesKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::dataDetectorTypesKey(void)::key = WebKit::WebPreferencesKey::dataDetectorTypesKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetUInt32UserValueForKey(this, &WebKit::WebPreferencesKey::dataDetectorTypesKey(void)::key, &v326))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::dataDetectorTypesKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::dataDetectorTypesKey(void)::key = WebKit::WebPreferencesKey::dataDetectorTypesKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setUInt32ValueForKey((this + 5), &WebKit::WebPreferencesKey::dataDetectorTypesKey(void)::key, v326);
    }

    v325 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::javaScriptCanOpenWindowsAutomaticallyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::javaScriptCanOpenWindowsAutomaticallyKey(void)::key = WebKit::WebPreferencesKey::javaScriptCanOpenWindowsAutomaticallyKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::javaScriptCanOpenWindowsAutomaticallyKey(void)::key, &v325))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::javaScriptCanOpenWindowsAutomaticallyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::javaScriptCanOpenWindowsAutomaticallyKey(void)::key = WebKit::WebPreferencesKey::javaScriptCanOpenWindowsAutomaticallyKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::javaScriptCanOpenWindowsAutomaticallyKey(void)::key, v325);
    }

    v324 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::javaScriptCanAccessClipboardKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::javaScriptCanAccessClipboardKey(void)::key = WebKit::WebPreferencesKey::javaScriptCanAccessClipboardKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::javaScriptCanAccessClipboardKey(void)::key, &v324))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::javaScriptCanAccessClipboardKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::javaScriptCanAccessClipboardKey(void)::key = WebKit::WebPreferencesKey::javaScriptCanAccessClipboardKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::javaScriptCanAccessClipboardKey(void)::key, v324);
    }

    v323 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::databasesEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::databasesEnabledKey(void)::key = WebKit::WebPreferencesKey::databasesEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::databasesEnabledKey(void)::key, &v323))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::databasesEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::databasesEnabledKey(void)::key = WebKit::WebPreferencesKey::databasesEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::databasesEnabledKey(void)::key, v323);
    }

    v322 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::invisibleAutoplayNotPermittedKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::invisibleAutoplayNotPermittedKey(void)::key = WebKit::WebPreferencesKey::invisibleAutoplayNotPermittedKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::invisibleAutoplayNotPermittedKey(void)::key, &v322))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::invisibleAutoplayNotPermittedKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::invisibleAutoplayNotPermittedKey(void)::key = WebKit::WebPreferencesKey::invisibleAutoplayNotPermittedKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::invisibleAutoplayNotPermittedKey(void)::key, v322);
    }

    v321 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::interruptVideoOnPageVisibilityChangeEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::interruptVideoOnPageVisibilityChangeEnabledKey(void)::key = WebKit::WebPreferencesKey::interruptVideoOnPageVisibilityChangeEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::interruptVideoOnPageVisibilityChangeEnabledKey(void)::key, &v321))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::interruptVideoOnPageVisibilityChangeEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::interruptVideoOnPageVisibilityChangeEnabledKey(void)::key = WebKit::WebPreferencesKey::interruptVideoOnPageVisibilityChangeEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::interruptVideoOnPageVisibilityChangeEnabledKey(void)::key, v321);
    }

    v320 = 0.0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::defaultFixedFontSizeKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::defaultFixedFontSizeKey(void)::key = WebKit::WebPreferencesKey::defaultFixedFontSizeKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetDoubleUserValueForKey(this, &WebKit::WebPreferencesKey::defaultFixedFontSizeKey(void)::key, &v320))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::defaultFixedFontSizeKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::defaultFixedFontSizeKey(void)::key = WebKit::WebPreferencesKey::defaultFixedFontSizeKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setDoubleValueForKey((this + 5), &WebKit::WebPreferencesKey::defaultFixedFontSizeKey(void)::key, v320);
    }

    v319 = 0.0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::defaultFontSizeKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::defaultFontSizeKey(void)::key = WebKit::WebPreferencesKey::defaultFontSizeKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetDoubleUserValueForKey(this, &WebKit::WebPreferencesKey::defaultFontSizeKey(void)::key, &v319))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::defaultFontSizeKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::defaultFontSizeKey(void)::key = WebKit::WebPreferencesKey::defaultFontSizeKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setDoubleValueForKey((this + 5), &WebKit::WebPreferencesKey::defaultFontSizeKey(void)::key, v319);
    }

    v318 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::defaultTextEncodingNameKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::defaultTextEncodingNameKey(void)::key = WebKit::WebPreferencesKey::defaultTextEncodingNameKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetStringUserValueForKey(this, &WebKit::WebPreferencesKey::defaultTextEncodingNameKey(void)::key, &v318))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::defaultTextEncodingNameKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::defaultTextEncodingNameKey(void)::key = WebKit::WebPreferencesKey::defaultTextEncodingNameKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setStringValueForKey((this + 5), &WebKit::WebPreferencesKey::defaultTextEncodingNameKey(void)::key, &v318);
    }

    v317 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::interruptAudioOnPageVisibilityChangeEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::interruptAudioOnPageVisibilityChangeEnabledKey(void)::key = WebKit::WebPreferencesKey::interruptAudioOnPageVisibilityChangeEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::interruptAudioOnPageVisibilityChangeEnabledKey(void)::key, &v317))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::interruptAudioOnPageVisibilityChangeEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::interruptAudioOnPageVisibilityChangeEnabledKey(void)::key = WebKit::WebPreferencesKey::interruptAudioOnPageVisibilityChangeEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::interruptAudioOnPageVisibilityChangeEnabledKey(void)::key, v317);
    }

    v316 = 0.0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::interactionRegionMinimumCornerRadiusKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::interactionRegionMinimumCornerRadiusKey(void)::key = WebKit::WebPreferencesKey::interactionRegionMinimumCornerRadiusKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetDoubleUserValueForKey(this, &WebKit::WebPreferencesKey::interactionRegionMinimumCornerRadiusKey(void)::key, &v316))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::interactionRegionMinimumCornerRadiusKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::interactionRegionMinimumCornerRadiusKey(void)::key = WebKit::WebPreferencesKey::interactionRegionMinimumCornerRadiusKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setDoubleValueForKey((this + 5), &WebKit::WebPreferencesKey::interactionRegionMinimumCornerRadiusKey(void)::key, v316);
    }

    v315 = 0.0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::interactionRegionInlinePaddingKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::interactionRegionInlinePaddingKey(void)::key = WebKit::WebPreferencesKey::interactionRegionInlinePaddingKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetDoubleUserValueForKey(this, &WebKit::WebPreferencesKey::interactionRegionInlinePaddingKey(void)::key, &v315))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::interactionRegionInlinePaddingKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::interactionRegionInlinePaddingKey(void)::key = WebKit::WebPreferencesKey::interactionRegionInlinePaddingKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setDoubleValueForKey((this + 5), &WebKit::WebPreferencesKey::interactionRegionInlinePaddingKey(void)::key, v315);
    }

    v314 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::developerExtrasEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::developerExtrasEnabledKey(void)::key = WebKit::WebPreferencesKey::developerExtrasEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::developerExtrasEnabledKey(void)::key, &v314))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::developerExtrasEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::developerExtrasEnabledKey(void)::key = WebKit::WebPreferencesKey::developerExtrasEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::developerExtrasEnabledKey(void)::key, v314);
    }

    v313 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::deviceHeightKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::deviceHeightKey(void)::key = WebKit::WebPreferencesKey::deviceHeightKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetUInt32UserValueForKey(this, &WebKit::WebPreferencesKey::deviceHeightKey(void)::key, &v313))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::deviceHeightKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::deviceHeightKey(void)::key = WebKit::WebPreferencesKey::deviceHeightKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setUInt32ValueForKey((this + 5), &WebKit::WebPreferencesKey::deviceHeightKey(void)::key, v313);
    }

    v312 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::deviceOrientationEventEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::deviceOrientationEventEnabledKey(void)::key = WebKit::WebPreferencesKey::deviceOrientationEventEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::deviceOrientationEventEnabledKey(void)::key, &v312))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::deviceOrientationEventEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::deviceOrientationEventEnabledKey(void)::key = WebKit::WebPreferencesKey::deviceOrientationEventEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::deviceOrientationEventEnabledKey(void)::key, v312);
    }

    v311 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::deviceOrientationPermissionAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::deviceOrientationPermissionAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::deviceOrientationPermissionAPIEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::deviceOrientationPermissionAPIEnabledKey(void)::key, &v311))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::deviceOrientationPermissionAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::deviceOrientationPermissionAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::deviceOrientationPermissionAPIEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::deviceOrientationPermissionAPIEnabledKey(void)::key, v311);
    }

    v310 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::deviceWidthKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::deviceWidthKey(void)::key = WebKit::WebPreferencesKey::deviceWidthKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetUInt32UserValueForKey(this, &WebKit::WebPreferencesKey::deviceWidthKey(void)::key, &v310))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::deviceWidthKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::deviceWidthKey(void)::key = WebKit::WebPreferencesKey::deviceWidthKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setUInt32ValueForKey((this + 5), &WebKit::WebPreferencesKey::deviceWidthKey(void)::key, v310);
    }

    v309 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inspectorWindowFrameKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::inspectorWindowFrameKey(void)::key = WebKit::WebPreferencesKey::inspectorWindowFrameKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetStringUserValueForKey(this, &WebKit::WebPreferencesKey::inspectorWindowFrameKey(void)::key, &v309))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inspectorWindowFrameKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::inspectorWindowFrameKey(void)::key = WebKit::WebPreferencesKey::inspectorWindowFrameKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setStringValueForKey((this + 5), &WebKit::WebPreferencesKey::inspectorWindowFrameKey(void)::key, &v309);
    }

    v308 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inspectorSupportsShowingCertificateKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::inspectorSupportsShowingCertificateKey(void)::key = WebKit::WebPreferencesKey::inspectorSupportsShowingCertificateKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::inspectorSupportsShowingCertificateKey(void)::key, &v308))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inspectorSupportsShowingCertificateKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::inspectorSupportsShowingCertificateKey(void)::key = WebKit::WebPreferencesKey::inspectorSupportsShowingCertificateKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::inspectorSupportsShowingCertificateKey(void)::key, v308);
    }

    v307 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inspectorStartsAttachedKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::inspectorStartsAttachedKey(void)::key = WebKit::WebPreferencesKey::inspectorStartsAttachedKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::inspectorStartsAttachedKey(void)::key, &v307))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inspectorStartsAttachedKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::inspectorStartsAttachedKey(void)::key = WebKit::WebPreferencesKey::inspectorStartsAttachedKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::inspectorStartsAttachedKey(void)::key, v307);
    }

    v306 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inspectorMaximumResourcesContentSizeKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::inspectorMaximumResourcesContentSizeKey(void)::key = WebKit::WebPreferencesKey::inspectorMaximumResourcesContentSizeKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetUInt32UserValueForKey(this, &WebKit::WebPreferencesKey::inspectorMaximumResourcesContentSizeKey(void)::key, &v306))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inspectorMaximumResourcesContentSizeKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::inspectorMaximumResourcesContentSizeKey(void)::key = WebKit::WebPreferencesKey::inspectorMaximumResourcesContentSizeKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setUInt32ValueForKey((this + 5), &WebKit::WebPreferencesKey::inspectorMaximumResourcesContentSizeKey(void)::key, v306);
    }

    v305 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inspectorAttachmentSideKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::inspectorAttachmentSideKey(void)::key = WebKit::WebPreferencesKey::inspectorAttachmentSideKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetUInt32UserValueForKey(this, &WebKit::WebPreferencesKey::inspectorAttachmentSideKey(void)::key, &v305))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inspectorAttachmentSideKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::inspectorAttachmentSideKey(void)::key = WebKit::WebPreferencesKey::inspectorAttachmentSideKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setUInt32ValueForKey((this + 5), &WebKit::WebPreferencesKey::inspectorAttachmentSideKey(void)::key, v305);
    }

    v304 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::disabledAdaptationsMetaTagEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::disabledAdaptationsMetaTagEnabledKey(void)::key = WebKit::WebPreferencesKey::disabledAdaptationsMetaTagEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::disabledAdaptationsMetaTagEnabledKey(void)::key, &v304))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::disabledAdaptationsMetaTagEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::disabledAdaptationsMetaTagEnabledKey(void)::key = WebKit::WebPreferencesKey::disabledAdaptationsMetaTagEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::disabledAdaptationsMetaTagEnabledKey(void)::key, v304);
    }

    v303 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::downloadAttributeEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::downloadAttributeEnabledKey(void)::key = WebKit::WebPreferencesKey::downloadAttributeEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::downloadAttributeEnabledKey(void)::key, &v303))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::downloadAttributeEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::downloadAttributeEnabledKey(void)::key = WebKit::WebPreferencesKey::downloadAttributeEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::downloadAttributeEnabledKey(void)::key, v303);
    }

    v302 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inspectorAttachedWidthKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::inspectorAttachedWidthKey(void)::key = WebKit::WebPreferencesKey::inspectorAttachedWidthKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetUInt32UserValueForKey(this, &WebKit::WebPreferencesKey::inspectorAttachedWidthKey(void)::key, &v302))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inspectorAttachedWidthKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::inspectorAttachedWidthKey(void)::key = WebKit::WebPreferencesKey::inspectorAttachedWidthKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setUInt32ValueForKey((this + 5), &WebKit::WebPreferencesKey::inspectorAttachedWidthKey(void)::key, v302);
    }

    v301 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::editableLinkBehaviorKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::editableLinkBehaviorKey(void)::key = WebKit::WebPreferencesKey::editableLinkBehaviorKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetUInt32UserValueForKey(this, &WebKit::WebPreferencesKey::editableLinkBehaviorKey(void)::key, &v301))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::editableLinkBehaviorKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::editableLinkBehaviorKey(void)::key = WebKit::WebPreferencesKey::editableLinkBehaviorKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setUInt32ValueForKey((this + 5), &WebKit::WebPreferencesKey::editableLinkBehaviorKey(void)::key, v301);
    }

    v300 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inspectorAttachedHeightKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::inspectorAttachedHeightKey(void)::key = WebKit::WebPreferencesKey::inspectorAttachedHeightKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetUInt32UserValueForKey(this, &WebKit::WebPreferencesKey::inspectorAttachedHeightKey(void)::key, &v300))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inspectorAttachedHeightKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::inspectorAttachedHeightKey(void)::key = WebKit::WebPreferencesKey::inspectorAttachedHeightKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setUInt32ValueForKey((this + 5), &WebKit::WebPreferencesKey::inspectorAttachedHeightKey(void)::key, v300);
    }

    v299 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inlineMediaPlaybackRequiresPlaysInlineAttributeKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::inlineMediaPlaybackRequiresPlaysInlineAttributeKey(void)::key = WebKit::WebPreferencesKey::inlineMediaPlaybackRequiresPlaysInlineAttributeKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::inlineMediaPlaybackRequiresPlaysInlineAttributeKey(void)::key, &v299))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inlineMediaPlaybackRequiresPlaysInlineAttributeKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::inlineMediaPlaybackRequiresPlaysInlineAttributeKey(void)::key = WebKit::WebPreferencesKey::inlineMediaPlaybackRequiresPlaysInlineAttributeKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::inlineMediaPlaybackRequiresPlaysInlineAttributeKey(void)::key, v299);
    }

    v298 = 0.0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::incrementalRenderingSuppressionTimeoutKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::incrementalRenderingSuppressionTimeoutKey(void)::key = WebKit::WebPreferencesKey::incrementalRenderingSuppressionTimeoutKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetDoubleUserValueForKey(this, &WebKit::WebPreferencesKey::incrementalRenderingSuppressionTimeoutKey(void)::key, &v298))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::incrementalRenderingSuppressionTimeoutKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::incrementalRenderingSuppressionTimeoutKey(void)::key = WebKit::WebPreferencesKey::incrementalRenderingSuppressionTimeoutKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setDoubleValueForKey((this + 5), &WebKit::WebPreferencesKey::incrementalRenderingSuppressionTimeoutKey(void)::key, v298);
    }

    v297 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::incrementalPDFLoadingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::incrementalPDFLoadingEnabledKey(void)::key = WebKit::WebPreferencesKey::incrementalPDFLoadingEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::incrementalPDFLoadingEnabledKey(void)::key, &v297))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::incrementalPDFLoadingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::incrementalPDFLoadingEnabledKey(void)::key = WebKit::WebPreferencesKey::incrementalPDFLoadingEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::incrementalPDFLoadingEnabledKey(void)::key, v297);
    }

    v296 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::enableInheritURIQueryComponentKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::enableInheritURIQueryComponentKey(void)::key = WebKit::WebPreferencesKey::enableInheritURIQueryComponentKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::enableInheritURIQueryComponentKey(void)::key, &v296))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::enableInheritURIQueryComponentKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::enableInheritURIQueryComponentKey(void)::key = WebKit::WebPreferencesKey::enableInheritURIQueryComponentKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::enableInheritURIQueryComponentKey(void)::key, v296);
    }

    v295 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::incompleteImageBorderEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::incompleteImageBorderEnabledKey(void)::key = WebKit::WebPreferencesKey::incompleteImageBorderEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::incompleteImageBorderEnabledKey(void)::key, &v295))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::incompleteImageBorderEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::incompleteImageBorderEnabledKey(void)::key = WebKit::WebPreferencesKey::incompleteImageBorderEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::incompleteImageBorderEnabledKey(void)::key, v295);
    }

    v294 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::encryptedMediaAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::encryptedMediaAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::encryptedMediaAPIEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::encryptedMediaAPIEnabledKey(void)::key, &v294))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::encryptedMediaAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::encryptedMediaAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::encryptedMediaAPIEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::encryptedMediaAPIEnabledKey(void)::key, v294);
    }

    v293 = 0.0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inactiveMediaCaptureStreamRepromptIntervalInMinutesKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::inactiveMediaCaptureStreamRepromptIntervalInMinutesKey(void)::key = WebKit::WebPreferencesKey::inactiveMediaCaptureStreamRepromptIntervalInMinutesKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetDoubleUserValueForKey(this, &WebKit::WebPreferencesKey::inactiveMediaCaptureStreamRepromptIntervalInMinutesKey(void)::key, &v293))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inactiveMediaCaptureStreamRepromptIntervalInMinutesKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::inactiveMediaCaptureStreamRepromptIntervalInMinutesKey(void)::key = WebKit::WebPreferencesKey::inactiveMediaCaptureStreamRepromptIntervalInMinutesKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setDoubleValueForKey((this + 5), &WebKit::WebPreferencesKey::inactiveMediaCaptureStreamRepromptIntervalInMinutesKey(void)::key, v293);
    }

    v292 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::hiddenPageCSSAnimationSuspensionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::hiddenPageCSSAnimationSuspensionEnabledKey(void)::key = WebKit::WebPreferencesKey::hiddenPageCSSAnimationSuspensionEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::hiddenPageCSSAnimationSuspensionEnabledKey(void)::key, &v292))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::hiddenPageCSSAnimationSuspensionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::hiddenPageCSSAnimationSuspensionEnabledKey(void)::key = WebKit::WebPreferencesKey::hiddenPageCSSAnimationSuspensionEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::hiddenPageCSSAnimationSuspensionEnabledKey(void)::key, v292);
    }

    v291 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::isGStreamerEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::isGStreamerEnabledKey(void)::key = WebKit::WebPreferencesKey::isGStreamerEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::isGStreamerEnabledKey(void)::key, &v291))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::isGStreamerEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::isGStreamerEnabledKey(void)::key = WebKit::WebPreferencesKey::isGStreamerEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::isGStreamerEnabledKey(void)::key, v291);
    }

    v290 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::forceWebGLUsesLowPowerKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::forceWebGLUsesLowPowerKey(void)::key = WebKit::WebPreferencesKey::forceWebGLUsesLowPowerKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::forceWebGLUsesLowPowerKey(void)::key, &v290))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::forceWebGLUsesLowPowerKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::forceWebGLUsesLowPowerKey(void)::key = WebKit::WebPreferencesKey::forceWebGLUsesLowPowerKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::forceWebGLUsesLowPowerKey(void)::key, v290);
    }

    v289 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::targetTextPseudoElementEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::targetTextPseudoElementEnabledKey(void)::key = WebKit::WebPreferencesKey::targetTextPseudoElementEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::targetTextPseudoElementEnabledKey(void)::key, &v289))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::targetTextPseudoElementEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::targetTextPseudoElementEnabledKey(void)::key = WebKit::WebPreferencesKey::targetTextPseudoElementEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::targetTextPseudoElementEnabledKey(void)::key, v289);
    }

    v288 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::linkDNSPrefetchEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::linkDNSPrefetchEnabledKey(void)::key = WebKit::WebPreferencesKey::linkDNSPrefetchEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::linkDNSPrefetchEnabledKey(void)::key, &v288))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::linkDNSPrefetchEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::linkDNSPrefetchEnabledKey(void)::key = WebKit::WebPreferencesKey::linkDNSPrefetchEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::linkDNSPrefetchEnabledKey(void)::key, v288);
    }

    v287 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::pageAtRuleMarginDescriptorsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::pageAtRuleMarginDescriptorsEnabledKey(void)::key = WebKit::WebPreferencesKey::pageAtRuleMarginDescriptorsEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::pageAtRuleMarginDescriptorsEnabledKey(void)::key, &v287))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::pageAtRuleMarginDescriptorsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::pageAtRuleMarginDescriptorsEnabledKey(void)::key = WebKit::WebPreferencesKey::pageAtRuleMarginDescriptorsEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::pageAtRuleMarginDescriptorsEnabledKey(void)::key, v287);
    }

    v286 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::isAVFoundationEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::isAVFoundationEnabledKey(void)::key = WebKit::WebPreferencesKey::isAVFoundationEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::isAVFoundationEnabledKey(void)::key, &v286))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::isAVFoundationEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::isAVFoundationEnabledKey(void)::key = WebKit::WebPreferencesKey::isAVFoundationEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::isAVFoundationEnabledKey(void)::key, v286);
    }

    v285 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::accessHandleEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::accessHandleEnabledKey(void)::key = WebKit::WebPreferencesKey::accessHandleEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::accessHandleEnabledKey(void)::key, &v285))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::accessHandleEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::accessHandleEnabledKey(void)::key = WebKit::WebPreferencesKey::accessHandleEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::accessHandleEnabledKey(void)::key, v285);
    }

    v284 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowMediaContentTypesRequiringHardwareSupportAsFallbackKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::allowMediaContentTypesRequiringHardwareSupportAsFallbackKey(void)::key = WebKit::WebPreferencesKey::allowMediaContentTypesRequiringHardwareSupportAsFallbackKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::allowMediaContentTypesRequiringHardwareSupportAsFallbackKey(void)::key, &v284))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowMediaContentTypesRequiringHardwareSupportAsFallbackKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::allowMediaContentTypesRequiringHardwareSupportAsFallbackKey(void)::key = WebKit::WebPreferencesKey::allowMediaContentTypesRequiringHardwareSupportAsFallbackKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::allowMediaContentTypesRequiringHardwareSupportAsFallbackKey(void)::key, v284);
    }

    v283 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowPrivacySensitiveOperationsInNonPersistentDataStoresKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::allowPrivacySensitiveOperationsInNonPersistentDataStoresKey(void)::key = WebKit::WebPreferencesKey::allowPrivacySensitiveOperationsInNonPersistentDataStoresKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::allowPrivacySensitiveOperationsInNonPersistentDataStoresKey(void)::key, &v283))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowPrivacySensitiveOperationsInNonPersistentDataStoresKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::allowPrivacySensitiveOperationsInNonPersistentDataStoresKey(void)::key = WebKit::WebPreferencesKey::allowPrivacySensitiveOperationsInNonPersistentDataStoresKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::allowPrivacySensitiveOperationsInNonPersistentDataStoresKey(void)::key, v283);
    }

    v282 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowWebGLInWorkersKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::allowWebGLInWorkersKey(void)::key = WebKit::WebPreferencesKey::allowWebGLInWorkersKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::allowWebGLInWorkersKey(void)::key, &v282))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowWebGLInWorkersKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::allowWebGLInWorkersKey(void)::key = WebKit::WebPreferencesKey::allowWebGLInWorkersKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::allowWebGLInWorkersKey(void)::key, v282);
    }

    v281 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowTopNavigationToDataURLsKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::allowTopNavigationToDataURLsKey(void)::key = WebKit::WebPreferencesKey::allowTopNavigationToDataURLsKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::allowTopNavigationToDataURLsKey(void)::key, &v281))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowTopNavigationToDataURLsKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::allowTopNavigationToDataURLsKey(void)::key = WebKit::WebPreferencesKey::allowTopNavigationToDataURLsKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::allowTopNavigationToDataURLsKey(void)::key, v281);
    }

    v280 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowUniversalAccessFromFileURLsKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::allowUniversalAccessFromFileURLsKey(void)::key = WebKit::WebPreferencesKey::allowUniversalAccessFromFileURLsKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::allowUniversalAccessFromFileURLsKey(void)::key, &v280))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowUniversalAccessFromFileURLsKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::allowUniversalAccessFromFileURLsKey(void)::key = WebKit::WebPreferencesKey::allowUniversalAccessFromFileURLsKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::allowUniversalAccessFromFileURLsKey(void)::key, v280);
    }

    v279 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::asyncClipboardAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::asyncClipboardAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::asyncClipboardAPIEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::asyncClipboardAPIEnabledKey(void)::key, &v279))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::asyncClipboardAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::asyncClipboardAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::asyncClipboardAPIEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::asyncClipboardAPIEnabledKey(void)::key, v279);
    }

    v278 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::attachmentElementEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::attachmentElementEnabledKey(void)::key = WebKit::WebPreferencesKey::attachmentElementEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::attachmentElementEnabledKey(void)::key, &v278))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::attachmentElementEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::attachmentElementEnabledKey(void)::key = WebKit::WebPreferencesKey::attachmentElementEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::attachmentElementEnabledKey(void)::key, v278);
    }

    v277 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::attachmentWideLayoutEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::attachmentWideLayoutEnabledKey(void)::key = WebKit::WebPreferencesKey::attachmentWideLayoutEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::attachmentWideLayoutEnabledKey(void)::key, &v277))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::attachmentWideLayoutEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::attachmentWideLayoutEnabledKey(void)::key = WebKit::WebPreferencesKey::attachmentWideLayoutEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::attachmentWideLayoutEnabledKey(void)::key, v277);
    }

    v276 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::extendedAudioDescriptionsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::extendedAudioDescriptionsEnabledKey(void)::key = WebKit::WebPreferencesKey::extendedAudioDescriptionsEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::extendedAudioDescriptionsEnabledKey(void)::key, &v276))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::extendedAudioDescriptionsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::extendedAudioDescriptionsEnabledKey(void)::key = WebKit::WebPreferencesKey::extendedAudioDescriptionsEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::extendedAudioDescriptionsEnabledKey(void)::key, v276);
    }

    v275 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::audioDescriptionsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::audioDescriptionsEnabledKey(void)::key = WebKit::WebPreferencesKey::audioDescriptionsEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::audioDescriptionsEnabledKey(void)::key, &v275))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::audioDescriptionsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::audioDescriptionsEnabledKey(void)::key = WebKit::WebPreferencesKey::audioDescriptionsEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::audioDescriptionsEnabledKey(void)::key, v275);
    }

    v274 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::domAudioSessionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::domAudioSessionEnabledKey(void)::key = WebKit::WebPreferencesKey::domAudioSessionEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::domAudioSessionEnabledKey(void)::key, &v274))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::domAudioSessionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::domAudioSessionEnabledKey(void)::key = WebKit::WebPreferencesKey::domAudioSessionEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::domAudioSessionEnabledKey(void)::key, v274);
    }

    v273 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::beaconAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::beaconAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::beaconAPIEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::beaconAPIEnabledKey(void)::key, &v273))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::beaconAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::beaconAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::beaconAPIEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::beaconAPIEnabledKey(void)::key, v273);
    }

    v272 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::broadcastChannelEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::broadcastChannelEnabledKey(void)::key = WebKit::WebPreferencesKey::broadcastChannelEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::broadcastChannelEnabledKey(void)::key, &v272))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::broadcastChannelEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::broadcastChannelEnabledKey(void)::key = WebKit::WebPreferencesKey::broadcastChannelEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::broadcastChannelEnabledKey(void)::key, v272);
    }

    v271 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::css3DTransformBackfaceVisibilityInteroperabilityEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::css3DTransformBackfaceVisibilityInteroperabilityEnabledKey(void)::key = WebKit::WebPreferencesKey::css3DTransformBackfaceVisibilityInteroperabilityEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::css3DTransformBackfaceVisibilityInteroperabilityEnabledKey(void)::key, &v271))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::css3DTransformBackfaceVisibilityInteroperabilityEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::css3DTransformBackfaceVisibilityInteroperabilityEnabledKey(void)::key = WebKit::WebPreferencesKey::css3DTransformBackfaceVisibilityInteroperabilityEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::css3DTransformBackfaceVisibilityInteroperabilityEnabledKey(void)::key, v271);
    }

    v270 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::accentColorEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::accentColorEnabledKey(void)::key = WebKit::WebPreferencesKey::accentColorEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::accentColorEnabledKey(void)::key, &v270))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::accentColorEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::accentColorEnabledKey(void)::key = WebKit::WebPreferencesKey::accentColorEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::accentColorEnabledKey(void)::key, v270);
    }

    v269 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cssAnchorPositioningEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::cssAnchorPositioningEnabledKey(void)::key = WebKit::WebPreferencesKey::cssAnchorPositioningEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::cssAnchorPositioningEnabledKey(void)::key, &v269))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cssAnchorPositioningEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::cssAnchorPositioningEnabledKey(void)::key = WebKit::WebPreferencesKey::cssAnchorPositioningEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::cssAnchorPositioningEnabledKey(void)::key, v269);
    }

    v268 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::devolvableWidgetsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::devolvableWidgetsEnabledKey(void)::key = WebKit::WebPreferencesKey::devolvableWidgetsEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::devolvableWidgetsEnabledKey(void)::key, &v268))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::devolvableWidgetsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::devolvableWidgetsEnabledKey(void)::key = WebKit::WebPreferencesKey::devolvableWidgetsEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::devolvableWidgetsEnabledKey(void)::key, v268);
    }

    v267 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::masonryEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::masonryEnabledKey(void)::key = WebKit::WebPreferencesKey::masonryEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::masonryEnabledKey(void)::key, &v267))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::masonryEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::masonryEnabledKey(void)::key = WebKit::WebPreferencesKey::masonryEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::masonryEnabledKey(void)::key, v267);
    }

    v266 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::overscrollBehaviorEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::overscrollBehaviorEnabledKey(void)::key = WebKit::WebPreferencesKey::overscrollBehaviorEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::overscrollBehaviorEnabledKey(void)::key, &v266))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::overscrollBehaviorEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::overscrollBehaviorEnabledKey(void)::key = WebKit::WebPreferencesKey::overscrollBehaviorEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::overscrollBehaviorEnabledKey(void)::key, v266);
    }

    v265 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cssTreeCountingFunctionsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::cssTreeCountingFunctionsEnabledKey(void)::key = WebKit::WebPreferencesKey::cssTreeCountingFunctionsEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::cssTreeCountingFunctionsEnabledKey(void)::key, &v265))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cssTreeCountingFunctionsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::cssTreeCountingFunctionsEnabledKey(void)::key = WebKit::WebPreferencesKey::cssTreeCountingFunctionsEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::cssTreeCountingFunctionsEnabledKey(void)::key, v265);
    }

    v264 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cssUnprefixedBackdropFilterEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::cssUnprefixedBackdropFilterEnabledKey(void)::key = WebKit::WebPreferencesKey::cssUnprefixedBackdropFilterEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::cssUnprefixedBackdropFilterEnabledKey(void)::key, &v264))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cssUnprefixedBackdropFilterEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::cssUnprefixedBackdropFilterEnabledKey(void)::key = WebKit::WebPreferencesKey::cssUnprefixedBackdropFilterEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::cssUnprefixedBackdropFilterEnabledKey(void)::key, v264);
    }

    v263 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cssAxisRelativePositionKeywordsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::cssAxisRelativePositionKeywordsEnabledKey(void)::key = WebKit::WebPreferencesKey::cssAxisRelativePositionKeywordsEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::cssAxisRelativePositionKeywordsEnabledKey(void)::key, &v263))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cssAxisRelativePositionKeywordsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::cssAxisRelativePositionKeywordsEnabledKey(void)::key = WebKit::WebPreferencesKey::cssAxisRelativePositionKeywordsEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::cssAxisRelativePositionKeywordsEnabledKey(void)::key, v263);
    }

    v262 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cssBackgroundClipBorderAreaEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::cssBackgroundClipBorderAreaEnabledKey(void)::key = WebKit::WebPreferencesKey::cssBackgroundClipBorderAreaEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::cssBackgroundClipBorderAreaEnabledKey(void)::key, &v262))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cssBackgroundClipBorderAreaEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::cssBackgroundClipBorderAreaEnabledKey(void)::key = WebKit::WebPreferencesKey::cssBackgroundClipBorderAreaEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::cssBackgroundClipBorderAreaEnabledKey(void)::key, v262);
    }

    v261 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cssColorLayersEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::cssColorLayersEnabledKey(void)::key = WebKit::WebPreferencesKey::cssColorLayersEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::cssColorLayersEnabledKey(void)::key, &v261))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cssColorLayersEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::cssColorLayersEnabledKey(void)::key = WebKit::WebPreferencesKey::cssColorLayersEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::cssColorLayersEnabledKey(void)::key, v261);
    }

    v260 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cssContrastColorEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::cssContrastColorEnabledKey(void)::key = WebKit::WebPreferencesKey::cssContrastColorEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::cssContrastColorEnabledKey(void)::key, &v260))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cssContrastColorEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::cssContrastColorEnabledKey(void)::key = WebKit::WebPreferencesKey::cssContrastColorEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::cssContrastColorEnabledKey(void)::key, v260);
    }

    v259 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cssDPropertyEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::cssDPropertyEnabledKey(void)::key = WebKit::WebPreferencesKey::cssDPropertyEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::cssDPropertyEnabledKey(void)::key, &v259))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cssDPropertyEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::cssDPropertyEnabledKey(void)::key = WebKit::WebPreferencesKey::cssDPropertyEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::cssDPropertyEnabledKey(void)::key, v259);
    }

    v258 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cssFieldSizingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::cssFieldSizingEnabledKey(void)::key = WebKit::WebPreferencesKey::cssFieldSizingEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::cssFieldSizingEnabledKey(void)::key, &v258))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cssFieldSizingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::cssFieldSizingEnabledKey(void)::key = WebKit::WebPreferencesKey::cssFieldSizingEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::cssFieldSizingEnabledKey(void)::key, v258);
    }

    v257 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cssLineClampEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::cssLineClampEnabledKey(void)::key = WebKit::WebPreferencesKey::cssLineClampEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::cssLineClampEnabledKey(void)::key, &v257))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cssLineClampEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::cssLineClampEnabledKey(void)::key = WebKit::WebPreferencesKey::cssLineClampEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::cssLineClampEnabledKey(void)::key, v257);
    }

    v256 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cssProgressFunctionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::cssProgressFunctionEnabledKey(void)::key = WebKit::WebPreferencesKey::cssProgressFunctionEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::cssProgressFunctionEnabledKey(void)::key, &v256))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cssProgressFunctionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::cssProgressFunctionEnabledKey(void)::key = WebKit::WebPreferencesKey::cssProgressFunctionEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::cssProgressFunctionEnabledKey(void)::key, v256);
    }

    v255 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cssRandomFunctionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::cssRandomFunctionEnabledKey(void)::key = WebKit::WebPreferencesKey::cssRandomFunctionEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::cssRandomFunctionEnabledKey(void)::key, &v255))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cssRandomFunctionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::cssRandomFunctionEnabledKey(void)::key = WebKit::WebPreferencesKey::cssRandomFunctionEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::cssRandomFunctionEnabledKey(void)::key, v255);
    }

    v254 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cssRubyAlignEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::cssRubyAlignEnabledKey(void)::key = WebKit::WebPreferencesKey::cssRubyAlignEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::cssRubyAlignEnabledKey(void)::key, &v254))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cssRubyAlignEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::cssRubyAlignEnabledKey(void)::key = WebKit::WebPreferencesKey::cssRubyAlignEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::cssRubyAlignEnabledKey(void)::key, v254);
    }

    v253 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cssRubyOverhangEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::cssRubyOverhangEnabledKey(void)::key = WebKit::WebPreferencesKey::cssRubyOverhangEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::cssRubyOverhangEnabledKey(void)::key, &v253))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cssRubyOverhangEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::cssRubyOverhangEnabledKey(void)::key = WebKit::WebPreferencesKey::cssRubyOverhangEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::cssRubyOverhangEnabledKey(void)::key, v253);
    }

    v252 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cssScrollbarGutterEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::cssScrollbarGutterEnabledKey(void)::key = WebKit::WebPreferencesKey::cssScrollbarGutterEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::cssScrollbarGutterEnabledKey(void)::key, &v252))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cssScrollbarGutterEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::cssScrollbarGutterEnabledKey(void)::key = WebKit::WebPreferencesKey::cssScrollbarGutterEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::cssScrollbarGutterEnabledKey(void)::key, v252);
    }

    v251 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cssScrollbarWidthEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::cssScrollbarWidthEnabledKey(void)::key = WebKit::WebPreferencesKey::cssScrollbarWidthEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::cssScrollbarWidthEnabledKey(void)::key, &v251))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cssScrollbarWidthEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::cssScrollbarWidthEnabledKey(void)::key = WebKit::WebPreferencesKey::cssScrollbarWidthEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::cssScrollbarWidthEnabledKey(void)::key, v251);
    }

    v250 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cssShapeFunctionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::cssShapeFunctionEnabledKey(void)::key = WebKit::WebPreferencesKey::cssShapeFunctionEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::cssShapeFunctionEnabledKey(void)::key, &v250))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cssShapeFunctionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::cssShapeFunctionEnabledKey(void)::key = WebKit::WebPreferencesKey::cssShapeFunctionEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::cssShapeFunctionEnabledKey(void)::key, v250);
    }

    v249 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cssTextAutospaceEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::cssTextAutospaceEnabledKey(void)::key = WebKit::WebPreferencesKey::cssTextAutospaceEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::cssTextAutospaceEnabledKey(void)::key, &v249))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cssTextAutospaceEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::cssTextAutospaceEnabledKey(void)::key = WebKit::WebPreferencesKey::cssTextAutospaceEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::cssTextAutospaceEnabledKey(void)::key, v249);
    }

    v248 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cssTextBoxTrimEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::cssTextBoxTrimEnabledKey(void)::key = WebKit::WebPreferencesKey::cssTextBoxTrimEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::cssTextBoxTrimEnabledKey(void)::key, &v248))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cssTextBoxTrimEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::cssTextBoxTrimEnabledKey(void)::key = WebKit::WebPreferencesKey::cssTextBoxTrimEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::cssTextBoxTrimEnabledKey(void)::key, v248);
    }

    v247 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cssTextUnderlinePositionLeftRightEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::cssTextUnderlinePositionLeftRightEnabledKey(void)::key = WebKit::WebPreferencesKey::cssTextUnderlinePositionLeftRightEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::cssTextUnderlinePositionLeftRightEnabledKey(void)::key, &v247))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cssTextUnderlinePositionLeftRightEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::cssTextUnderlinePositionLeftRightEnabledKey(void)::key = WebKit::WebPreferencesKey::cssTextUnderlinePositionLeftRightEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::cssTextUnderlinePositionLeftRightEnabledKey(void)::key, v247);
    }

    v246 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cssTextWrapPrettyEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::cssTextWrapPrettyEnabledKey(void)::key = WebKit::WebPreferencesKey::cssTextWrapPrettyEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::cssTextWrapPrettyEnabledKey(void)::key, &v246))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cssTextWrapPrettyEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::cssTextWrapPrettyEnabledKey(void)::key = WebKit::WebPreferencesKey::cssTextWrapPrettyEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::cssTextWrapPrettyEnabledKey(void)::key, v246);
    }

    v245 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cacheAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::cacheAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::cacheAPIEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::cacheAPIEnabledKey(void)::key, &v245))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cacheAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::cacheAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::cacheAPIEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::cacheAPIEnabledKey(void)::key, v245);
    }

    v244 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::canvasColorSpaceEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::canvasColorSpaceEnabledKey(void)::key = WebKit::WebPreferencesKey::canvasColorSpaceEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::canvasColorSpaceEnabledKey(void)::key, &v244))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::canvasColorSpaceEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::canvasColorSpaceEnabledKey(void)::key = WebKit::WebPreferencesKey::canvasColorSpaceEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::canvasColorSpaceEnabledKey(void)::key, v244);
    }

    v243 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::canvasUsesAcceleratedDrawingKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::canvasUsesAcceleratedDrawingKey(void)::key = WebKit::WebPreferencesKey::canvasUsesAcceleratedDrawingKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::canvasUsesAcceleratedDrawingKey(void)::key, &v243))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::canvasUsesAcceleratedDrawingKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::canvasUsesAcceleratedDrawingKey(void)::key = WebKit::WebPreferencesKey::canvasUsesAcceleratedDrawingKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::canvasUsesAcceleratedDrawingKey(void)::key, v243);
    }

    v242 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::clearSiteDataHTTPHeaderEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::clearSiteDataHTTPHeaderEnabledKey(void)::key = WebKit::WebPreferencesKey::clearSiteDataHTTPHeaderEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::clearSiteDataHTTPHeaderEnabledKey(void)::key, &v242))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::clearSiteDataHTTPHeaderEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::clearSiteDataHTTPHeaderEnabledKey(void)::key = WebKit::WebPreferencesKey::clearSiteDataHTTPHeaderEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::clearSiteDataHTTPHeaderEnabledKey(void)::key, v242);
    }

    v241 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inputTypeColorEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::inputTypeColorEnabledKey(void)::key = WebKit::WebPreferencesKey::inputTypeColorEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::inputTypeColorEnabledKey(void)::key, &v241))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inputTypeColorEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::inputTypeColorEnabledKey(void)::key = WebKit::WebPreferencesKey::inputTypeColorEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::inputTypeColorEnabledKey(void)::key, v241);
    }

    v240 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::compressionStreamEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::compressionStreamEnabledKey(void)::key = WebKit::WebPreferencesKey::compressionStreamEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::compressionStreamEnabledKey(void)::key, &v240))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::compressionStreamEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::compressionStreamEnabledKey(void)::key = WebKit::WebPreferencesKey::compressionStreamEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::compressionStreamEnabledKey(void)::key, v240);
    }

    v239 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cookieStoreAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::cookieStoreAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::cookieStoreAPIEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::cookieStoreAPIEnabledKey(void)::key, &v239))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cookieStoreAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::cookieStoreAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::cookieStoreAPIEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::cookieStoreAPIEnabledKey(void)::key, v239);
    }

    v238 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cookieEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::cookieEnabledKey(void)::key = WebKit::WebPreferencesKey::cookieEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::cookieEnabledKey(void)::key, &v238))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cookieEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::cookieEnabledKey(void)::key = WebKit::WebPreferencesKey::cookieEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::cookieEnabledKey(void)::key, v238);
    }

    v237 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::crossDocumentViewTransitionsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::crossDocumentViewTransitionsEnabledKey(void)::key = WebKit::WebPreferencesKey::crossDocumentViewTransitionsEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::crossDocumentViewTransitionsEnabledKey(void)::key, &v237))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::crossDocumentViewTransitionsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::crossDocumentViewTransitionsEnabledKey(void)::key = WebKit::WebPreferencesKey::crossDocumentViewTransitionsEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::crossDocumentViewTransitionsEnabledKey(void)::key, v237);
    }

    v236 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::crossOriginEmbedderPolicyEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::crossOriginEmbedderPolicyEnabledKey(void)::key = WebKit::WebPreferencesKey::crossOriginEmbedderPolicyEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::crossOriginEmbedderPolicyEnabledKey(void)::key, &v236))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::crossOriginEmbedderPolicyEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::crossOriginEmbedderPolicyEnabledKey(void)::key = WebKit::WebPreferencesKey::crossOriginEmbedderPolicyEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::crossOriginEmbedderPolicyEnabledKey(void)::key, v236);
    }

    v235 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::crossOriginOpenerPolicyEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::crossOriginOpenerPolicyEnabledKey(void)::key = WebKit::WebPreferencesKey::crossOriginOpenerPolicyEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::crossOriginOpenerPolicyEnabledKey(void)::key, &v235))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::crossOriginOpenerPolicyEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::crossOriginOpenerPolicyEnabledKey(void)::key = WebKit::WebPreferencesKey::crossOriginOpenerPolicyEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::crossOriginOpenerPolicyEnabledKey(void)::key, v235);
    }

    v234 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::customPasteboardDataEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::customPasteboardDataEnabledKey(void)::key = WebKit::WebPreferencesKey::customPasteboardDataEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::customPasteboardDataEnabledKey(void)::key, &v234))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::customPasteboardDataEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::customPasteboardDataEnabledKey(void)::key = WebKit::WebPreferencesKey::customPasteboardDataEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::customPasteboardDataEnabledKey(void)::key, v234);
    }

    v233 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::domTimersThrottlingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::domTimersThrottlingEnabledKey(void)::key = WebKit::WebPreferencesKey::domTimersThrottlingEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::domTimersThrottlingEnabledKey(void)::key, &v233))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::domTimersThrottlingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::domTimersThrottlingEnabledKey(void)::key = WebKit::WebPreferencesKey::domTimersThrottlingEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::domTimersThrottlingEnabledKey(void)::key, v233);
    }

    v232 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::dataTransferItemsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::dataTransferItemsEnabledKey(void)::key = WebKit::WebPreferencesKey::dataTransferItemsEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::dataTransferItemsEnabledKey(void)::key, &v232))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::dataTransferItemsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::dataTransferItemsEnabledKey(void)::key = WebKit::WebPreferencesKey::dataTransferItemsEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::dataTransferItemsEnabledKey(void)::key, v232);
    }

    v231 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::dataListElementEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::dataListElementEnabledKey(void)::key = WebKit::WebPreferencesKey::dataListElementEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::dataListElementEnabledKey(void)::key, &v231))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::dataListElementEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::dataListElementEnabledKey(void)::key = WebKit::WebPreferencesKey::dataListElementEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::dataListElementEnabledKey(void)::key, v231);
    }

    v230 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inputTypeDateEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::inputTypeDateEnabledKey(void)::key = WebKit::WebPreferencesKey::inputTypeDateEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::inputTypeDateEnabledKey(void)::key, &v230))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inputTypeDateEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::inputTypeDateEnabledKey(void)::key = WebKit::WebPreferencesKey::inputTypeDateEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::inputTypeDateEnabledKey(void)::key, v230);
    }

    v229 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::dateTimeInputsEditableComponentsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::dateTimeInputsEditableComponentsEnabledKey(void)::key = WebKit::WebPreferencesKey::dateTimeInputsEditableComponentsEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::dateTimeInputsEditableComponentsEnabledKey(void)::key, &v229))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::dateTimeInputsEditableComponentsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::dateTimeInputsEditableComponentsEnabledKey(void)::key = WebKit::WebPreferencesKey::dateTimeInputsEditableComponentsEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::dateTimeInputsEditableComponentsEnabledKey(void)::key, v229);
    }

    v228 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::declarativeWebPushKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::declarativeWebPushKey(void)::key = WebKit::WebPreferencesKey::declarativeWebPushKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::declarativeWebPushKey(void)::key, &v228))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::declarativeWebPushKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::declarativeWebPushKey(void)::key = WebKit::WebPreferencesKey::declarativeWebPushKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::declarativeWebPushKey(void)::key, v228);
    }

    v227 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldDeferAsynchronousScriptsUntilAfterDocumentLoadOrFirstPaintKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::shouldDeferAsynchronousScriptsUntilAfterDocumentLoadOrFirstPaintKey(void)::key = WebKit::WebPreferencesKey::shouldDeferAsynchronousScriptsUntilAfterDocumentLoadOrFirstPaintKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::shouldDeferAsynchronousScriptsUntilAfterDocumentLoadOrFirstPaintKey(void)::key, &v227))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldDeferAsynchronousScriptsUntilAfterDocumentLoadOrFirstPaintKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::shouldDeferAsynchronousScriptsUntilAfterDocumentLoadOrFirstPaintKey(void)::key = WebKit::WebPreferencesKey::shouldDeferAsynchronousScriptsUntilAfterDocumentLoadOrFirstPaintKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::shouldDeferAsynchronousScriptsUntilAfterDocumentLoadOrFirstPaintKey(void)::key, v227);
    }

    v226 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::detachableMediaSourceEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::detachableMediaSourceEnabledKey(void)::key = WebKit::WebPreferencesKey::detachableMediaSourceEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::detachableMediaSourceEnabledKey(void)::key, &v226))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::detachableMediaSourceEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::detachableMediaSourceEnabledKey(void)::key = WebKit::WebPreferencesKey::detachableMediaSourceEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::detachableMediaSourceEnabledKey(void)::key, v226);
    }

    v225 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::uAVisualTransitionDetectionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::uAVisualTransitionDetectionEnabledKey(void)::key = WebKit::WebPreferencesKey::uAVisualTransitionDetectionEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::uAVisualTransitionDetectionEnabledKey(void)::key, &v225))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::uAVisualTransitionDetectionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::uAVisualTransitionDetectionEnabledKey(void)::key = WebKit::WebPreferencesKey::uAVisualTransitionDetectionEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::uAVisualTransitionDetectionEnabledKey(void)::key, v225);
    }

    v224 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::diagnosticLoggingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::diagnosticLoggingEnabledKey(void)::key = WebKit::WebPreferencesKey::diagnosticLoggingEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::diagnosticLoggingEnabledKey(void)::key, &v224))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::diagnosticLoggingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::diagnosticLoggingEnabledKey(void)::key = WebKit::WebPreferencesKey::diagnosticLoggingEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::diagnosticLoggingEnabledKey(void)::key, v224);
    }

    v223 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::digitalCredentialsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::digitalCredentialsEnabledKey(void)::key = WebKit::WebPreferencesKey::digitalCredentialsEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::digitalCredentialsEnabledKey(void)::key, &v223))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::digitalCredentialsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::digitalCredentialsEnabledKey(void)::key = WebKit::WebPreferencesKey::digitalCredentialsEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::digitalCredentialsEnabledKey(void)::key, v223);
    }

    v222 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::directoryUploadEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::directoryUploadEnabledKey(void)::key = WebKit::WebPreferencesKey::directoryUploadEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::directoryUploadEnabledKey(void)::key, &v222))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::directoryUploadEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::directoryUploadEnabledKey(void)::key = WebKit::WebPreferencesKey::directoryUploadEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::directoryUploadEnabledKey(void)::key, v222);
    }

    v221 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::isThirdPartyCookieBlockingDisabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::isThirdPartyCookieBlockingDisabledKey(void)::key = WebKit::WebPreferencesKey::isThirdPartyCookieBlockingDisabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::isThirdPartyCookieBlockingDisabledKey(void)::key, &v221))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::isThirdPartyCookieBlockingDisabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::isThirdPartyCookieBlockingDisabledKey(void)::key = WebKit::WebPreferencesKey::isThirdPartyCookieBlockingDisabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::isThirdPartyCookieBlockingDisabledKey(void)::key, v221);
    }

    v220 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::isFirstPartyWebsiteDataRemovalDisabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::isFirstPartyWebsiteDataRemovalDisabledKey(void)::key = WebKit::WebPreferencesKey::isFirstPartyWebsiteDataRemovalDisabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::isFirstPartyWebsiteDataRemovalDisabledKey(void)::key, &v220))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::isFirstPartyWebsiteDataRemovalDisabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::isFirstPartyWebsiteDataRemovalDisabledKey(void)::key = WebKit::WebPreferencesKey::isFirstPartyWebsiteDataRemovalDisabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::isFirstPartyWebsiteDataRemovalDisabledKey(void)::key, v220);
    }

    v219 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::embedElementEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::embedElementEnabledKey(void)::key = WebKit::WebPreferencesKey::embedElementEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::embedElementEnabledKey(void)::key, &v219))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::embedElementEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::embedElementEnabledKey(void)::key = WebKit::WebPreferencesKey::embedElementEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::embedElementEnabledKey(void)::key, v219);
    }

    v218 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::canvasFingerprintingQuirkEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::canvasFingerprintingQuirkEnabledKey(void)::key = WebKit::WebPreferencesKey::canvasFingerprintingQuirkEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::canvasFingerprintingQuirkEnabledKey(void)::key, &v218))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::canvasFingerprintingQuirkEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::canvasFingerprintingQuirkEnabledKey(void)::key = WebKit::WebPreferencesKey::canvasFingerprintingQuirkEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::canvasFingerprintingQuirkEnabledKey(void)::key, v218);
    }

    v217 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::enableElementCurrentCSSZoomKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::enableElementCurrentCSSZoomKey(void)::key = WebKit::WebPreferencesKey::enableElementCurrentCSSZoomKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::enableElementCurrentCSSZoomKey(void)::key, &v217))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::enableElementCurrentCSSZoomKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::enableElementCurrentCSSZoomKey(void)::key = WebKit::WebPreferencesKey::enableElementCurrentCSSZoomKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::enableElementCurrentCSSZoomKey(void)::key, v217);
    }

    v216 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::legacyEncryptedMediaAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::legacyEncryptedMediaAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::legacyEncryptedMediaAPIEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::legacyEncryptedMediaAPIEnabledKey(void)::key, &v216))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::legacyEncryptedMediaAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::legacyEncryptedMediaAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::legacyEncryptedMediaAPIEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::legacyEncryptedMediaAPIEnabledKey(void)::key, v216);
    }

    v215 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::modelProcessEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::modelProcessEnabledKey(void)::key = WebKit::WebPreferencesKey::modelProcessEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::modelProcessEnabledKey(void)::key, &v215))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::modelProcessEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::modelProcessEnabledKey(void)::key = WebKit::WebPreferencesKey::modelProcessEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::modelProcessEnabledKey(void)::key, v215);
    }

    v214 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::auxclickEventEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::auxclickEventEnabledKey(void)::key = WebKit::WebPreferencesKey::auxclickEventEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::auxclickEventEnabledKey(void)::key, &v214))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::auxclickEventEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::auxclickEventEnabledKey(void)::key = WebKit::WebPreferencesKey::auxclickEventEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::auxclickEventEnabledKey(void)::key, v214);
    }

    v213 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::blobFileAccessEnforcementEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::blobFileAccessEnforcementEnabledKey(void)::key = WebKit::WebPreferencesKey::blobFileAccessEnforcementEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::blobFileAccessEnforcementEnabledKey(void)::key, &v213))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::blobFileAccessEnforcementEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::blobFileAccessEnforcementEnabledKey(void)::key = WebKit::WebPreferencesKey::blobFileAccessEnforcementEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::blobFileAccessEnforcementEnabledKey(void)::key, v213);
    }

    v212 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaSessionCoordinatorEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::mediaSessionCoordinatorEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaSessionCoordinatorEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::mediaSessionCoordinatorEnabledKey(void)::key, &v212))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaSessionCoordinatorEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::mediaSessionCoordinatorEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaSessionCoordinatorEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::mediaSessionCoordinatorEnabledKey(void)::key, v212);
    }

    v211 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaSessionPlaylistEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::mediaSessionPlaylistEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaSessionPlaylistEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::mediaSessionPlaylistEnabledKey(void)::key, &v211))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaSessionPlaylistEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::mediaSessionPlaylistEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaSessionPlaylistEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::mediaSessionPlaylistEnabledKey(void)::key, v211);
    }

    v210 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::ftpEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::ftpEnabledKey(void)::key = WebKit::WebPreferencesKey::ftpEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::ftpEnabledKey(void)::key, &v210))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::ftpEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::ftpEnabledKey(void)::key = WebKit::WebPreferencesKey::ftpEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::ftpEnabledKey(void)::key, v210);
    }

    v209 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::fileSystemEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::fileSystemEnabledKey(void)::key = WebKit::WebPreferencesKey::fileSystemEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::fileSystemEnabledKey(void)::key, &v209))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::fileSystemEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::fileSystemEnabledKey(void)::key = WebKit::WebPreferencesKey::fileSystemEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::fileSystemEnabledKey(void)::key, v209);
    }

    v208 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::fileSystemWritableStreamEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::fileSystemWritableStreamEnabledKey(void)::key = WebKit::WebPreferencesKey::fileSystemWritableStreamEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::fileSystemWritableStreamEnabledKey(void)::key, &v208))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::fileSystemWritableStreamEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::fileSystemWritableStreamEnabledKey(void)::key = WebKit::WebPreferencesKey::fileSystemWritableStreamEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::fileSystemWritableStreamEnabledKey(void)::key, v208);
    }

    v207 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::fileReaderAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::fileReaderAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::fileReaderAPIEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::fileReaderAPIEnabledKey(void)::key, &v207))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::fileReaderAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::fileReaderAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::fileReaderAPIEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::fileReaderAPIEnabledKey(void)::key, v207);
    }

    v206 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::filterLinkDecorationByDefaultEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::filterLinkDecorationByDefaultEnabledKey(void)::key = WebKit::WebPreferencesKey::filterLinkDecorationByDefaultEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::filterLinkDecorationByDefaultEnabledKey(void)::key, &v206))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::filterLinkDecorationByDefaultEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::filterLinkDecorationByDefaultEnabledKey(void)::key = WebKit::WebPreferencesKey::filterLinkDecorationByDefaultEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::filterLinkDecorationByDefaultEnabledKey(void)::key, v206);
    }

    v205 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::fullScreenEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::fullScreenEnabledKey(void)::key = WebKit::WebPreferencesKey::fullScreenEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::fullScreenEnabledKey(void)::key, &v205))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::fullScreenEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::fullScreenEnabledKey(void)::key = WebKit::WebPreferencesKey::fullScreenEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::fullScreenEnabledKey(void)::key, v205);
    }

    v204 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::useGPUProcessForCanvasRenderingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::useGPUProcessForCanvasRenderingEnabledKey(void)::key = WebKit::WebPreferencesKey::useGPUProcessForCanvasRenderingEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::useGPUProcessForCanvasRenderingEnabledKey(void)::key, &v204))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::useGPUProcessForCanvasRenderingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::useGPUProcessForCanvasRenderingEnabledKey(void)::key = WebKit::WebPreferencesKey::useGPUProcessForCanvasRenderingEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::useGPUProcessForCanvasRenderingEnabledKey(void)::key, v204);
    }

    v203 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::useGPUProcessForDOMRenderingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::useGPUProcessForDOMRenderingEnabledKey(void)::key = WebKit::WebPreferencesKey::useGPUProcessForDOMRenderingEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::useGPUProcessForDOMRenderingEnabledKey(void)::key, &v203))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::useGPUProcessForDOMRenderingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::useGPUProcessForDOMRenderingEnabledKey(void)::key = WebKit::WebPreferencesKey::useGPUProcessForDOMRenderingEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::useGPUProcessForDOMRenderingEnabledKey(void)::key, v203);
    }

    v202 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::useGPUProcessForMediaEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::useGPUProcessForMediaEnabledKey(void)::key = WebKit::WebPreferencesKey::useGPUProcessForMediaEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::useGPUProcessForMediaEnabledKey(void)::key, &v202))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::useGPUProcessForMediaEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::useGPUProcessForMediaEnabledKey(void)::key = WebKit::WebPreferencesKey::useGPUProcessForMediaEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::useGPUProcessForMediaEnabledKey(void)::key, v202);
    }

    v201 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::useGPUProcessForDisplayCaptureKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::useGPUProcessForDisplayCaptureKey(void)::key = WebKit::WebPreferencesKey::useGPUProcessForDisplayCaptureKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::useGPUProcessForDisplayCaptureKey(void)::key, &v201))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::useGPUProcessForDisplayCaptureKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::useGPUProcessForDisplayCaptureKey(void)::key = WebKit::WebPreferencesKey::useGPUProcessForDisplayCaptureKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::useGPUProcessForDisplayCaptureKey(void)::key, v201);
    }

    v200 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webRTCPlatformCodecsInGPUProcessEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webRTCPlatformCodecsInGPUProcessEnabledKey(void)::key = WebKit::WebPreferencesKey::webRTCPlatformCodecsInGPUProcessEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::webRTCPlatformCodecsInGPUProcessEnabledKey(void)::key, &v200))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webRTCPlatformCodecsInGPUProcessEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::webRTCPlatformCodecsInGPUProcessEnabledKey(void)::key = WebKit::WebPreferencesKey::webRTCPlatformCodecsInGPUProcessEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::webRTCPlatformCodecsInGPUProcessEnabledKey(void)::key, v200);
    }

    v199 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::gamepadVibrationActuatorEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::gamepadVibrationActuatorEnabledKey(void)::key = WebKit::WebPreferencesKey::gamepadVibrationActuatorEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::gamepadVibrationActuatorEnabledKey(void)::key, &v199))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::gamepadVibrationActuatorEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::gamepadVibrationActuatorEnabledKey(void)::key = WebKit::WebPreferencesKey::gamepadVibrationActuatorEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::gamepadVibrationActuatorEnabledKey(void)::key, v199);
    }

    v198 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::gamepadsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::gamepadsEnabledKey(void)::key = WebKit::WebPreferencesKey::gamepadsEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::gamepadsEnabledKey(void)::key, &v198))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::gamepadsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::gamepadsEnabledKey(void)::key = WebKit::WebPreferencesKey::gamepadsEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::gamepadsEnabledKey(void)::key, v198);
    }

    v197 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::genericCueAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::genericCueAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::genericCueAPIEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::genericCueAPIEnabledKey(void)::key, &v197))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::genericCueAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::genericCueAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::genericCueAPIEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::genericCueAPIEnabledKey(void)::key, v197);
    }

    v196 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::geolocationAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::geolocationAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::geolocationAPIEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::geolocationAPIEnabledKey(void)::key, &v196))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::geolocationAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::geolocationAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::geolocationAPIEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::geolocationAPIEnabledKey(void)::key, v196);
    }

    v195 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::graphicsContextFiltersEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::graphicsContextFiltersEnabledKey(void)::key = WebKit::WebPreferencesKey::graphicsContextFiltersEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::graphicsContextFiltersEnabledKey(void)::key, &v195))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::graphicsContextFiltersEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::graphicsContextFiltersEnabledKey(void)::key = WebKit::WebPreferencesKey::graphicsContextFiltersEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::graphicsContextFiltersEnabledKey(void)::key, v195);
    }

    v194 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::modelElementEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::modelElementEnabledKey(void)::key = WebKit::WebPreferencesKey::modelElementEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::modelElementEnabledKey(void)::key, &v194))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::modelElementEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::modelElementEnabledKey(void)::key = WebKit::WebPreferencesKey::modelElementEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::modelElementEnabledKey(void)::key, v194);
    }

    v193 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::interactiveFormValidationEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::interactiveFormValidationEnabledKey(void)::key = WebKit::WebPreferencesKey::interactiveFormValidationEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::interactiveFormValidationEnabledKey(void)::key, &v193))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::interactiveFormValidationEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::interactiveFormValidationEnabledKey(void)::key = WebKit::WebPreferencesKey::interactiveFormValidationEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::interactiveFormValidationEnabledKey(void)::key, v193);
    }

    v192 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::mediaEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::mediaEnabledKey(void)::key, &v192))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::mediaEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::mediaEnabledKey(void)::key, v192);
    }

    v191 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inputTypeColorEnhancementsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::inputTypeColorEnhancementsEnabledKey(void)::key = WebKit::WebPreferencesKey::inputTypeColorEnhancementsEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::inputTypeColorEnhancementsEnabledKey(void)::key, &v191))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inputTypeColorEnhancementsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::inputTypeColorEnhancementsEnabledKey(void)::key = WebKit::WebPreferencesKey::inputTypeColorEnhancementsEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::inputTypeColorEnhancementsEnabledKey(void)::key, v191);
    }

    v190 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::detailsAutoExpandEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::detailsAutoExpandEnabledKey(void)::key = WebKit::WebPreferencesKey::detailsAutoExpandEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::detailsAutoExpandEnabledKey(void)::key, &v190))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::detailsAutoExpandEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::detailsAutoExpandEnabledKey(void)::key = WebKit::WebPreferencesKey::detailsAutoExpandEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::detailsAutoExpandEnabledKey(void)::key, v190);
    }

    v189 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::commandAttributesEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::commandAttributesEnabledKey(void)::key = WebKit::WebPreferencesKey::commandAttributesEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::commandAttributesEnabledKey(void)::key, &v189))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::commandAttributesEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::commandAttributesEnabledKey(void)::key = WebKit::WebPreferencesKey::commandAttributesEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::commandAttributesEnabledKey(void)::key, v189);
    }

    v188 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::popoverAttributeEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::popoverAttributeEnabledKey(void)::key = WebKit::WebPreferencesKey::popoverAttributeEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::popoverAttributeEnabledKey(void)::key, &v188))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::popoverAttributeEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::popoverAttributeEnabledKey(void)::key = WebKit::WebPreferencesKey::popoverAttributeEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::popoverAttributeEnabledKey(void)::key, v188);
    }

    v187 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::switchControlEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::switchControlEnabledKey(void)::key = WebKit::WebPreferencesKey::switchControlEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::switchControlEnabledKey(void)::key, &v187))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::switchControlEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::switchControlEnabledKey(void)::key = WebKit::WebPreferencesKey::switchControlEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::switchControlEnabledKey(void)::key, v187);
    }

    v186 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::hiddenPageDOMTimerThrottlingAutoIncreasesKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::hiddenPageDOMTimerThrottlingAutoIncreasesKey(void)::key = WebKit::WebPreferencesKey::hiddenPageDOMTimerThrottlingAutoIncreasesKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::hiddenPageDOMTimerThrottlingAutoIncreasesKey(void)::key, &v186))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::hiddenPageDOMTimerThrottlingAutoIncreasesKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::hiddenPageDOMTimerThrottlingAutoIncreasesKey(void)::key = WebKit::WebPreferencesKey::hiddenPageDOMTimerThrottlingAutoIncreasesKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::hiddenPageDOMTimerThrottlingAutoIncreasesKey(void)::key, v186);
    }

    v185 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::hiddenPageDOMTimerThrottlingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::hiddenPageDOMTimerThrottlingEnabledKey(void)::key = WebKit::WebPreferencesKey::hiddenPageDOMTimerThrottlingEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::hiddenPageDOMTimerThrottlingEnabledKey(void)::key, &v185))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::hiddenPageDOMTimerThrottlingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::hiddenPageDOMTimerThrottlingEnabledKey(void)::key = WebKit::WebPreferencesKey::hiddenPageDOMTimerThrottlingEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::hiddenPageDOMTimerThrottlingEnabledKey(void)::key, v185);
    }

    v184 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::itpDebugModeEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::itpDebugModeEnabledKey(void)::key = WebKit::WebPreferencesKey::itpDebugModeEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::itpDebugModeEnabledKey(void)::key, &v184))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::itpDebugModeEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::itpDebugModeEnabledKey(void)::key = WebKit::WebPreferencesKey::itpDebugModeEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::itpDebugModeEnabledKey(void)::key, v184);
    }

    v183 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::textAutosizingUsesIdempotentModeKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::textAutosizingUsesIdempotentModeKey(void)::key = WebKit::WebPreferencesKey::textAutosizingUsesIdempotentModeKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::textAutosizingUsesIdempotentModeKey(void)::key, &v183))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::textAutosizingUsesIdempotentModeKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::textAutosizingUsesIdempotentModeKey(void)::key = WebKit::WebPreferencesKey::textAutosizingUsesIdempotentModeKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::textAutosizingUsesIdempotentModeKey(void)::key, v183);
    }

    v182 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::imageAnimationControlEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::imageAnimationControlEnabledKey(void)::key = WebKit::WebPreferencesKey::imageAnimationControlEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::imageAnimationControlEnabledKey(void)::key, &v182))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::imageAnimationControlEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::imageAnimationControlEnabledKey(void)::key = WebKit::WebPreferencesKey::imageAnimationControlEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::imageAnimationControlEnabledKey(void)::key, v182);
    }

    v181 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::imageCaptureEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::imageCaptureEnabledKey(void)::key = WebKit::WebPreferencesKey::imageCaptureEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::imageCaptureEnabledKey(void)::key, &v181))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::imageCaptureEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::imageCaptureEnabledKey(void)::key = WebKit::WebPreferencesKey::imageCaptureEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::imageCaptureEnabledKey(void)::key, v181);
    }

    v180 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::indexedDBAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::indexedDBAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::indexedDBAPIEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::indexedDBAPIEnabledKey(void)::key, &v180))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::indexedDBAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::indexedDBAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::indexedDBAPIEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::indexedDBAPIEnabledKey(void)::key, v180);
    }

    v179 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::isAccessibilityIsolatedTreeEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::isAccessibilityIsolatedTreeEnabledKey(void)::key = WebKit::WebPreferencesKey::isAccessibilityIsolatedTreeEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::isAccessibilityIsolatedTreeEnabledKey(void)::key, &v179))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::isAccessibilityIsolatedTreeEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::isAccessibilityIsolatedTreeEnabledKey(void)::key = WebKit::WebPreferencesKey::isAccessibilityIsolatedTreeEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::isAccessibilityIsolatedTreeEnabledKey(void)::key, v179);
    }

    v178 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::javaScriptEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::javaScriptEnabledKey(void)::key = WebKit::WebPreferencesKey::javaScriptEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::javaScriptEnabledKey(void)::key, &v178))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::javaScriptEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::javaScriptEnabledKey(void)::key = WebKit::WebPreferencesKey::javaScriptEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::javaScriptEnabledKey(void)::key, v178);
    }

    v177 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::lazyIframeLoadingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::lazyIframeLoadingEnabledKey(void)::key = WebKit::WebPreferencesKey::lazyIframeLoadingEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::lazyIframeLoadingEnabledKey(void)::key, &v177))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::lazyIframeLoadingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::lazyIframeLoadingEnabledKey(void)::key = WebKit::WebPreferencesKey::lazyIframeLoadingEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::lazyIframeLoadingEnabledKey(void)::key, v177);
    }

    v176 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::lazyImageLoadingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::lazyImageLoadingEnabledKey(void)::key = WebKit::WebPreferencesKey::lazyImageLoadingEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::lazyImageLoadingEnabledKey(void)::key, &v176))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::lazyImageLoadingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::lazyImageLoadingEnabledKey(void)::key = WebKit::WebPreferencesKey::lazyImageLoadingEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::lazyImageLoadingEnabledKey(void)::key, v176);
    }

    v175 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::showModalDialogEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::showModalDialogEnabledKey(void)::key = WebKit::WebPreferencesKey::showModalDialogEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::showModalDialogEnabledKey(void)::key, &v175))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::showModalDialogEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::showModalDialogEnabledKey(void)::key = WebKit::WebPreferencesKey::showModalDialogEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::showModalDialogEnabledKey(void)::key, v175);
    }

    v174 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::limitedMatroskaSupportEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::limitedMatroskaSupportEnabledKey(void)::key = WebKit::WebPreferencesKey::limitedMatroskaSupportEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::limitedMatroskaSupportEnabledKey(void)::key, &v174))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::limitedMatroskaSupportEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::limitedMatroskaSupportEnabledKey(void)::key = WebKit::WebPreferencesKey::limitedMatroskaSupportEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::limitedMatroskaSupportEnabledKey(void)::key, v174);
    }

    v173 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::linkPreconnectEarlyHintsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::linkPreconnectEarlyHintsEnabledKey(void)::key = WebKit::WebPreferencesKey::linkPreconnectEarlyHintsEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::linkPreconnectEarlyHintsEnabledKey(void)::key, &v173))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::linkPreconnectEarlyHintsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::linkPreconnectEarlyHintsEnabledKey(void)::key = WebKit::WebPreferencesKey::linkPreconnectEarlyHintsEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::linkPreconnectEarlyHintsEnabledKey(void)::key, v173);
    }

    v172 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::loadWebArchiveWithEphemeralStorageEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::loadWebArchiveWithEphemeralStorageEnabledKey(void)::key = WebKit::WebPreferencesKey::loadWebArchiveWithEphemeralStorageEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::loadWebArchiveWithEphemeralStorageEnabledKey(void)::key, &v172))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::loadWebArchiveWithEphemeralStorageEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::loadWebArchiveWithEphemeralStorageEnabledKey(void)::key = WebKit::WebPreferencesKey::loadWebArchiveWithEphemeralStorageEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::loadWebArchiveWithEphemeralStorageEnabledKey(void)::key, v172);
    }

    v171 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::localStorageEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::localStorageEnabledKey(void)::key = WebKit::WebPreferencesKey::localStorageEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::localStorageEnabledKey(void)::key, &v171))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::localStorageEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::localStorageEnabledKey(void)::key = WebKit::WebPreferencesKey::localStorageEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::localStorageEnabledKey(void)::key, v171);
    }

    v170 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::lockdownFontParserEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::lockdownFontParserEnabledKey(void)::key = WebKit::WebPreferencesKey::lockdownFontParserEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::lockdownFontParserEnabledKey(void)::key, &v170))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::lockdownFontParserEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::lockdownFontParserEnabledKey(void)::key = WebKit::WebPreferencesKey::lockdownFontParserEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::lockdownFontParserEnabledKey(void)::key, v170);
    }

    v169 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mainContentUserGestureOverrideEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::mainContentUserGestureOverrideEnabledKey(void)::key = WebKit::WebPreferencesKey::mainContentUserGestureOverrideEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::mainContentUserGestureOverrideEnabledKey(void)::key, &v169))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mainContentUserGestureOverrideEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::mainContentUserGestureOverrideEnabledKey(void)::key = WebKit::WebPreferencesKey::mainContentUserGestureOverrideEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::mainContentUserGestureOverrideEnabledKey(void)::key, v169);
    }

    v168 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::managedMediaSourceEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::managedMediaSourceEnabledKey(void)::key = WebKit::WebPreferencesKey::managedMediaSourceEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::managedMediaSourceEnabledKey(void)::key, &v168))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::managedMediaSourceEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::managedMediaSourceEnabledKey(void)::key = WebKit::WebPreferencesKey::managedMediaSourceEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::managedMediaSourceEnabledKey(void)::key, v168);
    }

    v167 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::managedMediaSourceNeedsAirPlayKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::managedMediaSourceNeedsAirPlayKey(void)::key = WebKit::WebPreferencesKey::managedMediaSourceNeedsAirPlayKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::managedMediaSourceNeedsAirPlayKey(void)::key, &v167))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::managedMediaSourceNeedsAirPlayKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::managedMediaSourceNeedsAirPlayKey(void)::key = WebKit::WebPreferencesKey::managedMediaSourceNeedsAirPlayKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::managedMediaSourceNeedsAirPlayKey(void)::key, v167);
    }

    v166 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaCapabilitiesExtensionsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::mediaCapabilitiesExtensionsEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaCapabilitiesExtensionsEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::mediaCapabilitiesExtensionsEnabledKey(void)::key, &v166))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaCapabilitiesExtensionsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::mediaCapabilitiesExtensionsEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaCapabilitiesExtensionsEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::mediaCapabilitiesExtensionsEnabledKey(void)::key, v166);
    }

    v165 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaCapabilityGrantsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::mediaCapabilityGrantsEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaCapabilityGrantsEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::mediaCapabilityGrantsEnabledKey(void)::key, &v165))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaCapabilityGrantsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::mediaCapabilityGrantsEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaCapabilityGrantsEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::mediaCapabilityGrantsEnabledKey(void)::key, v165);
    }

    v164 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaPlaybackEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::mediaPlaybackEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaPlaybackEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::mediaPlaybackEnabledKey(void)::key, &v164))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaPlaybackEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::mediaPlaybackEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaPlaybackEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::mediaPlaybackEnabledKey(void)::key, v164);
    }

    v163 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaSessionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::mediaSessionEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaSessionEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::mediaSessionEnabledKey(void)::key, &v163))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaSessionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::mediaSessionEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaSessionEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::mediaSessionEnabledKey(void)::key, v163);
    }

    v162 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaSourceEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::mediaSourceEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaSourceEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::mediaSourceEnabledKey(void)::key, &v162))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaSourceEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::mediaSourceEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaSourceEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::mediaSourceEnabledKey(void)::key, v162);
    }

    v161 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaDevicesEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::mediaDevicesEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaDevicesEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::mediaDevicesEnabledKey(void)::key, &v161))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaDevicesEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::mediaDevicesEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaDevicesEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::mediaDevicesEnabledKey(void)::key, v161);
    }

    v160 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaRecorderEnabledWebMKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::mediaRecorderEnabledWebMKey(void)::key = WebKit::WebPreferencesKey::mediaRecorderEnabledWebMKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::mediaRecorderEnabledWebMKey(void)::key, &v160))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaRecorderEnabledWebMKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::mediaRecorderEnabledWebMKey(void)::key = WebKit::WebPreferencesKey::mediaRecorderEnabledWebMKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::mediaRecorderEnabledWebMKey(void)::key, v160);
    }

    v159 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaRecorderEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::mediaRecorderEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaRecorderEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::mediaRecorderEnabledKey(void)::key, &v159))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaRecorderEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::mediaRecorderEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaRecorderEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::mediaRecorderEnabledKey(void)::key, v159);
    }

    v158 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaSessionCaptureToggleAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::mediaSessionCaptureToggleAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaSessionCaptureToggleAPIEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::mediaSessionCaptureToggleAPIEnabledKey(void)::key, &v158))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaSessionCaptureToggleAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::mediaSessionCaptureToggleAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaSessionCaptureToggleAPIEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::mediaSessionCaptureToggleAPIEnabledKey(void)::key, v158);
    }

    v157 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaSourceInWorkerEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::mediaSourceInWorkerEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaSourceInWorkerEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::mediaSourceInWorkerEnabledKey(void)::key, &v157))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaSourceInWorkerEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::mediaSourceInWorkerEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaSourceInWorkerEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::mediaSourceInWorkerEnabledKey(void)::key, v157);
    }

    v156 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaSourcePrefersDecompressionSessionKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::mediaSourcePrefersDecompressionSessionKey(void)::key = WebKit::WebPreferencesKey::mediaSourcePrefersDecompressionSessionKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::mediaSourcePrefersDecompressionSessionKey(void)::key, &v156))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaSourcePrefersDecompressionSessionKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::mediaSourcePrefersDecompressionSessionKey(void)::key = WebKit::WebPreferencesKey::mediaSourcePrefersDecompressionSessionKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::mediaSourcePrefersDecompressionSessionKey(void)::key, v156);
    }

    v155 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaStreamTrackProcessingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::mediaStreamTrackProcessingEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaStreamTrackProcessingEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::mediaStreamTrackProcessingEnabledKey(void)::key, &v155))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaStreamTrackProcessingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::mediaStreamTrackProcessingEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaStreamTrackProcessingEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::mediaStreamTrackProcessingEnabledKey(void)::key, v155);
    }

    v154 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inputTypeMonthEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::inputTypeMonthEnabledKey(void)::key = WebKit::WebPreferencesKey::inputTypeMonthEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::inputTypeMonthEnabledKey(void)::key, &v154))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inputTypeMonthEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::inputTypeMonthEnabledKey(void)::key = WebKit::WebPreferencesKey::inputTypeMonthEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::inputTypeMonthEnabledKey(void)::key, v154);
    }

    v153 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::needsSiteSpecificQuirksKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::needsSiteSpecificQuirksKey(void)::key = WebKit::WebPreferencesKey::needsSiteSpecificQuirksKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::needsSiteSpecificQuirksKey(void)::key, &v153))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::needsSiteSpecificQuirksKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::needsSiteSpecificQuirksKey(void)::key = WebKit::WebPreferencesKey::needsSiteSpecificQuirksKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::needsSiteSpecificQuirksKey(void)::key, v153);
    }

    v152 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::needsStorageAccessFromFileURLsQuirkKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::needsStorageAccessFromFileURLsQuirkKey(void)::key = WebKit::WebPreferencesKey::needsStorageAccessFromFileURLsQuirkKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::needsStorageAccessFromFileURLsQuirkKey(void)::key, &v152))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::needsStorageAccessFromFileURLsQuirkKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::needsStorageAccessFromFileURLsQuirkKey(void)::key = WebKit::WebPreferencesKey::needsStorageAccessFromFileURLsQuirkKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::needsStorageAccessFromFileURLsQuirkKey(void)::key, v152);
    }

    v151 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::flexFormattingContextIntegrationEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::flexFormattingContextIntegrationEnabledKey(void)::key = WebKit::WebPreferencesKey::flexFormattingContextIntegrationEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::flexFormattingContextIntegrationEnabledKey(void)::key, &v151))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::flexFormattingContextIntegrationEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::flexFormattingContextIntegrationEnabledKey(void)::key = WebKit::WebPreferencesKey::flexFormattingContextIntegrationEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::flexFormattingContextIntegrationEnabledKey(void)::key, v151);
    }

    v150 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::notificationsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::notificationsEnabledKey(void)::key = WebKit::WebPreferencesKey::notificationsEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::notificationsEnabledKey(void)::key, &v150))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::notificationsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::notificationsEnabledKey(void)::key = WebKit::WebPreferencesKey::notificationsEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::notificationsEnabledKey(void)::key, v150);
    }

    v149 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::accessibilityThreadTextApisEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::accessibilityThreadTextApisEnabledKey(void)::key = WebKit::WebPreferencesKey::accessibilityThreadTextApisEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::accessibilityThreadTextApisEnabledKey(void)::key, &v149))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::accessibilityThreadTextApisEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::accessibilityThreadTextApisEnabledKey(void)::key = WebKit::WebPreferencesKey::accessibilityThreadTextApisEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::accessibilityThreadTextApisEnabledKey(void)::key, v149);
    }

    v148 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::offscreenCanvasInWorkersEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::offscreenCanvasInWorkersEnabledKey(void)::key = WebKit::WebPreferencesKey::offscreenCanvasInWorkersEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::offscreenCanvasInWorkersEnabledKey(void)::key, &v148))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::offscreenCanvasInWorkersEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::offscreenCanvasInWorkersEnabledKey(void)::key = WebKit::WebPreferencesKey::offscreenCanvasInWorkersEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::offscreenCanvasInWorkersEnabledKey(void)::key, v148);
    }

    v147 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::offscreenCanvasEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::offscreenCanvasEnabledKey(void)::key = WebKit::WebPreferencesKey::offscreenCanvasEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::offscreenCanvasEnabledKey(void)::key, &v147))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::offscreenCanvasEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::offscreenCanvasEnabledKey(void)::key = WebKit::WebPreferencesKey::offscreenCanvasEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::offscreenCanvasEnabledKey(void)::key, v147);
    }

    v146 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::overlappingBackingStoreProvidersEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::overlappingBackingStoreProvidersEnabledKey(void)::key = WebKit::WebPreferencesKey::overlappingBackingStoreProvidersEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::overlappingBackingStoreProvidersEnabledKey(void)::key, &v146))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::overlappingBackingStoreProvidersEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::overlappingBackingStoreProvidersEnabledKey(void)::key = WebKit::WebPreferencesKey::overlappingBackingStoreProvidersEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::overlappingBackingStoreProvidersEnabledKey(void)::key, v146);
    }

    v145 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::permissionsAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::permissionsAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::permissionsAPIEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::permissionsAPIEnabledKey(void)::key, &v145))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::permissionsAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::permissionsAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::permissionsAPIEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::permissionsAPIEnabledKey(void)::key, v145);
    }

    v144 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::getCoalescedEventsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::getCoalescedEventsEnabledKey(void)::key = WebKit::WebPreferencesKey::getCoalescedEventsEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::getCoalescedEventsEnabledKey(void)::key, &v144))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::getCoalescedEventsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::getCoalescedEventsEnabledKey(void)::key = WebKit::WebPreferencesKey::getCoalescedEventsEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::getCoalescedEventsEnabledKey(void)::key, v144);
    }

    v143 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::getPredictedEventsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::getPredictedEventsEnabledKey(void)::key = WebKit::WebPreferencesKey::getPredictedEventsEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::getPredictedEventsEnabledKey(void)::key, &v143))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::getPredictedEventsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::getPredictedEventsEnabledKey(void)::key = WebKit::WebPreferencesKey::getPredictedEventsEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::getPredictedEventsEnabledKey(void)::key, v143);
    }

    v142 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::pointerLockOptionsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::pointerLockOptionsEnabledKey(void)::key = WebKit::WebPreferencesKey::pointerLockOptionsEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::pointerLockOptionsEnabledKey(void)::key, &v142))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::pointerLockOptionsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::pointerLockOptionsEnabledKey(void)::key = WebKit::WebPreferencesKey::pointerLockOptionsEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::pointerLockOptionsEnabledKey(void)::key, v142);
    }

    v141 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::preferPageRenderingUpdatesNear60FPSEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::preferPageRenderingUpdatesNear60FPSEnabledKey(void)::key = WebKit::WebPreferencesKey::preferPageRenderingUpdatesNear60FPSEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::preferPageRenderingUpdatesNear60FPSEnabledKey(void)::key, &v141))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::preferPageRenderingUpdatesNear60FPSEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::preferPageRenderingUpdatesNear60FPSEnabledKey(void)::key = WebKit::WebPreferencesKey::preferPageRenderingUpdatesNear60FPSEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::preferPageRenderingUpdatesNear60FPSEnabledKey(void)::key, v141);
    }

    v140 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::privateClickMeasurementDebugModeEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::privateClickMeasurementDebugModeEnabledKey(void)::key = WebKit::WebPreferencesKey::privateClickMeasurementDebugModeEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::privateClickMeasurementDebugModeEnabledKey(void)::key, &v140))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::privateClickMeasurementDebugModeEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::privateClickMeasurementDebugModeEnabledKey(void)::key = WebKit::WebPreferencesKey::privateClickMeasurementDebugModeEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::privateClickMeasurementDebugModeEnabledKey(void)::key, v140);
    }

    v139 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::privateClickMeasurementFraudPreventionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::privateClickMeasurementFraudPreventionEnabledKey(void)::key = WebKit::WebPreferencesKey::privateClickMeasurementFraudPreventionEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::privateClickMeasurementFraudPreventionEnabledKey(void)::key, &v139))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::privateClickMeasurementFraudPreventionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::privateClickMeasurementFraudPreventionEnabledKey(void)::key = WebKit::WebPreferencesKey::privateClickMeasurementFraudPreventionEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::privateClickMeasurementFraudPreventionEnabledKey(void)::key, v139);
    }

    v138 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::privateClickMeasurementEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::privateClickMeasurementEnabledKey(void)::key = WebKit::WebPreferencesKey::privateClickMeasurementEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::privateClickMeasurementEnabledKey(void)::key, &v138))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::privateClickMeasurementEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::privateClickMeasurementEnabledKey(void)::key = WebKit::WebPreferencesKey::privateClickMeasurementEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::privateClickMeasurementEnabledKey(void)::key, v138);
    }

    v137 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::privateTokenUsageByThirdPartyEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::privateTokenUsageByThirdPartyEnabledKey(void)::key = WebKit::WebPreferencesKey::privateTokenUsageByThirdPartyEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::privateTokenUsageByThirdPartyEnabledKey(void)::key, &v137))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::privateTokenUsageByThirdPartyEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::privateTokenUsageByThirdPartyEnabledKey(void)::key = WebKit::WebPreferencesKey::privateTokenUsageByThirdPartyEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::privateTokenUsageByThirdPartyEnabledKey(void)::key, v137);
    }

    v136 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::pushAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::pushAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::pushAPIEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::pushAPIEnabledKey(void)::key, &v136))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::pushAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::pushAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::pushAPIEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::pushAPIEnabledKey(void)::key, v136);
    }

    v135 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::googleAntiFlickerOptimizationQuirkEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::googleAntiFlickerOptimizationQuirkEnabledKey(void)::key = WebKit::WebPreferencesKey::googleAntiFlickerOptimizationQuirkEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::googleAntiFlickerOptimizationQuirkEnabledKey(void)::key, &v135))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::googleAntiFlickerOptimizationQuirkEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::googleAntiFlickerOptimizationQuirkEnabledKey(void)::key = WebKit::WebPreferencesKey::googleAntiFlickerOptimizationQuirkEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::googleAntiFlickerOptimizationQuirkEnabledKey(void)::key, v135);
    }

    v134 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::remotePlaybackEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::remotePlaybackEnabledKey(void)::key = WebKit::WebPreferencesKey::remotePlaybackEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::remotePlaybackEnabledKey(void)::key, &v134))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::remotePlaybackEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::remotePlaybackEnabledKey(void)::key = WebKit::WebPreferencesKey::remotePlaybackEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::remotePlaybackEnabledKey(void)::key, v134);
    }

    v133 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::requestVideoFrameCallbackEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::requestVideoFrameCallbackEnabledKey(void)::key = WebKit::WebPreferencesKey::requestVideoFrameCallbackEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::requestVideoFrameCallbackEnabledKey(void)::key, &v133))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::requestVideoFrameCallbackEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::requestVideoFrameCallbackEnabledKey(void)::key = WebKit::WebPreferencesKey::requestVideoFrameCallbackEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::requestVideoFrameCallbackEnabledKey(void)::key, v133);
    }

    v132 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::fullscreenRequirementForScreenOrientationLockingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::fullscreenRequirementForScreenOrientationLockingEnabledKey(void)::key = WebKit::WebPreferencesKey::fullscreenRequirementForScreenOrientationLockingEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::fullscreenRequirementForScreenOrientationLockingEnabledKey(void)::key, &v132))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::fullscreenRequirementForScreenOrientationLockingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::fullscreenRequirementForScreenOrientationLockingEnabledKey(void)::key = WebKit::WebPreferencesKey::fullscreenRequirementForScreenOrientationLockingEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::fullscreenRequirementForScreenOrientationLockingEnabledKey(void)::key, v132);
    }

    v131 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::sKAttributionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::sKAttributionEnabledKey(void)::key = WebKit::WebPreferencesKey::sKAttributionEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::sKAttributionEnabledKey(void)::key, &v131))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::sKAttributionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::sKAttributionEnabledKey(void)::key = WebKit::WebPreferencesKey::sKAttributionEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::sKAttributionEnabledKey(void)::key, v131);
    }

    v130 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::safeBrowsingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::safeBrowsingEnabledKey(void)::key = WebKit::WebPreferencesKey::safeBrowsingEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::safeBrowsingEnabledKey(void)::key, &v130))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::safeBrowsingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::safeBrowsingEnabledKey(void)::key = WebKit::WebPreferencesKey::safeBrowsingEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::safeBrowsingEnabledKey(void)::key, v130);
    }

    v129 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::scopedCustomElementRegistryEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::scopedCustomElementRegistryEnabledKey(void)::key = WebKit::WebPreferencesKey::scopedCustomElementRegistryEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::scopedCustomElementRegistryEnabledKey(void)::key, &v129))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::scopedCustomElementRegistryEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::scopedCustomElementRegistryEnabledKey(void)::key = WebKit::WebPreferencesKey::scopedCustomElementRegistryEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::scopedCustomElementRegistryEnabledKey(void)::key, v129);
    }

    v128 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::screenOrientationAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::screenOrientationAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::screenOrientationAPIEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::screenOrientationAPIEnabledKey(void)::key, &v128))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::screenOrientationAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::screenOrientationAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::screenOrientationAPIEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::screenOrientationAPIEnabledKey(void)::key, v128);
    }

    v127 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::screenWakeLockAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::screenWakeLockAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::screenWakeLockAPIEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::screenWakeLockAPIEnabledKey(void)::key, &v127))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::screenWakeLockAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::screenWakeLockAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::screenWakeLockAPIEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::screenWakeLockAPIEnabledKey(void)::key, v127);
    }

    v126 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::screenCaptureEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::screenCaptureEnabledKey(void)::key = WebKit::WebPreferencesKey::screenCaptureEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::screenCaptureEnabledKey(void)::key, &v126))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::screenCaptureEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::screenCaptureEnabledKey(void)::key = WebKit::WebPreferencesKey::screenCaptureEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::screenCaptureEnabledKey(void)::key, v126);
    }

    v125 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::scrollToTextFragmentFeatureDetectionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::scrollToTextFragmentFeatureDetectionEnabledKey(void)::key = WebKit::WebPreferencesKey::scrollToTextFragmentFeatureDetectionEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::scrollToTextFragmentFeatureDetectionEnabledKey(void)::key, &v125))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::scrollToTextFragmentFeatureDetectionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::scrollToTextFragmentFeatureDetectionEnabledKey(void)::key = WebKit::WebPreferencesKey::scrollToTextFragmentFeatureDetectionEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::scrollToTextFragmentFeatureDetectionEnabledKey(void)::key, v125);
    }

    v124 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::scrollToTextFragmentGenerationEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::scrollToTextFragmentGenerationEnabledKey(void)::key = WebKit::WebPreferencesKey::scrollToTextFragmentGenerationEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::scrollToTextFragmentGenerationEnabledKey(void)::key, &v124))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::scrollToTextFragmentGenerationEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::scrollToTextFragmentGenerationEnabledKey(void)::key = WebKit::WebPreferencesKey::scrollToTextFragmentGenerationEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::scrollToTextFragmentGenerationEnabledKey(void)::key, v124);
    }

    v123 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::scrollToTextFragmentIndicatorEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::scrollToTextFragmentIndicatorEnabledKey(void)::key = WebKit::WebPreferencesKey::scrollToTextFragmentIndicatorEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::scrollToTextFragmentIndicatorEnabledKey(void)::key, &v123))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::scrollToTextFragmentIndicatorEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::scrollToTextFragmentIndicatorEnabledKey(void)::key = WebKit::WebPreferencesKey::scrollToTextFragmentIndicatorEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::scrollToTextFragmentIndicatorEnabledKey(void)::key, v123);
    }

    v122 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::scrollToTextFragmentMarkingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::scrollToTextFragmentMarkingEnabledKey(void)::key = WebKit::WebPreferencesKey::scrollToTextFragmentMarkingEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::scrollToTextFragmentMarkingEnabledKey(void)::key, &v122))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::scrollToTextFragmentMarkingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::scrollToTextFragmentMarkingEnabledKey(void)::key = WebKit::WebPreferencesKey::scrollToTextFragmentMarkingEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::scrollToTextFragmentMarkingEnabledKey(void)::key, v122);
    }

    v121 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::scrollToTextFragmentEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::scrollToTextFragmentEnabledKey(void)::key = WebKit::WebPreferencesKey::scrollToTextFragmentEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::scrollToTextFragmentEnabledKey(void)::key, &v121))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::scrollToTextFragmentEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::scrollToTextFragmentEnabledKey(void)::key = WebKit::WebPreferencesKey::scrollToTextFragmentEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::scrollToTextFragmentEnabledKey(void)::key, v121);
    }

    v120 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::scrollAnimatorEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::scrollAnimatorEnabledKey(void)::key = WebKit::WebPreferencesKey::scrollAnimatorEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::scrollAnimatorEnabledKey(void)::key, &v120))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::scrollAnimatorEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::scrollAnimatorEnabledKey(void)::key = WebKit::WebPreferencesKey::scrollAnimatorEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::scrollAnimatorEnabledKey(void)::key, v120);
    }

    v119 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::scrollDrivenAnimationsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::scrollDrivenAnimationsEnabledKey(void)::key = WebKit::WebPreferencesKey::scrollDrivenAnimationsEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::scrollDrivenAnimationsEnabledKey(void)::key, &v119))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::scrollDrivenAnimationsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::scrollDrivenAnimationsEnabledKey(void)::key = WebKit::WebPreferencesKey::scrollDrivenAnimationsEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::scrollDrivenAnimationsEnabledKey(void)::key, v119);
    }

    v118 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::selectionFlippingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::selectionFlippingEnabledKey(void)::key = WebKit::WebPreferencesKey::selectionFlippingEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::selectionFlippingEnabledKey(void)::key, &v118))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::selectionFlippingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::selectionFlippingEnabledKey(void)::key = WebKit::WebPreferencesKey::selectionFlippingEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::selectionFlippingEnabledKey(void)::key, v118);
    }

    v117 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::serviceWorkerNavigationPreloadEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::serviceWorkerNavigationPreloadEnabledKey(void)::key = WebKit::WebPreferencesKey::serviceWorkerNavigationPreloadEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::serviceWorkerNavigationPreloadEnabledKey(void)::key, &v117))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::serviceWorkerNavigationPreloadEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::serviceWorkerNavigationPreloadEnabledKey(void)::key = WebKit::WebPreferencesKey::serviceWorkerNavigationPreloadEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::serviceWorkerNavigationPreloadEnabledKey(void)::key, v117);
    }

    v116 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::serviceWorkersEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::serviceWorkersEnabledKey(void)::key = WebKit::WebPreferencesKey::serviceWorkersEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::serviceWorkersEnabledKey(void)::key, &v116))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::serviceWorkersEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::serviceWorkersEnabledKey(void)::key = WebKit::WebPreferencesKey::serviceWorkersEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::serviceWorkersEnabledKey(void)::key, v116);
    }

    v115 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::sharedWorkerEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::sharedWorkerEnabledKey(void)::key = WebKit::WebPreferencesKey::sharedWorkerEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::sharedWorkerEnabledKey(void)::key, &v115))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::sharedWorkerEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::sharedWorkerEnabledKey(void)::key = WebKit::WebPreferencesKey::sharedWorkerEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::sharedWorkerEnabledKey(void)::key, v115);
    }

    v114 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::showMediaStatsContextMenuItemEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::showMediaStatsContextMenuItemEnabledKey(void)::key = WebKit::WebPreferencesKey::showMediaStatsContextMenuItemEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::showMediaStatsContextMenuItemEnabledKey(void)::key, &v114))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::showMediaStatsContextMenuItemEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::showMediaStatsContextMenuItemEnabledKey(void)::key = WebKit::WebPreferencesKey::showMediaStatsContextMenuItemEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::showMediaStatsContextMenuItemEnabledKey(void)::key, v114);
    }

    v113 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::sidewaysWritingModesEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::sidewaysWritingModesEnabledKey(void)::key = WebKit::WebPreferencesKey::sidewaysWritingModesEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::sidewaysWritingModesEnabledKey(void)::key, &v113))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::sidewaysWritingModesEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::sidewaysWritingModesEnabledKey(void)::key = WebKit::WebPreferencesKey::sidewaysWritingModesEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::sidewaysWritingModesEnabledKey(void)::key, v113);
    }

    v112 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::speechRecognitionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::speechRecognitionEnabledKey(void)::key = WebKit::WebPreferencesKey::speechRecognitionEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::speechRecognitionEnabledKey(void)::key, &v112))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::speechRecognitionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::speechRecognitionEnabledKey(void)::key = WebKit::WebPreferencesKey::speechRecognitionEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::speechRecognitionEnabledKey(void)::key, v112);
    }

    v111 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::speechSynthesisAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::speechSynthesisAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::speechSynthesisAPIEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::speechSynthesisAPIEnabledKey(void)::key, &v111))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::speechSynthesisAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::speechSynthesisAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::speechSynthesisAPIEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::speechSynthesisAPIEnabledKey(void)::key, v111);
    }

    v110 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::storageAPIEstimateEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::storageAPIEstimateEnabledKey(void)::key = WebKit::WebPreferencesKey::storageAPIEstimateEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::storageAPIEstimateEnabledKey(void)::key, &v110))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::storageAPIEstimateEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::storageAPIEstimateEnabledKey(void)::key = WebKit::WebPreferencesKey::storageAPIEstimateEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::storageAPIEstimateEnabledKey(void)::key, v110);
    }

    v109 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::storageAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::storageAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::storageAPIEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::storageAPIEnabledKey(void)::key, &v109))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::storageAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::storageAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::storageAPIEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::storageAPIEnabledKey(void)::key, v109);
    }

    v108 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::storageBlockingPolicyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::storageBlockingPolicyKey(void)::key = WebKit::WebPreferencesKey::storageBlockingPolicyKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetUInt32UserValueForKey(this, &WebKit::WebPreferencesKey::storageBlockingPolicyKey(void)::key, &v108))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::storageBlockingPolicyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::storageBlockingPolicyKey(void)::key = WebKit::WebPreferencesKey::storageBlockingPolicyKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setUInt32ValueForKey((this + 5), &WebKit::WebPreferencesKey::storageBlockingPolicyKey(void)::key, v108);
    }

    v107 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::supportHDRDisplayEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::supportHDRDisplayEnabledKey(void)::key = WebKit::WebPreferencesKey::supportHDRDisplayEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::supportHDRDisplayEnabledKey(void)::key, &v107))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::supportHDRDisplayEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::supportHDRDisplayEnabledKey(void)::key = WebKit::WebPreferencesKey::supportHDRDisplayEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::supportHDRDisplayEnabledKey(void)::key, v107);
    }

    v106 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::processSwapOnCrossSiteNavigationEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::processSwapOnCrossSiteNavigationEnabledKey(void)::key = WebKit::WebPreferencesKey::processSwapOnCrossSiteNavigationEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::processSwapOnCrossSiteNavigationEnabledKey(void)::key, &v106))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::processSwapOnCrossSiteNavigationEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::processSwapOnCrossSiteNavigationEnabledKey(void)::key = WebKit::WebPreferencesKey::processSwapOnCrossSiteNavigationEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::processSwapOnCrossSiteNavigationEnabledKey(void)::key, v106);
    }

    v105 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inputTypeTimeEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::inputTypeTimeEnabledKey(void)::key = WebKit::WebPreferencesKey::inputTypeTimeEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::inputTypeTimeEnabledKey(void)::key, &v105))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inputTypeTimeEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::inputTypeTimeEnabledKey(void)::key = WebKit::WebPreferencesKey::inputTypeTimeEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::inputTypeTimeEnabledKey(void)::key, v105);
    }

    v104 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::trustedTypesEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::trustedTypesEnabledKey(void)::key = WebKit::WebPreferencesKey::trustedTypesEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::trustedTypesEnabledKey(void)::key, &v104))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::trustedTypesEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::trustedTypesEnabledKey(void)::key = WebKit::WebPreferencesKey::trustedTypesEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::trustedTypesEnabledKey(void)::key, v104);
    }

    v103 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::uRLPatternAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::uRLPatternAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::uRLPatternAPIEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::uRLPatternAPIEnabledKey(void)::key, &v103))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::uRLPatternAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::uRLPatternAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::uRLPatternAPIEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::uRLPatternAPIEnabledKey(void)::key, v103);
    }

    v102 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::unifiedPDFEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::unifiedPDFEnabledKey(void)::key = WebKit::WebPreferencesKey::unifiedPDFEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::unifiedPDFEnabledKey(void)::key, &v102))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::unifiedPDFEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::unifiedPDFEnabledKey(void)::key = WebKit::WebPreferencesKey::unifiedPDFEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::unifiedPDFEnabledKey(void)::key, v102);
    }

    v101 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::upgradeMixedContentEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::upgradeMixedContentEnabledKey(void)::key = WebKit::WebPreferencesKey::upgradeMixedContentEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::upgradeMixedContentEnabledKey(void)::key, &v101))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::upgradeMixedContentEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::upgradeMixedContentEnabledKey(void)::key = WebKit::WebPreferencesKey::upgradeMixedContentEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::upgradeMixedContentEnabledKey(void)::key, v101);
    }

    v100 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::useGiantTilesKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::useGiantTilesKey(void)::key = WebKit::WebPreferencesKey::useGiantTilesKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::useGiantTilesKey(void)::key, &v100))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::useGiantTilesKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::useGiantTilesKey(void)::key = WebKit::WebPreferencesKey::useGiantTilesKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::useGiantTilesKey(void)::key, v100);
    }

    v99 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::userActivationAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::userActivationAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::userActivationAPIEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::userActivationAPIEnabledKey(void)::key, &v99))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::userActivationAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::userActivationAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::userActivationAPIEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::userActivationAPIEnabledKey(void)::key, v99);
    }

    v98 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::verticalFormControlsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::verticalFormControlsEnabledKey(void)::key = WebKit::WebPreferencesKey::verticalFormControlsEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::verticalFormControlsEnabledKey(void)::key, &v98))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::verticalFormControlsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::verticalFormControlsEnabledKey(void)::key = WebKit::WebPreferencesKey::verticalFormControlsEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::verticalFormControlsEnabledKey(void)::key, v98);
    }

    v97 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::videoRendererProtectedFallbackDisabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::videoRendererProtectedFallbackDisabledKey(void)::key = WebKit::WebPreferencesKey::videoRendererProtectedFallbackDisabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::videoRendererProtectedFallbackDisabledKey(void)::key, &v97))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::videoRendererProtectedFallbackDisabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::videoRendererProtectedFallbackDisabledKey(void)::key = WebKit::WebPreferencesKey::videoRendererProtectedFallbackDisabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::videoRendererProtectedFallbackDisabledKey(void)::key, v97);
    }

    v96 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::videoRendererUseDecompressionSessionForProtectedKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::videoRendererUseDecompressionSessionForProtectedKey(void)::key = WebKit::WebPreferencesKey::videoRendererUseDecompressionSessionForProtectedKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::videoRendererUseDecompressionSessionForProtectedKey(void)::key, &v96))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::videoRendererUseDecompressionSessionForProtectedKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::videoRendererUseDecompressionSessionForProtectedKey(void)::key = WebKit::WebPreferencesKey::videoRendererUseDecompressionSessionForProtectedKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::videoRendererUseDecompressionSessionForProtectedKey(void)::key, v96);
    }

    v95 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::viewTransitionClassesEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::viewTransitionClassesEnabledKey(void)::key = WebKit::WebPreferencesKey::viewTransitionClassesEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::viewTransitionClassesEnabledKey(void)::key, &v95))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::viewTransitionClassesEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::viewTransitionClassesEnabledKey(void)::key = WebKit::WebPreferencesKey::viewTransitionClassesEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::viewTransitionClassesEnabledKey(void)::key, v95);
    }

    v94 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::viewTransitionTypesEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::viewTransitionTypesEnabledKey(void)::key = WebKit::WebPreferencesKey::viewTransitionTypesEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::viewTransitionTypesEnabledKey(void)::key, &v94))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::viewTransitionTypesEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::viewTransitionTypesEnabledKey(void)::key = WebKit::WebPreferencesKey::viewTransitionTypesEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::viewTransitionTypesEnabledKey(void)::key, v94);
    }

    v93 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::viewTransitionsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::viewTransitionsEnabledKey(void)::key = WebKit::WebPreferencesKey::viewTransitionsEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::viewTransitionsEnabledKey(void)::key, &v93))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::viewTransitionsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::viewTransitionsEnabledKey(void)::key = WebKit::WebPreferencesKey::viewTransitionsEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::viewTransitionsEnabledKey(void)::key, v93);
    }

    v92 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::viewGestureDebuggingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::viewGestureDebuggingEnabledKey(void)::key = WebKit::WebPreferencesKey::viewGestureDebuggingEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::viewGestureDebuggingEnabledKey(void)::key, &v92))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::viewGestureDebuggingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::viewGestureDebuggingEnabledKey(void)::key = WebKit::WebPreferencesKey::viewGestureDebuggingEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::viewGestureDebuggingEnabledKey(void)::key, v92);
    }

    v91 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::visualViewportAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::visualViewportAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::visualViewportAPIEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::visualViewportAPIEnabledKey(void)::key, &v91))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::visualViewportAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::visualViewportAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::visualViewportAPIEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::visualViewportAPIEnabledKey(void)::key, v91);
    }

    v90 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webAnimationsOverallProgressPropertyEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webAnimationsOverallProgressPropertyEnabledKey(void)::key = WebKit::WebPreferencesKey::webAnimationsOverallProgressPropertyEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::webAnimationsOverallProgressPropertyEnabledKey(void)::key, &v90))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webAnimationsOverallProgressPropertyEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::webAnimationsOverallProgressPropertyEnabledKey(void)::key = WebKit::WebPreferencesKey::webAnimationsOverallProgressPropertyEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::webAnimationsOverallProgressPropertyEnabledKey(void)::key, v90);
    }

    v89 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webArchiveDebugModeEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webArchiveDebugModeEnabledKey(void)::key = WebKit::WebPreferencesKey::webArchiveDebugModeEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::webArchiveDebugModeEnabledKey(void)::key, &v89))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webArchiveDebugModeEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::webArchiveDebugModeEnabledKey(void)::key = WebKit::WebPreferencesKey::webArchiveDebugModeEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::webArchiveDebugModeEnabledKey(void)::key, v89);
    }

    v88 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webAuthenticationASEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webAuthenticationASEnabledKey(void)::key = WebKit::WebPreferencesKey::webAuthenticationASEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::webAuthenticationASEnabledKey(void)::key, &v88))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webAuthenticationASEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::webAuthenticationASEnabledKey(void)::key = WebKit::WebPreferencesKey::webAuthenticationASEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::webAuthenticationASEnabledKey(void)::key, v88);
    }

    v87 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webAuthenticationEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webAuthenticationEnabledKey(void)::key = WebKit::WebPreferencesKey::webAuthenticationEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::webAuthenticationEnabledKey(void)::key, &v87))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webAuthenticationEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::webAuthenticationEnabledKey(void)::key = WebKit::WebPreferencesKey::webAuthenticationEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::webAuthenticationEnabledKey(void)::key, v87);
    }

    v86 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webCryptoSafeCurvesEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webCryptoSafeCurvesEnabledKey(void)::key = WebKit::WebPreferencesKey::webCryptoSafeCurvesEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::webCryptoSafeCurvesEnabledKey(void)::key, &v86))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webCryptoSafeCurvesEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::webCryptoSafeCurvesEnabledKey(void)::key = WebKit::WebPreferencesKey::webCryptoSafeCurvesEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::webCryptoSafeCurvesEnabledKey(void)::key, v86);
    }

    v85 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webCryptoX25519EnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webCryptoX25519EnabledKey(void)::key = WebKit::WebPreferencesKey::webCryptoX25519EnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::webCryptoX25519EnabledKey(void)::key, &v85))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webCryptoX25519EnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::webCryptoX25519EnabledKey(void)::key = WebKit::WebPreferencesKey::webCryptoX25519EnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::webCryptoX25519EnabledKey(void)::key, v85);
    }

    v84 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webLocksAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webLocksAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::webLocksAPIEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::webLocksAPIEnabledKey(void)::key, &v84))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webLocksAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::webLocksAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::webLocksAPIEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::webLocksAPIEnabledKey(void)::key, v84);
    }

    v83 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webShareFileAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webShareFileAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::webShareFileAPIEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::webShareFileAPIEnabledKey(void)::key, &v83))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webShareFileAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::webShareFileAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::webShareFileAPIEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::webShareFileAPIEnabledKey(void)::key, v83);
    }

    v82 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webShareEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webShareEnabledKey(void)::key = WebKit::WebPreferencesKey::webShareEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::webShareEnabledKey(void)::key, &v82))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webShareEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::webShareEnabledKey(void)::key = WebKit::WebPreferencesKey::webShareEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::webShareEnabledKey(void)::key, v82);
    }

    v81 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webCodecsAV1EnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webCodecsAV1EnabledKey(void)::key = WebKit::WebPreferencesKey::webCodecsAV1EnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::webCodecsAV1EnabledKey(void)::key, &v81))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webCodecsAV1EnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::webCodecsAV1EnabledKey(void)::key = WebKit::WebPreferencesKey::webCodecsAV1EnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::webCodecsAV1EnabledKey(void)::key, v81);
    }

    v80 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webCodecsAudioEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webCodecsAudioEnabledKey(void)::key = WebKit::WebPreferencesKey::webCodecsAudioEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::webCodecsAudioEnabledKey(void)::key, &v80))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webCodecsAudioEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::webCodecsAudioEnabledKey(void)::key = WebKit::WebPreferencesKey::webCodecsAudioEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::webCodecsAudioEnabledKey(void)::key, v80);
    }

    v79 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webCodecsHEVCEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webCodecsHEVCEnabledKey(void)::key = WebKit::WebPreferencesKey::webCodecsHEVCEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::webCodecsHEVCEnabledKey(void)::key, &v79))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webCodecsHEVCEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::webCodecsHEVCEnabledKey(void)::key = WebKit::WebPreferencesKey::webCodecsHEVCEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::webCodecsHEVCEnabledKey(void)::key, v79);
    }

    v78 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webCodecsVideoEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webCodecsVideoEnabledKey(void)::key = WebKit::WebPreferencesKey::webCodecsVideoEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::webCodecsVideoEnabledKey(void)::key, &v78))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webCodecsVideoEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::webCodecsVideoEnabledKey(void)::key = WebKit::WebPreferencesKey::webCodecsVideoEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::webCodecsVideoEnabledKey(void)::key, v78);
    }

    v77 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webGLTimerQueriesEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webGLTimerQueriesEnabledKey(void)::key = WebKit::WebPreferencesKey::webGLTimerQueriesEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::webGLTimerQueriesEnabledKey(void)::key, &v77))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webGLTimerQueriesEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::webGLTimerQueriesEnabledKey(void)::key = WebKit::WebPreferencesKey::webGLTimerQueriesEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::webGLTimerQueriesEnabledKey(void)::key, v77);
    }

    v76 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webGLEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webGLEnabledKey(void)::key = WebKit::WebPreferencesKey::webGLEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::webGLEnabledKey(void)::key, &v76))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webGLEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::webGLEnabledKey(void)::key = WebKit::WebPreferencesKey::webGLEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::webGLEnabledKey(void)::key, v76);
    }

    v75 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webGPUHDREnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webGPUHDREnabledKey(void)::key = WebKit::WebPreferencesKey::webGPUHDREnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::webGPUHDREnabledKey(void)::key, &v75))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webGPUHDREnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::webGPUHDREnabledKey(void)::key = WebKit::WebPreferencesKey::webGPUHDREnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::webGPUHDREnabledKey(void)::key, v75);
    }

    v74 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webXRWebGPUBindingsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webXRWebGPUBindingsEnabledKey(void)::key = WebKit::WebPreferencesKey::webXRWebGPUBindingsEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::webXRWebGPUBindingsEnabledKey(void)::key, &v74))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webXRWebGPUBindingsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::webXRWebGPUBindingsEnabledKey(void)::key = WebKit::WebPreferencesKey::webXRWebGPUBindingsEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::webXRWebGPUBindingsEnabledKey(void)::key, v74);
    }

    v73 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webGPUEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webGPUEnabledKey(void)::key = WebKit::WebPreferencesKey::webGPUEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::webGPUEnabledKey(void)::key, &v73))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webGPUEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::webGPUEnabledKey(void)::key = WebKit::WebPreferencesKey::webGPUEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::webGPUEnabledKey(void)::key, v73);
    }

    v72 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webRTCAV1CodecEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webRTCAV1CodecEnabledKey(void)::key = WebKit::WebPreferencesKey::webRTCAV1CodecEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::webRTCAV1CodecEnabledKey(void)::key, &v72))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webRTCAV1CodecEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::webRTCAV1CodecEnabledKey(void)::key = WebKit::WebPreferencesKey::webRTCAV1CodecEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::webRTCAV1CodecEnabledKey(void)::key, v72);
    }

    v71 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webRTCEncodedTransformEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webRTCEncodedTransformEnabledKey(void)::key = WebKit::WebPreferencesKey::webRTCEncodedTransformEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::webRTCEncodedTransformEnabledKey(void)::key, &v71))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webRTCEncodedTransformEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::webRTCEncodedTransformEnabledKey(void)::key = WebKit::WebPreferencesKey::webRTCEncodedTransformEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::webRTCEncodedTransformEnabledKey(void)::key, v71);
    }

    v70 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webRTCH265CodecEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webRTCH265CodecEnabledKey(void)::key = WebKit::WebPreferencesKey::webRTCH265CodecEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::webRTCH265CodecEnabledKey(void)::key, &v70))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webRTCH265CodecEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::webRTCH265CodecEnabledKey(void)::key = WebKit::WebPreferencesKey::webRTCH265CodecEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::webRTCH265CodecEnabledKey(void)::key, v70);
    }

    v69 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::legacyWebRTCOfferOptionsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::legacyWebRTCOfferOptionsEnabledKey(void)::key = WebKit::WebPreferencesKey::legacyWebRTCOfferOptionsEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::legacyWebRTCOfferOptionsEnabledKey(void)::key, &v69))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::legacyWebRTCOfferOptionsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::legacyWebRTCOfferOptionsEnabledKey(void)::key = WebKit::WebPreferencesKey::legacyWebRTCOfferOptionsEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::legacyWebRTCOfferOptionsEnabledKey(void)::key, v69);
    }

    v68 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::peerConnectionVideoScalingAdaptationDisabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::peerConnectionVideoScalingAdaptationDisabledKey(void)::key = WebKit::WebPreferencesKey::peerConnectionVideoScalingAdaptationDisabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::peerConnectionVideoScalingAdaptationDisabledKey(void)::key, &v68))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::peerConnectionVideoScalingAdaptationDisabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::peerConnectionVideoScalingAdaptationDisabledKey(void)::key = WebKit::WebPreferencesKey::peerConnectionVideoScalingAdaptationDisabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::peerConnectionVideoScalingAdaptationDisabledKey(void)::key, v68);
    }

    v67 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::peerConnectionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::peerConnectionEnabledKey(void)::key = WebKit::WebPreferencesKey::peerConnectionEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::peerConnectionEnabledKey(void)::key, &v67))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::peerConnectionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::peerConnectionEnabledKey(void)::key = WebKit::WebPreferencesKey::peerConnectionEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::peerConnectionEnabledKey(void)::key, v67);
    }

    v66 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webRTCUDPPortRangeKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webRTCUDPPortRangeKey(void)::key = WebKit::WebPreferencesKey::webRTCUDPPortRangeKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetStringUserValueForKey(this, &WebKit::WebPreferencesKey::webRTCUDPPortRangeKey(void)::key, &v66))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webRTCUDPPortRangeKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::webRTCUDPPortRangeKey(void)::key = WebKit::WebPreferencesKey::webRTCUDPPortRangeKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setStringValueForKey((this + 5), &WebKit::WebPreferencesKey::webRTCUDPPortRangeKey(void)::key, &v66);
    }

    v65 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webRTCVP9Profile2CodecEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webRTCVP9Profile2CodecEnabledKey(void)::key = WebKit::WebPreferencesKey::webRTCVP9Profile2CodecEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::webRTCVP9Profile2CodecEnabledKey(void)::key, &v65))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webRTCVP9Profile2CodecEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::webRTCVP9Profile2CodecEnabledKey(void)::key = WebKit::WebPreferencesKey::webRTCVP9Profile2CodecEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::webRTCVP9Profile2CodecEnabledKey(void)::key, v65);
    }

    v64 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webXREnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webXREnabledKey(void)::key = WebKit::WebPreferencesKey::webXREnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::webXREnabledKey(void)::key, &v64))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webXREnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::webXREnabledKey(void)::key = WebKit::WebPreferencesKey::webXREnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::webXREnabledKey(void)::key, v64);
    }

    v63 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webXRGamepadsModuleEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webXRGamepadsModuleEnabledKey(void)::key = WebKit::WebPreferencesKey::webXRGamepadsModuleEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::webXRGamepadsModuleEnabledKey(void)::key, &v63))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webXRGamepadsModuleEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::webXRGamepadsModuleEnabledKey(void)::key = WebKit::WebPreferencesKey::webXRGamepadsModuleEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::webXRGamepadsModuleEnabledKey(void)::key, v63);
    }

    v62 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webXRHandInputModuleEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webXRHandInputModuleEnabledKey(void)::key = WebKit::WebPreferencesKey::webXRHandInputModuleEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::webXRHandInputModuleEnabledKey(void)::key, &v62))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webXRHandInputModuleEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::webXRHandInputModuleEnabledKey(void)::key = WebKit::WebPreferencesKey::webXRHandInputModuleEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::webXRHandInputModuleEnabledKey(void)::key, v62);
    }

    v61 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webXRLayersAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webXRLayersAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::webXRLayersAPIEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::webXRLayersAPIEnabledKey(void)::key, &v61))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webXRLayersAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::webXRLayersAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::webXRLayersAPIEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::webXRLayersAPIEnabledKey(void)::key, v61);
    }

    v60 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inputTypeWeekEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::inputTypeWeekEnabledKey(void)::key = WebKit::WebPreferencesKey::inputTypeWeekEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::inputTypeWeekEnabledKey(void)::key, &v60))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inputTypeWeekEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::inputTypeWeekEnabledKey(void)::key = WebKit::WebPreferencesKey::inputTypeWeekEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::inputTypeWeekEnabledKey(void)::key, v60);
    }

    v59 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::wheelEventGesturesBecomeNonBlockingKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::wheelEventGesturesBecomeNonBlockingKey(void)::key = WebKit::WebPreferencesKey::wheelEventGesturesBecomeNonBlockingKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::wheelEventGesturesBecomeNonBlockingKey(void)::key, &v59))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::wheelEventGesturesBecomeNonBlockingKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::wheelEventGesturesBecomeNonBlockingKey(void)::key = WebKit::WebPreferencesKey::wheelEventGesturesBecomeNonBlockingKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::wheelEventGesturesBecomeNonBlockingKey(void)::key, v59);
    }

    v58 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::passiveWheelListenersAsDefaultOnDocumentKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::passiveWheelListenersAsDefaultOnDocumentKey(void)::key = WebKit::WebPreferencesKey::passiveWheelListenersAsDefaultOnDocumentKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::passiveWheelListenersAsDefaultOnDocumentKey(void)::key, &v58))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::passiveWheelListenersAsDefaultOnDocumentKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::passiveWheelListenersAsDefaultOnDocumentKey(void)::key = WebKit::WebPreferencesKey::passiveWheelListenersAsDefaultOnDocumentKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::passiveWheelListenersAsDefaultOnDocumentKey(void)::key, v58);
    }

    v57 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::workerAsynchronousURLErrorHandlingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::workerAsynchronousURLErrorHandlingEnabledKey(void)::key = WebKit::WebPreferencesKey::workerAsynchronousURLErrorHandlingEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::workerAsynchronousURLErrorHandlingEnabledKey(void)::key, &v57))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::workerAsynchronousURLErrorHandlingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::workerAsynchronousURLErrorHandlingEnabledKey(void)::key = WebKit::WebPreferencesKey::workerAsynchronousURLErrorHandlingEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::workerAsynchronousURLErrorHandlingEnabledKey(void)::key, v57);
    }

    v56 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::writingSuggestionsAttributeEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::writingSuggestionsAttributeEnabledKey(void)::key = WebKit::WebPreferencesKey::writingSuggestionsAttributeEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::writingSuggestionsAttributeEnabledKey(void)::key, &v56))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::writingSuggestionsAttributeEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::writingSuggestionsAttributeEnabledKey(void)::key = WebKit::WebPreferencesKey::writingSuggestionsAttributeEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::writingSuggestionsAttributeEnabledKey(void)::key, v56);
    }

    v55 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::isFirstPartyWebsiteDataRemovalLiveOnTestingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::isFirstPartyWebsiteDataRemovalLiveOnTestingEnabledKey(void)::key = WebKit::WebPreferencesKey::isFirstPartyWebsiteDataRemovalLiveOnTestingEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::isFirstPartyWebsiteDataRemovalLiveOnTestingEnabledKey(void)::key, &v55))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::isFirstPartyWebsiteDataRemovalLiveOnTestingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::isFirstPartyWebsiteDataRemovalLiveOnTestingEnabledKey(void)::key = WebKit::WebPreferencesKey::isFirstPartyWebsiteDataRemovalLiveOnTestingEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::isFirstPartyWebsiteDataRemovalLiveOnTestingEnabledKey(void)::key, v55);
    }

    v54 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::isFirstPartyWebsiteDataRemovalReproTestingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::isFirstPartyWebsiteDataRemovalReproTestingEnabledKey(void)::key = WebKit::WebPreferencesKey::isFirstPartyWebsiteDataRemovalReproTestingEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::isFirstPartyWebsiteDataRemovalReproTestingEnabledKey(void)::key, &v54))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::isFirstPartyWebsiteDataRemovalReproTestingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::isFirstPartyWebsiteDataRemovalReproTestingEnabledKey(void)::key = WebKit::WebPreferencesKey::isFirstPartyWebsiteDataRemovalReproTestingEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::isFirstPartyWebsiteDataRemovalReproTestingEnabledKey(void)::key, v54);
    }

    v53 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::altitudeAngleEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::altitudeAngleEnabledKey(void)::key = WebKit::WebPreferencesKey::altitudeAngleEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::altitudeAngleEnabledKey(void)::key, &v53))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::altitudeAngleEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::altitudeAngleEnabledKey(void)::key = WebKit::WebPreferencesKey::altitudeAngleEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::altitudeAngleEnabledKey(void)::key, v53);
    }

    v52 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::azimuthAngleEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::azimuthAngleEnabledKey(void)::key = WebKit::WebPreferencesKey::azimuthAngleEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::azimuthAngleEnabledKey(void)::key, &v52))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::azimuthAngleEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::azimuthAngleEnabledKey(void)::key = WebKit::WebPreferencesKey::azimuthAngleEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::azimuthAngleEnabledKey(void)::key, v52);
    }

    v51 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inputTypeDateTimeLocalEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::inputTypeDateTimeLocalEnabledKey(void)::key = WebKit::WebPreferencesKey::inputTypeDateTimeLocalEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::inputTypeDateTimeLocalEnabledKey(void)::key, &v51))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inputTypeDateTimeLocalEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::inputTypeDateTimeLocalEnabledKey(void)::key = WebKit::WebPreferencesKey::inputTypeDateTimeLocalEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::inputTypeDateTimeLocalEnabledKey(void)::key, v51);
    }

    v50 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::hiddenUntilFoundEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::hiddenUntilFoundEnabledKey(void)::key = WebKit::WebPreferencesKey::hiddenUntilFoundEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::hiddenUntilFoundEnabledKey(void)::key, &v50))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::hiddenUntilFoundEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::hiddenUntilFoundEnabledKey(void)::key = WebKit::WebPreferencesKey::hiddenUntilFoundEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::hiddenUntilFoundEnabledKey(void)::key, v50);
    }

    v49 = 0;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::httpEquivEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::httpEquivEnabledKey(void)::key = WebKit::WebPreferencesKey::httpEquivEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferences::platformGetBoolUserValueForKey(this, &WebKit::WebPreferencesKey::httpEquivEnabledKey(void)::key, &v49))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::httpEquivEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::httpEquivEnabledKey(void)::key = WebKit::WebPreferencesKey::httpEquivEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::httpEquivEnabledKey(void)::key, v49);
    }

    v32 = v66;
    if (v66 && atomic_fetch_add_explicit(v66, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v32, v31);
    }

    v33 = v309;
    if (v309 && atomic_fetch_add_explicit(v309, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v33, v31);
    }

    v34 = v318;
    if (v318 && atomic_fetch_add_explicit(v318, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v34, v31);
    }

    v35 = v333;
    if (v333 && atomic_fetch_add_explicit(v333, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v35, v31);
    }

    v36 = v347;
    if (v347 && atomic_fetch_add_explicit(v347, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v36, v31);
    }

    v37 = v349;
    if (v349 && atomic_fetch_add_explicit(v349, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v37, v31);
    }

    v38 = v350;
    if (v350 && atomic_fetch_add_explicit(v350, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v38, v31);
    }

    v39 = v351;
    if (v351 && atomic_fetch_add_explicit(v351, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v39, v31);
    }

    v40 = v353;
    if (v353 && atomic_fetch_add_explicit(v353, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v40, v31);
    }

    v41 = v361;
    if (v361 && atomic_fetch_add_explicit(v361, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v41, v31);
    }

    v42 = v377;
    if (v377 && atomic_fetch_add_explicit(v377, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v42, v31);
    }

    v43 = v390;
    if (v390 && atomic_fetch_add_explicit(v390, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v43, v31);
    }

    v44 = v392;
    if (v392 && atomic_fetch_add_explicit(v392, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v44, v31);
    }

    v45 = v416;
    if (v416 && atomic_fetch_add_explicit(v416, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v45, v31);
    }

    v46 = v432;
    if (v432 && atomic_fetch_add_explicit(v432, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v46, v31);
    }

    v47 = v433;
    if (v433 && atomic_fetch_add_explicit(v433, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v47, v31);
    }

    v48 = v476;
    if (v476 && atomic_fetch_add_explicit(v476, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v48, v31);
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_19D5434A4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  v14 = v12[7];
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, a2);
  }

  v15 = v12[13];
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, a2);
  }

  v16 = v12[21];
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, a2);
  }

  v17 = v12[30];
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, a2);
  }

  v18 = v12[32];
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, a2);
  }

  v19 = v12[33];
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, a2);
  }

  v20 = v12[34];
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, a2);
  }

  v21 = v12[36];
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, a2);
  }

  v22 = v12[40];
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, a2);
  }

  v23 = v12[48];
  if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v23, a2);
  }

  v24 = v12[53];
  if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v24, a2);
  }

  v25 = v12[55];
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, a2);
  }

  v26 = v12[59];
  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, a2);
  }

  v27 = v12[63];
  if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v27, a2);
  }

  v28 = v12[64];
  if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v28, a2);
  }

  v29 = v12[72];
  if (v29)
  {
    if (atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v29, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::get_TCC_kTCCServiceMicrophone(WebKit *this)
{
  if (qword_1ED641C08 != -1)
  {
    dispatch_once(&qword_1ED641C08, &__block_literal_global_6_2);
  }

  return qword_1ED641C00;
}

uint64_t WebKit::checkUsageDescriptionStringForType@<X0>(WebKit *a1@<X0>, char a2@<W8>)
{
  if (a1 != 2)
  {
    if (a1 != 1)
    {
      return a2 & 1;
    }

    if (byte_1ED64254A)
    {
      if (dword_1ED64254C)
      {
LABEL_5:
        if (atomic_load_explicit(&qword_1ED642558, memory_order_acquire) != -1)
        {
          v9 = &v7;
          v8 = &v9;
          std::__call_once(&qword_1ED642558, &v8, std::__call_once_proxy[abi:sn200100]<std::tuple<WebKit::checkUsageDescriptionStringForType(WebKit::MediaPermissionType)::$_0 &&>>);
        }

        a2 = _MergedGlobals_71;
        return a2 & 1;
      }
    }

    else
    {
      TCC_kTCCServiceMicrophone = WebKit::get_TCC_kTCCServiceMicrophone(a1);
      dword_1ED64254C = WebKit::softLinkTCCTCCAccessPreflight(TCC_kTCCServiceMicrophone, 0, v3);
      byte_1ED64254A = 1;
      if (dword_1ED64254C)
      {
        goto LABEL_5;
      }
    }

LABEL_16:
    a2 = 1;
    return a2 & 1;
  }

  if (byte_1ED64254B)
  {
    if (!dword_1ED642550)
    {
      goto LABEL_16;
    }
  }

  else
  {
    TCC_kTCCServiceCamera = WebKit::get_TCC_kTCCServiceCamera(a1);
    dword_1ED642550 = WebKit::softLinkTCCTCCAccessPreflight(TCC_kTCCServiceCamera, 0, v5);
    byte_1ED64254B = 1;
    if (!dword_1ED642550)
    {
      goto LABEL_16;
    }
  }

  if (atomic_load_explicit(&qword_1ED642560, memory_order_acquire) != -1)
  {
    v9 = &v7;
    v8 = &v9;
    std::__call_once(&qword_1ED642560, &v8, std::__call_once_proxy[abi:sn200100]<std::tuple<WebKit::checkUsageDescriptionStringForType(WebKit::MediaPermissionType)::$_1 &&>>);
  }

  a2 = byte_1ED642549;
  return a2 & 1;
}

uint64_t WebKit::TCCLibrary(WebKit *this)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN6WebKit10TCCLibraryEb_block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v3 = 0;
  if (qword_1ED641BE8 != -1)
  {
    dispatch_once(&qword_1ED641BE8, block);
  }

  return _MergedGlobals_56;
}

uint64_t ___ZN6WebKit10TCCLibraryEb_block_invoke(uint64_t a1)
{
  result = dlopen("/System/Library/PrivateFrameworks/TCC.framework/TCC", 2);
  _MergedGlobals_56 = result;
  if ((*(a1 + 32) & 1) == 0 && !result)
  {
    result = 32;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::initTCCTCCAccessPreflight(WebKit *this, const __CFString *a2, const __CFDictionary *a3)
{
  if (WebKit::initTCCTCCAccessPreflight(__CFString const*,__CFDictionary const*)::once != -1)
  {
    dispatch_once(&WebKit::initTCCTCCAccessPreflight(__CFString const*,__CFDictionary const*)::once, &__block_literal_global_14_1);
  }

  v5 = WebKit::softLinkTCCTCCAccessPreflight;

  return (v5)(this, a2);
}

uint64_t ___ZN6WebKitL25initTCCTCCAccessPreflightEPK10__CFStringPK14__CFDictionary_block_invoke(WebKit *a1)
{
  v1 = WebKit::TCCLibrary(a1);
  result = dlsym(v1, "TCCAccessPreflight");
  WebKit::softLinkTCCTCCAccessPreflight = result;
  if (!result)
  {
    result = 41;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::WebPreferencesStore::setBoolValueForKey(WebKit::WebPreferencesStore *this, WTF::StringImpl **a2, int a3)
{
  v3 = a3;
  v6 = WebKit::valueForKey<BOOL>(this, this + 24, a2) ^ a3;
  if (v6 == 1)
  {
    LOBYTE(v11) = v3;
    v12 = 1;
    WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::String const&,mpark::variant<WTF::String,BOOL,unsigned int,double>>(this, a2, &v11, v10);
    if (!v12)
    {
      v8 = v11;
      v11 = 0;
      if (v8)
      {
        if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, v7);
        }
      }
    }
  }

  return v6;
}

uint64_t *WTF::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::operator=(uint64_t *a1, atomic_uint **a2)
{
  v4[2] = a1;
  v4[1] = a2;
  v8 = v4;
  v7 = a2;
  v10 = v4;
  v9 = a2;
  v12 = a2;
  v11 = *a2;
  if (v11)
  {
    WTF::StringImpl::ref(v11);
  }

  v4[0] = v11;
  WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>::swap<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>(a1, v4);
  v4[3] = v4;
  v5[1] = v4;
  v5[0] = 0;
  v5[3] = v4;
  v5[2] = v5;
  v6 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(v4);
  if (v6)
  {
    WTF::StringImpl::deref(v6);
  }

  return a1;
}

uint64_t std::__cxx_atomic_fetch_add[abi:sn200100]<unsigned int>(atomic_uint *a1, unsigned int a2, int a3)
{
  if ((a3 - 1) < 2)
  {
    return atomic_fetch_add_explicit(a1, a2, memory_order_acquire);
  }

  else if (a3 == 3)
  {
    return atomic_fetch_add_explicit(a1, a2, memory_order_release);
  }

  else if (a3 == 4 || a3 == 5)
  {
    return atomic_fetch_add(a1, a2);
  }

  else
  {
    return atomic_fetch_add_explicit(a1, a2, memory_order_relaxed);
  }
}

uint64_t *std::swap[abi:sn200100]<JSC::ArrayBufferView *>(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  return result;
}

uint64_t std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  return v2;
}

uint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned long long,void>>@<X0>(uint64_t result@<X0>, int a2@<W1>, int8x16_t *a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X8>)
{
  v9 = result;
  v11 = result;
  if (!a2)
  {
    if (result)
    {
      if (result <= 0x7FFFFFEF)
      {
        result = WTF::tryFastCompactMalloc((2 * result + 20));
        v12 = v15;
        if (v15)
        {
          v14 = (v15 + 5);
          *v15 = 2;
          v12[1] = v9;
          *(v12 + 1) = v12 + 5;
          v12[4] = 0;
          result = WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned long long,void>>(v14, v11, a3, a4, a5);
        }

        goto LABEL_10;
      }

LABEL_13:
      v12 = 0;
      goto LABEL_10;
    }

LABEL_14:
    v12 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_10;
  }

  if (!result)
  {
    goto LABEL_14;
  }

  if ((result & 0x80000000) != 0)
  {
    goto LABEL_13;
  }

  result = WTF::tryFastCompactMalloc((result + 20));
  v12 = v15;
  if (v15)
  {
    v13 = v15 + 5;
    *v15 = 2;
    v12[1] = v9;
    *(v12 + 1) = v12 + 5;
    v12[4] = 4;
    if (a4)
    {
      if (a4 == 1)
      {
        goto LABEL_18;
      }

      memcpy(v12 + 5, a3, a4);
    }

    while (v11 < a4)
    {
      __break(1u);
LABEL_18:
      *v13 = a3->i8[0];
    }

    v15 = a5;
    result = WTF::StringTypeAdapter<unsigned long long,void>::writeTo<unsigned char>(&v15, &v13[a4], v11 - a4);
  }

LABEL_10:
  *a6 = v12;
  return result;
}

unint64_t *WTF::StringTypeAdapter<unsigned long long,void>::writeTo<unsigned char>(unint64_t *result, _BYTE *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *result;
  v4 = 24;
  do
  {
    if (v4 == -1)
    {
LABEL_8:
      __break(1u);
    }

    v8[v4--] = (v3 % 0xA) | 0x30;
    v5 = v3 > 9;
    v3 /= 0xAuLL;
  }

  while (v5);
  v6 = v4 + 1;
  v7 = v4 + 2;
  do
  {
    if (!a3)
    {
      goto LABEL_8;
    }

    *a2++ = v8[v6++];
    ++v7;
    --a3;
  }

  while (v7 != 26);
  return result;
}

uint64_t ___ZN6WebKit29get_TCC_kTCCServiceMicrophoneEv_block_invoke(WebKit *a1)
{
  v1 = WebKit::TCCLibrary(a1);
  result = dlsym(v1, "kTCCServiceMicrophone");
  if (result)
  {
    qword_1ED641C00 = *result;
  }

  else
  {
    result = 36;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::isAsyncTextInputFeatureFlagEnabled(WebKit *this)
{
  if (atomic_load_explicit(&qword_1ED642368, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&qword_1ED642368, &v5, std::__call_once_proxy[abi:sn200100]<std::tuple<WebKit::isAsyncTextInputFeatureFlagEnabled(void)::$_0 &&>>);
  }

  return _MergedGlobals_63;
}

uint64_t WebKit::defaultMutationEventsEnabled(WebKit *this)
{
  isAppleApplication = WTF::CocoaApplication::isAppleApplication(this);
  if (isAppleApplication && !WebKit::isSafariOrWebApp(isAppleApplication))
  {
    return 1;
  }

  else
  {
    return WTF::linkedOnOrAfterSDKWithBehavior() ^ 1;
  }
}

uint64_t WebKit::isSafariOrWebApp(WebKit *this)
{
  isMobileSafari = WTF::IOSApplication::isMobileSafari(this);
  if (isMobileSafari & 1) != 0 || (WTF::IOSApplication::isSafariViewService(isMobileSafari))
  {
    return 1;
  }

  return MEMORY[0x1EEDCAD30]();
}

uint64_t WebKit::defaultAutomaticLiveResizeEnabled(WebKit *this)
{
  {
    LOBYTE(HasIPadCapability) = WebKit::defaultAutomaticLiveResizeEnabled(void)::enabled;
  }

  else
  {
    HasIPadCapability = PAL::deviceHasIPadCapability(this);
    if (HasIPadCapability)
    {
      LOBYTE(HasIPadCapability) = _os_feature_enabled_impl();
    }

    WebKit::defaultAutomaticLiveResizeEnabled(void)::enabled = HasIPadCapability;
  }

  return HasIPadCapability & 1;
}

uint64_t *WebKit::WebPreferencesKey::forceAlwaysUserScalableKey(WebKit::WebPreferencesKey *this)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::forceAlwaysUserScalableKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::forceAlwaysUserScalableKey(void)::key = WebKit::WebPreferencesKey::forceAlwaysUserScalableKey(void)::$_0::operator() const(void)::impl;
  }

  return &WebKit::WebPreferencesKey::forceAlwaysUserScalableKey(void)::key;
}

uint64_t WebKit::defaultRemoveBackgroundEnabled(WebKit *this)
{
  if (atomic_load_explicit(&qword_1ED641F28, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&qword_1ED641F28, &v5, std::__call_once_proxy[abi:sn200100]<std::tuple<WebKit::defaultRemoveBackgroundEnabled(void)::$_0 &&>>);
  }

  return byte_1ED641F12;
}

uint64_t std::__call_once_proxy[abi:sn200100]<std::tuple<WebKit::defaultRemoveBackgroundEnabled(void)::$_0 &&>>()
{
  result = _os_feature_enabled_impl();
  byte_1ED641F12 = result;
  return result;
}

uint64_t WebKit::defaultShouldEnableScreenOrientationAPI(WebKit *this)
{
  {
    isHoYoLAB = WebKit::defaultShouldEnableScreenOrientationAPI(void)::shouldEnableScreenOrientationAPI;
  }

  else
  {
    v3 = WTF::linkedOnOrAfterSDKWithBehavior();
    isHoYoLAB = 1;
    if ((v3 & 1) == 0)
    {
      isHoYoLAB = WTF::IOSApplication::isHoYoLAB(1);
    }

    WebKit::defaultShouldEnableScreenOrientationAPI(void)::shouldEnableScreenOrientationAPI = isHoYoLAB;
  }

  return isHoYoLAB & 1;
}

uint64_t WebKit::defaultTextRecognitionInVideosEnabled(WebKit *this)
{
  if (atomic_load_explicit(&qword_1ED641F18, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&qword_1ED641F18, &v5, std::__call_once_proxy[abi:sn200100]<std::tuple<WebKit::defaultTextRecognitionInVideosEnabled(void)::$_0 &&>>);
  }

  return _MergedGlobals_61;
}

uint64_t std::__call_once_proxy[abi:sn200100]<std::tuple<WebKit::defaultTextRecognitionInVideosEnabled(void)::$_0 &&>>()
{
  result = _os_feature_enabled_impl();
  _MergedGlobals_61 = result;
  return result;
}

uint64_t WebKit::defaultVisualTranslationEnabled(WebKit *this)
{
  if (atomic_load_explicit(&qword_1ED641F20, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&qword_1ED641F20, &v5, std::__call_once_proxy[abi:sn200100]<std::tuple<WebKit::defaultVisualTranslationEnabled(void)::$_0 &&>>);
  }

  return byte_1ED641F11;
}

uint64_t std::__call_once_proxy[abi:sn200100]<std::tuple<WebKit::defaultVisualTranslationEnabled(void)::$_0 &&>>()
{
  result = _os_feature_enabled_impl();
  byte_1ED641F11 = result;
  return result;
}

uint64_t WebKit::isFullWebBrowserOrRunningTest(WebKit *this)
{
  WTF::applicationBundleIdentifier(&v6, this);
  isFullWebBrowserOrRunningTest = WebKit::isFullWebBrowserOrRunningTest(&v6, v1);
  v4 = v6;
  v6 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v2);
  }

  return isFullWebBrowserOrRunningTest;
}

void sub_19D559358(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

uint64_t WebKit::isFullWebBrowserOrRunningTest(WebKit *this, const String *a2)
{
  {
    WebKit::isFullWebBrowserOrRunningTest(WTF::String const&)::fullWebBrowser = WTF::processHasEntitlement();
  }

  if (WebKit::isRunningTest(this, a2))
  {
    return 1;
  }

  if (WebKit::isFullWebBrowserOrRunningTest(WTF::String const&)::fullWebBrowser == 1)
  {
    return MEMORY[0x19EB01EF0](*this, "inAppBrowserPrivacyTestIdentifier", 33) ^ 1;
  }

  return 0;
}

uint64_t WebKit::isRunningTest(WebKit *this, const String *a2)
{
  if ((MEMORY[0x19EB01EF0](*this, "com.apple.WebKit.TestWebKitAPI", 30) & 1) == 0 && (MEMORY[0x19EB01EF0](*this, "com.apple.WebKit.WebKitTestRunner", 33) & 1) == 0)
  {

    JUMPOUT(0x19EB01EF0);
  }

  return 1;
}

void WebKit::debugUserDefaultsValue(WebKit *this, atomic_uint **a2, atomic_uint **a3, atomic_uint **a4, atomic_uint **a5)
{
  v10 = [MEMORY[0x1E695E000] standardUserDefaults];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  v13 = *a2;
  if (!*a2 || !v13[1])
  {
    goto LABEL_10;
  }

  WebKit::makeKey(&v31, v13, a3, a5);
  v14 = [v11 objectForKey:v31];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  *this = v15;
  v17 = v31;
  v31 = 0;
  if (v17)
  {
  }

  if (!v15)
  {
LABEL_10:
    v18 = *a4;
    if (v18)
    {
      atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v31, v18);
      if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v19);
      }
    }

    else
    {
      v31 = &stru_1F1147748;
      v20 = &stru_1F1147748;
    }

    v21 = v31;
    v22 = *a5;
    if (v22)
    {
      atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v30, v22);
      if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v23);
      }
    }

    else
    {
      v30 = &stru_1F1147748;
      v24 = &stru_1F1147748;
    }

    v25 = [v11 objectForKey:{-[__CFString stringByAppendingString:](v21, "stringByAppendingString:", v30, v30)}];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    *this = v26;
    v28 = v30;
    v30 = 0;
    if (v28)
    {
    }

    v29 = v31;
    v31 = 0;
    if (v29)
    {
    }
  }

  if (v11)
  {
  }
}

void sub_19D559630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  *v11 = 0;
  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *WebKit::makeKey(WebKit *this, atomic_uint *a2, atomic_uint **a3, atomic_uint **a4)
{
  if (a2)
  {
    atomic_fetch_add_explicit(a2, 2u, memory_order_relaxed);
  }

  v16 = a2;
  v5 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  v15 = v5;
  v6 = *a4;
  if (*a4)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  v14 = v6;
  WTF::makeString<WTF::String,WTF::String,WTF::String>(&v16, &v15, &v14, &v17);
  v7 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](v7);
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v8);
    }
  }

  else
  {
    *this = &stru_1F1147748;
    v9 = &stru_1F1147748;
  }

  v10 = v17;
  v17 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v8);
  }

  v11 = v14;
  v14 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v8);
  }

  v12 = v15;
  v15 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v8);
  }

  result = v16;
  v16 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v8);
    }
  }

  return result;
}

void sub_19D559800(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10, WTF::StringImpl *a11, WTF::StringImpl *a12)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::makeString<WTF::String,WTF::String,WTF::String>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v5 = *a1;
  v8 = *a2;
  v9 = v5;
  v7 = *a3;
  result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(&v9, &v8, &v7, a4);
  if (!*a4)
  {
    __break(0xC471u);
  }

  return result;
}

uint64_t WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v5 = *result;
  if (*result)
  {
    v6 = *(v5 + 4);
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  if (*a2)
  {
    v8 = *(v7 + 4);
  }

  else
  {
    v8 = 0;
  }

  v9 = *a3;
  if (*a3)
  {
    v10 = *(v9 + 4);
  }

  else
  {
    v10 = 0;
  }

  if (((v10 | v8) & 0x80000000) == 0)
  {
    v11 = __OFADD__(v8, v10);
    v12 = v8 + v10;
    v13 = v11;
    if ((v6 & 0x80000000) == 0 && !v13)
    {
      result = (v6 + v12);
      if (!__OFADD__(v6, v12))
      {
        if (!v5 || (*(v5 + 16) & 4) != 0)
        {
          if (v7)
          {
            v15 = *(v7 + 16);
            v14 = (v15 >> 2) & 1;
            if (!v9 || (v15 & 4) == 0)
            {
              return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(result, v14, v5, v7, v9, a4);
            }
          }

          else if (!v9)
          {
            v14 = 1;
            return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(result, v14, v5, v7, v9, a4);
          }

          v14 = (*(v9 + 16) >> 2) & 1;
        }

        else
        {
          v14 = 0;
        }

        return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(result, v14, v5, v7, v9, a4);
      }
    }
  }

  *a4 = 0;
  return result;
}

uint64_t *WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(uint64_t *result, char *__dst)
{
  v2 = *result;
  if (*result)
  {
    v3 = *(v2 + 8);
    v4 = *(v2 + 4);
    if ((*(v2 + 16) & 4) != 0)
    {
      if (v4)
      {
        if (v4 == 1)
        {
          *__dst = *v3;
        }

        else
        {
          return memcpy(__dst, v3, v4);
        }
      }
    }

    else
    {
      v5 = &__dst[v4];
      if (v4 >= 0x10)
      {
        v6 = &__dst[v4 & 0xFFFFFFF0];
        do
        {
          v7 = vld2q_s8(v3);
          v3 += 32;
          *__dst = v7;
          __dst += 16;
        }

        while (__dst != v6);
      }

      while (__dst != v5)
      {
        v8 = *v3;
        v3 += 2;
        *__dst++ = v8;
      }
    }
  }

  return result;
}

uint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X4>, void *a6@<X8>)
{
  v9 = result;
  v11 = result;
  if (!a2)
  {
    if (result)
    {
      if (result <= 0x7FFFFFEF)
      {
        result = WTF::tryFastCompactMalloc((2 * result + 20));
        v12 = v21;
        if (!v21)
        {
          goto LABEL_20;
        }

        v13 = (v21 + 5);
        *v21 = 2;
        v12[1] = v9;
        *(v12 + 1) = v12 + 5;
        v12[4] = 0;
        v19 = a3;
        WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v19, v12 + 20);
        if (!v19)
        {
          goto LABEL_22;
        }

        v17 = *(v19 + 4);
        if (v17 <= v9)
        {
          goto LABEL_17;
        }

        goto LABEL_21;
      }

LABEL_12:
      v12 = 0;
      goto LABEL_20;
    }

LABEL_13:
    v12 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_20;
  }

  if (!result)
  {
    goto LABEL_13;
  }

  if ((result & 0x80000000) != 0)
  {
    goto LABEL_12;
  }

  result = WTF::tryFastCompactMalloc((result + 20));
  v12 = v21;
  if (!v21)
  {
    goto LABEL_20;
  }

  v13 = (v21 + 5);
  *v21 = 2;
  v12[1] = v9;
  *(v12 + 1) = v12 + 5;
  v12[4] = 4;
  v19 = a3;
  WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v19, v12 + 20);
  v14 = v19;
  if (!v19 || (v14 = *(v19 + 4), v14 <= v9))
  {
    v15 = v11 - v14;
    v11 = &v13[v14];
    v20 = a4;
    WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v20, &v13[v14]);
    v16 = v20;
    if (!v20 || (v16 = *(v20 + 4), v15 >= v16))
    {
      v21 = a5;
      result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v21, (v16 + v11));
      goto LABEL_20;
    }
  }

  do
  {
LABEL_21:
    __break(1u);
LABEL_22:
    v17 = 0;
LABEL_17:
    v11 -= v17;
    v20 = a4;
    WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v20, &v13[2 * v17]);
    v18 = v20;
    if (!v20)
    {
      break;
    }

    v18 = *(v20 + 4);
  }

  while (v11 < v18);
  v21 = a5;
  result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v21, &v13[2 * v18 + 2 * v17]);
LABEL_20:
  *a6 = v12;
  return result;
}