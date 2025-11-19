uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::removeAllStorageAccess(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F11047E8;
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
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v4);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::removeAllStorageAccess(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 16) = 0;
  v2 = WTF::fastMalloc(0x10);
  *v2 = &unk_1F1104810;
  v2[1] = v1;
  v4 = v2;
  WTF::SuspendableWorkQueue::dispatch();
  result = v4;
  if (v4)
  {
    return (*(*v4 + 8))(v4);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::removeAllStorageAccess(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1}::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1104810;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::removeAllStorageAccess(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1}::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1104810;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::removeAllStorageAccess(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1}::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::debugBroadcastConsoleMessage(JSC::MessageSource,JSC::MessageLevel,WTF::String const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1104860;
  v3 = a1[3];
  a1[3] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v4);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::debugBroadcastConsoleMessage(JSC::MessageSource,JSC::MessageLevel,WTF::String const&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1104860;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v4);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::debugBroadcastConsoleMessage(JSC::MessageSource,JSC::MessageLevel,WTF::String const&)::$_0,void>::call(uint64_t result)
{
  v1 = *(*(result + 8) + 16);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      ++*(v2 + 16);
      result = WebKit::NetworkProcess::broadcastConsoleMessage(*(v2 + 32), *(v2 + 24), *(result + 16), *(result + 17), result + 24);
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

WTF **WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::RegistrableDomain>,WTF::DefaultHash<WebCore::RegistrableDomain>>,(WTF::ShouldValidateKey)1,WebCore::RegistrableDomain>(uint64_t *a1, WTF **a2, const WTF::StringImpl *a3)
{
  if (WTF::equal(*a2, 0, a3) || *a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD111B0);
  }

  v6 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v7 = *(v6 - 8);
  v8 = WTF::ASCIICaseInsensitiveHash::hash(*a2, v5) & v7;
  v9 = (v6 + 8 * v8);
  if (WTF::equal(*v9, 0, v10))
  {
    return 0;
  }

  v12 = 1;
  while (*v9 == -1 || (WTF::equalIgnoringASCIICase(*v9, *a2, v11) & 1) == 0)
  {
    v8 = (v8 + v12) & v7;
    v9 = (v6 + 8 * v8);
    ++v12;
    if (WTF::equal(*v9, 0, v11))
    {
      return 0;
    }
  }

  return v9;
}

uint64_t WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>::KeyValuePair<WTF::ASCIILiteral,std::pair<WTF::String,std::optional<WTF::String>>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(a2 + 8);
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = MEMORY[0x1E696EB88];
      atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    }

    else
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v6 = v10;
    }

    *a1 = v6;
  }

  else
  {
    *a1 = 0;
  }

  v7 = *a3;
  *a3 = 0;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (*(a3 + 16) == 1)
  {
    v8 = a3[1];
    a3[1] = 0;
    *(a1 + 16) = v8;
    *(a1 + 24) = 1;
  }

  return a1;
}

void *WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::HashMap(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  *(a1 + 13) = 0;
  WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::reserveInitialCapacity(a1, a3);
  if (a3)
  {
    v6 = a2 + 32 * a3;
    do
    {
      WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<std::pair<WTF::String,std::optional<WTF::String>> const&>(a1, a2, (a2 + 8), v8);
      a2 += 32;
    }

    while (a2 != v6);
  }

  return a1;
}

uint64_t WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<std::pair<WTF::String,std::optional<WTF::String>> const&>@<X0>(uint64_t a1@<X0>, WTF::StringImpl **a2@<X1>, atomic_uint **a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a3;
  v8 = *(a1 + 8);
  v7 = *(a1 + 12);
  if (20 * v7 >= 19 * v8 || v8 <= 2 * v7 && (*(a1 + 20) & 1) != 0)
  {
    if (v8)
    {
      v24 = 2 * v8;
    }

    else
    {
      v24 = 8;
    }

    WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::rehash(a1, v24);
    v8 = *(a1 + 8);
  }

  v9 = v8 - 1;
  v10 = *(a1 + 16);
  v11 = *(*a2 + 4);
  if (v11 < 0x100)
  {
    v12 = WTF::StringImpl::hashSlowCase(*a2);
  }

  else
  {
    v12 = v11 >> 8;
  }

  v13 = *a1 + 32 * ((v12 ^ v10) & v9);
  v14 = *v13;
  if (*v13)
  {
    v19 = 0;
    LODWORD(v20) = (v12 ^ v10) & v9;
    while (1)
    {
      v21 = *(v14 + 4);
      if (v21 < 0x100)
      {
        v37 = v20;
        v22 = WTF::StringImpl::hashSlowCase(v14);
        LODWORD(v20) = v37;
      }

      else
      {
        v22 = v21 >> 8;
      }

      v23 = (v20 + v8 - ((v22 ^ v10) & v9)) & v9;
      if (v19 > v23)
      {
        break;
      }

      if (v22 == v12)
      {
        v36 = v20;
        result = WTF::equal(*v13, *a2, a3);
        v16 = *a1;
        if (result)
        {
          v17 = 0;
          goto LABEL_9;
        }

        LODWORD(v20) = v36;
      }

      else
      {
        v16 = *a1;
      }

      v20 = (v20 + 1) & v9;
      ++v19;
      v13 = v16 + 32 * v20;
      v14 = *v13;
      if (!*v13)
      {
        if (v19 >= 0x80)
        {
          *(a1 + 20) = 1;
        }

        goto LABEL_7;
      }
    }

    if (v19 >= 0x80)
    {
      *(a1 + 20) = 1;
    }

    v25 = v20;
    v26 = *v13;
    *v13 = 0;
    *(v13 + 8) = 0;
    v39 = v26;
    LOBYTE(v40) = 0;
    v41 = 0;
    if (*(v13 + 24) == 1)
    {
      v27 = *(v13 + 16);
      *(v13 + 16) = 0;
      v40 = v27;
      v41 = 1;
    }

    v28 = WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>::~KeyValuePair(v13, a2);
    *(v13 + 24) = 0;
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    WTF::HashMapTranslator<WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::String const&,WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::String const&,std::pair<WTF::String,std::optional<WTF::String>> const&>(WTF::String const&,std::pair<WTF::String,std::optional<WTF::String>> const&)::{lambda(void)#1}>(v28, a2, &v38);
    v29 = (v25 + 1) & v9;
    v30 = (*a1 + 32 * v29);
    for (i = *v30; *v30; i = *v30)
    {
      v32 = *(i + 4);
      if (v32 < 0x100)
      {
        v33 = WTF::StringImpl::hashSlowCase(i);
      }

      else
      {
        v33 = v32 >> 8;
      }

      ++v23;
      v34 = (v29 + v8 - ((v33 ^ v10) & v9)) & v9;
      if (v23 > v34)
      {
        std::swap[abi:sn200100]<WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>>(&v39, v30);
        v23 = v34;
      }

      v29 = (v29 + 1) & v9;
      v30 = (*a1 + 32 * v29);
    }

    WTF::GenericHashTraits<WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>>::assignToEmpty<WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>,WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>>(v30, &v39);
    result = WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>::~KeyValuePair(&v39, v35);
  }

  else
  {
LABEL_7:
    result = WTF::HashMapTranslator<WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::String const&,WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::String const&,std::pair<WTF::String,std::optional<WTF::String>> const&>(WTF::String const&,std::pair<WTF::String,std::optional<WTF::String>> const&)::{lambda(void)#1}>(v13, a2, &v38);
  }

  ++*(a1 + 12);
  v16 = *a1;
  v17 = 1;
LABEL_9:
  v18 = v16 + 32 * *(a1 + 8);
  *a4 = v13;
  *(a4 + 8) = v18;
  *(a4 + 16) = v17;
  return result;
}

unint64_t WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::reserveInitialCapacity(uint64_t a1, uint64_t a2)
{
  v3 = WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::computeBestTableSize(a2);
  if (v3 <= 8)
  {
    v4 = 8;
  }

  else
  {
    v4 = v3;
  }

  v5 = WTF::fastMalloc((32 * v4));
  v6 = v5;
  v7 = v4;
  do
  {
    *(v6 + 24) = 0;
    *v6 = 0;
    *(v6 + 1) = 0;
    *(v6 + 16) = 0;
    v6 = (v6 + 32);
    --v7;
  }

  while (v7);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 12) = 0;
  result = WTF::intHash(v5);
  *(a1 + 16) = result;
  *(a1 + 20) = 0;
  return result;
}

uint64_t WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::computeBestTableSize(uint64_t result)
{
  if (result >= 2)
  {
    v4 = __clz(result - 1);
    if (!v4)
    {
      __break(1u);
      return result;
    }

    v1 = 1 << -v4;
  }

  else
  {
    v1 = 1;
  }

  v2 = v1 << (20 * result >= 19 * v1);
  v3 = v2 << (v2 * 0.754166667 <= result);
  if (v3 <= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

WTF::StringImpl *WTF::HashMapTranslator<WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::String const&,WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::String const&,std::pair<WTF::String,std::optional<WTF::String>> const&>(WTF::String const&,std::pair<WTF::String,std::optional<WTF::String>> const&)::{lambda(void)#1}>(WTF::StringImpl **a1, WTF::StringImpl *a2, atomic_uint ***a3)
{
  WTF::GenericHashTraits<WebCore::RegistrableDomain>::assignToEmpty<WebCore::RegistrableDomain,WebCore::RegistrableDomain const&>(a1, a2);
  v5 = *a3;
  v6 = **a3;
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  v11 = v6;
  LOBYTE(v12) = 0;
  v13 = 0;
  if (*(v5 + 16) == 1)
  {
    v7 = v5[1];
    if (v7)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    }

    v12 = v7;
    v13 = 1;
  }

  std::pair<WTF::String,std::optional<WTF::String>>::operator=[abi:sn200100](a1 + 1, &v11);
  if (v13 == 1)
  {
    v9 = v12;
    v12 = 0;
    if (v9)
    {
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v8);
      }
    }
  }

  result = v11;
  v11 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v8);
    }
  }

  return result;
}

uint64_t WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::rehash(uint64_t a1, unsigned int a2)
{
  v29 = *(a1 + 8);
  v30 = *a1;
  result = WTF::fastMalloc((32 * a2));
  if (a2)
  {
    v6 = a2;
    v7 = result;
    do
    {
      *(v7 + 24) = 0;
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      v7 += 32;
      --v6;
    }

    while (v6);
  }

  *a1 = result;
  *(a1 + 8) = a2;
  v8 = (~(result << 32) + result) ^ ((~(result << 32) + result) >> 22);
  v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
  v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
  *(a1 + 16) = (v10 >> 31) ^ v10;
  *(a1 + 20) = 0;
  if (v29)
  {
    for (i = 0; i != v29; ++i)
    {
      v12 = v30 + 32 * i;
      v13 = *v12;
      if (*v12)
      {
        v14 = *(a1 + 8);
        v15 = *(a1 + 16);
        v16 = *(v13 + 4);
        if (v16 < 0x100)
        {
          v17 = WTF::StringImpl::hashSlowCase(v13);
        }

        else
        {
          v17 = v16 >> 8;
        }

        v18 = v14 - 1;
        v19 = (v17 ^ v15) & (v14 - 1);
        v20 = (*a1 + 32 * v19);
        v21 = *v20;
        if (*v20)
        {
          v22 = 0;
          do
          {
            v23 = *(v21 + 4);
            if (v23 < 0x100)
            {
              v24 = WTF::StringImpl::hashSlowCase(v21);
            }

            else
            {
              v24 = v23 >> 8;
            }

            v25 = (v19 + v14 - ((v24 ^ v15) & v18)) & v18;
            if (v22 > v25)
            {
              std::swap[abi:sn200100]<WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>>(v12, v20);
              v22 = v25;
            }

            v19 = (v19 + 1) & v18;
            ++v22;
            v20 = (*a1 + 32 * v19);
            v21 = *v20;
          }

          while (*v20);
        }

        WTF::GenericHashTraits<WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>>::assignToEmpty<WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>,WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>>(v20, v12);
      }

      if (*(v12 + 24) == 1)
      {
        v26 = *(v12 + 16);
        *(v12 + 16) = 0;
        if (v26)
        {
          if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v26, v5);
          }
        }
      }

      v27 = *(v12 + 8);
      *(v12 + 8) = 0;
      if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v5);
      }

      v28 = *v12;
      *v12 = 0;
      if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v28, v5);
      }
    }
  }

  else if (!v30)
  {
    return result;
  }

  return WTF::fastFree(v30, v5);
}

WTF::StringImpl **WTF::GenericHashTraits<WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>>::assignToEmpty<WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>,WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>>(WTF::StringImpl **a1, unsigned __int8 *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return std::pair<WTF::String,std::optional<WTF::String>>::operator=[abi:sn200100](a1 + 1, a2 + 8);
}

uint64_t std::swap[abi:sn200100]<WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>>(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  *a1 = 0;
  v15 = v4;
  LOBYTE(v16) = 0;
  v17 = 0;
  if (*(a1 + 24) == 1)
  {
    v6 = *(a1 + 16);
    *(a1 + 16) = 0;
    v16 = v6;
    v17 = 1;
  }

  v7 = *a2;
  *a2 = 0;
  v8 = *a1;
  *a1 = v7;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  std::pair<WTF::String,std::optional<WTF::String>>::operator=[abi:sn200100](v5, a2 + 8);
  v10 = *a2;
  *a2 = v3;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v9);
  }

  std::pair<WTF::String,std::optional<WTF::String>>::operator=[abi:sn200100](a2 + 1, &v15);
  if (v17 == 1)
  {
    v12 = v16;
    v16 = 0;
    if (v12)
    {
      if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v11);
      }
    }
  }

  v13 = v15;
  v15 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v11);
  }

  return 0;
}

WTF::StringImpl **std::pair<WTF::String,std::optional<WTF::String>>::operator=[abi:sn200100](WTF::StringImpl **a1, unsigned __int8 *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  std::__optional_storage_base<WTF::String,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WTF::String,false>>((a1 + 1), a2 + 8);
  return a1;
}

uint64_t WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 312 * v3;
    do
    {
      WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(v4, a2);
      v4 = (v6 + 312);
      v5 -= 312;
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

uint64_t WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::PrivateClickMeasurement>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *a1 + 312 * *(a1 + 12);
  *v4 = *v3;
  v5 = *(v3 + 8);
  *(v3 + 8) = 0;
  *(v4 + 8) = v5;
  v6 = *(v3 + 16);
  *(v3 + 16) = 0;
  *(v4 + 16) = v6;
  v7 = *(v3 + 24);
  *(v4 + 33) = *(v3 + 33);
  *(v4 + 24) = v7;
  *(v4 + 56) = 0;
  *(v4 + 184) = 0;
  if (*(v3 + 184) == 1)
  {
    std::__optional_storage_base<WebCore::PCM::AttributionTriggerData,false>::__construct[abi:sn200100]<WebCore::PCM::AttributionTriggerData>(v4 + 56, v3 + 56);
  }

  v8 = *(v3 + 208);
  *(v4 + 192) = *(v3 + 192);
  *(v4 + 208) = v8;
  *(v4 + 224) = 0;
  *(v4 + 232) = 0;
  if (*(v3 + 232) == 1)
  {
    v9 = *(v3 + 224);
    *(v3 + 224) = 0;
    *(v4 + 224) = v9;
    *(v4 + 232) = 1;
  }

  v10 = *(v3 + 240);
  *(v3 + 240) = 0;
  *(v4 + 240) = v10;
  v11 = *(v3 + 248);
  *(v3 + 248) = 0;
  *(v4 + 248) = v11;
  v12 = *(v3 + 256);
  *(v3 + 256) = 0;
  *(v4 + 256) = v12;
  v13 = *(v3 + 264);
  *(v3 + 264) = 0;
  *(v4 + 264) = v13;
  *(v4 + 272) = 0;
  *(v4 + 296) = 0;
  if (*(v3 + 296) == 1)
  {
    v14 = *(v3 + 272);
    *(v3 + 272) = 0;
    *(v4 + 272) = v14;
    v15 = *(v3 + 280);
    *(v3 + 280) = 0;
    *(v4 + 280) = v15;
    v16 = *(v3 + 288);
    *(v3 + 288) = 0;
    *(v4 + 288) = v16;
    *(v4 + 296) = 1;
  }

  v17 = *(v3 + 304);
  *(v3 + 304) = 0;
  *(v4 + 304) = v17;
  ++*(a1 + 12);
  return 1;
}

unint64_t WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 312 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0xD20D21)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD12004);
    }

    v3 = *a1;
    v4 = (*a1 + 312 * *(a1 + 12));
    v5 = 312 * a2;
    v6 = WTF::fastMalloc((312 * a2));
    *(a1 + 8) = v5 / 0x138;
    *a1 = v6;
    WTF::VectorMover<false,WebCore::PrivateClickMeasurement>::move(v3, v4, v6);
    if (v3)
    {
      if (*a1 == v3)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
      }

      WTF::fastFree(v3, v7);
    }
  }

  return 1;
}

void WTF::VectorMover<false,WebCore::PrivateClickMeasurement>::move(WTF::StringImpl *a1, WTF::StringImpl *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = a1 + v6;
      v8 = a3 + v6;
      *v8 = *(a1 + v6);
      v9 = *(a1 + v6 + 8);
      *(v7 + 1) = 0;
      *(v8 + 8) = v9;
      v10 = *(a1 + v6 + 16);
      *(v7 + 2) = 0;
      *(v8 + 16) = v10;
      v11 = *(a1 + v6 + 24);
      v12 = *(a1 + v6 + 33);
      *(a3 + v6 + 56) = 0;
      v13 = a3 + v6 + 56;
      *(v13 - 23) = v12;
      *(v13 - 32) = v11;
      *(v13 + 128) = 0;
      if (*(a1 + v6 + 184) == 1)
      {
        std::__optional_storage_base<WebCore::PCM::AttributionTriggerData,false>::__construct[abi:sn200100]<WebCore::PCM::AttributionTriggerData>(v13, (v7 + 56));
      }

      v14 = *(v7 + 13);
      *(v8 + 192) = *(v7 + 12);
      *(v8 + 208) = v14;
      *(v8 + 224) = 0;
      *(v8 + 232) = 0;
      if (v7[232] == 1)
      {
        v15 = *(a1 + v6 + 224);
        *(a1 + v6 + 224) = 0;
        *(v8 + 224) = v15;
        *(v8 + 232) = 1;
      }

      v16 = a3 + v6;
      v17 = *(v7 + 30);
      *(v7 + 30) = 0;
      *(v16 + 240) = v17;
      v18 = *(v7 + 31);
      *(v7 + 31) = 0;
      *(v16 + 248) = v18;
      v19 = *(v7 + 32);
      *(v7 + 32) = 0;
      *(v16 + 256) = v19;
      v20 = *(v7 + 33);
      *(v7 + 33) = 0;
      *(v16 + 264) = v20;
      *(v16 + 272) = 0;
      *(v16 + 296) = 0;
      if (v7[296] == 1)
      {
        v21 = (a1 + v6);
        v22 = *(a1 + v6 + 272);
        v21[34] = 0;
        *(v16 + 272) = v22;
        v23 = *(a1 + v6 + 280);
        v21[35] = 0;
        *(v16 + 280) = v23;
        v24 = *(a1 + v6 + 288);
        v21[36] = 0;
        *(v16 + 288) = v24;
        *(v16 + 296) = 1;
      }

      v25 = *(v7 + 38);
      *(v7 + 38) = 0;
      *(v16 + 304) = v25;
      WebCore::PrivateClickMeasurement::~PrivateClickMeasurement((a1 + v6), a2);
      v6 += 312;
    }

    while (v7 + 312 != a2);
  }
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::migrateDataToPCMDatabaseIfNecessary(void)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1104888;
  WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 4), a2);
  WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 2), v3);
  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v4);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::migrateDataToPCMDatabaseIfNecessary(void)::$_0,void>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1104888;
  WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 32, a2);
  WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 16, v3);
  v5 = *(a1 + 1);
  *(a1 + 1) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v5);
  }

  return WTF::fastFree(a1, v4);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::migrateDataToPCMDatabaseIfNecessary(void)::$_0,void>::call(uint64_t result)
{
  v1 = *(*(result + 8) + 16);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      v3 = result;
      ++*(v2 + 16);
      v4 = *(v2 + 160);
      ++v4[2];
      v5 = *(result + 44);
      if (v5)
      {
        v6 = *(result + 32);
        v7 = 312 * v5;
        do
        {
          result = (*(*v4 + 48))(v4, v6, 1);
          v6 += 312;
          v7 -= 312;
        }

        while (v7);
      }

      v8 = *(v3 + 28);
      if (v8)
      {
        v9 = *(v3 + 16);
        v10 = 312 * v8;
        do
        {
          result = (*(*v4 + 48))(v4, v9, 0);
          v9 += 312;
          v10 -= 312;
        }

        while (v10);
      }

      if (v4[2] == 1)
      {
        result = (*(*v4 + 8))(v4);
      }

      else
      {
        --v4[2];
      }

      v11 = *(v2 + 16);
      if (v11)
      {
        *(v2 + 16) = v11 - 1;
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

WTF *WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,WTF::String>(WTF *result, WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  v3 = result;
  v4 = qword_1ED6425F0;
  if (qword_1ED6425F0)
  {
    v6 = qword_1ED6425F8;
    v7 = qword_1ED6425F8 - 1;
    v8 = dword_1ED642600;
    v9 = *(*a2 + 4);
    if (v9 < 0x100)
    {
      v10 = WTF::StringImpl::hashSlowCase(*a2);
      v4 = qword_1ED6425F0;
    }

    else
    {
      v10 = v9 >> 8;
    }

    v11 = (v10 ^ v8) & v7;
    v12 = v4 + 32 * v11;
    result = *v12;
    if (*v12)
    {
      v13 = -1;
      do
      {
        v14 = *(result + 4);
        result = v14 < 0x100 ? WTF::StringImpl::hashSlowCase(result) : (v14 >> 8);
        if (++v13 > ((v11 + v6 - ((result ^ v8) & v7)) & v7))
        {
          break;
        }

        if (result == v10)
        {
          result = WTF::equal(*v12, *a2, a3);
          if (result)
          {
            v15 = *(v12 + 8);
            if (v15)
            {
              atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
            }

            *v3 = v15;
            *(v3 + 8) = 0;
            *(v3 + 16) = 0;
            if (*(v12 + 24) == 1)
            {
              v16 = *(v12 + 16);
              if (v16)
              {
                atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
              }

              *(v3 + 1) = v16;
              *(v3 + 16) = 1;
            }

            return result;
          }
        }

        v11 = (v11 + 1) & v7;
        v12 = qword_1ED6425F0 + 32 * v11;
        result = *v12;
      }

      while (*v12);
    }
  }

  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  return result;
}

uint64_t WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::ITPThirdPartyData>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = (*a1 + 24 * *(a1 + 12));
  v5 = *v3;
  *v3 = 0;
  *v4 = v5;
  v4[2] = 0;
  v4[1] = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt((v4 + 1), (v3 + 8));
  ++*(a1 + 12);
  return 1;
}

unint64_t WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 24 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0xAAAAAAB)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD126F0);
    }

    v3 = *a1;
    v4 = (*a1 + 24 * *(a1 + 12));
    v5 = 24 * a2;
    v6 = WTF::fastMalloc((24 * a2));
    *(a1 + 8) = v5 / 0x18;
    *a1 = v6;
    WTF::VectorMover<false,WebKit::ITPThirdPartyData>::move(v3, v4, v6);
    if (v3)
    {
      if (*a1 == v3)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
      }

      WTF::fastFree(v3, v7);
    }
  }

  return 1;
}

WTF::StringImpl *WTF::VectorMover<false,WebKit::ITPThirdPartyData>::move(WTF::StringImpl *result, WTF::StringImpl *a2, void *a3)
{
  if (result != a2)
  {
    v4 = (result + 8);
    do
    {
      v5 = *(v4 - 1);
      *(v4 - 1) = 0;
      *a3 = v5;
      a3[1] = 0;
      v6 = a3 + 1;
      a3[2] = 0;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt((a3 + 1), v4);
      WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, v7);
      result = *(v4 - 1);
      *(v4 - 1) = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v8);
        }
      }

      v9 = (v4 + 4);
      v4 += 6;
      a3 = v6 + 2;
    }

    while (v9 != a2);
  }

  return result;
}

uint64_t *WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>(_BYTE *__dst, unint64_t a2, _BYTE *__src, size_t __n, uint64_t a5, char a6)
{
  v8 = __n;
  if (__n)
  {
    if (__n == 1)
    {
      goto LABEL_9;
    }

    memcpy(__dst, __src, __n);
  }

  while (a2 < v8)
  {
    __break(1u);
LABEL_9:
    *__dst = *__src;
  }

  return WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>(&__dst[v8], a2 - v8, a5, a6);
}

uint64_t *WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>(uint64_t *result, unint64_t a2, int8x16_t *a3, unint64_t a4, uint64_t a5, char a6)
{
  if (a4 < 0x40)
  {
    v7 = result;
  }

  else
  {
    v7 = (result + 2 * (a4 & 0x7FFFFFFFFFFFFFC0));
    v8 = 0uLL;
    v9 = result;
    do
    {
      v21.val[0] = *a3;
      v10 = a3[1];
      v22.val[0] = a3[2];
      v11 = a3[3];
      a3 += 4;
      v12 = v11;
      v22.val[1] = 0uLL;
      v23.val[0] = v10;
      v21.val[1] = 0uLL;
      v13 = v9;
      vst2q_s8(v13, v21);
      v13 += 32;
      v23.val[1] = 0uLL;
      vst2q_s8(v13, v23);
      v14 = v9 + 64;
      vst2q_s8(v14, v22);
      v15 = v9 + 96;
      vst2q_s8(v15, *(&v8 - 1));
      v9 += 128;
    }

    while (v9 != v7);
  }

  while (v7 != (result + 2 * a4))
  {
    v16 = a3->u8[0];
    a3 = (a3 + 1);
    *v7 = v16;
    v7 = (v7 + 2);
  }

  if (a2 < a4 || (v17 = a2 - a4, v18 = result + 2 * a4, v20 = a5, result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v20, v18), (v19 = v20) != 0) && (v19 = *(v20 + 4), v17 < v19) || v17 == v19)
  {
    __break(1u);
  }

  else
  {
    *&v18[2 * v19] = a6;
  }

  return result;
}

uint64_t std::__tree<unsigned int,std::less<unsigned int>,WTF::FastAllocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(uint64_t **a1, unsigned int a2, _DWORD *a3)
{
  v6 = (a1 + 1);
  v5 = a1[1];
  if (v5)
  {
    while (1)
    {
      while (1)
      {
        v7 = v5;
        v8 = *(v5 + 28);
        if (v8 <= a2)
        {
          break;
        }

        v5 = *v7;
        v6 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (v8 >= a2)
      {
        return 0;
      }

      v5 = v7[1];
      if (!v5)
      {
        v6 = v7 + 1;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v7 = (a1 + 1);
LABEL_9:
    v9 = WTF::fastMalloc(0x20);
    *(v9 + 28) = *a3;
    *v9 = 0;
    *(v9 + 8) = 0;
    *(v9 + 16) = v7;
    *v6 = v9;
    v10 = **a1;
    if (v10)
    {
      *a1 = v10;
      v11 = *v6;
    }

    else
    {
      v11 = v9;
    }

    std::__tree_balance_after_insert[abi:sn200100]<std::__tree_node_base<void *> *>(a1[1], v11);
    a1[2] = (a1[2] + 1);
    return 1;
  }
}

uint64_t WTF::StringBuilder::append<WTF::ASCIILiteral,unsigned int>(WTF::StringBuilder *a1, int8x16_t *a2, uint64_t a3, unint64_t a4)
{
  if (a3)
  {
    v4 = a3 - 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 >> 31;
  if (v4 >> 31)
  {
    result = 161;
    __break(0xC471u);
    goto LABEL_27;
  }

  v8 = -1;
  v9 = a4;
  do
  {
    LODWORD(v5) = v5 + 1;
    --v8;
    v10 = v9 > 9;
    v9 /= 0xAu;
  }

  while (v10);
  v11 = *(a1 + 1);
  if ((v11 || (v11 = *a1) != 0) && (*(v11 + 16) & 4) == 0)
  {
    result = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(a1);
    if (!result)
    {
      return result;
    }

    v14 = v13;
    v15 = (result + 2 * v4);
    if (v4 >= 0x40)
    {
      v16 = result;
      result += 2 * (v4 & 0x7FFFFFC0);
      v17 = 0uLL;
      do
      {
        v27.val[0] = *a2;
        v18 = a2[1];
        v28.val[0] = a2[2];
        v19 = a2[3];
        a2 += 4;
        v20 = v19;
        v28.val[1] = 0uLL;
        v29.val[0] = v18;
        v27.val[1] = 0uLL;
        v21 = v16;
        vst2q_s8(v21, v27);
        v21 += 32;
        v29.val[1] = 0uLL;
        vst2q_s8(v21, v29);
        v22 = v16 + 64;
        vst2q_s8(v22, v28);
        v23 = v16 + 96;
        vst2q_s8(v23, *(&v17 - 1));
        v16 += 128;
      }

      while (v16 != result);
    }

    while (result != v15)
    {
      v24 = a2->u8[0];
      a2 = (a2 + 1);
      *result = v24;
      result += 2;
    }

    if (v14 >= v4)
    {

      return WTF::writeIntegerToBufferImpl<char16_t,unsigned int,(WTF::PositiveOrNegativeNumber)0>(a4, v15, v14 - v4);
    }

LABEL_27:
    __break(1u);
    return result;
  }

  result = MEMORY[0x19EB01170]();
  if (result)
  {

    return WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned int,void>>(result, v25, a2, v4, a4);
  }

  return result;
}

unint64_t WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned int,void>>(_BYTE *__dst, unint64_t a2, _BYTE *__src, size_t __n, unint64_t a5)
{
  v6 = __n;
  if (__n)
  {
    if (__n == 1)
    {
      goto LABEL_9;
    }

    memcpy(__dst, __src, __n);
  }

  while (a2 < v6)
  {
    __break(1u);
LABEL_9:
    *__dst = *__src;
  }

  return WTF::writeIntegerToBufferImpl<unsigned char,unsigned int,(WTF::PositiveOrNegativeNumber)0>(a5, &__dst[v6], a2 - v6);
}

unint64_t WTF::writeIntegerToBufferImpl<char16_t,unsigned int,(WTF::PositiveOrNegativeNumber)0>(unint64_t result, _WORD *a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = 12;
  do
  {
    if (v3 == -1)
    {
LABEL_8:
      __break(1u);
    }

    v7[v3--] = (result % 0xA) | 0x30;
    v4 = result > 9;
    result = result / 0xAuLL;
  }

  while (v4);
  v5 = v3 + 1;
  v6 = v3 + 2;
  do
  {
    if (!a3)
    {
      goto LABEL_8;
    }

    *a2++ = v7[v5];
    ++v6;
    --a3;
    ++v5;
  }

  while (v6 != 14);
  return result;
}

uint64_t WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::expand(uint64_t *a1, int *a2)
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
  v8 = WTF::fastMalloc((40 * v7 + 16));
  if (v7)
  {
    v10 = v7;
    v11 = v8 + 6;
    do
    {
      *(v11 - 2) = 0;
      *v11 = 0uLL;
      v11[1] = 0uLL;
      v11 = (v11 + 40);
      --v10;
    }

    while (v10);
  }

  *a1 = (v8 + 4);
  v8[2] = v7 - 1;
  v8[3] = v7;
  *v8 = 0;
  v8[1] = v6;
  if (v5)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = (v4 + 40 * v12);
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

          v19 = 0;
          v20 = 9 * ((v15 + ~(v15 << 15)) ^ ((v15 + ~(v15 << 15)) >> 10));
          v21 = ((v20 ^ (v20 >> 6)) + ~((v20 ^ (v20 >> 6)) << 11)) ^ (((v20 ^ (v20 >> 6)) + ~((v20 ^ (v20 >> 6)) << 11)) >> 16);
          do
          {
            v22 = v21 & v18;
            v23 = v17 + 40 * v22;
            v21 = ++v19 + v22;
          }

          while (*v23);
          v24 = *(v23 + 8);
          *(v23 + 8) = 0;
          if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v24, v9);
          }

          *v23 = *v14;
          v25 = *(v14 + 1);
          *(v14 + 1) = 0;
          *(v23 + 8) = v25;
          v26 = *(v14 + 1);
          *(v23 + 32) = v14[8];
          *(v23 + 16) = v26;
          v27 = *(v14 + 1);
          *(v14 + 1) = 0;
          if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v27, v9);
          }

          if (v14 == a2)
          {
            v13 = v23;
          }
        }

        else
        {
          v16 = *(v14 + 1);
          *(v14 + 1) = 0;
          if (v16)
          {
            if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v16, v9);
            }
          }
        }
      }

      ++v12;
    }

    while (v12 != v5);
  }

  else
  {
    v13 = 0;
    result = 0;
    if (!v4)
    {
      return result;
    }
  }

  WTF::fastFree((v4 - 16), v9);
  return v13;
}

_DWORD *WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::begin(_DWORD *result)
{
  if (!result)
  {
    return 0;
  }

  v2 = *(result - 1);
  v3 = &result[10 * v2];
  if (!*(result - 3))
  {
    return &result[10 * v2];
  }

  if (v2)
  {
    v4 = 40 * v2;
    while ((*result + 1) <= 1)
    {
      result += 10;
      v4 -= 40;
      if (!v4)
      {
        return v3;
      }
    }
  }

  return result;
}

int *WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<unsigned int>>,(WTF::ShouldValidateKey)1,unsigned int>(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD12FD8);
  }

  v2 = *(a1 - 8);
  v3 = 9 * ((~(a2 << 15) + a2) ^ ((~(a2 << 15) + a2) >> 10));
  v4 = (v3 ^ (v3 >> 6)) + ~((v3 ^ (v3 >> 6)) << 11);
  v5 = v2 & (v4 ^ HIWORD(v4));
  v6 = (a1 + 40 * v5);
  v7 = *v6;
  if (*v6 != a2)
  {
    v8 = 1;
    while (v7)
    {
      v5 = (v5 + v8) & v2;
      v6 = (a1 + 40 * v5);
      v7 = *v6;
      ++v8;
      if (*v6 == a2)
      {
        return v6;
      }
    }

    return (a1 + 40 * *(a1 - 4));
  }

  return v6;
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::hasStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11048B0;
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

  v5 = a1[1];
  a1[1] = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v5);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::hasStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F11048B0;
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

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v5);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::hasStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void>::call(uint64_t a1)
{
  v2 = *(a1 + 8);
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
      goto LABEL_4;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_4:
  v5 = *(a1 + 24);
  *(a1 + 24) = 0;
  v6 = WTF::fastMalloc(0x18);
  v7 = &unk_1F11048D8;
  *v6 = &unk_1F11048D8;
  v6[1] = v2;
  v6[2] = v5;
  v8 = v2[2];
  if (v8)
  {
    v9 = *(v8 + 8);
    if (v9)
    {
      ++*(v9 + 16);
      v10 = *(v9 + 32);
      v17 = *(v9 + 24);
      v11 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v10 + 248), &v17);
      if (v11)
      {
        v12 = v11;
        ++*(v11 + 8);
        result = WebCore::NetworkStorageSession::hasCookies();
        v14 = *(v12 + 8);
        if (v14)
        {
          *(v12 + 8) = v14 - 1;
          v15 = *(v9 + 16);
          if (v15)
          {
            *(v9 + 16) = v15 - 1;
            if (!v6)
            {
              return result;
            }

            return (*(*v6 + 8))(v6);
          }
        }

LABEL_16:
        __break(0xC471u);
        JUMPOUT(0x19DD132E8);
      }

      v16 = *(v9 + 16);
      if (!v16)
      {
        goto LABEL_16;
      }

      *(v9 + 16) = v16 - 1;
      v7 = *v6;
    }
  }

  (*(v7 + 2))(v6, 0);
  return (*(*v6 + 8))(v6);
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::hasStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(void)::{lambda(BOOL)#1},void,BOOL>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F11048D8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::hasStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(void)::{lambda(BOOL)#1},void,BOOL>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F11048D8;
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
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v4);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::hasStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(void)::{lambda(BOOL)#1},void,BOOL>::call(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  v4 = WTF::fastMalloc(0x18);
  *v4 = &unk_1F1104900;
  *(v4 + 8) = v3;
  *(v4 + 16) = a2;
  v6 = v4;
  WTF::SuspendableWorkQueue::dispatch();
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::hasStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(void)::{lambda(BOOL)#1}::operator()(BOOL)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1104900;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::hasStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(void)::{lambda(BOOL)#1}::operator()(BOOL)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1104900;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::hasStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(void)::{lambda(BOOL)#1}::operator()(BOOL)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v2 + 16))(v2, v1);
  v3 = *(*v2 + 8);

  return v3(v2);
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::hasStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1104928;
  v3 = a1[7];
  a1[7] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[3];
  a1[3] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[2];
  a1[2] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = a1[1];
  a1[1] = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v6);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::hasStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1104928;
  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 1);
  *(this + 1) = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v6);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::hasStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1,void>::call(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:sn200100]();
    goto LABEL_16;
  }

  v2 = *(a1 + 8);
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
  v5 = *(a1 + 56);
  *(a1 + 56) = 0;
  v6 = WTF::fastMalloc(0x18);
  v7 = &unk_1F1104950;
  *v6 = &unk_1F1104950;
  v6[1] = v2;
  v6[2] = v5;
  v8 = v2[2];
  if (v8)
  {
    v9 = *(v8 + 8);
    if (v9)
    {
      ++*(v9 + 16);
      v10 = *(v9 + 32);
      v18 = *(v9 + 24);
      v11 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v10 + 248), &v18);
      if (v11)
      {
        v12 = v11;
        ++*(v11 + 8);
        hasStorageAccess = WebCore::NetworkStorageSession::hasStorageAccess();
        (*(*v6 + 16))(v6, hasStorageAccess);
        result = (*(*v6 + 8))(v6);
        v15 = *(v12 + 8);
        if (v15)
        {
          *(v12 + 8) = v15 - 1;
          v16 = *(v9 + 16);
          if (v16)
          {
            *(v9 + 16) = v16 - 1;
            return result;
          }
        }

LABEL_16:
        __break(0xC471u);
        JUMPOUT(0x19DD139C4);
      }

      v17 = *(v9 + 16);
      if (!v17)
      {
        goto LABEL_16;
      }

      *(v9 + 16) = v17 - 1;
      v7 = *v6;
    }
  }

  (*(v7 + 2))(v6, 0);
  return (*(*v6 + 8))(v6);
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::hasStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1::operator()(void)::{lambda(BOOL)#1},void,BOOL>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1104950;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::hasStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1::operator()(void)::{lambda(BOOL)#1},void,BOOL>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1104950;
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
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v4);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::hasStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1::operator()(void)::{lambda(BOOL)#1},void,BOOL>::call(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  v4 = WTF::fastMalloc(0x18);
  *v4 = &unk_1F1104978;
  *(v4 + 8) = v3;
  *(v4 + 16) = a2;
  v6 = v4;
  WTF::SuspendableWorkQueue::dispatch();
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::hasStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1::operator()(void)::{lambda(BOOL)#1}::operator()(BOOL)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1104978;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::hasStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1::operator()(void)::{lambda(BOOL)#1}::operator()(BOOL)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1104978;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::hasStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1::operator()(void)::{lambda(BOOL)#1}::operator()(BOOL)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v2 + 16))(v2, v1);
  v3 = *(*v2 + 8);

  return v3(v2);
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::requestStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &&<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(WebKit::StorageAccessStatus)> &&)::$_0,void,WebCore::StorageAccessWasGranted>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11049A0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::requestStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &&<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(WebKit::StorageAccessStatus)> &&)::$_0,void,WebCore::StorageAccessWasGranted>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11049A0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::requestStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &&<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(WebKit::StorageAccessStatus)> &&)::$_0,void,WebCore::StorageAccessWasGranted>::call(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v2 + 16))(v2, 2 * (a2 == 1));
  v3 = *(*v2 + 8);

  return v3(v2);
}

uint64_t *WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(uint64_t *a1, WTF **a2, uint64_t a3)
{
  *a1 = 0;
  if (a3)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::reserveInitialCapacity(a1, a3);
    v7 = 8 * a3;
    do
    {
      WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(a1, a2++, v6, v9);
      v7 -= 8;
    }

    while (v7);
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::grantStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &&<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WTF::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_1,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F11049F0;
  WebKit::ResourceLoadStatisticsStore::grantStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_1::~$_1((a1 + 1), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::grantStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &&<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WTF::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_1,void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F11049F0;
  WebKit::ResourceLoadStatisticsStore::grantStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_1::~$_1(a1 + 8, a2);

  return WTF::fastFree(a1, v3);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::grantStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &&<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WTF::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_1,void>::call(uint64_t a1)
{
  LOBYTE(v54) = 0;
  v57 = 0;
  v2 = *(*(a1 + 40) + 16);
  if (!v2 || (v3 = *(v2 + 8)) == 0)
  {
    v12 = 0;
    v30 = *(a1 + 8);
    *(a1 + 8) = 0;
    v43 = v30;
    goto LABEL_30;
  }

  ++*(v3 + 16);
  v4 = *(v3 + 32);
  v43 = *(v3 + 24);
  v5 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v4 + 248), &v43);
  if (v5)
  {
    v6 = v5;
    ++*(v5 + 8);
    WebCore::NetworkStorageSession::storageAccessQuirkForDomainPair();
    std::__optional_storage_base<WebCore::OrganizationStorageAccessPromptQuirk,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::OrganizationStorageAccessPromptQuirk,false>>(&v54, &v43);
    if (v45[16] == 1)
    {
      WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v45, v7);
      if (v44)
      {
        WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v44, v8);
      }

      v9 = v43;
      v43 = 0;
      if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v8);
      }
    }

    canRequestStorageAccessForLoginOrCompatibilityPurposesWithoutPriorUserInteraction = WebCore::NetworkStorageSession::canRequestStorageAccessForLoginOrCompatibilityPurposesWithoutPriorUserInteraction();
    v11 = *(v6 + 8);
    if (!v11)
    {
LABEL_41:
      __break(0xC471u);
      JUMPOUT(0x19DD14390);
    }

    v12 = canRequestStorageAccessForLoginOrCompatibilityPurposesWithoutPriorUserInteraction;
    *(v6 + 8) = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v3 + 16);
  if (!v13)
  {
    goto LABEL_41;
  }

  *(v3 + 16) = v13 - 1;
  v14 = v57;
  v15 = *(a1 + 8);
  *(a1 + 8) = 0;
  v43 = v15;
  if ((v14 & 1) == 0)
  {
LABEL_30:
    LOBYTE(v44) = 0;
    v45[24] = 0;
    goto LABEL_31;
  }

  WTF::String::isolatedCopy();
  WTF::CrossThreadCopierBase<false,false,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::copy(&v59, &v55, v16);
  v19 = v56;
  v20 = HIDWORD(v56);
  if (HIDWORD(v56))
  {
    v21 = 40 * HIDWORD(v56);
    do
    {
      WTF::URL::isolatedCopy();
      WTF::URL::operator=(v19, &v61);
      v22 = v61;
      v61 = 0;
      if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v17);
      }

      v19 += 40;
      v21 -= 40;
    }

    while (v21);
    v19 = v56;
    v20 = HIDWORD(v56);
  }

  *&v18 = 0;
  v23 = DWORD2(v56);
  v56 = v18;
  v24 = v60;
  v60 = 0;
  v61 = v24;
  v62 = v59;
  v63 = v19;
  v58 = v18;
  v64 = v23;
  v65 = v20;
  WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v58, v17);
  v26 = v60;
  v60 = 0;
  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, v25);
  }

  std::__optional_destruct_base<WebCore::OrganizationStorageAccessPromptQuirk,false>::__optional_destruct_base[abi:sn200100]<WebCore::OrganizationStorageAccessPromptQuirk>(&v44, &v61);
  WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v63, v27);
  if (v62)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v62, v28);
  }

  v29 = v61;
  v61 = 0;
  if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v29, v28);
  }

LABEL_31:
  WebCore::RegistrableDomain::isolatedCopy(&v46);
  WebCore::RegistrableDomain::isolatedCopy(&v47);
  v31 = *(a1 + 48);
  *(a1 + 48) = 0;
  v48 = v31;
  v49 = *(a1 + 56);
  v50 = *(a1 + 72);
  v51 = v12;
  v32 = *(a1 + 80);
  *(a1 + 80) = 0;
  v52 = v32;
  v33 = WTF::fastMalloc(0x78);
  *v33 = &unk_1F1104A18;
  v34 = v43;
  v43 = 0;
  *(v33 + 8) = v34;
  std::__optional_move_base<WebCore::OrganizationStorageAccessPromptQuirk,false>::__optional_move_base[abi:sn200100](v33 + 16, &v44);
  *(v33 + 56) = v46;
  v35 = v47;
  v46 = 0;
  v47 = 0;
  *(v33 + 64) = v35;
  *(v33 + 72) = v48;
  v36 = v49;
  *(v33 + 96) = v50;
  *(v33 + 80) = v36;
  *(v33 + 104) = v51;
  v37 = v52;
  v48 = 0;
  v52 = 0;
  v53 = v33;
  *(v33 + 112) = v37;
  WTF::SuspendableWorkQueue::dispatch();
  v39 = v53;
  v53 = 0;
  if (v39)
  {
    (*(*v39 + 8))(v39);
  }

  result = WebKit::ResourceLoadStatisticsStore::grantStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_1::operator()(void)::{lambda(void)#1}::~(&v43, v38);
  if (v57 == 1)
  {
    WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v56, v41);
    if (v55)
    {
      WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v55, v42);
    }

    result = v54;
    v54 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v42);
      }
    }
  }

  return result;
}

uint64_t WebKit::ResourceLoadStatisticsStore::grantStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_1::operator()(void)::{lambda(void)#1}::~(uint64_t a1, void *a2)
{
  v3 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  v5 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  if (*(a1 + 40) == 1)
  {
    WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 24, a2);
    v7 = *(a1 + 16);
    if (v7)
    {
      WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v7, a2);
    }

    v8 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, a2);
    }
  }

  v9 = *a1;
  *a1 = 0;
  if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    WTF::fastFree(v9, a2);
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::grantStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &&<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WTF::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_1::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1104A18;
  WebKit::ResourceLoadStatisticsStore::grantStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_1::operator()(void)::{lambda(void)#1}::~((a1 + 1), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::grantStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &&<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WTF::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_1::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F1104A18;
  WebKit::ResourceLoadStatisticsStore::grantStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_1::operator()(void)::{lambda(void)#1}::~(a1 + 8, a2);

  return WTF::fastFree(a1, v3);
}

_DWORD *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::grantStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &&<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WTF::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_1::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1, uint64_t a2, const WTF::StringImpl *a3)
{
  v4 = *(a1 + 8);
  if (v4 && *(v4 + 8))
  {
    if (*(a1 + 48) == 1)
    {
      v5 = WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin((a1 + 24), a2, a3);
      v8 = v5;
      v26[0] = v5;
      v26[1] = v6;
      v9 = *(a1 + 24);
      v10 = v9 ? v9 + 24 * *(v9 - 4) : 0;
      if (v10 != v5)
      {
        do
        {
          v14 = *(v8 + 20);
          if (v14)
          {
            v15 = *(v8 + 8);
            v16 = 8 * v14;
            do
            {
              if (!WTF::equal(*v8, *(a1 + 64), v7) || (WTF::equal(*v15, *(a1 + 56), v17) & 1) == 0)
              {
                v18 = *v15;
                if (*v15)
                {
                  atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
                }

                v25 = v18;
                v19 = *v8;
                if (*v8)
                {
                  atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
                }

                v24 = v19;
                v20 = WTF::fastMalloc(0x10);
                *v20 = &unk_1F1104A40;
                v23 = v20;
                WebKit::ResourceLoadStatisticsStore::grantStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_0::operator()(a1 + 72, &v25, &v24, &v23);
                if (v23)
                {
                  (*(*v23 + 8))(v23);
                }

                v21 = v24;
                v24 = 0;
                if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v21, v6);
                }

                v22 = v25;
                v25 = 0;
                if (v22)
                {
                  if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v22, v6);
                  }
                }
              }

              ++v15;
              v16 -= 8;
            }

            while (v16);
            v8 = v26[0];
          }

          v26[0] = v8 + 24;
          WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(v26, v6, v7);
          v8 = v26[0];
        }

        while (v26[0] != v10);
      }
    }

    return WebKit::ResourceLoadStatisticsStore::grantStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_0::operator()(a1 + 72, (a1 + 56), (a1 + 64), (a1 + 112));
  }

  else
  {
    v11 = *(a1 + 112);
    *(a1 + 112) = 0;
    (*(*v11 + 16))(v11, 0);
    v12 = *(*v11 + 8);

    return v12(v11);
  }
}

_DWORD *WebKit::ResourceLoadStatisticsStore::grantStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_0::operator()(uint64_t a1, WTF **a2, const WTF::StringImpl **a3, uint64_t *a4)
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    v5 = *(*a1 + 8);
    if (v5)
    {
      ++*(v5 + 104);
      if (*(a1 + 24) != 1)
      {
        v14 = 0;
LABEL_21:
        WebKit::ResourceLoadStatisticsStore::grantStorageAccessInternal(v5, a2, a3, *(a1 + 8), 1, *(a1 + 16), v14 & 1, *(a1 + 25), a4);
        return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref((v5 + 104));
      }

      WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(v5, a2, "grantStorageAccess");
      if ((v9 & 1) == 0)
      {
        v15 = *a4;
        *a4 = 0;
        (*(*v15 + 16))(v15, 0);
        (*(*v15 + 8))(v15);
        return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref((v5 + 104));
      }

      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v10 = v20;
      v19 = v20;
      v11 = *a3;
      if (*a3)
      {
        atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
      }

      v21[0] = v11;
      WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v20, v21, 1);
      WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(v5, &v19, &v20);
      if (v20)
      {
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v20, v12);
      }

      v13 = v21[0];
      v21[0] = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v12);
        if (v10)
        {
LABEL_12:
          if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v10, v12);
          }
        }
      }

      else if (v10)
      {
        goto LABEL_12;
      }

      v14 = *(a1 + 24);
      goto LABEL_21;
    }
  }

  v16 = *a4;
  *a4 = 0;
  (*(*v16 + 16))(v16, 0);
  v17 = *(*v16 + 8);

  return v17(v16);
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::grantStorageAccessInternal(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1104A68;
  v3 = a1[8];
  a1[8] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[6];
  a1[6] = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v4);
  }

  v5 = a1[2];
  a1[2] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = a1[1];
  a1[1] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::grantStorageAccessInternal(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1104A68;
  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 6);
  *(this + 6) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v4);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
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

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::grantStorageAccessInternal(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_0,void>::call(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  *(a1 + 64) = 0;
  while (1)
  {
    v6 = *v4;
    if ((*v4 & 1) == 0)
    {
      break;
    }

    v7 = *v4;
    atomic_compare_exchange_strong_explicit(v4, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v6)
    {
      goto LABEL_4;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_4:
  v8 = WTF::fastMalloc(0x18);
  *v8 = &unk_1F1104A90;
  v8[1] = v5;
  v8[2] = v4;
  v9 = v4[2];
  if (!v9 || (v10 = *(v9 + 8)) == 0)
  {
    v16 = 0;
    goto LABEL_12;
  }

  ++*(v10 + 16);
  v11 = *(v10 + 32);
  v20 = *(v10 + 24);
  v12 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v11 + 248), &v20);
  if (!v12)
  {
    v19 = *(v10 + 16);
    if (v19)
    {
      v16 = 0;
      *(v10 + 16) = v19 - 1;
      goto LABEL_12;
    }

LABEL_21:
    __break(0xC471u);
    JUMPOUT(0x19DD14DE4);
  }

  v13 = v12;
  ++*(v12 + 8);
  WebCore::NetworkStorageSession::grantStorageAccess();
  v14 = *(v13 + 8);
  if (!v14)
  {
    goto LABEL_21;
  }

  *(v13 + 8) = v14 - 1;
  v15 = *(v10 + 16);
  if (!v15)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD14E04);
  }

  *(v10 + 16) = v15 - 1;
  if (v3)
  {
    v16 = WebKit::WebResourceLoadStatisticsStore::storageAccessWasGrantedValueForFrame(v4, v2, *(a1 + 8));
  }

  else
  {
    v16 = 1;
  }

LABEL_12:
  (*(*v8 + 16))(v8, v16);
  v17 = *(*v8 + 8);

  return v17(v8);
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::grantStorageAccessInternal(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_0::operator()(void)::{lambda(WTF::CompletionHandler)#1},void,WTF::CompletionHandler>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1104A90;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::grantStorageAccessInternal(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_0::operator()(void)::{lambda(WTF::CompletionHandler)#1},void,WTF::CompletionHandler>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1104A90;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::grantStorageAccessInternal(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_0::operator()(void)::{lambda(WTF::CompletionHandler)#1},void,WTF::CompletionHandler>::call(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  v4 = WTF::fastMalloc(0x18);
  *v4 = &unk_1F1104AB8;
  *(v4 + 8) = a2;
  *(v4 + 16) = v3;
  v6 = v4;
  WTF::SuspendableWorkQueue::dispatch();
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::grantStorageAccessInternal(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_0::operator()(void)::{lambda(WTF::CompletionHandler)#1}::operator()(WTF::CompletionHandler)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1104AB8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::grantStorageAccessInternal(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_0::operator()(void)::{lambda(WTF::CompletionHandler)#1}::operator()(WTF::CompletionHandler)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1104AB8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::grantStorageAccessInternal(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_0::operator()(void)::{lambda(WTF::CompletionHandler)#1}::operator()(WTF::CompletionHandler)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v2 + 16))(v2, v1);
  v3 = *(*v2 + 8);

  return v3(v2);
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::dumpResourceLoadStatistics(WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1104B08;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::dumpResourceLoadStatistics(WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1104B08;
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

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::dumpResourceLoadStatistics(WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 && (v2 = *(v1 + 8)) != 0)
  {
    v3 = (v2 + 104);
    ++*(v2 + 104);
    WebKit::ResourceLoadStatisticsStore::dumpResourceLoadStatistics(v2, (a1 + 16));

    return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v3);
  }

  else
  {
    v7 = 0;
    v5 = *(a1 + 16);
    *(a1 + 16) = 0;
    (*(*v5 + 16))(v5, &v7);
    (*(*v5 + 8))(v5);
    result = v7;
    v7 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v6);
    }
  }

  return result;
}

WTF::StringImpl *WTF::VectorDestructor<true,WebKit::ResourceLoadStatisticsStore::DomainData>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = v3[1];
      v3[1] = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      v3 += 5;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::WallTime>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::WallTime,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::WallTime>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::WallTime,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::WallTime>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::WallTime,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
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

  v8 = WTF::fastMalloc((16 * a2 + 16));
  v11 = v8;
  v12 = v8 + 16;
  if (a2)
  {
    bzero((v8 + 16), 16 * a2);
  }

  *a1 = v12;
  v11[2] = a2 - 1;
  v11[3] = a2;
  *v11 = 0;
  v11[1] = v7;
  if (v6)
  {
    v13 = 0;
    v14 = 0;
    v15 = v6;
    do
    {
      v16 = v5 + 16 * v13;
      if (*v16 != -1)
      {
        if (WTF::equal(*v16, 0, v10))
        {
          v17 = *v16;
          *v16 = 0;
          if (v17)
          {
            if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v17, v9);
            }
          }
        }

        else
        {
          v18 = *a1;
          if (*a1)
          {
            v19 = *(v18 - 8);
          }

          else
          {
            v19 = 0;
          }

          v20 = WTF::ASCIICaseInsensitiveHash::hash(*v16, v9);
          v21 = 0;
          do
          {
            v22 = v20 & v19;
            v23 = WTF::equal(*(v18 + 16 * v22), 0, v10);
            v20 = ++v21 + v22;
          }

          while (!v23);
          v24 = v18 + 16 * v22;
          v25 = *v24;
          *v24 = 0;
          if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v25, v9);
          }

          v26 = *v16;
          *v16 = 0;
          *v24 = v26;
          *(v24 + 8) = *(v16 + 8);
          v27 = *v16;
          *v16 = 0;
          if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v27, v9);
          }

          if (v16 == a3)
          {
            v14 = v24;
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
    if (!v5)
    {
      return result;
    }
  }

  WTF::fastFree((v5 - 16), v9);
  return v14;
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::clear(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1104B30;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::clear(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1104B30;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::clear(WTF::CompletionHandler<void ()(void)> &&)::$_1,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1104B58;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::clear(WTF::CompletionHandler<void ()(void)> &&)::$_1,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1104B58;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::updateCookieBlocking(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1104B80;
  v3 = a1[10];
  a1[10] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[9];
  if (v4)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 7), a2);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 5), v5);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 3), v6);
  v8 = a1[2];
  a1[2] = 0;
  if (v8)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8);
  }

  v9 = a1[1];
  a1[1] = 0;
  if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    WTF::fastFree(v9, v7);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::updateCookieBlocking(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F1104B80;
  v3 = *(a1 + 10);
  *(a1 + 10) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 9);
  if (v4)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 56, a2);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 40, v5);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 24, v6);
  v8 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v8)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8);
  }

  v9 = *(a1 + 1);
  *(a1 + 1) = 0;
  if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    WTF::fastFree(v9, v7);
  }

  return WTF::fastFree(a1, v7);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::updateCookieBlocking(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::call(void *a1)
{
  v3 = a1[1];
  v2 = a1[2];
  a1[1] = 0;
  while (1)
  {
    v4 = *v2;
    if ((*v2 & 1) == 0)
    {
      break;
    }

    v5 = *v2;
    atomic_compare_exchange_strong_explicit(v2, &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v4)
    {
      goto LABEL_4;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_4:
  v6 = a1[10];
  a1[10] = 0;
  v7 = WTF::fastMalloc(0x20);
  *v7 = &unk_1F1104BA8;
  v7[1] = v3;
  v7[2] = v2;
  v7[3] = v6;
  v10 = v7;
  WebKit::WebResourceLoadStatisticsStore::callUpdatePrevalentDomainsToBlockCookiesForHandler(v2, (a1 + 3), &v10);
  result = v10;
  if (v10)
  {
    v9 = *(*v10 + 8);

    return v9();
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::updateCookieBlocking(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1104BA8;
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
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v4);
  }

  v5 = a1[1];
  a1[1] = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::updateCookieBlocking(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1104BA8;
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
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v4);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::updateCookieBlocking(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  v3 = WTF::fastMalloc(0x18);
  *v3 = &unk_1F1104BD0;
  v3[1] = v1;
  v3[2] = v2;
  v5 = v3;
  WTF::SuspendableWorkQueue::dispatch();
  result = v5;
  if (v5)
  {
    return (*(*v5 + 8))(v5);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::updateCookieBlocking(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1}::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1104BD0;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::updateCookieBlocking(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1}::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1104BD0;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::updateCookieBlocking(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1}::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v2 + 16))(v2);
  result = (*(*v2 + 8))(v2);
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      if (*(v5 + 724) == 1)
      {
        v6 = qword_1ED640B30;
        if (!os_log_type_enabled(qword_1ED640B30, OS_LOG_TYPE_INFO) || (*buf = 0, _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_INFO, "ResourceLoadStatisticsStore: Done applying cross-site tracking restrictions.", buf, 2u), (v7 = *(a1 + 8)) != 0) && (v5 = *(v7 + 8)) != 0)
        {
          WTF::StringImpl::createWithoutCopyingNonEmpty();
          WebKit::ResourceLoadStatisticsStore::debugBroadcastConsoleMessage(v5, 4, &v9);
          result = v9;
          v9 = 0;
          if (result)
          {
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              return WTF::StringImpl::destroy(result, v8);
            }
          }
        }

        else
        {
          result = 121;
          __break(0xC471u);
        }
      }
    }
  }

  return result;
}

__n128 WTF::Vector<WebKit::ResourceLoadStatisticsStore::DomainData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::ResourceLoadStatisticsStore::DomainData>(unsigned int *a1, unint64_t a2)
{
  v3 = WTF::Vector<WebKit::ResourceLoadStatisticsStore::DomainData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a1[3] + 1, a2);
  v4 = (*a1 + 40 * a1[3]);
  v4->n128_u32[0] = v3->n128_u32[0];
  v5 = v3->n128_u64[1];
  v3->n128_u64[1] = 0;
  v4->n128_u64[1] = v5;
  v6 = v3[2].n128_u64[0];
  result = v3[1];
  v4[1] = result;
  v4[2].n128_u64[0] = v6;
  ++a1[3];
  return result;
}

unint64_t WTF::Vector<WebKit::ResourceLoadStatisticsStore::DomainData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 40 * a1[3] <= a3)
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

    WTF::Vector<WebKit::ResourceLoadStatisticsStore::DomainData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::ResourceLoadStatisticsStore::DomainData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

unsigned int *WTF::Vector<WebKit::ResourceLoadStatisticsStore::DomainData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(unsigned int *result, unint64_t a2)
{
  if (result[2] < a2)
  {
    if (a2 >= 0x6666667)
    {
      __break(0xC471u);
    }

    else
    {
      v2 = result;
      v3 = *result;
      v4 = result[3];
      v5 = 40 * a2;
      result = WTF::fastMalloc((40 * a2));
      v2[2] = v5 / 0x28;
      *v2 = result;
      if (v4)
      {
        v7 = result;
        v8 = v3;
        do
        {
          *v7 = *v8;
          v9 = *(v8 + 1);
          *(v8 + 1) = 0;
          *(v7 + 1) = v9;
          v10 = *(v8 + 1);
          *(v7 + 4) = *(v8 + 4);
          *(v7 + 1) = v10;
          result = *(v8 + 1);
          *(v8 + 1) = 0;
          if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v6);
          }

          v7 += 10;
          v8 = (v8 + 40);
        }

        while (v8 != (v3 + 40 * v4));
      }

      if (v3)
      {
        if (*v2 == v3)
        {
          *v2 = 0;
          v2[2] = 0;
        }

        return WTF::fastFree(v3, v6);
      }
    }
  }

  return result;
}

uint64_t *WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>(uint64_t *result, int8x16_t **a2, unint64_t *a3, char *a4)
{
  v5 = a3;
  v7 = *a3;
  while (((v8 = result[1]) != 0 || (v8 = *result) != 0) && (*(v8 + 16) & 4) == 0 || v7 && (*(v7 + 16) & 4) == 0)
  {
    result = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(result);
    if (!result)
    {
      return result;
    }

    v11 = *a2;
    v10 = a2[1];
    v7 = *v5;
    a2 = *a4;
    if (v10 < 0x40)
    {
      v12 = result;
    }

    else
    {
      v12 = (result + 2 * (v10 & 0x7FFFFFFFFFFFFFC0));
      v13 = 0uLL;
      v14 = result;
      do
      {
        v29.val[0] = *v11;
        v15 = v11[1];
        v30.val[0] = v11[2];
        v16 = v11[3];
        v11 += 4;
        v17 = v16;
        v30.val[1] = 0uLL;
        v31.val[0] = v15;
        v29.val[1] = 0uLL;
        v18 = v14;
        vst2q_s8(v18, v29);
        v18 += 32;
        v31.val[1] = 0uLL;
        vst2q_s8(v18, v31);
        v19 = v14 + 64;
        vst2q_s8(v19, v30);
        v20 = v14 + 96;
        vst2q_s8(v20, *(&v13 - 1));
        v14 += 128;
      }

      while (v14 != v12);
    }

    while (v12 != (result + 2 * v10))
    {
      v26 = v11->u8[0];
      v11 = (v11 + 1);
      *v12 = v26;
      v12 = (v12 + 2);
    }

    if (v9 >= v10)
    {
      v5 = (v9 - v10);
      a4 = result + 2 * v10;
      v27 = v7;
      result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v27, a4);
      v7 = v27;
      if (!v27 || (v7 = *(v27 + 4), v5 >= v7))
      {
        if (v5 != v7)
        {
          *&a4[2 * v7] = a2;
          return result;
        }
      }
    }

    __break(1u);
  }

  result = MEMORY[0x19EB01170]();
  if (result)
  {
    v22 = *a2;
    v23 = a2[1];
    v24 = *v5;
    v25 = *a4;

    return WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>(result, v21, v22, v23, v24, v25);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setIsRunningTest(BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1104C48;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setIsRunningTest(BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1104C48;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setIsRunningTest(BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    v5 = *(v3 + 104);
    v4 = v3 + 104;
    *v4 = v5 + 1;
    *(v4 + 129) = *(a1 + 8);
    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v4);
  }

  v6 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 16), &v8);
  WTF::RunLoop::mainSingleton(v6);
  WTF::RunLoop::dispatch();
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setShouldClassifyResourcesBeforeDataRecordsRemoval(BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1104C70;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setShouldClassifyResourcesBeforeDataRecordsRemoval(BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1104C70;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setShouldClassifyResourcesBeforeDataRecordsRemoval(BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    v5 = *(v3 + 104);
    v4 = v3 + 104;
    *v4 = v5 + 1;
    *(v4 + 128) = *(a1 + 8);
    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v4);
  }

  v6 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 16), &v8);
  WTF::RunLoop::mainSingleton(v6);
  WTF::RunLoop::dispatch();
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

atomic_ullong *WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::WebResourceLoadStatisticsStore>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::WebResourceLoadStatisticsStore *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>::call(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
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
        goto LABEL_4;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
  }

LABEL_4:
  v5 = a1[2];
  v6 = a1[3];
  v7 = (a1[1] + (v6 >> 1));
  if (v6)
  {
    v5 = *(*v7 + v5);
  }

  result = v5(v7);
  if (v2)
  {

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v2);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::WebResourceLoadStatisticsStore(WebKit::NetworkSession &,WTF::String const&,WebKit::ShouldIncludeLocalhost,WebCore::ResourceLoadStatistics::IsEphemeral)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1104CC0;
  a1[1] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::WebResourceLoadStatisticsStore(WebKit::NetworkSession &,WTF::String const&,WebKit::ShouldIncludeLocalhost,WebCore::ResourceLoadStatistics::IsEphemeral)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1104CC0;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WebKit::WebResourceLoadStatisticsStore::WebResourceLoadStatisticsStore(WebKit::NetworkSession &,WTF::String const&,WebKit::ShouldIncludeLocalhost,WebCore::ResourceLoadStatistics::IsEphemeral)::$_0::operator()<WebKit::WebResourceLoadStatisticsStore>(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = (v4 + 32);
  while (1)
  {
    v6 = *v5;
    if ((*v5 & 1) == 0)
    {
      break;
    }

    v16 = *v5;
    atomic_compare_exchange_strong_explicit(v5, &v16, v6 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v16 == v6)
    {
      goto LABEL_4;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_4:
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = WebKit::ResourceLoadStatisticsStore::operator new(0x2D8, a2);
  WebKit::ResourceLoadStatisticsStore::ResourceLoadStatisticsStore(v9, a2, v4, v7, a1, v8);
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v4 + 32));
  ++*(v9 + 104);
  v10 = a2[4];
  a2[4] = v9;
  if (v10)
  {
    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref((v10 + 104));
  }

  WTF::FileSystemImpl::pathByAppendingComponent();
  if (WTF::FileSystemImpl::fileExists(&v17, v11))
  {
    WTF::FileSystemImpl::deleteFile(&v17, v12);
  }

  WebKit::ResourceLoadStatisticsStore::didCreateNetworkProcess(v9);
  v14 = v17;
  v17 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v13);
  }

  return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref((v9 + 104));
}

uint64_t WebKit::ResourceLoadStatisticsStore::operator new(WebKit::ResourceLoadStatisticsStore *this, void *a2)
{
  if (WebKit::ResourceLoadStatisticsStore::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::ResourceLoadStatisticsStore::s_heapRef, a2);
  }

  else
  {
    return WebKit::ResourceLoadStatisticsStore::operatorNewSlow(0x2D8);
  }
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::didDestroyNetworkSession(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1104CE8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::didDestroyNetworkSession(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1104CE8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::didDestroyNetworkSession(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::didDestroyNetworkSession(WTF::CompletionHandler<void ()(void)> &&)::$_1,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1104D10;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::didDestroyNetworkSession(WTF::CompletionHandler<void ()(void)> &&)::$_1,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1104D10;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::destroyResourceLoadStatisticsStore(WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1104D38;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::destroyResourceLoadStatisticsStore(WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1104D38;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::destroyResourceLoadStatisticsStore(WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  *(a2 + 32) = 0;
  if (v3)
  {
    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref((v3 + 104));
  }

  v4 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 8), &v6);
  WTF::RunLoop::mainSingleton(v4);
  WTF::RunLoop::dispatch();
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::populateMemoryStoreFromDisk(WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1104D60;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::populateMemoryStoreFromDisk(WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1104D60;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WebKit::WebResourceLoadStatisticsStore::populateMemoryStoreFromDisk(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()<WebKit::WebResourceLoadStatisticsStore>(uint64_t *a1, atomic_ullong *a2)
{
  v3 = a2[4];
  if (v3)
  {
    v4 = (v3 + 104);
    ++*(v3 + 104);
    if (*(v3 + 727) == 1)
    {
      v5 = *a1;
      *a1 = 0;
      v6 = WTF::fastMalloc(0x10);
      *v6 = &unk_1F1104D88;
      v6[1] = v5;
      v15[0] = v6;
      WebKit::ResourceLoadStatisticsStore::grandfatherExistingWebsiteData(v3, v15);
      if (v15[0])
      {
        (*(*v15[0] + 8))(v15[0]);
      }

      *(v3 + 727) = 0;
    }

    else
    {
      while (1)
      {
        v9 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v10 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_10;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_10:
      v11 = *a1;
      *a1 = 0;
      v12 = WTF::fastMalloc(0x18);
      *v12 = &unk_1F1104DB0;
      *(v12 + 1) = a2;
      v15[0] = 0;
      v15[1] = 0;
      *(v12 + 2) = v11;
      v16 = v12;
      WTF::RunLoop::mainSingleton(v12);
      WTF::RunLoop::dispatch();
      v13 = v16;
      v16 = 0;
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }

      _ZZZN6WebKit30WebResourceLoadStatisticsStore27populateMemoryStoreFromDiskEON3WTF17CompletionHandlerIFvvEEEEN3__0clIS0_EEDaRT_ENUlvE0_D1Ev(v15);
    }

    return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v4);
  }

  else
  {
    v14 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>(a1, v15);
    WTF::RunLoop::mainSingleton(v14);
    WTF::RunLoop::dispatch();
    result = v15[0];
    v15[0] = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t _ZZZN6WebKit30WebResourceLoadStatisticsStore27populateMemoryStoreFromDiskEON3WTF17CompletionHandlerIFvvEEEEN3__0clIS0_EEDaRT_ENUlvE0_D1Ev(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v3);
  }

  return a1;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore27populateMemoryStoreFromDiskEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1104D88;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore27populateMemoryStoreFromDiskEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1104D88;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZZZN6WebKit30WebResourceLoadStatisticsStore27populateMemoryStoreFromDiskEON3WTF17CompletionHandlerIFvvEEEEN3__0clIS0_EEDaRT_ENUlvE_clEv(uint64_t *a1)
{
  v1 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>(a1, &v3);
  WTF::RunLoop::mainSingleton(v1);
  WTF::RunLoop::dispatch();
  result = v3;
  v3 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore27populateMemoryStoreFromDiskEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE0_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F1104DB0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v3);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore27populateMemoryStoreFromDiskEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE0_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F1104DB0;
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
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v4);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore27populateMemoryStoreFromDiskEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE0_vJEE4callEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WebKit::WebResourceLoadStatisticsStore::logTestingEvent(v2, &v7);
  v4 = v7;
  v7 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v3);
  }

  v5 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v5 + 16))(v5);
  return (*(*v5 + 8))(v5);
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setResourceLoadStatisticsDebugMode(BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1104DD8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setResourceLoadStatisticsDebugMode(BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1104DD8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setResourceLoadStatisticsDebugMode(BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    ++*(v3 + 104);
    v4 = *(a1 + 8);
    if (*(v3 + 725) != v4)
    {
      *(v3 + 725) = v4;
      *(v3 + 724) = v4;
      v5 = qword_1ED640B30;
      v6 = os_log_type_enabled(qword_1ED640B30, OS_LOG_TYPE_INFO);
      if (v4)
      {
        if (v6)
        {
          *buf = 0;
          _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_INFO, "ResourceLoadStatisticsStore: Turned ITP Debug Mode on.", buf, 2u);
        }
      }

      else if (v6)
      {
        *buf = 0;
        _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_INFO, "ResourceLoadStatisticsStore: Turned ITP Debug Mode off.", buf, 2u);
      }

      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WebKit::ResourceLoadStatisticsStore::debugBroadcastConsoleMessage(v3, 4, buf);
      v8 = *buf;
      *buf = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v7);
      }

      WebKit::ResourceLoadStatisticsStore::ensurePrevalentResourcesForDebugMode(buf, v3);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v9);
      if (v4)
      {
        v10 = WTF::fastMalloc(0x10);
        *v10 = &unk_1F1104630;
        v13 = v10;
        WebKit::ResourceLoadStatisticsStore::updateCookieBlocking(v3, &v13);
        if (v13)
        {
          (*(*v13 + 8))(v13);
        }
      }
    }

    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref((v3 + 104));
  }

  v11 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 16), buf);
  WTF::RunLoop::mainSingleton(v11);
  WTF::RunLoop::dispatch();
  result = *buf;
  *buf = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setPrevalentResourceForDebugMode(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1104E00;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setPrevalentResourceForDebugMode(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1104E00;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setPrevalentResourceForDebugMode(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    v4 = (v3 + 104);
    ++*(v3 + 104);
    v5 = *(a1 + 8);
    if (v5)
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    }

    v6 = *(v3 + 248);
    *(v3 + 248) = v5;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }

    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v4);
  }

  v7 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 16), &v9);
  WTF::RunLoop::mainSingleton(v7);
  WTF::RunLoop::dispatch();
  result = v9;
  v9 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::scheduleStatisticsAndDataRecordsProcessing(WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1104E28;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::scheduleStatisticsAndDataRecordsProcessing(WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1104E28;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::scheduleStatisticsAndDataRecordsProcessing(WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    v4 = v3 + 26;
    ++v3[26];
    WebKit::ResourceLoadStatisticsStore::processStatisticsAndDataRecords(v3);
    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v4);
  }

  v5 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 8), &v7);
  WTF::RunLoop::mainSingleton(v5);
  WTF::RunLoop::dispatch();
  result = v7;
  v7 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::statisticsDatabaseHasAllTables(WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1104E50;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::statisticsDatabaseHasAllTables(WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1104E50;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::statisticsDatabaseHasAllTables(WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    v4 = v3 + 26;
    ++v3[26];
    WebKit::ResourceLoadStatisticsStore::checkForMissingTablesInSchema(v14, v3);
    v5 = v15;
    v6 = v15 ^ 1;
    v7 = *(a1 + 8);
    *(a1 + 8) = 0;
    v8 = WTF::fastMalloc(0x18);
    *v8 = &unk_1F1104E78;
    *(v8 + 8) = v6;
    *(v8 + 16) = v7;
    v13 = v8;
    WTF::RunLoop::mainSingleton(v8);
    WTF::RunLoop::dispatch();
    if (v13)
    {
      (*(*v13 + 8))(v13);
      if (!v5)
      {
        return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v4);
      }
    }

    else if (!v5)
    {
      return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v4);
    }

    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v14, v9);
    return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v4);
  }

  v11 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v11 + 16))(v11);
  v12 = *(*v11 + 8);

  return v12(v11);
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore30statisticsDatabaseHasAllTablesEONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F1104E78;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore30statisticsDatabaseHasAllTablesEONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F1104E78;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore30statisticsDatabaseHasAllTablesEONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlvE_vJEE4callEv(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v2 + 16))(v2, v1);
  v3 = *(*v2 + 8);

  return v3(v2);
}

WTF *std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::resourceLoadStatisticsUpdated(WTF::Vector<WebCore::ResourceLoadStatistics,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>,WTF::CompletionHandler<void ()(void)> &,0>(void *a1, uint64_t a2)
{
  v4 = WTF::fastMalloc(0x20);
  *v4 = &unk_1F1104EA0;
  v4[2] = 0;
  v4[1] = 0;
  result = WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt((v4 + 1), a2);
  v6 = *(a2 + 16);
  *(a2 + 16) = 0;
  v4[3] = v6;
  *a1 = v4;
  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::resourceLoadStatisticsUpdated(WTF::Vector<WebCore::ResourceLoadStatistics,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1104EA0;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::Vector<WebCore::ResourceLoadStatistics,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 1), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::resourceLoadStatisticsUpdated(WTF::Vector<WebCore::ResourceLoadStatistics,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1104EA0;
  v3 = *(a1 + 3);
  *(a1 + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::Vector<WebCore::ResourceLoadStatistics,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 8, a2);

  return WTF::fastFree(a1, v4);
}

_DWORD *WebKit::WebResourceLoadStatisticsStore::resourceLoadStatisticsUpdated(WTF::Vector<WebCore::ResourceLoadStatistics,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()<WebKit::WebResourceLoadStatisticsStore>(uint64_t a1, atomic_ullong *a2)
{
  v3 = a2[4];
  if (v3)
  {
    ++*(v3 + 104);
    WebKit::ResourceLoadStatisticsStore::mergeStatistics(v3, a1);
    v5 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 16), &v12);
    WTF::RunLoop::mainSingleton(v5);
    WTF::RunLoop::dispatch();
    v6 = v12;
    v12 = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    if (*(v3 + 280) == 1)
    {
      *(v3 + 280) = 0;
    }

    while (1)
    {
      v7 = *a2;
      if ((*a2 & 1) == 0)
      {
        break;
      }

      v8 = *a2;
      atomic_compare_exchange_strong_explicit(a2, &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v8 == v7)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_8:
    v9 = WTF::fastMalloc(0x10);
    *v9 = &unk_1F1104EC8;
    v9[1] = a2;
    v12 = v9;
    WebKit::ResourceLoadStatisticsStore::updateCookieBlocking(v3, &v12);
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    WebKit::ResourceLoadStatisticsStore::processStatisticsAndDataRecords(v3);
    return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref((v3 + 104));
  }

  else
  {
    v11 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 16), &v12);
    WTF::RunLoop::mainSingleton(v11);
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

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore29resourceLoadStatisticsUpdatedEONS_6VectorIN7WebCore22ResourceLoadStatisticsELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1104EC8;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore29resourceLoadStatisticsUpdatedEONS_6VectorIN7WebCore22ResourceLoadStatisticsELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1104EC8;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZZZN6WebKit30WebResourceLoadStatisticsStore29resourceLoadStatisticsUpdatedEON3WTF6VectorIN7WebCore22ResourceLoadStatisticsELm0ENS1_15CrashOnOverflowELm16ENS1_10FastMallocEEEONS1_17CompletionHandlerIFvvEEEEN3__0clIS0_EEDaRT_ENKUlvE_clEv(atomic_ullong *a1)
{
  while (1)
  {
    v2 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v3 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v3, v2 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v3 == v2)
    {
      goto LABEL_3;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_3:
  v4 = WTF::fastMalloc(0x10);
  *v4 = &unk_1F1104EF0;
  *(v4 + 1) = a1;
  v6 = v4;
  WTF::RunLoop::mainSingleton(v4);
  WTF::RunLoop::dispatch();
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZZN6WebKit30WebResourceLoadStatisticsStore29resourceLoadStatisticsUpdatedEONS_6VectorIN7WebCore22ResourceLoadStatisticsELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_ENKUlvE_clEvEUlvE_vJEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1104EF0;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZZN6WebKit30WebResourceLoadStatisticsStore29resourceLoadStatisticsUpdatedEONS_6VectorIN7WebCore22ResourceLoadStatisticsELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_ENKUlvE_clEvEUlvE_vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1104EF0;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *_ZZZZN6WebKit30WebResourceLoadStatisticsStore29resourceLoadStatisticsUpdatedEON3WTF6VectorIN7WebCore22ResourceLoadStatisticsELm0ENS1_15CrashOnOverflowELm16ENS1_10FastMallocEEEONS1_17CompletionHandlerIFvvEEEEN3__0clIS0_EEDaRT_ENKUlvE_clEvENKUlvE_clEv(void *a1)
{
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WebKit::WebResourceLoadStatisticsStore::logTestingEvent(a1, &v4);
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

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::hasStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1104F18;
  v3 = a1[7];
  a1[7] = 0;
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

  v5 = a1[1];
  a1[1] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::hasStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1104F18;
  v3 = *(this + 7);
  *(this + 7) = 0;
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

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::RunLoop *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::hasStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    v4 = (v3 + 104);
    ++*(v3 + 104);
    v6 = *(a1 + 24);
    v5 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    *(a1 + 56) = 0;
    v10 = WTF::fastMalloc(0x10);
    *v10 = &unk_1F1104F68;
    *(v10 + 1) = v9;
    WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(v3, (a1 + 8), "hasStorageAccess");
    if ((v11 & 1) == 0)
    {
LABEL_6:
      (*(*v10 + 8))(v10);
LABEL_27:

      return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v4);
    }

    v12 = WebKit::ResourceLoadStatisticsStore::cookieAccess(v3, a1 + 8, (a1 + 16), v8);
    if (v12 == 1)
    {
      WTF::RunLoop::mainSingleton(v12);
      v13 = *(v3 + 112);
      if (v13)
      {
        while (1)
        {
          v14 = *v13;
          if ((*v13 & 1) == 0)
          {
            break;
          }

          v15 = *v13;
          atomic_compare_exchange_strong_explicit(v13, &v15, v14 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v15 == v14)
          {
            goto LABEL_10;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v13);
LABEL_10:
        WebCore::RegistrableDomain::isolatedCopy(v36);
        v36[1] = v10;
        v16 = WTF::fastMalloc(0x20);
        *v16 = &unk_1F11048B0;
        *(v16 + 8) = v13;
        v17 = *v36;
        v36[0] = 0;
        v36[1] = 0;
        *(v16 + 16) = v17;
        v40 = v16;
        WTF::RunLoop::dispatch();
        v19 = v40;
        v40 = 0;
        if (v19)
        {
          (*(*v19 + 8))(v19);
        }

        v20 = v36[1];
        v36[1] = 0;
        if (v20)
        {
          (*(*v20 + 8))(v20);
        }

        goto LABEL_24;
      }
    }

    else
    {
      if (!v12)
      {
        (*(*v10 + 16))(v10, 0);
        goto LABEL_6;
      }

      WTF::RunLoop::mainSingleton(v12);
      v21 = *(v3 + 112);
      if (v21)
      {
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
            goto LABEL_17;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v21);
LABEL_17:
        WebCore::RegistrableDomain::isolatedCopy(v36);
        WebCore::RegistrableDomain::isolatedCopy(&v36[1]);
        *&v37 = v6;
        BYTE8(v37) = v5;
        v38 = v7;
        v39 = v10;
        v24 = WTF::fastMalloc(0x40);
        *v24 = &unk_1F1104928;
        *(v24 + 8) = v21;
        v25 = v36[0];
        v36[0] = 0;
        *(v24 + 16) = v25;
        *(v24 + 24) = v36[1];
        v26 = v38;
        *(v24 + 32) = v37;
        *(v24 + 48) = v26;
        v27 = v39;
        v36[1] = 0;
        v39 = 0;
        v40 = v24;
        *(v24 + 56) = v27;
        WTF::RunLoop::dispatch();
        v28 = v40;
        v40 = 0;
        if (v28)
        {
          (*(*v28 + 8))(v28);
        }

        v29 = v39;
        v39 = 0;
        if (v29)
        {
          (*(*v29 + 8))(v29);
        }

        v30 = v36[1];
        v36[1] = 0;
        if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v30, v18);
        }

LABEL_24:
        v31 = v36[0];
        v36[0] = 0;
        if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v31, v18);
        }

        goto LABEL_27;
      }
    }

    __break(0xC471u);
    JUMPOUT(0x19DD18880);
  }

  v33 = *(a1 + 56);
  *(a1 + 56) = 0;
  v34 = WTF::fastMalloc(0x10);
  *v34 = &unk_1F1104F40;
  *(v34 + 1) = v33;
  v35 = v34;
  WTF::RunLoop::mainSingleton(v34);
  WTF::RunLoop::dispatch();
  result = v35;
  if (v35)
  {
    return (*(*v35 + 8))(v35);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore16hasStorageAccessEON7WebCore17RegistrableDomainES6_NSt3__18optionalINS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENS9_INS4_18PageIdentifierTypeESC_yEEONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1104F40;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore16hasStorageAccessEON7WebCore17RegistrableDomainES6_NSt3__18optionalINS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENS9_INS4_18PageIdentifierTypeESC_yEEONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1104F40;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore16hasStorageAccessEON7WebCore17RegistrableDomainES6_NSt3__18optionalINS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENS9_INS4_18PageIdentifierTypeESC_yEEONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlvE_vJEE4callEv(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1, 0);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore16hasStorageAccessEON7WebCore17RegistrableDomainES6_NSt3__18optionalINS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENS9_INS4_18PageIdentifierTypeESC_yEEONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlbE_vJbEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1104F68;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore16hasStorageAccessEON7WebCore17RegistrableDomainES6_NSt3__18optionalINS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENS9_INS4_18PageIdentifierTypeESC_yEEONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlbE_vJbEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1104F68;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore16hasStorageAccessEON7WebCore17RegistrableDomainES6_NSt3__18optionalINS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENS9_INS4_18PageIdentifierTypeESC_yEEONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlbE_vJbEE4callEb(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  v4 = WTF::fastMalloc(0x18);
  *v4 = &unk_1F1104F90;
  *(v4 + 8) = v3;
  *(v4 + 16) = a2;
  v6 = v4;
  WTF::RunLoop::mainSingleton(v4);
  WTF::RunLoop::dispatch();
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZZN6WebKit30WebResourceLoadStatisticsStore16hasStorageAccessEON7WebCore17RegistrableDomainES6_NSt3__18optionalINS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENS9_INS4_18PageIdentifierTypeESC_yEEONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_ENUlbE_clEbEUlvE_vJEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1104F90;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZZN6WebKit30WebResourceLoadStatisticsStore16hasStorageAccessEON7WebCore17RegistrableDomainES6_NSt3__18optionalINS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENS9_INS4_18PageIdentifierTypeESC_yEEONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_ENUlbE_clEbEUlvE_vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1104F90;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZZN6WebKit30WebResourceLoadStatisticsStore16hasStorageAccessEON7WebCore17RegistrableDomainES6_NSt3__18optionalINS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENS9_INS4_18PageIdentifierTypeESC_yEEONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_ENUlbE_clEbEUlvE_vJEE4callEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v2 + 16))(v2, v1);
  v3 = *(*v2 + 8);

  return v3(v2);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcessProxy::RequestStorageAccessConfirm,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1104FB8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcessProxy::RequestStorageAccessConfirm,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1104FB8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcessProxy::RequestStorageAccessConfirm,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
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

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::requestStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &&<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::RegistrableDomain &&<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_1,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1104FE0;
  WebKit::WebResourceLoadStatisticsStore::requestStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WTF<WebKit::WebPageProxyIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_0::~$_0((a1 + 6), a2);
  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v3);
  }

  v5 = a1[1];
  a1[1] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::requestStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &&<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::RegistrableDomain &&<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_1,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F1104FE0;
  WebKit::WebResourceLoadStatisticsStore::requestStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WTF<WebKit::WebPageProxyIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_0::~$_0(a1 + 48, a2);
  v4 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v3);
  }

  v5 = *(a1 + 1);
  *(a1 + 1) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v3);
  }

  return WTF::fastFree(a1, v3);
}

_DWORD *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::requestStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &&<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::RegistrableDomain &&<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_1,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, uint64_t a2)
{
  v96 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 32);
  if (v3)
  {
    ++*(v3 + 104);
    v5 = *(a1 + 24);
    v4 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 41);
    v8 = *(a1 + 48);
    v9 = *(a1 + 64);
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0;
    *v80 = v8;
    *&v80[16] = v9;
    v81[0] = *(a1 + 80);
    *(v81 + 9) = *(a1 + 89);
    std::__optional_move_base<WebCore::OrganizationStorageAccessPromptQuirk,false>::__optional_move_base[abi:sn200100](v82, (a1 + 112));
    v10 = *(a1 + 152);
    *(a1 + 152) = 0;
    v83 = v10;
    v11 = WTF::fastMalloc(0x78);
    *v11 = &unk_1F1105058;
    *(v11 + 8) = *v80;
    v12 = *&v80[16];
    *&v80[8] = 0u;
    *(v11 + 24) = v12;
    v13 = *&v80[24];
    *&v80[24] = 0;
    *(v11 + 32) = v13;
    v14 = *(v81 + 9);
    *(v11 + 40) = v81[0];
    *(v11 + 49) = v14;
    std::__optional_move_base<WebCore::OrganizationStorageAccessPromptQuirk,false>::__optional_move_base[abi:sn200100](v11 + 72, v82);
    v15 = v83;
    v83 = 0;
    *(v11 + 112) = v15;
    WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(v3, (a1 + 8), "requestStorageAccess");
    if ((v16 & 1) == 0)
    {
LABEL_6:
      (*(*v11 + 16))(v11, 0);
LABEL_7:
      (*(*v11 + 8))(v11);
LABEL_8:
      WebKit::WebResourceLoadStatisticsStore::requestStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WTF<WebKit::WebPageProxyIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_0::~$_0(v80, v18);
      return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref((v3 + 104));
    }

    v17 = WebKit::ResourceLoadStatisticsStore::cookieAccess(v3, a1 + 8, (a1 + 16), v7);
    if (v17 == 1)
    {
      if (*(v3 + 724) == 1)
      {
        v48 = qword_1ED640B30;
        if (os_log_type_enabled(qword_1ED640B30, OS_LOG_TYPE_INFO))
        {
          WTF::String::utf8();
          v49 = v84[0] ? v84[0] + 16 : 0;
          *buf = 136380675;
          *&buf[4] = v49;
          _os_log_impl(&dword_19D52D000, v48, OS_LOG_TYPE_INFO, "ResourceLoadStatisticsStore: No need to grant storage access to %{private}s since its cookies are not blocked in third-party contexts. Note that the underlying cookie policy may still block this third-party from setting cookies.", buf, 0xCu);
          v51 = v84[0];
          v84[0] = 0;
          if (v51)
          {
            if (*v51 == 1)
            {
              WTF::fastFree(v51, v50);
            }

            else
            {
              --*v51;
            }
          }
        }

        v52 = *(a1 + 8);
        if (v52)
        {
          atomic_fetch_add_explicit(v52, 2u, memory_order_relaxed);
        }

        v84[0] = v52;
        WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("[ITP] No need to grant storage access to '", 43, v84, "' since its cookies are not blocked in third-party contexts. Note that the underlying cookie policy may still block this third-party from setting cookies.", 155, buf);
        WebKit::ResourceLoadStatisticsStore::debugBroadcastConsoleMessage(v3, 4, buf);
        v54 = *buf;
        *buf = 0;
        if (v54 && atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v54, v53);
        }

        v55 = v84[0];
        v84[0] = 0;
        if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v55, v53);
        }
      }

      (*(*v11 + 16))(v11, 2);
      goto LABEL_7;
    }

    if (!v17)
    {
      if (*(v3 + 724) == 1)
      {
        v40 = qword_1ED640B30;
        if (os_log_type_enabled(qword_1ED640B30, OS_LOG_TYPE_INFO))
        {
          WTF::String::utf8();
          v41 = v84[0] ? v84[0] + 16 : 0;
          *buf = 136380675;
          *&buf[4] = v41;
          _os_log_impl(&dword_19D52D000, v40, OS_LOG_TYPE_INFO, "ResourceLoadStatisticsStore: Cannot grant storage access to %{private}s since its cookies are blocked in third-party contexts and it has not received user interaction as first-party.", buf, 0xCu);
          v43 = v84[0];
          v84[0] = 0;
          if (v43)
          {
            if (*v43 == 1)
            {
              WTF::fastFree(v43, v42);
            }

            else
            {
              --*v43;
            }
          }
        }

        v44 = *(a1 + 8);
        if (v44)
        {
          atomic_fetch_add_explicit(v44, 2u, memory_order_relaxed);
        }

        v84[0] = v44;
        WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("[ITP] Cannot grant storage access to '", 39, v84, "' since its cookies are blocked in third-party contexts and it has not received user interaction as first-party.", 113, buf);
        WebKit::ResourceLoadStatisticsStore::debugBroadcastConsoleMessage(v3, 2, buf);
        v46 = *buf;
        *buf = 0;
        if (v46 && atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v46, v45);
        }

        v47 = v84[0];
        v84[0] = 0;
        if (v47)
        {
          if (atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v47, v45);
          }
        }
      }

      goto LABEL_6;
    }

    WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(v3, (a1 + 16), "hasUserGrantedStorageAccessThroughPrompt");
    if ((v20 & 1) == 0 || (WebCore::SQLiteDatabase::prepareStatement(), v93))
    {
      v21 = *(v3 + 724);
LABEL_14:
      if (v21)
      {
        v56 = qword_1ED640B30;
        if (os_log_type_enabled(qword_1ED640B30, OS_LOG_TYPE_INFO))
        {
          WTF::String::utf8();
          if (v84[0])
          {
            v57 = v84[0] + 16;
          }

          else
          {
            v57 = 0;
          }

          WTF::String::utf8();
          if (v86[0])
          {
            v58 = v86[0] + 16;
          }

          else
          {
            v58 = 0;
          }

          *buf = 136380931;
          *&buf[4] = v57;
          v90 = 2081;
          v91 = v58;
          _os_log_impl(&dword_19D52D000, v56, OS_LOG_TYPE_INFO, "ResourceLoadStatisticsStore: About to ask the user whether they want to grant storage access to %{private}s under %{private}s or not.", buf, 0x16u);
          v60 = v86[0];
          v86[0] = 0;
          if (v60)
          {
            if (*v60 == 1)
            {
              WTF::fastFree(v60, v59);
            }

            else
            {
              --*v60;
            }
          }

          v61 = v84[0];
          v84[0] = 0;
          if (v61)
          {
            if (*v61 == 1)
            {
              WTF::fastFree(v61, v59);
            }

            else
            {
              --*v61;
            }
          }
        }

        v62 = *(a1 + 8);
        if (v62)
        {
          atomic_fetch_add_explicit(v62, 2u, memory_order_relaxed);
        }

        v84[0] = v62;
        v63 = *(a1 + 16);
        if (v63)
        {
          atomic_fetch_add_explicit(v63, 2u, memory_order_relaxed);
        }

        v86[0] = v63;
        WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("[ITP] About to ask the user whether they want to grant storage access to '", 75, v84, "' under '", 10, v86, "' or not.", 10, buf);
        WebKit::ResourceLoadStatisticsStore::debugBroadcastConsoleMessage(v3, 4, buf);
        v65 = *buf;
        *buf = 0;
        if (v65 && atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v65, v64);
        }

        v66 = v86[0];
        v86[0] = 0;
        if (v66 && atomic_fetch_add_explicit(v66, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v66, v64);
        }

        v67 = v84[0];
        v84[0] = 0;
        if (v67 && atomic_fetch_add_explicit(v67, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v67, v64);
        }
      }

      (*(*v11 + 16))(v11, 1);
      goto LABEL_7;
    }

    v22 = WebCore::SQLiteStatement::bindInt(buf);
    if (v22)
    {
      goto LABEL_19;
    }

    if (v93)
    {
      goto LABEL_100;
    }

    v22 = WebCore::SQLiteStatement::bindInt(buf);
    if (v22)
    {
LABEL_19:
      v23 = 0;
    }

    else
    {
      if (v93)
      {
        goto LABEL_100;
      }

      v22 = WebCore::SQLiteStatement::step(buf);
      if (v22 == 100)
      {
        if (v93)
        {
          goto LABEL_100;
        }

        v23 = WebCore::SQLiteStatement::columnInt(buf) != 0;
      }

      else
      {
        v23 = 0;
      }
    }

    if (!v93)
    {
      WebCore::SQLiteStatement::~SQLiteStatement(buf);
    }

    v21 = *(v3 + 724);
    if (!v23)
    {
      goto LABEL_14;
    }

    if (*(v3 + 724))
    {
      v68 = qword_1ED640B30;
      if (os_log_type_enabled(qword_1ED640B30, OS_LOG_TYPE_INFO))
      {
        WTF::String::utf8();
        if (v84[0])
        {
          v69 = v84[0] + 16;
        }

        else
        {
          v69 = 0;
        }

        WTF::String::utf8();
        if (v86[0])
        {
          v70 = v86[0] + 16;
        }

        else
        {
          v70 = 0;
        }

        *buf = 136380931;
        *&buf[4] = v69;
        v90 = 2081;
        v91 = v70;
        _os_log_impl(&dword_19D52D000, v68, OS_LOG_TYPE_INFO, "ResourceLoadStatisticsStore: Storage access was granted to %{private}s under %{private}s.", buf, 0x16u);
        v72 = v86[0];
        v86[0] = 0;
        if (v72)
        {
          if (*v72 == 1)
          {
            WTF::fastFree(v72, v71);
          }

          else
          {
            --*v72;
          }
        }

        v73 = v84[0];
        v84[0] = 0;
        if (v73)
        {
          if (*v73 == 1)
          {
            WTF::fastFree(v73, v71);
          }

          else
          {
            --*v73;
          }
        }
      }

      v74 = *(a1 + 8);
      if (v74)
      {
        atomic_fetch_add_explicit(v74, 2u, memory_order_relaxed);
      }

      v88 = v74;
      v75 = *(a1 + 16);
      if (v75)
      {
        atomic_fetch_add_explicit(v75, 2u, memory_order_relaxed);
      }

      v87 = v75;
      WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("[ITP] Storage access was granted to '", 38, &v88, "' under '", 10, &v87, "'.", 3, buf);
      WebKit::ResourceLoadStatisticsStore::debugBroadcastConsoleMessage(v3, 4, buf);
      v77 = *buf;
      *buf = 0;
      if (v77 && atomic_fetch_add_explicit(v77, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v77, v76);
      }

      v78 = v87;
      v87 = 0;
      if (v78 && atomic_fetch_add_explicit(v78, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v78, v76);
      }

      v79 = v88;
      v88 = 0;
      if (v79 && atomic_fetch_add_explicit(v79, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v79, v76);
      }
    }

    WebKit::DatabaseUtilities::beginTransactionIfNecessary(v3, v86);
    WebCore::SQLiteDatabase::prepareStatement();
    if (v85)
    {
      goto LABEL_30;
    }

    v22 = WebCore::SQLiteStatement::bindInt(v84);
    if (v22)
    {
      goto LABEL_30;
    }

    if (!v85)
    {
      if (WebCore::SQLiteStatement::step(v84) == 101)
      {
        v24 = WTF::fastMalloc(0x10);
        *v24 = &unk_1F11049A0;
        v24[1] = v11;
        *buf = v24;
        WebKit::ResourceLoadStatisticsStore::grantStorageAccessInternal(v3, (a1 + 8), (a1 + 16), v5, 1, v4, 1, v6, buf);
        if (*buf)
        {
          (*(**buf + 8))(*buf);
        }

LABEL_33:
        if (!v85)
        {
          WebCore::SQLiteStatement::~SQLiteStatement(v84);
        }

        WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v86);
        goto LABEL_8;
      }

LABEL_30:
      v25 = qword_1ED641148;
      if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
      {
        v37 = *(v3 + 664);
        Error = WebCore::SQLiteDatabase::lastError((v3 + 16));
        ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((v3 + 16));
        *buf = 134218755;
        *&buf[4] = v3;
        v90 = 2048;
        v91 = v37;
        v92 = 1024;
        v93 = Error;
        v94 = 2081;
        v95 = ErrorMsg;
        _os_log_error_impl(&dword_19D52D000, v25, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::requestStorageAccess: failed to step statement", buf, 0x26u);
      }

      (*(*v11 + 16))(v11, 0);
      (*(*v11 + 8))(v11);
      goto LABEL_33;
    }

LABEL_100:
    mpark::throw_bad_variant_access(v22);
  }

  v26 = *(a1 + 48);
  v27 = *(a1 + 64);
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *v80 = v26;
  *&v80[16] = v27;
  v81[0] = *(a1 + 80);
  *(v81 + 9) = *(a1 + 89);
  std::__optional_move_base<WebCore::OrganizationStorageAccessPromptQuirk,false>::__optional_move_base[abi:sn200100](v82, (a1 + 112));
  v28 = *(a1 + 152);
  *(a1 + 152) = 0;
  v83 = v28;
  v29 = WTF::fastMalloc(0x78);
  *v29 = &unk_1F1105008;
  *(v29 + 8) = *v80;
  v30 = *&v80[16];
  *&v80[8] = 0u;
  *(v29 + 24) = v30;
  v31 = *&v80[24];
  *&v80[24] = 0;
  *(v29 + 32) = v31;
  v32 = *(v81 + 9);
  *(v29 + 40) = v81[0];
  *(v29 + 49) = v32;
  v33 = std::__optional_move_base<WebCore::OrganizationStorageAccessPromptQuirk,false>::__optional_move_base[abi:sn200100](v29 + 72, v82);
  v34 = v83;
  v83 = 0;
  *(v29 + 112) = v34;
  *buf = v29;
  WTF::RunLoop::mainSingleton(v33);
  WTF::RunLoop::dispatch();
  v36 = *buf;
  *buf = 0;
  if (v36)
  {
    (*(*v36 + 8))(v36);
  }

  return WebKit::WebResourceLoadStatisticsStore::requestStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WTF<WebKit::WebPageProxyIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_0::~$_0(v80, v35);
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore20requestStorageAccessEON7WebCore17RegistrableDomainES6_NS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS7_INS4_18PageIdentifierTypeESA_yEENS7_INS2_26WebPageProxyIdentifierTypeESA_yEENS4_18StorageAccessScopeEONS_17CompletionHandlerIFvNS4_26RequestStorageAccessResultEEEEEN3__1clIS3_EEDaRT_EUlvE_vJEED1Ev(void *a1, void *a2)
{
  *a1 = &unk_1F1105008;
  WebKit::WebResourceLoadStatisticsStore::requestStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WTF<WebKit::WebPageProxyIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_0::~$_0((a1 + 1), a2);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore20requestStorageAccessEON7WebCore17RegistrableDomainES6_NS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS7_INS4_18PageIdentifierTypeESA_yEENS7_INS2_26WebPageProxyIdentifierTypeESA_yEENS4_18StorageAccessScopeEONS_17CompletionHandlerIFvNS4_26RequestStorageAccessResultEEEEEN3__1clIS3_EEDaRT_EUlvE_vJEED0Ev(WTF *a1, void *a2)
{
  *a1 = &unk_1F1105008;
  WebKit::WebResourceLoadStatisticsStore::requestStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WTF<WebKit::WebPageProxyIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_0::~$_0(a1 + 8, a2);

  return WTF::fastFree(a1, v3);
}

WTF::StringImpl *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore20requestStorageAccessEON7WebCore17RegistrableDomainES6_NS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS7_INS4_18PageIdentifierTypeESA_yEENS7_INS2_26WebPageProxyIdentifierTypeESA_yEENS4_18StorageAccessScopeEONS_17CompletionHandlerIFvNS4_26RequestStorageAccessResultEEEEEN3__1clIS3_EEDaRT_EUlvE_vJEE4callEv(uint64_t a1)
{
  v6 = 0;
  v7 = *(a1 + 64);
  v1 = *(a1 + 32);
  if (v1)
  {
    atomic_fetch_add_explicit(v1, 2u, memory_order_relaxed);
  }

  v8 = v1;
  v2 = *(a1 + 24);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  v9 = v2;
  WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)>::operator()((a1 + 112), &v6);
  v4 = v9;
  v9 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v3);
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

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::requestStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &&<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::RegistrableDomain &&<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_0::operator()(WebKit::StorageAccessStatus)::{lambda(BOOL)#1},void,BOOL>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1105030;
  v3 = a1[8];
  a1[8] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
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
  if (v6)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v6);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::requestStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &&<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::RegistrableDomain &&<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_0::operator()(WebKit::StorageAccessStatus)::{lambda(BOOL)#1},void,BOOL>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1105030;
  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v6);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::requestStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &&<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::RegistrableDomain &&<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_0::operator()(WebKit::StorageAccessStatus)::{lambda(BOOL)#1},void,BOOL>::call(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    WebCore::RegistrableDomain::isolatedCopy(&v24);
    WebCore::RegistrableDomain::isolatedCopy(&v25);
    v26[0] = v4;
    v26[1] = v5;
    LOBYTE(v27) = 1;
    HIBYTE(v27) = v6;
    v7 = *(a1 + 64);
    *(a1 + 64) = 0;
    v28 = v7;
    v8 = WTF::fastMalloc(0x38);
    *v8 = &unk_1F11050F8;
    *(v8 + 8) = v24;
    v9 = v25;
    v24 = 0;
    v25 = 0;
    *(v8 + 16) = v9;
    v10 = *v26;
    *(v8 + 40) = v27;
    *(v8 + 24) = v10;
    v11 = v28;
    v28 = 0;
    *(v8 + 48) = v11;
    if (*(v3 + 88) == 1)
    {
      result = 176;
      __break(0xC471u);
      return result;
    }

    v12 = v8;
    while (1)
    {
      v13 = *v3;
      if ((*v3 & 1) == 0)
      {
        break;
      }

      v14 = *v3;
      atomic_compare_exchange_strong_explicit(v3, &v14, v13 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v14 == v13)
      {
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v3);
LABEL_6:
    v15 = WTF::fastMalloc(0x18);
    *v15 = &unk_1F11044F0;
    v15[1] = v3;
    v15[2] = v12;
    v29 = v15;
    WTF::SuspendableWorkQueue::dispatch();
    v17 = v29;
    v29 = 0;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    v18 = v28;
    v28 = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v19 = v25;
    v25 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v16);
    }

    result = v24;
    v24 = 0;
    if (result)
    {
      goto LABEL_23;
    }
  }

  else
  {
    LOWORD(v24) = 256;
    BYTE2(v24) = *(a1 + 56);
    v21 = *(a1 + 32);
    if (v21)
    {
      atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
    }

    v25 = v21;
    v22 = *(a1 + 24);
    if (v22)
    {
      atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
    }

    v26[0] = v22;
    WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)>::operator()((a1 + 64), &v24);
    v23 = v26[0];
    v26[0] = 0;
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v16);
    }

    result = v25;
    v25 = 0;
    if (result)
    {
LABEL_23:
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v16);
      }
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore20requestStorageAccessEON7WebCore17RegistrableDomainES6_NS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS7_INS4_18PageIdentifierTypeESA_yEENS7_INS2_26WebPageProxyIdentifierTypeESA_yEENS4_18StorageAccessScopeEONS_17CompletionHandlerIFvNS4_26RequestStorageAccessResultEEEEEN3__1clIS3_EEDaRT_EUlNS2_19StorageAccessStatusEE_vJSR_EED1Ev(void *a1, void *a2)
{
  *a1 = &unk_1F1105058;
  WebKit::WebResourceLoadStatisticsStore::requestStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WTF<WebKit::WebPageProxyIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_0::~$_0((a1 + 1), a2);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore20requestStorageAccessEON7WebCore17RegistrableDomainES6_NS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS7_INS4_18PageIdentifierTypeESA_yEENS7_INS2_26WebPageProxyIdentifierTypeESA_yEENS4_18StorageAccessScopeEONS_17CompletionHandlerIFvNS4_26RequestStorageAccessResultEEEEEN3__1clIS3_EEDaRT_EUlNS2_19StorageAccessStatusEE_vJSR_EED0Ev(WTF *a1, void *a2)
{
  *a1 = &unk_1F1105058;
  WebKit::WebResourceLoadStatisticsStore::requestStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WTF<WebKit::WebPageProxyIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_0::~$_0(a1 + 8, a2);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore20requestStorageAccessEON7WebCore17RegistrableDomainES6_NS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS7_INS4_18PageIdentifierTypeESA_yEENS7_INS2_26WebPageProxyIdentifierTypeESA_yEENS4_18StorageAccessScopeEONS_17CompletionHandlerIFvNS4_26RequestStorageAccessResultEEEEEN3__1clIS3_EEDaRT_EUlNS2_19StorageAccessStatusEE_vJSR_EE4callESR_(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *v17 = v4;
  *&v17[16] = v5;
  v18[0] = *(a1 + 40);
  *(v18 + 9) = *(a1 + 49);
  std::__optional_move_base<WebCore::OrganizationStorageAccessPromptQuirk,false>::__optional_move_base[abi:sn200100](v19, (a1 + 72));
  v6 = *(a1 + 112);
  *(a1 + 112) = 0;
  v20 = v6;
  v21 = a2;
  v7 = WTF::fastMalloc(0x80);
  v8 = *v17;
  *v7 = &unk_1F1105080;
  *(v7 + 8) = __PAIR128__(*&v17[8], v8);
  v9 = *&v17[16];
  *&v17[8] = 0u;
  *(v7 + 24) = v9;
  v10 = *&v17[24];
  *&v17[24] = 0;
  *(v7 + 32) = v10;
  v11 = *(v18 + 9);
  *(v7 + 40) = v18[0];
  *(v7 + 49) = v11;
  v12 = std::__optional_move_base<WebCore::OrganizationStorageAccessPromptQuirk,false>::__optional_move_base[abi:sn200100](v7 + 72, v19);
  v13 = v20;
  v20 = 0;
  *(v7 + 112) = v13;
  *(v7 + 120) = v21;
  v22 = v7;
  WTF::RunLoop::mainSingleton(v12);
  WTF::RunLoop::dispatch();
  v15 = v22;
  v22 = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  return WebKit::WebResourceLoadStatisticsStore::requestStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WTF<WebKit::WebPageProxyIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_0::~$_0(v17, v14);
}

void *_ZN3WTF6Detail15CallableWrapperIZZZN6WebKit30WebResourceLoadStatisticsStore20requestStorageAccessEON7WebCore17RegistrableDomainES6_NS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS7_INS4_18PageIdentifierTypeESA_yEENS7_INS2_26WebPageProxyIdentifierTypeESA_yEENS4_18StorageAccessScopeEONS_17CompletionHandlerIFvNS4_26RequestStorageAccessResultEEEEEN3__1clIS3_EEDaRT_ENUlNS2_19StorageAccessStatusEE_clESR_EUlvE_vJEED1Ev(void *a1, void *a2)
{
  *a1 = &unk_1F1105080;
  WebKit::WebResourceLoadStatisticsStore::requestStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WTF<WebKit::WebPageProxyIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_0::~$_0((a1 + 1), a2);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZZN6WebKit30WebResourceLoadStatisticsStore20requestStorageAccessEON7WebCore17RegistrableDomainES6_NS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS7_INS4_18PageIdentifierTypeESA_yEENS7_INS2_26WebPageProxyIdentifierTypeESA_yEENS4_18StorageAccessScopeEONS_17CompletionHandlerIFvNS4_26RequestStorageAccessResultEEEEEN3__1clIS3_EEDaRT_ENUlNS2_19StorageAccessStatusEE_clESR_EUlvE_vJEED0Ev(WTF *a1, void *a2)
{
  *a1 = &unk_1F1105080;
  WebKit::WebResourceLoadStatisticsStore::requestStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WTF<WebKit::WebPageProxyIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_0::~$_0(a1 + 8, a2);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZZN6WebKit30WebResourceLoadStatisticsStore20requestStorageAccessEON7WebCore17RegistrableDomainES6_NS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS7_INS4_18PageIdentifierTypeESA_yEENS7_INS2_26WebPageProxyIdentifierTypeESA_yEENS4_18StorageAccessScopeEONS_17CompletionHandlerIFvNS4_26RequestStorageAccessResultEEEEEN3__1clIS3_EEDaRT_ENUlNS2_19StorageAccessStatusEE_clESR_EUlvE_vJEE4callEv(uint64_t result)
{
  v1 = result;
  v2 = *(result + 120);
  v3 = *(result + 8);
  if (v2 == 2)
  {
    LOWORD(v25) = WebKit::WebResourceLoadStatisticsStore::storageAccessWasGrantedValueForFrame(*(result + 8), *(result + 40), *(result + 24));
    goto LABEL_19;
  }

  if (v2 != 1)
  {
    if (*(result + 120))
    {
      return result;
    }

    goto LABEL_4;
  }

  v4 = *(v3 + 16);
  if (!v4 || (v5 = *(v4 + 8)) == 0)
  {
LABEL_4:
    LOWORD(v25) = 0;
LABEL_19:
    BYTE2(v25) = *(v1 + 64);
    v19 = *(v1 + 32);
    if (v19)
    {
      atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
    }

    v26 = v19;
    v20 = *(v1 + 24);
    if (v20)
    {
      atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
    }

    v27 = v20;
    WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)>::operator()((v1 + 112), &v25);
    v22 = v27;
    v27 = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v21);
    }

    result = v26;
    v26 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v21);
      }
    }

    return result;
  }

  ++*(v5 + 16);
  v6 = *(result + 16);
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
      goto LABEL_10;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_10:
  v9 = *(v1 + 24);
  if (v9)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  v24 = v5;
  v10 = *(v1 + 32);
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  v12 = *(v1 + 40);
  v11 = *(v1 + 48);
  v13 = *(v1 + 64);
  v14 = *(v1 + 112);
  *(v1 + 112) = 0;
  v15 = WTF::fastMalloc(0x48);
  *v15 = &unk_1F1105030;
  *(v15 + 8) = v3;
  *(v15 + 16) = v6;
  *(v15 + 24) = v9;
  *(v15 + 32) = v10;
  *(v15 + 40) = v12;
  *(v15 + 48) = v11;
  *(v15 + 56) = v13;
  *(v15 + 64) = v14;
  v30 = v15;
  v16 = *(*(v24 + 32) + 40);
  if (v16)
  {
    while (1)
    {
      v17 = *v16;
      if ((*v16 & 1) == 0)
      {
        break;
      }

      v18 = *v16;
      atomic_compare_exchange_strong_explicit(v16, &v18, v17 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v18 == v17)
      {
        goto LABEL_30;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v16);
  }

LABEL_30:
  v25 = v1 + 56;
  v26 = (v1 + 40);
  v27 = (v1 + 24);
  v28 = v1 + 32;
  v29 = v1 + 72;
  IPC::Connection::sendWithAsyncReply<Messages::NetworkProcessProxy::RequestStorageAccessConfirm,WTF::CompletionHandler<void ()(BOOL)>>(v16, &v25, &v30);
  if (v16)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v16);
  }

  result = v30;
  if (v30)
  {
    result = (*(*v30 + 8))(v30);
  }

  v23 = *(v24 + 16);
  if (v23)
  {
    *(v24 + 16) = v23 - 1;
  }

  else
  {
    result = 290;
    __break(0xC471u);
  }

  return result;
}

_DWORD *WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  return WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::rehash(a1, v3);
}

_DWORD *WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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

  v7 = a2;
  result = WTF::fastMalloc(((a2 << 6) | 0x10));
  if (a2)
  {
    v11 = result + 18;
    do
    {
      *(v11 - 7) = 0;
      *(v11 - 48) = 0;
      *(v11 - 40) = 0;
      *v11 = 0;
      v11 += 64;
      --v7;
    }

    while (v7);
  }

  *a1 = (result + 4);
  result[2] = a2 - 1;
  result[3] = a2;
  *result = 0;
  result[1] = v6;
  if (v5)
  {
    v12 = 0;
    while (1)
    {
      v13 = v4 + (v12 << 6);
      if (*v13 != -1)
      {
        if (WTF::equal(*v13, 0, v10))
        {
          if (*(v13 + 56) == 1)
          {
            v14 = *(v13 + 24);
            *(v13 + 24) = 0;
            if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v14, v9);
            }

            v15 = *(v13 + 16);
            *(v13 + 16) = 0;
            if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v15, v9);
            }
          }

          v16 = *v13;
          *v13 = 0;
          if (!v16 || atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) != 2)
          {
            goto LABEL_47;
          }
        }

        else
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

          v19 = WTF::ASCIICaseInsensitiveHash::hash(*v13, v9);
          v20 = 0;
          do
          {
            v21 = v19 & v18;
            v22 = WTF::equal(*(v17 + (v21 << 6)), 0, v10);
            v19 = ++v20 + v21;
          }

          while (!v22);
          v23 = v17 + (v21 << 6);
          if (*(v23 + 56) == 1)
          {
            v24 = *(v23 + 24);
            *(v23 + 24) = 0;
            if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v24, v9);
            }

            v25 = *(v23 + 16);
            *(v23 + 16) = 0;
            if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v25, v9);
            }
          }

          v26 = *v23;
          *v23 = 0;
          if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v26, v9);
          }

          v27 = *v13;
          *v13 = 0;
          *v23 = v27;
          *(v23 + 8) = *(v13 + 8);
          *(v23 + 16) = 0;
          *(v23 + 56) = 0;
          if (*(v13 + 56) == 1)
          {
            v28 = *(v13 + 16);
            *(v13 + 16) = 0;
            *(v23 + 16) = v28;
            v29 = *(v13 + 24);
            *(v13 + 24) = 0;
            *(v23 + 24) = v29;
            v30 = *(v13 + 32);
            *(v23 + 48) = *(v13 + 48);
            *(v23 + 32) = v30;
            *(v23 + 56) = 1;
            if (*(v13 + 56))
            {
              v31 = *(v13 + 24);
              *(v13 + 24) = 0;
              if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v31, v9);
              }

              v32 = *(v13 + 16);
              *(v13 + 16) = 0;
              if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v32, v9);
              }
            }
          }

          v16 = *v13;
          *v13 = 0;
          if (!v16 || atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) != 2)
          {
            goto LABEL_47;
          }
        }

        WTF::StringImpl::destroy(v16, v9);
      }

LABEL_47:
      if (++v12 == v5)
      {
        goto LABEL_50;
      }
    }
  }

  if (v4)
  {
LABEL_50:

    return WTF::fastFree((v4 - 16), v9);
  }

  return result;
}

__n128 std::__optional_storage_base<WebCore::LoginStatus,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::LoginStatus,false>>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 40) == a2[2].n128_u8[8])
  {
    if (*(a1 + 40))
    {
      v4 = a2->n128_u64[0];
      a2->n128_u64[0] = 0;
      v5 = *a1;
      *a1 = v4;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }

      v6 = a2->n128_u64[1];
      a2->n128_u64[1] = 0;
      v7 = *(a1 + 8);
      *(a1 + 8) = v6;
      if (v7)
      {
        if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, a2);
        }
      }

      result = a2[1];
      *(a1 + 32) = a2[2].n128_u64[0];
      *(a1 + 16) = result;
    }
  }

  else if (*(a1 + 40))
  {
    v9 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, a2);
    }

    v10 = *a1;
    *a1 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, a2);
    }

    *(a1 + 40) = 0;
  }

  else
  {
    v11 = a2->n128_u64[0];
    a2->n128_u64[0] = 0;
    *a1 = v11;
    v12 = a2->n128_u64[1];
    a2->n128_u64[1] = 0;
    *(a1 + 8) = v12;
    result = a2[1];
    *(a1 + 32) = a2[2].n128_u64[0];
    *(a1 + 16) = result;
    *(a1 + 40) = 1;
  }

  return result;
}

unint64_t WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::RegistrableDomain>>,(WTF::ShouldValidateKey)1,WebCore::RegistrableDomain>(uint64_t *a1, WTF **a2, const WTF::StringImpl *a3)
{
  if (!*a1)
  {
    return 0;
  }

  if (WTF::equal(*a2, 0, a3) || *a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD1AB34);
  }

  v6 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v7 = *(v6 - 8);
  v8 = WTF::ASCIICaseInsensitiveHash::hash(*a2, v5) & v7;
  v9 = (v6 + (v8 << 6));
  if (WTF::equal(*v9, 0, v10))
  {
LABEL_10:
    if (*a1)
    {
      return *a1 + (*(*a1 - 4) << 6);
    }

    return 0;
  }

  v12 = 1;
  while (*v9 == -1 || (WTF::equalIgnoringASCIICase(*v9, *a2, v11) & 1) == 0)
  {
    v8 = (v8 + v12) & v7;
    v9 = (v6 + (v8 << 6));
    ++v12;
    if (WTF::equal(*v9, 0, v11))
    {
      goto LABEL_10;
    }
  }

  return v9;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::requestStorageAccessEphemeral(WebCore::RegistrableDomain const&,WebCore::RegistrableDomain const&,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::StorageAccessScope,WebKit::CanRequestStorageAccessWithoutUserInteraction,std::optional<WebCore::OrganizationStorageAccessPromptQuirk> &&,WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_0,void,BOOL>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11050A8;
  v3 = a1[8];
  a1[8] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
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
  if (v6)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v6);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::requestStorageAccessEphemeral(WebCore::RegistrableDomain const&,WebCore::RegistrableDomain const&,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::StorageAccessScope,WebKit::CanRequestStorageAccessWithoutUserInteraction,std::optional<WebCore::OrganizationStorageAccessPromptQuirk> &&,WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_0,void,BOOL>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F11050A8;
  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v6);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::requestStorageAccessEphemeral(WebCore::RegistrableDomain const&,WebCore::RegistrableDomain const&,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::StorageAccessScope,WebKit::CanRequestStorageAccessWithoutUserInteraction,std::optional<WebCore::OrganizationStorageAccessPromptQuirk> &&,WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_0,void,BOOL>::call(uint64_t a1, int a2)
{
  if (!a2)
  {
    LOWORD(v24) = 256;
    BYTE2(v24) = *(a1 + 56);
    v18 = *(a1 + 32);
    if (v18)
    {
      atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
    }

    v25 = v18;
    v19 = *(a1 + 24);
    if (!v19)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v3 = *(a1 + 8);
  v4 = *(a1 + 56);
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      v7 = *(a1 + 40);
      ++*(v6 + 16);
      v8 = *(v6 + 32);
      v24 = *(v6 + 24);
      v9 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v8 + 248), &v24);
      if (v9)
      {
        v10 = v9;
        ++*(v9 + 8);
        WebCore::NetworkStorageSession::grantStorageAccess();
        LOBYTE(v24) = WebKit::WebResourceLoadStatisticsStore::storageAccessWasGrantedValueForFrame(v3, v7, *(a1 + 24));
        BYTE1(v24) = 1;
        BYTE2(v24) = v4;
        v11 = *(a1 + 32);
        if (v11)
        {
          atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
        }

        v25 = v11;
        v12 = *(a1 + 24);
        if (v12)
        {
          atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
        }

        v26 = v12;
        WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)>::operator()((a1 + 64), &v24);
        v14 = v26;
        v26 = 0;
        if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v14, v13);
        }

        result = v25;
        v25 = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v13);
        }

        v16 = *(v10 + 8);
        if (v16)
        {
          *(v10 + 8) = v16 - 1;
          v17 = *(v6 + 16);
          if (v17)
          {
            *(v6 + 16) = v17 - 1;
            return result;
          }
        }

LABEL_35:
        __break(0xC471u);
        JUMPOUT(0x19DD1AF28);
      }

      v22 = *(v6 + 16);
      if (!v22)
      {
        goto LABEL_35;
      }

      *(v6 + 16) = v22 - 1;
    }
  }

  LOWORD(v24) = 256;
  BYTE2(v24) = v4;
  v23 = *(a1 + 32);
  if (v23)
  {
    atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
  }

  v25 = v23;
  v19 = *(a1 + 24);
  if (v19)
  {
LABEL_21:
    atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
  }

LABEL_22:
  v26 = v19;
  WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)>::operator()((a1 + 64), &v24);
  v21 = v26;
  v26 = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v20);
  }

  result = v25;
  v25 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(result, v20);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::requestStorageAccessUnderOpener(WebCore::RegistrableDomain &&,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11050D0;
  v3 = a1[3];
  a1[3] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::requestStorageAccessUnderOpener(WebCore::RegistrableDomain &&,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F11050D0;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::requestStorageAccessUnderOpener(WebCore::RegistrableDomain &&,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(_DWORD *result, uint64_t a2, const WTF::StringImpl *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 32);
  if (v3)
  {
    ++*(v3 + 104);
    v4 = *(result + 2);
    v5 = (result + 2);
    v6 = (result + 6);
    if ((WTF::equal(*(result + 1), *(result + 3), a3) & 1) == 0)
    {
      if (*(v3 + 724) == 1)
      {
        v8 = qword_1ED640B30;
        if (os_log_type_enabled(qword_1ED640B30, OS_LOG_TYPE_INFO))
        {
          WTF::String::utf8();
          if (v21)
          {
            v9 = v21 + 16;
          }

          else
          {
            v9 = 0;
          }

          WTF::String::utf8();
          if (v20)
          {
            v10 = v20 + 16;
          }

          else
          {
            v10 = 0;
          }

          *buf = 136380931;
          *&buf[4] = v9;
          v23 = 2081;
          v24 = v10;
          _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_INFO, "ResourceLoadStatisticsStore: [Temporary combatibility fix] Storage access was granted for %{private}s under opener page from %{private}s, with user interaction in the opened window.", buf, 0x16u);
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

          v13 = v21;
          v21 = 0;
          if (v13)
          {
            if (*v13 == 1)
            {
              WTF::fastFree(v13, v11);
            }

            else
            {
              --*v13;
            }
          }
        }

        v14 = *v5;
        if (*v5)
        {
          atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
        }

        v21 = v14;
        v15 = *v6;
        if (*v6)
        {
          atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
        }

        v20 = v15;
        WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("[ITP] Storage access was granted for '", 39, &v21, "' under opener page from '", 27, &v20, "', with user interaction in the opened window.", 47, buf);
        WebKit::ResourceLoadStatisticsStore::debugBroadcastConsoleMessage(v3, 4, buf);
        v17 = *buf;
        *buf = 0;
        if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v17, v16);
        }

        v18 = v20;
        v20 = 0;
        if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v18, v16);
        }

        v19 = v21;
        v21 = 0;
        if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v19, v16);
        }
      }

      v7 = WTF::fastMalloc(0x10);
      *v7 = &unk_1F11049C8;
      *buf = v7;
      WebKit::ResourceLoadStatisticsStore::grantStorageAccessInternal(v3, v5, v5 + 2, 0, 0, v4, 0, 1, buf);
      if (*buf)
      {
        (*(**buf + 8))(*buf);
      }
    }

    return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref((v3 + 104));
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::grantStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &&<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11050F8;
  v3 = a1[6];
  a1[6] = 0;
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

  v5 = a1[1];
  a1[1] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::grantStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &&<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F11050F8;
  v3 = *(this + 6);
  *(this + 6) = 0;
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

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::grantStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &&<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, atomic_ullong *a2)
{
  v3 = a2[4];
  if (v3)
  {
    v5 = (v3 + 104);
    ++*(v3 + 104);
    v44 = *(a1 + 24);
    v6 = *(a1 + 40);
    v7 = *(a1 + 41);
    v8 = *a2;
    if (*a2)
    {
      v8 = WTF::fastMalloc(0x20);
      *v8 = 0;
      *(v8 + 8) = xmmword_19E7014F0;
      *(v8 + 24) = a2;
      while (1)
      {
        v42 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        *(v8 + 8) = v42 >> 1;
        v43 = v42;
        atomic_compare_exchange_strong_explicit(a2, &v43, v8, memory_order_release, memory_order_relaxed);
        if (v43 == v42)
        {
          goto LABEL_3;
        }
      }

      WTF::fastFree(v8, v41);
      v8 = *a2;
    }

LABEL_3:
    v47 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v8);
    v48 = *(a1 + 24);
    WebCore::RegistrableDomain::isolatedCopy(&v49);
    WebCore::RegistrableDomain::isolatedCopy(&v50);
    v51 = *(a1 + 40);
    v9 = *(a1 + 48);
    *(a1 + 48) = 0;
    v52 = v9;
    v10 = WTF::fastMalloc(0x40);
    *v10 = &unk_1F1105148;
    *(v10 + 8) = a2;
    *(v10 + 16) = v47;
    *(v10 + 24) = v48;
    *(v10 + 32) = v49;
    v11 = v50;
    v49 = 0;
    v50 = 0;
    *(v10 + 40) = v11;
    *(v10 + 48) = v51;
    v12 = v52;
    v52 = 0;
    *(v10 + 56) = v12;
    WebKit::DatabaseUtilities::beginTransactionIfNecessary(v3, v60);
    v13 = WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v3 + 96), v3);
    v14 = *(v3 + 96);
    atomic_fetch_add(v14, 1u);
    WTF::RunLoop::mainSingleton(v13);
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v3 + 96), v3);
    v15 = *(v3 + 96);
    atomic_fetch_add(v15, 1u);
    v53[0] = v15;
    WebCore::RegistrableDomain::isolatedCopy(&v53[1]);
    WebCore::RegistrableDomain::isolatedCopy(&v54);
    v16 = *(v3 + 120);
    while (1)
    {
      v17 = *(v16 + 32);
      if ((v17 & 1) == 0)
      {
        break;
      }

      v18 = *(v16 + 32);
      atomic_compare_exchange_strong_explicit((v16 + 32), &v18, v17 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v18 == v17)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v16 + 32));
LABEL_8:
    *(&v54 + 1) = v16;
    v19 = *(v3 + 112);
    if (v19)
    {
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
          goto LABEL_11;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v19);
LABEL_11:
      *&v55 = v19;
      *(&v55 + 1) = v14;
      v56 = v44;
      LOBYTE(v57) = v6;
      HIBYTE(v57) = v7;
      v58 = v10;
      v22 = WTF::fastMalloc(0x58);
      *v22 = &unk_1F11049F0;
      *(v22 + 8) = v53[0];
      *(v22 + 16) = v53[1];
      *(v22 + 24) = v54;
      v23 = *(&v54 + 1);
      *v53 = 0u;
      v54 = 0u;
      *(v22 + 32) = v23;
      *(v22 + 40) = v55;
      v24 = *(&v55 + 1);
      v55 = 0u;
      *(v22 + 48) = v24;
      v25 = v56;
      *(v22 + 72) = v57;
      *(v22 + 56) = v25;
      v26 = v58;
      v58 = 0;
      *(v22 + 80) = v26;
      v59 = v22;
      WTF::RunLoop::dispatch();
      v28 = v59;
      v59 = 0;
      if (v28)
      {
        (*(*v28 + 8))(v28);
      }

      WebKit::ResourceLoadStatisticsStore::grantStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_1::~$_1(v53, v27);
      WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v60);
      v30 = v52;
      v52 = 0;
      if (v30)
      {
        (*(*v30 + 8))(v30);
      }

      v31 = v50;
      v50 = 0;
      if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v31, v29);
      }

      v32 = v49;
      v49 = 0;
      if (v32)
      {
        if (atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v32, v29);
        }
      }

      return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v5);
    }

    else
    {
      result = 114;
      __break(0xC471u);
    }
  }

  else
  {
    WebCore::RegistrableDomain::isolatedCopy(v53);
    WebCore::RegistrableDomain::isolatedCopy(&v53[1]);
    LOWORD(v54) = *(a1 + 40);
    v34 = *(a1 + 48);
    *(a1 + 48) = 0;
    *(&v54 + 1) = v34;
    v35 = WTF::fastMalloc(0x28);
    *v35 = &unk_1F1105120;
    *(v35 + 8) = v53[0];
    v36 = v53[1];
    v53[0] = 0;
    v53[1] = 0;
    *(v35 + 16) = v36;
    *(v35 + 24) = v54;
    v37 = *(&v54 + 1);
    *(&v54 + 1) = 0;
    *(v35 + 32) = v37;
    v46 = v35;
    WTF::RunLoop::mainSingleton(v35);
    WTF::RunLoop::dispatch();
    if (v46)
    {
      (*(*v46 + 8))(v46);
    }

    v39 = *(&v54 + 1);
    *(&v54 + 1) = 0;
    if (v39)
    {
      (*(*v39 + 8))(v39);
    }

    v40 = v53[1];
    v53[1] = 0;
    if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v40, v38);
    }

    result = v53[0];
    v53[0] = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v38);
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore18grantStorageAccessEON7WebCore17RegistrableDomainES6_NS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS7_INS4_18PageIdentifierTypeESA_yEENS4_27StorageAccessPromptWasShownENS4_18StorageAccessScopeEONS_17CompletionHandlerIFvNS4_26RequestStorageAccessResultEEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED1Ev(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1105120;
  v3 = a1[4];
  a1[4] = 0;
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

  v5 = a1[1];
  a1[1] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore18grantStorageAccessEON7WebCore17RegistrableDomainES6_NS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS7_INS4_18PageIdentifierTypeESA_yEENS4_27StorageAccessPromptWasShownENS4_18StorageAccessScopeEONS_17CompletionHandlerIFvNS4_26RequestStorageAccessResultEEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED0Ev(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1105120;
  v3 = *(this + 4);
  *(this + 4) = 0;
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

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore18grantStorageAccessEON7WebCore17RegistrableDomainES6_NS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS7_INS4_18PageIdentifierTypeESA_yEENS4_27StorageAccessPromptWasShownENS4_18StorageAccessScopeEONS_17CompletionHandlerIFvNS4_26RequestStorageAccessResultEEEEEN3__0clIS3_EEDaRT_EUlvE_vJEE4callEv(uint64_t a1)
{
  v6 = 0;
  v7 = *(a1 + 24);
  v1 = *(a1 + 16);
  if (v1)
  {
    atomic_fetch_add_explicit(v1, 2u, memory_order_relaxed);
  }

  v8 = v1;
  v2 = *(a1 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  v9 = v2;
  WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)>::operator()((a1 + 32), &v6);
  v4 = v9;
  v9 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v3);
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

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore18grantStorageAccessEON7WebCore17RegistrableDomainES6_NS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS7_INS4_18PageIdentifierTypeESA_yEENS4_27StorageAccessPromptWasShownENS4_18StorageAccessScopeEONS_17CompletionHandlerIFvNS4_26RequestStorageAccessResultEEEEEN3__0clIS3_EEDaRT_EUlNS4_23StorageAccessWasGrantedEE_vJSQ_EED1Ev(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1105148;
  v3 = a1[7];
  a1[7] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[5];
  a1[5] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[4];
  a1[4] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = a1[2];
  a1[2] = 0;
  if (v6)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v6, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore18grantStorageAccessEON7WebCore17RegistrableDomainES6_NS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS7_INS4_18PageIdentifierTypeESA_yEENS4_27StorageAccessPromptWasShownENS4_18StorageAccessScopeEONS_17CompletionHandlerIFvNS4_26RequestStorageAccessResultEEEEEN3__0clIS3_EEDaRT_EUlNS4_23StorageAccessWasGrantedEE_vJSQ_EED0Ev(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1105148;
  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 5);
  *(this + 5) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 4);
  *(this + 4) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v6, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore18grantStorageAccessEON7WebCore17RegistrableDomainES6_NS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS7_INS4_18PageIdentifierTypeESA_yEENS4_27StorageAccessPromptWasShownENS4_18StorageAccessScopeEONS_17CompletionHandlerIFvNS4_26RequestStorageAccessResultEEEEEN3__0clIS3_EEDaRT_EUlNS4_23StorageAccessWasGrantedEE_vJSQ_EE4callESQ_(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *v15 = v4;
  v16 = *(a1 + 24);
  WebCore::RegistrableDomain::isolatedCopy(&v17);
  WebCore::RegistrableDomain::isolatedCopy(&v18);
  v19[0] = a2;
  *&v19[1] = *(a1 + 48);
  v5 = *(a1 + 56);
  *(a1 + 56) = 0;
  v20 = v5;
  v6 = WTF::fastMalloc(0x40);
  *v6 = &unk_1F1105170;
  *(v6 + 8) = *v15;
  *(v6 + 24) = v16;
  *(v6 + 32) = v17;
  v7 = v18;
  v17 = 0;
  v18 = 0;
  *(v6 + 40) = v7;
  *(v6 + 48) = *v19;
  *(v6 + 50) = v19[2];
  v8 = v20;
  v20 = 0;
  *(v6 + 56) = v8;
  v21 = v6;
  WTF::RunLoop::mainSingleton(v6);
  WTF::RunLoop::dispatch();
  v10 = v21;
  v21 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = v20;
  v20 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = v18;
  v18 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v9);
  }

  v13 = v17;
  v17 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v9);
  }

  return 0;
}

void *_ZN3WTF6Detail15CallableWrapperIZZZN6WebKit30WebResourceLoadStatisticsStore18grantStorageAccessEON7WebCore17RegistrableDomainES6_NS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS7_INS4_18PageIdentifierTypeESA_yEENS4_27StorageAccessPromptWasShownENS4_18StorageAccessScopeEONS_17CompletionHandlerIFvNS4_26RequestStorageAccessResultEEEEEN3__0clIS3_EEDaRT_ENUlNS4_23StorageAccessWasGrantedEE_clESQ_EUlvE_vJEED1Ev(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1105170;
  v3 = a1[7];
  a1[7] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[5];
  a1[5] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[4];
  a1[4] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = a1[2];
  a1[2] = 0;
  if (v6)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v6, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZZN6WebKit30WebResourceLoadStatisticsStore18grantStorageAccessEON7WebCore17RegistrableDomainES6_NS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS7_INS4_18PageIdentifierTypeESA_yEENS4_27StorageAccessPromptWasShownENS4_18StorageAccessScopeEONS_17CompletionHandlerIFvNS4_26RequestStorageAccessResultEEEEEN3__0clIS3_EEDaRT_ENUlNS4_23StorageAccessWasGrantedEE_clESQ_EUlvE_vJEED0Ev(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1105170;
  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 5);
  *(this + 5) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 4);
  *(this + 4) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v6, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_ullong *_ZN3WTF6Detail15CallableWrapperIZZZN6WebKit30WebResourceLoadStatisticsStore18grantStorageAccessEON7WebCore17RegistrableDomainES6_NS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS7_INS4_18PageIdentifierTypeESA_yEENS4_27StorageAccessPromptWasShownENS4_18StorageAccessScopeEONS_17CompletionHandlerIFvNS4_26RequestStorageAccessResultEEEEEN3__0clIS3_EEDaRT_ENUlNS4_23StorageAccessWasGrantedEE_clESQ_EUlvE_vJEE4callEv(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_22;
  }

  v3 = 0;
  v4 = *(a1 + 8);
  atomic_compare_exchange_strong_explicit(v2, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    v14 = v2;
    MEMORY[0x19EB01E30]();
    v2 = v14;
  }

  if (*(v2 + 24))
  {
    ++*(v2 + 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = 1;
  atomic_compare_exchange_strong_explicit(v2, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 == 1)
  {
    if (!v4)
    {
      goto LABEL_22;
    }
  }

  else
  {
    WTF::Lock::unlockSlow(v2);
    if (!v4)
    {
LABEL_22:
      v15 = *(a1 + 48);
      v16 = *(a1 + 49);
      v11 = *(a1 + 40);
      if (v11)
      {
        atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
      }

      v17 = v11;
      v12 = *(a1 + 32);
      if (v12)
      {
        atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
      }

      v18 = v12;
      WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)>::operator()((a1 + 56), &v15);
      v13 = v18;
      v18 = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v8);
      }

      result = v17;
      v17 = 0;
      if (!result || atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) != 2)
      {
LABEL_32:
        if (!v4)
        {
          return result;
        }

        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v4);
      }

LABEL_31:
      result = WTF::StringImpl::destroy(result, v8);
      goto LABEL_32;
    }
  }

  if (*(a1 + 48) != 1)
  {
    goto LABEL_22;
  }

  v15 = WebKit::WebResourceLoadStatisticsStore::storageAccessWasGrantedValueForFrame(v4, *(a1 + 24), *(a1 + 32));
  v16 = *(a1 + 49);
  v6 = *(a1 + 40);
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  v17 = v6;
  v7 = *(a1 + 32);
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  v18 = v7;
  WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)>::operator()((a1 + 56), &v15);
  v9 = v18;
  v18 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  result = v17;
  v17 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    goto LABEL_31;
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v4);
}

_DWORD *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setThirdPartyCookieBlockingMode(WebCore::ThirdPartyCookieBlockingMode)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    v5 = result[26];
    v4 = result + 26;
    *v4 = v5 + 1;
    *(v4 + 616) = *(a1 + 8);
    return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v4);
  }

  return result;
}

_DWORD *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setSameSiteStrictEnforcementEnabled(WebCore::SameSiteStrictEnforcementEnabled)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    v5 = result[26];
    v4 = result + 26;
    *v4 = v5 + 1;
    *(v4 + 617) = *(a1 + 8);
    return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v4);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setFirstPartyWebsiteDataRemovalMode(WebCore::FirstPartyWebsiteDataRemovalMode,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F11051E8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setFirstPartyWebsiteDataRemovalMode(WebCore::FirstPartyWebsiteDataRemovalMode,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F11051E8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WebKit::WebResourceLoadStatisticsStore::setFirstPartyWebsiteDataRemovalMode(WebCore::FirstPartyWebsiteDataRemovalMode,WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()<WebKit::WebResourceLoadStatisticsStore>(unsigned __int8 *a1, uint64_t a2)
{
  if (a2)
  {
    ++*(a2 + 104);
    v3 = *a1;
    *(a2 + 722) = v3;
    if (v3 == 3)
    {
      *(a2 + 233) = 1;
    }

    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref((a2 + 104));
  }

  v4 = *(a1 + 1);
  *(a1 + 1) = 0;
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F1105210;
  *(v5 + 1) = v4;
  v7 = v5;
  WTF::RunLoop::mainSingleton(v5);
  WTF::RunLoop::dispatch();
  result = v7;
  if (v7)
  {
    return (*(*v7 + 8))(v7);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore35setFirstPartyWebsiteDataRemovalModeEN7WebCore32FirstPartyWebsiteDataRemovalModeEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1105210;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore35setFirstPartyWebsiteDataRemovalModeEN7WebCore32FirstPartyWebsiteDataRemovalModeEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1105210;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore35setFirstPartyWebsiteDataRemovalModeEN7WebCore32FirstPartyWebsiteDataRemovalModeEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE_vJEE4callEv(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setPersistedDomains(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1105238;
  v3 = a1[1];
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setPersistedDomains(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1105238;
  v3 = *(this + 1);
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setPersistedDomains(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(_DWORD *result, WTF::StringImpl *a2)
{
  v2 = *(a2 + 4);
  if (v2)
  {
    v4 = *(v2 + 104);
    v3 = v2 + 104;
    *v3 = v4 + 1;
    v5 = *(result + 1);
    *(result + 1) = 0;
    v6 = *(v3 + 216);
    *(v3 + 216) = v5;
    if (v6)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v6, a2);
    }

    return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v3);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setStandaloneApplicationDomain(WebCore::RegistrableDomain const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1105260;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setStandaloneApplicationDomain(WebCore::RegistrableDomain const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1105260;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setStandaloneApplicationDomain(WebCore::RegistrableDomain const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    v5 = *(v3 + 104);
    v4 = v3 + 104;
    *v4 = v5 + 1;
    v6 = *(a1 + 8);
    *(a1 + 8) = 0;
    v7 = *(v4 + 192);
    *(v4 + 192) = v6;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }

    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v4);
  }

  v8 = *(a1 + 16);
  *(a1 + 16) = 0;
  v9 = WTF::fastMalloc(0x10);
  *v9 = &unk_1F1105288;
  *(v9 + 1) = v8;
  v11 = v9;
  WTF::RunLoop::mainSingleton(v9);
  WTF::RunLoop::dispatch();
  result = v11;
  if (v11)
  {
    return (*(*v11 + 8))(v11);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore30setStandaloneApplicationDomainERKN7WebCore17RegistrableDomainEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1105288;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore30setStandaloneApplicationDomainERKN7WebCore17RegistrableDomainEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1105288;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore30setStandaloneApplicationDomainERKN7WebCore17RegistrableDomainEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE_vJEE4callEv(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setAppBoundDomains(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11052B0;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setAppBoundDomains(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F11052B0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setAppBoundDomains(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    ++*(v3 + 104);
    v4 = *(a1 + 8);
    *(a1 + 8) = 0;
    v5 = *(v3 + 304);
    *(v3 + 304) = v4;
    if (v5)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v5, a2);
    }

    *(v3 + 720) = 1;
    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref((v3 + 104));
  }

  v6 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 16), &v8);
  WTF::RunLoop::mainSingleton(v6);
  WTF::RunLoop::dispatch();
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setManagedDomains(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11052D8;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setManagedDomains(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F11052D8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setManagedDomains(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    ++*(v3 + 104);
    v4 = *(a1 + 8);
    *(a1 + 8) = 0;
    v5 = *(v3 + 312);
    *(v3 + 312) = v4;
    if (v5)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v5, a2);
    }

    *(v3 + 720) = 2;
    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref((v3 + 104));
  }

  v6 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 16), &v8);
  WTF::RunLoop::mainSingleton(v6);
  WTF::RunLoop::dispatch();
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::performDailyTasks(void)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    ++v2[26];
    WebKit::ResourceLoadStatisticsStore::includeTodayAsOperatingDateIfNecessary(v2);
    WebCore::SQLiteDatabase::runIncrementalVacuumCommand((v2 + 4));

    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v2 + 26);
  }
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::logFrameNavigation(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WebCore::RegistrableDomain &,BOOL,BOOL,WTF::Seconds,BOOL)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1105328;
  v3 = a1[3];
  a1[3] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[1];
  a1[1] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::logFrameNavigation(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WebCore::RegistrableDomain &,BOOL,BOOL,WTF::Seconds,BOOL)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1105328;
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

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::logFrameNavigation(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WebCore::RegistrableDomain &,BOOL,BOOL,WTF::Seconds,BOOL)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(_DWORD *result, uint64_t a2, const WTF::StringImpl *a3)
{
  v65[1] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 32);
  if (!v3)
  {
    return result;
  }

  v4 = result;
  ++*(v3 + 104);
  v5 = *(result + 32);
  v6 = *(result + 33);
  v7 = *(result + 5);
  v8 = *(result + 48);
  v9 = (result + 2);
  v10 = WTF::equal(*(result + 1), *(result + 2), a3);
  v11 = (v4 + 6);
  v13 = WTF::equal(*v9, *(v4 + 3), v12);
  WebKit::DatabaseUtilities::beginTransactionIfNecessary(v3, v60);
  v14 = v6 | v10 | v13;
  if ((v14 & 1) == 0)
  {
    v27 = WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(v3, v9, "logFrameNavigation");
    if ((v28 & 1) == 0)
    {
      goto LABEL_7;
    }

    WTF::WallTime::now(v27);
    WebCore::ResourceLoadStatistics::reduceTimeResolution();
    WebKit::ResourceLoadStatisticsStore::updateLastSeen(v3, v29);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v57 = *buf;
    v59 = *buf;
    v30 = *(v4 + 2);
    if (v30)
    {
      atomic_fetch_add_explicit(v30, 2u, memory_order_relaxed);
    }

    v65[0] = v30;
    WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(buf, v65, 1);
    WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(v3, &v59, buf);
    if (*buf)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*buf, v31);
    }

    v32 = v65[0];
    v65[0] = 0;
    if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v32, v31);
    }

    if (v57 && atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v57, v31);
    }
  }

  if (v13)
  {
    goto LABEL_6;
  }

  if (!v6)
  {
    if (!v5)
    {
      goto LABEL_6;
    }

    WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(v3, (v4 + 6), "logFrameNavigation");
    v17 = v16;
    WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(v3, v9, "logFrameNavigation");
    if (v18 & 1) != 0 && (v17)
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v19 = *buf;
      v59 = *buf;
      v20 = *v9;
      if (*v9)
      {
        atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
      }

      v65[0] = v20;
      WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(buf, v65, 1);
      WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(v3, &v59, buf);
      if (*buf)
      {
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*buf, v21);
      }

      v22 = v65[0];
      v65[0] = 0;
      if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v21);
      }

      if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v21);
      }

      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v23 = *buf;
      v59 = *buf;
      v24 = *v11;
      if (*v11)
      {
        atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
      }

      v65[0] = v24;
      WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(buf, v65, 1);
      WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(v3, &v59, buf);
      if (*buf)
      {
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*buf, v25);
      }

      v26 = v65[0];
      v65[0] = 0;
      if (!v26)
      {
        goto LABEL_61;
      }

      goto LABEL_59;
    }

    goto LABEL_7;
  }

  v15 = (v8 & 1) == 0 && v7 < *(v3 + 216);
  if ((v5 & 1) == 0 && !v15)
  {
LABEL_6:
    if (v14)
    {
      goto LABEL_7;
    }

LABEL_62:
    WebKit::ResourceLoadStatisticsStore::scheduleStatisticsProcessingRequestIfNecessary(v3);
    goto LABEL_7;
  }

  WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(v3, (v4 + 6), "logFrameNavigation");
  v34 = v33;
  WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(v3, v9, "logFrameNavigation");
  if (v35 & 1) != 0 && (v34)
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v36 = *buf;
    v59 = *buf;
    v37 = *v9;
    if (*v9)
    {
      atomic_fetch_add_explicit(v37, 2u, memory_order_relaxed);
    }

    v65[0] = v37;
    WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(buf, v65, 1);
    WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(v3, &v59, buf);
    if (*buf)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*buf, v38);
    }

    v39 = v65[0];
    v65[0] = 0;
    if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v39, v38);
    }

    if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v36, v38);
    }

    if (v5)
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v40 = *buf;
      v59 = *buf;
      v41 = *v9;
      if (*v9)
      {
        atomic_fetch_add_explicit(v41, 2u, memory_order_relaxed);
      }

      v65[0] = v41;
      WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(buf, v65, 1);
      WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(v3, &v59, buf);
      if (*buf)
      {
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*buf, v42);
      }

      v43 = v65[0];
      v65[0] = 0;
      if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v43, v42);
      }

      if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v40, v42);
      }

      if (*(v3 + 724) == 1)
      {
        v45 = qword_1ED640B30;
        if (os_log_type_enabled(qword_1ED640B30, OS_LOG_TYPE_INFO))
        {
          WTF::String::utf8();
          if (v59)
          {
            v46 = v59 + 16;
          }

          else
          {
            v46 = 0;
          }

          WTF::String::utf8();
          if (v65[0])
          {
            v47 = v65[0] + 16;
          }

          else
          {
            v47 = 0;
          }

          *buf = 136446466;
          *&buf[4] = v46;
          v63 = 2082;
          v64 = v47;
          _os_log_impl(&dword_19D52D000, v45, OS_LOG_TYPE_INFO, "ResourceLoadStatisticsStore: Did set %{public}s as making a top frame redirect to %{public}s.", buf, 0x16u);
          v49 = v65[0];
          v65[0] = 0;
          if (v49)
          {
            if (*v49 == 1)
            {
              WTF::fastFree(v49, v48);
            }

            else
            {
              --*v49;
            }
          }

          v50 = v59;
          v59 = 0;
          if (v50)
          {
            if (*v50 == 1)
            {
              WTF::fastFree(v50, v48);
            }

            else
            {
              --*v50;
            }
          }
        }

        v51 = *v11;
        if (*v11)
        {
          atomic_fetch_add_explicit(v51, 2u, memory_order_relaxed);
        }

        v59 = v51;
        v52 = *v9;
        if (*v9)
        {
          atomic_fetch_add_explicit(v52, 2u, memory_order_relaxed);
        }

        v65[0] = v52;
        WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("Did set '", 10, &v59, "' as making a top frame redirect to '", 38, v65, "'.", 3, buf);
        WebKit::ResourceLoadStatisticsStore::debugBroadcastConsoleMessage(v3, 4, buf);
        v54 = *buf;
        *buf = 0;
        if (v54 && atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v54, v53);
        }

        v55 = v65[0];
        v65[0] = 0;
        if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v55, v53);
        }

        v56 = v59;
        v59 = 0;
        if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v56, v53);
        }
      }
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v23 = *buf;
    v58 = *buf;
    v44 = *v11;
    if (*v11)
    {
      atomic_fetch_add_explicit(v44, 2u, memory_order_relaxed);
    }

    v61 = v44;
    WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(buf, &v61, 1);
    WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(v3, &v58, buf);
    if (*buf)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*buf, v25);
    }

    v26 = v61;
    v61 = 0;
    if (!v26)
    {
      goto LABEL_61;
    }

LABEL_59:
    if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v26, v25);
    }

LABEL_61:
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v25);
    }

    goto LABEL_62;
  }

LABEL_7:
  WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v60);

  return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref((v3 + 104));
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::logUserInteraction(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1105350;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::logUserInteraction(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1105350;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::logUserInteraction(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  v17 = v2;
  v3 = *(a2 + 32);
  if (v3)
  {
    v5 = (v3 + 104);
    ++*(v3 + 104);
    v6 = WTF::fastMalloc(0x10);
    *v6 = &unk_1F1105378;
    v6[1] = v2;
    v16 = v6;
    WebKit::DatabaseUtilities::beginTransactionIfNecessary(v3, v18);
    WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(v3, (a1 + 8), "logUserInteraction");
    if ((v7 & 1) != 0 && (hasHadUserInteraction = WebKit::ResourceLoadStatisticsStore::hasHadUserInteraction(v3, (a1 + 8)), v9 = hasHadUserInteraction, v10 = *(v3 + 656), WTF::WallTime::now(hasHadUserInteraction), WebKit::ResourceLoadStatisticsStore::setUserInteraction(v3, v10 + v11), !v9))
    {
      WebKit::ResourceLoadStatisticsStore::updateCookieBlocking(v3, &v16);
      v13 = v16;
      WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v18);
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }
    }

    else
    {
      (*(*v6 + 16))(v6);
      (*(*v6 + 8))(v6);
      WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v18);
    }

    return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v5);
  }

  else
  {
    v14 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>(&v17, v18);
    WTF::RunLoop::mainSingleton(v14);
    WTF::RunLoop::dispatch();
    v15 = v18[0];
    v18[0] = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    result = v17;
    v17 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore18logUserInteractionEON7WebCore17RegistrableDomainEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1105378;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore18logUserInteractionEON7WebCore17RegistrableDomainEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1105378;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore18logUserInteractionEON7WebCore17RegistrableDomainEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE_vJEE4callEv(uint64_t a1)
{
  v1 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 8), &v3);
  WTF::RunLoop::mainSingleton(v1);
  WTF::RunLoop::dispatch();
  result = v3;
  v3 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::logCrossSiteLoadWithLinkDecoration(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WebKit::DidFilterKnownLinkDecoration,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11053A0;
  v3 = a1[4];
  a1[4] = 0;
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

  v5 = a1[1];
  a1[1] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::logCrossSiteLoadWithLinkDecoration(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WebKit::DidFilterKnownLinkDecoration,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F11053A0;
  v3 = *(this + 4);
  *(this + 4) = 0;
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

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::logCrossSiteLoadWithLinkDecoration(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WebKit::DidFilterKnownLinkDecoration,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, uint64_t a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 32);
  if (!v3)
  {
    goto LABEL_23;
  }

  ++*(v3 + 104);
  v4 = *(a1 + 24);
  WebKit::DatabaseUtilities::beginTransactionIfNecessary(v3, v14);
  WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(v3, (a1 + 16), "logCrossSiteLoadWithLinkDecoration");
  if ((v5 & 1) == 0)
  {
    goto LABEL_22;
  }

  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v6 = v15;
  v13 = v15;
  v7 = *(a1 + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  v16[0] = v7;
  WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v15, v16, 1);
  WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(v3, &v13, &v15);
  if (v15)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v15, v8);
  }

  v9 = v16[0];
  v16[0] = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
    if (v6)
    {
LABEL_10:
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v8);
      }
    }
  }

  else if (v6)
  {
    goto LABEL_10;
  }

  if ((*(v3 + 233) & 1) == 0 && (*(v3 + 723) & 1) == 0 && MEMORY[0x19EB01EF0](*(a1 + 16), "localhost", 9))
  {
LABEL_20:
    if (WebKit::ResourceLoadStatisticsStore::isPrevalentResource(v3, (a1 + 8)))
    {
      WebKit::ResourceLoadStatisticsStore::setIsScheduledForAllScriptWrittenStorageRemoval(v3, (a1 + 16));
    }

    goto LABEL_22;
  }

  WebKit::DatabaseUtilities::scopedStatement(v3, (v3 + 472), "isScheduledForAllButCookieDataRemoval", &v15);
  v10 = WebKit::ResourceLoadStatisticsStore::predicateValueForDomain(v3, &v15, *(a1 + 16));
  MEMORY[0x19EB0CD50](&v15);
  if (v10 == 2)
  {
    if ((v4 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (!v10)
  {
    goto LABEL_20;
  }

LABEL_22:
  WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v14);
  WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref((v3 + 104));
LABEL_23:
  v11 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 32), v14);
  WTF::RunLoop::mainSingleton(v11);
  WTF::RunLoop::dispatch();
  result = v14[0];
  v14[0] = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::clearUserInteraction(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11053C8;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::clearUserInteraction(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F11053C8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::clearUserInteraction(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  v9 = v2;
  v3 = *(a2 + 32);
  if (v3)
  {
    ++*(v3 + 104);
    v5 = WTF::fastMalloc(0x10);
    *v5 = &unk_1F11053F0;
    v5[1] = v2;
    v10 = v5;
    WebKit::ResourceLoadStatisticsStore::clearUserInteraction(v3, (a1 + 8), &v10);
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref((v3 + 104));
  }

  else
  {
    v7 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>(&v9, &v10);
    WTF::RunLoop::mainSingleton(v7);
    WTF::RunLoop::dispatch();
    v8 = v10;
    v10 = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    result = v9;
    v9 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore20clearUserInteractionEON7WebCore17RegistrableDomainEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11053F0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore20clearUserInteractionEON7WebCore17RegistrableDomainEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11053F0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore20clearUserInteractionEON7WebCore17RegistrableDomainEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE_vJEE4callEv(uint64_t a1)
{
  v1 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 8), &v3);
  WTF::RunLoop::mainSingleton(v1);
  WTF::RunLoop::dispatch();
  result = v3;
  v3 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setTimeAdvanceForTesting(WTF::Seconds,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1105418;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setTimeAdvanceForTesting(WTF::Seconds,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1105418;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setTimeAdvanceForTesting(WTF::Seconds,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    ++*(v3 + 104);
    v4 = *(a1 + 8);
    for (i = *(v3 + 656); i <= v4; i = i + 86400.0)
    {
      *(v3 + 656) = i;
      WebKit::ResourceLoadStatisticsStore::includeTodayAsOperatingDateIfNecessary(v3);
    }

    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref((v3 + 104));
  }

  v6 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 16), &v8);
  WTF::RunLoop::mainSingleton(v6);
  WTF::RunLoop::dispatch();
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

WTF **WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::RegistrableDomain>,WTF::DefaultHash<WebCore::RegistrableDomain>>,(WTF::ShouldValidateKey)1,WebCore::RegistrableDomain>(uint64_t *a1, WTF **a2, const WTF::StringImpl *a3)
{
  if (!*a1)
  {
    return 0;
  }

  result = WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::RegistrableDomain>,WTF::DefaultHash<WebCore::RegistrableDomain>>,(WTF::ShouldValidateKey)1,WebCore::RegistrableDomain>(a1, a2, a3);
  v5 = *a1;
  if (!result)
  {
    if (v5)
    {
      return (v5 + 8 * *(v5 - 4));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::hasHadUserInteraction(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1105440;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::hasHadUserInteraction(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1105440;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::hasHadUserInteraction(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    v4 = (v3 + 104);
    ++*(v3 + 104);
    hasHadUserInteraction = WebKit::ResourceLoadStatisticsStore::hasHadUserInteraction(v3, (a1 + 8));
    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v4);
  }

  else
  {
    hasHadUserInteraction = 0;
  }

  v6 = *(a1 + 16);
  *(a1 + 16) = 0;
  v7 = WTF::fastMalloc(0x18);
  *v7 = &unk_1F1105468;
  *(v7 + 8) = hasHadUserInteraction;
  *(v7 + 16) = v6;
  v9 = v7;
  WTF::RunLoop::mainSingleton(v7);
  WTF::RunLoop::dispatch();
  result = v9;
  if (v9)
  {
    return (*(*v9 + 8))(v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore21hasHadUserInteractionEON7WebCore17RegistrableDomainEONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F1105468;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore21hasHadUserInteractionEON7WebCore17RegistrableDomainEONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F1105468;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore21hasHadUserInteractionEON7WebCore17RegistrableDomainEONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlvE_vJEE4callEv(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v2 + 16))(v2, v1);
  v3 = *(*v2 + 8);

  return v3(v2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setLastSeen(WebCore::RegistrableDomain &&,WTF::Seconds,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1105490;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setLastSeen(WebCore::RegistrableDomain &&,WTF::Seconds,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1105490;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setLastSeen(WebCore::RegistrableDomain &&,WTF::Seconds,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(void *a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    ++*(v3 + 26);
    v4 = *(a1 + 2);
    WebKit::DatabaseUtilities::beginTransactionIfNecessary(v3, v8);
    WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(v3, (a1 + 1), "setLastSeen");
    if (v5)
    {
      WebKit::ResourceLoadStatisticsStore::updateLastSeen(v3, v4);
    }

    WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v8);
    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v3 + 26);
  }

  v6 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>(a1 + 3, v8);
  WTF::RunLoop::mainSingleton(v6);
  WTF::RunLoop::dispatch();
  result = v8[0];
  v8[0] = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::mergeStatisticForTesting(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WebCore::RegistrableDomain &,WTF::Seconds,BOOL,WebCore::RegistrableDomain &&,BOOL,BOOL,BOOL,unsigned int,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11054B8;
  v3 = a1[8];
  a1[8] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[3];
  a1[3] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[2];
  a1[2] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = a1[1];
  a1[1] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::mergeStatisticForTesting(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WebCore::RegistrableDomain &,WTF::Seconds,BOOL,WebCore::RegistrableDomain &&,BOOL,BOOL,BOOL,unsigned int,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F11054B8;
  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
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

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::mergeStatisticForTesting(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WebCore::RegistrableDomain &,WTF::Seconds,BOOL,WebCore::RegistrableDomain &&,BOOL,BOOL,BOOL,unsigned int,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    ++*(v3 + 26);
    v4 = *(a1 + 8);
    if (v4)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    }

    v16[0] = v4;
    v20 = 0u;
    memset(v21, 0, sizeof(v21));
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
    v27 = 0u;
    memset(v28, 0, sizeof(v28));
    v29 = 0;
    v30 = 0;
    v16[1] = *(a1 + 32);
    v17 = *(a1 + 40);
    v18 = *(a1 + 48);
    v19 = *(a1 + 56);
    v25 = *(a1 + 57);
    v26 = *(a1 + 60);
    v15 = 0;
    v5 = *(a1 + 16);
    if (v5 && *(v5 + 4) && (MEMORY[0x19EB01EF0]() & 1) == 0)
    {
      WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v15, (a1 + 16), v6, v14);
    }

    v7 = *(a1 + 24);
    if (v7 && *(v7 + 4) && (MEMORY[0x19EB01EF0]() & 1) == 0)
    {
      WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v15, (a1 + 24), v8, v14);
    }

    v9 = v15;
    v15 = 0;
    *(&v22 + 1) = v9;
    v14[0] = WTF::fastMalloc(0xC8);
    v14[1] = 0x100000001;
    WebCore::ResourceLoadStatistics::ResourceLoadStatistics(v14[0], v16);
    WebKit::ResourceLoadStatisticsStore::mergeStatistics(v3, v14);
    WTF::Vector<WebCore::ResourceLoadStatistics,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v14, v10);
    if (v15)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v15, v11);
    }

    WebCore::ResourceLoadStatistics::~ResourceLoadStatistics(v16, v11);
    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v3 + 26);
  }

  v12 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 64), v16);
  WTF::RunLoop::mainSingleton(v12);
  WTF::RunLoop::dispatch();
  result = v16[0];
  v16[0] = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::isRelationshipOnlyInDatabaseOnce(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11054E0;
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

  v5 = a1[1];
  a1[1] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::isRelationshipOnlyInDatabaseOnce(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F11054E0;
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

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::isRelationshipOnlyInDatabaseOnce(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(void *a1, uint64_t a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 32);
  if (v3)
  {
    v4 = (v3 + 104);
    ++*(v3 + 104);
    WebCore::SQLiteDatabase::prepareStatement();
    WebCore::SQLiteDatabase::prepareStatement();
    WebCore::SQLiteDatabase::prepareStatement();
    if (v28 || v26 || v24)
    {
      v5 = qword_1ED641148;
      if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
      {
LABEL_6:
        v6 = 0;
LABEL_7:
        if (!v24)
        {
          WebCore::SQLiteStatement::~SQLiteStatement(v23);
        }

        if (!v26)
        {
          WebCore::SQLiteStatement::~SQLiteStatement(v25);
        }

        if (!v28)
        {
          WebCore::SQLiteStatement::~SQLiteStatement(v27);
        }

        v7 = a1[3];
        a1[3] = 0;
        v8 = WTF::fastMalloc(0x18);
        *v8 = &unk_1F1105508;
        *(v8 + 8) = v6;
        *(v8 + 16) = v7;
        *buf = v8;
        WTF::RunLoop::mainSingleton(v8);
        WTF::RunLoop::dispatch();
        v9 = *buf;
        *buf = 0;
        if (v9)
        {
          (*(*v9 + 8))(v9);
        }

        return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v4);
      }

      v11 = *(v3 + 664);
      *buf = 134218755;
      *&buf[4] = v3;
      v30 = 2048;
      v31 = v11;
      v32 = 1024;
      Error = WebCore::SQLiteDatabase::lastError((v3 + 16));
      v34 = 2081;
      ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((v3 + 16));
      v12 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::isCorrectSubStatisticsCount: failed to prepare statement";
LABEL_17:
      _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, v12, buf, 0x26u);
      goto LABEL_6;
    }

    if (!(WebKit::ResourceLoadStatisticsStore::domainID(v3, (a1 + 1)) >> 32))
    {
      goto LABEL_53;
    }

    v13 = WebCore::SQLiteStatement::bindInt(v27);
    if (!v13)
    {
      if (v28)
      {
        goto LABEL_52;
      }

      if (!(WebKit::ResourceLoadStatisticsStore::domainID(v3, (a1 + 2)) >> 32))
      {
        goto LABEL_53;
      }

      if (!WebCore::SQLiteStatement::bindInt(v27))
      {
        if (!(WebKit::ResourceLoadStatisticsStore::domainID(v3, (a1 + 1)) >> 32))
        {
          goto LABEL_53;
        }

        v13 = WebCore::SQLiteStatement::bindInt(v25);
        if (!v13)
        {
          if (v26)
          {
            goto LABEL_52;
          }

          if (!(WebKit::ResourceLoadStatisticsStore::domainID(v3, (a1 + 2)) >> 32))
          {
            goto LABEL_53;
          }

          if (!WebCore::SQLiteStatement::bindInt(v25))
          {
            if (!(WebKit::ResourceLoadStatisticsStore::domainID(v3, (a1 + 1)) >> 32))
            {
              goto LABEL_53;
            }

            v13 = WebCore::SQLiteStatement::bindInt(v23);
            if (!v13)
            {
              if (v24)
              {
                goto LABEL_52;
              }

              if (WebKit::ResourceLoadStatisticsStore::domainID(v3, (a1 + 2)) >> 32)
              {
                v13 = WebCore::SQLiteStatement::bindInt(v23);
                if (v13)
                {
                  goto LABEL_33;
                }

                if (!v28)
                {
                  v13 = WebCore::SQLiteStatement::step(v27);
                  if (v13 != 100)
                  {
                    goto LABEL_50;
                  }

                  if (v26)
                  {
                    goto LABEL_52;
                  }

                  v13 = WebCore::SQLiteStatement::step(v25);
                  if (v13 != 100)
                  {
                    goto LABEL_50;
                  }

                  if (v24)
                  {
                    goto LABEL_52;
                  }

                  v13 = WebCore::SQLiteStatement::step(v23);
                  if (v13 != 100)
                  {
LABEL_50:
                    v5 = qword_1ED641148;
                    if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_6;
                    }

                    v19 = *(v3 + 664);
                    v20 = WebCore::SQLiteDatabase::lastError((v3 + 16));
                    v21 = WebCore::SQLiteDatabase::lastErrorMsg((v3 + 16));
                    *buf = 134218755;
                    *&buf[4] = v3;
                    v30 = 2048;
                    v31 = v19;
                    v32 = 1024;
                    Error = v20;
                    v34 = 2081;
                    ErrorMsg = v21;
                    v12 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::isCorrectSubStatisticsCount: failed to step statement";
                    goto LABEL_17;
                  }

                  if (!v28)
                  {
                    v13 = WebCore::SQLiteStatement::columnInt(v27);
                    if (v13 != 1)
                    {
                      goto LABEL_6;
                    }

                    if (!v26)
                    {
                      v13 = WebCore::SQLiteStatement::columnInt(v25);
                      if (v13 != 1)
                      {
                        goto LABEL_6;
                      }

                      if (!v24)
                      {
                        v6 = WebCore::SQLiteStatement::columnInt(v23) == 1;
                        goto LABEL_7;
                      }
                    }
                  }
                }

LABEL_52:
                mpark::throw_bad_variant_access(v13);
              }

LABEL_53:
              v22 = std::__throw_bad_optional_access[abi:sn200100]();
              return _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore32isRelationshipOnlyInDatabaseOnceEON7WebCore17RegistrableDomainES6_ONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED1Ev(v22);
            }
          }
        }
      }
    }

LABEL_33:
    v5 = qword_1ED641148;
    if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v14 = *(v3 + 664);
    v15 = WebCore::SQLiteDatabase::lastError((v3 + 16));
    v16 = WebCore::SQLiteDatabase::lastErrorMsg((v3 + 16));
    *buf = 134218755;
    *&buf[4] = v3;
    v30 = 2048;
    v31 = v14;
    v32 = 1024;
    Error = v15;
    v34 = 2081;
    ErrorMsg = v16;
    v12 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::isCorrectSubStatisticsCount: failed to bind parameters";
    goto LABEL_17;
  }

  v17 = a1[3];
  a1[3] = 0;
  (*(*v17 + 16))(v17, 0);
  v18 = *(*v17 + 8);

  return v18(v17);
}