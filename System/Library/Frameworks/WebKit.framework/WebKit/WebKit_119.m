void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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
          WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v21 + 1), v9);
          v22 = *v12;
          v21[1] = 0;
          v21[2] = 0;
          *v21 = v22;
          WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt((v21 + 1), v12 + 2);
          WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v12 + 1), v23);
          if (v12 == a3)
          {
            v11 = v21;
          }
        }

        else
        {
          WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v12 + 1), v9);
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

unint64_t WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

unsigned int *WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(unsigned int *result, unint64_t a2)
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

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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
            v23 = *(v15 + 16 * v20);
            v20 = (v20 + v21++) & v16;
          }

          while (v23);
          v24 = v15 + 16 * v22;
          std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>::reset[abi:sn200100]((v24 + 8), 0);
          *v24 = *v13;
          v25 = v13[1];
          v13[1] = 0;
          *(v24 + 8) = v25;
          std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>::reset[abi:sn200100](v13 + 1, 0);
          if (v13 == a3)
          {
            v12 = v24;
          }
        }

        else
        {
          std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>::reset[abi:sn200100](v13 + 1, 0);
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

WTF::StringImpl ****WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *a1, uint64_t a2)
{
  *a2 = -1;
  result = std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>::reset[abi:sn200100]((a2 + 8), 0);
  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }

  return result;
}

void WebKit::NavigationState::ref(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  v1 = WeakRetained;
  if (WeakRetained)
  {
  }
}

void sub_19DC39BA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::NavigationState::deref(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);

  if (WeakRetained)
  {
  }
}

void sub_19DC39C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::NavigationState::fromWebPage(WebKit::NavigationState *this, WebKit::WebPageProxy *a2)
{
  {
    WebKit::navigationStates(void)::navigationStates = 0;
    *&dword_1ED6433F8 = 0;
  }

  WTF::WeakHashMap<WebKit::WebPageProxy,WTF::WeakPtr<WebKit::NavigationState,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultWeakPtrImpl>::get(&WebKit::navigationStates(void)::navigationStates, this, &v6);
  v3 = v6;
  if (!v6)
  {
    return 0;
  }

  v4 = *(v6 + 1);
  v6 = 0;
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, v2);
  }

  return v4;
}

uint64_t *WTF::WeakHashMap<WebKit::WebPageProxy,WTF::WeakPtr<WebKit::NavigationState,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultWeakPtrImpl>::get@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  ++*(result + 2);
  v3 = *(a2 + 24);
  if (v3)
  {
    if (*(v3 + 8) && (v4 = *result) != 0)
    {
      v5 = *(v4 - 8);
      v6 = (~(v3 << 32) + v3) ^ ((~(v3 << 32) + v3) >> 22);
      v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
      v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
      v9 = v5 & ((v8 >> 31) ^ v8);
      for (i = 1; ; ++i)
      {
        v11 = v9;
        v12 = *(v4 + 16 * v9);
        if (v12 != -1)
        {
          if (!v12)
          {
            goto LABEL_9;
          }

          if (v12 == v3)
          {
            break;
          }
        }

        v9 = (v11 + i) & v5;
      }

      v3 = *(v4 + 16 * v11 + 8);
      if (v3)
      {
        atomic_fetch_add(v3, 1u);
      }
    }

    else
    {
LABEL_9:
      v3 = 0;
    }
  }

  *a3 = v3;
  return result;
}

void WebKit::NavigationState::navigationGestureDidBegin(id *this)
{
  if (*(this + 19))
  {
    WeakRetained = objc_loadWeakRetained(this + 3);
    if (WeakRetained)
    {
      v2 = objc_loadWeakRetained(this + 2);
      [WeakRetained _webViewDidBeginNavigationGesture:v2];
      if (v2)
      {
      }
    }
  }
}

void sub_19DC39E04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v10)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::NavigationState::navigationGestureWillEnd(id *this, int a2, WebBackForwardListItem *a3)
{
  if ((*(this + 19) & 2) != 0)
  {
    WeakRetained = objc_loadWeakRetained(this + 3);
    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained(this + 2);
      if (a2)
      {
        v7 = *(a3 + 1);
        if (v7)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            __break(0xC471u);
            JUMPOUT(0x19DC39EB4);
          }
        }
      }

      else
      {
        v7 = 0;
      }

      [WeakRetained _webViewWillEndNavigationGesture:v6 withNavigationToBackForwardListItem:v7];
      if (v6)
      {
      }
    }
  }
}

void WebKit::NavigationState::navigationGestureDidEnd(id *this, int a2, WebBackForwardListItem *a3)
{
  if ((*(this + 19) & 4) != 0)
  {
    WeakRetained = objc_loadWeakRetained(this + 3);
    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained(this + 2);
      if (a2)
      {
        v7 = *(a3 + 1);
        if (v7)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            __break(0xC471u);
            JUMPOUT(0x19DC39FC0);
          }
        }
      }

      else
      {
        v7 = 0;
      }

      [WeakRetained _webViewDidEndNavigationGesture:v6 withNavigationToBackForwardListItem:v7];
      if (v6)
      {
      }
    }
  }
}

void WebKit::NavigationState::willRecordNavigationSnapshot(id *this, WebBackForwardListItem *a2)
{
  if ((*(this + 19) & 8) != 0)
  {
    WeakRetained = objc_loadWeakRetained(this + 3);
    if (WeakRetained)
    {
      v4 = objc_loadWeakRetained(this + 2);
      v5 = *(a2 + 1);
      if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        __break(0xC471u);
      }

      else
      {
        [WeakRetained _webView:v4 willSnapshotBackForwardListItem:v5];
        if (v4)
        {
        }
      }
    }
  }
}

void WebKit::NavigationState::navigationGestureSnapshotWasRemoved(id *this)
{
  if ((*(this + 19) & 0x10) != 0)
  {
    WeakRetained = objc_loadWeakRetained(this + 3);
    if (WeakRetained)
    {
      v2 = objc_loadWeakRetained(this + 2);
      [WeakRetained _webViewDidRemoveNavigationGestureSnapshot:v2];
      if (v2)
      {
      }
    }
  }
}

void sub_19DC3A1B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v10)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::NavigationState::didRequestPasswordForQuickLookDocument(id *this)
{
  if ((*(this + 19) & 0x200) != 0)
  {
    WeakRetained = objc_loadWeakRetained(this + 3);
    if (WeakRetained)
    {
      v2 = objc_loadWeakRetained(this + 2);
      [WeakRetained _webViewDidRequestPasswordForQuickLookDocument:v2];
      if (v2)
      {
      }
    }
  }
}

void sub_19DC3A260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v10)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::NavigationState::didStopRequestingPasswordForQuickLookDocument(id *this)
{
  if ((*(this + 19) & 0x400) != 0)
  {
    WeakRetained = objc_loadWeakRetained(this + 3);
    if (WeakRetained)
    {
      v2 = objc_loadWeakRetained(this + 2);
      [WeakRetained _webViewDidStopRequestingPasswordForQuickLookDocument:v2];
      if (v2)
      {
      }
    }
  }
}

void sub_19DC3A308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v10)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::NavigationState::didFirstPaint(id *this)
{
  if ((*(this + 35) & 4) != 0)
  {
    WeakRetained = objc_loadWeakRetained(this + 3);
    if (WeakRetained)
    {
      v2 = objc_loadWeakRetained(this + 2);
      [WeakRetained _webView:v2 renderingProgressDidChange:64];
      if (v2)
      {
      }
    }
  }
}

void sub_19DC3A3B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v10)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t WebKit::NavigationState::NavigationClient::didChangeBackForwardList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 8);
  if (!v5)
  {
    return 0;
  }

  WebKit::NavigationState::ref(*(v4 + 8));
  if ((*(v5 + 38) & 0x800) != 0)
  {
    WeakRetained = objc_loadWeakRetained((v5 + 24));
    if (WeakRetained)
    {
      if (*(a4 + 3))
      {
        v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(a4 + 3)];
        v10 = *(a4 + 3);
        if (v10)
        {
          v11 = *a4;
          v12 = 8 * v10;
          do
          {
            v13 = *(*v11 + 8);
            if (v13)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_26;
              }

              [v9 addObject:v13];
            }

            v11 += 8;
            v12 -= 8;
          }

          while (v12);
        }
      }

      else
      {
        v9 = 0;
      }

      v14 = objc_loadWeakRetained((v5 + 16));
      if (a3)
      {
        a3 = *(a3 + 8);
        if (a3)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
LABEL_26:
            __break(0xC471u);
            JUMPOUT(0x19DC3A5A0);
          }
        }
      }

      [WeakRetained _webView:v14 backForwardListItemAdded:a3 removed:v9];
      if (v14)
      {
      }

      if (v9)
      {
      }

      WeakRetained = 1;
    }
  }

  else
  {
    WeakRetained = 0;
  }

  WebKit::NavigationState::deref(v5);
  return WeakRetained;
}

void sub_19DC3A5C4(_Unwind_Exception *a1)
{
  if (v3)
  {
  }

  WebKit::NavigationState::deref(v1);
  _Unwind_Resume(a1);
}

void WebKit::NavigationState::NavigationClient::shouldGoToBackForwardListItem(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, WTF::RefCountedBase *a5)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = *(v6 + 8);
    if (v7)
    {
      WebKit::NavigationState::ref(*(v6 + 8));
      WeakRetained = objc_loadWeakRetained((v7 + 24));
      if (!WeakRetained)
      {
        WTF::CompletionHandler<void ()(BOOL)>::operator()(a5, 1);
LABEL_25:

        WebKit::NavigationState::deref(v7);
        return;
      }

      if ((*(v7 + 38) & 0x4000) != 0)
      {
        v13 = objc_loadWeakRetained((v7 + 16));
        v14 = *(a3 + 8);
        if (v14)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        v15 = *a5;
        *a5 = 0;
        v16 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
        *v16 = MEMORY[0x1E69E9818];
        v16[1] = 50331650;
        v16[2] = WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::NavigationState::NavigationClient::shouldGoToBackForwardListItem(WebKit::WebPageProxy &,WebKit::WebBackForwardListItem &,BOOL,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::NavigationState::NavigationClient::shouldGoToBackForwardListItem(WebKit::WebPageProxy &,WebKit::WebBackForwardListItem &,BOOL,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::{lambda(void *,BOOL)#1}::__invoke;
        v16[3] = &WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::NavigationState::NavigationClient::shouldGoToBackForwardListItem(WebKit::WebPageProxy &,WebKit::WebBackForwardListItem &,BOOL,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::NavigationState::NavigationClient::shouldGoToBackForwardListItem(WebKit::WebPageProxy &,WebKit::WebBackForwardListItem &,BOOL,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::descriptor;
        v16[4] = v15;
        [WeakRetained webView:v13 shouldGoToBackForwardListItem:v14 willUseInstantBack:a4 completionHandler:v16];
      }

      else
      {
        if ((*(v7 + 38) & 0x2000) == 0)
        {
          if ((*(v7 + 38) & 0x1000) == 0)
          {
LABEL_11:
            WTF::CompletionHandler<void ()(BOOL)>::operator()(a5, 1);
LABEL_24:

            goto LABEL_25;
          }

          v11 = objc_loadWeakRetained((v7 + 16));
          v12 = *(a3 + 8);
          if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            [WeakRetained _webView:v11 willGoToBackForwardListItem:v12 inPageCache:a4];
            if (v11)
            {
            }

            goto LABEL_11;
          }

LABEL_30:
          __break(0xC471u);
          JUMPOUT(0x19DC3A8C4);
        }

        v13 = objc_loadWeakRetained((v7 + 16));
        v17 = *(a3 + 8);
        if (v17)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            __break(0xC471u);
            JUMPOUT(0x19DC3A8E4);
          }
        }

        v18 = *a5;
        *a5 = 0;
        v16 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
        *v16 = MEMORY[0x1E69E9818];
        v16[1] = 50331650;
        v16[2] = WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::NavigationState::NavigationClient::shouldGoToBackForwardListItem(WebKit::WebPageProxy &,WebKit::WebBackForwardListItem &,BOOL,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1>(WebKit::NavigationState::NavigationClient::shouldGoToBackForwardListItem(WebKit::WebPageProxy &,WebKit::WebBackForwardListItem &,BOOL,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1)::{lambda(void *,BOOL)#1}::__invoke;
        v16[3] = &WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::NavigationState::NavigationClient::shouldGoToBackForwardListItem(WebKit::WebPageProxy &,WebKit::WebBackForwardListItem &,BOOL,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1>(WebKit::NavigationState::NavigationClient::shouldGoToBackForwardListItem(WebKit::WebPageProxy &,WebKit::WebBackForwardListItem &,BOOL,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1)::descriptor;
        v16[4] = v18;
        [WeakRetained _webView:v13 shouldGoToBackForwardListItem:v17 inPageCache:a4 completionHandler:v16];
      }

      _Block_release(v16);
      if (v13)
      {
      }

      goto LABEL_24;
    }
  }

  WTF::CompletionHandler<void ()(BOOL)>::operator()(a5, 1);
}

void WebKit::NavigationState::NavigationClient::decidePolicyForNavigationAction(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *(*a3 + 24);
  if (v8)
  {
    v9 = *(v8 + 16) ^ 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = API::PageConfiguration::Data::LazyInitializedRef<API::WebsitePolicies,&API::PageConfiguration::Data::createWebsitePolicies>::get((*(a2 + 64) + 48));
  CFRetain(v10[1]);
  API::WebsitePolicies::copy(v10, &v41);
  v11 = v41;
  CFRelease(v10[1]);
  v12 = *(a1 + 8);
  if (!v12 || (v13 = *(v12 + 8)) == 0 || (v14 = *(v13 + 32), (v14 & 6) == 0) && (v14 & 1) == 0)
  {
    CFRetain(*(a2 + 8));
    v15 = *a4;
    *a4 = 0;
    v16 = *a3;
    CFRetain(*(*a3 + 8));
    if (v11)
    {
      CFRetain(*(v11 + 1));
    }

    v17 = WTF::fastMalloc(0x28);
    *v17 = &unk_1F1100B58;
    *(v17 + 1) = a2;
    *(v17 + 2) = v15;
    *(v17 + 3) = v16;
    *(v17 + 4) = v11;
    v41 = v17;
    WebKit::tryInterceptNavigation(a3, a2, &v41);
    v18 = v41;
    v41 = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    goto LABEL_59;
  }

  WebKit::NavigationState::ref(v13);
  WeakRetained = objc_loadWeakRetained((v13 + 24));
  WebKit::NavigationState::deref(v13);
  if (!WeakRetained)
  {
    goto LABEL_59;
  }

  v20 = *(a1 + 8);
  if (!v20 || (v21 = *(v20 + 8)) == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC3AF24);
  }

  v22 = *(v21 + 32);
  v23 = v22 & 6;
  if ((v22 & 6) != 0)
  {
    if ((v22 & 2) != 0)
    {
      v24 = &selRef_webView_decidePolicyForNavigationAction_preferences_decisionHandler_;
    }

    else
    {
      v24 = &selRef__webView_decidePolicyForNavigationAction_preferences_userInfo_decisionHandler_;
    }

    v25 = *v24;
  }

  else
  {
    v25 = sel_webView_decidePolicyForNavigationAction_decisionHandler_;
  }

  WebKit::CompletionHandlerCallChecker::create(WeakRetained, v25, &v41);
  v40 = *a4;
  *a4 = 0;
  v26 = *a3;
  CFRetain(*(*a3 + 8));
  v39 = v41;
  v41 = 0;
  CFRetain(*(a2 + 8));
  if (v11)
  {
    CFRetain(*(v11 + 1));
  }

  v27 = v9 & 1;
  v28 = *(a1 + 8);
  if (v23)
  {
    if (!v28 || (v29 = *(v28 + 8)) == 0)
    {
      __break(0xC471u);
      JUMPOUT(0x19DC3AF44);
    }

    if ((*(v29 + 32) & 2) != 0)
    {
      WebKit::NavigationState::ref(v29);
      v30 = objc_loadWeakRetained((v29 + 16));
      v33 = *(*a3 + 8);
      if (v33)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_66:
          __break(0xC471u);
          JUMPOUT(0x19DC3AC20);
        }
      }

      if (v11)
      {
        v34 = *(v11 + 1);
        if (v34)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            __break(0xC471u);
            JUMPOUT(0x19DC3ACBCLL);
          }
        }
      }

      else
      {
        v34 = 0;
      }

      v38 = malloc_type_malloc(0x50uLL, 0x10E004026C8460BuLL);
      *v38 = MEMORY[0x1E69E9818];
      v38[1] = 50331650;
      v38[2] = WTF::BlockPtr<void ()(WKNavigationActionPolicy,WKWebpagePreferences *)>::fromCallable<WebKit::NavigationState::NavigationClient::decidePolicyForNavigationAction(WebKit::WebPageProxy &,WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WTF::Ref<WebKit::WebFramePolicyListenerProxy,WTF::RawPtrTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>> &&)::$_0>(WebKit::NavigationState::NavigationClient::decidePolicyForNavigationAction(WebKit::WebPageProxy &,WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WTF::Ref<WebKit::WebFramePolicyListenerProxy,WTF::RawPtrTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>> &&)::$_0)::{lambda(void *,WKNavigationActionPolicy,WKWebpagePreferences *)#1}::__invoke;
      v38[3] = &WTF::BlockPtr<void ()(WKNavigationActionPolicy,WKWebpagePreferences *)>::fromCallable<WebKit::NavigationState::NavigationClient::decidePolicyForNavigationAction(WebKit::WebPageProxy &,WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WTF::Ref<WebKit::WebFramePolicyListenerProxy,WTF::RawPtrTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>> &&)::$_0>(WebKit::NavigationState::NavigationClient::decidePolicyForNavigationAction(WebKit::WebPageProxy &,WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WTF::Ref<WebKit::WebFramePolicyListenerProxy,WTF::RawPtrTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>> &&)::$_0)::descriptor;
      v38[4] = v40;
      v38[5] = v26;
      v38[6] = v39;
      v38[7] = a2;
      *(v38 + 64) = v27;
      v38[9] = v11;
      [(WebKit::CompletionHandlerCallChecker *)WeakRetained webView:v30 decidePolicyForNavigationAction:v33 preferences:v34 decisionHandler:v38];
    }

    else
    {
      WebKit::NavigationState::ref(v29);
      v30 = objc_loadWeakRetained((v29 + 16));
      v31 = *(*a3 + 8);
      if (v31)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          __break(0xC471u);
          JUMPOUT(0x19DC3AF84);
        }
      }

      if (v11)
      {
        v32 = *(v11 + 1);
        if (v32)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_66;
          }
        }
      }

      else
      {
        v32 = 0;
      }

      v38 = malloc_type_malloc(0x50uLL, 0x10E004026C8460BuLL);
      *v38 = MEMORY[0x1E69E9818];
      v38[1] = 50331650;
      v38[2] = WTF::BlockPtr<void ()(WKNavigationActionPolicy,WKWebpagePreferences *)>::fromCallable<WebKit::NavigationState::NavigationClient::decidePolicyForNavigationAction(WebKit::WebPageProxy &,WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WTF::Ref<WebKit::WebFramePolicyListenerProxy,WTF::RawPtrTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>> &&)::$_0>(WebKit::NavigationState::NavigationClient::decidePolicyForNavigationAction(WebKit::WebPageProxy &,WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WTF::Ref<WebKit::WebFramePolicyListenerProxy,WTF::RawPtrTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>> &&)::$_0)::{lambda(void *,WKNavigationActionPolicy,WKWebpagePreferences *)#1}::__invoke;
      v38[3] = &WTF::BlockPtr<void ()(WKNavigationActionPolicy,WKWebpagePreferences *)>::fromCallable<WebKit::NavigationState::NavigationClient::decidePolicyForNavigationAction(WebKit::WebPageProxy &,WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WTF::Ref<WebKit::WebFramePolicyListenerProxy,WTF::RawPtrTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>> &&)::$_0>(WebKit::NavigationState::NavigationClient::decidePolicyForNavigationAction(WebKit::WebPageProxy &,WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WTF::Ref<WebKit::WebFramePolicyListenerProxy,WTF::RawPtrTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>> &&)::$_0)::descriptor;
      v38[4] = v40;
      v38[5] = v26;
      v38[6] = v39;
      v38[7] = a2;
      *(v38 + 64) = v27;
      v38[9] = v11;
      [(WebKit::CompletionHandlerCallChecker *)WeakRetained _webView:v30 decidePolicyForNavigationAction:v31 preferences:v32 userInfo:0 decisionHandler:v38];
    }

    _Block_release(v38);
    if (v30)
    {
    }
  }

  else
  {
    if (v28)
    {
      v29 = *(v28 + 8);
      if (v29)
      {
        WebKit::NavigationState::ref(*(v28 + 8));
      }
    }

    else
    {
      v29 = 0;
    }

    v35 = objc_loadWeakRetained((v29 + 16));
    v36 = *(*a3 + 8);
    if (v36)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        __break(0xC471u);
        JUMPOUT(0x19DC3AF64);
      }
    }

    v37 = malloc_type_malloc(0x50uLL, 0x10E004026C8460BuLL);
    *v37 = MEMORY[0x1E69E9818];
    v37[1] = 50331650;
    v37[2] = WTF::BlockPtr<void ()(WKNavigationActionPolicy)>::fromCallable<WebKit::NavigationState::NavigationClient::decidePolicyForNavigationAction(WebKit::WebPageProxy &,WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WTF::Ref<WebKit::WebFramePolicyListenerProxy,WTF::RawPtrTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>> &&)::$_1>(WebKit::NavigationState::NavigationClient::decidePolicyForNavigationAction(WebKit::WebPageProxy &,WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WTF::Ref<WebKit::WebFramePolicyListenerProxy,WTF::RawPtrTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>> &&)::$_1)::{lambda(void *,WKNavigationActionPolicy)#1}::__invoke;
    v37[3] = &WTF::BlockPtr<void ()(WKNavigationActionPolicy)>::fromCallable<WebKit::NavigationState::NavigationClient::decidePolicyForNavigationAction(WebKit::WebPageProxy &,WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WTF::Ref<WebKit::WebFramePolicyListenerProxy,WTF::RawPtrTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>> &&)::$_1>(WebKit::NavigationState::NavigationClient::decidePolicyForNavigationAction(WebKit::WebPageProxy &,WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WTF::Ref<WebKit::WebFramePolicyListenerProxy,WTF::RawPtrTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&>> &&)::$_1)::descriptor;
    v37[4] = v40;
    v37[5] = v26;
    v37[6] = v39;
    v37[7] = a2;
    *(v37 + 64) = v27;
    v37[9] = v11;
    [(WebKit::CompletionHandlerCallChecker *)WeakRetained webView:v35 decidePolicyForNavigationAction:v36 decisionHandler:v37];
    _Block_release(v37);
    if (v35)
    {
    }

    if (!v29)
    {
      goto LABEL_56;
    }
  }

  WebKit::NavigationState::deref(v29);
LABEL_56:
  if (v41)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v41);
  }

LABEL_59:
  if (v11)
  {
    CFRelease(*(v11 + 1));
  }
}

void sub_19DC3AFA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, atomic_uint *a10, uint64_t a11, atomic_uint *a12)
{
  if (v14)
  {
    CFRelease(*(v14 + 8));
  }

  if (v13)
  {
    CFRelease(*(v13 + 8));
  }

  if (a10)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(a10);
  }

  if (v15)
  {
    CFRelease(*(v15 + 8));
  }

  if (a11)
  {
    CFRelease(*(a11 + 8));
  }

  if (a12)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(a12);
  }

  if (v14)
  {
    CFRelease(*(v14 + 8));
  }

  _Unwind_Resume(a1);
}

void WebKit::tryInterceptNavigation(uint64_t *a1, unsigned int *a2, uint64_t *a3)
{
  v6 = WebCore::ResourceRequestBase::url((*a1 + 40));
  if (WebKit::isMarketplaceKitURL(v6, v7))
  {
    WebKit::interceptMarketplaceKitNavigation(a1, a2);
    v8 = *(**a3 + 16);

    v8();
  }

  else
  {
    v9 = *a1;
    if (*(*a1 + 280) == 1 && *(v9 + 369) == 2)
    {
      v10 = WebCore::ResourceRequestBase::url((v9 + 40));
      v11 = *v10;
      if (*v10)
      {
        atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
      }

      v47 = v11;
      v12 = *(v10 + 24);
      v48 = *(v10 + 8);
      v49 = v12;
      v13 = *a1;
      WebCore::ResourceRequestBase::RequestData::RequestData(v40, (*a1 + 40));
      v14 = *(v13 + 192);
      if (v14)
      {
        atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
      }

      v41 = v14;
      v15 = *(v13 + 200);
      if (v15)
      {
        atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
      }

      v42 = v15;
      v16 = *(v13 + 208);
      if (v16)
      {
        ++*v16;
      }

      v17 = *(v13 + 216);
      v43 = v16;
      v44 = v17;
      v45 = *(v13 + 224);
      v18 = *(v13 + 232);
      v46 = v18;
      if (v18)
      {
        v19 = v18;
      }

      WebCore::ResourceRequestBase::setExistingHTTPReferrerToOriginString(v40);
      WebCore::ResourceRequestBase::httpReferrer(&v39, v40);
      if (v39 && *(v39 + 1))
      {
        WTF::URL::URL(v37, &v39);
        WTF::URL::createCFURL(&v38, v37);
        v21 = v38;
        v38 = 0;
        v22 = v37[0];
        v37[0] = 0;
        if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v22, v20);
        }
      }

      else
      {
        v21 = 0;
      }

      v23 = WTF::fastMalloc(8);
      v24 = *a1;
      *a1 = 0;
      WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 6, (a2 + 4));
      v25 = *(a2 + 3);
      atomic_fetch_add(v25, 1u);
      v26 = *a3;
      *a3 = 0;
      v27 = WTF::fastMalloc(0x20);
      *v27 = &unk_1F1100940;
      v27[1] = v24;
      v27[2] = v25;
      v27[3] = v26;
      *v23 = v27;
      v28 = objc_alloc_init(MEMORY[0x1E69636B8]);
      [v28 setReferrerURL:v21];
      v29 = MEMORY[0x1E69635C0];
      WTF::URL::createCFURL(v37, &v47);
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3321888768;
      v36[2] = ___ZN6WebKitL22tryInterceptNavigationEON3WTF3RefIN3API16NavigationActionENS0_12RawPtrTraitsIS3_EENS0_21DefaultRefDerefTraitsIS3_EEEERNS_12WebPageProxyEONS0_8FunctionIFvbEEE_block_invoke;
      v36[3] = &__block_descriptor_40_e8_32c179_ZTSKZN6WebKitL22tryInterceptNavigationEON3WTF3RefIN3API16NavigationActionENS0_12RawPtrTraitsIS3_EENS0_21DefaultRefDerefTraitsIS3_EEEERNS_12WebPageProxyEONS0_8FunctionIFvbEEEE3__1_e20_v20__0B8__NSError_12l;
      v36[4] = v23;
      [v29 openWithURL:v37[0] configuration:v28 completionHandler:v36];
      v31 = v37[0];
      v37[0] = 0;
      if (v31)
      {
      }

      if (v28)
      {
      }

      v32 = v39;
      v39 = 0;
      if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v32, v30);
      }

      v33 = v46;
      v46 = 0;
      if (v33)
      {
      }

      WebCore::ResourceRequestBase::~ResourceRequestBase(v40);
      if (v21)
      {
      }

      v35 = v47;
      v47 = 0;
      if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v35, v34);
      }
    }

    else
    {

      WebKit::trySOAuthorization(a1, a2, a3);
    }
  }
}

void sub_19DC3B59C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, WTF::StringImpl *a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45)
{
  if (a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  if (a20 && atomic_fetch_add_explicit(a20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a20, a2);
  }

  v47 = a45;
  a45 = 0;
  if (v47)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(&a21);
  v49 = *(v45 - 104);
  *(v45 - 104) = 0;
  if (v49)
  {
    if (atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v49, v48);
    }
  }

  _Unwind_Resume(a1);
}

void WebKit::NavigationState::NavigationClient::contentRuleListNotification(uint64_t a1, uint64_t *a2, WTF::URL *a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  if (!v4 || !*(v4 + 8))
  {
    return;
  }

  v7 = a2[48];
  if (!v7)
  {
    v27 = a2[49];
    if (!v27)
    {
      goto LABEL_5;
    }

    v28 = *(v27 + 8);
    if (!v28)
    {
      goto LABEL_5;
    }

    v7 = v28 - 16;
  }

  CFRetain(*(v7 + 8));
  WebKit::WebExtensionController::handleContentRuleListNotification(v7, a2[5], a3, a4);
  CFRelease(*(v7 + 8));
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_77:
    __break(0xC471u);
    JUMPOUT(0x19DC3BB68);
  }

LABEL_5:
  v8 = *(v4 + 8);
  if (!v8)
  {
    goto LABEL_77;
  }

  if ((*(v8 + 38) & 0x60) == 0)
  {
    return;
  }

  WebKit::NavigationState::ref(v8);
  WeakRetained = objc_loadWeakRetained((v8 + 24));
  WebKit::NavigationState::deref(v8);
  if (!WeakRetained)
  {
    return;
  }

  v10 = *(a4 + 52);
  v46 = *(a4 + 52) == 0;
  v47 = WeakRetained;
  v11 = 0;
  v12 = 0;
  if (!v10)
  {
    goto LABEL_45;
  }

  v13 = *(a4 + 40);
  v50 = v13 + 32 * v10;
  do
  {
    v14 = *(v13 + 28);
    if (v14)
    {
      v15 = *(v13 + 16);
      for (i = 8 * v14; i; i -= 8)
      {
        if (v12)
        {
          if (!v11)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v12 = objc_opt_new();
          if (!v11)
          {
LABEL_16:
            v11 = objc_opt_new();
          }
        }

        v17 = *v13;
        if (*v13)
        {
          atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
          MEMORY[0x19EB00B70](&v53, v17);
          if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v17, v18);
          }
        }

        else
        {
          v53 = &stru_1F1147748;
          v19 = &stru_1F1147748;
        }

        [v12 addObject:v53];
        v20 = v53;
        v53 = 0;
        if (v20)
        {
        }

        v21 = *v15;
        if (*v15)
        {
          atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
          MEMORY[0x19EB00B70](&v53, v21);
          if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v21, v22);
          }
        }

        else
        {
          v53 = &stru_1F1147748;
          v23 = &stru_1F1147748;
        }

        [v11 addObject:v53];
        v24 = v53;
        v53 = 0;
        if (v24)
        {
        }

        ++v15;
      }
    }

    v13 += 32;
  }

  while (v13 != v50);
  v25 = *(a1 + 8);
  if (!v11)
  {
    v46 = 1;
    goto LABEL_46;
  }

  if (!v25 || (v26 = *(v25 + 8)) == 0)
  {
    __break(0xC471u);
    goto LABEL_80;
  }

  if ((*(v26 + 38) & 0x20) == 0)
  {
    v46 = 0;
    goto LABEL_48;
  }

  WebKit::NavigationState::ref(v26);
  v29 = objc_loadWeakRetained((v26 + 16));
  WTF::URL::createCFURL(&v53, a3);
  [WeakRetained _webView:v29 URL:v53 contentRuleListIdentifiers:v12 notifications:v11];
  v30 = v53;
  v53 = 0;
  if (v30)
  {
  }

  if (v29)
  {
  }

  WebKit::NavigationState::deref(v26);
LABEL_45:
  v25 = *(a1 + 8);
LABEL_46:
  if (!v25 || (v26 = *(v25 + 8)) == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC3BB88);
  }

LABEL_48:
  if ((*(v26 + 38) & 0x40) != 0)
  {
    v31 = *(a4 + 52);
    if (v31)
    {
      v32 = *(a4 + 40);
      v33 = v32 + 32 * v31;
      while (1)
      {
        v34 = *(a1 + 8);
        if (v34)
        {
          v35 = *(v34 + 8);
          if (v35)
          {
            WebKit::NavigationState::ref(*(v34 + 8));
          }
        }

        else
        {
          v35 = 0;
        }

        v36 = objc_loadWeakRetained(v35 + 2);
        v37 = *v32;
        if (*v32)
        {
          atomic_fetch_add_explicit(v37, 2u, memory_order_relaxed);
          MEMORY[0x19EB00B70](&v53, v37);
          if (atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v37, v38);
          }
        }

        else
        {
          v53 = &stru_1F1147748;
          v39 = &stru_1F1147748;
        }

        v40 = v53;
        v41 = v32 + 8;
        API::ContentRuleListAction::create((v32 + 8), &v52);
        v42 = v52;
        v43 = *(v52 + 1);
        if (v43)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            break;
          }
        }

        WTF::URL::createCFURL(&v51, a3);
        [v47 _webView:v36 contentRuleListWithIdentifier:v40 performedAction:v43 forURL:v51];
        v44 = v51;
        v51 = 0;
        if (v44)
        {
        }

        CFRelease(*(v42 + 1));
        v45 = v53;
        v53 = 0;
        if (v45)
        {
        }

        if (v36)
        {
        }

        if (v35)
        {
          WebKit::NavigationState::deref(v35);
        }

        v32 = v41 + 24;
        if (v41 + 24 == v33)
        {
          goto LABEL_70;
        }
      }

      __break(0xC471u);
LABEL_80:
      JUMPOUT(0x19DC3BB48);
    }
  }

LABEL_70:
  if (!v46)
  {
  }

  if (v12)
  {
  }
}

void sub_19DC3BBAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  if (a18)
  {
  }

  if (v21)
  {
  }

  WebKit::NavigationState::deref(v20);

  if (v18)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::NavigationState::NavigationClient::decidePolicyForNavigationResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *(a1 + 8);
  if (!v6)
  {
    v7 = 0;
    goto LABEL_6;
  }

  v7 = *(v6 + 8);
  if (!v7)
  {
LABEL_6:
    v8 = 1;
LABEL_7:
    v9 = [WebCore::ResourceResponse::nsURLResponse((*a3 + 224)) URL];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    if ([v10 isFileURL])
    {
      v21 = 0;
      if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] && (v21 & 1) == 0 && *(*a3 + 488) == 1)
      {
        v12 = *a4;
        goto LABEL_15;
      }

      v12 = *a4;
    }

    else
    {
      v12 = *a4;
      if (*(*a3 + 488) == 1)
      {
LABEL_15:
        WebKit::WebFramePolicyListenerProxy::use(v12, 0, 0);
        if (!v10)
        {
          goto LABEL_26;
        }

LABEL_25:

LABEL_26:
        if (v8)
        {
          return;
        }

        goto LABEL_27;
      }
    }

    WebKit::WebFramePolicyListenerProxy::ignore(v12, 0);
    if (!v10)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  WebKit::NavigationState::ref(*(v6 + 8));
  if ((*(v7 + 32) & 8) == 0)
  {
    v8 = 0;
    goto LABEL_7;
  }

  WeakRetained = objc_loadWeakRetained((v7 + 24));
  v14 = WeakRetained;
  if (WeakRetained)
  {
    WebKit::CompletionHandlerCallChecker::create(WeakRetained, sel_webView_decidePolicyForNavigationResponse_decisionHandler_, &v20);
    v15 = objc_loadWeakRetained((v7 + 16));
    v16 = *(*a3 + 8);
    if (v16)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        __break(0xC471u);
        return;
      }
    }

    v17 = *a4;
    *a4 = 0;
    v18 = v20;
    v20 = 0;
    v19 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
    *v19 = MEMORY[0x1E69E9818];
    v19[1] = 50331650;
    v19[2] = WTF::BlockPtr<void ()(WKNavigationResponsePolicy)>::fromCallable<WebKit::NavigationState::NavigationClient::decidePolicyForNavigationResponse(WebKit::WebPageProxy &,WTF::Ref<API::NavigationResponse,WTF::RawPtrTraits<API::NavigationResponse>,WTF::DefaultRefDerefTraits<API::NavigationResponse>> &&,WTF::Ref<WebKit::WebFramePolicyListenerProxy,WTF::RawPtrTraits<WTF::Ref<API::NavigationResponse,WTF::RawPtrTraits<API::NavigationResponse>,WTF::DefaultRefDerefTraits<API::NavigationResponse>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::NavigationResponse,WTF::RawPtrTraits<API::NavigationResponse>,WTF::DefaultRefDerefTraits<API::NavigationResponse>> &&>> &&)::$_0>(WebKit::NavigationState::NavigationClient::decidePolicyForNavigationResponse(WebKit::WebPageProxy &,WTF::Ref<API::NavigationResponse,WTF::RawPtrTraits<API::NavigationResponse>,WTF::DefaultRefDerefTraits<API::NavigationResponse>> &&,WTF::Ref<WebKit::WebFramePolicyListenerProxy,WTF::RawPtrTraits<WTF::Ref<API::NavigationResponse,WTF::RawPtrTraits<API::NavigationResponse>,WTF::DefaultRefDerefTraits<API::NavigationResponse>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::NavigationResponse,WTF::RawPtrTraits<API::NavigationResponse>,WTF::DefaultRefDerefTraits<API::NavigationResponse>> &&>> &&)::$_0)::{lambda(void *,WKNavigationResponsePolicy)#1}::__invoke;
    v19[3] = &WTF::BlockPtr<void ()(WKNavigationResponsePolicy)>::fromCallable<WebKit::NavigationState::NavigationClient::decidePolicyForNavigationResponse(WebKit::WebPageProxy &,WTF::Ref<API::NavigationResponse,WTF::RawPtrTraits<API::NavigationResponse>,WTF::DefaultRefDerefTraits<API::NavigationResponse>> &&,WTF::Ref<WebKit::WebFramePolicyListenerProxy,WTF::RawPtrTraits<WTF::Ref<API::NavigationResponse,WTF::RawPtrTraits<API::NavigationResponse>,WTF::DefaultRefDerefTraits<API::NavigationResponse>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::NavigationResponse,WTF::RawPtrTraits<API::NavigationResponse>,WTF::DefaultRefDerefTraits<API::NavigationResponse>> &&>> &&)::$_0>(WebKit::NavigationState::NavigationClient::decidePolicyForNavigationResponse(WebKit::WebPageProxy &,WTF::Ref<API::NavigationResponse,WTF::RawPtrTraits<API::NavigationResponse>,WTF::DefaultRefDerefTraits<API::NavigationResponse>> &&,WTF::Ref<WebKit::WebFramePolicyListenerProxy,WTF::RawPtrTraits<WTF::Ref<API::NavigationResponse,WTF::RawPtrTraits<API::NavigationResponse>,WTF::DefaultRefDerefTraits<API::NavigationResponse>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::NavigationResponse,WTF::RawPtrTraits<API::NavigationResponse>,WTF::DefaultRefDerefTraits<API::NavigationResponse>> &&>> &&)::$_0)::descriptor;
    v19[4] = v17;
    v19[5] = v18;
    [(WebKit::CompletionHandlerCallChecker *)v14 webView:v15 decidePolicyForNavigationResponse:v16 decisionHandler:v19];
    _Block_release(v19);
    if (v15)
    {
    }
  }

LABEL_27:
  WebKit::NavigationState::deref(v7);
}

void sub_19DC3BF5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, atomic_uint *a9)
{
  v13 = v10;
  _Block_release(v13);
  if (v12)
  {
  }

  if (a9)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(a9);
  }

  WebKit::NavigationState::deref(v9);
  _Unwind_Resume(a1);
}

void WebKit::NavigationState::NavigationClient::didStartProvisionalNavigation(WebKit::NavigationState::NavigationClient *this, WebKit::WebPageProxy *a2, const WebCore::ResourceRequest *a3, Navigation *a4, API::Object *a5)
{
  v5 = *(this + 1);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      WebKit::NavigationState::ref(*(v5 + 8));
      WeakRetained = objc_loadWeakRetained((v6 + 24));
      if (WeakRetained)
      {
        if ((*(v6 + 32) & 0x10) != 0)
        {
          v9 = objc_loadWeakRetained((v6 + 16));
          if (a4)
          {
            a4 = *(a4 + 1);
            if (a4)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                __break(0xC471u);
                return;
              }
            }
          }

          [WeakRetained webView:v9 didStartProvisionalNavigation:a4];
          if (v9)
          {
          }
        }
      }

      WebKit::NavigationState::deref(v6);
    }
  }
}

void WebKit::NavigationState::NavigationClient::didStartProvisionalLoadForFrame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      WebKit::NavigationState::ref(*(v4 + 8));
      WeakRetained = objc_loadWeakRetained((v5 + 24));
      if (WeakRetained)
      {
        if ((*(v5 + 32) & 0x20) != 0)
        {
          v9 = objc_loadWeakRetained((v5 + 16));
          v10 = WebCore::ResourceRequest::nsURLRequest();
          CFRetain(*(a2 + 8));
          v14 = a2;
          v11 = API::Object::newObject(0x180uLL, 59);
          v12 = *(API::FrameInfo::FrameInfo(v11, a4, &v14) + 8);
          if (v12)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              __break(0xC471u);
              return;
            }

            v13 = v12;
          }

          [WeakRetained _webView:v9 didStartProvisionalLoadWithRequest:v10 inFrame:v12];
          if (v12)
          {
          }

          CFRelease(*(v11 + 8));
          if (v14)
          {
            CFRelease(*(v14 + 8));
          }

          if (v9)
          {
          }
        }
      }

      WebKit::NavigationState::deref(v5);
    }
  }
}

void sub_19DC3C28C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = v14;
  if (v15)
  {
  }

  CFRelease(*(v13 + 8));
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  if (v12)
  {
  }

  WebKit::NavigationState::deref(v10);
  _Unwind_Resume(a1);
}

void WebKit::NavigationState::NavigationClient::didReceiveServerRedirectForProvisionalNavigation(WebKit::NavigationState::NavigationClient *this, WebKit::WebPageProxy *a2, Navigation *a3, API::Object *a4)
{
  v4 = *(this + 1);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      WebKit::NavigationState::ref(*(v4 + 8));
      if ((*(v5 + 32) & 0x40) != 0)
      {
        WeakRetained = objc_loadWeakRetained((v5 + 24));
        if (WeakRetained)
        {
          v8 = objc_loadWeakRetained((v5 + 16));
          if (a3)
          {
            a3 = *(a3 + 1);
            if (a3)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                __break(0xC471u);
                return;
              }
            }
          }

          [WeakRetained webView:v8 didReceiveServerRedirectForProvisionalNavigation:a3];
          if (v8)
          {
          }
        }
      }

      WebKit::NavigationState::deref(v5);
    }
  }
}

void WebKit::NavigationState::NavigationClient::willPerformClientRedirect(uint64_t a1, double a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      WebKit::NavigationState::ref(*(v4 + 8));
      if ((*(v5 + 33) & 8) != 0)
      {
        WeakRetained = objc_loadWeakRetained((v5 + 24));
        if (WeakRetained)
        {
          MEMORY[0x19EB01DD0](v14, a4, 0);
          v9 = objc_loadWeakRetained((v5 + 16));
          WTF::URL::createCFURL(&v13, v14);
          [WeakRetained _webView:v9 willPerformClientRedirectToURL:v13 delay:a2];
          v11 = v13;
          v13 = 0;
          if (v11)
          {
          }

          if (v9)
          {
          }

          v12 = v14[0];
          v14[0] = 0;
          if (v12)
          {
            if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v12, v10);
            }
          }
        }
      }

      WebKit::NavigationState::deref(v5);
    }
  }
}

void sub_19DC3C500(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, WTF::StringImpl *a10)
{
  if (a9)
  {
  }

  if (v12)
  {
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  WebKit::NavigationState::deref(v10);
  _Unwind_Resume(a1);
}

void WebKit::NavigationState::NavigationClient::didPerformClientRedirect(WebKit::NavigationState::NavigationClient *this, WebKit::WebPageProxy *a2, atomic_uint **a3, atomic_uint **a4)
{
  v4 = *(this + 1);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      WebKit::NavigationState::ref(*(v4 + 8));
      if ((*(v5 + 33) & 0x10) != 0)
      {
        WeakRetained = objc_loadWeakRetained((v5 + 24));
        if (WeakRetained)
        {
          WTF::URL::URL(v19, a3);
          WTF::URL::URL(v18, a4);
          v9 = objc_loadWeakRetained((v5 + 16));
          WTF::URL::createCFURL(&v17, v19);
          v10 = v17;
          WTF::URL::createCFURL(&v16, v18);
          [WeakRetained _webView:v9 didPerformClientRedirectFromURL:v10 toURL:v16];
          v12 = v16;
          v16 = 0;
          if (v12)
          {
          }

          v13 = v17;
          v17 = 0;
          if (v13)
          {
          }

          if (v9)
          {
          }

          v14 = v18[0];
          v18[0] = 0;
          if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v14, v11);
          }

          v15 = v19[0];
          v19[0] = 0;
          if (v15)
          {
            if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v15, v11);
            }
          }
        }
      }

      WebKit::NavigationState::deref(v5);
    }
  }
}

void sub_19DC3C6A4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF::StringImpl *a16)
{
  if (a9)
  {
  }

  if (a10)
  {
  }

  if (v18)
  {
  }

  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a16)
  {
    if (atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a16, a2);
    }
  }

  WebKit::NavigationState::deref(v16);
  _Unwind_Resume(a1);
}

void WebKit::NavigationState::NavigationClient::didCancelClientRedirect(WebKit::NavigationState::NavigationClient *this, WebKit::WebPageProxy *a2)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      WebKit::NavigationState::ref(*(v2 + 8));
      if ((*(v3 + 33) & 0x20) != 0)
      {
        WeakRetained = objc_loadWeakRetained((v3 + 24));
        if (WeakRetained)
        {
          v5 = objc_loadWeakRetained((v3 + 16));
          [WeakRetained _webViewDidCancelClientRedirect:v5];
          if (v5)
          {
          }
        }
      }

      WebKit::NavigationState::deref(v3);
    }
  }
}

void sub_19DC3C7F0(_Unwind_Exception *a1)
{
  v4 = v3;
  if (v4)
  {
  }

  WebKit::NavigationState::deref(v1);
  _Unwind_Resume(a1);
}

void WebKit::NavigationState::NavigationClient::didFailProvisionalNavigationWithError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const WTF::URL *a5, WebCore::ResourceError *a6)
{
  v6 = *(a1 + 8);
  if (!v6)
  {
    return;
  }

  v7 = *(v6 + 8);
  if (!v7)
  {
    return;
  }

  WebKit::NavigationState::ref(*(v6 + 8));
  WeakRetained = objc_loadWeakRetained((v7 + 24));
  if (WeakRetained)
  {
    v14 = objc_loadWeakRetained((v7 + 16));
    v15 = WebCore::ResourceError::nsError(a6);
    WebKit::createErrorWithRecoveryAttempter(&v24, v14, *(a3 + 248), v15, a5);
    if (v14)
    {
    }

    v16 = *(v7 + 32);
    if (*a3 == 1)
    {
      if ((v16 & 0x80) != 0)
      {
        v17 = objc_loadWeakRetained((v7 + 16));
        if (!a4 || (a4 = *(a4 + 8)) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v18 = v24;
          [WeakRetained webView:v17 didFailProvisionalNavigation:a4 withError:v24];
          if (v17)
          {
          }

          goto LABEL_24;
        }

        __break(0xC471u);
LABEL_33:
        JUMPOUT(0x19DC3CA40);
      }
    }

    else if ((v16 & 0x200) != 0)
    {
      v19 = objc_loadWeakRetained((v7 + 16));
      CFRetain(*(a2 + 8));
      v23 = a2;
      v20 = API::Object::newObject(0x180uLL, 59);
      v21 = *(API::FrameInfo::FrameInfo(v20, a3, &v23) + 8);
      if (v21)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          __break(0xC471u);
          goto LABEL_33;
        }

        v22 = v21;
      }

      [WeakRetained _webView:v19 navigation:0 didFailProvisionalLoadInSubframe:v21 withError:{v24, v23}];
      if (v21)
      {
      }

      CFRelease(*(v20 + 8));
      if (v23)
      {
        CFRelease(*(v23 + 8));
      }

      if (v19)
      {
      }
    }

    v18 = v24;
LABEL_24:
    if (v18)
    {
    }
  }

  WebKit::NavigationState::deref(v7);
}

void sub_19DC3CA64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v15 = v13;
  if (v15)
  {
  }

  CFRelease(*(v14 + 8));
  if (a9)
  {
    CFRelease(*(a9 + 8));
  }

  if (v12)
  {
  }

  if (a10)
  {
  }

  WebKit::NavigationState::deref(v10);
  _Unwind_Resume(a1);
}

void WebKit::createErrorWithRecoveryAttempter(WebKit *this, WKWebView *a2, const FrameInfoData *a3, NSError *a4, const WTF::URL *a5)
{
  API::FrameHandle::create(a3, 1, &v16);
  v9 = [WKReloadFrameErrorRecoveryAttempter alloc];
  v10 = [(WKReloadFrameErrorRecoveryAttempter *)v9 initWithWebView:a2 frameHandle:WTF::checked_objc_cast<_WKFrameHandle>(*(v16 + 1)) urlString:a5];
  v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{v10, @"_WKRecoveryAttempterErrorKey", 0}];
  v12 = [(NSError *)a4 userInfo];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
    [v11 addEntriesFromDictionary:v13];
  }

  *this = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:-[NSError domain](a4 code:"domain") userInfo:{-[NSError code](a4, "code"), v11}];
  if (v11)
  {
  }

  if (v10)
  {
  }

  v15 = v16;
  v16 = 0;
  if (v15)
  {
    CFRelease(*(v15 + 1));
  }
}

void sub_19DC3CC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v13)
  {
  }

  if (v12)
  {
  }

  if (a12)
  {
    CFRelease(*(a12 + 8));
  }

  _Unwind_Resume(a1);
}

void WebKit::NavigationState::NavigationClient::didFailProvisionalLoadWithErrorForFrame(uint64_t a1, uint64_t a2, WebCore::ResourceRequestBase *a3, WebCore::ResourceError *a4, uint64_t a5)
{
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      WebKit::NavigationState::ref(*(v5 + 8));
      WeakRetained = objc_loadWeakRetained((v6 + 24));
      if (WeakRetained)
      {
        v12 = objc_loadWeakRetained((v6 + 16));
        v13 = WebCore::ResourceError::nsError(a4);
        v14 = WebCore::ResourceRequestBase::url(a3);
        WebKit::createErrorWithRecoveryAttempter(&v22, v12, *(a5 + 248), v13, v14);
        if (v12)
        {
        }

        if (*(v6 + 33))
        {
          v16 = objc_loadWeakRetained((v6 + 16));
          v17 = WebCore::ResourceRequest::nsURLRequest();
          CFRetain(*(a2 + 8));
          v21 = a2;
          v18 = API::Object::newObject(0x180uLL, 59);
          v19 = *(API::FrameInfo::FrameInfo(v18, a5, &v21) + 8);
          if (v19)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              __break(0xC471u);
              return;
            }

            v20 = v19;
          }

          v15 = v22;
          [WeakRetained _webView:v16 didFailProvisionalLoadWithRequest:v17 inFrame:v19 withError:{v22, v21}];
          if (v19)
          {
          }

          CFRelease(*(v18 + 8));
          if (v21)
          {
            CFRelease(*(v21 + 8));
          }

          if (v16)
          {
          }
        }

        else
        {
          v15 = v22;
        }

        if (v15)
        {
        }
      }

      WebKit::NavigationState::deref(v6);
    }
  }
}

void sub_19DC3CE5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (v14)
  {
  }

  CFRelease(*(v13 + 8));
  if (a9)
  {
    CFRelease(*(a9 + 8));
  }

  if (v12)
  {
  }

  if (a10)
  {
  }

  WebKit::NavigationState::deref(v10);
  _Unwind_Resume(a1);
}

void WebKit::NavigationState::NavigationClient::didCommitNavigation(WebKit::NavigationState::NavigationClient *this, WebKit::WebPageProxy *a2, Navigation *a3, API::Object *a4)
{
  v4 = *(this + 1);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      WebKit::NavigationState::ref(*(v4 + 8));
      WeakRetained = objc_loadWeakRetained((v5 + 24));
      if (WeakRetained)
      {
        if ((*(v5 + 33) & 0x40) != 0)
        {
          v8 = objc_loadWeakRetained((v5 + 16));
          if (a3)
          {
            a3 = *(a3 + 1);
            if (a3)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                __break(0xC471u);
                return;
              }
            }
          }

          [WeakRetained webView:v8 didCommitNavigation:a3];
          if (v8)
          {
          }
        }
      }

      WebKit::NavigationState::deref(v5);
    }
  }
}

void WebKit::NavigationState::NavigationClient::didCommitLoadForFrame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      WebKit::NavigationState::ref(*(v4 + 8));
      WeakRetained = objc_loadWeakRetained((v5 + 24));
      if (WeakRetained)
      {
        if ((*(v5 + 33) & 0x80) != 0)
        {
          v9 = objc_loadWeakRetained((v5 + 16));
          v10 = WebCore::ResourceRequest::nsURLRequest();
          CFRetain(*(a2 + 8));
          v14 = a2;
          v11 = API::Object::newObject(0x180uLL, 59);
          v12 = *(API::FrameInfo::FrameInfo(v11, a4, &v14) + 8);
          if (v12)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              __break(0xC471u);
              return;
            }

            v13 = v12;
          }

          [WeakRetained _webView:v9 didCommitLoadWithRequest:v10 inFrame:v12];
          if (v12)
          {
          }

          CFRelease(*(v11 + 8));
          if (v14)
          {
            CFRelease(*(v14 + 8));
          }

          if (v9)
          {
          }
        }
      }

      WebKit::NavigationState::deref(v5);
    }
  }
}

void sub_19DC3D16C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = v14;
  if (v15)
  {
  }

  CFRelease(*(v13 + 8));
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  if (v12)
  {
  }

  WebKit::NavigationState::deref(v10);
  _Unwind_Resume(a1);
}

void WebKit::NavigationState::NavigationClient::didFinishDocumentLoad(WebKit::NavigationState::NavigationClient *this, WebKit::WebPageProxy *a2, Navigation *a3, API::Object *a4)
{
  v4 = *(this + 1);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      WebKit::NavigationState::ref(*(v4 + 8));
      if (*(v5 + 34))
      {
        WeakRetained = objc_loadWeakRetained((v5 + 24));
        if (WeakRetained)
        {
          v8 = objc_loadWeakRetained((v5 + 16));
          if (a3)
          {
            a3 = *(a3 + 1);
            if (a3)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                __break(0xC471u);
                return;
              }
            }
          }

          [WeakRetained _webView:v8 navigationDidFinishDocumentLoad:a3];
          if (v8)
          {
          }
        }
      }

      WebKit::NavigationState::deref(v5);
    }
  }
}

void WebKit::NavigationState::NavigationClient::didFinishNavigation(WebKit::NavigationState::NavigationClient *this, WebKit::WebPageProxy *a2, Navigation *a3, API::Object *a4)
{
  v4 = *(this + 1);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      WebKit::NavigationState::ref(*(v4 + 8));
      WeakRetained = objc_loadWeakRetained((v5 + 24));
      if (WeakRetained)
      {
        if ((*(v5 + 34) & 2) != 0)
        {
          v8 = objc_loadWeakRetained((v5 + 16));
          if (a3)
          {
            a3 = *(a3 + 1);
            if (a3)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                __break(0xC471u);
                return;
              }
            }
          }

          [WeakRetained webView:v8 didFinishNavigation:a3];
          if (v8)
          {
          }
        }
      }

      WebKit::NavigationState::deref(v5);
    }
  }
}

void WebKit::NavigationState::NavigationClient::didFinishLoadForFrame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      WebKit::NavigationState::ref(*(v4 + 8));
      v9 = *(a1 + 8);
      if (v9)
      {
        if (*(v9 + 8))
        {
          WeakRetained = objc_loadWeakRetained((v5 + 24));
          if (WeakRetained)
          {
            if ((*(v5 + 34) & 4) != 0)
            {
              v11 = objc_loadWeakRetained((v5 + 16));
              v12 = WebCore::ResourceRequest::nsURLRequest();
              CFRetain(*(a2 + 8));
              v16 = a2;
              v13 = API::Object::newObject(0x180uLL, 59);
              v14 = *(API::FrameInfo::FrameInfo(v13, a4, &v16) + 8);
              if (v14)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  __break(0xC471u);
                  return;
                }

                v15 = v14;
              }

              [WeakRetained _webView:v11 didFinishLoadWithRequest:v12 inFrame:v14];
              if (v14)
              {
              }

              CFRelease(*(v13 + 8));
              if (v16)
              {
                CFRelease(*(v16 + 8));
              }

              if (v11)
              {
              }
            }
          }
        }
      }

      WebKit::NavigationState::deref(v5);
    }
  }
}

void sub_19DC3D58C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = v14;
  if (v15)
  {
  }

  CFRelease(*(v13 + 8));
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  if (v12)
  {
  }

  WebKit::NavigationState::deref(v10);
  _Unwind_Resume(a1);
}

void WebKit::NavigationState::NavigationClient::didBlockLoadToKnownTracker(WebKit::NavigationState::NavigationClient *this, WebKit::WebPageProxy *a2, const WTF::URL *a3)
{
  v3 = *(this + 1);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      WebKit::NavigationState::ref(*(v3 + 8));
      v7 = *(this + 1);
      if (v7)
      {
        if (*(v7 + 8))
        {
          WeakRetained = objc_loadWeakRetained((v4 + 24));
          if (WeakRetained)
          {
            if ((*(v4 + 34) & 0x80) != 0)
            {
              v9 = objc_loadWeakRetained((v4 + 16));
              WTF::URL::createCFURL(&v11, a3);
              [WeakRetained _webView:v9 didFailLoadDueToNetworkConnectionIntegrityWithURL:v11];
              v10 = v11;
              v11 = 0;
              if (v10)
              {
              }

              if (v9)
              {
              }
            }
          }
        }
      }

      WebKit::NavigationState::deref(v4);
    }
  }
}

void sub_19DC3D6B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  if (v12)
  {
  }

  WebKit::NavigationState::deref(v10);
  _Unwind_Resume(a1);
}

void WebKit::NavigationState::NavigationClient::didApplyLinkDecorationFiltering(WebKit::NavigationState::NavigationClient *this, WebKit::WebPageProxy *a2, const WTF::URL *a3, const WTF::URL *a4)
{
  v4 = *(this + 1);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      WebKit::NavigationState::ref(*(v4 + 8));
      v9 = *(this + 1);
      if (v9)
      {
        if (*(v9 + 8))
        {
          WeakRetained = objc_loadWeakRetained((v5 + 24));
          if (WeakRetained)
          {
            if (*(v5 + 35))
            {
              v11 = objc_loadWeakRetained((v5 + 16));
              WTF::URL::createCFURL(&v16, a3);
              v12 = v16;
              WTF::URL::createCFURL(&v15, a4);
              [WeakRetained _webView:v11 didChangeLookalikeCharactersFromURL:v12 toURL:v15];
              v13 = v15;
              v15 = 0;
              if (v13)
              {
              }

              v14 = v16;
              v16 = 0;
              if (v14)
              {
              }

              if (v11)
              {
              }
            }
          }
        }
      }

      WebKit::NavigationState::deref(v5);
    }
  }
}

void sub_19DC3D7F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  if (a9)
  {
  }

  if (a10)
  {
  }

  if (v12)
  {
  }

  WebKit::NavigationState::deref(v10);
  _Unwind_Resume(a1);
}

void WebKit::NavigationState::NavigationClient::didPromptForStorageAccess(WebKit::NavigationState::NavigationClient *this, WebKit::WebPageProxy *a2, atomic_uint **a3, atomic_uint **a4, uint64_t a5)
{
  v5 = *(this + 1);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      WebKit::NavigationState::ref(*(v5 + 8));
      v11 = *(this + 1);
      if (v11)
      {
        if (*(v11 + 8))
        {
          WeakRetained = objc_loadWeakRetained((v6 + 24));
          if (WeakRetained)
          {
            if ((*(v6 + 35) & 2) != 0)
            {
              v13 = objc_loadWeakRetained((v6 + 16));
              v14 = *a3;
              if (v14)
              {
                atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
                MEMORY[0x19EB00B70](&v24, v14);
                if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v14, v15);
                }
              }

              else
              {
                v24 = &stru_1F1147748;
                v16 = &stru_1F1147748;
              }

              v17 = v24;
              v18 = *a4;
              if (v18)
              {
                atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
                MEMORY[0x19EB00B70](&v23, v18);
                if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v18, v19);
                }
              }

              else
              {
                v23 = &stru_1F1147748;
                v20 = &stru_1F1147748;
              }

              [WeakRetained _webView:v13 didPromptForStorageAccess:v17 forSubFrameDomain:v23 forQuirk:{a5, v23}];
              v21 = v23;
              v23 = 0;
              if (v21)
              {
              }

              v22 = v24;
              v24 = 0;
              if (v22)
              {
              }

              if (v13)
              {
              }
            }
          }
        }
      }

      WebKit::NavigationState::deref(v6);
    }
  }
}

void sub_19DC3D9C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  if (v12)
  {
  }

  WebKit::NavigationState::deref(v10);
  _Unwind_Resume(a1);
}

void WebKit::NavigationState::NavigationClient::didFailNavigationWithError(WebKit::NavigationState::NavigationClient *this, WebKit::WebPageProxy *a2, const FrameInfoData *a3, API::Navigation *a4, const WTF::URL *a5, const WebCore::ResourceError *a6, API::Object *a7)
{
  v7 = *(this + 1);
  if (!v7)
  {
    return;
  }

  v8 = *(v7 + 8);
  if (!v8)
  {
    return;
  }

  WebKit::NavigationState::ref(*(v7 + 8));
  v15 = *(this + 1);
  if (v15)
  {
    if (*(v15 + 8))
    {
      WeakRetained = objc_loadWeakRetained((v8 + 24));
      if (WeakRetained)
      {
        v17 = objc_loadWeakRetained((v8 + 16));
        v18 = WebCore::ResourceError::nsError(a6);
        WebKit::createErrorWithRecoveryAttempter(&v25, v17, a3->frameID.m_identifier, v18, a5);
        if (v17)
        {
        }

        v19 = *(v8 + 32);
        if ((v19 & 0x100000) != 0)
        {
          v21 = objc_loadWeakRetained((v8 + 16));
          if (a4)
          {
            v22 = *(a4 + 1);
            if (v22)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                __break(0xC471u);
                JUMPOUT(0x19DC3DB68);
              }
            }
          }

          else
          {
            v22 = 0;
          }

          v20 = v25;
          if (a7)
          {
            v24 = *(a7 + 1);
          }

          else
          {
            v24 = 0;
          }

          [WeakRetained _webView:v21 didFailNavigation:v22 withError:v25 userInfo:v24];
        }

        else
        {
          if ((v19 & 0x80000) == 0)
          {
            v20 = v25;
LABEL_28:
            if (v20)
            {
            }

            goto LABEL_31;
          }

          v21 = objc_loadWeakRetained((v8 + 16));
          if (a4)
          {
            v23 = *(a4 + 1);
            if (v23)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                __break(0xC471u);
                JUMPOUT(0x19DC3DBBCLL);
              }
            }
          }

          else
          {
            v23 = 0;
          }

          v20 = v25;
          [WeakRetained webView:v21 didFailNavigation:v23 withError:v25];
        }

        if (v21)
        {
        }

        goto LABEL_28;
      }
    }
  }

LABEL_31:

  WebKit::NavigationState::deref(v8);
}

void sub_19DC3DC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  WebKit::NavigationState::deref(v10);
  _Unwind_Resume(a1);
}

void WebKit::NavigationState::NavigationClient::didFailLoadWithErrorForFrame(uint64_t a1, uint64_t a2, WebCore::ResourceRequestBase *a3, WebCore::ResourceError *a4, uint64_t a5)
{
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      WebKit::NavigationState::ref(*(v5 + 8));
      WeakRetained = objc_loadWeakRetained((v6 + 24));
      if (WeakRetained)
      {
        v12 = objc_loadWeakRetained((v6 + 16));
        v13 = WebCore::ResourceError::nsError(a4);
        v14 = WebCore::ResourceRequestBase::url(a3);
        WebKit::createErrorWithRecoveryAttempter(&v22, v12, *(a5 + 248), v13, v14);
        if (v12)
        {
        }

        if ((*(v6 + 34) & 0x20) != 0)
        {
          v16 = objc_loadWeakRetained((v6 + 16));
          v17 = WebCore::ResourceRequest::nsURLRequest();
          CFRetain(*(a2 + 8));
          v21 = a2;
          v18 = API::Object::newObject(0x180uLL, 59);
          v19 = *(API::FrameInfo::FrameInfo(v18, a5, &v21) + 8);
          if (v19)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              __break(0xC471u);
              return;
            }

            v20 = v19;
          }

          v15 = v22;
          [WeakRetained _webView:v16 didFailLoadWithRequest:v17 inFrame:v19 withError:{v22, v21}];
          if (v19)
          {
          }

          CFRelease(*(v18 + 8));
          if (v21)
          {
            CFRelease(*(v21 + 8));
          }

          if (v16)
          {
          }
        }

        else
        {
          v15 = v22;
        }

        if (v15)
        {
        }
      }

      WebKit::NavigationState::deref(v6);
    }
  }
}

void sub_19DC3DEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (v14)
  {
  }

  CFRelease(*(v13 + 8));
  if (a9)
  {
    CFRelease(*(a9 + 8));
  }

  if (v12)
  {
  }

  if (a10)
  {
  }

  WebKit::NavigationState::deref(v10);
  _Unwind_Resume(a1);
}

void WebKit::NavigationState::NavigationClient::didSameDocumentNavigation(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      WebKit::NavigationState::ref(*(v4 + 8));
      if ((*(v5 + 34) & 0x40) != 0)
      {
        WeakRetained = objc_loadWeakRetained((v5 + 24));
        if (WeakRetained)
        {
          v9 = objc_loadWeakRetained((v5 + 16));
          if (a3)
          {
            a3 = *(a3 + 8);
            if (a3)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                __break(0xC471u);
                return;
              }
            }
          }

          if ((a4 - 1) < 3)
          {
            v10 = (a4 - 1) + 1;
          }

          else
          {
            v10 = 0;
          }

          [WeakRetained _webView:v9 navigation:a3 didSameDocumentNavigation:v10];
          if (v9)
          {
          }
        }
      }

      WebKit::NavigationState::deref(v5);
    }
  }
}

void WebKit::NavigationState::NavigationClient::renderingProgressDidChange(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      WebKit::NavigationState::ref(*(v3 + 8));
      if ((*(v4 + 35) & 4) != 0)
      {
        WeakRetained = objc_loadWeakRetained((v4 + 24));
        if (WeakRetained)
        {
          v7 = objc_loadWeakRetained((v4 + 16));
          [WeakRetained _webView:v7 renderingProgressDidChange:(a3 >> 3) & 8 | a3 & 0x1B7];
          if (v7)
          {
          }
        }
      }

      WebKit::NavigationState::deref(v4);
    }
  }
}

void sub_19DC3E11C(_Unwind_Exception *a1)
{
  if (v3)
  {
  }

  WebKit::NavigationState::deref(v1);
  _Unwind_Resume(a1);
}

uint64_t WebKit::NavigationState::NavigationClient::shouldBypassContentModeSafeguards(WebKit::NavigationState::NavigationClient *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 32);
  if ((v3 & 2) != 0)
  {
    return 1;
  }

  else
  {
    return (v3 >> 2) & 1;
  }
}

void WebKit::NavigationState::NavigationClient::didReceiveAuthenticationChallenge(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (v4 && (v5 = *(v4 + 8)) != 0)
  {
    WebKit::NavigationState::ref(*(v4 + 8));
    if ((*(v5 + 35) & 8) != 0 && (v11 = objc_loadWeakRetained((v5 + 24)), (v12 = v11) != 0))
    {
      WebKit::CompletionHandlerCallChecker::create(v11, sel_webView_didReceiveAuthenticationChallenge_completionHandler_, &v23);
      WeakRetained = objc_loadWeakRetained((v5 + 16));
      v14 = *(a3 + 8);
      if (v14)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          __break(0xC471u);
          return;
        }

        v15 = *(a3 + 8);
      }

      else
      {
        v15 = 0;
      }

      CFRetain(v15);
      v21 = v23;
      v23 = 0;
      v22 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
      *v22 = MEMORY[0x1E69E9818];
      v22[1] = 50331650;
      v22[2] = WTF::BlockPtr<void ()(NSURLSessionAuthChallengeDisposition,NSURLCredential *)>::fromCallable<WebKit::NavigationState::NavigationClient::didReceiveAuthenticationChallenge(WebKit::WebPageProxy &,WebKit::AuthenticationChallengeProxy &)::$_0>(WebKit::NavigationState::NavigationClient::didReceiveAuthenticationChallenge(WebKit::WebPageProxy &,WebKit::AuthenticationChallengeProxy &)::$_0)::{lambda(void *,NSURLSessionAuthChallengeDisposition,NSURLCredential *)#1}::__invoke;
      v22[3] = &WTF::BlockPtr<void ()(NSURLSessionAuthChallengeDisposition,NSURLCredential *)>::fromCallable<WebKit::NavigationState::NavigationClient::didReceiveAuthenticationChallenge(WebKit::WebPageProxy &,WebKit::AuthenticationChallengeProxy &)::$_0>(WebKit::NavigationState::NavigationClient::didReceiveAuthenticationChallenge(WebKit::WebPageProxy &,WebKit::AuthenticationChallengeProxy &)::$_0)::descriptor;
      v22[4] = a3;
      v22[5] = v21;
      [(WebKit::CompletionHandlerCallChecker *)v12 webView:WeakRetained didReceiveAuthenticationChallenge:v14 completionHandler:v22];
      _Block_release(v22);
      if (WeakRetained)
      {
      }
    }

    else
    {
      v16 = *(a3 + 472);
      WebCore::CredentialBase::CredentialBase(&v23);
      v25 = 0;
      WebKit::AuthenticationDecisionListener::completeChallenge(v16);
      v18 = v25;
      v25 = 0;
      if (v18)
      {
      }

      v19 = v24;
      v24 = 0;
      if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v17);
      }

      v20 = v23;
      v23 = 0;
      if (v20)
      {
        if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v20, v17);
        }
      }
    }

    WebKit::NavigationState::deref(v5);
  }

  else
  {
    v6 = *(a3 + 472);
    WebCore::CredentialBase::CredentialBase(&v23);
    v25 = 0;
    WebKit::AuthenticationDecisionListener::completeChallenge(v6);
    v8 = v25;
    v25 = 0;
    if (v8)
    {
    }

    v9 = v24;
    v24 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v7);
    }

    v10 = v23;
    v23 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v7);
    }
  }
}

void WebKit::NavigationState::NavigationClient::shouldAllowLegacyTLS(uint64_t a1, uint64_t a2, uint64_t a3, WTF::RefCountedBase *a4)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = *(v6 + 8);
    if (v7)
    {
      WebKit::NavigationState::ref(*(v6 + 8));
      if ((*(v7 + 35) & 0x30) == 0 || (WeakRetained = objc_loadWeakRetained((v7 + 24)), (v10 = WeakRetained) == 0))
      {
        WTF::CompletionHandler<void ()(BOOL)>::operator()(a4, *(*(*(a2 + 408) + 224) + 427));
LABEL_20:

        WebKit::NavigationState::deref(v7);
        return;
      }

      if ((*(v7 + 35) & 0x20) != 0)
      {
        WebKit::CompletionHandlerCallChecker::create(WeakRetained, sel_webView_authenticationChallenge_shouldAllowDeprecatedTLS_, &v20);
        v11 = objc_loadWeakRetained((v7 + 16));
        v17 = *(a3 + 8);
        if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v18 = v20;
          v20 = 0;
          v19 = *a4;
          *a4 = 0;
          v15 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
          *v15 = MEMORY[0x1E69E9818];
          v15[1] = 50331650;
          v15[2] = WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::NavigationState::NavigationClient::shouldAllowLegacyTLS(WebKit::WebPageProxy &,WebKit::AuthenticationChallengeProxy &,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::NavigationState::NavigationClient::shouldAllowLegacyTLS(WebKit::WebPageProxy &,WebKit::AuthenticationChallengeProxy &,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::{lambda(void *,BOOL)#1}::__invoke;
          v15[3] = &WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::NavigationState::NavigationClient::shouldAllowLegacyTLS(WebKit::WebPageProxy &,WebKit::AuthenticationChallengeProxy &,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::NavigationState::NavigationClient::shouldAllowLegacyTLS(WebKit::WebPageProxy &,WebKit::AuthenticationChallengeProxy &,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::descriptor;
          v15[4] = v18;
          v15[5] = v19;
          [(WebKit::CompletionHandlerCallChecker *)v10 webView:v11 authenticationChallenge:v17 shouldAllowDeprecatedTLS:v15];
          goto LABEL_17;
        }
      }

      else
      {
        WebKit::CompletionHandlerCallChecker::create(WeakRetained, sel__webView_authenticationChallenge_shouldAllowLegacyTLS_, &v20);
        v11 = objc_loadWeakRetained((v7 + 16));
        v12 = *(a3 + 8);
        if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v13 = v20;
          v20 = 0;
          v14 = *a4;
          *a4 = 0;
          v15 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
          *v15 = MEMORY[0x1E69E9818];
          v15[1] = 50331650;
          v15[2] = WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::NavigationState::NavigationClient::shouldAllowLegacyTLS(WebKit::WebPageProxy &,WebKit::AuthenticationChallengeProxy &,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1>(WebKit::NavigationState::NavigationClient::shouldAllowLegacyTLS(WebKit::WebPageProxy &,WebKit::AuthenticationChallengeProxy &,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1)::{lambda(void *,BOOL)#1}::__invoke;
          v15[3] = &WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::NavigationState::NavigationClient::shouldAllowLegacyTLS(WebKit::WebPageProxy &,WebKit::AuthenticationChallengeProxy &,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1>(WebKit::NavigationState::NavigationClient::shouldAllowLegacyTLS(WebKit::WebPageProxy &,WebKit::AuthenticationChallengeProxy &,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1)::descriptor;
          v15[4] = v13;
          v15[5] = v14;
          [(WebKit::CompletionHandlerCallChecker *)v10 _webView:v11 authenticationChallenge:v12 shouldAllowLegacyTLS:v15];
LABEL_17:
          _Block_release(v15);
          if (v11)
          {
          }

          goto LABEL_20;
        }
      }

      __break(0xC471u);
      JUMPOUT(0x19DC3E73CLL);
    }
  }

  v16 = *(*(*(a2 + 408) + 224) + 427);

  WTF::CompletionHandler<void ()(BOOL)>::operator()(a4, v16);
}

void sub_19DC3E760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  v14 = v12;
  _Block_release(v14);
  if (v13)
  {
  }

  if (a10)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(a10);
  }

  WebKit::NavigationState::deref(v10);
  _Unwind_Resume(a1);
}

void WebKit::NavigationState::NavigationClient::didNegotiateModernTLS(WebKit::NavigationState::NavigationClient *this, const WTF::URL *a2)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      WebKit::NavigationState::ref(*(v2 + 8));
      if ((*(v3 + 35) & 0x40) != 0)
      {
        WeakRetained = objc_loadWeakRetained((v3 + 24));
        if (WeakRetained)
        {
          v6 = objc_loadWeakRetained((v3 + 16));
          WTF::URL::createCFURL(&v8, a2);
          [WeakRetained _webView:v6 didNegotiateModernTLSForURL:v8];
          v7 = v8;
          v8 = 0;
          if (v7)
          {
          }

          if (v6)
          {
          }
        }
      }

      WebKit::NavigationState::deref(v3);
    }
  }
}

void sub_19DC3E8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  if (v12)
  {
  }

  WebKit::NavigationState::deref(v10);
  _Unwind_Resume(a1);
}

uint64_t WebKit::NavigationState::NavigationClient::processDidTerminate(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 8);
  if (!v4)
  {
    return 0;
  }

  WebKit::NavigationState::ref(*(v3 + 8));
  if (*(v4 + 32) & 0x80000000) != 0 || (*(v4 + 36) & 2) != 0 || (*(v4 + 36))
  {
    WeakRetained = objc_loadWeakRetained((v4 + 24));
    if (WeakRetained)
    {
      if (*(v4 + 36))
      {
        v7 = objc_loadWeakRetained((v4 + 16));
        if (a3 > 0xD)
        {
          v8 = 3;
        }

        else
        {
          v8 = qword_19E7038E8[a3];
        }

        [WeakRetained _webView:v7 webContentProcessDidTerminateWithReason:v8];
      }

      else if ((*(v4 + 32) & 0x80000000) != 0)
      {
        v7 = objc_loadWeakRetained((v4 + 16));
        [WeakRetained webViewWebContentProcessDidTerminate:v7];
      }

      else
      {
        v7 = objc_loadWeakRetained((v4 + 16));
        [WeakRetained _webViewWebProcessDidCrash:v7];
      }

      if (v7)
      {
      }

      WeakRetained = 1;
    }
  }

  else
  {
    WeakRetained = 0;
  }

  WebKit::NavigationState::deref(v4);
  return WeakRetained;
}

void sub_19DC3EA28(_Unwind_Exception *a1)
{
  if (v3)
  {
  }

  WebKit::NavigationState::deref(v1);
  _Unwind_Resume(a1);
}

void WebKit::NavigationState::NavigationClient::processDidBecomeResponsive(WebKit::NavigationState::NavigationClient *this, WebKit::WebPageProxy *a2)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      WebKit::NavigationState::ref(*(v2 + 8));
      if ((*(v3 + 36) & 4) != 0)
      {
        WeakRetained = objc_loadWeakRetained((v3 + 24));
        if (WeakRetained)
        {
          v5 = objc_loadWeakRetained((v3 + 16));
          [WeakRetained _webViewWebProcessDidBecomeResponsive:v5];
          if (v5)
          {
          }
        }
      }

      WebKit::NavigationState::deref(v3);
    }
  }
}

void sub_19DC3EB04(_Unwind_Exception *a1)
{
  v4 = v3;
  if (v4)
  {
  }

  WebKit::NavigationState::deref(v1);
  _Unwind_Resume(a1);
}

void WebKit::NavigationState::NavigationClient::processDidBecomeUnresponsive(WebKit::NavigationState::NavigationClient *this, WebKit::WebPageProxy *a2)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      WebKit::NavigationState::ref(*(v2 + 8));
      if ((*(v3 + 36) & 8) != 0)
      {
        WeakRetained = objc_loadWeakRetained((v3 + 24));
        if (WeakRetained)
        {
          v5 = objc_loadWeakRetained((v3 + 16));
          [WeakRetained _webViewWebProcessDidBecomeUnresponsive:v5];
          if (v5)
          {
          }
        }
      }

      WebKit::NavigationState::deref(v3);
    }
  }
}

void sub_19DC3EBD8(_Unwind_Exception *a1)
{
  v4 = v3;
  if (v4)
  {
  }

  WebKit::NavigationState::deref(v1);
  _Unwind_Resume(a1);
}

void WebKit::NavigationState::NavigationClient::legacyWebCryptoMasterKey(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 8);
  if (!v4 || (v5 = *(v4 + 8)) == 0)
  {
    LOBYTE(v26) = 0;
    WTF::CompletionHandler<void ()(std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)>::operator()(a3);
    return;
  }

  WebKit::NavigationState::ref(*(v4 + 8));
  if ((*(v5 + 36) & 0x30) == 0)
  {
    WebCore::getDefaultWebCryptoMasterKey();
LABEL_27:
    WebKit::NavigationState::deref(v5);
    return;
  }

  WeakRetained = objc_loadWeakRetained((v5 + 24));
  v7 = WeakRetained;
  if (!WeakRetained)
  {
    LOBYTE(v26) = 0;
    v28 = 0;
    WTF::CompletionHandler<void ()(std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)>::operator()(a3);
    goto LABEL_27;
  }

  if ((*(v5 + 36) & 0x10) == 0)
  {
    if ((*(v5 + 36) & 0x20) == 0)
    {
LABEL_25:
      LOBYTE(v26) = 0;
      v28 = 0;
      WTF::CompletionHandler<void ()(std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)>::operator()(a3);
      goto LABEL_26;
    }

    WebKit::CompletionHandlerCallChecker::create(WeakRetained, sel__webCryptoMasterKeyForWebView_completionHandler_, &v26);
    v10 = objc_loadWeakRetained((v5 + 16));
    v19 = *a3;
    *a3 = 0;
    v20 = v26;
    v21 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
    *v21 = MEMORY[0x1E69E9818];
    v21[1] = 50331650;
    v21[2] = WTF::BlockPtr<void ()(NSData *)>::fromCallable<WebKit::NavigationState::NavigationClient::legacyWebCryptoMasterKey(WebKit::WebPageProxy &,WTF::CompletionHandler<void ()(std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0>(WebKit::NavigationState::NavigationClient::legacyWebCryptoMasterKey(WebKit::WebPageProxy &,WTF::CompletionHandler<void ()(std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0)::{lambda(void *,NSData *)#1}::__invoke;
    v21[3] = &WTF::BlockPtr<void ()(NSData *)>::fromCallable<WebKit::NavigationState::NavigationClient::legacyWebCryptoMasterKey(WebKit::WebPageProxy &,WTF::CompletionHandler<void ()(std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0>(WebKit::NavigationState::NavigationClient::legacyWebCryptoMasterKey(WebKit::WebPageProxy &,WTF::CompletionHandler<void ()(std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0)::descriptor;
    v21[4] = v19;
    v21[5] = v20;
    [(WebKit::CompletionHandlerCallChecker *)v7 _webCryptoMasterKeyForWebView:v10 completionHandler:v21];
    _Block_release(v21);
    if (!v10)
    {
LABEL_26:

      goto LABEL_27;
    }

LABEL_24:

    goto LABEL_26;
  }

  v8 = objc_loadWeakRetained((v5 + 16));
  v9 = [(WebKit::CompletionHandlerCallChecker *)v7 _webCryptoMasterKeyForWebView:v8];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  if (v8)
  {
  }

  if (!v10)
  {
    goto LABEL_25;
  }

  v12 = [v10 bytes];
  v13 = [v10 length];
  v14 = v13;
  v23 = 0;
  v24 = 0;
  v25 = v13;
  if (!v13)
  {
LABEL_20:
    std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(&v26, &v23);
    WTF::CompletionHandler<void ()(std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)>::operator()(a3);
    if (v28 == 1)
    {
      v22 = v26;
      if (v26)
      {
        v26 = 0;
        v27 = 0;
        WTF::fastFree(v22, v17);
      }
    }

    v18 = v23;
    if (v23)
    {
      v23 = 0;
      v24 = 0;
      WTF::fastFree(v18, v17);
    }

    goto LABEL_24;
  }

  if (!HIDWORD(v13))
  {
    v15 = WTF::fastMalloc(v13);
    v24 = v14;
    v23 = v15;
    do
    {
      v16 = *v12++;
      *v15 = v16;
      v15 = (v15 + 1);
      --v14;
    }

    while (v14);
    goto LABEL_20;
  }

  __break(0xC471u);
}

void sub_19DC3EEE8(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11, WTF *a12, int a13, int a14, char a15)
{
  if (a15 == 1)
  {
    if (a12)
    {
      WTF::fastFree(a12, a2);
    }
  }

  WebKit::NavigationState::deref(v15);
  _Unwind_Resume(a1);
}

uint64_t std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1, a2);
  *(a1 + 16) = 1;
  return a1;
}

void sub_19DC3F08C(_Unwind_Exception *exception_object, void *a2)
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

void WebKit::NavigationState::NavigationClient::navigationActionDidBecomeDownload(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      WebKit::NavigationState::ref(*(v4 + 8));
      if ((*(v5 + 36) & 0x40) != 0)
      {
        WeakRetained = objc_loadWeakRetained((v5 + 24));
        if (WeakRetained)
        {
          v9 = objc_loadWeakRetained((v5 + 16));
          v10 = *(a3 + 8);
          if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v11 = *(a4 + 8)) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            __break(0xC471u);
            JUMPOUT(0x19DC3F1C8);
          }

          [WeakRetained webView:v9 navigationAction:v10 didBecomeDownload:v11];
          if (v9)
          {
          }
        }
      }

      WebKit::NavigationState::deref(v5);
    }
  }
}

void WebKit::NavigationState::NavigationClient::navigationResponseDidBecomeDownload(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      WebKit::NavigationState::ref(*(v4 + 8));
      if (*(v5 + 36) < 0)
      {
        WeakRetained = objc_loadWeakRetained((v5 + 24));
        if (WeakRetained)
        {
          v9 = objc_loadWeakRetained((v5 + 16));
          v10 = *(a3 + 8);
          if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v11 = *(a4 + 8)) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            __break(0xC471u);
            JUMPOUT(0x19DC3F338);
          }

          [WeakRetained webView:v9 navigationResponse:v10 didBecomeDownload:v11];
          if (v9)
          {
          }
        }
      }

      WebKit::NavigationState::deref(v5);
    }
  }
}

void WebKit::NavigationState::NavigationClient::contextMenuDidCreateDownload(WebKit::NavigationState::NavigationClient *this, WebKit::WebPageProxy *a2, WebKit::DownloadProxy *a3)
{
  v3 = *(this + 1);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      WebKit::NavigationState::ref(*(v3 + 8));
      if (*(v4 + 37) == 1)
      {
        WeakRetained = objc_loadWeakRetained((v4 + 24));
        if (WeakRetained)
        {
          v7 = objc_loadWeakRetained((v4 + 16));
          v8 = *(a3 + 1);
          if (v8)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              __break(0xC471u);
              return;
            }
          }

          [WeakRetained _webView:v7 contextMenuDidCreateDownload:v8];
          if (v7)
          {
          }
        }
      }

      WebKit::NavigationState::deref(v4);
    }
  }
}

void WebKit::NavigationState::NavigationClient::didStartLoadForQuickLookDocumentInMainFrame(WebKit::NavigationState::NavigationClient *this, atomic_uint **a2, atomic_uint **a3)
{
  v3 = *(this + 1);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      WebKit::NavigationState::ref(*(v3 + 8));
      v8 = *(this + 1);
      if (v8 && (v9 = *(v8 + 8)) != 0)
      {
        if ((*(v9 + 38) & 0x80) != 0)
        {
          WeakRetained = objc_loadWeakRetained(v4 + 3);
          if (WeakRetained)
          {
            v11 = objc_loadWeakRetained(v4 + 2);
            v12 = *a2;
            if (v12)
            {
              atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
              MEMORY[0x19EB00B70](&v22, v12);
              if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v12, v13);
              }
            }

            else
            {
              v22 = &stru_1F1147748;
              v14 = &stru_1F1147748;
            }

            v15 = v22;
            v16 = *a3;
            if (v16)
            {
              atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
              MEMORY[0x19EB00B70](&v21, v16);
              if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v16, v17);
              }
            }

            else
            {
              v21 = &stru_1F1147748;
              v18 = &stru_1F1147748;
            }

            [WeakRetained _webView:v11 didStartLoadForQuickLookDocumentInMainFrameWithFileName:v15 uti:{v21, v21}];
            v19 = v21;
            v21 = 0;
            if (v19)
            {
            }

            v20 = v22;
            v22 = 0;
            if (v20)
            {
            }

            if (v11)
            {
            }
          }
        }

        WebKit::NavigationState::deref(v4);
      }

      else
      {
        __break(0xC471u);
      }
    }
  }
}

void sub_19DC3F630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  if (v12)
  {
  }

  WebKit::NavigationState::deref(v10);
  _Unwind_Resume(a1);
}

void WebKit::NavigationState::NavigationClient::didFinishLoadForQuickLookDocumentInMainFrame(WebKit::NavigationState::NavigationClient *this, const WebCore::FragmentedSharedBuffer *a2)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      WebKit::NavigationState::ref(*(v2 + 8));
      v6 = *(this + 1);
      if (!v6 || (v7 = *(v6 + 8)) == 0)
      {
        __break(0xC471u);
        return;
      }

      if ((*(v7 + 38) & 0x100) == 0)
      {
        goto LABEL_14;
      }

      WeakRetained = objc_loadWeakRetained(v3 + 3);
      if (!WeakRetained)
      {
        goto LABEL_14;
      }

      v9 = objc_loadWeakRetained(v3 + 2);
      WebCore::FragmentedSharedBuffer::makeContiguous(&v12, a2);
      WebCore::SharedBuffer::createNSData(&v13, v12);
      [WeakRetained _webView:v9 didFinishLoadForQuickLookDocumentInMainFrame:v13];
      v10 = v13;
      v13 = 0;
      if (v10)
      {
      }

      v11 = v12;
      v12 = 0;
      if (v11 && atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v11 + 2);
        (*(*v11 + 8))(v11);
        if (!v9)
        {
          goto LABEL_13;
        }
      }

      else if (!v9)
      {
LABEL_13:

LABEL_14:
        WebKit::NavigationState::deref(v3);
        return;
      }

      goto LABEL_13;
    }
  }
}

void sub_19DC3F810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int *a9, void *a10)
{
  if (a10)
  {
  }

  if (a9 && atomic_fetch_add(a9 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a9 + 2);
    (*(*a9 + 8))(a9);
  }

  if (v12)
  {
  }

  WebKit::NavigationState::deref(v10);
  _Unwind_Resume(a1);
}

void WebKit::NavigationState::NavigationClient::decidePolicyForSOAuthorizationLoad(uint64_t a1, uint64_t a2, unsigned int a3, atomic_uint **a4, uint64_t *a5)
{
  v7 = *(a1 + 8);
  if (v7 && (v8 = *(v7 + 8)) != 0)
  {
    WebKit::NavigationState::ref(*(v7 + 8));
    if (*(v8 + 38) < 0 && (v10 = objc_loadWeakRetained((v8 + 24)), (v11 = v10) != 0))
    {
      WebKit::CompletionHandlerCallChecker::create(v10, sel__webView_decidePolicyForSOAuthorizationLoadWithCurrentPolicy_forExtension_completionHandler_, &v22);
      WeakRetained = objc_loadWeakRetained((v8 + 16));
      v13 = *a4;
      if (v13)
      {
        atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](&v21, v13);
        if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v13, v14);
        }
      }

      else
      {
        v21 = &stru_1F1147748;
        v15 = &stru_1F1147748;
      }

      v16 = v21;
      v17 = v22;
      v18 = *a5;
      *a5 = 0;
      v22 = 0;
      v19 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
      *v19 = MEMORY[0x1E69E9818];
      v19[1] = 50331650;
      v19[2] = WTF::BlockPtr<void ()(_WKSOAuthorizationLoadPolicy)>::fromCallable<WebKit::NavigationState::NavigationClient::decidePolicyForSOAuthorizationLoad(WebKit::WebPageProxy &,WebKit::SOAuthorizationLoadPolicy,WTF::String const&,WTF::CompletionHandler<void ()(WebKit::SOAuthorizationLoadPolicy)> &&)::$_0>(WebKit::NavigationState::NavigationClient::decidePolicyForSOAuthorizationLoad(WebKit::WebPageProxy &,WebKit::SOAuthorizationLoadPolicy,WTF::String const&,WTF::CompletionHandler<void ()(WebKit::SOAuthorizationLoadPolicy)> &&)::$_0)::{lambda(void *,_WKSOAuthorizationLoadPolicy)#1}::__invoke;
      v19[3] = &WTF::BlockPtr<void ()(_WKSOAuthorizationLoadPolicy)>::fromCallable<WebKit::NavigationState::NavigationClient::decidePolicyForSOAuthorizationLoad(WebKit::WebPageProxy &,WebKit::SOAuthorizationLoadPolicy,WTF::String const&,WTF::CompletionHandler<void ()(WebKit::SOAuthorizationLoadPolicy)> &&)::$_0>(WebKit::NavigationState::NavigationClient::decidePolicyForSOAuthorizationLoad(WebKit::WebPageProxy &,WebKit::SOAuthorizationLoadPolicy,WTF::String const&,WTF::CompletionHandler<void ()(WebKit::SOAuthorizationLoadPolicy)> &&)::$_0)::descriptor;
      v19[4] = v18;
      v19[5] = v17;
      [(WebKit::CompletionHandlerCallChecker *)v11 _webView:WeakRetained decidePolicyForSOAuthorizationLoadWithCurrentPolicy:a3 forExtension:v16 completionHandler:v19];
      _Block_release(v19);
      v20 = v21;
      v21 = 0;
      if (v20)
      {
      }

      if (WeakRetained)
      {
      }
    }

    else
    {
      WTF::CompletionHandler<void ()(WebKit::SOAuthorizationLoadPolicy)>::operator()(a5);
    }

    WebKit::NavigationState::deref(v8);
  }

  else
  {

    WTF::CompletionHandler<void ()(WebKit::SOAuthorizationLoadPolicy)>::operator()(a5);
  }
}

void sub_19DC3FA90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, atomic_uint *a10)
{
  if (v12)
  {
  }

  if (a10)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(a10);
  }

  WebKit::NavigationState::deref(v10);
  _Unwind_Resume(a1);
}

uint64_t WTF::CompletionHandler<void ()(WebKit::SOAuthorizationLoadPolicy)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void WebKit::NavigationState::HistoryClient::didNavigateWithNavigationData(uint64_t a1, uint64_t a2, atomic_uint **a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      WebKit::NavigationState::ref(*(v3 + 8));
      if (*(v4 + 56))
      {
        WeakRetained = objc_loadWeakRetained((v4 + 48));
        if (WeakRetained)
        {
          v7 = objc_loadWeakRetained((v4 + 16));
          v8 = API::Object::newObject(0x1F0uLL, 77);
          v9 = *(API::NavigationData::NavigationData(v8, a3) + 8);
          if (v9)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              __break(0xC471u);
              return;
            }

            v10 = v9;
          }

          [WeakRetained _webView:v7 didNavigateWithNavigationData:v9];
          if (v9)
          {
          }

          CFRelease(*(v8 + 8));
          if (v7)
          {
          }
        }
      }

      WebKit::NavigationState::deref(v4);
    }
  }
}

void sub_19DC3FD7C(_Unwind_Exception *a1)
{
  if (v5)
  {
  }

  CFRelease(*(v4 + 8));
  if (v3)
  {
  }

  WebKit::NavigationState::deref(v1);
  _Unwind_Resume(a1);
}

void WebKit::NavigationState::HistoryClient::didPerformClientRedirect(WebKit::NavigationState::HistoryClient *this, WebKit::WebPageProxy *a2, const WTF::String *a3, const WTF::String *a4)
{
  v4 = *(this + 1);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      WebKit::NavigationState::ref(*(v4 + 8));
      if ((*(v5 + 56) & 2) != 0)
      {
        WeakRetained = objc_loadWeakRetained((v5 + 48));
        if (WeakRetained)
        {
          v9 = objc_loadWeakRetained((v5 + 16));
          v10 = [MEMORY[0x1E695DFF8] _web_URLWithWTFString:a3];
          [WeakRetained _webView:v9 didPerformClientRedirectFromURL:v10 toURL:{objc_msgSend(MEMORY[0x1E695DFF8], "_web_URLWithWTFString:", a4)}];
          if (v9)
          {
          }
        }
      }

      WebKit::NavigationState::deref(v5);
    }
  }
}

void WebKit::NavigationState::HistoryClient::didPerformServerRedirect(WebKit::NavigationState::HistoryClient *this, WebKit::WebPageProxy *a2, const WTF::String *a3, const WTF::String *a4)
{
  v4 = *(this + 1);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      WebKit::NavigationState::ref(*(v4 + 8));
      if ((*(v5 + 56) & 4) != 0)
      {
        WeakRetained = objc_loadWeakRetained((v5 + 48));
        if (WeakRetained)
        {
          v9 = objc_loadWeakRetained((v5 + 16));
          v10 = [MEMORY[0x1E695DFF8] _web_URLWithWTFString:a3];
          [WeakRetained _webView:v9 didPerformServerRedirectFromURL:v10 toURL:{objc_msgSend(MEMORY[0x1E695DFF8], "_web_URLWithWTFString:", a4)}];
          if (v9)
          {
          }
        }
      }

      WebKit::NavigationState::deref(v5);
    }
  }
}

void WebKit::NavigationState::HistoryClient::didUpdateHistoryTitle(WebKit::NavigationState::HistoryClient *this, WebKit::WebPageProxy *a2, atomic_uint **a3, atomic_uint **a4)
{
  v4 = *(this + 1);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      WebKit::NavigationState::ref(*(v4 + 8));
      if ((*(v5 + 56) & 8) != 0)
      {
        WeakRetained = objc_loadWeakRetained((v5 + 48));
        if (WeakRetained)
        {
          v9 = objc_loadWeakRetained((v5 + 16));
          v10 = *a3;
          if (v10)
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

          v13 = v24;
          v14 = MEMORY[0x1E695DFF8];
          v15 = *a4;
          if (v15)
          {
            atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
            MEMORY[0x19EB00B70](&v22, v15);
            if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v15, v16);
            }
          }

          else
          {
            v22 = &stru_1F1147748;
            v17 = &stru_1F1147748;
          }

          MEMORY[0x19EB02040](&v23, v22);
          [WeakRetained _webView:v9 didUpdateHistoryTitle:v13 forURL:{objc_msgSend(v14, "_web_URLWithWTFString:", &v23)}];
          v19 = v23;
          v23 = 0;
          if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v19, v18);
          }

          v20 = v22;
          v22 = 0;
          if (v20)
          {
          }

          v21 = v24;
          v24 = 0;
          if (v21)
          {
          }

          if (v9)
          {
          }
        }
      }

      WebKit::NavigationState::deref(v5);
    }
  }
}

void sub_19DC40170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, void *a12)
{
  if (a12)
  {
  }

  if (v14)
  {
  }

  WebKit::NavigationState::deref(v12);
  _Unwind_Resume(a1);
}

void WebKit::NavigationState::willChangeIsLoading(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  [WeakRetained willChangeValueForKey:@"loading"];
  if (WeakRetained)
  {
  }
}

void sub_19DC402A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::NavigationState::releaseNetworkActivity(uint64_t result, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(result + 64);
  if (v2)
  {
    v3 = result;
    if (a2)
    {
      if (a2 != 1)
      {
        *(result + 64) = 0;
LABEL_12:
        WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v2 + 8), a2);
        return WTF::RunLoop::TimerBase::stop((v3 + 72));
      }

      v4 = qword_1ED641030;
      if (!os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
      {
LABEL_9:
        v2 = *(v3 + 64);
        *(v3 + 64) = 0;
        if (!v2)
        {
          return WTF::RunLoop::TimerBase::stop((v3 + 72));
        }

        goto LABEL_12;
      }

      v6 = 134217984;
      v7 = v3;
      v5 = "%p NavigationState is releasing background process assertion because the screen was locked";
    }

    else
    {
      v4 = qword_1ED641030;
      if (!os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }

      v6 = 134217984;
      v7 = v3;
      v5 = "%p NavigationState is releasing background process assertion because a page load completed";
    }

    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, v5, &v6, 0xCu);
    goto LABEL_9;
  }

  return result;
}

void WebKit::NavigationState::didChangeIsLoading(id *this)
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(this + 2);
  v3 = WeakRetained;
  if (!WeakRetained || (v4 = *(WeakRetained[52] + 32), !*(v4 + 1160)) && *(v4 + 1144) > 1u)
  {
    if (this[8])
    {
      v14 = qword_1ED641030;
      if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 134217984;
        v16 = this;
        _os_log_impl(&dword_19D52D000, v14, OS_LOG_TYPE_DEFAULT, "%p - NavigationState will release its process network assertion soon because the page load completed", &v15, 0xCu);
      }

      WTF::RunLoop::TimerBase::start();
    }

    goto LABEL_20;
  }

  if (([objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")] & 1) == 0)
  {
    if (WTF::RunLoop::TimerBase::isActive((this + 9)))
    {
      v5 = qword_1ED641030;
      if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 134217984;
        v16 = this;
        _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_DEFAULT, "%p - NavigationState keeps its process network assertion because a new page load started", &v15, 0xCu);
      }

      WTF::RunLoop::TimerBase::stop((this + 9));
    }

    if (!this[8])
    {
      v6 = qword_1ED641030;
      if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 134217984;
        v16 = this;
        _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "%p - NavigationState is taking a process network assertion because a page load started", &v15, 0xCu);
      }

      v8 = *(v3[52] + 352);
      v9 = *(*(v8 + 160) + 8);
      if (!v9)
      {
        __break(0xC471u);
        return;
      }

      atomic_fetch_add((v9 + 16), 1u);
      v10 = WebKit::ProcessThrottlerActivity::operator new(0x30, v7);
      v11 = WebKit::ProcessThrottlerActivity::ProcessThrottlerActivity(v10, v8 + 144, "Page Load", 10, 0, 0);
      v13 = this[8];
      this[8] = v11;
      if (v13)
      {
        WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref(v13 + 2, v12);
      }

      WebKit::ProcessThrottler::deref((v8 + 144));
    }

LABEL_20:
    [v3 didChangeValueForKey:@"loading"];
    if (!v3)
    {
      return;
    }
  }
}

void sub_19DC40628(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::NavigationState::willChangeTitle(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  [WeakRetained willChangeValueForKey:@"title"];
  if (WeakRetained)
  {
  }
}

void sub_19DC406A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::NavigationState::didChangeTitle(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  [WeakRetained didChangeValueForKey:@"title"];
  if (WeakRetained)
  {
  }
}

void sub_19DC40728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::NavigationState::willChangeActiveURL(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  [WeakRetained willChangeValueForKey:@"URL"];
  if (WeakRetained)
  {
  }
}

void sub_19DC407A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::NavigationState::didChangeActiveURL(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  [WeakRetained didChangeValueForKey:@"URL"];
  if (WeakRetained)
  {
  }
}

void sub_19DC40828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::NavigationState::willChangeHasOnlySecureContent(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  [WeakRetained willChangeValueForKey:@"hasOnlySecureContent"];
  if (WeakRetained)
  {
  }
}

void sub_19DC408A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::NavigationState::didChangeHasOnlySecureContent(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  [WeakRetained didChangeValueForKey:@"hasOnlySecureContent"];
  if (WeakRetained)
  {
  }
}

void sub_19DC40928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::NavigationState::willChangeNegotiatedLegacyTLS(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  [WeakRetained willChangeValueForKey:@"_negotiatedLegacyTLS"];
  if (WeakRetained)
  {
  }
}

void sub_19DC409A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::NavigationState::didChangeNegotiatedLegacyTLS(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  [WeakRetained didChangeValueForKey:@"_negotiatedLegacyTLS"];
  if (WeakRetained)
  {
  }
}

void sub_19DC40A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::NavigationState::willChangeWasPrivateRelayed(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  [WeakRetained willChangeValueForKey:@"_wasPrivateRelayed"];
  if (WeakRetained)
  {
  }
}

void sub_19DC40AA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::NavigationState::didChangeWasPrivateRelayed(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  [WeakRetained didChangeValueForKey:@"_wasPrivateRelayed"];
  if (WeakRetained)
  {
  }
}

void sub_19DC40B28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::NavigationState::willChangeEstimatedProgress(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  [WeakRetained willChangeValueForKey:@"estimatedProgress"];
  if (WeakRetained)
  {
  }
}

void sub_19DC40BA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::NavigationState::didChangeEstimatedProgress(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  [WeakRetained didChangeValueForKey:@"estimatedProgress"];
  if (WeakRetained)
  {
  }
}

void sub_19DC40C28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::NavigationState::willChangeCanGoBack(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  [WeakRetained willChangeValueForKey:@"canGoBack"];
  if (WeakRetained)
  {
  }
}

void sub_19DC40CA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::NavigationState::didChangeCanGoBack(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  [WeakRetained didChangeValueForKey:@"canGoBack"];
  if (WeakRetained)
  {
  }
}

void sub_19DC40D28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::NavigationState::willChangeCanGoForward(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  [WeakRetained willChangeValueForKey:@"canGoForward"];
  if (WeakRetained)
  {
  }
}

void sub_19DC40DA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::NavigationState::didChangeCanGoForward(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  [WeakRetained didChangeValueForKey:@"canGoForward"];
  if (WeakRetained)
  {
  }
}

void sub_19DC40E28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::NavigationState::willChangeNetworkRequestsInProgress(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  [WeakRetained willChangeValueForKey:@"_networkRequestsInProgress"];
  if (WeakRetained)
  {
  }
}

void sub_19DC40EA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::NavigationState::didChangeNetworkRequestsInProgress(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  [WeakRetained didChangeValueForKey:@"_networkRequestsInProgress"];
  if (WeakRetained)
  {
  }
}

void sub_19DC40F28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::NavigationState::willChangeCertificateInfo(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  [WeakRetained willChangeValueForKey:@"serverTrust"];
  [WeakRetained willChangeValueForKey:@"certificateChain"];
  if (WeakRetained)
  {
  }
}

void sub_19DC40FBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::NavigationState::didChangeCertificateInfo(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  [WeakRetained didChangeValueForKey:@"certificateChain"];
  [WeakRetained didChangeValueForKey:@"serverTrust"];
  if (WeakRetained)
  {
  }
}

void sub_19DC41050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::NavigationState::willChangeWebProcessIsResponsive(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  [WeakRetained willChangeValueForKey:@"_webProcessIsResponsive"];
  if (WeakRetained)
  {
  }
}

void sub_19DC410D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::NavigationState::didChangeWebProcessIsResponsive(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  [WeakRetained didChangeValueForKey:@"_webProcessIsResponsive"];
  if (WeakRetained)
  {
  }
}

void sub_19DC41150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::NavigationState::didSwapWebProcesses(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  if (this[8])
  {
    if (!WeakRetained)
    {
      return;
    }

    v10 = WeakRetained;
    v4 = *(WeakRetained[52] + 352);
    v5 = *(*(v4 + 160) + 8);
    if (!v5)
    {
      __break(0xC471u);
      return;
    }

    atomic_fetch_add((v5 + 16), 1u);
    v6 = WebKit::ProcessThrottlerActivity::operator new(0x30, v3);
    v7 = WebKit::ProcessThrottlerActivity::ProcessThrottlerActivity(v6, v4 + 144, "Page Load", 10, 0, 0);
    v9 = this[8];
    this[8] = v7;
    if (v9)
    {
      WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref(v9 + 2, v8);
    }

    WebKit::ProcessThrottler::deref((v4 + 144));
    WeakRetained = v10;
  }

  else if (!WeakRetained)
  {
    return;
  }
}

void WebKit::NavigationState::didGeneratePageLoadTiming(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 24));
    if (WeakRetained)
    {
      v4 = [[_WKPageLoadTiming alloc] _initWithTiming:a2];
      v5 = objc_loadWeakRetained((a1 + 16));
      [WeakRetained _webView:v5 didGeneratePageLoadTiming:v4];
      if (v5)
      {
      }

      if (v4)
      {
      }
    }
  }
}

void sub_19DC4130C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;
  if (v12)
  {
  }

  if (v10)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t WebKit::PageClientImplCocoa::obscuredContentInsetsDidChange(id *this)
{
  Weak = objc_loadWeak(this + 2);
  [objc_loadWeak(this + 2) minimumViewportInset];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [objc_loadWeak(this + 2) maximumViewportInset];

  return [Weak _recalculateViewportSizesWithMinimumViewportInset:0 maximumViewportInset:v4 throwOnInvalidInput:{v6, v8, v10, v11, v12, v13, v14}];
}

uint64_t WebKit::PageClientImplCocoa::themeColorWillChange(id *this)
{
  Weak = objc_loadWeak(this + 2);

  return [Weak willChangeValueForKey:@"themeColor"];
}

uint64_t WebKit::PageClientImplCocoa::themeColorDidChange(id *this)
{
  Weak = objc_loadWeak(this + 2);

  return [Weak didChangeValueForKey:@"themeColor"];
}

uint64_t WebKit::PageClientImplCocoa::underPageBackgroundColorWillChange(id *this)
{
  Weak = objc_loadWeak(this + 2);

  return [Weak willChangeValueForKey:@"underPageBackgroundColor"];
}

void WebKit::PageClientImplCocoa::underPageBackgroundColorDidChange(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  [WeakRetained didChangeValueForKey:@"underPageBackgroundColor"];
  [WeakRetained _updateTopScrollPocketCaptureColor];
  if (WeakRetained)
  {
  }
}

void sub_19DC414F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::PageClientImplCocoa::sampledPageTopColorWillChange(id *this)
{
  Weak = objc_loadWeak(this + 2);

  return [Weak willChangeValueForKey:@"_sampledPageTopColor"];
}

uint64_t WebKit::PageClientImplCocoa::sampledPageTopColorDidChange(id *this)
{
  Weak = objc_loadWeak(this + 2);

  return [Weak didChangeValueForKey:@"_sampledPageTopColor"];
}

uint64_t WebKit::PageClientImplCocoa::isPlayingAudioWillChange(id *this)
{
  Weak = objc_loadWeak(this + 2);
  v2 = NSStringFromSelector(sel__isPlayingAudio);

  return [Weak willChangeValueForKey:v2];
}

uint64_t WebKit::PageClientImplCocoa::isPlayingAudioDidChange(id *this)
{
  Weak = objc_loadWeak(this + 2);
  v2 = NSStringFromSelector(sel__isPlayingAudio);

  return [Weak didChangeValueForKey:v2];
}

uint64_t WebKit::PageClientImplCocoa::scrollingUpdatesDisabledForTesting(id *this)
{
  Weak = objc_loadWeak(this + 2);

  return [Weak _scrollingUpdatesDisabledForTesting];
}

void WebKit::PageClientImplCocoa::didInsertAttachment(id *this, API::Attachment *a2, atomic_uint **a3)
{
  Weak = objc_loadWeak(this + 2);
  v6 = *a3;
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v10, v6);
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v7);
    }
  }

  else
  {
    v10 = &stru_1F1147748;
    v8 = &stru_1F1147748;
  }

  [Weak _didInsertAttachment:a2 withSource:v10];
  v9 = v10;
  v10 = 0;
  if (v9)
  {
  }
}

void sub_19DC416E8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::PageClientImplCocoa::didRemoveAttachment(id *this, API::Attachment *a2)
{
  Weak = objc_loadWeak(this + 2);

  return [Weak _didRemoveAttachment:a2];
}

uint64_t WebKit::PageClientImplCocoa::didInvalidateDataForAttachment(id *this, API::Attachment *a2)
{
  Weak = objc_loadWeak(this + 2);

  return [Weak _didInvalidateDataForAttachment:a2];
}

id WebKit::PageClientImplCocoa::allocFileWrapperInstance(id *this)
{
  v1 = [objc_msgSend(objc_loadWeak(this + 2) "configuration")];
  if (v1)
  {
    v2 = v1;
LABEL_4:
    v3 = v2;
    v4 = 0;
    goto LABEL_5;
  }

  v2 = objc_opt_class();
  if (v2)
  {
    goto LABEL_4;
  }

  v4 = 1;
LABEL_5:
  v5 = [v2 alloc];
  if ((v4 & 1) == 0)
  {
  }

  return v5;
}

void sub_19DC41818(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::PageClientImplCocoa::serializableFileWrapperClasses(id *this)
{
  v2 = objc_opt_class();
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  v5 = [objc_msgSend(objc_loadWeak(this + 2) "configuration")];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    if (v6 != v3)
    {
      v8 = [MEMORY[0x1E695DFD8] setWithObjects:{v6, v3, 0}];
LABEL_6:

      goto LABEL_8;
    }
  }

  v8 = [MEMORY[0x1E695DFD8] setWithObjects:{v3, 0}];
  if (v6)
  {
    goto LABEL_6;
  }

LABEL_8:
  if (v3)
  {
  }

  return v8;
}

void sub_19DC418E4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
  }

  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::PageClientImplCocoa::storeAppHighlight(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((a1 + 16));

  return [Weak _storeAppHighlight:a2];
}

uint64_t WebKit::PageClientImplCocoa::gpuProcessDidFinishLaunching(id *this)
{
  [objc_loadWeak(this + 2) willChangeValueForKey:@"_gpuProcessIdentifier"];
  Weak = objc_loadWeak(this + 2);

  return [Weak didChangeValueForKey:@"_gpuProcessIdentifier"];
}

uint64_t WebKit::PageClientImplCocoa::gpuProcessDidExit(id *this)
{
  [objc_loadWeak(this + 2) willChangeValueForKey:@"_gpuProcessIdentifier"];
  Weak = objc_loadWeak(this + 2);

  return [Weak didChangeValueForKey:@"_gpuProcessIdentifier"];
}

unsigned int *WebKit::PageClientImplCocoa::dictationAlternatives@<X0>(unsigned int *a1@<X8>)
{
  v4 = [WebCore::AlternativeTextUIController::alternativesForContext() alternativeStrings];
  v3 = &v4;
  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WTF::String>(NSArray *)::{lambda(unsigned long)#1}>(a1, [v4 count], &v3, 0);
}

uint64_t WebKit::PageClientImplCocoa::microphoneCaptureWillChange(id *this)
{
  Weak = objc_loadWeak(this + 2);

  return [Weak willChangeValueForKey:@"microphoneCaptureState"];
}

uint64_t WebKit::PageClientImplCocoa::cameraCaptureWillChange(id *this)
{
  Weak = objc_loadWeak(this + 2);

  return [Weak willChangeValueForKey:@"cameraCaptureState"];
}

uint64_t WebKit::PageClientImplCocoa::displayCaptureWillChange(id *this)
{
  Weak = objc_loadWeak(this + 2);

  return [Weak willChangeValueForKey:@"_displayCaptureState"];
}

uint64_t WebKit::PageClientImplCocoa::displayCaptureSurfacesWillChange(id *this)
{
  Weak = objc_loadWeak(this + 2);

  return [Weak willChangeValueForKey:@"_displayCaptureSurfaces"];
}

uint64_t WebKit::PageClientImplCocoa::systemAudioCaptureWillChange(id *this)
{
  Weak = objc_loadWeak(this + 2);

  return [Weak willChangeValueForKey:@"_systemAudioCaptureState"];
}

uint64_t WebKit::PageClientImplCocoa::microphoneCaptureChanged(id *this)
{
  Weak = objc_loadWeak(this + 2);

  return [Weak didChangeValueForKey:@"microphoneCaptureState"];
}

uint64_t WebKit::PageClientImplCocoa::cameraCaptureChanged(id *this)
{
  Weak = objc_loadWeak(this + 2);

  return [Weak didChangeValueForKey:@"cameraCaptureState"];
}

uint64_t WebKit::PageClientImplCocoa::displayCaptureChanged(id *this)
{
  Weak = objc_loadWeak(this + 2);

  return [Weak didChangeValueForKey:@"_displayCaptureState"];
}

uint64_t WebKit::PageClientImplCocoa::displayCaptureSurfacesChanged(id *this)
{
  Weak = objc_loadWeak(this + 2);

  return [Weak didChangeValueForKey:@"_displayCaptureSurfaces"];
}

uint64_t WebKit::PageClientImplCocoa::systemAudioCaptureChanged(id *this)
{
  Weak = objc_loadWeak(this + 2);

  return [Weak didChangeValueForKey:@"_systemAudioCaptureState"];
}

void WebKit::PageClientImplCocoa::proofreadingSessionShowDetailsForSuggestionWithIDRelativeToRect(uint64_t a1, WTF::UUID *a2, uint64_t a3, uint64_t a4)
{
  v8[1] = a3;
  v8[2] = a4;
  Weak = objc_loadWeak((a1 + 16));
  WTF::UUID::createNSUUID(v8, a2);
  v6 = v8[0];
  WebCore::IntRect::operator CGRect();
  [Weak _proofreadingSessionShowDetailsForSuggestionWithUUID:v6 relativeToRect:?];
  v7 = v8[0];
  v8[0] = 0;
  if (v7)
  {
  }
}

void sub_19DC41D04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImplCocoa::proofreadingSessionUpdateStateForSuggestionWithID(uint64_t a1, uint64_t a2, WTF::UUID *a3)
{
  Weak = objc_loadWeak((a1 + 16));
  WTF::UUID::createNSUUID(&v7, a3);
  [Weak _proofreadingSessionUpdateState:a2 forSuggestionWithUUID:v7];
  v6 = v7;
  v7 = 0;
  if (v6)
  {
  }
}

void sub_19DC41D8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::PageClientImplCocoa::writingToolsActiveWillChange(id *this)
{
  Weak = objc_loadWeak(this + 2);

  return [Weak willChangeValueForKey:@"writingToolsActive"];
}

uint64_t WebKit::PageClientImplCocoa::writingToolsActiveDidChange(id *this)
{
  Weak = objc_loadWeak(this + 2);

  return [Weak didChangeValueForKey:@"writingToolsActive"];
}

uint64_t WebKit::PageClientImplCocoa::didEndPartialIntelligenceTextAnimation(id *this)
{
  Weak = objc_loadWeak(this + 2);

  return [Weak _didEndPartialIntelligenceTextAnimation];
}

uint64_t WebKit::PageClientImplCocoa::writingToolsTextReplacementsFinished(id *this)
{
  Weak = objc_loadWeak(this + 2);

  return [Weak _writingToolsTextReplacementsFinished];
}

void WebKit::PageClientImplCocoa::addTextAnimationForAnimationID(uint64_t a1, WTF::UUID *a2, uint64_t a3)
{
  Weak = objc_loadWeak((a1 + 16));
  WTF::UUID::createNSUUID(&v7, a2);
  [Weak _addTextAnimationForAnimationID:v7 withData:a3];
  v6 = v7;
  v7 = 0;
  if (v6)
  {
  }
}

void sub_19DC41ED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImplCocoa::removeTextAnimationForAnimationID(id *this, const WTF::UUID *a2)
{
  Weak = objc_loadWeak(this + 2);
  WTF::UUID::createNSUUID(&v5, a2);
  [Weak _removeTextAnimationForAnimationID:v5];
  v4 = v5;
  v5 = 0;
  if (v4)
  {
  }
}

void sub_19DC41F4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageClientImplCocoa::didChangeScreenTimeWebpageControllerURL(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  if (!PAL::ScreenTimeLibrary(1))
  {
    goto LABEL_19;
  }

  v1 = WeakRetained;
  if (WeakRetained && ([WeakRetained _page], v1 = WeakRetained, (v2 = v10) != 0))
  {
    CFRetain(*(v10 + 8));
    v4 = *(v10 + 368);
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::screenTimeEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::screenTimeEnabledKey(void)::key = WebKit::WebPreferencesKey::screenTimeEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if ((WebKit::WebPreferencesStore::getBoolValueForKey((v4 + 40), &WebKit::WebPreferencesKey::screenTimeEnabledKey(void)::key, v3) & 1) == 0)
    {
      [WeakRetained _uninstallScreenTimeWebpageController];
LABEL_18:
      CFRelease(*(v2 + 8));
      goto LABEL_19;
    }

    v5 = 0;
    v1 = WeakRetained;
  }

  else
  {
    v2 = 0;
    v5 = 1;
  }

  if ([v1 window])
  {
    [WeakRetained _installScreenTimeWebpageControllerIfNeeded];
  }

  v6 = [WeakRetained _screenTimeWebpageController];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  [v7 setURL:{objc_msgSend(WeakRetained, "_mainFrameURL")}];
  if (v7)
  {
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (WeakRetained)
  {
  }
}

void sub_19DC420AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9)
{
  CFRelease(*(v9 + 8));
  if (a9)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::PageClientImplCocoa::setURLIsPictureInPictureForScreenTime(id *this, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  v4 = [WeakRetained _screenTimeWebpageController];
  v6 = v4;
  if (v4)
  {
    v5 = v4;
    v4 = v6;
  }

  if (WeakRetained)
  {

    v4 = v6;
  }

  if (v4)
  {
    [v4 setURLIsPictureInPicture:a2];
  }
}

void WebKit::PageClientImplCocoa::setURLIsPlayingVideoForScreenTime(id *this, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  v4 = [WeakRetained _screenTimeWebpageController];
  v6 = v4;
  if (v4)
  {
    v5 = v4;
    v4 = v6;
  }

  if (WeakRetained)
  {

    v4 = v6;
  }

  if (v4)
  {
    [v4 setURLIsPlayingVideo:a2];
  }
}

uint64_t WebKit::PageClientImplCocoa::viewIsBecomingVisible(id *this)
{
  Weak = objc_loadWeak(this + 2);

  return [Weak _updateScreenTimeBasedOnWindowVisibility];
}

uint64_t WebKit::PageClientImplCocoa::viewIsBecomingInvisible(id *this)
{
  Weak = objc_loadWeak(this + 2);

  return [Weak _updateScreenTimeBasedOnWindowVisibility];
}

uint64_t WebKit::PageClientImplCocoa::setGamepadsRecentlyAccessed(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((a1 + 16));

  return [Weak _setGamepadsRecentlyAccessed:a2];
}

uint64_t WebKit::PageClientImplCocoa::hasActiveNowPlayingSessionChanged(id *this, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  result = [objc_loadWeak(this + 2) _hasActiveNowPlayingSession];
  if (result != a2)
  {
    v5 = qword_1ED641490;
    if (os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained(this + 2);
      v7 = 134218240;
      v8 = WeakRetained;
      v9 = 1024;
      v10 = a2;
      _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_DEFAULT, "%p PageClientImplCocoa::hasActiveNowPlayingSessionChanged %d", &v7, 0x12u);
      if (WeakRetained)
      {
      }
    }

    [objc_loadWeak(this + 2) willChangeValueForKey:@"_hasActiveNowPlayingSession"];
    [objc_loadWeak(this + 2) _setHasActiveNowPlayingSession:a2];
    return [objc_loadWeak(this + 2) didChangeValueForKey:@"_hasActiveNowPlayingSession"];
  }

  return result;
}

uint64_t WebKit::PageClientImplCocoa::videoControlsManagerDidChange(id *this)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED641490;
  if (os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(this + 2);
    v5 = 134218240;
    v6 = WeakRetained;
    v7 = 1024;
    v8 = [objc_loadWeak(this + 2) _canEnterFullscreen];
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p PageClientImplCocoa::videoControlsManagerDidChange %d", &v5, 0x12u);
    if (WeakRetained)
    {
    }
  }

  [objc_loadWeak(this + 2) willChangeValueForKey:@"_canEnterFullscreen"];
  return [objc_loadWeak(this + 2) didChangeValueForKey:@"_canEnterFullscreen"];
}

void sub_19DC424FC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::PageClientImplCocoa::platformWindow(id *this)
{
  Weak = objc_loadWeak(this + 2);

  return [Weak window];
}

uint64_t WebKit::PageClientImplCocoa::processDidUpdateThrottleState(id *this)
{
  [objc_loadWeak(this + 2) willChangeValueForKey:@"_webProcessState"];
  Weak = objc_loadWeak(this + 2);

  return [Weak didChangeValueForKey:@"_webProcessState"];
}

uint64_t WebKit::PageClientImplCocoa::setFullScreenClientForTesting(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  result = *(a1 + 32);
  *(a1 + 32) = v3;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void WebKit::PageClientImplCocoa::didCommitLayerTree(id *this, const WebKit::RemoteLayerTreeTransaction *a2)
{
  if (*(a2 + 272) == 1)
  {
    WeakRetained = objc_loadWeakRetained(this + 2);
    if ((*(a2 + 272) & 1) == 0)
    {
      __break(1u);
      return;
    }

    v5 = WeakRetained;
    [WeakRetained _updateFixedContainerEdges:a2 + 208];
    if (v5)
    {
    }
  }

  v6 = objc_loadWeakRetained(this + 2);
  v14 = *(a2 + 22);
  WebCore::IntPoint::operator CGPoint();
  v8 = v7;
  v10 = v9;
  v13 = *(a2 + 17);
  WebCore::IntSize::operator CGSize();
  [v6 _updateScrollGeometryWithContentOffset:v8 contentSize:{v10, v11, v12, v13, v14}];
  if (v6)
  {
  }
}

void sub_19DC4269C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::convertToPlatformContext(void *a1@<X0>, void *a2@<X8>)
{
  v4 = objc_alloc(MEMORY[0x1E69E3150]);
  WebCore::AttributedString::nsAttributedString(&v6, (a1 + 2));
  *a2 = [v4 initWithAttributedText:v6 range:{a1[7], a1[8]}];
  v5 = v6;
  v6 = 0;
  if (v5)
  {
  }
}

void sub_19DC42738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::convertToWebContext(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [a1 uuid];
  WTF::UUID::fromNSUUID(&v13, v4, v5);
  if (v14)
  {
    v10 = v13;
    v6 = [a1 attributedText];
    v9 = v6;
    if (v6)
    {
      v7 = v6;
    }

    WebCore::AttributedString::fromNSAttributedString();
    *&v12 = [a1 range];
    *(&v12 + 1) = v8;
    *a2 = v10;
    WebCore::AttributedString::AttributedString();
    *(a2 + 56) = v12;
    *(a2 + 80) = 1;
    MEMORY[0x19EB065D0](&v11);
    if (v9)
    {
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 80) = 0;
  }
}

void sub_19DC4284C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  MEMORY[0x19EB065D0](v10 + 16);
  if (a10)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t *WebKit::convertToWebSession@<X0>(WebKit *this@<X0>, uint64_t a2@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = [(WebKit *)this uuid];
  result = WTF::UUID::fromNSUUID(v14, v5, v6);
  if (v15)
  {
    v9 = v14[0];
    v8 = v14[1];
    v10 = [(WebKit *)this type]!= 1;
    result = [(WebKit *)this compositionSessionType];
    if (result == 10)
    {
      v11 = 1;
    }

    else
    {
      v11 = 3;
    }

    if (result == 11)
    {
      v12 = 2;
    }

    else
    {
      v12 = v11;
    }

    *a2 = v9;
    *(a2 + 8) = v8;
    if (!result)
    {
      v12 = 0;
    }

    *(a2 + 16) = v10;
    *(a2 + 17) = v12;
    v13 = 1;
  }

  else
  {
    v13 = 0;
    *a2 = 0;
  }

  *(a2 + 32) = v13;
  return result;
}

uint64_t *WebKit::convertToWebTextSuggestion@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = [a1 uuid];
  result = WTF::UUID::fromNSUUID(&v12, v4, v5);
  if (v13)
  {
    v9 = v12;
    *&v10 = [a1 originalRange];
    *(&v10 + 1) = v7;
    MEMORY[0x19EB02040](&v11, [a1 replacement]);
    result = [a1 state];
    v8 = 0x302030100uLL >> (8 * result);
    if (result >= 5)
    {
      LOBYTE(v8) = 3;
    }

    *a2 = v9;
    *(a2 + 16) = v10;
    *(a2 + 32) = v11;
    *(a2 + 40) = v8;
    *(a2 + 48) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }

  return result;
}

void sub_19DC42A54(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13)
{
  if (a13)
  {
    if (atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a13, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PlaybackSessionModelContext::~PlaybackSessionModelContext(WebKit::PlaybackSessionModelContext *this, WTF::StringImpl *a2)
{
  if (*(this + 328) == 1)
  {
    v3 = *(this + 40);
    *(this + 40) = 0;
    if (v3)
    {
      if (*v3 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v3;
      }
    }
  }

  v4 = *(this + 28);
  *(this + 28) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  WTF::Vector<WebCore::TextList,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 192, a2);
  WTF::Vector<WebCore::TextList,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 168, v5);
  v7 = *(this + 16);
  if (v7)
  {
    *(this + 16) = 0;
    *(this + 34) = 0;
    WTF::fastFree(v7, v6);
  }

  v8 = *(this + 6);
  if (v8)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v8, v6);
  }

  v9 = *(this + 3);
  *(this + 3) = 0;
  if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    WTF::fastFree(v9, v6);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v6);
  if (*(this + 4) != 1)
  {
    __break(0xC471u);
  }
}

{
  WebKit::PlaybackSessionModelContext::~PlaybackSessionModelContext(this, a2);
  if (*(v2 + 20))
  {
    *(v2 + 336) = 0;
    *(v2 + 304) = 0u;
    *(v2 + 320) = 0u;
    *(v2 + 272) = 0u;
    *(v2 + 288) = 0u;
    *(v2 + 240) = 0u;
    *(v2 + 256) = 0u;
    *(v2 + 208) = 0u;
    *(v2 + 224) = 0u;
    *(v2 + 176) = 0u;
    *(v2 + 192) = 0u;
    *(v2 + 144) = 0u;
    *(v2 + 160) = 0u;
    *(v2 + 112) = 0u;
    *(v2 + 128) = 0u;
    *(v2 + 80) = 0u;
    *(v2 + 96) = 0u;
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
}

unsigned int *WebKit::PlaybackSessionModelContext::addClient(WebKit::PlaybackSessionModelContext *this, unsigned int **a2)
{
  v4 = *(this + 15);
  v5 = *(this + 14) + 1;
  *(this + 14) = v5;
  if (v5 > v4)
  {
    v6 = *(this + 6);
    if (v6)
    {
      v7 = *(v6 - 4);
      if (!v7)
      {
LABEL_15:
        v13 = *(v6 - 4);
        if (6 * *(v6 - 12) < v13 && v13 > 8)
        {
          WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::shrinkToBestSize(this + 6);
          v6 = *(this + 6);
          *(this + 14) = 0;
          if (!v6)
          {
            goto LABEL_22;
          }
        }

        else
        {
          *(this + 14) = 0;
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
        *(this + 15) = v15;
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
      v6 = *(this + 6);
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
    *(this + 14) = 0;
    goto LABEL_22;
  }

LABEL_25:
  if (!a2[1])
  {
    v17 = WTF::fastCompactMalloc(0x10);
    *v17 = 1;
    *(v17 + 8) = a2;
    v18 = a2[1];
    a2[1] = v17;
    if (v18)
    {
      if (atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v18);
        WTF::fastFree(v18, v16);
      }
    }
  }

  v19 = a2[1];
  atomic_fetch_add(v19, 1u);
  v23 = v19;
  WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(this + 6, &v23, &v22);
  result = v23;
  v23 = 0;
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, v20);
    }
  }

  return result;
}

void sub_19DC42DE8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF *a12)
{
  if (a12)
  {
    if (atomic_fetch_add(a12, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a12);
      WTF::fastFree(a12, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

unsigned int *WebKit::PlaybackSessionModelContext::removeClient(unsigned int *this, WebCore::PlaybackSessionModelClient *a2)
{
  v3 = this;
  v4 = this[15];
  v5 = this[14] + 1;
  this[14] = v5;
  if (v5 > v4)
  {
    v6 = *(this + 6);
    if (v6)
    {
      v7 = *(v6 - 4);
      if (!v7)
      {
LABEL_15:
        v12 = *(v6 - 4);
        if (6 * *(v6 - 12) < v12 && v12 > 8)
        {
          this = WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::shrinkToBestSize(v3 + 6);
          v6 = *(v3 + 6);
          v3[14] = 0;
          if (!v6)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v3[14] = 0;
        }

        LODWORD(v6) = *(v6 - 12);
        if (v6 > 0x7FFFFFFE)
        {
          v14 = -2;
          goto LABEL_24;
        }

LABEL_22:
        v14 = 2 * v6;
LABEL_24:
        v3[15] = v14;
        goto LABEL_25;
      }

      v8 = 0;
      v9 = 8 * v7;
      v10 = v6 - 8;
      do
      {
        this = *(v10 + v9);
        if (this + 1 >= 2 && !*(this + 1))
        {
          *(v10 + v9) = 0;
          if (atomic_fetch_add(this, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, this);
            this = WTF::fastFree(this, a2);
          }

          *(v10 + v9) = -1;
          ++v8;
        }

        v9 -= 8;
      }

      while (v9);
      v6 = *(v3 + 6);
      if (v8)
      {
        v11 = *(v6 - 12) - v8;
        *(v6 - 16) += v8;
        *(v6 - 12) = v11;
        goto LABEL_15;
      }

      if (v6)
      {
        goto LABEL_15;
      }
    }

    LODWORD(v6) = 0;
    v3[14] = 0;
    goto LABEL_22;
  }

LABEL_25:
  v15 = *(a2 + 1);
  if (v15 && *(v15 + 8))
  {
    v18 = *(a2 + 1);
    this = WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::find<WTF::HashSetTranslator<WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,(WTF::ShouldValidateKey)1,WTF::DefaultWeakPtrImpl const*>(v3 + 6, &v18);
    v16 = *(v3 + 6);
    if (v16)
    {
      v17 = (v16 + 8 * *(v16 - 4));
      if (v17 == this)
      {
        return this;
      }
    }

    else
    {
      if (!this)
      {
        return this;
      }

      v17 = 0;
    }

    if (v17 != this)
    {
      return WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::remove(v3 + 6, this);
    }
  }

  return this;
}

void WebKit::PlaybackSessionModelContext::sendRemoteCommand(void *a1, char a2, uint64_t a3)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v5 = *(v4 + 16);
      *(v4 + 16) = v5 + 1;
      v6 = *(v4 + 32);
      if (v6)
      {
        v7 = *(v6 + 8);
        if (v7)
        {
          v11 = a1[4];
          v10 = a1[5];
          CFRetain(*(v7 - 8));
          v22[0] = v10;
          {
            WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
          }

          v12 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v22);
          if (v12)
          {
            v13 = v12;
            atomic_fetch_add(v12 + 4, 1u);
            v14 = WebKit::WebPageProxy::webPageIDInProcess((v7 - 16), v12);
            v16 = IPC::Encoder::operator new(0x238, v15);
            *v16 = 879;
            *(v16 + 2) = 0;
            *(v16 + 3) = 0;
            *(v16 + 1) = v14;
            *(v16 + 68) = 0;
            *(v16 + 70) = 0;
            *(v16 + 69) = 0;
            IPC::Encoder::encodeHeader(v16);
            v24 = v16;
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v16, v11);
            LOBYTE(v22[0]) = a2;
            IPC::Encoder::operator<<<unsigned char>(v16, v22);
            IPC::ArgumentCoder<std::optional<double>,void>::encode<IPC::Encoder,std::optional<double>>(v16, a3);
            IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(v16, (a3 + 16));
            LOBYTE(v22[0]) = 0;
            v23 = 0;
            WebKit::AuxiliaryProcessProxy::sendMessage(v13, &v24, 0, v22, 1);
            if (v23 == 1)
            {
              v18 = v22[0];
              v22[0] = 0;
              if (v18)
              {
                (*(*v18 + 8))(v18);
              }
            }

            v19 = v24;
            v24 = 0;
            if (v19)
            {
              IPC::Encoder::~Encoder(v19, v17);
              bmalloc::api::tzoneFree(v20, v21);
            }

            WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v13 + 16));
          }

          CFRelease(*(v7 - 8));
          v5 = *(v4 + 16) - 1;
        }
      }

      if (v5)
      {
        *(v4 + 16) = v5;
      }

      else
      {
        (*(*v4 + 24))(v4);
      }
    }
  }
}

void sub_19DC431C4(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v16, v17);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v13);
  CFRelease(*(v14 - 8));
  if (v12[4] == 1)
  {
    (*(*v12 + 24))(v12);
  }

  else
  {
    --v12[4];
  }

  _Unwind_Resume(a1);
}

void WebKit::PlaybackSessionModelContext::addNowPlayingMetadataObserver(uint64_t a1, atomic_uint *volatile *a2)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v4 = *(v3 + 16);
      *(v3 + 16) = v4 + 1;
      v5 = *(v3 + 32);
      if (v5)
      {
        v6 = *(v5 + 8);
        if (v6)
        {
          CFRetain(*(v6 - 8));
          WebKit::WebPageProxy::addNowPlayingMetadataObserver(v6 - 16, a2);
          CFRelease(*(v6 - 8));
          v4 = *(v3 + 16) - 1;
        }
      }

      if (v4)
      {
        *(v3 + 16) = v4;
      }

      else
      {
        v8 = *(*v3 + 24);

        v8(v3);
      }
    }
  }
}

void sub_19DC43350(_Unwind_Exception *exception_object)
{
  if (v1[4] == 1)
  {
    (*(*v1 + 24))(v1);
  }

  else
  {
    --v1[4];
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PlaybackSessionModelContext::removeNowPlayingMetadataObserver(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v4 = *(v3 + 16);
      *(v3 + 16) = v4 + 1;
      v5 = *(v3 + 32);
      if (v5)
      {
        v6 = *(v5 + 8);
        if (v6)
        {
          CFRetain(*(v6 - 8));
          WebKit::WebPageProxy::removeNowPlayingMetadataObserver(v6 - 16, a2);
          CFRelease(*(v6 - 8));
          v4 = *(v3 + 16) - 1;
        }
      }

      if (v4)
      {
        *(v3 + 16) = v4;
      }

      else
      {
        v8 = *(*v3 + 24);

        v8(v3);
      }
    }
  }
}

void sub_19DC4345C(_Unwind_Exception *exception_object)
{
  if (v1[4] == 1)
  {
    (*(*v1 + 24))(v1);
  }

  else
  {
    --v1[4];
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PlaybackSessionModelContext::setSoundStageSize(uint64_t a1, int a2)
{
  if (*(a1 + 280) != a2)
  {
    v2 = a2;
    *(a1 + 280) = a2;
    v3 = *(a1 + 24);
    if (v3)
    {
      v4 = *(v3 + 8);
      if (v4)
      {
        v5 = *(v4 + 16);
        *(v4 + 16) = v5 + 1;
        v6 = *(v4 + 32);
        if (v6)
        {
          v7 = *(v6 + 8);
          if (v7)
          {
            v9 = *(a1 + 32);
            v8 = *(a1 + 40);
            CFRetain(*(v7 - 8));
            v20[0] = v8;
            {
              WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
            }

            v10 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v20);
            if (v10)
            {
              v11 = v10;
              atomic_fetch_add(v10 + 4, 1u);
              v12 = WebKit::WebPageProxy::webPageIDInProcess((v7 - 16), v10);
              v14 = IPC::Encoder::operator new(0x238, v13);
              *v14 = 885;
              *(v14 + 2) = 0;
              *(v14 + 3) = 0;
              *(v14 + 1) = v12;
              *(v14 + 68) = 0;
              *(v14 + 70) = 0;
              *(v14 + 69) = 0;
              IPC::Encoder::encodeHeader(v14);
              v22 = v14;
              IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v14, v9);
              LOBYTE(v20[0]) = v2;
              IPC::Encoder::operator<<<unsigned char>(v14, v20);
              LOBYTE(v20[0]) = 0;
              v21 = 0;
              WebKit::AuxiliaryProcessProxy::sendMessage(v11, &v22, 0, v20, 1);
              if (v21 == 1)
              {
                v16 = v20[0];
                v20[0] = 0;
                if (v16)
                {
                  (*(*v16 + 8))(v16);
                }
              }

              v17 = v22;
              v22 = 0;
              if (v17)
              {
                IPC::Encoder::~Encoder(v17, v15);
                bmalloc::api::tzoneFree(v18, v19);
              }

              WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v11 + 16));
            }

            CFRelease(*(v7 - 8));
            v5 = *(v4 + 16) - 1;
          }
        }

        if (v5)
        {
          *(v4 + 16) = v5;
        }

        else
        {
          (*(*v4 + 24))(v4);
        }
      }
    }
  }
}

void sub_19DC43694(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v16, v17);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v13);
  CFRelease(*(v14 - 8));
  if (v12[4] == 1)
  {
    (*(*v12 + 24))(v12);
  }

  else
  {
    --v12[4];
  }

  _Unwind_Resume(a1);
}

void WebKit::PlaybackSessionModelContext::play(WebKit::PlaybackSessionModelContext *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    v3 = *(v1 + 8);
    if (v3)
    {
      v4 = *(v3 + 80);
      if (v4)
      {
        atomic_fetch_add(v4 + 2, 1u);
        v5 = *(this + 42);
        v23[0] = "PlaybackSessionModelContext";
        v23[1] = 28;
        v24 = "play";
        v25 = v5;
        if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v4, &WebKit2LogMedia, 0, v23))
        {
          WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogMedia, 0, v23);
        }

        if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v4 + 2);
          (*(*v4 + 8))(v4);
        }
      }
    }

    v6 = *(this + 3);
    if (v6)
    {
      v7 = *(v6 + 8);
      if (v7)
      {
        v8 = *(v7 + 16);
        *(v7 + 16) = v8 + 1;
        v9 = *(v7 + 32);
        if (v9)
        {
          v10 = *(v9 + 8);
          if (v10)
          {
            v12 = *(this + 4);
            v11 = *(this + 5);
            CFRetain(*(v10 - 8));
            v23[0] = v11;
            {
              WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
            }

            v13 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v23);
            if (v13)
            {
              v14 = v13;
              atomic_fetch_add(v13 + 4, 1u);
              v15 = WebKit::WebPageProxy::webPageIDInProcess((v10 - 16), v13);
              v17 = IPC::Encoder::operator new(0x238, v16);
              *v17 = 875;
              *(v17 + 2) = 0;
              *(v17 + 3) = 0;
              *(v17 + 1) = v15;
              *(v17 + 68) = 0;
              *(v17 + 70) = 0;
              *(v17 + 69) = 0;
              IPC::Encoder::encodeHeader(v17);
              v26 = v17;
              IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, v12);
              LOBYTE(v23[0]) = 0;
              LOBYTE(v24) = 0;
              WebKit::AuxiliaryProcessProxy::sendMessage(v14, &v26, 0, v23, 1);
              if (v24 == 1)
              {
                v19 = v23[0];
                v23[0] = 0;
                if (v19)
                {
                  (*(*v19 + 8))(v19);
                }
              }

              v20 = v26;
              v26 = 0;
              if (v20)
              {
                IPC::Encoder::~Encoder(v20, v18);
                bmalloc::api::tzoneFree(v21, v22);
              }

              WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v14 + 16));
            }

            CFRelease(*(v10 - 8));
            v8 = *(v7 + 16) - 1;
          }
        }

        if (v8)
        {
          *(v7 + 16) = v8;
        }

        else
        {
          (*(*v7 + 24))(v7);
        }
      }
    }
  }
}

void sub_19DC439E0(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, IPC::Encoder *a14)
{
  if (a12 == 1 && a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (a14)
  {
    IPC::Encoder::~Encoder(a14, a2);
    bmalloc::api::tzoneFree(v18, v19);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v15);
  CFRelease(*(v16 - 8));
  if (v14[4] == 1)
  {
    (*(*v14 + 24))(v14);
  }

  else
  {
    --v14[4];
  }

  _Unwind_Resume(a1);
}

uint64_t WebKit::PlaybackSessionModelContext::loggerPtr(WebKit::PlaybackSessionModelContext *this)
{
  v1 = *(this + 3);
  if (v1 && (v2 = *(v1 + 8)) != 0)
  {
    return *(v2 + 80);
  }

  else
  {
    return 0;
  }
}

void WebKit::PlaybackSessionModelContext::pause(WebKit::PlaybackSessionModelContext *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    v3 = *(v1 + 8);
    if (v3)
    {
      v4 = *(v3 + 80);
      if (v4)
      {
        atomic_fetch_add(v4 + 2, 1u);
        v5 = *(this + 42);
        v23[0] = "PlaybackSessionModelContext";
        v23[1] = 28;
        v24 = "pause";
        v25 = v5;
        if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v4, &WebKit2LogMedia, 0, v23))
        {
          WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogMedia, 0, v23);
        }

        if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v4 + 2);
          (*(*v4 + 8))(v4);
        }
      }
    }

    v6 = *(this + 3);
    if (v6)
    {
      v7 = *(v6 + 8);
      if (v7)
      {
        v8 = *(v7 + 16);
        *(v7 + 16) = v8 + 1;
        v9 = *(v7 + 32);
        if (v9)
        {
          v10 = *(v9 + 8);
          if (v10)
          {
            v12 = *(this + 4);
            v11 = *(this + 5);
            CFRetain(*(v10 - 8));
            v23[0] = v11;
            {
              WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
            }

            v13 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v23);
            if (v13)
            {
              v14 = v13;
              atomic_fetch_add(v13 + 4, 1u);
              v15 = WebKit::WebPageProxy::webPageIDInProcess((v10 - 16), v13);
              v17 = IPC::Encoder::operator new(0x238, v16);
              *v17 = 874;
              *(v17 + 2) = 0;
              *(v17 + 3) = 0;
              *(v17 + 1) = v15;
              *(v17 + 68) = 0;
              *(v17 + 70) = 0;
              *(v17 + 69) = 0;
              IPC::Encoder::encodeHeader(v17);
              v26 = v17;
              IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, v12);
              LOBYTE(v23[0]) = 0;
              LOBYTE(v24) = 0;
              WebKit::AuxiliaryProcessProxy::sendMessage(v14, &v26, 0, v23, 1);
              if (v24 == 1)
              {
                v19 = v23[0];
                v23[0] = 0;
                if (v19)
                {
                  (*(*v19 + 8))(v19);
                }
              }

              v20 = v26;
              v26 = 0;
              if (v20)
              {
                IPC::Encoder::~Encoder(v20, v18);
                bmalloc::api::tzoneFree(v21, v22);
              }

              WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v14 + 16));
            }

            CFRelease(*(v10 - 8));
            v8 = *(v7 + 16) - 1;
          }
        }

        if (v8)
        {
          *(v7 + 16) = v8;
        }

        else
        {
          (*(*v7 + 24))(v7);
        }
      }
    }
  }
}

void sub_19DC43DA0(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, IPC::Encoder *a14)
{
  if (a12 == 1 && a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (a14)
  {
    IPC::Encoder::~Encoder(a14, a2);
    bmalloc::api::tzoneFree(v18, v19);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v15);
  CFRelease(*(v16 - 8));
  if (v14[4] == 1)
  {
    (*(*v14 + 24))(v14);
  }

  else
  {
    --v14[4];
  }

  _Unwind_Resume(a1);
}

void WebKit::PlaybackSessionModelContext::togglePlayState(WebKit::PlaybackSessionModelContext *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    v3 = *(v1 + 8);
    if (v3)
    {
      v4 = *(v3 + 80);
      if (v4)
      {
        atomic_fetch_add(v4 + 2, 1u);
        v5 = *(this + 42);
        v23[0] = "PlaybackSessionModelContext";
        v23[1] = 28;
        v24 = "togglePlayState";
        v25 = v5;
        if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v4, &WebKit2LogMedia, 0, v23))
        {
          WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogMedia, 0, v23);
        }

        if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v4 + 2);
          (*(*v4 + 8))(v4);
        }
      }
    }

    v6 = *(this + 3);
    if (v6)
    {
      v7 = *(v6 + 8);
      if (v7)
      {
        v8 = *(v7 + 16);
        *(v7 + 16) = v8 + 1;
        v9 = *(v7 + 32);
        if (v9)
        {
          v10 = *(v9 + 8);
          if (v10)
          {
            v12 = *(this + 4);
            v11 = *(this + 5);
            CFRetain(*(v10 - 8));
            v23[0] = v11;
            {
              WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
            }

            v13 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v23);
            if (v13)
            {
              v14 = v13;
              atomic_fetch_add(v13 + 4, 1u);
              v15 = WebKit::WebPageProxy::webPageIDInProcess((v10 - 16), v13);
              v17 = IPC::Encoder::operator new(0x238, v16);
              *v17 = 889;
              *(v17 + 2) = 0;
              *(v17 + 3) = 0;
              *(v17 + 1) = v15;
              *(v17 + 68) = 0;
              *(v17 + 70) = 0;
              *(v17 + 69) = 0;
              IPC::Encoder::encodeHeader(v17);
              v26 = v17;
              IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, v12);
              LOBYTE(v23[0]) = 0;
              LOBYTE(v24) = 0;
              WebKit::AuxiliaryProcessProxy::sendMessage(v14, &v26, 0, v23, 1);
              if (v24 == 1)
              {
                v19 = v23[0];
                v23[0] = 0;
                if (v19)
                {
                  (*(*v19 + 8))(v19);
                }
              }

              v20 = v26;
              v26 = 0;
              if (v20)
              {
                IPC::Encoder::~Encoder(v20, v18);
                bmalloc::api::tzoneFree(v21, v22);
              }

              WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v14 + 16));
            }

            CFRelease(*(v10 - 8));
            v8 = *(v7 + 16) - 1;
          }
        }

        if (v8)
        {
          *(v7 + 16) = v8;
        }

        else
        {
          (*(*v7 + 24))(v7);
        }
      }
    }
  }
}

void sub_19DC44138(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, IPC::Encoder *a14)
{
  if (a12 == 1 && a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (a14)
  {
    IPC::Encoder::~Encoder(a14, a2);
    bmalloc::api::tzoneFree(v18, v19);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v15);
  CFRelease(*(v16 - 8));
  if (v14[4] == 1)
  {
    (*(*v14 + 24))(v14);
  }

  else
  {
    --v14[4];
  }

  _Unwind_Resume(a1);
}

void WebKit::PlaybackSessionModelContext::beginScrubbing(WebKit::PlaybackSessionModelContext *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v4 = *(v3 + 80);
      if (v4)
      {
        atomic_fetch_add(v4 + 2, 1u);
        v5 = *(this + 42);
        v23[0] = "PlaybackSessionModelContext";
        v23[1] = 28;
        v24 = "beginScrubbing";
        v25 = v5;
        if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v4, &WebKit2LogMedia, 0, v23))
        {
          WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogMedia, 0, v23);
        }

        if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v4 + 2);
          (*(*v4 + 8))(v4);
        }
      }
    }

    v6 = *(this + 3);
    if (v6)
    {
      v7 = *(v6 + 8);
      if (v7)
      {
        v8 = *(v7 + 16);
        *(v7 + 16) = v8 + 1;
        v9 = *(v7 + 32);
        if (v9)
        {
          v10 = *(v9 + 8);
          if (v10)
          {
            v12 = *(this + 4);
            v11 = *(this + 5);
            CFRetain(*(v10 - 8));
            v23[0] = v11;
            {
              WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
            }

            v13 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v23);
            if (v13)
            {
              v14 = v13;
              atomic_fetch_add(v13 + 4, 1u);
              v15 = WebKit::WebPageProxy::webPageIDInProcess((v10 - 16), v13);
              v17 = IPC::Encoder::operator new(0x238, v16);
              *v17 = 865;
              *(v17 + 2) = 0;
              *(v17 + 3) = 0;
              *(v17 + 1) = v15;
              *(v17 + 68) = 0;
              *(v17 + 70) = 0;
              *(v17 + 69) = 0;
              IPC::Encoder::encodeHeader(v17);
              v26 = v17;
              IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, v12);
              LOBYTE(v23[0]) = 0;
              LOBYTE(v24) = 0;
              WebKit::AuxiliaryProcessProxy::sendMessage(v14, &v26, 0, v23, 1);
              if (v24 == 1)
              {
                v19 = v23[0];
                v23[0] = 0;
                if (v19)
                {
                  (*(*v19 + 8))(v19);
                }
              }

              v20 = v26;
              v26 = 0;
              if (v20)
              {
                IPC::Encoder::~Encoder(v20, v18);
                bmalloc::api::tzoneFree(v21, v22);
              }

              WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v14 + 16));
            }

            CFRelease(*(v10 - 8));
            v8 = *(v7 + 16) - 1;
          }
        }

        if (v8)
        {
          *(v7 + 16) = v8;
        }

        else
        {
          (*(*v7 + 24))(v7);
        }
      }
    }
  }

  *(this + 105) = 1;
}

void sub_19DC444D8(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, IPC::Encoder *a14)
{
  if (a12 == 1 && a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (a14)
  {
    IPC::Encoder::~Encoder(a14, a2);
    bmalloc::api::tzoneFree(v18, v19);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v15);
  CFRelease(*(v16 - 8));
  if (v14[4] == 1)
  {
    (*(*v14 + 24))(v14);
  }

  else
  {
    --v14[4];
  }

  _Unwind_Resume(a1);
}

void WebKit::PlaybackSessionModelContext::endScrubbing(WebKit::PlaybackSessionModelContext *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v4 = *(v3 + 80);
      if (v4)
      {
        atomic_fetch_add(v4 + 2, 1u);
        v5 = *(this + 42);
        v23[0] = "PlaybackSessionModelContext";
        v23[1] = 28;
        v24 = "endScrubbing";
        v25 = v5;
        if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v4, &WebKit2LogMedia, 0, v23))
        {
          WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogMedia, 0, v23);
        }

        if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v4 + 2);
          (*(*v4 + 8))(v4);
        }
      }
    }

    v6 = *(this + 3);
    if (v6)
    {
      v7 = *(v6 + 8);
      if (v7)
      {
        v8 = *(v7 + 16);
        *(v7 + 16) = v8 + 1;
        v9 = *(v7 + 32);
        if (v9)
        {
          v10 = *(v9 + 8);
          if (v10)
          {
            v12 = *(this + 4);
            v11 = *(this + 5);
            CFRetain(*(v10 - 8));
            v23[0] = v11;
            {
              WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
            }

            v13 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v23);
            if (v13)
            {
              v14 = v13;
              atomic_fetch_add(v13 + 4, 1u);
              v15 = WebKit::WebPageProxy::webPageIDInProcess((v10 - 16), v13);
              v17 = IPC::Encoder::operator new(0x238, v16);
              *v17 = 867;
              *(v17 + 2) = 0;
              *(v17 + 3) = 0;
              *(v17 + 1) = v15;
              *(v17 + 68) = 0;
              *(v17 + 70) = 0;
              *(v17 + 69) = 0;
              IPC::Encoder::encodeHeader(v17);
              v26 = v17;
              IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, v12);
              LOBYTE(v23[0]) = 0;
              LOBYTE(v24) = 0;
              WebKit::AuxiliaryProcessProxy::sendMessage(v14, &v26, 0, v23, 1);
              if (v24 == 1)
              {
                v19 = v23[0];
                v23[0] = 0;
                if (v19)
                {
                  (*(*v19 + 8))(v19);
                }
              }

              v20 = v26;
              v26 = 0;
              if (v20)
              {
                IPC::Encoder::~Encoder(v20, v18);
                bmalloc::api::tzoneFree(v21, v22);
              }

              WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v14 + 16));
            }

            CFRelease(*(v10 - 8));
            v8 = *(v7 + 16) - 1;
          }
        }

        if (v8)
        {
          *(v7 + 16) = v8;
        }

        else
        {
          (*(*v7 + 24))(v7);
        }
      }
    }
  }

  *(this + 105) = 0;
  *(this + 72) = *(this + 104) & 1;
}

void sub_19DC44880(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, IPC::Encoder *a14)
{
  if (a12 == 1 && a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (a14)
  {
    IPC::Encoder::~Encoder(a14, a2);
    bmalloc::api::tzoneFree(v18, v19);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v15);
  CFRelease(*(v16 - 8));
  if (v14[4] == 1)
  {
    (*(*v14 + 24))(v14);
  }

  else
  {
    --v14[4];
  }

  _Unwind_Resume(a1);
}

void WebKit::PlaybackSessionModelContext::seekToTime(WebKit::PlaybackSessionModelContext *this, double a2, double a3, double a4)
{
  v99[1] = *MEMORY[0x1E69E9840];
  v4 = *(this + 3);
  if (v4)
  {
    v8 = this;
    v9 = *(v4 + 8);
    if (v9)
    {
      v10 = *(v9 + 80);
      if (v10)
      {
        atomic_fetch_add((v10 + 8), 1u);
        v11 = *(this + 42);
        v76[0] = "PlaybackSessionModelContext";
        v76[1] = 28;
        v76[2] = "seekToTime";
        v76[3] = v11;
        v12 = MEMORY[0x1E696EBD0];
        while (1)
        {
          v13 = *v12;
          if (v13)
          {
            break;
          }

          v14 = *v12;
          atomic_compare_exchange_strong_explicit(v12, &v14, v13 | 1, memory_order_acquire, memory_order_acquire);
          if (v14 == v13)
          {
            v15 = WTF::Logger::messageHandlerObservers(this);
            v16 = *(v15 + 12);
            if (v16)
            {
              v17 = *v15;
              v18 = *v15 + 8 * v16;
              do
              {
                v19 = *v17;
                *buf = 0;
                v20 = WTF::Logger::LogSiteIdentifier::toString(&buf[8], v76);
                v90 = 0;
                WTF::String::number(&v91, v20, a2);
                v92 = 0;
                v21 = WTF::String::String(&v93, ", toleranceBefore: ");
                v94 = 0;
                WTF::String::number(&v95, v21, a3);
                v96 = 0;
                v22 = WTF::String::String(&v97, ", toleranceAfter: ");
                v98 = 0;
                WTF::String::number(v99, v22, a4);
                WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v77, buf, 6uLL);
                (*(*v19 + 16))(v19, &WebKit2LogMedia, 0, v77);
                WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v77, v23);
                for (i = 88; i != -8; i -= 16)
                {
                  v26 = *&buf[i];
                  *&buf[i] = 0;
                  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v26, v24);
                  }
                }

                ++v17;
              }

              while (v17 != v18);
            }

            v27 = 1;
            atomic_compare_exchange_strong_explicit(v12, &v27, 0, memory_order_release, memory_order_relaxed);
            if (v27 != 1)
            {
              WTF::Lock::unlockSlow(MEMORY[0x1E696EBD0]);
            }

            v8 = this;
            if (*(v10 + 12) == 1)
            {
              v28 = WTF::Logger::LogSiteIdentifier::toString(&v83, v76);
              WTF::String::number(&v82, v28, a2);
              v29 = WTF::String::String(&v81, ", toleranceBefore: ");
              WTF::String::number(&v80, v29, a3);
              v30 = WTF::String::String(&v79, ", toleranceAfter: ");
              WTF::String::number(&v78, v30, a4);
              v77[0] = v82;
              v88 = v81;
              *buf = v83;
              v86 = v79;
              v87 = v80;
              v85 = v78;
              WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v77, &v88, &v87, &v86, &v85, &v84);
              if (!v84)
              {
                __break(0xC471u);
                return;
              }

              v32 = v78;
              v78 = 0;
              if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v32, v31);
              }

              v33 = v79;
              v79 = 0;
              if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v33, v31);
              }

              v34 = v80;
              v80 = 0;
              if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v34, v31);
              }

              v35 = v81;
              v81 = 0;
              if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v35, v31);
              }

              v36 = v82;
              v82 = 0;
              if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v36, v31);
              }

              v37 = v83;
              v83 = 0;
              if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v37, v31);
              }

              v38 = qword_1ED640D38;
              v39 = os_log_type_enabled(qword_1ED640D38, OS_LOG_TYPE_DEFAULT);
              if (v39)
              {
                WTF::String::utf8();
                v41 = v77[0] ? v77[0] + 16 : 0;
                *buf = 136446210;
                *&buf[4] = v41;
                _os_log_impl(&dword_19D52D000, v38, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
                v39 = v77[0];
                v77[0] = 0;
                if (v39)
                {
                  if (*v39 == 1)
                  {
                    v39 = WTF::fastFree(v39, v40);
                  }

                  else
                  {
                    --*v39;
                  }
                }
              }

              if (WebKit2LogMedia)
              {
                v42 = MEMORY[0x1E696EBC0];
                while (1)
                {
                  v43 = *v42;
                  if (v43)
                  {
                    break;
                  }

                  v44 = *v42;
                  atomic_compare_exchange_strong_explicit(v42, &v44, v43 | 1, memory_order_acquire, memory_order_acquire);
                  if (v44 == v43)
                  {
                    v45 = WTF::Logger::observers(v39);
                    v46 = *(v45 + 12);
                    if (v46)
                    {
                      v47 = *v45;
                      v48 = *v45 + 8 * v46;
                      do
                      {
                        v49 = *v47;
                        *buf = 0;
                        v50 = WTF::Logger::LogSiteIdentifier::toString(&buf[8], v76);
                        v90 = 0;
                        WTF::String::number(&v91, v50, a2);
                        v92 = 0;
                        v51 = WTF::String::String(&v93, ", toleranceBefore: ");
                        v94 = 0;
                        WTF::String::number(&v95, v51, a3);
                        v96 = 0;
                        v52 = WTF::String::String(&v97, ", toleranceAfter: ");
                        v98 = 0;
                        WTF::String::number(v99, v52, a4);
                        WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v77, buf, 6uLL);
                        (*(*v49 + 16))(v49, &WebKit2LogMedia, 0, v77);
                        WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v77, v53);
                        for (j = 88; j != -8; j -= 16)
                        {
                          v55 = *&buf[j];
                          *&buf[j] = 0;
                          if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v55, v40);
                          }
                        }

                        ++v47;
                      }

                      while (v47 != v48);
                    }

                    v56 = 1;
                    atomic_compare_exchange_strong_explicit(v42, &v56, 0, memory_order_release, memory_order_relaxed);
                    v8 = this;
                    if (v56 != 1)
                    {
                      WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
                    }

                    break;
                  }
                }
              }

              v57 = v84;
              v84 = 0;
              if (v57 && atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v57, v40);
              }
            }

            break;
          }
        }

        if (atomic_fetch_add((v10 + 8), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, (v10 + 8));
          (*(*v10 + 8))(v10);
        }
      }
    }

    v58 = *(v8 + 3);
    if (v58)
    {
      v59 = *(v58 + 8);
      if (v59)
      {
        v60 = *(v59 + 16);
        *(v59 + 16) = v60 + 1;
        v61 = *(v59 + 32);
        if (v61)
        {
          v62 = *(v61 + 8);
          if (v62)
          {
            v64 = *(v8 + 4);
            v63 = *(v8 + 5);
            CFRetain(*(v62 - 8));
            *buf = v63;
            {
              WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
            }

            v65 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, buf);
            if (v65)
            {
              v66 = v65;
              atomic_fetch_add(v65 + 4, 1u);
              v67 = WebKit::WebPageProxy::webPageIDInProcess((v62 - 16), v65);
              v69 = IPC::Encoder::operator new(0x238, v68);
              *v69 = 876;
              *(v69 + 2) = 0;
              *(v69 + 3) = 0;
              *(v69 + 1) = v67;
              *(v69 + 68) = 0;
              *(v69 + 70) = 0;
              *(v69 + 69) = 0;
              IPC::Encoder::encodeHeader(v69);
              v76[0] = v69;
              IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v69, v64);
              IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v69, a2);
              IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v69, a3);
              IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v69, a4);
              buf[0] = 0;
              LOBYTE(v90) = 0;
              WebKit::AuxiliaryProcessProxy::sendMessage(v66, v76, 0, buf, 1);
              if (v90 == 1)
              {
                v71 = *buf;
                *buf = 0;
                if (v71)
                {
                  (*(*v71 + 8))(v71);
                }
              }

              v72 = v76[0];
              v76[0] = 0;
              if (v72)
              {
                IPC::Encoder::~Encoder(v72, v70);
                bmalloc::api::tzoneFree(v73, v74);
              }

              WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v66 + 16));
            }

            CFRelease(*(v62 - 8));
            v60 = *(v59 + 16) - 1;
          }
        }

        if (v60)
        {
          *(v59 + 16) = v60;
        }

        else
        {
          (*(*v59 + 24))(v59);
        }
      }
    }
  }
}

void sub_19DC45190(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int *a15, IPC::Encoder *a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, WTF::StringImpl *a22, WTF::StringImpl *a23, WTF::StringImpl *a24, WTF::StringImpl *a25, WTF::StringImpl *a26, uint64_t a27, WTF::StringImpl *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  v37 = 1;
  atomic_compare_exchange_strong_explicit(v35, &v37, 0, memory_order_release, memory_order_relaxed);
  if (v37 != 1)
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
  }

  if (a28 && atomic_fetch_add_explicit(a28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a28, a2);
  }

  if (atomic_fetch_add(a15 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a15 + 2);
    (*(*a15 + 8))(a15);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PlaybackSessionModelContext::fastSeek(WebKit::PlaybackSessionModelContext *this, double a2)
{
  v28 = a2;
  v2 = *(this + 3);
  if (v2)
  {
    v4 = *(v2 + 8);
    if (v4)
    {
      v5 = *(v4 + 80);
      if (v5)
      {
        atomic_fetch_add(v5 + 2, 1u);
        v6 = *(this + 42);
        v25[0] = "PlaybackSessionModelContext";
        v25[1] = 28;
        v26 = "fastSeek";
        v27 = v6;
        if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,double>(v5, &WebKit2LogMedia, 0, v25, &v28))
        {
          WTF::Logger::log<WTF::Logger::LogSiteIdentifier,double>(&WebKit2LogMedia, 0, v25, &v28);
        }

        if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v5 + 2);
          (*(*v5 + 8))(v5);
        }
      }
    }

    v7 = *(this + 3);
    if (v7)
    {
      v8 = *(v7 + 8);
      if (v8)
      {
        v9 = *(v8 + 16);
        *(v8 + 16) = v9 + 1;
        v10 = *(v8 + 32);
        if (v10)
        {
          v11 = *(v10 + 8);
          if (v11)
          {
            v13 = *(this + 4);
            v12 = *(this + 5);
            v14 = v28;
            CFRetain(*(v11 - 8));
            v25[0] = v12;
            {
              WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
            }

            v15 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v25);
            if (v15)
            {
              v16 = v15;
              atomic_fetch_add(v15 + 4, 1u);
              v17 = WebKit::WebPageProxy::webPageIDInProcess((v11 - 16), v15);
              v19 = IPC::Encoder::operator new(0x238, v18);
              *v19 = 872;
              *(v19 + 2) = 0;
              *(v19 + 3) = 0;
              *(v19 + 1) = v17;
              *(v19 + 68) = 0;
              *(v19 + 70) = 0;
              *(v19 + 69) = 0;
              IPC::Encoder::encodeHeader(v19);
              v29 = v19;
              IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v19, v13);
              IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v19, v14);
              LOBYTE(v25[0]) = 0;
              LOBYTE(v26) = 0;
              WebKit::AuxiliaryProcessProxy::sendMessage(v16, &v29, 0, v25, 1);
              if (v26 == 1)
              {
                v21 = v25[0];
                v25[0] = 0;
                if (v21)
                {
                  (*(*v21 + 8))(v21);
                }
              }

              v22 = v29;
              v29 = 0;
              if (v22)
              {
                IPC::Encoder::~Encoder(v22, v20);
                bmalloc::api::tzoneFree(v23, v24);
              }

              WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v16 + 16));
            }

            CFRelease(*(v11 - 8));
            v9 = *(v8 + 16) - 1;
          }
        }

        if (v9)
        {
          *(v8 + 16) = v9;
        }

        else
        {
          (*(*v8 + 24))(v8);
        }
      }
    }
  }
}

void sub_19DC45814(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, IPC::Encoder *a14)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a14)
  {
    IPC::Encoder::~Encoder(a14, a2);
    bmalloc::api::tzoneFree(v18, v19);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v15);
  CFRelease(*(v16 - 8));
  if (v14[4] == 1)
  {
    (*(*v14 + 24))(v14);
  }

  else
  {
    --v14[4];
  }

  _Unwind_Resume(a1);
}

void WebKit::PlaybackSessionModelContext::beginScanningForward(WebKit::PlaybackSessionModelContext *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    v3 = *(v1 + 8);
    if (v3)
    {
      v4 = *(v3 + 80);
      if (v4)
      {
        atomic_fetch_add(v4 + 2, 1u);
        v5 = *(this + 42);
        v23[0] = "PlaybackSessionModelContext";
        v23[1] = 28;
        v24 = "beginScanningForward";
        v25 = v5;
        if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v4, &WebKit2LogMedia, 0, v23))
        {
          WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogMedia, 0, v23);
        }

        if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v4 + 2);
          (*(*v4 + 8))(v4);
        }
      }
    }

    v6 = *(this + 3);
    if (v6)
    {
      v7 = *(v6 + 8);
      if (v7)
      {
        v8 = *(v7 + 16);
        *(v7 + 16) = v8 + 1;
        v9 = *(v7 + 32);
        if (v9)
        {
          v10 = *(v9 + 8);
          if (v10)
          {
            v12 = *(this + 4);
            v11 = *(this + 5);
            CFRetain(*(v10 - 8));
            v23[0] = v11;
            {
              WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
            }

            v13 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v23);
            if (v13)
            {
              v14 = v13;
              atomic_fetch_add(v13 + 4, 1u);
              v15 = WebKit::WebPageProxy::webPageIDInProcess((v10 - 16), v13);
              v17 = IPC::Encoder::operator new(0x238, v16);
              *v17 = 864;
              *(v17 + 2) = 0;
              *(v17 + 3) = 0;
              *(v17 + 1) = v15;
              *(v17 + 68) = 0;
              *(v17 + 70) = 0;
              *(v17 + 69) = 0;
              IPC::Encoder::encodeHeader(v17);
              v26 = v17;
              IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, v12);
              LOBYTE(v23[0]) = 0;
              LOBYTE(v24) = 0;
              WebKit::AuxiliaryProcessProxy::sendMessage(v14, &v26, 0, v23, 1);
              if (v24 == 1)
              {
                v19 = v23[0];
                v23[0] = 0;
                if (v19)
                {
                  (*(*v19 + 8))(v19);
                }
              }

              v20 = v26;
              v26 = 0;
              if (v20)
              {
                IPC::Encoder::~Encoder(v20, v18);
                bmalloc::api::tzoneFree(v21, v22);
              }

              WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v14 + 16));
            }

            CFRelease(*(v10 - 8));
            v8 = *(v7 + 16) - 1;
          }
        }

        if (v8)
        {
          *(v7 + 16) = v8;
        }

        else
        {
          (*(*v7 + 24))(v7);
        }
      }
    }
  }
}

void sub_19DC45BB0(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, IPC::Encoder *a14)
{
  if (a12 == 1 && a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (a14)
  {
    IPC::Encoder::~Encoder(a14, a2);
    bmalloc::api::tzoneFree(v18, v19);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v15);
  CFRelease(*(v16 - 8));
  if (v14[4] == 1)
  {
    (*(*v14 + 24))(v14);
  }

  else
  {
    --v14[4];
  }

  _Unwind_Resume(a1);
}

void WebKit::PlaybackSessionModelContext::beginScanningBackward(WebKit::PlaybackSessionModelContext *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    v3 = *(v1 + 8);
    if (v3)
    {
      v4 = *(v3 + 80);
      if (v4)
      {
        atomic_fetch_add(v4 + 2, 1u);
        v5 = *(this + 42);
        v23[0] = "PlaybackSessionModelContext";
        v23[1] = 28;
        v24 = "beginScanningBackward";
        v25 = v5;
        if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v4, &WebKit2LogMedia, 0, v23))
        {
          WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogMedia, 0, v23);
        }

        if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v4 + 2);
          (*(*v4 + 8))(v4);
        }
      }
    }

    v6 = *(this + 3);
    if (v6)
    {
      v7 = *(v6 + 8);
      if (v7)
      {
        v8 = *(v7 + 16);
        *(v7 + 16) = v8 + 1;
        v9 = *(v7 + 32);
        if (v9)
        {
          v10 = *(v9 + 8);
          if (v10)
          {
            v12 = *(this + 4);
            v11 = *(this + 5);
            CFRetain(*(v10 - 8));
            v23[0] = v11;
            {
              WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
            }

            v13 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v23);
            if (v13)
            {
              v14 = v13;
              atomic_fetch_add(v13 + 4, 1u);
              v15 = WebKit::WebPageProxy::webPageIDInProcess((v10 - 16), v13);
              v17 = IPC::Encoder::operator new(0x238, v16);
              *v17 = 863;
              *(v17 + 2) = 0;
              *(v17 + 3) = 0;
              *(v17 + 1) = v15;
              *(v17 + 68) = 0;
              *(v17 + 70) = 0;
              *(v17 + 69) = 0;
              IPC::Encoder::encodeHeader(v17);
              v26 = v17;
              IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, v12);
              LOBYTE(v23[0]) = 0;
              LOBYTE(v24) = 0;
              WebKit::AuxiliaryProcessProxy::sendMessage(v14, &v26, 0, v23, 1);
              if (v24 == 1)
              {
                v19 = v23[0];
                v23[0] = 0;
                if (v19)
                {
                  (*(*v19 + 8))(v19);
                }
              }

              v20 = v26;
              v26 = 0;
              if (v20)
              {
                IPC::Encoder::~Encoder(v20, v18);
                bmalloc::api::tzoneFree(v21, v22);
              }

              WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v14 + 16));
            }

            CFRelease(*(v10 - 8));
            v8 = *(v7 + 16) - 1;
          }
        }

        if (v8)
        {
          *(v7 + 16) = v8;
        }

        else
        {
          (*(*v7 + 24))(v7);
        }
      }
    }
  }
}

void sub_19DC45F48(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, IPC::Encoder *a14)
{
  if (a12 == 1 && a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (a14)
  {
    IPC::Encoder::~Encoder(a14, a2);
    bmalloc::api::tzoneFree(v18, v19);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v15);
  CFRelease(*(v16 - 8));
  if (v14[4] == 1)
  {
    (*(*v14 + 24))(v14);
  }

  else
  {
    --v14[4];
  }

  _Unwind_Resume(a1);
}

void WebKit::PlaybackSessionModelContext::endScanning(WebKit::PlaybackSessionModelContext *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    v3 = *(v1 + 8);
    if (v3)
    {
      v4 = *(v3 + 80);
      if (v4)
      {
        atomic_fetch_add(v4 + 2, 1u);
        v5 = *(this + 42);
        v23[0] = "PlaybackSessionModelContext";
        v23[1] = 28;
        v24 = "endScanning";
        v25 = v5;
        if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v4, &WebKit2LogMedia, 0, v23))
        {
          WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogMedia, 0, v23);
        }

        if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v4 + 2);
          (*(*v4 + 8))(v4);
        }
      }
    }

    v6 = *(this + 3);
    if (v6)
    {
      v7 = *(v6 + 8);
      if (v7)
      {
        v8 = *(v7 + 16);
        *(v7 + 16) = v8 + 1;
        v9 = *(v7 + 32);
        if (v9)
        {
          v10 = *(v9 + 8);
          if (v10)
          {
            v12 = *(this + 4);
            v11 = *(this + 5);
            CFRetain(*(v10 - 8));
            v23[0] = v11;
            {
              WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
            }

            v13 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v23);
            if (v13)
            {
              v14 = v13;
              atomic_fetch_add(v13 + 4, 1u);
              v15 = WebKit::WebPageProxy::webPageIDInProcess((v10 - 16), v13);
              v17 = IPC::Encoder::operator new(0x238, v16);
              *v17 = 866;
              *(v17 + 2) = 0;
              *(v17 + 3) = 0;
              *(v17 + 1) = v15;
              *(v17 + 68) = 0;
              *(v17 + 70) = 0;
              *(v17 + 69) = 0;
              IPC::Encoder::encodeHeader(v17);
              v26 = v17;
              IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, v12);
              LOBYTE(v23[0]) = 0;
              LOBYTE(v24) = 0;
              WebKit::AuxiliaryProcessProxy::sendMessage(v14, &v26, 0, v23, 1);
              if (v24 == 1)
              {
                v19 = v23[0];
                v23[0] = 0;
                if (v19)
                {
                  (*(*v19 + 8))(v19);
                }
              }

              v20 = v26;
              v26 = 0;
              if (v20)
              {
                IPC::Encoder::~Encoder(v20, v18);
                bmalloc::api::tzoneFree(v21, v22);
              }

              WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v14 + 16));
            }

            CFRelease(*(v10 - 8));
            v8 = *(v7 + 16) - 1;
          }
        }

        if (v8)
        {
          *(v7 + 16) = v8;
        }

        else
        {
          (*(*v7 + 24))(v7);
        }
      }
    }
  }
}

void sub_19DC462E0(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, IPC::Encoder *a14)
{
  if (a12 == 1 && a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (a14)
  {
    IPC::Encoder::~Encoder(a14, a2);
    bmalloc::api::tzoneFree(v18, v19);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v15);
  CFRelease(*(v16 - 8));
  if (v14[4] == 1)
  {
    (*(*v14 + 24))(v14);
  }

  else
  {
    --v14[4];
  }

  _Unwind_Resume(a1);
}

void WebKit::PlaybackSessionModelContext::setDefaultPlaybackRate(WebKit::PlaybackSessionModelContext *this, double a2)
{
  v29 = a2;
  v2 = *(this + 3);
  if (v2)
  {
    v4 = *(v2 + 8);
    if (v4)
    {
      v5 = *(v4 + 80);
      if (v5)
      {
        atomic_fetch_add(v5 + 2, 1u);
        v6 = *(this + 42);
        v26[0] = "PlaybackSessionModelContext";
        v26[1] = 28;
        v27 = "setDefaultPlaybackRate";
        v28 = v6;
        if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,double>(v5, &WebKit2LogMedia, 0, v26, &v29))
        {
          WTF::Logger::log<WTF::Logger::LogSiteIdentifier,double>(&WebKit2LogMedia, 0, v26, &v29);
        }

        if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v5 + 2);
          (*(*v5 + 8))(v5);
        }
      }
    }

    v7 = *(this + 3);
    if (v7)
    {
      v8 = *(v7 + 8);
      if (v8)
      {
        v9 = *(v8 + 16);
        *(v8 + 16) = v9 + 1;
        v10 = *(v8 + 32);
        if (v10)
        {
          v11 = *(v10 + 8);
          if (v11)
          {
            v13 = *(this + 4);
            v12 = *(this + 5);
            v14 = v29;
            CFRetain(*(v11 - 8));
            v26[0] = v12;
            {
              WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
            }

            v15 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v26);
            if (v15)
            {
              v16 = v15;
              atomic_fetch_add(v15 + 4, 1u);
              v17 = WebKit::WebPageProxy::webPageIDInProcess((v11 - 16), v15);
              v19 = IPC::Encoder::operator new(0x238, v18);
              *v19 = 880;
              *(v19 + 2) = 0;
              *(v19 + 3) = 0;
              *(v19 + 1) = v17;
              *(v19 + 68) = 0;
              *(v19 + 70) = 0;
              *(v19 + 69) = 0;
              IPC::Encoder::encodeHeader(v19);
              v30 = v19;
              IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v19, v13);
              v20 = v14;
              IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v19, v20);
              LOBYTE(v26[0]) = 0;
              LOBYTE(v27) = 0;
              WebKit::AuxiliaryProcessProxy::sendMessage(v16, &v30, 0, v26, 1);
              if (v27 == 1)
              {
                v22 = v26[0];
                v26[0] = 0;
                if (v22)
                {
                  (*(*v22 + 8))(v22);
                }
              }

              v23 = v30;
              v30 = 0;
              if (v23)
              {
                IPC::Encoder::~Encoder(v23, v21);
                bmalloc::api::tzoneFree(v24, v25);
              }

              WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v16 + 16));
            }

            CFRelease(*(v11 - 8));
            v9 = *(v8 + 16) - 1;
          }
        }

        if (v9)
        {
          *(v8 + 16) = v9;
        }

        else
        {
          (*(*v8 + 24))(v8);
        }
      }
    }
  }
}

void sub_19DC4669C(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, IPC::Encoder *a14)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a14)
  {
    IPC::Encoder::~Encoder(a14, a2);
    bmalloc::api::tzoneFree(v18, v19);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v15);
  CFRelease(*(v16 - 8));
  if (v14[4] == 1)
  {
    (*(*v14 + 24))(v14);
  }

  else
  {
    --v14[4];
  }

  _Unwind_Resume(a1);
}

void WebKit::PlaybackSessionModelContext::setPlaybackRate(WebKit::PlaybackSessionModelContext *this, double a2)
{
  v29 = a2;
  v2 = *(this + 3);
  if (v2)
  {
    v4 = *(v2 + 8);
    if (v4)
    {
      v5 = *(v4 + 80);
      if (v5)
      {
        atomic_fetch_add(v5 + 2, 1u);
        v6 = *(this + 42);
        v26[0] = "PlaybackSessionModelContext";
        v26[1] = 28;
        v27 = "setPlaybackRate";
        v28 = v6;
        if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,double>(v5, &WebKit2LogMedia, 0, v26, &v29))
        {
          WTF::Logger::log<WTF::Logger::LogSiteIdentifier,double>(&WebKit2LogMedia, 0, v26, &v29);
        }

        if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v5 + 2);
          (*(*v5 + 8))(v5);
        }
      }
    }

    v7 = *(this + 3);
    if (v7)
    {
      v8 = *(v7 + 8);
      if (v8)
      {
        v9 = *(v8 + 16);
        *(v8 + 16) = v9 + 1;
        v10 = *(v8 + 32);
        if (v10)
        {
          v11 = *(v10 + 8);
          if (v11)
          {
            v13 = *(this + 4);
            v12 = *(this + 5);
            v14 = v29;
            CFRetain(*(v11 - 8));
            v26[0] = v12;
            {
              WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
            }

            v15 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v26);
            if (v15)
            {
              v16 = v15;
              atomic_fetch_add(v15 + 4, 1u);
              v17 = WebKit::WebPageProxy::webPageIDInProcess((v11 - 16), v15);
              v19 = IPC::Encoder::operator new(0x238, v18);
              *v19 = 882;
              *(v19 + 2) = 0;
              *(v19 + 3) = 0;
              *(v19 + 1) = v17;
              *(v19 + 68) = 0;
              *(v19 + 70) = 0;
              *(v19 + 69) = 0;
              IPC::Encoder::encodeHeader(v19);
              v30 = v19;
              IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v19, v13);
              v20 = v14;
              IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v19, v20);
              LOBYTE(v26[0]) = 0;
              LOBYTE(v27) = 0;
              WebKit::AuxiliaryProcessProxy::sendMessage(v16, &v30, 0, v26, 1);
              if (v27 == 1)
              {
                v22 = v26[0];
                v26[0] = 0;
                if (v22)
                {
                  (*(*v22 + 8))(v22);
                }
              }

              v23 = v30;
              v30 = 0;
              if (v23)
              {
                IPC::Encoder::~Encoder(v23, v21);
                bmalloc::api::tzoneFree(v24, v25);
              }

              WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v16 + 16));
            }

            CFRelease(*(v11 - 8));
            v9 = *(v8 + 16) - 1;
          }
        }

        if (v9)
        {
          *(v8 + 16) = v9;
        }

        else
        {
          (*(*v8 + 24))(v8);
        }
      }
    }
  }
}

void sub_19DC46A5C(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, IPC::Encoder *a14)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a14)
  {
    IPC::Encoder::~Encoder(a14, a2);
    bmalloc::api::tzoneFree(v18, v19);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v15);
  CFRelease(*(v16 - 8));
  if (v14[4] == 1)
  {
    (*(*v14 + 24))(v14);
  }

  else
  {
    --v14[4];
  }

  _Unwind_Resume(a1);
}

void WebKit::PlaybackSessionModelContext::selectAudioMediaOption(WebKit::PlaybackSessionModelContext *this, WTF::String *a2)
{
  v28 = a2;
  if (*(this + 23) != a2)
  {
    v3 = *(this + 3);
    if (v3)
    {
      v4 = *(v3 + 8);
      if (v4)
      {
        v5 = *(v4 + 80);
        if (v5)
        {
          atomic_fetch_add(v5 + 2, 1u);
          v6 = *(this + 42);
          v25[0] = "PlaybackSessionModelContext";
          v25[1] = 28;
          v26 = "selectAudioMediaOption";
          v27 = v6;
          if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,unsigned long long>(v5, &WebKit2LogMedia, 0, v25, &v28))
          {
            WTF::Logger::log<WTF::Logger::LogSiteIdentifier,unsigned long long>(&WebKit2LogMedia, 0, v25, &v28);
          }

          if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v5 + 2);
            (*(*v5 + 8))(v5);
          }
        }
      }

      v7 = *(this + 3);
      if (v7)
      {
        v8 = *(v7 + 8);
        if (v8)
        {
          v9 = *(v8 + 16);
          *(v8 + 16) = v9 + 1;
          v10 = *(v8 + 32);
          if (v10)
          {
            v11 = *(v10 + 8);
            if (v11)
            {
              v13 = *(this + 4);
              v12 = *(this + 5);
              v14 = v28;
              CFRetain(*(v11 - 8));
              v25[0] = v12;
              {
                WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
              }

              v15 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v25);
              if (v15)
              {
                v16 = v15;
                atomic_fetch_add(v15 + 4, 1u);
                v17 = WebKit::WebPageProxy::webPageIDInProcess((v11 - 16), v15);
                v19 = IPC::Encoder::operator new(0x238, v18);
                *v19 = 877;
                *(v19 + 2) = 0;
                *(v19 + 3) = 0;
                *(v19 + 1) = v17;
                *(v19 + 68) = 0;
                *(v19 + 70) = 0;
                *(v19 + 69) = 0;
                IPC::Encoder::encodeHeader(v19);
                v29 = v19;
                IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v19, v13);
                IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v19, v14);
                LOBYTE(v25[0]) = 0;
                LOBYTE(v26) = 0;
                WebKit::AuxiliaryProcessProxy::sendMessage(v16, &v29, 0, v25, 1);
                if (v26 == 1)
                {
                  v21 = v25[0];
                  v25[0] = 0;
                  if (v21)
                  {
                    (*(*v21 + 8))(v21);
                  }
                }

                v22 = v29;
                v29 = 0;
                if (v22)
                {
                  IPC::Encoder::~Encoder(v22, v20);
                  bmalloc::api::tzoneFree(v23, v24);
                }

                WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v16 + 16));
              }

              CFRelease(*(v11 - 8));
              v9 = *(v8 + 16) - 1;
            }
          }

          if (v9)
          {
            *(v8 + 16) = v9;
          }

          else
          {
            (*(*v8 + 24))(v8);
          }
        }
      }
    }
  }
}

void sub_19DC46E20(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, IPC::Encoder *a14)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a14)
  {
    IPC::Encoder::~Encoder(a14, a2);
    bmalloc::api::tzoneFree(v18, v19);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v15);
  CFRelease(*(v16 - 8));
  if (v14[4] == 1)
  {
    (*(*v14 + 24))(v14);
  }

  else
  {
    --v14[4];
  }

  _Unwind_Resume(a1);
}

void WebKit::PlaybackSessionModelContext::selectLegibleMediaOption(WebKit::PlaybackSessionModelContext *this, WTF::String *a2)
{
  v28 = a2;
  if (*(this + 26) != a2)
  {
    v3 = *(this + 3);
    if (v3)
    {
      v4 = *(v3 + 8);
      if (v4)
      {
        v5 = *(v4 + 80);
        if (v5)
        {
          atomic_fetch_add(v5 + 2, 1u);
          v6 = *(this + 42);
          v25[0] = "PlaybackSessionModelContext";
          v25[1] = 28;
          v26 = "selectLegibleMediaOption";
          v27 = v6;
          if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,unsigned long long>(v5, &WebKit2LogMedia, 0, v25, &v28))
          {
            WTF::Logger::log<WTF::Logger::LogSiteIdentifier,unsigned long long>(&WebKit2LogMedia, 0, v25, &v28);
          }

          if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v5 + 2);
            (*(*v5 + 8))(v5);
          }
        }
      }

      v7 = *(this + 3);
      if (v7)
      {
        v8 = *(v7 + 8);
        if (v8)
        {
          v9 = *(v8 + 16);
          *(v8 + 16) = v9 + 1;
          v10 = *(v8 + 32);
          if (v10)
          {
            v11 = *(v10 + 8);
            if (v11)
            {
              v13 = *(this + 4);
              v12 = *(this + 5);
              v14 = v28;
              CFRetain(*(v11 - 8));
              v25[0] = v12;
              {
                WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
              }

              v15 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v25);
              if (v15)
              {
                v16 = v15;
                atomic_fetch_add(v15 + 4, 1u);
                v17 = WebKit::WebPageProxy::webPageIDInProcess((v11 - 16), v15);
                v19 = IPC::Encoder::operator new(0x238, v18);
                *v19 = 878;
                *(v19 + 2) = 0;
                *(v19 + 3) = 0;
                *(v19 + 1) = v17;
                *(v19 + 68) = 0;
                *(v19 + 70) = 0;
                *(v19 + 69) = 0;
                IPC::Encoder::encodeHeader(v19);
                v29 = v19;
                IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v19, v13);
                IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v19, v14);
                LOBYTE(v25[0]) = 0;
                LOBYTE(v26) = 0;
                WebKit::AuxiliaryProcessProxy::sendMessage(v16, &v29, 0, v25, 1);
                if (v26 == 1)
                {
                  v21 = v25[0];
                  v25[0] = 0;
                  if (v21)
                  {
                    (*(*v21 + 8))(v21);
                  }
                }

                v22 = v29;
                v29 = 0;
                if (v22)
                {
                  IPC::Encoder::~Encoder(v22, v20);
                  bmalloc::api::tzoneFree(v23, v24);
                }

                WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v16 + 16));
              }

              CFRelease(*(v11 - 8));
              v9 = *(v8 + 16) - 1;
            }
          }

          if (v9)
          {
            *(v8 + 16) = v9;
          }

          else
          {
            (*(*v8 + 24))(v8);
          }
        }
      }
    }
  }
}

void sub_19DC471E4(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, IPC::Encoder *a14)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a14)
  {
    IPC::Encoder::~Encoder(a14, a2);
    bmalloc::api::tzoneFree(v18, v19);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v15);
  CFRelease(*(v16 - 8));
  if (v14[4] == 1)
  {
    (*(*v14 + 24))(v14);
  }

  else
  {
    --v14[4];
  }

  _Unwind_Resume(a1);
}

void WebKit::PlaybackSessionModelContext::togglePictureInPicture(WebKit::PlaybackSessionModelContext *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    v3 = *(v1 + 8);
    if (v3)
    {
      v4 = *(v3 + 80);
      if (v4)
      {
        atomic_fetch_add(v4 + 2, 1u);
        v5 = *(this + 42);
        v23[0] = "PlaybackSessionModelContext";
        v23[1] = 28;
        v24 = "togglePictureInPicture";
        v25 = v5;
        if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v4, &WebKit2LogMedia, 0, v23))
        {
          WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogMedia, 0, v23);
        }

        if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v4 + 2);
          (*(*v4 + 8))(v4);
        }
      }
    }

    v6 = *(this + 3);
    if (v6)
    {
      v7 = *(v6 + 8);
      if (v7)
      {
        v8 = *(v7 + 16);
        *(v7 + 16) = v8 + 1;
        v9 = *(v7 + 32);
        if (v9)
        {
          v10 = *(v9 + 8);
          if (v10)
          {
            v12 = *(this + 4);
            v11 = *(this + 5);
            CFRetain(*(v10 - 8));
            v23[0] = v11;
            {
              WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
            }

            v13 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v23);
            if (v13)
            {
              v14 = v13;
              atomic_fetch_add(v13 + 4, 1u);
              v15 = WebKit::WebPageProxy::webPageIDInProcess((v10 - 16), v13);
              v17 = IPC::Encoder::operator new(0x238, v16);
              *v17 = 888;
              *(v17 + 2) = 0;
              *(v17 + 3) = 0;
              *(v17 + 1) = v15;
              *(v17 + 68) = 0;
              *(v17 + 70) = 0;
              *(v17 + 69) = 0;
              IPC::Encoder::encodeHeader(v17);
              v26 = v17;
              IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, v12);
              LOBYTE(v23[0]) = 0;
              LOBYTE(v24) = 0;
              WebKit::AuxiliaryProcessProxy::sendMessage(v14, &v26, 0, v23, 1);
              if (v24 == 1)
              {
                v19 = v23[0];
                v23[0] = 0;
                if (v19)
                {
                  (*(*v19 + 8))(v19);
                }
              }

              v20 = v26;
              v26 = 0;
              if (v20)
              {
                IPC::Encoder::~Encoder(v20, v18);
                bmalloc::api::tzoneFree(v21, v22);
              }

              WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v14 + 16));
            }

            CFRelease(*(v10 - 8));
            v8 = *(v7 + 16) - 1;
          }
        }

        if (v8)
        {
          *(v7 + 16) = v8;
        }

        else
        {
          (*(*v7 + 24))(v7);
        }
      }
    }
  }
}

void sub_19DC47580(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, IPC::Encoder *a14)
{
  if (a12 == 1 && a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (a14)
  {
    IPC::Encoder::~Encoder(a14, a2);
    bmalloc::api::tzoneFree(v18, v19);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v15);
  CFRelease(*(v16 - 8));
  if (v14[4] == 1)
  {
    (*(*v14 + 24))(v14);
  }

  else
  {
    --v14[4];
  }

  _Unwind_Resume(a1);
}

void WebKit::PlaybackSessionModelContext::enterFullscreen(WebKit::PlaybackSessionModelContext *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    v3 = *(v1 + 8);
    if (v3)
    {
      v4 = *(v3 + 80);
      if (v4)
      {
        atomic_fetch_add(v4 + 2, 1u);
        v5 = *(this + 42);
        v23[0] = "PlaybackSessionModelContext";
        v23[1] = 28;
        v24 = "enterFullscreen";
        v25 = v5;
        if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v4, &WebKit2LogMedia, 0, v23))
        {
          WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogMedia, 0, v23);
        }

        if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v4 + 2);
          (*(*v4 + 8))(v4);
        }
      }
    }

    v6 = *(this + 3);
    if (v6)
    {
      v7 = *(v6 + 8);
      if (v7)
      {
        v8 = *(v7 + 16);
        *(v7 + 16) = v8 + 1;
        v9 = *(v7 + 32);
        if (v9)
        {
          v10 = *(v9 + 8);
          if (v10)
          {
            v12 = *(this + 4);
            v11 = *(this + 5);
            CFRetain(*(v10 - 8));
            v23[0] = v11;
            {
              WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
            }

            v13 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v23);
            if (v13)
            {
              v14 = v13;
              atomic_fetch_add(v13 + 4, 1u);
              v15 = WebKit::WebPageProxy::webPageIDInProcess((v10 - 16), v13);
              v17 = IPC::Encoder::operator new(0x238, v16);
              *v17 = 868;
              *(v17 + 2) = 0;
              *(v17 + 3) = 0;
              *(v17 + 1) = v15;
              *(v17 + 68) = 0;
              *(v17 + 70) = 0;
              *(v17 + 69) = 0;
              IPC::Encoder::encodeHeader(v17);
              v26 = v17;
              IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, v12);
              LOBYTE(v23[0]) = 0;
              LOBYTE(v24) = 0;
              WebKit::AuxiliaryProcessProxy::sendMessage(v14, &v26, 0, v23, 1);
              if (v24 == 1)
              {
                v19 = v23[0];
                v23[0] = 0;
                if (v19)
                {
                  (*(*v19 + 8))(v19);
                }
              }

              v20 = v26;
              v26 = 0;
              if (v20)
              {
                IPC::Encoder::~Encoder(v20, v18);
                bmalloc::api::tzoneFree(v21, v22);
              }

              WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v14 + 16));
            }

            CFRelease(*(v10 - 8));
            v8 = *(v7 + 16) - 1;
          }
        }

        if (v8)
        {
          *(v7 + 16) = v8;
        }

        else
        {
          (*(*v7 + 24))(v7);
        }
      }
    }
  }
}

void sub_19DC47918(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, IPC::Encoder *a14)
{
  if (a12 == 1 && a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (a14)
  {
    IPC::Encoder::~Encoder(a14, a2);
    bmalloc::api::tzoneFree(v18, v19);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v15);
  CFRelease(*(v16 - 8));
  if (v14[4] == 1)
  {
    (*(*v14 + 24))(v14);
  }

  else
  {
    --v14[4];
  }

  _Unwind_Resume(a1);
}

void WebKit::PlaybackSessionModelContext::setPlayerIdentifierForVideoElement(WebKit::PlaybackSessionModelContext *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    v3 = *(v1 + 8);
    if (v3)
    {
      v4 = *(v3 + 80);
      if (v4)
      {
        atomic_fetch_add(v4 + 2, 1u);
        v5 = *(this + 42);
        v23[0] = "PlaybackSessionModelContext";
        v23[1] = 28;
        v24 = "setPlayerIdentifierForVideoElement";
        v25 = v5;
        if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v4, &WebKit2LogMedia, 0, v23))
        {
          WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogMedia, 0, v23);
        }

        if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v4 + 2);
          (*(*v4 + 8))(v4);
        }
      }
    }

    v6 = *(this + 3);
    if (v6)
    {
      v7 = *(v6 + 8);
      if (v7)
      {
        v8 = *(v7 + 16);
        *(v7 + 16) = v8 + 1;
        v9 = *(v7 + 32);
        if (v9)
        {
          v10 = *(v9 + 8);
          if (v10)
          {
            v12 = *(this + 4);
            v11 = *(this + 5);
            CFRetain(*(v10 - 8));
            v23[0] = v11;
            {
              WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
            }

            v13 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v23);
            if (v13)
            {
              v14 = v13;
              atomic_fetch_add(v13 + 4, 1u);
              v15 = WebKit::WebPageProxy::webPageIDInProcess((v10 - 16), v13);
              v17 = IPC::Encoder::operator new(0x238, v16);
              *v17 = 883;
              *(v17 + 2) = 0;
              *(v17 + 3) = 0;
              *(v17 + 1) = v15;
              *(v17 + 68) = 0;
              *(v17 + 70) = 0;
              *(v17 + 69) = 0;
              IPC::Encoder::encodeHeader(v17);
              v26 = v17;
              IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, v12);
              LOBYTE(v23[0]) = 0;
              LOBYTE(v24) = 0;
              WebKit::AuxiliaryProcessProxy::sendMessage(v14, &v26, 0, v23, 1);
              if (v24 == 1)
              {
                v19 = v23[0];
                v23[0] = 0;
                if (v19)
                {
                  (*(*v19 + 8))(v19);
                }
              }

              v20 = v26;
              v26 = 0;
              if (v20)
              {
                IPC::Encoder::~Encoder(v20, v18);
                bmalloc::api::tzoneFree(v21, v22);
              }

              WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v14 + 16));
            }

            CFRelease(*(v10 - 8));
            v8 = *(v7 + 16) - 1;
          }
        }

        if (v8)
        {
          *(v7 + 16) = v8;
        }

        else
        {
          (*(*v7 + 24))(v7);
        }
      }
    }
  }
}