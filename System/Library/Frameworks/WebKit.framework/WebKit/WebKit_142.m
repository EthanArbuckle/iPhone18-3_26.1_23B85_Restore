void *WebKit::NetworkCache::Cache::browsingContextRemoved(uint64_t a1, void **a2, void *a3, uint64_t a4)
{
  v5 = (a1 + 64);
  v4 = *(a1 + 64);
  v30 = a2;
  v31 = a3;
  v32 = a4;
  if (!v4 || ((v21 = WTF::HashTable<WebKit::NetworkCache::GlobalFrameID,WTF::KeyValuePair<WebKit::NetworkCache::GlobalFrameID,WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::GlobalFrameID,WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>>>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashMap<WebKit::NetworkCache::GlobalFrameID,WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WebKit::NetworkCache::GlobalFrameID,WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>>,(WTF::ShouldValidateKey)1,WebKit::NetworkCache::GlobalFrameID>((a1 + 64), &v30), v22 = *v5, !v21) ? (v22 ? (v23 = &v22[10 * *(v22 - 1)]) : (v23 = 0)) : (v23 = v21), v22 ? (v24 = &v22[10 * *(v22 - 1)]) : (v24 = 0), v24 == v23))
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v6 = *(v23 + 3);
    v7 = *(v23 + 4);
    *(v23 + 3) = 0;
    WTF::HashMap<WebKit::NetworkCache::GlobalFrameID,WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(v5, v23);
  }

  v35[0] = v6;
  v35[1] = v7;
  v8 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(v35);
  v30 = v35;
  v31 = v8;
  v32 = v9;
  v10 = v35[0];
  if (v35[0])
  {
    v11 = *(v35[0] - 1);
    v12 = &v35[0][v11];
    v33 = v12;
    v34 = v12;
    WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v30);
  }

  else
  {
    v33 = 0;
    v34 = 0;
    WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v30);
    v12 = 0;
    v11 = 0;
  }

  v25 = v35;
  v26 = v12;
  v27 = v12;
  v28 = v12;
  v29 = &v10[v11];
  result = WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v25);
  v15 = v31;
  v16 = v26;
  if (v31 != v26)
  {
    do
    {
      v17 = *(*v15 + 8);
      v19 = *(v17 + 8);
      v18 = v17 + 8;
      *v18 = v19 + 1;
      v20 = *(v18 + 8);
      if (v20)
      {
        WebKit::NetworkCache::SpeculativeLoad::cancel(v20);
      }

      WTF::RefCounted<WebKit::NetworkCache::AsyncRevalidation>::deref(v18);
      result = WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v30);
      v15 = v31;
    }

    while (v31 != v16);
    v10 = v35[0];
  }

  if (v10)
  {
    return WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v10, v14);
  }

  return result;
}

void *WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(void *a1)
{
  v2 = a1[2];
  v3 = (a1[1] + 8);
  a1[1] = v3;
  while (v3 != v2 && (*v3 + 1) <= 1)
  {
    a1[1] = ++v3;
  }

  WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(a1);
  ++*(*a1 + 8);
  return a1;
}

WTF::StringImpl *WebKit::NetworkCache::Cache::retrieve(uint64_t a1, uint64_t a2, __int128 *a3, __int16 a4, char a5, __int16 a6, WTF::MonotonicTime *a7)
{
  LOWORD(v8) = a6;
  v73 = *MEMORY[0x1E69E9840];
  WebKit::NetworkCache::Cache::makeCacheKey(a1, a2, &v69);
  v13 = WebCore::ResourceRequestBase::priority(a2);
  v14 = v13;
  memset(&v58[8], 0, 75);
  v58[88] = 0;
  WTF::MonotonicTime::now(v13);
  v57 = v15;
  *v58 = v14;
  v16 = *(a1 + 48);
  if (!v16)
  {
    goto LABEL_42;
  }

  ++*(v16 + 8);
  v17 = a3 + 24;
  if ((*(a3 + 24) & 1) == 0 || (WebCore::ResourceRequestBase::isConditional(a2) & 1) != 0 || (*(a2 + 147) & 0xFE) == 2 || (v18 = WebCore::ResourceRequestBase::cachePolicy(a2), v18 != 5) && v18)
  {
    v19 = v8;
    v8 = 0;
  }

  else
  {
    if ((*v17 & 1) == 0)
    {
      goto LABEL_41;
    }

    v59 = *a3;
    v60[0] = *(a3 + 2);
    v19 = v8;
    WebKit::NetworkCache::SpeculativeLoadManager::registerLoad(v16, &v59, a2, &v69, a4, a5, v8);
    v8 = 1;
  }

  while (1)
  {
    v20 = WebCore::ResourceRequestBase::httpMethod(a2);
    if (!MEMORY[0x19EB01EF0](*v20, "GET", 3) || WebCore::ResourceRequestBase::cachePolicy(a2) == 1 && (WebCore::ResourceRequestBase::isConditional(a2) & 1) == 0)
    {
      v56 = 0;
      WebKit::NetworkCache::Cache::completeRetrieve(a7, &v56, &v57);
      if (v56)
      {
        WebKit::NetworkCache::Entry::~Entry(v56, v41);
        bmalloc::api::tzoneFree(v52, v53);
      }

      goto LABEL_17;
    }

    if (!v8)
    {
      goto LABEL_14;
    }

    if (!v16)
    {
      __break(0xC471u);
LABEL_45:
      JUMPOUT(0x19DD84040);
    }

    if (*v17)
    {
      break;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    v19 = v8;
    v8 = 0;
    v17 = a3 + 24;
  }

  if (WebKit::NetworkCache::SpeculativeLoadManager::canRetrieve(v16, &v69, a2, a3))
  {
    v47 = *(a1 + 24);
    atomic_fetch_add((v47 + 144), 1u);
    *&v59 = v47;
    WebCore::ResourceRequest::ResourceRequest(&v59 + 1, a2);
    v48 = *&v58[16];
    *&v61[48] = *&v58[32];
    *&v61[64] = *&v58[48];
    *&v61[80] = *&v58[64];
    *&v61[89] = *&v58[73];
    *v61 = v57;
    *&v61[16] = *v58;
    v49 = *a7;
    *a7 = 0;
    *&v61[32] = v48;
    v50 = *(a1 + 80);
    v60[24] = v49;
    *&v61[112] = v50;
    WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>::Function<WebKit::NetworkCache::Cache::retrieve(WebCore::ResourceRequest const&,std::optional<WebKit::NetworkCache::GlobalFrameID>,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>,WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::Cache::RetrieveInfo const&)> &&)::$_0,void>(&v55, &v59);
    WebKit::NetworkCache::SpeculativeLoadManager::retrieve(v16, &v69, &v55);
    v51 = v55;
    v55 = 0;
    if (v51)
    {
      (*(*v51 + 8))(v51);
    }

    WebKit::NetworkCache::Cache::retrieve(WebCore::ResourceRequest const&,std::optional<WebKit::NetworkCache::GlobalFrameID>,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>,WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::Cache::RetrieveInfo const&)> &&)::$_0::~$_0(&v59);
    goto LABEL_18;
  }

LABEL_14:
  v21 = *(a1 + 16);
  ++*(a1 + 8);
  *&v59 = a1;
  *(&v59 + 1) = a1;
  WebCore::ResourceRequest::ResourceRequest(v60, a2);
  v22 = *a7;
  *a7 = 0;
  *v61 = v22;
  *&v61[97] = *&v58[73];
  *&v61[72] = *&v58[48];
  *&v61[88] = *&v58[64];
  *&v61[8] = v57;
  *&v61[24] = *v58;
  *&v61[40] = *&v58[16];
  *&v61[56] = *&v58[32];
  WebKit::NetworkCache::Key::Key(&v62, &v69);
  v23 = *(a1 + 24);
  atomic_fetch_add((v23 + 144), 1u);
  v24 = *(a1 + 80);
  v67 = v23;
  *v68 = v24;
  *&v68[8] = *a3;
  *&v68[17] = *(a3 + 9);
  *&v68[40] = a4;
  v68[42] = a5;
  *&v68[44] = v19;
  v25 = WTF::fastMalloc(0x1D8);
  *v25 = &unk_1F1108660;
  *(v25 + 8) = v59;
  v26 = *(&v59 + 1);
  *(&v59 + 1) = 0;
  *(v25 + 16) = v26;
  WebCore::ResourceRequest::ResourceRequest((v25 + 24), v60);
  v27 = *v61;
  *v61 = 0;
  *(v25 + 224) = v27;
  v29 = *&v61[8];
  v28 = *&v61[24];
  *(v25 + 264) = *&v61[40];
  *(v25 + 232) = v29;
  *(v25 + 248) = v28;
  v30 = *&v61[72];
  v32 = *&v61[88];
  v31 = *&v61[104];
  *(v25 + 280) = *&v61[56];
  *(v25 + 296) = v30;
  *(v25 + 312) = v32;
  *(v25 + 328) = v31;
  *(v25 + 344) = v62;
  *(v25 + 360) = v63;
  v33 = *(&v63 + 1);
  v62 = 0u;
  v63 = 0u;
  *(v25 + 368) = v33;
  v34 = v64;
  v35 = v65;
  *(v25 + 408) = v66;
  *(v25 + 376) = v34;
  *(v25 + 392) = v35;
  v36 = v67;
  v67 = 0;
  *(v25 + 416) = v36;
  v37 = *v68;
  v38 = *&v68[16];
  *(v25 + 454) = *&v68[30];
  *(v25 + 424) = v37;
  *(v25 + 440) = v38;
  v55 = v25;
  WebKit::NetworkCache::Storage::retrieve(v21, &v69, v14, &v55);
  v40 = v55;
  v55 = 0;
  if (v40)
  {
    (*(*v40 + 8))(v40);
  }

  WebKit::NetworkCache::Cache::retrieve(WebCore::ResourceRequest const&,std::optional<WebKit::NetworkCache::GlobalFrameID>,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>,WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::Cache::RetrieveInfo const&)> &&)::$_1::~$_1(&v59, v39);
LABEL_17:
  if (!v16)
  {
    goto LABEL_20;
  }

LABEL_18:
  v42 = *(v16 + 8);
  if (!v42)
  {
    __break(0xC471u);
    goto LABEL_45;
  }

  *(v16 + 8) = v42 - 1;
LABEL_20:
  v43 = v72;
  v72 = 0;
  if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v43, v41);
  }

  v44 = v71;
  v71 = 0;
  if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v44, v41);
  }

  v45 = v70;
  v70 = 0;
  if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v45, v41);
  }

  result = v69;
  v69 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v41);
    }
  }

  return result;
}

WebKit::NetworkCache::Entry *WebKit::NetworkCache::Cache::completeRetrieve(WTF::MonotonicTime *a1, WebKit::NetworkCache::Entry **a2, uint64_t a3)
{
  WTF::MonotonicTime::now(a1);
  *(a3 + 8) = v6;
  v7 = *a2;
  *a2 = 0;
  v8 = *a1;
  v13 = v7;
  (*(*v8 + 16))(v8, &v13, a3);
  result = v13;
  v13 = 0;
  if (result)
  {
    WebKit::NetworkCache::Entry::~Entry(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

uint64_t *WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>::Function<WebKit::NetworkCache::Cache::retrieve(WebCore::ResourceRequest const&,std::optional<WebKit::NetworkCache::GlobalFrameID>,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>,WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::Cache::RetrieveInfo const&)> &&)::$_0,void>(uint64_t *a1, uint64_t *a2)
{
  v4 = WTF::fastMalloc(0x158);
  v5 = *a2;
  *a2 = 0;
  *v4 = &unk_1F1108638;
  *(v4 + 8) = v5;
  WebCore::ResourceRequest::ResourceRequest((v4 + 16), (a2 + 1));
  v6 = a2[26];
  a2[26] = 0;
  *(v4 + 216) = v6;
  v7 = *(a2 + 27);
  v8 = *(a2 + 29);
  v9 = *(a2 + 33);
  *(v4 + 256) = *(a2 + 31);
  *(v4 + 272) = v9;
  *(v4 + 224) = v7;
  *(v4 + 240) = v8;
  v10 = *(a2 + 35);
  v11 = *(a2 + 37);
  v12 = *(a2 + 39);
  *(v4 + 336) = a2[41];
  *(v4 + 304) = v11;
  *(v4 + 320) = v12;
  *(v4 + 288) = v10;
  *a1 = v4;
  return a1;
}

uint64_t WebKit::NetworkCache::Cache::retrieve(WebCore::ResourceRequest const&,std::optional<WebKit::NetworkCache::GlobalFrameID>,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>,WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::Cache::RetrieveInfo const&)> &&)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 208);
  *(a1 + 208) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  WebCore::ResourceRequest::~ResourceRequest((a1 + 8));
  v3 = *a1;
  *a1 = 0;
  if (v3 && atomic_fetch_add(v3 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 36);
    (*(*v3 + 24))(v3);
  }

  return a1;
}

void *WebKit::NetworkCache::Cache::retrieve(WebCore::ResourceRequest const&,std::optional<WebKit::NetworkCache::GlobalFrameID>,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>,WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::Cache::RetrieveInfo const&)> &&)::$_1::~$_1(void *a1, WTF::StringImpl *a2)
{
  v3 = a1[51];
  a1[51] = 0;
  if (v3 && atomic_fetch_add(v3 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 36);
    (*(*v3 + 24))(v3);
  }

  v4 = a1[45];
  a1[45] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[44];
  a1[44] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = a1[43];
  a1[43] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = a1[42];
  a1[42] = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = a1[27];
  a1[27] = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  WebCore::ResourceRequest::~ResourceRequest((a1 + 2));
  v10 = a1[1];
  a1[1] = 0;
  if (v10)
  {
    WTF::RefCounted<WebKit::NetworkCache::Cache>::deref((v10 + 8), v9);
  }

  return a1;
}

uint64_t WebKit::NetworkCache::Cache::makeEntry@<X0>(WebKit::NetworkCache::Cache *a1@<X0>, atomic_uint **a2@<X1>, const WebCore::ResourceRequest *a3@<X2>, char a4@<W3>, uint64_t *a5@<X4>, uint64_t *a6@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  WebKit::NetworkCache::Cache::makeCacheKey(a1, a2, &v29);
  v12 = *(a1 + 3);
  v28[0] = *(a1 + 10);
  v13 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v12 + 248), v28);
  if (v13)
  {
    v15 = v13;
    ++*(v13 + 2);
    WebCore::collectVaryingRequestHeaders(v28, v13, a2, a3, v14);
    v17 = WebKit::NetworkCache::Entry::operator new(0x308, v16);
    *a6 = WebKit::NetworkCache::Entry::Entry(v17, &v29, a3, a4, a5, v28);
    WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v28, v18);
    v20 = *(v15 + 2);
    if (!v20)
    {
      result = 290;
      __break(0xC471u);
      return result;
    }

    *(v15 + 2) = v20 - 1;
  }

  else
  {
    WebCore::collectVaryingRequestHeaders(v28, 0, a2, a3, v14);
    v26 = WebKit::NetworkCache::Entry::operator new(0x308, v25);
    *a6 = WebKit::NetworkCache::Entry::Entry(v26, &v29, a3, a4, a5, v28);
    WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v28, v27);
  }

  v21 = v32;
  v32 = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v19);
  }

  v22 = v31;
  v31 = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v19);
  }

  v23 = v30;
  v30 = 0;
  if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v23, v19);
  }

  result = v29;
  v29 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v19);
    }
  }

  return result;
}

void WebKit::NetworkCache::Cache::makeRedirectEntry(WebKit::NetworkCache::Cache *this@<X0>, atomic_uint **a2@<X1>, const WebCore::ResourceResponse *a3@<X2>, const WebCore::ResourceRequest *a4@<X3>, uint64_t *a5@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  WebCore::ResourceRequest::ResourceRequest(v26, a4);
  WebCore::ResourceRequestBase::clearHTTPAuthorization(v26);
  WebKit::NetworkCache::Cache::makeCacheKey(this, a2, &v27);
  v9 = *(this + 3);
  v25[0] = *(this + 10);
  v10 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v9 + 248), v25);
  if (v10)
  {
    v12 = v10;
    ++*(v10 + 2);
    WebCore::collectVaryingRequestHeaders(v25, v10, a2, a3, v11);
    v14 = WebKit::NetworkCache::Entry::operator new(0x308, v13);
    *a5 = WebKit::NetworkCache::Entry::Entry(v14, &v27, a3, v26, v25);
    WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v25, v15);
    v17 = *(v12 + 2);
    if (!v17)
    {
      __break(0xC471u);
      return;
    }

    *(v12 + 2) = v17 - 1;
  }

  else
  {
    WebCore::collectVaryingRequestHeaders(v25, 0, a2, a3, v11);
    v23 = WebKit::NetworkCache::Entry::operator new(0x308, v22);
    *a5 = WebKit::NetworkCache::Entry::Entry(v23, &v27, a3, v26, v25);
    WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v25, v24);
  }

  v18 = v30;
  v30 = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v16);
  }

  v19 = v29;
  v29 = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v16);
  }

  v20 = v28;
  v28 = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v16);
  }

  v21 = v27;
  v27 = 0;
  if (v21)
  {
    if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v16);
    }
  }

  WebCore::ResourceRequest::~ResourceRequest(v26);
}

WTF::StringImpl *WebKit::NetworkCache::Cache::store@<X0>(atomic_uint **this@<X1>, WebCore::ResourceRequest *a2@<X2>, uint64_t a3@<X0>, char a4@<W3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  if (WebKit::NetworkCache::makeStoreDecision(this, a2, a2))
  {
    WebKit::NetworkCache::Cache::makeCacheKey(a3, this, &v24);
    if (WebCore::ResourceResponseBase::httpStatusCode(a2) != 304)
    {
      WebKit::NetworkCache::Storage::remove(*(a3 + 16), &v24);
    }

    *a7 = 0;
  }

  else
  {
    WebKit::NetworkCache::Cache::makeEntry(a3, this, a2, a4, a5, a7);
    WebKit::NetworkCache::Entry::encodeAsStorageRecord(*a7);
    v19 = *(a3 + 16);
    ++*(a3 + 8);
    v20 = *a6;
    *a6 = 0;
    v21 = WTF::fastMalloc(0x18);
    *v21 = &unk_1F1108688;
    v21[1] = a3;
    v21[2] = v20;
    v23 = v21;
    WebKit::NetworkCache::Storage::store(v19, &v24, &v23);
    v22 = v23;
    v23 = 0;
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    if (object)
    {
      os_release(object);
    }

    if (v27)
    {
      os_release(v27);
    }
  }

  v15 = v26;
  v26 = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v14);
  }

  v16 = v25;
  v25 = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v14);
  }

  v17 = v24.n128_u64[1];
  v24.n128_u64[1] = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v14);
  }

  result = v24.n128_u64[0];
  v24.n128_u64[0] = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v14);
    }
  }

  return result;
}

uint64_t WebKit::NetworkCache::makeStoreDecision(WebKit::NetworkCache *this, const WebCore::ResourceRequest *a2, const WebCore::ResourceResponse *a3)
{
  if ((*(WebCore::ResourceRequestBase::url(this) + 8) & 2) == 0 || !WebCore::ResourceResponseBase::isInHTTPFamily(a2))
  {
    return 1;
  }

  v5 = WebCore::ResourceRequestBase::httpMethod(this);
  if (!MEMORY[0x19EB01EF0](*v5, "GET", 3))
  {
    return 2;
  }

  v6 = WebCore::ResourceRequestBase::httpHeaderFields(this);
  WebCore::parseCacheControlDirectives(v25, v6, v7);
  if ((v26 & 2) != 0)
  {
    return 5;
  }

  if (WebCore::ResourceResponseBase::cacheControlContainsNoStore(a2))
  {
    return 3;
  }

  v8 = WebCore::ResourceResponseBase::httpStatusCode(a2);
  if ((WebCore::isStatusCodeCacheableByDefault(v8) & 1) == 0)
  {
    WebCore::ResourceResponseBase::expires(a2);
    if (v9)
    {
      v11 = 1;
    }

    else
    {
      WebCore::ResourceResponseBase::cacheControlMaxAge(a2);
      v11 = v10;
    }

    v12 = WebCore::ResourceResponseBase::httpStatusCode(a2);
    if (!WebCore::isStatusCodePotentiallyCacheable(v12) || (v11 & 1) == 0)
    {
      return 4;
    }
  }

  if ((WebCore::ResourceResponseBase::isRedirection(a2) & 1) != 0 || (*(a2 + 120) & 0x40) != 0)
  {
    v22 = WebCore::ResourceRequestBase::url(this);
    if ((*(v22 + 8) & 1) != 0 && *v22 && *(*v22 + 4) > *(v22 + 36))
    {
      return 8;
    }
  }

  if (*(this + 147) == 1)
  {
    return 0;
  }

  v14 = WebCore::ResourceRequestBase::priority(this);
  if (v14 != 4)
  {
    WTF::WallTime::now(v14);
    v15 = COERCE_DOUBLE(WebCore::ResourceResponseBase::cacheControlStaleWhileRevalidate(a2));
    v17 = (v16 & 1) != 0 && v15 > 0.0;
    if (WebCore::ResourceResponseBase::cacheControlContainsNoCache(a2))
    {
      if ((WebCore::ResourceResponseBase::hasCacheValidatorFields(a2) & 1) == 0)
      {
        return 6;
      }
    }

    else
    {
      WebCore::computeFreshnessLifetimeForHTTPFamily();
      v19 = v18;
      hasCacheValidatorFields = WebCore::ResourceResponseBase::hasCacheValidatorFields(a2);
      if (v19 <= 0.0 && (hasCacheValidatorFields & 1) == 0 && !v17)
      {
        return 6;
      }
    }
  }

  v21 = *(this + 147);
  if (v21 == 2)
  {
    v23 = WebCore::ResourceResponseBase::mimeType(a2);
    if ((WebKit::NetworkCache::isMediaMIMEType(v23, v24) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21 != 4)
  {
    return 0;
  }

  return 7;
}

void WebKit::NetworkCache::Entry::encodeAsStorageRecord(WebKit::NetworkCache::Entry *this)
{
  v1 = MEMORY[0x1EEE9AC00](this);
  v3 = v2;
  v27 = *MEMORY[0x1E69E9840];
  WTF::Persistence::Encoder::Encoder(&buffer);
  WTF::Persistence::Coder<WebCore::ResourceResponse>::encodeForPersistence();
  v4 = *(v1 + 356);
  WTF::Persistence::Encoder::operator<<();
  if (v4)
  {
    WTF::Persistence::VectorCoder<false,std::pair<WTF::String,WTF::String>,0ul>::encodeForPersistence<WTF::Persistence::Encoder>(&buffer, v1 + 344);
  }

  v5 = *(v1 + 560);
  WTF::Persistence::Encoder::operator<<();
  if (v5 == 1)
  {
    WTF::Persistence::Coder<std::optional<WebCore::ResourceRequest>>::encodeForPersistence<WTF::Persistence::Encoder>(&buffer, v1 + 360);
  }

  if (*(v1 + 760))
  {
    WTF::Persistence::Encoder::operator<<();
    if ((*(v1 + 760) & 1) == 0)
    {
      v14 = std::__throw_bad_optional_access[abi:sn200100]();
      WebKit::NetworkCache::Storage::Record::~Record(v14, v15);
      return;
    }

    WTF::Persistence::Coder<WTF::Seconds>::encodeForPersistence();
  }

  else
  {
    WTF::Persistence::Encoder::operator<<();
  }

  WTF::Persistence::Encoder::encodeChecksum(&buffer);
  v20[1] = 0;
  v20[2] = 0;
  v20[0] = dispatch_data_create(buffer, size, 0, 0);
  v21 = 0;
  object = 0;
  v18 = 0uLL;
  v19 = 0;
  v6 = *(v1 + 568);
  if (v6)
  {
    atomic_fetch_add(v6 + 2, 1u);
    WebCore::FragmentedSharedBuffer::makeContiguous(&v16, v6);
    v7 = v16;
    atomic_fetch_add(v16 + 2, 1u);
    v8 = *(v1 + 568);
    *(v1 + 568) = v7;
    if (v8 && atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v8 + 2);
      (*(*v8 + 8))(v8);
    }

    v9 = WebCore::SharedBuffer::span(v16);
    v11 = dispatch_data_create(v9, v10, 0, 0);
    v25 = 0uLL;
    v24 = v11;
    v26 = 0;
    WTF::OSObjectPtr<dispatch_data_s *>::operator=(&object, &v24);
    v18 = v25;
    v19 = v26;
    if (v24)
    {
      os_release(v24);
    }

    v12 = v16;
    v16 = 0;
    if (v12 && atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v12 + 2);
      (*(*v12 + 8))(v12);
    }

    if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v6 + 2);
      (*(*v6 + 8))(v6);
    }
  }

  v13 = *(v1 + 72);
  LOBYTE(v24) = 0;
  BYTE12(v25) = 0;
  WebKit::NetworkCache::Storage::Record::Record(v3, v1, v20, &object, &v24, v13);
  if (object)
  {
    os_release(object);
  }

  if (v20[0])
  {
    os_release(v20[0]);
  }

  WTF::Persistence::Encoder::~Encoder(&buffer);
}

void WebKit::NetworkCache::Storage::Record::~Record(WebKit::NetworkCache::Storage::Record *this, WTF::StringImpl *a2)
{
  v3 = *(this + 14);
  if (v3)
  {
    os_release(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    os_release(v4);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(this + 1);
  *(this + 1) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *this;
  *this = 0;
  if (v8)
  {
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, a2);
    }
  }
}

WTF::StringImpl *WebKit::NetworkCache::Cache::storeRedirect@<X0>(WebKit::NetworkCache *this@<X1>, WebCore::ResourceRequest *a2@<X2>, WebKit::NetworkCache::Cache *a3@<X0>, const WebCore::ResourceRequest *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t *a7@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  result = WebKit::NetworkCache::makeStoreDecision(this, a2, a2);
  if (result)
  {
    *a7 = 0;
  }

  else
  {
    WebKit::NetworkCache::Cache::makeRedirectEntry(a3, this, a2, a4, a7);
    v15 = *a7;
    if (a6)
    {
      if ((*(v15 + 760) & 1) == 0)
      {
        *(v15 + 760) = 1;
      }

      *(v15 + 752) = a5;
    }

    WebKit::NetworkCache::Entry::encodeAsStorageRecord(v15);
    v16 = *(a3 + 2);
    v22 = 0;
    WebKit::NetworkCache::Storage::store(v16, &v23, &v22);
    v18 = v22;
    v22 = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    if (object)
    {
      os_release(object);
    }

    if (v26)
    {
      os_release(v26);
    }

    v19 = v25;
    v25 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v17);
    }

    v20 = v24;
    v24 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v17);
    }

    v21 = v23.n128_u64[1];
    v23.n128_u64[1] = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v17);
    }

    result = v23.n128_u64[0];
    v23.n128_u64[0] = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v17);
      }
    }
  }

  return result;
}

void WebKit::NetworkCache::Cache::update(void *a1@<X0>, WebCore::NetworkStorageSession *a2@<X1>, uint64_t a3@<X2>, WebCore::ResourceResponse *a4@<X3>, char a5@<W4>, WebKit::NetworkCache::Entry **a6@<X8>)
{
  v39 = *MEMORY[0x1E69E9840];
  WebCore::ResourceResponse::ResourceResponse(v31, (a3 + 80));
  WebCore::updateResponseHeadersAfterRevalidation(v31, a4, v12);
  v13 = *(a3 + 568);
  if (!v13)
  {
    WebKit::NetworkCache::Entry::initializeBufferFromStorageRecord(a3);
    v13 = *(a3 + 568);
  }

  v14 = a1[3];
  v34.n128_u64[0] = a1[10];
  v15 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v14 + 248), &v34);
  v17 = v15;
  if (v15)
  {
    ++*(v15 + 2);
  }

  WebCore::collectVaryingRequestHeaders(&v34, v15, a2, v31, v16);
  v19 = WebKit::NetworkCache::Entry::operator new(0x308, v18);
  if (v13)
  {
    atomic_fetch_add((v13 + 8), 1u);
  }

  v33 = v13;
  *a6 = WebKit::NetworkCache::Entry::Entry(v19, a3, v31, a5, &v33, &v34);
  v21 = v33;
  v33 = 0;
  if (v21 && atomic_fetch_add(v21 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v21 + 2);
    (*(*v21 + 8))(v21);
  }

  WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v34, v20);
  if (v17)
  {
    v22 = *(v17 + 2);
    if (!v22)
    {
      __break(0xC471u);
      return;
    }

    *(v17 + 2) = v22 - 1;
  }

  WebKit::NetworkCache::Entry::encodeAsStorageRecord(*a6);
  v23 = a1[2];
  v33 = 0;
  WebKit::NetworkCache::Storage::store(v23, &v34, &v33);
  v25 = v33;
  v33 = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  if (v38)
  {
    os_release(v38);
  }

  if (v37)
  {
    os_release(v37);
  }

  v26 = v36;
  v36 = 0;
  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, v24);
  }

  v27 = v35;
  v35 = 0;
  if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v27, v24);
  }

  v28 = v34.n128_u64[1];
  v34.n128_u64[1] = 0;
  if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v28, v24);
  }

  v29 = v34.n128_u64[0];
  v34.n128_u64[0] = 0;
  if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v29, v24);
  }

  v30 = cf;
  cf = 0;
  if (v30)
  {
    CFRelease(v30);
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(v31, v24);
}

WTF::StringImpl *WebKit::NetworkCache::Cache::remove(atomic_ullong **this, atomic_uint **a2)
{
  v12 = *MEMORY[0x1E69E9840];
  WebKit::NetworkCache::Cache::makeCacheKey(this, a2, &v8);
  WebKit::NetworkCache::Storage::remove(this[2], &v8);
  v4 = v11;
  v11 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v3);
  }

  v5 = v10;
  v10 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v3);
  }

  v6 = v9;
  v9 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v3);
  }

  result = v8;
  v8 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v3);
    }
  }

  return result;
}

uint64_t WebKit::NetworkCache::Cache::remove(uint64_t a1, unsigned int *a2, uint64_t *a3, __n128 a4)
{
  v4 = *(a1 + 16);
  v5 = *a3;
  *a3 = 0;
  v7 = v5;
  WebKit::NetworkCache::Storage::remove(v4, a2, &v7, a4);
  result = v7;
  v7 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t WebKit::NetworkCache::Cache::traverse(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 72);
  if (v3 < 3)
  {
    *(a1 + 72) = v3 + 1;
    v9 = *(a1 + 16);
    {
      WTF::AtomStringImpl::add();
      WebKit::NetworkCache::resourceType(void)::resource = v12;
    }

    ++*(a1 + 8);
    v10 = *a2;
    *a2 = 0;
    v11 = WTF::fastMalloc(0x20);
    *v11 = &unk_1F11086D8;
    v11[1] = a1;
    v11[2] = a1;
    v11[3] = v10;
    v12 = v11;
    WebKit::NetworkCache::Storage::traverse(v9, &WebKit::NetworkCache::resourceType(void)::resource, 0, &v12);
    result = v12;
    if (v12)
    {
      return (*(*v12 + 8))(v12);
    }
  }

  else
  {
    v4 = WTFLogAlways();
    WTF::RunLoop::mainSingleton(v4);
    v5 = *a2;
    *a2 = 0;
    v6 = WTF::fastMalloc(0x10);
    *v6 = &unk_1F11086B0;
    v6[1] = v5;
    v12 = v6;
    WTF::RunLoop::dispatch();
    result = v12;
    v12 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t WebKit::NetworkCache::Cache::traverse(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 16);
  {
    v8 = a3;
    WTF::AtomStringImpl::add();
    a3 = v8;
    WebKit::NetworkCache::resourceType(void)::resource = v9;
  }

  v5 = *a3;
  *a3 = 0;
  v6 = WTF::fastMalloc(0x10);
  *v6 = &unk_1F1108700;
  v6[1] = v5;
  v9 = v6;
  WebKit::NetworkCache::Storage::traverse(v4, &WebKit::NetworkCache::resourceType(void)::resource, a2, 0, &v9);
  result = v9;
  if (v9)
  {
    return (*(*v9 + 8))(v9);
  }

  return result;
}

WTF::StringImpl *WebKit::NetworkCache::Cache::dumpFilePath(WebKit::NetworkCache::Cache *this, WebKit::NetworkCache::Storage *a2)
{
  WebKit::NetworkCache::Storage::versionPath(a2);
  WTF::FileSystemImpl::pathByAppendingComponent();
  result = v4;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v4, v2);
    }
  }

  return result;
}

uint64_t WebKit::NetworkCache::Cache::deleteDumpFile(WebKit::NetworkCache::Storage **this)
{
  WTF::WorkQueue::create();
  v2 = v13;
  WebKit::NetworkCache::Cache::dumpFilePath(&v10, this[2]);
  WTF::String::isolatedCopy();
  v3 = WTF::fastMalloc(0x10);
  v4 = v11;
  v11 = 0;
  *v3 = &unk_1F1108750;
  v3[1] = v4;
  v12 = v3;
  (*(*v2 + 48))(v2, &v12);
  v6 = v12;
  v12 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = v11;
  v11 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v5);
  }

  v8 = v10;
  v10 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v5);
  }

  result = v13;
  v13 = 0;
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

WTF::StringImpl *WebKit::NetworkCache::Cache::clear(uint64_t a1, uint64_t *a2, double a3)
{
  v4 = *(a1 + 16);
  v5 = *a2;
  *a2 = 0;
  v9 = v5;
  v10 = 0;
  WebKit::NetworkCache::Storage::clear(v4, a3, &v10, &v9);
  v6 = v9;
  v9 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  WebKit::NetworkCache::Cache::deleteDumpFile(a1);
  result = v10;
  v10 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v7);
    }
  }

  return result;
}

uint64_t WebKit::NetworkCache::Cache::fetchData(uint64_t a1, char a2, uint64_t *a3)
{
  ++*(a1 + 8);
  v5 = *a3;
  *a3 = 0;
  v6 = WTF::fastMalloc(0x28);
  *v6 = &unk_1F1108778;
  *(v6 + 8) = a1;
  *(v6 + 16) = a2;
  *(v6 + 24) = v5;
  *(v6 + 32) = 0;
  v9 = v6;
  WebKit::NetworkCache::Cache::traverse(a1, &v9);
  result = v9;
  if (v9)
  {
    v8 = *(*v9 + 8);

    return v8();
  }

  return result;
}

mpark *WebKit::NetworkCache::Cache::deleteData(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v24 = 0;
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 32 * v5;
    do
    {
      WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v6, &v24, &v18);
      v6 = (v6 + 32);
      v7 -= 32;
    }

    while (v7);
    v8 = v24;
  }

  else
  {
    v8 = 0;
  }

  v18 = a1;
  ++*(a1 + 8);
  v24 = 0;
  v9 = *a3;
  *a3 = 0;
  v23 = 0u;
  v10 = WTF::fastMalloc(0x38);
  *&v11 = 0;
  *v10 = &unk_1F11087A0;
  *(v10 + 8) = a1;
  *(v10 + 16) = a1;
  *(v10 + 24) = v8;
  *v19 = 0u;
  *(v10 + 32) = v9;
  v20 = 0u;
  *(v10 + 40) = v11;
  v21 = 0;
  v22 = v10;
  WebKit::NetworkCache::Cache::traverse(a1, &v22);
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  WTF::Vector<WebKit::NetworkCache::Key,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v20 + 8, v12);
  v14 = v20;
  *&v20 = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  if (v19[1])
  {
    WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v19[1], v13);
  }

  v15 = v19[0];
  v19[0] = 0;
  if (v15)
  {
    WTF::RefCounted<WebKit::NetworkCache::Cache>::deref(v15 + 2, v13);
  }

  WTF::Vector<WebKit::NetworkCache::Key,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v23, v13);
  result = v24;
  if (v24)
  {
    return WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v24, v16);
  }

  return result;
}

WTF::StringImpl **WebKit::NetworkCache::Cache::deleteDataForRegistrableDomains(uint64_t a1, uint64_t a2, const WTF::StringImpl *a3)
{
  v22 = 0;
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 8 * v5;
    do
    {
      WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v22, v6++, a3, &v17);
      v7 -= 8;
    }

    while (v7);
    v8 = v22;
  }

  else
  {
    v8 = 0;
  }

  v17 = a1;
  ++*(a1 + 8);
  v22 = 0;
  v9 = *a3;
  *a3 = 0;
  v21 = 0u;
  v10 = WTF::fastMalloc(0x40);
  *v10 = &unk_1F11087C8;
  v10[1] = a1;
  v10[2] = a1;
  v10[3] = v8;
  v10[4] = v9;
  v10[5] = 0;
  v18 = 0u;
  memset(v19, 0, sizeof(v19));
  v10[6] = 0;
  v10[7] = 0;
  v20 = v10;
  WebKit::NetworkCache::Cache::traverse(a1, &v20);
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  WTF::Vector<WebKit::NetworkCache::Key,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v19 + 8, v11);
  v13 = *&v19[0];
  *&v19[0] = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  if (*(&v18 + 1))
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*(&v18 + 1), v12);
  }

  v14 = v18;
  *&v18 = 0;
  if (v14)
  {
    WTF::RefCounted<WebKit::NetworkCache::Cache>::deref((v14 + 8), v12);
  }

  WTF::Vector<WebKit::NetworkCache::Key,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v21, v12);
  result = v22;
  if (v22)
  {
    return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v22, v15);
  }

  return result;
}

uint64_t WebKit::NetworkCache::BlobStorage::BlobStorage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WTF::String::isolatedCopy();
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  return a1;
}

WTF::StringImpl *WebKit::NetworkCache::BlobStorage::synchronize(WebKit::NetworkCache::BlobStorage *this)
{
  WTF::String::isolatedCopy();
  WTF::FileSystemImpl::makeAllDirectories(&v10, v2);
  atomic_store(0, this + 2);
  v3 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  v9 = v3;
  v4 = WTF::fastMalloc(0x18);
  *v4 = &unk_1F1108818;
  v4[1] = this;
  v4[2] = &v9;
  v8 = v4;
  WebKit::NetworkCache::traverseDirectory(&v9, &v8);
  (*(*v4 + 8))(v4);
  v6 = v9;
  v9 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  result = v10;
  v10 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v5);
    }
  }

  return result;
}

uint64_t WebKit::NetworkCache::traverseDirectory(WTF::FileSystemImpl *a1, const WTF::String *a2)
{
  WTF::FileSystemImpl::listDirectory(&v20, a1, a2);
  if (v21)
  {
    v8 = v20;
    v9 = 8 * v21;
    do
    {
      v10 = *a1;
      if (*a1)
      {
        v11 = *(v10 + 16);
        v10 = *(v10 + 4);
        v12 = ((v11 >> 2) & 1) << 32;
      }

      else
      {
        v12 = 0x100000000;
      }

      v13 = *v8;
      if (*v8)
      {
        v14 = *(v13 + 16);
        v13 = *(v13 + 4);
        v15 = ((v14 >> 2) & 1) << 32;
      }

      else
      {
        v15 = 0x100000000;
      }

      v2 = v10 | v2 & 0xFFFFFF0000000000 | v12;
      v3 = v13 | v3 & 0xFFFFFF0000000000 | v15;
      WTF::FileSystemImpl::pathByAppendingComponent();
      v17 = (WTF::FileSystemImpl::fileType(&v19, v16) & 0x1FFFFFFFFLL) != 0x100000001;
      (*(**a2 + 16))(*a2, v8, v17);
      v18 = v19;
      v19 = 0;
      if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v6);
      }

      ++v8;
      v9 -= 8;
    }

    while (v9);
  }

  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v20, v6);
}

double WebKit::NetworkCache::BlobStorage::add@<D0>(atomic_ullong *this@<X0>, const WTF::String *a2@<X1>, const WebKit::NetworkCache::Data *a3@<X2>, uint64_t a4@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  v44 = 0uLL;
  v45 = 0;
  WebKit::NetworkCache::computeSHA1(a3, (this + 1));
  v8 = (a3 + 8);
  if (*(a3 + 1) || !*a3)
  {
    size = *(a3 + 2);
  }

  else
  {
    size = dispatch_data_get_size(*a3);
  }

  if (size)
  {
    WTF::SHA1::hexDigest();
    WTF::String::isolatedCopy();
    WTF::FileSystemImpl::pathByAppendingComponent();
    v11 = v43[0];
    v43[0] = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v10);
    }

    v12 = object;
    object = 0;
    if (v12)
    {
      if (*v12 == 1)
      {
        WTF::fastFree(v12, v10);
      }

      else
      {
        --*v12;
      }
    }

    WTF::FileSystemImpl::deleteFile(a2, v10);
    if (WTF::FileSystemImpl::fileExists(&v42, v13))
    {
      if (WTF::FileSystemImpl::makeSafeToUseMemoryMapForPath(&v42, v14))
      {
        WebKit::NetworkCache::mapFile(&object);
        v16 = object;
        if (object && *a3)
        {
          v17 = WebKit::NetworkCache::Data::span(&object);
          v19 = v18;
          v20 = WebKit::NetworkCache::Data::span(a3);
          if (v19 == v15 && !memcmp(v17, v20, v19))
          {
            if ((WTF::FileSystemImpl::hardLink(&v42, a2, v21) & 1) == 0)
            {
              WTF::String::utf8();
              WTF::String::utf8();
              WTFLogAlways();
              v36 = v38;
              v38 = 0;
              if (v36)
              {
                if (*v36 == 1)
                {
                  WTF::fastFree(v36, v22);
                }

                else
                {
                  --*v36;
                }
              }

              v37 = v43[0];
              v43[0] = 0;
              if (v37)
              {
                if (*v37 == 1)
                {
                  WTF::fastFree(v37, v22);
                }

                else
                {
                  --*v37;
                }
              }
            }

            v23 = object;
            *a4 = object;
            if (v23)
            {
              os_retain(v23);
              v24 = object;
              *(a4 + 8) = v40;
              *(a4 + 24) = v41;
              result = *&v44;
              *(a4 + 32) = v44;
              *(a4 + 48) = v45;
              if (!v24)
              {
                goto LABEL_19;
              }

              goto LABEL_18;
            }

            *(a4 + 8) = v40;
            v27 = v41;
            goto LABEL_27;
          }

          v16 = object;
        }

        if (v16)
        {
          os_release(v16);
        }
      }

      WTF::FileSystemImpl::deleteFile(&v42, v15);
    }

    WTF::FileSystemImpl::FileHandle::FileHandle(&v38);
    if (!*v8 && *a3)
    {
      dispatch_data_get_size(*a3);
    }

    v29 = WTF::fastMalloc(0x10);
    *v29 = &unk_1F1108840;
    v29[1] = a3;
    object = v29;
    WTF::FileSystemImpl::mapToFile();
    if (object)
    {
      (*(*object + 8))(object);
    }

    if (v43[0])
    {
      WebKit::NetworkCache::Data::adoptMap(v43, &object);
      v30 = object;
    }

    else
    {
      v30 = 0;
      object = 0;
      v40 = 0uLL;
      v41 = 0;
    }

    WTF::FileSystemImpl::MappedFileData::~MappedFileData(v43);
    WTF::FileSystemImpl::FileHandle::~FileHandle(&v38);
    if (!v30)
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 24) = 0;
      *(a4 + 16) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
LABEL_19:
      v26 = v42;
      v42 = 0;
      if (v26)
      {
        if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v26, v22);
        }
      }

      return result;
    }

    if ((WTF::FileSystemImpl::hardLink(&v42, a2, v31) & 1) == 0)
    {
      WTF::String::utf8();
      WTF::String::utf8();
      WTFLogAlways();
      v34 = v38;
      v38 = 0;
      if (v34)
      {
        if (*v34 == 1)
        {
          WTF::fastFree(v34, v22);
        }

        else
        {
          --*v34;
        }
      }

      v35 = v43[0];
      v43[0] = 0;
      if (v35)
      {
        if (*v35 == 1)
        {
          WTF::fastFree(v35, v22);
        }

        else
        {
          --*v35;
        }
      }
    }

    if (v40)
    {
      v32 = *(&v40 + 1);
    }

    else
    {
      v32 = dispatch_data_get_size(v30);
    }

    atomic_fetch_add(this + 2, v32);
    v33 = object;
    *a4 = object;
    if (v33)
    {
      os_retain(v33);
      *(a4 + 8) = v40;
      *(a4 + 24) = v41;
      *(a4 + 32) = v44;
      *(a4 + 48) = v45;
      v24 = v33;
LABEL_18:
      os_release(v24);
      goto LABEL_19;
    }

    *(a4 + 8) = v40;
    v27 = v41;
LABEL_27:
    *(a4 + 24) = v27;
    result = *&v44;
    *(a4 + 32) = v44;
    *(a4 + 48) = v45;
    goto LABEL_19;
  }

  v28 = *a3;
  *a4 = *a3;
  if (v28)
  {
    os_retain(v28);
  }

  *(a4 + 8) = *v8;
  *(a4 + 24) = *(a3 + 24);
  result = *&v44;
  *(a4 + 32) = v44;
  *(a4 + 48) = v45;
  return result;
}

uint64_t WebKit::NetworkCache::computeSHA1(uint64_t a1, uint64_t a2)
{
  WTF::SHA1::SHA1(v7);
  MEMORY[0x19EB01E70](v7, a2, 8);
  v4 = WTF::fastMalloc(0x10);
  *v4 = &unk_1F1108868;
  v4[1] = v7;
  v6 = v4;
  WebKit::NetworkCache::Data::apply(a1);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  return WTF::SHA1::computeHash();
}

void WebKit::NetworkCache::BlobStorage::get(WebKit::NetworkCache::BlobStorage *this@<X0>, uint64_t a2@<X8>)
{
  WebKit::NetworkCache::mapFile(&object);
  v5 = object;
  *a2 = object;
  if (v5)
  {
    os_retain(v5);
  }

  *(a2 + 8) = v7;
  *(a2 + 24) = v8;
  WebKit::NetworkCache::computeSHA1(&object, this + 8);
  if (object)
  {
    os_release(object);
  }
}

uint64_t WTF::Persistence::Coder<WebKit::NetworkCache::Key>::encodeForPersistence()
{
  WTF::Persistence::Coder<WTF::String>::encodeForPersistence();
  WTF::Persistence::Coder<WTF::String>::encodeForPersistence();
  WTF::Persistence::Coder<WTF::String>::encodeForPersistence();
  WTF::Persistence::Coder<WTF::String>::encodeForPersistence();
  WTF::Persistence::Coder<std::array<unsigned char,20ul>>::encodeForPersistence();

  return WTF::Persistence::Coder<std::array<unsigned char,20ul>>::encodeForPersistence();
}

WTF::StringImpl *WTF::Persistence::Coder<WebKit::NetworkCache::Key>::decodeForPersistence@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  LOBYTE(v19) = 0;
  v20 = 0;
  result = WTF::Persistence::Decoder::operator>><WTF::String,(void *)0>(a1, &v19);
  if (v20 == 1)
  {
    v5 = v19;
    v19 = 0;
    LOBYTE(v17) = 0;
    v18 = 0;
    result = WTF::Persistence::Decoder::operator>><WTF::String,(void *)0>(a1, &v17);
    if (v18 == 1)
    {
      v7 = v17;
      v17 = 0;
      LOBYTE(v15) = 0;
      v16 = 0;
      result = WTF::Persistence::Decoder::operator>><WTF::String,(void *)0>(a1, &v15);
      if (v16 == 1)
      {
        v8 = v15;
        v15 = 0;
        LOBYTE(v13) = 0;
        v14 = 0;
        result = WTF::Persistence::Decoder::operator>><WTF::String,(void *)0>(a1, &v13);
        if (v14 == 1)
        {
          v9 = v13;
          v13 = 0;
          result = WTF::Persistence::Coder<std::array<unsigned char,20ul>>::decodeForPersistence();
          v10 = v23;
          *v22 = *v24;
          *&v22[15] = *&v24[15];
          if (v25)
          {
            result = WTF::Persistence::Coder<std::array<unsigned char,20ul>>::decodeForPersistence();
            v11 = v23;
            v21[0] = *v24;
            *(v21 + 15) = *&v24[15];
            if (v25)
            {
              *(a2 + 53) = v21[0];
              *(a2 + 68) = *(v21 + 15);
              *a2 = v5;
              *(a2 + 8) = v7;
              *(a2 + 16) = v8;
              *(a2 + 24) = v9;
              *(a2 + 32) = v10;
              *(a2 + 33) = *v22;
              v12 = 1;
              *(a2 + 48) = *&v22[15];
              *(a2 + 52) = v11;
              v8 = 0;
              v7 = 0;
              v5 = 0;
              v9 = 0;
            }

            else
            {
              v12 = 0;
              *a2 = 0;
            }

            *(a2 + 72) = v12;
          }

          else
          {
            *a2 = 0;
            *(a2 + 72) = 0;
          }

          if (v14)
          {
            result = v13;
            v13 = 0;
            if (result)
            {
              if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(result, v6);
              }
            }
          }
        }

        else
        {
          v9 = 0;
          *a2 = 0;
          *(a2 + 72) = 0;
        }

        if (v16)
        {
          result = v15;
          v15 = 0;
          if (result)
          {
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, v6);
            }
          }
        }
      }

      else
      {
        v9 = 0;
        v8 = 0;
        *a2 = 0;
        *(a2 + 72) = 0;
      }

      if (v18)
      {
        result = v17;
        v17 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v6);
          }
        }
      }
    }

    else
    {
      v9 = 0;
      v7 = 0;
      v8 = 0;
      *a2 = 0;
      *(a2 + 72) = 0;
    }

    if (v20)
    {
      result = v19;
      v19 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v6);
        }
      }
    }

    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(v9, v6);
    }

    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(v8, v6);
    }

    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(v7, v6);
    }

    if (v5)
    {
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(v5, v6);
      }
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 72) = 0;
  }

  return result;
}

uint64_t WTF::Persistence::Coder<WebKit::NetworkCache::SubresourceInfo>::encodeForPersistence(uint64_t a1, uint64_t a2)
{
  WTF::Persistence::Coder<WebKit::NetworkCache::Key>::encodeForPersistence();
  WTF::Persistence::Coder<WTF::WallTime>::encodeForPersistence();
  WTF::Persistence::Coder<WTF::WallTime>::encodeForPersistence();
  result = WTF::Persistence::Encoder::operator<<();
  if ((*(a2 + 88) & 1) == 0)
  {
    WTF::Persistence::Encoder::operator<<();
    WTF::Persistence::Encoder::operator<<();
    WTF::Persistence::Coder<WTF::String>::encodeForPersistence();
    WTF::Persistence::Coder<WebCore::HTTPHeaderMap>::encodeForPersistence();
    return WTF::Persistence::Encoder::operator<<();
  }

  return result;
}

void WTF::Persistence::Coder<WebKit::NetworkCache::SubresourceInfo>::decodeForPersistence(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  LOBYTE(v9) = 0;
  v13 = 0;
  WTF::Persistence::Decoder::operator>><WebKit::NetworkCache::Key,(void *)0>(a1, &v9);
  if (v13)
  {
    WTF::Persistence::Coder<WTF::WallTime>::decodeForPersistence();
    if (v3)
    {
      WTF::Persistence::Coder<WTF::WallTime>::decodeForPersistence();
      if (v3)
      {
        v8 = 0;
        WTF::Persistence::Decoder::operator>>();
      }
    }
  }

  *a2 = 0;
  a2[176] = 0;
  if (v13 == 1)
  {
    v4 = v12;
    v12 = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v3);
    }

    v5 = v11;
    v11 = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v3);
    }

    v6 = v10;
    v10 = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v3);
    }

    v7 = v9;
    v9 = 0;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v3);
      }
    }
  }
}

uint64_t WTF::Persistence::Decoder::operator>><WebKit::NetworkCache::Key,(void *)0>(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  WTF::Persistence::Coder<WebKit::NetworkCache::Key>::decodeForPersistence(a1, &v10);
  std::__optional_storage_base<WebKit::NetworkCache::Key,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebKit::NetworkCache::Key,false>>(a2, &v10);
  if (v14 == 1)
  {
    v5 = v13;
    v13 = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v4);
    }

    v6 = v12;
    v12 = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v4);
    }

    v7 = v11;
    v11 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v4);
    }

    v8 = v10;
    v10 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v4);
    }
  }

  return a1;
}

uint64_t std::optional<WebKit::NetworkCache::SubresourceInfo>::optional[abi:sn200100]<WebKit::NetworkCache::SubresourceInfo,0>(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  v5 = a2[1];
  a2[1] = 0;
  *(a1 + 8) = v5;
  v6 = a2[2];
  a2[2] = 0;
  *(a1 + 16) = v6;
  v7 = a2[3];
  a2[3] = 0;
  *(a1 + 24) = v7;
  v8 = *(a2 + 2);
  v9 = *(a2 + 3);
  *(a1 + 64) = a2[8];
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  v10 = *(a2 + 9);
  *(a1 + 87) = *(a2 + 87);
  *(a1 + 72) = v10;
  WTF::URL::URL(a1 + 96, a2 + 12);
  *(a1 + 144) = 0;
  *(a1 + 136) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 136, a2 + 17);
  *(a1 + 160) = 0;
  *(a1 + 152) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 152, a2 + 19);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = 1;
  return a1;
}

uint64_t WebKit::NetworkCache::Entry::Entry(uint64_t a1, const WebKit::NetworkCache::Key *a2, const WebCore::ResourceResponse *a3, char a4, uint64_t *a5, uint64_t a6)
{
  v11 = WebKit::NetworkCache::Key::Key(a1, a2);
  WTF::WallTime::now(v11);
  *(a1 + 72) = v12;
  WebCore::ResourceResponse::ResourceResponse((a1 + 80), a3);
  WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1 + 344, a6);
  *(a1 + 360) = 0;
  *(a1 + 560) = 0;
  v13 = *a5;
  *a5 = 0;
  *(a1 + 568) = v13;
  *(a1 + 760) = 0;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0;
  *(a1 + 768) = a4;
  return a1;
}

uint64_t WebKit::NetworkCache::Entry::Entry(uint64_t a1, const WebKit::NetworkCache::Key *a2, const WebCore::ResourceResponse *a3, const WebCore::ResourceRequest *a4, uint64_t a5)
{
  v9 = WebKit::NetworkCache::Key::Key(a1, a2);
  WTF::WallTime::now(v9);
  *(a1 + 72) = v10;
  WebCore::ResourceResponse::ResourceResponse((a1 + 80), a3);
  WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1 + 344, a5);
  *(a1 + 360) = 0;
  *(a1 + 560) = 0;
  *(a1 + 760) = 0;
  *(a1 + 768) = 0;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 737) = 0u;
  v11 = _ZNSt3__18optionalIN7WebCore15ResourceRequestEE7emplaceB8sn200100IJEvEERS2_DpOT_((a1 + 360));
  if (*(a1 + 560) & 1) != 0 && (v11 = WebCore::ResourceRequestBase::setAsIsolatedCopy((a1 + 360), a4), (*(a1 + 560)))
  {
    WebCore::ResourceRequestBase::setHTTPBody();
  }

  else
  {
    __break(1u);
    WTF::RefCounted<WebCore::FormData>::deref(v11);
  }

  return a1;
}

WebCore::ResourceRequest *_ZNSt3__18optionalIN7WebCore15ResourceRequestEE7emplaceB8sn200100IJEvEERS2_DpOT_(WebCore::ResourceRequest *a1)
{
  if (*(a1 + 200) == 1)
  {
    WebCore::ResourceRequest::~ResourceRequest(a1);
    *(a1 + 200) = 0;
  }

  result = WebCore::ResourceRequest::ResourceRequest(a1);
  *(result + 200) = 1;
  return result;
}

WebKit::NetworkCache::Entry *WebKit::NetworkCache::Entry::Entry(WebKit::NetworkCache::Entry *this, const WebKit::NetworkCache::Entry *a2)
{
  v4 = WebKit::NetworkCache::Key::Key(this, a2);
  *(v4 + 9) = *(a2 + 9);
  WebCore::ResourceResponse::ResourceResponse((v4 + 80), (a2 + 80));
  WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(this + 344, a2 + 344);
  *(this + 360) = 0;
  *(this + 560) = 0;
  if (*(a2 + 560) == 1)
  {
    WebCore::ResourceRequest::ResourceRequest(this + 45, (a2 + 360));
    *(this + 560) = 1;
  }

  v5 = *(a2 + 71);
  if (v5)
  {
    atomic_fetch_add((v5 + 8), 1u);
  }

  *(this + 71) = v5;
  *(this + 72) = 0;
  WebKit::NetworkCache::Key::Key((this + 584), (a2 + 584));
  *(this + 82) = *(a2 + 82);
  v6 = *(a2 + 83);
  *(this + 83) = v6;
  if (v6)
  {
    os_retain(v6);
  }

  v7 = *(a2 + 42);
  *(this + 688) = *(a2 + 688);
  *(this + 42) = v7;
  v8 = *(a2 + 87);
  *(this + 87) = v8;
  if (v8)
  {
    os_retain(v8);
  }

  v9 = *(a2 + 44);
  *(this + 720) = *(a2 + 720);
  *(this + 44) = v9;
  v10 = *(a2 + 728);
  *(this + 741) = *(a2 + 741);
  *(this + 728) = v10;
  *(this + 752) = 0;
  *(this + 760) = 0;
  *(this + 768) = 0;
  return this;
}

void WebKit::NetworkCache::Entry::decodeStorageRecord(WebKit::NetworkCache::Entry *this@<X0>, const WebKit::NetworkCache::Storage::Record *a2@<X1>, void *a3@<X8>)
{
  v5 = WebKit::NetworkCache::Entry::operator new(0x308, a2);
  v6 = WebKit::NetworkCache::Key::Key(v5, this);
  *(v6 + 9) = *(this + 9);
  WebCore::ResourceResponseBase::ResourceResponseBase((v6 + 80));
  *(v5 + 328) = 0;
  *(v5 + 336) = 0;
  *(v5 + 218) = *(v5 + 218) & 0xF1 | 4;
  *(v5 + 560) = 0;
  *(v5 + 344) = 0u;
  *(v5 + 360) = 0;
  *(v5 + 568) = 0u;
  WebKit::NetworkCache::Key::Key((v5 + 584), this);
  *(v5 + 656) = *(this + 9);
  v7 = *(this + 10);
  *(v5 + 664) = v7;
  if (v7)
  {
    os_retain(v7);
  }

  v8 = *(this + 88);
  *(v5 + 688) = *(this + 104);
  *(v5 + 672) = v8;
  v9 = *(this + 14);
  *(v5 + 696) = v9;
  if (v9)
  {
    os_retain(v9);
  }

  v10 = *(this + 120);
  *(v5 + 720) = *(this + 136);
  *(v5 + 704) = v10;
  v11 = *(this + 9);
  *(v5 + 741) = *(this + 157);
  *(v5 + 728) = v11;
  *(v5 + 752) = 0;
  *(v5 + 760) = 0;
  *(v5 + 768) = 0;
  WebKit::NetworkCache::Data::span((this + 80));
  WTF::Persistence::Decoder::Decoder();
  v21[0] = 0;
  v24 = 0;
  WTF::Persistence::Coder<WebCore::ResourceResponse>::decodeForPersistence();
  std::__optional_storage_base<WebCore::ResourceResponse,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::ResourceResponse,false>>(v21, v26);
  if (v28 == 1)
  {
    v13 = v27;
    v27 = 0;
    if (v13)
    {
      CFRelease(v13);
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(v26, v12);
  }

  if (v24 != 1)
  {
    *a3 = 0;
    WTF::Persistence::Decoder::~Decoder(v25);
LABEL_19:
    WebKit::NetworkCache::Entry::~Entry(v5, v18);
    bmalloc::api::tzoneFree(v19, v20);
    return;
  }

  WebCore::ResourceResponseBase::operator=(v5 + 80, v21);
  v14 = v22;
  v22 = 0;
  v15 = *(v5 + 328);
  *(v5 + 328) = v14;
  if (v15)
  {
    CFRelease(v15);
  }

  *(v5 + 336) = v23;
  *(v5 + 320) = *(v5 + 320) & 0xC3FF | 0x800;
  WTF::Persistence::Decoder::operator>>();
  *a3 = 0;
  if (v24)
  {
    v17 = v22;
    v22 = 0;
    if (v17)
    {
      CFRelease(v17);
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(v21, v16);
  }

  WTF::Persistence::Decoder::~Decoder(v25);
  if (v5)
  {
    goto LABEL_19;
  }
}

uint64_t WTF::Persistence::Decoder::operator>><WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,(void *)0>(uint64_t a1, uint64_t a2)
{
  LOBYTE(v6) = 0;
  v7 = 0;
  WTF::Persistence::Decoder::operator>>();
  LOBYTE(v8) = 0;
  v9 = 0;
  if (*(a2 + 16))
  {
    WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a2, v4);
    *(a2 + 16) = 0;
  }

  return a1;
}

uint64_t WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 12);
  if (v4)
  {
    WTF::VectorTypeOperations<WebCore::HTTPHeaderField>::destruct(*a1, (*a1 + 16 * v4));
  }

  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  return a1;
}

uint64_t WTF::Persistence::Decoder::operator>><std::optional<WebCore::ResourceRequest>,(void *)0>(uint64_t a1, WebCore::ResourceRequest *a2)
{
  v7 = 0;
  WTF::Persistence::Decoder::operator>>();
  v5[0] = 0;
  v6 = 0;
  if (*(a2 + 208))
  {
    if (*(a2 + 200) == 1)
    {
      WebCore::ResourceRequest::~ResourceRequest(a2);
    }

    *(a2 + 208) = 0;
  }

  if (v6 == 1 && v5[200] == 1)
  {
    WebCore::ResourceRequest::~ResourceRequest(v5);
  }

  return a1;
}

uint64_t WebKit::NetworkCache::Entry::hasReachedPrevalentResourceAgeCap(WebKit::NetworkCache::Entry *this)
{
  if (*(this + 760) == 1)
  {
    WebCore::computeCurrentAge();
    v1 = *(this + 760) ^ 1 | (v4 > *(this + 94));
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void WebKit::NetworkCache::Entry::initializeBufferFromStorageRecord(unsigned int **this)
{
  WebKit::NetworkCache::Entry::shareableResourceHandle(this, v11);
  if (v12 != 1)
  {
    goto LABEL_2;
  }

  WebCore::ShareableResourceHandle::tryWrapInSharedBuffer();
  v7 = v10;
  v10 = 0;
  v8 = this[71];
  this[71] = v7;
  if (v8)
  {
    if (atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v8 + 2);
      (*(*v8 + 8))(v8);
    }

    v9 = v10;
    v10 = 0;
    if (v9 && atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v9 + 2);
      (*(*v9 + 8))(v9);
    }

    v7 = this[71];
  }

  if (v7)
  {
    v2 = 0;
  }

  else
  {
LABEL_2:
    v2 = 1;
  }

  if (v12 == 1)
  {
    WTF::MachSendRight::~MachSendRight(v11);
  }

  if (v2)
  {
    v11[0] = WebKit::NetworkCache::Data::span((this + 87));
    v11[1] = v3;
    WebCore::SharedBuffer::create<std::span<unsigned char const,18446744073709551615ul>>(&v10);
    v4 = v10;
    v10 = 0;
    v5 = this[71];
    this[71] = v4;
    if (v5)
    {
      if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v5 + 2);
        (*(*v5 + 8))(v5);
      }

      v6 = v10;
      v10 = 0;
      if (v6)
      {
        if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v6 + 2);
          (*(*v6 + 8))(v6);
        }
      }
    }
  }
}

atomic_uint *WebKit::NetworkCache::Entry::shareableResourceHandle@<X0>(WebKit::NetworkCache::Entry *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 72);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    WebCore::ShareableResource::createHandle(a2, v3);

    return WTF::ThreadSafeRefCounted<WebCore::ShareableResource,(WTF::DestructionThread)0>::deref(v3);
  }

  else
  {
    v5 = (this + 696);
    result = WebKit::NetworkCache::Data::tryCreateSharedMemory((this + 696), &v10);
    if (v10)
    {
      v8 = v10;
      v10 = 0;
      if (!*(this + 88) && *v5)
      {
        dispatch_data_get_size(*v5);
      }

      WebCore::ShareableResource::create();
      WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v8);
      if (v9)
      {
        atomic_fetch_add(v9, 1u);
      }

      v7 = *(this + 72);
      *(this + 72) = v9;
      if (v7)
      {
        WTF::ThreadSafeRefCounted<WebCore::ShareableResource,(WTF::DestructionThread)0>::deref(v7);
      }

      if (v9)
      {
        WebCore::ShareableResource::createHandle(a2, v9);
        WTF::ThreadSafeRefCounted<WebCore::ShareableResource,(WTF::DestructionThread)0>::deref(v9);
      }

      else
      {
        *a2 = 0;
        *(a2 + 24) = 0;
      }

      result = v10;
      v10 = 0;
      if (result)
      {
        return WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(result);
      }
    }

    else
    {
      *a2 = 0;
      *(a2 + 24) = 0;
    }
  }

  return result;
}

WebCore::HTTPHeaderMap::HTTPHeaderMapConstIterator *WebCore::HTTPHeaderMap::HTTPHeaderMapConstIterator::operator++(WebCore::HTTPHeaderMap::HTTPHeaderMapConstIterator *this)
{
  v2 = *this;
  v3 = *(this + 1);
  v4 = *(*this + 12);
  if (v3 >= v4)
  {
    v6 = *(this + 2) + 1;
    *(this + 2) = v6;
  }

  else
  {
    v5 = v3 + 1;
    *(this + 1) = v5;
    if (v5 < v4)
    {
      WebCore::HTTPHeaderMap::HTTPHeaderMapConstIterator::updateKeyValue(this, (*v2 + 16 * v5));
      return this;
    }

    v6 = *(this + 2);
  }

  if (v6 < *(v2 + 28))
  {
    WebCore::HTTPHeaderMap::HTTPHeaderMapConstIterator::updateKeyValue(this, (*(v2 + 16) + 16 * v6));
  }

  return this;
}

double WebKit::NetworkCache::fileTimes(WebKit::NetworkCache *this, const WTF::String *a2)
{
  WTF::FileSystemImpl::fileSystemRepresentation(&v7, this, a2);
  if (v7)
  {
    v2 = v7 + 16;
  }

  else
  {
    v2 = 0;
  }

  v4 = stat(v2, &v8);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    if (*v5 == 1)
    {
      WTF::fastFree(v5, v3);
    }

    else
    {
      --*v5;
    }
  }

  result = v8.st_birthtimespec.tv_sec;
  if (v4)
  {
    return 0.0;
  }

  return result;
}

uint64_t WebKit::NetworkCache::updateFileModificationTimeIfNeeded(WebKit::NetworkCache *this, const WTF::String *a2)
{
  v5 = WebKit::NetworkCache::fileTimes(this, a2);
  if (v5 == v6 || (v7 = v6, result = WTF::WallTime::now(v3), v9 - v7 >= 3600.0))
  {

    return WTF::FileSystemImpl::updateFileModificationTime(this, v4);
  }

  return result;
}

uint64_t std::make_unique[abi:sn200100]<WebCore::LowPowerModeNotifier,WebKit::NetworkCache::Cache::Cache(WebKit::NetworkProcess &,WTF::String const&,WTF::Ref<WebKit::NetworkCache::Storage,WTF::RawPtrTraits<WebKit::NetworkCache::Storage>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::Storage>> &&,WTF::OptionSet<WebKit::NetworkCache::CacheOption>,PAL::SessionID)::$_0,0>(WebCore::LowPowerModeNotifier *a1, uint64_t *a2)
{
  v4 = WebCore::LowPowerModeNotifier::operator new(a1, a2);
  v5 = WTF::fastMalloc(0x18);
  v6 = *a2;
  *v5 = &unk_1F11084A8;
  v5[1] = v6;
  v7 = a2[1];
  a2[1] = 0;
  v5[2] = v7;
  v9 = v5;
  MEMORY[0x19EB08CD0](v4, &v9);
  *a1 = v4;
  result = v9;
  v9 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t WebCore::LowPowerModeNotifier::operator new(WebCore::LowPowerModeNotifier *this, void *a2)
{
  if (*MEMORY[0x1E69E2638])
  {
    return bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E2638], a2);
  }

  else
  {
    return MEMORY[0x1EEE57978](24);
  }
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkCache::Cache::Cache(WebKit::NetworkProcess &,WTF::String const&,WTF::Ref<WebKit::NetworkCache::Storage,WTF::RawPtrTraits<WebKit::NetworkCache::Storage>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::Storage>> &&,WTF::OptionSet<WebKit::NetworkCache::CacheOption>,PAL::SessionID)::$_0,void,BOOL>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F11084A8;
  v3 = a1[2];
  a1[2] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::Cache::Cache(WebKit::NetworkProcess &,WTF::String const&,WTF::Ref<WebKit::NetworkCache::Storage,WTF::RawPtrTraits<WebKit::NetworkCache::Storage>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::Storage>> &&,WTF::OptionSet<WebKit::NetworkCache::CacheOption>,PAL::SessionID)::$_0,void,BOOL>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F11084A8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::Detail::CallableWrapper<WebKit::NetworkCache::Cache::Cache(WebKit::NetworkProcess &,WTF::String const&,WTF::Ref<WebKit::NetworkCache::Storage,WTF::RawPtrTraits<WebKit::NetworkCache::Storage>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::Storage>> &&,WTF::OptionSet<WebKit::NetworkCache::CacheOption>,PAL::SessionID)::$_0,void,BOOL>::call(_DWORD *result)
{
  v1 = *(result + 2);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      v3 = *(result + 1);
      v5 = *(v2 + 8);
      v4 = (v2 + 8);
      *v4 = v5 + 1;
      WebKit::NetworkCache::Cache::updateSpeculativeLoadManagerEnabledState(v3);

      return WTF::RefCounted<WebKit::NetworkCache::Cache>::deref(v4, v6);
    }
  }

  return result;
}

bmalloc::api *WebCore::LowPowerModeNotifier::operator delete()
{
  result = MEMORY[0x19EB08CE0]();
  if (*result)
  {
    *result = 0;
    *(result + 1) = 0;
    *(result + 2) = 0;
  }

  else
  {

    return bmalloc::api::tzoneFree(result, v1);
  }

  return result;
}

uint64_t std::make_unique[abi:sn200100]<WebCore::ThermalMitigationNotifier,WebKit::NetworkCache::Cache::Cache(WebKit::NetworkProcess &,WTF::String const&,WTF::Ref<WebKit::NetworkCache::Storage,WTF::RawPtrTraits<WebKit::NetworkCache::Storage>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::Storage>> &&,WTF::OptionSet<WebKit::NetworkCache::CacheOption>,PAL::SessionID)::$_1,0>(WebCore::ThermalMitigationNotifier *a1, uint64_t *a2)
{
  v4 = WebCore::ThermalMitigationNotifier::operator new(a1, a2);
  v5 = WTF::fastMalloc(0x18);
  v6 = *a2;
  *v5 = &unk_1F11084D0;
  v5[1] = v6;
  v7 = a2[1];
  a2[1] = 0;
  v5[2] = v7;
  v9 = v5;
  MEMORY[0x19EB0BEF0](v4, &v9);
  *a1 = v4;
  result = v9;
  v9 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t WebCore::ThermalMitigationNotifier::operator new(WebCore::ThermalMitigationNotifier *this, void *a2)
{
  if (*MEMORY[0x1E69E26C0])
  {
    return bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E26C0], a2);
  }

  else
  {
    return MEMORY[0x1EEE593F8](24);
  }
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkCache::Cache::Cache(WebKit::NetworkProcess &,WTF::String const&,WTF::Ref<WebKit::NetworkCache::Storage,WTF::RawPtrTraits<WebKit::NetworkCache::Storage>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::Storage>> &&,WTF::OptionSet<WebKit::NetworkCache::CacheOption>,PAL::SessionID)::$_1,void,BOOL>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F11084D0;
  v3 = a1[2];
  a1[2] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::Cache::Cache(WebKit::NetworkProcess &,WTF::String const&,WTF::Ref<WebKit::NetworkCache::Storage,WTF::RawPtrTraits<WebKit::NetworkCache::Storage>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::Storage>> &&,WTF::OptionSet<WebKit::NetworkCache::CacheOption>,PAL::SessionID)::$_1,void,BOOL>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F11084D0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WebCore::LowPowerModeNotifier **WebKit::NetworkCache::Cache::Cache(WebKit::NetworkProcess &,WTF::String const&,WTF::Ref<WebKit::NetworkCache::Storage,WTF::RawPtrTraits<WebKit::NetworkCache::Storage>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::Storage>> &&,WTF::OptionSet<WebKit::NetworkCache::CacheOption>,PAL::SessionID)::$_1::operator()(WebCore::LowPowerModeNotifier **result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
    if (v2)
    {
      v4 = *(v2 + 8);
      v3 = (v2 + 8);
      *v3 = v4 + 1;
      WebKit::NetworkCache::Cache::updateSpeculativeLoadManagerEnabledState(result);

      return WTF::RefCounted<WebKit::NetworkCache::Cache>::deref(v3, v5);
    }
  }

  return result;
}

uint64_t std::unique_ptr<WebCore::ThermalMitigationNotifier>::reset[abi:sn200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    v5 = MEMORY[0x19EB0BF00](result);

    return bmalloc::api::tzoneFree(v5, v6);
  }

  return result;
}

uint64_t WebKit::NetworkCache::SpeculativeLoadManager::operator new(WebKit::NetworkCache::SpeculativeLoadManager *this, void *a2)
{
  if (WebKit::NetworkCache::SpeculativeLoadManager::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::NetworkCache::SpeculativeLoadManager::s_heapRef, a2);
  }

  else
  {
    return WebKit::NetworkCache::SpeculativeLoadManager::operatorNewSlow(0x50);
  }
}

double WebKit::NetworkCache::SpeculativeLoadManager::operator delete(WebKit::NetworkCache::SpeculativeLoadManager *a1, WTF::StringImpl *a2)
{
  WebKit::NetworkCache::SpeculativeLoadManager::~SpeculativeLoadManager(a1, a2);
  if (*(v2 + 8))
  {
    result = 0.0;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
    *v2 = 0u;
  }

  else
  {

    bmalloc::api::tzoneFree(v2, v3);
  }

  return result;
}

uint64_t WebKit::NetworkCache::Entry::operator new(WebKit::NetworkCache::Entry *this, void *a2)
{
  if (this == 776 && WebKit::NetworkCache::Entry::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::NetworkCache::Entry::s_heapRef, a2);
  }

  else
  {
    return WebKit::NetworkCache::Entry::operatorNewSlow(this);
  }
}

uint64_t WebKit::NetworkCache::isMediaMIMEType(WebKit::NetworkCache *this, const WTF::String *a2)
{
  result = *this;
  if (result)
  {
    if (WTF::startsWithLettersIgnoringASCIICaseCommon<WTF::StringImpl>(result, "video/", 6uLL))
    {
      return 1;
    }

    else
    {
      result = *this;
      if (*this)
      {

        return WTF::startsWithLettersIgnoringASCIICaseCommon<WTF::StringImpl>(result, "audio/", 6uLL);
      }
    }
  }

  return result;
}

uint64_t WebKit::NetworkCache::SubresourceInfo::SubresourceInfo(uint64_t a1, uint64_t *a2, double a3, double a4)
{
  v5 = *a2;
  *a2 = 0;
  *a1 = v5;
  v6 = a2[1];
  a2[1] = 0;
  *(a1 + 8) = v6;
  v7 = a2[2];
  a2[2] = 0;
  *(a1 + 16) = v7;
  v8 = a2[3];
  a2[3] = 0;
  *(a1 + 24) = v8;
  v9 = *(a2 + 2);
  v10 = *(a2 + 3);
  *(a1 + 64) = a2[8];
  *(a1 + 32) = v9;
  *(a1 + 48) = v10;
  *(a1 + 72) = a3;
  *(a1 + 80) = a4;
  *(a1 + 88) = 1;
  *(a1 + 90) = 1;
  *(a1 + 96) = 0;
  WTF::URL::invalidate((a1 + 96));
  WebCore::HTTPHeaderMap::HTTPHeaderMap((a1 + 136));
  return a1;
}

void WebKit::NetworkCache::SubresourceInfo::~SubresourceInfo(WebKit::NetworkCache::SubresourceInfo *this, WTF::StringImpl *a2)
{
  WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(this + 38, a2);
  WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(this + 136, v3);
  v5 = *(this + 12);
  *(this + 12) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  v6 = *(this + 3);
  *(this + 3) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  v7 = *(this + 2);
  *(this + 2) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v4);
  }

  v8 = *(this + 1);
  *(this + 1) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v4);
  }

  v9 = *this;
  *this = 0;
  if (v9)
  {
    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v4);
    }
  }
}

void **WTF::OSObjectPtr<dispatch_data_s *>::operator=(void **a1, void **a2)
{
  v3 = *a2;
  if (*a2)
  {
    os_retain(*a2);
  }

  v4 = *a1;
  *a1 = v3;
  if (v4)
  {
    os_release(v4);
  }

  return a1;
}

uint64_t WebKit::NetworkCache::Storage::Record::Record(uint64_t a1, const WebKit::NetworkCache::Key *a2, uint64_t a3, uint64_t a4, __int128 *a5, double a6)
{
  *(WebKit::NetworkCache::Key::Key(a1, a2) + 9) = a6;
  v10 = *a3;
  *(a1 + 80) = *a3;
  if (v10)
  {
    os_retain(v10);
  }

  v11 = *(a3 + 8);
  *(a1 + 104) = *(a3 + 24);
  *(a1 + 88) = v11;
  v12 = *a4;
  *(a1 + 112) = *a4;
  if (v12)
  {
    os_retain(v12);
  }

  v13 = *(a4 + 8);
  *(a1 + 136) = *(a4 + 24);
  *(a1 + 120) = v13;
  v14 = *a5;
  *(a1 + 157) = *(a5 + 13);
  *(a1 + 144) = v14;
  return a1;
}

void std::__optional_storage_base<WebCore::ResourceRequest,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::ResourceRequest,false>>(WebCore::ResourceRequest *this, uint64_t a2)
{
  if (*(this + 200) == *(a2 + 200))
  {
    if (*(this + 200))
    {
      WebCore::ResourceRequestBase::RequestData::operator=(this, a2);
      v5 = *(a2 + 152);
      *(a2 + 152) = 0;
      v6 = *(this + 19);
      *(this + 19) = v5;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v4);
      }

      v7 = *(a2 + 160);
      *(a2 + 160) = 0;
      v8 = *(this + 20);
      *(this + 20) = v7;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v4);
      }

      v9 = *(a2 + 168);
      *(a2 + 168) = 0;
      v10 = *(this + 21);
      *(this + 21) = v9;
      if (v10)
      {
        WTF::RefCounted<WebCore::FormData>::deref(v10);
      }

      v11 = *(a2 + 176);
      *(this + 184) = *(a2 + 184);
      *(this + 22) = v11;
      v12 = *(a2 + 192);
      *(a2 + 192) = 0;
      v13 = *(this + 24);
      *(this + 24) = v12;
      if (v13)
      {

        CFRelease(v13);
      }
    }
  }

  else if (*(this + 200))
  {
    WebCore::ResourceRequest::~ResourceRequest(this);
    *(this + 200) = 0;
  }

  else
  {

    std::__optional_storage_base<WebCore::ResourceRequest,false>::__construct[abi:sn200100]<WebCore::ResourceRequest>(this, a2);
  }
}

WTF *std::__optional_storage_base<WebCore::ResourceRequest,false>::__construct[abi:sn200100]<WebCore::ResourceRequest>(WTF *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    WTF::URL::URL(result, a2);
    WTF::URL::URL(v4 + 40, (a2 + 40));
    *(v3 + 80) = *(a2 + 80);
    v5 = *(a2 + 88);
    *(a2 + 88) = 0;
    *(v3 + 88) = v5;
    *(v3 + 104) = 0;
    *(v3 + 96) = 0;
    WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v3 + 96, (a2 + 96));
    *(v3 + 120) = 0;
    *(v3 + 112) = 0;
    WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v3 + 112, (a2 + 112));
    *(v3 + 128) = 0;
    *(v3 + 136) = 0;
    v3 += 128;
    result = WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v3, (a2 + 128));
    v6 = *(a2 + 144);
    *(v3 + 20) = *(a2 + 148);
    *(v3 + 16) = v6;
    v7 = *(a2 + 152);
    *(a2 + 152) = 0;
    *(v3 + 24) = v7;
    v8 = *(a2 + 160);
    *(a2 + 160) = 0;
    *(v3 + 32) = v8;
    v9 = *(a2 + 168);
    *(a2 + 168) = 0;
    *(v3 + 40) = v9;
    v10 = *(a2 + 176);
    *(v3 + 56) = *(a2 + 184);
    *(v3 + 48) = v10;
    v11 = *(a2 + 192);
    *(a2 + 192) = 0;
    *(v3 + 64) = v11;
    *(v3 + 72) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

WebCore::HTTPHeaderMap::HTTPHeaderMapConstIterator *WebCore::HTTPHeaderMap::HTTPHeaderMapConstIterator::HTTPHeaderMapConstIterator(WebCore::HTTPHeaderMap::HTTPHeaderMapConstIterator *this, const WebCore::HTTPHeaderMap *a2, unint64_t a3, unint64_t a4)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
  *(this + 3) = 0;
  *(this + 32) = 0;
  *(this + 34) = 0;
  *(this + 5) = 0;
  if (*(a2 + 3) <= a3)
  {
    if (*(a2 + 7) > a4)
    {
      WebCore::HTTPHeaderMap::HTTPHeaderMapConstIterator::updateKeyValue(this, (*(a2 + 2) + 16 * a4));
    }
  }

  else
  {
    WebCore::HTTPHeaderMap::HTTPHeaderMapConstIterator::updateKeyValue(this, (*a2 + 16 * a3));
  }

  return this;
}

WTF::StringImpl *WebCore::HTTPHeaderMap::HTTPHeaderMapConstIterator::updateKeyValue(WebCore::HTTPHeaderMap::HTTPHeaderMapConstIterator *this, const CommonHeader *a2)
{
  WebCore::httpHeaderNameString();
  if (v4)
  {
    v4 = (v4 - 1);
    if (v4)
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v5 = v9;
    }

    else
    {
      v5 = MEMORY[0x1E696EB88];
      atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = *(this + 3);
  *(this + 3) = v5;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  *(this + 16) = *a2;
  *(this + 34) = 1;
  v7 = *(a2 + 1);
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  result = *(this + 5);
  *(this + 5) = v7;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v4);
    }
  }

  return result;
}

WTF::StringImpl *WebCore::HTTPHeaderMap::HTTPHeaderMapConstIterator::updateKeyValue(WebCore::HTTPHeaderMap::HTTPHeaderMapConstIterator *this, atomic_uint **a2)
{
  v4 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  v5 = *(this + 3);
  *(this + 3) = v4;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  if (*(this + 34) == 1)
  {
    *(this + 34) = 0;
  }

  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  result = *(this + 5);
  *(this + 5) = v6;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {

    return WTF::StringImpl::destroy(result, a2);
  }

  return result;
}

_DWORD *WTF::Detail::CallableWrapper<WebCore::Timer::Timer<WebKit::WebSharedWorkerServerToContextConnection,WebKit::WebSharedWorkerServerToContextConnection>(WebKit::WebSharedWorkerServerToContextConnection &,void (WebKit::WebSharedWorkerServerToContextConnection::*)(void))::{lambda(void)#1},void>::call(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = a1[3];
  v4 = (v2 + (v3 >> 1));
  v6 = *(v2 + 24);
  v5 = (v2 + 24);
  *v5 = v6 + 1;
  if (v3)
  {
    v1 = *(*v4 + v1);
  }

  v1(v4);

  return WTF::RefCounted<WebKit::WebSharedWorkerServerToContextConnection>::deref(v5);
}

void *WTF::Detail::CallableWrapper<WebKit::WebSharedWorkerServerToContextConnection::launchSharedWorker(WebKit::WebSharedWorker &)::$_1,void,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier> const&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1108548;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::RefCounted<WebKit::WebSharedWorker>::deref((v2 + 8));
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    WTF::RefCounted<WebKit::WebSharedWorkerServerToContextConnection>::deref((v3 + 24));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSharedWorkerServerToContextConnection::launchSharedWorker(WebKit::WebSharedWorker &)::$_1,void,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier> const&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1108548;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::RefCounted<WebKit::WebSharedWorker>::deref((v3 + 8));
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    WTF::RefCounted<WebKit::WebSharedWorkerServerToContextConnection>::deref((v4 + 24));
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSharedWorkerServerToContextConnection::launchSharedWorker(WebKit::WebSharedWorker &)::$_1,void,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier> const&>::call(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = WTF::fastMalloc(0x10);
  *v7 = &unk_1F1108570;
  v10 = v7;
  WebKit::WebSharedWorkerServerToContextConnection::postConnectEvent(v5, v6, a4, &v10);
  result = v10;
  if (v10)
  {
    v9 = *(*v10 + 8);

    return v9();
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSharedWorkerContextManagerConnection::PostConnectEvent,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1108598;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSharedWorkerContextManagerConnection::PostConnectEvent,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1108598;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSharedWorkerContextManagerConnection::PostConnectEvent,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    v4 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
    v5 = *&v4 & ((v4 & 0x100) >> 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v6 + 16))(v6, v5);
  v7 = *(*v6 + 8);

  return v7(v6);
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash( a1,  v5,  a2);
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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

  v9 = WTF::fastMalloc((16 * a2 + 16));
  v11 = v9;
  v12 = v9 + 16;
  if (a2)
  {
    bzero((v9 + 16), 16 * a2);
  }

  *a1 = v12;
  v11[2] = a2 - 1;
  v11[3] = a2;
  *v11 = 0;
  v11[1] = v8;
  if (v7)
  {
    v13 = 0;
    v14 = 0;
    v15 = v7;
    do
    {
      v16 = (v6 + 16 * v13);
      v17 = *v16;
      if (*v16 != -1)
      {
        if (v17)
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

          v21 = (v17 + ~(v17 << 32)) ^ ((v17 + ~(v17 << 32)) >> 22);
          v22 = 9 * ((v21 + ~(v21 << 13)) ^ ((v21 + ~(v21 << 13)) >> 8));
          v23 = (v22 ^ (v22 >> 15)) + ~((v22 ^ (v22 >> 15)) << 27);
          v24 = v20 & ((v23 >> 31) ^ v23);
          v25 = 1;
          do
          {
            v26 = v24;
            v27 = *(v19 + 16 * v24);
            v24 = (v24 + v25++) & v20;
          }

          while (v27);
          v28 = (v19 + 16 * v26);
          v29 = v28[1];
          if (v29)
          {
            WTF::fastFree((v29 - 16), v10);
            v17 = *v16;
          }

          *v28 = v17;
          v28[1] = 0;
          v30 = v16[1];
          v16[1] = 0;
          v28[1] = v30;
          v31 = v16[1];
          if (v31)
          {
            WTF::fastFree((v31 - 16), v10);
          }

          if (v16 == a3)
          {
            v14 = v28;
          }
        }

        else
        {
          v18 = v16[1];
          if (v18)
          {
            WTF::fastFree((v18 - 16), v10);
          }
        }
      }

      ++v13;
    }

    while (v13 != v15);
  }

  else
  {
    v14 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v14;
}

_DWORD *WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  return WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(a1, v3);
}

_DWORD *WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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
      v8 = v10[1];
      if (v8 != -1 && *v10 != 0)
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

        v13 = WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>::hash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(*v10, v8);
        v14 = 0;
        do
        {
          v15 = (v11 + 16 * (v13 & v12));
          v13 = ++v14 + (v13 & v12);
        }

        while (*v15 != 0);
        *v15 = *v10;
      }
    }
  }

  else if (!v4)
  {
    return result;
  }

  return WTF::fastFree((v4 - 16), v8);
}

uint64_t Messages::NetworkProcessProxy::RegisterRemoteWorkerClientProcess::encode<IPC::Encoder>(uint64_t a1, IPC::Encoder *a2)
{
  v5 = *a1;
  IPC::Encoder::operator<<<unsigned char>(a2, &v5);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, **(a1 + 8));
  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, **(a1 + 16));
}

uint64_t WTF::RefCounted<WebKit::NetworkCache::AsyncRevalidation>::deref(uint64_t result)
{
  v1 = result;
  if (*result == 1)
  {
    v2 = *(result + 72);
    *(v1 + 72) = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    *(v1 + 16) = &unk_1F10EB388;
    v3 = *(v1 + 64);
    *(v1 + 64) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    WebCore::TimerBase::~TimerBase((v1 + 16));
    v5 = *(v1 + 8);
    *(v1 + 8) = 0;
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

    if (*v1 == 1)
    {
      v8 = *(v1 - 8);
      v7 = (v1 - 8);
      v6 = v8;
      if (v8)
      {
        *(v6 + 8) = 0;
        v9 = *v7;
        *v7 = 0;
        if (v9)
        {
          if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v9);
            WTF::fastFree(v9, v4);
          }
        }
      }

      return bmalloc::api::tzoneFree(v7, v4);
    }

    else
    {
      result = 191;
      __break(0xC471u);
    }
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebCore::Timer::Timer<WebKit::NetworkCache::AsyncRevalidation,WebKit::NetworkCache::AsyncRevalidation>(WebKit::NetworkCache::AsyncRevalidation &,void (WebKit::NetworkCache::AsyncRevalidation::*)(void))::{lambda(void)#1},void>::call(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = a1[3];
  v4 = (v2 + (v3 >> 1));
  v6 = *(v2 + 8);
  v5 = (v2 + 8);
  *v5 = v6 + 1;
  if (v3)
  {
    v1 = *(*v4 + v1);
  }

  v1(v4);

  return WTF::RefCounted<WebKit::NetworkCache::AsyncRevalidation>::deref(v5);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkCache::AsyncRevalidation::AsyncRevalidation(WebKit::NetworkCache::Cache &,WebKit::NetworkCache::GlobalFrameID const&,WebCore::ResourceRequest const&,std::unique_ptr<WebKit::NetworkCache::Entry> &&,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>,WTF::CompletionHandler<void ()(WebKit::NetworkCache::AsyncRevalidation::Result)> &&)::$_0,void,std::unique_ptr<WebKit::NetworkCache::Entry>>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F11085E8;
  WebCore::ResourceRequest::~ResourceRequest((a1 + 11));
  v3 = a1[5];
  a1[5] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, v2);
  }

  v4 = a1[4];
  a1[4] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v2);
  }

  v5 = a1[3];
  a1[3] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v2);
  }

  v6 = a1[2];
  a1[2] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::AsyncRevalidation::AsyncRevalidation(WebKit::NetworkCache::Cache &,WebKit::NetworkCache::GlobalFrameID const&,WebCore::ResourceRequest const&,std::unique_ptr<WebKit::NetworkCache::Entry> &&,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>,WTF::CompletionHandler<void ()(WebKit::NetworkCache::AsyncRevalidation::Result)> &&)::$_0,void,std::unique_ptr<WebKit::NetworkCache::Entry>>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F11085E8;
  WebCore::ResourceRequest::~ResourceRequest((a1 + 11));
  v3 = a1[5];
  a1[5] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, v2);
  }

  v4 = a1[4];
  a1[4] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v2);
  }

  v5 = a1[3];
  a1[3] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v2);
  }

  v6 = a1[2];
  a1[2] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v2);
  }

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::AsyncRevalidation::AsyncRevalidation(WebKit::NetworkCache::Cache &,WebKit::NetworkCache::GlobalFrameID const&,WebCore::ResourceRequest const&,std::unique_ptr<WebKit::NetworkCache::Entry> &&,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>,WTF::CompletionHandler<void ()(WebKit::NetworkCache::AsyncRevalidation::Result)> &&)::$_0,void,std::unique_ptr<WebKit::NetworkCache::Entry>>::call(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *(v2 + 80);
  if (v3)
  {
    v4 = *a2 != 0;
    *(v2 + 80) = 0;
    (*(*v3 + 16))(v3, (2 * v4));
    v5 = *(*v3 + 8);

    return v5(v3);
  }

  return result;
}

atomic_ullong *WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(atomic_ullong *result)
{
  do
  {
    v1 = *result;
    if ((*result & 1) == 0)
    {
      v2 = *result;

      return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>(v2);
    }

    v3 = *result;
    atomic_compare_exchange_strong_explicit(result, &v3, v1 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v3 != v1);
  v5 = result;
  if (v1 == 3)
  {
    v4 = WTF::fastMalloc(0x10);
    *v4 = &unk_1F1108890;
    v4[1] = v5;
    v6 = v4;
    WTF::ensureOnMainRunLoop();
    result = v6;
    if (v6)
    {
      return (*(*v6 + 8))(v6);
    }
  }

  return result;
}

atomic_uchar *WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>(atomic_uchar *this)
{
  v1 = this;
  v2 = 0;
  atomic_compare_exchange_strong_explicit(this, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    this = MEMORY[0x19EB01E30](this);
  }

  v3 = *(v1 + 1) - 1;
  *(v1 + 1) = v3;
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v1 + 3);
    ++*(v1 + 2);
    *(v1 + 3) = 0;
  }

  v5 = 1;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != 1)
  {
    v7 = v3;
    this = WTF::Lock::unlockSlow(v1);
    v3 = v7;
  }

  if (!v3)
  {
    v6 = WTF::fastMalloc(0x18);
    *v6 = &unk_1F11088B8;
    *(v6 + 1) = v1;
    *(v6 + 2) = v4;
    v8 = v6;
    WTF::ensureOnMainRunLoop();
    this = v8;
    if (v8)
    {
      return (*(*v8 + 8))(v8);
    }
  }

  return this;
}

WebKit::NetworkCache::Storage *WTF::Detail::CallableWrapper<WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(void)::{lambda(void)#1},void>::call(uint64_t a1, WTF::StringImpl *a2)
{
  result = *(a1 + 8);
  if (result)
  {
    WebKit::NetworkCache::Storage::~Storage(result, a2);

    return WTF::fastFree(v3, v4);
  }

  return result;
}

WebKit::NetworkCache::Storage *WTF::Detail::CallableWrapper<void WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>(void)::{lambda(void)#1},void>::call(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 8);
  result = *(a1 + 16);
  if (result)
  {
    WebKit::NetworkCache::Storage::~Storage(result, a2);
    result = WTF::fastFree(v4, v5);
  }

  v6 = 0;
  v7 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    result = MEMORY[0x19EB01E30](v3);
  }

  v8 = *(v3 + 16) - 1;
  *(v3 + 16) = v8;
  atomic_compare_exchange_strong_explicit(v3, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 == 1)
  {
    if (v8)
    {
      return result;
    }
  }

  else
  {
    v9 = v8;
    result = WTF::Lock::unlockSlow(v3);
    if (v9)
    {
      return result;
    }
  }

  return WTF::fastFree(v3, a2);
}

_DWORD *WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::Ref<WebKit::NetworkCache::AsyncRevalidation,WTF::RawPtrTraits<WebKit::NetworkCache::AsyncRevalidation>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::AsyncRevalidation>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::Ref<WebKit::NetworkCache::AsyncRevalidation,WTF::RawPtrTraits<WebKit::NetworkCache::AsyncRevalidation>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::AsyncRevalidation>>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,WTF::Ref<WebKit::NetworkCache::AsyncRevalidation,WTF::RawPtrTraits<WebKit::NetworkCache::AsyncRevalidation>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::AsyncRevalidation>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<WTF::Ref<WebKit::NetworkCache::AsyncRevalidation,WTF::RawPtrTraits<WebKit::NetworkCache::AsyncRevalidation>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::AsyncRevalidation>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  return WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::Ref<WebKit::NetworkCache::AsyncRevalidation,WTF::RawPtrTraits<WebKit::NetworkCache::AsyncRevalidation>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::AsyncRevalidation>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::Ref<WebKit::NetworkCache::AsyncRevalidation,WTF::RawPtrTraits<WebKit::NetworkCache::AsyncRevalidation>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::AsyncRevalidation>>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,WTF::Ref<WebKit::NetworkCache::AsyncRevalidation,WTF::RawPtrTraits<WebKit::NetworkCache::AsyncRevalidation>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::AsyncRevalidation>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<WTF::Ref<WebKit::NetworkCache::AsyncRevalidation,WTF::RawPtrTraits<WebKit::NetworkCache::AsyncRevalidation>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::AsyncRevalidation>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::rehash(a1, v3);
}

_DWORD *WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::Ref<WebKit::NetworkCache::AsyncRevalidation,WTF::RawPtrTraits<WebKit::NetworkCache::AsyncRevalidation>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::AsyncRevalidation>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::Ref<WebKit::NetworkCache::AsyncRevalidation,WTF::RawPtrTraits<WebKit::NetworkCache::AsyncRevalidation>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::AsyncRevalidation>>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,WTF::Ref<WebKit::NetworkCache::AsyncRevalidation,WTF::RawPtrTraits<WebKit::NetworkCache::AsyncRevalidation>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::AsyncRevalidation>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<WTF::Ref<WebKit::NetworkCache::AsyncRevalidation,WTF::RawPtrTraits<WebKit::NetworkCache::AsyncRevalidation>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::AsyncRevalidation>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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

  result = WTF::fastMalloc((80 * a2 + 16));
  if (a2)
  {
    v9 = a2;
    v10 = result + 22;
    do
    {
      *(v10 - 7) = 0uLL;
      *(v10 - 9) = 0uLL;
      *v10 = 0;
      v10 += 10;
      --v9;
    }

    while (v9);
  }

  *a1 = (result + 4);
  result[2] = a2 - 1;
  result[3] = a2;
  *result = 0;
  result[1] = v6;
  if (v5)
  {
    v11 = 0;
    while (1)
    {
      v12 = v4 + 80 * v11;
      v13 = *(v12 + 16);
      if (v13 != -1)
      {
        if (v13)
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

          v21 = 0;
          v22 = *(v12 + 32);
          do
          {
            v23 = v22 & v20;
            v24 = v19 + 80 * v23;
            v22 = ++v21 + v23;
          }

          while (*(v24 + 16));
          v25 = *(v24 + 72);
          *(v24 + 72) = 0;
          if (v25)
          {
            WTF::RefCounted<WebKit::NetworkCache::AsyncRevalidation>::deref(v25 + 8);
          }

          v26 = *(v24 + 24);
          *(v24 + 24) = 0;
          if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v26, v8);
          }

          v27 = *(v24 + 16);
          *(v24 + 16) = 0;
          if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v27, v8);
          }

          v28 = *(v24 + 8);
          *(v24 + 8) = 0;
          if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v28, v8);
          }

          v29 = *v24;
          *v24 = 0;
          if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v29, v8);
          }

          v30 = *v12;
          *v12 = 0;
          *v24 = v30;
          v31 = *(v12 + 8);
          *(v12 + 8) = 0;
          *(v24 + 8) = v31;
          v32 = *(v12 + 16);
          *(v12 + 16) = 0;
          *(v24 + 16) = v32;
          v33 = *(v12 + 24);
          *(v12 + 24) = 0;
          *(v24 + 24) = v33;
          v34 = *(v12 + 32);
          v35 = *(v12 + 48);
          *(v24 + 64) = *(v12 + 64);
          *(v24 + 32) = v34;
          *(v24 + 48) = v35;
          v36 = *(v12 + 72);
          *(v12 + 72) = 0;
          *(v24 + 72) = v36;
          v37 = *(v12 + 72);
          *(v12 + 72) = 0;
          if (v37)
          {
            WTF::RefCounted<WebKit::NetworkCache::AsyncRevalidation>::deref(v37 + 8);
          }

          v38 = *(v12 + 24);
          *(v12 + 24) = 0;
          if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v38, v8);
          }

          v39 = *(v12 + 16);
          *(v12 + 16) = 0;
          if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v39, v8);
          }

          v40 = *(v12 + 8);
          *(v12 + 8) = 0;
          if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v40, v8);
          }

          v18 = *v12;
          *v12 = 0;
          if (!v18 || atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) != 2)
          {
            goto LABEL_58;
          }
        }

        else
        {
          v14 = *(v12 + 72);
          *(v12 + 72) = 0;
          if (v14)
          {
            WTF::RefCounted<WebKit::NetworkCache::AsyncRevalidation>::deref(v14 + 8);
          }

          v15 = *(v12 + 24);
          *(v12 + 24) = 0;
          if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v15, v8);
          }

          v16 = *(v12 + 16);
          *(v12 + 16) = 0;
          if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v16, v8);
          }

          v17 = *(v12 + 8);
          *(v12 + 8) = 0;
          if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v17, v8);
          }

          v18 = *v12;
          *v12 = 0;
          if (!v18 || atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) != 2)
          {
            goto LABEL_58;
          }
        }

        WTF::StringImpl::destroy(v18, v8);
      }

LABEL_58:
      if (++v11 == v5)
      {
        goto LABEL_61;
      }
    }
  }

  if (v4)
  {
LABEL_61:

    return WTF::fastFree((v4 - 16), v8);
  }

  return result;
}

uint64_t WTF::HashTable<WebKit::NetworkCache::GlobalFrameID,WTF::KeyValuePair<WebKit::NetworkCache::GlobalFrameID,WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::GlobalFrameID,WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>>>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashMap<WebKit::NetworkCache::GlobalFrameID,WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<WebKit::NetworkCache::GlobalFrameID,WTF::KeyValuePair<WebKit::NetworkCache::GlobalFrameID,WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::GlobalFrameID,WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>>>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashMap<WebKit::NetworkCache::GlobalFrameID,WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::FastMalloc>::rehash(a1, v4, a2);
}

uint64_t WTF::HashTable<WebKit::NetworkCache::GlobalFrameID,WTF::KeyValuePair<WebKit::NetworkCache::GlobalFrameID,WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::GlobalFrameID,WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>>>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashMap<WebKit::NetworkCache::GlobalFrameID,WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v5 = *a1;
  if (*a1)
  {
    v6 = *(v5 - 4);
    v7 = *(v5 - 12);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = WTF::fastMalloc((40 * a2 + 16));
  v10 = v8;
  v11 = v8 + 16;
  if (a2)
  {
    bzero((v8 + 16), 40 * a2);
  }

  *a1 = v11;
  v10[2] = a2 - 1;
  v10[3] = a2;
  *v10 = 0;
  v10[1] = v7;
  if (v6)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = v5 + 40 * v12;
      v9 = (v14 + 8);
      if (*(v14 + 8) != -1)
      {
        if (*(v14 + 8) == 0)
        {
          v15 = *(v14 + 24);
          if (v15)
          {
            WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v15, v9);
          }
        }

        else
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

          v27 = -1640531527;
          v28 = 0;
          v29 = 0;
          WTF::add<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PortIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(&v27, v9, (v14 + 16));
          v18 = WTF::SuperFastHash::hash(&v27);
          v19 = 0;
          do
          {
            v20 = v16 + 40 * (v18 & v17);
            v18 = ++v19 + (v18 & v17);
          }

          while (*(v20 + 8) != 0);
          v21 = *(v20 + 24);
          if (v21)
          {
            WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v21, v9);
          }

          v22 = *(v14 + 16);
          *v20 = *v14;
          *(v20 + 16) = v22;
          *(v20 + 24) = 0;
          v23 = *(v14 + 24);
          *(v14 + 24) = 0;
          *(v20 + 24) = v23;
          *(v20 + 32) = *(v14 + 32);
          v24 = *(v14 + 24);
          if (v24)
          {
            WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v24, v9);
          }

          if (v14 == a3)
          {
            v13 = v20;
          }
        }
      }

      ++v12;
    }

    while (v12 != v6);
  }

  else
  {
    v13 = 0;
    result = 0;
    if (!v5)
    {
      return result;
    }
  }

  WTF::fastFree((v5 - 16), v9);
  return v13;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit12NetworkCache5Cache30startAsyncRevalidationIfNeededERKN7WebCore15ResourceRequestERKNS3_3KeyEONSt3__110unique_ptrINS3_5EntryENSC_14default_deleteISE_EEEERKNS3_13GlobalFrameIDENSC_8optionalINS2_26NavigatingToAppBoundDomainEEEbNS_9OptionSetINS5_26AdvancedPrivacyProtectionsEEEENK3__0clEvEUlT_E_vJNS3_17AsyncRevalidation6ResultEEED1Ev(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1108610;
  v3 = a1[5];
  a1[5] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[4];
  a1[4] = 0;
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
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    WTF::fastFree(v7, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit12NetworkCache5Cache30startAsyncRevalidationIfNeededERKN7WebCore15ResourceRequestERKNS3_3KeyEONSt3__110unique_ptrINS3_5EntryENSC_14default_deleteISE_EEEERKNS3_13GlobalFrameIDENSC_8optionalINS2_26NavigatingToAppBoundDomainEEEbNS_9OptionSetINS5_26AdvancedPrivacyProtectionsEEEENK3__0clEvEUlT_E_vJNS3_17AsyncRevalidation6ResultEEED0Ev(void *a1, WTF::StringImpl *a2)
{
  v2 = _ZN3WTF6Detail15CallableWrapperIZZN6WebKit12NetworkCache5Cache30startAsyncRevalidationIfNeededERKN7WebCore15ResourceRequestERKNS3_3KeyEONSt3__110unique_ptrINS3_5EntryENSC_14default_deleteISE_EEEERKNS3_13GlobalFrameIDENSC_8optionalINS2_26NavigatingToAppBoundDomainEEEbNS_9OptionSetINS5_26AdvancedPrivacyProtectionsEEEENK3__0clEvEUlT_E_vJNS3_17AsyncRevalidation6ResultEEED1Ev(a1, a2);

  return WTF::fastFree(v2, v3);
}

_DWORD *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit12NetworkCache5Cache30startAsyncRevalidationIfNeededERKN7WebCore15ResourceRequestERKNS3_3KeyEONSt3__110unique_ptrINS3_5EntryENSC_14default_deleteISE_EEEERKNS3_13GlobalFrameIDENSC_8optionalINS2_26NavigatingToAppBoundDomainEEEbNS_9OptionSetINS5_26AdvancedPrivacyProtectionsEEEENK3__0clEvEUlT_E_vJNS3_17AsyncRevalidation6ResultEEE4callESW_(_DWORD *result, WTF::StringImpl *a2, const WTF::StringImpl *a3)
{
  v3 = *(result + 1);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v6 = *(v4 + 8);
      v5 = v4 + 8;
      *v5 = v6 + 1;
      v7 = (v5 + 48);
      v8 = *(v5 + 48);
      if (v8)
      {
        v9 = result;
        v10 = *(result + 4);
        if (v10 == -1 || !v10)
        {
          __break(0xC471u);
          JUMPOUT(0x19DD8A6C8);
        }

        v11 = 0;
        v12 = *(v8 - 8);
        for (i = result[12]; ; i = v11 + v14)
        {
          v14 = i & v12;
          v15 = v8 + 80 * (i & v12);
          v16 = *(v15 + 16);
          if (v16 != -1)
          {
            if (!v16)
            {
              v17 = *v7;
              if (!*v7)
              {
                goto LABEL_36;
              }

              v15 = v17 + 80 * *(v17 - 4);
              goto LABEL_14;
            }

            if (WebKit::NetworkCache::Key::operator==(v8 + 80 * v14, (v9 + 4), a3))
            {
              break;
            }
          }

          ++v11;
        }

        v17 = *v7;
        if (!*v7)
        {
          goto LABEL_15;
        }

LABEL_14:
        v17 += 80 * *(v17 - 4);
        if (v17 == v15)
        {
          goto LABEL_36;
        }

LABEL_15:
        if (v17 != v15)
        {
          v18 = *(v15 + 24);
          *(v15 + 24) = 0;
          if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v18, a2);
          }

          v19 = *(v15 + 16);
          *(v15 + 16) = 0;
          if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v19, a2);
          }

          v20 = *(v15 + 8);
          *(v15 + 8) = 0;
          if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v20, a2);
          }

          v21 = *v15;
          *v15 = 0;
          if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v21, a2);
          }

          *v15 = 0;
          *(v15 + 8) = 0;
          *(v15 + 16) = -1;
          *(v15 + 24) = 0;
          v22 = *(v15 + 72);
          *(v15 + 72) = 0;
          if (v22)
          {
            WTF::RefCounted<WebKit::NetworkCache::AsyncRevalidation>::deref(v22 + 8);
          }

          v23 = *v7;
          v24 = vadd_s32(*(*v7 - 16), 0xFFFFFFFF00000001);
          *(v23 - 16) = v24;
          v25 = *(v23 - 4);
          if (6 * v24.i32[1] < v25 && v25 >= 9)
          {
            WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::Ref<WebKit::NetworkCache::AsyncRevalidation,WTF::RawPtrTraits<WebKit::NetworkCache::AsyncRevalidation>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::AsyncRevalidation>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::Ref<WebKit::NetworkCache::AsyncRevalidation,WTF::RawPtrTraits<WebKit::NetworkCache::AsyncRevalidation>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::AsyncRevalidation>>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,WTF::Ref<WebKit::NetworkCache::AsyncRevalidation,WTF::RawPtrTraits<WebKit::NetworkCache::AsyncRevalidation>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::AsyncRevalidation>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<WTF::Ref<WebKit::NetworkCache::AsyncRevalidation,WTF::RawPtrTraits<WebKit::NetworkCache::AsyncRevalidation>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::AsyncRevalidation>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::rehash((v5 + 48), v25 >> 1);
          }
        }
      }

LABEL_36:

      return WTF::RefCounted<WebKit::NetworkCache::Cache>::deref(v5, a2);
    }
  }

  return result;
}

unsigned int **WTF::HashMap<WebKit::NetworkCache::GlobalFrameID,WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(unsigned int **result, unsigned int *a2)
{
  v2 = result;
  v3 = *result;
  if (*result)
  {
    v4 = &v3[10 * *(v3 - 1)];
    if (v4 == a2)
    {
      return result;
    }
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v4 = 0;
  }

  if (v4 != a2)
  {
    *(a2 + 1) = -1;
    result = *(a2 + 3);
    if (result)
    {
      result = WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(result, a2);
      v3 = *v2;
    }

    v5 = vadd_s32(*(v3 - 4), 0xFFFFFFFF00000001);
    *(v3 - 2) = v5;
    v6 = *(v3 - 1);
    if (6 * v5.i32[1] < v6 && v6 >= 9)
    {

      return WTF::HashTable<WebKit::NetworkCache::GlobalFrameID,WTF::KeyValuePair<WebKit::NetworkCache::GlobalFrameID,WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::GlobalFrameID,WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>>>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashMap<WebKit::NetworkCache::GlobalFrameID,WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::FastMalloc>::rehash(v2, v6 >> 1, 0);
    }
  }

  return result;
}

uint64_t WTF::HashTable<WebKit::NetworkCache::GlobalFrameID,WTF::KeyValuePair<WebKit::NetworkCache::GlobalFrameID,WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::GlobalFrameID,WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>>>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashMap<WebKit::NetworkCache::GlobalFrameID,WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WebKit::NetworkCache::GlobalFrameID,WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>>,(WTF::ShouldValidateKey)1,WebKit::NetworkCache::GlobalFrameID>(uint64_t *a1, uint64_t a2)
{
  v2 = (a2 + 8);
  v3 = (a2 + 16);
  if (*(a2 + 8) == 0 || *(a2 + 8) == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD8A8A8);
  }

  v4 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v5 = *(v4 - 8);
  v15 = -1640531527;
  v16 = 0;
  v17 = 0;
  WTF::add<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PortIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(&v15, (a2 + 8), v3);
  v6 = WTF::SuperFastHash::hash(&v15);
  v7 = *v3;
  v8 = v6 & v5;
  result = v4 + 40 * (v6 & v5);
  v10 = *(result + 8);
  v11 = *(result + 16);
  if (v10 != *v2 || v11 != v7)
  {
    v13 = 1;
    while (v10 | v11)
    {
      v8 = (v8 + v13) & v5;
      result = v4 + 40 * v8;
      v10 = *(result + 8);
      v11 = *(result + 16);
      ++v13;
      if (v10 == *v2 && v11 == v7)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

void *WTF::WeakHashSet<WebKit::NetworkCache::AsyncRevalidation,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(void *result)
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

void *WTF::Detail::CallableWrapper<WebKit::NetworkCache::Cache::retrieve(WebCore::ResourceRequest const&,std::optional<WebKit::NetworkCache::GlobalFrameID>,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>,WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::Cache::RetrieveInfo const&)> &&)::$_0,void,std::unique_ptr<WebKit::NetworkCache::Entry>>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1108638;
  v2 = a1[27];
  a1[27] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  WebCore::ResourceRequest::~ResourceRequest((a1 + 2));
  v3 = a1[1];
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 36);
    (*(*v3 + 24))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::Cache::retrieve(WebCore::ResourceRequest const&,std::optional<WebKit::NetworkCache::GlobalFrameID>,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>,WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::Cache::RetrieveInfo const&)> &&)::$_0,void,std::unique_ptr<WebKit::NetworkCache::Entry>>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1108638;
  v2 = a1[27];
  a1[27] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  WebCore::ResourceRequest::~ResourceRequest((a1 + 2));
  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add(v4 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 36);
    (*(*v4 + 24))(v4);
  }

  return WTF::fastFree(a1, v3);
}

WebKit::NetworkCache::Entry *WTF::Detail::CallableWrapper<WebKit::NetworkCache::Cache::retrieve(WebCore::ResourceRequest const&,std::optional<WebKit::NetworkCache::GlobalFrameID>,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>,WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::Cache::RetrieveInfo const&)> &&)::$_0,void,std::unique_ptr<WebKit::NetworkCache::Entry>>::call(uint64_t a1, WebKit::NetworkCache::Entry **a2)
{
  v2 = *a2;
  *a2 = 0;
  v7 = v2;
  WebKit::NetworkCache::Cache::retrieve(WebCore::ResourceRequest const&,std::optional<WebKit::NetworkCache::GlobalFrameID>,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>,WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::Cache::RetrieveInfo const&)> &&)::$_0::operator()((a1 + 8), &v7);
  result = v7;
  if (v7)
  {
    WebKit::NetworkCache::Entry::~Entry(v7, v3);

    return bmalloc::api::tzoneFree(v5, v6);
  }

  return result;
}

uint64_t WebKit::NetworkCache::Cache::retrieve(WebCore::ResourceRequest const&,std::optional<WebKit::NetworkCache::GlobalFrameID>,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>,WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::Cache::RetrieveInfo const&)> &&)::$_0::operator()(uint64_t *a1, WebKit::NetworkCache::Entry **a2)
{
  *(a1 + 320) = 1;
  if (*a2)
  {
    v4 = *a1;
    v16 = a1[41];
    v5 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v4 + 248), &v16);
    if (v5)
    {
      v6 = v5;
      ++*(v5 + 8);
      v7 = WebCore::verifyVaryingRequestHeaders();
      v8 = *(v6 + 8);
      if (!v8)
      {
        result = 290;
        __break(0xC471u);
        return result;
      }

      *(v6 + 8) = v8 - 1;
      if (v7)
      {
LABEL_5:
        v9 = *a2;
        *a2 = 0;
        v15 = v9;
        WebKit::NetworkCache::Cache::completeRetrieve((a1 + 26), &v15, (a1 + 27));
        result = v15;
        if (!v15)
        {
          return result;
        }

LABEL_9:
        WebKit::NetworkCache::Entry::~Entry(result, v10);
        return bmalloc::api::tzoneFree(v12, v13);
      }
    }

    else if (WebCore::verifyVaryingRequestHeaders())
    {
      goto LABEL_5;
    }
  }

  v14 = 0;
  WebKit::NetworkCache::Cache::completeRetrieve((a1 + 26), &v14, (a1 + 27));
  result = v14;
  if (v14)
  {
    goto LABEL_9;
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkCache::Cache::retrieve(WebCore::ResourceRequest const&,std::optional<WebKit::NetworkCache::GlobalFrameID>,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>,WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::Cache::RetrieveInfo const&)> &&)::$_1,BOOL,WebKit::NetworkCache::Storage::Record &&,WebKit::NetworkCache::Cache::retrieve(WebCore::ResourceRequest const&,std::optional<WebKit::NetworkCache::GlobalFrameID>,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>,WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::Cache::RetrieveInfo const&)> &&)::$_1::Timings const&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1108660;
  WebKit::NetworkCache::Cache::retrieve(WebCore::ResourceRequest const&,std::optional<WebKit::NetworkCache::GlobalFrameID>,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>,WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::Cache::RetrieveInfo const&)> &&)::$_1::~$_1(a1 + 1, a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::Cache::retrieve(WebCore::ResourceRequest const&,std::optional<WebKit::NetworkCache::GlobalFrameID>,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>,WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::Cache::RetrieveInfo const&)> &&)::$_1,BOOL,WebKit::NetworkCache::Storage::Record &&,WebKit::NetworkCache::Cache::retrieve(WebCore::ResourceRequest const&,std::optional<WebKit::NetworkCache::GlobalFrameID>,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>,WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::Cache::RetrieveInfo const&)> &&)::$_1::Timings const&>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1108660;
  WebKit::NetworkCache::Cache::retrieve(WebCore::ResourceRequest const&,std::optional<WebKit::NetworkCache::GlobalFrameID>,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>,WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::Cache::RetrieveInfo const&)> &&)::$_1::~$_1(a1 + 1, a2);

  return WTF::fastFree(a1, v3);
}

BOOL WTF::Detail::CallableWrapper<WebKit::NetworkCache::Cache::retrieve(WebCore::ResourceRequest const&,std::optional<WebKit::NetworkCache::GlobalFrameID>,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>,WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::Cache::RetrieveInfo const&)> &&)::$_1,BOOL,WebKit::NetworkCache::Storage::Record &&,WebKit::NetworkCache::Cache::retrieve(WebCore::ResourceRequest const&,std::optional<WebKit::NetworkCache::GlobalFrameID>,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>,WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::Cache::RetrieveInfo const&)> &&)::$_1::Timings const&>::call(void *a1, __int128 *a2, void *__src)
{
  v62 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v7 = a2[1];
  *a2 = 0u;
  a2[1] = 0u;
  *v49 = v6;
  *v50 = v7;
  v45 = v7;
  v8 = a2[3];
  v51 = a2[2];
  v52 = v8;
  v9 = *(a2 + 9);
  v53 = *(a2 + 8);
  v54 = v9;
  v10 = *(a2 + 10);
  v55 = v10;
  if (v10)
  {
    os_retain(v10);
  }

  v56 = *(a2 + 88);
  v57 = *(a2 + 104);
  v11 = *(a2 + 14);
  object = v11;
  if (v11)
  {
    os_retain(v11);
  }

  v59 = *(a2 + 120);
  v60 = *(a2 + 136);
  *v61 = a2[9];
  *&v61[13] = *(a2 + 157);
  memmove(a1 + 32, __src, 0x4BuLL);
  if (v45)
  {
    WebKit::NetworkCache::Entry::decodeStorageRecord(v49, v12, &v46);
    v13 = v46;
    v14 = v46 != 0;
    if (!v46)
    {
      goto LABEL_10;
    }

    v15 = a1[52];
    v16 = a1[53];
    if (WebCore::ResourceRequestBase::isConditional((a1 + 3)) && *(v13 + 560) != 1)
    {
      goto LABEL_9;
    }

    v47[0] = v16;
    v23 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v15 + 248), v47);
    if (v23)
    {
      v24 = v23;
      ++*(v23 + 8);
      v25 = WebCore::verifyVaryingRequestHeaders();
      v27 = *(v24 + 8);
      if (!v27)
      {
        __break(0xC471u);
        goto LABEL_58;
      }

      *(v24 + 8) = v27 - 1;
      if (!v25)
      {
        goto LABEL_48;
      }
    }

    else if ((WebCore::verifyVaryingRequestHeaders() & 1) == 0)
    {
      goto LABEL_48;
    }

    if ((WebCore::ResourceRequestBase::cachePolicy((a1 + 3)) & 0xFE) == 2)
    {
      goto LABEL_10;
    }

    v28 = WebCore::ResourceRequestBase::url((a1 + 3));
    if (*(v28 + 8) & 1) != 0 && *v28 && *(*v28 + 4) > *(v28 + 36) && (*(v13 + 560))
    {
      goto LABEL_48;
    }

    v47[0] = v16;
    v29 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v15 + 240), v47);
    if (!v29)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD8B198);
    }

    v30 = v29;
    ++*(v29 + 16);
    v31 = WebCore::ResourceRequestBase::httpHeaderFields((a1 + 3));
    WebCore::parseCacheControlDirectives(v47, v31, v32);
    if (v48 & 1) != 0 || *v47 == 0.0 || (v33 = v47[1], (WebCore::ResourceResponseBase::cacheControlContainsNoCache((v13 + 80))))
    {
      v37 = 1;
    }

    else
    {
      WebCore::computeCurrentAge();
      v35 = v34;
      WebCore::computeFreshnessLifetimeForHTTPFamily();
      v37 = v35 - v36 > *&v33;
    }

    v38 = *(v30 + 16);
    if (v38)
    {
      *(v30 + 16) = v38 - 1;
      if (!v37)
      {
        goto LABEL_10;
      }

      if (WebCore::ResourceResponseBase::hasCacheValidatorFields((v13 + 80)) && (*(v13 + 560) & 1) == 0)
      {
LABEL_9:
        *(v13 + 320) = *(v13 + 320) & 0xC3FF | 0xC00;
        goto LABEL_10;
      }

LABEL_48:
      WebKit::NetworkCache::Entry::~Entry(v13, v26);
      bmalloc::api::tzoneFree(v39, v40);
      v13 = 0;
LABEL_10:
      v47[0] = v13;
      WebKit::NetworkCache::Cache::completeRetrieve((a1 + 28), v47, (a1 + 29));
      if (v47[0])
      {
        WebKit::NetworkCache::Entry::~Entry(v47[0], v17);
        bmalloc::api::tzoneFree(v41, v42);
      }

      goto LABEL_12;
    }

    __break(0xC471u);
    __break(1u);
LABEL_58:
    JUMPOUT(0x19DD8B178);
  }

  v47[0] = 0;
  WebKit::NetworkCache::Cache::completeRetrieve((a1 + 28), v47, (a1 + 29));
  if (v47[0])
  {
    WebKit::NetworkCache::Entry::~Entry(v47[0], v17);
    bmalloc::api::tzoneFree(v43, v44);
  }

  v14 = 0;
LABEL_12:
  if (object)
  {
    os_release(object);
  }

  if (v55)
  {
    os_release(v55);
  }

  v18 = v50[1];
  v50[1] = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v17);
  }

  v19 = v50[0];
  v50[0] = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v17);
  }

  v20 = v49[1];
  v49[1] = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v17);
  }

  v21 = v49[0];
  v49[0] = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v17);
  }

  return v14;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkCache::Cache::store(WebCore::ResourceRequest const&,WebCore::ResourceResponse const&,WebKit::PrivateRelayed,WTF::RefPtr<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::FragmentedSharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::FragmentedSharedBuffer>> &&,WTF::Function<void ()(WebKit::NetworkCache::MappedBody &&)> &&)::$_0,void,WebKit::NetworkCache::Data const&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1108688;
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
    WTF::RefCounted<WebKit::NetworkCache::Cache>::deref((v4 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::Cache::store(WebCore::ResourceRequest const&,WebCore::ResourceResponse const&,WebKit::PrivateRelayed,WTF::RefPtr<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::FragmentedSharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::FragmentedSharedBuffer>> &&,WTF::Function<void ()(WebKit::NetworkCache::MappedBody &&)> &&)::$_0,void,WebKit::NetworkCache::Data const&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1108688;
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
    WTF::RefCounted<WebKit::NetworkCache::Cache>::deref((v4 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_uint *WTF::Detail::CallableWrapper<WebKit::NetworkCache::Cache::store(WebCore::ResourceRequest const&,WebCore::ResourceResponse const&,WebKit::PrivateRelayed,WTF::RefPtr<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::FragmentedSharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::FragmentedSharedBuffer>> &&,WTF::Function<void ()(WebKit::NetworkCache::MappedBody &&)> &&)::$_0,void,WebKit::NetworkCache::Data const&>::call(uint64_t a1, WebKit::NetworkCache::Data *this)
{
  v19 = 0;
  v20[0] = 0;
  v22 = 0;
  WebKit::NetworkCache::Data::tryCreateSharedMemory(this, &v18);
  if (!v18)
  {
LABEL_15:
    v10 = *(a1 + 16);
    if (v10)
    {
      (*(*v10 + 16))(v10, &v19);
    }

    goto LABEL_17;
  }

  v17 = v18;
  v18 = 0;
  if (!*(this + 1) && *this)
  {
    dispatch_data_get_size(*this);
  }

  WebCore::ShareableResource::create();
  v4 = v14;
  v14 = 0;
  v5 = v19;
  v19 = v4;
  if (v5)
  {
    WTF::ThreadSafeRefCounted<WebCore::ShareableResource,(WTF::DestructionThread)0>::deref(v5);
    v14 = 0;
  }

  v6 = v17;
  v17 = 0;
  WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v6);
  v7 = v19;
  if (v19)
  {
    atomic_fetch_add(v19, 1u);
    WebCore::ShareableResource::createHandle(&v14, v7);
    WTF::ThreadSafeRefCounted<WebCore::ShareableResource,(WTF::DestructionThread)0>::deref(v7);
    if (v16 == 1)
    {
      if (v22 == 1)
      {
        WTF::MachSendRight::operator=();
        v8 = v15;
      }

      else
      {
        WTF::MachSendRight::MachSendRight();
        v8 = v15;
        v22 = 1;
      }

      v21 = v8;
      if (v16)
      {
        WTF::MachSendRight::~MachSendRight(&v14);
      }
    }

    v9 = v18;
    v18 = 0;
    if (v9)
    {
      WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v9);
    }

    goto LABEL_15;
  }

  v12 = *(a1 + 16);
  if (v12)
  {
    (*(*v12 + 16))(v12, &v19);
  }

  v13 = v18;
  v18 = 0;
  if (v13)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v13);
  }

LABEL_17:
  if (v22 == 1)
  {
    WTF::MachSendRight::~MachSendRight(v20);
  }

  result = v19;
  v19 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCounted<WebCore::ShareableResource,(WTF::DestructionThread)0>::deref(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkCache::Cache::traverse(WTF::Function<void ()(WebKit::NetworkCache::Cache::TraversalEntry const*)> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11086B0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::Cache::traverse(WTF::Function<void ()(WebKit::NetworkCache::Cache::TraversalEntry const*)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11086B0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkCache::Cache::traverse(WTF::Function<void ()(WebKit::NetworkCache::Cache::TraversalEntry const*)> &&)::$_1,void,WebKit::NetworkCache::Storage::Record const*,WebKit::NetworkCache::Cache::traverse(WTF::Function<void ()(WebKit::NetworkCache::Cache::TraversalEntry const*)> &&)::$_1::RecordInfo const&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11086D8;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    WTF::RefCounted<WebKit::NetworkCache::Cache>::deref((v4 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::Cache::traverse(WTF::Function<void ()(WebKit::NetworkCache::Cache::TraversalEntry const*)> &&)::$_1,void,WebKit::NetworkCache::Storage::Record const*,WebKit::NetworkCache::Cache::traverse(WTF::Function<void ()(WebKit::NetworkCache::Cache::TraversalEntry const*)> &&)::$_1::RecordInfo const&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F11086D8;
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
    WTF::RefCounted<WebKit::NetworkCache::Cache>::deref((v4 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::NetworkCache::Cache::traverse(WTF::Function<void ()(WebKit::NetworkCache::Cache::TraversalEntry const*)> &&)::$_1,void,WebKit::NetworkCache::Storage::Record const*,WebKit::NetworkCache::Cache::traverse(WTF::Function<void ()(WebKit::NetworkCache::Cache::TraversalEntry const*)> &&)::$_1::RecordInfo const&>::call(uint64_t a1, WebKit::NetworkCache::Entry *this, uint64_t a3)
{
  if (this)
  {
    WebKit::NetworkCache::Entry::decodeStorageRecord(this, this, &v11);
    v5 = v11;
    if (v11)
    {
      v10[0] = v11;
      v10[1] = a3;
      (*(**(a1 + 24) + 16))(*(a1 + 24), v10);
      WebKit::NetworkCache::Entry::~Entry(v5, v6);
      bmalloc::api::tzoneFree(v7, v8);
    }
  }

  else
  {
    --*(*(a1 + 8) + 72);
    v9 = *(**(a1 + 24) + 16);

    v9();
  }
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkCache::Cache::traverse(WTF::String const&,WTF::Function<void ()(WebKit::NetworkCache::Cache::TraversalEntry const*)> &&)::$_0,void,WebKit::NetworkCache::Storage::Record const*,WebKit::NetworkCache::Cache::traverse(WTF::String const&,WTF::Function<void ()(WebKit::NetworkCache::Cache::TraversalEntry const*)> &&)::$_0::RecordInfo const&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1108700;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::Cache::traverse(WTF::String const&,WTF::Function<void ()(WebKit::NetworkCache::Cache::TraversalEntry const*)> &&)::$_0,void,WebKit::NetworkCache::Storage::Record const*,WebKit::NetworkCache::Cache::traverse(WTF::String const&,WTF::Function<void ()(WebKit::NetworkCache::Cache::TraversalEntry const*)> &&)::$_0::RecordInfo const&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1108700;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::NetworkCache::Cache::traverse(WTF::String const&,WTF::Function<void ()(WebKit::NetworkCache::Cache::TraversalEntry const*)> &&)::$_0,void,WebKit::NetworkCache::Storage::Record const*,WebKit::NetworkCache::Cache::traverse(WTF::String const&,WTF::Function<void ()(WebKit::NetworkCache::Cache::TraversalEntry const*)> &&)::$_0::RecordInfo const&>::call(uint64_t a1, WebKit::NetworkCache::Entry *this, uint64_t a3)
{
  if (this)
  {
    WebKit::NetworkCache::Entry::decodeStorageRecord(this, this, &v11);
    v5 = v11;
    if (v11)
    {
      v10[0] = v11;
      v10[1] = a3;
      (*(**(a1 + 8) + 16))(*(a1 + 8), v10);
      WebKit::NetworkCache::Entry::~Entry(v5, v6);
      bmalloc::api::tzoneFree(v7, v8);
    }
  }

  else
  {
    v9 = *(**(a1 + 8) + 16);

    v9();
  }
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkCache::Cache::dumpContentsToFile(void)::$_0,void,WebKit::NetworkCache::Storage::Record const*,WebKit::NetworkCache::Storage::RecordInfo const&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1108728;
  WTF::FileSystemImpl::FileHandle::~FileHandle((a1 + 1));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::Cache::dumpContentsToFile(void)::$_0,void,WebKit::NetworkCache::Storage::Record const*,WebKit::NetworkCache::Storage::RecordInfo const&>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F1108728;
  WTF::FileSystemImpl::FileHandle::~FileHandle((a1 + 8));

  return WTF::fastFree(a1, v2);
}

void WTF::Detail::CallableWrapper<WebKit::NetworkCache::Cache::dumpContentsToFile(void)::$_0,void,WebKit::NetworkCache::Storage::Record const*,WebKit::NetworkCache::Storage::RecordInfo const&>::call(uint64_t a1, WebKit::NetworkCache::Entry *this, uint64_t a3)
{
  v173 = *MEMORY[0x1E69E9840];
  if (this)
  {
    WebKit::NetworkCache::Entry::decodeStorageRecord(this, this, &v141);
    v5 = v141;
    if (!v141)
    {
      return;
    }

    ++*(a1 + 16);
    *(a1 + 24) = *(a3 + 8) + *(a1 + 24);
    *(a1 + 32) += *a3;
    v137 = 0;
    v138 = 0;
    v139 = 0;
    v140 = 1;
    WTF::StringBuilder::append();
    WebKit::NetworkCache::Key::hashAsString(v5 + 32, __src);
    WTF::StringBuilder::appendQuotedJSONString(&v137, __src);
    v7 = *__src;
    *__src = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v6);
    }

    v8 = *a3;
    WTF::numberToStringAndSize();
    v10 = 0;
    HIDWORD(v158) = v9;
    v11 = v8;
    do
    {
      ++v10;
      v12 = v11 > 9;
      v11 /= 0xAuLL;
    }

    while (v12);
    v13 = v9 + 26;
    if (v9 >= 0xFFFFFFE6)
    {
      v13 = -1;
    }

    v14 = __CFADD__(v10, v13);
    v15 = v10 + v13;
    if (v14)
    {
      v15 = -1;
    }

    v14 = __CFADD__(v15, 14);
    v16 = v15 + 14;
    if (v14)
    {
      v16 = -1;
    }

    v14 = __CFADD__(v139, v16);
    v17 = v139 + v16;
    if (v14)
    {
      v18 = 0xFFFFFFFFLL;
    }

    else
    {
      v18 = v17;
    }

    v19 = v138;
    if ((v138 || (v19 = v137) != 0) && (*(v19 + 16) & 4) == 0)
    {
      v20 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(&v137);
      if (v20)
      {
        v22 = 0;
        v147 = v155;
        v148 = v156;
        v149 = v157;
        v150 = v158;
        *v143 = v151;
        v144 = v152;
        v23 = ",\nbodySize: ";
        v145 = v153;
        v146 = v154;
        do
        {
          v24 = *v23++;
          *(v20 + v22) = v24;
          v22 += 2;
        }

        while (v22 != 28);
        if (v21 <= 0xD)
        {
          goto LABEL_168;
        }

        v25 = v20 + 28;
        v26 = (v21 - 14);
        *v159 = v8;
        v20 = WTF::StringTypeAdapter<unsigned long long,void>::writeTo<char16_t>(v159, v20 + 14, (v21 - 14));
        LODWORD(v27) = 0;
        v28 = *v159;
        do
        {
          v27 = (v27 + 1);
          v12 = v28 > 9;
          v28 /= 0xAuLL;
        }

        while (v12);
        if (v26 < v27)
        {
          goto LABEL_168;
        }

        v29 = 0;
        v30 = &v25[2 * v27];
        v31 = ",\nworth: ";
        do
        {
          v32 = *v31++;
          *&v30[v29] = v32;
          v29 += 2;
        }

        while (v29 != 22);
        v33 = v26 - v27;
        if (v33 <= 0xA)
        {
          goto LABEL_168;
        }

        v34 = v30 + 22;
        v35 = v33 - 11;
        v169 = v147;
        v170 = v148;
        v171 = v149;
        v172 = v150;
        *__src = *v143;
        *&__src[16] = v144;
        v167 = v145;
        v168 = v146;
        v20 = WTF::StringTypeAdapter<double,void>::writeTo<char16_t>(__src, v30 + 22);
        if (v35 < HIDWORD(v172))
        {
          goto LABEL_168;
        }

        v36 = 0;
        v37 = &v34[2 * HIDWORD(v172)];
        v38 = ",\npartition: ";
        do
        {
          v39 = *v38++;
          *&v37[v36] = v39;
          v36 += 2;
        }

        while (v36 != 30);
      }
    }

    else
    {
      v20 = MEMORY[0x19EB01170](&v137, v18);
      if (v20)
      {
        v162 = v155;
        v163 = v156;
        v164 = v157;
        v165 = v158;
        *v159 = v151;
        *&v159[16] = v152;
        *v160 = v153;
        v161 = v154;
        qmemcpy(v20, ",\nbodySize: ", 14);
        if (v21 <= 0xD)
        {
          goto LABEL_168;
        }

        v40 = (v21 - 14);
        v41 = v20 + 14;
        v143[0] = v8;
        v20 = WTF::StringTypeAdapter<unsigned long long,void>::writeTo<unsigned char>(v143, v20 + 14, (v21 - 14));
        LODWORD(v42) = 0;
        v43 = v143[0];
        do
        {
          v42 = (v42 + 1);
          v12 = v43 > 9;
          v43 /= 0xAuLL;
        }

        while (v12);
        if (v40 < v42)
        {
          goto LABEL_168;
        }

        v44 = v40 - v42;
        v45 = &v41[v42];
        *v45 = *",\nworth: ";
        *(v45 + 7) = 540680808;
        if (v44 <= 0xA)
        {
          goto LABEL_168;
        }

        v169 = v162;
        v170 = v163;
        v171 = v164;
        v172 = v165;
        *__src = *v159;
        *&__src[16] = *&v159[16];
        v167 = *v160;
        v168 = v161;
        v46 = HIDWORD(v165);
        if (HIDWORD(v165) >= 0x7D)
        {
          goto LABEL_168;
        }

        v47 = v44 - 11;
        v48 = v45 + 11;
        if (HIDWORD(v165))
        {
          if (HIDWORD(v165) == 1)
          {
            *v48 = __src[0];
          }

          else
          {
            v20 = memcpy(v45 + 11, __src, HIDWORD(v172));
          }
        }

        if (v47 < v46)
        {
          goto LABEL_168;
        }

        qmemcpy(&v48[v46], ",\npartition: ", 15);
      }
    }

    WTF::StringBuilder::appendQuotedJSONString(&v137, v5);
    WTF::numberToStringAndSize();
    HIDWORD(v158) = v49;
    v50 = v49 + 24;
    if (v49 >= 0xFFFFFFE8)
    {
      v50 = -1;
    }

    if (__CFADD__(v139, v50))
    {
      v51 = 0xFFFFFFFFLL;
    }

    else
    {
      v51 = (v139 + v50);
    }

    v52 = v138;
    if ((v138 || (v52 = v137) != 0) && (*(v52 + 16) & 4) == 0)
    {
      v20 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(&v137);
      if (v20)
      {
        v53 = 0;
        v162 = v155;
        v163 = v156;
        v164 = v157;
        v165 = v158;
        *v159 = v151;
        *&v159[16] = v152;
        v54 = ",\ntimestamp: ";
        *v160 = v153;
        v161 = v154;
        do
        {
          v55 = *v54++;
          *(v20 + v53) = v55;
          v53 += 2;
        }

        while (v53 != 30);
        if (v21 <= 0xE)
        {
          goto LABEL_168;
        }

        v56 = v20 + 30;
        v57 = (v21 - 15);
        v169 = v162;
        v170 = v163;
        v171 = v164;
        v172 = v165;
        *__src = *v159;
        *&__src[16] = *&v159[16];
        v167 = *v160;
        v168 = v161;
        v20 = WTF::StringTypeAdapter<double,void>::writeTo<char16_t>(__src, v20 + 30);
        if (v57 < HIDWORD(v172))
        {
          goto LABEL_168;
        }

        v58 = 0;
        v59 = &v56[2 * HIDWORD(v172)];
        v60 = ",\nURL: ";
        do
        {
          v61 = *v60++;
          *&v59[v58] = v61;
          v58 += 2;
        }

        while (v58 != 18);
      }
    }

    else
    {
      v20 = MEMORY[0x19EB01170](&v137, v51);
      if (v20)
      {
        v162 = v155;
        v163 = v156;
        v164 = v157;
        v165 = v158;
        *v159 = v151;
        *&v159[16] = v152;
        *v160 = v153;
        v161 = v154;
        qmemcpy(v20, ",\ntimestamp: ", 15);
        if (v21 <= 0xE)
        {
          goto LABEL_168;
        }

        v169 = v162;
        v170 = v163;
        v171 = v164;
        v172 = v165;
        *__src = *v159;
        *&__src[16] = *&v159[16];
        v167 = *v160;
        v168 = v161;
        v62 = HIDWORD(v165);
        if (HIDWORD(v165) >= 0x7D)
        {
          goto LABEL_168;
        }

        v63 = v21 - 15;
        v64 = v20 + 15;
        if (HIDWORD(v165))
        {
          if (HIDWORD(v165) == 1)
          {
            *v64 = __src[0];
          }

          else
          {
            v20 = memcpy(v20 + 15, __src, HIDWORD(v172));
          }
        }

        if (v63 < v62)
        {
          goto LABEL_168;
        }

        v65 = &v64[v62];
        *v65 = *",\nURL: ";
        v65[8] = 32;
      }
    }

    v66 = WebCore::ResourceResponseBase::url((v5 + 80));
    WTF::StringBuilder::appendQuotedJSONString(&v137, v66);
    WTF::StringBuilder::append();
    WTF::StringBuilder::appendQuotedJSONString(&v137, (a3 + 24));
    v67 = 0;
    v68 = *(a3 + 16);
    v69 = v68;
    do
    {
      ++v67;
      v12 = v69 > 9;
      v69 /= 0xAu;
    }

    while (v12);
    v14 = __CFADD__(v67, 35);
    v70 = v67 + 35;
    if (v14)
    {
      v70 = -1;
    }

    v14 = __CFADD__(v139, v70);
    v71 = v139 + v70;
    if (v14)
    {
      v72 = 0xFFFFFFFFLL;
    }

    else
    {
      v72 = v71;
    }

    v73 = v138;
    if ((v138 || (v73 = v137) != 0) && (*(v73 + 16) & 4) == 0)
    {
      v20 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(&v137);
      if (v20)
      {
        v74 = v20;
        v75 = 0;
        v76 = ",\nbodyShareCount: ";
        do
        {
          v77 = *v76++;
          *(v20 + v75) = v77;
          v75 += 2;
        }

        while (v75 != 40);
        if (v21 > 0x13)
        {
          v78 = (v21 - 20);
          *__src = v68;
          v20 = WTF::StringTypeAdapter<unsigned int,void>::writeTo<char16_t>(__src, v20 + 20, (v21 - 20));
          v79 = 0;
          v80 = *__src;
          do
          {
            ++v79;
            v12 = v80 > 9;
            v80 /= 0xAu;
          }

          while (v12);
          if (v78 >= v79)
          {
            v81 = 0;
            v82 = v74 + 2 * v79 + 40;
            v83 = ",\nheaders: {\n";
            do
            {
              v84 = *v83++;
              *(v82 + v81) = v84;
              v81 += 2;
            }

            while (v81 != 30);
            goto LABEL_100;
          }
        }

LABEL_168:
        __break(1u);
        goto LABEL_169;
      }
    }

    else
    {
      v20 = MEMORY[0x19EB01170](&v137, v72);
      if (v20)
      {
        *(v20 + 4) = 540680820;
        *v20 = *",\nbodyShareCount: ";
        if (v21 <= 0x13)
        {
          goto LABEL_168;
        }

        v85 = (v21 - 20);
        v86 = v20 + 20;
        v20 = WTF::writeIntegerToBufferImpl<unsigned char,unsigned int,(WTF::PositiveOrNegativeNumber)0>(v68, v20 + 20, (v21 - 20));
        LODWORD(v87) = 0;
        do
        {
          v87 = (v87 + 1);
          v12 = v68 > 9;
          LODWORD(v68) = v68 / 0xA;
        }

        while (v12);
        if (v85 < v87)
        {
          goto LABEL_168;
        }

        qmemcpy(&v86[v87], ",\nheaders: {\n", 15);
      }
    }

LABEL_100:
    v88 = WebCore::ResourceResponseBase::httpHeaderFields((v5 + 80));
    WebCore::HTTPHeaderMap::HTTPHeaderMapConstIterator::HTTPHeaderMapConstIterator(__src, v88, 0, 0);
    WebCore::HTTPHeaderMap::HTTPHeaderMapConstIterator::HTTPHeaderMapConstIterator(v159, v88, v88[3], v88[7]);
    v90 = 1;
    while (*&__src[8] != *&v159[8])
    {
      v91 = (v90 & 1) == 0;
      if (v90)
      {
        v92 = "";
      }

      else
      {
        v92 = ",\n";
      }

      if (v91)
      {
        v93 = 3;
      }

      else
      {
        v93 = 1;
      }

      *&v151 = v92;
      *(&v151 + 1) = v93;
      v142[0] = "    ";
      v142[1] = 5;
      WTF::StringBuilder::append<WTF::ASCIILiteral,WTF::ASCIILiteral>(&v137, &v151, v142);
      WTF::StringBuilder::appendQuotedJSONString(&v137, &__src[24]);
      WTF::StringBuilder::append();
      WTF::StringBuilder::appendQuotedJSONString(&v137, (&v167 + 8));
      WebCore::HTTPHeaderMap::HTTPHeaderMapConstIterator::operator++(__src);
      v90 = 0;
    }

    v94 = v160[1];
    v160[1] = 0;
    if (v94 && atomic_fetch_add_explicit(v94, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v94, v89);
    }

    v95 = *&v159[24];
    *&v159[24] = 0;
    if (v95 && atomic_fetch_add_explicit(v95, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v95, v89);
    }

    v96 = *(&v167 + 1);
    *(&v167 + 1) = 0;
    if (v96 && atomic_fetch_add_explicit(v96, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v96, v89);
    }

    v97 = *&__src[24];
    *&__src[24] = 0;
    if (v97 && atomic_fetch_add_explicit(v97, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v97, v89);
    }

    WTF::StringBuilder::append();
    WTF::StringBuilder::append();
    if (!v137)
    {
      WTF::StringBuilder::shrinkToFit(&v137);
      WTF::StringBuilder::reifyString(&v137);
    }

    WTF::String::utf8();
    WTF::FileSystemImpl::FileHandle::write();
    v20 = *__src;
    *__src = 0;
    if (!v20)
    {
      goto LABEL_126;
    }

    if (*v20 != 1)
    {
      --*v20;
      goto LABEL_126;
    }

LABEL_169:
    WTF::fastFree(v20, v21);
LABEL_126:
    v98 = v138;
    v138 = 0;
    if (v98 && atomic_fetch_add_explicit(v98, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v98, v21);
    }

    v99 = v137;
    v137 = 0;
    if (v99 && atomic_fetch_add_explicit(v99, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v99, v21);
    }

    WebKit::NetworkCache::Entry::~Entry(v5, v21);
    bmalloc::api::tzoneFree(v100, v101);
    return;
  }

  v5 = *(a1 + 16);
  v102 = *(a1 + 32);
  v103 = *(a1 + 40);
  WTF::numberToStringAndSize();
  v105 = v104;
  v106 = 0;
  HIDWORD(v158) = v105;
  v107 = v103;
  do
  {
    ++v106;
    v12 = v107 > 9;
    v107 /= 0xAuLL;
  }

  while (v12);
  v108 = 0;
  v109 = v5;
  do
  {
    ++v108;
    v12 = v109 > 9;
    v109 /= 0xAu;
  }

  while (v12);
  v110 = 0;
  v111 = v102;
  do
  {
    ++v110;
    v12 = v111 > 9;
    v111 /= 0xAuLL;
  }

  while (v12);
  WTF::checkedSum<int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int>(30, v106, 11, v108, 14, v110, 18, v105, v142, 5);
  if (LOBYTE(v142[0]))
  {
    goto LABEL_175;
  }

  v112 = HIDWORD(v142[0]);
  v162 = v155;
  v163 = v156;
  v164 = v157;
  v165 = v158;
  *v159 = v151;
  *&v159[16] = v152;
  *v160 = v153;
  v161 = v154;
  if (!HIDWORD(v142[0]))
  {
    v136 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    v143[0] = v136;
    goto LABEL_161;
  }

  if ((v142[0] & 0x8000000000000000) != 0 || (v20 = WTF::tryFastCompactMalloc((HIDWORD(v142[0]) + 20)), (v113 = *__src) == 0))
  {
LABEL_175:
    __break(0xC471u);
    return;
  }

  **__src = 2;
  *(v113 + 4) = v112;
  *(v113 + 8) = v113 + 20;
  *(v113 + 16) = 4;
  qmemcpy((v113 + 20), "{}\n],\ntotals: {\ncapacity: ", 30);
  if (v112 <= 0x1D)
  {
    goto LABEL_168;
  }

  v114 = v112 - 30;
  v137 = v103;
  v20 = WTF::StringTypeAdapter<unsigned long long,void>::writeTo<unsigned char>(&v137, (v113 + 50), v112 - 30);
  LODWORD(v115) = 0;
  v116 = v137;
  do
  {
    v115 = (v115 + 1);
    v12 = v116 > 9;
    v116 /= 0xAuLL;
  }

  while (v12);
  if (v114 < v115)
  {
    goto LABEL_168;
  }

  v117 = v114 - v115;
  v118 = v113 + 50 + v115;
  *v118 = *",\ncount: ";
  *(v118 + 7) = 540680820;
  if (v117 <= 0xA)
  {
    goto LABEL_168;
  }

  v119 = v117 - 11;
  v120 = v118 + 11;
  v20 = WTF::writeIntegerToBufferImpl<unsigned char,unsigned int,(WTF::PositiveOrNegativeNumber)0>(v5, v118 + 11, v117 - 11);
  LODWORD(v121) = 0;
  do
  {
    v121 = (v121 + 1);
    v12 = v5 > 9;
    v5 = v5 / 0xAuLL;
  }

  while (v12);
  if (v119 < v121)
  {
    goto LABEL_168;
  }

  v122 = v119 - v121;
  v123 = (v121 + v120);
  qmemcpy(v123, ",\nbodySize: ", 14);
  if (v122 <= 0xD)
  {
    goto LABEL_168;
  }

  v124 = v122 - 14;
  v5 = (v123 + 14);
  v143[0] = v102;
  v20 = WTF::StringTypeAdapter<unsigned long long,void>::writeTo<unsigned char>(v143, v123 + 14, v122 - 14);
  LODWORD(v125) = 0;
  v126 = v143[0];
  do
  {
    v125 = (v125 + 1);
    v12 = v126 > 9;
    v126 /= 0xAuLL;
  }

  while (v12);
  if (v124 < v125)
  {
    goto LABEL_168;
  }

  v127 = v124 - v125;
  v128 = v5 + v125;
  *v128 = *",\naverageWorth: ";
  *(v128 + 16) = 8250;
  if (v127 <= 0x11)
  {
    goto LABEL_168;
  }

  v169 = v162;
  v170 = v163;
  v171 = v164;
  v172 = v165;
  *__src = *v159;
  *&__src[16] = *&v159[16];
  v167 = *v160;
  v168 = v161;
  v5 = HIDWORD(v165);
  if (HIDWORD(v165) >= 0x7D)
  {
    goto LABEL_168;
  }

  v129 = v127 - 18;
  v130 = (v128 + 18);
  if (HIDWORD(v165))
  {
    if (HIDWORD(v165) == 1)
    {
      *v130 = __src[0];
    }

    else
    {
      v20 = memcpy((v128 + 18), __src, HIDWORD(v172));
    }
  }

  if (v129 < v5)
  {
    goto LABEL_168;
  }

  v131 = &v130[v5];
  v131[4] = 10;
  *v131 = 2097839370;
  v143[0] = v113;
LABEL_161:
  WTF::String::utf8();
  v133 = v143[0];
  v143[0] = 0;
  if (v133 && atomic_fetch_add_explicit(v133, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v133, v132);
  }

  WTF::FileSystemImpl::FileHandle::write();
  WTF::FileSystemImpl::FileHandle::FileHandle(v159);
  WTF::FileSystemImpl::FileHandle::operator=();
  WTF::FileSystemImpl::FileHandle::~FileHandle(v159);
  v135 = *__src;
  *__src = 0;
  if (v135)
  {
    if (*v135 == 1)
    {
      WTF::fastFree(v135, v134);
    }

    else
    {
      --*v135;
    }
  }
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkCache::Cache::deleteDumpFile(void)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1108750;
  a1[1] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::Cache::deleteDumpFile(void)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1108750;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkCache::Cache::fetchData(BOOL,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void,WebKit::NetworkCache::Cache::TraversalEntry const*>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1108778;
  v3 = a1[4];
  if (v3)
  {
    WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,unsigned long long>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,unsigned long long,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = a1[3];
  a1[3] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[1];
  a1[1] = 0;
  if (v5)
  {
    WTF::RefCounted<WebKit::NetworkCache::Cache>::deref((v5 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::Cache::fetchData(BOOL,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void,WebKit::NetworkCache::Cache::TraversalEntry const*>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1108778;
  v3 = *(this + 4);
  if (v3)
  {
    WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,unsigned long long>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,unsigned long long,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    WTF::RefCounted<WebKit::NetworkCache::Cache>::deref((v5 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::NetworkCache::Cache::fetchData(BOOL,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void,WebKit::NetworkCache::Cache::TraversalEntry const*>::call(uint64_t a1, WTF::StringImpl *a2)
{
  v59 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = WebCore::ResourceResponseBase::url((*a2 + 80));
    v6 = *v5;
    if (*v5)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    }

    v49 = v6;
    v7 = *(v5 + 24);
    v50 = *(v5 + 8);
    v51 = v7;
    WTF::URL::protocol(&v49);
    if ((v8 & 0x100000000) != 0)
    {
      WTF::String::String();
    }

    else
    {
      WTF::String::String();
    }

    WTF::URL::host(&v49);
    if ((v9 & 0x100000000) != 0)
    {
      WTF::String::String();
    }

    else
    {
      WTF::String::String();
    }

    v10 = WTF::URL::port(&v49);
    if (v48)
    {
      atomic_fetch_add_explicit(v48, 2u, memory_order_relaxed);
    }

    if (v47)
    {
      atomic_fetch_add_explicit(v47, 2u, memory_order_relaxed);
    }

    v55 = v48;
    v56 = v47;
    v57 = v10 & 0xFFFFFF;
    v58 = 0;
    if (v48 != -1)
    {
      if (!v48 && !v47 && (v10 & 0x10000) == 0)
      {
        __break(0xC471u);
        JUMPOUT(0x19DD8D060);
      }

      v11 = *(a1 + 32);
      if (v11 || (WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,unsigned long long>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,unsigned long long,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::expand((a1 + 32), 0), (v11 = *(a1 + 32)) != 0))
      {
        v12 = *(v11 - 8);
      }

      else
      {
        v12 = 0;
      }

      v52 = -1640531527;
      v53 = 0;
      v54 = 0;
      WTF::add<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(&v52, &v55);
      v13 = WTF::SuperFastHash::hash(&v52) & v12;
      v14 = v11 + 40 * v13;
      isNull = WebCore::SecurityOriginData::isNull(v14);
      if ((isNull & 1) == 0)
      {
        v16 = 0;
        v17 = 1;
        while (!*(v14 + 24))
        {
          if (*v14 != -1)
          {
            goto LABEL_23;
          }

          v16 = v14;
LABEL_26:
          v13 = (v13 + v17) & v12;
          v14 = v11 + 40 * v13;
          isNull = WebCore::SecurityOriginData::isNull(v14);
          ++v17;
          if (isNull)
          {
            if (v16)
            {
              *(v16 + 32) = 0;
              *v16 = 0u;
              *(v16 + 16) = 0u;
              --*(*(a1 + 32) - 16);
              v14 = v16;
            }

            goto LABEL_37;
          }
        }

        if (*(v14 + 24) != 1)
        {
          mpark::throw_bad_variant_access(isNull);
        }

LABEL_23:
        if (WebCore::operator==())
        {
          goto LABEL_43;
        }

        goto LABEL_26;
      }

LABEL_37:
      WTF::GenericHashTraits<WebCore::SecurityOriginData>::assignToEmpty<WebCore::SecurityOriginData,WebCore::SecurityOriginData>(v14, &v55);
      *(v14 + 32) = 0;
      v23 = *(a1 + 32);
      if (v23)
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
          goto LABEL_43;
        }
      }

      else if (3 * v26 > 4 * v25)
      {
LABEL_43:
        if (!v58)
        {
          v27 = v56;
          v56 = 0;
          if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v27, v18);
          }

          v28 = v55;
          v55 = 0;
          if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v28, v18);
          }
        }

        v58 = -1;
        if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v47, v18);
        }

        if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v48, v18);
        }

        if (*(a1 + 16) == 1)
        {
          v29 = *a2;
          if (*(*a2 + 672) || (v30 = *(v29 + 664)) == 0)
          {
            size = *(v29 + 680);
          }

          else
          {
            size = dispatch_data_get_size(v30);
          }

          *(v14 + 32) += **(a2 + 1) + size;
        }

        result = v49;
        v49 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(result, v18);
          }
        }

        return result;
      }

      v14 = WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,unsigned long long>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,unsigned long long,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::expand((a1 + 32), v14);
      goto LABEL_43;
    }

    __break(0xC471u);
LABEL_120:
    JUMPOUT(0x19DD8D040);
  }

  v49 = 0;
  *&v50 = 0;
  v19 = *(a1 + 32);
  if (!v19)
  {
    v22 = 0;
LABEL_65:
    v33 = 0;
    LODWORD(v34) = 0;
    goto LABEL_75;
  }

  v20 = *(v19 - 12);
  if (v20)
  {
    if (v20 >= 0x5555556)
    {
      __break(0xC471u);
      goto LABEL_120;
    }

    v21 = 48 * v20;
    v22 = WTF::fastMalloc((48 * v20));
    LODWORD(v50) = v21 / 0x30;
    v49 = v22;
    v19 = *(a1 + 32);
    if (!v19)
    {
      goto LABEL_65;
    }
  }

  else
  {
    v22 = 0;
  }

  v34 = *(v19 - 4);
  v33 = v19 + 40 * v34;
  if (*(v19 - 12))
  {
    if (v34)
    {
      v35 = 40 * v34;
      while (WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,unsigned long long>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,unsigned long long,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v19))
      {
        v19 += 40;
        v35 -= 40;
        if (!v35)
        {
          v19 = v33;
          break;
        }
      }

      v36 = *(a1 + 32);
      if (!v36)
      {
        goto LABEL_76;
      }
    }

    else
    {
      v36 = v19;
    }

LABEL_79:
    v38 = v36 + 40 * *(v36 - 4);
    goto LABEL_80;
  }

LABEL_75:
  v37 = v19 + 40 * v34;
  v36 = v19;
  v19 = v33;
  v33 = v37;
  if (v36)
  {
    goto LABEL_79;
  }

LABEL_76:
  v38 = 0;
LABEL_80:
  if (v38 == v19)
  {
    goto LABEL_110;
  }

  v39 = 0;
  do
  {
    v40 = *(v19 + 24);
    if (*(v19 + 24))
    {
      if (v40 == 255)
      {
        v43 = *(v19 + 32);
        goto LABEL_109;
      }

      v41 = *v19;
      v42 = *(v19 + 8);
    }

    else
    {
      v41 = *v19;
      if (*v19)
      {
        atomic_fetch_add_explicit(v41, 2u, memory_order_relaxed);
      }

      v42 = *(v19 + 8);
      if (v42)
      {
        atomic_fetch_add_explicit(v42, 2u, memory_order_relaxed);
      }

      v2 = *(v19 + 16);
      v40 = *(v19 + 24);
    }

    v43 = *(v19 + 32);
    if (v40)
    {
      if (v40 != 255)
      {
        v44 = v22 + 48 * v39;
        *v44 = v41;
        *(v44 + 1) = v42;
LABEL_107:
        v44[24] = v40;
        goto LABEL_98;
      }

LABEL_109:
      v44 = v22 + 48 * v39;
      *v44 = 0;
      LOBYTE(v40) = -1;
      goto LABEL_107;
    }

    if (v41)
    {
      atomic_fetch_add_explicit(v41, 2u, memory_order_relaxed);
    }

    if (v42 && (atomic_fetch_add_explicit(v42, 2u, memory_order_relaxed), atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2))
    {
      WTF::StringImpl::destroy(v42, a2);
      if (v41)
      {
LABEL_94:
        if (atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v41, a2);
        }
      }
    }

    else if (v41)
    {
      goto LABEL_94;
    }

    v44 = v22 + 48 * v39;
    *v44 = v41;
    *(v44 + 1) = v42;
    *(v44 + 4) = v2;
    v44[24] = 0;
LABEL_98:
    *(v44 + 8) = 2;
    *(v44 + 5) = v43;
    do
    {
      v19 += 40;
    }

    while (v19 != v33 && WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,unsigned long long>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,unsigned long long,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v19));
    ++v39;
  }

  while (v19 != v38);
  DWORD1(v50) = v39;
LABEL_110:
  v45 = *(a1 + 24);
  *(a1 + 24) = 0;
  (*(*v45 + 16))(v45, &v49);
  (*(*v45 + 8))(v45);
  return WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v49, v46);
}

uint64_t WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,unsigned long long>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,unsigned long long,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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
  isNull = WTF::fastMalloc((40 * v5 + 16));
  v8 = isNull;
  v9 = isNull + 16;
  if (v5)
  {
    bzero((isNull + 16), 40 * v5);
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
    v28 = v3;
    while (1)
    {
      v13 = v2 + 40 * v10;
      if (*(v13 + 24))
      {
        break;
      }

      if (*v13 != -1)
      {
        goto LABEL_12;
      }

LABEL_43:
      if (++v10 == v12)
      {
        goto LABEL_48;
      }
    }

    if (*(v13 + 24) != 1)
    {
      mpark::throw_bad_variant_access(isNull);
    }

LABEL_12:
    isNull = WebCore::SecurityOriginData::isNull((v2 + 40 * v10));
    if (isNull)
    {
      if (!*(v13 + 24))
      {
        v14 = *(v13 + 8);
        *(v13 + 8) = 0;
        if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v14, v7);
        }

        isNull = *v13;
        *v13 = 0;
        if (isNull)
        {
          if (atomic_fetch_add_explicit(isNull, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            isNull = WTF::StringImpl::destroy(isNull, v7);
          }
        }
      }

      *(v13 + 24) = -1;
    }

    else
    {
      v15 = v2;
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
      WTF::add<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(&v31, v13);
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
      v2 = v15;
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
          WTF::StringImpl::destroy(v26, v7);
        }

        isNull = *v13;
        *v13 = 0;
        if (isNull && atomic_fetch_add_explicit(isNull, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          isNull = WTF::StringImpl::destroy(isNull, v7);
        }
      }

      *(v13 + 24) = -1;
      if (v13 == a2)
      {
        v11 = v21;
      }

      v12 = v28;
    }

    goto LABEL_43;
  }

  v11 = 0;
  result = 0;
  if (v2)
  {
LABEL_48:
    WTF::fastFree((v2 - 16), v7);
    return v11;
  }

  return result;
}

BOOL WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,unsigned long long>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,unsigned long long,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::isEmptyOrDeletedBucket(WebCore::SecurityOriginData *a1)
{
  isNull = WebCore::SecurityOriginData::isNull(a1);
  if (isNull)
  {
    return 1;
  }

  if (!*(a1 + 24))
  {
    return *a1 == -1;
  }

  if (*(a1 + 24) != 1)
  {
    mpark::throw_bad_variant_access(isNull);
  }

  return 0;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkCache::Cache::deleteData(WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::NetworkCache::Cache::TraversalEntry const*>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11087A0;
  WTF::Vector<WebKit::NetworkCache::Key,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 5), a2);
  v4 = a1[4];
  a1[4] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v5, v3);
  }

  v6 = a1[2];
  a1[2] = 0;
  if (v6)
  {
    WTF::RefCounted<WebKit::NetworkCache::Cache>::deref((v6 + 8), v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::Cache::deleteData(WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::NetworkCache::Cache::TraversalEntry const*>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11087A0;
  WTF::Vector<WebKit::NetworkCache::Key,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 40, a2);
  v4 = *(a1 + 4);
  *(a1 + 4) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 3);
  if (v5)
  {
    WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v5, v3);
  }

  v6 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v6)
  {
    WTF::RefCounted<WebKit::NetworkCache::Cache>::deref((v6 + 8), v3);
  }

  return WTF::fastFree(a1, v3);
}

uint64_t *WTF::Detail::CallableWrapper<WebKit::NetworkCache::Cache::deleteData(WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::NetworkCache::Cache::TraversalEntry const*>::call(uint64_t a1, const WebKit::NetworkCache::Key **a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = WebCore::ResourceResponseBase::url((*a2 + 80));
    WebCore::SecurityOriginData::fromURLWithoutStrictOpaqueness(&v13, v4, v5);
    result = (a1 + 24);
    if (*(a1 + 24))
    {
      result = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::SecurityOriginData>,WTF::DefaultHash<WebCore::SecurityOriginData>>,(WTF::ShouldValidateKey)1,WebCore::SecurityOriginData>(result, &v13);
      if (result)
      {
        v8 = *a2;
        v9 = *(a1 + 52);
        if (v9 == *(a1 + 48))
        {
          result = WTF::Vector<WebKit::NetworkCache::Key,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::NetworkCache::Key const&>(a1 + 40, v8);
        }

        else
        {
          result = WebKit::NetworkCache::Key::Key((*(a1 + 40) + 72 * v9), v8);
          ++*(a1 + 52);
        }
      }
    }

    if (!v15)
    {
      v12 = v14;
      v14 = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v6);
      }

      result = v13;
      v13 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v6);
        }
      }
    }
  }

  else
  {
    v10 = *(a1 + 8);
    std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 32), &v13);
    WebKit::NetworkCache::Cache::remove(v10, (a1 + 40), &v13, v11);
    result = v13;
    v13 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkCache::Cache::deleteDataForRegistrableDomains(WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_0,void,WebKit::NetworkCache::Cache::TraversalEntry const*>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11087C8;
  v3 = a1[7];
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  WTF::Vector<WebKit::NetworkCache::Key,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 5), a2);
  v5 = a1[4];
  a1[4] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = a1[3];
  if (v6)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v6, v4);
  }

  v7 = a1[2];
  a1[2] = 0;
  if (v7)
  {
    WTF::RefCounted<WebKit::NetworkCache::Cache>::deref((v7 + 8), v4);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::Cache::deleteDataForRegistrableDomains(WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_0,void,WebKit::NetworkCache::Cache::TraversalEntry const*>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11087C8;
  v3 = *(a1 + 7);
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  WTF::Vector<WebKit::NetworkCache::Key,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 40, a2);
  v5 = *(a1 + 4);
  *(a1 + 4) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 3);
  if (v6)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v6, v4);
  }

  v7 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v7)
  {
    WTF::RefCounted<WebKit::NetworkCache::Cache>::deref((v7 + 8), v4);
  }

  return WTF::fastFree(a1, v4);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::NetworkCache::Cache::deleteDataForRegistrableDomains(WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_0,void,WebKit::NetworkCache::Cache::TraversalEntry const*>::call(uint64_t a1, const WebKit::NetworkCache::Key **a2)
{
  if (a2)
  {
    v4 = WebCore::ResourceResponseBase::url((*a2 + 80));
    WebCore::RegistrableDomain::RegistrableDomain(&v24, v4);
    if (*(a1 + 24))
    {
      if (WTF::equal(v24, 0, v6) || (result = v24, v24 == -1))
      {
        __break(0xC471u);
        JUMPOUT(0x19DD8D96CLL);
      }

      v8 = *(a1 + 24);
      if (!v8)
      {
        goto LABEL_19;
      }

      v9 = *(v8 - 8);
      v10 = WTF::ASCIICaseInsensitiveHash::hash(v24, v5) & v9;
      v11 = (v8 + 8 * v10);
      if ((WTF::equal(*v11, 0, v12) & 1) == 0)
      {
        v14 = 1;
        while (*v11 == -1 || (WTF::equalIgnoringASCIICase(*v11, v24, v13) & 1) == 0)
        {
          v10 = (v10 + v14) & v9;
          v11 = (v8 + 8 * v10);
          ++v14;
          if (WTF::equal(*v11, 0, v13))
          {
            goto LABEL_18;
          }
        }

        v15 = *a2;
        v16 = *(a1 + 52);
        if (v16 == *(a1 + 48))
        {
          WTF::Vector<WebKit::NetworkCache::Key,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::NetworkCache::Key const&>(a1 + 40, v15);
        }

        else
        {
          WebKit::NetworkCache::Key::Key((*(a1 + 40) + 72 * v16), v15);
          ++*(a1 + 52);
        }

        WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>((a1 + 56), &v24, v17, v23);
      }
    }

LABEL_18:
    result = v24;
LABEL_19:
    v24 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v5);
      }
    }

    return result;
  }

  v18 = *(a1 + 8);
  v19 = *(a1 + 32);
  *(a1 + 32) = 0;
  v20 = *(a1 + 56);
  *(a1 + 56) = 0;
  v21 = WTF::fastMalloc(0x18);
  *v21 = &unk_1F11087F0;
  v21[1] = v19;
  v21[2] = v20;
  v23[0] = v21;
  WebKit::NetworkCache::Cache::remove(v18, (a1 + 40), v23, v22);
  result = v23[0];
  if (v23[0])
  {
    return (*(*v23[0] + 8))(v23[0]);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit12NetworkCache5Cache31deleteDataForRegistrableDomainsERKNS_6VectorIN7WebCore17RegistrableDomainELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONS_7HashSetIS7_NS_11DefaultHashIS7_EENS_10HashTraitsIS7_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1EEEEEEEN3__0clIKNS4_14TraversalEntryEEEDaPT_EUlvE_vJEED1Ev(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11087F0;
  v3 = a1[2];
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit12NetworkCache5Cache31deleteDataForRegistrableDomainsERKNS_6VectorIN7WebCore17RegistrableDomainELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONS_7HashSetIS7_NS_11DefaultHashIS7_EENS_10HashTraitsIS7_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1EEEEEEEN3__0clIKNS4_14TraversalEntryEEEDaPT_EUlvE_vJEED0Ev(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F11087F0;
  v3 = *(this + 2);
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit12NetworkCache5Cache31deleteDataForRegistrableDomainsERKNS_6VectorIN7WebCore17RegistrableDomainELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONS_7HashSetIS7_NS_11DefaultHashIS7_EENS_10HashTraitsIS7_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1EEEEEEEN3__0clIKNS4_14TraversalEntryEEEDaPT_EUlvE_vJEE4callEv(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1, a1 + 16);
  v2 = *(*v1 + 8);

  return v2(v1);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::NetworkCache::BlobStorage::synchronize(void)::$_0,void,WTF::String const&,WebKit::NetworkCache::DirectoryEntryType>::call(WTF::StringImpl *result, uint64_t a2, int a3)
{
  if (a3 == 1)
  {
    v12[3] = v3;
    v12[4] = v4;
    v5 = *(result + 1);
    WTF::FileSystemImpl::pathByAppendingComponent();
    v7 = WTF::FileSystemImpl::hardLinkCount(v12, v6);
    if ((v8 & 1) != 0 && v7 == 1)
    {
      WTF::FileSystemImpl::deleteFile(v12, v8);
    }

    else
    {
      v10 = WTF::FileSystemImpl::fileSize(v12, v8);
      if (v9)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      atomic_fetch_add((v5 + 16), v11);
    }

    result = v12[0];
    v12[0] = 0;
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

void std::__optional_storage_base<WebKit::NetworkCache::Key,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebKit::NetworkCache::Key,false>>(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 72) == *(a2 + 72))
  {
    if (*(a1 + 72))
    {

      WebKit::NetworkCache::Key::operator=(a1, a2);
    }
  }

  else if (*(a1 + 72))
  {
    WebKit::NetworkCache::Key::~Key(a1, a2);
    *(v9 + 72) = 0;
  }

  else
  {
    v3 = *a2;
    *a2 = 0;
    *a1 = v3;
    v4 = *(a2 + 1);
    *(a2 + 1) = 0;
    *(a1 + 8) = v4;
    v5 = *(a2 + 2);
    *(a2 + 2) = 0;
    *(a1 + 16) = v5;
    v6 = *(a2 + 3);
    *(a2 + 3) = 0;
    *(a1 + 24) = v6;
    v7 = *(a2 + 2);
    v8 = *(a2 + 3);
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
    *(a1 + 72) = 1;
  }
}

uint64_t WebKit::NetworkCache::Key::operator=(uint64_t a1, WTF::StringImpl *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(a2 + 1);
  *(a2 + 1) = 0;
  v7 = *(a1 + 8);
  *(a1 + 8) = v6;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(a2 + 2);
  *(a2 + 2) = 0;
  v9 = *(a1 + 16);
  *(a1 + 16) = v8;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, a2);
  }

  v10 = *(a2 + 3);
  *(a2 + 3) = 0;
  v11 = *(a1 + 24);
  *(a1 + 24) = v10;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, a2);
  }

  v12 = *(a2 + 2);
  v13 = *(a2 + 3);
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 32) = v12;
  *(a1 + 48) = v13;
  return a1;
}

uint64_t WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t a2)
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

  if (!(v3 >> 28))
  {
    v5 = WTF::fastMalloc((16 * v3));
    *(v2 + 8) = v3;
    *v2 = v5;
    v6 = *(a2 + 12);
    if (v6)
    {
      v7 = *a2;
      v8 = *a2 + 16 * v6;
      do
      {
        v9 = *v7;
        if (*v7)
        {
          atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
        }

        *v5 = v9;
        v10 = v7[1];
        if (v10)
        {
          atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
        }

        v5[1] = v10;
        v5 += 2;
        v7 += 2;
      }

      while (v7 != v8);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

uint64_t WTF::Persistence::VectorCoder<false,std::pair<WTF::String,WTF::String>,0ul>::encodeForPersistence<WTF::Persistence::Encoder>(uint64_t a1, uint64_t a2)
{
  result = WTF::Persistence::Encoder::operator<<();
  if (*(a2 + 12))
  {
    v4 = 0;
    v5 = 8;
    do
    {
      WTF::Persistence::Coder<WTF::String>::encodeForPersistence();
      result = WTF::Persistence::Coder<WTF::String>::encodeForPersistence();
      ++v4;
      v5 += 16;
    }

    while (v4 < *(a2 + 12));
  }

  return result;
}

uint64_t WTF::Persistence::Coder<std::optional<WebCore::ResourceRequest>>::encodeForPersistence<WTF::Persistence::Encoder>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 200))
  {
    WTF::Persistence::Encoder::operator<<();
    if (*(a2 + 200))
    {

      return WTF::Persistence::Coder<WebCore::ResourceRequest>::encodeForPersistence();
    }

    else
    {
      v4 = std::__throw_bad_optional_access[abi:sn200100]();
      return std::__optional_storage_base<WebCore::ResourceResponse,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::ResourceResponse,false>>(v4);
    }
  }

  else
  {

    return WTF::Persistence::Encoder::operator<<();
  }
}

void std::__optional_storage_base<WebCore::ResourceResponse,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::ResourceResponse,false>>(WebCore::ResourceResponse *this, uint64_t a2)
{
  if (*(this + 264) == *(a2 + 264))
  {
    if (*(this + 264))
    {

      WebCore::ResourceResponse::operator=(this, a2);
    }
  }

  else if (*(this + 264))
  {
    WebCore::ResourceResponse::~ResourceResponse(this, a2);
    *(this + 264) = 0;
  }

  else
  {
    WTF::URL::URL(this, a2);
    v4 = *(a2 + 40);
    v5 = *(a2 + 48);
    *(a2 + 40) = 0;
    *(this + 5) = v4;
    *(this + 6) = v5;
    v6 = *(a2 + 56);
    *(a2 + 56) = 0;
    *(this + 7) = v6;
    v7 = *(a2 + 64);
    *(a2 + 64) = 0;
    *(this + 8) = v7;
    v8 = *(a2 + 72);
    *(a2 + 72) = 0;
    *(this + 9) = v8;
    *(this + 11) = 0;
    *(v9 + 80) = 0;
    WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v9 + 80, (a2 + 80));
    *(this + 12) = 0;
    *(this + 13) = 0;
    WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(this + 96, (a2 + 96));
    v10 = *(a2 + 112);
    *(a2 + 112) = 0;
    *(this + 14) = v10;
    *(this + 120) = 0;
    *(this + 128) = 0;
    if (*(a2 + 128) == 1)
    {
      v18 = *(a2 + 120);
      *(a2 + 120) = 0;
      *(this + 15) = v18;
      *(this + 128) = 1;
    }

    v11 = *(a2 + 136);
    *(this + 138) = *(a2 + 138);
    *(this + 68) = v11;
    v12 = *(a2 + 144);
    *(a2 + 144) = 0;
    *(this + 18) = v12;
    v13 = *(a2 + 152);
    *(this + 168) = *(a2 + 168);
    *(this + 152) = v13;
    v14 = *(a2 + 184);
    v15 = *(a2 + 200);
    v16 = *(a2 + 216);
    *(this + 227) = *(a2 + 227);
    *(this + 216) = v16;
    *(this + 200) = v15;
    *(this + 184) = v14;
    v17 = *(a2 + 248);
    *(a2 + 248) = 0;
    *(this + 31) = v17;
    *(this + 256) = *(a2 + 256);
    *(this + 264) = 1;
  }
}

uint64_t WTF::Persistence::Decoder::operator>><WebCore::ResourceRequest,(void *)0>(uint64_t a1, WebCore::ResourceRequest *a2)
{
  WTF::Persistence::Coder<WebCore::ResourceRequest>::decodeForPersistence();
  std::__optional_storage_base<WebCore::ResourceRequest,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::ResourceRequest,false>>(a2, v5);
  if (v5[200] == 1)
  {
    WebCore::ResourceRequest::~ResourceRequest(v5);
  }

  return a1;
}

unsigned int *WebKit::NetworkProcessProxy::xpcEventHandler@<X0>(WebKit::NetworkProcessProxy *this@<X0>, uint64_t *a2@<X8>)
{
  v4 = WTF::fastMalloc(0x18);
  *(v4 + 8) = 1;
  *v4 = &unk_1F11088E0;
  result = WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 2, this);
  v6 = *(this + 1);
  atomic_fetch_add(v6, 1u);
  *(v4 + 16) = v6;
  *a2 = v4;
  return result;
}

BOOL WebKit::NetworkProcessProxy::XPCEventHandler::handleXPCEvent(uint64_t a1, id a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return 0;
  }

  atomic_fetch_add((v3 + 16), 1u);
  if (a2 && object_getClass(a2) != MEMORY[0x1E69E9E98] && (string = xpc_dictionary_get_string(a2, "message-name")) != 0 && (strlen(string), WTF::String::fromUTF8(), v22))
  {
    v7 = *(v22 + 1);
    v8 = v7 != 0;
    if (v7 && MEMORY[0x19EB01EF0]())
    {
      WTF::OSObjectPtr<NSObject  {objcproto13OS_xpc_object}*>::operator=((v3 + 520), a2);
      WebKit::WebProcessPool::allProcessPools(&v20);
      if (v21)
      {
        v10 = v20;
        v11 = v20 + 8 * v21;
        do
        {
          v12 = *(*v10 + 84);
          if (v12)
          {
            v13 = *(*v10 + 72);
            v14 = 8 * v12;
            do
            {
              v15 = *v13;
              v16 = (*v13 + 16);
              atomic_fetch_add(v16, 1u);
              WebKit::NetworkProcessProxy::sendXPCEndpointToProcess(v3, v15);
              WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v16);
              ++v13;
              v14 -= 8;
            }

            while (v14);
          }

          v10 += 8;
        }

        while (v10 != v11);
      }

      WTF::Vector<WTF::Ref<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v20, v9);
      {
        if (WebKit::singleton(void)::singleton)
        {
          v6 = *(WebKit::singleton(void)::singleton + 8);
          if (v6)
          {
            v17 = v6 + 4;
            atomic_fetch_add(v6 + 4, 1u);
            WebKit::NetworkProcessProxy::sendXPCEndpointToProcess(v3, v6);
            WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v17);
          }
        }
      }

      else
      {
        WebKit::singleton(void)::singleton = 0;
      }
    }

    v18 = v22;
    v22 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v6);
    }
  }

  else
  {
    v8 = 0;
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v3 + 16));
  return v8;
}

void sub_19DD8E3C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, WTF::StringImpl *a12)
{
  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v13);
  if (a12)
  {
    if (atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a12, v15);
    }
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v12);
  _Unwind_Resume(a1);
}

uint64_t WebKit::NetworkProcessProxy::removeBackgroundStateObservers(WebKit::NetworkProcessProxy *this)
{
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = *(this + 72);

  return [v2 removeObserver:v3];
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetBackupExclusionPeriodForTesting,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, double **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 669;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v25 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v12, *a2[1]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F1108B88;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v23[0] = v14;
    v23[1] = IdentifierInternal;
    v24 = 1;
    v17 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v25, a5, v23, a6);
    if (v24 == 1)
    {
      v18 = v23[0];
      v23[0] = 0;
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }
    }

    v19 = v25;
    v25 = 0;
    if (v19)
    {
      IPC::Encoder::~Encoder(v19, v16);
      bmalloc::api::tzoneFree(v21, v22);
    }

    if (v17)
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

void sub_19DD8E620(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v13, v14);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::NetworkProcessProxy::getPaymentCoordinatorEmbeddingUserAgent(uint64_t a1, uint64_t a2, WTF::RefCountedBase *a3)
{
  WebKit::WebProcessProxy::webPage(a2, &v9);
  v4 = v9;
  if (v9)
  {
    WTF::CompletionHandler<void ()(WTF::String const&)>::operator()(a3, v9 + 440);
    v5 = *(v4 + 8);

    CFRelease(v5);
  }

  else
  {
    WebCore::standardUserAgentWithApplicationName();
    WTF::CompletionHandler<void ()(WTF::String const&)>::operator()(a3, &v8);
    v7 = v8;
    v8 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v6);
    }
  }
}

void sub_19DD8E7B4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11)
{
  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
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

uint64_t WebKit::RemoteAcceleratedEffectStack::create@<X0>(void *a1@<X1>, uint64_t *a2@<X8>, float a3@<S0>, float a4@<S1>, float a5@<S2>, float a6@<S3>, double a7@<D4>)
{
  v13 = WebKit::RemoteAcceleratedEffectStack::operator new(0x148, a1);
  result = WebCore::AcceleratedEffectStack::AcceleratedEffectStack(v13);
  *v13 = &unk_1F1108908;
  *(v13 + 296) = 0;
  *(v13 + 300) = a3;
  *(v13 + 304) = a4;
  *(v13 + 308) = a5;
  *(v13 + 312) = a6;
  *(v13 + 320) = a7;
  *a2 = v13;
  return result;
}

uint64_t WebKit::RemoteAcceleratedEffectStack::operator new(WebKit::RemoteAcceleratedEffectStack *this, void *a2)
{
  if (this == 328 && WebKit::RemoteAcceleratedEffectStack::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteAcceleratedEffectStack::s_heapRef, a2);
  }

  else
  {
    return WebKit::RemoteAcceleratedEffectStack::operatorNewSlow(this);
  }
}

uint64_t WebKit::RemoteAcceleratedEffectStack::setEffects(uint64_t a1)
{
  result = WebCore::AcceleratedEffectStack::setEffects();
  v3 = 280;
  if (!*(a1 + 292))
  {
    v3 = 264;
  }

  v4 = (a1 + v3);
  v5 = *(a1 + v3 + 12);
  if (!v5)
  {
    return result;
  }

  LOBYTE(v6) = 0;
  LOBYTE(v7) = 0;
  LOBYTE(v8) = 0;
  v9 = *v4;
  v10 = 8 * v5;
  do
  {
    v11 = *v9;
    if (v6)
    {
      v6 = 1;
      if ((v7 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v6 = (*(v11 + 216) & 0x1800) != 0;
      if ((v7 & 1) == 0)
      {
LABEL_7:
        v7 = (*(v11 + 216) >> 1) & 1;
        if (v8)
        {
          goto LABEL_11;
        }

        goto LABEL_8;
      }
    }

    v7 = 1;
    if (v8)
    {
LABEL_11:
      v8 = 1;
      goto LABEL_12;
    }

LABEL_8:
    v8 = (*(v11 + 216) & 0x7FC) != 0;
LABEL_12:
    if ((v6 & v7) == 1 && v8)
    {
      v13 = *(a1 + 296) | 0xA;
LABEL_19:
      *(a1 + 296) = v13 | 4;
      return result;
    }

    ++v9;
    v10 -= 8;
  }

  while (v10);
  if (v6)
  {
    v12 = *(a1 + 296) | 8;
    *(a1 + 296) = v12;
    if ((v7 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_23:
    v13 = v12 | 2;
    *(a1 + 296) = v12 | 2;
    if (v8)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v7)
    {
      v12 = *(a1 + 296);
      goto LABEL_23;
    }

LABEL_25:
    if (v8)
    {
      v13 = *(a1 + 296);
      goto LABEL_19;
    }
  }

  return result;
}

void WebKit::RemoteAcceleratedEffectStack::applyEffectsFromMainThread(uint64_t a1, void *a2, double a3)
{
  WebKit::RemoteAcceleratedEffectStack::computeValues(a1, v10, a3);
  v7 = *(a1 + 296);
  if ((v7 & 8) != 0)
  {
    WebCore::PlatformCAFilters::setFiltersOnLayer();
    v7 = *(a1 + 296);
  }

  if ((v7 & 2) != 0)
  {
    LODWORD(v6) = v10[0];
    [a2 setOpacity:v6];
    v7 = *(a1 + 296);
  }

  if ((v7 & 4) != 0)
  {
    WebCore::AcceleratedEffectValues::computedTransformationMatrix(v9, v10, (a1 + 300));
    WebCore::TransformationMatrix::operator CATransform3D();
    [a2 setTransform:v8];
  }

  WebCore::AcceleratedEffectValues::~AcceleratedEffectValues(v10, v5);
}

uint64_t WebKit::RemoteAcceleratedEffectStack::computeValues@<X0>(uint64_t a1@<X0>, WebCore::AcceleratedEffectValues *a2@<X8>, double a3@<D0>)
{
  result = WebCore::AcceleratedEffectValues::AcceleratedEffectValues(a2, (a1 + 16));
  v12 = a3 - *(a1 + 320);
  v6 = 280;
  if (!*(a1 + 292))
  {
    v6 = 264;
  }

  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 12);
  if (v8)
  {
    v9 = *v7;
    v10 = 8 * v8;
    do
    {
      WebCore::WebAnimationTime::WebAnimationTime(&v11, &v12);
      result = WebCore::AcceleratedEffect::apply();
      v9 += 8;
      v10 -= 8;
    }

    while (v10);
  }

  return result;
}

void WebKit::RemoteLayerTreeDrawingAreaProxy::~RemoteLayerTreeDrawingAreaProxy(WebKit::RemoteLayerTreeDrawingAreaProxy *this)
{
  *this = &unk_1F1108930;
  *(this + 2) = &unk_1F1108AF8;
  v2 = *(this + 27);
  *(this + 27) = 0;
  if (v2)
  {
  }

  v3 = *(this + 26);
  *(this + 26) = 0;
  if (v3)
  {
  }

  std::unique_ptr<WebKit::RemoteLayerTreeHost>::reset[abi:sn200100](this + 25, 0);
  v5 = *(this + 21);
  if (v5)
  {
    WTF::fastFree((v5 - 16), v4);
  }

  std::unique_ptr<WebKit::RemoteLayerTreeHost>::reset[abi:sn200100](this + 10, 0);
  if (*(this + 18) == 1)
  {

    WebKit::DrawingAreaProxy::~DrawingAreaProxy(this, v6);
  }

  else
  {
    __break(0xC471u);
  }
}

_DWORD *WebKit::RemoteLayerTreeDrawingAreaProxy::addRemotePageDrawingAreaProxy(_DWORD *this, WebKit::RemotePageDrawingAreaProxy *a2)
{
  v2 = *(*(a2 + 7) + 120);
  v19 = 0uLL;
  HIBYTE(v19) = 0;
  v18 = 0uLL;
  HIBYTE(v18) = 0;
  if (v2 == -1 || !v2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD8EEA4);
  }

  v3 = this;
  v4 = *(this + 21);
  if (!v4)
  {
    this = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(this + 21);
    v4 = *(v3 + 21);
  }

  v5 = *(v4 - 8);
  v6 = (v2 + ~(v2 << 32)) ^ ((v2 + ~(v2 << 32)) >> 22);
  v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
  v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
  v9 = v5 & ((v8 >> 31) ^ v8);
  v10 = (v4 + 80 * v9);
  v11 = *v10;
  if (*v10)
  {
    v12 = 0;
    v13 = 1;
    while (v11 != v2)
    {
      if (v11 == -1)
      {
        v12 = v10;
      }

      v9 = (v9 + v13) & v5;
      v10 = (v4 + 80 * v9);
      v11 = *v10;
      ++v13;
      if (!*v10)
      {
        if (v12)
        {
          *(v12 + 2) = 0u;
          *(v12 + 3) = 0u;
          *v12 = 0u;
          *(v12 + 1) = 0u;
          *(v12 + 2) = 3;
          v12[8] = 0;
          v12[9] = 0;
          --*(*(v3 + 21) - 16);
          v10 = v12;
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    *v10 = v2;
    *(v10 + 2) = 3;
    *(v10 + 7) = 0;
    *(v10 + 12) = 0uLL;
    *(v10 + 32) = 0;
    *(v10 + 33) = v19;
    v10[6] = 0;
    *(v10 + 56) = 0;
    *(v10 + 57) = v18;
    v10[9] = 0;
    v14 = *(v3 + 21);
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
        return this;
      }
    }

    else if (3 * v17 > 4 * v16)
    {
      return this;
    }

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v3 + 21);
  }

  return this;
}

uint64_t *WebKit::RemoteLayerTreeDrawingAreaProxy::removeRemotePageDrawingAreaProxy(WebKit::RemoteLayerTreeDrawingAreaProxy *this, WebKit::RemotePageDrawingAreaProxy *a2)
{
  v4 = *(this + 21);
  result = (this + 168);
  v3 = v4;
  if (v4)
  {
    v5 = *(*(a2 + 7) + 120);
    if (v5 == -1 || !v5)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD8EFDCLL);
    }

    v6 = *(v3 - 8);
    v7 = (v5 + ~(v5 << 32)) ^ ((v5 + ~(v5 << 32)) >> 22);
    v8 = 9 * ((v7 + ~(v7 << 13)) ^ ((v7 + ~(v7 << 13)) >> 8));
    v9 = (v8 ^ (v8 >> 15)) + ~((v8 ^ (v8 >> 15)) << 27);
    v10 = v6 & ((v9 >> 31) ^ v9);
    v11 = (v3 + 80 * v10);
    v12 = *v11;
    if (*v11 != v5)
    {
      v13 = 1;
      while (v12)
      {
        v10 = (v10 + v13) & v6;
        v11 = (v3 + 80 * v10);
        v12 = *v11;
        ++v13;
        if (*v11 == v5)
        {
          goto LABEL_10;
        }
      }

      v11 = (v3 + 80 * *(v3 - 4));
    }

LABEL_10:
    v14 = *(v3 - 4);
    if ((v3 + 80 * v14) != v11)
    {
      *v11 = -1;
      v15 = vadd_s32(*(v3 - 16), 0xFFFFFFFF00000001);
      *(v3 - 16) = v15;
      if (6 * v15.i32[1] < v14 && v14 >= 9)
      {
        return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(result, v14 >> 1);
      }
    }
  }

  return result;
}

unsigned int *WebKit::RemoteLayerTreeDrawingAreaProxy::detachRemoteLayerTreeHost@<X0>(WebKit::RemoteLayerTreeDrawingAreaProxy *this@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = *(this + 10);
  result = *v5;
  *v5 = 0;
  if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result);
    result = WTF::fastFree(result, a2);
  }

  v7 = *(this + 10);
  *(this + 10) = 0;
  *a3 = v7;
  return result;
}

void WebKit::RemoteLayerTreeDrawingAreaProxy::sizeDidChange(WebKit::RemoteLayerTreeDrawingAreaProxy *this)
{
  v1 = *(this + 5);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      if (*(v2 + 849) & 1) == 0 && (*(v2 + 848))
      {
        v4 = *(v2 + 328);
        if (v4)
        {
          ++*(v4 + 16);
          WebCore::ScrollingTree::viewSizeDidChange(*(v4 + 32));
          v5 = *(v4 + 16);
          if (!v5)
          {
            __break(0xC471u);
            return;
          }

          *(v4 + 16) = v5 - 1;
        }

        if ((*(this + 88) & 1) == 0)
        {
          WebKit::RemoteLayerTreeDrawingAreaProxy::sendUpdateGeometry(this);
        }
      }

      v6 = *(v2 - 8);

      CFRelease(v6);
    }
  }
}

void WebKit::RemoteLayerTreeDrawingAreaProxy::sendUpdateGeometry(WebKit::RemoteLayerTreeDrawingAreaProxy *this)
{
  v1 = *(this + 5);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      *(this + 23) = *(*(v2 + 16) + 984);
      *(this + 24) = *(*(v2 + 16) + 1956);
      *(this + 22) = *(this + 7);
      (*(*this + 416))(this);
      *(this + 88) = 1;
      v16 = 0;
      v17 = (this + 56);
      v18[0] = 0;
      v19 = &v16;
      WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 2, this);
      v4 = this + 16;
      v5 = *(this + 1);
      if (v5)
      {
        atomic_fetch_add(v5, 1u);
      }

      v6 = (*(*v4 + 56))(v4);
      v8 = IPC::Encoder::operator new(0x238, v7);
      *v8 = 32;
      *(v8 + 2) = 0;
      *(v8 + 3) = 0;
      *(v8 + 1) = v6;
      *(v8 + 68) = 0;
      *(v8 + 70) = 0;
      *(v8 + 69) = 0;
      IPC::Encoder::encodeHeader(v8);
      v21 = v8;
      IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(v8, v17);
      IPC::Encoder::operator<<<BOOL &>(v8, v18);
      IPC::Encoder::addAttachment(v8, v19);
      v9 = WTF::fastMalloc(0x10);
      *v9 = &unk_1F1108C00;
      v9[1] = v5;
      if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
      {
        __break(0xC471u);
      }

      else
      {
        IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
        v20[0] = v9;
        v20[1] = IdentifierInternal;
        (*(*v4 + 40))(v4, &v21, v20, 0);
        v12 = v20[0];
        v20[0] = 0;
        if (v12)
        {
          (*(*v12 + 8))(v12);
        }

        v13 = v21;
        v21 = 0;
        if (v13)
        {
          IPC::Encoder::~Encoder(v13, v11);
          bmalloc::api::tzoneFree(v14, v15);
        }

        WTF::MachSendRight::~MachSendRight(&v16);
        CFRelease(*(v2 - 8));
      }
    }
  }
}

void sub_19DD8F3A4(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, IPC::Encoder *a17)
{
  v19 = a15;
  a15 = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = a17;
  a17 = 0;
  if (v20)
  {
    IPC::Encoder::~Encoder(v20, a2);
    bmalloc::api::tzoneFree(v21, v22);
  }

  WTF::MachSendRight::~MachSendRight(&a11);
  CFRelease(*(v17 - 8));
  _Unwind_Resume(a1);
}

uint64_t WebKit::RemoteLayerTreeDrawingAreaProxy::remotePageProcessDidTerminate(uint64_t result, uint64_t a2)
{
  if (!*(result + 80))
  {
    return result;
  }

  v2 = result;
  v3 = *(result + 40);
  if (!v3)
  {
    return result;
  }

  v4 = *(v3 + 8);
  if (!v4)
  {
    return result;
  }

  v5 = *(v4 + 328);
  if (!v5)
  {
    return result;
  }

  ++v5[4];
  (*(*v5 + 144))(v5);
  v7 = *(v2 + 80);
  v8 = v7 + 5;
  v9 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( v7[5],  a2);
  v10 = v7[5];
  if (v10)
  {
    v10 += 2 * *(v10 - 1);
  }

  if (v10 == v9)
  {
    v27 = 0;
  }

  else
  {
    v11 = v9[1];
    v9[1] = 0;
    v27 = v11;
    if (*v8)
    {
      v12 = *v8 + 16 * *(*v8 - 4);
      if (v12 == v9)
      {
        goto LABEL_16;
      }

LABEL_14:
      if (v12 != v9)
      {
        WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove( v7 + 5,  v9);
      }

      goto LABEL_16;
    }

    if (v9)
    {
      v12 = 0;
      goto LABEL_14;
    }
  }

LABEL_16:
  v13 = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::begin(&v27);
  v15 = v13;
  v16 = v14;
  v17 = v27;
  if (v27)
  {
    v18 = (v27 + 16 * *(v27 - 4));
  }

  else
  {
    v18 = 0;
  }

  if (v18 != v13)
  {
    do
    {
      v19 = *v15;
      v20 = v15[1];
      v25[0] = *v15;
      v25[1] = v20;
      v26 = 1;
      v21 = WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v7 + 2, v25);
      if (v21)
      {
        v22 = (v21 + 8);
        ++*(v21 + 8);
        [*(v21 + 56) removeFromSuperview];
        WTF::RefCounted<WebKit::RemoteLayerTreeNode>::deref(v22);
      }

      WebKit::RemoteLayerTreeHost::layerWillBeRemoved(v7, a2, v19, v20);
      do
      {
        v15 += 2;
        if (v15 == v16)
        {
          break;
        }
      }

      while (*v15 == 0 || v15[1] == -1);
    }

    while (v15 != v18);
    v17 = v27;
  }

  if (v17)
  {
    WTF::fastFree((v17 - 16), v14);
  }

  result = (*(*v5 + 152))(v5);
  v24 = v5[4];
  if (v24)
  {
    v5[4] = v24 - 1;
  }

  else
  {
    result = 290;
    __break(0xC471u);
  }

  return result;
}

void sub_19DD8F6C8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v13)
  {
    WTF::fastFree((v13 - 16), a2);
  }

  v15 = *(v12 + 16);
  if (v15)
  {
    *(v12 + 16) = v15 - 1;
    _Unwind_Resume(exception_object);
  }

  __break(0xC471u);
}

uint64_t WebKit::RemoteLayerTreeDrawingAreaProxy::viewWillStartLiveResize(uint64_t this)
{
  v1 = *(this + 40);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      v3 = *(v2 + 328);
      if (v3)
      {
        ++*(v3 + 16);
        this = WebCore::ScrollingTree::viewWillStartLiveResize(*(v3 + 32));
        v4 = *(v3 + 16);
        if (v4)
        {
          *(v3 + 16) = v4 - 1;
        }

        else
        {
          this = 290;
          __break(0xC471u);
        }
      }
    }
  }

  return this;
}

uint64_t WebKit::RemoteLayerTreeDrawingAreaProxy::viewWillEndLiveResize(uint64_t this)
{
  v1 = *(this + 40);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      v3 = *(v2 + 328);
      if (v3)
      {
        ++*(v3 + 16);
        this = WebCore::ScrollingTree::viewWillEndLiveResize(*(v3 + 32));
        v4 = *(v3 + 16);
        if (v4)
        {
          *(v3 + 16) = v4 - 1;
        }

        else
        {
          this = 290;
          __break(0xC471u);
        }
      }
    }
  }

  return this;
}

uint64_t WebKit::RemoteLayerTreeDrawingAreaProxy::processStateForConnection(WebKit::RemoteLayerTreeDrawingAreaProxy *this, IPC::Connection *a2)
{
  v4 = *(this + 21);
  v5 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(v4);
  v6 = v5;
  v8 = v7;
  if (v4)
  {
    v9 = &v4[10 * *(v4 - 1)];
  }

  else
  {
    v9 = 0;
  }

  if (v9 == v5)
  {
LABEL_12:
    if (*(*(this + 6) + 88) == a2)
    {
      return this + 96;
    }

    else
    {
      result = 197;
      __break(0xC471u);
    }
  }

  else
  {
    while (1)
    {
      v13 = *v6;
      {
        WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
      }

      v10 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, &v13);
      if (v10)
      {
        atomic_fetch_add((v10 + 16), 1u);
        v11 = *(v10 + 88);
        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v10 + 16));
        if (v11 == a2)
        {
          return (v6 + 1);
        }
      }

      do
      {
        v6 += 10;
      }

      while (v6 != v8 && (*v6 + 1) <= 1);
      if (v6 == v9)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t *WebKit::RemoteLayerTreeDrawingAreaProxy::processStateForIdentifier(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 48) + 120) == a2)
  {
    return (a1 + 96);
  }

  v3 = *(a1 + 168);
  if (!v3)
  {
    goto LABEL_15;
  }

  if (a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD8FA68);
  }

  if (!a2)
  {
LABEL_15:
    __break(0xC471u);
    JUMPOUT(0x19DD8FA48);
  }

  v4 = *(v3 - 8);
  v5 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
  v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
  v8 = v4 & ((v7 >> 31) ^ v7);
  v9 = (v3 + 80 * v8);
  v10 = *v9;
  if (*v9 != a2)
  {
    v11 = 1;
    while (v10)
    {
      v8 = (v8 + v11) & v4;
      v9 = (v3 + 80 * v8);
      v10 = *v9;
      ++v11;
      if (*v9 == a2)
      {
        return v9 + 1;
      }
    }

    v9 = (v3 + 80 * *(v3 - 4));
  }

  return v9 + 1;
}

uint64_t WebKit::RemoteLayerTreeDrawingAreaProxy::connectionForIdentifier(uint64_t a1)
{
  v4 = a1;
  {
    WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
  }

  v1 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, &v4);
  if (!v1)
  {
    return 0;
  }

  atomic_fetch_add((v1 + 16), 1u);
  v2 = *(v1 + 88);
  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v1 + 16));
  return v2;
}

void WebKit::RemoteLayerTreeDrawingAreaProxy::commitLayerTreeNotTriggered(WebKit::RemoteLayerTreeDrawingAreaProxy *a1, IPC::Connection *a2, unint64_t a3)
{
  v5 = WebKit::RemoteLayerTreeDrawingAreaProxy::processStateForConnection(a1, a2);
  if (*(v5 + 24) != 1 || a3 > *(v5 + 8))
  {
    *v5 = 3;
    WebKit::RemoteLayerTreeDrawingAreaProxy::maybePauseDisplayRefreshCallbacks(a1);
    v7 = *(a1 + 5);
    if (v7)
    {
      v8 = *(v7 + 8);
      if (v8)
      {
        CFRetain(*(v8 - 8));
        v9 = *(v8 + 328);
        if (!v9 || (++v9[4], (*(*v9 + 32))(v9), (v10 = v9[4]) == 0))
        {
          __break(0xC471u);
          JUMPOUT(0x19DD8FC04);
        }

        v9[4] = v10 - 1;
        v11 = *(v8 - 8);

        CFRelease(v11);
      }
    }
  }
}

void sub_19DD8FC28(_Unwind_Exception *a1)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    *(v1 + 16) = v3 - 1;
    CFRelease(*(v2 - 8));
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

uint64_t WebKit::RemoteLayerTreeDrawingAreaProxy::maybePauseDisplayRefreshCallbacks(WebKit::RemoteLayerTreeDrawingAreaProxy *this)
{
  if (*(this + 24) < 2u)
  {
    return 0;
  }

  v3 = *(this + 21);
  v4 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(v3);
  if (v3)
  {
    v6 = &v3[10 * *(v3 - 1)];
  }

  else
  {
    v6 = 0;
  }

  if (v6 == v4)
  {
LABEL_11:
    (*(*this + 408))(this);
    return 1;
  }

  else
  {
    while (*(v4 + 2) >= 2u)
    {
      do
      {
        v4 += 10;
      }

      while (v4 != v5 && (*v4 + 1) <= 1);
      if (v4 == v6)
      {
        goto LABEL_11;
      }
    }

    return 0;
  }
}

uint64_t WebKit::RemoteLayerTreeDrawingAreaProxy::commitLayerTree(uint64_t a1, IPC::Connection *a2, uint64_t *a3, uint64_t *a4)
{
  v150 = *MEMORY[0x1E69E9840];
  v128 = 0;
  v129 = &v128;
  v130 = 0x8012000000;
  v131 = __Block_byref_object_copy__6;
  v132 = __Block_byref_object_dispose__6;
  v133 = 0;
  v134[0] = &v135;
  v134[1] = 16;
  v5 = *(a3 + 3);
  if (v5)
  {
    v7 = *a3;
    v8 = *a3 + 992 * v5;
    do
    {
      v9 = *v7 + 1;
      *v7 = v9;
      v10 = *(v7 + 32);
      v11 = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::UniqueRef<WebKit::LayerProperties>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::begin(v10);
      v12 = v11;
      v14 = v13;
      if (v10)
      {
        v15 = v10 + 24 * *(v10 - 4);
      }

      else
      {
        v15 = 0;
      }

      if (v15 != v11)
      {
        do
        {
          v16 = *(*(v12 + 16) + 416);
          if (v16)
          {
            if (*(v16 + 112))
            {
              v17 = *a4;
              if (*a4)
              {
                v18 = *(v16 + 104);
                if (v18 == -1)
                {
                  __break(0xC471u);
                  goto LABEL_192;
                }

                if (!v18)
                {
                  __break(0xC471u);
                  JUMPOUT(0x19DD90C4CLL);
                }

                v19 = *(v17 - 8);
                v20 = (v18 + ~(v18 << 32)) ^ ((v18 + ~(v18 << 32)) >> 22);
                v21 = 9 * ((v20 + ~(v20 << 13)) ^ ((v20 + ~(v20 << 13)) >> 8));
                v22 = (v21 ^ (v21 >> 15)) + ~((v21 ^ (v21 >> 15)) << 27);
                v23 = v19 & ((v22 >> 31) ^ v22);
                v24 = *(v17 + 16 * v23);
                if (v24 != v18)
                {
                  v25 = 1;
                  while (v24)
                  {
                    v23 = (v23 + v25) & v19;
                    v24 = *(v17 + 16 * v23);
                    ++v25;
                    if (v24 == v18)
                    {
                      goto LABEL_18;
                    }
                  }

                  v23 = *(v17 - 4);
                }

LABEL_18:
                if (v23 != *(v17 - 4))
                {
                  WebKit::RemoteLayerBackingStoreProperties::setBackendHandle(v16, *(v17 + 16 * v23 + 8));
                }
              }
            }

            if (*(v16 + 88) == 1 && *(v16 + 80) == 1)
            {
              v26 = v129;
              v27 = v129[15];
              if (v27 == v129[14])
              {
                v16 = WTF::Vector<WTF::MachSendRight,16ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v129 + 12, v27 + 1, v16);
                v27 = v26[15];
                v28 = *(v26 + 6);
              }

              else
              {
                v28 = *(v129 + 6);
              }

              WTF::MachSendRight::MachSendRight((v28 + 4 * v27), v16);
              ++v26[15];
            }
          }

          do
          {
            v12 += 24;
            if (v12 == v14)
            {
              break;
            }
          }

          while (*v12 == 0 || *(v12 + 8) == -1);
        }

        while (v12 != v15);
        v9 = *v7;
      }

      if (!v9)
      {
        __break(0xC471u);
        JUMPOUT(0x19DD90C6CLL);
      }

      *v7 = v9 - 1;
      v7 += 992;
    }

    while (v7 != v8);
  }

  v30 = a1;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
  v32 = *(a1 + 8);
  atomic_fetch_add(v32, 1u);
  v33 = *(a3 + 3);
  v123 = v32;
  if (v33)
  {
    v34 = *a3;
    v35 = *a3 + 992 * v33;
    *&v31 = 134217984;
    v119 = v31;
    v121 = v35;
    do
    {
      ++*v34;
      kdebug_trace();
      v36 = WebKit::RemoteLayerTreeDrawingAreaProxy::processStateForConnection(v30, a2);
      v37 = *(v30 + 40);
      if (v37)
      {
        v38 = *(v37 + 8);
        if (v38)
        {
          v39 = v36;
          m32 = COERCE_DOUBLE(CFRetain(*(v38 - 8)));
          v41 = (v34 + 328);
          *(v39 + 8) = *(v34 + 328);
          if ((*(v39 + 24) & 1) == 0)
          {
            *(v39 + 24) = 1;
          }

          if (*(v39 + 48) != 1 || *(v39 + 32) < *v41)
          {
            *(v39 + 32) = *(v39 + 8);
            *(v39 + 48) = *(v39 + 24);
          }

          if (*(v34 + 40))
          {
            v125 = 0;
            v137[0] = 0;
            v138 = 0;
          }

          else
          {
            *(v30 + 256) = *v41;
            v42 = *(v34 + 344);
            *(v30 + 272) = v42;
            if (*(v30 + 240) == 1 && v42 == *(v30 + 232))
            {
              v43 = qword_1ED6410F8;
              *&m32 = os_log_type_enabled(qword_1ED6410F8, OS_LOG_TYPE_DEFAULT);
              if (!LODWORD(m32) || (v44 = *(v30 + 24), LODWORD(buf.m11) = v119, *(&buf.m11 + 4) = v44, _os_log_impl(&dword_19D52D000, v43, OS_LOG_TYPE_DEFAULT, "RemoteLayerTreeDrawingAreaProxy(%llu)::hideContentUntilDidUpdateActivityState completed", &buf, 0xCu), (*(v30 + 240) & 1) != 0))
              {
                *(v30 + 240) = 0;
              }
            }

            if (*(v34 + 912) == 1)
            {
              *&buf.m11 = *(v34 + 368);
              *(&buf.m12 + 7) = *(v34 + 383);
              std::__optional_copy_base<WebKit::EditorState::PostLayoutData,false>::__optional_copy_base[abi:sn200100](&buf.m21, (v34 + 400));
              std::__optional_copy_base<WebKit::EditorState::VisualData,false>::__optional_copy_base[abi:sn200100](&v142, (v34 + 640));
              m32 = COERCE_DOUBLE(WebKit::WebPageProxy::updateEditorState((v38 - 16), &buf, 1));
              v46 = LODWORD(m32);
              if (v149 == 1)
              {
                v47 = v147;
                if (v147)
                {
                  v147 = 0;
                  v148 = 0;
                  WTF::fastFree(v47, v45);
                }

                v48 = v145;
                if (v145)
                {
                  v145 = 0;
                  v146 = 0;
                  WTF::fastFree(v48, v45);
                }

                m32 = *&v143;
                if (v143)
                {
                  v143 = 0;
                  v144 = 0;
                  m32 = COERCE_DOUBLE(WTF::fastFree(*&m32, v45));
                }
              }

              if (v141 == 1)
              {
                if ((v140 & 0x8000000000000) != 0)
                {
                  v114 = (v140 & 0xFFFFFFFFFFFFLL);
                  if (atomic_fetch_add((v140 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
                  {
                    atomic_store(1u, v114);
                    WTF::fastFree(v114, v45);
                  }
                }

                m42 = buf.m42;
                if (*&buf.m42)
                {
                  buf.m42 = 0.0;
                  LODWORD(buf.m43) = 0;
                  WTF::fastFree(*&m42, v45);
                }

                m33 = buf.m33;
                buf.m33 = 0.0;
                if (m33 != 0.0 && atomic_fetch_add_explicit(*&m33, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(*&m33, v45);
                }

                m32 = buf.m32;
                buf.m32 = 0.0;
                if (m32 != 0.0 && atomic_fetch_add_explicit(*&m32, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  m32 = COERCE_DOUBLE(WTF::StringImpl::destroy(*&m32, v45));
                }

                if ((*&buf.m24 & 0x8000000000000) != 0)
                {
                  *&m32 = *&buf.m24 & 0xFFFFFFFFFFFFLL;
                  if (atomic_fetch_add((*&buf.m24 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
                  {
                    atomic_store(1u, *&m32);
                    m32 = COERCE_DOUBLE(WTF::fastFree(*&m32, v45));
                  }
                }
              }
            }

            else
            {
              v46 = 0;
            }

            v51 = *(v34 + 40);
            v137[0] = 0;
            v138 = 0;
            v125 = v46;
            if (!v51)
            {
              v104 = *(v34 + 124);
              if (v104)
              {
                v105 = *(v34 + 112);
                v106 = *(v30 + 224);
                v107 = 8 * v104;
                while (!v106 || v106 != *v105)
                {
                  ++v105;
                  v107 -= 8;
                  if (!v107)
                  {
                    goto LABEL_74;
                  }
                }

                v112 = qword_1ED6410F8;
                *&m32 = os_log_type_enabled(qword_1ED6410F8, OS_LOG_TYPE_DEFAULT);
                if (LODWORD(m32))
                {
                  v113 = *(v30 + 24);
                  LODWORD(buf.m11) = v119;
                  *(&buf.m11 + 4) = v113;
                  _os_log_impl(&dword_19D52D000, v112, OS_LOG_TYPE_DEFAULT, "RemoteLayerTreeDrawingAreaProxy(%llu)::hideContentUntilPendingUpdate completed", &buf, 0xCu);
                }

                *(v30 + 224) = 0;
              }
            }
          }

LABEL_74:
          v52 = *(v38 + 328);
          ++*(v52 + 4);
          *(v39 + 56) = *(v34 + 944);
          WTF::MonotonicTime::now(*&m32);
          *(v39 + 64) = v53;
          (*(*v52 + 18))(v52);
          if (WebKit::RemoteLayerTreeTransaction::hasAnyLayerChanges(v34))
          {
            ++*(v30 + 280);
          }

          if (WebKit::RemoteLayerTreeHost::updateLayerTree(*(v30 + 80), a2, v34, 1.0))
          {
            if (*(v30 + 224) || (*(v30 + 240) & 1) != 0)
            {
              WebKit::RemoteLayerTreeHost::detachRootLayer(*(v30 + 80), v54);
            }

            else
            {
              if (*(v30 + 248) == 1)
              {
                v108 = qword_1ED6410F8;
                if (os_log_type_enabled(qword_1ED6410F8, OS_LOG_TYPE_DEFAULT))
                {
                  v109 = *(v30 + 24);
                  LODWORD(buf.m11) = v119;
                  *(&buf.m11 + 4) = v109;
                  _os_log_impl(&dword_19D52D000, v108, OS_LOG_TYPE_DEFAULT, "RemoteLayerTreeDrawingAreaProxy(%llu) Unhiding layer tree", &buf, 0xCu);
                }
              }

              v110 = *(*(v30 + 80) + 8);
              if (v110)
              {
                v111 = *(v110 + 8);
                if (v111)
                {
                  ++*(v111 + 2);
                }
              }

              else
              {
                v111 = 0;
              }

              WebKit::WebPageProxy::setRemoteLayerTreeRootNode((v38 - 16), v111);
              if (v111)
              {
                WTF::RefCounted<WebKit::RemoteLayerTreeNode>::deref(v111 + 2);
              }

              *(v30 + 248) = 0;
            }
          }

          WebKit::RemoteScrollingCoordinatorProxy::commitScrollingTreeState(v52, a2, (v34 + 960), &buf);
          if (v138 == BYTE4(buf.m22))
          {
            if (v138)
            {
              *v137 = *&buf.m11;
              *&v137[15] = *(&buf.m12 + 7);
              if (v137[40] == LOBYTE(buf.m22))
              {
                if (v137[40])
                {
                  v137[20] = BYTE4(buf.m13);
                  *&v137[24] = buf.m14;
                  *&v137[32] = LODWORD(buf.m21);
                  *&v137[36] = WORD2(buf.m21);
                }
              }

              else if (v137[40])
              {
                v137[40] = 0;
              }

              else
              {
                *&v137[20] = *(&buf.m13 + 4);
                *&v137[36] = HIDWORD(buf.m21);
                v137[40] = 1;
              }
            }
          }

          else if (v138)
          {
            v138 = 0;
          }

          else
          {
            *v137 = *&buf.m11;
            *&v137[16] = *&buf.m13;
            *&v137[28] = *(&buf.m14 + 4);
            v138 = 1;
          }

          (*(*v52 + 19))(v52);
          WebKit::WebPageProxy::didCommitLayerTree((v38 - 16), v34);
          (*(*v30 + 432))(v30, a2, v34, v34 + 960);
          (*(*v52 + 4))(v52);
          v55 = *(v38 + 16);
          v56 = 0;
          if (*(v55 + 2784) == 1)
          {
            v56 = *(v55 + 2616);
          }

          v136 = v56;
          LODWORD(buf.m11) = WebKit::WebPageProxy::unconstrainedLayoutViewportRect((v38 - 16));
          HIDWORD(buf.m11) = v57;
          *&buf.m12 = __PAIR64__(v59, v58);
          v60 = *(v38 + 16);
          v61 = 1.0;
          if (*(v60 + 2784) == 1)
          {
            v61 = *(v60 + 2768);
          }

          WebKit::WebPageProxy::adjustLayersForLayoutViewport(v38 - 16, &v136, &buf, v61);
          if (v138 == 1)
          {
            WebCore::ScrollingTree::mainFrameScrollPosition(v52[4]);
            if ((v138 & 1) == 0)
            {
              goto LABEL_191;
            }

            *&buf.m11 = *&v137[20];
            buf.m13 = *&v137[36];
            if (v137[40] == 1)
            {
              v137[40] = 0;
            }

            if (BYTE4(buf.m13) == 1 && LOBYTE(buf.m11) != 2 && (WebCore::RequestedScrollData::computeDestinationPosition(), (v138 & 1) == 0) || (WebCore::RequestedScrollData::destinationPosition(), *&buf.m11 = __PAIR64__(v63, v62), v136 = *(v34 + 144), (v138 & 1) == 0))
            {
LABEL_191:
              __break(1u);
LABEL_192:
              JUMPOUT(0x19DD90C2CLL);
            }

            WebKit::WebPageProxy::requestScroll(v38 - 16, &buf, &v136, v137[18]);
          }

          if (*(v30 + 200) && !*(v34 + 40))
          {
            v64 = *(v30 + 40);
            v65 = 1.0;
            if (v64)
            {
              v66 = *(v64 + 8);
              if (v66)
              {
                v68 = *(v34 + 128);
                v67 = *(v34 + 132);
                CFRetain(*(v66 - 8));
                v69 = WebKit::WebPageProxy::viewSize((v66 - 16));
                if (v68 >= 1 && v67 >= 1)
                {
                  v70 = (v69 + -20.0) / v68;
                  if (v70 > 0.05)
                  {
                    v70 = 0.05;
                  }

                  if (((SHIDWORD(v69) + -20.0) / v67) >= v70)
                  {
                    v65 = v70;
                  }

                  else
                  {
                    v65 = (SHIDWORD(v69) + -20.0) / v67;
                  }
                }

                CFRelease(*(v66 - 8));
              }
            }

            (*(*v52 + 18))(v52);
            updated = WebKit::RemoteLayerTreeHost::updateLayerTree(*(v30 + 200), a2, v34, v65);
            (*(*v52 + 19))(v52);
            v73 = *(v34 + 128);
            v72 = *(v34 + 132);
            v74 = *(*(v30 + 80) + 8);
            if (v74 && (v75 = *(v74 + 8)) != 0 && (v76 = *(v75 + 48)) != 0)
            {
              v122 = v76;
              v77 = v76;
              v120 = 0;
            }

            else
            {
              v122 = 0;
              v120 = 1;
            }

            [*(v30 + 208) removeFromSuperlayer];
            [v122 addSublayer:*(v30 + 208)];
            v78 = *(v30 + 208);
            buf.m11 = 0.0;
            *&buf.m12 = v73;
            *(&buf.m12 + 1) = v72;
            WebCore::FloatRect::operator CGRect();
            [v78 setBounds:?];
            v79 = *(a1 + 208);
            LODWORD(buf.m11) = WebKit::RemoteLayerTreeDrawingAreaProxy::indicatorLocation(*(a1 + 40));
            HIDWORD(buf.m11) = v80;
            WebCore::FloatPoint::operator CGPoint();
            [v79 setPosition:?];
            v81 = *(a1 + 208);
            CATransform3DMakeScale(&buf, v65, v65, 1.0);
            [v81 setTransform:&buf];
            if (updated)
            {
              [*(a1 + 208) setSublayers:MEMORY[0x1E695E0F0]];
              v82 = *(*(a1 + 200) + 8);
              if (v82 && (v83 = *(v82 + 8)) != 0)
              {
                v84 = *(v83 + 48);
              }

              else
              {
                v84 = 0;
              }

              [*(a1 + 208) addSublayer:v84];
              [*(a1 + 208) addSublayer:*(a1 + 216)];
            }

            [*(a1 + 216) setBorderWidth:(1.0 / v65)];
            v85 = *(a1 + 40);
            if (v85)
            {
              v86 = *(v85 + 8);
              if (v86)
              {
                CFRetain(*(v86 - 8));
                v87 = *(v86 + 16);
                v88 = 0.0;
                v89 = 0.0;
                if (*(v87 + 2784) == 1)
                {
                  v89 = *(v87 + 2600);
                  v88 = *(v87 + 2608);
                }

                v90 = *(a1 + 216);
                buf.m11 = v89;
                WebCore::FloatPoint::operator CGPoint();
                [v90 setPosition:?];
                v91 = *(a1 + 216);
                buf.m11 = 0.0;
                buf.m12 = v88;
                WebCore::FloatRect::operator CGRect();
                [v91 setBounds:?];
                CFRelease(*(v86 - 8));
              }
            }

            if ((v120 & 1) == 0)
            {
            }

            v30 = a1;
            v92 = *(*(a1 + 200) + 8);
            if (v92 && (v93 = *(v92 + 8)) != 0)
            {
              v94 = *(v93 + 48);
            }

            else
            {
              v94 = 0;
            }

            [v94 setName:@"Indicator host root"];
          }

          v95 = WebKit::WebPageProxy::layerTreeCommitComplete(v38 - 16);
          if (v125)
          {
            v95 = WebKit::WebPageProxy::dispatchDidUpdateEditorState(v38 - 16);
          }

          if (!*(v34 + 40))
          {
            v96 = *(v34 + 352);
            if (v96)
            {
              WTF::WallTime::now(v95);
              WebKit::WebPageProxy::didReachLayoutMilestone(v38 - 16, v96, v97);
            }
          }

          v98 = *(v34 + 124);
          if (v98)
          {
            v99 = *(v34 + 112);
            v100 = 8 * v98;
            do
            {
              IPC::Connection::takeAsyncReplyHandler(a2, *v99, &buf);
              if (*&buf.m11)
              {
                WTF::CompletionHandler<void ()(IPC::Connection *,IPC::Decoder *)>::operator()(&buf);
                m11 = buf.m11;
                buf.m11 = 0.0;
                if (m11 != 0.0)
                {
                  (*(**&m11 + 8))(COERCE_CGFLOAT(*&m11));
                }
              }

              ++v99;
              v100 -= 8;
            }

            while (v100);
          }

          v102 = *(v52 + 4);
          if (!v102)
          {
            __break(0xC471u);
            JUMPOUT(0x19DD90CACLL);
          }

          *(v52 + 4) = v102 - 1;
          CFRelease(*(v38 - 8));
          v32 = v123;
          v35 = v121;
        }
      }

      kdebug_trace();
      if (!*v34)
      {
        __break(0xC471u);
        JUMPOUT(0x19DD90C8CLL);
      }

      --*v34;
      if (!v32)
      {
        goto LABEL_185;
      }

      if (!*(v32 + 1))
      {
        goto LABEL_183;
      }

      v34 += 992;
    }

    while (v34 != v35);
  }

  if (v129[15])
  {
    v127[0] = MEMORY[0x1E69E9820];
    v127[1] = 3221225472;
    v127[2] = ___ZN6WebKit31RemoteLayerTreeDrawingAreaProxy15commitLayerTreeERN3IPC10ConnectionERKN3WTF6VectorINSt3__14pairINS_26RemoteLayerTreeTransactionENS_37RemoteScrollingCoordinatorTransactionEEELm0ENS4_15CrashOnOverflowELm16ENS4_10FastMallocEEEONS4_7HashMapINS4_23ObjectIdentifierGenericINS_34RemoteImageBufferSetIdentifierTypeENS4_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS6_10unique_ptrINS_22BufferSetBackendHandleENS6_14default_deleteISN_EEEENS4_11DefaultHashISL_EENS4_10HashTraitsISL_EENST_ISQ_EENS4_15HashTableTraitsELNS4_17ShouldValidateKeyE1ESC_EE_block_invoke;
    v127[3] = &unk_1E7633288;
    v127[4] = &v128;
    [MEMORY[0x1E6979518] addCommitHandler:v127 forPhase:2];
  }

  v115 = WebKit::RemoteLayerTreeDrawingAreaProxy::processStateForConnection(v30, a2);
  v116 = *v115;
  *v115 = 1;
  if (v116 == 2)
  {
    WebKit::RemoteLayerTreeDrawingAreaProxy::didRefreshDisplay(v30, a2);
  }

  (*(*v30 + 400))(v30);
  if (v32)
  {
LABEL_183:
    if (atomic_fetch_add(v32, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v32);
      WTF::fastFree(v32, v103);
    }
  }

LABEL_185:
  _Block_object_dispose(&v128, 8);
  return WTF::Vector<WTF::MachSendRight,16ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v134, v117);
}

WTF::MachSendRight *__Block_byref_object_copy__6(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 64;
  *(a1 + 48) = a1 + 64;
  *(a1 + 56) = 16;
  v5 = *(a2 + 48);
  result = (a2 + 64);
  if (v5 == a2 + 64)
  {
    result = WTF::VectorMover<false,WTF::MachSendRight>::move(result, (result + 4 * *(a2 + 60)), v4);
    v7 = *(a2 + 56);
  }

  else
  {
    *(a2 + 48) = result;
    *(a1 + 48) = v5;
    v7 = *(a2 + 56);
    *(a2 + 56) = 16;
  }

  *(a1 + 56) = v7;
  v8 = *(a2 + 60);
  *(a2 + 60) = 0;
  *(a1 + 60) = v8;
  return result;
}

void sub_19DD9103C(_Unwind_Exception *exception_object, void *a2)
{
  v5 = *(v2 + 48);
  if (v3 != v5 && v5 != 0)
  {
    *(v2 + 48) = 0;
    *(v2 + 56) = 0;
    WTF::fastFree(v5, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF *___ZN6WebKit31RemoteLayerTreeDrawingAreaProxy15commitLayerTreeERN3IPC10ConnectionERKN3WTF6VectorINSt3__14pairINS_26RemoteLayerTreeTransactionENS_37RemoteScrollingCoordinatorTransactionEEELm0ENS4_15CrashOnOverflowELm16ENS4_10FastMallocEEEONS4_7HashMapINS4_23ObjectIdentifierGenericINS_34RemoteImageBufferSetIdentifierTypeENS4_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS6_10unique_ptrINS_22BufferSetBackendHandleENS6_14default_deleteISN_EEEENS4_11DefaultHashISL_EENS4_10HashTraitsISL_EENST_ISQ_EENS4_15HashTableTraitsELNS4_17ShouldValidateKeyE1ESC_EE_block_invoke(WTF *result, void *a2)
{
  v2 = *(*(result + 4) + 8);
  if (*(v2 + 56))
  {
    v3 = *(v2 + 60);
    if (v3)
    {
      v4 = *(v2 + 48);
      v5 = 4 * v3;
      do
      {
        WTF::MachSendRight::~MachSendRight(v4);
        v4 = (v6 + 4);
        v5 -= 4;
      }

      while (v5);
      *(v2 + 60) = 0;
    }

    result = *(v2 + 48);
    if ((v2 + 64) == result || result == 0)
    {
      if (result)
      {
        return result;
      }

      goto LABEL_12;
    }

    *(v2 + 48) = 0;
    *(v2 + 56) = 0;
    WTF::fastFree(result, a2);
    result = *(v2 + 48);
    if (!result)
    {
LABEL_12:
      *(v2 + 48) = v2 + 64;
      *(v2 + 56) = 16;
    }
  }

  return result;
}

void WebKit::RemoteLayerTreeDrawingAreaProxy::didRefreshDisplay(WebKit::RemoteLayerTreeDrawingAreaProxy *this, IPC::Connection *a2)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      if (*(v3 + 849) & 1) == 0 && (*(v3 + 848))
      {
        if (a2)
        {
          v6 = WebKit::RemoteLayerTreeDrawingAreaProxy::processStateForConnection(this, a2);
          WebKit::RemoteLayerTreeDrawingAreaProxy::didRefreshDisplay(this, v6, a2);
        }

        else
        {
          v7 = WTF::fastMalloc(0x10);
          *v7 = &unk_1F1108C28;
          v7[1] = this;
          v11 = v7;
          WebKit::RemoteLayerTreeDrawingAreaProxy::forEachProcessState(this, &v11);
          (*(*v7 + 8))(v7);
        }

        if ((WebKit::RemoteLayerTreeDrawingAreaProxy::maybePauseDisplayRefreshCallbacks(this) & 1) == 0)
        {
          v8 = *(this + 5);
          if (v8)
          {
            v9 = *(v8 + 8);
            if (v9)
            {
              CFRetain(*(v9 - 8));
              *(v9 + 1011) = 0;
              CFRelease(*(v9 - 8));
            }
          }
        }
      }

      v10 = *(v3 - 8);

      CFRelease(v10);
    }
  }
}

uint64_t WebKit::RemoteLayerTreeHost::updateLayerTree(WebKit::RemoteLayerTreeHost *this, const IPC::Connection *a2, const WebKit::RemoteLayerTreeTransaction *a3, float a4)
{
  v161 = *MEMORY[0x1E69E9840];
  if (!*this)
  {
    return 0;
  }

  if (!*(*this + 8))
  {
    return 0;
  }

  v7 = WebKit::AuxiliaryProcessProxy::fromConnection(a2, a2);
  if (!v7)
  {
    return 0;
  }

  v153 = (v7 + 16);
  v154 = a3;
  atomic_fetch_add((v7 + 16), 1u);
  v156 = *(v7 + 120);
  v9 = *(a3 + 15);
  if (v9)
  {
    v10 = *(a3 + 6);
    v11 = v10 + 112 * v9;
    while (1)
    {
      WebKit::RemoteLayerTreeHost::makeNode(this, v10, v8, &v158);
      if (objc_opt_respondsToSelector())
      {
        [*(v158 + 6) setUsesWebKitBehavior:1];
        objc_opt_class();
        [*(v158 + 6) setSortsSublayers:objc_opt_isKindOfClass() & 1];
      }

      if (*(v10 + 104) != 3)
      {
        goto LABEL_38;
      }

      if (!*v10)
      {
        __break(0xC471u);
        JUMPOUT(0x19DD91FE8);
      }

      v12 = *(v10 + 64);
      if (v12 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x19DD92008);
      }

      if (!v12)
      {
        __break(0xC471u);
        JUMPOUT(0x19DD92028);
      }

      v13 = *(this + 3);
      if (!v13)
      {
        WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(this + 3);
        v13 = *(this + 3);
        v12 = *(v10 + 64);
      }

      v14 = *(v13 - 8);
      v15 = (v12 + ~(v12 << 32)) ^ ((v12 + ~(v12 << 32)) >> 22);
      v16 = 9 * ((v15 + ~(v15 << 13)) ^ ((v15 + ~(v15 << 13)) >> 8));
      v17 = (v16 ^ (v16 >> 15)) + ~((v16 ^ (v16 >> 15)) << 27);
      v18 = v14 & ((v17 >> 31) ^ v17);
      v19 = (v13 + 24 * v18);
      v20 = *v19;
      if (*v19)
      {
        v21 = 0;
        v22 = 1;
        do
        {
          if (v20 == v12)
          {
            *(v19 + 1) = *v10;
            goto LABEL_29;
          }

          if (v20 == -1)
          {
            v21 = v19;
          }

          v18 = (v18 + v22) & v14;
          v19 = (v13 + 24 * v18);
          v20 = *v19;
          ++v22;
        }

        while (*v19);
        if (v21)
        {
          *v21 = 0;
          v21[1] = 0;
          v21[2] = 0;
          --*(*(this + 3) - 16);
          v12 = *(v10 + 64);
          v19 = v21;
        }
      }

      *v19 = v12;
      *(v19 + 1) = *v10;
      v23 = *(this + 3);
      v24 = v23 ? *(v23 - 12) + 1 : 1;
      *(v23 - 12) = v24;
      v25 = (*(v23 - 16) + v24);
      v26 = *(v23 - 4);
      if (v26 <= 0x400)
      {
        break;
      }

      if (v26 <= 2 * v25)
      {
        goto LABEL_28;
      }

LABEL_29:
      v27 = *(v10 + 64);
      if (v27 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x19DD92048);
      }

      if (!v27)
      {
        __break(0xC471u);
        JUMPOUT(0x19DD92068);
      }

      v28 = *(this + 4);
      if (v28)
      {
        v29 = *(v28 - 8);
        v30 = (v27 + ~(v27 << 32)) ^ ((v27 + ~(v27 << 32)) >> 22);
        v31 = 9 * ((v30 + ~(v30 << 13)) ^ ((v30 + ~(v30 << 13)) >> 8));
        v32 = (v31 ^ (v31 >> 15)) + ~((v31 ^ (v31 >> 15)) << 27);
        v33 = v29 & ((v32 >> 31) ^ v32);
        v34 = *(v28 + 24 * v33);
        if (v34 == v27)
        {
LABEL_36:
          *buf = *(v28 + 24 * v33 + 8);
          buf[16] = 1;
          v36 = WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(this + 2, buf);
          if (v36)
          {
            v37 = (v36 + 8);
            ++*(v36 + 8);
            [*(v158 + 7) addSubview:*(v36 + 56)];
            WTF::RefCounted<WebKit::RemoteLayerTreeNode>::deref(v37);
          }
        }

        else
        {
          v35 = 1;
          while (v34)
          {
            v33 = (v33 + v35) & v29;
            v34 = *(v28 + 24 * v33);
            ++v35;
            if (v34 == v27)
            {
              goto LABEL_36;
            }
          }
        }
      }

LABEL_38:
      if (!*v10)
      {
        goto LABEL_212;
      }

      v38 = v158;
      v158 = 0;
      if (*(v10 + 8) == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x19DD91FC8);
      }

      v39 = *(this + 2);
      if (v39 || (WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(this + 2), (v39 = *(this + 2)) != 0))
      {
        v40 = *(v39 - 8);
      }

      else
      {
        v40 = 0;
      }

      v41 = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(v10) & v40;
      v42 = (v39 + 24 * v41);
      v44 = *v42;
      v43 = v42[1];
      if (*v42 != 0)
      {
        v45 = 0;
        v46 = 1;
        while (v44 != *v10 || v43 != *(v10 + 8))
        {
          if (v43 == -1)
          {
            v45 = v42;
          }

          v41 = (v41 + v46) & v40;
          v42 = (v39 + 24 * v41);
          v44 = *v42;
          v43 = v42[1];
          ++v46;
          if (*v42 == 0)
          {
            if (v45)
            {
              *v45 = 0;
              v45[1] = 0;
              v45[2] = 0;
              --*(*(this + 2) - 16);
              v42 = v45;
            }

            goto LABEL_52;
          }
        }

        if (v38)
        {
          WTF::RefCounted<WebKit::RemoteLayerTreeNode>::deref(v38 + 2);
        }

        goto LABEL_62;
      }

LABEL_52:
      *v42 = *v10;
      v47 = v42[2];
      v42[2] = v38;
      if (v47)
      {
        WTF::RefCounted<WebKit::RemoteLayerTreeNode>::deref((v47 + 8));
      }

      v48 = *(this + 2);
      if (v48)
      {
        v49 = *(v48 - 12) + 1;
      }

      else
      {
        v49 = 1;
      }

      *(v48 - 12) = v49;
      v50 = (*(v48 - 16) + v49);
      v51 = *(v48 - 4);
      if (v51 > 0x400)
      {
        if (v51 > 2 * v50)
        {
          goto LABEL_62;
        }

LABEL_59:
        WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(this + 2);
        goto LABEL_62;
      }

      if (3 * v51 <= 4 * v50)
      {
        goto LABEL_59;
      }

LABEL_62:
      v52 = v158;
      v158 = 0;
      if (v52)
      {
        WTF::RefCounted<WebKit::RemoteLayerTreeNode>::deref(v52 + 2);
      }

      v10 += 112;
      if (v10 == v11)
      {
        goto LABEL_72;
      }
    }

    if (3 * v26 > 4 * v25)
    {
      goto LABEL_29;
    }

LABEL_28:
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(this + 3);
    goto LABEL_29;
  }

LABEL_72:
  v54 = (v154 + 8);
  if (*(v154 + 1) && (*buf = *v54, buf[16] = 1, v60 = WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(this + 2, buf), (v58 = v60) != 0))
  {
    v59 = 0;
    ++*(v60 + 8);
  }

  else
  {
    v55 = qword_1ED641490;
    if (os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT))
    {
      v57 = *v54;
      *buf = 134218240;
      *&buf[4] = this;
      *&buf[12] = 2048;
      *&buf[14] = v57;
      _os_log_impl(&dword_19D52D000, v55, OS_LOG_TYPE_DEFAULT, "%p RemoteLayerTreeHost::updateLayerTree - failed to find root layer with ID %llu", buf, 0x16u);
    }

    v58 = 0;
    v59 = 1;
  }

  v61 = *(this + 1);
  if (v61)
  {
    v61 = *(v61 + 8);
  }

  v62 = v61 != v58 && *(v154 + 5) == 0;
  v63 = v62;
  v150 = v58;
  if (v62)
  {
    if (v59)
    {
      v64 = 0;
    }

    else
    {
      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v58, v58);
      v64 = *v58;
      if (*v58)
      {
        atomic_fetch_add(v64, 1u);
      }
    }

    v65 = *(this + 1);
    *(this + 1) = v64;
    if (v65 && atomic_fetch_add(v65, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v65);
      WTF::fastFree(v65, v56);
    }
  }

  v158 = 0;
  v159 = 0;
  v152 = v59;
  v155 = WebKit::RemoteLayerTreeHost::layerContentsType(*this);
  v151 = v63;
  v66 = *(v154 + 4);
  v67 = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::UniqueRef<WebKit::LayerProperties>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::begin(v66);
  v68 = v67;
  v70 = v69;
  if (v66)
  {
    v71 = v66 + 24 * *(v66 - 4);
  }

  else
  {
    v71 = 0;
  }

  if (v71 != v67)
  {
    do
    {
      *buf = *v68;
      buf[16] = 1;
      v72 = WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(this + 2, buf);
      if (v72)
      {
        v73 = (v72 + 8);
        ++*(v72 + 8);
        WebKit::RemoteLayerTreePropertyApplier::applyHierarchyUpdates(v72, *(v68 + 16), this + 2);
        WTF::RefCounted<WebKit::RemoteLayerTreeNode>::deref(v73);
      }

      else
      {
        v75 = qword_1ED641490;
        if (os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT))
        {
          v76 = *v68;
          *buf = 134218240;
          *&buf[4] = this;
          *&buf[12] = 2048;
          *&buf[14] = v76;
          _os_log_impl(&dword_19D52D000, v75, OS_LOG_TYPE_DEFAULT, "%p RemoteLayerTreeHost::updateLayerTree - failed to find layer with ID %llu", buf, 0x16u);
        }
      }

      do
      {
        v68 += 24;
        if (v68 == v70)
        {
          break;
        }
      }

      while (*v68 == 0 || *(v68 + 8) == -1);
    }

    while (v68 != v71);
  }

  v77 = *(v154 + 5);
  v78 = v156;
  if (v77)
  {
    if (v77 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD92088);
    }

    v80 = *(v58 + 16);
    v79 = *(v58 + 24);
    v81 = *(this + 4);
    if (!v81)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(this + 4);
      v81 = *(this + 4);
    }

    v82 = *(v81 - 8);
    v83 = (v77 + ~(v77 << 32)) ^ ((v77 + ~(v77 << 32)) >> 22);
    v84 = 9 * ((v83 + ~(v83 << 13)) ^ ((v83 + ~(v83 << 13)) >> 8));
    v85 = (v84 ^ (v84 >> 15)) + ~((v84 ^ (v84 >> 15)) << 27);
    v86 = (v85 >> 31) ^ v85;
    v87 = v82 & v86;
    v88 = (v81 + 24 * (v82 & v86));
    v89 = *v88;
    if (*v88)
    {
      v90 = 0;
      v91 = 1;
      do
      {
        if (v89 == v77)
        {
          v88[1] = v80;
          v88[2] = v79;
          goto LABEL_129;
        }

        if (v89 == -1)
        {
          v90 = v88;
        }

        v87 = (v87 + v91) & v82;
        v88 = (v81 + 24 * v87);
        v89 = *v88;
        ++v91;
      }

      while (*v88);
      if (v90)
      {
        *v90 = 0;
        v90[1] = 0;
        v90[2] = 0;
        --*(*(this + 4) - 16);
        v88 = v90;
      }
    }

    *v88 = v77;
    v88[1] = v80;
    v88[2] = v79;
    v92 = *(this + 4);
    if (v92)
    {
      v93 = *(v92 - 12) + 1;
    }

    else
    {
      v93 = 1;
    }

    *(v92 - 12) = v93;
    v94 = (*(v92 - 16) + v93);
    v95 = *(v92 - 4);
    if (v95 > 0x400)
    {
      if (v95 > 2 * v94)
      {
LABEL_129:
        if (v156 == -1)
        {
          __break(0xC471u);
          JUMPOUT(0x19DD920A8);
        }

        if (!v156)
        {
LABEL_212:
          __break(0xC471u);
          JUMPOUT(0x19DD91FA8);
        }

        v96 = *(this + 5);
        if (!v96)
        {
          WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand( this + 5,  0);
          v96 = *(this + 5);
        }

        v97 = *(v96 - 8);
        v98 = (v156 + ~(v156 << 32)) ^ ((v156 + ~(v156 << 32)) >> 22);
        v99 = 9 * ((v98 + ~(v98 << 13)) ^ ((v98 + ~(v98 << 13)) >> 8));
        v100 = (v99 ^ (v99 >> 15)) + ~((v99 ^ (v99 >> 15)) << 27);
        v101 = v97 & ((v100 >> 31) ^ v100);
        v102 = (v96 + 16 * v101);
        v103 = *v102;
        if (*v102)
        {
          v104 = 0;
          v105 = 1;
          while (v103 != v156)
          {
            if (v103 == -1)
            {
              v104 = v102;
            }

            v101 = (v101 + v105) & v97;
            v102 = (v96 + 16 * v101);
            v103 = *v102;
            ++v105;
            if (!*v102)
            {
              if (v104)
              {
                *v104 = 0;
                v104[1] = 0;
                --*(*(this + 5) - 16);
                v102 = v104;
              }

              goto LABEL_141;
            }
          }

          goto LABEL_149;
        }

LABEL_141:
        v106 = v102[1];
        *v102 = v156;
        v102[1] = 0;
        if (v106)
        {
          WTF::fastFree((v106 - 16), v88);
        }

        v107 = *(this + 5);
        if (v107)
        {
          v108 = *(v107 - 12) + 1;
        }

        else
        {
          v108 = 1;
        }

        *(v107 - 12) = v108;
        v109 = (*(v107 - 16) + v108);
        v110 = *(v107 - 4);
        if (v110 > 0x400)
        {
          if (v110 > 2 * v109)
          {
LABEL_149:
            v157 = *(v58 + 16);
            WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v102 + 1, &v157, buf);
            *(v58 + 40) = v77;
            v111 = *(this + 3);
            if (v111)
            {
              v112 = *(v111 - 8);
              v113 = v112 & v86;
              v114 = *(v111 + 24 * (v112 & v86));
              if (v114 == v77)
              {
LABEL_154:
                *buf = *(v111 + 24 * v113 + 8);
                buf[16] = 1;
                v116 = WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(this + 2, buf);
                if (v116)
                {
                  v117 = (v116 + 8);
                  ++*(v116 + 8);
                  [*(v116 + 56) addSubview:*(v58 + 56)];
                  WTF::RefCounted<WebKit::RemoteLayerTreeNode>::deref(v117);
                }
              }

              else
              {
                v115 = 1;
                while (v114)
                {
                  v113 = (v113 + v115) & v112;
                  v114 = *(v111 + 24 * v113);
                  ++v115;
                  if (v114 == v77)
                  {
                    goto LABEL_154;
                  }
                }
              }
            }

            goto LABEL_156;
          }
        }

        else if (3 * v110 > 4 * v109)
        {
          goto LABEL_149;
        }

        v102 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand( this + 5,  v102);
        goto LABEL_149;
      }
    }

    else if (3 * v95 > 4 * v94)
    {
      goto LABEL_129;
    }

    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(this + 4);
    goto LABEL_129;
  }

LABEL_156:
  v118 = *(v154 + 4);
  v119 = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::UniqueRef<WebKit::LayerProperties>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::begin(v118);
  v122 = v119;
  v123 = v120;
  if (v118)
  {
    v124 = (v118 + 24 * *(v118 - 4));
  }

  else
  {
    v124 = 0;
  }

  if (v124 != v119)
  {
    *&v121 = 134218240;
    v149 = v121;
    do
    {
      v125 = *v122;
      v126 = *(v122 + 8);
      v127 = *(v122 + 16);
      *buf = *v122;
      *&buf[8] = v126;
      buf[16] = 1;
      v128 = WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(this + 2, buf);
      v130 = v128;
      if (v128)
      {
        ++*(v128 + 8);
        if ((*(v127 + 1) & 0x40) != 0 && *(v127 + 512))
        {
          *buf = v125;
          *&buf[8] = v126;
          *&buf[16] = *(v127 + 512);
          v131 = HIDWORD(v159);
          if (HIDWORD(v159) == v159)
          {
            v132 = WTF::Vector<WebKit::RemoteLayerTreeHost::updateLayerTree(IPC::Connection const&,WebKit::RemoteLayerTreeTransaction const&,float)::LayerAndClone,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v158, HIDWORD(v159) + 1, buf);
            v131 = HIDWORD(v159);
            v133 = (v158 + 32 * HIDWORD(v159));
            v129 = v132[1];
            *v133 = *v132;
          }

          else
          {
            v133 = (v158 + 32 * HIDWORD(v159));
            v129 = *&buf[16];
            *v133 = *buf;
          }

          v133[1] = v129;
          HIDWORD(v159) = v131 + 1;
        }

        WebKit::RemoteLayerTreePropertyApplier::applyProperties(v130, this, v127, this + 2, v155, v129);
        if (*(this + 64) == 1)
        {
          if ((*(v127 + 2) & 8) != 0)
          {
            [*(v130 + 48) setBorderWidth:(*(v127 + 548) / a4)];
          }

          [*(v130 + 48) setMasksToBounds:{0, v149}];
        }

        WTF::RefCounted<WebKit::RemoteLayerTreeNode>::deref((v130 + 8));
        v78 = v156;
      }

      else
      {
        v135 = qword_1ED641490;
        if (os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v149;
          *&buf[4] = this;
          *&buf[12] = 2048;
          *&buf[14] = v125;
          _os_log_impl(&dword_19D52D000, v135, OS_LOG_TYPE_DEFAULT, "%p RemoteLayerTreeHost::updateLayerTree - failed to find layer with ID %llu", buf, 0x16u);
        }
      }

      do
      {
        v122 += 24;
        if (v122 == v123)
        {
          break;
        }
      }

      while (*v122 == 0 || *(v122 + 8) == -1);
    }

    while (v122 != v124);
  }

  v136 = v158;
  if (HIDWORD(v159))
  {
    v137 = 32 * HIDWORD(v159);
    v138 = (v158 + 16);
    do
    {
      *buf = *v138;
      buf[16] = 1;
      v139 = [WebKit::RemoteLayerTreeHost::layerForID(this buf)];
      *buf = *(v138 - 1);
      buf[16] = 1;
      [WebKit::RemoteLayerTreeHost::layerForID(this buf)];
      v138 += 2;
      v137 -= 32;
    }

    while (v137);
  }

  v140 = *(v154 + 19);
  if (v140)
  {
    v141 = *(v154 + 8);
    v142 = &v141[2 * v140];
    do
    {
      WebKit::RemoteLayerTreeHost::layerWillBeRemoved(this, v78, *v141, v141[1]);
      v141 += 2;
    }

    while (v141 != v142);
  }

  v143 = *(v154 + 27);
  if (v143)
  {
    v144 = *(v154 + 12);
    v145 = 16 * v143;
    do
    {
      *buf = *v144;
      buf[16] = 1;
      v146 = WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(this + 2, buf);
      v147 = v146;
      if (v146)
      {
        ++*(v146 + 8);
        [*(v146 + 48) setContents:0];
        v122 &= 0xFFFFFFFFFFFFFF00;
        *(v147 + 232) = v122;
        *(v147 + 240) = 0;
        WTF::RefCounted<WebKit::RemoteLayerTreeNode>::deref((v147 + 8));
      }

      ++v144;
      v145 -= 16;
    }

    while (v145);
  }

  v53 = v151;
  if (v136)
  {
    WTF::fastFree(v136, v120);
  }

  if ((v152 & 1) == 0)
  {
    WTF::RefCounted<WebKit::RemoteLayerTreeNode>::deref((v150 + 8));
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v153);
  return v53;
}