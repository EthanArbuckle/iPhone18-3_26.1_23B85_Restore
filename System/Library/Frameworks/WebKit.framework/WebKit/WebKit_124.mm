uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, void *a3)
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

  Table = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::allocateTable(a2);
  *a1 = Table;
  *(Table - 8) = a2 - 1;
  *(Table - 4) = a2;
  *(Table - 16) = 0;
  *(Table - 12) = v8;
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
          v16 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::reinsert(*a1, v14);
          v17 = v14[2];
          if (v17)
          {
            WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v17, v10);
          }

          if (v14 == a3)
          {
            v11 = v16;
          }
        }

        else
        {
          v15 = v14[2];
          if (v15)
          {
            WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v15, v10);
          }
        }
      }

      v14 += 3;
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

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::allocateTable(unsigned int a1)
{
  v2 = WTF::fastMalloc((24 * a1 + 16));
  if (a1)
  {
    v3 = a1;
    v4 = (v2 + 32);
    do
    {
      *(v4 - 2) = 0;
      *(v4 - 8) = 0;
      *v4 = 0;
      v4 += 3;
      --v3;
    }

    while (v3);
  }

  return v2 + 16;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::reinsert(uint64_t a1, uint64_t a2)
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

  v6 = WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(*a2);
  v8 = 0;
  do
  {
    v9 = a1 + 24 * (v6 & v5);
    v6 = ++v8 + (v6 & v5);
  }

  while (*v9);
  v10 = *(v9 + 16);
  if (v10)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v10, v7);
    v4 = *a2;
  }

  *v9 = v4;
  *(v9 + 8) = *(a2 + 8);
  *(v9 + 16) = 0;
  v11 = *(a2 + 16);
  *(a2 + 16) = 0;
  *(v9 + 16) = v11;
  return v9;
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(__n128 *a1, uint64_t *a2, uint64_t a3, __n128 a4)
{
  v6 = *a2;
  if (*a2)
  {
    v6 += 24 * *(v6 - 4);
  }

  if (v6 == a3)
  {
    a4.n128_u64[0] = 0;
    v8 = a4;
    *a1 = a4;
    return WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v8, a2);
  }

  else
  {
    a1->n128_u64[0] = 0;
    a1->n128_u64[1] = 0;
    WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, (a3 + 8));

    return WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(a2, a3);
  }
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(uint64_t *result, void *a2)
{
  v2 = result;
  if (*result)
  {
    v3 = *result + 24 * *(*result - 4);
    if (v3 == a2)
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

    v3 = 0;
  }

  if (v3 != a2)
  {
    *a2 = -1;
    result = WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a2 + 1), a2 + 1);
    v4 = *v2;
    v5 = vadd_s32(*(*v2 - 16), 0xFFFFFFFF00000001);
    *(v4 - 16) = v5;
    v6 = *(v4 - 4);
    if (6 * v5.i32[1] < v6 && v6 >= 9)
    {

      return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v2, v6 >> 1, 0);
    }
  }

  return result;
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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

  v8 = WTF::fastZeroedMalloc((24 * a2 + 16));
  *a1 = (v8 + 4);
  v8[2] = a2 - 1;
  v8[3] = a2;
  *v8 = 0;
  v8[1] = v7;
  if (v6)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = (v5 + 24 * v10);
      v13 = *v12;
      if (*v12 != -1)
      {
        if (v13)
        {
          v14 = *a1;
          if (*a1)
          {
            v15 = *(v14 - 8);
          }

          else
          {
            v15 = 0;
          }

          v16 = (v13 + ~(v13 << 32)) ^ ((v13 + ~(v13 << 32)) >> 22);
          v17 = 9 * ((v16 + ~(v16 << 13)) ^ ((v16 + ~(v16 << 13)) >> 8));
          v18 = (v17 ^ (v17 >> 15)) + ~((v17 ^ (v17 >> 15)) << 27);
          v19 = v15 & ((v18 >> 31) ^ v18);
          v20 = 1;
          do
          {
            v21 = (v14 + 24 * v19);
            v19 = (v19 + v20++) & v15;
          }

          while (*v21);
          WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v21 + 1), v9);
          v22 = *v12;
          v21[1] = 0;
          v21[2] = 0;
          *v21 = v22;
          WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt((v21 + 1), v12 + 2);
          WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v12 + 1), v23);
          if (v12 == a3)
          {
            v11 = v21;
          }
        }

        else
        {
          WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v12 + 1), v9);
        }
      }

      ++v10;
    }

    while (v10 != v6);
  }

  else
  {
    v11 = 0;
    result = 0;
    if (!v5)
    {
      return result;
    }
  }

  WTF::fastFree((v5 - 16), v9);
  return v11;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t a2)
{
  if (!*a1)
  {
    return 0;
  }

  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1, a2);
  v4 = *a1;
  if (!result)
  {
    if (v4)
    {
      return (v4 + 24 * *(v4 - 4));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t a2)
{
  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC805E0);
  }

  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = *(v2 - 8);
  v4 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v5 = 9 * ((v4 + ~(v4 << 13)) ^ ((v4 + ~(v4 << 13)) >> 8));
  v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27);
  v7 = v3 & ((v6 >> 31) ^ v6);
  result = (v2 + 24 * v7);
  v9 = *result;
  if (*result != a2)
  {
    v10 = 1;
    while (v9)
    {
      v7 = (v7 + v10) & v3;
      result = (v2 + 24 * v7);
      v9 = *result;
      ++v10;
      if (*result == a2)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v6 = 8 * v3;
    do
    {
      v7 = *v4;
      *v4 = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      v4 = (v4 + 8);
      v6 -= 8;
    }

    while (v6);
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

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::didClose(IPC::Connection &)::$_0,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1101388;
  a1[1] = 0;
  if (v2 && atomic_fetch_add(v2 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 36);
    (*(*v2 + 24))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::didClose(IPC::Connection &)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1101388;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 36);
    (*(*v3 + 24))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::didClose(IPC::Connection &)::$_0,void>::call(uint64_t a1)
{
  result = *(a1 + 8);
  *(result + 395) = 1;
  v2 = *(result + 368);
  if (!v2 || !*(v2 - 12))
  {
    return WebKit::AuxiliaryProcess::stopRunLoop(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::didClose(IPC::Connection &)::$_1,void,WebKit::NetworkSession &>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F11013B0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 36);
    (*(*v3 + 24))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::didClose(IPC::Connection &)::$_1,void,WebKit::NetworkSession &>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F11013B0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add(v4 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 36);
    (*(*v4 + 24))(v4);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WebKit::NetworkProcess::didClose(IPC::Connection &)::$_1::operator()<WebKit::NetworkSession>(uint64_t *a1, void *a2)
{
  v4 = a2[3];
  v5 = *a1;
  v6 = a1[1];
  atomic_fetch_add(v6, 1u);
  v7 = WTF::fastMalloc(0x10);
  *v7 = &unk_1F11013D8;
  v7[1] = v6;
  v13 = v7;
  WebKit::NetworkProcess::platformFlushCookies(v5, v4, &v13);
  v8 = v13;
  v13 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = a2[131];
  v10 = a1[1];
  atomic_fetch_add(v10, 1u);
  v11 = WTF::fastMalloc(0x10);
  *v11 = &unk_1F1101400;
  v11[1] = v10;
  v13 = v11;
  WebKit::NetworkStorageManager::syncLocalStorage(v9, &v13);
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  return (*(*a2 + 192))(a2);
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit14NetworkProcess8didCloseERN3IPC10ConnectionEENK3__1clINS2_14NetworkSessionEEEDaRT_EUlvE_vJEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11013D8;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit14NetworkProcess8didCloseERN3IPC10ConnectionEENK3__1clINS2_14NetworkSessionEEEDaRT_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11013D8;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit14NetworkProcess8didCloseERN3IPC10ConnectionEENK3__1clINS2_14NetworkSessionEEEDaRT_EUlvE0_vJEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1101400;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit14NetworkProcess8didCloseERN3IPC10ConnectionEENK3__1clINS2_14NetworkSessionEEEDaRT_EUlvE0_vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1101400;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::initializeNetworkProcess(WebKit::NetworkProcessCreationParameters &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WTF::Critical,WTF::Synchronous>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1101450;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::initializeNetworkProcess(WebKit::NetworkProcessCreationParameters &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WTF::Critical,WTF::Synchronous>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1101450;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::initializeNetworkProcess(WebKit::NetworkProcessCreationParameters &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WTF::Critical,WTF::Synchronous>::call(uint64_t result, char a2)
{
  v2 = *(result + 8);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      atomic_fetch_add(v3 + 36, 1u);
      result = WebKit::NetworkProcess::lowMemoryHandler(v3, a2);
      if (atomic_fetch_add(v3 + 36, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v3 + 36);
        v4 = *(*v3 + 24);

        return v4(v3);
      }
    }
  }

  return result;
}

void *WTF::HashTable<WTF::ASCIILiteral,WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>>>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ASCIILiteral>,WTF::FastMalloc>::begin(void *result)
{
  if (!result)
  {
    return 0;
  }

  v1 = *(result - 1);
  v2 = &result[3 * v1];
  if (!*(result - 3))
  {
    return &result[3 * v1];
  }

  if (v1)
  {
    v3 = 24 * v1;
    while (!result[1] || *result == -1)
    {
      result += 3;
      v3 -= 24;
      if (!v3)
      {
        return v2;
      }
    }
  }

  return result;
}

uint64_t WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC80E10);
  }

  return result;
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, void *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

_DWORD *WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::translate<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>> WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>(WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>> &&)::{lambda(void)#1}>(void *a1, uint64_t a2, uint64_t **a3)
{
  *a1 = a2;
  v4 = **a3;
  **a3 = 0;
  result = a1[1];
  a1[1] = v4;
  if (result)
  {
    if (result[5] == 1)
    {
      return (*(*result + 8))();
    }

    else
    {
      --result[5];
    }
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if (*a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC81058);
  }

  if (!v4)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC81078);
  }

  v6 = result;
  v7 = *result;
  if (!*result)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(result, 0);
    v7 = *v6;
    v4 = *a2;
  }

  v8 = *(v7 - 8);
  v9 = (v4 + ~(v4 << 32)) ^ ((v4 + ~(v4 << 32)) >> 22);
  v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
  v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
  v12 = v8 & ((v11 >> 31) ^ v11);
  v13 = (v7 + 8 * v12);
  v14 = *v13;
  if (*v13)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      if (v14 == v4)
      {
        v19 = 0;
        v20 = v7 + 8 * *(v7 - 4);
        goto LABEL_22;
      }

      if (v14 == -1)
      {
        v15 = v13;
      }

      v12 = (v12 + v16) & v8;
      v13 = (v7 + 8 * v12);
      v14 = *v13;
      ++v16;
    }

    while (*v13);
    if (v15)
    {
      *v15 = 0;
      --*(*v6 - 16);
      v4 = *a2;
      v13 = v15;
    }
  }

  *v13 = v4;
  v17 = *v6;
  if (*v6)
  {
    v18 = *(v17 - 12) + 1;
  }

  else
  {
    v18 = 1;
  }

  *(v17 - 12) = v18;
  v21 = (*(v17 - 16) + v18);
  v22 = *(v17 - 4);
  if (v22 > 0x400)
  {
    if (v22 <= 2 * v21)
    {
LABEL_19:
      result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v6, v13);
      v13 = result;
      v17 = *v6;
      if (*v6)
      {
        v22 = *(v17 - 4);
      }

      else
      {
        v22 = 0;
      }
    }
  }

  else if (3 * v22 <= 4 * v21)
  {
    goto LABEL_19;
  }

  v20 = v17 + 8 * v22;
  v19 = 1;
LABEL_22:
  *a3 = v13;
  *(a3 + 8) = v20;
  *(a3 + 16) = v19;
  return result;
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v4, a2);
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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
  if (!v7)
  {
    v12 = 0;
    if (!v6)
    {
      return v12;
    }

    goto LABEL_15;
  }

  v11 = 0;
  v12 = 0;
  do
  {
    v13 = (v6 + 8 * v11);
    v14 = *v13;
    if ((*v13 + 1) >= 2)
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
      *v24 = v14;
      if (v13 == a3)
      {
        v12 = v24;
      }
    }

    ++v11;
  }

  while (v11 != v7);
  if (v6)
  {
LABEL_15:
    WTF::fastFree((v6 - 16), v10);
  }

  return v12;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
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
    JUMPOUT(0x19DC812D4);
  }

  v4 = *(v2 - 8);
  v5 = (v3 + ~(v3 << 32)) ^ ((v3 + ~(v3 << 32)) >> 22);
  v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
  v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
  v8 = v4 & ((v7 >> 31) ^ v7);
  result = (v2 + 24 * v8);
  v10 = *result;
  if (*result != v3)
  {
    v11 = 1;
    while (v10)
    {
      v8 = (v8 + v11) & v4;
      result = (v2 + 24 * v8);
      v10 = *result;
      ++v11;
      if (*result == v3)
      {
        return result;
      }
    }

    return (v2 + 24 * *(v2 - 4));
  }

  return result;
}

uint64_t WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::RegistrableDomain const&>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *(a1 + 12);
  v5 = *a1;
  v6 = *v3;
  if (*v3)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  v7 = *(a1 + 12);
  *(v5 + 8 * v4) = v6;
  *(a1 + 12) = v7 + 1;
  return 1;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, void *a2)
{
  WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  v4 = *a1;
  if (!v4)
  {
    return 0;
  }

  v6 = *(v4 - 8);
  v7 = WTF::ObjectIdentifierGenericBaseHash<unsigned long long>::hash(a2) & v6;
  v8 = *(v4 + 16 * v7);
  if (v8 != *a2)
  {
    v9 = 1;
    while (v8)
    {
      v7 = (v7 + v9) & v6;
      v8 = *(v4 + 16 * v7);
      ++v9;
      if (v8 == *a2)
      {
        return v4 + 16 * v7;
      }
    }

    return 0;
  }

  return v4 + 16 * v7;
}

void *WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(void *result)
{
  if (*result == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC8141CLL);
  }

  if (!*result)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC8143CLL);
  }

  return result;
}

uint64_t WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMapEnsureTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC8146CLL);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, void *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  if (!*a1)
  {
    return 0;
  }

  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( a1,  a2);
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

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(*a2);
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

    v8 = 1;
    while (v7)
    {
      v6 = (v6 + v8) & v5;
      v7 = *(v4 + 16 * v6);
      ++v8;
      if (v7 == *a2)
      {
        return v4 + 16 * v6;
      }
    }
  }

  return 0;
}

uint64_t WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC815F0);
  }

  return result;
}

uint64_t *WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t *result, atomic_uint **a2, unint64_t a3)
{
  v3 = result;
  *result = 0;
  result[1] = 0;
  if (!a3)
  {
    return v3;
  }

  v4 = a3;
  if (!(a3 >> 29))
  {
    v6 = 8 * a3;
    v7 = WTF::fastMalloc((8 * a3));
    *(v3 + 2) = v4;
    *v3 = v7;
    v8 = *(v3 + 3);
    do
    {
      v9 = *v3;
      v10 = *a2;
      v11 = v8;
      if (*a2)
      {
        atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
        v11 = *(v3 + 3);
      }

      *(v9 + 8 * v8) = v10;
      v8 = v11 + 1;
      *(v3 + 3) = v11 + 1;
      ++a2;
      v6 -= 8;
    }

    while (v6);
    return v3;
  }

  __break(0xC471u);
  return result;
}

WTF *std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::NetworkProcess::addAllowedFirstPartyForCookies(WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &&,WebKit::LoadedWebArchive,WTF::CompletionHandler<void ()(void)> &&)::$_1,void,WebKit::NetworkSession &>,WTF::CompletionHandler<void ()(void)> &,0>(void *a1, uint64_t a2)
{
  v4 = WTF::fastMalloc(0x20);
  *v4 = &unk_1F11014A0;
  v4[1] = *a2;
  v4[3] = 0;
  v4[2] = 0;
  result = WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt((v4 + 2), (a2 + 8));
  *a1 = v4;
  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::addAllowedFirstPartyForCookies(WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &&,WebKit::LoadedWebArchive,WTF::CompletionHandler<void ()(void)> &&)::$_1,void,WebKit::NetworkSession &>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F11014A0;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 2), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::addAllowedFirstPartyForCookies(WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &&,WebKit::LoadedWebArchive,WTF::CompletionHandler<void ()(void)> &&)::$_1,void,WebKit::NetworkSession &>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F11014A0;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 16, a2);

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::checkHashTableKey<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::HashMapTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,(WTF::ShouldValidateKey)1,PAL::SessionID>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC817F4);
  }

  return result;
}

void *WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
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

  return WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

void *WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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
  v13 = 0;
  if (v7)
  {
    v15 = v7;
    v16 = v6;
    do
    {
      if (*v16 != -1)
      {
        if (*v16)
        {
          v18 = WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::reinsert(*a1, v16);
          v19 = v16[1];
          v16[1] = 0;
          if (v19)
          {
            WebCore::NetworkStorageSession::operator delete();
          }

          if (v16 == a3)
          {
            v13 = v18;
          }
        }

        else
        {
          v17 = v16[1];
          v16[1] = 0;
          if (v17)
          {
            WebCore::NetworkStorageSession::operator delete();
          }
        }
      }

      v16 += 2;
      --v15;
    }

    while (v15);
    goto LABEL_18;
  }

  result = 0;
  if (v6)
  {
LABEL_18:
    WTF::fastFree((v6 - 16), v10);
    return v13;
  }

  return result;
}

void *WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::reinsert(uint64_t a1, uint64_t *a2)
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
    WebCore::NetworkStorageSession::operator delete();
  }

  v13 = *a2;
  v14 = a2[1];
  a2[1] = 0;
  *v11 = v13;
  v11[1] = v14;
  return v11;
}

void *WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<unsigned long long,void>>(void *result, uint64_t a2, char a3, unint64_t a4)
{
  v6 = result;
  if (a2)
  {
    v7 = *(a2 + 4);
  }

  else
  {
    v7 = 0;
  }

  v8 = 0;
  v9 = a4;
  do
  {
    ++v8;
    v10 = v9 > 9;
    v9 /= 0xAuLL;
  }

  while (v10);
  if (v8 < 0 || ((v11 = __OFADD__(v8, 1), v12 = v8 + 1, !v11) ? (v13 = 0) : (v13 = 1), v7 < 0 || (v13 & 1) != 0 || (v14 = v7 + v12, __OFADD__(v7, v12))))
  {
    *result = 0;
  }

  else
  {
    v15 = !a2 || (*(a2 + 16) & 4) != 0;
    result = WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<unsigned long long,void>>(&v16, v14, v15, a2, a3, a4);
    *v6 = v16;
  }

  return result;
}

uint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<unsigned long long,void>>(uint64_t result, unsigned int a2, int a3, uint64_t a4, char a5, unint64_t a6)
{
  v10 = result;
  v11 = a2;
  if (a3)
  {
    if ((a2 & 0x80000000) == 0)
    {
      result = WTF::tryFastCompactMalloc((a2 + 20));
      v12 = v13;
      if (v13)
      {
        *v13 = 2;
        *(v13 + 4) = a2;
        *(v13 + 8) = v13 + 20;
        *(v13 + 16) = 4;
        result = WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<unsigned long long,void>>((v13 + 20), v11, a4, a5, a6);
      }

      goto LABEL_5;
    }

LABEL_7:
    v12 = 0;
    goto LABEL_5;
  }

  if (a2 > 0x7FFFFFEF)
  {
    goto LABEL_7;
  }

  result = WTF::tryFastCompactMalloc((2 * a2 + 20));
  v12 = v13;
  if (v13)
  {
    *v13 = 2;
    *(v13 + 4) = a2;
    *(v13 + 8) = v13 + 20;
    *(v13 + 16) = 0;
    result = WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<unsigned long long,void>>((v13 + 20), v11, a4, a5, a6);
  }

LABEL_5:
  *v10 = v12;
  return result;
}

uint64_t *WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<unsigned long long,void>>(char *__dst, unint64_t a2, uint64_t a3, char a4, unint64_t a5)
{
  v11 = a3;
  result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v11, __dst);
  v10 = v11;
  if (v11 && (v10 = *(v11 + 4), a2 < v10) || a2 == v10)
  {
    __break(1u);
  }

  else
  {
    __dst[v10] = a4;
    v12 = a5;
    return WTF::StringTypeAdapter<unsigned long long,void>::writeTo<unsigned char>(&v12, &__dst[v10 + 1], a2 + ~v10);
  }

  return result;
}

uint64_t *WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<unsigned long long,void>>(char *__dst, unint64_t a2, uint64_t a3, char a4, unint64_t a5)
{
  v12 = a3;
  result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v12, __dst);
  v10 = v12;
  if (v12 && (v10 = *(v12 + 4), a2 < v10) || a2 == v10)
  {
    __break(1u);
  }

  else
  {
    v11 = &__dst[2 * v10];
    *v11 = a4;
    v13 = a5;
    return WTF::StringTypeAdapter<unsigned long long,void>::writeTo<char16_t>(&v13, v11 + 1, a2 + ~v10);
  }

  return result;
}

uint64_t WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::UUID,void>>(void *a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  if (*a2)
  {
    v8 = *(*a2 + 4);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a3 + 8);
  result = _ZNK3WTF17StringTypeAdapterINS_4UUIDEvE6handleIZNKS2_6lengthEvEUlDpOT_E_EEDcOT_(a4, &v16);
  if (((result | v9) & 0x80000000) != 0 || ((v11 = v9 + result, !__OFADD__(v9, result)) ? (v12 = 0) : (v12 = 1), v8 < 0 || (v12 & 1) != 0 || __OFADD__(v8, v11)))
  {
    *a1 = 0;
  }

  else
  {
    v13 = *a2;
    v14 = !*a2 || (*(v13 + 16) & 4) != 0;
    result = WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::UUID,void>>(&v15, v8 + v11, v14, v13, *a3, *(a3 + 8), *a4, a4[1]);
    *a1 = v15;
  }

  return result;
}

uint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::UUID,void>>(uint64_t result, unsigned int a2, int a3, uint64_t a4, int8x16_t *a5, size_t a6, uint64_t a7, uint64_t a8)
{
  v14 = result;
  v15 = a2;
  if (a3)
  {
    if (a2)
    {
      if ((a2 & 0x80000000) == 0)
      {
        result = WTF::tryFastCompactMalloc((a2 + 20));
        v16 = v17;
        if (v17)
        {
          *v17 = 2;
          *(v17 + 4) = a2;
          *(v17 + 8) = v17 + 20;
          *(v17 + 16) = 4;
          result = WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::UUID,void>>((v17 + 20), v15, a4, a5->i8, a6, a7, a8);
        }

        goto LABEL_6;
      }

LABEL_9:
      v16 = 0;
      goto LABEL_6;
    }

LABEL_10:
    v16 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_6;
  }

  if (!a2)
  {
    goto LABEL_10;
  }

  if (a2 > 0x7FFFFFEF)
  {
    goto LABEL_9;
  }

  result = WTF::tryFastCompactMalloc((2 * a2 + 20));
  v16 = v17;
  if (v17)
  {
    *v17 = 2;
    *(v17 + 4) = a2;
    *(v17 + 8) = v17 + 20;
    *(v17 + 16) = 0;
    result = WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::UUID,void>>((v17 + 20), v15, a4, a5, a6, a7, a8);
  }

LABEL_6:
  *v14 = v16;
  return result;
}

uint64_t _ZNK3WTF17StringTypeAdapterINS_4UUIDEvE6handleIZNKS2_6lengthEvEUlDpOT_E_EEDcOT_(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  WTF::Internal::appendHex();
  v19 = v3;
  WTF::Internal::appendHex();
  v17 = v4;
  WTF::Internal::appendHex();
  v15 = v5;
  WTF::Internal::appendHex();
  v13 = v6;
  memset(v9, 45, sizeof(v9));
  WTF::Internal::appendHex();
  v11 = v7;
  return _ZN3WTF18handleWithAdaptersIZNKS_17StringTypeAdapterINS_4UUIDEvE6lengthEvEUlDpOT_E_JNS_15HexNumberBufferEcS8_cS8_cS8_cS8_EEEDcOT_DpOT0_(a2, v18, &v9[3], v16, &v9[2], v14, &v9[1], v12, v9, v10);
}

uint64_t _ZN3WTF18handleWithAdaptersIZNKS_17StringTypeAdapterINS_4UUIDEvE6lengthEvEUlDpOT_E_JNS_15HexNumberBufferEcS8_cS8_cS8_cS8_EEEDcOT_DpOT0_(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, char *a5, uint64_t a6, char *a7, uint64_t a8, char *a9, uint64_t a10)
{
  v19 = a2;
  v18 = *a3;
  v17 = a4;
  v16 = *a5;
  v15 = a6;
  v14 = *a7;
  v13 = a8;
  v12 = *a9;
  v11 = a10;
  return WTF::StringTypeAdapter<WTF::UUID,void>::length(void)const::{lambda(WTF::UUID &&)#1}::operator()<WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>,WTF::StringTypeAdapter<char,void>,WTF::HexNumberBuffer,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>,WTF::HexNumberBuffer,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>,WTF::HexNumberBuffer,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>,WTF::HexNumberBuffer>(a1, &v19, &v18, &v17, &v16, &v15, &v14, &v13, &v12, &v11);
}

uint64_t WTF::StringTypeAdapter<WTF::UUID,void>::length(void)const::{lambda(WTF::UUID &&)#1}::operator()<WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>,WTF::StringTypeAdapter<char,void>,WTF::HexNumberBuffer,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>,WTF::HexNumberBuffer,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>,WTF::HexNumberBuffer,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>,WTF::HexNumberBuffer>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  WTF::checkedSum<int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int>(*(*a2 + 16), 1, *(*a4 + 16), 1, *(*a6 + 16), 1, *(*a8 + 16), 1, v11, *(*a10 + 16));
  if (v11[0])
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v12;
  }
}

uint64_t *WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::UUID,void>>(char *__dst, unint64_t a2, uint64_t a3, char *a4, size_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a3;
  result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v15, __dst);
  v14 = v15;
  if (!v15)
  {
    return WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::UUID,void>>(&__dst[v14], a2 - v14, a4, a5, a6, a7);
  }

  v14 = *(v15 + 4);
  if (a2 >= v14)
  {
    return WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::UUID,void>>(&__dst[v14], a2 - v14, a4, a5, a6, a7);
  }

  __break(1u);
  return result;
}

_WORD *WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::UUID,void>>(char *__dst, unint64_t a2, uint64_t a3, int8x16_t *a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a3;
  WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v27, __dst);
  if (!v27)
  {
    goto LABEL_14;
  }

  v13 = *(v27 + 4);
  if (a2 < v13)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v14 = &__dst[2 * v13];
    if (a5 < 0x40)
    {
      v15 = &__dst[2 * v13];
    }

    else
    {
      v15 = &v14[2 * (a5 & 0x7FFFFFFFFFFFFFC0)];
      v16 = 0uLL;
      v17 = &__dst[2 * v13];
      do
      {
        v31.val[0] = *a4;
        v18 = a4[1];
        v32.val[0] = a4[2];
        v19 = a4[3];
        a4 += 4;
        v20 = v19;
        v32.val[1] = 0uLL;
        v33.val[0] = v18;
        v31.val[1] = 0uLL;
        v21 = v17;
        vst2q_s8(v21, v31);
        v21 += 32;
        v33.val[1] = 0uLL;
        vst2q_s8(v21, v33);
        v22 = v17 + 64;
        vst2q_s8(v22, v32);
        v23 = v17 + 96;
        vst2q_s8(v23, *(&v16 - 1));
        v17 += 128;
      }

      while (v17 != v15);
    }

    v24 = a2 - v13;
    while (v15 != &v14[2 * a5])
    {
      v25 = a4->u8[0];
      a4 = (a4 + 1);
      *v15 = v25;
      v15 += 2;
    }

    if (v24 >= a5)
    {
      break;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    v13 = 0;
  }

  v28[0] = a6;
  v28[1] = a7;
  v30[0] = &v14[2 * a5];
  v30[1] = v24 - a5;
  v29 = v30;
  return _ZNK3WTF17StringTypeAdapterINS_4UUIDEvE6handleIZNKS2_7writeToIDsEEvNSt3__14spanIT_Lm18446744073709551615EEEEUlDpOT_E_EEDcOS7_(v28, &v29);
}

_BYTE *WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::UUID,void>>(char *__dst, unint64_t a2, char *__src, size_t __n, uint64_t a5, uint64_t a6)
{
  v8 = __n;
  if (__n)
  {
    if (__n == 1)
    {
      goto LABEL_7;
    }

    memcpy(__dst, __src, __n);
  }

  while (a2 < v8)
  {
    __break(1u);
LABEL_7:
    *__dst = *__src;
  }

  v12[0] = a5;
  v12[1] = a6;
  v14[0] = &__dst[v8];
  v14[1] = a2 - v8;
  v13 = v14;
  return _ZNK3WTF17StringTypeAdapterINS_4UUIDEvE6handleIZNKS2_7writeToIhEEvNSt3__14spanIT_Lm18446744073709551615EEEEUlDpOT_E_EEDcOS7_(v12, &v13);
}

_BYTE *_ZNK3WTF17StringTypeAdapterINS_4UUIDEvE6handleIZNKS2_7writeToIhEEvNSt3__14spanIT_Lm18446744073709551615EEEEUlDpOT_E_EEDcOS7_(uint64_t a1, _BYTE ***a2)
{
  v19 = *MEMORY[0x1E69E9840];
  WTF::Internal::appendHex();
  v18 = v3;
  WTF::Internal::appendHex();
  v16 = v4;
  WTF::Internal::appendHex();
  v14 = v5;
  WTF::Internal::appendHex();
  v12 = v6;
  WTF::Internal::appendHex();
  v10 = v7;
  return WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>>(**a2, (*a2)[1], v17, 45, v15, 45, v13, 45, v11, 45, v9);
}

_BYTE *WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>>(_BYTE *__dst, _BYTE *a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22 = (a3 + 16);
  v21 = *(a3 + 16);
  if (v21 >= 0x11)
  {
    goto LABEL_9;
  }

  v14 = a8;
  v11 = a7;
  v16 = a6;
  v15 = a5;
  v18 = a4;
  v20 = a2;
  v13 = __dst;
  v17 = a10;
  v12 = a11;
  v19 = a9;
  if (v21)
  {
    a2 = v22 - v21;
    if (v21 == 1)
    {
      goto LABEL_10;
    }

    memcpy(__dst, a2, v21);
    v11 = a7;
  }

  while (1)
  {
    v23 = *v22;
    a2 = &v20[-v23];
    if (v20 >= v23)
    {
      break;
    }

LABEL_9:
    __break(1u);
LABEL_10:
    *v13 = *a2;
  }

  return WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>>(&v13[v23], a2, v18, v15, v16, v11, v14, v19, v17, v12);
}

_BYTE *WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>>(_BYTE *result, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    *result = a3;
    return WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>>(result + 1, (a2 - 1), a4, a5, a6, a7, a8, a9, a10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

_BYTE *WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>>(_BYTE *__dst, _BYTE *a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8, uint64_t a9)
{
  v18 = (a3 + 16);
  v17 = *(a3 + 16);
  if (v17 >= 0x11)
  {
    goto LABEL_9;
  }

  v10 = a8;
  v9 = a7;
  v12 = a6;
  v11 = a5;
  v14 = a4;
  v13 = a2;
  v16 = __dst;
  v15 = a9;
  if (v17)
  {
    a2 = v18 - v17;
    if (v17 == 1)
    {
      goto LABEL_10;
    }

    memcpy(__dst, a2, v17);
  }

  while (1)
  {
    v19 = *v18;
    if (v13 > v19)
    {
      break;
    }

LABEL_9:
    __break(1u);
LABEL_10:
    *v16 = *a2;
  }

  v16[v19] = v14;

  return WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>>(&v16[v19 + 1], &v13[~v19], v11, v12, v9, v10, v15);
}

_BYTE *WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>>(_BYTE *__dst, _BYTE *a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7)
{
  v14 = (a3 + 16);
  v13 = *(a3 + 16);
  if (v13 >= 0x11)
  {
    goto LABEL_9;
  }

  v7 = a7;
  v9 = a6;
  v8 = a5;
  v11 = a4;
  v10 = a2;
  v12 = __dst;
  if (v13)
  {
    a2 = v14 - v13;
    if (v13 == 1)
    {
      goto LABEL_10;
    }

    memcpy(__dst, a2, v13);
  }

  while (1)
  {
    v15 = *v14;
    if (v10 > v15)
    {
      break;
    }

LABEL_9:
    __break(1u);
LABEL_10:
    *v12 = *a2;
  }

  v12[v15] = v11;

  return WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>>(&v12[v15 + 1], &v10[~v15], v8, v9, v7);
}

_BYTE *WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>>(_BYTE *__dst, _BYTE *a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = (a3 + 16);
  v9 = *(a3 + 16);
  if (v9 >= 0x11)
  {
    goto LABEL_12;
  }

  v5 = a5;
  v6 = a4;
  v8 = a2;
  v7 = __dst;
  if (v9)
  {
    a2 = v10 - v9;
    if (v9 == 1)
    {
      goto LABEL_13;
    }

    memcpy(__dst, a2, v9);
  }

  while (1)
  {
    v11 = *v10;
    if (v8 > v11)
    {
      v7[v11] = v6;
      result = &v7[v11 + 1];
      v14 = *(v5 + 16);
      v5 += 16;
      v13 = v14;
      if (v14 < 0x11)
      {
        break;
      }
    }

LABEL_12:
    __break(1u);
LABEL_13:
    *v7 = *a2;
  }

  if (v13)
  {
    v15 = (v5 - v13);
    if (v13 == 1)
    {
      *result = *v15;
    }

    else
    {

      return memcpy(result, v15, v13);
    }
  }

  return result;
}

_WORD *_ZNK3WTF17StringTypeAdapterINS_4UUIDEvE6handleIZNKS2_7writeToIDsEEvNSt3__14spanIT_Lm18446744073709551615EEEEUlDpOT_E_EEDcOS7_(uint64_t a1, _WORD ***a2)
{
  v19 = *MEMORY[0x1E69E9840];
  WTF::Internal::appendHex();
  v18 = v3;
  WTF::Internal::appendHex();
  v16 = v4;
  WTF::Internal::appendHex();
  v14 = v5;
  WTF::Internal::appendHex();
  v12 = v6;
  WTF::Internal::appendHex();
  v10 = v7;
  return WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>>(**a2, (*a2)[1], v17, 45, v15, 45, v13, 45, v11, 45, v9);
}

_WORD *WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>>(_WORD *result, unint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8, uint64_t a9, char a10, uint64_t a11)
{
  v13 = *(a3 + 16);
  v11 = a3 + 16;
  v12 = v13;
  if (v13 >= 0x11)
  {
    goto LABEL_26;
  }

  if (v12)
  {
    v14 = (v11 - v12);
    v15 = 2 * v12;
    v16 = result;
    do
    {
      v17 = *v14++;
      *v16++ = v17;
      v15 -= 2;
    }

    while (v15);
  }

  if (a2 <= v12)
  {
    goto LABEL_26;
  }

  v18 = &result[v12];
  *v18 = a4;
  v19 = v18 + 1;
  v22 = *(a5 + 16);
  v20 = a5 + 16;
  v21 = v22;
  if (v22 >= 0x11)
  {
    goto LABEL_26;
  }

  v23 = a2 + ~v12;
  if (v21)
  {
    v24 = (v20 - v21);
    v25 = 2 * v21;
    v26 = v19;
    do
    {
      v27 = *v24++;
      *v26++ = v27;
      v25 -= 2;
    }

    while (v25);
  }

  if (v23 <= v21)
  {
    goto LABEL_26;
  }

  v28 = &v19[v21];
  *v28 = a6;
  v29 = v28 + 1;
  v32 = *(a7 + 16);
  v30 = a7 + 16;
  v31 = v32;
  if (v32 >= 0x11)
  {
    goto LABEL_26;
  }

  v33 = v23 + ~v21;
  if (v31)
  {
    v34 = (v30 - v31);
    v35 = 2 * v31;
    v36 = v29;
    do
    {
      v37 = *v34++;
      *v36++ = v37;
      v35 -= 2;
    }

    while (v35);
  }

  if (v33 <= v31)
  {
    goto LABEL_26;
  }

  v38 = &v29[v31];
  *v38 = a8;
  v39 = v38 + 1;
  v40 = *(a9 + 16);
  if (*(a9 + 16) >= 0x11u)
  {
    goto LABEL_26;
  }

  v41 = v33 + ~v31;
  if (v40)
  {
    v42 = (a9 + 16 - v40);
    v43 = 2 * v40;
    v44 = v39;
    do
    {
      v45 = *v42++;
      *v44++ = v45;
      v43 -= 2;
    }

    while (v43);
  }

  if (v41 <= v40 || (v46 = &v39[v40], *v46 = a10, v47 = v46 + 1, v48 = *(a11 + 16), *(a11 + 16) >= 0x11u))
  {
LABEL_26:
    __break(1u);
  }

  else if (v48)
  {
    v49 = (a11 + 16 - v48);
    v50 = 2 * v48;
    do
    {
      v51 = *v49++;
      *v47++ = v51;
      v50 -= 2;
    }

    while (v50);
  }

  return result;
}

uint64_t WTF::checkHashTableKey<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::HashMapEnsureTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,(WTF::ShouldValidateKey)1,PAL::SessionID>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC82AF8);
  }

  return result;
}

void *WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
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

  return WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::HashMapEnsureTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>::translate<PAL::SessionID const&,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>,WebKit::NetworkProcess::addWebsiteDataStore(WebKit::WebsiteDataStoreParameters &&)::$_0>(void *a1, uint64_t a2, WebKit::NetworkSession *this, uint64_t a4)
{
  *a1 = a2;
  WebKit::NetworkSession::create(&v7, this, (a4 + 32), this);
  v5 = v7;
  v7 = 0;
  result = a1[1];
  a1[1] = v5;
  if (result)
  {
    (*(*result + 8))(result);
    result = v7;
    v7 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void *WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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
  v13 = 0;
  if (v7)
  {
    v15 = v7;
    v16 = v6;
    do
    {
      if (*v16 != -1)
      {
        if (*v16)
        {
          v18 = WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::reinsert(*a1, v16);
          v19 = v16[1];
          v16[1] = 0;
          if (v19)
          {
            (*(*v19 + 8))(v19);
          }

          if (v16 == a3)
          {
            v13 = v18;
          }
        }

        else
        {
          v17 = v16[1];
          v16[1] = 0;
          if (v17)
          {
            (*(*v17 + 8))(v17);
          }
        }
      }

      v16 += 2;
      --v15;
    }

    while (v15);
    goto LABEL_19;
  }

  result = 0;
  if (v6)
  {
LABEL_19:
    WTF::fastFree((v6 - 16), v10);
    return v13;
  }

  return result;
}

void *WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::reinsert(uint64_t a1, uint64_t *a2)
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
    (*(*v12 + 8))(v12);
  }

  v13 = *a2;
  v14 = a2[1];
  a2[1] = 0;
  *v11 = v13;
  v11[1] = v14;
  return v11;
}

uint64_t WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 == -1 || !v2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC82EF8);
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

    v11 = 1;
    while (v9)
    {
      v8 = (v8 + v11) & v4;
      v9 = *(v3 + 16 * v8);
      ++v11;
      if (v9 == v2)
      {
        return *(v3 + 16 * v8 + 8);
      }
    }
  }

  return 0;
}

uint64_t *WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(uint64_t *a1, void *a2)
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
    return WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::remove(a1, a2);
  }

  return a1;
}

void *WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::remove(uint64_t *a1, void *a2)
{
  result = a2[1];
  *a2 = -1;
  a2[1] = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }

  return result;
}

uint64_t WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,(WTF::ShouldValidateKey)1,PAL::SessionID>(uint64_t *a1, uint64_t *a2)
{
  if (!*a1)
  {
    return 0;
  }

  result = WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,(WTF::ShouldValidateKey)1,PAL::SessionID>(a1, a2);
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

uint64_t WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,(WTF::ShouldValidateKey)1,PAL::SessionID>(uint64_t *a1, uint64_t *a2)
{
  WTF::checkHashTableKey<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,(WTF::ShouldValidateKey)1,PAL::SessionID>(*a2);
  v4 = *a1;
  if (v4)
  {
    v5 = *(v4 - 8);
    v6 = *a2;
    v7 = WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v6) & v5;
    v8 = *(v4 + 16 * v7);
    if (v8 == v6)
    {
      return v4 + 16 * v7;
    }

    v10 = 1;
    while (v8)
    {
      v7 = (v7 + v10) & v5;
      v8 = *(v4 + 16 * v7);
      ++v10;
      if (v8 == v6)
      {
        return v4 + 16 * v7;
      }
    }
  }

  return 0;
}

uint64_t WTF::checkHashTableKey<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,(WTF::ShouldValidateKey)1,PAL::SessionID>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC83130);
  }

  return result;
}

unint64_t WTF::HashTable<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  WTF::checkHashTableKey<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::IdentityHashTranslator<WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::DefaultHash<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>>,(WTF::ShouldValidateKey)1,WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>(*a3);
  v6 = *a2;
  if (*a2 || (WTF::HashTable<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::FastMalloc>::expand(a2, 0), (v6 = *a2) != 0))
  {
    v7 = *(v6 - 8);
  }

  else
  {
    v7 = 0;
  }

  result = WTF::intHash(*a3);
  v9 = 0;
  v10 = *a3;
  for (i = 1; ; ++i)
  {
    v12 = result & v7;
    v13 = (v6 + 8 * (result & v7));
    v14 = *v13;
    if (!*v13)
    {
      if (v9)
      {
        *v9 = 0;
        --*(*a2 - 16);
        v10 = *a3;
        v13 = v9;
      }

      *a3 = 0;
      v15 = *v13;
      *v13 = v10;
      if (v15)
      {
        result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v15 + 8));
      }

      v16 = *a2;
      if (*a2)
      {
        v17 = *(v16 - 12) + 1;
      }

      else
      {
        v17 = 1;
      }

      *(v16 - 12) = v17;
      v18 = (*(v16 - 16) + v17);
      v19 = *(v16 - 4);
      if (v19 > 0x400)
      {
        if (v19 > 2 * v18)
        {
          goto LABEL_17;
        }
      }

      else if (3 * v19 > 4 * v18)
      {
LABEL_17:
        v20 = v16 + 8 * v19;
        v21 = 1;
        goto LABEL_18;
      }

      result = WTF::HashTable<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::FastMalloc>::expand(a2, v13);
      v13 = result;
      v16 = *a2;
      if (*a2)
      {
        v19 = *(v16 - 4);
      }

      else
      {
        v19 = 0;
      }

      goto LABEL_17;
    }

    if (v14 == -1)
    {
      v9 = (v6 + 8 * v12);
      goto LABEL_8;
    }

    if (v14 == v10)
    {
      break;
    }

LABEL_8:
    result = i + v12;
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

  v21 = 0;
  v20 = v22 + 8 * v23;
LABEL_18:
  *a1 = v13;
  *(a1 + 8) = v20;
  *(a1 + 16) = v21;
  return result;
}

uint64_t WTF::checkHashTableKey<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::IdentityHashTranslator<WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::DefaultHash<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>>,(WTF::ShouldValidateKey)1,WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC83300);
  }

  return result;
}

void *WTF::HashTable<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
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

  return WTF::HashTable<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

void *WTF::HashTable<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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
          v15 = WTF::HashTable<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::FastMalloc>::reinsert(*a1, v14);
          v16 = *v14;
          *v14 = 0;
          if (v16)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v16 + 8));
          }

          if (v14 == a3)
          {
            v11 = v15;
          }
        }

        else
        {
          *v14 = 0;
        }
      }

      ++v14;
      --v13;
    }

    while (v13);
    goto LABEL_15;
  }

  result = 0;
  if (v6)
  {
LABEL_15:
    WTF::fastFree((v6 - 16), v10);
    return v11;
  }

  return result;
}

void *WTF::HashTable<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::FastMalloc>::reinsert(uint64_t a1, uint64_t *a2)
{
  if (a1)
  {
    v2 = *(a1 - 8);
  }

  else
  {
    v2 = 0;
  }

  v3 = *a2;
  v4 = ~(*a2 << 32) + *a2;
  v5 = 9 * (((v4 ^ (v4 >> 22)) + ~((v4 ^ (v4 >> 22)) << 13)) ^ (((v4 ^ (v4 >> 22)) + ~((v4 ^ (v4 >> 22)) << 13)) >> 8));
  v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27);
  v7 = v2 & ((v6 >> 31) ^ v6);
  v8 = 1;
  do
  {
    v9 = v7;
    v10 = *(a1 + 8 * v7);
    v7 = (v7 + v8++) & v2;
  }

  while (v10);
  result = (a1 + 8 * v9);
  *a2 = 0;
  *result = v3;
  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::destroySession(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F11014F0;
  v2 = a1[4];
  a1[4] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v3 + 8));
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add(v4 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 36);
    (*(*v4 + 24))(v4);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::destroySession(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F11014F0;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v4 + 8));
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5 && atomic_fetch_add(v5 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5 + 36);
    (*(*v5 + 24))(v5);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WebKit::NetworkProcess::destroySession(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(uint64_t *a1)
{
  v2 = *a1;
  v3 = WTF::HashTable<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::DefaultHash<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>>,(WTF::ShouldValidateKey)1,WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>((*a1 + 368), a1 + 2);
  WTF::HashSet<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::DefaultHash<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove((v2 + 368), v3);
  v4 = a1[3];
  a1[3] = 0;
  (*(*v4 + 16))(v4);
  result = (*(*v4 + 8))(v4);
  if (*(v2 + 395) == 1)
  {
    v6 = *(v2 + 368);
    if (!v6 || !*(v6 - 12))
    {

      return WebKit::AuxiliaryProcess::stopRunLoop(v2);
    }
  }

  return result;
}

atomic_ullong *WTF::HashSet<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::DefaultHash<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove(atomic_ullong *result, uint64_t *a2)
{
  if (*result)
  {
    v2 = (*result + 8 * *(*result - 4));
    if (v2 == a2)
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

    v2 = 0;
  }

  if (v2 != a2)
  {
    return WTF::HashTable<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::FastMalloc>::remove(result, a2);
  }

  return result;
}

atomic_ullong *WTF::HashTable<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::FastMalloc>::remove(atomic_ullong *result, uint64_t *a2)
{
  v3 = result;
  v4 = *a2;
  *a2 = 0;
  if (v4)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v4 + 8));
  }

  *a2 = -1;
  v5 = *v3;
  v6 = vadd_s32(*(*v3 - 16), 0xFFFFFFFF00000001);
  *(v5 - 16) = v6;
  v7 = *(v5 - 4);
  if (6 * v6.i32[1] < v7 && v7 >= 9)
  {

    return WTF::HashTable<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::FastMalloc>::rehash(v3, v7 >> 1, 0);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::DefaultHash<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>>,(WTF::ShouldValidateKey)1,WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>(uint64_t *a1, uint64_t *a2)
{
  if (!*a1)
  {
    return 0;
  }

  result = WTF::HashTable<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::DefaultHash<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>>,(WTF::ShouldValidateKey)1,WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>(a1, a2);
  v4 = *a1;
  if (!result)
  {
    if (v4)
    {
      return v4 + 8 * *(v4 - 4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WTF::HashTable<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::DefaultHash<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>>,(WTF::ShouldValidateKey)1,WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>(uint64_t *a1, uint64_t *a2)
{
  WTF::checkHashTableKey<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::IdentityHashTranslator<WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::DefaultHash<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>>,(WTF::ShouldValidateKey)1,WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>(*a2);
  v4 = *a1;
  if (v4)
  {
    v5 = *(v4 - 8);
    v6 = WTF::intHash(*a2);
    for (i = 0; ; v6 = i + v8)
    {
      v8 = v6 & v5;
      v9 = *(v4 + 8 * v8);
      if (!v9)
      {
        break;
      }

      if (v9 != -1 && v9 == *a2)
      {
        return v4 + 8 * v8;
      }

      ++i;
    }
  }

  return 0;
}

void WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(uint64_t *a1, void *a2)
{
  if (*a1)
  {
    v2 = (*a1 + 16 * *(*a1 - 4));
    if (v2 == a2)
    {
      return;
    }
  }

  else
  {
    if (!a2)
    {
      return;
    }

    v2 = 0;
  }

  if (v2 != a2)
  {
    WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::remove(a1, a2);
  }
}

void WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::remove(uint64_t *a1, void *a2)
{
  v3 = a2[1];
  *a2 = -1;
  a2[1] = 0;
  if (v3)
  {
    WebCore::NetworkStorageSession::operator delete();
  }

  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }
}

uint64_t WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,(WTF::ShouldValidateKey)1,PAL::SessionID>(uint64_t *a1, uint64_t *a2)
{
  if (!*a1)
  {
    return 0;
  }

  result = WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,(WTF::ShouldValidateKey)1,PAL::SessionID>(a1, a2);
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

uint64_t WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,(WTF::ShouldValidateKey)1,PAL::SessionID>(uint64_t *a1, uint64_t *a2)
{
  WTF::checkHashTableKey<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,(WTF::ShouldValidateKey)1,PAL::SessionID>(*a2);
  v4 = *a1;
  if (v4)
  {
    v5 = *(v4 - 8);
    v6 = *a2;
    v7 = WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v6) & v5;
    v8 = *(v4 + 16 * v7);
    if (v8 == v6)
    {
      return v4 + 16 * v7;
    }

    v10 = 1;
    while (v8)
    {
      v7 = (v7 + v10) & v5;
      v8 = *(v4 + 16 * v7);
      ++v10;
      if (v8 == v6)
      {
        return v4 + 16 * v7;
      }
    }
  }

  return 0;
}

uint64_t WTF::checkHashTableKey<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,(WTF::ShouldValidateKey)1,PAL::SessionID>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC83B30);
  }

  return result;
}

uint64_t WTF::HashSet<PAL::SessionID,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove(uint64_t *a1, void *a2)
{
  if (*a1)
  {
    v3 = *a1 + 8 * *(*a1 - 4);
    if (v3 == a2)
    {
      return 0;
    }
  }

  else
  {
    if (!a2)
    {
      return 0;
    }

    v3 = 0;
  }

  if (v3 != a2)
  {
    WTF::HashTable<PAL::SessionID,PAL::SessionID,WTF::IdentityExtractor,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::remove(a1, a2);
  }

  return 1;
}

uint64_t *WTF::HashTable<PAL::SessionID,PAL::SessionID,WTF::IdentityExtractor,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::remove(uint64_t *result, void *a2)
{
  *a2 = -1;
  v2 = *result;
  v3 = vadd_s32(*(*result - 16), 0xFFFFFFFF00000001);
  *(v2 - 16) = v3;
  v4 = *(v2 - 4);
  if (6 * v3.i32[1] < v4 && v4 >= 9)
  {
    return WTF::HashTable<PAL::SessionID,PAL::SessionID,WTF::IdentityExtractor,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::rehash(result, v4 >> 1, 0);
  }

  return result;
}

uint64_t WTF::HashTable<PAL::SessionID,PAL::SessionID,WTF::IdentityExtractor,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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

  v9 = WTF::fastMalloc((8 * a2 + 16));
  v11 = v9;
  v12 = v9 + 16;
  if (a2)
  {
    bzero((v9 + 16), 8 * a2);
  }

  *a1 = v12;
  v13 = a2 - 1;
  v11[2] = a2 - 1;
  v11[3] = a2;
  *v11 = 0;
  v11[1] = v8;
  if (!v7)
  {
    v15 = 0;
    if (!v6)
    {
      return v15;
    }

    goto LABEL_15;
  }

  v14 = 0;
  v15 = 0;
  if (!v12)
  {
    v13 = 0;
  }

  do
  {
    v16 = (v6 + 8 * v14);
    v17 = *v16;
    if ((*v16 + 1) >= 2)
    {
      v18 = (v17 + ~(v17 << 32)) ^ ((v17 + ~(v17 << 32)) >> 22);
      v19 = 9 * ((v18 + ~(v18 << 13)) ^ ((v18 + ~(v18 << 13)) >> 8));
      v20 = (v19 ^ (v19 >> 15)) + ~((v19 ^ (v19 >> 15)) << 27);
      v21 = v13 & ((v20 >> 31) ^ v20);
      v22 = 1;
      do
      {
        v23 = v21;
        v24 = *(v12 + 8 * v21);
        v21 = (v21 + v22++) & v13;
      }

      while (v24);
      *(v12 + 8 * v23) = v17;
      if (v16 == a3)
      {
        v15 = v12 + 8 * v23;
      }
    }

    ++v14;
  }

  while (v14 != v7);
  if (v6)
  {
LABEL_15:
    WTF::fastFree((v6 - 16), v10);
  }

  return v15;
}

uint64_t WTF::HashTable<PAL::SessionID,PAL::SessionID,WTF::IdentityExtractor,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTraits<PAL::SessionID>,WTF::DefaultHash<PAL::SessionID>>,(WTF::ShouldValidateKey)1,PAL::SessionID>(uint64_t *a1, uint64_t *a2)
{
  if (!*a1)
  {
    return 0;
  }

  result = WTF::HashTable<PAL::SessionID,PAL::SessionID,WTF::IdentityExtractor,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<PAL::SessionID>,WTF::DefaultHash<PAL::SessionID>>,(WTF::ShouldValidateKey)1,PAL::SessionID>(a1, a2);
  v4 = *a1;
  if (!result)
  {
    if (v4)
    {
      return v4 + 8 * *(v4 - 4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WTF::HashTable<PAL::SessionID,PAL::SessionID,WTF::IdentityExtractor,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<PAL::SessionID>,WTF::DefaultHash<PAL::SessionID>>,(WTF::ShouldValidateKey)1,PAL::SessionID>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 == -1 || !v2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC83E6CLL);
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 - 8);
    v5 = (v2 + ~(v2 << 32)) ^ ((v2 + ~(v2 << 32)) >> 22);
    v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
    v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
    v8 = v4 & ((v7 >> 31) ^ v7);
    v9 = *(v3 + 8 * v8);
    if (v9 == v2)
    {
      return v3 + 8 * v8;
    }

    v10 = 1;
    while (v9)
    {
      v8 = (v8 + v10) & v4;
      v9 = *(v3 + 8 * v8);
      ++v10;
      if (v9 == v2)
      {
        return v3 + 8 * v8;
      }
    }
  }

  return 0;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>)>,void,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>&&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1101518;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>)>,void,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>&&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1101518;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl **WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>)>,void,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>&&>::call(uint64_t a1, WTF::StringImpl ***a2)
{
  v2 = *a2;
  *a2 = 0;
  v5 = v2;
  WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>)>::operator()((a1 + 8), &v5);
  result = v5;
  if (v5)
  {
    return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v5, v3);
  }

  return result;
}

WTF::StringImpl **WTF::Function<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>)>::operator()(uint64_t *a1, WTF::StringImpl ***a2)
{
  v2 = *a1;
  v3 = *a2;
  *a2 = 0;
  v6 = v3;
  (*(*v2 + 16))(v2, &v6);
  result = v6;
  if (v6)
  {
    return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v6, v4);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(WTF::String)>,void,WTF::String&&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1102268;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(WTF::String)>,void,WTF::String&&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1102268;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(WTF::String)>,void,WTF::String&&>::call(uint64_t a1, WTF::StringImpl **a2)
{
  v2 = *a2;
  *a2 = 0;
  v5 = v2;
  WTF::CompletionHandler<void ()(WTF::String)>::operator()((a1 + 8), &v5);
  result = v5;
  v5 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v3);
    }
  }

  return result;
}

uint64_t WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v6 = *a1;
    v7 = 24 * v3;
    do
    {
      WebKit::ITPThirdPartyData::~ITPThirdPartyData(v6, a2);
      v6 = (v8 + 24);
      v7 -= 24;
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

void WebKit::ITPThirdPartyData::~ITPThirdPartyData(WTF::StringImpl **this, void *a2)
{
  WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((this + 1), a2);
  v4 = *this;
  *this = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v3);
    }
  }
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::hasLocalStorage(PAL::SessionID,WebCore::RegistrableDomain const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1101540;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::hasLocalStorage(PAL::SessionID,WebCore::RegistrableDomain const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1101540;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::hasLocalStorage(PAL::SessionID,WebCore::RegistrableDomain const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::call(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v12 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 12);
  *a2 = 0;
  *(a2 + 8) = 0;
  v13 = v5;
  v14 = v4;
  if (v4)
  {
    v6 = 48 * v4 - 48;
    do
    {
      v7 = WebCore::RegistrableDomain::matches((a1 + 8), v3);
      if (v7)
      {
        break;
      }

      v3 = (v3 + 48);
      v8 = v6;
      v6 -= 48;
    }

    while (v8);
  }

  else
  {
    v7 = 0;
  }

  v9 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v9 + 16))(v9, v7);
  (*(*v9 + 8))(v9);
  return WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v12, v10);
}

uint64_t WebCore::RegistrableDomain::matches(WebCore::RegistrableDomain *this, const WebCore::SecurityOriginData *a2)
{
  if (*(a2 + 24))
  {
    if (*(a2 + 24) != 1)
    {
      mpark::throw_bad_variant_access(this);
    }

    v3 = MEMORY[0x1E696EBA8];
  }

  else
  {
    v3 = (a2 + 8);
  }

  v4 = *v3;
  if (v4)
  {
    v5 = *(v4 + 8);
    v6 = *(v4 + 4) | (((*(v4 + 16) >> 2) & 1) << 32);
  }

  else
  {
    v5 = 0;
    v6 = 0x100000000;
  }

  return WebCore::RegistrableDomain::matches(this, v5, v6);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::setManagedDomainsForResourceLoadStatistics(PAL::SessionID,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11015B8;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::setManagedDomainsForResourceLoadStatistics(PAL::SessionID,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F11015B8;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
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

atomic_ullong *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::setManagedDomainsForResourceLoadStatistics(PAL::SessionID,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::call(void *a1)
{
  v2 = a1[1];
  if (v2 && (v3 = *(v2 + 8)) != 0 && (v4 = *(v3 + 72)) != 0)
  {
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
    WebKit::WebResourceLoadStatisticsStore::setManagedDomains(v4, a1 + 2, (a1 + 3));

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v4);
  }

  else
  {
    v8 = a1[3];
    a1[3] = 0;
    (*(*v8 + 16))(v8);
    v9 = *(*v8 + 8);

    return v9(v8);
  }
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::preconnectTo(PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceRequest &&,WebCore::StoredCredentialsPolicy,std::optional<WebKit::NavigatingToAppBoundDomain>,unsigned long long)::$_0,void,WebCore::ResourceError const&,WebCore::NetworkLoadMetrics const&>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1101608;
  WebKit::NetworkProcess::preconnectTo(PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceRequest &&,WebCore::StoredCredentialsPolicy,std::optional<WebKit::NavigatingToAppBoundDomain>,unsigned long long)::$_0::~$_0((a1 + 2), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::preconnectTo(PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceRequest &&,WebCore::StoredCredentialsPolicy,std::optional<WebKit::NavigatingToAppBoundDomain>,unsigned long long)::$_0,void,WebCore::ResourceError const&,WebCore::NetworkLoadMetrics const&>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F1101608;
  WebKit::NetworkProcess::preconnectTo(PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceRequest &&,WebCore::StoredCredentialsPolicy,std::optional<WebKit::NavigatingToAppBoundDomain>,unsigned long long)::$_0::~$_0(a1 + 16, a2);

  return WTF::fastFree(a1, v3);
}

uint64_t WebKit::NetworkProcess::preconnectTo(PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceRequest &&,WebCore::StoredCredentialsPolicy,std::optional<WebKit::NavigatingToAppBoundDomain>,unsigned long long)::$_0::operator()(uint64_t result, void *a2)
{
  if (*result)
  {
    v2 = *(*result + 8);
    if (v2)
    {
      v4 = result;
      ++*(v2 + 4);
      WebKit::NetworkSession::protectedNetworkLoadScheduler(v2, a2, &v7);
      result = WebKit::NetworkLoadScheduler::finishedPreconnectForMainResource(v7, (v4 + 8), (v4 + 48), a2);
      v5 = v7;
      v7 = 0;
      if (v5)
      {
        result = WTF::RefCounted<WebKit::NetworkLoadScheduler>::deref(v5 + 2);
      }

      v6 = *(v2 + 4);
      if (v6)
      {
        *(v2 + 4) = v6 - 1;
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

uint64_t WTF::HashTable<PAL::SessionID,PAL::SessionID,WTF::IdentityExtractor,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
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

  return WTF::HashTable<PAL::SessionID,PAL::SessionID,WTF::IdentityExtractor,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::rehash(a1, v4, a2);
}

void *WebKit::WebsiteData::WebsiteData(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  a1[2] = 0;
  v4 = *(a2 + 16);
  *(a2 + 16) = 0;
  a1[2] = v4;
  a1[3] = 0;
  v5 = *(a2 + 24);
  *(a2 + 24) = 0;
  a1[3] = v5;
  a1[4] = 0;
  v6 = *(a2 + 32);
  *(a2 + 32) = 0;
  a1[4] = v6;
  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::fetchWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &&)::CallbackAggregator::~CallbackAggregator()::{lambda(void)#1},void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1101630;
  v3 = a1[6];
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = a1[5];
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = a1[4];
  if (v5)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v5, a2);
  }

  WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 2), a2);
  v6 = a1[1];
  a1[1] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::fetchWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &&)::CallbackAggregator::~CallbackAggregator()::{lambda(void)#1},void>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1101630;
  v3 = *(a1 + 6);
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(a1 + 5);
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *(a1 + 4);
  if (v5)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v5, a2);
  }

  WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 16, a2);
  v7 = *(a1 + 1);
  *(a1 + 1) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  return WTF::fastFree(a1, v6);
}

void WTF::Detail::CallableWrapper<WebKit::NetworkProcess::fetchWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &&)::CallbackAggregator::~CallbackAggregator()::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1, a1 + 16);
  (*(*v1 + 8))(v1);
  v2 = qword_1ED641350;
  if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "NetworkProcess::fetchWebsiteData finished fetching data", v3, 2u);
  }
}

void WebKit::WebsiteData::~WebsiteData(WebKit::WebsiteData *this, WTF::StringImpl *a2)
{
  v3 = *(this + 4);
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 3);
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *(this + 2);
  if (v5)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v5, a2);
  }

  WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::fetchWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &&)::$_0,void,WTF::HashSet<WebCore::SecurityOriginData,WTF::DefaultHash<WTF::HashSet>,WTF::HashTraits<WTF::HashSet>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1101658;
  WTF::Ref<WebKit::NetworkProcess::fetchWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &>>::~Ref((a1 + 1));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::fetchWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &&)::$_0,void,WTF::HashSet<WebCore::SecurityOriginData,WTF::DefaultHash<WTF::HashSet>,WTF::HashTraits<WTF::HashSet>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F1101658;
  WTF::Ref<WebKit::NetworkProcess::fetchWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &>>::~Ref((a1 + 8));

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::fetchWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &&)::$_0,void,WTF::HashSet<WebCore::SecurityOriginData,WTF::DefaultHash<WTF::HashSet>,WTF::HashTraits<WTF::HashSet>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&>::call(uint64_t a1, uint64_t *a2)
{
  v4 = a2;
  v23 = *MEMORY[0x1E69E9840];
  result = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::begin(a2);
  v8 = result;
  v9 = v7;
  if (*v4)
  {
    v10 = *v4 + 32 * *(*v4 - 4);
  }

  else
  {
    v10 = 0;
  }

  if (v10 != result)
  {
    do
    {
      v11 = *(a1 + 8);
      v12 = *(v8 + 24);
      if (*(v8 + 24))
      {
        if (v12 == 255)
        {
          v13 = 0;
          v4 &= 0xFFFFFFFFFFFFFF00;
          LOBYTE(v19[0]) = 0;
          v21 = -1;
          goto LABEL_18;
        }

        v4 = *v8;
        v2 = *(v8 + 8);
      }

      else
      {
        v4 = *v8;
        if (*v8)
        {
          atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
        }

        v2 = *(v8 + 8);
        if (v2)
        {
          atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
        }

        v3 = *(v8 + 16);
        v12 = *(v8 + 24);
      }

      LOBYTE(v19[0]) = 0;
      v21 = -1;
      if (!v12)
      {
        if (v4)
        {
          atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
        }

        v19[0] = v4;
        if (v2)
        {
          atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
        }

        v19[1] = v2;
        v20 = v3;
        goto LABEL_17;
      }

      if (v12 != 255)
      {
        v19[0] = v4;
        v19[1] = v2;
LABEL_17:
        v21 = v12;
        v13 = v12 == 0;
        goto LABEL_18;
      }

      v13 = 0;
LABEL_18:
      LODWORD(v22) = 0x4000;
      *(&v22 + 1) = 0;
      v14 = *(v11 + 28);
      if (v14 == *(v11 + 24))
      {
        result = WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebsiteData::Entry>(v11 + 16, v19);
        goto LABEL_24;
      }

      v15 = *(v11 + 16) + 48 * v14;
      *v15 = 0;
      *(v15 + 24) = -1;
      if (v21)
      {
        if (v21 == 255)
        {
          goto LABEL_23;
        }

        *v15 = *v19;
      }

      else
      {
        v16 = v19[0];
        v19[0] = 0;
        *v15 = v16;
        v17 = v19[1];
        v19[1] = 0;
        *(v15 + 8) = v17;
        *(v15 + 16) = v20;
      }

      *(v15 + 24) = v21;
LABEL_23:
      *(v15 + 32) = v22;
      ++*(v11 + 28);
LABEL_24:
      if (!v21)
      {
        v18 = v19[1];
        v19[1] = 0;
        if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v18, v7);
        }

        result = v19[0];
        v19[0] = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v7);
        }
      }

      v21 = -1;
      if (!v13)
      {
        goto LABEL_39;
      }

      if (v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(v2, v7);
        if (v4)
        {
LABEL_35:
          if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(v4, v7);
          }

          v4 = 0;
        }
      }

      else if (v4)
      {
        goto LABEL_35;
      }

      v2 = 0;
      do
      {
LABEL_39:
        v8 += 32;
        if (v8 == v9)
        {
          break;
        }

        result = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v8);
      }

      while (result);
    }

    while (v8 != v10);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::fetchWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &&)::$_1,void,WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1101680;
  WTF::Ref<WebKit::NetworkProcess::fetchWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &>>::~Ref((a1 + 1));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::fetchWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &&)::$_1,void,WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F1101680;
  WTF::Ref<WebKit::NetworkProcess::fetchWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &>>::~Ref((a1 + 8));

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::fetchWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &&)::$_1,void,WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::call(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v15 = *a2;
  v3 = *(a2 + 2);
  v4 = *(a2 + 3);
  *a2 = 0;
  a2[1] = 0;
  v16 = v3;
  v17 = v4;
  if (!v4)
  {
    return WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v15, a2);
  }

  v5 = *(a1 + 8);
  v7 = *(v5 + 24);
  v6 = *(v5 + 28);
  v8 = v6 + v4;
  if (v6 + v4 <= v7)
  {
    goto LABEL_11;
  }

  v9 = v7 + (v7 >> 1);
  if (v9 <= v7 + 1)
  {
    v9 = v7 + 1;
  }

  if (v9 <= v8)
  {
    v9 = v8;
  }

  v10 = v9 <= 0x10 ? 16 : v9;
  result = WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(v5 + 16, v10);
  v6 = *(v5 + 28);
  if (v8 >= v6)
  {
LABEL_11:
    v12 = (*(v5 + 16) + 48 * v6);
    v13 = 48 * v4;
    do
    {
      v14 = mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v12, v2);
      *(v14 + 2) = *(v2 + 32);
      v12 = v14 + 48;
      v2 += 48;
      v13 -= 48;
    }

    while (v13);
    *(v5 + 28) = v8;
    return WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v15, a2);
  }

  __break(0xC471u);
  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::fetchWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &&)::$_2,void,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F11016A8;
  WTF::Ref<WebKit::NetworkProcess::fetchWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &>>::~Ref((a1 + 1));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::fetchWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &&)::$_2,void,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F11016A8;
  WTF::Ref<WebKit::NetworkProcess::fetchWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &>>::~Ref((a1 + 8));

  return WTF::fastFree(a1, v2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::fetchWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &&)::$_2,void,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::call(WTF::StringImpl *result, uint64_t a2)
{
  v2 = *(a2 + 12);
  if (v2)
  {
    v4 = result;
    do
    {
      v5 = *(v4 + 1);
      v6 = *a2 + 8 * v2;
      v7 = *(v6 - 8);
      *(v6 - 8) = 0;
      v12 = v7;
      v8 = v2 - 1;
      WTF::VectorDestructor<true,WTF::String>::destruct((*a2 + 8 * (v2 - 1)), (*a2 + 8 * v2));
      *(a2 + 12) = v8;
      WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>((v5 + 48), &v12, v9, &v11);
      result = v12;
      v12 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v10);
        }
      }

      v2 = *(a2 + 12);
    }

    while (v2);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::fetchWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &&)::$_3,void,WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F11016D0;
  WTF::Ref<WebKit::NetworkProcess::fetchWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &>>::~Ref((a1 + 1));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::fetchWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &&)::$_3,void,WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F11016D0;
  WTF::Ref<WebKit::NetworkProcess::fetchWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &>>::~Ref((a1 + 8));

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::fetchWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &&)::$_3,void,WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::call(uint64_t a1, void *a2)
{
  v5[0] = *a2;
  v2 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v5[1] = v2;
  WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendVector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>(*(a1 + 8) + 16, v5);
  return WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, v3);
}

__n128 WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendVector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 12);
  v5 = *(a1 + 8);
  v6 = v4 + *(a1 + 12);
  if (v6 > v5)
  {
    v12 = v5 + (v5 >> 1);
    if (v12 <= v5 + 1)
    {
      v12 = v5 + 1;
    }

    if (v12 <= v6)
    {
      v12 = v6;
    }

    if (v12 <= 0x10)
    {
      v13 = 16;
    }

    else
    {
      v13 = v12;
    }

    WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v13);
    v4 = *(a2 + 12);
  }

  if (v4)
  {
    v7 = *a2;
    v8 = *(a1 + 12);
    v9 = 48 * v4;
    do
    {
      v10 = mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((*a1 + 48 * v8));
      result = v7[2];
      v10[2] = result;
      v8 = *(a1 + 12) + 1;
      *(a1 + 12) = v8;
      v7 += 3;
      v9 -= 48;
    }

    while (v9);
  }

  return result;
}

void WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkProcess::DeleteWebsiteDataTask>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkProcess::DeleteWebsiteDataTask>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkProcess::DeleteWebsiteDataTask,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::NetworkProcess::DeleteWebsiteDataTask>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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
    while (1)
    {
      v12 = (v4 + 48 * v11);
      v13 = *v12;
      if (*v12 != -1)
      {
        if (v13)
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

          v17 = (v13 + ~(v13 << 32)) ^ ((v13 + ~(v13 << 32)) >> 22);
          v18 = 9 * ((v17 + ~(v17 << 13)) ^ ((v17 + ~(v17 << 13)) >> 8));
          v19 = (v18 ^ (v18 >> 15)) + ~((v18 ^ (v18 >> 15)) << 27);
          v20 = v16 & ((v19 >> 31) ^ v19);
          v21 = 1;
          do
          {
            v22 = v15 + 48 * v20;
            v20 = (v20 + v21++) & v16;
          }

          while (*v22);
          v23 = *(v22 + 40);
          *(v22 + 40) = 0;
          if (v23)
          {
            (*(*v23 + 8))(v23);
          }

          *v22 = *v12;
          v24 = *(v12 + 1);
          *(v22 + 24) = *(v12 + 3);
          *(v22 + 8) = v24;
          v25 = v12[5];
          v12[5] = 0;
          *(v22 + 40) = v25;
          v14 = v12[5];
          v12[5] = 0;
          if (!v14)
          {
            goto LABEL_21;
          }

LABEL_20:
          (*(*v14 + 8))(v14);
          goto LABEL_21;
        }

        v14 = v12[5];
        v12[5] = 0;
        if (v14)
        {
          goto LABEL_20;
        }
      }

LABEL_21:
      if (++v11 == v5)
      {
        goto LABEL_24;
      }
    }
  }

  if (v4)
  {
LABEL_24:

    WTF::fastFree((v4 - 16), v8);
  }
}

void WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkProcess::DeleteWebsiteDataTask>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkProcess::DeleteWebsiteDataTask>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkProcess::DeleteWebsiteDataTask,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::NetworkProcess::DeleteWebsiteDataTask>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkProcess::DeleteWebsiteDataTask>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkProcess::DeleteWebsiteDataTask>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkProcess::DeleteWebsiteDataTask,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::NetworkProcess::DeleteWebsiteDataTask>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::HashSet<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::CompletionHandler<void ()(void)> &&)::$_1,void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F11016F8;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::HashSet<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::CompletionHandler<void ()(void)> &&)::$_1,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11016F8;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::HashSet<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::CompletionHandler<void ()(void)> &&)::$_1,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      atomic_fetch_add((v2 + 144), 1u);
      WebKit::NetworkProcess::performDeleteWebsiteDataTask(v2, *(a1 + 16), 1);
      if (atomic_fetch_add((v2 + 144), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, (v2 + 144));
        v3 = *(*v2 + 24);

        v3(v2);
      }
    }
  }
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v4, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::HashSet<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::CompletionHandler<void ()(void)> &&)::$_2,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1101720;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::HashSet<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::CompletionHandler<void ()(void)> &&)::$_2,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1101720;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
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
    if (v5)
    {
      v8 = v6;
      v9 = 8 * v5;
      v10 = v4;
      do
      {
        v11 = *v10;
        *v10 = 0;
        *v8 = v11;
        v12 = *v10;
        *v10 = 0;
        if (v12)
        {
          (*(*v12 + 8))(v12);
        }

        ++v8;
        v10 = (v10 + 8);
        v9 -= 8;
      }

      while (v9);
    }

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

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::HashSet<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::CompletionHandler<void ()(void)> &&)::$_3,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1101748;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::HashSet<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::CompletionHandler<void ()(void)> &&)::$_3,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1101748;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::HashSet<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::CompletionHandler<void ()(void)> &&)::$_4,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1101770;
  a1[1] = 0;
  if (v2 && atomic_fetch_add(v2 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 36);
    (*(*v2 + 24))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::HashSet<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::CompletionHandler<void ()(void)> &&)::$_4,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1101770;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 36);
    (*(*v3 + 24))(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataImpl(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1101798;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataImpl(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1101798;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataImpl(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  (*(*v1 + 8))(v1);
  v2 = qword_1ED641350;
  if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "NetworkProcess::deleteWebsiteDataImpl finishes deleting modified data", v3, 2u);
  }
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataImpl(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::CompletionHandler<void ()(void)> &&)::$_1,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11017C0;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataImpl(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::CompletionHandler<void ()(void)> &&)::$_1,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11017C0;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataImpl(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::CompletionHandler<void ()(void)> &&)::$_2,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11017E8;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataImpl(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::CompletionHandler<void ()(void)> &&)::$_2,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11017E8;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataImpl(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::CompletionHandler<void ()(void)> &&)::$_3,void,unsigned int>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1101810;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataImpl(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::CompletionHandler<void ()(void)> &&)::$_3,void,unsigned int>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1101810;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataImpl(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::CompletionHandler<void ()(void)> &&)::$_4,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1101838;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataImpl(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::CompletionHandler<void ()(void)> &&)::$_4,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1101838;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataImpl(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::CompletionHandler<void ()(void)> &&)::$_5,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1101860;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataImpl(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::CompletionHandler<void ()(void)> &&)::$_5,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1101860;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataImpl(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::CompletionHandler<void ()(void)> &&)::$_6,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1101888;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataImpl(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::CompletionHandler<void ()(void)> &&)::$_6,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1101888;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataImpl(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::CompletionHandler<void ()(void)> &&)::$_7,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11018B0;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataImpl(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::CompletionHandler<void ()(void)> &&)::$_7,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11018B0;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataImpl(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::CompletionHandler<void ()(void)> &&)::$_8,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11018D8;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataImpl(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::CompletionHandler<void ()(void)> &&)::$_8,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11018D8;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataImpl(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::CompletionHandler<void ()(void)> &&)::$_9,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1101900;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataImpl(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::CompletionHandler<void ()(void)> &&)::$_9,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1101900;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataForOrigin(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1101928;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataForOrigin(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1101928;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataForOrigin(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  (*(*v1 + 8))(v1);
  v2 = qword_1ED641350;
  if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "NetworkProcess::deleteWebsiteDataForOrigin finished deleting data", v3, 2u);
  }
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataForOrigin(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(void)> &&)::$_1,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1101950;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataForOrigin(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(void)> &&)::$_1,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1101950;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Vector<WebKit::NetworkCache::Key,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = 72 * v3;
    v5 = *a1 + 16;
    do
    {
      v6 = *(v5 + 8);
      *(v5 + 8) = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }

      v7 = *v5;
      *v5 = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, a2);
      }

      v8 = *(v5 - 8);
      *(v5 - 8) = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, a2);
      }

      v9 = *(v5 - 16);
      *(v5 - 16) = 0;
      if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, a2);
      }

      v5 += 72;
      v4 -= 72;
    }

    while (v4);
  }

  v10 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v10, a2);
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataForOrigin(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(void)> &&)::$_2,void,WebKit::NetworkCache::Cache::TraversalEntry const*>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1101978;
  WebKit::NetworkProcess::deleteWebsiteDataForOrigin(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(void)> &&)::$_2::~$_2(a1 + 1, a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataForOrigin(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(void)> &&)::$_2,void,WebKit::NetworkCache::Cache::TraversalEntry const*>::~CallableWrapper(uint64_t *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1101978;
  WebKit::NetworkProcess::deleteWebsiteDataForOrigin(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(void)> &&)::$_2::~$_2(a1 + 1, a2);

  return WTF::fastFree(a1, v3);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataForOrigin(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(void)> &&)::$_2,void,WebKit::NetworkCache::Cache::TraversalEntry const*>::call(uint64_t a1, const WebKit::NetworkCache::Key **a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (*(a1 + 24))
    {
      goto LABEL_11;
    }

    v4 = WebCore::ResourceResponseBase::url((*a2 + 80));
    WebCore::SecurityOriginData::fromURLWithoutStrictOpaqueness(&v16, v4, v5);
    result = WebCore::operator==();
    v8 = result;
    if (!v18)
    {
      v9 = v17;
      v17 = 0;
      if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v7);
      }

      result = v16;
      v16 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v7);
      }
    }

    if (v8)
    {
LABEL_11:
      v10 = *a2;
      v11 = *(a1 + 84);
      if (v11 == *(a1 + 80))
      {
        return WTF::Vector<WebKit::NetworkCache::Key,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::NetworkCache::Key const&>(a1 + 72, v10);
      }

      else
      {
        result = WebKit::NetworkCache::Key::Key((*(a1 + 72) + 72 * v11), v10);
        ++*(a1 + 84);
      }
    }
  }

  else
  {
    v12 = *(a1 + 8);
    v13 = *(a1 + 16);
    atomic_fetch_add(v13, 1u);
    v14 = WTF::fastMalloc(0x10);
    *v14 = &unk_1F11019A0;
    *(v14 + 1) = v13;
    v16 = v14;
    WebKit::NetworkCache::Cache::remove(v12, (a1 + 72), &v16, v15);
    result = v16;
    if (v16)
    {
      return (*(*v16 + 8))(v16);
    }
  }

  return result;
}

uint64_t WTF::Vector<WebKit::NetworkCache::Key,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::NetworkCache::Key const&>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebKit::NetworkCache::Key,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  WebKit::NetworkCache::Key::Key((*a1 + 72 * *(a1 + 12)), v3);
  ++*(a1 + 12);
  return 1;
}

unint64_t WTF::Vector<WebKit::NetworkCache::Key,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 72 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebKit::NetworkCache::Key,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::NetworkCache::Key,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebKit::NetworkCache::Key,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x38E38E4)
    {
      __break(0xC471u);
      JUMPOUT(0x19DC8698CLL);
    }

    v3 = *a1;
    v4 = (*a1 + 72 * *(a1 + 12));
    v5 = 72 * a2;
    v6 = WTF::fastMalloc((72 * a2));
    *(a1 + 8) = v5 / 0x48;
    *a1 = v6;
    WTF::VectorMover<false,WebKit::NetworkCache::Key>::move(v3, v4, v6);
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

WTF::StringImpl *WTF::VectorMover<false,WebKit::NetworkCache::Key>::move(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      v6 = *v5;
      *v5 = 0;
      *a3 = v6;
      v7 = *(v5 + 1);
      *(v5 + 1) = 0;
      *(a3 + 8) = v7;
      v8 = *(v5 + 2);
      *(v5 + 2) = 0;
      *(a3 + 16) = v8;
      v9 = *(v5 + 3);
      *(v5 + 3) = 0;
      *(a3 + 24) = v9;
      v10 = *(v5 + 2);
      v11 = *(v5 + 3);
      *(a3 + 64) = *(v5 + 8);
      *(a3 + 32) = v10;
      *(a3 + 48) = v11;
      v12 = *(v5 + 3);
      *(v5 + 3) = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, a2);
      }

      v13 = *(v5 + 2);
      *(v5 + 2) = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, a2);
      }

      v14 = *(v5 + 1);
      *(v5 + 1) = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, a2);
      }

      result = *v5;
      *v5 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      a3 += 72;
      v5 = (v5 + 72);
    }

    while (v5 != a2);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit14NetworkProcess26deleteWebsiteDataForOriginEN3PAL9SessionIDENS_9OptionSetINS2_15WebsiteDataTypeEEERKN7WebCore12ClientOriginEONS_17CompletionHandlerIFvvEEEEN3__2clIKNS2_12NetworkCache5Cache14TraversalEntryEEEDaPT_EUlvE_vJEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11019A0;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit14NetworkProcess26deleteWebsiteDataForOriginEN3PAL9SessionIDENS_9OptionSetINS2_15WebsiteDataTypeEEERKN7WebCore12ClientOriginEONS_17CompletionHandlerIFvvEEEEN3__2clIKNS2_12NetworkCache5Cache14TraversalEntryEEEDaPT_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11019A0;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataForOrigin(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(void)> &&)::$_3,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11019C8;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataForOrigin(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(void)> &&)::$_3,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11019C8;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataForOrigin(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(void)> &&)::$_4,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11019F0;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataForOrigin(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(void)> &&)::$_4,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11019F0;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataForOrigins(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)::$_1,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1101A18;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataForOrigins(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)::$_1,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1101A18;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataForOrigins(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)::$_1,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  (*(*v1 + 8))(v1);
  v2 = qword_1ED641350;
  if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "NetworkProcess::deleteWebsiteDataForOrigins finished deleting data", v3, 2u);
  }
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataForOrigins(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)::$_2,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1101A40;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataForOrigins(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)::$_2,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1101A40;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataForOrigins(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)::$_3,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1101A68;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataForOrigins(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)::$_3,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1101A68;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataForOrigins(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)::$_4,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1101A90;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataForOrigins(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)::$_4,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1101A90;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataForOrigins(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)::$_5,void,unsigned int>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1101AB8;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataForOrigins(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)::$_5,void,unsigned int>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1101AB8;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataForOrigins(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)::$_6,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1101AE0;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataForOrigins(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)::$_6,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1101AE0;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataForOrigins(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)::$_7,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1101B08;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataForOrigins(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)::$_7,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1101B08;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataForOrigins(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)::$_8,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1101B30;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataForOrigins(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)::$_8,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1101B30;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataForOrigins(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)::$_9,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1101B58;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteWebsiteDataForOrigins(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)::$_9,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1101B58;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_1,void,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1101B80;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_1,void,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1101B80;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_1,void,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::call(WTF::RunLoop *a1, uint64_t *a2)
{
  WTF::RunLoop::mainSingleton(a1);
  v4 = *(a1 + 1);
  *(a1 + 1) = 0;
  v10 = v4;
  WTF::CrossThreadCopierBase<false,false,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::copy(a2, &v11);
  v5 = WTF::fastMalloc(0x18);
  *v5 = &unk_1F1101BA8;
  v5[1] = v10;
  v6 = v11;
  v11 = 0;
  v5[2] = v6;
  v12 = v5;
  WTF::RunLoop::dispatch();
  v8 = v12;
  v12 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  if (v11)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v11, v7);
  }

  return 0;
}

WTF::StringImpl *WTF::CrossThreadCopierBase<false,false,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::copy@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  if (*a1)
  {
    v4 = *(*a1 - 12);
  }

  else
  {
    v4 = 0;
  }

  result = WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::reserveInitialCapacity(a2, v4);
  for (i = *a1; *a1; i = *a1)
  {
    if (!*(i - 12))
    {
      break;
    }

    v9 = WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin(a1, v6, v7);
    WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::take(a1, v9, &v13);
    WebCore::RegistrableDomain::isolatedCopy(&v14);
    WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(a2, &v14, v10, v12);
    v11 = v14;
    v14 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v6);
    }

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

  return result;
}

uint64_t WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::reserveInitialCapacity(void *a1, uint64_t a2)
{
  v3 = WTF::HashTable<WebCore::PermissionsPolicy::Feature,WebCore::PermissionsPolicy::Feature,WTF::IdentityExtractor,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::FastMalloc>::computeBestTableSize(a2);
  result = WTF::fastZeroedMalloc((8 * v3 + 16));
  *a1 = result + 16;
  *(result + 8) = v3 - 1;
  *(result + 12) = v3;
  *result = 0;
  return result;
}

uint64_t *WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::take@<X0>(uint64_t *a1@<X0>, WTF::StringImpl *a2@<X1>, void *a3@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v3 = (v3 + 8 * *(v3 - 1));
  }

  if (v3 == a2)
  {
    *a3 = 0;
    return a1;
  }

  v4 = *a2;
  *a2 = 0;
  *a3 = v4;
  if (*a1)
  {
    v5 = (*a1 + 8 * *(*a1 - 4));
    if (v5 == a2)
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

    v5 = 0;
  }

  if (v5 != a2)
  {
    return WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::remove(a1, a2);
  }

  return a1;
}

WTF::StringImpl **WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::remove(uint64_t *a1, WTF::StringImpl *a2)
{
  result = *a2;
  *a2 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, a2);
  }

  *a2 = -1;
  v5 = *a1;
  v6 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v5 - 16) = v6;
  v7 = *(v5 - 4);
  if (6 * v6.i32[1] < v7 && v7 >= 9)
  {

    return WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::rehash(a1, v7 >> 1, 0);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_1::operator()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>)::{lambda(void)#1},void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1101BA8;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_1::operator()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1101BA8;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_1::operator()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1, a1 + 16);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator::~CallbackAggregator()::{lambda(void)#1},void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1101BD0;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator::~CallbackAggregator()::{lambda(void)#1},void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1101BD0;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator::~CallbackAggregator()::{lambda(void)#1},void>::call(uint64_t a1)
{
  v2 = qword_1ED641350;
  if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains finished deleting and restricting data", v5, 2u);
  }

  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v3 + 16))(v3, a1 + 16);
  return (*(*v3 + 8))(v3);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_2,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1101BF8;
  WTF::Ref<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>>::~Ref((a1 + 1));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_2,void>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F1101BF8;
  WTF::Ref<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>>::~Ref((a1 + 8));

  return WTF::fastFree(a1, v2);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_3,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1101C20;
  WTF::Ref<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>>::~Ref((a1 + 1));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_3,void>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F1101C20;
  WTF::Ref<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>>::~Ref((a1 + 8));

  return WTF::fastFree(a1, v2);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_4,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1101C48;
  WTF::Ref<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>>::~Ref((a1 + 1));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_4,void>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F1101C48;
  WTF::Ref<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>>::~Ref((a1 + 8));

  return WTF::fastFree(a1, v2);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_5,void,WTF::CompletionHandler<WTF::HashSet::SecurityOriginData,WebCore::RegistrableDomain<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &>,WTF::DefaultHash<WebCore><WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &>,WTF::HashTraits<WebCore>,(WTF::HashTableTraits)1> const&>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1101C70;
  v3 = a1[4];
  a1[4] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  WTF::Ref<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>>::~Ref((a1 + 3));
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 1), v4);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_5,void,WTF::CompletionHandler<WTF::HashSet::SecurityOriginData,WebCore::RegistrableDomain<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &>,WTF::DefaultHash<WebCore><WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &>,WTF::HashTraits<WebCore>,(WTF::HashTableTraits)1> const&>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1101C70;
  v3 = a1[4];
  a1[4] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  WTF::Ref<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>>::~Ref((a1 + 3));
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 1), v4);

  return WTF::fastFree(a1, v5);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_5,void,WTF::CompletionHandler<WTF::HashSet::SecurityOriginData,WebCore::RegistrableDomain<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &>,WTF::DefaultHash<WebCore><WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &>,WTF::HashTraits<WebCore>,(WTF::HashTableTraits)1> const&>::call(uint64_t a1, uint64_t *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  result = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::begin(a2);
  v5 = result;
  v7 = v6;
  if (*a2)
  {
    v8 = *a2 + 32 * *(*a2 - 4);
  }

  else
  {
    v8 = 0;
  }

  if (v8 != result)
  {
    while (1)
    {
      if (*(v5 + 24))
      {
        v9 = MEMORY[0x1E696EBA8];
        if (*(v5 + 24) != 1)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v9 = (v5 + 8);
      }

      WebCore::RegistrableDomain::uncheckedCreateFromHost(v9, &v33);
      v34[0] = &v33;
      v12 = WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::findIf<unsigned long WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::find<WebCore::RegistrableDomain>(WebCore::RegistrableDomain const&)::{lambda(WebCore::RegistrableDomain&)#1}>(a1 + 8, v34, v10);
      result = v33;
      v33 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v11);
      }

      if (v12 != -1)
      {
        v13 = *(a1 + 24);
        if (*(v5 + 24))
        {
          v9 = MEMORY[0x1E696EBA8];
          if (*(v5 + 24) != 1)
          {
LABEL_48:
            mpark::throw_bad_variant_access(v9);
          }
        }

        else
        {
          v9 = (v5 + 8);
        }

        WebCore::RegistrableDomain::uncheckedCreateFromHost(v9, &v33);
        WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>((v13 + 16), &v33, v14, v34);
        result = v33;
        v33 = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v15);
        }

        v16 = *(a1 + 32);
        if (v16)
        {
          result = *(v16 + 8);
          if (result)
          {
            v17 = (WebKit::NetworkSession::ensureSWServer(result, v15) + 8);
            ++*v17;
            v18 = *(a1 + 24);
            atomic_fetch_add(v18, 1u);
            v33 = v18;
            v19 = WTF::fastMalloc(0x10);
            *v19 = &unk_1F1101C98;
            v20 = v33;
            v33 = 0;
            v34[0] = v19;
            *(v19 + 1) = v20;
            WebCore::SWServer::clear();
            v21 = v34[0];
            v34[0] = 0;
            if (v21)
            {
              (*(*v21 + 8))(v21);
            }

            WTF::Ref<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>>::~Ref(&v33);
            result = WTF::RefCounted<WebCore::SWServer>::deref(v17);
            v22 = *(a1 + 32);
            if (!v22 || (v23 = *(v22 + 8)) == 0)
            {
              result = 121;
              __break(0xC471u);
              return result;
            }

            if ((*(v23 + 1088) & 1) == 0)
            {
              break;
            }
          }
        }
      }

      do
      {
LABEL_39:
        v5 += 32;
        if (v5 == v7)
        {
          break;
        }

        result = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v5);
      }

      while (result);
      if (v5 == v8)
      {
        return result;
      }
    }

    v24 = *(v23 + 1080);
    LOBYTE(v34[0]) = 0;
    v36 = -1;
    LODWORD(v23) = *(v5 + 24);
    if (*(v5 + 24))
    {
      if (v23 == 255)
      {
        goto LABEL_30;
      }

      *v34 = *v5;
    }

    else
    {
      v25 = *v5;
      if (*v5)
      {
        atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
      }

      v34[0] = v25;
      v23 = *(v5 + 8);
      if (v23)
      {
        atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
      }

      v34[1] = v23;
      v35 = *(v5 + 16);
      LOBYTE(v23) = *(v5 + 24);
    }

    v36 = v23;
LABEL_30:
    v26 = *(a1 + 24);
    atomic_fetch_add(v26, 1u);
    v32 = v26;
    v27 = WTF::fastMalloc(0x10);
    *v27 = &unk_1F1101CC0;
    v28 = v32;
    v32 = 0;
    v33 = v27;
    *(v27 + 1) = v28;
    WebKit::NetworkNotificationManager::removePushSubscriptionsForOrigin(v24, v34, &v33);
    v29 = v33;
    v33 = 0;
    if (v29)
    {
      (*(*v29 + 8))(v29);
    }

    result = WTF::Ref<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>>::~Ref(&v32);
    if (!v36)
    {
      v31 = v34[1];
      v34[1] = 0;
      if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v31, v30);
      }

      result = v34[0];
      v34[0] = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v30);
      }
    }

    goto LABEL_39;
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_5::operator()(WTF::CompletionHandler<WTF::HashSet::SecurityOriginData,WebCore::RegistrableDomain<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &>,WTF::DefaultHash<WebCore><WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &>,WTF::HashTraits<WebCore>,(WTF::HashTableTraits)1> const&)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1101C98;
  WTF::Ref<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>>::~Ref((a1 + 1));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_5::operator()(WTF::CompletionHandler<WTF::HashSet::SecurityOriginData,WebCore::RegistrableDomain<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &>,WTF::DefaultHash<WebCore><WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &>,WTF::HashTraits<WebCore>,(WTF::HashTableTraits)1> const&)::{lambda(void)#1},void>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F1101C98;
  WTF::Ref<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>>::~Ref((a1 + 8));

  return WTF::fastFree(a1, v2);
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit14NetworkProcess49deleteAndRestrictWebsiteDataForRegistrableDomainsEN3PAL9SessionIDENS_9OptionSetINS2_15WebsiteDataTypeEEEONS2_50RegistrableDomainsToDeleteOrRestrictWebsiteDataForEONS_17CompletionHandlerIFvONS_7HashSetIN7WebCore17RegistrableDomainENS_11DefaultHashISE_EENS_10HashTraitsISE_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1EEEEEEEN3__5clERKNSC_INSD_18SecurityOriginDataENSF_ISR_EENSH_ISR_EESJ_LSK_1EEEEUlOT_E_vJjEED1Ev(void *a1)
{
  *a1 = &unk_1F1101CC0;
  WTF::Ref<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>>::~Ref((a1 + 1));
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit14NetworkProcess49deleteAndRestrictWebsiteDataForRegistrableDomainsEN3PAL9SessionIDENS_9OptionSetINS2_15WebsiteDataTypeEEEONS2_50RegistrableDomainsToDeleteOrRestrictWebsiteDataForEONS_17CompletionHandlerIFvONS_7HashSetIN7WebCore17RegistrableDomainENS_11DefaultHashISE_EENS_10HashTraitsISE_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1EEEEEEEN3__5clERKNSC_INSD_18SecurityOriginDataENSF_ISR_EENSH_ISR_EESJ_LSK_1EEEEUlOT_E_vJjEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F1101CC0;
  WTF::Ref<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>>::~Ref((a1 + 8));

  return WTF::fastFree(a1, v2);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_6,void,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1101CE8;
  WTF::Ref<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>>::~Ref((a1 + 1));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_6,void,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F1101CE8;
  WTF::Ref<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>>::~Ref((a1 + 8));

  return WTF::fastFree(a1, v2);
}

atomic_uint **WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_6,void,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::call(uint64_t a1, uint64_t *a2, const WTF::StringImpl *a3)
{
  result = WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin(a2, a2, a3);
  v15[0] = result;
  v15[1] = v7;
  if (*a2)
  {
    v8 = *a2 + 8 * *(*a2 - 4);
  }

  else
  {
    v8 = 0;
  }

  if (v8 != result)
  {
    do
    {
      v9 = *result;
      if (*result)
      {
        atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
      }

      v14 = v9;
      WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>((*(a1 + 8) + 16), &v14, v6, &v13);
      v12 = v14;
      v14 = 0;
      if (v12)
      {
        if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v12, v10);
        }
      }

      v15[0] += 8;
      WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(v15, v10, v11);
      result = v15[0];
    }

    while (v15[0] != v8);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_7,void,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1101D10;
  WTF::Ref<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>>::~Ref((a1 + 1));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_7,void,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F1101D10;
  WTF::Ref<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>>::~Ref((a1 + 8));

  return WTF::fastFree(a1, v2);
}

atomic_uint **WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_7,void,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::call(uint64_t a1, uint64_t *a2, const WTF::StringImpl *a3)
{
  result = WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin(a2, a2, a3);
  v15[0] = result;
  v15[1] = v7;
  if (*a2)
  {
    v8 = *a2 + 8 * *(*a2 - 4);
  }

  else
  {
    v8 = 0;
  }

  if (v8 != result)
  {
    do
    {
      v9 = *result;
      if (*result)
      {
        atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
      }

      v14 = v9;
      WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>((*(a1 + 8) + 16), &v14, v6, &v13);
      v12 = v14;
      v14 = 0;
      if (v12)
      {
        if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v12, v10);
        }
      }

      v15[0] += 8;
      WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(v15, v10, v11);
      result = v15[0];
    }

    while (v15[0] != v8);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_8,void,WTF::ShouldValidateKey const&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1101D38;
  WTF::Ref<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>>::~Ref((a1 + 1));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_8,void,WTF::ShouldValidateKey const&>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F1101D38;
  WTF::Ref<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>>::~Ref((a1 + 8));

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_8,void,WTF::ShouldValidateKey const&>::call(uint64_t a1, uint64_t *a2, const WTF::StringImpl *a3)
{
  result = WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin(a2, a2, a3);
  v7 = result;
  v13[0] = result;
  v13[1] = v8;
  if (*a2)
  {
    v9 = *a2 + 8 * *(*a2 - 4);
  }

  else
  {
    v9 = 0;
  }

  if (v9 != result)
  {
    do
    {
      WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>((*(a1 + 8) + 16), v7, v6, v12);
      v13[0] += 8;
      result = WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(v13, v10, v11);
      v7 = v13[0];
    }

    while (v13[0] != v9);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcessProxy::DeleteWebsiteDataInUIProcessForRegistrableDomains,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)>>(WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1101D60;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcessProxy::DeleteWebsiteDataInUIProcessForRegistrableDomains,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)>>(WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1101D60;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl **WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcessProxy::DeleteWebsiteDataInUIProcessForRegistrableDomains,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)>>(WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, WTF::StringImpl *a3)
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
      return IPC::Connection::cancelReply<Messages::NetworkProcessProxy::DeleteWebsiteDataInUIProcessForRegistrableDomains,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)>>((a1 + 8));
    }
  }

  else
  {
    v7 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::NetworkProcessProxy::DeleteWebsiteDataInUIProcessForRegistrableDomains,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)>>(v7);
  }

  return result;
}

WTF::StringImpl **IPC::Connection::cancelReply<Messages::NetworkProcessProxy::DeleteWebsiteDataInUIProcessForRegistrableDomains,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)>>(uint64_t *a1)
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

uint64_t WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::RegistrableDomain&>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *(a1 + 12);
  v5 = *a1;
  v6 = *v3;
  if (*v3)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  v7 = *(a1 + 12);
  *(v5 + 8 * v4) = v6;
  *(a1 + 12) = v7 + 1;
  return 1;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteCookiesForTesting(PAL::SessionID,WebCore::RegistrableDomain,BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1101D88;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteCookiesForTesting(PAL::SessionID,WebCore::RegistrableDomain,BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1101D88;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::deleteCookiesForTesting(PAL::SessionID,WebCore::RegistrableDomain,BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::registrableDomainsWithWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_0,void,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1101DB0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::registrableDomainsWithWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_0,void,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1101DB0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t *WebKit::NetworkProcess::registrableDomainsWithWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_0::operator()(WTF::RunLoop *a1, uint64_t *a2)
{
  WTF::RunLoop::mainSingleton(a1);
  v4 = *a1;
  *a1 = 0;
  v11 = v4;
  WTF::CrossThreadCopierBase<false,false,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::copy(a2, &v12);
  v5 = WTF::fastMalloc(0x18);
  v6 = v11;
  *v5 = &unk_1F1101DD8;
  v5[1] = v6;
  v7 = v12;
  v11 = 0;
  v12 = 0;
  v5[2] = v7;
  v13 = v5;
  WTF::RunLoop::dispatch();
  v9 = v13;
  v13 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  return WebKit::NetworkProcess::registrableDomainsWithWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_0::operator()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &)::{lambda(void)#1}::~(&v11, v8);
}

uint64_t *WebKit::NetworkProcess::registrableDomainsWithWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_0::operator()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &)::{lambda(void)#1}::~(uint64_t *a1, WTF::StringImpl *a2)
{
  v3 = a1[1];
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::registrableDomainsWithWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_0::operator()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &)::{lambda(void)#1},void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1101DD8;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::registrableDomainsWithWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_0::operator()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1101DD8;
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

uint64_t WebKit::NetworkProcess::registrableDomainsWithWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_0::operator()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &)::{lambda(void)#1}::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1, a1 + 1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

atomic_uint *WTF::ThreadSafeRefCounted<WebKit::NetworkProcess::registrableDomainsWithWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,(WTF::DestructionThread)0>::deref(atomic_uint *result)
{
  add = atomic_fetch_add(result, 0xFFFFFFFF);
  if (add == 1)
  {
    v5 = v1;
    atomic_store(add, result);
    v3 = WebKit::NetworkProcess::registrableDomainsWithWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator::~CallbackAggregator(result);

    return WTF::fastFree(v3, v4);
  }

  return result;
}

void *WebKit::NetworkProcess::registrableDomainsWithWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator::~CallbackAggregator(void *a1)
{
  WTF::RunLoop::mainSingleton(a1);
  v2 = a1[1];
  a1[1] = 0;
  v8 = v2;
  WebKit::WebsiteData::WebsiteData(v9, (a1 + 2));
  WTF::Function<void ()(void)>::Function<WebKit::NetworkProcess::registrableDomainsWithWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator::~CallbackAggregator()::{lambda(void)#1},void>(&v10, &v8);
  WTF::RunLoop::dispatch();
  v4 = v10;
  v10 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  WebKit::NetworkProcess::registrableDomainsWithWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator::~CallbackAggregator()::{lambda()#1}::~CallbackAggregator(&v8, v3);
  WebKit::WebsiteData::~WebsiteData((a1 + 2), v5);
  v6 = a1[1];
  a1[1] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  return a1;
}

void *WTF::Function<void ()(void)>::Function<WebKit::NetworkProcess::registrableDomainsWithWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator::~CallbackAggregator()::{lambda(void)#1},void>(void *a1, uint64_t *a2)
{
  v4 = WTF::fastMalloc(0x38);
  v5 = *a2;
  *a2 = 0;
  *v4 = &unk_1F1101E00;
  v4[1] = v5;
  v4[3] = 0;
  v4[2] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt((v4 + 2), a2 + 2);
  v4[4] = 0;
  v6 = a2[3];
  a2[3] = 0;
  v4[4] = v6;
  v4[5] = 0;
  v7 = a2[4];
  a2[4] = 0;
  v4[5] = v7;
  v4[6] = 0;
  v8 = a2[5];
  a2[5] = 0;
  v4[6] = v8;
  *a1 = v4;
  return a1;
}

uint64_t *WebKit::NetworkProcess::registrableDomainsWithWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator::~CallbackAggregator()::{lambda()#1}::~CallbackAggregator(uint64_t *a1, WTF::StringImpl *a2)
{
  v3 = a1[5];
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = a1[4];
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = a1[3];
  if (v5)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v5, a2);
  }

  WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 1), a2);
  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::registrableDomainsWithWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator::~CallbackAggregator()::{lambda(void)#1},void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1101E00;
  v3 = a1[6];
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = a1[5];
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = a1[4];
  if (v5)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v5, a2);
  }

  WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 2), a2);
  v6 = a1[1];
  a1[1] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::registrableDomainsWithWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator::~CallbackAggregator()::{lambda(void)#1},void>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1101E00;
  v3 = *(a1 + 6);
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(a1 + 5);
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *(a1 + 4);
  if (v5)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v5, a2);
  }

  WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 16, a2);
  v7 = *(a1 + 1);
  *(a1 + 1) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  return WTF::fastFree(a1, v6);
}

WTF::StringImpl **WebKit::NetworkProcess::registrableDomainsWithWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator::~CallbackAggregator()::{lambda()#1}::operator()(uint64_t *a1)
{
  v33 = 0;
  v2 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(a1 + 3);
  v3 = v2;
  v5 = v4;
  v6 = a1[3];
  if (v6)
  {
    v7 = (v6 + 8 * *(v6 - 4));
  }

  else
  {
    v7 = 0;
  }

  if (v7 != v2)
  {
    do
    {
      WebCore::RegistrableDomain::uncheckedCreateFromHost(v3, &v32);
      WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v33, &v32, v18, v31);
      v20 = v32;
      v32 = 0;
      if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v19);
      }

      do
      {
        v3 = (v3 + 8);
      }

      while (v3 != v5 && (*v3 + 1) <= 1);
    }

    while (v3 != v7);
  }

  v8 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(a1 + 4);
  v9 = v8;
  v11 = v10;
  v12 = a1[4];
  if (v12)
  {
    v13 = (v12 + 8 * *(v12 - 4));
  }

  else
  {
    v13 = 0;
  }

  if (v13 != v8)
  {
    do
    {
      WebCore::RegistrableDomain::uncheckedCreateFromHost(v9, &v32);
      WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v33, &v32, v21, v31);
      v23 = v32;
      v32 = 0;
      if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v22);
      }

      do
      {
        v9 = (v9 + 8);
      }

      while (v9 != v11 && (*v9 + 1) <= 1);
    }

    while (v9 != v13);
  }

  v14 = *(a1 + 5);
  if (v14)
  {
    v24 = 48 * v14;
    v25 = (a1[1] + 24);
    v26 = MEMORY[0x1E696EBA8];
    do
    {
      if (*v25)
      {
        v27 = v26;
        if (*v25 != 1)
        {
          mpark::throw_bad_variant_access(v26);
        }
      }

      else
      {
        v27 = (v25 - 16);
      }

      WebCore::RegistrableDomain::uncheckedCreateFromHost(v27, &v32);
      WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v33, &v32, v28, v31);
      v30 = v32;
      v32 = 0;
      if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v30, v29);
      }

      v25 += 48;
      v24 -= 48;
    }

    while (v24);
  }

  v15 = *a1;
  *a1 = 0;
  (*(*v15 + 16))(v15, &v33);
  (*(*v15 + 8))(v15);
  result = v33;
  if (v33)
  {
    return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v33, v16);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::registrableDomainsWithWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_1,void,WTF::HashSet<WebCore::SecurityOriginData,WTF::DefaultHash<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&>,WTF::HashTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1101E28;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::NetworkProcess::registrableDomainsWithWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::registrableDomainsWithWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_1,void,WTF::HashSet<WebCore::SecurityOriginData,WTF::DefaultHash<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&>,WTF::HashTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1101E28;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebKit::NetworkProcess::registrableDomainsWithWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void WebKit::NetworkProcess::registrableDomainsWithWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_1::operator()(uint64_t *a1, uint64_t *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::begin(a2);
  v5 = v4;
  v7 = v6;
  if (*a2)
  {
    v8 = *a2 + 32 * *(*a2 - 4);
  }

  else
  {
    v8 = 0;
  }

  if (v8 != v4)
  {
    while (1)
    {
      v9 = *a1;
      mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(&v18, v5);
      LOBYTE(v21) = 0;
      v23 = -1;
      v11 = v20;
      if (!v20)
      {
        break;
      }

      if (v20 != 255)
      {
        v21 = v18;
LABEL_12:
        v23 = v11;
      }

      LODWORD(v24) = 0x4000;
      *(&v24 + 1) = 0;
      v14 = *(v9 + 28);
      if (v14 == *(v9 + 24))
      {
        WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebsiteData::Entry>(v9 + 16, &v21);
        goto LABEL_19;
      }

      v15 = *(v9 + 16) + 48 * v14;
      *v15 = 0;
      *(v15 + 24) = -1;
      if (v23)
      {
        if (v23 == 255)
        {
          goto LABEL_18;
        }

        *v15 = v21;
      }

      else
      {
        v16 = v21;
        *&v21 = 0;
        *v15 = v16;
        v17 = *(&v21 + 1);
        *(&v21 + 1) = 0;
        *(v15 + 8) = v17;
        *(v15 + 16) = v22;
      }

      *(v15 + 24) = v23;
LABEL_18:
      *(v15 + 32) = v24;
      ++*(v9 + 28);
LABEL_19:
      WebKit::WebsiteData::Entry::~Entry(&v21, v10);
      WebCore::SecurityOriginData::~SecurityOriginData(&v18);
      do
      {
        v5 = (v5 + 32);
      }

      while (v5 != v7 && WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v5));
      if (v5 == v8)
      {
        return;
      }
    }

    v12 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
    }

    *&v21 = v12;
    v13 = *(&v18 + 1);
    if (*(&v18 + 1))
    {
      atomic_fetch_add_explicit(*(&v18 + 1), 2u, memory_order_relaxed);
    }

    *(&v21 + 1) = v13;
    v22 = v19;
    v11 = v20;
    goto LABEL_12;
  }
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::registrableDomainsWithWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_2,void,WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1101E50;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::NetworkProcess::registrableDomainsWithWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::registrableDomainsWithWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_2,void,WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1101E50;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebKit::NetworkProcess::registrableDomainsWithWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::registrableDomainsWithWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_2,void,WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::call(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v15 = *a2;
  v3 = *(a2 + 2);
  v4 = *(a2 + 3);
  *a2 = 0;
  a2[1] = 0;
  v16 = v3;
  v17 = v4;
  if (!v4)
  {
    return WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v15, a2);
  }

  v5 = *(a1 + 8);
  v7 = *(v5 + 24);
  v6 = *(v5 + 28);
  v8 = v6 + v4;
  if (v6 + v4 <= v7)
  {
    goto LABEL_11;
  }

  v9 = v7 + (v7 >> 1);
  if (v9 <= v7 + 1)
  {
    v9 = v7 + 1;
  }

  if (v9 <= v8)
  {
    v9 = v8;
  }

  v10 = v9 <= 0x10 ? 16 : v9;
  result = WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(v5 + 16, v10);
  v6 = *(v5 + 28);
  if (v8 >= v6)
  {
LABEL_11:
    v12 = (*(v5 + 16) + 48 * v6);
    v13 = 48 * v4;
    do
    {
      v14 = mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v12, v2);
      *(v14 + 2) = *(v2 + 32);
      v12 = v14 + 48;
      v2 += 48;
      v13 -= 48;
    }

    while (v13);
    *(v5 + 28) = v8;
    return WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v15, a2);
  }

  __break(0xC471u);
  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::registrableDomainsWithWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_3,void,WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1101E78;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::NetworkProcess::registrableDomainsWithWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::registrableDomainsWithWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_3,void,WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1101E78;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebKit::NetworkProcess::registrableDomainsWithWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::registrableDomainsWithWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_3,void,WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::call(uint64_t a1, void *a2)
{
  v5[0] = *a2;
  v2 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v5[1] = v2;
  WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendVector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>(*(a1 + 8) + 16, v5);
  return WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, v3);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::DownloadProxy::DecideDestinationWithSuggestedFilename,WebKit::NetworkProcess::findPendingDownloadLocation(WebKit::NetworkDataTask &,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&,WebCore::ResourceResponse const&)::$_0>(WebKit::NetworkProcess::findPendingDownloadLocation(WebKit::NetworkDataTask &,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&,WebCore::ResourceResponse const&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::NetworkProcess::findPendingDownloadLocation(WebKit::NetworkDataTask &,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&,WebCore::ResourceResponse const&)::$_0,IPC::Decoder)#1},void,WebKit::NetworkProcess::findPendingDownloadLocation(WebKit::NetworkDataTask &,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&,WebCore::ResourceResponse const&)::$_0,IPC::Decoder>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1101EA0;
  v2 = a1[4];
  a1[4] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v2 + 8));
  }

  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add(v4 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 36);
    (*(*v4 + 24))(v4);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::DownloadProxy::DecideDestinationWithSuggestedFilename,WebKit::NetworkProcess::findPendingDownloadLocation(WebKit::NetworkDataTask &,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&,WebCore::ResourceResponse const&)::$_0>(WebKit::NetworkProcess::findPendingDownloadLocation(WebKit::NetworkDataTask &,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&,WebCore::ResourceResponse const&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::NetworkProcess::findPendingDownloadLocation(WebKit::NetworkDataTask &,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&,WebCore::ResourceResponse const&)::$_0,IPC::Decoder)#1},void,WebKit::NetworkProcess::findPendingDownloadLocation(WebKit::NetworkDataTask &,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&,WebCore::ResourceResponse const&)::$_0,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1101EA0;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v3 + 8));
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5 && atomic_fetch_add(v5 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5 + 36);
    (*(*v5 + 24))(v5);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::DownloadProxy::DecideDestinationWithSuggestedFilename,WebKit::NetworkProcess::findPendingDownloadLocation(WebKit::NetworkDataTask &,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&,WebCore::ResourceResponse const&)::$_0>(WebKit::NetworkProcess::findPendingDownloadLocation(WebKit::NetworkDataTask &,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&,WebCore::ResourceResponse const&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::NetworkProcess::findPendingDownloadLocation(WebKit::NetworkDataTask &,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&,WebCore::ResourceResponse const&)::$_0,IPC::Decoder)#1},void,WebKit::NetworkProcess::findPendingDownloadLocation(WebKit::NetworkDataTask &,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&,WebCore::ResourceResponse const&)::$_0,IPC::Decoder>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (!a3 || !*a3)
  {
    v11 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::DownloadProxy::DecideDestinationWithSuggestedFilename,WebKit::NetworkProcess::findPendingDownloadLocation(WebKit::NetworkDataTask &,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&,WebCore::ResourceResponse const&)::$_0>(v11);
  }

  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v55);
  if ((v56 & 1) == 0)
  {
    v29 = *a3;
    v30 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v31 = *(a3 + 3);
    if (!v31 || !v30 || ((*(*v31 + 16))(v31, v29), (v56 & 1) == 0))
    {
LABEL_55:
      v32 = *a3;
      v33 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v34 = *(a3 + 3);
      if (v34 && v33)
      {
        (*(*v34 + 16))(v34, v32);
      }

      return IPC::Connection::cancelReply<Messages::DownloadProxy::DecideDestinationWithSuggestedFilename,WebKit::NetworkProcess::findPendingDownloadLocation(WebKit::NetworkDataTask &,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&,WebCore::ResourceResponse const&)::$_0>((a1 + 8));
    }
  }

  IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::decode(a3, &v57);
  if (v58 & 1) != 0 || (v7 = *a3, v23 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v24 = *(a3 + 3)) != 0) && v23 && ((*(*v24 + 16))(v24, v7), (v58))
  {
    v5 = *(a3 + 1);
    v6 = *(a3 + 2);
    v7 = *a3;
    if (v5 <= &v6[-*a3])
    {
      *a3 = 0;
      *(a3 + 1) = 0;
      v39 = *(a3 + 3);
      if (v39)
      {
        if (v5)
        {
          (*(*v39 + 16))(v39);
          v5 = *(a3 + 1);
        }
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      *(a3 + 2) = v6 + 1;
      if (v6)
      {
        v8 = *v6;
        if (v8 < 2)
        {
          v9 = IPC::Decoder::decode<WebKit::UseDownloadPlaceholder>(a3);
          if ((v9 & 0x100) != 0)
          {
            v13 = v9;
            IPC::ArgumentCoder<WTF::URL,void>::decode(a3, &v59);
            if ((v62 & 1) == 0)
            {
              goto LABEL_50;
            }

            while (1)
            {
              IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::decode(a3, &v63);
              if ((v64 & 1) == 0)
              {
                v7 = *a3;
                v25 = *(a3 + 1);
                *a3 = 0;
                *(a3 + 1) = 0;
                v26 = *(a3 + 3);
                if (!v26 || !v25 || ((*(*v26 + 16))(v26, v7), (v64 & 1) == 0))
                {
                  v10 = 0;
                  LOBYTE(v44) = 0;
                  v54 = 0;
                  goto LABEL_26;
                }
              }

              IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, &v65);
              if ((v66 & 1) == 0)
              {
                v7 = *a3;
                v35 = *(a3 + 1);
                *a3 = 0;
                *(a3 + 1) = 0;
                v36 = *(a3 + 3);
                if (!v36)
                {
                  break;
                }

                if (!v35)
                {
                  break;
                }

                (*(*v36 + 16))(v36, v7);
                if ((v66 & 1) == 0)
                {
                  break;
                }
              }

              IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, &v67);
              if ((v68 & 1) == 0)
              {
                v7 = *a3;
                v37 = *(a3 + 1);
                *a3 = 0;
                *(a3 + 1) = 0;
                v38 = *(a3 + 3);
                if (!v38 || !v37 || ((*(*v38 + 16))(v38, v7), (v68 & 1) == 0))
                {
                  v10 = 0;
                  LOBYTE(v44) = 0;
                  goto LABEL_23;
                }
              }

              if (v56 & 1) != 0 && (v58 & 1) != 0 && (v62 & 1) != 0 && (v64 & 1) != 0 && (v66)
              {
                v14 = v55;
                v55 = 0;
                v15 = v57;
                v57 = 0;
                v44 = v14;
                v45 = v15;
                v46 = v8;
                v47 = v13;
                v16 = v59;
                v59 = 0;
                v48 = v16;
                v49 = v60;
                v50 = v61;
                LODWORD(v60) = v60 & 0xFFFFFFFE;
                v17 = v63;
                v63 = 0;
                v51 = v17;
                v52 = v65;
                v10 = 1;
                v53 = v67;
LABEL_23:
                v54 = v10;
                goto LABEL_24;
              }

              __break(1u);
LABEL_50:
              v7 = *a3;
              v27 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              v28 = *(a3 + 3);
              if (v28)
              {
                if (v27)
                {
                  (*(*v28 + 16))(v28, v7);
                  if (v62)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_9;
            }

            v10 = 0;
            LOBYTE(v44) = 0;
            v54 = 0;
LABEL_24:
            if (v64)
            {
              WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v63);
            }

LABEL_26:
            if (v62)
            {
              v18 = v59;
              v59 = 0;
              if (v18)
              {
                if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v18, v7);
                }
              }
            }

            goto LABEL_30;
          }

LABEL_9:
          v10 = 0;
          LOBYTE(v44) = 0;
          v54 = 0;
LABEL_30:
          if (v58)
          {
            WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v57);
          }

          goto LABEL_32;
        }

        goto LABEL_74;
      }
    }

    *a3 = 0;
    *(a3 + 1) = 0;
    v40 = *(a3 + 3);
    if (v40)
    {
      if (v5)
      {
        (*(*v40 + 16))(v40);
        v7 = *a3;
        v5 = *(a3 + 1);
        goto LABEL_74;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = 0;
LABEL_74:
    *a3 = 0;
    *(a3 + 1) = 0;
    v41 = *(a3 + 3);
    if (v41)
    {
      if (v5)
      {
        (*(*v41 + 16))(v41, v7);
        v42 = *(a3 + 3);
        v7 = *a3;
        v43 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        if (v42)
        {
          if (v43)
          {
            (*(*v42 + 16))(v42, v7);
          }
        }
      }
    }

    goto LABEL_9;
  }

  v10 = 0;
  LOBYTE(v44) = 0;
  v54 = 0;
LABEL_32:
  if (v56)
  {
    v19 = v55;
    v55 = 0;
    if (v19)
    {
      if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v7);
      }
    }
  }

  if ((v10 & 1) == 0)
  {
    goto LABEL_55;
  }

  result = std::apply[abi:sn200100]<WebKit::NetworkProcess::findPendingDownloadLocation(WebKit::NetworkDataTask &,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&,WebCore::ResourceResponse const&)::$_0,std::tuple<WTF::String,WebKit::SandboxExtensionHandle,WebKit::AllowOverwrite,WebKit::UseDownloadPlaceholder,WTF::URL,WTF::String,std::span<unsigned char const,18446744073709551615ul>,unsigned char const>>((a1 + 8), &v44);
  if (v54)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v51);
    v21 = v48;
    v48 = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v20);
    }

    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v45);
    result = v44;
    v44 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v22);
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::Connection::cancelReply<Messages::DownloadProxy::DecideDestinationWithSuggestedFilename,WebKit::NetworkProcess::findPendingDownloadLocation(WebKit::NetworkDataTask &,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&,WebCore::ResourceResponse const&)::$_0>(uint64_t *a1)
{
  v18 = 0;
  WTF::URL::invalidate(&v18);
  v21 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v2 = v18;
  v17 = 0;
  v18 = 0;
  v12 = v2;
  v13 = v19;
  v14 = v20;
  LODWORD(v19) = v19 & 0xFFFFFFFE;
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v17);
  v4 = v18;
  v18 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v3);
  }

  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v21);
  std::apply[abi:sn200100]<WebKit::NetworkProcess::findPendingDownloadLocation(WebKit::NetworkDataTask &,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&,WebCore::ResourceResponse const&)::$_0,std::tuple<WTF::String,WebKit::SandboxExtensionHandle,WebKit::AllowOverwrite,WebKit::UseDownloadPlaceholder,WTF::URL,WTF::String,std::span<unsigned char const,18446744073709551615ul>,unsigned char const>>(a1, &v9);
  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v15);
  v6 = v12;
  v12 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v10);
  result = v9;
  v9 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v7);
    }
  }

  return result;
}

uint64_t std::apply[abi:sn200100]<WebKit::NetworkProcess::findPendingDownloadLocation(WebKit::NetworkDataTask &,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&,WebCore::ResourceResponse const&)::$_0,std::tuple<WTF::String,WebKit::SandboxExtensionHandle,WebKit::AllowOverwrite,WebKit::UseDownloadPlaceholder,WTF::URL,WTF::String,std::span<unsigned char const,18446744073709551615ul>,unsigned char const>>(uint64_t *a1, uint64_t a2)
{
  v4 = a1 + 3;
  v3 = a1[3];
  v5 = v3[5];
  if (!v5)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (*a2 && *(*a2 + 4))
  {
    v7 = *(a2 + 17);
    v8 = *(a2 + 72);
    v9 = *(a2 + 80);
    v10 = *(a2 + 88);
    v11 = *(a2 + 96);
    v12 = *a1;
    (*(*v3 + 48))(v3, a2, a2 + 8, *(a2 + 16));
    v27 = 0;
    WTF::URL::invalidate(&v27);
    if ((v7 & 1) == 0)
    {
      v14 = *(a2 + 24);
      if (v14)
      {
        if (v14[1])
        {
          atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
          v15 = v27;
          v27 = v14;
          if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v15, v13);
          }

          v16 = *(a2 + 48);
          v28 = *(a2 + 32);
          v29 = v16;
LABEL_17:
          v22 = *(a2 + 24);
          if (!v22 || !*(v22 + 4))
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }
      }
    }

    WTF::URL::fileURLWithFileSystemPath();
    WTF::URL::operator=(&v27, v26);
    v21 = v26[0];
    v26[0] = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v20);
      if ((v7 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else if ((v7 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_19:
    WebKit::DownloadManager::publishDownloadProgress(v12 + 184, v5, &v27, v8, v9, v7, v10, v11);
LABEL_20:
    v23 = a1[2];
    a1[2] = 0;
    (*(*v23 + 16))(v23, 1);
    (*(*v23 + 8))(v23);
    if ((*(*a1[3] + 40))(a1[3]) == 2 || (*(**v4 + 40))() == 3)
    {
LABEL_26:
      result = v27;
      v27 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v24);
        }
      }

      return result;
    }

    ++*(v12 + 184);
    v26[0] = v5;
    if (!WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((v12 + 216), v26))
    {
      v30 = v5;
      WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::Ref<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>>((v12 + 208), &v30, v4, v26);
    }

    v25 = *(v12 + 184);
    if (v25)
    {
      *(v12 + 184) = v25 - 1;
      goto LABEL_26;
    }

LABEL_33:
    result = 290;
    __break(0xC471u);
    return result;
  }

  v17 = a1[2];
  a1[2] = 0;
  (*(*v17 + 16))(v17, 2);
  v18 = *(*v17 + 8);

  return v18(v17);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::dataTaskWithRequest(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,PAL::SessionID,WebCore::ResourceRequest &&,std::optional<WebCore::SecurityOriginData> const&,IPC::FormDataReference &&,WTF::CompletionHandler<void ()(std::__1<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)> &&)::$_0,void,WTF::CompletionHandler>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1101EC8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::dataTaskWithRequest(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,PAL::SessionID,WebCore::ResourceRequest &&,std::optional<WebCore::SecurityOriginData> const&,IPC::FormDataReference &&,WTF::CompletionHandler<void ()(std::__1<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)> &&)::$_0,void,WTF::CompletionHandler>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1101EC8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::dataTaskWithRequest(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,PAL::SessionID,WebCore::ResourceRequest &&,std::optional<WebCore::SecurityOriginData> const&,IPC::FormDataReference &&,WTF::CompletionHandler<void ()(std::__1<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)> &&)::$_0,void,WTF::CompletionHandler>::call(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v2 + 16))(v2, a2, 1);
  v3 = *(*v2 + 8);

  return v3(v2);
}

_DWORD *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::setCacheModel(WebKit::CacheModel)::$_0,void,WebKit::NetworkSession &>::call(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 624);
  if (result)
  {
    v3 = result + 2;
    ++result[2];
    WebKit::NetworkCache::Cache::updateCapacity(result);

    return WTF::RefCounted<WebKit::NetworkCache::Cache>::deref(v3, v4);
  }

  return result;
}

uint64_t Messages::NetworkProcessProxy::LogDiagnosticMessage::encode<IPC::Encoder>(uint64_t a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, **a1);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a2, *(a1 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a2, *(a1 + 16));
  v5 = *(a1 + 24);
  return IPC::Encoder::operator<<<BOOL>(a2, &v5);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::prepareToSuspend(BOOL,WTF::MonotonicTime,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1101F18;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::prepareToSuspend(BOOL,WTF::MonotonicTime,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1101F18;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::prepareToSuspend(BOOL,WTF::MonotonicTime,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::call(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED641030;
  if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v3 = *(v3 + 8);
    }

    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - NetworkProcess::prepareToSuspend() Process is ready to suspend", &v6, 0xCu);
  }

  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v4 + 16))(v4);
  return (*(*v4 + 8))(v4);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::prepareToSuspend(BOOL,WTF::MonotonicTime,WTF::CompletionHandler<void ()(void)> &&)::$_1,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1101F40;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::prepareToSuspend(BOOL,WTF::MonotonicTime,WTF::CompletionHandler<void ()(void)> &&)::$_1,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1101F40;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::prepareToSuspend(BOOL,WTF::MonotonicTime,WTF::CompletionHandler<void ()(void)> &&)::$_2,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1101F68;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::prepareToSuspend(BOOL,WTF::MonotonicTime,WTF::CompletionHandler<void ()(void)> &&)::$_2,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1101F68;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::prepareToSuspend(BOOL,WTF::MonotonicTime,WTF::CompletionHandler<void ()(void)> &&)::$_3,void,WebKit::NetworkSession &>::call(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = *(a1 + 8);
  v6 = **(a1 + 16);
  if (v6)
  {
    atomic_fetch_add(v6, 1u);
  }

  v7 = WTF::fastMalloc(0x10);
  *v7 = &unk_1F1101FB8;
  v7[1] = v6;
  v13 = v7;
  WebKit::NetworkProcess::platformFlushCookies(v5, v4, &v13);
  v8 = v13;
  v13 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(a2 + 1048);
  v10 = **(a1 + 16);
  if (v10)
  {
    atomic_fetch_add(v10, 1u);
  }

  v11 = WTF::fastMalloc(0x10);
  *v11 = &unk_1F1101FE0;
  v11[1] = v10;
  v13 = v11;
  WebKit::NetworkStorageManager::suspend(v9, &v13);
  result = v13;
  v13 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit14NetworkProcess16prepareToSuspendEbNS_13MonotonicTimeEONS_17CompletionHandlerIFvvEEEENK3__3clINS2_14NetworkSessionEEEDaRT_EUlvE_vJEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1101FB8;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit14NetworkProcess16prepareToSuspendEbNS_13MonotonicTimeEONS_17CompletionHandlerIFvvEEEENK3__3clINS2_14NetworkSessionEEEDaRT_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1101FB8;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit14NetworkProcess16prepareToSuspendEbNS_13MonotonicTimeEONS_17CompletionHandlerIFvvEEEENK3__3clINS2_14NetworkSessionEEEDaRT_EUlvE0_vJEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1101FE0;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit14NetworkProcess16prepareToSuspendEbNS_13MonotonicTimeEONS_17CompletionHandlerIFvvEEEENK3__3clINS2_14NetworkSessionEEEDaRT_EUlvE0_vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1101FE0;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::HashTable<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::FastMalloc>::begin(void *result)
{
  if (!result)
  {
    return 0;
  }

  v1 = *(result - 1);
  v2 = &result[v1];
  if (!*(result - 3))
  {
    return &result[v1];
  }

  if (v1)
  {
    v3 = 8 * v1;
    while ((*result + 1) <= 1)
    {
      ++result;
      v3 -= 8;
      if (!v3)
      {
        return v2;
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::prepareToSuspend(BOOL,WTF::MonotonicTime,WTF::CompletionHandler<void ()(void)> &&)::$_4,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1102008;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::prepareToSuspend(BOOL,WTF::MonotonicTime,WTF::CompletionHandler<void ()(void)> &&)::$_4,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1102008;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::syncLocalStorage(WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::NetworkSession &>::call(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 1048);
  v3 = **(a1 + 8);
  atomic_fetch_add(v3, 1u);
  v4 = WTF::fastMalloc(0x10);
  *v4 = &unk_1F1102080;
  v4[1] = v3;
  v7 = v4;
  WebKit::NetworkStorageManager::syncLocalStorage(v2, &v7);
  result = v7;
  if (v7)
  {
    v6 = *(*v7 + 8);

    return v6();
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit14NetworkProcess16syncLocalStorageEONS_17CompletionHandlerIFvvEEEENK3__0clINS2_14NetworkSessionEEEDaRT_EUlvE_vJEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1102080;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit14NetworkProcess16syncLocalStorageEONS_17CompletionHandlerIFvvEEEENK3__0clINS2_14NetworkSessionEEEDaRT_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1102080;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::renameOriginInWebsiteData(PAL::SessionID,WebCore::SecurityOriginData &&,WebCore::SecurityOriginData &,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11020A8;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::renameOriginInWebsiteData(PAL::SessionID,WebCore::SecurityOriginData &&,WebCore::SecurityOriginData &,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11020A8;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 216 * v3;
    do
    {
      WebKit::WebPushMessage::~WebPushMessage(v4, a2);
      v4 = (v6 + 216);
      v5 -= 216;
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

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::processPushMessage(PAL::SessionID,WebKit::WebPushMessage &&,WebCore::PushPermissionState,BOOL,WTF::CompletionHandler<void ()(BOOL,std::optional<WebKit::WebPushMessage &&::NotificationPayload> &&)> &&)::$_0,void,unsigned int>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11020D0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::processPushMessage(PAL::SessionID,WebKit::WebPushMessage &&,WebCore::PushPermissionState,BOOL,WTF::CompletionHandler<void ()(BOOL,std::optional<WebKit::WebPushMessage &&::NotificationPayload> &&)> &&)::$_0,void,unsigned int>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11020D0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::processPushMessage(PAL::SessionID,WebKit::WebPushMessage &&,WebCore::PushPermissionState,BOOL,WTF::CompletionHandler<void ()(BOOL,std::optional<WebKit::WebPushMessage &&::NotificationPayload> &&)> &&)::$_0,void,unsigned int>::call(uint64_t a1)
{
  LOBYTE(v10) = 0;
  v18 = 0;
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1, 0, &v10);
  result = (*(*v1 + 8))(v1);
  if (v18 == 1)
  {
    if (v17 == 1)
    {
      v4 = v16;
      v16 = 0;
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, v3);
      }

      v5 = v15;
      v15 = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v3);
      }

      v6 = v14;
      v14 = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v3);
      }

      v7 = v13;
      v13 = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v3);
      }

      v8 = v12;
      v12 = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v3);
      }
    }

    v9 = v11;
    v11 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v3);
    }

    result = v10;
    v10 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v3);
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::processPushMessage(PAL::SessionID,WebKit::WebPushMessage &&,WebCore::PushPermissionState,BOOL,WTF::CompletionHandler<void ()(BOOL,std::optional<WebKit::WebPushMessage &&::NotificationPayload> &&)> &&)::$_1,void,BOOL,std::optional<WebKit::WebPushMessage &&::NotificationPayload>>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11020F8;
  WebKit::NetworkProcess::processPushMessage(PAL::SessionID,WebKit::WebPushMessage &&,WebCore::PushPermissionState,BOOL,WTF::CompletionHandler<void ()(BOOL,std::optional<WebKit::WebPushMessage &&::NotificationPayload> &&)> &&)::$_1::~$_1((a1 + 1), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::processPushMessage(PAL::SessionID,WebKit::WebPushMessage &&,WebCore::PushPermissionState,BOOL,WTF::CompletionHandler<void ()(BOOL,std::optional<WebKit::WebPushMessage &&::NotificationPayload> &&)> &&)::$_1,void,BOOL,std::optional<WebKit::WebPushMessage &&::NotificationPayload>>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11020F8;
  WebKit::NetworkProcess::processPushMessage(PAL::SessionID,WebKit::WebPushMessage &&,WebCore::PushPermissionState,BOOL,WTF::CompletionHandler<void ()(BOOL,std::optional<WebKit::WebPushMessage &&::NotificationPayload> &&)> &&)::$_1::~$_1(a1 + 8, a2);

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::processPushMessage(PAL::SessionID,WebKit::WebPushMessage &&,WebCore::PushPermissionState,BOOL,WTF::CompletionHandler<void ()(BOOL,std::optional<WebKit::WebPushMessage &&::NotificationPayload> &&)> &&)::$_1,void,BOOL,std::optional<WebKit::WebPushMessage &&::NotificationPayload>>::call(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 81) & 1) != 0 || (*(a1 + 80) & 1) != 0 || (a2 & 1) != 0 || (v8 = *(a1 + 8), v15 = *(a1 + 24), (v9 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v8 + 240), &v15)) == 0))
  {
    v6 = *(a1 + 72);
    *(a1 + 72) = 0;
    (*(*v6 + 16))(v6, a2, a3);
    return (*(*v6 + 8))(v6);
  }

  else
  {
    v10 = v9;
    ++*(v9 + 16);
    v11 = *(v9 + 1080);
    v14 = *(a1 + 64);
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    v12 = WTF::fastMalloc(0x20);
    *v12 = &unk_1F1102120;
    *(v12 + 8) = v14;
    *(v12 + 24) = a2;
    v15 = v12;
    WebKit::NetworkNotificationManager::incrementSilentPushCount(v11, a1 + 32, &v15);
    result = v15;
    v15 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    v13 = *(v10 + 16);
    if (v13)
    {
      *(v10 + 16) = v13 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::processPushMessage(PAL::SessionID,WebKit::WebPushMessage &&,WebCore::PushPermissionState,BOOL,WTF::CompletionHandler<void ()(BOOL,std::optional<WebKit::WebPushMessage &&::NotificationPayload> &&)> &&)::$_1::operator()(BOOL,std::optional<WebKit::WebPushMessage &&::NotificationPayload>)::{lambda(unsigned int)#1},void,unsigned int>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1102120;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::processPushMessage(PAL::SessionID,WebKit::WebPushMessage &&,WebCore::PushPermissionState,BOOL,WTF::CompletionHandler<void ()(BOOL,std::optional<WebKit::WebPushMessage &&::NotificationPayload> &&)> &&)::$_1::operator()(BOOL,std::optional<WebKit::WebPushMessage &&::NotificationPayload>)::{lambda(unsigned int)#1},void,unsigned int>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1102120;
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

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::processPushMessage(PAL::SessionID,WebKit::WebPushMessage &&,WebCore::PushPermissionState,BOOL,WTF::CompletionHandler<void ()(BOOL,std::optional<WebKit::WebPushMessage &&::NotificationPayload> &&)> &&)::$_1::operator()(BOOL,std::optional<WebKit::WebPushMessage &&::NotificationPayload>)::{lambda(unsigned int)#1},void,unsigned int>::call(uint64_t a1, int a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED6410A8;
  if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_ERROR))
  {
    WTF::String::utf8();
    v15 = v17 ? v17 + 16 : 0;
    *buf = 136643075;
    *&buf[4] = v15;
    v19 = 1024;
    v20 = a2;
    _os_log_error_impl(&dword_19D52D000, v4, OS_LOG_TYPE_ERROR, "Push message for scope %{sensitive}s not handled properly; new silent push count: %u", buf, 0x12u);
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
  }

  v5 = *(a1 + 24);
  buf[0] = 0;
  v28 = 0;
  v6 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v6 + 16))(v6, v5, buf);
  result = (*(*v6 + 8))(v6);
  if (v28 == 1)
  {
    if (v27 == 1)
    {
      v9 = v26;
      v26 = 0;
      if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v8);
      }

      v10 = v25;
      v25 = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v8);
      }

      v11 = v24;
      v24 = 0;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v8);
      }

      v12 = v23;
      v23 = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v8);
      }

      v13 = v22;
      v22 = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v8);
      }
    }

    v14 = v21;
    v21 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v8);
    }

    result = *buf;
    *buf = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v8);
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::hasPushSubscriptionForTesting(PAL::SessionID,WTF::URL &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,std::ExceptionData> &&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1102148;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::hasPushSubscriptionForTesting(PAL::SessionID,WTF::URL &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,std::ExceptionData> &&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1102148;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::hasPushSubscriptionForTesting(PAL::SessionID,WTF::URL &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,std::ExceptionData> &&>::call(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 88) == 0;
  v3 = *(a2 + 80);
  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v4 + 16))(v4, v2 & v3);
  v5 = *(*v4 + 8);

  return v5(v4);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::simulatePrivateClickMeasurementSessionRestart(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1102170;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::simulatePrivateClickMeasurementSessionRestart(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1102170;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::simulatePrivateClickMeasurementSessionRestart(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::call(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      (*(**(v3 + 160) + 128))(*(v3 + 160));
    }
  }

  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v4 + 16))(v4);
  v5 = *(*v4 + 8);

  return v5(v4);
}

uint64_t WTF::VectorCopier<false,WebCore::UserContentURLPattern>::uninitializedCopy<WebCore::UserContentURLPattern>(uint64_t result, uint64_t a2, uint64_t a3)
{
  for (; result != a2; result += 32)
  {
    v3 = *result;
    if (*result)
    {
      atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    }

    *a3 = v3;
    v4 = *(result + 8);
    if (v4)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    }

    *(a3 + 8) = v4;
    v5 = *(result + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    }

    *(a3 + 16) = v5;
    *(a3 + 24) = *(result + 24);
    a3 += 32;
  }

  return result;
}

uint64_t WTF::CompactMapper<WebKit::NetworkProcess::setCORSDisablingPatterns(WebKit::NetworkConnectionToWebProcess &,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,void>::compactMap(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3)
  {
    v8 = 8 * a3;
    do
    {
      WebKit::NetworkProcess::setCORSDisablingPatterns(WebKit::NetworkConnectionToWebProcess &,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0::operator()<WTF::String>(&v18, a4);
      if (v21 == 1)
      {
        v10 = v18;
        v11 = v19;
        v18 = 0;
        v19 = 0uLL;
        v16 = v11;
        v17 = v20;
        v12 = *a1 + 32 * *(a1 + 12);
        v15 = 0;
        *v12 = v10;
        v13 = v16;
        *&v16 = 0;
        *(v12 + 8) = v13;
        v14 = *(&v16 + 1);
        *(&v16 + 1) = 0;
        *(v12 + 16) = v14;
        *(v12 + 24) = v17;
        ++*(a1 + 12);
        WebCore::UserContentURLPattern::~UserContentURLPattern(&v15, v9);
      }

      std::optional<WebCore::UserContentURLPattern>::~optional(&v18, v9);
      a2 += 8;
      v8 -= 8;
    }

    while (v8);
  }

  return WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(a1, *(a1 + 12));
}

WTF::StringImpl *WebKit::NetworkProcess::setCORSDisablingPatterns(WebKit::NetworkConnectionToWebProcess &,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0::operator()<WTF::String>(uint64_t a1, uint64_t a2)
{
  v17[0] = 0;
  v17[1] = 0;
  v18 = 0;
  v4 = WebCore::UserContentURLPattern::parse();
  v19 = v4;
  if (!v4)
  {
    v7 = *(*a2 + 304);
    v8 = *(v7 + 20);
    if (v8 == *(v7 + 16))
    {
      v9 = WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v7 + 8, v8 + 1, v17);
      v10 = *(v7 + 8) + 32 * *(v7 + 20);
      v11 = *v9;
      if (*v9)
      {
        atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
      }

      *v10 = v11;
      v12 = *(v9 + 8);
      if (v12)
      {
        atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
      }

      *(v10 + 8) = v12;
      v13 = *(v9 + 16);
      if (!v13)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v10 = *(v7 + 8) + 32 * v8;
      *v10 = v17[0];
      if (v17[1])
      {
        atomic_fetch_add_explicit(v17[1], 2u, memory_order_relaxed);
      }

      *(v10 + 8) = v17[1];
      v13 = v18;
      v9 = v17;
      if (!v18)
      {
        goto LABEL_16;
      }
    }

    atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
LABEL_16:
    *(v10 + 16) = v13;
    *(v10 + 24) = *(v9 + 24);
    ++*(v7 + 20);
    v14 = *v17;
    v17[0] = 0;
    v17[1] = 0;
    *a1 = v14;
    *(a1 + 16) = v18;
    *(a1 + 24) = v19;
    *(a1 + 32) = 1;
    v18 = 0;
    goto LABEL_17;
  }

  *a1 = 0;
  v6 = v18;
  *(a1 + 32) = 0;
  v18 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

LABEL_17:
  v15 = v17[1];
  v17[1] = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v5);
  }

  result = v17[0];
  v17[0] = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v5);
    }
  }

  return result;
}

uint64_t std::optional<WebCore::UserContentURLPattern>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 32) == 1)
  {
    v3 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    v4 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    v5 = *a1;
    *a1 = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }
  }

  return a1;
}

uint64_t WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, unint64_t a2)
{
  if (*(result + 8) > a2)
  {
    v3 = result;
    v4 = *(result + 12);
    if (v4 > a2)
    {
      result = WTF::VectorTypeOperations<WebCore::InspectorFrontendClientSaveData>::destruct((*result + 32 * a2), (*result + 32 * v4));
      *(v3 + 12) = a2;
      LODWORD(v4) = a2;
    }

    v5 = *v3;
    if (a2)
    {
      if (a2 >> 27)
      {
        __break(0xC471u);
        return result;
      }

      result = WTF::fastMalloc((32 * a2));
      *(v3 + 8) = a2;
      *v3 = result;
      if (result != v5)
      {
        result = WTF::VectorMover<false,WebCore::UserContentURLPattern>::move(v5, (v5 + 32 * v4), result);
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

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(uint64_t *a1, uint64_t a2)
{
  if (*a1)
  {
    v2 = *a1 + 24 * *(*a1 - 4);
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
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(a1, a2);
  }

  return a1;
}

unsigned int *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *a1, uint64_t a2)
{
  *a2 = -1;
  result = WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a2 + 8), (a2 + 8));
  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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

  v8 = WTF::fastZeroedMalloc((24 * a2 + 16));
  *a1 = (v8 + 4);
  v8[2] = a2 - 1;
  v8[3] = a2;
  *v8 = 0;
  v8[1] = v7;
  if (v6)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = (v5 + 24 * v10);
      v13 = *v12;
      if (*v12 != -1)
      {
        if (v13)
        {
          v14 = *a1;
          if (*a1)
          {
            v15 = *(v14 - 8);
          }

          else
          {
            v15 = 0;
          }

          v16 = (v13 + ~(v13 << 32)) ^ ((v13 + ~(v13 << 32)) >> 22);
          v17 = 9 * ((v16 + ~(v16 << 13)) ^ ((v16 + ~(v16 << 13)) >> 8));
          v18 = (v17 ^ (v17 >> 15)) + ~((v17 ^ (v17 >> 15)) << 27);
          v19 = v15 & ((v18 >> 31) ^ v18);
          v20 = 1;
          do
          {
            v21 = v14 + 24 * v19;
            v19 = (v19 + v20++) & v15;
          }

          while (*v21);
          WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v21 + 8), v9);
          v22 = *v12;
          *(v21 + 8) = 0;
          *(v21 + 16) = 0;
          *v21 = v22;
          WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v21 + 8, v12 + 2);
          WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v12 + 2, v23);
          if (v12 == a3)
          {
            v11 = v21;
          }
        }

        else
        {
          WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v12 + 2, v9);
        }
      }

      ++v10;
    }

    while (v10 != v6);
  }

  else
  {
    v11 = 0;
    result = 0;
    if (!v5)
    {
      return result;
    }
  }

  WTF::fastFree((v5 - 16), v9);
  return v11;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t a2)
{
  if (!*a1)
  {
    return 0;
  }

  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1, a2);
  v4 = *a1;
  if (!result)
  {
    if (v4)
    {
      return (v4 + 24 * *(v4 - 4));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t a2)
{
  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC8C7C8);
  }

  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = *(v2 - 8);
  v4 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v5 = 9 * ((v4 + ~(v4 << 13)) ^ ((v4 + ~(v4 << 13)) >> 8));
  v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27);
  v7 = v3 & ((v6 >> 31) ^ v6);
  result = (v2 + 24 * v7);
  v9 = *result;
  if (*result != a2)
  {
    v10 = 1;
    while (v9)
    {
      v7 = (v7 + v10) & v3;
      result = (v2 + 24 * v7);
      v9 = *result;
      ++v10;
      if (*result == a2)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

WTF *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, __n128 a5)
{
  v5 = *a3;
  if (*a3 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC8CA54);
  }

  if (!v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC8CA74);
  }

  v10 = *a2;
  if (!*a2)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, 0);
    v10 = *a2;
    v5 = *a3;
  }

  v11 = *(v10 - 8);
  v12 = (v5 + ~(v5 << 32)) ^ ((v5 + ~(v5 << 32)) >> 22);
  v13 = 9 * ((v12 + ~(v12 << 13)) ^ ((v12 + ~(v12 << 13)) >> 8));
  v14 = (v13 ^ (v13 >> 15)) + ~((v13 ^ (v13 >> 15)) << 27);
  v15 = v11 & ((v14 >> 31) ^ v14);
  v16 = (v10 + 24 * v15);
  v17 = *v16;
  if (!*v16)
  {
LABEL_13:
    *v16 = v5;
    v20 = *a4;
    v21 = a4[1];
    *a4 = 0;
    a4[1] = 0;
    v22 = *(v16 + 5);
    if (v22)
    {
      WTF::VectorTypeOperations<WebCore::InspectorFrontendClientSaveData>::destruct(*(v16 + 1), (*(v16 + 1) + 32 * v22));
    }

    v23 = *(v16 + 1);
    if (v23)
    {
      *(v16 + 1) = 0;
      *(v16 + 4) = 0;
      WTF::fastFree(v23, a2);
    }

    a5.n128_u64[0] = 0;
    v31 = a5;
    *(v16 + 1) = v20;
    *(v16 + 2) = v21;
    result = WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v31, a2);
    v25 = *a2;
    if (*a2)
    {
      v26 = *(v25 - 12) + 1;
    }

    else
    {
      v26 = 1;
    }

    *(v25 - 12) = v26;
    v29 = (*(v25 - 16) + v26);
    v30 = *(v25 - 4);
    if (v30 > 0x400)
    {
      if (v30 <= 2 * v29)
      {
LABEL_27:
        result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, v16);
        v16 = result;
        v25 = *a2;
        if (*a2)
        {
          LODWORD(v30) = *(v25 - 4);
        }

        else
        {
          LODWORD(v30) = 0;
        }
      }
    }

    else if (3 * v30 <= 4 * v29)
    {
      goto LABEL_27;
    }

    *a1 = v16;
    *(a1 + 8) = v25 + 24 * v30;
    *(a1 + 16) = 1;
    return result;
  }

  v18 = 0;
  v19 = 1;
  while (v17 != v5)
  {
    if (v17 == -1)
    {
      v18 = v16;
    }

    v15 = (v15 + v19) & v11;
    v16 = (v10 + 24 * v15);
    v17 = *v16;
    ++v19;
    if (!*v16)
    {
      if (v18)
      {
        *v18 = 0;
        *(v18 + 1) = 0;
        *(v18 + 2) = 0;
        --*(*a2 - 16);
        v5 = *a3;
        v16 = v18;
      }

      goto LABEL_13;
    }
  }

  v27 = v10 + 24 * *(v10 - 4);
  *a1 = v16;
  *(a1 + 8) = v27;
  *(a1 + 16) = 0;
  v28 = *(v16 + 5);
  if (v28)
  {
    WTF::VectorTypeOperations<WebCore::InspectorFrontendClientSaveData>::destruct(*(v16 + 1), (*(v16 + 1) + 32 * v28));
  }

  return WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v16 + 8, a4);
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v4, a2);
}

uint64_t WTF::HashSet<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove(uint64_t *a1, void *a2)
{
  if (*a1)
  {
    v3 = *a1 + 8 * *(*a1 - 4);
    if (v3 == a2)
    {
      return 0;
    }
  }

  else
  {
    if (!a2)
    {
      return 0;
    }

    v3 = 0;
  }

  if (v3 != a2)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(a1, a2);
  }

  return 1;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *result, void *a2)
{
  *a2 = -1;
  v2 = *result;
  v3 = vadd_s32(*(*result - 16), 0xFFFFFFFF00000001);
  *(v2 - 16) = v3;
  v4 = *(v2 - 4);
  if (6 * v3.i32[1] < v4 && v4 >= 9)
  {
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(result, v4 >> 1, 0);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  if (!*a1)
  {
    return 0;
  }

  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1, a2);
  v4 = *a1;
  if (!result)
  {
    if (v4)
    {
      return v4 + 8 * *(v4 - 4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 == -1 || !v2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC8CC7CLL);
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 - 8);
    v5 = (v2 + ~(v2 << 32)) ^ ((v2 + ~(v2 << 32)) >> 22);
    v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
    v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
    v8 = v4 & ((v7 >> 31) ^ v7);
    v9 = *(v3 + 8 * v8);
    if (v9 == v2)
    {
      return v3 + 8 * v8;
    }

    v10 = 1;
    while (v9)
    {
      v8 = (v8 + v10) & v4;
      v9 = *(v3 + 8 * v8);
      ++v10;
      if (v9 == v2)
      {
        return v3 + 8 * v8;
      }
    }
  }

  return 0;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcessProxy::RequestBackgroundFetchPermission,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1102198;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcessProxy::RequestBackgroundFetchPermission,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1102198;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcessProxy::RequestBackgroundFetchPermission,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
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

void WebKit::NetworkProcessPlatformStrategies::createBlobRegistry(void)::EmptyBlobRegistry::blobType(atomic_uint **a1@<X8>)
{
  v1 = *MEMORY[0x1E696EBA8];
  if (*MEMORY[0x1E696EBA8])
  {
    atomic_fetch_add_explicit(v1, 2u, memory_order_relaxed);
  }

  *a1 = v1;
}

void WebKit::NetworkProcessPlatformStrategies::createBlobRegistry(void)::EmptyBlobRegistry::~EmptyBlobRegistry(WebCore::BlobRegistry *a1)
{
  WebCore::BlobRegistry::~BlobRegistry(a1);

  JUMPOUT(0x19EB14CF0);
}

void sub_19DC8D318(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, WTF::StringImpl *location, uint64_t a16, id a17)
{
  if (location && atomic_fetch_add_explicit(location, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(location, a2);
  }

  if (a14)
  {
    if (atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a14, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DC8D4C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(a1);
}

void sub_19DC8D5E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::SystemPreviewController::triggerSystemPreviewAction(WebKit::SystemPreviewController *this)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED6413A0;
  if (os_log_type_enabled(qword_1ED6413A0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 12);
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "SystemPreview action was triggered on %lld", &buf, 0xCu);
  }

  v4 = *(this + 2);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      CFRetain(*(v5 - 8));
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v8 = buf;
      *&buf = this + 32;
      *(&buf + 1) = &v8;
      WebKit::WebPageProxy::send<Messages::WebPage::SystemPreviewActionTriggered>(v5 - 16, &buf);
      v7 = v8;
      v8 = 0;
      if (v7)
      {
        if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, v6);
        }
      }

      CFRelease(*(v5 - 8));
    }
  }
}

void sub_19DC8DBF4(_Unwind_Exception *a1)
{
  CFRelease(*(v2 - 8));
  WTF::RefCounted<WebKit::SystemPreviewController>::deref(v1);
  _Unwind_Resume(a1);
}

void sub_19DC8DD90(_Unwind_Exception *a1)
{
  CFRelease(*(v2 - 8));
  WTF::RefCounted<WebKit::SystemPreviewController>::deref(v1);
  _Unwind_Resume(a1);
}

void sub_19DC8E078(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_19DC8E154(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10)
{
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DC8E5DC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  WTF::FileSystemImpl::FileHandle::~FileHandle((v12 + 8));
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, v15);
  }

  if ((v13 & 1) == 0)
  {
    WTF::RefCounted<WebKit::SystemPreviewController>::deref((v11 + 8));
  }

  _Unwind_Resume(a1);
}

void WebKit::SystemPreviewController::loadFailed(WebKit::SystemPreviewController *this)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED6413A0;
  if (os_log_type_enabled(qword_1ED6413A0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 12);
    v10 = 134217984;
    v11 = v3;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "SystemPreview load has failed on %lld", &v10, 0xCu);
  }

  v4 = *(this + 31);
  if (v4)
  {
    [v4 failWithError:0];
  }

  v5 = *(this + 29);
  if (v5)
  {
    [v5 dismissViewControllerAnimated:1 completion:0];
  }

  v6 = *(this + 30);
  *(this + 30) = 0;
  if (v6)
  {
  }

  v7 = *(this + 31);
  *(this + 31) = 0;
  if (v7)
  {
  }

  v8 = *(this + 29);
  *(this + 29) = 0;
  if (v8)
  {
  }

  v9 = *(this + 32);
  *(this + 32) = 0;
  if (v9)
  {
  }

  WebKit::SystemPreviewController::releaseActivityTokenIfNecessary(this);
  if (*(this + 34))
  {
    WTF::CompletionHandler<void ()(BOOL)>::operator()((this + 272), 0);
  }

  *(this + 12) = 0;
}

void sub_19DC8E8E4(_Unwind_Exception *a1)
{
  v2 = v1;
  WTF::RefCounted<WebKit::SystemPreviewController>::deref(v2);
  _Unwind_Resume(a1);
}

void sub_19DC8EB28(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF::StringImpl *a15)
{
  if (a15 && atomic_fetch_add_explicit(a15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a15, a2);
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  WTF::RefCounted<WebKit::SystemPreviewController>::deref(v15);
  _Unwind_Resume(a1);
}

void WebKit::SystemPreviewController::begin(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t *a5)
{
  v113 = *MEMORY[0x1E69E9840];
  if (*(a1 + 12) || *(a1 + 280))
  {
    v7 = qword_1ED6413A0;
    if (os_log_type_enabled(qword_1ED6413A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19D52D000, v7, OS_LOG_TYPE_DEFAULT, "SystemPreview didn't start because an existing preview is in progress", buf, 2u);
    }

    *(a1 + 288) = fmin(*(a1 + 288) * *(a1 + 288) + 1.0, 30.0);
    WTF::CompletionHandler<void ()(void)>::operator()(a5);
    return;
  }

  if (!*(a1 + 232))
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = *(v8 + 8);
      if (v9)
      {
        CFRetain(*(v9 - 8));
        v13 = (*(**(v9 + 104) + 504))(*(v9 + 104));
        v14 = v13;
        if (!v13)
        {
          WTF::CompletionHandler<void ()(void)>::operator()(a5);
LABEL_114:
          CFRelease(*(v9 - 8));
          return;
        }

        v15 = v13;
        v16 = *a4;
        v17 = a4[2];
        *(a1 + 48) = a4[1];
        *(a1 + 64) = v17;
        *(a1 + 32) = v16;
        v18 = a4[3];
        v19 = a4[4];
        v20 = a4[5];
        *(a1 + 128) = *(a4 + 96);
        *(a1 + 96) = v19;
        *(a1 + 112) = v20;
        *(a1 + 80) = v18;
        v21 = *a5;
        *a5 = 0;
        v95 = v21;
        LOBYTE(v96) = 0;
        v98 = -1;
        LODWORD(v21) = *(a3 + 24);
        if (*(a3 + 24))
        {
          if (v21 == 255)
          {
LABEL_20:
            WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a1, a1);
            v23 = *a1;
            atomic_fetch_add(*a1, 1u);
            v99 = v23;
            v24 = *a2;
            if (*a2)
            {
              atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
            }

            v101 = *(a2 + 8);
            v102 = *(a2 + 24);
            v100 = v24;
            v103 = v14;
            v25 = v14;
            v26 = v95;
            v95 = 0;
            v86 = v26;
            LOBYTE(v87) = 0;
            v89 = -1;
            v27 = v98;
            if (v98)
            {
              if (v98 == 255)
              {
LABEL_29:
                v29 = v99;
                v28 = v100;
                v99 = 0;
                v90 = v29;
                if (v100)
                {
                  atomic_fetch_add_explicit(v100, 2u, memory_order_relaxed);
                  v27 = v89;
                }

                v92 = v101;
                v93 = v102;
                v30 = v103;
                v103 = 0;
                v94 = v30;
                v31 = v86;
                v91 = v100;
                v86 = 0;
                *buf = v31;
                LOBYTE(v105) = 0;
                v107 = -1;
                if (v27)
                {
                  if (v27 == 255)
                  {
                    goto LABEL_38;
                  }

                  v105 = v87;
                }

                else
                {
                  if (v87)
                  {
                    atomic_fetch_add_explicit(v87, 2u, memory_order_relaxed);
                  }

                  *&v105 = v87;
                  if (*(&v87 + 1))
                  {
                    atomic_fetch_add_explicit(*(&v87 + 1), 2u, memory_order_relaxed);
                  }

                  *(&v105 + 1) = *(&v87 + 1);
                  v106 = v88;
                  LOBYTE(v27) = v89;
                  v28 = v91;
                }

                v107 = v27;
LABEL_38:
                v32 = v90;
                v90 = 0;
                v108 = v32;
                if (v28)
                {
                  atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
                }

                v109 = v28;
                v110 = v92;
                v111 = v93;
                v33 = v94;
                v94 = 0;
                v112 = v33;
                v34 = malloc_type_malloc(0x80uLL, 0x10E2040191959EBuLL);
                *v34 = MEMORY[0x1E69E9818];
                *(v34 + 1) = 50331650;
                *(v34 + 2) = WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::SystemPreviewController::begin(WTF::URL const&,WebCore::SecurityOriginData const&,WebCore::SystemPreviewInfo const&,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::SystemPreviewController::begin(WTF::URL const&,WebCore::SecurityOriginData const&,WebCore::SystemPreviewInfo const&,WTF::CompletionHandler<void ()(void)> &&)::$_0)::{lambda(void *,BOOL)#1}::__invoke;
                *(v34 + 3) = &WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::SystemPreviewController::begin(WTF::URL const&,WebCore::SecurityOriginData const&,WebCore::SystemPreviewInfo const&,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::SystemPreviewController::begin(WTF::URL const&,WebCore::SecurityOriginData const&,WebCore::SystemPreviewInfo const&,WTF::CompletionHandler<void ()(void)> &&)::$_0)::descriptor;
                *buf = 0;
                *(v34 + 4) = v31;
                mpark::detail::copy_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::copy_constructor(v34 + 40, &v105);
                v37 = v108;
                v36 = v109;
                v108 = 0;
                *(v34 + 9) = v37;
                if (v36)
                {
                  atomic_fetch_add_explicit(v36, 2u, memory_order_relaxed);
                  v38 = v109;
                }

                else
                {
                  v38 = 0;
                }

                *(v34 + 10) = v36;
                *(v34 + 88) = v110;
                *(v34 + 104) = v111;
                *(v34 + 15) = v112;
                v112 = 0;
                v109 = 0;
                if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v38, v35);
                }

                v39 = v108;
                v108 = 0;
                if (v39 && atomic_fetch_add(v39, 0xFFFFFFFF) == 1)
                {
                  atomic_store(1u, v39);
                  WTF::fastFree(v39, v35);
                }

                mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v105);
                v40 = *buf;
                *buf = 0;
                if (v40)
                {
                  (*(*v40 + 8))(v40);
                }

                _Block_release(*(a1 + 280));
                *(a1 + 280) = v34;
                _Block_release(0);
                v42 = v94;
                v94 = 0;
                if (v42)
                {
                }

                v43 = v91;
                v91 = 0;
                if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v43, v41);
                }

                v44 = v90;
                v90 = 0;
                if (v44 && atomic_fetch_add(v44, 0xFFFFFFFF) == 1)
                {
                  atomic_store(1u, v44);
                  WTF::fastFree(v44, v41);
                }

                mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v87);
                v46 = v86;
                v86 = 0;
                if (v46)
                {
                  (*(*v46 + 8))(v46);
                }

                WebCore::copyLocalizedString(buf, @"View in AR?", v45);
                v48 = *buf;
                *buf = 0;
                if (v48)
                {
                  CFAutorelease(v48);
                  v49 = *buf;
                  *buf = 0;
                  if (v49)
                  {
                    CFRelease(v49);
                  }
                }

                WebCore::copyLocalizedString(buf, @"You can view this object in 3D and place it in your surroundings using augmented reality.", v47);
                v50 = *buf;
                *buf = 0;
                if (v50)
                {
                  CFAutorelease(v50);
                  v51 = *buf;
                  *buf = 0;
                  if (v51)
                  {
                    CFRelease(v51);
                  }
                }

                WebKit::createUIAlertController(v48, v50, &v86);
                v52 = MEMORY[0x1E69DC648];
                WebCore::copyLocalizedString(buf, @"View in AR (usdz QuickLook Preview)", v53);
                v54 = *buf;
                *buf = 0;
                if (v54)
                {
                  CFAutorelease(v54);
                  v55 = *buf;
                  *buf = 0;
                  if (v55)
                  {
                    CFRelease(v55);
                  }
                }

                v84[0] = MEMORY[0x1E69E9820];
                v84[1] = 3321888768;
                v84[2] = ___ZN6WebKit23SystemPreviewController5beginERKN3WTF3URLERKN7WebCore18SecurityOriginDataERKNS5_17SystemPreviewInfoEONS1_17CompletionHandlerIFvvEEE_block_invoke;
                v84[3] = &__block_descriptor_40_e8_32c152_ZTSKZN6WebKit23SystemPreviewController5beginERKN3WTF3URLERKN7WebCore18SecurityOriginDataERKNS5_17SystemPreviewInfoEONS1_17CompletionHandlerIFvvEEEE3__2_e23_v16__0__UIAlertAction_8l;
                WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a1, a1);
                v56 = *a1;
                atomic_fetch_add(*a1, 1u);
                if (v56)
                {
                  atomic_fetch_add(v56, 1u);
                }

                v85 = v56;
                v58 = [v52 actionWithTitle:v54 style:0 handler:v84];
                if (v56 && atomic_fetch_add(v56, 0xFFFFFFFF) == 1)
                {
                  atomic_store(1u, v56);
                  WTF::fastFree(v56, v57);
                }

                v59 = MEMORY[0x1E69DC648];
                WebCore::copyLocalizedString(buf, @"Cancel (usdz QuickLook Preview)", v57);
                v60 = *buf;
                *buf = 0;
                if (v60)
                {
                  CFAutorelease(v60);
                  v61 = *buf;
                  *buf = 0;
                  if (v61)
                  {
                    CFRelease(v61);
                  }
                }

                v82[0] = MEMORY[0x1E69E9820];
                v82[1] = 3321888768;
                v82[2] = ___ZN6WebKit23SystemPreviewController5beginERKN3WTF3URLERKN7WebCore18SecurityOriginDataERKNS5_17SystemPreviewInfoEONS1_17CompletionHandlerIFvvEEE_block_invoke_192;
                v82[3] = &__block_descriptor_40_e8_32c152_ZTSKZN6WebKit23SystemPreviewController5beginERKN3WTF3URLERKN7WebCore18SecurityOriginDataERKNS5_17SystemPreviewInfoEONS1_17CompletionHandlerIFvvEEEE3__3_e23_v16__0__UIAlertAction_8l;
                WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a1, a1);
                v62 = *a1;
                atomic_fetch_add(*a1, 1u);
                if (v62)
                {
                  atomic_fetch_add(v62, 1u);
                }

                v83 = v62;
                v64 = [v59 actionWithTitle:v60 style:1 handler:v82];
                if (v62 && atomic_fetch_add(v62, 0xFFFFFFFF) == 1)
                {
                  atomic_store(1u, v62);
                  WTF::fastFree(v62, v63);
                }

                [(atomic_uint *)v86 addAction:v64];
                v65 = [(atomic_uint *)v86 addAction:v58];
                if (*(a1 + 272))
                {
                  v66 = *(a1 + 280);
                  *(a1 + 280) = 0;
                  v67 = _Block_copy(0);
                  _Block_release(*(a1 + 280));
                  *(a1 + 280) = v67;
                  _Block_release(0);
                  v66[2](v66, 1);
                  _Block_release(v66);
                }

                else if (*(a1 + 288) == 0.0)
                {
                  [v14 presentViewController:v86 animated:1 completion:0];
                }

                else
                {
                  WTF::RunLoop::mainSingleton(v65);
                  v69 = v86;
                  if (v86)
                  {
                    v70 = v86;
                  }

                  v71 = v14;
                  v72 = WTF::fastMalloc(0x18);
                  *v72 = &unk_1F1102C30;
                  v72[1] = v69;
                  v72[2] = v14;
                  *buf = v72;
                  WTF::RunLoop::dispatchAfter();
                  if (v81)
                  {
                    WTF::ThreadSafeRefCounted<WTF::RunLoop::DispatchTimer,(WTF::DestructionThread)0>::deref((v81 + 40));
                  }

                  v73 = *buf;
                  *buf = 0;
                  if (v73)
                  {
                    (*(*v73 + 8))(v73);
                  }

                  *(a1 + 288) = 0;
                }

                v74 = v83;
                v83 = 0;
                if (v74 && atomic_fetch_add(v74, 0xFFFFFFFF) == 1)
                {
                  atomic_store(1u, v74);
                  WTF::fastFree(v74, v68);
                }

                v75 = v85;
                v85 = 0;
                if (v75 && atomic_fetch_add(v75, 0xFFFFFFFF) == 1)
                {
                  atomic_store(1u, v75);
                  WTF::fastFree(v75, v68);
                }

                v76 = v86;
                v86 = 0;
                if (v76)
                {
                }

                v77 = v103;
                v103 = 0;
                if (v77)
                {
                }

                v78 = v100;
                v100 = 0;
                if (v78 && atomic_fetch_add_explicit(v78, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v78, v68);
                }

                v79 = v99;
                v99 = 0;
                if (v79 && atomic_fetch_add(v79, 0xFFFFFFFF) == 1)
                {
                  atomic_store(1u, v79);
                  WTF::fastFree(v79, v68);
                }

                mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v96);
                v80 = v95;
                v95 = 0;
                if (v80)
                {
                  (*(*v80 + 8))(v80);
                }

                goto LABEL_114;
              }

              v87 = v96;
            }

            else
            {
              if (v96)
              {
                atomic_fetch_add_explicit(v96, 2u, memory_order_relaxed);
              }

              *&v87 = v96;
              if (*(&v96 + 1))
              {
                atomic_fetch_add_explicit(*(&v96 + 1), 2u, memory_order_relaxed);
              }

              *(&v87 + 1) = *(&v96 + 1);
              v88 = v97;
              v27 = v98;
            }

            v89 = v27;
            goto LABEL_29;
          }

          v96 = *a3;
        }

        else
        {
          v22 = *a3;
          if (*a3)
          {
            atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
          }

          *&v96 = v22;
          v21 = *(a3 + 1);
          if (v21)
          {
            atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
          }

          *(&v96 + 1) = v21;
          v97 = *(a3 + 4);
          LOBYTE(v21) = *(a3 + 24);
        }

        v98 = v21;
        goto LABEL_20;
      }
    }
  }

  WTF::CompletionHandler<void ()(void)>::operator()(a5);
}