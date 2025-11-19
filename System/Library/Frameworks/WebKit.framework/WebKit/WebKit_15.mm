uint64_t std::experimental::fundamentals_v3::expected<WTF::String,WTF::String>::~expected(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 8) != 255)
  {
    v3 = *a1;
    *a1 = 0;
    if (v3)
    {
      if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, a2);
      }
    }
  }

  *(a1 + 8) = -1;
  return a1;
}

void Inspector::AutomationBackendDispatcher::~AutomationBackendDispatcher(Inspector::AutomationBackendDispatcher *this)
{
  Inspector::SupplementalBackendDispatcher::~SupplementalBackendDispatcher(this);

  WTF::fastFree(v1, v2);
}

uint64_t WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>>::destruct(*a1, (*a1 + 16 * v3));
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

WTF::StringImpl *WTF::VectorDestructor<true,std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
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

      v3 += 2;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(WTF::StringImpl **a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 1);
  if (v3)
  {
    v4 = a1;
    do
    {
      v5 = *v4;
      if (*v4 != -1)
      {
        *v4 = 0;
        if (v5)
        {
          if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v5, a2);
          }
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 2), a2);
}

uint64_t *WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>@<X0>(uint64_t *a1@<X0>, WTF::StringImpl **a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a3;
  v8 = *a1;
  if (*a1 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a1, 0), (v8 = *a1) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(*a2 + 4);
  if (v10 < 0x100)
  {
    v11 = WTF::StringImpl::hashSlowCase(*a2);
  }

  else
  {
    v11 = v10 >> 8;
  }

  v12 = 0;
  for (i = 1; ; ++i)
  {
    v14 = v11 & v9;
    v15 = (v8 + 16 * (v11 & v9));
    v16 = *v15;
    if (*v15 != -1)
    {
      break;
    }

    v12 = (v8 + 16 * v14);
LABEL_12:
    v11 = i + v14;
  }

  if (!v16)
  {
    if (v12)
    {
      *v12 = 0;
      v12[1] = 0;
      --*(*a1 - 16);
      v15 = v12;
    }

    result = WTF::HashMapTranslator<WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::String const&,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineAdd<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>(WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>> &&)::{lambda(void)#1}>(v15, a2, &v25);
    v18 = *a1;
    if (*a1)
    {
      v19 = *(v18 - 12) + 1;
    }

    else
    {
      v19 = 1;
    }

    *(v18 - 12) = v19;
    v22 = (*(v18 - 16) + v19);
    v23 = *(v18 - 4);
    if (v23 > 0x400)
    {
      if (v23 <= 2 * v22)
      {
LABEL_22:
        result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a1, v15);
        v15 = result;
        v18 = *a1;
        if (*a1)
        {
          v23 = *(v18 - 4);
        }

        else
        {
          v23 = 0;
        }
      }
    }

    else if (3 * v23 <= 4 * v22)
    {
      goto LABEL_22;
    }

    *a4 = v15;
    *(a4 + 8) = v18 + 16 * v23;
    *(a4 + 16) = 1;
    return result;
  }

  if (!WTF::equal(v16, *a2, a3))
  {
    goto LABEL_12;
  }

  v20 = *a1;
  if (*a1)
  {
    v21 = *(v20 - 4);
  }

  else
  {
    v21 = 0;
  }

  *a4 = v15;
  *(a4 + 8) = v20 + 16 * v21;
  *(a4 + 16) = 0;
  v24 = *a3;
  *a3 = 0;
  result = v15[1];
  v15[1] = v24;
  if (result)
  {
    if (*result == 1)
    {

      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

_DWORD *WTF::HashMapTranslator<WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::String const&,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineAdd<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>(WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>> &&)::{lambda(void)#1}>(uint64_t *a1, atomic_uint **a2, uint64_t **a3)
{
  WTF::String::operator=(a1, a2);
  v5 = **a3;
  **a3 = 0;
  result = a1[1];
  a1[1] = v5;
  if (result)
  {
    if (*result == 1)
    {

      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
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

  v9 = WTF::fastZeroedMalloc((16 * a2 + 16));
  *a1 = (v9 + 4);
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  v11 = 0;
  if (v7)
  {
    v12 = v6;
    v13 = v7;
    do
    {
      v14 = *v12;
      if (*v12 != -1)
      {
        if (v14)
        {
          v16 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::lookupForReinsert(a1, v12);
          v17 = *(v16 + 8);
          *(v16 + 8) = 0;
          if (v17)
          {
            if (*v17 == 1)
            {
              WTF::JSONImpl::Value::operator delete();
            }

            else
            {
              --*v17;
            }
          }

          v18 = *v16;
          *v16 = 0;
          if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v18, v10);
          }

          v19 = *v12;
          *v12 = 0;
          *v16 = v19;
          v20 = *(v12 + 8);
          *(v12 + 8) = 0;
          *(v16 + 8) = v20;
          v21 = *(v12 + 8);
          *(v12 + 8) = 0;
          if (v21)
          {
            if (*v21 == 1)
            {
              WTF::JSONImpl::Value::operator delete();
            }

            else
            {
              --*v21;
            }
          }

          v22 = *v12;
          *v12 = 0;
          if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v22, v10);
          }

          if (v12 == a3)
          {
            v11 = v16;
          }
        }

        else
        {
          v15 = *(v12 + 8);
          *(v12 + 8) = 0;
          if (v15)
          {
            if (*v15 == 1)
            {
              WTF::JSONImpl::Value::operator delete();
              v14 = *v12;
            }

            else
            {
              --*v15;
            }
          }

          *v12 = 0;
          if (v14)
          {
            if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v14, v10);
            }
          }
        }
      }

      v12 += 16;
      --v13;
    }

    while (v13);
  }

  else
  {
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v11;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::lookupForReinsert(uint64_t *a1, WTF::StringImpl **a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(*a2 + 4);
  if (v4 < 0x100)
  {
    v5 = WTF::StringImpl::hashSlowCase(*a2);
  }

  else
  {
    v5 = v4 >> 8;
  }

  v6 = 0;
  do
  {
    v7 = v5 & v3;
    v5 = ++v6 + v7;
  }

  while (*(v2 + 16 * v7));
  return v2 + 16 * v7;
}

uint64_t WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
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

uint64_t mpark::detail::move_constructor<mpark::detail::traits<BOOL,WTF::String>,(mpark::detail::Trait)1>::~move_constructor(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 8))
  {
    if (*(a1 + 8) != 255)
    {
      v3 = *a1;
      *a1 = 0;
      if (v3)
      {
        if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v3, a2);
        }
      }
    }
  }

  *(a1 + 8) = -1;
  return a1;
}

void WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,void (Inspector::AutomationBackendDispatcher::*)(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)>,WTF::KeyValuePairKeyExtractor<void (Inspector::AutomationBackendDispatcher::*)(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,void ()(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&),WTF::DefaultHash,WTF::HashTraits<WTF::String>,WTF::HashMap<void ()(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits,WTF::ShouldValidateKey>::expand(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 - 4);
    v4 = *(v2 - 12);
    if (v3)
    {
      v5 = v3 << (6 * v4 >= (2 * v3));
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
  v6 = WTF::fastMalloc((24 * v5 + 16));
  v8 = v6;
  v9 = v6 + 16;
  if (v5)
  {
    bzero((v6 + 16), 24 * v5);
  }

  *a1 = v9;
  v8[2] = v5 - 1;
  v8[3] = v5;
  *v8 = 0;
  v8[1] = v4;
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v11 = v2 + 24 * i;
      v12 = *v11;
      if (*v11 != -1)
      {
        if (v12)
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
            v18 = v13 + 24 * (v16 & v14);
            v16 = ++v17 + (v16 & v14);
          }

          while (*v18);
          v19 = *v11;
          *v11 = 0;
          *v18 = v19;
          *(v18 + 8) = *(v11 + 8);
          v20 = *v11;
          *v11 = 0;
          if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v20, v7);
          }
        }

        else
        {
          *v11 = 0;
        }
      }
    }
  }

  else if (!v2)
  {
    return;
  }

  WTF::fastFree((v2 - 16), v7);
}

uint64_t *WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(uint64_t *result, unint64_t a2, int8x16_t *a3, unint64_t a4, uint64_t a5, int8x16_t *a6, unint64_t a7)
{
  if (a4 < 0x40)
  {
    v9 = result;
  }

  else
  {
    v9 = (result + 2 * (a4 & 0x7FFFFFFFFFFFFFC0));
    v10 = 0uLL;
    v11 = result;
    do
    {
      v34.val[0] = *a3;
      v12 = a3[1];
      v36.val[0] = a3[2];
      v13 = a3[3];
      a3 += 4;
      v14 = v13;
      v36.val[1] = 0uLL;
      v38.val[0] = v12;
      v34.val[1] = 0uLL;
      v15 = v11;
      vst2q_s8(v15, v34);
      v15 += 32;
      v38.val[1] = 0uLL;
      vst2q_s8(v15, v38);
      v16 = v11 + 64;
      vst2q_s8(v16, v36);
      v17 = v11 + 96;
      vst2q_s8(v17, *(&v10 - 1));
      v11 += 128;
    }

    while (v11 != v9);
  }

  while (v9 != (result + 2 * a4))
  {
    v18 = a3->u8[0];
    a3 = (a3 + 1);
    *v9 = v18;
    v9 = (v9 + 2);
  }

  if (a2 < a4 || (v19 = a2 - a4, v20 = result + 2 * a4, v33 = a5, result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v33, v20), (v21 = v33) != 0) && (v21 = *(v33 + 4), v19 < v21))
  {
    __break(1u);
  }

  else
  {
    v22 = &v20[2 * v21];
    v23 = &v22[2 * a7];
    if (a7 >= 0x40)
    {
      v24 = &v22[2 * (a7 & 0x7FFFFFFFFFFFFFC0)];
      v25 = 0uLL;
      do
      {
        v35.val[0] = *a6;
        v26 = a6[1];
        v37.val[0] = a6[2];
        v27 = a6[3];
        a6 += 4;
        v28 = v27;
        v37.val[1] = 0uLL;
        v39.val[0] = v26;
        v35.val[1] = 0uLL;
        v29 = v22;
        vst2q_s8(v29, v35);
        v29 += 32;
        v39.val[1] = 0uLL;
        vst2q_s8(v29, v39);
        v30 = v22 + 64;
        vst2q_s8(v30, v37);
        v31 = v22 + 96;
        vst2q_s8(v31, *(&v25 - 1));
        v22 += 128;
      }

      while (v22 != v24);
      v22 = v24;
    }

    while (v22 != v23)
    {
      v32 = a6->u8[0];
      a6 = (a6 + 1);
      *v22 = v32;
      v22 += 2;
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::getBrowsingContexts(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::Automation::BrowsingContext>,WTF::RawPtrTraits<Inspector::Protocol::Automation::BrowsingContext>,WTF::DefaultRefDerefTraits<Inspector::Protocol::Automation::BrowsingContext>>,WTF::String>>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10E6E18;
  a1[1] = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::getBrowsingContexts(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::Automation::BrowsingContext>,WTF::RawPtrTraits<Inspector::Protocol::Automation::BrowsingContext>,WTF::DefaultRefDerefTraits<Inspector::Protocol::Automation::BrowsingContext>>,WTF::String>>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10E6E18;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::getBrowsingContexts(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::Automation::BrowsingContext>,WTF::RawPtrTraits<Inspector::Protocol::Automation::BrowsingContext>,WTF::DefaultRefDerefTraits<Inspector::Protocol::Automation::BrowsingContext>>,WTF::String>>::call(Inspector::BackendDispatcher **a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 255)
  {
    goto LABEL_28;
  }

  v4 = *a2;
  *a2 = 0;
  v15 = v2;
  if (!v2)
  {
    WTF::JSONImpl::Object::create(&v18, a1);
    v7 = v18;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v16 = v4;
    WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>((v7 + 16), &v17, &v16, v19);
    if (v19[16] == 1)
    {
      v9 = *(v7 + 36);
      if (v9 == *(v7 + 32))
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v7 + 24, &v17);
      }

      else
      {
        v10 = *(v7 + 24);
        v11 = v17;
        if (v17)
        {
          atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
        }

        v12 = *(v7 + 36);
        *(v10 + 8 * v9) = v11;
        *(v7 + 36) = v12 + 1;
      }
    }

    v13 = v16;
    v16 = 0;
    if (v13)
    {
      if (*v13 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v13;
      }
    }

    v14 = v17;
    v17 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v8);
    }

    Inspector::BackendDispatcher::sendResponse();
    result = v18;
    v18 = 0;
    goto LABEL_22;
  }

  if (v2 != 1)
  {
LABEL_28:
    mpark::throw_bad_variant_access(a1);
  }

  Inspector::BackendDispatcher::reportProtocolError();
  result = Inspector::BackendDispatcher::sendPendingErrors(a1[1]);
  if (v15 == 255)
  {
    return result;
  }

  result = v4;
  if (v15)
  {
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(v4, v6);
      }
    }

    return result;
  }

LABEL_22:
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::getBrowsingContext(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<WTF::Ref<Inspector::Protocol::Automation::BrowsingContext,WTF::RawPtrTraits<Inspector::Protocol::Automation>,WTF::DefaultRefDerefTraits<Inspector::Protocol::Automation>>,WTF::String>>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10E6E40;
  a1[1] = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::getBrowsingContext(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<WTF::Ref<Inspector::Protocol::Automation::BrowsingContext,WTF::RawPtrTraits<Inspector::Protocol::Automation>,WTF::DefaultRefDerefTraits<Inspector::Protocol::Automation>>,WTF::String>>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10E6E40;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::getBrowsingContext(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<WTF::Ref<Inspector::Protocol::Automation::BrowsingContext,WTF::RawPtrTraits<Inspector::Protocol::Automation>,WTF::DefaultRefDerefTraits<Inspector::Protocol::Automation>>,WTF::String>>::call(Inspector::BackendDispatcher **a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 255)
  {
    goto LABEL_28;
  }

  v4 = *a2;
  *a2 = 0;
  v15 = v2;
  if (!v2)
  {
    WTF::JSONImpl::Object::create(&v18, a1);
    v7 = v18;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v16 = v4;
    WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>((v7 + 16), &v17, &v16, v19);
    if (v19[16] == 1)
    {
      v9 = *(v7 + 36);
      if (v9 == *(v7 + 32))
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v7 + 24, &v17);
      }

      else
      {
        v10 = *(v7 + 24);
        v11 = v17;
        if (v17)
        {
          atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
        }

        v12 = *(v7 + 36);
        *(v10 + 8 * v9) = v11;
        *(v7 + 36) = v12 + 1;
      }
    }

    v13 = v16;
    v16 = 0;
    if (v13)
    {
      if (*v13 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v13;
      }
    }

    v14 = v17;
    v17 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v8);
    }

    Inspector::BackendDispatcher::sendResponse();
    result = v18;
    v18 = 0;
    goto LABEL_22;
  }

  if (v2 != 1)
  {
LABEL_28:
    mpark::throw_bad_variant_access(a1);
  }

  Inspector::BackendDispatcher::reportProtocolError();
  result = Inspector::BackendDispatcher::sendPendingErrors(a1[1]);
  if (v15 == 255)
  {
    return result;
  }

  result = v4;
  if (v15)
  {
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(v4, v6);
      }
    }

    return result;
  }

LABEL_22:
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::createBrowsingContext(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<std::tuple<WTF::String,Inspector::Protocol::Automation::BrowsingContextPresentation>,std::tuple>>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10E6E68;
  a1[1] = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::createBrowsingContext(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<std::tuple<WTF::String,Inspector::Protocol::Automation::BrowsingContextPresentation>,std::tuple>>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10E6E68;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::createBrowsingContext(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<std::tuple<WTF::String,Inspector::Protocol::Automation::BrowsingContextPresentation>,std::tuple>>::call(Inspector::BackendDispatcher **a1, uint64_t a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 16);
  if (v2 == 255)
  {
    goto LABEL_44;
  }

  v4 = *a2;
  if (!*(a2 + 16))
  {
    v7 = *(a2 + 8);
    *a2 = 0;
    v31 = v4;
    LODWORD(v32) = v7;
    WTF::JSONImpl::Object::create(&v30, a1);
    v8 = v30;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v29 = v34[0];
    WTF::JSONImpl::Value::create(&v33, &v31, v9);
    WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>((v8 + 16), &v29, &v33, v34);
    if (v35)
    {
      v11 = *(v8 + 36);
      if (v11 == *(v8 + 32))
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v8 + 24, &v29);
      }

      else
      {
        v12 = *(v8 + 24);
        v13 = v29;
        if (v29)
        {
          atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
        }

        v14 = *(v8 + 36);
        *(v12 + 8 * v11) = v13;
        *(v8 + 36) = v14 + 1;
      }
    }

    v15 = v33;
    v33 = 0;
    if (v15)
    {
      if (*v15 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v15;
      }
    }

    v16 = v29;
    v29 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v10);
    }

    v17 = v30;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::Protocol::AutomationHelpers::getEnumConstantValue(v32, &v28);
    WTF::JSONImpl::Value::create(&v33, &v28, v18);
    WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>((v17 + 16), &v29, &v33, v34);
    if (v35 == 1)
    {
      v20 = *(v17 + 36);
      if (v20 == *(v17 + 32))
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v17 + 24, &v29);
      }

      else
      {
        v21 = *(v17 + 24);
        v22 = v29;
        if (v29)
        {
          atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
        }

        v23 = *(v17 + 36);
        *(v21 + 8 * v20) = v22;
        *(v17 + 36) = v23 + 1;
      }
    }

    v24 = v33;
    v33 = 0;
    if (v24)
    {
      if (*v24 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v24;
      }
    }

    v25 = v28;
    v28 = 0;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v19);
    }

    v26 = v29;
    v29 = 0;
    if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v26, v19);
    }

    Inspector::BackendDispatcher::sendResponse();
    v27 = v30;
    v30 = 0;
    if (v27)
    {
      if (*v27 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v27;
      }
    }

    result = v31;
    v31 = 0;
    if (result)
    {
      goto LABEL_38;
    }

    return result;
  }

  *a2 = 0;
  v36 = v4;
  v37 = v2;
  if (v2 != 1)
  {
LABEL_44:
    mpark::throw_bad_variant_access(a1);
  }

  Inspector::BackendDispatcher::reportProtocolError();
  result = Inspector::BackendDispatcher::sendPendingErrors(a1[1]);
  if (v37 != 255)
  {
    result = v36;
    v36 = 0;
    if (result)
    {
LABEL_38:
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v6);
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::closeBrowsingContext(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10E6E90;
  a1[1] = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::closeBrowsingContext(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10E6E90;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::closeBrowsingContext(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::call(Inspector::BackendDispatcher **a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v4 = *a2;
    *a2 = 0;
    v6 = v4;
    Inspector::BackendDispatcher::reportProtocolError();
    Inspector::BackendDispatcher::sendPendingErrors(a1[1]);
    result = v6;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v6, v5);
    }
  }

  else
  {
    WTF::JSONImpl::Object::create(&v7, a1);
    Inspector::BackendDispatcher::sendResponse();
    result = v7;
    v7 = 0;
    if (result)
    {
      if (*result == 1)
      {
        return WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*result;
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::switchToBrowsingContext(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10E6EB8;
  a1[1] = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::switchToBrowsingContext(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10E6EB8;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::switchToBrowsingContext(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::call(Inspector::BackendDispatcher **a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v4 = *a2;
    *a2 = 0;
    v6 = v4;
    Inspector::BackendDispatcher::reportProtocolError();
    Inspector::BackendDispatcher::sendPendingErrors(a1[1]);
    result = v6;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v6, v5);
    }
  }

  else
  {
    WTF::JSONImpl::Object::create(&v7, a1);
    Inspector::BackendDispatcher::sendResponse();
    result = v7;
    v7 = 0;
    if (result)
    {
      if (*result == 1)
      {
        return WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*result;
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::setWindowFrameOfBrowsingContext(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10E6EE0;
  a1[1] = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::setWindowFrameOfBrowsingContext(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10E6EE0;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::setWindowFrameOfBrowsingContext(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::call(Inspector::BackendDispatcher **a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v4 = *a2;
    *a2 = 0;
    v6 = v4;
    Inspector::BackendDispatcher::reportProtocolError();
    Inspector::BackendDispatcher::sendPendingErrors(a1[1]);
    result = v6;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v6, v5);
    }
  }

  else
  {
    WTF::JSONImpl::Object::create(&v7, a1);
    Inspector::BackendDispatcher::sendResponse();
    result = v7;
    v7 = 0;
    if (result)
    {
      if (*result == 1)
      {
        return WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*result;
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::maximizeWindowOfBrowsingContext(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10E6F08;
  a1[1] = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::maximizeWindowOfBrowsingContext(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10E6F08;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::maximizeWindowOfBrowsingContext(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::call(Inspector::BackendDispatcher **a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v4 = *a2;
    *a2 = 0;
    v6 = v4;
    Inspector::BackendDispatcher::reportProtocolError();
    Inspector::BackendDispatcher::sendPendingErrors(a1[1]);
    result = v6;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v6, v5);
    }
  }

  else
  {
    WTF::JSONImpl::Object::create(&v7, a1);
    Inspector::BackendDispatcher::sendResponse();
    result = v7;
    v7 = 0;
    if (result)
    {
      if (*result == 1)
      {
        return WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*result;
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::hideWindowOfBrowsingContext(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10E6F30;
  a1[1] = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::hideWindowOfBrowsingContext(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10E6F30;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::hideWindowOfBrowsingContext(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::call(Inspector::BackendDispatcher **a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v4 = *a2;
    *a2 = 0;
    v6 = v4;
    Inspector::BackendDispatcher::reportProtocolError();
    Inspector::BackendDispatcher::sendPendingErrors(a1[1]);
    result = v6;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v6, v5);
    }
  }

  else
  {
    WTF::JSONImpl::Object::create(&v7, a1);
    Inspector::BackendDispatcher::sendResponse();
    result = v7;
    v7 = 0;
    if (result)
    {
      if (*result == 1)
      {
        return WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*result;
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::navigateBrowsingContext(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10E6F58;
  a1[1] = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::navigateBrowsingContext(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10E6F58;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::navigateBrowsingContext(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::call(Inspector::BackendDispatcher **a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v4 = *a2;
    *a2 = 0;
    v6 = v4;
    Inspector::BackendDispatcher::reportProtocolError();
    Inspector::BackendDispatcher::sendPendingErrors(a1[1]);
    result = v6;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v6, v5);
    }
  }

  else
  {
    WTF::JSONImpl::Object::create(&v7, a1);
    Inspector::BackendDispatcher::sendResponse();
    result = v7;
    v7 = 0;
    if (result)
    {
      if (*result == 1)
      {
        return WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*result;
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::goBackInBrowsingContext(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10E6F80;
  a1[1] = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::goBackInBrowsingContext(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10E6F80;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::goBackInBrowsingContext(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::call(Inspector::BackendDispatcher **a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v4 = *a2;
    *a2 = 0;
    v6 = v4;
    Inspector::BackendDispatcher::reportProtocolError();
    Inspector::BackendDispatcher::sendPendingErrors(a1[1]);
    result = v6;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v6, v5);
    }
  }

  else
  {
    WTF::JSONImpl::Object::create(&v7, a1);
    Inspector::BackendDispatcher::sendResponse();
    result = v7;
    v7 = 0;
    if (result)
    {
      if (*result == 1)
      {
        return WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*result;
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::goForwardInBrowsingContext(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10E6FA8;
  a1[1] = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::goForwardInBrowsingContext(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10E6FA8;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::goForwardInBrowsingContext(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::call(Inspector::BackendDispatcher **a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v4 = *a2;
    *a2 = 0;
    v6 = v4;
    Inspector::BackendDispatcher::reportProtocolError();
    Inspector::BackendDispatcher::sendPendingErrors(a1[1]);
    result = v6;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v6, v5);
    }
  }

  else
  {
    WTF::JSONImpl::Object::create(&v7, a1);
    Inspector::BackendDispatcher::sendResponse();
    result = v7;
    v7 = 0;
    if (result)
    {
      if (*result == 1)
      {
        return WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*result;
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::reloadBrowsingContext(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10E6FD0;
  a1[1] = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::reloadBrowsingContext(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10E6FD0;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::reloadBrowsingContext(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::call(Inspector::BackendDispatcher **a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v4 = *a2;
    *a2 = 0;
    v6 = v4;
    Inspector::BackendDispatcher::reportProtocolError();
    Inspector::BackendDispatcher::sendPendingErrors(a1[1]);
    result = v6;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v6, v5);
    }
  }

  else
  {
    WTF::JSONImpl::Object::create(&v7, a1);
    Inspector::BackendDispatcher::sendResponse();
    result = v7;
    v7 = 0;
    if (result)
    {
      if (*result == 1)
      {
        return WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*result;
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::waitForNavigationToComplete(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10E6FF8;
  a1[1] = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::waitForNavigationToComplete(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10E6FF8;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::waitForNavigationToComplete(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::call(Inspector::BackendDispatcher **a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v4 = *a2;
    *a2 = 0;
    v6 = v4;
    Inspector::BackendDispatcher::reportProtocolError();
    Inspector::BackendDispatcher::sendPendingErrors(a1[1]);
    result = v6;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v6, v5);
    }
  }

  else
  {
    WTF::JSONImpl::Object::create(&v7, a1);
    Inspector::BackendDispatcher::sendResponse();
    result = v7;
    v7 = 0;
    if (result)
    {
      if (*result == 1)
      {
        return WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*result;
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::evaluateJavaScriptFunction(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<WTF::String,std::experimental::fundamentals_v3::expected>>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10E7020;
  a1[1] = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::evaluateJavaScriptFunction(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<WTF::String,std::experimental::fundamentals_v3::expected>>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10E7020;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::evaluateJavaScriptFunction(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<WTF::String,std::experimental::fundamentals_v3::expected>>::call(Inspector::BackendDispatcher **a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 255)
  {
    goto LABEL_26;
  }

  v4 = *a2;
  *a2 = 0;
  v18 = v4;
  v19 = v2;
  if (v2)
  {
    if (v2 == 1)
    {
      Inspector::BackendDispatcher::reportProtocolError();
      Inspector::BackendDispatcher::sendPendingErrors(a1[1]);
      return std::experimental::fundamentals_v3::expected<WTF::String,WTF::String>::~expected(&v18, v5);
    }

LABEL_26:
    mpark::throw_bad_variant_access(a1);
  }

  v18 = 0;
  v22 = v4;
  WTF::JSONImpl::Object::create(&v21, a1);
  v6 = v21;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::JSONImpl::Value::create(&v23, &v22, v7);
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>((v6 + 16), &v20, &v23, v24);
  if (v24[16] == 1)
  {
    v9 = *(v6 + 36);
    if (v9 == *(v6 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v6 + 24, &v20);
    }

    else
    {
      v10 = *(v6 + 24);
      v11 = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
      }

      v12 = *(v6 + 36);
      *(v10 + 8 * v9) = v11;
      *(v6 + 36) = v12 + 1;
    }
  }

  v13 = v23;
  v23 = 0;
  if (v13)
  {
    if (*v13 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v13;
    }
  }

  v14 = v20;
  v20 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v8);
  }

  Inspector::BackendDispatcher::sendResponse();
  v15 = v21;
  v21 = 0;
  if (v15)
  {
    if (*v15 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v15;
    }
  }

  v16 = v22;
  v22 = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v5);
  }

  return std::experimental::fundamentals_v3::expected<WTF::String,WTF::String>::~expected(&v18, v5);
}

void *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::performMouseInteraction(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<WTF::Ref<Inspector::Protocol::Automation::Point,WTF::RawPtrTraits<Inspector::Protocol::Automation>,WTF::DefaultRefDerefTraits<Inspector::Protocol::Automation>>,WTF::String>>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10E7048;
  a1[1] = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::performMouseInteraction(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<WTF::Ref<Inspector::Protocol::Automation::Point,WTF::RawPtrTraits<Inspector::Protocol::Automation>,WTF::DefaultRefDerefTraits<Inspector::Protocol::Automation>>,WTF::String>>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10E7048;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::performMouseInteraction(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<WTF::Ref<Inspector::Protocol::Automation::Point,WTF::RawPtrTraits<Inspector::Protocol::Automation>,WTF::DefaultRefDerefTraits<Inspector::Protocol::Automation>>,WTF::String>>::call(Inspector::BackendDispatcher **a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 255)
  {
    goto LABEL_28;
  }

  v4 = *a2;
  *a2 = 0;
  v15 = v2;
  if (!v2)
  {
    WTF::JSONImpl::Object::create(&v18, a1);
    v7 = v18;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v16 = v4;
    WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>((v7 + 16), &v17, &v16, v19);
    if (v19[16] == 1)
    {
      v9 = *(v7 + 36);
      if (v9 == *(v7 + 32))
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v7 + 24, &v17);
      }

      else
      {
        v10 = *(v7 + 24);
        v11 = v17;
        if (v17)
        {
          atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
        }

        v12 = *(v7 + 36);
        *(v10 + 8 * v9) = v11;
        *(v7 + 36) = v12 + 1;
      }
    }

    v13 = v16;
    v16 = 0;
    if (v13)
    {
      if (*v13 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v13;
      }
    }

    v14 = v17;
    v17 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v8);
    }

    Inspector::BackendDispatcher::sendResponse();
    result = v18;
    v18 = 0;
    goto LABEL_22;
  }

  if (v2 != 1)
  {
LABEL_28:
    mpark::throw_bad_variant_access(a1);
  }

  Inspector::BackendDispatcher::reportProtocolError();
  result = Inspector::BackendDispatcher::sendPendingErrors(a1[1]);
  if (v15 == 255)
  {
    return result;
  }

  result = v4;
  if (v15)
  {
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(v4, v6);
      }
    }

    return result;
  }

LABEL_22:
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::performKeyboardInteractions(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10E7070;
  a1[1] = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::performKeyboardInteractions(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10E7070;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::performKeyboardInteractions(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::call(Inspector::BackendDispatcher **a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v4 = *a2;
    *a2 = 0;
    v6 = v4;
    Inspector::BackendDispatcher::reportProtocolError();
    Inspector::BackendDispatcher::sendPendingErrors(a1[1]);
    result = v6;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v6, v5);
    }
  }

  else
  {
    WTF::JSONImpl::Object::create(&v7, a1);
    Inspector::BackendDispatcher::sendResponse();
    result = v7;
    v7 = 0;
    if (result)
    {
      if (*result == 1)
      {
        return WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*result;
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::performInteractionSequence(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10E7098;
  a1[1] = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::performInteractionSequence(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10E7098;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::performInteractionSequence(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::call(Inspector::BackendDispatcher **a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v4 = *a2;
    *a2 = 0;
    v6 = v4;
    Inspector::BackendDispatcher::reportProtocolError();
    Inspector::BackendDispatcher::sendPendingErrors(a1[1]);
    result = v6;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v6, v5);
    }
  }

  else
  {
    WTF::JSONImpl::Object::create(&v7, a1);
    Inspector::BackendDispatcher::sendResponse();
    result = v7;
    v7 = 0;
    if (result)
    {
      if (*result == 1)
      {
        return WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*result;
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::cancelInteractionSequence(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10E70C0;
  a1[1] = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::cancelInteractionSequence(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10E70C0;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::cancelInteractionSequence(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::call(Inspector::BackendDispatcher **a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v4 = *a2;
    *a2 = 0;
    v6 = v4;
    Inspector::BackendDispatcher::reportProtocolError();
    Inspector::BackendDispatcher::sendPendingErrors(a1[1]);
    result = v6;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v6, v5);
    }
  }

  else
  {
    WTF::JSONImpl::Object::create(&v7, a1);
    Inspector::BackendDispatcher::sendResponse();
    result = v7;
    v7 = 0;
    if (result)
    {
      if (*result == 1)
      {
        return WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*result;
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::takeScreenshot(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<WTF::String,std::experimental::fundamentals_v3::expected>>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10E70E8;
  a1[1] = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::takeScreenshot(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<WTF::String,std::experimental::fundamentals_v3::expected>>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10E70E8;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::takeScreenshot(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<WTF::String,std::experimental::fundamentals_v3::expected>>::call(Inspector::BackendDispatcher **a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 255)
  {
    goto LABEL_26;
  }

  v4 = *a2;
  *a2 = 0;
  v18 = v4;
  v19 = v2;
  if (v2)
  {
    if (v2 == 1)
    {
      Inspector::BackendDispatcher::reportProtocolError();
      Inspector::BackendDispatcher::sendPendingErrors(a1[1]);
      return std::experimental::fundamentals_v3::expected<WTF::String,WTF::String>::~expected(&v18, v5);
    }

LABEL_26:
    mpark::throw_bad_variant_access(a1);
  }

  v18 = 0;
  v22 = v4;
  WTF::JSONImpl::Object::create(&v21, a1);
  v6 = v21;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::JSONImpl::Value::create(&v23, &v22, v7);
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>((v6 + 16), &v20, &v23, v24);
  if (v24[16] == 1)
  {
    v9 = *(v6 + 36);
    if (v9 == *(v6 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v6 + 24, &v20);
    }

    else
    {
      v10 = *(v6 + 24);
      v11 = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
      }

      v12 = *(v6 + 36);
      *(v10 + 8 * v9) = v11;
      *(v6 + 36) = v12 + 1;
    }
  }

  v13 = v23;
  v23 = 0;
  if (v13)
  {
    if (*v13 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v13;
    }
  }

  v14 = v20;
  v20 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v8);
  }

  Inspector::BackendDispatcher::sendResponse();
  v15 = v21;
  v21 = 0;
  if (v15)
  {
    if (*v15 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v15;
    }
  }

  v16 = v22;
  v22 = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v5);
  }

  return std::experimental::fundamentals_v3::expected<WTF::String,WTF::String>::~expected(&v18, v5);
}

void *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::resolveChildFrameHandle(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<WTF::String,std::experimental::fundamentals_v3::expected>>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10E7110;
  a1[1] = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::resolveChildFrameHandle(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<WTF::String,std::experimental::fundamentals_v3::expected>>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10E7110;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::resolveChildFrameHandle(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<WTF::String,std::experimental::fundamentals_v3::expected>>::call(Inspector::BackendDispatcher **a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 255)
  {
    goto LABEL_26;
  }

  v4 = *a2;
  *a2 = 0;
  v18 = v4;
  v19 = v2;
  if (v2)
  {
    if (v2 == 1)
    {
      Inspector::BackendDispatcher::reportProtocolError();
      Inspector::BackendDispatcher::sendPendingErrors(a1[1]);
      return std::experimental::fundamentals_v3::expected<WTF::String,WTF::String>::~expected(&v18, v5);
    }

LABEL_26:
    mpark::throw_bad_variant_access(a1);
  }

  v18 = 0;
  v22 = v4;
  WTF::JSONImpl::Object::create(&v21, a1);
  v6 = v21;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::JSONImpl::Value::create(&v23, &v22, v7);
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>((v6 + 16), &v20, &v23, v24);
  if (v24[16] == 1)
  {
    v9 = *(v6 + 36);
    if (v9 == *(v6 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v6 + 24, &v20);
    }

    else
    {
      v10 = *(v6 + 24);
      v11 = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
      }

      v12 = *(v6 + 36);
      *(v10 + 8 * v9) = v11;
      *(v6 + 36) = v12 + 1;
    }
  }

  v13 = v23;
  v23 = 0;
  if (v13)
  {
    if (*v13 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v13;
    }
  }

  v14 = v20;
  v20 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v8);
  }

  Inspector::BackendDispatcher::sendResponse();
  v15 = v21;
  v21 = 0;
  if (v15)
  {
    if (*v15 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v15;
    }
  }

  v16 = v22;
  v22 = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v5);
  }

  return std::experimental::fundamentals_v3::expected<WTF::String,WTF::String>::~expected(&v18, v5);
}

void *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::resolveParentFrameHandle(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<WTF::String,std::experimental::fundamentals_v3::expected>>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10E7138;
  a1[1] = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::resolveParentFrameHandle(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<WTF::String,std::experimental::fundamentals_v3::expected>>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10E7138;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::resolveParentFrameHandle(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<WTF::String,std::experimental::fundamentals_v3::expected>>::call(Inspector::BackendDispatcher **a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 255)
  {
    goto LABEL_26;
  }

  v4 = *a2;
  *a2 = 0;
  v18 = v4;
  v19 = v2;
  if (v2)
  {
    if (v2 == 1)
    {
      Inspector::BackendDispatcher::reportProtocolError();
      Inspector::BackendDispatcher::sendPendingErrors(a1[1]);
      return std::experimental::fundamentals_v3::expected<WTF::String,WTF::String>::~expected(&v18, v5);
    }

LABEL_26:
    mpark::throw_bad_variant_access(a1);
  }

  v18 = 0;
  v22 = v4;
  WTF::JSONImpl::Object::create(&v21, a1);
  v6 = v21;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::JSONImpl::Value::create(&v23, &v22, v7);
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>((v6 + 16), &v20, &v23, v24);
  if (v24[16] == 1)
  {
    v9 = *(v6 + 36);
    if (v9 == *(v6 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v6 + 24, &v20);
    }

    else
    {
      v10 = *(v6 + 24);
      v11 = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
      }

      v12 = *(v6 + 36);
      *(v10 + 8 * v9) = v11;
      *(v6 + 36) = v12 + 1;
    }
  }

  v13 = v23;
  v23 = 0;
  if (v13)
  {
    if (*v13 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v13;
    }
  }

  v14 = v20;
  v20 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v8);
  }

  Inspector::BackendDispatcher::sendResponse();
  v15 = v21;
  v21 = 0;
  if (v15)
  {
    if (*v15 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v15;
    }
  }

  v16 = v22;
  v22 = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v5);
  }

  return std::experimental::fundamentals_v3::expected<WTF::String,WTF::String>::~expected(&v18, v5);
}

void *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::computeElementLayout(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<std::tuple<WTF::Ref<Inspector::Protocol::Automation::Rect,WTF::RawPtrTraits<Inspector::Protocol::Automation>,WTF::DefaultRefDerefTraits<Inspector::Protocol::Automation>>,WTF::RefPtr<Inspector::Protocol::Point,WTF::RawPtrTraits<WTF::Ref<Inspector::Protocol::Automation::Rect,WTF::RawPtrTraits<Inspector::Protocol::Automation>,WTF::DefaultRefDerefTraits<Inspector::Protocol::Automation>>>,WTF::DefaultRefDerefTraits<WTF::Ref<Inspector::Protocol::Automation::Rect,WTF::RawPtrTraits<Inspector::Protocol::Automation>,WTF::DefaultRefDerefTraits<Inspector::Protocol::Automation>>>>,BOOL>,WTF::String>>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10E7160;
  a1[1] = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::computeElementLayout(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<std::tuple<WTF::Ref<Inspector::Protocol::Automation::Rect,WTF::RawPtrTraits<Inspector::Protocol::Automation>,WTF::DefaultRefDerefTraits<Inspector::Protocol::Automation>>,WTF::RefPtr<Inspector::Protocol::Point,WTF::RawPtrTraits<WTF::Ref<Inspector::Protocol::Automation::Rect,WTF::RawPtrTraits<Inspector::Protocol::Automation>,WTF::DefaultRefDerefTraits<Inspector::Protocol::Automation>>>,WTF::DefaultRefDerefTraits<WTF::Ref<Inspector::Protocol::Automation::Rect,WTF::RawPtrTraits<Inspector::Protocol::Automation>,WTF::DefaultRefDerefTraits<Inspector::Protocol::Automation>>>>,BOOL>,WTF::String>>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10E7160;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::computeElementLayout(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<std::tuple<WTF::Ref<Inspector::Protocol::Automation::Rect,WTF::RawPtrTraits<Inspector::Protocol::Automation>,WTF::DefaultRefDerefTraits<Inspector::Protocol::Automation>>,WTF::RefPtr<Inspector::Protocol::Point,WTF::RawPtrTraits<WTF::Ref<Inspector::Protocol::Automation::Rect,WTF::RawPtrTraits<Inspector::Protocol::Automation>,WTF::DefaultRefDerefTraits<Inspector::Protocol::Automation>>>,WTF::DefaultRefDerefTraits<WTF::Ref<Inspector::Protocol::Automation::Rect,WTF::RawPtrTraits<Inspector::Protocol::Automation>,WTF::DefaultRefDerefTraits<Inspector::Protocol::Automation>>>>,BOOL>,WTF::String>>::call(Inspector::BackendDispatcher **a1, uint64_t a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 24);
  if (v2 == 255)
  {
    goto LABEL_59;
  }

  v4 = *a2;
  *a2 = 0;
  v39 = v4;
  if (v2)
  {
    v42 = v2;
    if (v2 == 1)
    {
      Inspector::BackendDispatcher::reportProtocolError();
      result = Inspector::BackendDispatcher::sendPendingErrors(a1[1]);
      if (v42 != 255)
      {
        result = v39;
        v39 = 0;
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

LABEL_59:
    mpark::throw_bad_variant_access(a1);
  }

  v7 = *(a2 + 8);
  *(a2 + 8) = 0;
  v8 = *(a2 + 16);
  v41 = v8;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  WTF::JSONImpl::Object::create(&v35, a1);
  v9 = v35;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v36 = v37[0];
  v34 = v4;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>((v9 + 16), &v36, &v34, v37);
  if (v38)
  {
    v11 = *(v9 + 36);
    if (v11 == *(v9 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v9 + 24, &v36);
    }

    else
    {
      v12 = *(v9 + 24);
      v13 = v36;
      if (v36)
      {
        atomic_fetch_add_explicit(v36, 2u, memory_order_relaxed);
      }

      v14 = *(v9 + 36);
      *(v12 + 8 * v11) = v13;
      *(v9 + 36) = v14 + 1;
    }
  }

  v15 = v34;
  v34 = 0;
  if (v15)
  {
    if (*v15 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v15;
    }
  }

  v16 = v36;
  v36 = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v10);
    if (v7)
    {
      goto LABEL_21;
    }
  }

  else if (v7)
  {
LABEL_21:
    v17 = v35;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v36 = v37[0];
    v34 = v7;
    WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>((v17 + 16), &v36, &v34, v37);
    if (v38 == 1)
    {
      v19 = *(v17 + 36);
      if (v19 == *(v17 + 32))
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v17 + 24, &v36);
      }

      else
      {
        v20 = *(v17 + 24);
        v21 = v36;
        if (v36)
        {
          atomic_fetch_add_explicit(v36, 2u, memory_order_relaxed);
        }

        v22 = *(v17 + 36);
        *(v20 + 8 * v19) = v21;
        *(v17 + 36) = v22 + 1;
      }
    }

    v23 = v34;
    v34 = 0;
    if (v23)
    {
      if (*v23 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v23;
      }
    }

    v24 = v36;
    v36 = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v18);
    }
  }

  v25 = v35;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::JSONImpl::Value::create((v8 & 1));
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>((v25 + 16), &v34, &v36, v37);
  if (v38 == 1)
  {
    v27 = *(v25 + 36);
    if (v27 == *(v25 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v25 + 24, &v34);
    }

    else
    {
      v28 = *(v25 + 24);
      v29 = v34;
      if (v34)
      {
        atomic_fetch_add_explicit(v34, 2u, memory_order_relaxed);
      }

      v30 = *(v25 + 36);
      *(v28 + 8 * v27) = v29;
      *(v25 + 36) = v30 + 1;
    }
  }

  v31 = v36;
  v36 = 0;
  if (v31)
  {
    if (*v31 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v31;
    }
  }

  v32 = v34;
  v34 = 0;
  if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v32, v26);
  }

  Inspector::BackendDispatcher::sendResponse();
  v33 = v35;
  v35 = 0;
  if (v33)
  {
    if (*v33 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v33;
    }
  }

  v40 = 0;
  result = v39;
  v39 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::getComputedRole(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<WTF::String,std::experimental::fundamentals_v3::expected>>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10E7188;
  a1[1] = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::getComputedRole(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<WTF::String,std::experimental::fundamentals_v3::expected>>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10E7188;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::getComputedRole(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<WTF::String,std::experimental::fundamentals_v3::expected>>::call(Inspector::BackendDispatcher **a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 255)
  {
    goto LABEL_26;
  }

  v4 = *a2;
  *a2 = 0;
  v18 = v4;
  v19 = v2;
  if (v2)
  {
    if (v2 == 1)
    {
      Inspector::BackendDispatcher::reportProtocolError();
      Inspector::BackendDispatcher::sendPendingErrors(a1[1]);
      return std::experimental::fundamentals_v3::expected<WTF::String,WTF::String>::~expected(&v18, v5);
    }

LABEL_26:
    mpark::throw_bad_variant_access(a1);
  }

  v18 = 0;
  v22 = v4;
  WTF::JSONImpl::Object::create(&v21, a1);
  v6 = v21;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::JSONImpl::Value::create(&v23, &v22, v7);
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>((v6 + 16), &v20, &v23, v24);
  if (v24[16] == 1)
  {
    v9 = *(v6 + 36);
    if (v9 == *(v6 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v6 + 24, &v20);
    }

    else
    {
      v10 = *(v6 + 24);
      v11 = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
      }

      v12 = *(v6 + 36);
      *(v10 + 8 * v9) = v11;
      *(v6 + 36) = v12 + 1;
    }
  }

  v13 = v23;
  v23 = 0;
  if (v13)
  {
    if (*v13 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v13;
    }
  }

  v14 = v20;
  v20 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v8);
  }

  Inspector::BackendDispatcher::sendResponse();
  v15 = v21;
  v21 = 0;
  if (v15)
  {
    if (*v15 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v15;
    }
  }

  v16 = v22;
  v22 = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v5);
  }

  return std::experimental::fundamentals_v3::expected<WTF::String,WTF::String>::~expected(&v18, v5);
}

void *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::getComputedLabel(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<WTF::String,std::experimental::fundamentals_v3::expected>>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10E71B0;
  a1[1] = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::getComputedLabel(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<WTF::String,std::experimental::fundamentals_v3::expected>>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10E71B0;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::getComputedLabel(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<WTF::String,std::experimental::fundamentals_v3::expected>>::call(Inspector::BackendDispatcher **a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 255)
  {
    goto LABEL_26;
  }

  v4 = *a2;
  *a2 = 0;
  v18 = v4;
  v19 = v2;
  if (v2)
  {
    if (v2 == 1)
    {
      Inspector::BackendDispatcher::reportProtocolError();
      Inspector::BackendDispatcher::sendPendingErrors(a1[1]);
      return std::experimental::fundamentals_v3::expected<WTF::String,WTF::String>::~expected(&v18, v5);
    }

LABEL_26:
    mpark::throw_bad_variant_access(a1);
  }

  v18 = 0;
  v22 = v4;
  WTF::JSONImpl::Object::create(&v21, a1);
  v6 = v21;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::JSONImpl::Value::create(&v23, &v22, v7);
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>((v6 + 16), &v20, &v23, v24);
  if (v24[16] == 1)
  {
    v9 = *(v6 + 36);
    if (v9 == *(v6 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v6 + 24, &v20);
    }

    else
    {
      v10 = *(v6 + 24);
      v11 = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
      }

      v12 = *(v6 + 36);
      *(v10 + 8 * v9) = v11;
      *(v6 + 36) = v12 + 1;
    }
  }

  v13 = v23;
  v23 = 0;
  if (v13)
  {
    if (*v13 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v13;
    }
  }

  v14 = v20;
  v20 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v8);
  }

  Inspector::BackendDispatcher::sendResponse();
  v15 = v21;
  v21 = 0;
  if (v15)
  {
    if (*v15 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v15;
    }
  }

  v16 = v22;
  v22 = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v5);
  }

  return std::experimental::fundamentals_v3::expected<WTF::String,WTF::String>::~expected(&v18, v5);
}

void *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::selectOptionElement(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10E71D8;
  a1[1] = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::selectOptionElement(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10E71D8;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::selectOptionElement(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::call(Inspector::BackendDispatcher **a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v4 = *a2;
    *a2 = 0;
    v6 = v4;
    Inspector::BackendDispatcher::reportProtocolError();
    Inspector::BackendDispatcher::sendPendingErrors(a1[1]);
    result = v6;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v6, v5);
    }
  }

  else
  {
    WTF::JSONImpl::Object::create(&v7, a1);
    Inspector::BackendDispatcher::sendResponse();
    result = v7;
    v7 = 0;
    if (result)
    {
      if (*result == 1)
      {
        return WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*result;
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::setFilesForInputFileUpload(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10E7200;
  a1[1] = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::setFilesForInputFileUpload(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10E7200;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::setFilesForInputFileUpload(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::call(Inspector::BackendDispatcher **a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v4 = *a2;
    *a2 = 0;
    v6 = v4;
    Inspector::BackendDispatcher::reportProtocolError();
    Inspector::BackendDispatcher::sendPendingErrors(a1[1]);
    result = v6;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v6, v5);
    }
  }

  else
  {
    WTF::JSONImpl::Object::create(&v7, a1);
    Inspector::BackendDispatcher::sendResponse();
    result = v7;
    v7 = 0;
    if (result)
    {
      if (*result == 1)
      {
        return WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*result;
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::getAllCookies(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::Automation::Cookie>,WTF::RawPtrTraits<Inspector::Protocol::Automation::Cookie>,WTF::DefaultRefDerefTraits<Inspector::Protocol::Automation::Cookie>>,WTF::String>>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10E7228;
  a1[1] = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::getAllCookies(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::Automation::Cookie>,WTF::RawPtrTraits<Inspector::Protocol::Automation::Cookie>,WTF::DefaultRefDerefTraits<Inspector::Protocol::Automation::Cookie>>,WTF::String>>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10E7228;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::getAllCookies(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::Automation::Cookie>,WTF::RawPtrTraits<Inspector::Protocol::Automation::Cookie>,WTF::DefaultRefDerefTraits<Inspector::Protocol::Automation::Cookie>>,WTF::String>>::call(Inspector::BackendDispatcher **a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 255)
  {
    goto LABEL_28;
  }

  v4 = *a2;
  *a2 = 0;
  v15 = v2;
  if (!v2)
  {
    WTF::JSONImpl::Object::create(&v18, a1);
    v7 = v18;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v16 = v4;
    WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>((v7 + 16), &v17, &v16, v19);
    if (v19[16] == 1)
    {
      v9 = *(v7 + 36);
      if (v9 == *(v7 + 32))
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v7 + 24, &v17);
      }

      else
      {
        v10 = *(v7 + 24);
        v11 = v17;
        if (v17)
        {
          atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
        }

        v12 = *(v7 + 36);
        *(v10 + 8 * v9) = v11;
        *(v7 + 36) = v12 + 1;
      }
    }

    v13 = v16;
    v16 = 0;
    if (v13)
    {
      if (*v13 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v13;
      }
    }

    v14 = v17;
    v17 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v8);
    }

    Inspector::BackendDispatcher::sendResponse();
    result = v18;
    v18 = 0;
    goto LABEL_22;
  }

  if (v2 != 1)
  {
LABEL_28:
    mpark::throw_bad_variant_access(a1);
  }

  Inspector::BackendDispatcher::reportProtocolError();
  result = Inspector::BackendDispatcher::sendPendingErrors(a1[1]);
  if (v15 == 255)
  {
    return result;
  }

  result = v4;
  if (v15)
  {
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(v4, v6);
      }
    }

    return result;
  }

LABEL_22:
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::deleteSingleCookie(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10E7250;
  a1[1] = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::deleteSingleCookie(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10E7250;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::deleteSingleCookie(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::call(Inspector::BackendDispatcher **a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v4 = *a2;
    *a2 = 0;
    v6 = v4;
    Inspector::BackendDispatcher::reportProtocolError();
    Inspector::BackendDispatcher::sendPendingErrors(a1[1]);
    result = v6;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v6, v5);
    }
  }

  else
  {
    WTF::JSONImpl::Object::create(&v7, a1);
    Inspector::BackendDispatcher::sendResponse();
    result = v7;
    v7 = 0;
    if (result)
    {
      if (*result == 1)
      {
        return WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*result;
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::addSingleCookie(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10E7278;
  a1[1] = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::addSingleCookie(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10E7278;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<Inspector::AutomationBackendDispatcher::addSingleCookie(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::call(Inspector::BackendDispatcher **a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v4 = *a2;
    *a2 = 0;
    v6 = v4;
    Inspector::BackendDispatcher::reportProtocolError();
    Inspector::BackendDispatcher::sendPendingErrors(a1[1]);
    result = v6;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v6, v5);
    }
  }

  else
  {
    WTF::JSONImpl::Object::create(&v7, a1);
    Inspector::BackendDispatcher::sendResponse();
    result = v7;
    v7 = 0;
    if (result)
    {
      if (*result == 1)
      {
        return WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*result;
      }
    }
  }

  return result;
}

WTF::JSONImpl::Value *Inspector::AutomationFrontendDispatcher::fileChooserDismissed(WTF::JSONImpl::Object *a1, WTF::JSONImpl::Value *a2, WTF::JSONImpl::Value *a3, WTF::StringImpl **a4)
{
  WTF::JSONImpl::Object::create(&v59, a1);
  v8 = v59;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::JSONImpl::Value::create(&v60, &v57, v9);
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>(v8 + 2, &v58, &v60, v61);
  if (v62 == 1)
  {
    v11 = *(v8 + 9);
    if (v11 == *(v8 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v8 + 24, &v58);
    }

    else
    {
      v12 = *(v8 + 3);
      v13 = v58;
      if (v58)
      {
        atomic_fetch_add_explicit(v58, 2u, memory_order_relaxed);
      }

      v14 = *(v8 + 9);
      *(v12 + 8 * v11) = v13;
      *(v8 + 9) = v14 + 1;
    }
  }

  v15 = v60;
  v60 = 0;
  if (v15)
  {
    if (*v15 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v15;
    }
  }

  v16 = v57;
  v57 = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v10);
  }

  v17 = v58;
  v58 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v17 = WTF::StringImpl::destroy(v17, v10);
  }

  WTF::JSONImpl::Object::create(&v58, v17);
  v18 = v58;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v57 = v61[0];
  WTF::JSONImpl::Value::create(&v60, a2, v19);
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>(v18 + 2, &v57, &v60, v61);
  if (v62 == 1)
  {
    v21 = *(v18 + 9);
    if (v21 == *(v18 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v18 + 24, &v57);
    }

    else
    {
      v22 = *(v18 + 3);
      v23 = v57;
      if (v57)
      {
        atomic_fetch_add_explicit(v57, 2u, memory_order_relaxed);
      }

      v24 = *(v18 + 9);
      *(v22 + 8 * v21) = v23;
      *(v18 + 9) = v24 + 1;
    }
  }

  v25 = v60;
  v60 = 0;
  if (v25)
  {
    if (*v25 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v25;
    }
  }

  v26 = v57;
  v57 = 0;
  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, v20);
  }

  v27 = v58;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v57 = v61[0];
  WTF::JSONImpl::Value::create(a3);
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>(v27 + 2, &v57, &v60, v61);
  if (v62 == 1)
  {
    v29 = *(v27 + 9);
    if (v29 == *(v27 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v27 + 24, &v57);
    }

    else
    {
      v30 = *(v27 + 3);
      v31 = v57;
      if (v57)
      {
        atomic_fetch_add_explicit(v57, 2u, memory_order_relaxed);
      }

      v32 = *(v27 + 9);
      *(v30 + 8 * v29) = v31;
      *(v27 + 9) = v32 + 1;
    }
  }

  v33 = v60;
  v60 = 0;
  if (v33)
  {
    if (*v33 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v33;
    }
  }

  v34 = v57;
  v57 = 0;
  if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v34, v28);
  }

  if (*a4)
  {
    v35 = v58;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v60 = v61[0];
    v36 = *a4;
    *a4 = 0;
    v57 = v36;
    WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>(v35 + 2, &v60, &v57, v61);
    if (v62 == 1)
    {
      v38 = *(v35 + 9);
      if (v38 == *(v35 + 8))
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v35 + 24, &v60);
      }

      else
      {
        v39 = *(v35 + 3);
        v40 = v60;
        if (v60)
        {
          atomic_fetch_add_explicit(v60, 2u, memory_order_relaxed);
        }

        v41 = *(v35 + 9);
        *(v39 + 8 * v38) = v40;
        *(v35 + 9) = v41 + 1;
      }
    }

    v42 = v57;
    v57 = 0;
    if (v42)
    {
      if (*v42 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v42;
      }
    }

    v43 = v60;
    v60 = 0;
    if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v43, v37);
    }
  }

  v44 = v59;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v57 = v58;
  v58 = 0;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>(v44 + 2, &v60, &v57, v61);
  if (v62 == 1)
  {
    v46 = *(v44 + 9);
    if (v46 == *(v44 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v44 + 24, &v60);
    }

    else
    {
      v47 = *(v44 + 3);
      v48 = v60;
      if (v60)
      {
        atomic_fetch_add_explicit(v60, 2u, memory_order_relaxed);
      }

      v49 = *(v44 + 9);
      *(v47 + 8 * v46) = v48;
      *(v44 + 9) = v49 + 1;
    }
  }

  v50 = v57;
  v57 = 0;
  if (v50)
  {
    if (*v50 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v50;
    }
  }

  v51 = v60;
  v60 = 0;
  if (v51 && atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v51, v45);
  }

  v52 = *a1;
  WTF::JSONImpl::Value::toJSONString(v61, v59);
  Inspector::FrontendRouter::sendEvent(v52, v61);
  v54 = v61[0];
  v61[0] = 0;
  if (v54 && atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v54, v53);
  }

  v55 = v58;
  v58 = 0;
  if (v55)
  {
    if (*v55 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v55;
    }
  }

  result = v59;
  v59 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

WTF::JSONImpl::Value *Inspector::AutomationFrontendDispatcher::browsingContextCleared(Inspector::AutomationFrontendDispatcher *this, const WTF::String *a2)
{
  WTF::JSONImpl::Object::create(&v38, this);
  v4 = v38;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::JSONImpl::Value::create(&v39, &v36, v5);
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>(v4 + 2, &v37, &v39, v40);
  if (v41 == 1)
  {
    v7 = *(v4 + 9);
    if (v7 == *(v4 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v4 + 24, &v37);
    }

    else
    {
      v8 = *(v4 + 3);
      v9 = v37;
      if (v37)
      {
        atomic_fetch_add_explicit(v37, 2u, memory_order_relaxed);
      }

      v10 = *(v4 + 9);
      *(v8 + 8 * v7) = v9;
      *(v4 + 9) = v10 + 1;
    }
  }

  v11 = v39;
  v39 = 0;
  if (v11)
  {
    if (*v11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v11;
    }
  }

  v12 = v36;
  v36 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v6);
  }

  v13 = v37;
  v37 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v13 = WTF::StringImpl::destroy(v13, v6);
  }

  WTF::JSONImpl::Object::create(&v37, v13);
  v14 = v37;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v36 = v40[0];
  WTF::JSONImpl::Value::create(&v39, a2, v15);
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>(v14 + 2, &v36, &v39, v40);
  if (v41 == 1)
  {
    v17 = *(v14 + 9);
    if (v17 == *(v14 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v14 + 24, &v36);
    }

    else
    {
      v18 = *(v14 + 3);
      v19 = v36;
      if (v36)
      {
        atomic_fetch_add_explicit(v36, 2u, memory_order_relaxed);
      }

      v20 = *(v14 + 9);
      *(v18 + 8 * v17) = v19;
      *(v14 + 9) = v20 + 1;
    }
  }

  v21 = v39;
  v39 = 0;
  if (v21)
  {
    if (*v21 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v21;
    }
  }

  v22 = v36;
  v36 = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v16);
  }

  v23 = v38;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v36 = v37;
  v37 = 0;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>(v23 + 2, &v39, &v36, v40);
  if (v41 == 1)
  {
    v25 = *(v23 + 9);
    if (v25 == *(v23 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v23 + 24, &v39);
    }

    else
    {
      v26 = *(v23 + 3);
      v27 = v39;
      if (v39)
      {
        atomic_fetch_add_explicit(v39, 2u, memory_order_relaxed);
      }

      v28 = *(v23 + 9);
      *(v26 + 8 * v25) = v27;
      *(v23 + 9) = v28 + 1;
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

  v30 = v39;
  v39 = 0;
  if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v30, v24);
  }

  v31 = *this;
  WTF::JSONImpl::Value::toJSONString(v40, v38);
  Inspector::FrontendRouter::sendEvent(v31, v40);
  v33 = v40[0];
  v40[0] = 0;
  if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v33, v32);
  }

  v34 = v37;
  v37 = 0;
  if (v34)
  {
    if (*v34 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v34;
    }
  }

  result = v38;
  v38 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

WTF::JSONImpl::Value *Inspector::AutomationFrontendDispatcher::bidiMessageSent(Inspector::AutomationFrontendDispatcher *this, const WTF::String *a2)
{
  WTF::JSONImpl::Object::create(&v38, this);
  v4 = v38;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::JSONImpl::Value::create(&v39, &v36, v5);
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>(v4 + 2, &v37, &v39, v40);
  if (v41 == 1)
  {
    v7 = *(v4 + 9);
    if (v7 == *(v4 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v4 + 24, &v37);
    }

    else
    {
      v8 = *(v4 + 3);
      v9 = v37;
      if (v37)
      {
        atomic_fetch_add_explicit(v37, 2u, memory_order_relaxed);
      }

      v10 = *(v4 + 9);
      *(v8 + 8 * v7) = v9;
      *(v4 + 9) = v10 + 1;
    }
  }

  v11 = v39;
  v39 = 0;
  if (v11)
  {
    if (*v11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v11;
    }
  }

  v12 = v36;
  v36 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v6);
  }

  v13 = v37;
  v37 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v13 = WTF::StringImpl::destroy(v13, v6);
  }

  WTF::JSONImpl::Object::create(&v37, v13);
  v14 = v37;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v36 = v40[0];
  WTF::JSONImpl::Value::create(&v39, a2, v15);
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>(v14 + 2, &v36, &v39, v40);
  if (v41 == 1)
  {
    v17 = *(v14 + 9);
    if (v17 == *(v14 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v14 + 24, &v36);
    }

    else
    {
      v18 = *(v14 + 3);
      v19 = v36;
      if (v36)
      {
        atomic_fetch_add_explicit(v36, 2u, memory_order_relaxed);
      }

      v20 = *(v14 + 9);
      *(v18 + 8 * v17) = v19;
      *(v14 + 9) = v20 + 1;
    }
  }

  v21 = v39;
  v39 = 0;
  if (v21)
  {
    if (*v21 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v21;
    }
  }

  v22 = v36;
  v36 = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v16);
  }

  v23 = v38;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v36 = v37;
  v37 = 0;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>(v23 + 2, &v39, &v36, v40);
  if (v41 == 1)
  {
    v25 = *(v23 + 9);
    if (v25 == *(v23 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v23 + 24, &v39);
    }

    else
    {
      v26 = *(v23 + 3);
      v27 = v39;
      if (v39)
      {
        atomic_fetch_add_explicit(v39, 2u, memory_order_relaxed);
      }

      v28 = *(v23 + 9);
      *(v26 + 8 * v25) = v27;
      *(v23 + 9) = v28 + 1;
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

  v30 = v39;
  v39 = 0;
  if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v30, v24);
  }

  v31 = *this;
  WTF::JSONImpl::Value::toJSONString(v40, v38);
  Inspector::FrontendRouter::sendEvent(v31, v40);
  v33 = v40[0];
  v40[0] = 0;
  if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v33, v32);
  }

  v34 = v37;
  v37 = 0;
  if (v34)
  {
    if (*v34 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v34;
    }
  }

  result = v38;
  v38 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

uint64_t Inspector::Protocol::AutomationHelpers::getEnumConstantValue@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  if (this >= 0x85)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = a2;
  v3 = (&Inspector::Protocol::AutomationHelpers::enum_constant_values)[2 * this + 1];
  if (!v3)
  {
LABEL_7:
    *v2 = 0;
    return this;
  }

  if (v3 == 1)
  {
    v4 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
  }

  else
  {
    this = WTF::StringImpl::createWithoutCopyingNonEmpty();
    v4 = v5;
  }

  *v2 = v4;
  return this;
}

uint64_t Inspector::Protocol::AutomationHelpers::parseEnumValueFromString<Inspector::Protocol::Automation::CoordinateSystem>(uint64_t result)
{
  v1 = result;
  v2 = 0;
  while (1)
  {
    v3 = Inspector::Protocol::AutomationHelpers::parseEnumValueFromString<Inspector::Protocol::Automation::CoordinateSystem>(WTF::String const&)::constantValues[v2];
    if (v3 >= 0x85)
    {
      break;
    }

    v4 = &(&Inspector::Protocol::AutomationHelpers::enum_constant_values)[2 * v3];
    v5 = *v4;
    v6 = v4[1];
    v7 = v6 != 0;
    v8 = v6 - 1;
    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    result = MEMORY[0x19EB01EF0](*v1, v5, v9);
    if (result)
    {
      v10 = 0x100000000;
      return v10 | v3;
    }

    if (++v2 == 3)
    {
      v3 = 0;
      v10 = 0;
      return v10 | v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t Inspector::Protocol::AutomationHelpers::parseEnumValueFromString<Inspector::Protocol::Automation::BrowsingContextPresentation>(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = 0;
  do
  {
    v4 = Inspector::Protocol::AutomationHelpers::parseEnumValueFromString<Inspector::Protocol::Automation::BrowsingContextPresentation>(WTF::String const&)::constantValues[v3];
    if (v4 >= 0x85)
    {
      __break(1u);
      return result;
    }

    v5 = &(&Inspector::Protocol::AutomationHelpers::enum_constant_values)[2 * v4];
    v6 = *v5;
    v7 = v5[1];
    v8 = v7 != 0;
    v9 = v7 - 1;
    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    result = MEMORY[0x19EB01EF0](*v1, v6, v10);
    v11 = v2 | result;
    v2 = 1;
    v3 = 1;
  }

  while ((v11 & 1) == 0);
  if (result)
  {
    return v4 | 0x100000000;
  }

  else
  {
    return 0;
  }
}

uint64_t Inspector::Protocol::AutomationHelpers::parseEnumValueFromString<Inspector::Protocol::Automation::ErrorMessage>(uint64_t result)
{
  v1 = result;
  v2 = 0;
  while (1)
  {
    v3 = Inspector::Protocol::AutomationHelpers::parseEnumValueFromString<Inspector::Protocol::Automation::ErrorMessage>(WTF::String const&)::constantValues[v2];
    if (v3 >= 0x85)
    {
      break;
    }

    v4 = &(&Inspector::Protocol::AutomationHelpers::enum_constant_values)[2 * v3];
    v5 = *v4;
    v6 = v4[1];
    v7 = v6 != 0;
    v8 = v6 - 1;
    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    result = MEMORY[0x19EB01EF0](*v1, v5, v9);
    if (result)
    {
      v10 = 0x100000000;
      return v10 | v3;
    }

    if (++v2 == 22)
    {
      v3 = 0;
      v10 = 0;
      return v10 | v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t Inspector::Protocol::AutomationHelpers::parseEnumValueFromString<Inspector::Protocol::Automation::PageLoadStrategy>(uint64_t result)
{
  v1 = result;
  v2 = 0;
  while (1)
  {
    v3 = Inspector::Protocol::AutomationHelpers::parseEnumValueFromString<Inspector::Protocol::Automation::PageLoadStrategy>(WTF::String const&)::constantValues[v2];
    if (v3 >= 0x85)
    {
      break;
    }

    v4 = &(&Inspector::Protocol::AutomationHelpers::enum_constant_values)[2 * v3];
    v5 = *v4;
    v6 = v4[1];
    v7 = v6 != 0;
    v8 = v6 - 1;
    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    result = MEMORY[0x19EB01EF0](*v1, v5, v9);
    if (result)
    {
      v10 = 0x100000000;
      return v10 | v3;
    }

    if (++v2 == 3)
    {
      v3 = 0;
      v10 = 0;
      return v10 | v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t Inspector::Protocol::AutomationHelpers::parseEnumValueFromString<Inspector::Protocol::Automation::MouseInteraction>(uint64_t result)
{
  v1 = result;
  v2 = 0;
  while (1)
  {
    v3 = Inspector::Protocol::AutomationHelpers::parseEnumValueFromString<Inspector::Protocol::Automation::MouseInteraction>(WTF::String const&)::constantValues[v2];
    if (v3 >= 0x85)
    {
      break;
    }

    v4 = &(&Inspector::Protocol::AutomationHelpers::enum_constant_values)[2 * v3];
    v5 = *v4;
    v6 = v4[1];
    v7 = v6 != 0;
    v8 = v6 - 1;
    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    result = MEMORY[0x19EB01EF0](*v1, v5, v9);
    if (result)
    {
      v10 = 0x100000000;
      return v10 | v3;
    }

    if (++v2 == 5)
    {
      v3 = 0;
      v10 = 0;
      return v10 | v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t Inspector::Protocol::AutomationHelpers::parseEnumValueFromString<Inspector::Protocol::Automation::MouseButton>(uint64_t result)
{
  v1 = result;
  v2 = 0;
  while (1)
  {
    v3 = Inspector::Protocol::AutomationHelpers::parseEnumValueFromString<Inspector::Protocol::Automation::MouseButton>(WTF::String const&)::constantValues[v2];
    if (v3 >= 0x85)
    {
      break;
    }

    v4 = &(&Inspector::Protocol::AutomationHelpers::enum_constant_values)[2 * v3];
    v5 = *v4;
    v6 = v4[1];
    v7 = v6 != 0;
    v8 = v6 - 1;
    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    result = MEMORY[0x19EB01EF0](*v1, v5, v9);
    if (result)
    {
      v10 = 0x100000000;
      return v10 | v3;
    }

    if (++v2 == 4)
    {
      v3 = 0;
      v10 = 0;
      return v10 | v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t Inspector::Protocol::AutomationHelpers::parseEnumValueFromString<Inspector::Protocol::Automation::VirtualKey>(uint64_t result)
{
  v1 = result;
  v2 = 0;
  while (1)
  {
    v3 = Inspector::Protocol::AutomationHelpers::parseEnumValueFromString<Inspector::Protocol::Automation::VirtualKey>(WTF::String const&)::constantValues[v2];
    if (v3 >= 0x85)
    {
      break;
    }

    v4 = &(&Inspector::Protocol::AutomationHelpers::enum_constant_values)[2 * v3];
    v5 = *v4;
    v6 = v4[1];
    v7 = v6 != 0;
    v8 = v6 - 1;
    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    result = MEMORY[0x19EB01EF0](*v1, v5, v9);
    if (result)
    {
      v10 = 0x100000000;
      return v10 | v3;
    }

    if (++v2 == 70)
    {
      v3 = 0;
      v10 = 0;
      return v10 | v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t Inspector::Protocol::AutomationHelpers::parseEnumValueFromString<Inspector::Protocol::Automation::KeyboardInteractionType>(uint64_t result)
{
  v1 = result;
  v2 = 0;
  while (1)
  {
    v3 = Inspector::Protocol::AutomationHelpers::parseEnumValueFromString<Inspector::Protocol::Automation::KeyboardInteractionType>(WTF::String const&)::constantValues[v2];
    if (v3 >= 0x85)
    {
      break;
    }

    v4 = &(&Inspector::Protocol::AutomationHelpers::enum_constant_values)[2 * v3];
    v5 = *v4;
    v6 = v4[1];
    v7 = v6 != 0;
    v8 = v6 - 1;
    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    result = MEMORY[0x19EB01EF0](*v1, v5, v9);
    if (result)
    {
      v10 = 0x100000000;
      return v10 | v3;
    }

    if (++v2 == 3)
    {
      v3 = 0;
      v10 = 0;
      return v10 | v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t Inspector::Protocol::AutomationHelpers::parseEnumValueFromString<Inspector::Protocol::Automation::CookieSameSitePolicy>(uint64_t result)
{
  v1 = result;
  v2 = 0;
  while (1)
  {
    v3 = Inspector::Protocol::AutomationHelpers::parseEnumValueFromString<Inspector::Protocol::Automation::CookieSameSitePolicy>(WTF::String const&)::constantValues[v2];
    if (v3 >= 0x85)
    {
      break;
    }

    v4 = &(&Inspector::Protocol::AutomationHelpers::enum_constant_values)[2 * v3];
    v5 = *v4;
    v6 = v4[1];
    v7 = v6 != 0;
    v8 = v6 - 1;
    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    result = MEMORY[0x19EB01EF0](*v1, v5, v9);
    if (result)
    {
      v10 = 0x100000000;
      return v10 | v3;
    }

    if (++v2 == 3)
    {
      v3 = 0;
      v10 = 0;
      return v10 | v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t Inspector::Protocol::AutomationHelpers::parseEnumValueFromString<Inspector::Protocol::Automation::InputSourceType>(uint64_t result)
{
  v1 = result;
  v2 = 0;
  while (1)
  {
    v3 = Inspector::Protocol::AutomationHelpers::parseEnumValueFromString<Inspector::Protocol::Automation::InputSourceType>(WTF::String const&)::constantValues[v2];
    if (v3 >= 0x85)
    {
      break;
    }

    v4 = &(&Inspector::Protocol::AutomationHelpers::enum_constant_values)[2 * v3];
    v5 = *v4;
    v6 = v4[1];
    v7 = v6 != 0;
    v8 = v6 - 1;
    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    result = MEMORY[0x19EB01EF0](*v1, v5, v9);
    if (result)
    {
      v10 = 0x100000000;
      return v10 | v3;
    }

    if (++v2 == 6)
    {
      v3 = 0;
      v10 = 0;
      return v10 | v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t Inspector::Protocol::AutomationHelpers::parseEnumValueFromString<Inspector::Protocol::Automation::MouseMoveOrigin>(uint64_t result)
{
  v1 = result;
  v2 = 0;
  while (1)
  {
    v3 = Inspector::Protocol::AutomationHelpers::parseEnumValueFromString<Inspector::Protocol::Automation::MouseMoveOrigin>(WTF::String const&)::constantValues[v2];
    if (v3 >= 0x85)
    {
      break;
    }

    v4 = &(&Inspector::Protocol::AutomationHelpers::enum_constant_values)[2 * v3];
    v5 = *v4;
    v6 = v4[1];
    v7 = v6 != 0;
    v8 = v6 - 1;
    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    result = MEMORY[0x19EB01EF0](*v1, v5, v9);
    if (result)
    {
      v10 = 0x100000000;
      return v10 | v3;
    }

    if (++v2 == 3)
    {
      v3 = 0;
      v10 = 0;
      return v10 | v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t Inspector::Protocol::AutomationHelpers::parseEnumValueFromString<Inspector::Protocol::Automation::AuthenticatorTransport>(uint64_t result)
{
  v1 = result;
  v2 = 0;
  while (1)
  {
    v3 = Inspector::Protocol::AutomationHelpers::parseEnumValueFromString<Inspector::Protocol::Automation::AuthenticatorTransport>(WTF::String const&)::constantValues[v2];
    if (v3 >= 0x85)
    {
      break;
    }

    v4 = &(&Inspector::Protocol::AutomationHelpers::enum_constant_values)[2 * v3];
    v5 = *v4;
    v6 = v4[1];
    v7 = v6 != 0;
    v8 = v6 - 1;
    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    result = MEMORY[0x19EB01EF0](*v1, v5, v9);
    if (result)
    {
      v10 = 0x100000000;
      return v10 | v3;
    }

    if (++v2 == 4)
    {
      v3 = 0;
      v10 = 0;
      return v10 | v3;
    }
  }

  __break(1u);
  return result;
}

void WebKit::AuxiliaryProcessProxy::platformStartConnectionTerminationWatchdog(WebKit::AuxiliaryProcessProxy *this)
{
  if ((*(this + 384) & 1) == 0)
  {
    *(this + 384) = 1;
    v2 = *(this + 10);
    if (v2)
    {
      std::__optional_copy_base<WebKit::ExtensionProcess,false>::__optional_copy_base[abi:sn200100](&v26, v2 + 40);
      if (v28)
      {
        v3 = *(this + 10);
        if (v3)
        {
          v4 = *(v3 + 108);
        }

        else
        {
          v4 = 0;
        }

        WTF::StringImpl::createWithoutCopyingNonEmpty();
        v5 = v21;
        v25 = v21;
        (*(*this + 152))(&v24, this);
        v7 = *(this + 10);
        if (v7)
        {
          std::__optional_copy_base<WebKit::ExtensionProcess,false>::__optional_copy_base[abi:sn200100](&v21, v7 + 40);
        }

        else
        {
          LOBYTE(v21) = 0;
          v23 = 0;
        }

        v20 = 0;
        v8 = WebKit::ProcessAndUIAssertion::operator new(0xC0, v6);
        v9 = WebKit::ProcessAndUIAssertion::ProcessAndUIAssertion(v8, v4, &v25, 1, &v24, &v21);
        WebKit::ProcessAssertion::acquireAsync(v9, &v20);
        v11 = v20;
        v20 = 0;
        if (v11)
        {
          (*(*v11 + 8))(v11);
        }

        if (v23 == 1 && v22 != 255)
        {
          v18 = v21;
          v21 = 0;
          if (v18)
          {
          }
        }

        v12 = v24;
        v24 = 0;
        if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v12 = WTF::StringImpl::destroy(v12, v10);
        }

        if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v12 = WTF::StringImpl::destroy(v5, v10);
        }

        if ((v28 & 1) == 0)
        {
          __break(1u);
          return;
        }

        v13 = v27;
        if (v27 == 255)
        {
          v14 = 0;
        }

        else
        {
          v14 = v26;
          v26 = 0;
        }

        WTF::RunLoop::mainSingleton(v12);
        v15 = WTF::fastMalloc(0x20);
        *v15 = &unk_1F10E72A0;
        *(v15 + 8) = v8;
        *(v15 + 16) = 0;
        *(v15 + 24) = -1;
        if (v13 != 255)
        {
          *(v15 + 16) = v14;
          *(v15 + 24) = v13;
          v14 = 0;
        }

        v21 = v15;
        WTF::RunLoop::dispatchAfter();
        if (v19)
        {
          WTF::ThreadSafeRefCounted<WTF::RunLoop::DispatchTimer,(WTF::DestructionThread)0>::deref((v19 + 40));
        }

        v16 = v21;
        v21 = 0;
        if (v16)
        {
          (*(*v16 + 8))(v16);
        }

        if (v13 != 255 && v14)
        {
        }
      }
    }

    else
    {
      LOBYTE(v26) = 0;
      v28 = 0;
    }

    if (v28 == 1 && v27 != 255)
    {
      v17 = v26;
      v26 = 0;
      if (v17)
      {
      }
    }
  }
}

void sub_19D684B7C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15, void *a16, unsigned __int8 a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, a2);
  }

  if (a19 == 1 && a17 != 255)
  {
    if (a16)
    {
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::AuxiliaryProcessProxy::taskInfo@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 80);
  if (v3 && (v4 = *(v3 + 108)) != 0 && (v5 = this, tn = 0, v6 = MEMORY[0x1E69E9A60], this = task_name_for_pid(*MEMORY[0x1E69E9A60], v4, &tn), !this))
  {
    v7 = tn;
    task_info_outCnt = 12;
    if (task_info(tn, 0x14u, task_info_out, &task_info_outCnt) || (v17 = 8, task_info(tn, 1u, v18, &v17)))
    {
      *a2 = 0;
      *(a2 + 32) = 0;
    }

    else
    {
      v14 = 38;
      if (task_info(tn, 0x16u, v15, &v14))
      {
        v8 = 0;
        *a2 = 0;
      }

      else
      {
        if (*(v5 + 376) | task_info_out[11])
        {
          v9 = *(v5 + 376);
        }

        else
        {
          v9 = 1;
        }

        WTF::MonotonicTime::fromMachAbsoluteTime(v18[0]);
        v11 = v10;
        WTF::MonotonicTime::fromMachAbsoluteTime(v18[1]);
        v12 = v16;
        *a2 = v4;
        *(a2 + 4) = v9;
        *(a2 + 8) = v11;
        *(a2 + 16) = v13;
        *(a2 + 24) = v12;
        v8 = 1;
      }

      *(a2 + 32) = v8;
    }

    return mach_port_deallocate(*v6, v7);
  }

  else
  {
    *a2 = 0;
    *(a2 + 32) = 0;
  }

  return this;
}

void *WebKit::AuxiliaryProcessProxy::send<Messages::AuxiliaryProcess::PreferenceDidUpdate>(uint64_t a1, uint64_t **a2, size_t a3, char a4)
{
  if (*(a1 + 114) != 1)
  {
    v8 = IPC::Encoder::operator new(0x238, a2);
    *v8 = 4;
    *(v8 + 2) = 0;
    *(v8 + 3) = 0;
    *(v8 + 1) = a3;
    *(v8 + 68) = 0;
    *(v8 + 70) = 0;
    *(v8 + 69) = 0;
    IPC::Encoder::encodeHeader(v8);
    v29 = v8;
    Messages::AuxiliaryProcess::PreferenceDidUpdate::encode<IPC::Encoder>(a2, v8);
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
  *v14 = 4;
  v14[2] = 0;
  v14[3] = 0;
  v14[1] = a3;
  v15 = v14 + 68;
  v14[68] = 0;
  v14[70] = 0;
  v14[69] = 0;
  IPC::Encoder::encodeHeader(v14);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v14, *a2);
  result = IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v14, a2[1]);
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
      *v20 = 4;
      *(v20 + 2) = 0;
      *(v20 + 3) = 0;
      *(v20 + 1) = a3;
      *(v20 + 68) = 0;
      *(v20 + 70) = 0;
      *(v20 + 69) = 0;
      IPC::Encoder::encodeHeader(v20);
      v28 = v20;
      Messages::AuxiliaryProcess::PreferenceDidUpdate::encode<IPC::Encoder>(a2, v20);
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

void sub_19D68502C(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13)
{
  IPC::Encoder::~Encoder(v13, a2);
  bmalloc::api::tzoneFree(v15, v16);
  _Unwind_Resume(a1);
}

uint64_t std::__optional_destruct_base<WebKit::ExtensionProcess,false>::~__optional_destruct_base[abi:sn200100](uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    if (*(a1 + 8) != 255)
    {
      v3 = *a1;
      *a1 = 0;
      if (v3)
      {
      }
    }

    *(a1 + 8) = -1;
  }

  return a1;
}

_BYTE *mpark::detail::copy_constructor<mpark::detail::traits<WTF::RetainPtr<BEWebContentProcess>,WTF::RetainPtr<BENetworkingProcess>,WTF::RetainPtr<BERenderingProcess>>,(mpark::detail::Trait)1>::copy_constructor(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[8] = -1;
  if (*(a2 + 8) != 255)
  {
    v4 = *a2;
    *a1 = *a2;
    if (v4)
    {
      v5 = v4;
    }

    a1[8] = *(a2 + 8);
  }

  return a1;
}

void sub_19D685178(_Unwind_Exception *exception_object)
{
  if (*(v1 + 8) != 255)
  {
    v3 = *v1;
    *v1 = 0;
    if (v3)
    {
    }
  }

  *(v1 + 8) = -1;
  _Unwind_Resume(exception_object);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::AuxiliaryProcessProxy::platformStartConnectionTerminationWatchdog(void)::$_0,void>::~CallableWrapper(uint64_t a1, void *a2)
{
  *a1 = &unk_1F10E72A0;
  if (*(a1 + 24) != 255)
  {
    v3 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v3)
    {
    }
  }

  *(a1 + 24) = -1;
  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v4 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::AuxiliaryProcessProxy::platformStartConnectionTerminationWatchdog(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10E72A0;
  if (*(this + 24) != 255)
  {
    v3 = *(this + 2);
    *(this + 2) = 0;
    if (v3)
    {
    }
  }

  *(this + 24) = -1;
  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v4 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::RunLoop::DispatchTimer::~DispatchTimer(WTF::RunLoop::DispatchTimer *this)
{
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  WTF::RunLoop::TimerBase::~TimerBase(this);
}

void *Messages::AuxiliaryProcess::PreferenceDidUpdate::encode<IPC::Encoder>(uint64_t a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a2, *a1);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a2, *(a1 + 8));
  v4 = *(a1 + 16);

  return IPC::ArgumentCoder<std::optional<WTF::String>,void>::encode<IPC::Encoder,std::optional<WTF::String> const&>(a2, v4);
}

uint64_t WTF::makeUniqueRefWithoutFastMallocCheck<IPC::Encoder,IPC::MessageName,unsigned long long &>@<X0>(_WORD *a1@<X0>, uint64_t *a2@<X1>, IPC::Encoder **a3@<X8>)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  v7 = *a2;
  *v6 = *a1;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v7;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  result = IPC::Encoder::encodeHeader(v6);
  *a3 = v6;
  return result;
}

void *IPC::ArgumentCoder<std::optional<WTF::String>,void>::encode<IPC::Encoder,std::optional<WTF::String> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v7 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (*(a2 + 8))
    {
      return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::Encoder::operator<<<BOOL>(v5, v6);
    }
  }

  else
  {
    v8 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }
}

uint64_t IPC::Encoder::operator<<<BOOL>(IPC::Encoder *a1, char *a2)
{
  v3 = *a2;
  v4 = IPC::Encoder::grow(a1, 1uLL, 1);
  if (v5)
  {
    *v4 = v3;
    return a1;
  }

  else
  {
    result = 1067;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::BackgroundFetchState::toDictionary(atomic_uint **this)
{
  v36[11] = *MEMORY[0x1E69E9840];
  v35[0] = @"TopOrigin";
  WebCore::SecurityOriginData::toString(&v33, this);
  v2 = v33;
  if (v33)
  {
    atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v34, v2);
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }
  }

  else
  {
    v34 = &stru_1F1147748;
    v4 = &stru_1F1147748;
  }

  v36[0] = v34;
  v35[1] = @"Scope";
  WTF::URL::createCFURL(&v32, (this + 4));
  v36[1] = v32;
  v35[2] = @"WebIdentifier";
  v5 = this[9];
  if (v5)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v31, v5);
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v6);
    }
  }

  else
  {
    v31 = &stru_1F1147748;
    v7 = &stru_1F1147748;
  }

  v36[2] = v31;
  v35[3] = @"Title";
  v8 = this[12];
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v30, v8);
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v9);
    }
  }

  else
  {
    v30 = &stru_1F1147748;
    v10 = &stru_1F1147748;
  }

  v36[3] = v30;
  v35[4] = @"DownloadTotal";
  v36[4] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:this[14]];
  v35[5] = @"Downloaded";
  v36[5] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:this[15]];
  v35[6] = @"UploadTotal";
  v36[6] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:this[16]];
  v35[7] = @"Uploaded";
  v36[7] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:this[17]];
  v35[8] = @"Result";
  WebCore::convertEnumerationToString();
  if (v28)
  {
    atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v29, v28);
    if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v28, v11);
    }
  }

  else
  {
    v29 = &stru_1F1147748;
    v12 = &stru_1F1147748;
  }

  v36[8] = v29;
  v35[9] = @"FailureReason";
  WebCore::convertEnumerationToString();
  if (v26)
  {
    atomic_fetch_add_explicit(v26, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v27);
    if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v26, v13);
    }
  }

  else
  {
    v27 = &stru_1F1147748;
    v14 = &stru_1F1147748;
  }

  v36[9] = v27;
  v35[10] = @"IsPaused";
  v36[10] = [MEMORY[0x1E696AD98] numberWithBool:*(this + 146)];
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:11];
  v17 = v27;
  v27 = 0;
  if (v17)
  {
  }

  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, v15);
  }

  v18 = v29;
  v29 = 0;
  if (v18)
  {
  }

  v19 = v28;
  v28 = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v15);
  }

  v20 = v30;
  v30 = 0;
  if (v20)
  {
  }

  v21 = v31;
  v31 = 0;
  if (v21)
  {
  }

  v22 = v32;
  v32 = 0;
  if (v22)
  {
  }

  v23 = v34;
  v34 = 0;
  if (v23)
  {
  }

  v24 = v33;
  v33 = 0;
  if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v24, v15);
  }

  return v16;
}

void sub_19D685878(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, WTF::StringImpl *a11, void *a12, void *a13, void *a14, void *a15, WTF::StringImpl *a16, void *a17)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (a12)
  {
  }

  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a13)
  {
  }

  if (a14)
  {
  }

  if (a15)
  {
  }

  if (a17)
  {
  }

  if (a16)
  {
    if (atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a16, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

WebKit::BidiBrowserAgent *WebKit::BidiBrowserAgent::BidiBrowserAgent(WebKit::BidiBrowserAgent *this, WebKit::WebAutomationSession *a2, Inspector::BackendDispatcher *a3)
{
  *this = &unk_1F10E72C8;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 6, a2 + 16);
  v6 = *(a2 + 3);
  atomic_fetch_add(v6, 1u);
  *(this + 1) = v6;
  v7 = WTF::fastMalloc(0x20);
  v8 = Inspector::BidiBrowserBackendDispatcher::BidiBrowserBackendDispatcher(v7, a3, this);
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = v8;
  return this;
}

void WebKit::BidiBrowserAgent::~BidiBrowserAgent(WebKit::BidiBrowserAgent *this, WTF::StringImpl *a2)
{
  v3 = *(this + 4);
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 3);
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::BidiUserContext>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::BidiUserContext>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::unique_ptr<WebKit::BidiUserContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::BidiUserContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    if (v5[2] == 1)
    {
      (*(*v5 + 8))(v5);
    }

    else
    {
      --v5[2];
    }
  }

  v6 = *(this + 1);
  *(this + 1) = 0;
  if (v6)
  {
    if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v6);
      WTF::fastFree(v6, a2);
    }
  }
}

{
  WebKit::BidiBrowserAgent::~BidiBrowserAgent(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

WTF::StringImpl *WebKit::BidiBrowserAgent::didCreatePage(WebKit::BidiBrowserAgent *this, WebKit::WebPageProxy *a2)
{
  v5 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(this + 4, &v9, v4);
  v7 = *(this + 4);
  if (v7)
  {
    v7 += 16 * *(v7 - 4);
  }

  if (v7 != v5)
  {
    ++*(*(v5 + 8) + 8);
    WebKit::WebPageProxy::closePage(a2);
  }

  result = v9;
  v9 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v6);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::anonymous namespace::toUserContextIDProtocolString@<X0>(WTF::StringImpl **a1@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 1;
  WTF::Internal::appendHex();
  v15 = v4;
  v13 = &v14;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>>(&v9, &v13);
  v6 = v9;
  if (v9 || (WTF::StringBuilder::shrinkToFit(&v9), WTF::StringBuilder::reifyString(&v9), (v6 = v9) != 0))
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  *a1 = v6;
  v7 = v10;
  v10 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v5);
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

WTF::StringImpl *WebKit::BidiBrowserAgent::willClosePage(WebKit::BidiBrowserAgent *this, const WebKit::WebPageProxy *a2)
{
  v16 = *(*(a2 + 51) + 24);
  v4 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(this + 4, &v17, v3);
  v6 = v4;
  v7 = *(this + 4);
  if (v7)
  {
    v7 += 16 * *(v7 - 4);
  }

  if (v7 != v4)
  {
    v8 = *(v4 + 8);
    v9 = *(v8 + 8) - 1;
    *(v8 + 8) = v9;
    if (!v9)
    {
      LOBYTE(v14) = 0;
      v15 = 0;
      WTF::Function<void ()(std::experimental::fundamentals_v3::expected<void,WTF::String>)>::operator()((v8 + 16), &v14);
      if (v15 == 1)
      {
        v11 = v14;
        v14 = 0;
        if (v11)
        {
          if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v11, v5);
          }
        }
      }

      v12 = *(this + 4);
      if (v12)
      {
        v13 = (v12 + 16 * *(v12 - 4));
        if (v13 == v6)
        {
          goto LABEL_5;
        }
      }

      else
      {
        if (!v6)
        {
          goto LABEL_5;
        }

        v13 = 0;
      }

      if (v13 != v6)
      {
        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::remove(this + 4, v6);
      }
    }
  }

LABEL_5:
  result = v17;
  v17 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v5);
    }
  }

  return result;
}

WTF::StringImpl *WTF::Function<void ()(std::experimental::fundamentals_v3::expected<void,WTF::String>)>::operator()(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  LOBYTE(v6) = 0;
  v7 = 0;
  if (*(a2 + 8) == 1)
  {
    v3 = *a2;
    *a2 = 0;
    v6 = v3;
    v7 = 1;
  }

  result = (*(*v2 + 16))(v2, &v6);
  if (v7 == 1)
  {
    result = v6;
    v6 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  return result;
}

void WebKit::BidiBrowserAgent::close(WebKit::BidiBrowserAgent *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 1);
  if (v3 && (v4 = *(v3 + 8)) != 0)
  {
    CFRetain(*(v4 - 8));
    WebKit::WebAutomationSession::terminate((v4 - 16));
    *a2 = 0;
    *(a2 + 8) = 0;
    v5 = *(v4 - 8);

    CFRelease(v5);
  }

  else
  {
    Inspector::Protocol::AutomationHelpers::getEnumConstantValue(5, a2);
    *(a2 + 8) = 1;
  }
}

WTF::StringImpl *WebKit::BidiBrowserAgent::createUserContext@<X0>(uint64_t a1@<X8>)
{
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v3 = v9;
  Inspector::Protocol::AutomationHelpers::getEnumConstantValue(5, &v8);
  if (v3)
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
  }

  v7 = v3;
  WTF::makeString<WTF::String,char,WTF::String>(&v8, 59, &v7, &v9);
  *a1 = v9;
  *(a1 + 8) = 1;
  v9 = 0;
  v5 = v7;
  v7 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  result = v8;
  v8 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v4);
    if (!v3)
    {
      return result;
    }
  }

  else if (!v3)
  {
    return result;
  }

  if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(v3, v4);
  }

  return result;
}

uint64_t WTF::makeString<WTF::String,char,WTF::String>@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = *a1;
  v7 = a2;
  v6 = *a3;
  result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::String,void>>(&v8, &v7, &v6, a4);
  if (!*a4)
  {
    __break(0xC471u);
  }

  return result;
}

WTF::JSONImpl::Object *WebKit::BidiBrowserAgent::getUserContexts@<X0>(WebKit::BidiBrowserAgent *this@<X0>, uint64_t a2@<X8>)
{
  v4 = WTF::fastMalloc(0x20);
  v5 = WTF::JSONImpl::ArrayBase::ArrayBase(v4);
  WTF::JSONImpl::Object::create(&v17, v5);
  if ((_MergedGlobals_46 & 1) == 0)
  {
    _MergedGlobals_46 = 1;
  }

  Inspector::Protocol::BidiBrowser::UserContextInfo::Builder<0>::setUserContext(&v17, &qword_1ED641A88);
  v6 = v17;
  v17 = 0;
  v18 = v6;
  WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowser::UserContextInfo>::addItem<Inspector::Protocol::BidiBrowser::UserContextInfo>(v4, &v18);
  v7 = v18;
  v18 = 0;
  if (v7)
  {
    if (*v7 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v7;
    }
  }

  result = v17;
  v17 = 0;
  if (result)
  {
    if (*result == 1)
    {
      result = WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  v9 = *(this + 3);
  if (v9)
  {
    v10 = *(v9 - 4);
    v11 = (v9 + 16 * v10);
    if (*(v9 - 12))
    {
      if (v10)
      {
        v12 = 16 * v10;
        v13 = *(this + 3);
        while ((*v13 + 1) <= 1)
        {
          v13 = (v13 + 16);
          v12 -= 16;
          if (!v12)
          {
            v13 = v11;
            goto LABEL_21;
          }
        }
      }

      else
      {
        v13 = *(this + 3);
      }

      goto LABEL_21;
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v13 = v11;
  v11 = (v9 + 16 * v10);
  if (!v9)
  {
    v14 = 0;
    goto LABEL_22;
  }

LABEL_21:
  v14 = (v9 + 16 * *(v9 - 4));
LABEL_22:
  while (v13 != v14)
  {
    WTF::JSONImpl::Object::create(&v18, result);
    v17 = v18;
    Inspector::Protocol::BidiBrowser::UserContextInfo::Builder<0>::setUserContext(&v17, v13);
    v15 = v17;
    v17 = 0;
    v18 = v15;
    WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowser::UserContextInfo>::addItem<Inspector::Protocol::BidiBrowser::UserContextInfo>(v4, &v18);
    v16 = v18;
    v18 = 0;
    if (v16)
    {
      if (*v16 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v16;
      }
    }

    result = v17;
    v17 = 0;
    if (result)
    {
      if (*result == 1)
      {
        result = WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*result;
      }
    }

    do
    {
      v13 = (v13 + 16);
    }

    while (v13 != v11 && (*v13 + 1) <= 1);
  }

  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowser::UserContextInfo>::addItem<Inspector::Protocol::BidiBrowser::UserContextInfo>(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 28);
  if (v2 == *(result + 24))
  {
    return WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(result + 16, a2);
  }

  v3 = *(result + 16);
  v4 = *a2;
  *a2 = 0;
  *(v3 + 8 * v2) = v4;
  *(result + 28) = v2 + 1;
  return result;
}

uint64_t *Inspector::Protocol::BidiBrowser::UserContextInfo::Builder<0>::setUserContext(uint64_t *a1, WTF::JSONImpl::Value *a2)
{
  v4 = *a1;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::JSONImpl::Value::create(&v15, a2, v5);
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>((v4 + 16), &v14, &v15, v16);
  if (v16[16] == 1)
  {
    v7 = *(v4 + 36);
    if (v7 == *(v4 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v4 + 24, &v14);
    }

    else
    {
      v8 = *(v4 + 24);
      v9 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
      }

      v10 = *(v4 + 36);
      *(v8 + 8 * v7) = v9;
      *(v4 + 36) = v10 + 1;
    }
  }

  v11 = v15;
  v15 = 0;
  if (v11)
  {
    if (*v11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v11;
    }
  }

  v12 = v14;
  v14 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v6);
  }

  return a1;
}

uint64_t *WebKit::BidiBrowserAgent::removeUserContext(uint64_t a1, WTF **a2, uint64_t *a3)
{
  if (_MergedGlobals_46 == 1)
  {
    v6 = qword_1ED641A88;
  }

  else
  {
    _MergedGlobals_46 = 1;
  }

  if (WTF::equal(*a2, v6, a3))
  {
    Inspector::Protocol::AutomationHelpers::getEnumConstantValue(17, &v64);
    v69 = "Cannot delete default user context.";
    v70 = 36;
    v68 = 59;
    WTF::tryMakeString<WTF::String,char,WTF::ASCIILiteral>(&v64, &v68, &v69, &v65);
    v9 = v65;
    if (v65)
    {
      v65 = 0;
      v66 = v9;
      v67 = 1;
      WTF::Function<void ()(std::experimental::fundamentals_v3::expected<void,WTF::String>)>::operator()(a3, &v66);
      if (v67 == 1)
      {
        v11 = v66;
        v66 = 0;
        if (v11)
        {
          if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v11, v10);
          }
        }
      }

      v12 = v65;
      v65 = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v10);
      }

      result = v64;
      v64 = 0;
      if (!result)
      {
        return result;
      }

      goto LABEL_49;
    }

    __break(0xC471u);
LABEL_94:
    JUMPOUT(0x19D686948);
  }

  v14 = (a1 + 24);
  v15 = *(a1 + 24);
  if (!v15)
  {
    goto LABEL_40;
  }

  v16 = *a2;
  if (*a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19D686970);
  }

  if (!v16)
  {
    __break(0xC471u);
    JUMPOUT(0x19D686990);
  }

  v17 = *(v15 - 8);
  v18 = *(v16 + 4);
  if (v18 < 0x100)
  {
    v19 = WTF::StringImpl::hashSlowCase(v16);
  }

  else
  {
    v19 = v18 >> 8;
  }

  for (i = 0; ; v19 = i + v21)
  {
    v21 = v19 & v17;
    v22 = *(v15 + 16 * v21);
    if (v22 != -1)
    {
      if (!v22)
      {
        v23 = *v14;
        if (*v14)
        {
          v24 = (v23 + 16 * *(v23 - 4));
          goto LABEL_27;
        }

        goto LABEL_40;
      }

      if (WTF::equal(v22, *a2, v8))
      {
        break;
      }
    }

    ++i;
  }

  v24 = (v15 + 16 * v21);
  v23 = *v14;
  if (*v14)
  {
LABEL_27:
    if ((v23 + 16 * *(v23 - 4)) != v24)
    {
      goto LABEL_28;
    }

LABEL_40:
    Inspector::Protocol::AutomationHelpers::getEnumConstantValue(17, &v61);
    v69 = "no such user context";
    v70 = 21;
    v68 = 59;
    WTF::tryMakeString<WTF::String,char,WTF::ASCIILiteral>(&v61, &v68, &v69, &v65);
    v37 = v65;
    if (!v65)
    {
      __break(0xC471u);
      JUMPOUT(0x19D686950);
    }

    v65 = 0;
    v62 = v37;
    v63 = 1;
    WTF::Function<void ()(std::experimental::fundamentals_v3::expected<void,WTF::String>)>::operator()(a3, &v62);
    if (v63 == 1)
    {
      v38 = v62;
      v62 = 0;
      if (v38)
      {
        if (atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v38, v10);
        }
      }
    }

    v39 = v65;
    v65 = 0;
    if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v39, v10);
    }

    result = v61;
    v61 = 0;
    if (!result)
    {
      return result;
    }

LABEL_49:
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v10);
    }

    return result;
  }

LABEL_28:
  v26 = v24 + 1;
  v25 = v24[1];
  v24[1] = 0;
  v27 = *v24;
  *v24 = -1;
  if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v27, v7);
  }

  std::unique_ptr<WebKit::BidiUserContext>::reset[abi:sn200100](v26, 0);
  v28 = *v14;
  v29 = vadd_s32(*(*v14 - 16), 0xFFFFFFFF00000001);
  *(v28 - 16) = v29;
  v30 = *(v28 - 4);
  if (6 * v29.i32[1] < v30 && v30 >= 9)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::BidiUserContext>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::BidiUserContext>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::unique_ptr<WebKit::BidiUserContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::BidiUserContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash((a1 + 24), v30 >> 1);
  }

  WebKit::BidiUserContext::allPages(v25, &v69);
  v32 = HIDWORD(v70);
  WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v69, v33);
  if (!v32)
  {
    LOBYTE(v59) = 0;
    v60 = 0;
    result = WTF::Function<void ()(std::experimental::fundamentals_v3::expected<void,WTF::String>)>::operator()(a3, &v59);
    if (v60 == 1)
    {
      result = v59;
      v59 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v40);
        }
      }
    }

    if (v25)
    {
      WebKit::BidiUserContext::~BidiUserContext(v25);
      return WTF::fastFree(v41, v42);
    }

    return result;
  }

  if (qword_1ED641A90)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(qword_1ED641A90, v34);
  }

  else
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompactSlow();
  }

  v43 = NonCompact;
  *NonCompact = v25;
  *(NonCompact + 1) = v32;
  v44 = *a3;
  *a3 = 0;
  *(NonCompact + 2) = v44;
  v65 = NonCompact;
  if (*a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19D6869B0);
  }

  if (!*a2)
  {
    __break(0xC471u);
    goto LABEL_94;
  }

  v45 = *(a1 + 32);
  if (v45 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand((a1 + 32), 0), (v45 = *(a1 + 32)) != 0))
  {
    v46 = *(v45 - 8);
  }

  else
  {
    v46 = 0;
  }

  v47 = *(*a2 + 4);
  if (v47 < 0x100)
  {
    v48 = WTF::StringImpl::hashSlowCase(*a2);
  }

  else
  {
    v48 = v47 >> 8;
  }

  v49 = 0;
  for (j = 1; ; ++j)
  {
    v51 = v48 & v46;
    v52 = (v45 + 16 * (v48 & v46));
    v53 = *v52;
    if (*v52 == -1)
    {
      v49 = (v45 + 16 * v51);
      goto LABEL_71;
    }

    if (!v53)
    {
      break;
    }

    if (WTF::equal(v53, *a2, v36))
    {
      v65 = 0;
      std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>::reset[abi:sn200100](v52 + 1, v43);
      return std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>::reset[abi:sn200100](&v65, 0);
    }

LABEL_71:
    v48 = j + v51;
  }

  if (v49)
  {
    *v49 = 0;
    v49[1] = 0;
    --*(*(a1 + 32) - 16);
    v52 = v49;
  }

  WTF::String::operator=(v52, a2);
  v54 = v65;
  v65 = 0;
  v69 = 0;
  std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>::reset[abi:sn200100](v52 + 1, v54);
  std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>::reset[abi:sn200100](&v69, 0);
  v55 = *(a1 + 32);
  if (v55)
  {
    v56 = *(v55 - 12) + 1;
  }

  else
  {
    v56 = 1;
  }

  *(v55 - 12) = v56;
  v57 = (*(v55 - 16) + v56);
  v58 = *(v55 - 4);
  if (v58 > 0x400)
  {
    if (v58 <= 2 * v57)
    {
LABEL_80:
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand((a1 + 32), v52);
    }
  }

  else if (3 * v58 <= 4 * v57)
  {
    goto LABEL_80;
  }

  return std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>::reset[abi:sn200100](&v65, 0);
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 1) != -1)
      {
        std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>::reset[abi:sn200100](v4, 0);
        v5 = *(v4 - 1);
        *(v4 - 1) = 0;
        if (v5)
        {
          if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v5, a2);
          }
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::BidiUserContext>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::BidiUserContext>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::unique_ptr<WebKit::BidiUserContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::BidiUserContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 1) != -1)
      {
        std::unique_ptr<WebKit::BidiUserContext>::reset[abi:sn200100](v4, 0);
        v5 = *(v4 - 1);
        *(v4 - 1) = 0;
        if (v5)
        {
          if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v5, a2);
          }
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

_WORD *WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::HexNumberBuffer,void>>(WTF::StringBuilder *a1, uint64_t a2)
{
  v3 = *(a1 + 1);
  if ((v3 || (v3 = *a1) != 0) && (*(v3 + 16) & 4) == 0)
  {
    result = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(a1);
    if (!result)
    {
      return result;
    }

    v6 = *(*a2 + 16);
    if (v6 < 0x11)
    {
      if (v6)
      {
        v7 = (*a2 + 16 - v6);
        v8 = 2 * v6;
        do
        {
          v9 = *v7++;
          *result++ = v9;
          v8 -= 2;
        }

        while (v8);
      }

      return result;
    }

    goto LABEL_17;
  }

  result = MEMORY[0x19EB01170]();
  if (!result)
  {
    return result;
  }

  v10 = *(*a2 + 16);
  if (v10 >= 0x11)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    *result = *v5;
    return result;
  }

  if (!v10)
  {
    return result;
  }

  v5 = (*a2 + 16 - v10);
  if (v10 == 1)
  {
    goto LABEL_18;
  }

  return memcpy(result, v5, v10);
}

WebKit::BidiUserContext *std::unique_ptr<WebKit::BidiUserContext>::reset[abi:sn200100](WebKit::BidiUserContext **a1, WebKit::BidiUserContext *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    WebKit::BidiUserContext::~BidiUserContext(result);

    return WTF::fastFree(v4, v5);
  }

  return result;
}

uint64_t *std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>::reset[abi:sn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    std::unique_ptr<WebKit::BidiUserContext>::reset[abi:sn200100](v2, 0);

    return bmalloc::api::tzoneFree(v2, v4);
  }

  return result;
}

uint64_t WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::String,void>>@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
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

  v7 = *a3;
  if (*a3)
  {
    v8 = *(v7 + 4);
    if (v8 < 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  v11 = v9;
  if ((v6 & 0x80000000) == 0 && (v11 & 1) == 0)
  {
    result = (v6 + v10);
    if (!__OFADD__(v6, v10))
    {
      if (v5)
      {
        v12 = *(v5 + 16);
        v13 = (v12 >> 2) & 1;
        if (!v7 || (v12 & 4) == 0)
        {
          return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::String,void>>(result, v13, v5, *a2, v7, a4);
        }
      }

      else if (!v7)
      {
        v13 = 1;
        return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::String,void>>(result, v13, v5, *a2, v7, a4);
      }

      v13 = (*(v7 + 16) >> 2) & 1;
      return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::String,void>>(result, v13, v5, *a2, v7, a4);
    }
  }

LABEL_16:
  *a4 = 0;
  return result;
}

uint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::String,void>>@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, _DWORD *a5@<X4>, void *a6@<X8>)
{
  v9 = result;
  if (!a2)
  {
    if (result)
    {
      if (result <= 0x7FFFFFEF)
      {
        result = WTF::tryFastCompactMalloc((2 * result + 20));
        v11 = v17;
        if (!v17)
        {
          goto LABEL_16;
        }

        *v17 = 2;
        v11[1] = v9;
        *(v11 + 1) = v11 + 5;
        v11[4] = 0;
        v16 = a3;
        result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v16, v11 + 20);
        v14 = v16;
        if (!v16 || (v14 = *(v16 + 4), v14 < v9))
        {
          v15 = v11 + 2 * v14 + 20;
          *v15 = a4;
          v17 = a5;
          result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v17, (v15 + 2));
          goto LABEL_16;
        }

        goto LABEL_17;
      }

LABEL_10:
      v11 = 0;
      goto LABEL_16;
    }

LABEL_11:
    v11 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_16;
  }

  if (!result)
  {
    goto LABEL_11;
  }

  if ((result & 0x80000000) != 0)
  {
    goto LABEL_10;
  }

  result = WTF::tryFastCompactMalloc((result + 20));
  v11 = v17;
  if (!v17)
  {
LABEL_16:
    *a6 = v11;
    return result;
  }

  v12 = v17 + 5;
  *v17 = 2;
  v11[1] = v9;
  *(v11 + 1) = v11 + 5;
  v11[4] = 4;
  v16 = a3;
  result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v16, v11 + 20);
  v13 = v16;
  if (!v16 || (v13 = *(v16 + 4), v13 < v9))
  {
    *(v12 + v13) = a4;
    v17 = a5;
    result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v17, v12 + v13 + 1);
    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

unsigned int *WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(unsigned int *result, uint64_t a2)
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

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(uint64_t *a1, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v6 = *a2;
  if (*a2 == -1 || !v6)
  {
    __break(0xC471u);
    JUMPOUT(0x19D68700CLL);
  }

  v7 = *(v3 - 8);
  v8 = *(v6 + 4);
  if (v8 < 0x100)
  {
    v9 = WTF::StringImpl::hashSlowCase(v6);
  }

  else
  {
    v9 = v8 >> 8;
  }

  for (i = 0; ; v9 = i + v11)
  {
    v11 = v9 & v7;
    v12 = *(v3 + 16 * v11);
    if (v12 == -1)
    {
      goto LABEL_10;
    }

    if (!v12)
    {
      break;
    }

    if (WTF::equal(v12, *a2, a3))
    {
      return v3 + 16 * v11;
    }

LABEL_10:
    ++i;
  }

  if (*a1)
  {
    return *a1 + 16 * *(*a1 - 4);
  }

  else
  {
    return 0;
  }
}

uint64_t *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::remove(uint64_t *a1, WTF::StringImpl *a2)
{
  result = WTF::KeyValuePairHashTraits<WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>>>::customDeleteBucket(a2, a2);
  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }

  return result;
}

uint64_t *WTF::KeyValuePairHashTraits<WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>>>::customDeleteBucket(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *a1;
  *a1 = -1;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>::reset[abi:sn200100]((a1 + 8), 0);
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, __int128 *a3)
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

  v9 = WTF::fastZeroedMalloc((16 * a2 + 16));
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
      v13 = (v6 + 16 * v11);
      v14 = *v13;
      if (*v13 != -1)
      {
        if (v14)
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

          v18 = *(v14 + 4);
          if (v18 < 0x100)
          {
            v19 = WTF::StringImpl::hashSlowCase(v14);
          }

          else
          {
            v19 = v18 >> 8;
          }

          v20 = 0;
          do
          {
            v21 = v19 & v17;
            v19 = ++v20 + v21;
          }

          while (*(v16 + 16 * v21));
          v22 = v16 + 16 * v21;
          std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>::reset[abi:sn200100]((v22 + 8), 0);
          v24 = *v22;
          *v22 = 0;
          if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v24, v23);
          }

          v25 = *v13;
          *v13 = 0;
          *(v13 + 1) = 0;
          *v22 = v25;
          std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>::reset[abi:sn200100](v13 + 1, 0);
          v26 = *v13;
          *v13 = 0;
          if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v26, v10);
          }

          if (v13 == a3)
          {
            v12 = v22;
          }
        }

        else
        {
          std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>::reset[abi:sn200100](v13 + 1, 0);
          v15 = *v13;
          *v13 = 0;
          if (v15)
          {
            if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v15, v10);
            }
          }
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

_DWORD *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::BidiUserContext>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::BidiUserContext>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::unique_ptr<WebKit::BidiUserContext>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::BidiUserContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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
    v9 = 0;
    while (1)
    {
      v10 = (v4 + 16 * v9);
      v11 = *v10;
      if (*v10 != -1)
      {
        if (v11)
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

          v15 = v11[4];
          if (v15 < 0x100)
          {
            v16 = WTF::StringImpl::hashSlowCase(v11);
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
          std::unique_ptr<WebKit::BidiUserContext>::reset[abi:sn200100](v19 + 1, 0);
          v21 = *v19;
          *v19 = 0;
          if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v21, v20);
          }

          v22 = *v10;
          *v10 = 0;
          *(v10 + 1) = 0;
          *v19 = v22;
          std::unique_ptr<WebKit::BidiUserContext>::reset[abi:sn200100](v10 + 1, 0);
          v12 = *v10;
          *v10 = 0;
          if (!v12 || atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) != 2)
          {
            goto LABEL_24;
          }
        }

        else
        {
          std::unique_ptr<WebKit::BidiUserContext>::reset[abi:sn200100](v10 + 1, 0);
          v12 = *v10;
          *v10 = 0;
          if (!v12 || atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) != 2)
          {
            goto LABEL_24;
          }
        }

        WTF::StringImpl::destroy(v12, v8);
      }

LABEL_24:
      if (++v9 == v5)
      {
        goto LABEL_28;
      }
    }
  }

  if (v4)
  {
LABEL_28:

    return WTF::fastFree((v4 - 16), v8);
  }

  return result;
}

uint64_t WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 12);
  if (v5 + (v5 >> 1) <= v5 + 1)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = v5 + (v5 >> 1);
  }

  if (v6 <= v4 + 1)
  {
    v7 = v4 + 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 <= 0x10)
  {
    v8 = 16;
  }

  else
  {
    v8 = v7;
  }

  WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v8);
  v9 = *(a1 + 12);
  v10 = *a1;
  v11 = *a2;
  *a2 = 0;
  *(v10 + 8 * v9) = v11;
  *(a1 + 12) = v9 + 1;
  return 1;
}

uint64_t WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
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

uint64_t WTF::tryMakeString<WTF::String,char,WTF::ASCIILiteral>@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v10 = *a1;
  v9 = *a2;
  v4 = a3[1];
  v5 = v4 != 0;
  v6 = v4 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v8[0] = *a3;
  v8[1] = v6;
  if (!(v6 >> 31))
  {
    return WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(&v10, &v9, v8, a4);
  }

  result = 161;
  __break(0xC471u);
  return result;
}

uint64_t WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
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

  v7 = *(a3 + 8);
  if ((v7 & 0x80000000) != 0 || ((v8 = v7 + 1, !__OFADD__(v7, 1)) ? (v9 = 0) : (v9 = 1), v6 < 0 || (v9 & 1) != 0 || (result = (v6 + v8), __OFADD__(v6, v8))))
  {
    *a4 = 0;
  }

  else
  {
    v10 = !v5 || (*(v5 + 16) & 4) != 0;
    return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(result, v10, v5, *a2, *a3, v7, a4);
  }

  return result;
}

uint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>@<X0>(uint64_t result@<X0>, int a2@<W1>, _DWORD *a3@<X2>, char a4@<W3>, int8x16_t *a5@<X4>, size_t a6@<X5>, void *a7@<X8>)
{
  v11 = result;
  if (!a2)
  {
    if (result)
    {
      if (result <= 0x7FFFFFEF)
      {
        result = WTF::tryFastCompactMalloc((2 * result + 20));
        v13 = v29;
        if (!v29)
        {
          goto LABEL_23;
        }

        *v29 = 2;
        v13[1] = v11;
        *(v13 + 1) = v13 + 5;
        v13[4] = 0;
        v29 = a3;
        result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v29, v13 + 20);
        v16 = v29;
        if (!v29 || (v16 = v29[1], v16 < v11))
        {
          v17 = v13 + v16 + 10;
          *v17 = a4;
          v18 = (v17 + 1);
          v19 = &v18[2 * a6];
          if (a6 >= 0x40)
          {
            v20 = &v18[2 * (a6 & 0x7FFFFFFFFFFFFFC0)];
            v21 = 0uLL;
            do
            {
              v30.val[0] = *a5;
              v22 = a5[1];
              v31.val[0] = a5[2];
              v23 = a5[3];
              a5 += 4;
              v24 = v23;
              v31.val[1] = 0uLL;
              v32.val[0] = v22;
              v30.val[1] = 0uLL;
              v25 = v18;
              vst2q_s8(v25, v30);
              v25 += 32;
              v32.val[1] = 0uLL;
              vst2q_s8(v25, v32);
              v26 = v18 + 64;
              vst2q_s8(v26, v31);
              v27 = v18 + 96;
              vst2q_s8(v27, *(&v21 - 1));
              v18 += 128;
            }

            while (v18 != v20);
            v18 = v20;
          }

          while (v18 != v19)
          {
            v28 = a5->u8[0];
            a5 = (a5 + 1);
            *v18 = v28;
            v18 += 2;
          }

          goto LABEL_23;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

LABEL_12:
      v13 = 0;
      goto LABEL_23;
    }

LABEL_13:
    v13 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_23;
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
  v13 = v29;
  if (!v29)
  {
    goto LABEL_23;
  }

  v14 = v29 + 5;
  *v29 = 2;
  v13[1] = v11;
  *(v13 + 1) = v13 + 5;
  v13[4] = 4;
  v29 = a3;
  result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v29, v13 + 20);
  v15 = v29;
  if (v29)
  {
    v15 = v29[1];
    if (v15 >= v11)
    {
      goto LABEL_24;
    }
  }

  *(v14 + v15) = a4;
  result = v14 + v15 + 1;
  if (a6)
  {
    if (a6 != 1)
    {
      result = memcpy(result, a5, a6);
      goto LABEL_23;
    }

LABEL_25:
    *result = a5->i8[0];
  }

LABEL_23:
  *a7 = v13;
  return result;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(uint64_t *a1, __int128 *a2)
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

  return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::BidiBrowserAgent::BidiUserContextDeletionRecord>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

WebKit::BidiBrowsingContextAgent *WebKit::BidiBrowsingContextAgent::BidiBrowsingContextAgent(WebKit::BidiBrowsingContextAgent *this, WebKit::WebAutomationSession *a2, Inspector::BackendDispatcher *a3)
{
  *this = &unk_1F10E7308;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 6, a2 + 16);
  v6 = *(a2 + 3);
  atomic_fetch_add(v6, 1u);
  *(this + 1) = v6;
  v7 = WTF::fastMalloc(0x20);
  *(this + 2) = Inspector::BidiBrowsingContextBackendDispatcher::BidiBrowsingContextBackendDispatcher(v7, a3, this);
  return this;
}

void WebKit::BidiBrowsingContextAgent::~BidiBrowsingContextAgent(WebKit::BidiBrowsingContextAgent *this, void *a2)
{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    if (v3[2] == 1)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      --v3[2];
    }
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4);
      WTF::fastFree(v4, a2);
    }
  }
}

{
  WebKit::BidiBrowsingContextAgent::~BidiBrowsingContextAgent(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void WebKit::BidiBrowsingContextAgent::activate(uint64_t a1, const WTF::StringImpl **a2, uint64_t *a3)
{
  v4 = *(a1 + 8);
  if (v4 && (v5 = *(v4 + 8)) != 0)
  {
    CFRetain(*(v5 - 8));
    WebKit::WebAutomationSession::webPageProxyForHandle((v5 - 16), a2, v7, &v19);
    if (v19)
    {
      v8 = *a3;
      *a3 = 0;
      v9 = WTF::fastMalloc(0x10);
      *v9 = &unk_1F10E7360;
      *(v9 + 1) = v8;
      v16 = v9;
      WebKit::WebAutomationSession::switchToBrowsingContext((v5 - 16), a2, MEMORY[0x1E696EBA8], &v16);
      v10 = v16;
      v16 = 0;
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }
    }

    else
    {
      Inspector::Protocol::AutomationHelpers::getEnumConstantValue(9, &v16);
      v17 = v16;
      v18 = 1;
      WTF::Function<void ()(std::experimental::fundamentals_v3::expected<void,WTF::String>)>::operator()(a3, &v17);
      if (v18 == 1)
      {
        v14 = v17;
        v17 = 0;
        if (v14)
        {
          if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v14, v13);
          }
        }
      }
    }

    v15 = v19;
    v19 = 0;
    if (v15)
    {
      CFRelease(*(v15 + 1));
    }

    CFRelease(*(v5 - 8));
  }

  else
  {
    Inspector::Protocol::AutomationHelpers::getEnumConstantValue(5, &v19);
    v20 = v19;
    v21 = 1;
    WTF::Function<void ()(std::experimental::fundamentals_v3::expected<void,WTF::String>)>::operator()(a3, &v20);
    if (v21 == 1)
    {
      v12 = v20;
      v20 = 0;
      if (v12)
      {
        if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v12, v11);
        }
      }
    }
  }
}

void WebKit::BidiBrowsingContextAgent::close(uint64_t a1, const WTF::StringImpl **a2, uint64_t a3, const WTF::StringImpl *a4)
{
  v5 = *(a1 + 8);
  if (v5 && (v6 = *(v5 + 8)) != 0)
  {
    CFRetain(*(v6 - 8));
    WebKit::WebAutomationSession::webPageProxyForHandle((v6 - 16), a2, v8, &v17);
    if (v17)
    {
      WebKit::WebAutomationSession::closeBrowsingContext((v6 - 16), a2, a4);
    }

    else
    {
      Inspector::Protocol::AutomationHelpers::getEnumConstantValue(10, &v14);
      v15 = v14;
      v16 = 1;
      WTF::Function<void ()(std::experimental::fundamentals_v3::expected<void,WTF::String>)>::operator()(a4, &v15);
      if (v16 == 1)
      {
        v12 = v15;
        v15 = 0;
        if (v12)
        {
          if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v12, v11);
          }
        }
      }
    }

    v13 = v17;
    v17 = 0;
    if (v13)
    {
      CFRelease(*(v13 + 1));
    }

    CFRelease(*(v6 - 8));
  }

  else
  {
    Inspector::Protocol::AutomationHelpers::getEnumConstantValue(5, &v17);
    v18 = v17;
    v19 = 1;
    WTF::Function<void ()(std::experimental::fundamentals_v3::expected<void,WTF::String>)>::operator()(a4, &v18);
    if (v19 == 1)
    {
      v10 = v18;
      v18 = 0;
      if (v10)
      {
        if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v10, v9);
        }
      }
    }
  }
}

void WebKit::BidiBrowsingContextAgent::create(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v7 = *(a1 + 8);
  if (v7 && (v8 = *(v7 + 8)) != 0)
  {
    CFRetain(*(v8 - 8));
    if (a2 == 1)
    {
      v10 = 3;
    }

    else
    {
      v10 = 4;
    }

    LODWORD(v16) = v10;
    BYTE4(v16) = 1;
    v11 = *a6;
    *a6 = 0;
    v12 = WTF::fastMalloc(0x10);
    *v12 = &unk_1F10E7388;
    v12[1] = v11;
    v15 = v12;
    WebKit::WebAutomationSession::createBrowsingContext(v8 - 16, &v16, &v15);
    v13 = v15;
    v15 = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    CFRelease(*(v8 - 8));
  }

  else
  {
    Inspector::Protocol::AutomationHelpers::getEnumConstantValue(5, &v16);
    v17 = v16;
    v18 = 1;
    WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::String,WTF::String>)>::operator()(a6, &v17);
    std::experimental::fundamentals_v3::expected<WTF::String,WTF::String>::~expected(&v17, v14);
  }
}

uint64_t WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::String,WTF::String>)>::operator()(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  LOBYTE(v7) = 0;
  v8 = -1;
  v3 = *(a2 + 8);
  if (v3 != 255)
  {
    v4 = *a2;
    *a2 = 0;
    v7 = v4;
    v8 = v3;
  }

  (*(*v2 + 16))(v2, &v7);
  return std::experimental::fundamentals_v3::expected<WTF::String,WTF::String>::~expected(&v7, v5);
}

void WebKit::BidiBrowsingContextAgent::getBrowsingContextID(WTF::StringImpl *a1, uint64_t a2, uint64_t *a3)
{
  if (!a2 || (v4 = *(a2 + 8)) == 0)
  {
    *a1 = 0;
    return;
  }

  CFRetain(*(v4 - 8));
  v6 = WebKit::WebFrameProxy::webFrame(*a3, 1);
  if (v6)
  {
    v7 = v6;
    CFRetain(*(v6 + 8));
    if (*(v7 + 56) == 1)
    {
      v8 = *(v7 + 32);
      if (v8 && (v9 = *(v8 + 8)) != 0)
      {
        CFRetain(*(v9 - 8));
        WebKit::WebAutomationSession::handleForWebPageProxy((v4 - 16), (v9 - 16), a1);
        CFRelease(*(v9 - 8));
      }

      else
      {
        v10 = *MEMORY[0x1E696EBA8];
        if (*MEMORY[0x1E696EBA8])
        {
          atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
        }

        *a1 = v10;
      }

      CFRelease(*(v7 + 8));
      goto LABEL_15;
    }

    CFRelease(*(v7 + 8));
  }

  WebKit::WebAutomationSession::handleForWebFrameID(v4 - 16, *a3, 1, a1);
LABEL_15:
  v11 = *(v4 - 8);

  CFRelease(v11);
}

WTF::StringImpl *WebKit::BidiBrowsingContextAgent::getNavigableInfo(WTF::JSONImpl::Object *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, int a6)
{
  WTF::JSONImpl::Object::create(&v104, a1);
  WebKit::BidiBrowsingContextAgent::getBrowsingContextID(&v103, *(a2 + 8), (a3 + 248));
  v12 = v104;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::JSONImpl::Value::create(&v106, &v103, v13);
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>((v12 + 16), &v105, &v106, v107);
  if (v108 == 1)
  {
    v15 = *(v12 + 36);
    if (v15 == *(v12 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v12 + 24, &v105);
    }

    else
    {
      v16 = *(v12 + 24);
      v17 = v105;
      if (v105)
      {
        atomic_fetch_add_explicit(v105, 2u, memory_order_relaxed);
      }

      v18 = *(v12 + 36);
      *(v16 + 8 * v15) = v17;
      *(v12 + 36) = v18 + 1;
    }
  }

  v19 = v106;
  v106 = 0;
  if (v19)
  {
    if (*v19 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v19;
    }
  }

  v20 = v105;
  v105 = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v14);
  }

  v21 = WebCore::ResourceRequestBase::url((a3 + 8));
  v22 = v104;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::JSONImpl::Value::create(&v106, v21, v23);
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>((v22 + 16), &v105, &v106, v107);
  if (v108 == 1)
  {
    v25 = *(v22 + 36);
    if (v25 == *(v22 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v22 + 24, &v105);
    }

    else
    {
      v26 = *(v22 + 24);
      v27 = v105;
      if (v105)
      {
        atomic_fetch_add_explicit(v105, 2u, memory_order_relaxed);
      }

      v28 = *(v22 + 36);
      *(v26 + 8 * v25) = v27;
      *(v22 + 36) = v28 + 1;
    }
  }

  v29 = v106;
  v106 = 0;
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

  v30 = v105;
  v105 = 0;
  if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v30, v24);
  }

  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v31 = v104;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::JSONImpl::Value::create(&v106, &v102, v32);
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>((v31 + 16), &v105, &v106, v107);
  if (v108 == 1)
  {
    v34 = *(v31 + 36);
    if (v34 == *(v31 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v31 + 24, &v105);
    }

    else
    {
      v35 = *(v31 + 24);
      v36 = v105;
      if (v105)
      {
        atomic_fetch_add_explicit(v105, 2u, memory_order_relaxed);
      }

      v37 = *(v31 + 36);
      *(v35 + 8 * v34) = v36;
      *(v31 + 36) = v37 + 1;
    }
  }

  v38 = v106;
  v106 = 0;
  if (v38)
  {
    if (*v38 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v38;
    }
  }

  v39 = v105;
  v105 = 0;
  if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v39, v33);
  }

  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v40 = v104;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::JSONImpl::Value::create(&v106, &v101, v41);
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>((v40 + 16), &v105, &v106, v107);
  if (v108 == 1)
  {
    v43 = *(v40 + 36);
    if (v43 == *(v40 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v40 + 24, &v105);
    }

    else
    {
      v44 = *(v40 + 24);
      v45 = v105;
      if (v105)
      {
        atomic_fetch_add_explicit(v105, 2u, memory_order_relaxed);
      }

      v46 = *(v40 + 36);
      *(v44 + 8 * v43) = v45;
      *(v40 + 36) = v46 + 1;
    }
  }

  v47 = v106;
  v106 = 0;
  if (v47)
  {
    if (*v47 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v47;
    }
  }

  v48 = v105;
  v105 = 0;
  if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v48, v42);
  }

  v49 = v104;
  v50 = WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::JSONImpl::Value::null(&v105, v50);
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>((v49 + 16), &v106, &v105, v107);
  if (v108 == 1)
  {
    v52 = *(v49 + 36);
    if (v52 == *(v49 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v49 + 24, &v106);
    }

    else
    {
      v53 = *(v49 + 24);
      v54 = v106;
      if (v106)
      {
        atomic_fetch_add_explicit(v106, 2u, memory_order_relaxed);
      }

      v55 = *(v49 + 36);
      *(v53 + 8 * v52) = v54;
      *(v49 + 36) = v55 + 1;
    }
  }

  v56 = v105;
  v105 = 0;
  if (v56)
  {
    if (*v56 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v56;
    }
  }

  v57 = v106;
  v106 = 0;
  if (v57 && atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v57, v51);
  }

  v58 = v104;
  v59 = WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::JSONImpl::Value::null(&v105, v59);
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>((v58 + 16), &v106, &v105, v107);
  if (v108 == 1)
  {
    v61 = *(v58 + 36);
    if (v61 == *(v58 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v58 + 24, &v106);
    }

    else
    {
      v62 = *(v58 + 24);
      v63 = v106;
      if (v106)
      {
        atomic_fetch_add_explicit(v106, 2u, memory_order_relaxed);
      }

      v64 = *(v58 + 36);
      *(v62 + 8 * v61) = v63;
      *(v58 + 36) = v64 + 1;
    }
  }

  v65 = v105;
  v105 = 0;
  if (v65)
  {
    if (*v65 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v65;
    }
  }

  v66 = v106;
  v106 = 0;
  if (v66 && atomic_fetch_add_explicit(v66, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v66, v60);
  }

  v67 = v104;
  v104 = 0;
  *a1 = v67;
  v68 = v101;
  v101 = 0;
  if (v68 && atomic_fetch_add_explicit(v68, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v68, v60);
  }

  v69 = v102;
  v102 = 0;
  if (v69 && atomic_fetch_add_explicit(v69, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v69, v60);
  }

  v70 = v103;
  v103 = 0;
  if (v70 && atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v70, v60);
  }

  v71 = v104;
  v104 = 0;
  if (v71)
  {
    if (*v71 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
      if (!a6)
      {
        goto LABEL_113;
      }

      goto LABEL_86;
    }

    --*v71;
  }

  if (!a6)
  {
    goto LABEL_113;
  }

LABEL_86:
  if (*(a3 + 256))
  {
    WebKit::BidiBrowsingContextAgent::getBrowsingContextID(&v104, *(a2 + 8), (a3 + 256));
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::JSONImpl::Value::create(&v106, &v104, v72);
    WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>((v67 + 16), &v105, &v106, v107);
    if (v108 == 1)
    {
      v74 = *(v67 + 36);
      if (v74 == *(v67 + 32))
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v67 + 24, &v105);
      }

      else
      {
        v77 = *(v67 + 24);
        v78 = v105;
        if (v105)
        {
          atomic_fetch_add_explicit(v105, 2u, memory_order_relaxed);
        }

        v79 = *(v67 + 36);
        *(v77 + 8 * v74) = v78;
        *(v67 + 36) = v79 + 1;
      }
    }

    v83 = v106;
    v106 = 0;
    if (v83)
    {
      if (*v83 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v83;
      }
    }

    v84 = v105;
    v105 = 0;
    if (v84 && atomic_fetch_add_explicit(v84, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v84, v73);
    }

    v85 = v104;
    v104 = 0;
    if (v85)
    {
LABEL_111:
      if (atomic_fetch_add_explicit(v85, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v85, v73);
      }
    }
  }

  else
  {
    v75 = WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::JSONImpl::Value::null(&v105, v75);
    WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>((v67 + 16), &v106, &v105, v107);
    if (v108 == 1)
    {
      v76 = *(v67 + 36);
      if (v76 == *(v67 + 32))
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v67 + 24, &v106);
      }

      else
      {
        v80 = *(v67 + 24);
        v81 = v106;
        if (v106)
        {
          atomic_fetch_add_explicit(v106, 2u, memory_order_relaxed);
        }

        v82 = *(v67 + 36);
        *(v80 + 8 * v76) = v81;
        *(v67 + 36) = v82 + 1;
      }
    }

    v86 = v105;
    v105 = 0;
    if (v86)
    {
      if (*v86 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v86;
      }
    }

    v85 = v106;
    v106 = 0;
    if (v85)
    {
      goto LABEL_111;
    }
  }

LABEL_113:
  if ((a5 & 1) == 0 || a4)
  {
    v89 = WTF::fastMalloc(0x20);
    WTF::JSONImpl::ArrayBase::ArrayBase(v89);
    v90 = *(a3 + 364);
    if (v90)
    {
      v91 = *(a3 + 352);
      if (a5)
      {
        v92 = a4 - 1;
      }

      else
      {
        v92 = 0;
      }

      v93 = 368 * v90;
      do
      {
        WebKit::BidiBrowsingContextAgent::getNavigableInfo(&v106, a2, v91, v92, a5 & 1, 0);
        v107[0] = v106;
        WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowser::UserContextInfo>::addItem<Inspector::Protocol::BidiBrowser::UserContextInfo>(v89, v107);
        v94 = v107[0];
        v107[0] = 0;
        if (v94)
        {
          if (*v94 == 1)
          {
            WTF::JSONImpl::Value::operator delete();
          }

          else
          {
            --*v94;
          }
        }

        v91 += 368;
        v93 -= 368;
      }

      while (v93);
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v105 = v89;
    WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>((v67 + 16), &v106, &v105, v107);
  }

  else
  {
    v87 = WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::JSONImpl::Value::null(&v105, v87);
    WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>((v67 + 16), &v106, &v105, v107);
  }

  if (v108 == 1)
  {
    v95 = *(v67 + 36);
    if (v95 == *(v67 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v67 + 24, &v106);
    }

    else
    {
      v96 = *(v67 + 24);
      v97 = v106;
      if (v106)
      {
        atomic_fetch_add_explicit(v106, 2u, memory_order_relaxed);
      }

      v98 = *(v67 + 36);
      *(v96 + 8 * v95) = v97;
      *(v67 + 36) = v98 + 1;
    }
  }

  v99 = v105;
  v105 = 0;
  if (v99)
  {
    if (*v99 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v99;
    }
  }

  result = v106;
  v106 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v88);
    }
  }

  return result;
}

void WebKit::BidiBrowsingContextAgent::getNextTree(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5, uint64_t *a6)
{
  v8 = *(a2 + 12);
  if (v8)
  {
    v13 = *a2 + 8 * v8;
    v14 = *(v13 - 8);
    *(v13 - 8) = 0;
    WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(a2, v8 - 1);
    v15 = *a2;
    v16 = *(a2 + 8);
    *a2 = 0u;
    v17 = *a3;
    *a3 = 0;
    v18 = *a6;
    *a6 = 0;
    v24 = v17;
    v25 = v18;
    *&v26 = a4;
    BYTE8(v26) = a5;
    CFRetain(*(v14 + 8));
    v19 = WTF::fastMalloc(0x48);
    *v19 = &unk_1F10E73B0;
    *(v19 + 8) = a1;
    *(v19 + 16) = v15;
    v23[0] = 0;
    v23[1] = 0;
    *(v19 + 24) = v16;
    *(v19 + 32) = v17;
    *(v19 + 40) = v18;
    *(v19 + 48) = v26;
    *(v19 + 64) = v14;
    v28 = v19;
    WebKit::WebPageProxy::getAllFrameTrees(v14, &v28);
    if (v28)
    {
      (*(*v28 + 8))(v28);
    }

    v27 = 0;
    v24 = 0;
    v25 = 0;
    WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v23, v20);
    CFRelease(*(v14 + 8));
  }

  else
  {
    v21 = *a3;
    *a3 = 0;
    v29 = v21;
    v30 = 0;
    WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::RawPtrTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>>,WTF::String>)>::operator()(*a6, &v29);
    std::experimental::fundamentals_v3::expected<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::RawPtrTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>>,WTF::String>::~expected(&v29, v22);
  }
}

uint64_t WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::RawPtrTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>>,WTF::String>)>::operator()(uint64_t a1, uint64_t *a2)
{
  LOBYTE(v6) = 0;
  v7 = -1;
  v2 = *(a2 + 8);
  if (v2 != 255)
  {
    v3 = *a2;
    *a2 = 0;
    v6 = v3;
    v7 = v2;
  }

  (*(*a1 + 16))(a1, &v6);
  return std::experimental::fundamentals_v3::expected<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::RawPtrTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>>,WTF::String>::~expected(&v6, v4);
}

uint64_t std::experimental::fundamentals_v3::expected<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::RawPtrTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>>,WTF::String>::~expected(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 8);
  if (v3 != 255)
  {
    v4 = *a1;
    *a1 = 0;
    if (v3)
    {
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }

    else if (v4)
    {
      if (*v4 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v4;
      }
    }
  }

  *(a1 + 8) = -1;
  return a1;
}

void WebKit::BidiBrowsingContextAgent::getTree(uint64_t a1, const WTF::StringImpl **a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(a1 + 8);
  if (!v5 || (v6 = *(v5 + 8)) == 0)
  {
    Inspector::Protocol::AutomationHelpers::getEnumConstantValue(5, &v70);
    v78 = v70;
    v79 = 1;
    WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::RawPtrTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>>,WTF::String>)>::operator()(*a4, &v78);
    std::experimental::fundamentals_v3::expected<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::RawPtrTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>>,WTF::String>::~expected(&v78, v13);
    return;
  }

  v9 = a1;
  CFRetain(*(v6 - 8));
  if (*(a3 + 8) == 1)
  {
    v10 = *a3;
    if (*a3 < 0.0)
    {
      Inspector::Protocol::AutomationHelpers::getEnumConstantValue(17, &v70);
      v76 = v70;
      v77 = 1;
      WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::RawPtrTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>>,WTF::String>)>::operator()(*a4, &v76);
      v12 = &v76;
LABEL_74:
      std::experimental::fundamentals_v3::expected<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::RawPtrTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>>,WTF::String>::~expected(v12, v11);
      goto LABEL_75;
    }

    if (floor(v10) != v10)
    {
      Inspector::Protocol::AutomationHelpers::getEnumConstantValue(17, &v70);
      v74 = v70;
      v75 = 1;
      WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::RawPtrTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>>,WTF::String>)>::operator()(*a4, &v74);
      v12 = &v74;
      goto LABEL_74;
    }

    if (v10 > 9.00719925e15)
    {
      Inspector::Protocol::AutomationHelpers::getEnumConstantValue(17, &v70);
      v72 = v70;
      v73 = 1;
      WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::RawPtrTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>>,WTF::String>)>::operator()(*a4, &v72);
      v12 = &v72;
      goto LABEL_74;
    }

    v14 = v10;
    v15 = 1;
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  v70 = 0;
  v71 = 0;
  v16 = *(v6 + 32);
  if (v16 && (v17 = *(v16 + 8)) != 0)
  {
    v18 = v17 - 16;
    CFRetain(*(v17 - 8));
  }

  else
  {
    v18 = 0;
  }

  v19 = *(v18 + 84);
  if (!v19)
  {
LABEL_43:
    CFRelease(*(v18 + 8));
    goto LABEL_44;
  }

  v54 = v15;
  v55 = v14;
  v56 = v9;
  v57 = a4;
  v58 = v6;
  v20 = (v6 - 16);
  v53 = v18;
  v21 = *(v18 + 72);
  v59 = &v21[v19];
  do
  {
    v22 = *v21;
    v60 = (*v21 + 16);
    atomic_fetch_add(v60, 1u);
    WebKit::WebProcessProxy::pages(v22, &v68);
    if (v69)
    {
      v24 = v68;
      v25 = 8 * v69;
      while (1)
      {
        v26 = *v24;
        CFRetain(*(*v24 + 8));
        v67 = v26;
        if ((*(v26 + 962) & 1) == 0)
        {
          v67 = 0;
          v31 = 13;
LABEL_32:
          CFRelease(*(v26 + 8));
          goto LABEL_33;
        }

        if (*a2 && *(*a2 + 1))
        {
          WebKit::WebAutomationSession::handleForWebPageProxy(v20, v26, &v66);
          v28 = WTF::equal(v66, *a2, v27);
          v29 = v66;
          v66 = 0;
          if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v29, v23);
            if (!v28)
            {
              goto LABEL_27;
            }
          }

          else if (!v28)
          {
            goto LABEL_27;
          }

          v30 = HIDWORD(v71);
          if (HIDWORD(v71) == v71)
          {
            WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>&>(&v70, &v67);
          }

          else
          {
            v34 = v70;
            v35 = v67;
            CFRetain(*(v67 + 8));
            *(v34 + 8 * v30) = v35;
            ++HIDWORD(v71);
          }

          v31 = 12;
        }

        else
        {
          v32 = HIDWORD(v71);
          if (HIDWORD(v71) == v71)
          {
            WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>&>(&v70, &v67);
LABEL_27:
            v31 = 0;
            goto LABEL_31;
          }

          v33 = v70;
          CFRetain(*(v26 + 8));
          v31 = 0;
          *(v33 + 8 * v32) = v26;
          ++HIDWORD(v71);
        }

LABEL_31:
        v26 = v67;
        v67 = 0;
        if (v26)
        {
          goto LABEL_32;
        }

LABEL_33:
        if (v31 == 13 || !v31)
        {
          v24 += 8;
          v25 -= 8;
          if (v25)
          {
            continue;
          }
        }

        break;
      }
    }

    WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v68, v23);
    if (v22)
    {
      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v60);
    }

    ++v21;
  }

  while (v21 != v59);
  a4 = v57;
  v6 = v58;
  v14 = v55;
  v9 = v56;
  v18 = v53;
  v15 = v54;
  if (v53)
  {
    goto LABEL_43;
  }

LABEL_44:
  if (!*a2)
  {
    v36 = HIDWORD(v71);
    goto LABEL_54;
  }

  v36 = HIDWORD(v71);
  if (*(*a2 + 1))
  {
    v37 = HIDWORD(v71) == 0;
  }

  else
  {
    v37 = 0;
  }

  if (v37)
  {
    Inspector::Protocol::AutomationHelpers::getEnumConstantValue(10, &v68);
    v64 = v68;
    v65 = 1;
    WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::RawPtrTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>>,WTF::String>)>::operator()(*a4, &v64);
    v39 = &v64;
LABEL_70:
    std::experimental::fundamentals_v3::expected<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::RawPtrTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>>,WTF::String>::~expected(v39, v38);
    goto LABEL_71;
  }

LABEL_54:
  if (!v36)
  {
    v52 = WTF::fastMalloc(0x20);
    v62 = WTF::JSONImpl::ArrayBase::ArrayBase(v52);
    v63 = 0;
    WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::RawPtrTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>>,WTF::String>)>::operator()(*a4, &v62);
    v39 = &v62;
    goto LABEL_70;
  }

  if (v36 != 1)
  {
    v40 = 0;
    v41 = 0;
    do
    {
      if (v41 >= v36 || (v42 = v40 + v36 - 1, v42 >= v36))
      {
        __break(0xC471u);
        JUMPOUT(0x19D68909CLL);
      }

      v43 = v70;
      v44 = *(v70 + 8 * v41);
      *(v70 + 8 * v41) = 0;
      v45 = *(v43 + 8 * v42);
      *(v43 + 8 * v42) = 0;
      v46 = *(v43 + 8 * v41);
      *(v43 + 8 * v41) = v45;
      if (v46)
      {
        CFRelease(*(v46 + 8));
      }

      v47 = *(v43 + 8 * v42);
      *(v43 + 8 * v42) = v44;
      if (v47)
      {
        CFRelease(*(v47 + 8));
      }

      ++v41;
      v36 = HIDWORD(v71);
      --v40;
    }

    while (v41 < HIDWORD(v71) >> 1);
  }

  v48 = WTF::fastMalloc(0x20);
  v61 = WTF::JSONImpl::ArrayBase::ArrayBase(v48);
  v49 = *a4;
  *a4 = 0;
  v50 = WTF::fastMalloc(0x10);
  *v50 = &unk_1F10E73D8;
  v50[1] = v49;
  v68 = v50;
  WebKit::BidiBrowsingContextAgent::getNextTree(v9, &v70, &v61, v14, v15, &v68);
  if (v68)
  {
    (*(*v68 + 8))(v68);
  }

  if (v61)
  {
    if (*v61 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v61;
    }
  }

LABEL_71:
  WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v70, v51);
LABEL_75:
  CFRelease(*(v6 - 8));
}

void WebKit::BidiBrowsingContextAgent::handleUserPrompt(uint64_t a1, const WTF::StringImpl **a2, _BYTE *a3, uint64_t a4, uint64_t *a5)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = *(v6 + 8);
    if (v7)
    {
      CFRetain(*(v7 - 8));
      if (a3[1] == 1 && *a3 == 1)
      {
        WebKit::WebAutomationSession::acceptCurrentJavaScriptDialog((v7 - 16), a2, v10, &v17);
        WTF::Function<void ()(std::experimental::fundamentals_v3::expected<void,WTF::String>)>::operator()(a5, &v17);
        if (v18 != 1)
        {
          goto LABEL_16;
        }

        v12 = v17;
        v17 = 0;
        if (!v12)
        {
          goto LABEL_16;
        }
      }

      else
      {
        WebKit::WebAutomationSession::dismissCurrentJavaScriptDialog((v7 - 16), a2, v10, &v15);
        WTF::Function<void ()(std::experimental::fundamentals_v3::expected<void,WTF::String>)>::operator()(a5, &v15);
        if (v16 != 1)
        {
          goto LABEL_16;
        }

        v12 = v15;
        v15 = 0;
        if (!v12)
        {
          goto LABEL_16;
        }
      }

      if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v11);
      }

LABEL_16:
      CFRelease(*(v7 - 8));
      return;
    }
  }

  Inspector::Protocol::AutomationHelpers::getEnumConstantValue(5, &v19);
  v20 = v19;
  v21 = 1;
  WTF::Function<void ()(std::experimental::fundamentals_v3::expected<void,WTF::String>)>::operator()(a5, &v20);
  if (v21 == 1)
  {
    v14 = v20;
    v20 = 0;
    if (v14)
    {
      if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v13);
      }
    }
  }
}

void WebKit::BidiBrowsingContextAgent::navigate(uint64_t a1, const WTF::StringImpl **a2, const WTF::StringImpl *a3, uint64_t a4, uint64_t *a5)
{
  v6 = *(a1 + 8);
  if (v6 && (v7 = *(v6 + 8)) != 0)
  {
    CFRetain(*(v7 - 8));
    if (*(a4 + 4))
    {
      v11 = *a4 - 2;
    }

    else
    {
      v11 = 0;
    }

    if (v11 >= 3)
    {
      v12 = 29;
    }

    else
    {
      v12 = v11 + 27;
    }

    v22 = v12;
    v23 = 1;
    v20 = 0x41124F8000000000;
    v21 = 1;
    v13 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
    }

    v14 = *a5;
    *a5 = 0;
    v15 = WTF::fastMalloc(0x18);
    *v15 = &unk_1F10E7400;
    if (v13)
    {
      atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
    }

    v15[1] = v13;
    v15[2] = v14;
    v19 = v15;
    WebKit::WebAutomationSession::navigateBrowsingContext((v7 - 16), a2, a3, &v22, &v20, &v19);
    v17 = v19;
    v19 = 0;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    if (v13)
    {
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v16);
      }
    }

    CFRelease(*(v7 - 8));
  }

  else
  {
    Inspector::Protocol::AutomationHelpers::getEnumConstantValue(5, &v20);
    v24[0] = v20;
    v25 = 1;
    WTF::Function<void ()(std::experimental::fundamentals_v3::expected<std::tuple<WTF::String,WTF::String>,WTF::String>)>::operator()(*a5, v24);
    std::experimental::fundamentals_v3::expected<std::tuple<WTF::String,WTF::String>,WTF::String>::~expected(v24, v18);
  }
}

uint64_t WTF::Function<void ()(std::experimental::fundamentals_v3::expected<std::tuple<WTF::String,WTF::String>,WTF::String>)>::operator()(uint64_t a1, uint64_t *a2)
{
  LOBYTE(v7[0]) = 0;
  v8 = -1;
  v2 = *(a2 + 16);
  if (v2 != 255)
  {
    v3 = *a2;
    *a2 = 0;
    v7[0] = v3;
    if (!v2)
    {
      v4 = a2[1];
      a2[1] = 0;
      v7[1] = v4;
    }

    v8 = v2;
  }

  (*(*a1 + 16))(a1, v7);
  return std::experimental::fundamentals_v3::expected<std::tuple<WTF::String,WTF::String>,WTF::String>::~expected(v7, v5);
}

uint64_t std::experimental::fundamentals_v3::expected<std::tuple<WTF::String,WTF::String>,WTF::String>::~expected(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 16) != 255)
  {
    if (!*(a1 + 16))
    {
      v3 = *(a1 + 8);
      *(a1 + 8) = 0;
      if (v3)
      {
        if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v3, a2);
        }
      }
    }

    v4 = *a1;
    *a1 = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  *(a1 + 16) = -1;
  return a1;
}

uint64_t WebKit::BidiBrowsingContextAgent::reload(uint64_t a1, const WTF::StringImpl **a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *(a1 + 8);
  if (v6 && (v7 = *(v6 + 8)) != 0)
  {
    v10 = (v7 - 16);
    CFRetain(*(v7 - 8));
    if (*(a4 + 4))
    {
      v11 = *a4 - 2;
    }

    else
    {
      v11 = 0;
    }

    if (v11 >= 3)
    {
      v12 = 29;
    }

    else
    {
      v12 = v11 + 27;
    }

    v22 = v12;
    v23 = 1;
    v20 = 0x41124F8000000000;
    v21 = 1;
    v13 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
    }

    v14 = *a5;
    *a5 = 0;
    v15 = WTF::fastMalloc(0x20);
    *v15 = &unk_1F10E7428;
    v15[1] = v10;
    if (v13)
    {
      atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
    }

    v15[2] = v13;
    v15[3] = v14;
    v19 = v15;
    WebKit::WebAutomationSession::reloadBrowsingContext(v10, a2, &v22, &v20, &v19);
    result = v19;
    v19 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v13)
    {
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(v13, v16);
      }
    }
  }

  else
  {
    Inspector::Protocol::AutomationHelpers::getEnumConstantValue(5, &v20);
    v24[0] = v20;
    v25 = 1;
    WTF::Function<void ()(std::experimental::fundamentals_v3::expected<std::tuple<WTF::String,WTF::String>,WTF::String>)>::operator()(*a5, v24);
    return std::experimental::fundamentals_v3::expected<std::tuple<WTF::String,WTF::String>,WTF::String>::~expected(v24, v18);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::BidiBrowsingContextAgent::activate(WTF::String const&,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<void,WTF::String>)> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10E7360;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BidiBrowsingContextAgent::activate(WTF::String const&,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<void,WTF::String>)> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10E7360;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::BidiBrowsingContextAgent::activate(WTF::String const&,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<void,WTF::String>)> &&)::$_0,void,std::experimental::fundamentals_v3::expected<void,WTF::String>>::call(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    v2 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    }

    v5 = v2;
    v6 = 1;
  }

  else
  {
    LOBYTE(v5) = 0;
    v6 = 0;
  }

  result = WTF::Function<void ()(std::experimental::fundamentals_v3::expected<void,WTF::String>)>::operator()((a1 + 8), &v5);
  if (v6 == 1)
  {
    result = v5;
    v5 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v4);
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::BidiBrowsingContextAgent::create(Inspector::Protocol::BidiBrowsingContext::CreateType,WTF::String const&,std::optional<BOOL> &&,WTF::String const&,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::String,WTF::String>)> &&)::$_0,void,std::experimental::fundamentals_v3<std::tuple<WTF::String,Inspector::Protocol::Automation::BrowsingContextPresentation>,WTF::String>>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10E7388;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BidiBrowsingContextAgent::create(Inspector::Protocol::BidiBrowsingContext::CreateType,WTF::String const&,std::optional<BOOL> &&,WTF::String const&,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::String,WTF::String>)> &&)::$_0,void,std::experimental::fundamentals_v3<std::tuple<WTF::String,Inspector::Protocol::Automation::BrowsingContextPresentation>,WTF::String>>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10E7388;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BidiBrowsingContextAgent::create(Inspector::Protocol::BidiBrowsingContext::CreateType,WTF::String const&,std::optional<BOOL> &&,WTF::String const&,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::String,WTF::String>)> &&)::$_0,void,std::experimental::fundamentals_v3<std::tuple<WTF::String,Inspector::Protocol::Automation::BrowsingContextPresentation>,WTF::String>>::call(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (*(a2 + 16))
  {
    if (v2 != 1)
    {
      mpark::throw_bad_variant_access(a1);
    }

    v3 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    }
  }

  else
  {
    v3 = *a2;
    *a2 = 0;
  }

  v6 = v3;
  v7 = v2;
  WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::String,WTF::String>)>::operator()(a1 + 1, &v6);
  return std::experimental::fundamentals_v3::expected<WTF::String,WTF::String>::~expected(&v6, v4);
}

void WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 12);
  if (v2 < a2)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    if (v2 != a2)
    {
      v5 = (*a1 + 8 * a2);
      v6 = 8 * v2 - 8 * a2;
      do
      {
        v7 = *v5;
        *v5 = 0;
        if (v7)
        {
          CFRelease(*(v7 + 8));
        }

        ++v5;
        v6 -= 8;
      }

      while (v6);
    }

    *(a1 + 12) = v3;
  }
}

void *WTF::Detail::CallableWrapper<WebKit::BidiBrowsingContextAgent::getNextTree(WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::RawPtrTraits<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiBrowsingContext::Info>>,std::optional<unsigned long long>,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::String>)> &&)::$_0,void,WTF::Vector<WebKit::FrameTreeNodeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F10E73B0;
  v3 = a1[8];
  a1[8] = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }

  v4 = a1[5];
  a1[5] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[4];
  a1[4] = 0;
  if (v5)
  {
    if (*v5 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v5;
    }
  }

  WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 2), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BidiBrowsingContextAgent::getNextTree(WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::RawPtrTraits<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiBrowsingContext::Info>>,std::optional<unsigned long long>,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::String>)> &&)::$_0,void,WTF::Vector<WebKit::FrameTreeNodeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F10E73B0;
  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }

  v4 = *(a1 + 5);
  *(a1 + 5) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 4);
  *(a1 + 4) = 0;
  if (v5)
  {
    if (*v5 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v5;
    }
  }

  WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 16, a2);

  return WTF::fastFree(a1, v6);
}

_DWORD *WTF::Detail::CallableWrapper<WebKit::BidiBrowsingContextAgent::getNextTree(WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::RawPtrTraits<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiBrowsingContext::Info>>,std::optional<unsigned long long>,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::String>)> &&)::$_0,void,WTF::Vector<WebKit::FrameTreeNodeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::call(void *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = *(a2 + 12);
  if (v4)
  {
    v5 = *a2;
    v6 = 368 * v4;
    do
    {
      WebKit::BidiBrowsingContextAgent::getNavigableInfo(&v12, v3, v5, a1[6], a1[7], 1);
      v7 = a1[4];
      v11 = v12;
      WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowser::UserContextInfo>::addItem<Inspector::Protocol::BidiBrowser::UserContextInfo>(v7, &v11);
      v8 = v11;
      v11 = 0;
      if (v8)
      {
        if (*v8 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --*v8;
        }
      }

      v5 += 368;
      v6 -= 368;
    }

    while (v6);
  }

  v9 = a1[4];
  a1[4] = 0;
  v12 = v9;
  WebKit::BidiBrowsingContextAgent::getNextTree(v3, (a1 + 2), &v12, a1[6], a1[7], a1 + 5);
  result = v12;
  if (v12)
  {
    if (*v12 == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v12;
    }
  }

  return result;
}

CFTypeRef WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>&>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *(a1 + 12);
  v5 = *a1;
  v6 = *v3;
  result = CFRetain(*(*v3 + 8));
  *(v5 + 8 * v4) = v6;
  ++*(a1 + 12);
  return result;
}

unint64_t WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

void *WTF::Detail::CallableWrapper<WebKit::BidiBrowsingContextAgent::getTree(WTF::String const&,std::optional<double> &&,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::RawPtrTraits<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiBrowsingContext::Info>>,WTF::String>)> &&)::$_0,void,WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::RawPtrTraits<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiBrowsingContext::Info>>>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10E73D8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BidiBrowsingContextAgent::getTree(WTF::String const&,std::optional<double> &&,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::RawPtrTraits<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiBrowsingContext::Info>>,WTF::String>)> &&)::$_0,void,WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::RawPtrTraits<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiBrowsingContext::Info>>>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10E73D8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BidiBrowsingContextAgent::getTree(WTF::String const&,std::optional<double> &&,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::RawPtrTraits<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiBrowsingContext::Info>>,WTF::String>)> &&)::$_0,void,WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::RawPtrTraits<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiBrowsingContext::Info>>>::call(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    mpark::throw_bad_variant_access(a1);
  }

  v2 = *a2;
  *v2 = **a2 + 1;
  v5 = v2;
  v6 = 0;
  WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::RawPtrTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>>,WTF::String>)>::operator()(a1[1], &v5);
  return std::experimental::fundamentals_v3::expected<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::RawPtrTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>>,WTF::String>::~expected(&v5, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::BidiBrowsingContextAgent::navigate(WTF::String const&,WTF::String const&,std::optional<Inspector::Protocol::BidiBrowsingContext::ReadinessState> &&,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<std::tuple<WTF::String,WTF::String>,WTF::String>)> &&)::$_0,void,std::experimental::fundamentals_v3<void,WTF::String>>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F10E7400;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::BidiBrowsingContextAgent::navigate(WTF::String const&,WTF::String const&,std::optional<Inspector::Protocol::BidiBrowsingContext::ReadinessState> &&,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<std::tuple<WTF::String,WTF::String>,WTF::String>)> &&)::$_0,void,std::experimental::fundamentals_v3<void,WTF::String>>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F10E7400;
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

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::BidiBrowsingContextAgent::navigate(WTF::String const&,WTF::String const&,std::optional<Inspector::Protocol::BidiBrowsingContext::ReadinessState> &&,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<std::tuple<WTF::String,WTF::String>,WTF::String>)> &&)::$_0,void,std::experimental::fundamentals_v3<void,WTF::String>>::call(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    v3 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    }

    *&v13 = v3;
    v14 = 1;
    WTF::Function<void ()(std::experimental::fundamentals_v3::expected<std::tuple<WTF::String,WTF::String>,WTF::String>)>::operator()(*(a1 + 16), &v13);
    return std::experimental::fundamentals_v3::expected<std::tuple<WTF::String,WTF::String>,WTF::String>::~expected(&v13, v4);
  }

  else
  {
    v11[0] = "placeholder_navigation";
    v11[1] = 23;
    v6 = *(a1 + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    }

    v12[0] = v6;
    std::__tuple_leaf<1ul,WTF::String,false>::__tuple_leaf[abi:sn200100]<WTF::ASCIILiteral,0>(&v12[1], v11);
    v7 = *v12;
    v12[0] = 0;
    v12[1] = 0;
    v13 = v7;
    v14 = 0;
    WTF::Function<void ()(std::experimental::fundamentals_v3::expected<std::tuple<WTF::String,WTF::String>,WTF::String>)>::operator()(*(a1 + 16), &v13);
    std::experimental::fundamentals_v3::expected<std::tuple<WTF::String,WTF::String>,WTF::String>::~expected(&v13, v8);
    v10 = v12[1];
    v12[1] = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
    }

    result = v12[0];
    v12[0] = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v9);
    }
  }

  return result;
}

void *std::__tuple_leaf<1ul,WTF::String,false>::__tuple_leaf[abi:sn200100]<WTF::ASCIILiteral,0>(void *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = MEMORY[0x1E696EB88];
      atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    }

    else
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v4 = v6;
    }

    *a1 = v4;
  }

  else
  {
    *a1 = 0;
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::BidiBrowsingContextAgent::reload(WTF::String const&,std::optional<BOOL> &&,std::optional<Inspector::Protocol::BidiBrowsingContext::ReadinessState> &&,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<std::tuple<WTF::String,WTF::String>,WTF::String>)> &&)::$_0,void,std::experimental<void,WTF::String>>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F10E7428;
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
    CFRelease(*(v5 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BidiBrowsingContextAgent::reload(WTF::String const&,std::optional<BOOL> &&,std::optional<Inspector::Protocol::BidiBrowsingContext::ReadinessState> &&,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<std::tuple<WTF::String,WTF::String>,WTF::String>)> &&)::$_0,void,std::experimental<void,WTF::String>>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F10E7428;
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
    CFRelease(*(v5 + 8));
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::BidiBrowsingContextAgent::reload(WTF::String const&,std::optional<BOOL> &&,std::optional<Inspector::Protocol::BidiBrowsingContext::ReadinessState> &&,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<std::tuple<WTF::String,WTF::String>,WTF::String>)> &&)::$_0,void,std::experimental<void,WTF::String>>::call(uint64_t a1, uint64_t a2, const WTF::StringImpl *a3)
{
  if (*(a2 + 8) == 1)
  {
    v4 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    }

    goto LABEL_16;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    Inspector::Protocol::AutomationHelpers::getEnumConstantValue(5, v18);
    v4 = v18[0];
LABEL_16:
    *&v20 = v4;
    v21 = 1;
    WTF::Function<void ()(std::experimental::fundamentals_v3::expected<std::tuple<WTF::String,WTF::String>,WTF::String>)>::operator()(*(a1 + 24), &v20);
    std::experimental::fundamentals_v3::expected<std::tuple<WTF::String,WTF::String>,WTF::String>::~expected(&v20, v13);
    return;
  }

  WebKit::WebAutomationSession::webPageProxyForHandle(v5, (a1 + 16), a3, &v19);
  if (v19)
  {
    WebKit::WebPageProxy::currentURL(v19, &v17);
    v16[0] = "placeholder_navigation";
    v16[1] = 23;
    v6 = v17;
    v17 = 0;
    v18[0] = v6;
    std::__tuple_leaf<1ul,WTF::String,false>::__tuple_leaf[abi:sn200100]<WTF::ASCIILiteral,0>(&v18[1], v16);
    v7 = *v18;
    v18[0] = 0;
    v18[1] = 0;
    v20 = v7;
    v21 = 0;
    WTF::Function<void ()(std::experimental::fundamentals_v3::expected<std::tuple<WTF::String,WTF::String>,WTF::String>)>::operator()(*(a1 + 24), &v20);
    std::experimental::fundamentals_v3::expected<std::tuple<WTF::String,WTF::String>,WTF::String>::~expected(&v20, v8);
    v10 = v18[1];
    v18[1] = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
    }

    v11 = v18[0];
    v18[0] = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v9);
    }

    v12 = v17;
    v17 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v9);
    }
  }

  else
  {
    Inspector::Protocol::AutomationHelpers::getEnumConstantValue(9, v18);
    *&v20 = v18[0];
    v21 = 1;
    WTF::Function<void ()(std::experimental::fundamentals_v3::expected<std::tuple<WTF::String,WTF::String>,WTF::String>)>::operator()(*(a1 + 24), &v20);
    std::experimental::fundamentals_v3::expected<std::tuple<WTF::String,WTF::String>,WTF::String>::~expected(&v20, v14);
  }

  v15 = v19;
  v19 = 0;
  if (v15)
  {
    CFRelease(*(v15 + 1));
  }
}