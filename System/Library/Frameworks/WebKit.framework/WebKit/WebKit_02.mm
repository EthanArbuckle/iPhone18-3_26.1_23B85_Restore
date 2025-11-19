uint64_t WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref(atomic_ullong *a1)
{
  v9[1] = a1;
  v9[0] = 0;
  v7 = v9;
  v16 = a1;
  v15 = &v7;
  v14 = 0;
  do
  {
    v19 = a1;
    v18 = 0;
    v13 = std::__atomic_base<unsigned long,false>::load[abi:sn200100](a1, 0);
    v12 = v13;
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref(void)const::{lambda(unsigned long &)#1}::operator()(v15, &v12);
    if ((result & 1) == 0)
    {
      v17 = 0;
      goto LABEL_7;
    }

    v24 = a1;
    v23 = v13;
    v22 = v12;
    v21 = v14;
    v20 = v13;
    result = std::__atomic_base<unsigned long,false>::compare_exchange_weak[abi:sn200100](a1, &v20, v12, v14);
  }

  while ((result & 1) == 0);
  v17 = 1;
LABEL_7:
  v8 = v17;
  if (v17)
  {
    if (v9[0] == 1)
    {
      v6 = a1;
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref(void)const::{lambda(void)#1}::operator()(&v6);
    }
  }

  else
  {
    v9[2] = a1;
    v11 = a1;
    v10 = 0;
    v5 = std::__atomic_base<unsigned long,false>::load[abi:sn200100](a1, 0);
    v4 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](&v5);
    return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>(v4);
  }

  return result;
}

WebKit::VisitedLinkStore *API::PageConfiguration::Data::LazyInitializedRef<WebKit::VisitedLinkStore,&API::PageConfiguration::Data::createVisitedLinkStore>::get(WebKit::VisitedLinkStore **a1)
{
  result = *a1;
  if (!result)
  {
    v3 = API::Object::newObject(0xB8uLL, 109);
    result = WebKit::VisitedLinkStore::VisitedLinkStore(v3);
    v4 = *a1;
    *a1 = result;
    if (v4)
    {
      CFRelease(*(v4 + 1));
      return *a1;
    }
  }

  return result;
}

uint64_t API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebProcessPool,&API::PageConfiguration::Data::createWebProcessPool>::get(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    API::PageConfiguration::Data::createWebProcessPool(0);
  }

  return result;
}

WebKit::WebUserContentControllerProxy *API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebUserContentControllerProxy,&API::PageConfiguration::Data::createWebUserContentControllerProxy>::get(WebKit::WebUserContentControllerProxy **a1)
{
  result = *a1;
  if (!result)
  {
    v3 = API::Object::newObject(0x70uLL, 104);
    result = WebKit::WebUserContentControllerProxy::WebUserContentControllerProxy(v3);
    v4 = *a1;
    *a1 = result;
    if (v4)
    {
      CFRelease(*(v4 + 1));
      return *a1;
    }
  }

  return result;
}

WTF::StringImpl **WebCore::Site::operator=(WTF::StringImpl **a1, atomic_uint **a2)
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

  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  v7 = a1[1];
  a1[1] = v6;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  return a1;
}

unsigned int *std::__optional_storage_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false> const&>(unsigned int *result, unsigned __int8 *a2)
{
  if (*(result + 16) == a2[16])
  {
    if (*(result + 16))
    {

      return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(result, a2);
    }
  }

  else if (*(result + 16))
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(result, a2);
    *(result + 16) = 0;
  }

  else
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(result, a2);
    *(result + 16) = 1;
  }

  return result;
}

uint64_t WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref(void)const::{lambda(unsigned long &)#1}::operator()(JSC::InlineWatchpointSet ***a1, JSC::InlineWatchpointSet **a2)
{
  if (JSC::InlineWatchpointSet::isThin(*a2))
  {
    *a2 = (*a2 - 2);
    **a1 = *a2;
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

unsigned int *std::__optional_storage_base<WebCore::WindowFeatures,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::WindowFeatures,false> const&>(unsigned int *result, __int128 *a2)
{
  v2 = result;
  if (*(result + 80) == *(a2 + 80))
  {
    if (*(result + 80))
    {
      v3 = *a2;
      v4 = a2[1];
      v5 = a2[2];
      *(result + 42) = *(a2 + 42);
      *(result + 1) = v4;
      *(result + 2) = v5;
      *result = v3;
      v6 = result + 16;
      v7 = (a2 + 4);

      return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(v6, v7);
    }
  }

  else if (*(result + 80))
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((result + 16), a2);
    *(v2 + 80) = 0;
  }

  else
  {
    v8 = *a2;
    v9 = a2[1];
    v10 = a2[2];
    *(result + 42) = *(a2 + 42);
    *(result + 1) = v9;
    *(result + 2) = v10;
    *result = v8;
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector((result + 16), (a2 + 4));
    *(v2 + 80) = 1;
  }

  return result;
}

WTF::StringImpl *std::__optional_storage_base<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1>,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1>,false> const&>(WTF::StringImpl *result, uint64_t a2)
{
  v2 = result;
  if (*(result + 24) == *(a2 + 24))
  {
    if (*(result + 24))
    {

      return WTF::RobinHoodHashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::operator=(result, a2);
    }
  }

  else if (*(result + 24))
  {
    result = *result;
    if (*v2)
    {
      result = WTF::RobinHoodHashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(result, *(v2 + 2));
    }

    *(v2 + 24) = 0;
  }

  else
  {
    result = WTF::RobinHoodHashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::RobinHoodHashTable(result, a2);
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t *std::__optional_storage_base<WTF::String,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WTF::String,false> const&>(uint64_t *a1, atomic_uint **a2)
{
  if (*(a1 + 8) == *(a2 + 8))
  {
    if (*(a1 + 8))
    {
      return WTF::String::operator=(a1, a2);
    }
  }

  else if (*(a1 + 8))
  {
    return std::__optional_destruct_base<WTF::String,false>::reset[abi:sn200100](a1, a2);
  }

  else
  {
    v2 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    }

    *a1 = v2;
    *(a1 + 8) = 1;
  }

  return a1;
}

void WebKit::WebExtensionControllerConfiguration::setDefaultWebsiteDataStore(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    CFRetain(*(a2 + 8));
  }

  v4 = *(a1 + 56);
  *(a1 + 56) = a2;
  if (v4)
  {
    v5 = *(v4 + 8);

    CFRelease(v5);
  }
}

void API::Object::constructInWrapper<WebKit::WebExtensionController,WTF::Ref<WebKit::WebExtensionControllerConfiguration,WTF::RawPtrTraits<WebKit::WebExtensionControllerConfiguration>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionControllerConfiguration>>>(void *a1, uint64_t *a2)
{
  v3 = a1;
  v4 = API::Object::apiObjectsUnderConstruction(v3);
  v9 = v3;
  v10 = [(API::Object *)v3 _apiObject];
  WTF::HashMap<API::Object *,void const*,WTF::DefaultHash<API::Object *>,WTF::HashTraits<API::Object *>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<void const*>(v4, &v10, &v9, v8);
  v5 = [(API::Object *)v3 _apiObject];
  v6 = *a2;
  *a2 = 0;
  v7 = v6;
  WebKit::WebExtensionController::WebExtensionController(v5, &v7);
  if (v6)
  {
    CFRelease(*(v6 + 8));
  }
}

uint64_t WebKit::WebExtensionController::WebExtensionController(uint64_t a1, uint64_t *a2)
{
  v4 = API::Object::Object(a1);
  *v4 = &unk_1F111E050;
  v5 = v4 + 16;
  *(v4 + 3) = 0;
  v6 = (v4 + 24);
  *(v4 + 2) = &unk_1F10EA5E0;
  *(a1 + 32) = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  *a1 = &unk_1F111DE88;
  *(a1 + 16) = &unk_1F111DEC8;
  v7 = *a2;
  CFRetain(*(v7 + 8));
  *(a1 + 40) = v7;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = *(a1 + 176) & 0xFC | 1;
  *(a1 + 177) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  if ((byte_1ED642B3B & 1) == 0)
  {
    qword_1ED642B58 = 0;
    byte_1ED642B3B = 1;
  }

  v8 = *(a1 + 32);
  if (v8 == -1 || !v8)
  {
    __break(0xC471u);
    JUMPOUT(0x19D58632CLL);
  }

  v9 = qword_1ED642B58;
  if (!qword_1ED642B58)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebExtensionController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand();
    v9 = qword_1ED642B58;
  }

  v10 = *(v9 - 8);
  v11 = (v8 + ~(v8 << 32)) ^ ((v8 + ~(v8 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = (v9 + 16 * v14);
  v16 = *v15;
  if (!*v15)
  {
LABEL_15:
    *v15 = v8;
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v6, v5);
    v20 = *v6;
    atomic_fetch_add(*v6, 1u);
    v21 = v15[1];
    v15[1] = v20;
    if (v21 && atomic_fetch_add(v21, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v21);
      WTF::fastFree(v21, v19);
    }

    v22 = qword_1ED642B58;
    if (qword_1ED642B58)
    {
      v23 = *(qword_1ED642B58 - 12) + 1;
    }

    else
    {
      v23 = 1;
    }

    *(qword_1ED642B58 - 12) = v23;
    v24 = (*(v22 - 16) + v23);
    v25 = *(v22 - 4);
    if (v25 > 0x400)
    {
      if (v25 > 2 * v24)
      {
        goto LABEL_24;
      }
    }

    else if (3 * v25 > 4 * v24)
    {
      goto LABEL_24;
    }

    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebExtensionController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand();
    goto LABEL_24;
  }

  v17 = 0;
  v18 = 1;
  while (v16 != v8)
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
        --*(v9 - 16);
        v15 = v17;
      }

      goto LABEL_15;
    }
  }

LABEL_24:
  WebKit::WebExtensionController::initializePlatform(a1);
  v26 = dispatch_time(0, 5000000000);
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v6, v5);
  v27 = *(a1 + 24);
  atomic_fetch_add(v27, 1u);
  v28 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
  *v28 = MEMORY[0x1E69E9818];
  v28[1] = 50331650;
  v28[2] = WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::WebExtensionController::WebExtensionController(WTF::Ref<WebKit::WebExtensionControllerConfiguration,WTF::RawPtrTraits<WebKit::WebExtensionControllerConfiguration>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionControllerConfiguration>>)::$_0>(WebKit::WebExtensionController::WebExtensionController(WTF::Ref<WebKit::WebExtensionControllerConfiguration,WTF::RawPtrTraits<WebKit::WebExtensionControllerConfiguration>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionControllerConfiguration>>)::$_0)::{lambda(void *)#1}::__invoke;
  v28[3] = &WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::WebExtensionController::WebExtensionController(WTF::Ref<WebKit::WebExtensionControllerConfiguration,WTF::RawPtrTraits<WebKit::WebExtensionControllerConfiguration>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionControllerConfiguration>>)::$_0>(WebKit::WebExtensionController::WebExtensionController(WTF::Ref<WebKit::WebExtensionControllerConfiguration,WTF::RawPtrTraits<WebKit::WebExtensionControllerConfiguration>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionControllerConfiguration>>)::$_0)::descriptor;
  v28[4] = a1;
  v28[5] = v27;
  dispatch_after(v26, MEMORY[0x1E69E96A0], v28);
  _Block_release(v28);
  return a1;
}

void WebKit::WebExtensionController::initializePlatform(WebKit::WebExtensionController *this)
{
  v2 = [[_WKWebExtensionControllerHelper alloc] initWithWebExtensionController:this];
  v3 = *(this + 6);
  *(this + 6) = v2;
}

void WebKit::WebExtensionControllerConfiguration::~WebExtensionControllerConfiguration(WebKit::WebExtensionControllerConfiguration *this, WTF::StringImpl *a2)
{
  *this = &unk_1F111DF10;
  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }

  v4 = *(this + 6);
  *(this + 6) = 0;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 5);
  *(this + 5) = 0;
  if (v5)
  {
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }
  }
}

void API::PageConfiguration::Data::~Data(API::PageConfiguration::Data *this, WTF::StringImpl *a2)
{
  v3 = *(this + 72);
  *(this + 72) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  if (*(this + 520) == 1)
  {
    v4 = *(this + 64);
    *(this + 64) = 0;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }
  }

  v5 = *(this + 63);
  *(this + 63) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 62);
  *(this + 62) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  if (*(this + 472) == 1)
  {
    v32 = *(this + 56);
    if (v32)
    {
      WTF::RobinHoodHashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v32, *(this + 114));
    }
  }

  v7 = *(this + 54);
  *(this + 54) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(this + 52);
  if (v8)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v8, a2);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 400, a2);
  v10 = *(this + 49);
  if (v10)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::WebURLSchemeHandler,WTF::RawPtrTraits<WebKit::WebURLSchemeHandler>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeHandler>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::WebURLSchemeHandler,WTF::RawPtrTraits<WebKit::WebURLSchemeHandler>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeHandler>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WebKit::WebURLSchemeHandler,WTF::RawPtrTraits<WebKit::WebURLSchemeHandler>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeHandler>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebKit::WebURLSchemeHandler,WTF::RawPtrTraits<WebKit::WebURLSchemeHandler>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeHandler>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v10, v9);
  }

  v11 = *(this + 48);
  *(this + 48) = 0;
  if (v11)
  {
    CFRelease(*(v11 + 8));
  }

  if (*(this + 360) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 344, v9);
  }

  v12 = *(this + 42);
  *(this + 42) = 0;
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(this + 41);
  *(this + 41) = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v9);
  }

  v14 = *(this + 34);
  *(this + 34) = 0;
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(this + 32);
  *(this + 32) = 0;
  if (v15 && atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v15);
    WTF::fastFree(v15, v9);
  }

  v16 = *(this + 31);
  *(this + 31) = 0;
  if (v16 && atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v16);
    WTF::fastFree(v16, v9);
  }

  if (*(this + 232) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 216, v9);
  }

  v17 = *(this + 18);
  *(this + 18) = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v9);
  }

  v18 = *(this + 17);
  *(this + 17) = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v9);
  }

  v19 = *(this + 16);
  *(this + 16) = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v9);
  }

  v20 = *(this + 15);
  *(this + 15) = 0;
  if (v20)
  {
    WTF::ThreadSafeRefCounted<WTF::Box<std::optional<API::PageConfiguration::OpenerInfo>>::Data,(WTF::DestructionThread)0>::deref(v20, v9);
  }

  v21 = *(this + 14);
  *(this + 14) = 0;
  if (v21 && atomic_fetch_add(v21, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v21);
    WTF::fastFree(v21, v9);
  }

  v22 = *(this + 13);
  *(this + 13) = 0;
  if (v22)
  {
    CFRelease(*(v22 + 8));
  }

  v23 = *(this + 12);
  *(this + 12) = 0;
  if (v23 && atomic_fetch_add(v23, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v23);
    WTF::fastFree(v23, v9);
  }

  v24 = *(this + 11);
  *(this + 11) = 0;
  if (v24)
  {
    CFRelease(*(v24 + 8));
  }

  v25 = *(this + 6);
  *(this + 6) = 0;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v9);
  }

  v26 = *(this + 5);
  *(this + 5) = 0;
  if (v26)
  {
    CFRelease(*(v26 + 8));
  }

  v27 = *(this + 4);
  *(this + 4) = 0;
  if (v27)
  {
    CFRelease(*(v27 + 8));
  }

  v28 = *(this + 3);
  *(this + 3) = 0;
  if (v28)
  {
    CFRelease(*(v28 + 8));
  }

  v29 = *(this + 2);
  *(this + 2) = 0;
  if (v29)
  {
    CFRelease(*(v29 + 8));
  }

  v30 = *(this + 1);
  *(this + 1) = 0;
  if (v30)
  {
    CFRelease(*(v30 + 8));
  }

  v31 = *this;
  *this = 0;
  if (v31)
  {
    CFRelease(*(v31 + 8));
  }
}

_DWORD *WTF::RefCounted<WebKit::BrowsingContextGroup>::deref(_DWORD *result, void *a2)
{
  if (*result == 1)
  {
    WebKit::BrowsingContextGroup::~BrowsingContextGroup((result - 2), a2);

    return WTF::fastFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::determineTrackingPreventionState(void)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F10F1880;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Condition::notifyOne(WTF::Condition *this)
{
  v1 = atomic_load(this);
  if (v1)
  {
    v5 = 0;
    v4[0] = this;
    v4[1] = &v5;
    v6[0] = WTF::ScopedLambdaRefFunctor<long ()(WTF::ParkingLot::UnparkResult),WTF::Condition::notifyOne(void)::{lambda(WTF::ParkingLot::UnparkResult)#1}>::implFunction;
    v6[1] = v6;
    v6[2] = v4;
    WTF::ParkingLot::unparkOneImpl();
    v2 = v5;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::resolveDirectoriesAsynchronously(void)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11213F0;
  WebKit::WebsiteDataStoreConfiguration::Directories::~Directories((a1 + 3), a2);
  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    CFRelease(*(v4 + 8));
  }

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::handleResolvedDirectoriesAsynchronously(WebKit::WebsiteDataStoreConfiguration::Directories const&,BOOL)::$_0,void>::call(uint64_t this, const WTF::String *a2)
{
  v2 = this;
  v4 = (this + 8);
  v3 = *(this + 8);
  if (v3 && *(v3 + 4))
  {
    WebCore::DatabaseTracker::trackerWithDatabasePath(&v55, (this + 8), a2);
    WebCore::DatabaseTracker::deleteAllDatabasesImmediately(v55);
    v6 = v55;
    v55 = 0;
    if (v6)
    {
      v7 = *(v6 + 16);
      if (v7)
      {
        v7 = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v7, v5);
      }

      v8 = *(v6 + 15);
      if (v8)
      {
        v9 = *(v8 - 4);
        if (v9)
        {
          v10 = (v8 + 24);
          while (1)
          {
            v11 = *v10;
            if (*v10)
            {
              break;
            }

            if (*(v10 - 3) != -1)
            {
              goto LABEL_11;
            }

LABEL_21:
            v10 += 56;
            if (!--v9)
            {
              goto LABEL_25;
            }
          }

          if (v11 != 1)
          {
LABEL_78:
            mpark::throw_bad_variant_access(v7);
          }

LABEL_11:
          v7 = *(v10 + 1);
          if (v7)
          {
            v7 = WTF::RobinHoodHashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v7, *(v10 + 4));
            v11 = *v10;
          }

          if (!v11)
          {
            v12 = *(v10 - 2);
            *(v10 - 2) = 0;
            if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v12, v5);
            }

            v7 = *(v10 - 3);
            *(v10 - 3) = 0;
            if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              v7 = WTF::StringImpl::destroy(v7, v5);
            }
          }

          *v10 = -1;
          goto LABEL_21;
        }

LABEL_25:
        v7 = WTF::fastFree((v8 - 16), v5);
      }

      v13 = *(v6 + 14);
      if (v13)
      {
        v14 = *(v13 - 4);
        if (v14)
        {
          v15 = (v13 + 24);
          while (1)
          {
            v16 = *v15;
            if (*v15)
            {
              break;
            }

            if (*(v15 - 3) != -1)
            {
              goto LABEL_31;
            }

LABEL_41:
            v15 += 40;
            if (!--v14)
            {
              goto LABEL_45;
            }
          }

          if (v16 != 1)
          {
            goto LABEL_78;
          }

LABEL_31:
          v7 = *(v15 + 1);
          if (v7)
          {
            v7 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v7, v5);
            v16 = *v15;
          }

          if (!v16)
          {
            v17 = *(v15 - 2);
            *(v15 - 2) = 0;
            if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v17, v5);
            }

            v7 = *(v15 - 3);
            *(v15 - 3) = 0;
            if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              v7 = WTF::StringImpl::destroy(v7, v5);
            }
          }

          *v15 = -1;
          goto LABEL_41;
        }

LABEL_45:
        WTF::fastFree((v13 - 16), v5);
      }

      v18 = *(v6 + 12);
      *(v6 + 12) = 0;
      if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v5);
      }

      v19 = *(v6 + 11);
      if (v19)
      {
        v20 = *(v19 - 4);
        if (v20)
        {
          v21 = *(v6 + 11);
          do
          {
            v22 = *v21;
            if (*v21 != -1)
            {
              v23 = *(v21 + 8);
              *(v21 + 8) = 0;
              if (v23)
              {
                if (atomic_fetch_add(v23, 0xFFFFFFFF) == 1)
                {
                  atomic_store(1u, v23);
                  WebCore::OriginLock::~OriginLock(v23);
                  WTF::fastFree(v24, v25);
                }

                v22 = *v21;
              }

              *v21 = 0;
              if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v22, v5);
              }
            }

            v21 += 16;
            --v20;
          }

          while (v20);
        }

        WTF::fastFree((v19 - 16), v5);
      }

      v7 = MEMORY[0x19EB058E0](v6 + 24);
      v27 = *(v6 + 1);
      *(v6 + 1) = 0;
      if (v27)
      {
        v28 = *v27;
        if (*v27)
        {
          v29 = *(v28 - 4);
          if (v29)
          {
            v30 = *v27;
            while (!*(v30 + 24))
            {
              if (*v30 != -1)
              {
                v31 = *(v30 + 8);
                *(v30 + 8) = 0;
                if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v31, v26);
                }

                v7 = *v30;
                *v30 = 0;
                if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  v7 = WTF::StringImpl::destroy(v7, v26);
                }

LABEL_74:
                *(v30 + 24) = -1;
              }

              v30 += 40;
              if (!--v29)
              {
                goto LABEL_79;
              }
            }

            if (*(v30 + 24) != 1)
            {
              goto LABEL_78;
            }

            goto LABEL_74;
          }

LABEL_79:
          WTF::fastFree((v28 - 16), v26);
        }

        WTF::fastFree(v27, v26);
      }

      bmalloc::api::tzoneFree(v6, v26);
    }

    this = WTF::FileSystemImpl::deleteEmptyDirectory(v4, v5);
  }

  v32 = *(v2 + 16);
  if (v32 && *(v32 + 4))
  {
    v33 = WTF::fastMalloc(0x88);
    v34 = MEMORY[0x19EB0B3F0](v33, v2 + 16, v2 + 24);
    WebCore::ApplicationCacheStorage::deleteAllCaches(v34);
    if (*v33 == 1)
    {
      v46 = *(v33 + 16);
      if (v46)
      {
        v47 = *(v46 - 4);
        if (v47)
        {
          v48 = *(v33 + 16);
          do
          {
            v49 = *v48;
            if (*v48 != -1)
            {
              *v48 = 0;
              if (v49)
              {
                if (atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v49, v35);
                }
              }
            }

            v48 += 2;
            --v47;
          }

          while (v47);
        }

        WTF::fastFree((v46 - 16), v35);
      }

      v50 = *(v33 + 15);
      if (v50)
      {
        WTF::fastFree((v50 - 16), v35);
      }

      MEMORY[0x19EB058E0](v33 + 56);
      v52 = *(v33 + 3);
      *(v33 + 3) = 0;
      if (v52 && atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v52, v51);
      }

      v53 = *(v33 + 2);
      *(v33 + 2) = 0;
      if (v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v53, v51);
      }

      v54 = *(v33 + 1);
      *(v33 + 1) = 0;
      if (v54 && atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v54, v51);
      }

      if (*v33 != 1)
      {
        this = 191;
        __break(0xC471u);
        return this;
      }

      WTF::fastFree(v33, v51);
    }

    else
    {
      --*v33;
    }

    v36 = *(v2 + 24);
    if (v36)
    {
      if (*(v36 + 4))
      {
        WTF::FileSystemImpl::pathByAppendingComponent();
        WTF::FileSystemImpl::deleteEmptyDirectory(&v55, v37);
        v39 = v55;
        v55 = 0;
        if (v39)
        {
          if (atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v39, v38);
          }
        }
      }
    }

    WTF::FileSystemImpl::pathByAppendingComponent();
    WebCore::SQLiteFileSystem::deleteDatabaseFile(&v55, v40);
    WTF::FileSystemImpl::deleteEmptyDirectory((v2 + 16), v41);
    this = v55;
    v55 = 0;
    if (this && atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      this = WTF::StringImpl::destroy(this, v42);
    }
  }

  v43 = *(v2 + 44);
  if (v43)
  {
    v44 = *(v2 + 32);
    v45 = 8 * v43;
    do
    {
      this = WTF::FileSystemImpl::setExcludedFromBackup(v44, 1);
      v44 = (v44 + 8);
      v45 -= 8;
    }

    while (v45);
  }

  return this;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::handleResolvedDirectoriesAsynchronously(WebKit::WebsiteDataStoreConfiguration::Directories const&,BOOL)::$_0,void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F1121440;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 32, a2);
  v4 = *(a1 + 3);
  *(a1 + 3) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v3);
  }

  v5 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v3);
  }

  v6 = *(a1 + 1);
  *(a1 + 1) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v3);
  }

  return WTF::fastFree(a1, v3);
}

void *WebKit::WebUserContentControllerProxy::removeAllContentRuleLists(uint64_t a1, const WTF::URL *a2)
{
  if (!a2)
  {
    v49 = 0;
    v50 = 0;
    v7 = *(a1 + 104);
    if (v7)
    {
      v8 = *(v7 - 4);
      v9 = (v7 + 56 * v8);
      if (*(v7 - 12))
      {
        if (v8)
        {
          v10 = 56 * v8;
          v11 = *(a1 + 104);
          while (*v11 + 1 <= 1)
          {
            v11 += 7;
            v10 -= 56;
            if (!v10)
            {
              v11 = v9;
              goto LABEL_44;
            }
          }
        }

        else
        {
          v11 = *(a1 + 104);
        }

        goto LABEL_44;
      }
    }

    else
    {
      v9 = 0;
      LODWORD(v8) = 0;
    }

    v11 = v9;
    v9 = (v7 + 56 * v8);
    if (!v7)
    {
      v36 = 0;
LABEL_45:
      if (v36 != v11)
      {
        do
        {
          if ((WebKit::WebExtensionMatchPattern::isWebExtensionURL((v11 + 2), a2) & 1) == 0)
          {
            v38 = HIDWORD(v50);
            if (HIDWORD(v50) == v50)
            {
              WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(&v49, v11);
            }

            else
            {
              v39 = v49;
              v40 = *v11;
              if (*v11)
              {
                atomic_fetch_add_explicit(v40, 2u, memory_order_relaxed);
              }

              v41 = HIDWORD(v50);
              *(v39 + v38) = v40;
              HIDWORD(v50) = v41 + 1;
            }
          }

          do
          {
            v11 += 7;
          }

          while (v11 != v9 && *v11 + 1 <= 1);
        }

        while (v11 != v36);
        if (HIDWORD(v50))
        {
          v42 = v49;
          v43 = 8 * HIDWORD(v50);
          do
          {
            WebKit::WebUserContentControllerProxy::removeContentRuleList(a1, v42++, v37);
            v43 -= 8;
          }

          while (v43);
        }
      }

      return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v49, a2);
    }

LABEL_44:
    v36 = (v7 + 56 * *(v7 - 4));
    goto LABEL_45;
  }

  v3 = *(a1 + 104);
  if (v3)
  {
    *(a1 + 104) = 0;
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin((a1 + 40), &v49);
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(v4 - 4);
    v6 = v4 + 8 * v5;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v44 = a1 + 40;
  v45 = v6;
  v46 = v6;
  v47 = v6;
  v48 = v4 + 8 * v5;
  WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v44);
  v13 = v50;
  if (v50 != v45)
  {
    while (1)
    {
      v14 = *(*v13 + 8);
      atomic_fetch_add((v14 + 16), 1u);
      v15 = *(a1 + 32);
      v16 = IPC::Encoder::operator new(0x238, v12);
      *v16 = 3184;
      *(v16 + 2) = 0;
      *(v16 + 3) = 0;
      *(v16 + 1) = v15;
      *(v16 + 68) = 0;
      *(v16 + 70) = 0;
      *(v16 + 69) = 0;
      IPC::Encoder::encodeHeader(v16);
      v53 = v16;
      LOBYTE(v51[0]) = 0;
      v52 = 0;
      WebKit::AuxiliaryProcessProxy::sendMessage(v14, &v53, 0, v51, 1);
      if (v52 == 1)
      {
        v18 = v51[0];
        v51[0] = 0;
        if (v18)
        {
          (*(*v18 + 8))(v18);
        }
      }

      v19 = v53;
      v53 = 0;
      if (v19)
      {
        break;
      }

      if (v14)
      {
        goto LABEL_21;
      }

LABEL_22:
      WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v49);
      v13 = v50;
      if (v50 == v45)
      {
        goto LABEL_26;
      }
    }

    IPC::Encoder::~Encoder(v19, v17);
    bmalloc::api::tzoneFree(v20, v21);
    if (!v14)
    {
      goto LABEL_22;
    }

LABEL_21:
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v14 + 16));
    goto LABEL_22;
  }

LABEL_26:
  WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin((a1 + 88), &v49);
  v22 = *(a1 + 88);
  if (v22)
  {
    v23 = *(v22 - 4);
    v24 = v22 + 8 * v23;
  }

  else
  {
    v24 = 0;
    v23 = 0;
  }

  v44 = a1 + 88;
  v45 = v24;
  v46 = v24;
  v47 = v24;
  v48 = v22 + 8 * v23;
  result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v44);
  v27 = v50;
  if (v50 != v45)
  {
    while (1)
    {
      v28 = *(*v27 + 8);
      atomic_fetch_add((v28 + 16), 1u);
      v29 = *(a1 + 32);
      v30 = IPC::Encoder::operator new(0x238, v26);
      *v30 = 504;
      *(v30 + 68) = 0;
      *(v30 + 70) = 0;
      *(v30 + 69) = 0;
      *(v30 + 2) = 0;
      *(v30 + 3) = 0;
      *(v30 + 1) = 0;
      IPC::Encoder::encodeHeader(v30);
      v53 = v30;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v30, v29);
      LOBYTE(v51[0]) = 0;
      v52 = 0;
      WebKit::AuxiliaryProcessProxy::sendMessage(v28, &v53, 0, v51, 1);
      if (v52 == 1)
      {
        v32 = v51[0];
        v51[0] = 0;
        if (v32)
        {
          (*(*v32 + 8))(v32);
        }
      }

      v33 = v53;
      v53 = 0;
      if (v33)
      {
        break;
      }

      if (v28)
      {
        goto LABEL_35;
      }

LABEL_36:
      result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v49);
      v27 = v50;
      if (v50 == v45)
      {
        return result;
      }
    }

    IPC::Encoder::~Encoder(v33, v31);
    bmalloc::api::tzoneFree(v34, v35);
    if (!v28)
    {
      goto LABEL_36;
    }

LABEL_35:
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v28 + 16));
    goto LABEL_36;
  }

  return result;
}

API::ContentRuleListStore *API::ContentRuleListStore::ContentRuleListStore(API::ContentRuleListStore *this, atomic_uint **a2)
{
  *API::Object::Object(this) = &unk_1F111AFD0;
  v5 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  *(this + 2) = v5;
  WTF::FileSystemImpl::makeAllDirectories(a2, v4);
  return this;
}

void sub_19D587684(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (v2)
  {
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void *WebKit::WebPreferences::setTelephoneNumberParsingEnabled(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::telephoneNumberParsingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::telephoneNumberParsingEnabledKey(void)::key = WebKit::WebPreferencesKey::telephoneNumberParsingEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::telephoneNumberParsingEnabledKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::telephoneNumberParsingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::telephoneNumberParsingEnabledKey(void)::key = WebKit::WebPreferencesKey::telephoneNumberParsingEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::telephoneNumberParsingEnabledKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::updateBoolValueForKey(atomic_uint **this, atomic_uint **a2, const WTF::StringImpl *a3, char a4)
{
  v4 = a3;
  if ((a4 & 1) == 0)
  {
    WebKit::WebPreferences::platformUpdateBoolValueForKey(this, a2, a3);
  }

  {
    v7 = WebKit::WebPreferencesKey::processSwapOnCrossSiteNavigationEnabledKey(void)::key;
  }

  else
  {
    v7 = WebKit::WebPreferencesKey::processSwapOnCrossSiteNavigationEnabledKey(void)::$_0::operator() const(void)::impl;
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::processSwapOnCrossSiteNavigationEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::processSwapOnCrossSiteNavigationEnabledKey(void)::key = WebKit::WebPreferencesKey::processSwapOnCrossSiteNavigationEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WTF::equal(*a2, v7, a3))
  {
    WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(this + 11, &v21);
    v8 = this[11];
    if (v8)
    {
      v9 = *(v8 - 1);
      v10 = &v8[2 * v9];
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }

    v16 = (this + 11);
    v17 = v10;
    v18 = v10;
    v19 = v10;
    v20 = &v8[2 * v9];
    result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v16);
    v12 = v22;
    if (v22 != v17)
    {
      v13 = v4 | 0x100;
      do
      {
        v14 = *(*v12 + 8);
        if (v14)
        {
          v15 = v14 - 16;
        }

        else
        {
          v15 = 0;
        }

        CFRetain(*(v15 + 8));
        *(*(API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebProcessPool,&API::PageConfiguration::Data::createWebProcessPool>::get((*(v15 + 64) + 16)) + 48) + 84) = v13;
        if (v14)
        {
          CFRelease(*(v14 - 8));
        }

        result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v21);
        v12 = v22;
      }

      while (v22 != v17);
    }
  }

  else
  {

    return WebKit::WebPreferences::update(this);
  }

  return result;
}

void WebKit::WebPreferences::platformUpdateBoolValueForKey(atomic_uint **this, atomic_uint **a2, uint64_t a3)
{
  if (this[2])
  {
    v6 = [MEMORY[0x1E695E000] standardUserDefaults];
    WebKit::makeKey(&v8, this[2], this + 3, a2);
    [v6 setBool:a3 forKey:v8];
    v7 = v8;
    v8 = 0;
    if (v7)
    {
    }
  }
}

void sub_19D58796C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void *WebKit::WebPreferences::update(void *this)
{
  v1 = this;
  if (*(this + 26))
  {
    *(this + 108) = 1;
  }

  else
  {
    WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(this + 11, &v12);
    v2 = v1[11];
    if (v2)
    {
      v3 = *(v2 - 4);
      v4 = v2 + 8 * v3;
    }

    else
    {
      v4 = 0;
      v3 = 0;
    }

    v7 = v1 + 11;
    v8 = v4;
    v9 = v4;
    v10 = v4;
    v11 = v2 + 8 * v3;
    this = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v7);
    while (v13 != v8)
    {
      v5 = *(*v13 + 8);
      if (v5)
      {
        v6 = (v5 - 16);
      }

      else
      {
        v6 = 0;
      }

      CFRetain(v6[1]);
      WebKit::WebPageProxy::preferencesDidChange(v6);
      if (v5)
      {
        CFRelease(*(v5 - 8));
      }

      this = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v12);
    }
  }

  return this;
}

void *WebKit::WebPreferences::setShouldSuppressTextInputFromEditingDuringProvisionalNavigation(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldSuppressTextInputFromEditingDuringProvisionalNavigationKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::shouldSuppressTextInputFromEditingDuringProvisionalNavigationKey(void)::key = WebKit::WebPreferencesKey::shouldSuppressTextInputFromEditingDuringProvisionalNavigationKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::shouldSuppressTextInputFromEditingDuringProvisionalNavigationKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldSuppressTextInputFromEditingDuringProvisionalNavigationKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::shouldSuppressTextInputFromEditingDuringProvisionalNavigationKey(void)::key = WebKit::WebPreferencesKey::shouldSuppressTextInputFromEditingDuringProvisionalNavigationKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::shouldSuppressTextInputFromEditingDuringProvisionalNavigationKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setDiagnosticLoggingEnabled(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::diagnosticLoggingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::diagnosticLoggingEnabledKey(void)::key = WebKit::WebPreferencesKey::diagnosticLoggingEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::diagnosticLoggingEnabledKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::diagnosticLoggingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::diagnosticLoggingEnabledKey(void)::key = WebKit::WebPreferencesKey::diagnosticLoggingEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::diagnosticLoggingEnabledKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setShouldAllowUserInstalledFonts(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldAllowUserInstalledFontsKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::shouldAllowUserInstalledFontsKey(void)::key = WebKit::WebPreferencesKey::shouldAllowUserInstalledFontsKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::shouldAllowUserInstalledFontsKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldAllowUserInstalledFontsKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::shouldAllowUserInstalledFontsKey(void)::key = WebKit::WebPreferencesKey::shouldAllowUserInstalledFontsKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::shouldAllowUserInstalledFontsKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setShouldPrintBackgrounds(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldPrintBackgroundsKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::shouldPrintBackgroundsKey(void)::key = WebKit::WebPreferencesKey::shouldPrintBackgroundsKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::shouldPrintBackgroundsKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldPrintBackgroundsKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::shouldPrintBackgroundsKey(void)::key = WebKit::WebPreferencesKey::shouldPrintBackgroundsKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::shouldPrintBackgroundsKey(void)::key, v5, 0);
  }

  return result;
}

BOOL WebKit::WebPreferencesStore::setUInt32ValueForKey(WebKit::WebPreferencesStore *this, WTF::StringImpl **a2, int a3)
{
  v6 = WebKit::valueForKey<unsigned int>(this, this + 24, a2);
  if (v6 != a3)
  {
    LODWORD(v11) = a3;
    v12 = 2;
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

  return v6 != a3;
}

uint64_t WebKit::WebPreferences::setStorageBlockingPolicy(atomic_uint **this, const unsigned int *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::storageBlockingPolicyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::storageBlockingPolicyKey(void)::key = WebKit::WebPreferencesKey::storageBlockingPolicyKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setUInt32ValueForKey((this + 5), &WebKit::WebPreferencesKey::storageBlockingPolicyKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::storageBlockingPolicyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::storageBlockingPolicyKey(void)::key = WebKit::WebPreferencesKey::storageBlockingPolicyKey(void)::$_0::operator() const(void)::impl;
    }

    WebKit::WebPreferences::platformUpdateUInt32ValueForKey(this, &WebKit::WebPreferencesKey::storageBlockingPolicyKey(void)::key, *a2);

    return WebKit::WebPreferences::update(this);
  }

  return result;
}

void *WebKit::WebPreferences::setNeedsSiteSpecificQuirks(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::needsSiteSpecificQuirksKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::needsSiteSpecificQuirksKey(void)::key = WebKit::WebPreferencesKey::needsSiteSpecificQuirksKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::needsSiteSpecificQuirksKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::needsSiteSpecificQuirksKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::needsSiteSpecificQuirksKey(void)::key = WebKit::WebPreferencesKey::needsSiteSpecificQuirksKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::needsSiteSpecificQuirksKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setMediaDevicesEnabled(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaDevicesEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::mediaDevicesEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaDevicesEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::mediaDevicesEnabledKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaDevicesEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::mediaDevicesEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaDevicesEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::mediaDevicesEnabledKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setMediaSourceEnabled(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaSourceEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::mediaSourceEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaSourceEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::mediaSourceEnabledKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaSourceEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::mediaSourceEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaSourceEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::mediaSourceEnabledKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setFullScreenEnabled(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::fullScreenEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::fullScreenEnabledKey(void)::key = WebKit::WebPreferencesKey::fullScreenEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::fullScreenEnabledKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::fullScreenEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::fullScreenEnabledKey(void)::key = WebKit::WebPreferencesKey::fullScreenEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::fullScreenEnabledKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setTextExtractionEnabled(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::textExtractionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::textExtractionEnabledKey(void)::key = WebKit::WebPreferencesKey::textExtractionEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::textExtractionEnabledKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::textExtractionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::textExtractionEnabledKey(void)::key = WebKit::WebPreferencesKey::textExtractionEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::textExtractionEnabledKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setMockCaptureDevicesEnabled(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mockCaptureDevicesEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::mockCaptureDevicesEnabledKey(void)::key = WebKit::WebPreferencesKey::mockCaptureDevicesEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::mockCaptureDevicesEnabledKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mockCaptureDevicesEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::mockCaptureDevicesEnabledKey(void)::key = WebKit::WebPreferencesKey::mockCaptureDevicesEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::mockCaptureDevicesEnabledKey(void)::key, v5, 1);
  }

  return result;
}

void *WebKit::WebPreferences::setMediaCaptureRequiresSecureConnection(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaCaptureRequiresSecureConnectionKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::mediaCaptureRequiresSecureConnectionKey(void)::key = WebKit::WebPreferencesKey::mediaCaptureRequiresSecureConnectionKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::mediaCaptureRequiresSecureConnectionKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaCaptureRequiresSecureConnectionKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::mediaCaptureRequiresSecureConnectionKey(void)::key = WebKit::WebPreferencesKey::mediaCaptureRequiresSecureConnectionKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::mediaCaptureRequiresSecureConnectionKey(void)::key, v5, 1);
  }

  return result;
}

void *WebKit::WebPreferences::setEnumeratingAllNetworkInterfacesEnabled(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::enumeratingAllNetworkInterfacesEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::enumeratingAllNetworkInterfacesEnabledKey(void)::key = WebKit::WebPreferencesKey::enumeratingAllNetworkInterfacesEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::enumeratingAllNetworkInterfacesEnabledKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::enumeratingAllNetworkInterfacesEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::enumeratingAllNetworkInterfacesEnabledKey(void)::key = WebKit::WebPreferencesKey::enumeratingAllNetworkInterfacesEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::enumeratingAllNetworkInterfacesEnabledKey(void)::key, v5, 1);
  }

  return result;
}

void *WebKit::WebPreferences::setICECandidateFilteringEnabled(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::iceCandidateFilteringEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::iceCandidateFilteringEnabledKey(void)::key = WebKit::WebPreferencesKey::iceCandidateFilteringEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::iceCandidateFilteringEnabledKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::iceCandidateFilteringEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::iceCandidateFilteringEnabledKey(void)::key = WebKit::WebPreferencesKey::iceCandidateFilteringEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::iceCandidateFilteringEnabledKey(void)::key, v5, 1);
  }

  return result;
}

void *WebKit::WebPreferences::setJavaScriptEnabled(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::javaScriptEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::javaScriptEnabledKey(void)::key = WebKit::WebPreferencesKey::javaScriptEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::javaScriptEnabledKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::javaScriptEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::javaScriptEnabledKey(void)::key = WebKit::WebPreferencesKey::javaScriptEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::javaScriptEnabledKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setJavaScriptCanOpenWindowsAutomatically(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::javaScriptCanOpenWindowsAutomaticallyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::javaScriptCanOpenWindowsAutomaticallyKey(void)::key = WebKit::WebPreferencesKey::javaScriptCanOpenWindowsAutomaticallyKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::javaScriptCanOpenWindowsAutomaticallyKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::javaScriptCanOpenWindowsAutomaticallyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::javaScriptCanOpenWindowsAutomaticallyKey(void)::key = WebKit::WebPreferencesKey::javaScriptCanOpenWindowsAutomaticallyKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::javaScriptCanOpenWindowsAutomaticallyKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setApplePayCapabilityDisclosureAllowed(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::applePayCapabilityDisclosureAllowedKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::applePayCapabilityDisclosureAllowedKey(void)::key = WebKit::WebPreferencesKey::applePayCapabilityDisclosureAllowedKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::applePayCapabilityDisclosureAllowedKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::applePayCapabilityDisclosureAllowedKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::applePayCapabilityDisclosureAllowedKey(void)::key = WebKit::WebPreferencesKey::applePayCapabilityDisclosureAllowedKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::applePayCapabilityDisclosureAllowedKey(void)::key, v5, 0);
  }

  return result;
}

uint64_t WebKit::WebProcessPool::prewarmProcess(uint64_t this)
{
  v1 = this;
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(this + 88);
  if (!v2 || !*(v2 + 8))
  {
    {
      WebKit::liveProcessesLRU(void)::processes = 0u;
      *algn_1ED643678 = 0u;
    }

    this = WTF::WeakListHashSet<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::removeNullReferences(&WebKit::liveProcessesLRU(void)::processes);
    v3 = WebKit::liveProcessesLRU(void)::processes;
    if (WebKit::liveProcessesLRU(void)::processes)
    {
      v3 = *(WebKit::liveProcessesLRU(void)::processes - 12);
    }

    if (v3 < WebKit::s_maxProcessCount)
    {
      v4 = qword_1ED640F68;
      v5 = os_log_type_enabled(qword_1ED640F68, OS_LOG_TYPE_DEFAULT);
      if (v5)
      {
        *buf = 134217984;
        v8 = v1;
        _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - WebProcessPool::prewarmProcess: Prewarming a WebProcess for performance", buf, 0xCu);
      }

      if (HIBYTE(WebKit::cachedLockdownModeEnabledGlobally(void)::cachedLockdownModeEnabledGlobally) == 1)
      {
        LOBYTE(isLockdownModeEnabledBySystemIgnoringCaching) = WebKit::cachedLockdownModeEnabledGlobally(void)::cachedLockdownModeEnabledGlobally;
      }

      else
      {
        isLockdownModeEnabledBySystemIgnoringCaching = WebKit::isLockdownModeEnabledBySystemIgnoringCaching(v5);
        WebKit::cachedLockdownModeEnabledGlobally(void)::cachedLockdownModeEnabledGlobally = isLockdownModeEnabledBySystemIgnoringCaching | 0x100;
      }

      WebKit::WebProcessPool::createNewWebProcess(v1, 0, isLockdownModeEnabledBySystemIgnoringCaching & 1, 1);
    }
  }

  return this;
}

uint64_t WebKit::WebProcessProxy::operator new(WebKit::WebProcessProxy *this, void *a2)
{
  if (WebKit::WebProcessProxy::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebProcessProxy::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebProcessProxy::operatorNewSlow(0x4D8);
  }
}

void WebKit::WebProcessProxy::WebProcessProxy(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = WebKit::AuxiliaryProcessProxy::AuxiliaryProcessProxy(a1, *(a2 + 537), *(a2 + 536), 3.0);
  *v7 = &unk_1F1119F00;
  v7[3] = &unk_1F111A048;
  v7[4] = &unk_1F111A0D0;
  WebKit::BackgroundProcessResponsivenessTimer::BackgroundProcessResponsivenessTimer((v7 + 52), a1);
  *(a1 + 544) = a4;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a2 + 24), a2 + 16);
  v8 = *(a2 + 24);
  atomic_fetch_add(v8, 1u);
  *(a1 + 552) = v8;
  *(a1 + 560) = 0;
  WebKit::WebProcessProxy::WeakOrStrongPtr<WebKit::WebProcessPool>::updateStrongReference(a1 + 544);
  *(a1 + 568) = 0;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 684) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 1;
  *(a1 + 728) = 0;
  *(a1 + 736) = 0;
  *(a1 + 752) = 0;
  *(a1 + 760) = 0;
  *(a1 + 764) = 1;
  *(a1 + 768) = 0u;
  v9 = WTF::fastMalloc(0x10);
  *v9 = &unk_1F111A920;
  v9[1] = a1;
  *(a1 + 784) = v9;
  operator new();
}

uint64_t WebKit::AuxiliaryProcessProxy::AuxiliaryProcessProxy(uint64_t a1, char a2, char a3, double a4)
{
  *(a1 + 16) = 1;
  *(a1 + 48) = 0;
  *a1 = &unk_1F1114878;
  *(a1 + 8) = 0;
  *(a1 + 24) = &unk_1F1114978;
  *(a1 + 32) = &unk_1F1114A00;
  *(a1 + 40) = 0;
  v8 = WTF::fastMalloc(0x58);
  v9 = WebKit::ResponsivenessTimer::ResponsivenessTimer(v8, a1, a4);
  *(a1 + 56) = v9;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = a3;
  *(a1 + 113) = 0;
  *(a1 + 120) = WebCore::Process::generateIdentifier(v9);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  WebKit::ProcessThrottler::ProcessThrottler((a1 + 144), a1, a2);
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  return a1;
}

uint64_t WebKit::ResponsivenessTimer::ResponsivenessTimer(uint64_t a1, uint64_t a2, double a3)
{
  *a1 = 1;
  v6 = WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a2 + 8), a2);
  v7 = *(a2 + 8);
  atomic_fetch_add(v7, 1u);
  *(a1 + 8) = v7;
  v8 = WTF::RunLoop::mainSingleton(v6);
  v9 = v8;
  while (1)
  {
    v10 = *(v8 + 8);
    if ((v10 & 1) == 0)
    {
      break;
    }

    v11 = *(v8 + 8);
    atomic_compare_exchange_strong_explicit((v8 + 8), &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v11 == v10)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v8 + 8));
LABEL_6:
  v14 = v9;
  v12 = WTF::fastMalloc(0x20);
  *v12 = &unk_1F1115880;
  v12[1] = a1;
  v12[2] = WebKit::ResponsivenessTimer::timerFired;
  v12[3] = 0;
  WTF::RunLoop::TimerBase::TimerBase();
  *(a1 + 16) = &unk_1F10E6DC8;
  *(a1 + 56) = v12;
  if (v14)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v14 + 8));
  }

  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 74) = 0;
  *(a1 + 80) = a3;
  return a1;
}

WebKit::ProcessThrottler *WebKit::ProcessThrottler::ProcessThrottler(WebKit::ProcessThrottler *this, WebKit::AuxiliaryProcessProxy *a2, char a3)
{
  *this = 0;
  if (WebKit::ProcessThrottler::ProcessAssertionCache::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::ProcessThrottler::ProcessAssertionCache::s_heapRef, a2);
  }

  else
  {
    NonCompact = WebKit::ProcessThrottler::ProcessAssertionCache::operatorNewSlow(0);
  }

  NonCompact[1] = 0;
  NonCompact[2] = 0;
  *NonCompact = 0;
  *(NonCompact + 16) = 1;
  *(this + 1) = NonCompact;
  v7 = WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 2, a2);
  v8 = *(a2 + 1);
  atomic_fetch_add(v8, 1u);
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = v8;
  v9 = WTF::RunLoop::mainSingleton(v7);
  v10 = v9;
  while (1)
  {
    v11 = *(v9 + 8);
    if ((v11 & 1) == 0)
    {
      break;
    }

    v12 = *(v9 + 8);
    atomic_compare_exchange_strong_explicit((v9 + 8), &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v12 == v11)
    {
      goto LABEL_8;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v9 + 8));
LABEL_8:
  v27 = v10;
  v13 = WTF::RunLoop::Timer::Timer<WebKit::ProcessThrottler>(this + 5, &v27, "ProcessThrottler::PrepareToSuspendTimeoutTimer", 47, this, WebKit::ProcessThrottler::prepareToSuspendTimeoutTimerFired, 0);
  v14 = v27;
  v27 = 0;
  if (v14)
  {
    v13 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v14 + 8));
  }

  v15 = WTF::RunLoop::mainSingleton(v13);
  v16 = v15;
  while (1)
  {
    v17 = *(v15 + 8);
    if ((v17 & 1) == 0)
    {
      break;
    }

    v18 = *(v15 + 8);
    atomic_compare_exchange_strong_explicit((v15 + 8), &v18, v17 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v18 == v17)
    {
      goto LABEL_15;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v15 + 8));
LABEL_15:
  v27 = v16;
  v19 = WTF::RunLoop::Timer::Timer<WebKit::ProcessThrottler>(this + 11, &v27, "ProcessThrottler::DropNearSuspendedAssertionTimer", 50, this, WebKit::ProcessThrottler::dropNearSuspendedAssertionTimerFired, 0);
  v20 = v27;
  v27 = 0;
  if (v20)
  {
    v19 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v20 + 8));
  }

  v21 = WTF::RunLoop::mainSingleton(v19);
  v22 = v21;
  while (1)
  {
    v23 = *(v21 + 8);
    if ((v23 & 1) == 0)
    {
      break;
    }

    v24 = *(v21 + 8);
    atomic_compare_exchange_strong_explicit((v21 + 8), &v24, v23 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v24 == v23)
    {
      goto LABEL_22;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v21 + 8));
LABEL_22:
  v27 = v22;
  WTF::RunLoop::Timer::Timer<WebKit::ProcessThrottler>(this + 17, &v27, "ProcessThrottler::PrepareToDropLastAssertionTimeoutTimer", 57, this, WebKit::ProcessThrottler::prepareToDropLastAssertionTimeoutTimerFired, 0);
  v25 = v27;
  v27 = 0;
  if (v25)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v25 + 8));
  }

  *(this + 224) = 0;
  *(this + 116) = 0;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0;
  *(this + 234) = a3;
  *(this + 235) = 257;
  *(this + 237) = 0;
  return this;
}

WebKit::BackgroundProcessResponsivenessTimer *WebKit::BackgroundProcessResponsivenessTimer::BackgroundProcessResponsivenessTimer(WebKit::BackgroundProcessResponsivenessTimer *this, WebKit::WebProcessProxy *a2)
{
  *this = 0;
  v4 = WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 2, a2);
  v5 = *(a2 + 1);
  atomic_fetch_add(v5, 1u);
  *(this + 1) = v5;
  *(this + 2) = 0x4034000000000000;
  v6 = WTF::RunLoop::mainSingleton(v4);
  v7 = v6;
  while (1)
  {
    v8 = *(v6 + 8);
    if ((v8 & 1) == 0)
    {
      break;
    }

    v9 = *(v6 + 8);
    atomic_compare_exchange_strong_explicit((v6 + 8), &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v9 == v8)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v6 + 8));
LABEL_6:
  v18 = v7;
  v10 = WTF::RunLoop::Timer::Timer<WebKit::BackgroundProcessResponsivenessTimer>(this + 3, &v18, "BackgroundProcessResponsivenessTimer::ResponsivenessCheckTimer", 63, this, WebKit::BackgroundProcessResponsivenessTimer::responsivenessCheckTimerFired, 0);
  v11 = v18;
  v18 = 0;
  if (v11)
  {
    v10 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v11 + 8));
  }

  v12 = WTF::RunLoop::mainSingleton(v10);
  v13 = v12;
  while (1)
  {
    v14 = *(v12 + 8);
    if ((v14 & 1) == 0)
    {
      break;
    }

    v15 = *(v12 + 8);
    atomic_compare_exchange_strong_explicit((v12 + 8), &v15, v14 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v15 == v14)
    {
      goto LABEL_13;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v12 + 8));
LABEL_13:
  v18 = v13;
  WTF::RunLoop::Timer::Timer<WebKit::BackgroundProcessResponsivenessTimer>(this + 9, &v18, "BackgroundProcessResponsivenessTimer:TimeoutTimer", 50, this, WebKit::BackgroundProcessResponsivenessTimer::timeoutTimerFired, 0);
  v16 = v18;
  v18 = 0;
  if (v16)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v16 + 8));
  }

  *(this + 120) = 1;
  return this;
}

void WebKit::WebProcessProxy::WeakOrStrongPtr<WebKit::WebProcessPool>::updateStrongReference(uint64_t a1)
{
  if ((*a1 & 1) == 0 && (v2 = *(a1 + 8)) != 0 && (v3 = *(v2 + 8)) != 0)
  {
    v4 = v3 - 16;
    CFRetain(*(v3 - 8));
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 16);
  *(a1 + 16) = v4;
  if (v5)
  {
    v6 = *(v5 + 8);

    CFRelease(v6);
  }
}

uint64_t WebKit::UserMediaCaptureManagerProxy::operator new(WebKit::UserMediaCaptureManagerProxy *this, void *a2)
{
  if (WebKit::UserMediaCaptureManagerProxy::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::UserMediaCaptureManagerProxy::s_heapRef, a2);
  }

  else
  {
    return WebKit::UserMediaCaptureManagerProxy::operatorNewSlow(0x58);
  }
}

uint64_t WebKit::UserMediaCaptureManagerProxy::UserMediaCaptureManagerProxy(uint64_t a1, uint64_t *a2)
{
  *(a1 + 16) = 1;
  *a1 = &unk_1F10FE448;
  *(a1 + 8) = 0;
  v3 = *a2;
  *a2 = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v3;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v5[0] = 0;
  v5[1] = 0;
  v5[2] = "UserMediaCaptureManagerProxy";
  v5[3] = 0;
  WTF::NativePromise<void,void,0u>::createAndResolve<std::enable_if<true,void>>(v5, (a1 + 72));
  *(a1 + 80) = 0;
  (*(**(a1 + 32) + 16))(*(a1 + 32), 149, a1);
  return a1;
}

WTF::Lock *WTF::NativePromise<void,void,0u>::createAndResolve<std::enable_if<true,void>>@<X0>(WTF::NativePromiseBase *a1@<X0>, unsigned __int8 **a2@<X8>)
{
  v4 = WTF::fastMalloc(0x78);
  v5 = WTF::NativePromise<void,void,0u>::NativePromise(v4, a1);
  *a2 = v5;

  return WTF::NativePromise<void,void,0u>::resolve<std::enable_if<true,void>>(v5, a1);
}

WTF::Lock *WTF::NativePromise<void,void,0u>::resolve<std::enable_if<true,void>>(unsigned __int8 *a1, WTF::NativePromiseBase *a2)
{
  v4 = 0;
  v7 = (a1 + 48);
  v8 = 1;
  atomic_compare_exchange_strong_explicit(a1 + 48, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x19EB01E30]();
  }

  WTF::NativePromiseBase::log<WTF::Logger::LogSiteIdentifier,char [12],WTF::NativePromise<void,void,0u>>(a2, " resolving ", a1);
  mpark::detail::destructor<mpark::detail::traits<WTF::NativePromise<void,void,0u>::Storage::NoResult,std::experimental::fundamentals_v3::expected<void,WTF::detail::VoidPlaceholder>,WTF::Function<std::experimental::fundamentals_v3::expected<void,WTF::detail::VoidPlaceholder> ()(void)>>,(mpark::detail::Trait)1>::destroy(a1 + 56);
  *(a1 + 28) = 0;
  a1[64] = 1;
  result = WTF::NativePromise<void,void,0u>::dispatchAll(a1, &v7);
  v6 = v8;
  if (v8 == 1)
  {
    result = v7;
    atomic_compare_exchange_strong_explicit(v7, &v6, 0, memory_order_release, memory_order_relaxed);
    if (v6 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

uint64_t WTF::NativePromise<void,void,0u>::NativePromise(uint64_t a1, _OWORD *a2)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F10FE610;
  v3 = a2[1];
  *(a1 + 16) = *a2;
  *(a1 + 32) = v3;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a1 + 88;
  *(a1 + 80) = 1;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  WTF::NativePromiseBase::log<char [10],WTF::NativePromise<void,void,0u>>("creating ", a1);
  return a1;
}

uint64_t WTF::NativePromise<void,void,0u>::dispatchAll(uint64_t a1, atomic_uchar *volatile *a2)
{
  v17 = &v19;
  v18 = 1;
  std::exchange[abi:sn200100]<WTF::Vector<WTF::Ref<WTF::NativePromise<void,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WTF::Ref<WTF::NativePromise<void,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>((a1 + 72), &v17, &v20);
  WTF::Vector<WTF::Ref<WTF::NativePromise<void,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v17, v4);
  v16[0] = 0;
  v16[1] = 0;
  v5 = *(a1 + 96);
  v17 = v5;
  v6 = *(a1 + 104);
  v7 = *(a1 + 108);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v18 = __PAIR64__(v7, v6);
  WTF::Vector<WTF::NativePromiseProducer<void,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(a1 + 96, v16);
  WTF::Vector<WTF::NativePromiseProducer<void,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v16, v8);
  if (v21)
  {
    v12 = v20;
    v13 = 8 * v21;
    do
    {
      v14 = *v12++;
      WTF::NativePromise<void,void,0u>::ThenCallbackBase::dispatch(v14, a1, a2);
      v13 -= 8;
    }

    while (v13);
  }

  if (v7)
  {
    v15 = 40 * v7;
    do
    {
      WTF::NativePromise<void,void,0u>::settleChainedPromise(a1, v5);
      v5 += 40;
      v15 -= 40;
    }

    while (v15);
  }

  WTF::Vector<WTF::NativePromiseProducer<void,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v17, v9);
  return WTF::Vector<WTF::Ref<WTF::NativePromise<void,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v20, v10);
}

WTF *WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<void,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt(_DWORD *__dst, _DWORD *a2)
{
  v5 = (__dst + 4);
  result = *__dst;
  if (result != v5)
  {
    if (result)
    {
      *__dst = 0;
      __dst[2] = 0;
      result = WTF::fastFree(result, a2);
    }

    *__dst = v5;
  }

  v6 = a2 + 4;
  v7 = *a2;
  if (*a2 == a2 + 4)
  {
    result = memcpy(v5, v6, 8 * a2[3]);
    v8 = a2[2];
  }

  else
  {
    *a2 = v6;
    *__dst = v7;
    v8 = a2[2];
    a2[2] = 1;
  }

  __dst[2] = v8;
  v9 = a2[3];
  a2[3] = 0;
  __dst[3] = v9;
  return result;
}

uint64_t WTF::Vector<WTF::NativePromiseProducer<void,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v6 = *a1;
    v7 = 40 * v3;
    do
    {
      v6 = WTF::NativePromiseProducer<void,void,0u>::~NativePromiseProducer(v6) + 5;
      v7 -= 40;
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

uint64_t WTF::Vector<WTF::Ref<WTF::NativePromise<void,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>>::destruct(*a1, (*a1 + 8 * v3));
  }

  v4 = *a1;
  if (a1 + 16 != *a1 && v4 != 0)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

atomic_uint *WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(atomic_uint *result)
{
  add = atomic_fetch_add(result, 0xFFFFFFFF);
  if (add == 1)
  {
    v2 = result;
    atomic_store(add, result);
    v3 = WTF::fastMalloc(0x10);
    *v3 = &unk_1F10E7450;
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

uint64_t *WebKit::WebPasteboardProxy::singleton(WebKit::WebPasteboardProxy *this)
{
  if (atomic_load_explicit(&qword_1ED6429D0, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&qword_1ED6429D0, &v5, std::__call_once_proxy[abi:sn200100]<std::tuple<WebKit::WebPasteboardProxy::singleton(void)::$_0 &&>>);
  }

  return &qword_1ED642A58;
}

void std::__call_once_proxy[abi:sn200100]<std::tuple<WebKit::WebPasteboardProxy::singleton(void)::$_0 &&>>()
{
  qword_1ED642A60 = 0;
  unk_1ED642A68 = 0;
  qword_1ED642A58 = &unk_1F10F8080;
  qword_1ED642A70 = 0;
  unk_1ED642A78 = 0;
}

unsigned int *WebKit::WebPasteboardProxy::addWebProcessProxy(WebKit::WebPasteboardProxy *this, WebKit::WebProcessProxy *a2)
{
  v6 = -69;
  WTF::HashMap<IPC::ReceiverName,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::IntHash<IPC::ReceiverName>,WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<IPC::ReceiverName const&,IPC::MessageReceiver&>(a2 + 12, &v6, this, v5);
  return WTF::WeakHashSet<WebKit::FrameLoadStateObserver,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::FrameLoadStateObserver>(this + 16, a2, v5);
}

void WebKit::WebProcessProxy::platformInitialize(WebKit::WebProcessProxy *this)
{
  [+[WKMouseDeviceObserver sharedInstance](WKMouseDeviceObserver start];
  [+[WKStylusDeviceObserver sharedInstance](WKStylusDeviceObserver start];
  if ((WebKit::WebProcessProxy::platformInitialize(void)::didSetScreenWakeLockHandler & 1) == 0)
  {
    WebKit::WebProcessProxy::platformInitialize(void)::didSetScreenWakeLockHandler = 1;
    v2 = WTF::fastMalloc(0x10);
    *v2 = &unk_1F110E3D8;
    v5 = v2;
    PAL::SleepDisablerCocoa::setScreenWakeLockHandler();
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }
  }

  v3 = *(*(this + 69) + 8);
  if (v3)
  {
    v4 = v3 - 16;
  }

  else
  {
    v4 = 0;
  }

  WebKit::ProcessThrottler::setAllowsActivities((this + 144), (*(v4 + 1016) & 1) == 0);
}

void sub_19D58A178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::ProcessThrottler::setAllowsActivities(WebKit::ProcessThrottler *this, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(this + 236) != a2)
  {
    v4 = qword_1ED641030;
    if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(this + 2) + 8);
      if (!v6)
      {
        __break(0xC471u);
        return;
      }

      v7 = *(v6 + 80);
      if (v7)
      {
        LODWORD(v7) = *(v7 + 108);
      }

      v10 = 134218496;
      v11 = this;
      v12 = 1024;
      v13 = v7;
      v14 = 1024;
      v15 = a2;
      _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - [PID=%d] ProcessThrottler::setAllowsActivities %d", &v10, 0x18u);
    }

    v8 = *(this + 1);
    if (*(v8 + 16) == a2)
    {
      if (a2)
      {
        goto LABEL_14;
      }
    }

    else
    {
      *(v8 + 16) = a2;
      if (a2)
      {
LABEL_14:
        *(this + 236) = a2;
        return;
      }

      v9 = *(v8 + 8);
      if (v9)
      {
        *(v8 + 8) = 0;
        WTF::HashTable<WebKit::ProcessAssertionType,WTF::KeyValuePair<WebKit::ProcessAssertionType,WTF::Ref<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion,WTF::RawPtrTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::ProcessAssertionType,WTF::Ref<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion,WTF::RawPtrTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>>>>,WTF::IntHash<WebKit::ProcessAssertionType>,WTF::HashMap<WebKit::ProcessAssertionType,WTF::Ref<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion,WTF::RawPtrTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>>,WTF::IntHash<WebKit::ProcessAssertionType>,WTF::StrongEnumHashTraits<WebKit::ProcessAssertionType>,WTF::HashTraits<WTF::Ref<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion,WTF::RawPtrTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebKit::ProcessAssertionType>,WTF::FastMalloc>::deallocateTable(v9, v5);
      }
    }

    WebKit::ProcessThrottler::invalidateAllActivities(this);
    goto LABEL_14;
  }
}

uint64_t WTF::ListHashSet<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>::add@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  if (*a1 || (WTF::HashTable<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::FastMalloc>::expand(a1, 0), (v6 = *a1) != 0))
  {
    v7 = *(v6 - 8);
  }

  else
  {
    v7 = 0;
  }

  result = WTF::PtrHashBase<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,true>::hash(a2);
  v9 = 0;
  for (i = 1; ; ++i)
  {
    v11 = (v6 + 8 * (result & v7));
    v12 = *v11;
    if (!*v11)
    {
      break;
    }

    if (v12 != -1)
    {
      v11 = v9;
      if (*v12 == *a2)
      {
        v20 = 0;
        goto LABEL_16;
      }
    }

    result = i + (result & v7);
    v9 = v11;
  }

  if (v9)
  {
    *v9 = 0;
    --*(*a1 - 16);
    v11 = v9;
  }

  result = WTF::fastMalloc(0x18);
  v13 = *a2;
  *a2 = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = v13;
  *v11 = result;
  v14 = *a1;
  if (*a1)
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

LABEL_22:
    v11 = WTF::HashTable<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::FastMalloc>::expand(a1, v11);
    result = *v11;
    goto LABEL_12;
  }

  if (3 * v17 <= 4 * v16)
  {
    goto LABEL_22;
  }

LABEL_12:
  v18 = a1[2];
  *(result + 8) = v18;
  *(result + 16) = 0;
  if (v18)
  {
    v19 = (v18 + 16);
  }

  else
  {
    v19 = a1 + 1;
  }

  *v19 = result;
  a1[2] = result;
  v12 = *v11;
  v20 = 1;
LABEL_16:
  *a3 = a1;
  *(a3 + 8) = v12;
  *(a3 + 16) = v20;
  return result;
}

WTF::StringImpl **WebKit::AuxiliaryProcessProxy::connect(WebKit::AuxiliaryProcessProxy *this)
{
  WTF::MonotonicTime::now(this);
  *(this + 17) = v2;
  v8 = *(this + 15);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  (*(*this + 192))(this, &v8);
  v3 = WTF::fastMalloc(0x70);
  v4 = WebKit::ProcessLauncher::ProcessLauncher(v3, this + 24, &v8);
  v6 = *(this + 10);
  *(this + 10) = v4;
  if (v6)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessLauncher,(WTF::DestructionThread)0>::deref((v6 + 8), v5);
  }

  result = v10;
  if (v10)
  {
    return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v10, v5);
  }

  return result;
}

void WebKit::WebProcessProxy::getLaunchOptions(uint64_t a1, uint64_t a2)
{
  *(a2 + 8) = 0;
  WebKit::AuxiliaryProcessProxy::getLaunchOptions(a1, a2);
  v4 = *(*(a1 + 552) + 8);
  if (v4)
  {
    v5 = v4 - 16;
  }

  else
  {
    v5 = 0;
  }

  CFRetain(*(v5 + 8));
  v6 = &qword_1ED643000;
  {
    goto LABEL_23;
  }

  while (1)
  {
    v7 = WTF::WeakHashSet<WebKit::WebProcessPool,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::contains<WebKit::WebProcessPool>(&WebKit::allInspectorProcessPools(void)::allInspectorProcessPools, v5);
    CFRelease(*(v5 + 8));
    if (v7)
    {
      v12 = "inspector-process";
      v13 = 18;
      v10 = "1";
      v11 = 2;
      v14 = &v10;
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::addPassingHashCode<WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTranslatorASCIILiteral>,(WTF::ShouldValidateKey)1,WTF::ASCIILiteral,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::HashTranslatorASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral>(WTF::ASCIILiteral &&,WTF::ASCIILiteral &&)::{lambda(void)#1}>((a2 + 16), &v12, &v14, v9);
    }

    *(a2 + 24) = 0;
    if (*(a1 + 811) == 1)
    {
      v12 = "is-prewarmed";
      v13 = 13;
      v10 = "1";
      v11 = 2;
      v14 = &v10;
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::addPassingHashCode<WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTranslatorASCIILiteral>,(WTF::ShouldValidateKey)1,WTF::ASCIILiteral,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::HashTranslatorASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral>(WTF::ASCIILiteral &&,WTF::ASCIILiteral &&)::{lambda(void)#1}>((a2 + 16), &v12, &v14, v9);
    }

    v5 = *(*(a1 + 552) + 8);
    if (v5)
    {
      v8 = v5 - 16;
    }

    else
    {
      v8 = 0;
    }

    if (*(v8 + 538) == 1)
    {
      CFRetain(*(v8 + 8));
      *(v8 + 538) = 0;
      if (v5)
      {
        CFRelease(*(v5 - 8));
      }

      *(a2 + 25) = 1;
    }

    if (*(a1 + 896) != 1)
    {
      break;
    }

    v12 = "service-worker-process";
    v13 = 23;
    v10 = "1";
    v11 = 2;
    v14 = &v10;
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::addPassingHashCode<WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTranslatorASCIILiteral>,(WTF::ShouldValidateKey)1,WTF::ASCIILiteral,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::HashTranslatorASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral>(WTF::ASCIILiteral &&,WTF::ASCIILiteral &&)::{lambda(void)#1}>((a2 + 16), &v12, &v14, v9);
    v12 = "registrable-domain";
    v13 = 19;
    v6 = *(a1 + 752);
    if (v6)
    {
      v10 = (a1 + 744);
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::addPassingHashCode<WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTranslatorASCIILiteral>,(WTF::ShouldValidateKey)1,WTF::ASCIILiteral,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::HashTranslatorASCIILiteral,WTF::ASCIILiteral,WTF::String const&>(WTF::ASCIILiteral &&,WTF::String const&)::{lambda(void)#1}>((a2 + 16), &v12, &v10, v9);
      break;
    }

    __break(1u);
LABEL_23:
    WebKit::allInspectorProcessPools(void)::allInspectorProcessPools = 0;
    unk_1ED643740 = 0;
    *(v6 + 1864) = 1;
  }

  if (*(a1 + 812) == 1)
  {
    v12 = "enable-lockdown-mode";
    v13 = 21;
    v10 = "1";
    v11 = 2;
    v14 = &v10;
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::addPassingHashCode<WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTranslatorASCIILiteral>,(WTF::ShouldValidateKey)1,WTF::ASCIILiteral,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::HashTranslatorASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral>(WTF::ASCIILiteral &&,WTF::ASCIILiteral &&)::{lambda(void)#1}>((a2 + 16), &v12, &v14, v9);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::getLaunchOptions(_BYTE *a1, uint64_t a2)
{
  v4 = getenv("DIRHELPER_USER_DIR_SUFFIX");
  if (v4)
  {
    strlen(v4);
    WTF::String::fromUTF8();
    if (v12)
    {
      v10 = "user-directory-suffix";
      v11 = 22;
      v8[0] = &v12;
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::addPassingHashCode<WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTranslatorASCIILiteral>,(WTF::ShouldValidateKey)1,WTF::ASCIILiteral,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::HashTranslatorASCIILiteral,WTF::ASCIILiteral,WTF::String&>(WTF::ASCIILiteral &&,WTF::String&)::{lambda(void)#1}>((a2 + 16), &v10, v8, v9);
      v6 = v12;
      v12 = 0;
      if (v6)
      {
        if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, v5);
        }
      }
    }
  }

  if (a1[112] == 1)
  {
    v10 = "always-runs-at-background-priority";
    v11 = 35;
    v8[0] = "true";
    v8[1] = 5;
    v12 = v8;
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::addPassingHashCode<WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTranslatorASCIILiteral>,(WTF::ShouldValidateKey)1,WTF::ASCIILiteral,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::HashTranslatorASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral>(WTF::ASCIILiteral &&,WTF::ASCIILiteral &&)::{lambda(void)#1}>((a2 + 16), &v10, &v12, v9);
  }

  WebKit::AuxiliaryProcessProxy::populateOverrideLanguagesLaunchOptions(a1, a2);
  return (*(*a1 + 200))(a1, a2);
}

WTF::StringImpl *WebKit::AuxiliaryProcessProxy::populateOverrideLanguagesLaunchOptions(uint64_t a1, uint64_t a2)
{
  {
    WebKit::overrideLanguagesStorage(void)::storage = 0;
    unk_1EB01E1D0 = 0;
  }

  result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v28, &WebKit::overrideLanguagesStorage(void)::storage);
  v5 = HIDWORD(v29);
  if (HIDWORD(v29))
  {
    goto LABEL_9;
  }

  WebKit::AuxiliaryProcessProxy::platformOverrideLanguages(&v24);
  if (HIDWORD(v29))
  {
    WTF::VectorDestructor<true,WTF::String>::destruct(v28, (v28 + 8 * HIDWORD(v29)));
  }

  v7 = v28;
  if (v28)
  {
    v28 = 0;
    LODWORD(v29) = 0;
    WTF::fastFree(v7, v6);
  }

  v28 = v24;
  v8 = v25;
  v24 = 0;
  v25 = 0;
  v29 = v8;
  result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v24, v6);
  v5 = HIDWORD(v29);
  if (HIDWORD(v29))
  {
LABEL_9:
    v9 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 1;
    do
    {
      if (v9)
      {
        v22[0] = 44;
        if (v25 && ((v10 = v26, v26 < *(v25 + 1)) ? (v11 = v24 == 0) : (v11 = 0), v11))
        {
          v12 = *(v25 + 4);
          v13 = *(v25 + 1);
          ++v26;
          if ((v12 & 4) != 0)
          {
            *(v13 + v10) = 44;
          }

          else
          {
            *(v13 + 2 * v10) = 44;
          }
        }

        else
        {
          result = WTF::StringBuilder::append();
        }

        v5 = HIDWORD(v29);
      }

      if (v9 >= v5)
      {
        __break(0xC471u);
        return result;
      }

      v14 = v28;
      v15 = *(v28 + v9);
      if (v26)
      {
        v16 = 0;
      }

      else
      {
        v16 = v25 == 0;
      }

      if (v16)
      {
        if (v15)
        {
          atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
        }

        result = v24;
        v24 = v15;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v4);
        }

        v17 = *(v14 + v9);
        if (v17)
        {
          LODWORD(v17) = *(v17 + 4);
        }

        v26 = v17;
      }

      else
      {
        if (v15)
        {
          v18 = *(v15 + 8);
          v19 = *(v15 + 4) | (((*(v15 + 16) >> 2) & 1) << 32);
        }

        else
        {
          v18 = 0;
          v19 = 0x100000000;
        }

        result = WTF::StringBuilder::append(&v24, v18, v19);
      }

      ++v9;
      v5 = HIDWORD(v29);
    }

    while (v9 < HIDWORD(v29));
    v23[0] = "OverrideLanguages";
    v23[1] = 18;
    if (!v24)
    {
      WTF::StringBuilder::shrinkToFit(&v24);
      WTF::StringBuilder::reifyString(&v24);
    }

    v30 = &v24;
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::addPassingHashCode<WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTranslatorASCIILiteral>,(WTF::ShouldValidateKey)1,WTF::ASCIILiteral,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::HashTranslatorASCIILiteral,WTF::ASCIILiteral,WTF::String const&>(WTF::ASCIILiteral &&,WTF::String const&)::{lambda(void)#1}>((a2 + 16), v23, &v30, v22);
    v20 = v25;
    v25 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v4);
    }

    v21 = v24;
    v24 = 0;
    if (v21)
    {
      if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v21, v4);
      }
    }
  }

  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v28, v4);
}

uint64_t WebKit::AuxiliaryProcessProxy::platformOverrideLanguages@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if ((_MergedGlobals_45 & 1) == 0)
  {
    v10 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
    v9 = &v10;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WTF::String>(NSArray *)::{lambda(unsigned long)#1}>(&v7, [v10 count], &v9, 0);
    qword_1ED641A70 = v7;
    v4 = v8;
    v7 = 0;
    v8 = 0;
    qword_1ED641A78 = v4;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v7, v5);
    v2 = a1;
    _MergedGlobals_45 = 1;
  }

  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v2, &qword_1ED641A70);
}

uint64_t WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 12);
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = v3;
  if (!v3)
  {
    return v2;
  }

  if (!(v3 >> 29))
  {
    v5 = WTF::fastMalloc((8 * v3));
    *(v2 + 8) = v3;
    *v2 = v5;
    v6 = *(a2 + 12);
    if (v6)
    {
      v7 = *a2;
      v8 = 8 * v6;
      do
      {
        v9 = *v7;
        if (*v7)
        {
          atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
        }

        *v5++ = v9;
        ++v7;
        v8 -= 8;
      }

      while (v8);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

uint64_t WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::String>,true>::isEmptyValue<WTF::ASCIILiteral>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 1;
  }

  v2 = (v1 - 1);
  if (v1 == 1)
  {
    v3 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v3 = v5;
    if (!v5)
    {
      return 1;
    }
  }

  if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, v2);
  }

  return 0;
}

uint64_t WTF::SuperFastHash::computeHashImpl<unsigned char,WTF::StringHasher::DefaultConverter>(uint64_t a1, unint64_t a2)
{
  result = 2654435769;
  if (a2 >= 2)
  {
    v4 = 0;
    do
    {
      v5 = (*(a1 + v4 + 1) << 11) ^ ((result + *(a1 + v4)) << 16) ^ (result + *(a1 + v4));
      result = v5 + (v5 >> 11);
      v6 = v4 + 3;
      v4 += 2;
    }

    while (v6 < a2);
  }

  if (a2)
  {
    v7 = result + *(a1 + a2 - 1);
    return (v7 ^ (v7 << 11)) + ((v7 ^ (v7 << 11)) >> 17);
  }

  return result;
}

WTF::StringImpl *WTF::HashTranslatorASCIILiteral::translate(WTF::StringImpl **a1, WTF::StringImpl *a2, uint64_t a3, int a4)
{
  if (a3)
  {
    if (a3 == 1)
    {
      v6 = MEMORY[0x1E696EB88];
      atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    }

    else
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v6 = v8;
    }
  }

  else
  {
    v6 = 0;
  }

  result = *a1;
  *a1 = v6;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, a2);
  }

  *(*a1 + 4) |= a4 << 8;
  return result;
}

uint64_t WTF::WeakHashSet<WebKit::WebProcessPool,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::contains<WebKit::WebProcessPool>(uint64_t *a1, uint64_t a2)
{
  ++*(a1 + 2);
  v2 = *(a2 + 24);
  if (v2)
  {
    if (*(v2 + 8))
    {
      v3 = *a1;
      if (*a1)
      {
        v4 = *(v3 - 8);
        v5 = (~(v2 << 32) + v2) ^ ((~(v2 << 32) + v2) >> 22);
        v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
        v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
        v8 = v4 & ((v7 >> 31) ^ v7);
        for (i = 1; ; ++i)
        {
          v10 = *(v3 + 8 * v8);
          if (!v10)
          {
            break;
          }

          if (v10 != -1 && v10 == v2)
          {
            return 1;
          }

          v8 = (v8 + i) & v4;
        }
      }
    }
  }

  return 0;
}

uint64_t WebKit::ProcessLauncher::ProcessLauncher(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_1F10EA578;
  *(a1 + 8) = 3;
  *(a1 + 16) = a2;
  if (a2)
  {
    (*(*a2 + 104))(a2);
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v5 = *a3;
  *(a1 + 80) = *(a3 + 2);
  *(a1 + 72) = v5;
  *(a1 + 88) = 0;
  v6 = a3[2];
  a3[2] = 0;
  *(a1 + 88) = v6;
  *(a1 + 96) = *(a3 + 12);
  *(a1 + 104) = 1;
  *(a1 + 108) = 0;
  kdebug_trace();
  WebKit::ProcessLauncher::launchProcess(a1);
  return a1;
}

void WebKit::ProcessLauncher::launchProcess(WebKit::ProcessLauncher *this)
{
  v2 = *(this + 20);
  v3 = *(this + 2);
  v4 = WTF::fastMalloc(0x10);
  *v4 = &unk_1F11082E0;
  if (qword_1ED6426E8 != -1)
  {
    dispatch_once(&qword_1ED6426E8, &__block_literal_global_22);
  }

  v5 = _MergedGlobals_78;
  if (v2 == 2)
  {
    if (_MergedGlobals_78)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.GPUExtension", objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8], "mainBundle"), "bundleIdentifier")];
      if (!v7)
      {
        v21 = 0;
LABEL_21:
        v15 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock(this + 1);
        v16 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v15);
        v13 = malloc_type_malloc(0x48uLL, 0x10F004059447B72uLL);
        *v13 = MEMORY[0x1E69E9818];
        v13[1] = 50331650;
        v13[2] = WTF::BlockPtr<void ()(BERenderingProcess *,NSError *)>::fromCallable<WebKit::launchWithExtensionKit(WebKit::ProcessLauncher &,WebKit::ProcessLaunchType,WebKit::ProcessLauncher::Client *,WTF::Function<void ()(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)> &&)::$_2>(WebKit::launchWithExtensionKit(WebKit::ProcessLauncher &,WebKit::ProcessLaunchType,WebKit::ProcessLauncher::Client *,WTF::Function<void ()(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)> &&)::$_2)::{lambda(void *,BERenderingProcess *,NSError *)#1}::__invoke;
        v13[3] = &WTF::BlockPtr<void ()(BERenderingProcess *,NSError *)>::fromCallable<WebKit::launchWithExtensionKit(WebKit::ProcessLauncher &,WebKit::ProcessLaunchType,WebKit::ProcessLauncher::Client *,WTF::Function<void ()(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)> &&)::$_2>(WebKit::launchWithExtensionKit(WebKit::ProcessLauncher &,WebKit::ProcessLaunchType,WebKit::ProcessLauncher::Client *,WTF::Function<void ()(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)> &&)::$_2)::descriptor;
        v13[4] = v4;
        v13[5] = this;
        v13[6] = v16;
        v13[7] = "com.apple.WebKit.GPU";
        v13[8] = 21;
        [MEMORY[0x1E695AA78] renderingProcessWithBundleID:v21 interruptionHandler:&__block_literal_global_64 completion:v13];
        goto LABEL_32;
      }
    }

    else
    {
      v7 = @"com.apple.WebKit.GPU";
    }

    v21 = v7;
    v14 = v7;
    goto LABEL_21;
  }

  if (v2 == 1)
  {
    if (_MergedGlobals_78)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.NetworkingExtension", objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8], "mainBundle"), "bundleIdentifier")];
      if (!v6)
      {
        v21 = 0;
LABEL_18:
        v11 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock(this + 1);
        v12 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v11);
        v13 = malloc_type_malloc(0x48uLL, 0x10F004059447B72uLL);
        *v13 = MEMORY[0x1E69E9818];
        v13[1] = 50331650;
        v13[2] = WTF::BlockPtr<void ()(BENetworkingProcess *,NSError *)>::fromCallable<WebKit::launchWithExtensionKit(WebKit::ProcessLauncher &,WebKit::ProcessLaunchType,WebKit::ProcessLauncher::Client *,WTF::Function<void ()(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)> &&)::$_1>(WebKit::launchWithExtensionKit(WebKit::ProcessLauncher &,WebKit::ProcessLaunchType,WebKit::ProcessLauncher::Client *,WTF::Function<void ()(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)> &&)::$_1)::{lambda(void *,BENetworkingProcess *,NSError *)#1}::__invoke;
        v13[3] = &WTF::BlockPtr<void ()(BENetworkingProcess *,NSError *)>::fromCallable<WebKit::launchWithExtensionKit(WebKit::ProcessLauncher &,WebKit::ProcessLaunchType,WebKit::ProcessLauncher::Client *,WTF::Function<void ()(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)> &&)::$_1>(WebKit::launchWithExtensionKit(WebKit::ProcessLauncher &,WebKit::ProcessLaunchType,WebKit::ProcessLauncher::Client *,WTF::Function<void ()(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)> &&)::$_1)::descriptor;
        v13[4] = v4;
        v13[5] = this;
        v13[6] = v12;
        v13[7] = "com.apple.WebKit.Networking";
        v13[8] = 28;
        [MEMORY[0x1E695AA68] networkProcessWithBundleID:v21 interruptionHandler:&__block_literal_global_61 completion:v13];
        goto LABEL_32;
      }
    }

    else
    {
      v6 = @"com.apple.WebKit.Networking";
    }

    v21 = v6;
    v10 = v6;
    goto LABEL_18;
  }

  if (v3)
  {
    v8 = (*(*v3 + 64))(v3);
    if ((v5 & 1) == 0)
    {
      if (v8)
      {
        v17 = @"com.apple.WebKit.WebContent.CaptivePortal";
      }

      else
      {
        v17 = @"com.apple.WebKit.WebContent";
      }

      goto LABEL_30;
    }

    if (v8)
    {
      v9 = @"WebContentCaptivePortalExtension";
    }

    else
    {
      v9 = @"WebContentExtension";
    }
  }

  else
  {
    if ((_MergedGlobals_78 & 1) == 0)
    {
      v17 = @"com.apple.WebKit.WebContent";
      goto LABEL_30;
    }

    v9 = @"WebContentExtension";
  }

  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8], "mainBundle"), "bundleIdentifier"), v9];
  if (v17)
  {
LABEL_30:
    v21 = v17;
    v18 = v17;
    goto LABEL_31;
  }

  v21 = 0;
LABEL_31:
  v19 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock(this + 1);
  v20 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v19);
  v13 = malloc_type_malloc(0x48uLL, 0x10F004059447B72uLL);
  *v13 = MEMORY[0x1E69E9818];
  v13[1] = 50331650;
  v13[2] = WTF::BlockPtr<void ()(BEWebContentProcess *,NSError *)>::fromCallable<WebKit::launchWithExtensionKit(WebKit::ProcessLauncher &,WebKit::ProcessLaunchType,WebKit::ProcessLauncher::Client *,WTF::Function<void ()(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)> &&)::$_0>(WebKit::launchWithExtensionKit(WebKit::ProcessLauncher &,WebKit::ProcessLaunchType,WebKit::ProcessLauncher::Client *,WTF::Function<void ()(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)> &&)::$_0)::{lambda(void *,BEWebContentProcess *,NSError *)#1}::__invoke;
  v13[3] = &WTF::BlockPtr<void ()(BEWebContentProcess *,NSError *)>::fromCallable<WebKit::launchWithExtensionKit(WebKit::ProcessLauncher &,WebKit::ProcessLaunchType,WebKit::ProcessLauncher::Client *,WTF::Function<void ()(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)> &&)::$_0>(WebKit::launchWithExtensionKit(WebKit::ProcessLauncher &,WebKit::ProcessLaunchType,WebKit::ProcessLauncher::Client *,WTF::Function<void ()(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)> &&)::$_0)::descriptor;
  v13[4] = v4;
  v13[5] = this;
  v13[6] = v20;
  v13[7] = "com.apple.WebKit.WebContent";
  v13[8] = 28;
  [MEMORY[0x1E695AAB0] webContentProcessWithBundleID:v21 interruptionHandler:&__block_literal_global_58 completion:v13];
LABEL_32:
  _Block_release(v13);
  if (v21)
  {
  }
}

void sub_19D58B4D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  _Block_release(v12);
  if (a12)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN6WebKit15ProcessLauncher24hasExtensionsInAppBundleEv_block_invoke()
{
  result = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
  if (result && (result = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")]) != 0)
  {
    result = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
    v1 = result != 0;
  }

  else
  {
    v1 = 0;
  }

  _MergedGlobals_78 = v1;
  return result;
}

unint64_t WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::controlBlock(atomic_ullong *a1)
{
  result = *a1;
  if (result)
  {
    result = WTF::fastMalloc(0x20);
    *result = 0;
    *(result + 8) = xmmword_19E7014F0;
    *(result + 24) = a1 - 1;
    while (1)
    {
      v4 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      *(result + 8) = v4 >> 1;
      v5 = v4;
      atomic_compare_exchange_strong_explicit(a1, &v5, result, memory_order_release, memory_order_relaxed);
      if (v5 == v4)
      {
        return result;
      }
    }

    WTF::fastFree(result, v3);
    return *a1;
  }

  return result;
}

atomic_uchar *WTF::ThreadSafeWeakPtrControlBlock::weakRef(atomic_uchar *this)
{
  v2 = 0;
  v3 = 1;
  atomic_compare_exchange_strong_explicit(this, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    MEMORY[0x19EB01E30](this);
  }

  ++*(this + 2);
  atomic_compare_exchange_strong_explicit(this, &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {
    WTF::Lock::unlockSlow(this);
  }

  return this;
}

void WebKit::WebProcessPool::initializeNewWebProcess(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v231 = *MEMORY[0x1E69E9840];
  v183 = 0u;
  v184 = 0u;
  v181 = 0u;
  v182 = 0u;
  v179 = 0u;
  v180 = 0u;
  v177 = 0u;
  v178 = 0u;
  v175 = 0u;
  v176 = 0u;
  v173 = 0u;
  v174 = 0u;
  v171 = 0u;
  v172 = 0u;
  v169 = 0u;
  v170 = 0u;
  v167 = 0u;
  v168 = 0u;
  v185 = 0;
  *&v188[5] = 0;
  v187 = 0x7FF8000000000000;
  *v188 = 0;
  v188[13] = 1;
  memset(v190, 0, sizeof(v190));
  v189 = 0;
  v195 = 0;
  v196 = 0;
  v197 = 0;
  LOBYTE(v198) = 0;
  v207 = 0;
  v208 = 0;
  v209 = 0;
  v210 = 0;
  v211 = 0;
  v193 = 0u;
  memset(v194, 0, sizeof(v194));
  v213 = 0;
  v212 = 0;
  v214 = 0u;
  v215 = 0u;
  v216 = 0;
  *(v192 + 7) = 0;
  v191 = 0;
  v192[0] = 0;
  v217 = -1;
  v218 = -1;
  v219 = -1;
  v220 = 1;
  v221 = 0;
  v222 = 0;
  v223 = 0u;
  v224 = 0u;
  v225 = 0u;
  v226 = 0u;
  v227 = 0u;
  v228 = 0u;
  memset(v229, 0, sizeof(v229));
  v230 = 0;
  WebKit::AuxiliaryProcessProxy::auxiliaryProcessParameters(&v158);
  v9 = v158;
  v158 = 0;
  v10 = v167;
  *&v167 = v9;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v8);
  }

  v11 = v159;
  v159 = 0;
  v12 = *(&v167 + 1);
  *(&v167 + 1) = v11;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v8);
  }

  v13 = v168;
  *&v168 = v160;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v8);
  }

  v14 = *(&v168 + 1);
  *(&v168 + 1) = *(&v160 + 1);
  if (v14)
  {
    if (*v14)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*v14, v8);
    }

    WTF::fastFree(v14, v8);
  }

  v15 = *(a1 + 736);
  if (v15)
  {
    atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
  }

  v16 = v169;
  *&v169 = v15;
  if (v16)
  {
    if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v8);
    }

    v15 = v169;
  }

  if (v15)
  {
    v17 = *(v15 + 4);
    if (v17)
    {
      WebKit::SandboxExtension::createHandleWithoutResolvingPath(*(v15 + 8), (v17 | (((*(v15 + 16) >> 2) & 1) << 32)), 0, &v158);
      if (v159 == 1)
      {
        v18 = v158;
        v158 = 0;
        v19 = *(&v169 + 1);
        *(&v169 + 1) = v18;
        if (!v19 || (WebKit::SandboxExtensionImpl::~SandboxExtensionImpl(v19), bmalloc::api::tzoneFree(v136, v137), (v159 & 1) != 0))
        {
          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v158);
        }
      }
    }
  }

  v155[0] = 0;
  v155[1] = 0;
  v20 = *(a1 + 764);
  if (!v20)
  {
    goto LABEL_23;
  }

  if (v20 >> 29)
  {
    __break(0xC471u);
LABEL_195:
    JUMPOUT(0x19D58C704);
  }

  LODWORD(v155[1]) = *(a1 + 764);
  v155[0] = WTF::fastMalloc((8 * v20));
  v138 = *(a1 + 764);
  if (v138)
  {
    v139 = *(a1 + 752);
    v140 = 8 * v138;
    do
    {
      v141 = *v139;
      if (*v139)
      {
        v142 = *(v141 + 8);
        v143 = *(v141 + 4) | (((*(v141 + 16) >> 2) & 1) << 32);
      }

      else
      {
        v142 = 0;
        v143 = 0x100000000;
      }

      WebKit::SandboxExtension::createHandleWithoutResolvingPath(v142, v143, 0, &v158);
      if (v159 == 1)
      {
        v144 = v158;
        v157 = v158;
        v158 = 0;
        LODWORD(v145) = HIDWORD(v155[1]);
        if (HIDWORD(v155[1]) == LODWORD(v155[1]))
        {
          v146 = WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v155, HIDWORD(v155[1]) + 1, &v157);
          v145 = HIDWORD(v155[1]);
          v147 = v155[0];
          v148 = *v146;
          *v146 = 0;
          *(v147 + v145) = v148;
        }

        else
        {
          v157 = 0;
          *(v155[0] + HIDWORD(v155[1])) = v144;
        }

        HIDWORD(v155[1]) = v145 + 1;
        WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v157);
        if (v159)
        {
          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v158);
        }
      }

      ++v139;
      v140 -= 8;
    }

    while (v140);
    v21 = HIDWORD(v155[1]);
  }

  else
  {
LABEL_23:
    v21 = 0;
  }

  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(v155, v21);
  if (HIDWORD(v170))
  {
    v149 = v170;
    v150 = 8 * HIDWORD(v170);
    do
    {
      WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v149);
      v149 = (v151 + 8);
      v150 -= 8;
    }

    while (v150);
  }

  v23 = v170;
  if (v170)
  {
    *&v170 = 0;
    DWORD2(v170) = 0;
    WTF::fastFree(v23, v22);
  }

  *&v170 = v155[0];
  v24 = v155[1];
  v155[0] = 0;
  v155[1] = 0;
  *(&v170 + 1) = v24;
  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v155, v22);
  WebKit::WebProcessPool::setJavaScriptConfigurationFileEnabledFromDefaults(a1);
  {
    v25 = WebKit::LegacyGlobalSettings::singleton(void)::properties;
  }

  else
  {
    v25 = 2;
    WebKit::LegacyGlobalSettings::singleton(void)::properties = 2;
    *&qword_1ED643540 = 0u;
    *&qword_1ED643550 = 0u;
  }

  v186 = v25;
  {
    WebKit::overrideLanguagesStorage(void)::storage = 0;
    unk_1EB01E1D0 = 0;
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(&v184 + 2, &WebKit::overrideLanguagesStorage(void)::storage);
  {
    WebKit::LegacyGlobalSettings::singleton(void)::properties = 2;
    *&qword_1ED643540 = 0u;
    *&qword_1ED643550 = 0u;
  }

  v158 = 0;
  v159 = 0;
  WTF::Mapper<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::copyToVectorOf<WTF::String,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::{lambda(WTF::String&&)#1},WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,void>::map(&v158, &qword_1ED643540);
  if (DWORD1(v174))
  {
    WTF::VectorDestructor<true,WTF::String>::destruct(*(&v173 + 1), (*(&v173 + 1) + 8 * DWORD1(v174)));
  }

  v27 = *(&v173 + 1);
  if (*(&v173 + 1))
  {
    *(&v173 + 1) = 0;
    LODWORD(v174) = 0;
    WTF::fastFree(v27, v26);
  }

  *(&v173 + 1) = v158;
  v28 = v159;
  v158 = 0;
  v159 = 0;
  *&v174 = v28;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v158, v26);
  {
    WebKit::LegacyGlobalSettings::singleton(void)::properties = 2;
    *&qword_1ED643540 = 0u;
    *&qword_1ED643550 = 0u;
  }

  v158 = 0;
  v159 = 0;
  WTF::Mapper<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::copyToVectorOf<WTF::String,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::{lambda(WTF::String&&)#1},WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,void>::map(&v158, &qword_1ED643548);
  if (DWORD1(v175))
  {
    WTF::VectorDestructor<true,WTF::String>::destruct(*(&v174 + 1), (*(&v174 + 1) + 8 * DWORD1(v175)));
  }

  v30 = *(&v174 + 1);
  if (*(&v174 + 1))
  {
    *(&v174 + 1) = 0;
    LODWORD(v175) = 0;
    WTF::fastFree(v30, v29);
  }

  *(&v174 + 1) = v158;
  v31 = v159;
  v158 = 0;
  v159 = 0;
  *&v175 = v31;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v158, v29);
  {
    WebKit::LegacyGlobalSettings::singleton(void)::properties = 2;
    *&qword_1ED643540 = 0u;
    *&qword_1ED643550 = 0u;
  }

  v158 = 0;
  v159 = 0;
  WTF::Mapper<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::copyToVectorOf<WTF::String,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::{lambda(WTF::String&&)#1},WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,void>::map(&v158, &qword_1ED643550);
  if (DWORD1(v177))
  {
    WTF::VectorDestructor<true,WTF::String>::destruct(*(&v176 + 1), (*(&v176 + 1) + 8 * DWORD1(v177)));
  }

  v33 = *(&v176 + 1);
  if (*(&v176 + 1))
  {
    *(&v176 + 1) = 0;
    LODWORD(v177) = 0;
    WTF::fastFree(v33, v32);
  }

  *(&v176 + 1) = v158;
  v34 = v159;
  v158 = 0;
  v159 = 0;
  *&v177 = v34;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v158, v32);
  v158 = 0;
  v159 = 0;
  WTF::Mapper<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::copyToVectorOf<WTF::String,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::{lambda(WTF::String&&)#1},WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,void>::map(&v158, (a1 + 344));
  if (DWORD1(v173))
  {
    WTF::VectorDestructor<true,WTF::String>::destruct(*(&v172 + 1), (*(&v172 + 1) + 8 * DWORD1(v173)));
  }

  v36 = *(&v172 + 1);
  if (*(&v172 + 1))
  {
    *(&v172 + 1) = 0;
    LODWORD(v173) = 0;
    WTF::fastFree(v36, v35);
  }

  *(&v172 + 1) = v158;
  v37 = v159;
  v158 = 0;
  v159 = 0;
  *&v173 = v37;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v158, v35);
  v158 = 0;
  v159 = 0;
  WTF::Mapper<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::copyToVectorOf<WTF::String,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::{lambda(WTF::String&&)#1},WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,void>::map(&v158, (a1 + 352));
  if (DWORD1(v176))
  {
    WTF::VectorDestructor<true,WTF::String>::destruct(*(&v175 + 1), (*(&v175 + 1) + 8 * DWORD1(v176)));
  }

  v39 = *(&v175 + 1);
  if (*(&v175 + 1))
  {
    *(&v175 + 1) = 0;
    LODWORD(v176) = 0;
    WTF::fastFree(v39, v38);
  }

  *(&v175 + 1) = v158;
  v40 = v159;
  v158 = 0;
  v159 = 0;
  *&v176 = v40;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v158, v38);
  v158 = 0;
  v159 = 0;
  WTF::Mapper<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::copyToVectorOf<WTF::String,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::{lambda(WTF::String&&)#1},WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,void>::map(&v158, (a1 + 360));
  if (DWORD1(v178))
  {
    WTF::VectorDestructor<true,WTF::String>::destruct(*(&v177 + 1), (*(&v177 + 1) + 8 * DWORD1(v178)));
  }

  v42 = *(&v177 + 1);
  if (*(&v177 + 1))
  {
    *(&v177 + 1) = 0;
    LODWORD(v178) = 0;
    WTF::fastFree(v42, v41);
  }

  *(&v177 + 1) = v158;
  v43 = v159;
  v158 = 0;
  v159 = 0;
  *&v178 = v43;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v158, v41);
  v158 = 0;
  v159 = 0;
  WTF::Mapper<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::copyToVectorOf<WTF::String,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::{lambda(WTF::String&&)#1},WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,void>::map(&v158, (a1 + 368));
  if (DWORD1(v179))
  {
    WTF::VectorDestructor<true,WTF::String>::destruct(*(&v178 + 1), (*(&v178 + 1) + 8 * DWORD1(v179)));
  }

  v45 = *(&v178 + 1);
  if (*(&v178 + 1))
  {
    *(&v178 + 1) = 0;
    LODWORD(v179) = 0;
    WTF::fastFree(v45, v44);
  }

  *(&v178 + 1) = v158;
  v46 = v159;
  v158 = 0;
  v159 = 0;
  *&v179 = v46;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v158, v44);
  v158 = 0;
  v159 = 0;
  WTF::Mapper<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::copyToVectorOf<WTF::String,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::{lambda(WTF::String&&)#1},WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,void>::map(&v158, (a1 + 376));
  if (DWORD1(v180))
  {
    WTF::VectorDestructor<true,WTF::String>::destruct(*(&v179 + 1), (*(&v179 + 1) + 8 * DWORD1(v180)));
  }

  v48 = *(&v179 + 1);
  if (*(&v179 + 1))
  {
    *(&v179 + 1) = 0;
    LODWORD(v180) = 0;
    WTF::fastFree(v48, v47);
  }

  *(&v179 + 1) = v158;
  v49 = v159;
  v158 = 0;
  v159 = 0;
  *&v180 = v49;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v158, v47);
  v158 = 0;
  v159 = 0;
  WTF::Mapper<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::copyToVectorOf<WTF::String,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::{lambda(WTF::String&&)#1},WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,void>::map(&v158, (a1 + 384));
  if (DWORD1(v181))
  {
    WTF::VectorDestructor<true,WTF::String>::destruct(*(&v180 + 1), (*(&v180 + 1) + 8 * DWORD1(v181)));
  }

  v51 = *(&v180 + 1);
  if (*(&v180 + 1))
  {
    *(&v180 + 1) = 0;
    LODWORD(v181) = 0;
    WTF::fastFree(v51, v50);
  }

  *(&v180 + 1) = v158;
  v52 = v159;
  v158 = 0;
  v159 = 0;
  *&v181 = v52;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v158, v50);
  v158 = 0;
  v159 = 0;
  WTF::Mapper<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::copyToVectorOf<WTF::String,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::{lambda(WTF::String&&)#1},WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,void>::map(&v158, (a1 + 392));
  if (DWORD1(v182))
  {
    WTF::VectorDestructor<true,WTF::String>::destruct(*(&v181 + 1), (*(&v181 + 1) + 8 * DWORD1(v182)));
  }

  v54 = *(&v181 + 1);
  if (*(&v181 + 1))
  {
    *(&v181 + 1) = 0;
    LODWORD(v182) = 0;
    WTF::fastFree(v54, v53);
  }

  *(&v181 + 1) = v158;
  v55 = v159;
  v158 = 0;
  v159 = 0;
  *&v182 = v55;
  v56 = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v158, v53);
  v57 = WebKit::WebExtensionMatchPattern::extensionSchemes(v56);
  v158 = 0;
  v159 = 0;
  WTF::Mapper<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::copyToVectorOf<WTF::String,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::{lambda(WTF::String&&)#1},WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,void>::map(&v158, v57);
  if (DWORD1(v183))
  {
    WTF::VectorDestructor<true,WTF::String>::destruct(*(&v182 + 1), (*(&v182 + 1) + 8 * DWORD1(v183)));
  }

  v59 = *(&v182 + 1);
  if (*(&v182 + 1))
  {
    *(&v182 + 1) = 0;
    LODWORD(v183) = 0;
    WTF::fastFree(v59, v58);
  }

  *(&v182 + 1) = v158;
  v60 = v159;
  v158 = 0;
  v159 = 0;
  *&v183 = v60;
  v61 = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v158, v58);
  v188[4] = *(a1 + 400);
  v188[7] = *(a1 + 401);
  WebKit::mutableState(v61);
  BYTE1(v189) = WebKit::mutableState(void)::state;
  v63 = WebKit::WebProcessProxy::fullKeyboardAccessEnabled(v62);
  v188[8] = v63;
  WebCore::ResourceRequestBase::defaultTimeoutInterval(v63);
  v187 = v65;
  *v188 = *(*(a1 + 808) + 16);
  if (a3)
  {
    (*(**(a3 + 416) + 56))(&v158);
    v66 = v158;
    v158 = 0;
    v67 = *(&v193 + 1);
    *(&v193 + 1) = v66;
    if (v67)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v67, v64);
      if (v158)
      {
        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v158, v64);
      }
    }
  }

  if (!*(&v193 + 1) || !*(*(&v193 + 1) - 12))
  {
    v158 = "WebNotificationManagerProxy";
    v159 = 28;
    v68 = WTF::HashMap<WTF::ASCIILiteral,WTF::RefPtr<WebKit::WebContextSupplement,WTF::RawPtrTraits<WebKit::WebContextSupplement>,WTF::DefaultRefDerefTraits<WebKit::WebContextSupplement>>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<WTF::RefPtr<WebKit::WebContextSupplement,WTF::RawPtrTraits<WebKit::WebContextSupplement>,WTF::DefaultRefDerefTraits<WebKit::WebContextSupplement>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ASCIILiteral,WTF::RefPtr<WebKit::WebContextSupplement,WTF::RawPtrTraits<WebKit::WebContextSupplement>,WTF::DefaultRefDerefTraits<WebKit::WebContextSupplement>>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<WTF::RefPtr<WebKit::WebContextSupplement,WTF::RawPtrTraits<WebKit::WebContextSupplement>,WTF::DefaultRefDerefTraits<WebKit::WebContextSupplement>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ASCIILiteral>>,WTF::ASCIILiteral>((a1 + 456), &v158);
    v69 = v68;
    if (v68)
    {
      v70 = v68 - 16;
    }

    else
    {
      v70 = 0;
    }

    if (v68)
    {
      CFRetain(*(v68 - 8));
    }

    (*(**(v70 + 32) + 64))(&v158);
    v71 = v158;
    v158 = 0;
    v72 = *(&v193 + 1);
    *(&v193 + 1) = v71;
    if (v72)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v72, v64);
      if (v158)
      {
        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v158, v64);
      }
    }

    if (v69)
    {
      CFRelease(*(v69 - 8));
    }
  }

  v188[11] = *(a1 + 521);
  v73 = *(a1 + 48);
  *&v188[12] = *(v73 + 74);
  LOBYTE(v189) = *(a2 + 813);
  *&v190[5] = *(v73 + 80);
  v74 = *(v73 + 136);
  if (v74)
  {
    atomic_fetch_add_explicit(v74, 2u, memory_order_relaxed);
  }

  v75 = v223;
  *&v223 = v74;
  if (v75 && atomic_fetch_add_explicit(v75, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v75, v64);
  }

  v76 = *(a1 + 48);
  *(&v228 + 1) = *(v76 + 144);
  WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(v229, v76 + 152);
  WebKit::WebProcessPool::platformInitializeWebProcess(a1, a2, &v167);
  (*(**(a1 + 200) + 32))(&v154);
  v77 = v154;
  if (!v154)
  {
    v77 = *(a1 + 192);
    if (v77)
    {
      CFRetain(v77[1]);
      v152 = v154;
      v154 = v77;
      if (v152)
      {
        CFRelease(v152[1]);
        v77 = v154;
      }
    }

    else
    {
      v154 = 0;
    }
  }

  v158 = &unk_1F111A300;
  WebKit::UserData::transform(v77, &v158, v155);
  v78 = v155[0];
  v155[0] = 0;
  if (v78)
  {
    CFRetain(*(v78 + 1));
  }

  v79 = v171;
  *&v171 = v78;
  if (v79)
  {
    CFRelease(*(v79 + 8));
    if (!v78)
    {
      goto LABEL_104;
    }
  }

  else if (!v78)
  {
    goto LABEL_104;
  }

  CFRelease(*(v78 + 1));
LABEL_104:
  v80 = v155[0];
  v155[0] = 0;
  if (v80)
  {
    CFRelease(*(v80 + 1));
    if (!a3)
    {
      goto LABEL_129;
    }
  }

  else if (!a3)
  {
    goto LABEL_129;
  }

  WebKit::WebProcessPool::webProcessDataStoreParameters(&v158, a1, a3);
  v82 = v159;
  v198 = v158;
  v159 = 0;
  if (v207 == 1)
  {
    v83 = v199;
    v199 = v82;
    if (v83 && atomic_fetch_add_explicit(v83, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v83, v81);
    }

    v84 = v160;
    *&v160 = 0;
    v85 = v200;
    *&v200 = v84;
    if (v85 && atomic_fetch_add_explicit(v85, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v85, v81);
    }

    v86 = *(&v160 + 1);
    *(&v160 + 1) = 0;
    v87 = *(&v200 + 1);
    *(&v200 + 1) = v86;
    if (v87)
    {
      WebKit::SandboxExtensionImpl::~SandboxExtensionImpl(v87);
      bmalloc::api::tzoneFree(v130, v131);
    }

    v88 = v162;
    *&v162 = 0;
    v89 = v202;
    v201 = v161;
    *&v202 = v88;
    if (v89 && atomic_fetch_add_explicit(v89, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v89, v81);
    }

    v90 = *(&v162 + 1);
    *(&v162 + 1) = 0;
    v91 = *(&v202 + 1);
    *(&v202 + 1) = v90;
    if (v91)
    {
      WebKit::SandboxExtensionImpl::~SandboxExtensionImpl(v91);
      bmalloc::api::tzoneFree(v132, v133);
    }

    v203 = v163;
    v92 = v164;
    *&v164 = 0;
    v93 = v204;
    *&v204 = v92;
    if (v93)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v93, v81);
    }

    v94 = *(&v164 + 1);
    *(&v164 + 1) = 0;
    v95 = *(&v204 + 1);
    *(&v204 + 1) = v94;
    if (v95)
    {
      WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v95, v81);
    }

    v96 = v165;
    v165 = 0;
    v97 = v205;
    v205 = v96;
    if (v97)
    {
      WebKit::SandboxExtensionImpl::~SandboxExtensionImpl(v97);
      bmalloc::api::tzoneFree(v134, v135);
    }

    v206 = v166;
  }

  else
  {
    v98 = v160;
    v160 = 0u;
    v200 = v98;
    v199 = v82;
    v201 = v161;
    v99 = v162;
    v162 = 0u;
    v202 = v99;
    v203 = v163;
    v100 = v164;
    v164 = 0u;
    v204 = v100;
    v101 = v165;
    v165 = 0;
    v205 = v101;
    v206 = v166;
    v207 = 1;
  }

  WebKit::WebProcessDataStoreParameters::~WebProcessDataStoreParameters(&v158);
LABEL_129:
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a2 + 8), a2);
  v102 = *(a2 + 8);
  atomic_fetch_add(v102, 1u);
  v155[0] = v102;
  WebKit::AuxiliaryProcessProxy::initializationActivityAndGrant(a2, v103, &v155[1]);
  v105 = IPC::Encoder::operator new(0x238, v104);
  *v105 = 2956;
  *(v105 + 68) = 0;
  *(v105 + 70) = 0;
  *(v105 + 69) = 0;
  *(v105 + 2) = 0;
  *(v105 + 3) = 0;
  *(v105 + 1) = 0;
  IPC::Encoder::encodeHeader(v105);
  v157 = v105;
  IPC::ArgumentCoder<WebKit::WebProcessCreationParameters,void>::encode(v105, &v167);
  v106 = v156;
  v153 = *v155;
  v155[0] = 0;
  v155[1] = 0;
  v156 = 0;
  v107 = WTF::fastMalloc(0x20);
  *v107 = &unk_1F111A998;
  *(v107 + 8) = v153;
  *(v107 + 24) = v106;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_195;
  }

  v108 = v107;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v158 = v108;
  v159 = IdentifierInternal;
  LOBYTE(v160) = 1;
  WebKit::AuxiliaryProcessProxy::sendMessage(a2, &v157, 0, &v158, 1);
  if (v160 == 1)
  {
    v111 = v158;
    v158 = 0;
    if (v111)
    {
      (*(*v111 + 1))(v111);
    }
  }

  v112 = v157;
  v157 = 0;
  if (v112)
  {
    IPC::Encoder::~Encoder(v112, v110);
    bmalloc::api::tzoneFree(v128, v129);
  }

  v113 = v156;
  v156 = 0;
  if (v113)
  {
    WTF::ThreadSafeRefCounted<WebKit::LaunchGrant,(WTF::DestructionThread)0>::deref(v113);
  }

  v114 = v155[1];
  v155[1] = 0;
  if (v114)
  {
    WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref(v114 + 2, v110);
  }

  v115 = v155[0];
  v155[0] = 0;
  if (v115 && atomic_fetch_add(v115, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v115);
    WTF::fastFree(v115, v110);
  }

  WebKit::WebProcessPool::setMediaAccessibilityPreferences(a1, a2);
  v116 = *(a1 + 320);
  if (!v116)
  {
    goto LABEL_147;
  }

  v117 = *(v116 + 64);
  if (v117)
  {
    atomic_fetch_add_explicit(v117, 2u, memory_order_relaxed);
  }

  v155[0] = v117;
  v158 = v155;
  WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::EnsureAutomationSessionProxy>(a2, &v158, 0, 0);
  v119 = v155[0];
  v155[0] = 0;
  if (v119 && atomic_fetch_add_explicit(v119, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v119, v118);
    if (!a4)
    {
      goto LABEL_151;
    }
  }

  else
  {
LABEL_147:
    if (!a4)
    {
      goto LABEL_151;
    }
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a2 + 8), a2);
  v121 = *(a2 + 8);
  atomic_fetch_add(v121, 1u);
  v122 = *(a1 + 88);
  *(a1 + 88) = v121;
  if (v122 && atomic_fetch_add(v122, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v122);
    WTF::fastFree(v122, v120);
  }

LABEL_151:
  softLinkBKSDisplayBrightnessGetCurrent();
  LODWORD(v158) = v123;
  v124 = WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::BacklightLevelDidChange>(a2, &v158, 0, 0);
  isIBooks = WTF::CocoaApplication::isIBooks(v124);
  if (isIBooks)
  {
    isIBooks = WebKit::WebProcessPool::registerAssetFonts(a1, a2);
  }

  WebKit::WebProcessPool::registerHighDynamicRangeChangeCallback(isIBooks);
  v127 = v154;
  v154 = 0;
  if (v127)
  {
    CFRelease(v127[1]);
  }

  WebKit::WebProcessCreationParameters::~WebProcessCreationParameters(&v167, v126);
}

uint64_t *WebKit::AuxiliaryProcessProxy::auxiliaryProcessParameters@<X0>(void *a1@<X8>)
{
  a1[3] = 0;
  WebKit::UIProcess::wtfLogLevelString(a1);
  WebKit::UIProcess::webCoreLogLevelString(&v7);
  a1[1] = v7;
  v3 = WebKit::UIProcess::webKitLogLevelString(&v7);
  a1[2] = v7;
  result = WebKit::SecureCoding::internalClassNamesExemptFromSecureCodingCrash(v3);
  v5 = *result;
  if (*result)
  {
    v6 = WTF::fastMalloc(8);
    result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(v6, v5);
    a1[3] = result;
  }

  return result;
}

uint64_t *WebKit::SecureCoding::internalClassNamesExemptFromSecureCodingCrash(WebKit::SecureCoding *this)
{
  if ((_MergedGlobals_143 & 1) == 0)
  {
    qword_1ED643228 = 0;
    _MergedGlobals_143 = 1;
  }

  if (qword_1ED643220 != -1)
  {
    dispatch_once(&qword_1ED643220, &__block_literal_global_38);
  }

  return &qword_1ED643228;
}

void ___ZN6WebKit12SecureCodingL45internalClassNamesExemptFromSecureCodingCrashEv_block_invoke(WTF *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if ((WTF::isInAuxiliaryProcess(a1) & 1) == 0)
  {
    v1 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
    if (v1)
    {
      v2 = v1;
      v3 = v1;
      v4 = WTF::fastMalloc(8);
      *v4 = 0;
      v17[0] = 0;
      v6 = qword_1ED643228;
      qword_1ED643228 = v4;
      if (v6)
      {
        std::default_delete<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::operator()[abi:sn200100](v6, v5);
      }

      std::unique_ptr<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::~unique_ptr[abi:sn200100](v17, v5);
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v7 = [v2 countByEnumeratingWithState:&v19 objects:v23 count:{16, v17[0]}];
      if (v7)
      {
        v8 = *v20;
        do
        {
          v9 = 0;
          do
          {
            if (*v20 != v8)
            {
              objc_enumerationMutation(v2);
            }

            v10 = *(*(&v19 + 1) + 8 * v9);
            if (v10)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v11 = v10;
                v12 = qword_1ED643228;
                MEMORY[0x19EB02040](&v18, v10);
                WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v12, &v18, v13, v17);
                v15 = v18;
                v18 = 0;
                if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v15, v14);
                }
              }
            }

            ++v9;
          }

          while (v7 != v9);
          v16 = [v2 countByEnumeratingWithState:&v19 objects:v23 count:16];
          v7 = v16;
        }

        while (v16);
      }
    }
  }
}

void WebKit::SandboxExtension::createHandleWithoutResolvingPath(WebKit::SandboxExtensionImpl *a1@<X0>, WebKit::SandboxExtensionImpl *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v21[1] = a1;
  v21[2] = a2;
  v21[0] = 0;
  WTF::StringView::utf8();
  buf[0] = 0;
  v24 = 0;
  WebKit::SandboxExtensionImpl::create(a3, buf, &v20);
  v7 = v21[0];
  v21[0] = v20;
  if (v7)
  {
    WebKit::SandboxExtensionImpl::~SandboxExtensionImpl(v7);
    bmalloc::api::tzoneFree(v14, v15);
  }

  if (v19)
  {
    if (*v19 == 1)
    {
      WTF::fastFree(v19, v6);
    }

    else
    {
      --*v19;
    }
  }

  v8 = v21[0];
  v9 = qword_1ED641198;
  if (v21[0])
  {
    if (os_log_type_enabled(qword_1ED641198, OS_LOG_TYPE_DEFAULT))
    {
      WTF::StringView::utf8();
      if (v20)
      {
        v10 = v20 + 16;
      }

      else
      {
        v10 = 0;
      }

      *buf = 136380675;
      v23 = v10;
      _os_log_impl(&dword_19D52D000, v9, OS_LOG_TYPE_DEFAULT, "Successfully created a sandbox extension for '%{private}s'", buf, 0xCu);
      v12 = v20;
      v20 = 0;
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

      v8 = v21[0];
    }

    v21[0] = 0;
    *a4 = v8;
    v13 = 1;
  }

  else
  {
    if (os_log_type_enabled(qword_1ED641198, OS_LOG_TYPE_ERROR))
    {
      WTF::StringView::utf8();
      v16 = v20 ? v20 + 16 : 0;
      *buf = 136380675;
      v23 = v16;
      _os_log_error_impl(&dword_19D52D000, v9, OS_LOG_TYPE_ERROR, "Could not create a sandbox extension for '%{private}s'", buf, 0xCu);
      v18 = v20;
      v20 = 0;
      if (v18)
      {
        if (*v18 == 1)
        {
          WTF::fastFree(v18, v17);
        }

        else
        {
          --*v18;
        }
      }
    }

    v13 = 0;
    *a4 = 0;
  }

  *(a4 + 8) = v13;
  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v21);
}

void WebKit::SandboxExtensionImpl::create(void *a1@<X1>, uint64_t a2@<X2>, WTF::CString **a3@<X8>)
{
  v4 = a1;
  v6 = WebKit::SandboxExtensionImpl::operator new(0x10, a1);
  v7 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v7;
  v11 = *(a2 + 32);
  WebKit::SandboxExtensionImpl::sandboxExtensionForType(v4, v10, v6);
  *(v6 + 1) = 0;
  if (*v6 && *(*v6 + 8))
  {
    *a3 = v6;
  }

  else
  {
    *a3 = 0;
    WebKit::SandboxExtensionImpl::~SandboxExtensionImpl(v6);

    bmalloc::api::tzoneFree(v8, v9);
  }
}

uint64_t WebKit::SandboxExtensionImpl::operator new(WebKit::SandboxExtensionImpl *this, void *a2)
{
  if (this == 16 && WebKit::SandboxExtensionImpl::operator new(unsigned long)::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::SandboxExtensionImpl::operator new(unsigned long)::s_heapRef, a2);
  }

  else
  {
    return bmalloc::api::tzoneAllocateNonCompactSlow();
  }
}

void WebKit::SandboxExtensionImpl::sandboxExtensionForType(int a1@<W2>, uint64_t a2@<X3>, WTF::CString *a3@<X8>)
{
  if (a1 <= 2)
  {
    if (a1 > 1)
    {
      if (*(a2 + 32))
      {
        v4 = sandbox_extension_issue_mach_to_process();
      }

      else
      {
        v4 = sandbox_extension_issue_mach();
      }
    }

    else
    {
      v4 = sandbox_extension_issue_file();
    }

    goto LABEL_7;
  }

  if (a1 == 3)
  {
    if (*(a2 + 32))
    {
      v4 = sandbox_extension_issue_iokit_registry_entry_class_to_process();
    }

    else
    {
      v4 = sandbox_extension_issue_iokit_registry_entry_class();
    }

    goto LABEL_7;
  }

  if (a1 == 4)
  {
    v4 = sandbox_extension_issue_generic();
LABEL_7:
    v5 = v4;
    goto LABEL_8;
  }

  if (*(a2 + 32) == 1)
  {
    v4 = sandbox_extension_issue_file_to_process();
    goto LABEL_7;
  }

  v5 = 0;
LABEL_8:
  WTF::CString::CString(a3, v5);
  if (v5)
  {
    free(v5);
  }
}

void sub_19D58CF08(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(WebKit::SandboxExtensionImpl **this)
{
  if (*this)
  {
    *(*this + 1) = 0;
    sandbox_extension_release();
  }

  std::unique_ptr<WebKit::SandboxExtensionImpl>::reset[abi:sn200100](this, 0);
}

WebKit::SandboxExtensionImpl *std::unique_ptr<WebKit::SandboxExtensionImpl>::reset[abi:sn200100](WebKit::SandboxExtensionImpl **a1, WebKit::SandboxExtensionImpl *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    WebKit::SandboxExtensionImpl::~SandboxExtensionImpl(result);

    return bmalloc::api::tzoneFree(v5, v6);
  }

  return result;
}

uint64_t WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, unint64_t a2)
{
  if (*(result + 8) > a2)
  {
    v3 = result;
    if (*(result + 12) > a2)
    {
      result = WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(result, a2);
    }

    v4 = *v3;
    if (a2)
    {
      if (a2 >> 29)
      {
        __break(0xC471u);
        return result;
      }

      v5 = *(v3 + 12);
      result = WTF::fastMalloc((8 * a2));
      *(v3 + 8) = a2;
      *v3 = result;
      if (result != v4 && v5)
      {
        v6 = result;
        v7 = 8 * v5;
        result = v4;
        v8 = v4;
        do
        {
          v9 = *result;
          *v8 = 0;
          v8 = (v8 + 8);
          *v6++ = v9;
          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(result);
          result = v8;
          v7 -= 8;
        }

        while (v7);
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

void WebKit::WebProcessPool::setJavaScriptConfigurationFileEnabledFromDefaults(WebKit::WebProcessPool *this)
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = v2;
  if (v2)
  {
    v3 = v2;
    v2 = v4;
  }

  *(this + 522) = [v2 BOOLForKey:@"WebKitJavaScriptCoreUseConfigFile"];
  if (v4)
  {
  }
}

void sub_19D58D140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v6 = *a1;
    v7 = 8 * v3;
    do
    {
      WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v6);
      v6 = (v8 + 8);
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

atomic_uint **WTF::Mapper<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::copyToVectorOf<WTF::String,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::{lambda(WTF::String&&)#1},WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,void>::map(atomic_uint **result, atomic_uint ***a2)
{
  v3 = result;
  if (*a2)
  {
    v4 = *(*a2 - 3);
    if (v4)
    {
      if (v4 >> 29)
      {
        __break(0xC471u);
        return result;
      }

      v5 = WTF::fastMalloc((8 * v4));
      *(v3 + 2) = v4;
      *v3 = v5;
    }
  }

  result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(a2);
  v7 = *a2;
  if (*a2)
  {
    v7 += *(v7 - 1);
  }

  while (result != v7)
  {
    v8 = *result;
    if (*result)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    }

    v9 = *(v3 + 3);
    *&(*v3)[2 * v9] = v8;
    *(v3 + 3) = v9 + 1;
    do
    {
      ++result;
    }

    while (result != v6 && *result + 1 <= 1);
  }

  return result;
}

void WebKit::mutableState(WebKit *this)
{
  if (atomic_load_explicit(&WebKit::mutableState(void)::onceFlag, memory_order_acquire) != -1)
  {
    v5[1] = v1;
    v5[2] = v2;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&WebKit::mutableState(void)::onceFlag, &v4, std::__call_once_proxy[abi:sn200100]<std::tuple<WebKit::mutableState(void)::$_0 &&>>);
  }
}

uint64_t std::__call_once_proxy[abi:sn200100]<std::tuple<WebKit::mutableState(void)::$_0 &&>>()
{
  WebKit::mutableState(void)::state |= 1u;
  result = objc_opt_respondsToSelector();
  if (result)
  {
    result = [MEMORY[0x1E69DD080] grammarCheckingEnabled];
    if (result)
    {
      WebKit::mutableState(void)::state |= 2u;
    }
  }

  return result;
}

void sub_19D58D460(_Unwind_Exception *a1)
{
  if (v1)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t WTF::HashMap<WTF::ASCIILiteral,WTF::RefPtr<WebKit::WebContextSupplement,WTF::RawPtrTraits<WebKit::WebContextSupplement>,WTF::DefaultRefDerefTraits<WebKit::WebContextSupplement>>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<WTF::RefPtr<WebKit::WebContextSupplement,WTF::RawPtrTraits<WebKit::WebContextSupplement>,WTF::DefaultRefDerefTraits<WebKit::WebContextSupplement>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ASCIILiteral,WTF::RefPtr<WebKit::WebContextSupplement,WTF::RawPtrTraits<WebKit::WebContextSupplement>,WTF::DefaultRefDerefTraits<WebKit::WebContextSupplement>>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<WTF::RefPtr<WebKit::WebContextSupplement,WTF::RawPtrTraits<WebKit::WebContextSupplement>,WTF::DefaultRefDerefTraits<WebKit::WebContextSupplement>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ASCIILiteral>>,WTF::ASCIILiteral>(uint64_t *a1, WTF::ASCIILiteralHash *this)
{
  if (!*(this + 1) || *this == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19D58D564);
  }

  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v4 = *(v3 - 8);
  v5 = WTF::ASCIILiteralHash::hash(this, this) & v4;
  v6 = v3 + 24 * v5;
  v7 = *(v6 + 8);
  if (!v7)
  {
    return 0;
  }

  v10 = this;
  v9 = *this;
  v8 = *(v10 + 1);
  for (i = 1; ; ++i)
  {
    v12 = *v6 != -1 && v7 == v8;
    if (v12 && !memcmp(*v6, v9, v8))
    {
      break;
    }

    v5 = (v5 + i) & v4;
    v6 = v3 + 24 * v5;
    v7 = *(v6 + 8);
    if (!v7)
    {
      return 0;
    }
  }

  return *(v6 + 16);
}

void WebKit::WebProcessPool::platformInitializeWebProcess(atomic_uint **this, atomic_ullong *a2, WebKit::WebProcessCreationParameters *a3)
{
  v158[2] = *MEMORY[0x1E69E9840];
  if ((byte_1ED642611 & 1) == 0)
  {
    goto LABEL_162;
  }

  while (1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v155, &qword_1ED642668);
    v7 = *(a3 + 103);
    if (v7)
    {
      WTF::VectorDestructor<true,WTF::String>::destruct(*(a3 + 50), (*(a3 + 50) + 8 * v7));
    }

    v8 = *(a3 + 50);
    if (v8)
    {
      *(a3 + 50) = 0;
      *(a3 + 102) = 0;
      WTF::fastFree(v8, v6);
    }

    *(a3 + 50) = v155[0];
    v9 = v155[1];
    v155[0] = 0;
    v155[1] = 0;
    *(a3 + 51) = v9;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v155, v6);
    *(a3 + 370) = 0;
    v10 = [MEMORY[0x1E695E000] standardUserDefaults];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    *(a3 + 368) = [v11 BOOLForKey:@"WebKitJSCJITEnabledDefaultsKey"];
    *(a3 + 369) = [v11 BOOLForKey:@"WebKitJSCFTLJITEnabledDefaultsKey"];
    *(a3 + 317) = [v11 BOOLForKey:@"LogMemoryJetsamDetails"];
    *(a3 + 318) = [v11 BOOLForKey:@"WebKitSuppressMemoryPressureHandler"];
    WTF::String::operator=(a3 + 44, this + 93);
    v13 = *(a3 + 44);
    if (v13)
    {
      v14 = *(v13 + 8);
      v15 = *(v13 + 4) | (((*(v13 + 16) >> 2) & 1) << 32);
    }

    else
    {
      v14 = 0;
      v15 = 0x100000000;
    }

    WebKit::SandboxExtension::createHandleWithoutResolvingPath(v14, v15, 0, v155);
    if (LOBYTE(v155[1]) == 1)
    {
      v17 = v155[0];
      v155[0] = 0;
      v16 = std::unique_ptr<WebKit::SandboxExtensionImpl>::reset[abi:sn200100](a3 + 45, v17);
      if (v155[1])
      {
        WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v155);
      }
    }

    WTF::applicationBundleIdentifier(v155, v16);
    v19 = v155[0];
    v155[0] = 0;
    v20 = *(a3 + 41);
    *(a3 + 41) = v19;
    if (v20)
    {
      if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v18);
      }

      v21 = v155[0];
      v155[0] = 0;
      if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v21, v18);
      }
    }

    if (_MergedGlobals_75 == 1)
    {
      v22 = dword_1ED642614;
    }

    else
    {
      v22 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
      dword_1ED642614 = v22;
      _MergedGlobals_75 = 1;
    }

    *(a3 + 84) = v22;
    if (byte_1ED642609 == 1)
    {
      v23 = dword_1ED642618;
    }

    else
    {
      v23 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
      dword_1ED642618 = v23;
      byte_1ED642609 = 1;
    }

    *(a3 + 85) = v23;
    if (CFPreferencesGetAppIntegerValue(@"RemoteInspectorEnabled", @"com.apple.webinspectord", 0))
    {
      v158[0] = "com.apple.webinspector";
      v158[1] = 23;
      WebKit::WebProcessProxy::auditToken(a2, v151);
      *v155 = *v151;
      v156 = *&v151[16];
      v157 = v152;
      WebKit::SandboxExtension::createHandlesForMachLookup(v158, 1uLL, v155, 0, &v153);
      v25 = *(a3 + 21);
      if (v25)
      {
        v129 = *(a3 + 9);
        v130 = 8 * v25;
        do
        {
          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v129);
          v129 = (v131 + 8);
          v130 -= 8;
        }

        while (v130);
      }

      v26 = *(a3 + 9);
      if (v26)
      {
        *(a3 + 9) = 0;
        *(a3 + 20) = 0;
        v26 = WTF::fastFree(v26, v24);
      }

      *(a3 + 9) = v153;
      v27 = v154;
      v153 = 0;
      v154 = 0;
      *(a3 + 10) = v27;
      {
        if (WebKit::singleton(void)::singleton)
        {
          v28 = *(WebKit::singleton(void)::singleton + 8);
          if (v28)
          {
            atomic_fetch_add((v28 + 16), 1u);
            if ((*(v28 + 469) & 1) == 0)
            {
              WebKit::GPUProcessProxy::createGPUToolsSandboxExtensionHandlesIfNeeded(v26, v155);
              *v151 = v155;
              WebKit::AuxiliaryProcessProxy::send<Messages::GPUProcess::UpdateSandboxAccess>(v28, v151, 0, 0);
              WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v155, v29);
            }

            WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v28 + 16));
          }
        }
      }

      else
      {
        WebKit::singleton(void)::singleton = 0;
      }

      WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v153, v24);
    }

    v30 = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(a3 + 66, (this + 51));
    if (this[87])
    {
      v31 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
      [v31 encodeObject:this[87] forKey:@"parameters"];
      [v31 finishEncoding];
      v32 = [v31 encodedData];
      v33 = v32;
      if (v32)
      {
        v34 = v32;
      }

      v30 = API::Data::createWithoutCopying(v33, v155);
      v35 = v155[0];
      v155[0] = 0;
      v36 = *(a3 + 47);
      *(a3 + 47) = v35;
      if (v36)
      {
        CFRelease(*(v36 + 8));
        v128 = v155[0];
        v155[0] = 0;
        if (v128)
        {
          CFRelease(*(v128 + 1));
        }
      }

      if (v33)
      {
      }

      if (v31)
      {
      }
    }

    v37 = MEMORY[0x19EB000C0](v30);
    v38 = *(a3 + 49);
    *(a3 + 49) = v37;
    if (v38)
    {
      CFRelease(v38);
    }

    v39 = [v11 BOOLForKey:@"WebKitLogCookieInformation"];
    *(a3 + 440) = v39;
    WebCore::collectScreenProperties(v155, v39);
    v150 = this;
    *(a3 + 104) = v155[0];
    v41 = v155[1];
    v155[1] = 0;
    v42 = *(a3 + 53);
    *(a3 + 53) = v41;
    if (v42)
    {
      v42 = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebCore::ScreenData>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebCore::ScreenData>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebCore::ScreenData,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebCore::ScreenData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::deallocateTable(v42, v40);
    }

    *(a3 + 432) = v156;
    HasBattery = WebCore::systemHasBattery(v42);
    *(a3 + 586) = HasBattery;
    HasAC = WebCore::cachedSystemHasAC(HasBattery);
    *(a3 + 587) = ((HasAC & 0x100) == 0) | HasAC & 1;
    v45 = PAL::currentUserInterfaceIdiom(HasAC);
    *(a3 + 588) = v45;
    v46 = WebCore::supportsPictureInPicture(v45);
    *(a3 + 589) = v46;
    v48 = WebCore::RenderThemeIOS::cssValueToSystemColorMap(v46);
    v49 = *v48;
    if (!*v48 || (v50 = *(v49 - 12), !v50))
    {
      v51 = 0;
      goto LABEL_87;
    }

    v52 = *(v49 - 12);
    v53 = *(v49 - 12);
    if (v50 == 1)
    {
      goto LABEL_52;
    }

    v54 = __clz(v50 - 1);
    if (v54)
    {
      break;
    }

    __break(1u);
LABEL_162:
    unk_1ED642670 = 0;
    qword_1ED642668 = 0;
    byte_1ED642611 = 1;
  }

  v52 = (1 << -v54);
  v53 = 1 << -v54;
  if (v50 <= 0x400)
  {
LABEL_52:
    if (3 * v52 > 4 * v50)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if (v52 <= 2 * v50)
  {
LABEL_53:
    v53 *= 2;
  }

LABEL_54:
  if (v53 > 0x400)
  {
    v55 = 0.416666667;
  }

  else
  {
    v55 = 0.604166667;
  }

  if (v53 * v55 <= v50)
  {
    v53 *= 2;
  }

  if (v53 <= 8)
  {
    v56 = 8;
  }

  else
  {
    v56 = v53;
  }

  v57 = WTF::fastMalloc((16 * v56 + 16));
  v58 = v57;
  v51 = v57 + 4;
  v59 = 4;
  v60 = v56;
  do
  {
    *&v57[v59] = xmmword_19E703050;
    v59 += 4;
    --v60;
  }

  while (v60);
  v57[2] = v56 - 1;
  v57[3] = v56;
  *v57 = 0;
  v57[1] = v50;
  v61 = *v48;
  if (*v48)
  {
    if (*(v61 - 12))
    {
      v62 = v61 + 16 * *(v61 - 4);
      *v151 = *v48;
      *&v151[8] = v62;
      WTF::HashTableConstIterator<WTF::HashTable<WebCore::CSSValueKey,WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>>,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashMap<WebCore::CSSValueKey,WebCore::Color,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::Color>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::CSSValueKey>,WTF::FastMalloc>,WebCore::CSSValueKey,WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>>,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashMap<WebCore::CSSValueKey,WebCore::Color,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::Color>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::CSSValueKey>>::skipEmptyBuckets(v151);
      v63 = *v151;
      v64 = *&v151[8];
      v61 = *v48;
      goto LABEL_69;
    }

    v65 = *(v61 - 4);
    v63 = (v61 + 16 * v65);
  }

  else
  {
    v63 = 0;
    v65 = 0;
  }

  v64 = v61 + 16 * v65;
LABEL_69:
  *v151 = v63;
  *&v151[8] = v64;
  if (v61)
  {
    v66 = (v61 + 16 * *(v61 - 4));
  }

  else
  {
    v66 = 0;
  }

  if (v66 != v63)
  {
    do
    {
      v67 = 0;
      for (i = *v63; ; i = v67 + v69)
      {
        v69 = i & v58[2];
        v70 = &v51[4 * v69];
        v71 = !*v70 && *(v70 + 4) == 0;
        if (v71 && !*(v70 + 5))
        {
          break;
        }

        ++v67;
      }

      v72 = *v63;
      v73 = *(v63 + 1);
      if ((v73 & 0x8000000000000) != 0)
      {
        atomic_fetch_add((v73 & 0xFFFFFFFFFFFFLL), 1u);
      }

      *v70 = v72;
      v74 = *(v70 + 1);
      if ((v74 & 0x8000000000000) != 0)
      {
        v75 = (v74 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v74 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v75);
          WTF::fastFree(v75, v47);
        }
      }

      *(v70 + 1) = v73;
      *v151 += 16;
      WTF::HashTableConstIterator<WTF::HashTable<WebCore::CSSValueKey,WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>>,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashMap<WebCore::CSSValueKey,WebCore::Color,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::Color>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::CSSValueKey>,WTF::FastMalloc>,WebCore::CSSValueKey,WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>>,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashMap<WebCore::CSSValueKey,WebCore::Color,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::Color>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::CSSValueKey>>::skipEmptyBuckets(v151);
      v63 = *v151;
    }

    while (*v151 != v66);
  }

LABEL_87:
  v76 = *(a3 + 74);
  *(a3 + 74) = v51;
  if (v76)
  {
    v76 = WTF::HashTable<WebCore::CSSValueKey,WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>>,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashMap<WebCore::CSSValueKey,WebCore::Color,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::Color>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::CSSValueKey>,WTF::FastMalloc>::deallocateTable(v76, v47);
  }

  v77 = WebCore::RenderThemeIOS::systemFocusRingColor(v151, v76);
  v79 = (a3 + 600);
  if (a3 + 600 == v151)
  {
    if ((*v151 & 0x8000000000000) != 0)
    {
      v77 = (*v151 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((*v151 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v77);
        v77 = WTF::fastFree(v77, v78);
      }
    }
  }

  else
  {
    v80 = *v79;
    if ((*v79 & 0x8000000000000) != 0)
    {
      v77 = (v80 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v80 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v77);
        v77 = WTF::fastFree(v77, v78);
      }
    }

    *v79 = *v151;
  }

  WebCore::localizedDeviceModel(v151, v77);
  v82 = *v151;
  *v151 = 0;
  v83 = *(a3 + 76);
  *(a3 + 76) = v82;
  if (v83)
  {
    if (atomic_fetch_add_explicit(v83, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v83, v81);
    }

    v83 = *v151;
    *v151 = 0;
    if (v83 && atomic_fetch_add_explicit(v83, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v83 = WTF::StringImpl::destroy(v83, v81);
    }
  }

  v84 = WebCore::contentSizeCategory(v83);
  MEMORY[0x19EB02040](v151, v84);
  v86 = *v151;
  *v151 = 0;
  v87 = *(a3 + 77);
  *(a3 + 77) = v86;
  if (v87)
  {
    if (atomic_fetch_add_explicit(v87, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v87, v85);
    }

    v88 = *v151;
    *v151 = 0;
    if (v88 && atomic_fetch_add_explicit(v88, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v88, v85);
    }
  }

  WebKit::AuxiliaryProcessProxy::createMobileGestaltSandboxExtensionIfNeeded(v151);
  std::__optional_storage_base<WebKit::SandboxExtensionHandle,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebKit::SandboxExtensionHandle,false>>(a3 + 552, v151);
  if (v151[8] == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v151);
  }

  *(a3 + 292) = 257;
  if ([MEMORY[0x1E69DC668] sharedApplication] && !objc_msgSend(objc_msgSend(MEMORY[0x1E69DC668], "sharedApplication"), "applicationState") && qword_1ED642630 != -1)
  {
    dispatch_once(&qword_1ED642630, &__block_literal_global_70);
  }

  *(a3 + 321) = [+[WKMouseDeviceObserver sharedInstance](WKMouseDeviceObserver hasMouseDevice];
  v89 = [+[WKStylusDeviceObserver sharedInstance](WKStylusDeviceObserver hasStylusDevice];
  *(a3 + 322) = v89;
  v90 = WebCore::IOSurface::maximumSize(v89);
  *(a3 + 78) = v90;
  *(a3 + 79) = WebCore::IOSurface::bytesPerRowAlignment(v90);
  WebKit::accessibilityPreferences(v151);
  *(a3 + 40) = *v151;
  *(a3 + 655) = *&v151[15];
  *(a3 + 664) = _AXSApplicationAccessibilityEnabled() != 0;
  {
    if (qword_1ED63B690 && (v93 = *(qword_1ED63B690 - 12)) != 0)
    {
      v94 = WTF::HashTable<Inspector::Protocol::Automation::VirtualKey,WTF::KeyValuePair<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey>>,WTF::IntHash<Inspector::Protocol::Automation::VirtualKey>,WTF::HashMap<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey,WTF::IntHash<Inspector::Protocol::Automation::VirtualKey>,WTF::StrongEnumHashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::HashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::FastMalloc>::computeBestTableSize(*(qword_1ED63B690 - 12));
      v95 = WTF::fastZeroedMalloc((16 * v94 + 16));
      v95[2] = v94 - 1;
      v95[3] = v94;
      *v95 = 0;
      v95[1] = v93;
      v98 = WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin(&qword_1ED63B690, v96, v97);
      v99 = v98;
      v100 = v95 + 4;
      *v151 = v98;
      *&v151[8] = v91;
      v149 = v11;
      if (qword_1ED63B690)
      {
        v101 = qword_1ED63B690 + 16 * *(qword_1ED63B690 - 4);
      }

      else
      {
        v101 = 0;
      }

      if (v101 != v98)
      {
        do
        {
          v102 = v95[2];
          v103 = WTF::ASCIICaseInsensitiveHash::hash(*v99, v91);
          v105 = 0;
          do
          {
            v106 = v103 & v102;
            v108 = WTF::equal(*&v100[4 * v106], 0, v104);
            v103 = ++v105 + v106;
          }

          while (!v108);
          v109 = *v99;
          if (*v99)
          {
            atomic_fetch_add_explicit(v109, 2u, memory_order_relaxed);
          }

          v110 = *(v99 + 8);
          if (v110)
          {
            atomic_fetch_add_explicit(v110, 2u, memory_order_relaxed);
          }

          v111 = &v100[4 * v106];
          v112 = *v111;
          *v111 = v109;
          if (v112 && atomic_fetch_add_explicit(v112, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v112, v107);
          }

          v113 = v111[1];
          v111[1] = v110;
          if (v113 && atomic_fetch_add_explicit(v113, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v113, v107);
          }

          *v151 += 16;
          WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(v151, v107, v104);
          v99 = *v151;
        }

        while (*v151 != v101);
      }

      v11 = v149;
    }

    else
    {
      v100 = 0;
    }
  }

  else
  {
    v100 = 0;
    unk_1ED63B660 = 0u;
    *&qword_1ED63B680 = 0u;
    dword_1ED63B668 = 1;
    qword_1ED63B670 = 0;
    unk_1ED63B678 = 0;
    qword_1ED63B680 = 0;
    byte_1ED63B688 = 0;
    qword_1ED63B690 = 0;
    WebKit::ListDataController<WebKit::StorageAccessUserAgentStringQuirkController,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::sharedSingleton(void)::sharedInstance = &unk_1F10EE500;
  }

  v114 = *(a3 + 85);
  *(a3 + 85) = v100;
  if (v114)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v114, v91);
  }

  {
    if (dword_1ED63B6E4)
    {
      v115 = off_1ED63B6D8;
      v116 = off_1ED63B6D8 + 32 * dword_1ED63B6E4;
      do
      {
        v117 = *(v115 + 7);
        if (v117)
        {
          v118 = *(v115 + 2);
          v119 = 40 * v117;
          do
          {
            WebCore::RegistrableDomain::RegistrableDomain(&v153, v118);
            WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(a3 + 86, &v153, v120, v151);
            v121 = v153;
            v153 = 0;
            if (v121 && atomic_fetch_add_explicit(v121, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v121, v91);
            }

            v118 = (v118 + 40);
            v119 -= 40;
          }

          while (v119);
        }

        else
        {
          v122 = WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin(v115 + 1, v91, v92);
          v124 = *(v115 + 1);
          if (v124)
          {
            v125 = (v124 + 24 * *(v124 - 4));
          }

          else
          {
            v125 = 0;
          }

          v153 = v122;
          v154 = v123;
          while (1)
          {
            v91 = v153;
            if (v153 == v125)
            {
              break;
            }

            WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(a3 + 86, v153, v92, v151);
            v153 = (v153 + 24);
            WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(&v153, v126, v127);
          }
        }

        v115 += 32;
      }

      while (v115 != v116);
    }
  }

  else
  {
    *algn_1ED63B6A8 = 0u;
    *&qword_1ED63B6C8 = 0u;
    dword_1ED63B6B0 = 1;
    qword_1ED63B6B8 = 0;
    unk_1ED63B6C0 = 0;
    qword_1ED63B6C8 = 0;
    byte_1ED63B6D0 = 0;
    off_1ED63B6D8 = 0;
    *&dword_1ED63B6E0 = 0;
    WebKit::ListDataController<WebKit::StorageAccessPromptQuirkController,WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::sharedSingleton(void)::sharedInstance = &unk_1F10EE4C0;
  }

  {
    *algn_1ED63B6F8 = 0u;
    *&qword_1ED63B718 = 0u;
    dword_1ED63B700 = 1;
    qword_1ED63B708 = 0;
    unk_1ED63B710 = 0;
    qword_1ED63B718 = 0;
    byte_1ED63B720 = 0;
    unk_1ED63B728 = 0u;
    unk_1ED63B738 = 0u;
    unk_1ED63B748 = 0u;
    unk_1ED63B758 = 0u;
    WebKit::ListDataController<WebKit::ScriptTrackingPrivacyController,WebKit::ScriptTrackingPrivacyRules>::sharedSingleton(void)::sharedInstance = &unk_1F10EE540;
  }

  WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(a3 + 696, &unk_1ED63B728);
  WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(a3 + 712, &unk_1ED63B738);
  WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(a3 + 728, &unk_1ED63B748);
  WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(a3 + 744, &unk_1ED63B758);
  *v151 = 0;
  *&v151[8] = 0;
  v133 = v150[121];
  if (v133)
  {
    v134 = *(v133 - 3);
    if (!v134)
    {
      v135 = 0;
LABEL_173:
      if (*(v133 - 3))
      {
        v136 = *(v133 - 1);
        v137 = v133;
        if (v136)
        {
          v138 = 16 * v136;
          v137 = v133;
          while (*v137 + 1 <= 1)
          {
            v137 += 2;
            v138 -= 16;
            if (!v138)
            {
              goto LABEL_188;
            }
          }
        }

        v139 = &v133[4 * v136];
        if (v139 != v137)
        {
          v140 = 0;
          do
          {
            v141 = *v137;
            if (*v137)
            {
              atomic_fetch_add_explicit(v141, 2u, memory_order_relaxed);
            }

            v142 = v137[1];
            v143 = (v135 + 16 * v140);
            *v143 = v141;
            v143[1] = v142;
            do
            {
              v137 += 2;
            }

            while (v137 != v139 && *v137 + 1 <= 1);
            ++v140;
          }

          while (v137 != v139);
          *&v151[12] = v140;
        }
      }

      goto LABEL_188;
    }

    if (v134 >> 28)
    {
      __break(0xC471u);
      return;
    }

    v135 = WTF::fastMalloc((16 * v134));
    *&v151[8] = v134;
    *v151 = v135;
    v133 = v150[121];
    if (v133)
    {
      goto LABEL_173;
    }
  }

LABEL_188:
  v144 = *(a3 + 199);
  if (v144)
  {
    WTF::VectorDestructor<true,std::pair<WTF::String,unsigned long long>>::destruct(*(a3 + 98), (*(a3 + 98) + 16 * v144));
  }

  v145 = *(a3 + 98);
  if (v145)
  {
    *(a3 + 98) = 0;
    *(a3 + 198) = 0;
    WTF::fastFree(v145, v132);
  }

  *(a3 + 98) = *v151;
  v146 = *&v151[8];
  *v151 = 0;
  *&v151[8] = 0;
  *(a3 + 99) = v146;
  WTF::Vector<std::pair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v151, v132);
  v148 = WebKit::cachedIsLiqudGlassEnabled(void)::isLiquidGlassEnabled;
  if ((WebKit::cachedIsLiqudGlassEnabled(void)::isLiquidGlassEnabled & 0x100) == 0)
  {
    v148 = _UISolariumEnabled();
  }

  *(a3 + 800) = v148 & 1;
  if (!v155[1])
  {
    if (!v11)
    {
      return;
    }

    goto LABEL_196;
  }

  WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebCore::ScreenData>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebCore::ScreenData>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebCore::ScreenData,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebCore::ScreenData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::deallocateTable(v155[1], v147);
  if (v11)
  {
LABEL_196:
  }
}

void sub_19D58E3B0(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *exc_buf, char a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, WTF::StringImpl *a20, uint64_t a21, char a22, uint64_t a23)
{
  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a20, a2);
  if (v23)
  {
  }

  _Unwind_Resume(a1);
}

void *API::Data::createWithoutCopying@<X0>(API::Data *this@<X0>, API::Object **a2@<X8>)
{
  if (this)
  {
    v5 = [(API::Data *)this bytes];
    v6 = [(API::Data *)this length];
    v7 = this;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v8 = WTF::fastMalloc(0x10);
  *v8 = &unk_1F10F1858;
  v8[1] = this;
  v10 = v8;
  API::Data::createWithoutCopying(v5, v6, &v10, a2);
  result = v10;
  v10 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_19D58E5E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::AuxiliaryProcessProxy::createMobileGestaltSandboxExtensionIfNeeded(_BYTE *a1@<X8>)
{
  if (_MGCacheValid())
  {
    *a1 = 0;
    a1[8] = 0;
  }

  else
  {
    v3 = qword_1ED641198;
    if (os_log_type_enabled(qword_1ED641198, OS_LOG_TYPE_FAULT))
    {
      *v4 = 0;
      _os_log_fault_impl(&dword_19D52D000, v3, OS_LOG_TYPE_FAULT, "MobileGestalt cache is invalid! Creating a sandbox extension to repopulate cache in memory.", v4, 2u);
    }

    v4[0] = 0;
    v5 = 0;
    WebKit::SandboxExtension::createHandleForMachLookup(v4, a1);
  }
}

void std::__optional_storage_base<WebKit::SandboxExtensionHandle,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebKit::SandboxExtensionHandle,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8))
  {
    if (*(a1 + 8))
    {

      WebKit::SandboxExtensionHandle::operator=(a1, a2);
    }
  }

  else if (*(a1 + 8))
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(a1);
    *(v3 + 8) = 0;
  }

  else
  {
    v4 = *a2;
    *a2 = 0;
    *a1 = v4;
    *(a1 + 8) = 1;
  }
}

void WebKit::accessibilityPreferences(WebKit *this)
{
  *this = -1;
  *(this + 1) = -1;
  *(this + 4) = -1;
  *(this + 10) = 1;
  *(this + 22) = 0;
  WTF::applicationBundleIdentifier(&v17, this);
  WTF::String::createCFString(&cf, &v17);
  v3 = v17;
  v17 = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, v2);
  }

  v4 = _AXSReduceMotionEnabledApp();
  if ((v4 + 1) >= 3)
  {
    v5 = -2;
  }

  else
  {
    v5 = v4;
  }

  *this = v5;
  v6 = _AXSIncreaseButtonLegibilityApp();
  if ((v6 + 1) >= 3)
  {
    v7 = -2;
  }

  else
  {
    v7 = v6;
  }

  *(this + 1) = v7;
  v8 = _AXSEnhanceTextLegibilityEnabledApp();
  if ((v8 + 1) >= 3)
  {
    v9 = -2;
  }

  else
  {
    v9 = v8;
  }

  *(this + 2) = v9;
  v10 = _AXDarkenSystemColorsApp();
  if ((v10 + 1) >= 3)
  {
    v11 = -2;
  }

  else
  {
    v11 = v10;
  }

  *(this + 3) = v11;
  v12 = _AXSInvertColorsEnabledApp();
  if ((v12 + 1) >= 3)
  {
    v13 = -2;
  }

  else
  {
    v13 = v12;
  }

  *(this + 4) = v13;
  *(this + 21) = _AXSEnhanceTextLegibilityEnabled() != 0;
  if (byte_1ED64260B == 1)
  {
    v14 = off_1ED642638;
    if (!off_1ED642638)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (byte_1ED64260C == 1)
  {
    v16 = qword_1ED642640;
  }

  else
  {
    v16 = dlopen("/usr/lib/libAccessibility.dylib", 2);
    qword_1ED642640 = v16;
    byte_1ED64260C = 1;
  }

  v14 = dlsym(v16, "_AXSReduceMotionAutoplayAnimatedImagesEnabled");
  off_1ED642638 = v14;
  byte_1ED64260B = 1;
  if (v14)
  {
LABEL_21:
    *(this + 20) = (v14)(v14) != 0;
  }

LABEL_22:
  *(this + 22) = _AXSPrefersNonBlinkingCursorIndicator() != 0;
  v15 = cf;
  cf = 0;
  if (v15)
  {
    CFRelease(v15);
  }
}

void sub_19D58E908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WebCore::SpeechRecognitionAlternativeData>::destruct(*a1, (*a1 + 16 * v3));
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

API::Object *WebKit::UserData::transform@<X0>(API::Object *result@<X0>, uint64_t a2@<X1>, API::Object **a3@<X8>)
{
  if (result)
  {
    v4 = result;
    if (WebKit::shouldTransform(result, a2))
    {

      return WebKit::transformGraph(v4, a2, a3);
    }

    else
    {
      result = CFRetain(*(v4 + 8));
      *a3 = v4;
    }
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

atomic_uint *WebKit::AuxiliaryProcessProxy::initializationActivityAndGrant@<X0>(WebKit::AuxiliaryProcessProxy *this@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(*(this + 20) + 8);
  if (!v4)
  {
    __break(0xC471u);
    JUMPOUT(0x19D58EAD0);
  }

  atomic_fetch_add((v4 + 16), 1u);
  v6 = WebKit::ProcessThrottlerActivity::operator new(0x30, a2);
  *a3 = WebKit::ProcessThrottlerActivity::ProcessThrottlerActivity(v6, this + 144, "Process initialization", 23, 1, 0);
  v7 = *(this + 10);
  if (v7)
  {
    v7 = *(v7 + 32);
    if (v7)
    {
      atomic_fetch_add(v7, 1u);
    }
  }

  a3[1] = v7;

  return WebKit::ProcessThrottler::deref((this + 144));
}

uint64_t WebKit::ProcessThrottlerActivity::operator new(WebKit::ProcessThrottlerActivity *this, void *a2)
{
  if (this == 48 && WebKit::ProcessThrottlerActivity::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::ProcessThrottlerActivity::s_heapRef, a2);
  }

  else
  {
    return WebKit::ProcessThrottlerActivity::operatorNewSlow(this);
  }
}

uint64_t WebKit::ProcessThrottlerActivity::ProcessThrottlerActivity(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, int a5, char a6)
{
  v36 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 8) = 1;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2, a2);
  v13 = *a2;
  if (*a2)
  {
    atomic_fetch_add(v13, 1u);
  }

  *(a1 + 16) = v13;
  *(a1 + 24) = a3;
  *(a1 + 32) = a4;
  *(a1 + 40) = a5;
  *(a1 + 41) = a6;
  if (*(a2 + 236))
  {
    if (a5)
    {
      v14 = a2 + 184;
    }

    else
    {
      v14 = a2 + 200;
    }

    WTF::WeakHashSet<WebKit::ProcessThrottlerActivity,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::ProcessThrottlerActivity>(&v26, v14, a1);
    WebKit::ProcessThrottler::updateThrottleStateIfNeeded(a2, *(a1 + 24), *(a1 + 32));
    if (*(a1 + 41))
    {
      return a1;
    }

    v19 = qword_1ED641030;
    if (!os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
    {
      return a1;
    }

    v20 = *(a1 + 16);
    if (!v20 || (v20 = *(v20 + 8)) == 0)
    {
      LODWORD(v22) = 0;
LABEL_26:
      v23 = "background";
      v24 = *(a1 + 24);
      v26 = 134219010;
      if (a5)
      {
        v23 = "foreground";
      }

      v27 = a1;
      v28 = 1024;
      v29 = v22;
      v30 = 2048;
      v31 = v20;
      v32 = 2082;
      v33 = v23;
      v34 = 2082;
      v35 = v24;
      _os_log_impl(&dword_19D52D000, v19, OS_LOG_TYPE_DEFAULT, "%p - [PID=%d, throttler=%p] ProcessThrottler::Activity::Activity: Starting %{public}s activity / '%{public}s'", &v26, 0x30u);
      return a1;
    }

    v21 = *(*(v20 + 16) + 8);
    if (v21)
    {
      v22 = *(v21 + 80);
      if (v22)
      {
        LODWORD(v22) = *(v22 + 108);
      }

      goto LABEL_26;
    }

    __break(0xC471u);
LABEL_32:
    JUMPOUT(0x19D58ED98);
  }

  if ((a6 & 1) == 0)
  {
    v15 = qword_1ED641030;
    if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(*(a2 + 16) + 8);
      if (!v16)
      {
        __break(0xC471u);
        goto LABEL_32;
      }

      v17 = *(v16 + 80);
      if (v17)
      {
        LODWORD(v17) = *(v17 + 108);
      }

      v18 = "background";
      v26 = 134218754;
      v27 = a2;
      v28 = 1024;
      if (a5)
      {
        v18 = "foreground";
      }

      v29 = v17;
      v30 = 2080;
      v31 = v18;
      v32 = 2080;
      v33 = a3;
      _os_log_impl(&dword_19D52D000, v15, OS_LOG_TYPE_DEFAULT, "%p - [PID=%d] ProcessThrottler::addActivity: not allowed to add %s activity %s", &v26, 0x26u);
      v13 = *(a1 + 16);
    }
  }

  *(a1 + 16) = 0;
  if (v13 && atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v13);
    WTF::fastFree(v13, v12);
  }

  return a1;
}

atomic_uint *WebKit::ProcessThrottler::updateThrottleStateIfNeeded(atomic_uint *result, const char *a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if (*(result + 237) != 1)
  {
    return result;
  }

  v5 = result;
  if (!WTF::WeakHashSet<WebKit::ProcessThrottlerActivity,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::isEmptyIgnoringNullReferences(result + 23) || !WTF::WeakHashSet<WebKit::ProcessThrottlerActivity,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::isEmptyIgnoringNullReferences(v5 + 25))
  {
    if (*(v5 + 232))
    {
      if ((v5[56] & 1) == 0)
      {
        goto LABEL_28;
      }

      v6 = qword_1ED641030;
      if (!os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      v7 = *(*(v5 + 2) + 8);
      if (!v7)
      {
        __break(0xC471u);
        goto LABEL_33;
      }

      v8 = *(v7 + 80);
      if (v8)
      {
        LODWORD(v8) = *(v8 + 108);
      }

      v9 = *(v5 + 27);
      v10 = "unknown";
      if (a3)
      {
        v10 = a2;
      }

      v21 = 134218754;
      v22 = v5;
      v23 = 1024;
      v24 = v8;
      v25 = 2048;
      v26 = v9;
      v27 = 2082;
      v28 = v10;
      v11 = "%p - [PID=%d] ProcessThrottler::updateThrottleStateIfNeeded: sending ProcessDidResume IPC because the WebProcess is still processing request to suspend=%llu (probable wakeup reason: %{public}s)";
      v12 = v6;
      v13 = 38;
    }

    else
    {
      v14 = qword_1ED641030;
      if (!os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
      {
LABEL_25:
        v18 = *(*(v5 + 2) + 8);
        if (v18)
        {
          atomic_fetch_add(v18 + 4, 1u);
          v19 = WebKit::ProcessThrottler::expectedThrottleState(v5) != 2;
          (*(*v18 + 128))(v18, v19);
          WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v18 + 4);
          WTF::RunLoop::TimerBase::stop((v5 + 10));
          if (*(v5 + 224) == 1)
          {
            *(v5 + 224) = 0;
          }

          goto LABEL_28;
        }

        __break(0xC471u);
LABEL_33:
        JUMPOUT(0x19D58F07CLL);
      }

      v15 = *(*(v5 + 2) + 8);
      if (!v15)
      {
        __break(0xC471u);
        JUMPOUT(0x19D58F09CLL);
      }

      v16 = *(v15 + 80);
      if (v16)
      {
        LODWORD(v16) = *(v16 + 108);
      }

      v17 = "unknown";
      v21 = 134218498;
      if (a3)
      {
        v17 = a2;
      }

      v22 = v5;
      v23 = 1024;
      v24 = v16;
      v25 = 2082;
      v26 = v17;
      v11 = "%p - [PID=%d] ProcessThrottler::updateThrottleStateIfNeeded: sending ProcessDidResume IPC because the process was suspended (probable wakeup reason: %{public}s)";
      v12 = v14;
      v13 = 28;
    }

    _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, v11, &v21, v13);
    goto LABEL_25;
  }

  if (!*(v5 + 232))
  {
LABEL_28:
    v20 = WebKit::ProcessThrottler::expectedThrottleState(v5);
    return WebKit::ProcessThrottler::setThrottleState(v5, v20);
  }

  WTF::RunLoop::TimerBase::start();

  return WebKit::ProcessThrottler::sendPrepareToSuspendIPC(v5, 0);
}

atomic_uint *WebKit::ProcessThrottler::deref(WebKit::ProcessThrottler *this)
{
  v1 = *(*(this + 2) + 8);
  if (!v1)
  {
    __break(0xC471u);
    JUMPOUT(0x19D58F0F0);
  }

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v1 + 16));
}

uint64_t IPC::Encoder::operator new(IPC::Encoder *this, void *a2)
{
  if (this == 568 && IPC::Encoder::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(IPC::Encoder::s_heapRef, a2);
  }

  else
  {
    return IPC::Encoder::operatorNewSlow(this);
  }
}

uint64_t IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(IPC::Encoder *a1, char a2)
{
  result = IPC::Encoder::grow(a1, 1uLL, 1);
  if (v4)
  {
    *result = a2;
  }

  else
  {
    result = 1067;
    __break(0xC471u);
  }

  return result;
}

uint64_t IPC::Encoder::encodeHeader(IPC::Encoder *this)
{
  IPC::Encoder::operator<<<unsigned char const&>(this, IPC::defaultMessageFlags);
  IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(this, *this);
  v2 = *(this + 1);

  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(this, v2);
}

char *IPC::Encoder::grow(IPC::Encoder *this, unint64_t a2, uint64_t a3)
{
  v4 = (a2 + *(this + 68) - 1) / a2 * a2;
  v5 = v4 + a3;
  v6 = *(this + 2);
  if (v6)
  {
    v7 = *(this + 3);
  }

  else
  {
    v7 = 512;
  }

  if (v7 < v5)
  {
    goto LABEL_14;
  }

  while (1)
  {
    if (v6)
    {
      v8 = *(this + 3);
    }

    else
    {
      v6 = this + 32;
      v8 = 512;
    }

    v7 = *(this + 68);
    v9 = v8 - v7;
    if (v8 >= v7)
    {
      if (v4 - v7 == -1 || (v11 = v9 >= v4 - v7, v9 = v4 - v7, v11))
      {
        bzero(&v6[v7], v9);
        *(this + 68) = v5;
        if (v8 >= v4)
        {
          return &v6[v4];
        }
      }
    }

    do
    {
      __break(1u);
LABEL_14:
      v12 = (2 * v7 + 4095) & 0xFFFFFFFFFFFFF000;
      do
      {
        v13 = v12;
        v12 *= 2;
      }

      while (v13 < v5);
      v14 = mmap(0, v13, 3, 4098, -1, 0);
      if ((v14 + 1) <= 1)
      {
        goto LABEL_24;
      }

      v6 = v14;
      v15 = *(this + 2);
      if (v15)
      {
        v7 = *(this + 3);
      }

      else
      {
        v15 = this + 32;
        v7 = 512;
      }

      v16 = *(this + 68);
    }

    while (v7 < v16);
    if (v13 < v16)
    {
LABEL_24:
      __break(0xC471u);
      JUMPOUT(0x19D58F32CLL);
    }

    memcpy(v14, v15, v16);
    v17 = *(this + 2);
    v18 = *(this + 3);
    *(this + 2) = v6;
    *(this + 3) = v13;
    if (v17)
    {
      munmap(v17, v18);
      v6 = *(this + 2);
    }
  }
}

uint64_t IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(IPC::Encoder *a1, __int16 a2)
{
  result = IPC::Encoder::grow(a1, 2uLL, 2);
  if (v4 <= 1)
  {
    result = 1067;
    __break(0xC471u);
  }

  else
  {
    *result = a2;
  }

  return result;
}

void *IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(IPC::Encoder *a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v18 = (*(v3 + 16) & 4) != 0;
    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(v3 + 4));
    IPC::Encoder::operator<<<BOOL &>(a1, &v18);
    v5 = *a2;
    if (v18)
    {
      if (!v5)
      {
        v6 = a1;
        v7 = 1;
LABEL_5:
        v8 = IPC::Encoder::grow(v6, v7, 0);
        v9 = 0;
        v10 = 0;
        return memcpy(v8, v10, v9);
      }

      v17 = *(v5 + 8);
      v15 = *(v5 + 4);
      v8 = IPC::Encoder::grow(a1, 1uLL, v15);
      if (v16 >= v15)
      {
        v9 = v15;
        v10 = v17;
        return memcpy(v8, v10, v9);
      }
    }

    else
    {
      if (!v5)
      {
        v6 = a1;
        v7 = 2;
        goto LABEL_5;
      }

      v12 = *(v5 + 8);
      v13 = *(v5 + 4);
      v8 = IPC::Encoder::grow(a1, 2uLL, 2 * v13);
      if (v14 >= 2 * v13)
      {
        v10 = v12;
        v9 = 2 * v13;
        return memcpy(v8, v10, v9);
      }
    }

    __break(0xC471u);
    JUMPOUT(0x19D58F4F0);
  }

  return IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, -1);
}

uint64_t *IPC::ArgumentCoder<WebKit::AuxiliaryProcessCreationParameters,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));

  return IPC::ArgumentCoder<std::unique_ptr<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,void>::encode<IPC::Encoder,std::unique_ptr<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>> const&>(a1, (a2 + 24));
}

uint64_t IPC::ArgumentCoder<WebKit::WebProcessCreationParameters,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebKit::AuxiliaryProcessCreationParameters,void>::encode(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 32));
  IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::encode(a1, (a2 + 40));
  IPC::VectorArgumentCoder<false,WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 48);
  IPC::ArgumentCoder<WebKit::UserData,void>::encode(a1, (a2 + 64));
  IPC::VectorArgumentCoder<false,WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 72);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 88);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 104);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 120);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 136);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 152);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 168);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 184);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 200);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 216);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 232);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 248);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 264);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 280);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 296));
  IPC::ArgumentCoder<WTF::Markable<double,WTF::MarkableTraits<double>>,void>::encode<IPC::Encoder,WTF::Markable<double,WTF::MarkableTraits<double>>>(a1, (a2 + 304));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 312));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 316));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 317));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 318));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 319));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 320));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 321));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 322));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 323));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 324));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 325));
  LOBYTE(v37) = *(a2 + 326);
  IPC::Encoder::operator<<<BOOL>(a1, &v37);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 327));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 328));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 336));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 340));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 344));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 352));
  IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::encode(a1, (a2 + 360));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 368));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 369));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 370));
  IPC::ArgumentCoder<WTF::RefPtr<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>,void>::encode<IPC::Encoder,API::Data>(a1, a2 + 376);
  v4 = *(a2 + 384);
  if (v4)
  {
    v5 = *(v4 - 12);
  }

  else
  {
    v5 = 0;
  }

  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v5);
  v6 = *(a2 + 384);
  if (!v6)
  {
    v7 = 0;
    v8 = 0;
LABEL_5:
    v9 = v7;
    v7 = v6 + 16 * v8;
    goto LABEL_6;
  }

  v8 = *(v6 - 4);
  v7 = v6 + 16 * v8;
  if (!*(v6 - 12))
  {
    goto LABEL_5;
  }

  if (!v8)
  {
    v36 = 0;
    v9 = *(a2 + 384);
    goto LABEL_54;
  }

  v35 = 16 * v8;
  v9 = *(a2 + 384);
  while ((*v9 + 1) <= 1)
  {
    v9 += 16;
    v35 -= 16;
    if (!v35)
    {
      v9 = v7;
      break;
    }
  }

LABEL_6:
  if (v6)
  {
    goto LABEL_59;
  }

  for (i = 0; ; i = v6 + 16 * v36)
  {
    while (v9 != i)
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v9);
      IPC::Encoder::operator<<<BOOL>(a1, (v9 + 8));
      do
      {
        v9 += 16;
      }

      while (v9 != v7 && (*v9 + 1) <= 1);
    }

    IPC::ArgumentCoder<__CFData const*,void>::encode(a1, *(a2 + 392));
    IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 400);
    IPC::ArgumentCoder<WebCore::ScreenProperties,void>::encode(a1, a2 + 416);
    IPC::Encoder::operator<<<BOOL>(a1, (a2 + 440));
    if ((*(a2 + 544) & 1) == 0)
    {
      break;
    }

    LOBYTE(v37) = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v37);
    if (*(a2 + 544))
    {
      IPC::ArgumentCoder<WebKit::WebProcessDataStoreParameters,void>::encode(a1, a2 + 448);
      goto LABEL_17;
    }

    std::__throw_bad_optional_access[abi:sn200100]();
LABEL_59:
    v36 = *(v6 - 4);
LABEL_54:
    ;
  }

  LOBYTE(v37) = 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v37);
LABEL_17:
  IPC::ArgumentCoder<std::optional<WebKit::SandboxExtensionHandle>,void>::encode<IPC::Encoder,std::optional<WebKit::SandboxExtensionHandle>>(a1, a2 + 552);
  IPC::ArgumentCoder<std::optional<WebKit::SandboxExtensionHandle>,void>::encode<IPC::Encoder,std::optional<WebKit::SandboxExtensionHandle>>(a1, a2 + 568);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 584));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 585));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 586));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 587));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 588));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 589));
  v11 = *(a2 + 592);
  if (v11)
  {
    v12 = *(v11 - 12);
  }

  else
  {
    v12 = 0;
  }

  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v12);
  v13 = *(a2 + 592);
  if (v13)
  {
    if (*(v13 - 12))
    {
      v14 = v13 + 16 * *(v13 - 4);
      v37 = *(a2 + 592);
      v38 = v14;
      WTF::HashTableConstIterator<WTF::HashTable<WebCore::CSSValueKey,WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>>,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashMap<WebCore::CSSValueKey,WebCore::Color,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::Color>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::CSSValueKey>,WTF::FastMalloc>,WebCore::CSSValueKey,WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>>,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashMap<WebCore::CSSValueKey,WebCore::Color,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::Color>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::CSSValueKey>>::skipEmptyBuckets(&v37);
      v16 = v37;
      v15 = v38;
      v13 = *(a2 + 592);
      goto LABEL_24;
    }

    v17 = *(v13 - 4);
    v16 = (v13 + 16 * v17);
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  v15 = v13 + 16 * v17;
LABEL_24:
  v37 = v16;
  v38 = v15;
  if (v13)
  {
    v18 = (v13 + 16 * *(v13 - 4));
  }

  else
  {
    v18 = 0;
  }

  if (v18 != v16)
  {
    do
    {
      IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *v16);
      IPC::Encoder::operator<<<BOOL>(a1, v16 + 4);
      IPC::Encoder::operator<<<BOOL>(a1, v16 + 5);
      IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (v16 + 1));
      v37 += 2;
      WTF::HashTableConstIterator<WTF::HashTable<WebCore::CSSValueKey,WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>>,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashMap<WebCore::CSSValueKey,WebCore::Color,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::Color>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::CSSValueKey>,WTF::FastMalloc>,WebCore::CSSValueKey,WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>>,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashMap<WebCore::CSSValueKey,WebCore::Color,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::Color>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::CSSValueKey>>::skipEmptyBuckets(&v37);
      v16 = v37;
    }

    while (v37 != v18);
  }

  IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 600));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 608));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 616));
  IPC::Encoder::operator<<<WebCore::IntSize>(a1, (a2 + 624));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 632));
  IPC::ArgumentCoder<WebKit::AccessibilityPreferences,void>::encode(a1, a2 + 640);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 664));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 672));
  v19 = *(a2 + 680);
  if (v19)
  {
    v20 = *(v19 - 12);
  }

  else
  {
    v20 = 0;
  }

  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v20);
  v23 = *(a2 + 680);
  if (v23)
  {
    if (*(v23 - 12))
    {
      v24 = v23 + 16 * *(v23 - 4);
      v37 = *(a2 + 680);
      v38 = v24;
      WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(&v37, v21, v22);
      v26 = v37;
      v25 = v38;
      v23 = *(a2 + 680);
      goto LABEL_37;
    }

    v27 = *(v23 - 4);
    v26 = (v23 + 16 * v27);
  }

  else
  {
    v26 = 0;
    v27 = 0;
  }

  v25 = v23 + 16 * v27;
LABEL_37:
  v37 = v26;
  v38 = v25;
  if (v23)
  {
    v28 = (v23 + 16 * *(v23 - 4));
  }

  else
  {
    v28 = 0;
  }

  if (v28 != v26)
  {
    do
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v26);
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v26 + 1);
      v37 += 2;
      WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(&v37, v29, v30);
      v26 = v37;
    }

    while (v37 != v28);
  }

  IPC::ArgumentCoder<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(a1, (a2 + 688));
  IPC::ArgumentCoder<WebKit::ScriptTrackingPrivacyRules,void>::encode(a1, (a2 + 696));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 760));
  IPC::ArgumentCoder<std::span<double const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, *(a2 + 768), *(a2 + 780));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 796));
  v31 = *(a2 + 796);
  if (v31)
  {
    v32 = *(a2 + 784);
    v33 = &v32[2 * v31];
    do
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v32);
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v32[1]);
      v32 += 2;
    }

    while (v32 != v33);
  }

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 800));
}

uint64_t IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(IPC::Encoder *a1, int a2)
{
  result = IPC::Encoder::grow(a1, 4uLL, 4);
  if (v4 <= 3)
  {
    result = 1067;
    __break(0xC471u);
  }

  else
  {
    *result = a2;
  }

  return result;
}

uint64_t *IPC::ArgumentCoder<std::unique_ptr<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,void>::encode<IPC::Encoder,std::unique_ptr<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>> const&>(IPC::Encoder *a1, void ***a2)
{
  if (*a2)
  {
    v6 = 1;
    v3 = IPC::Encoder::operator<<<BOOL>(a1, &v6);
    return IPC::ArgumentCoder<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(v3, *a2);
  }

  else
  {
    v5 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v5);
  }
}

uint64_t IPC::ArgumentCoder<std::unique_ptr<WebKit::SandboxExtensionImpl>,void>::encode<IPC::Encoder,std::unique_ptr<WebKit::SandboxExtensionImpl>>(IPC::Encoder *a1, uint64_t **a2)
{
  if (*a2)
  {
    v9 = 1;
    v3 = IPC::Encoder::operator<<<BOOL>(a1, &v9);
    v4 = **a2;
    if (v4)
    {
      v5 = (v4 + 16);
      v6 = *(v4 + 8);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    return IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v3, v5, v6);
  }

  else
  {
    v8 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }
}

WebKit::SandboxExtensionImpl *IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::encode(IPC::Encoder *a1, WebKit::SandboxExtensionImpl **a2)
{
  v3 = *a2;
  *a2 = 0;
  v7 = v3;
  std::unique_ptr<WebKit::SandboxExtensionImpl>::reset[abi:sn200100](a2, 0);
  IPC::ArgumentCoder<std::unique_ptr<WebKit::SandboxExtensionImpl>,void>::encode<IPC::Encoder,std::unique_ptr<WebKit::SandboxExtensionImpl>>(a1, &v7);
  result = v7;
  v7 = 0;
  if (result)
  {
    WebKit::SandboxExtensionImpl::~SandboxExtensionImpl(result);
    return bmalloc::api::tzoneFree(v5, v6);
  }

  return result;
}

void sub_19D58FD64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebKit::SandboxExtensionImpl *a10)
{
  if (a10)
  {
    WebKit::SandboxExtensionImpl::~SandboxExtensionImpl(a10);
    bmalloc::api::tzoneFree(v11, v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(IPC::Encoder *a1, const void *a2, size_t a3)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a3);
  if (a3)
  {
    v7 = IPC::Encoder::grow(a1, 1uLL, a3);
    if (v8 < a3)
    {
      result = 1067;
      __break(0xC471u);
    }

    else
    {

      return memcpy(v7, a2, a3);
    }
  }

  return result;
}

void WebKit::SandboxExtensionImpl::~SandboxExtensionImpl(WebKit::SandboxExtensionImpl *this)
{
  if (*this)
  {
    v2 = WTF::CString::mutableSpan(this);
    bzero(v2, v3);
    v5 = *this;
    *this = 0;
    if (v5)
    {
      if (*v5 == 1)
      {
        WTF::fastFree(v5, v4);
      }

      else
      {
        --*v5;
      }
    }
  }
}

uint64_t IPC::VectorArgumentCoder<false,WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 8 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::encode(a1, v6++);
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

void IPC::ArgumentCoder<WebKit::UserData,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*(v3 + 8));
  }

  v5 = v3;
  IPC::ArgumentCoder<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,void>::encode<IPC::Encoder,API::Object>(a1, &v5);
  v4 = v5;
  v5 = 0;
  if (v4)
  {
    CFRelease(v4[1]);
  }
}

void sub_19D58FF5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,void>::encode<IPC::Encoder,API::Object>(IPC::Encoder *a1, atomic_uchar ***a2)
{
  if (*a2)
  {
    v5 = 1;
    v3 = IPC::Encoder::operator<<<BOOL>(a1, &v5);
    IPC::ArgumentCoder<API::Object,void>::encode(v3, *a2);
  }

  else
  {
    v4 = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v4);
  }
}

uint64_t IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 8 * v5;
    do
    {
      result = IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v6++);
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(IPC::Encoder *a1, double a2)
{
  result = IPC::Encoder::grow(a1, 8uLL, 8);
  if (v4 <= 7)
  {
    result = 1067;
    __break(0xC471u);
  }

  else
  {
    *result = a2;
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WTF::RefPtr<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>,void>::encode<IPC::Encoder,API::Data>(IPC::Encoder *a1, uint64_t a2)
{
  if (*a2)
  {
    v6 = 1;
    v3 = IPC::Encoder::operator<<<BOOL>(a1, &v6);
    return IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v3, *(*a2 + 16), *(*a2 + 24));
  }

  else
  {
    v5 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v5);
  }
}

void IPC::ArgumentCoder<__CFData const*,void>::encode(IPC::Encoder *a1, CFTypeRef cf)
{
  cfa = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  IPC::ArgumentCoder<WebKit::CoreIPCData,void>::encode(a1, &cfa);
  v3 = cfa;
  cfa = 0;
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_19D59013C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

CFIndex WebKit::CoreIPCData::dataReference@<X0>(CFIndex this@<X0>, uint64_t a2@<X8>)
{
  v3 = *this;
  if (!*this)
  {
    v5 = 0;
    *a2 = 0;
    goto LABEL_4;
  }

  BytePtr = CFDataGetBytePtr(*this);
  this = CFDataGetLength(v3);
  if ((this & 0x8000000000000000) == 0)
  {
    *a2 = BytePtr;
    *(a2 + 8) = this;
    v5 = 1;
LABEL_4:
    *(a2 + 16) = v5;
    return this;
  }

  __break(0xC471u);
  return this;
}

uint64_t IPC::ArgumentCoder<std::optional<std::span<unsigned char const,18446744073709551615ul>>,void>::encode<IPC::Encoder,std::optional<std::span<unsigned char const,18446744073709551615ul>>>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 16))
    {
      return IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, *a2, *(a2 + 8));
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<WebCore::ScreenProperties,void>::encode(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::ArgumentCoder<WebCore::ScreenProperties,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<WTF::HashMap<unsigned int,WebCore::ScreenData,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebCore::ScreenData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<unsigned int,WebCore::ScreenData,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebCore::ScreenData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&>(a1, (a2 + 8));
  v4 = *(a2 + 16);

  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WTF::HashMap<unsigned int,WebCore::ScreenData,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebCore::ScreenData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<unsigned int,WebCore::ScreenData,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebCore::ScreenData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&>(IPC::Encoder *a1, _DWORD **a2)
{
  if (*a2)
  {
    v4 = *(*a2 - 3);
  }

  else
  {
    v4 = 0;
  }

  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
  result = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebCore::ScreenData>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebCore::ScreenData>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebCore::ScreenData,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebCore::ScreenData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::begin(a2);
  v6 = result;
  v8 = v7;
  if (*a2)
  {
    v9 = &(*a2)[18 * *(*a2 - 1)];
  }

  else
  {
    v9 = 0;
  }

  if (v9 != result)
  {
    do
    {
      IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *v6);
      result = IPC::ArgumentCoder<WebCore::ScreenData,void>::encode(a1, (v6 + 2));
      for (v6 += 18; v6 != v8; v6 += 18)
      {
        if ((*v6 + 1) > 1)
        {
          break;
        }
      }
    }

    while (v6 != v9);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(IPC::Encoder *a1, float a2)
{
  result = IPC::Encoder::grow(a1, 4uLL, 4);
  if (v4 <= 3)
  {
    result = 1067;
    __break(0xC471u);
  }

  else
  {
    *result = a2;
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(IPC::Encoder *a1, float *a2)
{
  v4 = a2[1];
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, v4);
  v5 = a2[3];
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, a2[2]);

  return IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, v5);
}

uint64_t IPC::ArgumentCoder<WebCore::ScreenData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a1, a2);
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a1, (a2 + 16));
  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(a1, (a2 + 32));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 40));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 44));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 48));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 49));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 50));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 51));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 52));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 56));
  v4 = *(a2 + 60);

  return IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, v4);
}

void IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(IPC::Encoder *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  IPC::ArgumentCoder<CGColorSpace *,void>::encode(a1, v3);
  if (v3)
  {

    CFRelease(v3);
  }
}

void sub_19D590528(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<CGColorSpace *,void>::encode(IPC::Encoder *a1, CGColorSpace *a2)
{
  WebKit::CoreIPCCGColorSpace::CoreIPCCGColorSpace(v5, a2);
  v3 = v6;
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v6);
  IPC::ArgumentCoder<mpark::variant<WebCore::ColorSpace,WTF::RetainPtr<__CFString const*>,WTF::RetainPtr<void const*>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::ColorSpace,WTF::RetainPtr<__CFString const*>,WTF::RetainPtr<void const*>> const&>(a1, v5, v3);
  return mpark::variant<WebCore::ColorSpace,WTF::RetainPtr<__CFString const*>,WTF::RetainPtr<void const*>>::~variant(v5);
}

WebKit::CoreIPCCGColorSpace *WebKit::CoreIPCCGColorSpace::CoreIPCCGColorSpace(WebKit::CoreIPCCGColorSpace *this, CGColorSpace *a2)
{
  *this = 0;
  *(this + 8) = 0;
  v4 = WebCore::colorSpaceForCGColorSpace(a2, a2);
  v13 = v4;
  if ((v4 & 0x100) == 0)
  {
    Name = CGColorSpaceGetName(a2);
    v7 = Name;
    if (Name)
    {
      CFRetain(Name);
      v8 = *(this + 8);
      if (!*(this + 8) || v8 == 255)
      {
LABEL_8:
        *this = v7;
        *(this + 8) = 1;
        return this;
      }

      if (v8 != 1)
      {
        v10 = *this;
        *this = 0;
        if (v10)
        {
          CFRelease(v10);
        }

        goto LABEL_8;
      }

      v9 = *this;
      *this = v7;
      if (!v9)
      {
        return this;
      }
    }

    else
    {
      v12 = CGColorSpaceCopyPropertyList(a2);
      if (!v12)
      {
        v11 = 17;
        mpark::detail::impl<WebCore::ColorSpace,WTF::RetainPtr<__CFString const*>,WTF::RetainPtr<void const*>>::assign<0ul,WebCore::ColorSpace>(this, &v11);
        return this;
      }

      mpark::detail::impl<WebCore::ColorSpace,WTF::RetainPtr<__CFString const*>,WTF::RetainPtr<void const*>>::assign<2ul,WTF::RetainPtr<void const*>>(this, &v12);
      v9 = v12;
      v12 = 0;
      if (!v9)
      {
        return this;
      }
    }

    CFRelease(v9);
    return this;
  }

  if (*(this + 8))
  {
    mpark::detail::assignment<mpark::detail::traits<WebCore::ColorSpace,WTF::RetainPtr<__CFString const*>,WTF::RetainPtr<void const*>>>::emplace<0ul,WebCore::ColorSpace&>(this, &v13);
  }

  else
  {
    *this = v4;
  }

  return this;
}

void sub_19D5906C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  mpark::variant<WebCore::ColorSpace,WTF::RetainPtr<__CFString const*>,WTF::RetainPtr<void const*>>::~variant(v11);
  _Unwind_Resume(a1);
}

WebKit::SandboxExtensionImpl *IPC::ArgumentCoder<std::optional<WebKit::SandboxExtensionHandle>,void>::encode<IPC::Encoder,std::optional<WebKit::SandboxExtensionHandle>>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 8))
    {
      return IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WebCore::ColorDataForIPC>,void>::encode<IPC::Encoder,std::optional<WebCore::ColorDataForIPC>>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

mpark *IPC::ArgumentCoder<std::optional<WebCore::ColorDataForIPC>,void>::encode<IPC::Encoder,std::optional<WebCore::ColorDataForIPC>>(IPC::Encoder *a1, char *a2)
{
  if (a2[28])
  {
    v7 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (a2[28])
    {
      return IPC::ArgumentCoder<WebCore::ColorDataForIPC,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<WebCore::Color,void>::encode(v5, v6);
    }
  }

  else
  {
    v8 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }
}

mpark *IPC::ArgumentCoder<WebCore::ColorDataForIPC,void>::encode(IPC::Encoder *a1, char *a2)
{
  IPC::Encoder::operator<<<BOOL>(a1, a2);
  IPC::Encoder::operator<<<BOOL>(a1, a2 + 1);
  v4 = a2[24];
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, a2[24]);

  return IPC::ArgumentCoder<mpark::variant<WebCore::PackedColor::RGBA,WebCore::OutOfLineColorDataForIPC>,void>::encode<IPC::Encoder,mpark::variant<WebCore::PackedColor::RGBA,WebCore::OutOfLineColorDataForIPC> const&>(a1, (a2 + 4), v4);
}

IPC::Encoder *IPC::Encoder::operator<<<WebCore::IntSize>(IPC::Encoder *a1, int *a2)
{
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, a2[1]);
  return a1;
}

uint64_t IPC::ArgumentCoder<WebKit::AccessibilityPreferences,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 4));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 20));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 21));

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 22));
}

uint64_t IPC::ArgumentCoder<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(IPC::Encoder *a1, uint64_t *a2)
{
  if (*a2)
  {
    v4 = *(*a2 - 12);
  }

  else
  {
    v4 = 0;
  }

  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
  result = WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin(a2, v5, v6);
  v8 = result;
  v13[0] = result;
  v13[1] = v9;
  if (*a2)
  {
    v10 = *a2 + 8 * *(*a2 - 4);
  }

  else
  {
    v10 = 0;
  }

  if (v10 != result)
  {
    do
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v8);
      v13[0] += 8;
      result = WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(v13, v11, v12);
      v8 = v13[0];
    }

    while (v13[0] != v10);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::span<double const,18446744073709551615ul>,void>::encode<IPC::Encoder>(IPC::Encoder *a1, const void *a2, uint64_t a3)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a3);
  if (a3)
  {

    return IPC::Encoder::encodeSpan<unsigned long long const,18446744073709551615ul>(a1, a2, a3);
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::sendMessage(uint64_t a1, IPC::Encoder **a2, char a3, uint64_t a4, int a5)
{
  isMainRunLoop = WTF::isMainRunLoop(a1);
  if ((isMainRunLoop & 1) == 0)
  {
    atomic_fetch_add((a1 + 16), 1u);
    v15 = *a2;
    *a2 = 0;
    v16 = *(a4 + 16);
    if (v16 == 1)
    {
      v17 = *a4;
      v5 = *(a4 + 8);
      *a4 = 0;
    }

    else
    {
      v17 = 0;
    }

    v18 = WTF::fastMalloc(0x40);
    *v18 = &unk_1F1114C60;
    *(v18 + 8) = a1;
    *(v18 + 16) = v15;
    *(v18 + 24) = a3;
    *(v18 + 32) = 0;
    *(v18 + 48) = 0;
    if (v16)
    {
      *(v18 + 32) = v17;
      *(v18 + 40) = v5;
      *(v18 + 48) = 1;
      v17 = 0;
    }

    *(v18 + 56) = a5;
    v54 = v18;
    WTF::callOnMainRunLoop();
    v19 = v54;
    v54 = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
      if (v16)
      {
LABEL_13:
        if (v17)
        {
          (*(*v17 + 8))(v17);
        }
      }
    }

    else if (v16)
    {
      goto LABEL_13;
    }

    return 1;
  }

  if (*(a4 + 16) == 1 && ((v14 = *(a1 + 80)) != 0 && (*(v14 + 104) & 1) != 0 || *(a1 + 88)))
  {
    if (a5)
    {
      v20 = *a4;
      *a4 = 0;
      v21 = *(*(a1 + 160) + 8);
      if (!v21)
      {
        result = 92;
        __break(0xC471u);
        goto LABEL_58;
      }

      atomic_fetch_add((v21 + 16), 1u);
      v22 = **a2;
      if (v22 >= 0x107F)
      {
        v22 = 4223;
      }

      v23 = &(&IPC::Detail::messageDescriptions)[3 * v22];
      v24 = *v23;
      v25 = v23[1];
      v26 = WebKit::ProcessThrottlerActivity::operator new(0x30, v12);
      WebKit::ProcessThrottlerActivity::ProcessThrottlerActivity(v26, a1 + 144, v24, v25, 0, 1);
      result = WTF::fastMalloc(0x18);
      *result = &unk_1F1114C88;
      *(result + 8) = v26;
      *(result + 16) = v20;
      if ((*(a4 + 16) & 1) == 0)
      {
        goto LABEL_58;
      }

      v28 = result;
      v29 = *a4;
      *a4 = v28;
      if (v29)
      {
        (*(*v29 + 8))(v29);
      }

      isMainRunLoop = WebKit::ProcessThrottler::deref((a1 + 144));
    }
  }

  v30 = *(a1 + 80);
  if (v30 && (*(v30 + 104) & 1) != 0)
  {
    v31 = *a2;
    *a2 = 0;
    v54 = v31;
    v55 = a3;
    LOBYTE(v56) = 0;
    v58 = 0;
    v32 = *(a4 + 16);
    if (v32 == 1)
    {
      v33 = *a4;
      v13 = *(a4 + 8);
      *a4 = 0;
      v56 = v33;
      v57 = v13;
      v58 = 1;
    }

    v34 = *(a1 + 76);
    if (v34 == *(a1 + 72))
    {
      v35 = WTF::Vector<WebKit::AuxiliaryProcessProxy::PendingMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1 + 64, v34 + 1, &v54);
      v36 = *(a1 + 64) + 40 * *(a1 + 76);
      v37 = *v35;
      *v35 = 0;
      *v36 = v37;
      *(v36 + 8) = *(v35 + 8);
      *(v36 + 16) = 0;
      *(v36 + 32) = 0;
      if (*(v35 + 32) == 1)
      {
        v38 = *(v35 + 16);
        *(v35 + 16) = 0;
        *(v36 + 16) = v38;
        *(v36 + 24) = *(v35 + 24);
        *(v36 + 32) = 1;
      }

      ++*(a1 + 76);
      if (v58)
      {
        v39 = v56;
        v56 = 0;
        if (v39)
        {
          (*(*v39 + 8))(v39);
        }
      }
    }

    else
    {
      v48 = *(a1 + 64);
      v54 = 0;
      v49 = v48 + 40 * v34;
      *v49 = v31;
      *(v49 + 8) = a3;
      *(v49 + 16) = 0;
      *(v49 + 32) = 0;
      if (v32)
      {
        *(v49 + 16) = v56;
        *(v49 + 24) = v13;
        *(v49 + 32) = 1;
        ++*(a1 + 76);
        v56 = 0;
      }

      else
      {
        ++*(a1 + 76);
      }
    }

    v50 = v54;
    v54 = 0;
    if (v50)
    {
      IPC::Encoder::~Encoder(v50, v12);
      bmalloc::api::tzoneFree(v51, v52);
    }

    return 1;
  }

  if (*(a1 + 88))
  {
    if (*(a4 + 16) == 1)
    {
      result = WebKit::AuxiliaryProcessProxy::protectedConnection(a1, &v54);
      if ((*(a4 + 16) & 1) == 0)
      {
        goto LABEL_58;
      }

      v40 = v54;
      v41 = *a4;
      v42 = *(a4 + 8);
      *a4 = 0;
      v53[0] = v41;
      v53[1] = v42;
      v43 = IPC::Connection::sendMessageWithAsyncReply(v40, a2, v53, a3, 0);
      v44 = v53[0];
      v53[0] = 0;
      if (v44)
      {
        (*(*v44 + 8))(v44);
      }
    }

    else
    {
      WebKit::AuxiliaryProcessProxy::protectedConnection(a1, &v54);
      v43 = IPC::Connection::sendMessageImpl(v54, a2, a3, 0);
    }

    isMainRunLoop = v54;
    v54 = 0;
    if (isMainRunLoop)
    {
      isMainRunLoop = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(isMainRunLoop);
    }

    if (!v43)
    {
      return 1;
    }
  }

  if (*(a4 + 16) != 1 || !*a4)
  {
    return 0;
  }

  result = WTF::RunLoop::currentSingleton(isMainRunLoop);
  if (*(a4 + 16))
  {
    v45 = *a4;
    *a4 = 0;
    v46 = WTF::fastMalloc(0x10);
    *v46 = &unk_1F1114CB0;
    *(v46 + 1) = v45;
    v54 = v46;
    WTF::RunLoop::dispatch();
    v47 = v54;
    v54 = 0;
    if (v47)
    {
      (*(*v47 + 8))(v47);
    }

    return 0;
  }

LABEL_58:
  __break(1u);
  return result;
}

unint64_t WTF::Vector<WebKit::AuxiliaryProcessProxy::PendingMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 40 * *(a1 + 12) <= a3)
  {
    v10 = *(a1 + 8);
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

    WTF::Vector<WebKit::AuxiliaryProcessProxy::PendingMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
  }

  else
  {
    v6 = a3 - v5;
    v7 = *(a1 + 8);
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

    WTF::Vector<WebKit::AuxiliaryProcessProxy::PendingMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebKit::AuxiliaryProcessProxy::PendingMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) < a2)
  {
    if (a2 >= 0x6666667)
    {
      __break(0xC471u);
    }

    else
    {
      v2 = result;
      v3 = *result;
      v4 = *(result + 12);
      v5 = 40 * a2;
      result = WTF::fastMalloc((40 * a2));
      *(v2 + 8) = v5 / 0x28;
      *v2 = result;
      if (v4)
      {
        v7 = result;
        v8 = 0;
        v9 = 40 * v4;
        do
        {
          v10 = v7 + v8;
          v11 = v3 + v8;
          v12 = *(v3 + v8);
          *(v3 + v8) = 0;
          *v10 = v12;
          *(v10 + 8) = *(v3 + v8 + 8);
          *(v10 + 16) = 0;
          *(v10 + 32) = 0;
          if (*(v3 + v8 + 32) == 1)
          {
            v13 = *(v11 + 2);
            *(v11 + 2) = 0;
            *(v10 + 16) = v13;
            *(v10 + 24) = *(v11 + 3);
            *(v10 + 32) = 1;
            if (v11[32])
            {
              v14 = *(v11 + 2);
              *(v11 + 2) = 0;
              if (v14)
              {
                (*(*v14 + 8))(v14);
              }
            }
          }

          result = std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v3 + v8), 0);
          v8 += 40;
        }

        while (v9 != v8);
      }

      if (v3)
      {
        if (*v2 == v3)
        {
          *v2 = 0;
          *(v2 + 8) = 0;
        }

        return WTF::fastFree(v3, v6);
      }
    }
  }

  return result;
}

unsigned int *WebKit::WebProcessPool::setMediaAccessibilityPreferences(WebKit::WebProcessPool *this, WebKit::WebProcessProxy *a2)
{
  if (qword_1ED642628 != -1)
  {
    dispatch_once(&qword_1ED642628, &__block_literal_global_21);
  }

  v3 = qword_1ED642620;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZN6WebKit14WebProcessPool32setMediaAccessibilityPreferencesERNS_15WebProcessProxyE_block_invoke_2;
  block[3] = &__block_descriptor_40_e8_32c92_ZTSKZN6WebKit14WebProcessPool32setMediaAccessibilityPreferencesERNS_15WebProcessProxyEE3__0_e5_v8__0l;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 2, a2);
  v4 = *(a2 + 1);
  atomic_fetch_add(v4, 1u);
  if (v4)
  {
    atomic_fetch_add(v4, 1u);
    v8 = v4;
    dispatch_async(v3, block);
    if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4);
      WTF::fastFree(v4, v5);
    }
  }

  else
  {
    v8 = 0;
    dispatch_async(v3, block);
  }

  result = v8;
  v8 = 0;
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, v5);
    }
  }

  return result;
}

dispatch_queue_t ___ZN6WebKit14WebProcessPool32setMediaAccessibilityPreferencesERNS_15WebProcessProxyE_block_invoke()
{
  result = dispatch_queue_create("MediaAccessibility queue", 0);
  qword_1ED642620 = result;
  if (result)
  {

    return result;
  }

  return result;
}

uint64_t __copy_helper_block_e8_32c92_ZTSKZN6WebKit14WebProcessPool32setMediaAccessibilityPreferencesERNS_15WebProcessProxyEE3__0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
  }

  *(result + 32) = v2;
  return result;
}

uint64_t initBKSDisplayBrightnessGetCurrent(void)
{
  if (byte_1ED64260D == 1)
  {
    v0 = qword_1ED642648;
  }

  else
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/BackBoardServices.framework/BackBoardServices", 2);
    if (!v0)
    {
      goto LABEL_9;
    }

    qword_1ED642648 = v0;
    byte_1ED64260D = 1;
  }

  v1 = dlsym(v0, "BKSDisplayBrightnessGetCurrent");
  softLinkBKSDisplayBrightnessGetCurrent = v1;
  if (!v1)
  {
LABEL_9:
    __break(0xC471u);
    JUMPOUT(0x19D59142CLL);
  }

  return v1();
}

uint64_t ___ZN6WebKit14WebProcessPool32setMediaAccessibilityPreferencesERNS_15WebProcessProxyE_block_invoke_2(WebCore::CaptionUserPreferencesMediaAF *a1)
{
  v2 = WebCore::CaptionUserPreferencesMediaAF::platformCaptionDisplayMode(a1);
  v3 = v2;
  WebCore::CaptionUserPreferencesMediaAF::platformPreferredLanguages(v15, v2);
  v4 = *(a1 + 4);
  if (v4)
  {
    atomic_fetch_add(v4, 1u);
  }

  v11 = v4;
  WTF::CrossThreadCopierBase<false,false,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::copy(v15, &v12);
  v5 = WTF::fastMalloc(0x28);
  *v5 = &unk_1F1105F58;
  *(v5 + 8) = v11;
  *(v5 + 16) = v3;
  *(v5 + 24) = v12;
  v6 = v13;
  v12 = 0;
  v13 = 0;
  *(v5 + 32) = v6;
  v14 = v5;
  WTF::callOnMainRunLoop();
  v8 = v14;
  v14 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v12, v7);
  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v15, v9);
}

void sub_19D591570(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    (*(*a14 + 8))(a14);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v14 + 16, a2);
  if (a10)
  {
    if (atomic_fetch_add(a10, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a10);
      WTF::fastFree(a10, v17);
    }
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v15 - 32, v17);
  _Unwind_Resume(a1);
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::BacklightLevelDidChange>(uint64_t a1, float *a2, size_t a3, char a4)
{
  if (*(a1 + 114) != 1)
  {
    v8 = IPC::Encoder::operator new(0x238, a2);
    *v8 = 2929;
    *(v8 + 2) = 0;
    *(v8 + 3) = 0;
    *(v8 + 1) = a3;
    *(v8 + 68) = 0;
    *(v8 + 70) = 0;
    *(v8 + 69) = 0;
    IPC::Encoder::encodeHeader(v8);
    v29 = v8;
    IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v8, *a2);
    LOBYTE(v26) = 0;
    v27 = 0;
    v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v29, a4, &v26, 1);
    if (v27 == 1)
    {
      v11 = v26;
      v26 = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }
    }

    v12 = v29;
    v29 = 0;
    if (!v12)
    {
      return v10;
    }

    goto LABEL_19;
  }

  v14 = IPC::Encoder::operator new(0x238, a2);
  *v14 = 2929;
  v14[2] = 0;
  v14[3] = 0;
  v14[1] = a3;
  v15 = v14 + 68;
  v14[68] = 0;
  v14[70] = 0;
  v14[69] = 0;
  result = IPC::Encoder::encodeHeader(v14);
  v17 = v14[2];
  if (v17)
  {
    v18 = v14[3];
  }

  else
  {
    v17 = v14 + 4;
    v18 = 512;
  }

  v19 = *v15;
  if (v18 < *v15)
  {
    __break(1u);
  }

  else
  {
    v29 = 0;
    v30 = 0;
    v31 = v19;
    if (!v19)
    {
      goto LABEL_14;
    }

    if (!HIDWORD(v19))
    {
      v30 = v19;
      v29 = WTF::fastMalloc(v19);
      memcpy(v29, v17, v19);
LABEL_14:
      v20 = IPC::Encoder::operator new(0x238, v16);
      *v20 = 2929;
      *(v20 + 2) = 0;
      *(v20 + 3) = 0;
      *(v20 + 1) = a3;
      *(v20 + 68) = 0;
      *(v20 + 70) = 0;
      *(v20 + 69) = 0;
      IPC::Encoder::encodeHeader(v20);
      v28 = v20;
      IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v20, *a2);
      v10 = WebKit::AuxiliaryProcessProxy::sendMessageAfterResuming(a1, &v29, &v28);
      if (v28)
      {
        IPC::Encoder::~Encoder(v28, v9);
        bmalloc::api::tzoneFree(v24, v25);
      }

      v21 = v29;
      if (v29)
      {
        v29 = 0;
        v30 = 0;
        WTF::fastFree(v21, v9);
      }

      v12 = v14;
LABEL_19:
      IPC::Encoder::~Encoder(v12, v9);
      bmalloc::api::tzoneFree(v22, v23);
      return v10;
    }
  }

  __break(0xC471u);
  return result;
}

void sub_19D591824(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13)
{
  IPC::Encoder::~Encoder(v13, a2);
  bmalloc::api::tzoneFree(v15, v16);
  _Unwind_Resume(a1);
}

void WebKit::WebProcessPool::registerHighDynamicRangeChangeCallback(WebKit::WebProcessPool *this)
{
  {
    v1 = WTF::fastMalloc(0x10);
    *v1 = &unk_1F1106608;
    v3 = v1;
    MEMORY[0x19EB08CD0](&WebKit::WebProcessPool::registerHighDynamicRangeChangeCallback(void)::notifier, &v3);
    v2 = v3;
    v3 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }
}

void sub_19D591964(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebProcessCreationParameters::~WebProcessCreationParameters(WebKit::WebProcessCreationParameters *this, void *a2)
{
  WTF::Vector<std::pair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 784, a2);
  v4 = *(this + 96);
  if (v4)
  {
    *(this + 96) = 0;
    *(this + 194) = 0;
    WTF::fastFree(v4, v3);
  }

  WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 744, v3);
  WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 728, v5);
  WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 712, v6);
  WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 696, v7);
  v9 = *(this + 86);
  if (v9)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v9, v8);
  }

  v10 = *(this + 85);
  if (v10)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v10, v8);
  }

  v11 = *(this + 84);
  *(this + 84) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v8);
  }

  v12 = *(this + 77);
  *(this + 77) = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v8);
  }

  v13 = *(this + 76);
  *(this + 76) = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v8);
  }

  v14 = *(this + 75);
  if ((v14 & 0x8000000000000) != 0)
  {
    v45 = (v14 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v14 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v45);
      WTF::fastFree(v45, v8);
    }
  }

  v15 = *(this + 74);
  if (v15)
  {
    WTF::HashTable<WebCore::CSSValueKey,WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>>,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashMap<WebCore::CSSValueKey,WebCore::Color,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::Color>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::CSSValueKey>,WTF::FastMalloc>::deallocateTable(v15, v8);
  }

  if (*(this + 576) == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(this + 71);
  }

  if (*(this + 560) == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(this + 69);
  }

  if (*(this + 544) == 1)
  {
    WebKit::WebProcessDataStoreParameters::~WebProcessDataStoreParameters(this + 56);
  }

  v16 = *(this + 53);
  if (v16)
  {
    WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebCore::ScreenData>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebCore::ScreenData>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebCore::ScreenData,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebCore::ScreenData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::deallocateTable(v16, v8);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 400, v8);
  v18 = *(this + 49);
  *(this + 49) = 0;
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = *(this + 48);
  if (v19)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v19, v17);
  }

  v20 = *(this + 47);
  *(this + 47) = 0;
  if (v20)
  {
    CFRelease(*(v20 + 8));
  }

  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(this + 45);
  v22 = *(this + 44);
  *(this + 44) = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v21);
  }

  v23 = *(this + 41);
  *(this + 41) = 0;
  if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v23, v21);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 280, v21);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 264, v24);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 248, v25);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 232, v26);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 216, v27);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 200, v28);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 184, v29);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 168, v30);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 152, v31);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 136, v32);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 120, v33);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 104, v34);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 88, v35);
  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 72, v36);
  v38 = *(this + 8);
  *(this + 8) = 0;
  if (v38)
  {
    CFRelease(*(v38 + 8));
  }

  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 48, v37);
  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(this + 5);
  v40 = *(this + 4);
  *(this + 4) = 0;
  if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v40, v39);
  }

  std::unique_ptr<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::~unique_ptr[abi:sn200100](this + 3, v39);
  v42 = *(this + 2);
  *(this + 2) = 0;
  if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v42, v41);
  }

  v43 = *(this + 1);
  *(this + 1) = 0;
  if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v43, v41);
  }

  v44 = *this;
  *this = 0;
  if (v44)
  {
    if (atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v44, v41);
    }
  }
}

WTF::StringImpl *WTF::VectorDestructor<true,WebCore::SpeechRecognitionAlternativeData>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = *v3;
      *v3 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      v3 += 2;
    }

    while (v3 != a2);
  }

  return result;
}

void API::Data::~Data(API::Data *this)
{
  *this = &unk_1F10E8400;
  (*(**(this + 4) + 16))(*(this + 4));
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  API::Data::~Data(this);

  JUMPOUT(0x19EB14CF0);
}

void sub_19D591E58(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  *(v1 + 32) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Detail::CallableWrapper<API::Data::createWithoutCopying(NSData *)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10F1858;
  *(this + 1) = 0;
  if (v3)
  {
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl ****std::unique_ptr<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::~unique_ptr[abi:sn200100](WTF::StringImpl ****a1, WTF::StringImpl *a2)
{
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    if (*v3)
    {
      v5 = v3;
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*v3, a2);
      v3 = v5;
    }

    WTF::fastFree(v3, a2);
  }

  return a1;
}

unint64_t WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 8 * *(a1 + 12) <= a3)
  {
    v10 = *(a1 + 8);
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

    WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
  }

  else
  {
    v6 = a3 - v5;
    v7 = *(a1 + 8);
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

    WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

void **WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(void **result, unint64_t a2)
{
  if (*(result + 2) < a2)
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
      v5 = *(result + 3);
      v6 = WTF::fastMalloc((8 * a2));
      *(v3 + 2) = v2;
      *v3 = v6;
      result = memcpy(v6, v4, 8 * v5);
      if (v4)
      {
        if (*v3 == v4)
        {
          *v3 = 0;
          *(v3 + 2) = 0;
        }

        return WTF::fastFree(v4, v7);
      }
    }
  }

  return result;
}

WTF *WTF::CrossThreadCopierBase<false,false,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::copy@<X0>(_DWORD *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = *a1;
    v6 = 8 * v4;
    do
    {
      WTF::String::isolatedCopy();
      v8 = *v5;
      *v5 = v10;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v7);
      }

      v10 = 0;
      ++v5;
      v6 -= 8;
    }

    while (v6);
  }

  *a2 = 0;
  a2[1] = 0;
  return WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a2, a1);
}

void sub_19D592168(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *__destroy_helper_block_e8_32c92_ZTSKZN6WebKit14WebProcessPool32setMediaAccessibilityPreferencesERNS_15WebProcessProxyEE3__0(uint64_t a1, void *a2)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, a2);
    }
  }

  return result;
}

uint64_t WebKit::WebsiteDataStore::fetchAllDataStoreIdentifiers(WebKit::WebsiteDataStore *a1)
{
  v2 = WebKit::WebsiteDataStore::websiteDataStoreIOQueueSingleton(a1);
  v3 = *a1;
  *a1 = 0;
  v9 = v3;
  WebKit::defaultWebsiteDataStoreRootDirectory(v2);
  WTF::String::isolatedCopy();
  v4 = WTF::fastMalloc(0x18);
  *v4 = &unk_1F110C2F8;
  v4[1] = v9;
  v4[2] = v10;
  v11 = v4;
  (*(*v2 + 48))(v2, &v11);
  v6 = v11;
  v11 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  result = v8;
  if (v8)
  {
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v8, v5);
    }
  }

  return result;
}

void sub_19D592310(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, WTF::StringImpl *a12)
{
  v14 = *(v12 - 24);
  *(v12 - 24) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebsiteDataStore::websiteDataStoreIOQueueSingleton(WebKit::WebsiteDataStore *this)
{
  {
    return WebKit::WebsiteDataStore::websiteDataStoreIOQueueSingleton(void)::queue;
  }

  WTF::WorkQueue::create();
  result = v2;
  WebKit::WebsiteDataStore::websiteDataStoreIOQueueSingleton(void)::queue = v2;
  return result;
}

void WebKit::defaultWebsiteDataStoreRootDirectory(WebKit *this)
{
  if ((byte_1ED64278D & 1) == 0)
  {
    qword_1ED6427E0 = 0;
    byte_1ED64278D = 1;
  }

  if (qword_1ED6427D8 != -1)
  {
    dispatch_once(&qword_1ED6427D8, &__block_literal_global_263);
  }

  [objc_msgSend(qword_1ED6427E0 "absoluteURL")];

  JUMPOUT(0x19EB02040);
}

void ___ZN6WebKitL36defaultWebsiteDataStoreRootDirectoryEv_block_invoke()
{
  v0 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  if (!v0)
  {
    __break(0xC471u);
    return;
  }

  v12 = v0;
  v1 = v0;
  v2 = [v12 URLByAppendingPathComponent:@"WebKit" isDirectory:1];
  v3 = v2;
  if (v2)
  {
    v2 = v2;
  }

  if ((WebKit::processHasContainer(v2) & 1) == 0)
  {
    WebKit::applicationOrProcessIdentifier(&v14);
    v4 = v14;
    v5 = [v3 URLByAppendingPathComponent:v14 isDirectory:1];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    if (v3)
    {

      if (!v4)
      {
        goto LABEL_10;
      }
    }

    else if (!v4)
    {
LABEL_10:
      v3 = v6;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_11:
  v8 = [v3 URLByAppendingPathComponent:@"WebsiteDataStore" isDirectory:{1, v12}];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  v11 = qword_1ED6427E0;
  qword_1ED6427E0 = v9;
  if (v11)
  {

    if (!v3)
    {
      goto LABEL_15;
    }

LABEL_19:

    goto LABEL_15;
  }

  if (v3)
  {
    goto LABEL_19;
  }

LABEL_15:
}

void sub_19D592660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9)
{
  if (v9)
  {
  }

  _Unwind_Resume(a1);
}

WTF *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::fetchAllDataStoreIdentifiers(WTF::CompletionHandler<void ()(WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void>::call(uint64_t a1, const WTF::String *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  result = WTF::FileSystemImpl::listDirectory(&v20, (a1 + 16), a2);
  v22 = 0;
  v23 = 0;
  v4 = v21;
  if (!v21)
  {
    goto LABEL_9;
  }

  if (v21 >> 28)
  {
    __break(0xC471u);
    return result;
  }

  v5 = WTF::fastMalloc((16 * v21));
  LODWORD(v23) = v4;
  v22 = v5;
  if (v21)
  {
    v6 = 0;
    v7 = v20;
    v8 = 8 * v21;
    do
    {
      WTF::UUID::parse();
      if (v26 == 1)
      {
        v9 = v25;
        v10 = (v5 + 16 * v6);
        *v10 = v24;
        v10[1] = v9;
        ++v6;
      }

      v7 += 8;
      v8 -= 8;
    }

    while (v8);
    HIDWORD(v23) = v6;
    v11 = v6;
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v22, v11);
  v13 = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v20, v12);
  WTF::RunLoop::mainSingleton(v13);
  v14 = *(a1 + 8);
  *(a1 + 8) = 0;
  v15 = v22;
  v16 = v23;
  v22 = 0;
  v23 = 0;
  v17 = WTF::fastMalloc(0x20);
  *v17 = &unk_1F110C320;
  v17[1] = v14;
  v17[2] = v15;
  v17[3] = v16;
  v24 = v17;
  WTF::RunLoop::dispatch();
  v19 = v24;
  v24 = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  result = v22;
  if (v22)
  {
    v22 = 0;
    LODWORD(v23) = 0;
    return WTF::fastFree(result, v18);
  }

  return result;
}

void sub_19D592878(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF *a11, int a12, int a13, uint64_t a14)
{
  if (a14)
  {
    (*(*a14 + 8))(a14);
  }

  if (a11)
  {
    WTF::fastFree(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, unint64_t a2)
{
  if (*(result + 8) > a2)
  {
    v2 = a2;
    v3 = result;
    v4 = *(result + 12);
    if (v4 > a2)
    {
      *(result + 12) = a2;
      LODWORD(v4) = a2;
    }

    v5 = *result;
    if (a2)
    {
      if (a2 >> 28)
      {
        __break(0xC471u);
        return result;
      }

      result = WTF::fastMalloc((16 * a2));
      *(v3 + 8) = v2;
      *v3 = result;
      if (v4 && result != v5)
      {
        v6 = 16 * v4;
        v7 = v5;
        do
        {
          v8 = *v7;
          v7 = (v7 + 16);
          *result = v8;
          result += 16;
          v6 -= 16;
        }

        while (v6);
      }
    }

    if (v5)
    {
      if (*v3 == v5)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      return WTF::fastFree(v5, a2);
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::fetchAllDataStoreIdentifiers(WTF::CompletionHandler<void ()(WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F110C2F8;
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
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

WTF::ThreadSafeWeakPtrControlBlock *WTF::BlockPtr<void ()(BEWebContentProcess *,NSError *)>::fromCallable<WebKit::launchWithExtensionKit(WebKit::ProcessLauncher &,WebKit::ProcessLaunchType,WebKit::ProcessLauncher::Client *,WTF::Function<void ()(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)> &&)::$_0>(WebKit::launchWithExtensionKit(WebKit::ProcessLauncher &,WebKit::ProcessLaunchType,WebKit::ProcessLauncher::Client *,WTF::Function<void ()(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)> &&)::$_0)::{lambda(void *,BEWebContentProcess *,NSError *)#1}::__invoke(uint64_t *a1, void *a2)
{
  v5 = a1[5];
  v4 = a1[6];
  v10 = v5;
  if (v4)
  {
    v6 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v4);
  }

  else
  {
    v6 = 0;
  }

  v11 = v6;
  if (a2)
  {
    v7 = a2;
  }

  WTF::Function<void ()(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)>::operator()(a1[4], &v10);
  if (a2)
  {
  }

  result = v11;
  if (v11)
  {
    return WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v11, v8);
  }

  return result;
}

void sub_19D592BE0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v12, a2);
  }

  _Unwind_Resume(exception_object);
}

atomic_uchar *WTF::Function<void ()(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v6 = v2;
  v7 = v3;
  (*(*a1 + 16))(a1, &v6);
  result = v7;
  v7 = 0;
  if (result)
  {
    return WTF::ThreadSafeWeakPtrControlBlock::weakDeref(result, v4);
  }

  return result;
}

void sub_19D592C8C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::ThreadSafeWeakPtrControlBlock *a10)
{
  if (a10)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(a10, a2);
  }

  _Unwind_Resume(exception_object);
}

void WTF::Detail::CallableWrapper<WebKit::ProcessLauncher::launchProcess(void)::$_0,void,WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *>::call(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v44 = *MEMORY[0x1E69E9840];
  v8 = *a2;
  v7 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  if (a6)
  {
    v10 = qword_1ED6416A0;
    if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_FAULT))
    {
      MEMORY[0x19EB02040](&v39, [a6 localizedDescription]);
      WTF::String::utf8();
      if (v40)
      {
        v29 = v40 + 16;
      }

      else
      {
        v29 = 0;
      }

      MEMORY[0x19EB02040](&v37, [a6 localizedFailureReason]);
      WTF::String::utf8();
      if (v38)
      {
        v30 = v38 + 16;
      }

      else
      {
        v30 = 0;
      }

      *buf = 136315394;
      *&buf[4] = v29;
      v42 = 2080;
      v43 = v30;
      _os_log_fault_impl(&dword_19D52D000, v10, OS_LOG_TYPE_FAULT, "Error launching process, description '%s', reason '%s'", buf, 0x16u);
      v32 = v38;
      v38 = 0;
      if (v32)
      {
        if (*v32 == 1)
        {
          WTF::fastFree(v32, v31);
        }

        else
        {
          --*v32;
        }
      }

      v33 = v37;
      v37 = 0;
      if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v33, v31);
      }

      v34 = v40;
      v40 = 0;
      if (v34)
      {
        if (*v34 == 1)
        {
          WTF::fastFree(v34, v31);
        }

        else
        {
          --*v34;
        }
      }

      v35 = v39;
      v39 = 0;
      if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v35, v31);
      }
    }

    if (v7)
    {
      v11 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v7);
    }

    else
    {
      v11 = 0;
    }

    v12 = WTF::fastMalloc(0x18);
    *v12 = &unk_1F1108308;
    v12[1] = v8;
    v12[2] = v11;
    *buf = v12;
    WTF::callOnMainRunLoop();
    v13 = *buf;
    *buf = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    WebKit::ExtensionProcess::invalidate(a3);
  }

  else
  {
    v17 = WTF::fastMalloc(0x18);
    *v17 = 1;
    *(v17 + 8) = 0;
    *(v17 + 16) = 0;
    v18 = *MEMORY[0x1E696EBA8];
    if (*MEMORY[0x1E696EBA8])
    {
      atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
    }

    v39 = v18;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v38 = v40;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    aBlock = 0;
    v37 = v40;
    v40 = 0;
    WebKit::AssertionCapability::AssertionCapability(buf, &v39, &v38, &v37, &v40, &aBlock);
    if (aBlock)
    {
      (*(*aBlock + 8))(aBlock);
    }

    if (v40)
    {
      (*(*v40 + 8))(v40);
    }

    v20 = v37;
    if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v19);
    }

    v21 = v38;
    if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v19);
    }

    v22 = v39;
    if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v19);
    }

    aBlock = _Block_copy(&__block_literal_global_31);
    WebKit::ExtensionProcess::grantCapability(a3, &buf[8], &aBlock, &v40);
    _Block_release(aBlock);
    WebKit::ExtensionCapabilityGrant::setPlatformGrant(v17 + 8, &v40);
    v23 = v40;
    v40 = 0;
    if (v23)
    {
    }

    WebKit::AssertionCapability::~AssertionCapability(buf);
    if (v7)
    {
      v24 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v7);
    }

    else
    {
      v24 = 0;
    }

    v25 = a3[8];
    if (v25 == 255)
    {
      v26 = 0;
    }

    else
    {
      v26 = *a3;
      *a3 = 0;
    }

    v27 = WTF::fastMalloc(0x40);
    *v27 = &unk_1F1108330;
    *(v27 + 8) = v8;
    *(v27 + 16) = v24;
    *(v27 + 24) = a4;
    *(v27 + 32) = a5;
    *(v27 + 40) = 0;
    *(v27 + 48) = -1;
    if (v25 != 255)
    {
      *(v27 + 40) = v26;
      *(v27 + 48) = v25;
      v26 = 0;
    }

    *(v27 + 56) = v17;
    *buf = v27;
    WTF::callOnMainRunLoop();
    v28 = *buf;
    *buf = 0;
    if (v28)
    {
      (*(*v28 + 8))(v28);
    }

    if (v25 != 255 && v26)
    {
    }
  }

  if (v7)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v7, v14);
  }
}