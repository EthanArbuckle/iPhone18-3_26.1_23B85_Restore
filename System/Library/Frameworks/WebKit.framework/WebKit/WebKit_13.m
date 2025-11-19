void sub_19D6541FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WTF::createNSArray<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(a1 + 12)];
  *a2 = v4;
  v6 = *(a1 + 12);
  if (v6)
  {
    v7 = v4;
    v8 = *a1;
    v9 = 8 * v6;
    do
    {
      WTF::makeNSArrayElement(&v11, v8, v5);
      if (v11)
      {
        [v7 addObject:?];
        v10 = v11;
        v11 = 0;
        if (v10)
        {
        }
      }

      v8 = (v8 + 8);
      v9 -= 8;
    }

    while (v9);
  }
}

void sub_19D6542B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  *v10 = 0;
  if (v11)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebPushD::ApplePushServiceConnection::setIgnoredTopics(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  WTF::createNSArray<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a2, &v4);
  [v2 _setIgnoredTopics:v4];
  v3 = v4;
  v4 = 0;
  if (v3)
  {
  }
}

void sub_19D654330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebPushD::ApplePushServiceConnection::setOpportunisticTopics(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  WTF::createNSArray<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a2, &v4);
  [v2 _setOpportunisticTopics:v4];
  v3 = v4;
  v4 = 0;
  if (v3)
  {
  }
}

void sub_19D65439C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebPushD::ApplePushServiceConnection::setNonWakingTopics(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  WTF::createNSArray<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a2, &v4);
  [v2 _setNonWakingTopics:v4];
  v3 = v4;
  v4 = 0;
  if (v3)
  {
  }
}

void sub_19D654408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebPushD::ApplePushServiceConnection::setTopicLists(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 88);
  WTF::createNSArray<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a2, &v14);
  v4 = v14;
  WTF::createNSArray<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a2 + 16, &v13);
  v5 = v13;
  WTF::createNSArray<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a2 + 32, &v12);
  v6 = v12;
  WTF::createNSArray<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a2 + 48, &v11);
  [v3 setEnabledTopics:v4 ignoredTopics:v5 opportunisticTopics:v6 nonWakingTopics:v11];
  v7 = v11;
  v11 = 0;
  if (v7)
  {
  }

  v8 = v12;
  v12 = 0;
  if (v8)
  {
  }

  v9 = v13;
  v13 = 0;
  if (v9)
  {
  }

  v10 = v14;
  v14 = 0;
  if (v10)
  {
  }
}

void sub_19D6544F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, void *a12)
{
  if (a9)
  {
  }

  if (a10)
  {
  }

  if (a11)
  {
  }

  if (a12)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::CompletionHandler<void ()(BOOL,NSError *)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::CompletionHandler<void ()(BOOL,NSError *)>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::CompletionHandler<void ()(BOOL,NSError *)>,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WTF::CompletionHandler<void ()(BOOL,NSError *)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 2) != -1)
      {
        v5 = *v4;
        *v4 = 0;
        if (v5)
        {
          (*(*v5 + 8))(v5);
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::CompletionHandler<void ()(NSString *,NSError *)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::CompletionHandler<void ()(NSString *,NSError *)>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::CompletionHandler<void ()(NSString *,NSError *)>,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WTF::CompletionHandler<void ()(NSString *,NSError *)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 2) != -1)
      {
        v5 = *v4;
        *v4 = 0;
        if (v5)
        {
          (*(*v5 + 8))(v5);
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

void WTF::VectorTypeOperations<std::pair<WTF::RetainPtr<NSString>,WTF::RetainPtr<NSDictionary>>>::destruct(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = 16 * a2;
    v3 = (a1 + 8);
    do
    {
      v4 = *v3;
      *v3 = 0;
      if (v4)
      {
      }

      v5 = *(v3 - 1);
      *(v3 - 1) = 0;
      if (v5)
      {
      }

      v3 += 2;
      v2 -= 16;
    }

    while (v2);
  }
}

unsigned int *WTF::BlockPtr<void ()(APSURLToken *,NSError *)>::fromCallable<WebPushD::ApplePushServiceConnection::subscribe(WTF::String const&,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(NSString *,NSError *)> &&)::$_0>(WebPushD::ApplePushServiceConnection::subscribe(WTF::String const&,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(NSString *,NSError *)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1, void *a2)
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

uint64_t WTF::BlockPtr<void ()(APSURLToken *,NSError *)>::fromCallable<WebPushD::ApplePushServiceConnection::subscribe(WTF::String const&,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(NSString *,NSError *)> &&)::$_0>(WebPushD::ApplePushServiceConnection::subscribe(WTF::String const&,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(NSString *,NSError *)> &&)::$_0)::{lambda(void *,APSURLToken *,NSError *)#1}::__invoke(uint64_t result, void *a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      ++*(v3 + 16);
      v5 = *(v3 + 112);
      if (!v5)
      {
        goto LABEL_13;
      }

      v6 = *(result + 40);
      if (v6 == -1 || !v6)
      {
        __break(0xC471u);
        JUMPOUT(0x19D6548DCLL);
      }

      v7 = *(v5 - 8);
      v8 = 9 * ((v6 + ~(v6 << 15)) ^ ((v6 + ~(v6 << 15)) >> 10));
      v9 = (v8 ^ (v8 >> 6)) + ~((v8 ^ (v8 >> 6)) << 11);
      v10 = v7 & (v9 ^ HIWORD(v9));
      v11 = *(v5 + 16 * v10);
      if (v11 != v6)
      {
        v12 = 1;
        while (v11)
        {
          v10 = (v10 + v12) & v7;
          v11 = *(v5 + 16 * v10);
          ++v12;
          if (v11 == v6)
          {
            goto LABEL_12;
          }
        }

        v10 = *(v5 - 4);
      }

LABEL_12:
      v13 = *(v5 - 4);
      if (v10 != v13)
      {
        v14 = v5 + 16 * v10;
        v16 = *(v14 + 8);
        *v14 = -1;
        *(v14 + 8) = 0;
        v15 = vadd_s32(*(v5 - 16), 0xFFFFFFFF00000001);
        *(v5 - 16) = v15;
        if (v13 >= 9 && 6 * v15.i32[1] < v13)
        {
          WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::CompletionHandler<void ()(NSString *,NSError *)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::CompletionHandler<void ()(NSString *,NSError *)>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::CompletionHandler<void ()(NSString *,NSError *)>,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WTF::CompletionHandler<void ()(NSString *,NSError *)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::rehash((v3 + 112), v13 >> 1);
        }
      }

      else
      {
LABEL_13:
        v16 = 0;
      }

      [a2 tokenURL];
      WTF::CompletionHandler<void ()(NSString *,NSError *)>::operator()(&v16);
      result = v16;
      v16 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      if (*(v3 + 16) == 1)
      {
        return (*(*v3 + 8))(v3);
      }

      else
      {
        --*(v3 + 16);
      }
    }
  }

  return result;
}

void sub_19D654900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  if (v10[4] == 1)
  {
    (*(*v10 + 8))(v10);
  }

  else
  {
    --v10[4];
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::CompletionHandler<void ()(NSString *,NSError *)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

_DWORD *WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::CompletionHandler<void ()(NSString *,NSError *)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::CompletionHandler<void ()(NSString *,NSError *)>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::CompletionHandler<void ()(NSString *,NSError *)>,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WTF::CompletionHandler<void ()(NSString *,NSError *)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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

  result = WTF::fastMalloc((16 * a2 + 16));
  if (a2)
  {
    v9 = a2;
    v10 = result + 6;
    do
    {
      *(v10 - 2) = 0;
      *v10 = 0;
      v10 += 2;
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
      v12 = (v4 + 16 * v11);
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

          v17 = 0;
          v18 = 9 * ((v13 + ~(v13 << 15)) ^ ((v13 + ~(v13 << 15)) >> 10));
          v19 = ((v18 ^ (v18 >> 6)) + ~((v18 ^ (v18 >> 6)) << 11)) ^ (((v18 ^ (v18 >> 6)) + ~((v18 ^ (v18 >> 6)) << 11)) >> 16);
          do
          {
            v20 = v19 & v16;
            v19 = ++v17 + v20;
          }

          while (*(v15 + 16 * v20));
          v21 = v15 + 16 * v20;
          v22 = *(v21 + 8);
          *(v21 + 8) = 0;
          if (v22)
          {
            (*(*v22 + 8))(v22);
          }

          *v21 = *v12;
          v23 = *(v12 + 1);
          *(v12 + 1) = 0;
          *(v21 + 8) = v23;
          v14 = *(v12 + 1);
          *(v12 + 1) = 0;
          if (!v14)
          {
            goto LABEL_22;
          }

LABEL_21:
          (*(*v14 + 8))(v14);
          goto LABEL_22;
        }

        v14 = *(v12 + 1);
        *(v12 + 1) = 0;
        if (v14)
        {
          goto LABEL_21;
        }
      }

LABEL_22:
      if (++v11 == v5)
      {
        goto LABEL_25;
      }
    }
  }

  if (v4)
  {
LABEL_25:

    return WTF::fastFree((v4 - 16), v8);
  }

  return result;
}

unsigned int *WTF::BlockPtr<void ()(BOOL,NSError *)>::fromCallable<WebPushD::ApplePushServiceConnection::unsubscribe(WTF::String const&,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(BOOL,NSError *)> &&)::$_0>(WebPushD::ApplePushServiceConnection::unsubscribe(WTF::String const&,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(BOOL,NSError *)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1, void *a2)
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

uint64_t WTF::BlockPtr<void ()(BOOL,NSError *)>::fromCallable<WebPushD::ApplePushServiceConnection::unsubscribe(WTF::String const&,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(BOOL,NSError *)> &&)::$_0>(WebPushD::ApplePushServiceConnection::unsubscribe(WTF::String const&,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(BOOL,NSError *)> &&)::$_0)::{lambda(void *,BOOL,NSError *)#1}::__invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      ++*(v2 + 16);
      v3 = *(v2 + 120);
      if (!v3)
      {
        goto LABEL_13;
      }

      v4 = *(result + 40);
      if (v4 == -1 || !v4)
      {
        __break(0xC471u);
        JUMPOUT(0x19D654E68);
      }

      v5 = *(v3 - 8);
      v6 = 9 * ((v4 + ~(v4 << 15)) ^ ((v4 + ~(v4 << 15)) >> 10));
      v7 = (v6 ^ (v6 >> 6)) + ~((v6 ^ (v6 >> 6)) << 11);
      v8 = v5 & (v7 ^ HIWORD(v7));
      v9 = *(v3 + 16 * v8);
      if (v9 != v4)
      {
        v10 = 1;
        while (v9)
        {
          v8 = (v8 + v10) & v5;
          v9 = *(v3 + 16 * v8);
          ++v10;
          if (v9 == v4)
          {
            goto LABEL_12;
          }
        }

        v8 = *(v3 - 4);
      }

LABEL_12:
      v11 = *(v3 - 4);
      if (v8 != v11)
      {
        v12 = v3 + 16 * v8;
        v14 = *(v12 + 8);
        *v12 = -1;
        *(v12 + 8) = 0;
        v13 = vadd_s32(*(v3 - 16), 0xFFFFFFFF00000001);
        *(v3 - 16) = v13;
        if (v11 >= 9 && 6 * v13.i32[1] < v11)
        {
          WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::CompletionHandler<void ()(BOOL,NSError *)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::CompletionHandler<void ()(BOOL,NSError *)>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::CompletionHandler<void ()(BOOL,NSError *)>,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WTF::CompletionHandler<void ()(BOOL,NSError *)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::rehash((v2 + 120), v11 >> 1);
        }
      }

      else
      {
LABEL_13:
        v14 = 0;
      }

      WTF::CompletionHandler<void ()(BOOL,NSError *)>::operator()(&v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      if (*(v2 + 16) == 1)
      {
        return (*(*v2 + 8))(v2);
      }

      else
      {
        --*(v2 + 16);
      }
    }
  }

  return result;
}

void sub_19D654E8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  if (v10[4] == 1)
  {
    (*(*v10 + 8))(v10);
  }

  else
  {
    --v10[4];
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::CompletionHandler<void ()(BOOL,NSError *)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

_DWORD *WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::CompletionHandler<void ()(BOOL,NSError *)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::CompletionHandler<void ()(BOOL,NSError *)>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::CompletionHandler<void ()(BOOL,NSError *)>,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WTF::CompletionHandler<void ()(BOOL,NSError *)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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

  result = WTF::fastMalloc((16 * a2 + 16));
  if (a2)
  {
    v9 = a2;
    v10 = result + 6;
    do
    {
      *(v10 - 2) = 0;
      *v10 = 0;
      v10 += 2;
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
      v12 = (v4 + 16 * v11);
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

          v17 = 0;
          v18 = 9 * ((v13 + ~(v13 << 15)) ^ ((v13 + ~(v13 << 15)) >> 10));
          v19 = ((v18 ^ (v18 >> 6)) + ~((v18 ^ (v18 >> 6)) << 11)) ^ (((v18 ^ (v18 >> 6)) + ~((v18 ^ (v18 >> 6)) << 11)) >> 16);
          do
          {
            v20 = v19 & v16;
            v19 = ++v17 + v20;
          }

          while (*(v15 + 16 * v20));
          v21 = v15 + 16 * v20;
          v22 = *(v21 + 8);
          *(v21 + 8) = 0;
          if (v22)
          {
            (*(*v22 + 8))(v22);
          }

          *v21 = *v12;
          v23 = *(v12 + 1);
          *(v12 + 1) = 0;
          *(v21 + 8) = v23;
          v14 = *(v12 + 1);
          *(v12 + 1) = 0;
          if (!v14)
          {
            goto LABEL_22;
          }

LABEL_21:
          (*(*v14 + 8))(v14);
          goto LABEL_22;
        }

        v14 = *(v12 + 1);
        *(v12 + 1) = 0;
        if (v14)
        {
          goto LABEL_21;
        }
      }

LABEL_22:
      if (++v11 == v5)
      {
        goto LABEL_25;
      }
    }
  }

  if (v4)
  {
LABEL_25:

    return WTF::fastFree((v4 - 16), v8);
  }

  return result;
}

_DWORD *WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::CompletionHandler<void ()(NSString *,NSError *)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::CompletionHandler<void ()(NSString *,NSError *)>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::CompletionHandler<void ()(NSString *,NSError *)>,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WTF::CompletionHandler<void ()(NSString *,NSError *)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  return WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::CompletionHandler<void ()(NSString *,NSError *)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::CompletionHandler<void ()(NSString *,NSError *)>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::CompletionHandler<void ()(NSString *,NSError *)>,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WTF::CompletionHandler<void ()(NSString *,NSError *)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::rehash(a1, v3);
}

_DWORD *WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::CompletionHandler<void ()(BOOL,NSError *)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::CompletionHandler<void ()(BOOL,NSError *)>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::CompletionHandler<void ()(BOOL,NSError *)>,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WTF::CompletionHandler<void ()(BOOL,NSError *)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  return WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::CompletionHandler<void ()(BOOL,NSError *)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::CompletionHandler<void ()(BOOL,NSError *)>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::CompletionHandler<void ()(BOOL,NSError *)>,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WTF::CompletionHandler<void ()(BOOL,NSError *)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::rehash(a1, v3);
}

uint64_t WebKit::AssertionCapability::environmentIdentifier@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(this + 16);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a2 = v2;
  return this;
}

uint64_t WTF::BlockPtr<void ()(void)>::fromCallable<WTF::Function<void ()(void)>>(WTF::Function<void ()(void)>)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t WebKit::AuthenticationServicesCoreLibrary(WebKit *this)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN6WebKit33AuthenticationServicesCoreLibraryEb_block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v3 = this;
  if (qword_1ED641808 != -1)
  {
    dispatch_once(&qword_1ED641808, block);
  }

  return _MergedGlobals_42;
}

uint64_t ___ZN6WebKit33AuthenticationServicesCoreLibraryEb_block_invoke(uint64_t a1)
{
  result = dlopen("/System/Library/PrivateFrameworks/AuthenticationServicesCore.framework/AuthenticationServicesCore", 2);
  _MergedGlobals_42 = result;
  if ((*(a1 + 32) & 1) == 0 && !result)
  {
    result = 31;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::initASCWebKitSPISupport(WebKit *this)
{
  if (qword_1ED641820 != -1)
  {
    dispatch_once(&qword_1ED641820, &__block_literal_global_6);
  }

  return qword_1ED641828;
}

uint64_t WebKit::get_AuthenticationServicesCore_ASCAuthorizationErrorDomain(WebKit *this)
{
  if (qword_1ED641818 != -1)
  {
    dispatch_once(&qword_1ED641818, &__block_literal_global_1);
  }

  return qword_1ED641810;
}

uint64_t ___ZN6WebKit58get_AuthenticationServicesCore_ASCAuthorizationErrorDomainEv_block_invoke()
{
  v0 = WebKit::AuthenticationServicesCoreLibrary(0);
  result = dlsym(v0, "ASCAuthorizationErrorDomain");
  if (result)
  {
    qword_1ED641810 = *result;
  }

  else
  {
    result = 35;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::initASCAgentProxy(WebKit *this)
{
  if (qword_1ED641830 != -1)
  {
    dispatch_once(&qword_1ED641830, &__block_literal_global_8);
  }

  return qword_1ED641838;
}

uint64_t WebKit::initASCAppleIDCredential(WebKit *this)
{
  if (qword_1ED641840 != -1)
  {
    dispatch_once(&qword_1ED641840, &__block_literal_global_10);
  }

  return qword_1ED641848;
}

uint64_t WebKit::initASCAuthorizationPresentationContext(WebKit *this)
{
  if (qword_1ED641850 != -1)
  {
    dispatch_once(&qword_1ED641850, &__block_literal_global_12);
  }

  return qword_1ED641858;
}

uint64_t WebKit::initASCAuthorizationPresenter(WebKit *this)
{
  if (qword_1ED641860 != -1)
  {
    dispatch_once(&qword_1ED641860, &__block_literal_global_14);
  }

  return qword_1ED641868;
}

uint64_t WebKit::initASCCredentialRequestContext(WebKit *this)
{
  if (qword_1ED641870 != -1)
  {
    dispatch_once(&qword_1ED641870, &__block_literal_global_18_0);
  }

  return qword_1ED641878;
}

uint64_t WebKit::initASCWebAuthenticationExtensionsClientInputs(WebKit *this)
{
  if (qword_1ED641880 != -1)
  {
    dispatch_once(&qword_1ED641880, &__block_literal_global_20);
  }

  return qword_1ED641888;
}

uint64_t WebKit::initASCPlatformPublicKeyCredentialAssertion(WebKit *this)
{
  if (qword_1ED641890 != -1)
  {
    dispatch_once(&qword_1ED641890, &__block_literal_global_22);
  }

  return qword_1ED641898;
}

uint64_t WebKit::initASCPlatformPublicKeyCredentialLoginChoice(WebKit *this)
{
  if (qword_1ED6418A0 != -1)
  {
    dispatch_once(&qword_1ED6418A0, &__block_literal_global_24);
  }

  return qword_1ED6418A8;
}

uint64_t WebKit::initASCPlatformPublicKeyCredentialRegistration(WebKit *this)
{
  if (qword_1ED6418B0 != -1)
  {
    dispatch_once(&qword_1ED6418B0, &__block_literal_global_26);
  }

  return qword_1ED6418B8;
}

uint64_t WebKit::initASCPublicKeyCredentialAssertionOptions(WebKit *this)
{
  if (qword_1ED6418C0 != -1)
  {
    dispatch_once(&qword_1ED6418C0, &__block_literal_global_28);
  }

  return qword_1ED6418C8;
}

uint64_t WebKit::initASCPublicKeyCredentialCreationOptions(WebKit *this)
{
  if (qword_1ED6418D0 != -1)
  {
    dispatch_once(&qword_1ED6418D0, &__block_literal_global_30);
  }

  return qword_1ED6418D8;
}

uint64_t WebKit::initASCPublicKeyCredentialDescriptor(WebKit *this)
{
  if (qword_1ED6418E0 != -1)
  {
    dispatch_once(&qword_1ED6418E0, &__block_literal_global_32);
  }

  return qword_1ED6418E8;
}

uint64_t WebKit::initASCSecurityKeyPublicKeyCredentialAssertion(WebKit *this)
{
  if (qword_1ED6418F0 != -1)
  {
    dispatch_once(&qword_1ED6418F0, &__block_literal_global_34);
  }

  return qword_1ED6418F8;
}

uint64_t WebKit::initASCSecurityKeyPublicKeyCredentialLoginChoice(WebKit *this)
{
  if (qword_1ED641900 != -1)
  {
    dispatch_once(&qword_1ED641900, &__block_literal_global_36);
  }

  return qword_1ED641908;
}

uint64_t WebKit::initASCSecurityKeyPublicKeyCredentialRegistration(WebKit *this)
{
  if (qword_1ED641910 != -1)
  {
    dispatch_once(&qword_1ED641910, &__block_literal_global_38);
  }

  return qword_1ED641918;
}

uint64_t WebKit::initASGlobalFrameIdentifier(WebKit *this)
{
  if (qword_1ED641920 != -1)
  {
    dispatch_once(&qword_1ED641920, &__block_literal_global_40);
  }

  return qword_1ED641928;
}

Class ___ZN6WebKitL23initASCWebKitSPISupportEv_block_invoke()
{
  WebKit::AuthenticationServicesCoreLibrary(1);
  result = objc_getClass("ASCWebKitSPISupport");
  qword_1ED641828 = result;
  WebKit::getASCWebKitSPISupportClass[0] = WebKit::ASCWebKitSPISupportFunction;
  return result;
}

uint64_t ___ZN6WebKitL17initASCAgentProxyEv_block_invoke()
{
  WebKit::AuthenticationServicesCoreLibrary(0);
  result = objc_getClass("ASCAgentProxy");
  qword_1ED641838 = result;
  if (result)
  {
    WebKit::getASCAgentProxyClass[0] = WebKit::ASCAgentProxyFunction;
  }

  else
  {
    result = 39;
    __break(0xC471u);
  }

  return result;
}

uint64_t ___ZN6WebKitL24initASCAppleIDCredentialEv_block_invoke()
{
  WebKit::AuthenticationServicesCoreLibrary(0);
  result = objc_getClass("ASCAppleIDCredential");
  qword_1ED641848 = result;
  if (result)
  {
    WebKit::getASCAppleIDCredentialClass = WebKit::ASCAppleIDCredentialFunction;
  }

  else
  {
    result = 40;
    __break(0xC471u);
  }

  return result;
}

uint64_t ___ZN6WebKitL39initASCAuthorizationPresentationContextEv_block_invoke()
{
  WebKit::AuthenticationServicesCoreLibrary(0);
  result = objc_getClass("ASCAuthorizationPresentationContext");
  qword_1ED641858 = result;
  if (result)
  {
    WebKit::getASCAuthorizationPresentationContextClass[0] = WebKit::ASCAuthorizationPresentationContextFunction;
  }

  else
  {
    result = 41;
    __break(0xC471u);
  }

  return result;
}

uint64_t ___ZN6WebKitL29initASCAuthorizationPresenterEv_block_invoke()
{
  WebKit::AuthenticationServicesCoreLibrary(0);
  result = objc_getClass("ASCAuthorizationPresenter");
  qword_1ED641868 = result;
  if (result)
  {
    WebKit::getASCAuthorizationPresenterClass[0] = WebKit::ASCAuthorizationPresenterFunction;
  }

  else
  {
    result = 42;
    __break(0xC471u);
  }

  return result;
}

uint64_t ___ZN6WebKitL31initASCCredentialRequestContextEv_block_invoke()
{
  WebKit::AuthenticationServicesCoreLibrary(0);
  result = objc_getClass("ASCCredentialRequestContext");
  qword_1ED641878 = result;
  if (result)
  {
    WebKit::getASCCredentialRequestContextClass[0] = WebKit::ASCCredentialRequestContextFunction;
  }

  else
  {
    result = 44;
    __break(0xC471u);
  }

  return result;
}

Class ___ZN6WebKitL46initASCWebAuthenticationExtensionsClientInputsEv_block_invoke()
{
  WebKit::AuthenticationServicesCoreLibrary(1);
  result = objc_getClass("ASCWebAuthenticationExtensionsClientInputs");
  qword_1ED641888 = result;
  WebKit::getASCWebAuthenticationExtensionsClientInputsClass[0] = WebKit::ASCWebAuthenticationExtensionsClientInputsFunction;
  return result;
}

uint64_t ___ZN6WebKitL43initASCPlatformPublicKeyCredentialAssertionEv_block_invoke()
{
  WebKit::AuthenticationServicesCoreLibrary(0);
  result = objc_getClass("ASCPlatformPublicKeyCredentialAssertion");
  qword_1ED641898 = result;
  if (result)
  {
    WebKit::getASCPlatformPublicKeyCredentialAssertionClass[0] = WebKit::ASCPlatformPublicKeyCredentialAssertionFunction;
  }

  else
  {
    result = 46;
    __break(0xC471u);
  }

  return result;
}

uint64_t ___ZN6WebKitL45initASCPlatformPublicKeyCredentialLoginChoiceEv_block_invoke()
{
  WebKit::AuthenticationServicesCoreLibrary(0);
  result = objc_getClass("ASCPlatformPublicKeyCredentialLoginChoice");
  qword_1ED6418A8 = result;
  if (result)
  {
    WebKit::getASCPlatformPublicKeyCredentialLoginChoiceClass[0] = WebKit::ASCPlatformPublicKeyCredentialLoginChoiceFunction;
  }

  else
  {
    result = 47;
    __break(0xC471u);
  }

  return result;
}

uint64_t ___ZN6WebKitL46initASCPlatformPublicKeyCredentialRegistrationEv_block_invoke()
{
  WebKit::AuthenticationServicesCoreLibrary(0);
  result = objc_getClass("ASCPlatformPublicKeyCredentialRegistration");
  qword_1ED6418B8 = result;
  if (result)
  {
    WebKit::getASCPlatformPublicKeyCredentialRegistrationClass[0] = WebKit::ASCPlatformPublicKeyCredentialRegistrationFunction;
  }

  else
  {
    result = 48;
    __break(0xC471u);
  }

  return result;
}

uint64_t ___ZN6WebKitL42initASCPublicKeyCredentialAssertionOptionsEv_block_invoke()
{
  WebKit::AuthenticationServicesCoreLibrary(0);
  result = objc_getClass("ASCPublicKeyCredentialAssertionOptions");
  qword_1ED6418C8 = result;
  if (result)
  {
    WebKit::getASCPublicKeyCredentialAssertionOptionsClass[0] = WebKit::ASCPublicKeyCredentialAssertionOptionsFunction;
  }

  else
  {
    result = 49;
    __break(0xC471u);
  }

  return result;
}

uint64_t ___ZN6WebKitL41initASCPublicKeyCredentialCreationOptionsEv_block_invoke()
{
  WebKit::AuthenticationServicesCoreLibrary(0);
  result = objc_getClass("ASCPublicKeyCredentialCreationOptions");
  qword_1ED6418D8 = result;
  if (result)
  {
    WebKit::getASCPublicKeyCredentialCreationOptionsClass[0] = WebKit::ASCPublicKeyCredentialCreationOptionsFunction;
  }

  else
  {
    result = 50;
    __break(0xC471u);
  }

  return result;
}

uint64_t ___ZN6WebKitL36initASCPublicKeyCredentialDescriptorEv_block_invoke()
{
  WebKit::AuthenticationServicesCoreLibrary(0);
  result = objc_getClass("ASCPublicKeyCredentialDescriptor");
  qword_1ED6418E8 = result;
  if (result)
  {
    WebKit::getASCPublicKeyCredentialDescriptorClass[0] = WebKit::ASCPublicKeyCredentialDescriptorFunction;
  }

  else
  {
    result = 51;
    __break(0xC471u);
  }

  return result;
}

uint64_t ___ZN6WebKitL46initASCSecurityKeyPublicKeyCredentialAssertionEv_block_invoke()
{
  WebKit::AuthenticationServicesCoreLibrary(0);
  result = objc_getClass("ASCSecurityKeyPublicKeyCredentialAssertion");
  qword_1ED6418F8 = result;
  if (result)
  {
    WebKit::getASCSecurityKeyPublicKeyCredentialAssertionClass[0] = WebKit::ASCSecurityKeyPublicKeyCredentialAssertionFunction;
  }

  else
  {
    result = 52;
    __break(0xC471u);
  }

  return result;
}

uint64_t ___ZN6WebKitL48initASCSecurityKeyPublicKeyCredentialLoginChoiceEv_block_invoke()
{
  WebKit::AuthenticationServicesCoreLibrary(0);
  result = objc_getClass("ASCSecurityKeyPublicKeyCredentialLoginChoice");
  qword_1ED641908 = result;
  if (result)
  {
    WebKit::getASCSecurityKeyPublicKeyCredentialLoginChoiceClass[0] = WebKit::ASCSecurityKeyPublicKeyCredentialLoginChoiceFunction;
  }

  else
  {
    result = 53;
    __break(0xC471u);
  }

  return result;
}

uint64_t ___ZN6WebKitL49initASCSecurityKeyPublicKeyCredentialRegistrationEv_block_invoke()
{
  WebKit::AuthenticationServicesCoreLibrary(0);
  result = objc_getClass("ASCSecurityKeyPublicKeyCredentialRegistration");
  qword_1ED641918 = result;
  if (result)
  {
    WebKit::getASCSecurityKeyPublicKeyCredentialRegistrationClass[0] = WebKit::ASCSecurityKeyPublicKeyCredentialRegistrationFunction;
  }

  else
  {
    result = 54;
    __break(0xC471u);
  }

  return result;
}

Class ___ZN6WebKitL27initASGlobalFrameIdentifierEv_block_invoke()
{
  WebKit::AuthenticationServicesCoreLibrary(1);
  result = objc_getClass("ASGlobalFrameIdentifier");
  qword_1ED641928 = result;
  WebKit::getASGlobalFrameIdentifierClass[0] = WebKit::ASGlobalFrameIdentifierFunction;
  return result;
}

uint64_t WebKit::AuthenticationServicesLibrary(WebKit *this)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN6WebKit29AuthenticationServicesLibraryEb_block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v3 = 0;
  if (qword_1ED641938 != -1)
  {
    dispatch_once(&qword_1ED641938, block);
  }

  return _MergedGlobals_43;
}

uint64_t ___ZN6WebKit29AuthenticationServicesLibraryEb_block_invoke(uint64_t a1)
{
  result = dlopen("/System/Library/Frameworks/AuthenticationServices.framework/AuthenticationServices", 2);
  _MergedGlobals_43 = result;
  if ((*(a1 + 32) & 1) == 0 && !result)
  {
    result = 30;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::initASAuthorizationController(WebKit *this)
{
  if (qword_1ED641950 != -1)
  {
    dispatch_once(&qword_1ED641950, &__block_literal_global_4);
  }

  return qword_1ED641958;
}

uint64_t WebKit::initASAuthorizationPlatformPublicKeyCredentialProvider(WebKit *this)
{
  if (qword_1ED641960 != -1)
  {
    dispatch_once(&qword_1ED641960, &__block_literal_global_6_0);
  }

  return qword_1ED641968;
}

uint64_t WebKit::initASAuthorizationSecurityKeyPublicKeyCredentialProvider(WebKit *this)
{
  if (qword_1ED641970 != -1)
  {
    dispatch_once(&qword_1ED641970, &__block_literal_global_8_0);
  }

  return qword_1ED641978;
}

uint64_t WebKit::initASPublicKeyCredentialClientData(WebKit *this)
{
  if (qword_1ED641980 != -1)
  {
    dispatch_once(&qword_1ED641980, &__block_literal_global_10_0);
  }

  return qword_1ED641988;
}

uint64_t WebKit::initASAuthorizationPlatformPublicKeyCredentialRegistration(WebKit *this)
{
  if (qword_1ED641990 != -1)
  {
    dispatch_once(&qword_1ED641990, &__block_literal_global_12_0);
  }

  return qword_1ED641998;
}

uint64_t WebKit::initASAuthorizationSecurityKeyPublicKeyCredentialRegistration(WebKit *this)
{
  if (qword_1ED6419A0 != -1)
  {
    dispatch_once(&qword_1ED6419A0, &__block_literal_global_14_0);
  }

  return qword_1ED6419A8;
}

uint64_t WebKit::initASAuthorizationPlatformPublicKeyCredentialAssertion(WebKit *this)
{
  if (qword_1ED6419B0 != -1)
  {
    dispatch_once(&qword_1ED6419B0, &__block_literal_global_16);
  }

  return qword_1ED6419B8;
}

uint64_t WebKit::initASAuthorizationPublicKeyCredentialParameters(WebKit *this)
{
  if (qword_1ED6419C0 != -1)
  {
    dispatch_once(&qword_1ED6419C0, &__block_literal_global_18_1);
  }

  return qword_1ED6419C8;
}

uint64_t WebKit::initASAuthorizationPlatformPublicKeyCredentialDescriptor(WebKit *this)
{
  if (qword_1ED6419D0 != -1)
  {
    dispatch_once(&qword_1ED6419D0, &__block_literal_global_20_0);
  }

  return qword_1ED6419D8;
}

uint64_t WebKit::initASAuthorizationSecurityKeyPublicKeyCredentialDescriptor(WebKit *this)
{
  if (qword_1ED6419E0 != -1)
  {
    dispatch_once(&qword_1ED6419E0, &__block_literal_global_22_0);
  }

  return qword_1ED6419E8;
}

uint64_t WebKit::initASAuthorizationSecurityKeyPublicKeyCredentialAssertion(WebKit *this)
{
  if (qword_1ED6419F0 != -1)
  {
    dispatch_once(&qword_1ED6419F0, &__block_literal_global_24_0);
  }

  return qword_1ED6419F8;
}

uint64_t WebKit::initASAuthorizationPublicKeyCredentialLargeBlobAssertionInput(WebKit *this)
{
  if (qword_1ED641A00 != -1)
  {
    dispatch_once(&qword_1ED641A00, &__block_literal_global_26_0);
  }

  return qword_1ED641A08;
}

uint64_t WebKit::initASAuthorizationPublicKeyCredentialLargeBlobRegistrationInput(WebKit *this)
{
  if (qword_1ED641A10 != -1)
  {
    dispatch_once(&qword_1ED641A10, &__block_literal_global_28_0);
  }

  return qword_1ED641A18;
}

uint64_t WebKit::get_AuthenticationServices_ASAuthorizationErrorDomain(WebKit *this)
{
  if (qword_1ED641948 != -1)
  {
    dispatch_once(&qword_1ED641948, &__block_literal_global_2);
  }

  return qword_1ED641940;
}

uint64_t ___ZN6WebKit53get_AuthenticationServices_ASAuthorizationErrorDomainEv_block_invoke(WebKit *a1)
{
  v1 = WebKit::AuthenticationServicesLibrary(a1);
  result = dlsym(v1, "ASAuthorizationErrorDomain");
  if (result)
  {
    qword_1ED641940 = *result;
  }

  else
  {
    result = 45;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::initASAuthorizationPublicKeyCredentialPRFRegistrationInput(WebKit *this)
{
  if (qword_1ED641A20 != -1)
  {
    dispatch_once(&qword_1ED641A20, &__block_literal_global_30_0);
  }

  return qword_1ED641A28;
}

uint64_t WebKit::initASAuthorizationPublicKeyCredentialPRFAssertionInputValues(WebKit *this)
{
  if (qword_1ED641A30 != -1)
  {
    dispatch_once(&qword_1ED641A30, &__block_literal_global_32_0);
  }

  return qword_1ED641A38;
}

uint64_t WebKit::initASAuthorizationPublicKeyCredentialPRFAssertionInput(WebKit *this)
{
  if (qword_1ED641A40 != -1)
  {
    dispatch_once(&qword_1ED641A40, &__block_literal_global_34_0);
  }

  return qword_1ED641A48;
}

uint64_t ___ZN6WebKitL29initASAuthorizationControllerEv_block_invoke(WebKit *a1)
{
  WebKit::AuthenticationServicesLibrary(a1);
  result = objc_getClass("ASAuthorizationController");
  qword_1ED641958 = result;
  if (result)
  {
    WebKit::getASAuthorizationControllerClass[0] = WebKit::ASAuthorizationControllerFunction;
  }

  else
  {
    result = 32;
    __break(0xC471u);
  }

  return result;
}

uint64_t ___ZN6WebKitL54initASAuthorizationPlatformPublicKeyCredentialProviderEv_block_invoke(WebKit *a1)
{
  WebKit::AuthenticationServicesLibrary(a1);
  result = objc_getClass("ASAuthorizationPlatformPublicKeyCredentialProvider");
  qword_1ED641968 = result;
  if (result)
  {
    WebKit::getASAuthorizationPlatformPublicKeyCredentialProviderClass[0] = WebKit::ASAuthorizationPlatformPublicKeyCredentialProviderFunction;
  }

  else
  {
    result = 33;
    __break(0xC471u);
  }

  return result;
}

uint64_t ___ZN6WebKitL57initASAuthorizationSecurityKeyPublicKeyCredentialProviderEv_block_invoke(WebKit *a1)
{
  WebKit::AuthenticationServicesLibrary(a1);
  result = objc_getClass("ASAuthorizationSecurityKeyPublicKeyCredentialProvider");
  qword_1ED641978 = result;
  if (result)
  {
    WebKit::getASAuthorizationSecurityKeyPublicKeyCredentialProviderClass[0] = WebKit::ASAuthorizationSecurityKeyPublicKeyCredentialProviderFunction;
  }

  else
  {
    result = 34;
    __break(0xC471u);
  }

  return result;
}

uint64_t ___ZN6WebKitL35initASPublicKeyCredentialClientDataEv_block_invoke(WebKit *a1)
{
  WebKit::AuthenticationServicesLibrary(a1);
  result = objc_getClass("ASPublicKeyCredentialClientData");
  qword_1ED641988 = result;
  if (result)
  {
    WebKit::getASPublicKeyCredentialClientDataClass[0] = WebKit::ASPublicKeyCredentialClientDataFunction;
  }

  else
  {
    result = 35;
    __break(0xC471u);
  }

  return result;
}

uint64_t ___ZN6WebKitL58initASAuthorizationPlatformPublicKeyCredentialRegistrationEv_block_invoke(WebKit *a1)
{
  WebKit::AuthenticationServicesLibrary(a1);
  result = objc_getClass("ASAuthorizationPlatformPublicKeyCredentialRegistration");
  qword_1ED641998 = result;
  if (result)
  {
    WebKit::getASAuthorizationPlatformPublicKeyCredentialRegistrationClass[0] = WebKit::ASAuthorizationPlatformPublicKeyCredentialRegistrationFunction;
  }

  else
  {
    result = 36;
    __break(0xC471u);
  }

  return result;
}

uint64_t ___ZN6WebKitL61initASAuthorizationSecurityKeyPublicKeyCredentialRegistrationEv_block_invoke(WebKit *a1)
{
  WebKit::AuthenticationServicesLibrary(a1);
  result = objc_getClass("ASAuthorizationSecurityKeyPublicKeyCredentialRegistration");
  qword_1ED6419A8 = result;
  if (result)
  {
    WebKit::getASAuthorizationSecurityKeyPublicKeyCredentialRegistrationClass[0] = WebKit::ASAuthorizationSecurityKeyPublicKeyCredentialRegistrationFunction;
  }

  else
  {
    result = 37;
    __break(0xC471u);
  }

  return result;
}

uint64_t ___ZN6WebKitL55initASAuthorizationPlatformPublicKeyCredentialAssertionEv_block_invoke(WebKit *a1)
{
  WebKit::AuthenticationServicesLibrary(a1);
  result = objc_getClass("ASAuthorizationPlatformPublicKeyCredentialAssertion");
  qword_1ED6419B8 = result;
  if (result)
  {
    WebKit::getASAuthorizationPlatformPublicKeyCredentialAssertionClass[0] = WebKit::ASAuthorizationPlatformPublicKeyCredentialAssertionFunction;
  }

  else
  {
    result = 38;
    __break(0xC471u);
  }

  return result;
}

uint64_t ___ZN6WebKitL48initASAuthorizationPublicKeyCredentialParametersEv_block_invoke(WebKit *a1)
{
  WebKit::AuthenticationServicesLibrary(a1);
  result = objc_getClass("ASAuthorizationPublicKeyCredentialParameters");
  qword_1ED6419C8 = result;
  if (result)
  {
    WebKit::getASAuthorizationPublicKeyCredentialParametersClass[0] = WebKit::ASAuthorizationPublicKeyCredentialParametersFunction;
  }

  else
  {
    result = 39;
    __break(0xC471u);
  }

  return result;
}

uint64_t ___ZN6WebKitL56initASAuthorizationPlatformPublicKeyCredentialDescriptorEv_block_invoke(WebKit *a1)
{
  WebKit::AuthenticationServicesLibrary(a1);
  result = objc_getClass("ASAuthorizationPlatformPublicKeyCredentialDescriptor");
  qword_1ED6419D8 = result;
  if (result)
  {
    WebKit::getASAuthorizationPlatformPublicKeyCredentialDescriptorClass[0] = WebKit::ASAuthorizationPlatformPublicKeyCredentialDescriptorFunction;
  }

  else
  {
    result = 40;
    __break(0xC471u);
  }

  return result;
}

uint64_t ___ZN6WebKitL59initASAuthorizationSecurityKeyPublicKeyCredentialDescriptorEv_block_invoke(WebKit *a1)
{
  WebKit::AuthenticationServicesLibrary(a1);
  result = objc_getClass("ASAuthorizationSecurityKeyPublicKeyCredentialDescriptor");
  qword_1ED6419E8 = result;
  if (result)
  {
    WebKit::getASAuthorizationSecurityKeyPublicKeyCredentialDescriptorClass[0] = WebKit::ASAuthorizationSecurityKeyPublicKeyCredentialDescriptorFunction;
  }

  else
  {
    result = 41;
    __break(0xC471u);
  }

  return result;
}

uint64_t ___ZN6WebKitL58initASAuthorizationSecurityKeyPublicKeyCredentialAssertionEv_block_invoke(WebKit *a1)
{
  WebKit::AuthenticationServicesLibrary(a1);
  result = objc_getClass("ASAuthorizationSecurityKeyPublicKeyCredentialAssertion");
  qword_1ED6419F8 = result;
  if (result)
  {
    WebKit::getASAuthorizationSecurityKeyPublicKeyCredentialAssertionClass[0] = WebKit::ASAuthorizationSecurityKeyPublicKeyCredentialAssertionFunction;
  }

  else
  {
    result = 42;
    __break(0xC471u);
  }

  return result;
}

uint64_t ___ZN6WebKitL61initASAuthorizationPublicKeyCredentialLargeBlobAssertionInputEv_block_invoke(WebKit *a1)
{
  WebKit::AuthenticationServicesLibrary(a1);
  result = objc_getClass("ASAuthorizationPublicKeyCredentialLargeBlobAssertionInput");
  qword_1ED641A08 = result;
  if (result)
  {
    WebKit::getASAuthorizationPublicKeyCredentialLargeBlobAssertionInputClass[0] = WebKit::ASAuthorizationPublicKeyCredentialLargeBlobAssertionInputFunction;
  }

  else
  {
    result = 43;
    __break(0xC471u);
  }

  return result;
}

uint64_t ___ZN6WebKitL64initASAuthorizationPublicKeyCredentialLargeBlobRegistrationInputEv_block_invoke(WebKit *a1)
{
  WebKit::AuthenticationServicesLibrary(a1);
  result = objc_getClass("ASAuthorizationPublicKeyCredentialLargeBlobRegistrationInput");
  qword_1ED641A18 = result;
  if (result)
  {
    WebKit::getASAuthorizationPublicKeyCredentialLargeBlobRegistrationInputClass[0] = WebKit::ASAuthorizationPublicKeyCredentialLargeBlobRegistrationInputFunction;
  }

  else
  {
    result = 44;
    __break(0xC471u);
  }

  return result;
}

uint64_t ___ZN6WebKitL58initASAuthorizationPublicKeyCredentialPRFRegistrationInputEv_block_invoke(WebKit *a1)
{
  WebKit::AuthenticationServicesLibrary(a1);
  result = objc_getClass("ASAuthorizationPublicKeyCredentialPRFRegistrationInput");
  qword_1ED641A28 = result;
  if (result)
  {
    WebKit::getASAuthorizationPublicKeyCredentialPRFRegistrationInputClass[0] = WebKit::ASAuthorizationPublicKeyCredentialPRFRegistrationInputFunction;
  }

  else
  {
    result = 47;
    __break(0xC471u);
  }

  return result;
}

uint64_t ___ZN6WebKitL61initASAuthorizationPublicKeyCredentialPRFAssertionInputValuesEv_block_invoke(WebKit *a1)
{
  WebKit::AuthenticationServicesLibrary(a1);
  result = objc_getClass("ASAuthorizationPublicKeyCredentialPRFAssertionInputValues");
  qword_1ED641A38 = result;
  if (result)
  {
    WebKit::getASAuthorizationPublicKeyCredentialPRFAssertionInputValuesClass[0] = WebKit::ASAuthorizationPublicKeyCredentialPRFAssertionInputValuesFunction;
  }

  else
  {
    result = 48;
    __break(0xC471u);
  }

  return result;
}

uint64_t ___ZN6WebKitL55initASAuthorizationPublicKeyCredentialPRFAssertionInputEv_block_invoke(WebKit *a1)
{
  WebKit::AuthenticationServicesLibrary(a1);
  result = objc_getClass("ASAuthorizationPublicKeyCredentialPRFAssertionInput");
  qword_1ED641A48 = result;
  if (result)
  {
    WebKit::getASAuthorizationPublicKeyCredentialPRFAssertionInputClass[0] = WebKit::ASAuthorizationPublicKeyCredentialPRFAssertionInputFunction;
  }

  else
  {
    result = 49;
    __break(0xC471u);
  }

  return result;
}

void *WTF::CompletionHandler<void ()(mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&)>::CompletionHandler(void *a1)
{
  WTF::CompletionHandler<void ()(mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&)>::CompletionHandler(a1);
  return a1;
}

{
  WTF::HashSet<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(a1);
  WTF::ThreadLikeAssertion::ThreadLikeAssertion(a1);
  return a1;
}

uint64_t WebKit::AuthenticatorManager::timeOutTimerFired(WebKit::AuthenticatorManager *this)
{
  v8 = this;
  v5[0] = 31;
  v2 = WTF::StringLiterals::operator"" _s("Operation timed out.", 0x14);
  WTF::String::String(&v6, v2, v3);
  mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::variant<WebCore::ExceptionData,WebCore::ExceptionData,0,0,0,1ul,WebCore::ExceptionData,0>(v7);
  WebKit::AuthenticatorManager::invokePendingCompletionHandler(this, v7);
  mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::~variant(v7);
  WebCore::ExceptionData::~ExceptionData(v5);
  return WebKit::AuthenticatorManager::clearState(this);
}

void *WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v20 = a3;
  *(&v20 + 1) = a4;
  v19 = a7;
  v18 = a6;
  v17 = a1;
  v16 = a2;
  v15 = a5;
  v14 = a7;
  v13 = a6;
  v12 = v20;
  v10[0] = a5;
  v10[2] = a7;
  v10[1] = a6;
  WTF::Function<void ()(void)>::Function<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>(&v11, v10);
  WTF::RunLoop::Timer::Timer(a1, a2, v12, *(&v12 + 1), &v11);
  WTF::Function<void ()(void)>::~Function(&v11);
  return a1;
}

WTF::RefCountedBase *WebKit::AuthenticatorManager::handleRequest(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  if (WTF::CompletionHandler<void ()(mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&)>::operator BOOL((a1 + 848)))
  {
    v7[0] = 31;
    v4 = WTF::StringLiterals::operator"" _s("This request has been cancelled by a new request.", 0x31);
    WTF::String::String(&v8, v4, v5);
    mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::variant<WebCore::ExceptionData,WebCore::ExceptionData,0,0,0,1ul,WebCore::ExceptionData,0>(v9);
    WebKit::AuthenticatorManager::invokePendingCompletionHandler(a1, v9);
    mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::~variant(v9);
    WebCore::ExceptionData::~ExceptionData(v7);
    WTF::RunLoop::TimerBase::stop((a1 + 856));
  }

  WebKit::AuthenticatorManager::clearState(a1);
  WebKit::WebAuthenticationRequestData::operator=(a1 + 48, v11);
  WTF::CompletionHandler<void ()(mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&)>::operator=((a1 + 848), v10);
  WebKit::AuthenticatorManager::initTimeOutTimer(a1);
  if (*(a1 + 936))
  {
    return WebKit::AuthenticatorManager::runPresenter(a1);
  }

  else
  {
    return (*(*a1 + 80))(a1);
  }
}

uint64_t *WebKit::AuthenticatorManager::invokePendingCompletionHandler(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  v8 = a2;
  v7 = !std::holds_alternative<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>(a2);
  v11 = &v6;
  v10 = a1 + 904;
  v19 = &v6;
  v18 = a1 + 904;
  v21 = a1 + 904;
  v20 = *(a1 + 904);
  if (v20)
  {
    WTF::RefCountedAndCanMakeWeakPtr<WebKit::AuthenticatorPresenterCoordinator>::ref(v20);
  }

  v6 = v20;
  if (WTF::RefPtr<WebKit::AuthenticatorPresenterCoordinator,WTF::RawPtrTraits<WebKit::AuthenticatorPresenterCoordinator>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorPresenterCoordinator>>::operator BOOL(&v6))
  {
    v12 = &v6;
    v22 = &v6;
    WebKit::AuthenticatorPresenterCoordinator::dimissPresenter(v6, v7);
  }

  else
  {
    v4 = v7;
    WTF::Function<void ()(API::WebAuthenticationPanel const&)>::Function<WebKit::AuthenticatorManager::invokePendingCompletionHandler(mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&)::$_0,void>(&v5, &v4);
    WebKit::AuthenticatorManager::dispatchPanelClientCall(a1, &v5);
    WTF::Function<void ()(API::WebAuthenticationPanel const&)>::~Function(&v5);
  }

  v13 = &v6;
  v14[1] = &v6;
  v14[0] = 0;
  v17 = &v6;
  v16 = v14;
  v15 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v6);
  if (v15)
  {
    WTF::RefCountedAndCanMakeWeakPtr<WebKit::AuthenticatorPresenterCoordinator>::deref(v15);
  }

  return WTF::CompletionHandler<void ()(mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&)>::operator()((a1 + 848), v8);
}

atomic_uint *WTF::String::String(atomic_uint *a1, uint64_t a2, uint64_t a3)
{
  return WTF::String::String(a1, a2, a3);
}

{
  *&v9 = a2;
  *(&v9 + 1) = a3;
  v8[1] = a1;
  v10 = a1;
  v7 = 0;
  if (WTF::ASCIILiteral::isNull(&v9))
  {
    v12 = a1;
    v11 = 0;
    v18 = a1;
    v17 = 0;
    *a1 = 0;
  }

  else
  {
    v16 = v8;
    v15 = v9;
    v4 = WTF::ASCIILiteral::span8(&v15);
    v14 = v5;
    v13 = v4;
    WTF::StringImpl::createWithoutCopying(v4, v5, v8);
    v7 = 1;
    WTF::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>>(a1, v8);
  }

  if (v7)
  {
    WTF::Ref<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::~Ref(v8);
  }

  return v10;
}

uint64_t mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::variant<WebCore::ExceptionData,WebCore::ExceptionData,0,0,0,1ul,WebCore::ExceptionData,0>(uint64_t a1)
{
  mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::variant<WebCore::ExceptionData,WebCore::ExceptionData,0,0,0,1ul,WebCore::ExceptionData,0>(a1);
  return a1;
}

{
  std::__to_address[abi:sn200100]<char const>();
  _ZN5mpark6detail4implIJN3WTF3RefIN7WebCore21AuthenticatorResponseENS2_12RawPtrTraitsIS5_EENS2_21DefaultRefDerefTraitsIS5_EEEENS4_13ExceptionDataEEECI1NS0_4baseILNS0_5TraitE1EJSA_SB_EEEILm1EJSB_EEENS_16in_place_index_tIXT_EEEDpOT0_(a1);
  return a1;
}

uint64_t mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::~variant(uint64_t a1)
{
  mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::~variant(a1);
  return a1;
}

{
  mpark::detail::impl<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::~impl(a1);
  return a1;
}

void WebCore::ExceptionData::~ExceptionData(WebCore::ExceptionData *this)
{
  WebCore::ExceptionData::~ExceptionData(this);
}

{
  v1[1] = this + 8;
  v1[0] = 0;
  v1[3] = this + 8;
  v1[2] = v1;
  v2 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(this + 1);
  if (v2)
  {
    WTF::StringImpl::deref(v2);
  }
}

uint64_t WebKit::AuthenticatorManager::clearState(WebKit::AuthenticatorManager *this)
{
  v14 = *MEMORY[0x1E69E9840];
  result = WTF::CompletionHandler<void ()(mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&)>::operator BOOL(this + 106);
  if ((result & 1) == 0)
  {
    WTF::HashSet<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::clear((this + 928));
    WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::clear((this + 912));
    WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v3);
    mpark::variant<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>::variant<WebCore::PublicKeyCredentialCreationOptions,0>(v4);
    WTF::WeakPtr<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr(&v5);
    v6 = 0;
    v7 = 0;
    std::optional<WebCore::GlobalFrameIdentifier>::optional[abi:sn200100](v8);
    std::optional<WebKit::FrameInfoData>::optional[abi:sn200100](v9);
    memset(&v10, 0, sizeof(v10));
    WTF::WeakPtr<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr(&v10);
    WTF::WeakPtr<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr(&v11);
    std::optional<WebCore::MediationRequirement>::optional[abi:sn200100](v12);
    std::optional<WebCore::SecurityOriginData>::optional[abi:sn200100](v13);
    WebKit::WebAuthenticationRequestData::operator=(this + 48, v3);
    WebKit::WebAuthenticationRequestData::~WebAuthenticationRequestData(v3);
    return WTF::RefPtr<WebKit::AuthenticatorPresenterCoordinator,WTF::RawPtrTraits<WebKit::AuthenticatorPresenterCoordinator>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorPresenterCoordinator>>::operator=(this + 113);
  }

  return result;
}

void WebKit::WebAuthenticationRequestData::operator=(uint64_t a1, uint64_t a2)
{
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(a1, a2);
  mpark::variant<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>::operator=(a1 + 16);
  WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator=((a1 + 312), (a2 + 312));
  *(a1 + 320) = *(a2 + 320);
  WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::operator=((a1 + 328), (a2 + 328));
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 352) = *(a2 + 352);
  std::optional<WebKit::FrameInfoData>::operator=[abi:sn200100]((a1 + 368), a2 + 368);
  WTF::String::operator=((a1 + 736), (a2 + 736));
  WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator=((a1 + 744), (a2 + 744));
  *(a1 + 752) = *(a2 + 752);
  std::optional<WebCore::SecurityOriginData>::operator=[abi:sn200100]((a1 + 760), a2 + 760);
}

uint64_t WebKit::AuthenticatorManager::initTimeOutTimer(WebKit::AuthenticatorManager *this)
{
  v16 = this;
  v15 = 3;
  result = std::operator==[abi:sn200100]<WebCore::MediationRequirement,WebCore::MediationRequirement>(this + 800, &v15);
  if ((result & 1) == 0)
  {
    std::optional<unsigned int>::optional[abi:sn200100](v14);
    v13 = v14;
    v12 = v14;
    v20 = this + 64;
    v19[3] = &v13;
    v19[2] = &v12;
    v18 = v14;
    v17 = v14;
    v28 = v14;
    v27 = v14;
    v26 = v14;
    v25 = v14;
    WTF::Visitor<WebKit::AuthenticatorManager::initTimeOutTimer(void)::$_0,WebKit::AuthenticatorManager::initTimeOutTimer(void)::$_1>::Visitor(v29, v14, v14);
    v19[1] = v29[1];
    v19[0] = v29[0];
    v29[2] = v20;
    v24 = v19;
    v23 = v20;
    v22 = 2;
    switch(mpark::variant<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>::index(v20))
    {
      case 0:
        v3 = v24;
        mpark::get<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>(v23);
        WebKit::AuthenticatorManager::initTimeOutTimer(void)::$_0::operator()(v3, v4);
        goto LABEL_36;
      case 1:
        v5 = v24 + 1;
        mpark::get<WebCore::PublicKeyCredentialRequestOptions,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>(v23);
        WebKit::AuthenticatorManager::initTimeOutTimer(void)::$_1::operator()(v5, v6);
        goto LABEL_36;
      case 2:
        __break(1u);
        goto LABEL_6;
      case 3:
LABEL_6:
        __break(1u);
        goto LABEL_7;
      case 4:
LABEL_7:
        __break(1u);
        goto LABEL_8;
      case 5:
LABEL_8:
        __break(1u);
        goto LABEL_9;
      case 6:
LABEL_9:
        __break(1u);
        goto LABEL_10;
      case 7:
LABEL_10:
        __break(1u);
        goto LABEL_11;
      case 8:
LABEL_11:
        __break(1u);
        goto LABEL_12;
      case 9:
LABEL_12:
        __break(1u);
        goto LABEL_13;
      case 10:
LABEL_13:
        __break(1u);
        goto LABEL_14;
      case 11:
LABEL_14:
        __break(1u);
        goto LABEL_15;
      case 12:
LABEL_15:
        __break(1u);
        goto LABEL_16;
      case 13:
LABEL_16:
        __break(1u);
        goto LABEL_17;
      case 14:
LABEL_17:
        __break(1u);
        goto LABEL_18;
      case 15:
LABEL_18:
        __break(1u);
        goto LABEL_19;
      case 16:
LABEL_19:
        __break(1u);
        goto LABEL_20;
      case 17:
LABEL_20:
        __break(1u);
        goto LABEL_21;
      case 18:
LABEL_21:
        __break(1u);
        goto LABEL_22;
      case 19:
LABEL_22:
        __break(1u);
        goto LABEL_23;
      case 20:
LABEL_23:
        __break(1u);
        goto LABEL_24;
      case 21:
LABEL_24:
        __break(1u);
        goto LABEL_25;
      case 22:
LABEL_25:
        __break(1u);
        goto LABEL_26;
      case 23:
LABEL_26:
        __break(1u);
        goto LABEL_27;
      case 24:
LABEL_27:
        __break(1u);
        goto LABEL_28;
      case 25:
LABEL_28:
        __break(1u);
        goto LABEL_29;
      case 26:
LABEL_29:
        __break(1u);
        goto LABEL_30;
      case 27:
LABEL_30:
        __break(1u);
        goto LABEL_31;
      case 28:
LABEL_31:
        __break(1u);
        goto LABEL_32;
      case 29:
LABEL_32:
        __break(1u);
        goto LABEL_33;
      case 30:
LABEL_33:
        __break(1u);
        goto LABEL_34;
      case 31:
LABEL_34:
        __break(1u);
        break;
      default:
        break;
    }

    v21 = 2;
    __break(1u);
LABEL_36:
    v10 = std::optional<unsigned int>::value_or[abi:sn200100]<unsigned int const&>(v14);
    v7 = std::min[abi:sn200100]<unsigned int>(&v10);
    v11 = *v7;
    LODWORD(v8) = v11;
    v9 = WTF::Seconds::fromMilliseconds(v7, v8);
    return WTF::RunLoop::TimerBase::startOneShot(this + 856, v9);
  }

  return result;
}

WTF::RefCountedBase *WebKit::AuthenticatorManager::runPresenter(WebKit::AuthenticatorManager *this)
{
  v3[1] = this;
  WebKit::AuthenticatorManager::getTransports(this, v3);
  if (WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::isEmpty(v3))
  {
    WebKit::AuthenticatorManager::cancel(this);
  }

  else
  {
    WebKit::AuthenticatorManager::startDiscovery(this, v3);
    if (*(this + 234) != 1)
    {
      (*(*this + 176))(this, v3);
    }
  }

  return WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::~HashSet(v3);
}

uint64_t WebKit::AuthenticatorManager::cancelRequest(WebKit::AuthenticatorManager *a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  result = WTF::CompletionHandler<void ()(mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&)>::operator BOOL(a1 + 106);
  if (result)
  {
    v8[0] = *(a1 + 48);
    v8[1] = *(a1 + 49);
    v8[2] = *(a1 + 50);
    if ((std::optional<WebCore::GlobalFrameIdentifier>::operator BOOL[abi:sn200100](v8) & 1) == 0)
    {
      return WebKit::AuthenticatorManager::cancelRequest(a1);
    }

    std::optional<WebCore::GlobalFrameIdentifier>::operator->[abi:sn200100](v8);
    result = WTF::operator==<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>(v5, v10);
    if (((result ^ 1) & 1) == 0)
    {
      if ((std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>::operator BOOL[abi:sn200100](v9) & 1) == 0)
      {
        return WebKit::AuthenticatorManager::cancelRequest(a1);
      }

      v6 = v9;
      std::optional<WebCore::GlobalFrameIdentifier>::operator->[abi:sn200100](v8);
      result = std::operator!=[abi:sn200100]<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v6, v7 + 8);
      if ((result & 1) == 0)
      {
        return WebKit::AuthenticatorManager::cancelRequest(a1);
      }
    }
  }

  return result;
}

void std::optional<WebCore::GlobalFrameIdentifier>::operator->[abi:sn200100](uint64_t a1)
{
  if ((std::__optional_storage_base<WebCore::BufferSource,false>::has_value[abi:sn200100](a1) & 1) == 0)
  {
    __break(1u);
  }

  std::__to_address[abi:sn200100]<char const>();
}

BOOL std::operator!=[abi:sn200100]<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t a1, uint64_t a2)
{
  if (std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>::operator BOOL[abi:sn200100](a1))
  {
    std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>::operator*[abi:sn200100](a1);
    return !WTF::operator==<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>(v2, a2);
  }

  else
  {
    return 1;
  }
}

uint64_t WebKit::AuthenticatorManager::cancelRequest(WebKit::AuthenticatorManager *this)
{
  v15 = this;
  v12[0] = 31;
  v2 = WTF::StringLiterals::operator"" _s("This request has been cancelled by the user.", 0x2C);
  v11 = v3;
  v10 = v2;
  WTF::String::String(&v13, v2, v3);
  mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::variant<WebCore::ExceptionData,WebCore::ExceptionData,0,0,0,1ul,WebCore::ExceptionData,0>(v14);
  WebKit::AuthenticatorManager::invokePendingCompletionHandler(this, v14);
  mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::~variant(v14);
  WebCore::ExceptionData::~ExceptionData(v12);
  oslog = qword_1ED641530;
  v8 = 16;
  if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_ERROR))
  {
    v4 = oslog;
    v5 = v8;
    __os_log_helper_16_0_0(v7);
    _os_log_error_impl(&dword_19D52D000, v4, v5, "Request cancelled due to AuthenticatorManager::cancelRequest being called.", v7, 2u);
  }

  WebKit::AuthenticatorManager::clearState(this);
  return WTF::RunLoop::TimerBase::stop((this + 856));
}

uint64_t WebKit::AuthenticatorManager::cancelRequest(WebKit::AuthenticatorManager *this, const API::WebAuthenticationPanel *a2)
{
  isMain = WTF::RunLoop::isMain(this);
  if ((isMain ^ 1))
  {
    isIntegralOrPointerType = WTF::isIntegralOrPointerType(isMain);
    WTF::isIntegralOrPointerType(isIntegralOrPointerType);
    __break(0xC471u);
    JUMPOUT(0x19D657C14);
  }

  result = WTF::CompletionHandler<void ()(mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&)>::operator BOOL(this + 106);
  if (result)
  {
    result = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(this + 376);
    if (result == a2)
    {
      return WebKit::AuthenticatorManager::cancelRequest(this);
    }
  }

  return result;
}

uint64_t WebKit::AuthenticatorManager::cancel(WebKit::AuthenticatorManager *this)
{
  isMain = WTF::RunLoop::isMain(this);
  if ((isMain ^ 1))
  {
    isIntegralOrPointerType = WTF::isIntegralOrPointerType(isMain);
    WTF::isIntegralOrPointerType(isIntegralOrPointerType);
    __break(0xC471u);
    JUMPOUT(0x19D657D54);
  }

  result = WTF::CompletionHandler<void ()(mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&)>::operator BOOL(this + 106);
  if (result)
  {
    return WebKit::AuthenticatorManager::cancelRequest(this);
  }

  return result;
}

uint64_t *WebKit::AuthenticatorManager::clearStateAsync(WebKit::AuthenticatorManager *this)
{
  v4[1] = this;
  WTF::RunLoop::mainSingleton(this);
  WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr<void>(&v3, this);
  WTF::Function<void ()(void)>::Function<WebKit::AuthenticatorManager::clearStateAsync(void)::$_0,void>(v4, &v3);
  WTF::RunLoop::dispatch();
  WTF::Function<void ()(void)>::~Function(v4);
  return WebKit::AuthenticatorManager::clearStateAsync(void)::$_0::~$_0(&v3);
}

uint64_t *WTF::Function<void ()(void)>::Function<WebKit::AuthenticatorManager::clearStateAsync(void)::$_0,void>(uint64_t *a1, uint64_t *a2)
{
  WTF::Function<void ()(void)>::Function<WebKit::AuthenticatorManager::clearStateAsync(void)::$_0,void>(a1, a2);
  return a1;
}

{
  v4[2] = a1;
  v4[1] = a2;
  v4[4] = v4;
  v4[3] = a2;
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::clearStateAsync(void)::$_0,void>,WebKit::AuthenticatorManager::clearStateAsync(void)::$_0,0>(v4, a2);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>,void,void>(a1, v4);
  std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::~unique_ptr[abi:sn200100](v4);
  return a1;
}

uint64_t *WebKit::AuthenticatorManager::clearStateAsync(void)::$_0::~$_0(uint64_t *a1)
{
  WebKit::AuthenticatorManager::clearStateAsync(void)::$_0::~$_0(a1);
  return a1;
}

{
  WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::~WeakPtr(a1);
  return a1;
}

_BYTE *mpark::variant<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>::variant<WebCore::PublicKeyCredentialCreationOptions,0>(_BYTE *a1)
{
  mpark::variant<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>::variant<WebCore::PublicKeyCredentialCreationOptions,0>(a1);
  return a1;
}

{
  _ZN5mpark6detail4implIJN7WebCore34PublicKeyCredentialCreationOptionsENS2_33PublicKeyCredentialRequestOptionsEEECI1NS0_4baseILNS0_5TraitE1EJS3_S4_EEEILm0EJEEENS_16in_place_index_tIXT_EEEDpOT0_(a1);
  return a1;
}

void WebKit::WebAuthenticationRequestData::~WebAuthenticationRequestData(WebKit::WebAuthenticationRequestData *this)
{
  WebKit::WebAuthenticationRequestData::~WebAuthenticationRequestData(this);
}

{
  std::optional<WebCore::SecurityOriginData>::~optional((this + 760));
  WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::~WeakPtr(this + 93);
  v4 = this + 736;
  v5 = this + 736;
  v6[1] = this + 736;
  v6[0] = 0;
  v6[3] = this + 736;
  v6[2] = v6;
  v7 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(this + 92);
  if (v7)
  {
    WTF::StringImpl::deref(v7);
  }

  std::optional<WebKit::FrameInfoData>::~optional((this + 368));
  v2[1] = this + 328;
  v2[0] = 0;
  v2[3] = this + 328;
  v2[2] = v2;
  v3 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(this + 41);
  if (v3)
  {
    API::Object::deref(v3);
  }

  WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::~WeakPtr(this + 39);
  mpark::variant<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>::~variant(this + 16);
  WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this);
}

uint64_t WTF::RefPtr<WebKit::AuthenticatorPresenterCoordinator,WTF::RawPtrTraits<WebKit::AuthenticatorPresenterCoordinator>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorPresenterCoordinator>>::operator=(uint64_t *a1)
{
  v2[2] = a1;
  v2[1] = 0;
  v2[0] = 0;
  v5 = a1;
  v4 = v2;
  result = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(a1);
  v3 = result;
  if (result)
  {
    return WTF::RefCountedAndCanMakeWeakPtr<WebKit::AuthenticatorPresenterCoordinator>::deref(v3);
  }

  return result;
}

uint64_t WebKit::AuthenticatorManager::authenticatorAdded(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v7 = a2;
  v3 = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(a2);
  WebKit::Authenticator::setObserver(v3, (a1 + 24));
  v4 = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(v7);
  WebKit::Authenticator::handleRequest(v4, (a1 + 48));
  return WTF::HashSet<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::add(v6, (a1 + 928), v7);
}

uint64_t *WebKit::Authenticator::setObserver(WebKit::Authenticator *this, WebKit::AuthenticatorObserver *a2)
{
  v4[2] = this;
  v4[1] = a2;
  WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr<void>(v4, a2);
  WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator=(this + 3, v4);
  return WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::~WeakPtr(v4);
}

uint64_t *WebKit::AuthenticatorManager::serviceStatusUpdated(uint64_t a1, unsigned __int8 a2)
{
  v9 = a1;
  v8 = a2;
  v11 = &v7;
  v10 = a1 + 904;
  v19 = &v7;
  v18 = a1 + 904;
  v21 = a1 + 904;
  v20 = *(a1 + 904);
  if (v20)
  {
    WTF::RefCountedAndCanMakeWeakPtr<WebKit::AuthenticatorPresenterCoordinator>::ref(v20);
  }

  v7 = v20;
  if (WTF::RefPtr<WebKit::AuthenticatorPresenterCoordinator,WTF::RawPtrTraits<WebKit::AuthenticatorPresenterCoordinator>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorPresenterCoordinator>>::operator BOOL(&v7))
  {
    v12 = &v7;
    v22 = &v7;
    WebKit::AuthenticatorPresenterCoordinator::updatePresenter(v7, v8);
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  v13 = &v7;
  v14[1] = &v7;
  v14[0] = 0;
  v17 = &v7;
  v16 = v14;
  result = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v7);
  v15 = result;
  if (result)
  {
    result = WTF::RefCountedAndCanMakeWeakPtr<WebKit::AuthenticatorPresenterCoordinator>::deref(v15);
  }

  if (!v6)
  {
    v4 = v8;
    WTF::Function<void ()(API::WebAuthenticationPanel const&)>::Function<WebKit::AuthenticatorManager::serviceStatusUpdated(WebKit::WebAuthenticationStatus)::$_0,void>(&v5, &v4);
    WebKit::AuthenticatorManager::dispatchPanelClientCall(a1, &v5);
    return WTF::Function<void ()(API::WebAuthenticationPanel const&)>::~Function(&v5);
  }

  return result;
}

uint64_t *WebKit::AuthenticatorManager::dispatchPanelClientCall(uint64_t a1, uint64_t *a2)
{
  v12 = a1;
  v11 = a2;
  WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr(&v10, (a1 + 792));
  if (WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator!(&v10))
  {
    WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr<void>(&v9, a1 + 376);
    WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator=(&v10, &v9);
    WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::~WeakPtr(&v9);
  }

  v3 = WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator!(&v10);
  if (v3)
  {
    v8 = 1;
  }

  else
  {
    WTF::RunLoop::mainSingleton(v3);
    WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr(&v5, &v10);
    WTF::Function<void ()(API::WebAuthenticationPanel const&)>::Function(&v6, v11);
    WTF::Function<void ()(void)>::Function<WebKit::AuthenticatorManager::dispatchPanelClientCall(WTF::Function<void ()(API::WebAuthenticationPanel const&)> &&)::$_0,void>(&v7, &v5);
    WTF::RunLoop::dispatch();
    WTF::Function<void ()(void)>::~Function(&v7);
    WebKit::AuthenticatorManager::dispatchPanelClientCall(WTF::Function<void ()(API::WebAuthenticationPanel const&)> &&)const::$_0::~$_0(&v5);
    v8 = 0;
  }

  return WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::~WeakPtr(&v10);
}

uint64_t *WTF::Function<void ()(API::WebAuthenticationPanel const&)>::Function<WebKit::AuthenticatorManager::serviceStatusUpdated(WebKit::WebAuthenticationStatus)::$_0,void>(uint64_t *a1, _BYTE *a2)
{
  WTF::Function<void ()(API::WebAuthenticationPanel const&)>::Function<WebKit::AuthenticatorManager::serviceStatusUpdated(WebKit::WebAuthenticationStatus)::$_0,void>(a1, a2);
  return a1;
}

{
  v4[2] = a1;
  v4[1] = a2;
  v4[4] = v4;
  v4[3] = a2;
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::serviceStatusUpdated(WebKit::WebAuthenticationStatus)::$_0,void,API::WebAuthenticationPanel const&>,WebKit::AuthenticatorManager::serviceStatusUpdated(WebKit::WebAuthenticationStatus)::$_0,0>(v4, a2);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>,void,void>(a1, v4);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void,API::WebAuthenticationPanel const&>>::~unique_ptr[abi:sn200100](v4);
  return a1;
}

uint64_t *WTF::Function<void ()(API::WebAuthenticationPanel const&)>::~Function(uint64_t *a1)
{
  WTF::Function<void ()(API::WebAuthenticationPanel const&)>::~Function(a1);
  return a1;
}

{
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void,API::WebAuthenticationPanel const&>>::~unique_ptr[abi:sn200100](a1);
  return a1;
}

uint64_t WebKit::AuthenticatorManager::respondReceived(WebKit::AuthenticatorManager *a1, uint64_t a2)
{
  v10 = a1;
  v9 = a2;
  result = WTF::RunLoop::TimerBase::isActive((a1 + 856));
  v4 = 0;
  if ((result & 1) == 0)
  {
    v8 = 3;
    result = std::operator!=[abi:sn200100]<WebCore::MediationRequirement,WebCore::MediationRequirement>(a1 + 800, &v8);
    v4 = 1;
    if ((result & 1) == 0)
    {
      result = WTF::CompletionHandler<void ()(mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&)>::operator BOOL(a1 + 106);
      v4 = result ^ 1;
    }
  }

  if ((v4 & 1) == 0)
  {
    v7 = std::holds_alternative<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>(v9);
    if (!v7)
    {
      std::get<WebCore::ExceptionData,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>(v9);
      v6 = 1;
      if (*v5 != 8)
      {
        v6 = *v5 == 6;
      }

      v7 = v6;
    }

    result = (*(*a1 + 160))(a1, v9, v7);
    if (!v7)
    {
      return WebKit::AuthenticatorManager::restartDiscovery(a1);
    }
  }

  return result;
}

BOOL std::operator!=[abi:sn200100]<WebCore::MediationRequirement,WebCore::MediationRequirement>(uint64_t a1, char *a2)
{
  if (std::optional<WebCore::MediationRequirement>::operator BOOL[abi:sn200100](a1))
  {
    std::optional<WebCore::MediationRequirement>::operator*[abi:sn200100](a1);
    return *v2 != *a2;
  }

  else
  {
    return 1;
  }
}

uint64_t WebKit::AuthenticatorManager::restartDiscovery(WebKit::AuthenticatorManager *this)
{
  v5 = this + 912;
  v4 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(this + 912);
  result = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(v5);
  v3 = result;
  while (v4 != v3)
  {
    v2 = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(v4);
    result = WebKit::AuthenticatorTransportService::restartDiscovery(v2);
    v4 += 8;
  }

  return result;
}

uint64_t WebKit::AuthenticatorManager::respondReceivedInternal(uint64_t result, uint64_t a2, char a3)
{
  v3 = result;
  if (a3)
  {
    WebKit::AuthenticatorManager::invokePendingCompletionHandler(result, a2);
    WebKit::AuthenticatorManager::clearStateAsync(v3);
    return WTF::RunLoop::TimerBase::stop((v3 + 856));
  }

  return result;
}

uint64_t WebKit::AuthenticatorManager::downgrade(WTF::RunLoop *a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  WTF::RunLoop::mainSingleton(a1);
  WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr<void>(&v5, a1);
  WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>::Ref(&v6, v9);
  WTF::Function<void ()(void)>::Function<WebKit::AuthenticatorManager::downgrade(WebKit::Authenticator &,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>> &&)::$_0,void>(&v7, &v5);
  WTF::RunLoop::dispatch();
  WTF::Function<void ()(void)>::~Function(&v7);
  WebKit::AuthenticatorManager::downgrade(WebKit::Authenticator &,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>> &&)::$_0::~$_0(&v5);
  return WebKit::AuthenticatorManager::authenticatorAdded(a1, v8);
}

void *WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>::Ref(void *a1, uint64_t a2)
{
  WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>::Ref(a1, a2);
  return a1;
}

{
  WTF::RefCountedAndCanMakeWeakPtr<WebKit::AuthenticatorPresenterCoordinator>::ref(a2 + 8);
  *a1 = a2;
  return a1;
}

uint64_t *WTF::Function<void ()(void)>::Function<WebKit::AuthenticatorManager::downgrade(WebKit::Authenticator &,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>> &&)::$_0,void>(uint64_t *a1, uint64_t *a2)
{
  WTF::Function<void ()(void)>::Function<WebKit::AuthenticatorManager::downgrade(WebKit::Authenticator &,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>> &&)::$_0,void>(a1, a2);
  return a1;
}

{
  v4[2] = a1;
  v4[1] = a2;
  v4[4] = v4;
  v4[3] = a2;
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::downgrade(WebKit::Authenticator &,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>> &&)::$_0,void>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>> &&,0>(v4, a2);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>,void,void>(a1, v4);
  std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::~unique_ptr[abi:sn200100](v4);
  return a1;
}

uint64_t *WebKit::AuthenticatorManager::downgrade(WebKit::Authenticator &,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>> &&)::$_0::~$_0(uint64_t *a1)
{
  WebKit::AuthenticatorManager::downgrade(WebKit::Authenticator &,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>> &&)::$_0::~$_0(a1);
  return a1;
}

{
  WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>::~Ref(a1 + 1);
  WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::~WeakPtr(a1);
  return a1;
}

uint64_t *WebKit::AuthenticatorManager::authenticatorStatusUpdated(uint64_t a1, unsigned __int8 a2)
{
  v10 = a1;
  v9 = a2;
  if (a2 != 11)
  {
    memset(&__b, 0, sizeof(__b));
    WTF::WeakPtr<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr(&__b);
    WTF::String::operator=((a1 + 784), &__b);
    p_b = &__b;
    v16 = &__b;
    v17 = &__b;
    v18[1] = &__b;
    v18[0] = 0;
    v18[3] = &__b;
    v18[2] = v18;
    v19 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&__b);
    if (v19)
    {
      WTF::StringImpl::deref(v19);
    }
  }

  v12 = &v7;
  v11 = a1 + 904;
  v25 = &v7;
  v24 = a1 + 904;
  v27 = a1 + 904;
  v26 = *(a1 + 904);
  if (v26)
  {
    WTF::RefCountedAndCanMakeWeakPtr<WebKit::AuthenticatorPresenterCoordinator>::ref(v26);
  }

  v7 = v26;
  if (WTF::RefPtr<WebKit::AuthenticatorPresenterCoordinator,WTF::RawPtrTraits<WebKit::AuthenticatorPresenterCoordinator>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorPresenterCoordinator>>::operator BOOL(&v7))
  {
    v13 = &v7;
    v28 = &v7;
    WebKit::AuthenticatorPresenterCoordinator::updatePresenter(v7, v9);
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  v14 = &v7;
  v20[1] = &v7;
  v20[0] = 0;
  v23 = &v7;
  v22 = v20;
  result = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v7);
  v21 = result;
  if (result)
  {
    result = WTF::RefCountedAndCanMakeWeakPtr<WebKit::AuthenticatorPresenterCoordinator>::deref(v21);
  }

  if (!v6)
  {
    v4 = v9;
    WTF::Function<void ()(API::WebAuthenticationPanel const&)>::Function<WebKit::AuthenticatorManager::authenticatorStatusUpdated(WebKit::WebAuthenticationStatus)::$_0,void>(&v5, &v4);
    WebKit::AuthenticatorManager::dispatchPanelClientCall(a1, &v5);
    return WTF::Function<void ()(API::WebAuthenticationPanel const&)>::~Function(&v5);
  }

  return result;
}

uint64_t *WTF::Function<void ()(API::WebAuthenticationPanel const&)>::Function<WebKit::AuthenticatorManager::authenticatorStatusUpdated(WebKit::WebAuthenticationStatus)::$_0,void>(uint64_t *a1, _BYTE *a2)
{
  WTF::Function<void ()(API::WebAuthenticationPanel const&)>::Function<WebKit::AuthenticatorManager::authenticatorStatusUpdated(WebKit::WebAuthenticationStatus)::$_0,void>(a1, a2);
  return a1;
}

{
  v4[2] = a1;
  v4[1] = a2;
  v4[4] = v4;
  v4[3] = a2;
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::authenticatorStatusUpdated(WebKit::WebAuthenticationStatus)::$_0,void,API::WebAuthenticationPanel const&>,WebKit::AuthenticatorManager::authenticatorStatusUpdated(WebKit::WebAuthenticationStatus)::$_0,0>(v4, a2);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>,void,void>(a1, v4);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void,API::WebAuthenticationPanel const&>>::~unique_ptr[abi:sn200100](v4);
  return a1;
}

uint64_t *WebKit::AuthenticatorManager::requestPin(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  if (WTF::String::isNull((a1 + 784)))
  {
    WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr<void>(&v14, a1);
    WTF::CompletionHandler<void ()(WTF::String const&)>::CompletionHandler(&v15, v17);
    v21 = &v13;
    v20 = a1 + 904;
    v34 = &v13;
    v33 = a1 + 904;
    v36 = a1 + 904;
    v35 = *(a1 + 904);
    if (v35)
    {
      WTF::RefCountedAndCanMakeWeakPtr<WebKit::AuthenticatorPresenterCoordinator>::ref(v35);
    }

    v13 = v35;
    if (WTF::RefPtr<WebKit::AuthenticatorPresenterCoordinator,WTF::RawPtrTraits<WebKit::AuthenticatorPresenterCoordinator>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorPresenterCoordinator>>::operator BOOL(&v13))
    {
      v22 = &v13;
      v37 = &v13;
      v5 = v13;
      v6 = v18;
      WTF::ThreadLikeAssertion::ThreadLikeAssertion(&v11);
      WTF::CompletionHandler<void ()(WTF::String const&)>::CompletionHandler<WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)>&&)::$_0,void>(&v12, &v14);
      WebKit::AuthenticatorPresenterCoordinator::requestPin(v5, v6, &v12);
      WTF::CompletionHandler<void ()(WTF::String const&)>::~CompletionHandler(&v12);
      WTF::ThreadLikeAssertion::~ThreadLikeAssertion(&v11);
      v10 = 1;
    }

    else
    {
      v10 = 0;
    }

    v23 = &v13;
    v29[1] = &v13;
    v29[0] = 0;
    v32 = &v13;
    v31 = v29;
    v30 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v13);
    if (v30)
    {
      WTF::RefCountedAndCanMakeWeakPtr<WebKit::AuthenticatorPresenterCoordinator>::deref(v30);
    }

    if (!v10)
    {
      v7 = v18;
      WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0::$_0(&v8, &v14);
      WTF::Function<void ()(API::WebAuthenticationPanel const&)>::Function<WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_1,void>(&v9, &v7);
      WebKit::AuthenticatorManager::dispatchPanelClientCall(a1, &v9);
      WTF::Function<void ()(API::WebAuthenticationPanel const&)>::~Function(&v9);
      WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_1::~$_1(&v7);
      v10 = 0;
    }

    return WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0::~$_0(&v14);
  }

  else
  {
    WTF::CompletionHandler<void ()(WTF::String const&)>::operator()(v17, a1 + 784);
    memset(&__b, 0, sizeof(__b));
    WTF::WeakPtr<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr(&__b);
    WTF::String::operator=((a1 + 784), &__b);
    p_b = &__b;
    v25 = &__b;
    v26 = &__b;
    v27[1] = &__b;
    v27[0] = 0;
    v27[3] = &__b;
    v27[2] = v27;
    result = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&__b);
    v28 = result;
    if (result)
    {
      return WTF::StringImpl::deref(v28);
    }
  }

  return result;
}

uint64_t *WTF::CompletionHandler<void ()(WTF::String const&)>::operator()(WTF::RefCountedBase *a1, uint64_t a2)
{
  v4[2] = a1;
  v4[1] = a2;
  WTF::RefCountedBase::applyRefDerefThreadingCheck(a1);
  std::exchange[abi:sn200100]<WTF::Function<void ()(WTF::String const&)>,decltype(nullptr)>(v4, a1);
  WTF::Function<void ()(WTF::String const&)>::operator()(v4);
  return WTF::Function<void ()(WTF::String const&)>::~Function(v4);
}

uint64_t *WTF::CompletionHandler<void ()(WTF::String const&)>::CompletionHandler(uint64_t *a1, uint64_t *a2)
{
  WTF::CompletionHandler<void ()(WTF::String const&)>::CompletionHandler(a1, a2);
  return a1;
}

{
  WTF::Function<void ()(WTF::String const&)>::Function(a1, a2);
  WTF::ThreadLikeAssertion::ThreadLikeAssertion(a1);
  return a1;
}

uint64_t *WTF::CompletionHandler<void ()(WTF::String const&)>::CompletionHandler<WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)>&&)::$_0,void>(uint64_t *a1, uint64_t *a2)
{
  WTF::CompletionHandler<void ()(WTF::String const&)>::CompletionHandler<WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)>&&)::$_0,void>(a1, a2);
  return a1;
}

{
  WTF::Function<void ()(WTF::String const&)>::Function<WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0,void>(a1, a2);
  WTF::ThreadLikeAssertion::ThreadLikeAssertion(a1);
  return a1;
}

WTF::ThreadLikeAssertion *WTF::CompletionHandler<void ()(WTF::String const&)>::~CompletionHandler(WTF::ThreadLikeAssertion *a1)
{
  WTF::CompletionHandler<void ()(WTF::String const&)>::~CompletionHandler(a1);
  return a1;
}

{
  v4 = a1;
  WTF::ThreadLikeAssertion::ThreadLikeAssertion(&v3);
  WTF::ThreadLikeAssertion::operator=();
  WTF::ThreadLikeAssertion::~ThreadLikeAssertion(&v3);
  WTF::ThreadLikeAssertion::~ThreadLikeAssertion(a1);
  WTF::Function<void ()(WTF::String const&)>::~Function(a1);
  return a1;
}

void WTF::ThreadLikeAssertion::~ThreadLikeAssertion(WTF::ThreadLikeAssertion *this)
{
  WTF::ThreadLikeAssertion::~ThreadLikeAssertion(this);
}

{
  WTF::RefCountedBase::applyRefDerefThreadingCheck(this);
}

uint64_t *WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0::$_0(uint64_t *a1, uint64_t *a2)
{
  WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0::$_0(a1, a2);
  return a1;
}

{
  WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr(a1, a2);
  WTF::CompletionHandler<void ()(WTF::String const&)>::CompletionHandler(a1 + 1, a2 + 1);
  return a1;
}

uint64_t *WTF::Function<void ()(API::WebAuthenticationPanel const&)>::Function<WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_1,void>(uint64_t *a1, void *a2)
{
  WTF::Function<void ()(API::WebAuthenticationPanel const&)>::Function<WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_1,void>(a1, a2);
  return a1;
}

{
  v4[2] = a1;
  v4[1] = a2;
  v4[4] = v4;
  v4[3] = a2;
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_1,void,API::WebAuthenticationPanel const&>,WTF::CompletionHandler<void ()(WTF::String const&)> &&,0>(v4, a2);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>,void,void>(a1, v4);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void,API::WebAuthenticationPanel const&>>::~unique_ptr[abi:sn200100](v4);
  return a1;
}

uint64_t WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_1::~$_1(uint64_t a1)
{
  WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_1::~$_1(a1);
  return a1;
}

{
  WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0::~$_0((a1 + 8));
  return a1;
}

uint64_t *WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0::~$_0(uint64_t *a1)
{
  WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0::~$_0(a1);
  return a1;
}

{
  WTF::CompletionHandler<void ()(WTF::String const&)>::~CompletionHandler((a1 + 1));
  WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::~WeakPtr(a1);
  return a1;
}

uint64_t *WebKit::AuthenticatorManager::requestNewPin(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr<void>(&v14, a1);
  WTF::CompletionHandler<void ()(WTF::String const&)>::CompletionHandler(&v15, v16);
  v20 = &v13;
  v19 = a1 + 904;
  v28 = &v13;
  v27 = a1 + 904;
  v30 = a1 + 904;
  v29 = *(a1 + 904);
  if (v29)
  {
    WTF::RefCountedAndCanMakeWeakPtr<WebKit::AuthenticatorPresenterCoordinator>::ref(v29);
  }

  v13 = v29;
  if (WTF::RefPtr<WebKit::AuthenticatorPresenterCoordinator,WTF::RawPtrTraits<WebKit::AuthenticatorPresenterCoordinator>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorPresenterCoordinator>>::operator BOOL(&v13))
  {
    v21 = &v13;
    v31 = &v13;
    v4 = v13;
    v5 = v17;
    WTF::ThreadLikeAssertion::ThreadLikeAssertion(&v11);
    WTF::CompletionHandler<void ()(WTF::String const&)>::CompletionHandler<WebKit::AuthenticatorManager::requestNewPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)>&&)::$_0,void>(&v12, &v14);
    WebKit::AuthenticatorPresenterCoordinator::requestNewPin(v4, v5, &v12);
    WTF::CompletionHandler<void ()(WTF::String const&)>::~CompletionHandler(&v12);
    WTF::ThreadLikeAssertion::~ThreadLikeAssertion(&v11);
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  v22 = &v13;
  v23[1] = &v13;
  v23[0] = 0;
  v26 = &v13;
  v25 = v23;
  v24 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v13);
  if (v24)
  {
    WTF::RefCountedAndCanMakeWeakPtr<WebKit::AuthenticatorPresenterCoordinator>::deref(v24);
  }

  if (!v10)
  {
    v7 = v17;
    WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0::$_0(&v8, &v14);
    WTF::Function<void ()(API::WebAuthenticationPanel const&)>::Function<WebKit::AuthenticatorManager::requestNewPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_1,void>(&v9, &v7);
    WebKit::AuthenticatorManager::dispatchPanelClientCall(a1, &v9);
    WTF::Function<void ()(API::WebAuthenticationPanel const&)>::~Function(&v9);
    WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_1::~$_1(&v7);
    v10 = 0;
  }

  return WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0::~$_0(&v14);
}

uint64_t *WTF::CompletionHandler<void ()(WTF::String const&)>::CompletionHandler<WebKit::AuthenticatorManager::requestNewPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)>&&)::$_0,void>(uint64_t *a1, uint64_t *a2)
{
  WTF::CompletionHandler<void ()(WTF::String const&)>::CompletionHandler<WebKit::AuthenticatorManager::requestNewPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)>&&)::$_0,void>(a1, a2);
  return a1;
}

{
  WTF::Function<void ()(WTF::String const&)>::Function<WebKit::AuthenticatorManager::requestNewPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0,void>(a1, a2);
  WTF::ThreadLikeAssertion::ThreadLikeAssertion(a1);
  return a1;
}

uint64_t *WTF::Function<void ()(API::WebAuthenticationPanel const&)>::Function<WebKit::AuthenticatorManager::requestNewPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_1,void>(uint64_t *a1, void *a2)
{
  WTF::Function<void ()(API::WebAuthenticationPanel const&)>::Function<WebKit::AuthenticatorManager::requestNewPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_1,void>(a1, a2);
  return a1;
}

{
  v4[2] = a1;
  v4[1] = a2;
  v4[4] = v4;
  v4[3] = a2;
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::requestNewPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_1,void,API::WebAuthenticationPanel const&>,WTF::CompletionHandler<void ()(WTF::String const&)> &&,0>(v4, a2);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>,void,void>(a1, v4);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void,API::WebAuthenticationPanel const&>>::~unique_ptr[abi:sn200100](v4);
  return a1;
}

uint64_t WebKit::AuthenticatorManager::selectAssertionResponse(uint64_t a1, uint64_t *a2, char a3, uint64_t *a4)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v16 = &v10;
  v15 = a1 + 904;
  v24 = &v10;
  v23 = a1 + 904;
  v26 = a1 + 904;
  v25 = *(a1 + 904);
  if (v25)
  {
    WTF::RefCountedAndCanMakeWeakPtr<WebKit::AuthenticatorPresenterCoordinator>::ref(v25);
  }

  v10 = v25;
  if (WTF::RefPtr<WebKit::AuthenticatorPresenterCoordinator,WTF::RawPtrTraits<WebKit::AuthenticatorPresenterCoordinator>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorPresenterCoordinator>>::operator BOOL(&v10))
  {
    v17 = &v10;
    v27 = &v10;
    WebKit::AuthenticatorPresenterCoordinator::selectAssertionResponse(v10, v13, v12 & 1, v11);
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  v18 = &v10;
  v19[1] = &v10;
  v19[0] = 0;
  v22 = &v10;
  v21 = v19;
  result = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v10);
  v20 = result;
  if (result)
  {
    result = WTF::RefCountedAndCanMakeWeakPtr<WebKit::AuthenticatorPresenterCoordinator>::deref(v20);
  }

  if (!v9)
  {
    WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v6, v13);
    v6[16] = v12 & 1;
    WTF::CompletionHandler<void ()(WTF::String const&)>::CompletionHandler(&v7, v11);
    WTF::Function<void ()(API::WebAuthenticationPanel const&)>::Function<WebKit::AuthenticatorManager::selectAssertionResponse(WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebKit::WebAuthenticationSource,WTF::CompletionHandler<void ()(WebCore::AuthenticatorAssertionResponse*)> &&)::$_0,void>(&v8, v6);
    WebKit::AuthenticatorManager::dispatchPanelClientCall(a1, &v8);
    WTF::Function<void ()(API::WebAuthenticationPanel const&)>::~Function(&v8);
    return WebKit::AuthenticatorManager::selectAssertionResponse(WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebKit::WebAuthenticationSource,WTF::CompletionHandler<void ()(WebCore::AuthenticatorAssertionResponse*)> &&)::$_0::~$_0(v6);
  }

  return result;
}

uint64_t *WTF::Function<void ()(API::WebAuthenticationPanel const&)>::Function<WebKit::AuthenticatorManager::selectAssertionResponse(WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebKit::WebAuthenticationSource,WTF::CompletionHandler<void ()(WebCore::AuthenticatorAssertionResponse*)> &&)::$_0,void>(uint64_t *a1, uint64_t a2)
{
  WTF::Function<void ()(API::WebAuthenticationPanel const&)>::Function<WebKit::AuthenticatorManager::selectAssertionResponse(WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebKit::WebAuthenticationSource,WTF::CompletionHandler<void ()(WebCore::AuthenticatorAssertionResponse*)> &&)::$_0,void>(a1, a2);
  return a1;
}

{
  v4[2] = a1;
  v4[1] = a2;
  v4[4] = v4;
  v4[3] = a2;
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::selectAssertionResponse(WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebKit::WebAuthenticationSource,WTF::CompletionHandler<void ()(WebCore::AuthenticatorAssertionResponse*)> &&)::$_0,void,API::WebAuthenticationPanel const&>,WTF::CompletionHandler<void ()(WebCore::AuthenticatorAssertionResponse*)> &,0>(v4, a2);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>,void,void>(a1, v4);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void,API::WebAuthenticationPanel const&>>::~unique_ptr[abi:sn200100](v4);
  return a1;
}

uint64_t WebKit::AuthenticatorManager::selectAssertionResponse(WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebKit::WebAuthenticationSource,WTF::CompletionHandler<void ()(WebCore::AuthenticatorAssertionResponse*)> &&)::$_0::~$_0(uint64_t a1)
{
  WebKit::AuthenticatorManager::selectAssertionResponse(WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebKit::WebAuthenticationSource,WTF::CompletionHandler<void ()(WebCore::AuthenticatorAssertionResponse*)> &&)::$_0::~$_0(a1);
  return a1;
}

{
  WTF::CompletionHandler<void ()(WebCore::AuthenticatorAssertionResponse *)>::~CompletionHandler((a1 + 24));
  WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1);
  return a1;
}

WTF::ThreadLikeAssertion *WebKit::AuthenticatorManager::decidePolicyForLocalAuthenticator(uint64_t a1, uint64_t *a2)
{
  v5[2] = a1;
  v5[1] = a2;
  WTF::CompletionHandler<void ()(WTF::String const&)>::CompletionHandler(&v4, a2);
  WTF::Function<void ()(API::WebAuthenticationPanel const&)>::Function<WebKit::AuthenticatorManager::decidePolicyForLocalAuthenticator(WTF::CompletionHandler<void ()(WebKit::LocalAuthenticatorPolicy)> &&)::$_0,void>(v5, &v4);
  WebKit::AuthenticatorManager::dispatchPanelClientCall(a1, v5);
  WTF::Function<void ()(API::WebAuthenticationPanel const&)>::~Function(v5);
  return WebKit::AuthenticatorManager::decidePolicyForLocalAuthenticator(WTF::CompletionHandler<void ()(WebKit::LocalAuthenticatorPolicy)> &&)::$_0::~$_0(&v4);
}

uint64_t *WTF::Function<void ()(API::WebAuthenticationPanel const&)>::Function<WebKit::AuthenticatorManager::decidePolicyForLocalAuthenticator(WTF::CompletionHandler<void ()(WebKit::LocalAuthenticatorPolicy)> &&)::$_0,void>(uint64_t *a1, uint64_t *a2)
{
  WTF::Function<void ()(API::WebAuthenticationPanel const&)>::Function<WebKit::AuthenticatorManager::decidePolicyForLocalAuthenticator(WTF::CompletionHandler<void ()(WebKit::LocalAuthenticatorPolicy)> &&)::$_0,void>(a1, a2);
  return a1;
}

{
  v4[2] = a1;
  v4[1] = a2;
  v4[4] = v4;
  v4[3] = a2;
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::decidePolicyForLocalAuthenticator(WTF::CompletionHandler<void ()(WebKit::LocalAuthenticatorPolicy)> &&)::$_0,void,API::WebAuthenticationPanel const&>,WTF::CompletionHandler<void ()(WebKit::LocalAuthenticatorPolicy)> &&,0>(v4, a2);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>,void,void>(a1, v4);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void,API::WebAuthenticationPanel const&>>::~unique_ptr[abi:sn200100](v4);
  return a1;
}

WTF::ThreadLikeAssertion *WebKit::AuthenticatorManager::decidePolicyForLocalAuthenticator(WTF::CompletionHandler<void ()(WebKit::LocalAuthenticatorPolicy)> &&)::$_0::~$_0(WTF::ThreadLikeAssertion *a1)
{
  WebKit::AuthenticatorManager::decidePolicyForLocalAuthenticator(WTF::CompletionHandler<void ()(WebKit::LocalAuthenticatorPolicy)> &&)::$_0::~$_0(a1);
  return a1;
}

{
  WTF::CompletionHandler<void ()(WebKit::LocalAuthenticatorPolicy)>::~CompletionHandler(a1);
  return a1;
}

WTF::ThreadLikeAssertion *WebKit::AuthenticatorManager::requestLAContextForUserVerification(uint64_t a1, uint64_t *a2)
{
  v9 = a1;
  v8 = a2;
  v11 = &v7;
  v10 = a1 + 904;
  v19 = &v7;
  v18 = a1 + 904;
  v21 = a1 + 904;
  v20 = *(a1 + 904);
  if (v20)
  {
    WTF::RefCountedAndCanMakeWeakPtr<WebKit::AuthenticatorPresenterCoordinator>::ref(v20);
  }

  v7 = v20;
  if (WTF::RefPtr<WebKit::AuthenticatorPresenterCoordinator,WTF::RawPtrTraits<WebKit::AuthenticatorPresenterCoordinator>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorPresenterCoordinator>>::operator BOOL(&v7))
  {
    v12 = &v7;
    v22 = &v7;
    WebKit::AuthenticatorPresenterCoordinator::requestLAContextForUserVerification(v7, v8);
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  v13 = &v7;
  v14[1] = &v7;
  v14[0] = 0;
  v17 = &v7;
  v16 = v14;
  result = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v7);
  v15 = result;
  if (result)
  {
    result = WTF::RefCountedAndCanMakeWeakPtr<WebKit::AuthenticatorPresenterCoordinator>::deref(v15);
  }

  if (!v6)
  {
    WTF::CompletionHandler<void ()(WTF::String const&)>::CompletionHandler(&v4, v8);
    WTF::Function<void ()(API::WebAuthenticationPanel const&)>::Function<WebKit::AuthenticatorManager::requestLAContextForUserVerification(WTF::CompletionHandler<void ()(LAContext *)> &&)::$_0,void>(&v5, &v4);
    WebKit::AuthenticatorManager::dispatchPanelClientCall(a1, &v5);
    WTF::Function<void ()(API::WebAuthenticationPanel const&)>::~Function(&v5);
    return WebKit::AuthenticatorManager::requestLAContextForUserVerification(WTF::CompletionHandler<void ()(LAContext *)> &&)::$_0::~$_0(&v4);
  }

  return result;
}

uint64_t *WTF::Function<void ()(API::WebAuthenticationPanel const&)>::Function<WebKit::AuthenticatorManager::requestLAContextForUserVerification(WTF::CompletionHandler<void ()(LAContext *)> &&)::$_0,void>(uint64_t *a1, uint64_t *a2)
{
  WTF::Function<void ()(API::WebAuthenticationPanel const&)>::Function<WebKit::AuthenticatorManager::requestLAContextForUserVerification(WTF::CompletionHandler<void ()(LAContext *)> &&)::$_0,void>(a1, a2);
  return a1;
}

{
  v4[2] = a1;
  v4[1] = a2;
  v4[4] = v4;
  v4[3] = a2;
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::requestLAContextForUserVerification(WTF::CompletionHandler<void ()(LAContext *)> &&)::$_0,void,API::WebAuthenticationPanel const&>,WTF::CompletionHandler<void ()(LAContext *)> &&,0>(v4, a2);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>,void,void>(a1, v4);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void,API::WebAuthenticationPanel const&>>::~unique_ptr[abi:sn200100](v4);
  return a1;
}

WTF::ThreadLikeAssertion *WebKit::AuthenticatorManager::requestLAContextForUserVerification(WTF::CompletionHandler<void ()(LAContext *)> &&)::$_0::~$_0(WTF::ThreadLikeAssertion *a1)
{
  WebKit::AuthenticatorManager::requestLAContextForUserVerification(WTF::CompletionHandler<void ()(LAContext *)> &&)::$_0::~$_0(a1);
  return a1;
}

{
  WTF::CompletionHandler<void ()(LAContext *)>::~CompletionHandler(a1);
  return a1;
}

uint64_t WebKit::AuthenticatorManager::filterTransports(WebKit::NfcService *a1, uint64_t *a2)
{
  v8 = a1;
  v7 = a2;
  isAvailable = WebKit::NfcService::isAvailable(a1);
  if ((isAvailable & 1) == 0)
  {
    v6 = 1;
    isAvailable = WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove(v7, &v6);
  }

  if ((WebKit::LocalService::isAvailable(isAvailable) & 1) == 0)
  {
    v5 = 3;
    WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove(v7, &v5);
  }

  v4 = 2;
  return WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove(v7, &v4);
}

uint64_t WebKit::AuthenticatorManager::startDiscovery(uint64_t a1, uint64_t *a2)
{
  v5[3] = a1;
  v5[2] = a2;
  v4 = a1;
  WTF::map<0ul,WTF::CrashOnOverflow,16ul,WebKit::AuthenticatorManager::startDiscovery(WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::$_0,WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const>(v5, a2, &v4);
  WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(a1 + 912, v5);
  return WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5);
}

void WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 12))
  {
    v3 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1);
    v4 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a1);
    WTF::VectorTypeOperations<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>>::destruct(v3, v4);
  }

  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetBufferSizeToFullCapacity(a1);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetBufferSizeToFullCapacity(a2);
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1, a2);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
}

uint64_t WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1)
{
  WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1);
  return a1;
}

{
  if (*(a1 + 12))
  {
    v2 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1);
    v3 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a1);
    WTF::VectorTypeOperations<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>>::destruct(v2, v3);
  }

  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  WTF::VectorBuffer<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::FastMalloc>::~VectorBuffer(a1);
  return a1;
}

BOOL std::operator==[abi:sn200100]<WebCore::MediationRequirement,WebCore::MediationRequirement>(uint64_t a1, char *a2)
{
  if (std::optional<WebCore::MediationRequirement>::operator BOOL[abi:sn200100](a1))
  {
    std::optional<WebCore::MediationRequirement>::operator*[abi:sn200100](a1);
    return *v2 == *a2;
  }

  else
  {
    return 0;
  }
}

uint64_t std::optional<unsigned int>::value_or[abi:sn200100]<unsigned int const&>(uint64_t a1)
{
  if ((std::__optional_storage_base<unsigned int,false>::has_value[abi:sn200100](a1) & 1) == 0)
  {
    return 120000;
  }

  std::__to_address[abi:sn200100]<char const>();
  return *v1;
}

uint64_t WTF::RunLoop::TimerBase::startOneShot(uint64_t a1, double a2)
{
  v4 = a2;
  *&v3[2] = a1;
  v3[0] = WTF::seconds_literals::operator"" _s();
  v3[1] = *std::max[abi:sn200100]<WTF::Seconds>(&v4, v3);
  return WTF::RunLoop::TimerBase::start();
}

void WebKit::AuthenticatorManager::runPanel(WebKit::AuthenticatorManager *this)
{
  v57[45] = *MEMORY[0x1E69E9840];
  v26[1] = this;
  v28 = v26;
  v27 = WTF::WeakPtr<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::get(this + 45);
  v46 = v26;
  v45 = v27;
  v47 = v27;
  if (v27)
  {
    WebKit::WebPageProxy::ref(v47);
  }

  v26[0] = v47;
  if (WTF::RefPtr<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>::operator!(v26))
  {
    v25 = 1;
  }

  else
  {
    std::optional<WebCore::GlobalFrameIdentifier>::operator->[abi:sn200100](this + 384);
    std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>::optional[abi:sn200100]<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>&,0>(v23, (v2 + 8));
    v3 = WebKit::WebFrameProxy::webFrame(v23[0], v23[1]);
    v30 = &v24;
    v29 = v3;
    v43 = &v24;
    v42 = v3;
    v44 = v3;
    if (v3)
    {
      WebKit::WebFrameProxy::ref(v44);
    }

    v24 = v44;
    if (WTF::RefPtr<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>::operator!(&v24))
    {
      v25 = 1;
    }

    else if (std::optional<WebKit::FrameInfoData>::operator BOOL[abi:sn200100](this + 416))
    {
      v22 = this + 64;
      WebKit::AuthenticatorManager::getTransports(this, &v21);
      if (WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::isEmpty(&v21))
      {
        WebKit::AuthenticatorManager::cancel(this);
        v25 = 1;
      }

      else
      {
        ClientDataType = WebKit::getClientDataType(v22);
        API::WebAuthenticationPanel::create(this, &v19, &v21, ClientDataType, &v18, &v20);
        WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::operator=<API::WebAuthenticationPanel>(this + 47, &v20);
        WTF::Ref<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::~Ref(&v20);
        v26[3] = &v18;
        v34 = &v18;
        v35 = &v18;
        v36[1] = &v18;
        v36[0] = 0;
        v36[3] = &v18;
        v36[2] = v36;
        v37 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v18);
        if (v37)
        {
          WTF::StringImpl::deref(v37);
        }

        v26[2] = &v19;
        v38 = &v19;
        v39 = &v19;
        v40[1] = &v19;
        v40[0] = 0;
        v40[3] = &v19;
        v40[2] = v40;
        v41 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v19);
        if (v41)
        {
          WTF::StringImpl::deref(v41);
        }

        v5 = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(this + 376);
        WTF::Ref<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::Ref(&v17, v5);
        v31 = v26;
        v56 = v26;
        v6 = WebKit::WebPageProxy::uiClient(v26[0]);
        v7 = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(v26);
        v8 = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(&v17);
        v9 = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(&v24);
        std::optional<WebKit::FrameInfoData>::operator*[abi:sn200100](this + 416);
        WebKit::FrameInfoData::FrameInfoData(v57, v10);
        WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v13, &v21);
        v11 = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(&v17);
        WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr<void>(&v14, v11);
        WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr<void>(&v15, this);
        WTF::ThreadLikeAssertion::ThreadLikeAssertion(&v12);
        WTF::CompletionHandler<void ()(WebKit::WebAuthenticationPanelResult)>::CompletionHandler<WebKit::AuthenticatorManager::runPanel(void)::$_0,void>(&v16, &v13);
        (*(*v6 + 568))(v6, v7, v8, v9, v57, &v16);
        WTF::CompletionHandler<void ()(WebKit::WebAuthenticationPanelResult)>::~CompletionHandler(&v16);
        WTF::ThreadLikeAssertion::~ThreadLikeAssertion(&v12);
        WebKit::AuthenticatorManager::runPanel(void)::$_0::~$_0(&v13);
        WebKit::FrameInfoData::~FrameInfoData(v57);
        WTF::Ref<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::~Ref(&v17);
        v25 = 0;
      }

      WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::~HashSet(&v21);
    }

    else
    {
      v25 = 1;
    }

    v32 = &v24;
    v52[1] = &v24;
    v52[0] = 0;
    v55 = &v24;
    v54 = v52;
    v53 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v24);
    if (v53)
    {
      WebKit::WebFrameProxy::deref(v53);
    }
  }

  v33 = v26;
  v48[1] = v26;
  v48[0] = 0;
  v51 = v26;
  v50 = v48;
  v49 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(v26);
  if (v49)
  {
    WebKit::WebPageProxy::deref(v49);
  }
}

uint64_t WTF::WeakPtr<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::get(uint64_t *a1)
{
  if (!WTF::RefPtr<WebKit::AuthenticatorPresenterCoordinator,WTF::RawPtrTraits<WebKit::AuthenticatorPresenterCoordinator>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorPresenterCoordinator>>::operator BOOL(a1))
  {
    return 0;
  }

  v2 = std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](*a1);
  if (v2)
  {
    return v2 - 16;
  }

  else
  {
    return 0;
  }
}

uint64_t std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>::optional[abi:sn200100]<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>&,0>(uint64_t a1, void *a2)
{
  std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>::optional[abi:sn200100]<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>&,0>(a1, a2);
  return a1;
}

{
  _ZNSt3__127__optional_move_assign_baseIN3WTF23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS1_38ObjectIdentifierMainThreadAccessTraitsIyEEyEELb1EECI2NS_24__optional_destruct_baseIS7_Lb1EEEIJRS7_EEENS_10in_place_tEDpOT_(a1, a2);
  return a1;
}

uint64_t WebKit::AuthenticatorManager::getTransports@<X0>(WebKit::AuthenticatorManager *this@<X0>, void *a2@<X8>)
{
  v13 = a2;
  v12 = this;
  v11 = 0;
  WTF::HashSet<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(a2);
  v10 = a2;
  v9 = a2;
  v17 = this + 64;
  v16[3] = &v10;
  v16[2] = &v9;
  v15 = a2;
  v14 = a2;
  v25 = a2;
  v24 = a2;
  v23 = a2;
  v22 = a2;
  WTF::Visitor<WebKit::AuthenticatorManager::initTimeOutTimer(void)::$_0,WebKit::AuthenticatorManager::initTimeOutTimer(void)::$_1>::Visitor(v26, a2, a2);
  v16[1] = v26[1];
  v16[0] = v26[0];
  v26[2] = v17;
  v21 = v16;
  v20 = v17;
  v19 = 2;
  switch(mpark::variant<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>::index(v17))
  {
    case 0:
      v4 = v21;
      mpark::get<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>(v20);
      WebKit::AuthenticatorManager::getTransports(void)const::$_0::operator()(v4, v5);
      return (*(*this + 168))(this, a2);
    case 1:
      v6 = v21 + 1;
      mpark::get<WebCore::PublicKeyCredentialRequestOptions,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>(v20);
      WebKit::AuthenticatorManager::getTransports(void)const::$_1::operator()(v6, v7);
      return (*(*this + 168))(this, a2);
    case 2:
      __break(1u);
      goto LABEL_5;
    case 3:
LABEL_5:
      __break(1u);
      goto LABEL_6;
    case 4:
LABEL_6:
      __break(1u);
      goto LABEL_7;
    case 5:
LABEL_7:
      __break(1u);
      goto LABEL_8;
    case 6:
LABEL_8:
      __break(1u);
      goto LABEL_9;
    case 7:
LABEL_9:
      __break(1u);
      goto LABEL_10;
    case 8:
LABEL_10:
      __break(1u);
      goto LABEL_11;
    case 9:
LABEL_11:
      __break(1u);
      goto LABEL_12;
    case 10:
LABEL_12:
      __break(1u);
      goto LABEL_13;
    case 11:
LABEL_13:
      __break(1u);
      goto LABEL_14;
    case 12:
LABEL_14:
      __break(1u);
      goto LABEL_15;
    case 13:
LABEL_15:
      __break(1u);
      goto LABEL_16;
    case 14:
LABEL_16:
      __break(1u);
      goto LABEL_17;
    case 15:
LABEL_17:
      __break(1u);
      goto LABEL_18;
    case 16:
LABEL_18:
      __break(1u);
      goto LABEL_19;
    case 17:
LABEL_19:
      __break(1u);
      goto LABEL_20;
    case 18:
LABEL_20:
      __break(1u);
      goto LABEL_21;
    case 19:
LABEL_21:
      __break(1u);
      goto LABEL_22;
    case 20:
LABEL_22:
      __break(1u);
      goto LABEL_23;
    case 21:
LABEL_23:
      __break(1u);
      goto LABEL_24;
    case 22:
LABEL_24:
      __break(1u);
      goto LABEL_25;
    case 23:
LABEL_25:
      __break(1u);
      goto LABEL_26;
    case 24:
LABEL_26:
      __break(1u);
      goto LABEL_27;
    case 25:
LABEL_27:
      __break(1u);
      goto LABEL_28;
    case 26:
LABEL_28:
      __break(1u);
      goto LABEL_29;
    case 27:
LABEL_29:
      __break(1u);
      goto LABEL_30;
    case 28:
LABEL_30:
      __break(1u);
      goto LABEL_31;
    case 29:
LABEL_31:
      __break(1u);
      goto LABEL_32;
    case 30:
LABEL_32:
      __break(1u);
      goto LABEL_33;
    case 31:
LABEL_33:
      __break(1u);
      break;
    default:
      break;
  }

  v18 = 2;
  __break(1u);
  return (*(*this + 168))(this, a2);
}

WTF::String *WebKit::anonymous namespace::getRpId(WTF::String *a1, uint64_t a2)
{
  if (std::holds_alternative<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>(a2))
  {
    std::get<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>(a2);
    return WTF::String::String(a1, (v3 + 16));
  }

  else
  {
    std::get<WebCore::PublicKeyCredentialRequestOptions,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>(a2);
    return WTF::String::String(a1, (v5 + 24));
  }
}

WTF::String *WebKit::anonymous namespace::getUserName(WTF::String *a1, uint64_t a2)
{
  v3 = std::holds_alternative<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>(a2);
  if (v3)
  {
    std::get<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>(a2);
    return WTF::String::String(a1, (v4 + 24));
  }

  else
  {
    v6 = WTF::emptyString(v3);
    return WTF::String::String(a1, v6);
  }
}

void WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::operator=<API::WebAuthenticationPanel>(uint64_t *a1, uint64_t *a2)
{
  v3[2] = a1;
  v3[1] = a2;
  WTF::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>>(v3, a2);
  WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>::swap<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>(a1, v3);
  v3[3] = v3;
  v4[1] = v3;
  v4[0] = 0;
  v4[3] = v3;
  v4[2] = v4;
  v5 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(v3);
  if (v5)
  {
    API::Object::deref(v5);
  }
}

uint64_t *WTF::Ref<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::~Ref(uint64_t *a1)
{
  WTF::Ref<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::~Ref(a1);
  return a1;
}

{
  v4 = a1;
  v5 = a1;
  v2 = 0;
  v7 = a1;
  v6 = &v2;
  v3 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(a1);
  if (v3)
  {
    v8 = v3;
    API::Object::deref(v3);
  }

  return v5;
}

CFTypeRef **WTF::Ref<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::Ref(CFTypeRef **a1, CFTypeRef *a2)
{
  WTF::Ref<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::Ref(a1, a2);
  return a1;
}

{
  API::Object::ref(a2);
  *a1 = a2;
  return a1;
}

void std::optional<WebKit::FrameInfoData>::operator*[abi:sn200100](uint64_t a1)
{
  if ((std::__optional_storage_base<WebKit::FrameInfoData,false>::has_value[abi:sn200100](a1) & 1) == 0)
  {
    __break(1u);
  }

  std::__to_address[abi:sn200100]<char const>();
}

const void **WebKit::FrameInfoData::FrameInfoData(const void **this, const WebKit::FrameInfoData *a2)
{
  WebKit::FrameInfoData::FrameInfoData(this, a2);
  return this;
}

{
  *this = *a2;
  WebCore::ResourceRequest::ResourceRequest(this + 1, (a2 + 8));
  WebCore::SecurityOriginData::SecurityOriginData((this + 26), (a2 + 208));
  WTF::String::String((this + 30), a2 + 30);
  memcpy(this + 31, a2 + 248, 0x38uLL);
  WebCore::CertificateInfo::CertificateInfo(this + 38, a2 + 38);
  this[39] = *(a2 + 39);
  this[40] = *(a2 + 40);
  this[41] = *(a2 + 41);
  this[42] = *(a2 + 42);
  *(this + 86) = *(a2 + 86);
  return this;
}

uint64_t *WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(uint64_t *a1, WTF::RefCountedBase *a2)
{
  WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(a1, a2);
  return a1;
}

{
  WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::HashTable(a1, a2);
  return a1;
}

WTF::ThreadSafeRefCountedBase **WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr<void>(WTF::ThreadSafeRefCountedBase **a1, uint64_t a2)
{
  WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr<void>(a1, a2);
  return a1;
}

{
  v3 = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(a2);
  WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr<void>(a1, v3);
  return a1;
}

{
  v5 = WTF::CanMakeWeakPtrBase<WTF::WeakPtrFactory<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl>,(WTF::WeakPtrFactoryInitialization)0>::weakImpl((a2 + 16));
  if (v5)
  {
    WTF::ThreadSafeRefCountedBase::ref(v5);
  }

  *a1 = v5;
  return a1;
}

{
  WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr<void>(a1, a2);
  return a1;
}

{
  if (a2)
  {
    v3 = WTF::CanMakeWeakPtrBase<WTF::WeakPtrFactory<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl>,(WTF::WeakPtrFactoryInitialization)0>::weakImpl((a2 + 16));
  }

  else
  {
    v3 = 0;
  }

  v6 = v3;
  if (v3)
  {
    WTF::ThreadSafeRefCountedBase::ref(v3);
  }

  *a1 = v6;
  return a1;
}

uint64_t *WTF::CompletionHandler<void ()(WebKit::WebAuthenticationPanelResult)>::CompletionHandler<WebKit::AuthenticatorManager::runPanel(void)::$_0,void>(uint64_t *a1, uint64_t *a2)
{
  WTF::CompletionHandler<void ()(WebKit::WebAuthenticationPanelResult)>::CompletionHandler<WebKit::AuthenticatorManager::runPanel(void)::$_0,void>(a1, a2);
  return a1;
}

{
  WTF::Function<void ()(WebKit::WebAuthenticationPanelResult)>::Function<WebKit::AuthenticatorManager::runPanel(void)::$_0,void>(a1, a2);
  WTF::ThreadLikeAssertion::ThreadLikeAssertion(a1);
  return a1;
}

WTF::ThreadLikeAssertion *WTF::CompletionHandler<void ()(WebKit::WebAuthenticationPanelResult)>::~CompletionHandler(WTF::ThreadLikeAssertion *a1)
{
  WTF::CompletionHandler<void ()(WebKit::WebAuthenticationPanelResult)>::~CompletionHandler(a1);
  return a1;
}

{
  v4 = a1;
  WTF::ThreadLikeAssertion::ThreadLikeAssertion(&v3);
  WTF::ThreadLikeAssertion::operator=();
  WTF::ThreadLikeAssertion::~ThreadLikeAssertion(&v3);
  WTF::ThreadLikeAssertion::~ThreadLikeAssertion(a1);
  WTF::Function<void ()(WebKit::WebAuthenticationPanelResult)>::~Function(a1);
  return a1;
}

uint64_t *WebKit::AuthenticatorManager::runPanel(void)::$_0::~$_0(uint64_t *a1)
{
  WebKit::AuthenticatorManager::runPanel(void)::$_0::~$_0(a1);
  return a1;
}

{
  WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::~WeakPtr(a1 + 2);
  WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::~WeakPtr(a1 + 1);
  WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::~HashSet(a1);
  return a1;
}

void WebKit::FrameInfoData::~FrameInfoData(WebKit::FrameInfoData *this)
{
  WebKit::FrameInfoData::~FrameInfoData(this);
}

{
  WebCore::CertificateInfo::~CertificateInfo((this + 304));
  v2[1] = this + 240;
  v2[0] = 0;
  v2[3] = this + 240;
  v2[2] = v2;
  v3 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(this + 30);
  if (v3)
  {
    WTF::StringImpl::deref(v3);
  }

  WebCore::SecurityOriginData::~SecurityOriginData((this + 208));
  WebCore::ResourceRequest::~ResourceRequest((this + 8));
}

WTF::RefCountedBase *WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::~HashSet(WTF::RefCountedBase *a1)
{
  WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::~HashSet(a1);
  return a1;
}

{
  WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::~HashTable(a1);
  return a1;
}

atomic_uint *WebKit::AuthenticatorManager::runPresenterInternal(uint64_t a1, uint64_t *a2)
{
  v11 = a1;
  v10 = a2;
  v9 = a1 + 64;
  v3 = v10;
  ClientDataType = WebKit::getClientDataType(v9);
  WebKit::AuthenticatorPresenterCoordinator::create(a1, &v7, v3, ClientDataType, &v6, &v8);
  WTF::RefPtr<WebKit::AuthenticatorPresenterCoordinator,WTF::RawPtrTraits<WebKit::AuthenticatorPresenterCoordinator>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorPresenterCoordinator>>::operator=<WebKit::AuthenticatorPresenterCoordinator>((a1 + 904), &v8);
  WTF::Ref<WebKit::AuthenticatorPresenterCoordinator,WTF::RawPtrTraits<WebKit::AuthenticatorPresenterCoordinator>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorPresenterCoordinator>>::~Ref(&v8);
  v13 = &v6;
  v14 = &v6;
  v15 = &v6;
  v16[1] = &v6;
  v16[0] = 0;
  v16[3] = &v6;
  v16[2] = v16;
  v17 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v6);
  if (v17)
  {
    WTF::StringImpl::deref(v17);
  }

  v12 = &v7;
  v18 = &v7;
  v19 = &v7;
  v20[1] = &v7;
  v20[0] = 0;
  v20[3] = &v7;
  v20[2] = v20;
  result = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v7);
  v21 = result;
  if (result)
  {
    return WTF::StringImpl::deref(v21);
  }

  return result;
}

uint64_t WTF::RefPtr<WebKit::AuthenticatorPresenterCoordinator,WTF::RawPtrTraits<WebKit::AuthenticatorPresenterCoordinator>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorPresenterCoordinator>>::operator=<WebKit::AuthenticatorPresenterCoordinator>(uint64_t *a1, uint64_t *a2)
{
  v4[2] = a1;
  v4[1] = a2;
  WTF::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>>(v4, a2);
  WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>::swap<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>(a1, v4);
  v4[3] = v4;
  v5[1] = v4;
  v5[0] = 0;
  v8 = v4;
  v7 = v5;
  result = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(v4);
  v6 = result;
  if (result)
  {
    return WTF::RefCountedAndCanMakeWeakPtr<WebKit::AuthenticatorPresenterCoordinator>::deref(v6);
  }

  return result;
}

uint64_t *WTF::Ref<WebKit::AuthenticatorPresenterCoordinator,WTF::RawPtrTraits<WebKit::AuthenticatorPresenterCoordinator>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorPresenterCoordinator>>::~Ref(uint64_t *a1)
{
  WTF::Ref<WebKit::AuthenticatorPresenterCoordinator,WTF::RawPtrTraits<WebKit::AuthenticatorPresenterCoordinator>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorPresenterCoordinator>>::~Ref(a1);
  return a1;
}

{
  v4 = a1;
  v5 = a1;
  v2 = 0;
  v8 = a1;
  v7 = &v2;
  v3 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(a1);
  if (v3)
  {
    v6 = v3;
    WTF::RefCountedAndCanMakeWeakPtr<WebKit::AuthenticatorPresenterCoordinator>::deref(v3);
  }

  return v5;
}

uint64_t *WTF::Function<void ()(API::WebAuthenticationPanel const&)>::Function<WebKit::AuthenticatorManager::invokePendingCompletionHandler(mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&)::$_0,void>(uint64_t *a1, _BYTE *a2)
{
  WTF::Function<void ()(API::WebAuthenticationPanel const&)>::Function<WebKit::AuthenticatorManager::invokePendingCompletionHandler(mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&)::$_0,void>(a1, a2);
  return a1;
}

{
  v4[2] = a1;
  v4[1] = a2;
  v4[4] = v4;
  v4[3] = a2;
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::invokePendingCompletionHandler(mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&)::$_0,void,API::WebAuthenticationPanel const&>,mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&,0>(v4, a2);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>,void,void>(a1, v4);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void,API::WebAuthenticationPanel const&>>::~unique_ptr[abi:sn200100](v4);
  return a1;
}

uint64_t *WTF::CompletionHandler<void ()(mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&)>::operator()(WTF::RefCountedBase *a1, uint64_t a2)
{
  v4[2] = a1;
  v4[1] = a2;
  WTF::RefCountedBase::applyRefDerefThreadingCheck(a1);
  std::exchange[abi:sn200100]<WTF::Function<void ()(mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&)>,decltype(nullptr)>(v4, a1);
  WTF::Function<void ()(mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&)>::operator()(v4);
  return WTF::Function<void ()(mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&)>::~Function(v4);
}

WTF::ThreadSafeRefCountedBase **WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr(WTF::ThreadSafeRefCountedBase **a1, WTF::ThreadSafeRefCountedBase **a2)
{
  WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr(a1, a2);
  return a1;
}

{
  v5 = *a2;
  if (*a2)
  {
    WTF::ThreadSafeRefCountedBase::ref(v5);
  }

  *a1 = v5;
  return a1;
}

BOOL WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator!(void *a1)
{
  v2 = WTF::RefPtr<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>::operator!(a1);
  v3 = 1;
  if (!v2)
  {
    v4 = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(a1);
    return !WTF::WeakPtrImplBase<WTF::DefaultWeakPtrImpl>::operator BOOL(v4);
  }

  return v3;
}

uint64_t *WTF::Function<void ()(void)>::Function<WebKit::AuthenticatorManager::dispatchPanelClientCall(WTF::Function<void ()(API::WebAuthenticationPanel const&)> &&)::$_0,void>(uint64_t *a1, uint64_t *a2)
{
  WTF::Function<void ()(void)>::Function<WebKit::AuthenticatorManager::dispatchPanelClientCall(WTF::Function<void ()(API::WebAuthenticationPanel const&)> &&)::$_0,void>(a1, a2);
  return a1;
}

{
  v4[2] = a1;
  v4[1] = a2;
  v4[4] = v4;
  v4[3] = a2;
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::dispatchPanelClientCall(WTF::Function<void ()(API::WebAuthenticationPanel const&)> &&)::$_0,void>,WTF::Function<void ()(API::WebAuthenticationPanel const&)> &&,0>(v4, a2);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>,void,void>(a1, v4);
  std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::~unique_ptr[abi:sn200100](v4);
  return a1;
}

uint64_t *WebKit::AuthenticatorManager::dispatchPanelClientCall(WTF::Function<void ()(API::WebAuthenticationPanel const&)> &&)const::$_0::~$_0(uint64_t *a1)
{
  WebKit::AuthenticatorManager::dispatchPanelClientCall(WTF::Function<void ()(API::WebAuthenticationPanel const&)> &&)const::$_0::~$_0(a1);
  return a1;
}

{
  WTF::Function<void ()(API::WebAuthenticationPanel const&)>::~Function(a1 + 1);
  WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::~WeakPtr(a1);
  return a1;
}

void WebKit::AuthenticatorManager::~AuthenticatorManager(WebKit::AuthenticatorManager *this)
{
  WebKit::AuthenticatorManager::~AuthenticatorManager(this);
}

{
  WebKit::AuthenticatorManager::~AuthenticatorManager(this);
  bmalloc::api::tzoneFree(this, v2);
}

{
  *this = &unk_1F10E6C88;
  *(this + 3) = &unk_1F10E6D50;
  WTF::HashSet<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::~HashSet((this + 928));
  WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 912);
  v2[1] = this + 904;
  v2[0] = 0;
  v5 = this + 904;
  v4 = v2;
  v3 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(this + 113);
  if (v3)
  {
    WTF::RefCountedAndCanMakeWeakPtr<WebKit::AuthenticatorPresenterCoordinator>::deref(v3);
  }

  WTF::RunLoop::Timer::~Timer((this + 856));
  WTF::CompletionHandler<void ()(mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&)>::~CompletionHandler((this + 848));
  WebKit::WebAuthenticationRequestData::~WebAuthenticationRequestData((this + 48));
  WebKit::AuthenticatorObserver::~AuthenticatorObserver((this + 24));
  WebKit::AuthenticatorObserver::~AuthenticatorObserver(this);
  WTF::RefCounted<WebKit::AuthenticatorManager>::~RefCounted((this + 16));
}

void non-virtual thunk toWebKit::AuthenticatorManager::~AuthenticatorManager(WebKit::AuthenticatorManager *this)
{
  WebKit::AuthenticatorManager::~AuthenticatorManager((this - 24));
}

{
  WebKit::AuthenticatorManager::~AuthenticatorManager((this - 24));
}

void WebKit::AuthenticatorTransportServiceObserver::~AuthenticatorTransportServiceObserver(WebKit::AuthenticatorTransportServiceObserver *this)
{
  __break(1u);
}

{
  __break(1u);
}

void WTF::AbstractRefCountedAndCanMakeWeakPtr<WebKit::AuthenticatorTransportServiceObserver>::~AbstractRefCountedAndCanMakeWeakPtr()
{
  __break(1u);
}

{
  __break(1u);
}

void WTF::AbstractRefCounted::~AbstractRefCounted(WTF::AbstractRefCounted *this)
{
  __break(1u);
}

{
  __break(1u);
}

void WebKit::AuthenticatorObserver::~AuthenticatorObserver(WebKit::AuthenticatorObserver *this)
{
  __break(1u);
}

{
  __break(1u);
}

{
  WTF::AbstractRefCountedAndCanMakeWeakPtr<WebKit::AuthenticatorObserver>::~AbstractRefCountedAndCanMakeWeakPtr(this);
}

void WTF::AbstractRefCountedAndCanMakeWeakPtr<WebKit::AuthenticatorObserver>::~AbstractRefCountedAndCanMakeWeakPtr()
{
  __break(1u);
}

{
  __break(1u);
}

uint64_t WTF::ASCIILiteral::fromLiteralUnsafe(WTF::ASCIILiteral *this, const char *a2)
{
  v3 = std::char_traits<char>::length[abi:sn200100](this);
  v4 = WTF::unsafeMakeSpan<char const,18446744073709551615ul>(this, v3 + 1);
  WTF::ASCIILiteral::ASCIILiteral(&v7, v4, v5);
  return v7;
}

void *std::span<char const,18446744073709551615ul>::span[abi:sn200100]<char const*>(void *a1, uint64_t a2, uint64_t a3)
{
  std::span<char const,18446744073709551615ul>::span[abi:sn200100]<char const*>(a1, a2, a3);
  return a1;
}

{
  std::to_address[abi:sn200100]<char const>();
  *a1 = v4;
  a1[1] = a3;
  return a1;
}

void *WTF::ASCIILiteral::ASCIILiteral(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

uint64_t *WTF::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>>(uint64_t *a1, uint64_t *a2)
{
  WTF::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>>(a1, a2);
  return a1;
}

{
  *a1 = WTF::Ref<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::leakRef(a2);
  return a1;
}

uint64_t *WTF::Ref<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::~Ref(uint64_t *a1)
{
  WTF::Ref<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::~Ref(a1);
  return a1;
}

{
  v4 = a1;
  v5 = a1;
  v2 = 0;
  v7 = a1;
  v6 = &v2;
  v3 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(a1);
  if (v3)
  {
    v8 = v3;
    WTF::StringImpl::deref(v3);
  }

  return v5;
}

atomic_uint **WTF::StringImpl::createWithoutCopying@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, atomic_uint **a3@<X8>)
{
  v5[2] = a3;
  v5[1] = a2;
  v5[0] = a1;
  if (std::span<char const,18446744073709551615ul>::empty[abi:sn200100](v5))
  {
    return WTF::Ref<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::Ref(a3, MEMORY[0x1E696EB88]);
  }

  else
  {
    return WTF::StringImpl::createWithoutCopyingNonEmpty();
  }
}

uint64_t WTF::ASCIILiteral::span8(WTF::ASCIILiteral *this)
{
  v6[2] = this;
  v2 = WTF::ASCIILiteral::length(this);
  v3 = std::span<char const,18446744073709551615ul>::first[abi:sn200100](this, v2);
  v6[1] = v4;
  v6[0] = v3;
  return WTF::byteCast<unsigned char,std::span<char const,18446744073709551615ul>>(v6);
}

atomic_uint **WTF::Ref<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::Ref(atomic_uint **a1, atomic_uint *a2)
{
  WTF::Ref<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::Ref(a1, a2);
  return a1;
}

{
  WTF::StringImpl::ref(a2);
  *a1 = a2;
  return a1;
}

uint64_t std::span<char const,18446744073709551615ul>::first[abi:sn200100](uint64_t a1, unint64_t a2)
{
  if (a2 > std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](a1))
  {
    __break(1u);
  }

  v3 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](a1);
  std::span<char const,18446744073709551615ul>::span[abi:sn200100]<char const*>(&v6, v3, a2);
  return v6;
}

uint64_t WTF::ASCIILiteral::length(WTF::ASCIILiteral *this)
{
  if (std::span<char const,18446744073709551615ul>::empty[abi:sn200100](this))
  {
    return 0;
  }

  else
  {
    return std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](this) - 1;
  }
}

uint64_t WTF::spanReinterpretCast<unsigned char const,18446744073709551615ul,char const>(uint64_t a1, uint64_t a2)
{
  v5[0] = a1;
  v5[1] = a2;
  v2 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](v5);
  v3 = std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](v5);
  std::span<char const,18446744073709551615ul>::span[abi:sn200100]<char const*>(&v6, v2, v3);
  return v6;
}

uint64_t WTF::Ref<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::leakRef(uint64_t *a1)
{
  v2[2] = a1;
  v2[0] = 0;
  v2[4] = a1;
  v2[3] = v2;
  return std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(a1);
}

uint64_t mpark::detail::base<(mpark::detail::Trait)1,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::base<1ul,WebCore::ExceptionData>(uint64_t a1)
{
  std::__to_address[abi:sn200100]<char const>();
  mpark::detail::recursive_union<(mpark::detail::Trait)1,0ul,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::recursive_union<1ul,WebCore::ExceptionData>(a1);
  *(a1 + 16) = 1;
  return a1;
}

uint64_t mpark::detail::recursive_union<(mpark::detail::Trait)1,0ul,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::recursive_union<1ul,WebCore::ExceptionData>(uint64_t a1)
{
  mpark::detail::recursive_union<(mpark::detail::Trait)1,0ul,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::recursive_union<1ul,WebCore::ExceptionData>(a1);
  return a1;
}

{
  std::__to_address[abi:sn200100]<char const>();
  mpark::detail::recursive_union<(mpark::detail::Trait)1,1ul,WebCore::ExceptionData>::recursive_union<WebCore::ExceptionData>(a1);
  return a1;
}

uint64_t mpark::detail::recursive_union<(mpark::detail::Trait)1,1ul,WebCore::ExceptionData>::recursive_union<WebCore::ExceptionData>(uint64_t a1)
{
  mpark::detail::recursive_union<(mpark::detail::Trait)1,1ul,WebCore::ExceptionData>::recursive_union<WebCore::ExceptionData>(a1);
  return a1;
}

{
  std::__to_address[abi:sn200100]<char const>();
  mpark::detail::alt<1ul,WebCore::ExceptionData>::alt<WebCore::ExceptionData>(a1);
  return a1;
}

uint64_t mpark::detail::alt<1ul,WebCore::ExceptionData>::alt<WebCore::ExceptionData>(uint64_t a1)
{
  mpark::detail::alt<1ul,WebCore::ExceptionData>::alt<WebCore::ExceptionData>(a1);
  return a1;
}

{
  std::__to_address[abi:sn200100]<char const>();
  WebCore::ExceptionData::ExceptionData(a1, v2);
  return a1;
}

uint64_t WebCore::ExceptionData::ExceptionData(uint64_t a1, uint64_t a2)
{
  WebCore::ExceptionData::ExceptionData(a1, a2);
  return a1;
}

{
  *a1 = *a2;
  WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr((a1 + 8), (a2 + 8));
  return a1;
}

uint64_t mpark::detail::impl<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::~impl(uint64_t a1)
{
  mpark::detail::impl<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::~impl(a1);
  return a1;
}

{
  mpark::detail::copy_assignment<mpark::detail::traits<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~copy_assignment(a1);
  return a1;
}

uint64_t mpark::detail::destructor<mpark::detail::traits<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~destructor(uint64_t a1)
{
  mpark::detail::destructor<mpark::detail::traits<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>,(mpark::detail::Trait)1>::destroy(a1);
  mpark::detail::base<(mpark::detail::Trait)1,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::~base(a1);
  return a1;
}

void mpark::detail::destructor<mpark::detail::traits<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>,(mpark::detail::Trait)1>::destroy(uint64_t a1)
{
  if (!mpark::detail::base<(mpark::detail::Trait)1,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::valueless_by_exception(a1))
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>,(mpark::detail::Trait)1> &>();
  }

  *(a1 + 16) = -1;
}

void mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>,(mpark::detail::Trait)1> &>()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  switch(mpark::detail::base<(mpark::detail::Trait)1,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::index(v0))
  {
    case 0:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      mpark::detail::access::base::get_alt<0ul,mpark::detail::base<(mpark::detail::Trait)1,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &>();
      mpark::detail::visitation::base::visit_return_type_check<void,void>::invoke<mpark::detail::dtor,mpark::detail::alt<0ul,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>> &>();
      return;
    case 1:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      mpark::detail::access::base::get_alt<1ul,mpark::detail::base<(mpark::detail::Trait)1,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &>();
      mpark::detail::visitation::base::visit_return_type_check<void,void>::invoke<mpark::detail::dtor,mpark::detail::alt<1ul,WebCore::ExceptionData> &>();
      return;
    case 2:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_5;
    case 3:
LABEL_5:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_6;
    case 4:
LABEL_6:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_7;
    case 5:
LABEL_7:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_8;
    case 6:
LABEL_8:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_9;
    case 7:
LABEL_9:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_10;
    case 8:
LABEL_10:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_11;
    case 9:
LABEL_11:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_12;
    case 10:
LABEL_12:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_13;
    case 11:
LABEL_13:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_14;
    case 12:
LABEL_14:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_15;
    case 13:
LABEL_15:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_16;
    case 14:
LABEL_16:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_17;
    case 15:
LABEL_17:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_18;
    case 16:
LABEL_18:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_19;
    case 17:
LABEL_19:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_20;
    case 18:
LABEL_20:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_21;
    case 19:
LABEL_21:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_22;
    case 20:
LABEL_22:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_23;
    case 21:
LABEL_23:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_24;
    case 22:
LABEL_24:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_25;
    case 23:
LABEL_25:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_26;
    case 24:
LABEL_26:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_27;
    case 25:
LABEL_27:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_28;
    case 26:
LABEL_28:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_29;
    case 27:
LABEL_29:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_30;
    case 28:
LABEL_30:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_31;
    case 29:
LABEL_31:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_32;
    case 30:
LABEL_32:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_33;
    case 31:
LABEL_33:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      break;
    default:
      break;
  }

  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  __break(1u);
}

uint64_t mpark::detail::base<(mpark::detail::Trait)1,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::index(uint64_t a1)
{
  if (mpark::detail::base<(mpark::detail::Trait)1,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::valueless_by_exception(a1))
  {
    return -1;
  }

  else
  {
    return *(a1 + 16);
  }
}

uint64_t *mpark::detail::visitation::base::visit_return_type_check<void,void>::invoke<mpark::detail::dtor,mpark::detail::alt<0ul,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>> &>()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return mpark::lib::cpp17::invoke<mpark::detail::dtor,mpark::detail::alt<0ul,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>> &>();
}

void mpark::detail::access::base::get_alt<0ul,mpark::detail::base<(mpark::detail::Trait)1,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &>()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  mpark::detail::access::recursive_union::get_alt<mpark::detail::recursive_union<(mpark::detail::Trait)1,0ul,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &>();
}

uint64_t *mpark::lib::cpp17::invoke<mpark::detail::dtor,mpark::detail::alt<0ul,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>> &>()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return mpark::lib::cpp17::detail::invoke<mpark::detail::dtor,mpark::detail::alt<0ul,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>> &>();
}

uint64_t *mpark::lib::cpp17::detail::invoke<mpark::detail::dtor,mpark::detail::alt<0ul,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>> &>()
{
  std::__to_address[abi:sn200100]<char const>();
  v1 = v0;
  std::__to_address[abi:sn200100]<char const>();
  return mpark::detail::dtor::operator()<mpark::detail::alt<0ul,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>>>(v1, v2);
}

uint64_t *mpark::detail::alt<0ul,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>>::~alt(uint64_t *a1)
{
  mpark::detail::alt<0ul,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>>::~alt(a1);
  return a1;
}

{
  WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>::~Ref(a1);
  return a1;
}

uint64_t *WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>::~Ref(uint64_t *a1)
{
  WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>::~Ref(a1);
  return a1;
}

{
  v4 = a1;
  v5 = a1;
  v2 = 0;
  v7 = a1;
  v6 = &v2;
  v3 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(a1);
  if (v3)
  {
    v8 = v3;
    WTF::RefCounted<WebCore::AuthenticatorResponse>::deref((v3 + 8));
  }

  return v5;
}

uint64_t WTF::RefCounted<WebCore::AuthenticatorResponse>::deref(WTF::RefCountedBase *a1)
{
  result = WTF::RefCountedBase::derefBase(a1);
  if (result)
  {
    result = a1 - 8;
    if (a1 != 8)
    {
      return (*(*result + 8))();
    }
  }

  return result;
}

uint64_t WTF::RefCountedBase::derefBase(WTF::RefCountedBase *this)
{
  WTF::RefCountedBase::applyRefDerefThreadingCheck(this);
  if (*this == 1)
  {
    v3 = 1;
  }

  else
  {
    --*this;
    v3 = 0;
  }

  return v3 & 1;
}

WebCore::ExceptionData *mpark::detail::visitation::base::visit_return_type_check<void,void>::invoke<mpark::detail::dtor,mpark::detail::alt<1ul,WebCore::ExceptionData> &>()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return mpark::lib::cpp17::invoke<mpark::detail::dtor,mpark::detail::alt<1ul,WebCore::ExceptionData> &>();
}

void mpark::detail::access::base::get_alt<1ul,mpark::detail::base<(mpark::detail::Trait)1,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &>()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  mpark::detail::access::recursive_union::get_alt<mpark::detail::recursive_union<(mpark::detail::Trait)1,0ul,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &,1ul>();
}

WebCore::ExceptionData *mpark::lib::cpp17::invoke<mpark::detail::dtor,mpark::detail::alt<1ul,WebCore::ExceptionData> &>()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return mpark::lib::cpp17::detail::invoke<mpark::detail::dtor,mpark::detail::alt<1ul,WebCore::ExceptionData> &>();
}

WebCore::ExceptionData *mpark::lib::cpp17::detail::invoke<mpark::detail::dtor,mpark::detail::alt<1ul,WebCore::ExceptionData> &>()
{
  std::__to_address[abi:sn200100]<char const>();
  v1 = v0;
  std::__to_address[abi:sn200100]<char const>();
  return mpark::detail::dtor::operator()<mpark::detail::alt<1ul,WebCore::ExceptionData>>(v1, v2);
}

WebCore::ExceptionData *mpark::detail::alt<1ul,WebCore::ExceptionData>::~alt(WebCore::ExceptionData *a1)
{
  mpark::detail::alt<1ul,WebCore::ExceptionData>::~alt(a1);
  return a1;
}

{
  WebCore::ExceptionData::~ExceptionData(a1);
  return a1;
}

uint64_t WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 12))
  {
    WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1);
    WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a1);
    WTF::VectorTypeOperations<unsigned char>::destruct();
  }

  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetBufferSizeToFullCapacity(a1);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetBufferSizeToFullCapacity(a2);
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1, a2);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  return a1;
}

void WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::operator=(uint64_t *a1, uint64_t *a2)
{
  v3[2] = a1;
  v3[1] = a2;
  v3[4] = v3;
  v3[3] = a2;
  v3[7] = v3;
  v3[6] = a2;
  v3[0] = WTF::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::leakRef(a2);
  WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>::swap<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>(a1, v3);
  v3[5] = v3;
  v4[1] = v3;
  v4[0] = 0;
  v4[3] = v3;
  v4[2] = v4;
  v5 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(v3);
  if (v5)
  {
    API::Object::deref(v5);
  }
}

uint64_t WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(uint64_t a1, uint64_t *a2)
{
  v9 = a1;
  v8 = a2;
  v3 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](a1);
  WTF::VectorBufferBase<unsigned char,WTF::FastMalloc>::deallocateBuffer(a1, v3);
  v7 = 0;
  *a1 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(v8);
  v6 = 0;
  *(a1 + 8) = std::exchange[abi:sn200100]<unsigned int,int>(v8 + 2, &v6);
  v5 = 0;
  result = std::exchange[abi:sn200100]<unsigned int,int>(v8 + 3, &v5);
  *(a1 + 12) = result;
  return result;
}

uint64_t std::exchange[abi:sn200100]<unsigned int,int>(unsigned int *a1, unsigned int *a2)
{
  v3 = *a1;
  *a1 = *a2;
  return v3;
}

void mpark::detail::assignment<mpark::detail::traits<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>>::generic_assign<mpark::detail::move_assignment<mpark::detail::traits<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>,(mpark::detail::Trait)1>>(uint64_t a1, uint64_t a2)
{
  if (!mpark::detail::base<(mpark::detail::Trait)1,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>::valueless_by_exception(a1) || !mpark::detail::base<(mpark::detail::Trait)1,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>::valueless_by_exception(a2))
  {
    if (mpark::detail::base<(mpark::detail::Trait)1,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>::valueless_by_exception(a2))
    {
      mpark::detail::destructor<mpark::detail::traits<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>,(mpark::detail::Trait)1>::destroy(a1);
    }

    else
    {
      v3 = mpark::detail::base<(mpark::detail::Trait)1,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>::index(a2);
      std::__to_address[abi:sn200100]<char const>();
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN7WebCore34PublicKeyCredentialCreationOptionsENS6_33PublicKeyCredentialRequestOptionsEEEEE14generic_assignINS0_15move_assignmentIS9_LNS0_5TraitE1EEEEEvOT_EUlRSF_OT0_E_JRSA_SE_EEEDcmSG_DpOT0_(v3);
    }
  }
}

void mpark::detail::destructor<mpark::detail::traits<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>,(mpark::detail::Trait)1>::destroy(uint64_t a1)
{
  if (!mpark::detail::base<(mpark::detail::Trait)1,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>::valueless_by_exception(a1))
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>,(mpark::detail::Trait)1> &>();
  }

  *(a1 + 288) = -1;
}

void _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN7WebCore34PublicKeyCredentialCreationOptionsENS6_33PublicKeyCredentialRequestOptionsEEEEE14generic_assignINS0_15move_assignmentIS9_LNS0_5TraitE1EEEEEvOT_EUlRSF_OT0_E_JRSA_SE_EEEDcmSG_DpOT0_(uint64_t a1)
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::to_address[abi:sn200100]<char const>();
  switch(a1)
  {
    case 0:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      mpark::detail::access::base::get_alt<0ul,mpark::detail::base<(mpark::detail::Trait)1,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &>();
      std::__to_address[abi:sn200100]<char const>();
      mpark::detail::access::base::get_alt<0ul,mpark::detail::base<(mpark::detail::Trait)1,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>>();
      _ZN5mpark6detail10visitation4base23visit_return_type_checkIvvE6invokeIZNS0_10assignmentINS0_6traitsIJN7WebCore34PublicKeyCredentialCreationOptionsENS8_33PublicKeyCredentialRequestOptionsEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRNS0_3altILm0ES9_EESO_EEEDcSI_DpOT0_();
      return;
    case 1:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      mpark::detail::access::base::get_alt<1ul,mpark::detail::base<(mpark::detail::Trait)1,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &>();
      std::__to_address[abi:sn200100]<char const>();
      mpark::detail::access::base::get_alt<1ul,mpark::detail::base<(mpark::detail::Trait)1,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>();
      _ZN5mpark6detail10visitation4base23visit_return_type_checkIvvE6invokeIZNS0_10assignmentINS0_6traitsIJN7WebCore34PublicKeyCredentialCreationOptionsENS8_33PublicKeyCredentialRequestOptionsEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRNS0_3altILm1ESA_EESO_EEEDcSI_DpOT0_();
      return;
    case 2:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_5;
    case 3:
LABEL_5:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_6;
    case 4:
LABEL_6:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_7;
    case 5:
LABEL_7:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_8;
    case 6:
LABEL_8:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_9;
    case 7:
LABEL_9:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_10;
    case 8:
LABEL_10:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_11;
    case 9:
LABEL_11:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_12;
    case 10:
LABEL_12:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_13;
    case 11:
LABEL_13:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_14;
    case 12:
LABEL_14:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_15;
    case 13:
LABEL_15:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_16;
    case 14:
LABEL_16:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_17;
    case 15:
LABEL_17:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_18;
    case 16:
LABEL_18:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_19;
    case 17:
LABEL_19:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_20;
    case 18:
LABEL_20:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_21;
    case 19:
LABEL_21:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_22;
    case 20:
LABEL_22:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_23;
    case 21:
LABEL_23:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_24;
    case 22:
LABEL_24:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_25;
    case 23:
LABEL_25:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_26;
    case 24:
LABEL_26:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_27;
    case 25:
LABEL_27:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_28;
    case 26:
LABEL_28:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_29;
    case 27:
LABEL_29:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_30;
    case 28:
LABEL_30:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_31;
    case 29:
LABEL_31:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_32;
    case 30:
LABEL_32:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_33;
    case 31:
LABEL_33:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      break;
    default:
      break;
  }

  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  __break(1u);
}

uint64_t mpark::detail::base<(mpark::detail::Trait)1,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>::index(uint64_t a1)
{
  if (mpark::detail::base<(mpark::detail::Trait)1,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>::valueless_by_exception(a1))
  {
    return -1;
  }

  else
  {
    return *(a1 + 288);
  }
}

void mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>,(mpark::detail::Trait)1> &>()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  switch(mpark::detail::base<(mpark::detail::Trait)1,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>::index(v0))
  {
    case 0:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      mpark::detail::access::base::get_alt<0ul,mpark::detail::base<(mpark::detail::Trait)1,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &>();
      mpark::detail::visitation::base::visit_return_type_check<void,void>::invoke<mpark::detail::dtor,mpark::detail::alt<0ul,WebCore::PublicKeyCredentialCreationOptions> &>();
      return;
    case 1:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      mpark::detail::access::base::get_alt<1ul,mpark::detail::base<(mpark::detail::Trait)1,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &>();
      mpark::detail::visitation::base::visit_return_type_check<void,void>::invoke<mpark::detail::dtor,mpark::detail::alt<1ul,WebCore::PublicKeyCredentialRequestOptions> &>();
      return;
    case 2:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_5;
    case 3:
LABEL_5:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_6;
    case 4:
LABEL_6:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_7;
    case 5:
LABEL_7:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_8;
    case 6:
LABEL_8:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_9;
    case 7:
LABEL_9:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_10;
    case 8:
LABEL_10:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_11;
    case 9:
LABEL_11:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_12;
    case 10:
LABEL_12:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_13;
    case 11:
LABEL_13:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_14;
    case 12:
LABEL_14:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_15;
    case 13:
LABEL_15:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_16;
    case 14:
LABEL_16:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_17;
    case 15:
LABEL_17:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_18;
    case 16:
LABEL_18:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_19;
    case 17:
LABEL_19:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_20;
    case 18:
LABEL_20:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_21;
    case 19:
LABEL_21:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_22;
    case 20:
LABEL_22:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_23;
    case 21:
LABEL_23:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_24;
    case 22:
LABEL_24:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_25;
    case 23:
LABEL_25:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_26;
    case 24:
LABEL_26:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_27;
    case 25:
LABEL_27:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_28;
    case 26:
LABEL_28:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_29;
    case 27:
LABEL_29:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_30;
    case 28:
LABEL_30:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_31;
    case 29:
LABEL_31:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_32;
    case 30:
LABEL_32:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_33;
    case 31:
LABEL_33:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      break;
    default:
      break;
  }

  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  __break(1u);
}

WebCore::PublicKeyCredentialCreationOptions *mpark::detail::visitation::base::visit_return_type_check<void,void>::invoke<mpark::detail::dtor,mpark::detail::alt<0ul,WebCore::PublicKeyCredentialCreationOptions> &>()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return mpark::lib::cpp17::invoke<mpark::detail::dtor,mpark::detail::alt<0ul,WebCore::PublicKeyCredentialCreationOptions> &>();
}

WebCore::PublicKeyCredentialCreationOptions *mpark::lib::cpp17::invoke<mpark::detail::dtor,mpark::detail::alt<0ul,WebCore::PublicKeyCredentialCreationOptions> &>()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return mpark::lib::cpp17::detail::invoke<mpark::detail::dtor,mpark::detail::alt<0ul,WebCore::PublicKeyCredentialCreationOptions> &>();
}

WebCore::PublicKeyCredentialCreationOptions *mpark::lib::cpp17::detail::invoke<mpark::detail::dtor,mpark::detail::alt<0ul,WebCore::PublicKeyCredentialCreationOptions> &>()
{
  std::__to_address[abi:sn200100]<char const>();
  v1 = v0;
  std::__to_address[abi:sn200100]<char const>();
  return mpark::detail::dtor::operator()<mpark::detail::alt<0ul,WebCore::PublicKeyCredentialCreationOptions>>(v1, v2);
}

WebCore::PublicKeyCredentialCreationOptions *mpark::detail::alt<0ul,WebCore::PublicKeyCredentialCreationOptions>::~alt(WebCore::PublicKeyCredentialCreationOptions *a1)
{
  mpark::detail::alt<0ul,WebCore::PublicKeyCredentialCreationOptions>::~alt(a1);
  return a1;
}

{
  WebCore::PublicKeyCredentialCreationOptions::~PublicKeyCredentialCreationOptions(a1);
  return a1;
}

void WebCore::PublicKeyCredentialCreationOptions::~PublicKeyCredentialCreationOptions(WebCore::PublicKeyCredentialCreationOptions *this)
{
  WebCore::PublicKeyCredentialCreationOptions::~PublicKeyCredentialCreationOptions(this);
}

{
  std::optional<WebCore::AuthenticationExtensionsClientInputs>::~optional((this + 136));
  WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 104);
  WTF::Vector<WebCore::PublicKeyCredentialParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 80);
  WebCore::BufferSource::~BufferSource((this + 64));
  WebCore::PublicKeyCredentialUserEntity::~PublicKeyCredentialUserEntity((this + 24));
  WebCore::PublicKeyCredentialRpEntity::~PublicKeyCredentialRpEntity(this);
}

WebCore::AuthenticationExtensionsClientInputs *std::optional<WebCore::AuthenticationExtensionsClientInputs>::~optional(WebCore::AuthenticationExtensionsClientInputs *a1)
{
  std::optional<WebCore::AuthenticationExtensionsClientInputs>::~optional(a1);
  return a1;
}

{
  std::__optional_move_assign_base<WebCore::AuthenticationExtensionsClientInputs,false>::~__optional_move_assign_base(a1);
  return a1;
}

uint64_t WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1)
{
  WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1);
  return a1;
}

{
  if (*(a1 + 12))
  {
    v2 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1);
    v3 = WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a1);
    WTF::VectorTypeOperations<WebCore::PublicKeyCredentialDescriptor>::destruct(v2, v3);
  }

  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  WTF::VectorBuffer<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::FastMalloc>::~VectorBuffer(a1);
  return a1;
}

uint64_t WTF::Vector<WebCore::PublicKeyCredentialParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1)
{
  WTF::Vector<WebCore::PublicKeyCredentialParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1);
  return a1;
}

{
  if (*(a1 + 12))
  {
    WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1);
    WTF::Vector<WebCore::PublicKeyCredentialParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a1);
    WTF::VectorTypeOperations<unsigned char>::destruct();
  }

  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  WTF::VectorBuffer<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::FastMalloc>::~VectorBuffer(a1);
  return a1;
}

void WebCore::BufferSource::~BufferSource(WebCore::BufferSource *this)
{
  WebCore::BufferSource::~BufferSource(this);
}

{
  mpark::variant<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::~variant(this);
}

void WebCore::PublicKeyCredentialUserEntity::~PublicKeyCredentialUserEntity(WebCore::PublicKeyCredentialUserEntity *this)
{
  WebCore::PublicKeyCredentialUserEntity::~PublicKeyCredentialUserEntity(this);
}

{
  v2[1] = this + 32;
  v2[0] = 0;
  v2[3] = this + 32;
  v2[2] = v2;
  v3 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(this + 4);
  if (v3)
  {
    WTF::StringImpl::deref(v3);
  }

  WebCore::BufferSource::~BufferSource((this + 16));
  WebCore::PublicKeyCredentialEntity::~PublicKeyCredentialEntity(this);
}

void WebCore::PublicKeyCredentialRpEntity::~PublicKeyCredentialRpEntity(WebCore::PublicKeyCredentialRpEntity *this)
{
  WebCore::PublicKeyCredentialRpEntity::~PublicKeyCredentialRpEntity(this);
}

{
  v2[1] = this + 16;
  v2[0] = 0;
  v2[3] = this + 16;
  v2[2] = v2;
  v3 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(this + 2);
  if (v3)
  {
    WTF::StringImpl::deref(v3);
  }

  WebCore::PublicKeyCredentialEntity::~PublicKeyCredentialEntity(this);
}

WebCore::AuthenticationExtensionsClientInputs *std::__optional_destruct_base<WebCore::AuthenticationExtensionsClientInputs,false>::~__optional_destruct_base[abi:sn200100](WebCore::AuthenticationExtensionsClientInputs *a1)
{
  if (*(a1 + 144))
  {
    WebCore::AuthenticationExtensionsClientInputs::~AuthenticationExtensionsClientInputs(a1);
  }

  return a1;
}

void WebCore::AuthenticationExtensionsClientInputs::~AuthenticationExtensionsClientInputs(WebCore::AuthenticationExtensionsClientInputs *this)
{
  WebCore::AuthenticationExtensionsClientInputs::~AuthenticationExtensionsClientInputs(this);
}

{
  std::optional<WebCore::AuthenticationExtensionsClientInputs::PRFInputs>::~optional((this + 64));
  std::optional<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs>::~optional((this + 16));
  v2[1] = this;
  v2[0] = 0;
  v2[3] = this;
  v2[2] = v2;
  v3 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(this);
  if (v3)
  {
    WTF::StringImpl::deref(v3);
  }
}

WebCore::AuthenticationExtensionsClientInputs::PRFInputs *std::optional<WebCore::AuthenticationExtensionsClientInputs::PRFInputs>::~optional(WebCore::AuthenticationExtensionsClientInputs::PRFInputs *a1)
{
  std::optional<WebCore::AuthenticationExtensionsClientInputs::PRFInputs>::~optional(a1);
  return a1;
}

{
  std::__optional_move_assign_base<WebCore::AuthenticationExtensionsClientInputs::PRFInputs,false>::~__optional_move_assign_base(a1);
  return a1;
}

WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs *std::optional<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs>::~optional(WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs *a1)
{
  std::optional<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs>::~optional(a1);
  return a1;
}

{
  std::__optional_move_assign_base<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs,false>::~__optional_move_assign_base(a1);
  return a1;
}

WebCore::AuthenticationExtensionsClientInputs::PRFInputs *std::__optional_destruct_base<WebCore::AuthenticationExtensionsClientInputs::PRFInputs,false>::~__optional_destruct_base[abi:sn200100](WebCore::AuthenticationExtensionsClientInputs::PRFInputs *a1)
{
  if (*(a1 + 72))
  {
    WebCore::AuthenticationExtensionsClientInputs::PRFInputs::~PRFInputs(a1);
  }

  return a1;
}

void WebCore::AuthenticationExtensionsClientInputs::PRFInputs::~PRFInputs(WebCore::AuthenticationExtensionsClientInputs::PRFInputs *this)
{
  WebCore::AuthenticationExtensionsClientInputs::PRFInputs::~PRFInputs(this);
}

{
  std::optional<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::~optional(this + 48);
  std::optional<WebCore::AuthenticationExtensionsClientInputs::PRFValues>::~optional(this);
}

uint64_t std::optional<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::~optional(uint64_t a1)
{
  std::optional<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::~optional(a1);
  return a1;
}

{
  std::__optional_move_assign_base<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::~__optional_move_assign_base(a1);
  return a1;
}

WebCore::AuthenticationExtensionsClientInputs::PRFValues *std::optional<WebCore::AuthenticationExtensionsClientInputs::PRFValues>::~optional(WebCore::AuthenticationExtensionsClientInputs::PRFValues *a1)
{
  std::optional<WebCore::AuthenticationExtensionsClientInputs::PRFValues>::~optional(a1);
  return a1;
}

{
  std::__optional_move_assign_base<WebCore::AuthenticationExtensionsClientInputs::PRFValues,false>::~__optional_move_assign_base(a1);
  return a1;
}

uint64_t std::__optional_destruct_base<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::~__optional_destruct_base[abi:sn200100](uint64_t a1)
{
  if (*(a1 + 16))
  {
    WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1);
  }

  return a1;
}

uint64_t WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1)
{
  WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1);
  return a1;
}

{
  if (*(a1 + 12))
  {
    v2 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1);
    v3 = WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a1);
    WTF::VectorTypeOperations<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>>::destruct(v2, v3);
  }

  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  WTF::VectorBuffer<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::FastMalloc>::~VectorBuffer(a1);
  return a1;
}

uint64_t WTF::VectorBuffer<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::FastMalloc>::~VectorBuffer(uint64_t a1)
{
  v2 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](a1);
  WTF::VectorBufferBase<unsigned char,WTF::FastMalloc>::deallocateBuffer(a1, v2);
  std::__to_address[abi:sn200100]<char const>();
  return a1;
}

uint64_t *WTF::VectorDestructor<true,WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>>::destruct(uint64_t *result, uint64_t *a2)
{
  for (i = result; i != a2; i += 6)
  {
    result = WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>::~KeyValuePair(i);
  }

  return result;
}

uint64_t *WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>::~KeyValuePair(uint64_t *a1)
{
  WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>::~KeyValuePair(a1);
  return a1;
}

{
  WebCore::AuthenticationExtensionsClientInputs::PRFValues::~PRFValues((a1 + 1));
  v3[1] = a1;
  v3[0] = 0;
  v3[3] = a1;
  v3[2] = v3;
  v4 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(a1);
  if (v4)
  {
    WTF::StringImpl::deref(v4);
  }

  return a1;
}

void WebCore::AuthenticationExtensionsClientInputs::PRFValues::~PRFValues(WebCore::AuthenticationExtensionsClientInputs::PRFValues *this)
{
  WebCore::AuthenticationExtensionsClientInputs::PRFValues::~PRFValues(this);
}

{
  std::optional<WebCore::BufferSource>::~optional((this + 16));
  WebCore::BufferSource::~BufferSource(this);
}

WebCore::BufferSource *std::optional<WebCore::BufferSource>::~optional(WebCore::BufferSource *a1)
{
  std::optional<WebCore::BufferSource>::~optional(a1);
  return a1;
}

{
  std::__optional_move_assign_base<WebCore::BufferSource,false>::~__optional_move_assign_base(a1);
  return a1;
}

WebCore::BufferSource *std::__optional_destruct_base<WebCore::BufferSource,false>::~__optional_destruct_base[abi:sn200100](WebCore::BufferSource *a1)
{
  if (*(a1 + 16))
  {
    WebCore::BufferSource::~BufferSource(a1);
  }

  return a1;
}

WebCore::AuthenticationExtensionsClientInputs::PRFValues *std::__optional_destruct_base<WebCore::AuthenticationExtensionsClientInputs::PRFValues,false>::~__optional_destruct_base[abi:sn200100](WebCore::AuthenticationExtensionsClientInputs::PRFValues *a1)
{
  if (*(a1 + 40))
  {
    WebCore::AuthenticationExtensionsClientInputs::PRFValues::~PRFValues(a1);
  }

  return a1;
}

WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs *std::__optional_destruct_base<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs,false>::~__optional_destruct_base[abi:sn200100](WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs *a1)
{
  if (*(a1 + 40))
  {
    WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs::~LargeBlobInputs(a1);
  }

  return a1;
}

void WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs::~LargeBlobInputs(WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs *this)
{
  WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs::~LargeBlobInputs(this);
}

{
  std::optional<WebCore::BufferSource>::~optional((this + 16));
  v2[1] = this;
  v2[0] = 0;
  v2[3] = this;
  v2[2] = v2;
  v3 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(this);
  if (v3)
  {
    WTF::StringImpl::deref(v3);
  }
}

void WTF::VectorDestructor<true,WebCore::PublicKeyCredentialDescriptor>::destruct(WebCore::PublicKeyCredentialDescriptor *a1, WebCore::PublicKeyCredentialDescriptor *a2)
{
  while (a1 != a2)
  {
    WebCore::PublicKeyCredentialDescriptor::~PublicKeyCredentialDescriptor(a1);
    a1 = (a1 + 40);
  }
}

void WebCore::PublicKeyCredentialDescriptor::~PublicKeyCredentialDescriptor(WebCore::PublicKeyCredentialDescriptor *this)
{
  WebCore::PublicKeyCredentialDescriptor::~PublicKeyCredentialDescriptor(this);
}

{
  WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 24);
  WebCore::BufferSource::~BufferSource((this + 8));
}

uint64_t WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1)
{
  WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1);
  return a1;
}

{
  if (*(a1 + 12))
  {
    WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1);
    WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a1);
    WTF::VectorTypeOperations<unsigned char>::destruct();
  }

  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  WTF::VectorBuffer<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::FastMalloc>::~VectorBuffer(a1);
  return a1;
}

uint64_t mpark::variant<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::~variant(uint64_t a1)
{
  mpark::variant<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::~variant(a1);
  return a1;
}

{
  mpark::detail::impl<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::~impl(a1);
  return a1;
}

uint64_t mpark::detail::impl<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::~impl(uint64_t a1)
{
  mpark::detail::impl<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::~impl(a1);
  return a1;
}

{
  mpark::detail::copy_assignment<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~copy_assignment(a1);
  return a1;
}

uint64_t mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~destructor(uint64_t a1)
{
  mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::destroy(a1);
  mpark::detail::base<(mpark::detail::Trait)1,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::~base(a1);
  return a1;
}

void mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::destroy(uint64_t a1)
{
  if (!mpark::detail::base<(mpark::detail::Trait)1,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::valueless_by_exception(a1))
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1> &>();
  }

  *(a1 + 8) = -1;
}

void mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1> &>()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  switch(mpark::detail::base<(mpark::detail::Trait)1,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::index(v0))
  {
    case 0:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      mpark::detail::access::base::get_alt<0ul,mpark::detail::base<(mpark::detail::Trait)1,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &>();
      mpark::detail::visitation::base::visit_return_type_check<void,void>::invoke<mpark::detail::dtor,mpark::detail::alt<0ul,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>> &>();
      return;
    case 1:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      mpark::detail::access::base::get_alt<1ul,mpark::detail::base<(mpark::detail::Trait)1,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &>();
      mpark::detail::visitation::base::visit_return_type_check<void,void>::invoke<mpark::detail::dtor,mpark::detail::alt<1ul,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>> &>();
      return;
    case 2:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_5;
    case 3:
LABEL_5:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_6;
    case 4:
LABEL_6:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_7;
    case 5:
LABEL_7:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_8;
    case 6:
LABEL_8:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_9;
    case 7:
LABEL_9:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_10;
    case 8:
LABEL_10:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_11;
    case 9:
LABEL_11:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_12;
    case 10:
LABEL_12:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_13;
    case 11:
LABEL_13:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_14;
    case 12:
LABEL_14:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_15;
    case 13:
LABEL_15:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_16;
    case 14:
LABEL_16:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_17;
    case 15:
LABEL_17:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_18;
    case 16:
LABEL_18:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_19;
    case 17:
LABEL_19:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_20;
    case 18:
LABEL_20:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_21;
    case 19:
LABEL_21:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_22;
    case 20:
LABEL_22:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_23;
    case 21:
LABEL_23:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_24;
    case 22:
LABEL_24:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_25;
    case 23:
LABEL_25:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_26;
    case 24:
LABEL_26:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_27;
    case 25:
LABEL_27:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_28;
    case 26:
LABEL_28:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_29;
    case 27:
LABEL_29:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_30;
    case 28:
LABEL_30:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_31;
    case 29:
LABEL_31:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_32;
    case 30:
LABEL_32:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_33;
    case 31:
LABEL_33:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      break;
    default:
      break;
  }

  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  __break(1u);
}

uint64_t mpark::detail::base<(mpark::detail::Trait)1,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::index(uint64_t a1)
{
  if (mpark::detail::base<(mpark::detail::Trait)1,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::valueless_by_exception(a1))
  {
    return -1;
  }

  else
  {
    return *(a1 + 8);
  }
}

uint64_t *mpark::detail::visitation::base::visit_return_type_check<void,void>::invoke<mpark::detail::dtor,mpark::detail::alt<0ul,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>> &>()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return mpark::lib::cpp17::invoke<mpark::detail::dtor,mpark::detail::alt<0ul,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>> &>();
}

uint64_t *mpark::lib::cpp17::invoke<mpark::detail::dtor,mpark::detail::alt<0ul,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>> &>()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return mpark::lib::cpp17::detail::invoke<mpark::detail::dtor,mpark::detail::alt<0ul,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>> &>();
}

uint64_t *mpark::lib::cpp17::detail::invoke<mpark::detail::dtor,mpark::detail::alt<0ul,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>> &>()
{
  std::__to_address[abi:sn200100]<char const>();
  v1 = v0;
  std::__to_address[abi:sn200100]<char const>();
  return mpark::detail::dtor::operator()<mpark::detail::alt<0ul,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>>>(v1, v2);
}

uint64_t *mpark::detail::alt<0ul,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>>::~alt(uint64_t *a1)
{
  mpark::detail::alt<0ul,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>>::~alt(a1);
  return a1;
}

{
  v3[1] = a1;
  v3[0] = 0;
  v6 = a1;
  v5 = v3;
  v4 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(a1);
  if (v4)
  {
    WTF::RefCounted<JSC::ArrayBufferView>::deref(v4);
  }

  return a1;
}

uint64_t WTF::RefCounted<JSC::ArrayBufferView>::deref(WTF::RefCountedBase *a1)
{
  result = WTF::RefCountedBase::derefBase(a1);
  if (result)
  {
    if (a1)
    {
      return JSC::ArrayBufferView::operator delete();
    }
  }

  return result;
}

uint64_t *mpark::detail::visitation::base::visit_return_type_check<void,void>::invoke<mpark::detail::dtor,mpark::detail::alt<1ul,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>> &>()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return mpark::lib::cpp17::invoke<mpark::detail::dtor,mpark::detail::alt<1ul,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>> &>();
}

uint64_t *mpark::lib::cpp17::invoke<mpark::detail::dtor,mpark::detail::alt<1ul,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>> &>()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return mpark::lib::cpp17::detail::invoke<mpark::detail::dtor,mpark::detail::alt<1ul,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>> &>();
}

uint64_t *mpark::lib::cpp17::detail::invoke<mpark::detail::dtor,mpark::detail::alt<1ul,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>> &>()
{
  std::__to_address[abi:sn200100]<char const>();
  v1 = v0;
  std::__to_address[abi:sn200100]<char const>();
  return mpark::detail::dtor::operator()<mpark::detail::alt<1ul,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>(v1, v2);
}

uint64_t *mpark::detail::alt<1ul,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::~alt(uint64_t *a1)
{
  mpark::detail::alt<1ul,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::~alt(a1);
  return a1;
}

{
  v3[1] = a1;
  v3[0] = 0;
  v6 = a1;
  v5 = v3;
  v4 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(a1);
  if (v4)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v4);
  }

  return a1;
}

uint64_t WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(WTF::DeferrableRefCountedBase *a1)
{
  result = WTF::DeferrableRefCountedBase::derefBase(a1);
  if (result)
  {
    if (a1)
    {
      JSC::ArrayBuffer::~ArrayBuffer(a1);
      return WTF::FastMalloc::fastFree(a1, v3);
    }
  }

  return result;
}

void JSC::ArrayBuffer::~ArrayBuffer(JSC::ArrayBuffer *this)
{
  JSC::ArrayBuffer::~ArrayBuffer(this);
}

{
  JSC::Weak<JSC::JSArrayBuffer>::~Weak(this + 10);
  JSC::InlineWatchpointSet::~InlineWatchpointSet((this + 72));
  JSC::ArrayBufferContents::~ArrayBufferContents((this + 16));
  JSC::GCIncomingRefCounted<JSC::ArrayBuffer>::~GCIncomingRefCounted(this);
}

void *JSC::Weak<JSC::JSArrayBuffer>::~Weak(void *a1)
{
  JSC::Weak<JSC::JSArrayBuffer>::~Weak(a1);
  return a1;
}

{
  JSC::Weak<JSC::JSArrayBuffer>::clear(a1);
  return a1;
}

void JSC::InlineWatchpointSet::~InlineWatchpointSet(JSC::InlineWatchpointSet *this)
{
  JSC::InlineWatchpointSet::~InlineWatchpointSet(this);
}

{
  if (!JSC::InlineWatchpointSet::isThin(this))
  {
    JSC::InlineWatchpointSet::freeFat(this);
  }
}

void JSC::ArrayBufferContents::~ArrayBufferContents(JSC::ArrayBufferContents *this)
{
  JSC::ArrayBufferContents::~ArrayBufferContents(this);
}

{
  if (WTF::RefPtr<WebKit::AuthenticatorPresenterCoordinator,WTF::RawPtrTraits<WebKit::AuthenticatorPresenterCoordinator>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorPresenterCoordinator>>::operator BOOL(this + 1))
  {
    v2 = *(this + 1);
    Unsafe = WTF::CagedPtr<(Gigacage::Kind)0,void,WTF::RawPtrTraits<void>>::getUnsafe(this);
    (*(*v2 + 16))(v2, Unsafe);
  }

  v4[1] = this + 24;
  v4[0] = 0;
  v7 = this + 24;
  v6 = v4;
  v5 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(this + 3);
  if (v5)
  {
    WTF::ThreadSafeRefCounted<JSC::BufferMemoryHandle,(WTF::DestructionThread)0>::deref(v5);
  }

  v8[1] = this + 16;
  v8[0] = 0;
  v11 = this + 16;
  v10 = v8;
  v9 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(this + 2);
  if (v9)
  {
    WTF::ThreadSafeRefCounted<JSC::SharedArrayBufferContents,(WTF::DestructionThread)0>::deref(v9);
  }

  v12[1] = this + 8;
  v12[0] = 0;
  v15 = this + 8;
  v14 = v12;
  v13 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(this + 1);
  if (v13)
  {
    WTF::ThreadSafeRefCounted<WTF::SharedTask<void ()(void *)>,(WTF::DestructionThread)0>::deref((v13 + 8));
  }
}

uint64_t JSC::GCIncomingRefCounted<JSC::ArrayBuffer>::~GCIncomingRefCounted(uint64_t a1)
{
  if (JSC::GCIncomingRefCounted<JSC::ArrayBuffer>::hasVectorOfCells(a1))
  {
    v2 = JSC::GCIncomingRefCounted<JSC::ArrayBuffer>::vectorOfCells(a1);
    if (v2)
    {
      v3 = v2;
      WTF::Vector<JSC::JSCell *,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2);
      WTF::Vector<JSC::JSCell *,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator delete(v3, v4);
    }
  }

  mpark::detail::recursive_union<(mpark::detail::Trait)1,0ul,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::~recursive_union(a1);
  return a1;
}

JSC::WeakImpl *JSC::Weak<JSC::JSArrayBuffer>::clear(void *a1)
{
  result = std::span<char const,18446744073709551615ul>::data[abi:sn200100](a1);
  if (result)
  {
    result = JSC::WeakImpl::clear(result);
    *a1 = 0;
  }

  return result;
}

uint64_t JSC::WeakImpl::clear(JSC::WeakImpl *this)
{
  v3[1] = this;
  v3[0] = 3;
  result = std::span<char const,18446744073709551615ul>::data[abi:sn200100](v3);
  *(this + 1) = result;
  return result;
}

uint64_t WTF::CagedPtr<(Gigacage::Kind)0,void,WTF::RawPtrTraits<void>>::getUnsafe(uint64_t *a1)
{
  v8 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v12 = 0;
  v11 = MEMORY[0x1E696EBF0] + 32;
  v1 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](&v11);
  v2 = Gigacage::Config::basePtr(v1, 0);
  v3 = 0;
  if (v2)
  {
    v17 = MEMORY[0x1E696EBF0] + 32;
    v4 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](&v17);
    v3 = 1;
    if ((*(v4 + 2) & 1) == 0)
    {
      v3 = *MEMORY[0x1E696EBE8] ^ 1;
    }
  }

  v13 = v3 & 1;
  if ((v3 & 1) == 0)
  {
    return v8;
  }

  v15 = 0;
  v14 = MEMORY[0x1E696EBF0] + 32;
  v5 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](&v14);
  v6 = Gigacage::Config::basePtr(v5, v15);
  v16 = 0;
  v18 = 0;
  v19 = 0x400000000;
  return v6 + (v8 & Gigacage::gigacageSizeToMask(0x400000000));
}

uint64_t Gigacage::Config::basePtr(uint64_t a1, int a2)
{
  if (a2 >= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19D660394);
  }

  return *(a1 + 24 + 8 * a2);
}

uint64_t WTF::ThreadSafeRefCounted<JSC::BufferMemoryHandle,(WTF::DestructionThread)0>::deref(WTF::ThreadSafeRefCountedBase *a1)
{
  result = WTF::ThreadSafeRefCountedBase::derefBase(a1);
  if (result)
  {
    if (a1)
    {
      MEMORY[0x19EB00380](a1);
      return bmalloc::api::tzoneFree(a1, v3);
    }
  }

  return result;
}

uint64_t WTF::ThreadSafeRefCountedBase::derefBaseWithoutDeletionCheck(WTF::ThreadSafeRefCountedBase *this)
{
  if (std::__atomic_base<unsigned int,true>::operator--[abi:sn200100](this))
  {
    v3 = 0;
  }

  else
  {
    std::atomic<unsigned int>::operator=[abi:sn200100](this, 1u);
    v3 = 1;
  }

  return v3 & 1;
}

void std::__cxx_atomic_store[abi:sn200100]<unsigned int>(unsigned int *a1, unsigned int a2, int a3)
{
  if (a3 == 3 || a3 == 5)
  {
    atomic_store(a2, a1);
  }

  else
  {
    *a1 = a2;
  }
}

uint64_t WTF::ThreadSafeRefCounted<JSC::SharedArrayBufferContents,(WTF::DestructionThread)0>::deref(WTF::ThreadSafeRefCountedBase *a1)
{
  result = WTF::ThreadSafeRefCountedBase::derefBase(a1);
  if (result)
  {
    if (a1)
    {
      MEMORY[0x19EB003D0](a1);
      return WTF::FastMalloc::fastFree(a1, v3);
    }
  }

  return result;
}

uint64_t WTF::ThreadSafeRefCounted<WTF::SharedTask<void ()(void *)>,(WTF::DestructionThread)0>::deref(WTF::ThreadSafeRefCountedBase *a1)
{
  result = WTF::ThreadSafeRefCountedBase::derefBase(a1);
  if (result)
  {
    result = a1 - 8;
    if (a1 != 8)
    {
      return (*(*result + 8))();
    }
  }

  return result;
}

uint64_t WTF::Vector<JSC::JSCell *,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1)
{
  WTF::Vector<JSC::JSCell *,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1);
  return a1;
}

{
  if (*(a1 + 12))
  {
    WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1);
    WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a1);
    WTF::VectorTypeOperations<unsigned char>::destruct();
  }

  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  WTF::VectorBuffer<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::FastMalloc>::~VectorBuffer(a1);
  return a1;
}

WebCore::PublicKeyCredentialRequestOptions *mpark::detail::visitation::base::visit_return_type_check<void,void>::invoke<mpark::detail::dtor,mpark::detail::alt<1ul,WebCore::PublicKeyCredentialRequestOptions> &>()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return mpark::lib::cpp17::invoke<mpark::detail::dtor,mpark::detail::alt<1ul,WebCore::PublicKeyCredentialRequestOptions> &>();
}

WebCore::PublicKeyCredentialRequestOptions *mpark::lib::cpp17::invoke<mpark::detail::dtor,mpark::detail::alt<1ul,WebCore::PublicKeyCredentialRequestOptions> &>()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return mpark::lib::cpp17::detail::invoke<mpark::detail::dtor,mpark::detail::alt<1ul,WebCore::PublicKeyCredentialRequestOptions> &>();
}

WebCore::PublicKeyCredentialRequestOptions *mpark::lib::cpp17::detail::invoke<mpark::detail::dtor,mpark::detail::alt<1ul,WebCore::PublicKeyCredentialRequestOptions> &>()
{
  std::__to_address[abi:sn200100]<char const>();
  v1 = v0;
  std::__to_address[abi:sn200100]<char const>();
  return mpark::detail::dtor::operator()<mpark::detail::alt<1ul,WebCore::PublicKeyCredentialRequestOptions>>(v1, v2);
}

WebCore::PublicKeyCredentialRequestOptions *mpark::detail::alt<1ul,WebCore::PublicKeyCredentialRequestOptions>::~alt(WebCore::PublicKeyCredentialRequestOptions *a1)
{
  mpark::detail::alt<1ul,WebCore::PublicKeyCredentialRequestOptions>::~alt(a1);
  return a1;
}

{
  WebCore::PublicKeyCredentialRequestOptions::~PublicKeyCredentialRequestOptions(a1);
  return a1;
}

void WebCore::PublicKeyCredentialRequestOptions::~PublicKeyCredentialRequestOptions(WebCore::PublicKeyCredentialRequestOptions *this)
{
  WebCore::PublicKeyCredentialRequestOptions::~PublicKeyCredentialRequestOptions(this);
}

{
  std::optional<WebCore::AuthenticationExtensionsClientInputs>::~optional((this + 56));
  WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 32);
  v2[1] = this + 24;
  v2[0] = 0;
  v2[3] = this + 24;
  v2[2] = v2;
  v3 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(this + 3);
  if (v3)
  {
    WTF::StringImpl::deref(v3);
  }

  WebCore::BufferSource::~BufferSource(this);
}

void _ZN5mpark6detail10visitation4base23visit_return_type_checkIvvE6invokeIZNS0_10assignmentINS0_6traitsIJN7WebCore34PublicKeyCredentialCreationOptionsENS8_33PublicKeyCredentialRequestOptionsEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRNS0_3altILm0ES9_EESO_EEEDcSI_DpOT0_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  _ZN5mpark3lib5cpp176invokeIZNS_6detail10assignmentINS3_6traitsIJN7WebCore34PublicKeyCredentialCreationOptionsENS6_33PublicKeyCredentialRequestOptionsEEEEE14generic_assignINS3_15move_assignmentIS9_LNS3_5TraitE1EEEEEvOT_EUlRSF_OT0_E_JRNS3_3altILm0ES7_EESM_EEEDTclsr6detailE6invokeclsr3libE7forwardISF_Efp_Espclsr3libE7forwardIT0_Efp0_EEESG_DpOSO_();
}

void mpark::detail::access::base::get_alt<0ul,mpark::detail::base<(mpark::detail::Trait)1,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>>()
{
  std::__to_address[abi:sn200100]<char const>();
  std::to_address[abi:sn200100]<char const>();
  mpark::detail::access::recursive_union::get_alt<mpark::detail::recursive_union<(mpark::detail::Trait)1,0ul,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &>();
}

void _ZN5mpark3lib5cpp176invokeIZNS_6detail10assignmentINS3_6traitsIJN7WebCore34PublicKeyCredentialCreationOptionsENS6_33PublicKeyCredentialRequestOptionsEEEEE14generic_assignINS3_15move_assignmentIS9_LNS3_5TraitE1EEEEEvOT_EUlRSF_OT0_E_JRNS3_3altILm0ES7_EESM_EEEDTclsr6detailE6invokeclsr3libE7forwardISF_Efp_Espclsr3libE7forwardIT0_Efp0_EEESG_DpOSO_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  _ZN5mpark3lib5cpp176detail6invokeIZNS_6detail10assignmentINS4_6traitsIJN7WebCore34PublicKeyCredentialCreationOptionsENS7_33PublicKeyCredentialRequestOptionsEEEEE14generic_assignINS4_15move_assignmentISA_LNS4_5TraitE1EEEEEvOT_EUlRSG_OT0_E_JRNS4_3altILm0ES8_EESN_EEEDTclclsr3libE7forwardISG_Efp_Espclsr3libE7forwardIT0_Efp0_EEESH_DpOSP_();
}

void _ZN5mpark3lib5cpp176detail6invokeIZNS_6detail10assignmentINS4_6traitsIJN7WebCore34PublicKeyCredentialCreationOptionsENS7_33PublicKeyCredentialRequestOptionsEEEEE14generic_assignINS4_15move_assignmentISA_LNS4_5TraitE1EEEEEvOT_EUlRSG_OT0_E_JRNS4_3altILm0ES8_EESN_EEEDTclclsr3libE7forwardISG_Efp_Espclsr3libE7forwardIT0_Efp0_EEESH_DpOSP_()
{
  std::__to_address[abi:sn200100]<char const>();
  v1 = v0;
  std::__to_address[abi:sn200100]<char const>();
  v3 = v2;
  std::__to_address[abi:sn200100]<char const>();
  _ZZN5mpark6detail10assignmentINS0_6traitsIJN7WebCore34PublicKeyCredentialCreationOptionsENS3_33PublicKeyCredentialRequestOptionsEEEEE14generic_assignINS0_15move_assignmentIS6_LNS0_5TraitE1EEEEEvOT_ENKUlRSC_OT0_E_clINS0_3altILm0ES4_EESK_EEDaSE_SG_(v1, v3);
}

void _ZZN5mpark6detail10assignmentINS0_6traitsIJN7WebCore34PublicKeyCredentialCreationOptionsENS3_33PublicKeyCredentialRequestOptionsEEEEE14generic_assignINS0_15move_assignmentIS6_LNS0_5TraitE1EEEEEvOT_ENKUlRSC_OT0_E_clINS0_3altILm0ES4_EESK_EEDaSE_SG_(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  std::__to_address[abi:sn200100]<char const>();
  mpark::detail::assignment<mpark::detail::traits<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>>::assign_alt<0ul,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialCreationOptions>(v2, a2, v4);
}

void mpark::detail::assignment<mpark::detail::traits<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>>::assign_alt<0ul,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialCreationOptions>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v7 = a2;
  v6[2] = a3;
  if (mpark::detail::base<(mpark::detail::Trait)1,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>::index(a1))
  {
    v6[0] = a1;
    std::__to_address[abi:sn200100]<char const>();
    v6[1] = v5;
    mpark::detail::assignment<mpark::detail::traits<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>>::assign_alt<0ul,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialCreationOptions>(mpark::detail::alt<0ul,WebCore::PublicKeyCredentialCreationOptions> &,WebCore::PublicKeyCredentialCreationOptions &&)::{unnamed type#1}::operator()(v6);
  }

  else
  {
    std::__to_address[abi:sn200100]<char const>();
    WebCore::PublicKeyCredentialCreationOptions::operator=(v7, v4);
  }
}

void WebCore::PublicKeyCredentialCreationOptions::operator=(uint64_t a1, uint64_t a2)
{
  WebCore::PublicKeyCredentialRpEntity::operator=(a1, a2);
  WebCore::PublicKeyCredentialUserEntity::operator=((a1 + 24), (a2 + 24));
  WebCore::BufferSource::operator=(a1 + 64);
  WTF::Vector<WebCore::PublicKeyCredentialParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(a1 + 80, (a2 + 80));
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(a1 + 104, (a2 + 104));
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  std::optional<WebCore::AuthenticationExtensionsClientInputs>::operator=[abi:sn200100]((a1 + 136), a2 + 136);
}

uint64_t mpark::detail::assignment<mpark::detail::traits<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>>::assign_alt<0ul,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialCreationOptions>(mpark::detail::alt<0ul,WebCore::PublicKeyCredentialCreationOptions> &,WebCore::PublicKeyCredentialCreationOptions &&)::{unnamed type#1}::operator()(uint64_t *a1)
{
  v1 = *a1;
  std::__to_address[abi:sn200100]<char const>();
  return mpark::detail::assignment<mpark::detail::traits<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>>::emplace<0ul,WebCore::PublicKeyCredentialCreationOptions>(v1);
}

uint64_t *WebCore::PublicKeyCredentialUserEntity::operator=(uint64_t *a1, uint64_t *a2)
{
  WebCore::PublicKeyCredentialEntity::operator=(a1, a2);
  WebCore::BufferSource::operator=((a1 + 2));
  WTF::String::operator=(a1 + 4, a2 + 4);
  return a1;
}

void WTF::Vector<WebCore::PublicKeyCredentialParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 12))
  {
    WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1);
    WTF::Vector<WebCore::PublicKeyCredentialParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a1);
    WTF::VectorTypeOperations<unsigned char>::destruct();
  }

  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetBufferSizeToFullCapacity(a1);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetBufferSizeToFullCapacity(a2);
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1, a2);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
}

void WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 12))
  {
    v3 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1);
    v4 = WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a1);
    WTF::VectorTypeOperations<WebCore::PublicKeyCredentialDescriptor>::destruct(v3, v4);
  }

  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetBufferSizeToFullCapacity(a1);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetBufferSizeToFullCapacity(a2);
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1, a2);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
}

void mpark::detail::assignment<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>::generic_assign<mpark::detail::move_assignment<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>>(uint64_t a1, uint64_t a2)
{
  if (!mpark::detail::base<(mpark::detail::Trait)1,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::valueless_by_exception(a1) || !mpark::detail::base<(mpark::detail::Trait)1,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::valueless_by_exception(a2))
  {
    if (mpark::detail::base<(mpark::detail::Trait)1,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::valueless_by_exception(a2))
    {
      mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::destroy(a1);
    }

    else
    {
      v3 = mpark::detail::base<(mpark::detail::Trait)1,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::index(a2);
      std::__to_address[abi:sn200100]<char const>();
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS6_12RawPtrTraitsIS9_EENS6_21DefaultRefDerefTraitsIS9_EEEENS7_INS8_11ArrayBufferENSA_ISF_EENSC_ISF_EEEEEEEE14generic_assignINS0_15move_assignmentISJ_LNS0_5TraitE1EEEEEvOT_EUlRSP_OT0_E_JRSK_SO_EEEDcmSQ_DpOT0_(v3);
    }
  }
}

void _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS6_12RawPtrTraitsIS9_EENS6_21DefaultRefDerefTraitsIS9_EEEENS7_INS8_11ArrayBufferENSA_ISF_EENSC_ISF_EEEEEEEE14generic_assignINS0_15move_assignmentISJ_LNS0_5TraitE1EEEEEvOT_EUlRSP_OT0_E_JRSK_SO_EEEDcmSQ_DpOT0_(uint64_t a1)
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::to_address[abi:sn200100]<char const>();
  switch(a1)
  {
    case 0:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      mpark::detail::access::base::get_alt<0ul,mpark::detail::base<(mpark::detail::Trait)1,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &>();
      std::__to_address[abi:sn200100]<char const>();
      mpark::detail::access::base::get_alt<0ul,mpark::detail::base<(mpark::detail::Trait)1,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>>();
      _ZN5mpark6detail10visitation4base23visit_return_type_checkIvvE6invokeIZNS0_10assignmentINS0_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS8_12RawPtrTraitsISB_EENS8_21DefaultRefDerefTraitsISB_EEEENS9_INSA_11ArrayBufferENSC_ISH_EENSE_ISH_EEEEEEEE14generic_assignINS0_15move_assignmentISL_LNS0_5TraitE1EEEEEvOT_EUlRSR_OT0_E_JRNS0_3altILm0ESG_EESY_EEEDcSS_DpOT0_();
      return;
    case 1:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      mpark::detail::access::base::get_alt<1ul,mpark::detail::base<(mpark::detail::Trait)1,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &>();
      std::__to_address[abi:sn200100]<char const>();
      mpark::detail::access::base::get_alt<1ul,mpark::detail::base<(mpark::detail::Trait)1,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>();
      _ZN5mpark6detail10visitation4base23visit_return_type_checkIvvE6invokeIZNS0_10assignmentINS0_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS8_12RawPtrTraitsISB_EENS8_21DefaultRefDerefTraitsISB_EEEENS9_INSA_11ArrayBufferENSC_ISH_EENSE_ISH_EEEEEEEE14generic_assignINS0_15move_assignmentISL_LNS0_5TraitE1EEEEEvOT_EUlRSR_OT0_E_JRNS0_3altILm1ESK_EESY_EEEDcSS_DpOT0_();
      return;
    case 2:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_5;
    case 3:
LABEL_5:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_6;
    case 4:
LABEL_6:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_7;
    case 5:
LABEL_7:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_8;
    case 6:
LABEL_8:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_9;
    case 7:
LABEL_9:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_10;
    case 8:
LABEL_10:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_11;
    case 9:
LABEL_11:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_12;
    case 10:
LABEL_12:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_13;
    case 11:
LABEL_13:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_14;
    case 12:
LABEL_14:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_15;
    case 13:
LABEL_15:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_16;
    case 14:
LABEL_16:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_17;
    case 15:
LABEL_17:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_18;
    case 16:
LABEL_18:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_19;
    case 17:
LABEL_19:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_20;
    case 18:
LABEL_20:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_21;
    case 19:
LABEL_21:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_22;
    case 20:
LABEL_22:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_23;
    case 21:
LABEL_23:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_24;
    case 22:
LABEL_24:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_25;
    case 23:
LABEL_25:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_26;
    case 24:
LABEL_26:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_27;
    case 25:
LABEL_27:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_28;
    case 26:
LABEL_28:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_29;
    case 27:
LABEL_29:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_30;
    case 28:
LABEL_30:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_31;
    case 29:
LABEL_31:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_32;
    case 30:
LABEL_32:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_33;
    case 31:
LABEL_33:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      break;
    default:
      break;
  }

  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  __break(1u);
}

uint64_t *_ZN5mpark6detail10visitation4base23visit_return_type_checkIvvE6invokeIZNS0_10assignmentINS0_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS8_12RawPtrTraitsISB_EENS8_21DefaultRefDerefTraitsISB_EEEENS9_INSA_11ArrayBufferENSC_ISH_EENSE_ISH_EEEEEEEE14generic_assignINS0_15move_assignmentISL_LNS0_5TraitE1EEEEEvOT_EUlRSR_OT0_E_JRNS0_3altILm0ESG_EESY_EEEDcSS_DpOT0_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return _ZN5mpark3lib5cpp176invokeIZNS_6detail10assignmentINS3_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS6_12RawPtrTraitsIS9_EENS6_21DefaultRefDerefTraitsIS9_EEEENS7_INS8_11ArrayBufferENSA_ISF_EENSC_ISF_EEEEEEEE14generic_assignINS3_15move_assignmentISJ_LNS3_5TraitE1EEEEEvOT_EUlRSP_OT0_E_JRNS3_3altILm0ESE_EESW_EEEDTclsr6detailE6invokeclsr3libE7forwardISP_Efp_Espclsr3libE7forwardIT0_Efp0_EEESQ_DpOSY_();
}

uint64_t *_ZN5mpark3lib5cpp176invokeIZNS_6detail10assignmentINS3_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS6_12RawPtrTraitsIS9_EENS6_21DefaultRefDerefTraitsIS9_EEEENS7_INS8_11ArrayBufferENSA_ISF_EENSC_ISF_EEEEEEEE14generic_assignINS3_15move_assignmentISJ_LNS3_5TraitE1EEEEEvOT_EUlRSP_OT0_E_JRNS3_3altILm0ESE_EESW_EEEDTclsr6detailE6invokeclsr3libE7forwardISP_Efp_Espclsr3libE7forwardIT0_Efp0_EEESQ_DpOSY_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return _ZN5mpark3lib5cpp176detail6invokeIZNS_6detail10assignmentINS4_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS7_12RawPtrTraitsISA_EENS7_21DefaultRefDerefTraitsISA_EEEENS8_INS9_11ArrayBufferENSB_ISG_EENSD_ISG_EEEEEEEE14generic_assignINS4_15move_assignmentISK_LNS4_5TraitE1EEEEEvOT_EUlRSQ_OT0_E_JRNS4_3altILm0ESF_EESX_EEEDTclclsr3libE7forwardISQ_Efp_Espclsr3libE7forwardIT0_Efp0_EEESR_DpOSZ_();
}

uint64_t *_ZN5mpark3lib5cpp176detail6invokeIZNS_6detail10assignmentINS4_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS7_12RawPtrTraitsISA_EENS7_21DefaultRefDerefTraitsISA_EEEENS8_INS9_11ArrayBufferENSB_ISG_EENSD_ISG_EEEEEEEE14generic_assignINS4_15move_assignmentISK_LNS4_5TraitE1EEEEEvOT_EUlRSQ_OT0_E_JRNS4_3altILm0ESF_EESX_EEEDTclclsr3libE7forwardISQ_Efp_Espclsr3libE7forwardIT0_Efp0_EEESR_DpOSZ_()
{
  std::__to_address[abi:sn200100]<char const>();
  v1 = v0;
  std::__to_address[abi:sn200100]<char const>();
  v3 = v2;
  std::__to_address[abi:sn200100]<char const>();
  return _ZZN5mpark6detail10assignmentINS0_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS3_12RawPtrTraitsIS6_EENS3_21DefaultRefDerefTraitsIS6_EEEENS4_INS5_11ArrayBufferENS7_ISC_EENS9_ISC_EEEEEEEE14generic_assignINS0_15move_assignmentISG_LNS0_5TraitE1EEEEEvOT_ENKUlRSM_OT0_E_clINS0_3altILm0ESB_EESU_EEDaSO_SQ_(v1, v3);
}

uint64_t *_ZZN5mpark6detail10assignmentINS0_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS3_12RawPtrTraitsIS6_EENS3_21DefaultRefDerefTraitsIS6_EEEENS4_INS5_11ArrayBufferENS7_ISC_EENS9_ISC_EEEEEEEE14generic_assignINS0_15move_assignmentISG_LNS0_5TraitE1EEEEEvOT_ENKUlRSM_OT0_E_clINS0_3altILm0ESB_EESU_EEDaSO_SQ_(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  std::__to_address[abi:sn200100]<char const>();
  return mpark::detail::assignment<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>::assign_alt<0ul,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>>(v2, a2, v4);
}

uint64_t *mpark::detail::assignment<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>::assign_alt<0ul,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v9 = a1;
  v8 = a2;
  v7[2] = a3;
  if (mpark::detail::base<(mpark::detail::Trait)1,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::index(a1))
  {
    v7[0] = a1;
    std::__to_address[abi:sn200100]<char const>();
    v7[1] = v6;
    return mpark::detail::assignment<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>::assign_alt<0ul,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>>(mpark::detail::alt<0ul,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>> &,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>> &&)::{unnamed type#1}::operator()(v7);
  }

  else
  {
    std::__to_address[abi:sn200100]<char const>();
    return WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>::operator=(v8, v4);
  }
}

WTF::RefCountedBase *WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>::operator=(uint64_t *a1, uint64_t *a2)
{
  v4[2] = a1;
  v4[1] = a2;
  v10 = v4;
  v9 = a2;
  v12 = v4;
  v11 = a2;
  v4[0] = WTF::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::leakRef(a2);
  WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>::swap<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>(a1, v4);
  v4[3] = v4;
  v5[1] = v4;
  v5[0] = 0;
  v8 = v4;
  v7 = v5;
  result = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(v4);
  v6 = result;
  if (result)
  {
    return WTF::RefCounted<JSC::ArrayBufferView>::deref(v6);
  }

  return result;
}

uint64_t *mpark::detail::assignment<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>::assign_alt<0ul,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>>(mpark::detail::alt<0ul,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>> &,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>> &&)::{unnamed type#1}::operator()(uint64_t *a1)
{
  v1 = *a1;
  std::__to_address[abi:sn200100]<char const>();
  return mpark::detail::assignment<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>::emplace<0ul,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>>(v1);
}

uint64_t *mpark::detail::assignment<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>::emplace<0ul,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>>(uint64_t a1)
{
  mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::destroy(a1);
  mpark::detail::access::base::get_alt<0ul,mpark::detail::base<(mpark::detail::Trait)1,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &>();
  std::__to_address[abi:sn200100]<char const>();
  result = mpark::detail::constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>::construct_alt<0ul,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>>();
  *(a1 + 8) = 0;
  return result;
}

uint64_t *mpark::detail::constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>::construct_alt<0ul,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>>()
{
  std::__to_address[abi:sn200100]<char const>();
  v1 = v0;
  std::__to_address[abi:sn200100]<char const>();
  mpark::detail::alt<0ul,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>>::alt<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>>(v1);
  return v1;
}

uint64_t *mpark::detail::alt<0ul,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>>::alt<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>>(uint64_t *a1)
{
  mpark::detail::alt<0ul,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>>::alt<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>>(a1);
  return a1;
}

{
  std::__to_address[abi:sn200100]<char const>();
  *a1 = WTF::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::leakRef(v2);
  return a1;
}

uint64_t *_ZN5mpark6detail10visitation4base23visit_return_type_checkIvvE6invokeIZNS0_10assignmentINS0_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS8_12RawPtrTraitsISB_EENS8_21DefaultRefDerefTraitsISB_EEEENS9_INSA_11ArrayBufferENSC_ISH_EENSE_ISH_EEEEEEEE14generic_assignINS0_15move_assignmentISL_LNS0_5TraitE1EEEEEvOT_EUlRSR_OT0_E_JRNS0_3altILm1ESK_EESY_EEEDcSS_DpOT0_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return _ZN5mpark3lib5cpp176invokeIZNS_6detail10assignmentINS3_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS6_12RawPtrTraitsIS9_EENS6_21DefaultRefDerefTraitsIS9_EEEENS7_INS8_11ArrayBufferENSA_ISF_EENSC_ISF_EEEEEEEE14generic_assignINS3_15move_assignmentISJ_LNS3_5TraitE1EEEEEvOT_EUlRSP_OT0_E_JRNS3_3altILm1ESI_EESW_EEEDTclsr6detailE6invokeclsr3libE7forwardISP_Efp_Espclsr3libE7forwardIT0_Efp0_EEESQ_DpOSY_();
}

void mpark::detail::access::base::get_alt<1ul,mpark::detail::base<(mpark::detail::Trait)1,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>()
{
  std::__to_address[abi:sn200100]<char const>();
  std::to_address[abi:sn200100]<char const>();
  mpark::detail::access::recursive_union::get_alt<mpark::detail::recursive_union<(mpark::detail::Trait)1,0ul,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &,1ul>();
}

uint64_t *_ZN5mpark3lib5cpp176invokeIZNS_6detail10assignmentINS3_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS6_12RawPtrTraitsIS9_EENS6_21DefaultRefDerefTraitsIS9_EEEENS7_INS8_11ArrayBufferENSA_ISF_EENSC_ISF_EEEEEEEE14generic_assignINS3_15move_assignmentISJ_LNS3_5TraitE1EEEEEvOT_EUlRSP_OT0_E_JRNS3_3altILm1ESI_EESW_EEEDTclsr6detailE6invokeclsr3libE7forwardISP_Efp_Espclsr3libE7forwardIT0_Efp0_EEESQ_DpOSY_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return _ZN5mpark3lib5cpp176detail6invokeIZNS_6detail10assignmentINS4_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS7_12RawPtrTraitsISA_EENS7_21DefaultRefDerefTraitsISA_EEEENS8_INS9_11ArrayBufferENSB_ISG_EENSD_ISG_EEEEEEEE14generic_assignINS4_15move_assignmentISK_LNS4_5TraitE1EEEEEvOT_EUlRSQ_OT0_E_JRNS4_3altILm1ESJ_EESX_EEEDTclclsr3libE7forwardISQ_Efp_Espclsr3libE7forwardIT0_Efp0_EEESR_DpOSZ_();
}

uint64_t *_ZN5mpark3lib5cpp176detail6invokeIZNS_6detail10assignmentINS4_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS7_12RawPtrTraitsISA_EENS7_21DefaultRefDerefTraitsISA_EEEENS8_INS9_11ArrayBufferENSB_ISG_EENSD_ISG_EEEEEEEE14generic_assignINS4_15move_assignmentISK_LNS4_5TraitE1EEEEEvOT_EUlRSQ_OT0_E_JRNS4_3altILm1ESJ_EESX_EEEDTclclsr3libE7forwardISQ_Efp_Espclsr3libE7forwardIT0_Efp0_EEESR_DpOSZ_()
{
  std::__to_address[abi:sn200100]<char const>();
  v1 = v0;
  std::__to_address[abi:sn200100]<char const>();
  v3 = v2;
  std::__to_address[abi:sn200100]<char const>();
  return _ZZN5mpark6detail10assignmentINS0_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS3_12RawPtrTraitsIS6_EENS3_21DefaultRefDerefTraitsIS6_EEEENS4_INS5_11ArrayBufferENS7_ISC_EENS9_ISC_EEEEEEEE14generic_assignINS0_15move_assignmentISG_LNS0_5TraitE1EEEEEvOT_ENKUlRSM_OT0_E_clINS0_3altILm1ESF_EESU_EEDaSO_SQ_(v1, v3);
}

uint64_t *_ZZN5mpark6detail10assignmentINS0_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS3_12RawPtrTraitsIS6_EENS3_21DefaultRefDerefTraitsIS6_EEEENS4_INS5_11ArrayBufferENS7_ISC_EENS9_ISC_EEEEEEEE14generic_assignINS0_15move_assignmentISG_LNS0_5TraitE1EEEEEvOT_ENKUlRSM_OT0_E_clINS0_3altILm1ESF_EESU_EEDaSO_SQ_(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  std::__to_address[abi:sn200100]<char const>();
  return mpark::detail::assignment<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>::assign_alt<1ul,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>(v2, a2, v4);
}

uint64_t *mpark::detail::assignment<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>::assign_alt<1ul,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v9 = a1;
  v8 = a2;
  v7[2] = a3;
  if (mpark::detail::base<(mpark::detail::Trait)1,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::index(a1) == 1)
  {
    std::__to_address[abi:sn200100]<char const>();
    return WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>::operator=(v8, v4);
  }

  else
  {
    v7[0] = a1;
    std::__to_address[abi:sn200100]<char const>();
    v7[1] = v6;
    return mpark::detail::assignment<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>::assign_alt<1ul,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>(mpark::detail::alt<1ul,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>> &,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>> &&)::{unnamed type#1}::operator()(v7);
  }
}

uint64_t *WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>::operator=(uint64_t *a1, uint64_t *a2)
{
  v4[2] = a1;
  v4[1] = a2;
  v10 = v4;
  v9 = a2;
  v12 = v4;
  v11 = a2;
  v4[0] = WTF::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::leakRef(a2);
  WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>::swap<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>(a1, v4);
  v4[3] = v4;
  v5[1] = v4;
  v5[0] = 0;
  v8 = v4;
  v7 = v5;
  v6 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(v4);
  if (v6)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v6);
  }

  return a1;
}

uint64_t *mpark::detail::assignment<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>::assign_alt<1ul,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>(mpark::detail::alt<1ul,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>> &,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>> &&)::{unnamed type#1}::operator()(uint64_t *a1)
{
  v1 = *a1;
  std::__to_address[abi:sn200100]<char const>();
  return mpark::detail::assignment<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>::emplace<1ul,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>(v1);
}

uint64_t *mpark::detail::assignment<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>::emplace<1ul,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>(uint64_t a1)
{
  mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::destroy(a1);
  mpark::detail::access::base::get_alt<1ul,mpark::detail::base<(mpark::detail::Trait)1,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &>();
  std::__to_address[abi:sn200100]<char const>();
  result = mpark::detail::constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>::construct_alt<0ul,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>>();
  *(a1 + 8) = 1;
  return result;
}

void std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::AuthenticationExtensionsClientInputs,false>>(WebCore::AuthenticationExtensionsClientInputs *a1, uint64_t a2)
{
  v3 = *(a1 + 144) & 1;
  if (v3 == (std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs,false>::has_value[abi:sn200100](a2) & 1))
  {
    if (*(a1 + 144))
    {
      std::__to_address[abi:sn200100]<char const>();
      WebCore::AuthenticationExtensionsClientInputs::operator=(a1, v4);
    }
  }

  else if (*(a1 + 144))
  {
    std::__optional_destruct_base<WebCore::AuthenticationExtensionsClientInputs,false>::reset[abi:sn200100](a1);
  }

  else
  {
    std::__to_address[abi:sn200100]<char const>();
    std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs,false>::__construct[abi:sn200100]<WebCore::AuthenticationExtensionsClientInputs>(a1, v5);
  }
}

void WebCore::AuthenticationExtensionsClientInputs::operator=(uint64_t a1, uint64_t a2)
{
  WTF::String::operator=(a1, a2);
  *(a1 + 8) = *(a2 + 8);
  std::optional<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs>::operator=[abi:sn200100]((a1 + 16), a2 + 16);
  std::optional<WebCore::AuthenticationExtensionsClientInputs::PRFInputs>::operator=[abi:sn200100]((a1 + 64), a2 + 64);
}

void std::__optional_destruct_base<WebCore::AuthenticationExtensionsClientInputs,false>::reset[abi:sn200100](WebCore::AuthenticationExtensionsClientInputs *a1)
{
  if (*(a1 + 144))
  {
    WebCore::AuthenticationExtensionsClientInputs::~AuthenticationExtensionsClientInputs(a1);
    *(a1 + 144) = 0;
  }
}

uint64_t std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs,false>::__construct[abi:sn200100]<WebCore::AuthenticationExtensionsClientInputs>(uint64_t a1, uint64_t a2)
{
  result = std::__construct_at[abi:sn200100]<WebCore::AuthenticationExtensionsClientInputs,WebCore::AuthenticationExtensionsClientInputs,WebCore::AuthenticationExtensionsClientInputs*>(a1, a2);
  *(a1 + 144) = 1;
  return result;
}

void std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs,false>>(WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs *a1, uint64_t a2)
{
  v3 = *(a1 + 40) & 1;
  if (v3 == (std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs,false>::has_value[abi:sn200100](a2) & 1))
  {
    if (*(a1 + 40))
    {
      std::__to_address[abi:sn200100]<char const>();
      WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs::operator=(a1, v4);
    }
  }

  else if (*(a1 + 40))
  {
    std::__optional_destruct_base<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs,false>::reset[abi:sn200100](a1);
  }

  else
  {
    std::__to_address[abi:sn200100]<char const>();
    std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs,false>::__construct[abi:sn200100]<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs>(a1, v5);
  }
}

void WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs::operator=(uint64_t a1, uint64_t a2)
{
  WTF::String::operator=(a1, a2);
  *(a1 + 8) = *(a2 + 8);
  std::optional<WebCore::BufferSource>::operator=[abi:sn200100]((a1 + 16), a2 + 16);
}

void std::__optional_destruct_base<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs,false>::reset[abi:sn200100](WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs *a1)
{
  if (*(a1 + 40))
  {
    WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs::~LargeBlobInputs(a1);
    *(a1 + 40) = 0;
  }
}

uint64_t std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs,false>::__construct[abi:sn200100]<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs>(uint64_t a1, uint64_t a2)
{
  result = std::__construct_at[abi:sn200100]<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs,WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs,WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs*>(a1, a2);
  *(a1 + 40) = 1;
  return result;
}

void std::__optional_storage_base<WebCore::BufferSource,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::BufferSource,false>>(WebCore::BufferSource *a1, uint64_t a2)
{
  v3 = *(a1 + 16) & 1;
  if (v3 == (std::__optional_storage_base<WebCore::BufferSource,false>::has_value[abi:sn200100](a2) & 1))
  {
    if (*(a1 + 16))
    {
      std::__to_address[abi:sn200100]<char const>();
      WebCore::BufferSource::operator=(a1);
    }
  }

  else if (*(a1 + 16))
  {
    std::__optional_destruct_base<WebCore::BufferSource,false>::reset[abi:sn200100](a1);
  }

  else
  {
    std::__to_address[abi:sn200100]<char const>();
    std::__optional_storage_base<WebCore::BufferSource,false>::__construct[abi:sn200100]<WebCore::BufferSource>(a1);
  }
}

void std::__optional_destruct_base<WebCore::BufferSource,false>::reset[abi:sn200100](WebCore::BufferSource *a1)
{
  if (*(a1 + 16))
  {
    WebCore::BufferSource::~BufferSource(a1);
    *(a1 + 16) = 0;
  }
}

_BYTE *std::__optional_storage_base<WebCore::BufferSource,false>::__construct[abi:sn200100]<WebCore::BufferSource>(_BYTE *a1)
{
  result = std::__construct_at[abi:sn200100]<WebCore::BufferSource,WebCore::BufferSource,WebCore::BufferSource*>(a1);
  a1[16] = 1;
  return result;
}

_BYTE *std::construct_at[abi:sn200100]<WebCore::BufferSource,WebCore::BufferSource,WebCore::BufferSource*>(_BYTE *a1)
{
  if (!a1)
  {
    __break(1u);
  }

  return WebCore::BufferSource::BufferSource(a1);
}

_BYTE *WebCore::BufferSource::BufferSource(_BYTE *a1)
{
  WebCore::BufferSource::BufferSource(a1);
  return a1;
}

{
  mpark::variant<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::variant(a1);
  return a1;
}

_BYTE *mpark::variant<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::variant(_BYTE *a1)
{
  mpark::variant<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::variant(a1);
  return a1;
}

{
  mpark::detail::impl<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::impl(a1);
  return a1;
}

_BYTE *mpark::detail::impl<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::impl(_BYTE *a1)
{
  mpark::detail::impl<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::impl(a1);
  return a1;
}

{
  mpark::detail::copy_assignment<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::copy_assignment(a1);
  return a1;
}

_BYTE *mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::move_constructor(_BYTE *a1)
{
  _ZN5mpark6detail16move_constructorINS0_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS3_12RawPtrTraitsIS6_EENS3_21DefaultRefDerefTraitsIS6_EEEENS4_INS5_11ArrayBufferENS7_ISC_EENS9_ISC_EEEEEEELNS0_5TraitE1EECI2NS0_4baseILSH_1EJSB_SF_EEEENS0_11valueless_tE(a1);
  std::__to_address[abi:sn200100]<char const>();
  mpark::detail::constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>::generic_construct<mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>>(a1, v2);
  return a1;
}

void mpark::detail::constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>::generic_construct<mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>>(uint64_t a1, uint64_t a2)
{
  mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::destroy(a1);
  if (!mpark::detail::base<(mpark::detail::Trait)1,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::valueless_by_exception(a2))
  {
    v2 = mpark::detail::base<(mpark::detail::Trait)1,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::index(a2);
    std::__to_address[abi:sn200100]<char const>();
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS6_12RawPtrTraitsIS9_EENS6_21DefaultRefDerefTraitsIS9_EEEENS7_INS8_11ArrayBufferENSA_ISF_EENSC_ISF_EEEEEEEE17generic_constructINS0_16move_constructorISJ_LNS0_5TraitE1EEEEEvRSK_OT_EUlRSQ_OT0_E_JSP_SO_EEEDcmSR_DpOT0_(v2);
    *(a1 + 8) = *(a2 + 8);
  }
}

_BYTE *mpark::detail::base<(mpark::detail::Trait)1,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::base(_BYTE *a1)
{
  mpark::detail::recursive_union<(mpark::detail::Trait)1,0ul,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::recursive_union(a1);
  a1[8] = -1;
  return a1;
}

void _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS6_12RawPtrTraitsIS9_EENS6_21DefaultRefDerefTraitsIS9_EEEENS7_INS8_11ArrayBufferENSA_ISF_EENSC_ISF_EEEEEEEE17generic_constructINS0_16move_constructorISJ_LNS0_5TraitE1EEEEEvRSK_OT_EUlRSQ_OT0_E_JSP_SO_EEEDcmSR_DpOT0_(uint64_t a1)
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::to_address[abi:sn200100]<char const>();
  switch(a1)
  {
    case 0:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      mpark::detail::access::base::get_alt<0ul,mpark::detail::base<(mpark::detail::Trait)1,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &>();
      std::__to_address[abi:sn200100]<char const>();
      mpark::detail::access::base::get_alt<0ul,mpark::detail::base<(mpark::detail::Trait)1,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>>();
      _ZN5mpark6detail10visitation4base23visit_return_type_checkIvvE6invokeIZNS0_11constructorINS0_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS8_12RawPtrTraitsISB_EENS8_21DefaultRefDerefTraitsISB_EEEENS9_INSA_11ArrayBufferENSC_ISH_EENSE_ISH_EEEEEEEE17generic_constructINS0_16move_constructorISL_LNS0_5TraitE1EEEEEvRSM_OT_EUlRSS_OT0_E_JRNS0_3altILm0ESG_EESZ_EEEDcST_DpOT0_();
      return;
    case 1:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      mpark::detail::access::base::get_alt<1ul,mpark::detail::base<(mpark::detail::Trait)1,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &>();
      std::__to_address[abi:sn200100]<char const>();
      mpark::detail::access::base::get_alt<1ul,mpark::detail::base<(mpark::detail::Trait)1,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>();
      _ZN5mpark6detail10visitation4base23visit_return_type_checkIvvE6invokeIZNS0_11constructorINS0_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS8_12RawPtrTraitsISB_EENS8_21DefaultRefDerefTraitsISB_EEEENS9_INSA_11ArrayBufferENSC_ISH_EENSE_ISH_EEEEEEEE17generic_constructINS0_16move_constructorISL_LNS0_5TraitE1EEEEEvRSM_OT_EUlRSS_OT0_E_JRNS0_3altILm0ESG_EESZ_EEEDcST_DpOT0_();
      return;
    case 2:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_5;
    case 3:
LABEL_5:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_6;
    case 4:
LABEL_6:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_7;
    case 5:
LABEL_7:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_8;
    case 6:
LABEL_8:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_9;
    case 7:
LABEL_9:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_10;
    case 8:
LABEL_10:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_11;
    case 9:
LABEL_11:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_12;
    case 10:
LABEL_12:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_13;
    case 11:
LABEL_13:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_14;
    case 12:
LABEL_14:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_15;
    case 13:
LABEL_15:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_16;
    case 14:
LABEL_16:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_17;
    case 15:
LABEL_17:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_18;
    case 16:
LABEL_18:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_19;
    case 17:
LABEL_19:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_20;
    case 18:
LABEL_20:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_21;
    case 19:
LABEL_21:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_22;
    case 20:
LABEL_22:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_23;
    case 21:
LABEL_23:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_24;
    case 22:
LABEL_24:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_25;
    case 23:
LABEL_25:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_26;
    case 24:
LABEL_26:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_27;
    case 25:
LABEL_27:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_28;
    case 26:
LABEL_28:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_29;
    case 27:
LABEL_29:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_30;
    case 28:
LABEL_30:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_31;
    case 29:
LABEL_31:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_32;
    case 30:
LABEL_32:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_33;
    case 31:
LABEL_33:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      break;
    default:
      break;
  }

  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  __break(1u);
}

uint64_t *_ZN5mpark6detail10visitation4base23visit_return_type_checkIvvE6invokeIZNS0_11constructorINS0_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS8_12RawPtrTraitsISB_EENS8_21DefaultRefDerefTraitsISB_EEEENS9_INSA_11ArrayBufferENSC_ISH_EENSE_ISH_EEEEEEEE17generic_constructINS0_16move_constructorISL_LNS0_5TraitE1EEEEEvRSM_OT_EUlRSS_OT0_E_JRNS0_3altILm0ESG_EESZ_EEEDcST_DpOT0_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return _ZN5mpark3lib5cpp176invokeIZNS_6detail11constructorINS3_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS6_12RawPtrTraitsIS9_EENS6_21DefaultRefDerefTraitsIS9_EEEENS7_INS8_11ArrayBufferENSA_ISF_EENSC_ISF_EEEEEEEE17generic_constructINS3_16move_constructorISJ_LNS3_5TraitE1EEEEEvRSK_OT_EUlRSQ_OT0_E_JRNS3_3altILm0ESE_EESX_EEEDTclsr6detailE6invokeclsr3libE7forwardISQ_Efp_Espclsr3libE7forwardIT0_Efp0_EEESR_DpOSZ_();
}

uint64_t *_ZN5mpark3lib5cpp176invokeIZNS_6detail11constructorINS3_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS6_12RawPtrTraitsIS9_EENS6_21DefaultRefDerefTraitsIS9_EEEENS7_INS8_11ArrayBufferENSA_ISF_EENSC_ISF_EEEEEEEE17generic_constructINS3_16move_constructorISJ_LNS3_5TraitE1EEEEEvRSK_OT_EUlRSQ_OT0_E_JRNS3_3altILm0ESE_EESX_EEEDTclsr6detailE6invokeclsr3libE7forwardISQ_Efp_Espclsr3libE7forwardIT0_Efp0_EEESR_DpOSZ_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return _ZN5mpark3lib5cpp176detail6invokeIZNS_6detail11constructorINS4_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS7_12RawPtrTraitsISA_EENS7_21DefaultRefDerefTraitsISA_EEEENS8_INS9_11ArrayBufferENSB_ISG_EENSD_ISG_EEEEEEEE17generic_constructINS4_16move_constructorISK_LNS4_5TraitE1EEEEEvRSL_OT_EUlRSR_OT0_E_JRNS4_3altILm0ESF_EESY_EEEDTclclsr3libE7forwardISR_Efp_Espclsr3libE7forwardIT0_Efp0_EEESS_DpOS10_();
}

uint64_t *_ZN5mpark3lib5cpp176detail6invokeIZNS_6detail11constructorINS4_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS7_12RawPtrTraitsISA_EENS7_21DefaultRefDerefTraitsISA_EEEENS8_INS9_11ArrayBufferENSB_ISG_EENSD_ISG_EEEEEEEE17generic_constructINS4_16move_constructorISK_LNS4_5TraitE1EEEEEvRSL_OT_EUlRSR_OT0_E_JRNS4_3altILm0ESF_EESY_EEEDTclclsr3libE7forwardISR_Efp_Espclsr3libE7forwardIT0_Efp0_EEESS_DpOS10_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return _ZZN5mpark6detail11constructorINS0_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS3_12RawPtrTraitsIS6_EENS3_21DefaultRefDerefTraitsIS6_EEEENS4_INS5_11ArrayBufferENS7_ISC_EENS9_ISC_EEEEEEEE17generic_constructINS0_16move_constructorISG_LNS0_5TraitE1EEEEEvRSH_OT_ENKUlRSN_OT0_E_clINS0_3altILm0ESB_EESV_EEDaSP_SR_();
}

uint64_t std::construct_at[abi:sn200100]<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs,WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs,WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs*>(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    __break(1u);
  }

  return WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs::LargeBlobInputs(a1, a2);
}

uint64_t WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs::LargeBlobInputs(uint64_t a1, uint64_t a2)
{
  WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs::LargeBlobInputs(a1, a2);
  return a1;
}

{
  WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr(a1, a2);
  *(a1 + 8) = *(a2 + 8);
  std::optional<WebCore::BufferSource>::optional[abi:sn200100]((a1 + 16), a2 + 16);
  return a1;
}

_BYTE *std::optional<WebCore::BufferSource>::optional[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  std::optional<WebCore::BufferSource>::optional[abi:sn200100](a1, a2);
  return a1;
}

{
  std::__optional_move_assign_base<WebCore::BufferSource,false>::__optional_move_assign_base[abi:sn200100](a1, a2);
  return a1;
}

_BYTE *std::__optional_move_base<WebCore::BufferSource,false>::__optional_move_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  std::__optional_copy_base<WebCore::BufferSource,false>::__optional_copy_base[abi:sn200100](a1);
  std::__optional_storage_base<WebCore::BufferSource,false>::__construct_from[abi:sn200100]<std::__optional_move_base<WebCore::BufferSource,false>>(a1, a2);
  return a1;
}

uint64_t std::__optional_storage_base<WebCore::BufferSource,false>::__construct_from[abi:sn200100]<std::__optional_move_base<WebCore::BufferSource,false>>(_BYTE *a1, uint64_t a2)
{
  result = std::__optional_storage_base<WebCore::BufferSource,false>::has_value[abi:sn200100](a2);
  if (result)
  {
    std::__to_address[abi:sn200100]<char const>();
    return std::__optional_storage_base<WebCore::BufferSource,false>::__construct[abi:sn200100]<WebCore::BufferSource>(a1);
  }

  return result;
}

void std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs::PRFInputs,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::AuthenticationExtensionsClientInputs::PRFInputs,false>>(WebCore::AuthenticationExtensionsClientInputs::PRFValues *a1, uint64_t a2)
{
  v3 = *(a1 + 72) & 1;
  if (v3 == (std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs::PRFInputs,false>::has_value[abi:sn200100](a2) & 1))
  {
    if (*(a1 + 72))
    {
      std::__to_address[abi:sn200100]<char const>();
      WebCore::AuthenticationExtensionsClientInputs::PRFInputs::operator=(a1, v4);
    }
  }

  else if (*(a1 + 72))
  {
    std::__optional_destruct_base<WebCore::AuthenticationExtensionsClientInputs::PRFInputs,false>::reset[abi:sn200100](a1);
  }

  else
  {
    std::__to_address[abi:sn200100]<char const>();
    std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs::PRFInputs,false>::__construct[abi:sn200100]<WebCore::AuthenticationExtensionsClientInputs::PRFInputs>(a1, v5);
  }
}

void std::__optional_destruct_base<WebCore::AuthenticationExtensionsClientInputs::PRFInputs,false>::reset[abi:sn200100](WebCore::AuthenticationExtensionsClientInputs::PRFInputs *a1)
{
  if (*(a1 + 72))
  {
    WebCore::AuthenticationExtensionsClientInputs::PRFInputs::~PRFInputs(a1);
    *(a1 + 72) = 0;
  }
}

_BYTE *std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs::PRFInputs,false>::__construct[abi:sn200100]<WebCore::AuthenticationExtensionsClientInputs::PRFInputs>(_BYTE *a1, uint64_t a2)
{
  result = std::__construct_at[abi:sn200100]<WebCore::AuthenticationExtensionsClientInputs::PRFInputs,WebCore::AuthenticationExtensionsClientInputs::PRFInputs,WebCore::AuthenticationExtensionsClientInputs::PRFInputs*>(a1, a2);
  a1[72] = 1;
  return result;
}

void std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs::PRFValues,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::AuthenticationExtensionsClientInputs::PRFValues,false>>(WebCore::AuthenticationExtensionsClientInputs::PRFValues *a1, uint64_t a2)
{
  v3 = *(a1 + 40) & 1;
  if (v3 == (std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs,false>::has_value[abi:sn200100](a2) & 1))
  {
    if (*(a1 + 40))
    {
      std::__to_address[abi:sn200100]<char const>();
      WebCore::AuthenticationExtensionsClientInputs::PRFValues::operator=(a1, v4);
    }
  }

  else if (*(a1 + 40))
  {
    std::__optional_destruct_base<WebCore::AuthenticationExtensionsClientInputs::PRFValues,false>::reset[abi:sn200100](a1);
  }

  else
  {
    std::__to_address[abi:sn200100]<char const>();
    std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs::PRFValues,false>::__construct[abi:sn200100]<WebCore::AuthenticationExtensionsClientInputs::PRFValues>(a1, v5);
  }
}

void std::__optional_destruct_base<WebCore::AuthenticationExtensionsClientInputs::PRFValues,false>::reset[abi:sn200100](WebCore::AuthenticationExtensionsClientInputs::PRFValues *a1)
{
  if (*(a1 + 40))
  {
    WebCore::AuthenticationExtensionsClientInputs::PRFValues::~PRFValues(a1);
    *(a1 + 40) = 0;
  }
}

_BYTE *std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs::PRFValues,false>::__construct[abi:sn200100]<WebCore::AuthenticationExtensionsClientInputs::PRFValues>(_BYTE *a1, uint64_t a2)
{
  result = std::__construct_at[abi:sn200100]<WebCore::AuthenticationExtensionsClientInputs::PRFValues,WebCore::AuthenticationExtensionsClientInputs::PRFValues,WebCore::AuthenticationExtensionsClientInputs::PRFValues*>(a1, a2);
  a1[40] = 1;
  return result;
}

_BYTE *std::construct_at[abi:sn200100]<WebCore::AuthenticationExtensionsClientInputs::PRFValues,WebCore::AuthenticationExtensionsClientInputs::PRFValues,WebCore::AuthenticationExtensionsClientInputs::PRFValues*>(_BYTE *a1, uint64_t a2)
{
  if (!a1)
  {
    __break(1u);
  }

  return WebCore::AuthenticationExtensionsClientInputs::PRFValues::PRFValues(a1, a2);
}

_BYTE *WebCore::AuthenticationExtensionsClientInputs::PRFValues::PRFValues(_BYTE *a1, uint64_t a2)
{
  WebCore::AuthenticationExtensionsClientInputs::PRFValues::PRFValues(a1, a2);
  return a1;
}

{
  WebCore::BufferSource::BufferSource(a1);
  std::optional<WebCore::BufferSource>::optional[abi:sn200100](a1 + 16, a2 + 16);
  return a1;
}

void std::__optional_storage_base<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16) & 1;
  if (v3 == (std::__optional_storage_base<WebCore::BufferSource,false>::has_value[abi:sn200100](a2) & 1))
  {
    if (*(a1 + 16))
    {
      std::__to_address[abi:sn200100]<char const>();
      WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(a1, v4);
    }
  }

  else if (*(a1 + 16))
  {
    std::__optional_destruct_base<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::reset[abi:sn200100](a1);
  }

  else
  {
    std::__to_address[abi:sn200100]<char const>();
    std::__optional_storage_base<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__construct[abi:sn200100]<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, v5);
  }
}

void WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 12))
  {
    v3 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1);
    v4 = WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a1);
    WTF::VectorTypeOperations<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>>::destruct(v3, v4);
  }

  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetBufferSizeToFullCapacity(a1);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetBufferSizeToFullCapacity(a2);
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1, a2);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
}

uint64_t std::__optional_destruct_base<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::reset[abi:sn200100](uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(result);
    *(v1 + 16) = 0;
  }

  return result;
}

uint64_t std::__optional_storage_base<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__construct[abi:sn200100]<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t a1, uint64_t *a2)
{
  result = std::__construct_at[abi:sn200100]<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>*>(a1, a2);
  *(a1 + 16) = 1;
  return result;
}

uint64_t std::construct_at[abi:sn200100]<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>*>(uint64_t a1, uint64_t *a2)
{
  if (!a1)
  {
    __break(1u);
  }

  return WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1, a2);
}

uint64_t WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t a1, uint64_t *a2)
{
  WTF::VectorBuffer<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::FastMalloc>::VectorBuffer(a1);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetBufferSizeToFullCapacity(a1);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetBufferSizeToFullCapacity(a2);
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1, a2);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  return a1;
}

_BYTE *std::construct_at[abi:sn200100]<WebCore::AuthenticationExtensionsClientInputs::PRFInputs,WebCore::AuthenticationExtensionsClientInputs::PRFInputs,WebCore::AuthenticationExtensionsClientInputs::PRFInputs*>(_BYTE *a1, uint64_t a2)
{
  if (!a1)
  {
    __break(1u);
  }

  return WebCore::AuthenticationExtensionsClientInputs::PRFInputs::PRFInputs(a1, a2);
}

_BYTE *WebCore::AuthenticationExtensionsClientInputs::PRFInputs::PRFInputs(_BYTE *a1, uint64_t a2)
{
  WebCore::AuthenticationExtensionsClientInputs::PRFInputs::PRFInputs(a1, a2);
  return a1;
}

{
  std::optional<WebCore::AuthenticationExtensionsClientInputs::PRFValues>::optional[abi:sn200100](a1, a2);
  std::optional<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100](a1 + 48, a2 + 48);
  return a1;
}

_BYTE *std::optional<WebCore::AuthenticationExtensionsClientInputs::PRFValues>::optional[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  std::optional<WebCore::AuthenticationExtensionsClientInputs::PRFValues>::optional[abi:sn200100](a1, a2);
  return a1;
}

{
  std::__optional_move_assign_base<WebCore::AuthenticationExtensionsClientInputs::PRFValues,false>::__optional_move_assign_base[abi:sn200100](a1, a2);
  return a1;
}

{
  std::optional<WebCore::AuthenticationExtensionsClientInputs::PRFValues>::optional[abi:sn200100](a1, a2);
  return a1;
}

{
  std::__optional_move_assign_base<WebCore::AuthenticationExtensionsClientInputs::PRFValues,false>::__optional_move_assign_base[abi:sn200100](a1, a2);
  return a1;
}

_BYTE *std::optional<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  std::optional<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100](a1, a2);
  return a1;
}

{
  std::__optional_move_assign_base<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_assign_base[abi:sn200100](a1, a2);
  return a1;
}

_BYTE *std::__optional_move_assign_base<WebCore::AuthenticationExtensionsClientInputs::PRFValues,false>::__optional_move_assign_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  std::__optional_copy_assign_base<WebCore::AuthenticationExtensionsClientInputs::PRFValues,false>::__optional_copy_assign_base[abi:sn200100](a1, a2);
  return a1;
}

{
  std::__optional_copy_assign_base<WebCore::AuthenticationExtensionsClientInputs::PRFValues,false>::__optional_copy_assign_base[abi:sn200100](a1, a2);
  return a1;
}

_BYTE *std::__optional_copy_assign_base<WebCore::AuthenticationExtensionsClientInputs::PRFValues,false>::__optional_copy_assign_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  std::__optional_move_base<WebCore::AuthenticationExtensionsClientInputs::PRFValues,false>::__optional_move_base[abi:sn200100](a1, a2);
  return a1;
}

{
  std::__optional_move_base<WebCore::AuthenticationExtensionsClientInputs::PRFValues,false>::__optional_move_base[abi:sn200100](a1, a2);
  return a1;
}

_BYTE *std::__optional_move_base<WebCore::AuthenticationExtensionsClientInputs::PRFValues,false>::__optional_move_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  std::__optional_copy_base<WebCore::AuthenticationExtensionsClientInputs::PRFValues,false>::__optional_copy_base[abi:sn200100](a1);
  std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs::PRFValues,false>::__construct_from[abi:sn200100]<std::__optional_move_base<WebCore::AuthenticationExtensionsClientInputs::PRFValues,false>>(a1, a2);
  return a1;
}

{
  std::__optional_copy_base<WebCore::AuthenticationExtensionsClientInputs::PRFValues,false>::__optional_copy_base[abi:sn200100](a1, a2);
  return a1;
}

uint64_t std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs::PRFValues,false>::__construct_from[abi:sn200100]<std::__optional_move_base<WebCore::AuthenticationExtensionsClientInputs::PRFValues,false>>(_BYTE *a1, uint64_t a2)
{
  result = std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs,false>::has_value[abi:sn200100](a2);
  if (result)
  {
    std::__to_address[abi:sn200100]<char const>();
    return std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs::PRFValues,false>::__construct[abi:sn200100]<WebCore::AuthenticationExtensionsClientInputs::PRFValues>(a1, v4);
  }

  return result;
}

_BYTE *std::__optional_destruct_base<WebCore::AuthenticationExtensionsClientInputs::PRFValues,false>::__optional_destruct_base[abi:sn200100](_BYTE *result)
{
  *result = 0;
  result[40] = 0;
  return result;
}

_BYTE *std::__optional_move_base<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  std::__optional_copy_base<WebCore::BufferSource,false>::__optional_copy_base[abi:sn200100](a1);
  std::__optional_storage_base<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__construct_from[abi:sn200100]<std::__optional_move_base<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>>(a1, a2);
  return a1;
}

uint64_t std::__optional_storage_base<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__construct_from[abi:sn200100]<std::__optional_move_base<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>>(uint64_t a1, uint64_t a2)
{
  result = std::__optional_storage_base<WebCore::BufferSource,false>::has_value[abi:sn200100](a2);
  if (result)
  {
    std::__to_address[abi:sn200100]<char const>();
    return std::__optional_storage_base<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__construct[abi:sn200100]<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, v4);
  }

  return result;
}

uint64_t std::construct_at[abi:sn200100]<WebCore::AuthenticationExtensionsClientInputs,WebCore::AuthenticationExtensionsClientInputs,WebCore::AuthenticationExtensionsClientInputs*>(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    __break(1u);
  }

  return WebCore::AuthenticationExtensionsClientInputs::AuthenticationExtensionsClientInputs(a1, a2);
}

uint64_t WebCore::AuthenticationExtensionsClientInputs::AuthenticationExtensionsClientInputs(uint64_t a1, uint64_t a2)
{
  WebCore::AuthenticationExtensionsClientInputs::AuthenticationExtensionsClientInputs(a1, a2);
  return a1;
}

{
  WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr(a1, a2);
  *(a1 + 8) = *(a2 + 8);
  std::optional<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs>::optional[abi:sn200100]((a1 + 16), a2 + 16);
  std::optional<WebCore::AuthenticationExtensionsClientInputs::PRFInputs>::optional[abi:sn200100]((a1 + 64), a2 + 64);
  return a1;
}

_BYTE *std::optional<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs>::optional[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  std::optional<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs>::optional[abi:sn200100](a1, a2);
  return a1;
}

{
  std::__optional_move_assign_base<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs,false>::__optional_move_assign_base[abi:sn200100](a1, a2);
  return a1;
}

_BYTE *std::optional<WebCore::AuthenticationExtensionsClientInputs::PRFInputs>::optional[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  std::optional<WebCore::AuthenticationExtensionsClientInputs::PRFInputs>::optional[abi:sn200100](a1, a2);
  return a1;
}

{
  std::__optional_move_assign_base<WebCore::AuthenticationExtensionsClientInputs::PRFInputs,false>::__optional_move_assign_base[abi:sn200100](a1, a2);
  return a1;
}

{
  std::optional<WebCore::AuthenticationExtensionsClientInputs::PRFInputs>::optional[abi:sn200100](a1, a2);
  return a1;
}

{
  std::__optional_move_assign_base<WebCore::AuthenticationExtensionsClientInputs::PRFInputs,false>::__optional_move_assign_base[abi:sn200100](a1, a2);
  return a1;
}

_BYTE *std::__optional_move_base<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs,false>::__optional_move_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  std::__optional_copy_base<WebCore::AuthenticationExtensionsClientInputs::PRFValues,false>::__optional_copy_base[abi:sn200100](a1);
  std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs,false>::__construct_from[abi:sn200100]<std::__optional_move_base<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs,false>>(a1, a2);
  return a1;
}

uint64_t std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs,false>::__construct_from[abi:sn200100]<std::__optional_move_base<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs,false>>(uint64_t a1, uint64_t a2)
{
  result = std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs,false>::has_value[abi:sn200100](a2);
  if (result)
  {
    std::__to_address[abi:sn200100]<char const>();
    return std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs,false>::__construct[abi:sn200100]<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs>(a1, v4);
  }

  return result;
}

_BYTE *std::__optional_move_assign_base<WebCore::AuthenticationExtensionsClientInputs::PRFInputs,false>::__optional_move_assign_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  std::__optional_copy_assign_base<WebCore::AuthenticationExtensionsClientInputs::PRFInputs,false>::__optional_copy_assign_base[abi:sn200100](a1, a2);
  return a1;
}

{
  std::__optional_copy_assign_base<WebCore::AuthenticationExtensionsClientInputs::PRFInputs,false>::__optional_copy_assign_base[abi:sn200100](a1, a2);
  return a1;
}

_BYTE *std::__optional_copy_assign_base<WebCore::AuthenticationExtensionsClientInputs::PRFInputs,false>::__optional_copy_assign_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  std::__optional_move_base<WebCore::AuthenticationExtensionsClientInputs::PRFInputs,false>::__optional_move_base[abi:sn200100](a1, a2);
  return a1;
}

{
  std::__optional_move_base<WebCore::AuthenticationExtensionsClientInputs::PRFInputs,false>::__optional_move_base[abi:sn200100](a1, a2);
  return a1;
}

_BYTE *std::__optional_move_base<WebCore::AuthenticationExtensionsClientInputs::PRFInputs,false>::__optional_move_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  std::__optional_copy_base<WebCore::AuthenticationExtensionsClientInputs::PRFInputs,false>::__optional_copy_base[abi:sn200100](a1);
  std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs::PRFInputs,false>::__construct_from[abi:sn200100]<std::__optional_move_base<WebCore::AuthenticationExtensionsClientInputs::PRFInputs,false>>(a1, a2);
  return a1;
}

{
  std::__optional_copy_base<WebCore::AuthenticationExtensionsClientInputs::PRFInputs,false>::__optional_copy_base[abi:sn200100](a1, a2);
  return a1;
}

uint64_t std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs::PRFInputs,false>::__construct_from[abi:sn200100]<std::__optional_move_base<WebCore::AuthenticationExtensionsClientInputs::PRFInputs,false>>(_BYTE *a1, uint64_t a2)
{
  result = std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs::PRFInputs,false>::has_value[abi:sn200100](a2);
  if (result)
  {
    std::__to_address[abi:sn200100]<char const>();
    return std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs::PRFInputs,false>::__construct[abi:sn200100]<WebCore::AuthenticationExtensionsClientInputs::PRFInputs>(a1, v4);
  }

  return result;
}

_BYTE *std::__optional_destruct_base<WebCore::AuthenticationExtensionsClientInputs::PRFInputs,false>::__optional_destruct_base[abi:sn200100](_BYTE *result)
{
  *result = 0;
  result[72] = 0;
  return result;
}

uint64_t mpark::detail::assignment<mpark::detail::traits<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>>::emplace<0ul,WebCore::PublicKeyCredentialCreationOptions>(uint64_t a1)
{
  mpark::detail::destructor<mpark::detail::traits<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>,(mpark::detail::Trait)1>::destroy(a1);
  mpark::detail::access::base::get_alt<0ul,mpark::detail::base<(mpark::detail::Trait)1,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &>();
  std::__to_address[abi:sn200100]<char const>();
  result = mpark::detail::constructor<mpark::detail::traits<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>>::construct_alt<0ul,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialCreationOptions>();
  *(a1 + 288) = 0;
  return result;
}

uint64_t mpark::detail::constructor<mpark::detail::traits<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>>::construct_alt<0ul,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialCreationOptions>()
{
  std::__to_address[abi:sn200100]<char const>();
  v1 = v0;
  std::__to_address[abi:sn200100]<char const>();
  mpark::detail::alt<0ul,WebCore::PublicKeyCredentialCreationOptions>::alt<WebCore::PublicKeyCredentialCreationOptions>(v1);
  return v1;
}

uint64_t mpark::detail::alt<0ul,WebCore::PublicKeyCredentialCreationOptions>::alt<WebCore::PublicKeyCredentialCreationOptions>(uint64_t a1)
{
  mpark::detail::alt<0ul,WebCore::PublicKeyCredentialCreationOptions>::alt<WebCore::PublicKeyCredentialCreationOptions>(a1);
  return a1;
}

{
  std::__to_address[abi:sn200100]<char const>();
  WebCore::PublicKeyCredentialCreationOptions::PublicKeyCredentialCreationOptions(a1, v2);
  return a1;
}

uint64_t WebCore::PublicKeyCredentialCreationOptions::PublicKeyCredentialCreationOptions(uint64_t a1, uint64_t a2)
{
  WebCore::PublicKeyCredentialCreationOptions::PublicKeyCredentialCreationOptions(a1, a2);
  return a1;
}

{
  WebCore::PublicKeyCredentialRpEntity::PublicKeyCredentialRpEntity(a1, a2);
  WebCore::PublicKeyCredentialUserEntity::PublicKeyCredentialUserEntity(a1 + 24, (a2 + 24));
  WebCore::BufferSource::BufferSource((a1 + 64));
  WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1 + 80, (a2 + 80));
  *(a1 + 96) = *(a2 + 96);
  WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1 + 104, (a2 + 104));
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  std::optional<WebCore::AuthenticationExtensionsClientInputs>::optional[abi:sn200100]((a1 + 136), a2 + 136);
  return a1;
}

uint64_t *WebCore::PublicKeyCredentialRpEntity::PublicKeyCredentialRpEntity(uint64_t *a1, uint64_t *a2)
{
  WebCore::PublicKeyCredentialRpEntity::PublicKeyCredentialRpEntity(a1, a2);
  return a1;
}

{
  WebCore::PublicKeyCredentialEntity::PublicKeyCredentialEntity(a1, a2);
  WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr(a1 + 2, a2 + 2);
  return a1;
}

uint64_t WebCore::PublicKeyCredentialUserEntity::PublicKeyCredentialUserEntity(uint64_t a1, uint64_t *a2)
{
  WebCore::PublicKeyCredentialUserEntity::PublicKeyCredentialUserEntity(a1, a2);
  return a1;
}

{
  WebCore::PublicKeyCredentialEntity::PublicKeyCredentialEntity(a1, a2);
  WebCore::BufferSource::BufferSource((a1 + 16));
  WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr((a1 + 32), a2 + 4);
  return a1;
}

_BYTE *std::optional<WebCore::AuthenticationExtensionsClientInputs>::optional[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  std::optional<WebCore::AuthenticationExtensionsClientInputs>::optional[abi:sn200100](a1, a2);
  return a1;
}

{
  std::__optional_move_assign_base<WebCore::AuthenticationExtensionsClientInputs,false>::__optional_move_assign_base[abi:sn200100](a1, a2);
  return a1;
}

uint64_t *WebCore::PublicKeyCredentialEntity::PublicKeyCredentialEntity(uint64_t *a1, uint64_t *a2)
{
  WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr(a1, a2);
  WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr(a1 + 1, a2 + 1);
  return a1;
}

_BYTE *std::__optional_move_base<WebCore::AuthenticationExtensionsClientInputs,false>::__optional_move_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  std::__optional_copy_base<WebCore::AuthenticationExtensionsClientInputs,false>::__optional_copy_base[abi:sn200100](a1);
  std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs,false>::__construct_from[abi:sn200100]<std::__optional_move_base<WebCore::AuthenticationExtensionsClientInputs,false>>(a1, a2);
  return a1;
}

uint64_t std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs,false>::__construct_from[abi:sn200100]<std::__optional_move_base<WebCore::AuthenticationExtensionsClientInputs,false>>(uint64_t a1, uint64_t a2)
{
  result = std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs,false>::has_value[abi:sn200100](a2);
  if (result)
  {
    std::__to_address[abi:sn200100]<char const>();
    return std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs,false>::__construct[abi:sn200100]<WebCore::AuthenticationExtensionsClientInputs>(a1, v4);
  }

  return result;
}

void _ZN5mpark6detail10visitation4base23visit_return_type_checkIvvE6invokeIZNS0_10assignmentINS0_6traitsIJN7WebCore34PublicKeyCredentialCreationOptionsENS8_33PublicKeyCredentialRequestOptionsEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRNS0_3altILm1ESA_EESO_EEEDcSI_DpOT0_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  _ZN5mpark3lib5cpp176invokeIZNS_6detail10assignmentINS3_6traitsIJN7WebCore34PublicKeyCredentialCreationOptionsENS6_33PublicKeyCredentialRequestOptionsEEEEE14generic_assignINS3_15move_assignmentIS9_LNS3_5TraitE1EEEEEvOT_EUlRSF_OT0_E_JRNS3_3altILm1ES8_EESM_EEEDTclsr6detailE6invokeclsr3libE7forwardISF_Efp_Espclsr3libE7forwardIT0_Efp0_EEESG_DpOSO_();
}

void _ZN5mpark3lib5cpp176invokeIZNS_6detail10assignmentINS3_6traitsIJN7WebCore34PublicKeyCredentialCreationOptionsENS6_33PublicKeyCredentialRequestOptionsEEEEE14generic_assignINS3_15move_assignmentIS9_LNS3_5TraitE1EEEEEvOT_EUlRSF_OT0_E_JRNS3_3altILm1ES8_EESM_EEEDTclsr6detailE6invokeclsr3libE7forwardISF_Efp_Espclsr3libE7forwardIT0_Efp0_EEESG_DpOSO_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  _ZN5mpark3lib5cpp176detail6invokeIZNS_6detail10assignmentINS4_6traitsIJN7WebCore34PublicKeyCredentialCreationOptionsENS7_33PublicKeyCredentialRequestOptionsEEEEE14generic_assignINS4_15move_assignmentISA_LNS4_5TraitE1EEEEEvOT_EUlRSG_OT0_E_JRNS4_3altILm1ES9_EESN_EEEDTclclsr3libE7forwardISG_Efp_Espclsr3libE7forwardIT0_Efp0_EEESH_DpOSP_();
}

void _ZN5mpark3lib5cpp176detail6invokeIZNS_6detail10assignmentINS4_6traitsIJN7WebCore34PublicKeyCredentialCreationOptionsENS7_33PublicKeyCredentialRequestOptionsEEEEE14generic_assignINS4_15move_assignmentISA_LNS4_5TraitE1EEEEEvOT_EUlRSG_OT0_E_JRNS4_3altILm1ES9_EESN_EEEDTclclsr3libE7forwardISG_Efp_Espclsr3libE7forwardIT0_Efp0_EEESH_DpOSP_()
{
  std::__to_address[abi:sn200100]<char const>();
  v1 = v0;
  std::__to_address[abi:sn200100]<char const>();
  v3 = v2;
  std::__to_address[abi:sn200100]<char const>();
  _ZZN5mpark6detail10assignmentINS0_6traitsIJN7WebCore34PublicKeyCredentialCreationOptionsENS3_33PublicKeyCredentialRequestOptionsEEEEE14generic_assignINS0_15move_assignmentIS6_LNS0_5TraitE1EEEEEvOT_ENKUlRSC_OT0_E_clINS0_3altILm1ES5_EESK_EEDaSE_SG_(v1, v3);
}

void _ZZN5mpark6detail10assignmentINS0_6traitsIJN7WebCore34PublicKeyCredentialCreationOptionsENS3_33PublicKeyCredentialRequestOptionsEEEEE14generic_assignINS0_15move_assignmentIS6_LNS0_5TraitE1EEEEEvOT_ENKUlRSC_OT0_E_clINS0_3altILm1ES5_EESK_EEDaSE_SG_(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  std::__to_address[abi:sn200100]<char const>();
  mpark::detail::assignment<mpark::detail::traits<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>>::assign_alt<1ul,WebCore::PublicKeyCredentialRequestOptions,WebCore::PublicKeyCredentialRequestOptions>(v2, a2, v4);
}

void mpark::detail::assignment<mpark::detail::traits<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>>::assign_alt<1ul,WebCore::PublicKeyCredentialRequestOptions,WebCore::PublicKeyCredentialRequestOptions>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v7 = a2;
  v6[2] = a3;
  if (mpark::detail::base<(mpark::detail::Trait)1,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>::index(a1) == 1)
  {
    std::__to_address[abi:sn200100]<char const>();
    WebCore::PublicKeyCredentialRequestOptions::operator=(v7, v4);
  }

  else
  {
    v6[0] = a1;
    std::__to_address[abi:sn200100]<char const>();
    v6[1] = v5;
    mpark::detail::assignment<mpark::detail::traits<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>>::assign_alt<1ul,WebCore::PublicKeyCredentialRequestOptions,WebCore::PublicKeyCredentialRequestOptions>(mpark::detail::alt<1ul,WebCore::PublicKeyCredentialRequestOptions> &,WebCore::PublicKeyCredentialRequestOptions &&)::{unnamed type#1}::operator()(v6);
  }
}

void WebCore::PublicKeyCredentialRequestOptions::operator=(uint64_t a1, uint64_t a2)
{
  WebCore::BufferSource::operator=(a1);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  WTF::String::operator=((a1 + 24), (a2 + 24));
  WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(a1 + 32, (a2 + 32));
  *(a1 + 48) = *(a2 + 48);
  std::optional<WebCore::AuthenticationExtensionsClientInputs>::operator=[abi:sn200100]((a1 + 56), a2 + 56);
  *(a1 + 208) = *(a2 + 208);
}

uint64_t mpark::detail::assignment<mpark::detail::traits<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>>::assign_alt<1ul,WebCore::PublicKeyCredentialRequestOptions,WebCore::PublicKeyCredentialRequestOptions>(mpark::detail::alt<1ul,WebCore::PublicKeyCredentialRequestOptions> &,WebCore::PublicKeyCredentialRequestOptions &&)::{unnamed type#1}::operator()(uint64_t *a1)
{
  v1 = *a1;
  std::__to_address[abi:sn200100]<char const>();
  return mpark::detail::assignment<mpark::detail::traits<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>>::emplace<1ul,WebCore::PublicKeyCredentialRequestOptions>(v1);
}

uint64_t mpark::detail::assignment<mpark::detail::traits<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>>::emplace<1ul,WebCore::PublicKeyCredentialRequestOptions>(uint64_t a1)
{
  mpark::detail::destructor<mpark::detail::traits<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>,(mpark::detail::Trait)1>::destroy(a1);
  mpark::detail::access::base::get_alt<1ul,mpark::detail::base<(mpark::detail::Trait)1,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &>();
  std::__to_address[abi:sn200100]<char const>();
  result = mpark::detail::constructor<mpark::detail::traits<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>>::construct_alt<1ul,WebCore::PublicKeyCredentialRequestOptions,WebCore::PublicKeyCredentialRequestOptions>();
  *(a1 + 288) = 1;
  return result;
}

uint64_t mpark::detail::constructor<mpark::detail::traits<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>>::construct_alt<1ul,WebCore::PublicKeyCredentialRequestOptions,WebCore::PublicKeyCredentialRequestOptions>()
{
  std::__to_address[abi:sn200100]<char const>();
  v1 = v0;
  std::__to_address[abi:sn200100]<char const>();
  mpark::detail::alt<1ul,WebCore::PublicKeyCredentialRequestOptions>::alt<WebCore::PublicKeyCredentialRequestOptions>(v1);
  return v1;
}

uint64_t mpark::detail::alt<1ul,WebCore::PublicKeyCredentialRequestOptions>::alt<WebCore::PublicKeyCredentialRequestOptions>(uint64_t a1)
{
  mpark::detail::alt<1ul,WebCore::PublicKeyCredentialRequestOptions>::alt<WebCore::PublicKeyCredentialRequestOptions>(a1);
  return a1;
}

{
  std::__to_address[abi:sn200100]<char const>();
  WebCore::PublicKeyCredentialRequestOptions::PublicKeyCredentialRequestOptions(a1, v2);
  return a1;
}

uint64_t WebCore::PublicKeyCredentialRequestOptions::PublicKeyCredentialRequestOptions(uint64_t a1, uint64_t a2)
{
  WebCore::PublicKeyCredentialRequestOptions::PublicKeyCredentialRequestOptions(a1, a2);
  return a1;
}

{
  WebCore::BufferSource::BufferSource(a1);
  *(a1 + 16) = *(a2 + 16);
  WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr((a1 + 24), (a2 + 24));
  WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1 + 32, (a2 + 32));
  *(a1 + 48) = *(a2 + 48);
  std::optional<WebCore::AuthenticationExtensionsClientInputs>::optional[abi:sn200100]((a1 + 56), a2 + 56);
  *(a1 + 208) = *(a2 + 208);
  return a1;
}

uint64_t *WTF::RefPtr<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>::operator=(uint64_t *a1, uint64_t *a2)
{
  v4[2] = a1;
  v4[1] = a2;
  v4[4] = v4;
  v4[3] = a2;
  v4[7] = v4;
  v4[6] = a2;
  v4[0] = WTF::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::leakRef(a2);
  WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>::swap<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>(a1, v4);
  v4[5] = v4;
  v5[1] = v4;
  v5[0] = 0;
  v5[3] = v4;
  v5[2] = v5;
  v6 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(v4);
  if (v6)
  {
    WTF::ThreadSafeRefCounted<WTF::DefaultWeakPtrImpl,(WTF::DestructionThread)0>::deref(v6);
  }

  return a1;
}

uint64_t WTF::ThreadSafeRefCounted<WTF::DefaultWeakPtrImpl,(WTF::DestructionThread)0>::deref(WTF::ThreadSafeRefCountedBase *a1)
{
  result = WTF::ThreadSafeRefCountedBase::derefBase(a1);
  if (result)
  {
    if (a1)
    {
      return WTF::FastMalloc::fastFree(a1, v3);
    }
  }

  return result;
}

uint64_t WebKit::FrameInfoData::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  WebCore::ResourceRequest::operator=(a1 + 8, a2 + 8);
  WebCore::SecurityOriginData::operator=(a1 + 208);
  WTF::String::operator=((a1 + 240), (a2 + 240));
  memcpy((a1 + 248), (a2 + 248), 0x38uLL);
  WebCore::CertificateInfo::operator=((a1 + 304), (a2 + 304));
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = *(a2 + 344);
  return a1;
}

void std::__optional_destruct_base<WebKit::FrameInfoData,false>::reset[abi:sn200100](WebKit::FrameInfoData *a1)
{
  if (*(a1 + 352))
  {
    WebKit::FrameInfoData::~FrameInfoData(a1);
    *(a1 + 352) = 0;
  }
}

uint64_t std::__optional_storage_base<WebKit::FrameInfoData,false>::__construct[abi:sn200100]<WebKit::FrameInfoData>(uint64_t a1, uint64_t a2)
{
  result = std::__construct_at[abi:sn200100]<WebKit::FrameInfoData,WebKit::FrameInfoData,WebKit::FrameInfoData*>(a1, a2);
  *(a1 + 352) = 1;
  return result;
}

uint64_t WebCore::ResourceRequest::operator=(uint64_t a1, uint64_t a2)
{
  WebCore::ResourceRequestBase::operator=(a1, a2);
  WTF::RetainPtr<NSURLRequest>::operator=((a1 + 192), (a2 + 192));
  return a1;
}

uint64_t WebCore::ResourceRequestBase::operator=(uint64_t a1, uint64_t a2)
{
  WebCore::ResourceRequestBase::RequestData::operator=(a1, a2);
  WTF::String::operator=((a1 + 152), (a2 + 152));
  WTF::String::operator=((a1 + 160), (a2 + 160));
  WTF::RefPtr<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>::operator=((a1 + 168), (a2 + 168));
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  return a1;
}

{
  WTF::String::operator=(a1, a2);
  v4 = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v4;
  WTF::String::operator=((a1 + 40), (a2 + 40));
  v5 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v5;
  *(a1 + 80) = *(a2 + 80);
  WTF::String::operator=((a1 + 88), (a2 + 88));
  WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::operator=(a1 + 96, a2 + 96);
  WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::operator=(a1 + 112, a2 + 112);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=((a1 + 128), a2 + 128);
  v6 = *(a2 + 148);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 148) = v6;
  WTF::String::operator=((a1 + 152), (a2 + 152));
  WTF::String::operator=((a1 + 160), (a2 + 160));
  v7 = *(a2 + 168);
  if (v7)
  {
    ++*v7;
  }

  v8 = *(a1 + 168);
  *(a1 + 168) = v7;
  if (v8)
  {
    WTF::RefCounted<WebCore::FormData>::deref(v8);
  }

  v9 = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 176) = v9;
  return a1;
}

uint64_t *WTF::RetainPtr<NSURLRequest>::operator=(uint64_t *a1, uint64_t *a2)
{
  v4[2] = a1;
  v4[1] = a2;
  WTF::RetainPtr<NSURLRequest>::RetainPtr(v4, a2);
  WTF::RetainPtr<NSURLRequest>::swap(a1, v4);
  return WTF::RetainPtr<NSURLRequest>::~RetainPtr(v4);
}

uint64_t WebCore::ResourceRequestBase::RequestData::operator=(uint64_t a1, uint64_t a2)
{
  WTF::URL::operator=(a1, a2);
  WTF::URL::operator=(a1 + 40, a2 + 40);
  *(a1 + 80) = *(a2 + 80);
  WTF::String::operator=((a1 + 88), (a2 + 88));
  WebCore::HTTPHeaderMap::operator=(a1 + 96, (a2 + 96));
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(a1 + 128, (a2 + 128));
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 148) = *(a2 + 148);
  return a1;
}

WTF::RefCountedBase *WTF::RefPtr<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>::operator=(uint64_t *a1, uint64_t *a2)
{
  v4[2] = a1;
  v4[1] = a2;
  v4[4] = v4;
  v4[3] = a2;
  v4[7] = v4;
  v4[6] = a2;
  v4[0] = WTF::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::leakRef(a2);
  WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>::swap<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>(a1, v4);
  v4[5] = v4;
  v5[1] = v4;
  v5[0] = 0;
  v5[3] = v4;
  v5[2] = v5;
  result = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(v4);
  v6 = result;
  if (result)
  {
    return WTF::RefCounted<WebCore::FormData>::deref(v6);
  }

  return result;
}

void WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(uint64_t a1, _DWORD *a2)
{
  if (*(a1 + 12))
  {
    v3 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1);
    v4 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a1);
    WTF::VectorTypeOperations<WTF::String>::destruct(v3, v4);
  }

  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetBufferSizeToFullCapacity(a1);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetBufferSizeToFullCapacity(a2);
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
}

uint64_t WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::operator=(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 12))
  {
    v3 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1);
    v4 = WTF::Vector<WebCore::PublicKeyCredentialParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a1);
    WTF::VectorTypeOperations<WebCore::HTTPHeaderMap::CommonHeader>::destruct(v3, v4);
  }

  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetBufferSizeToFullCapacity(a1);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetBufferSizeToFullCapacity(a2);
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1, a2);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  return a1;
}

uint64_t WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::operator=(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 12))
  {
    v3 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1);
    v4 = WTF::Vector<WebCore::PublicKeyCredentialParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a1);
    WTF::VectorTypeOperations<WebCore::HTTPHeaderMap::UncommonHeader>::destruct(v3, v4);
  }

  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetBufferSizeToFullCapacity(a1);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetBufferSizeToFullCapacity(a2);
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1, a2);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  return a1;
}

void WTF::VectorDestructor<true,WebCore::HTTPHeaderMap::UncommonHeader>::destruct(WebCore::HTTPHeaderMap::UncommonHeader *a1, WebCore::HTTPHeaderMap::UncommonHeader *a2)
{
  while (a1 != a2)
  {
    WebCore::HTTPHeaderMap::UncommonHeader::~UncommonHeader(a1);
    a1 = (a1 + 16);
  }
}

uint64_t WTF::RefCounted<WebCore::FormData>::deref(WTF::RefCountedBase *a1)
{
  result = WTF::RefCountedBase::derefBase(a1);
  if (result)
  {
    if (a1)
    {
      MEMORY[0x19EB0F320](a1);
      return bmalloc::api::tzoneFree(a1, v3);
    }
  }

  return result;
}

uint64_t *WTF::RetainPtr<NSURLRequest>::RetainPtr(uint64_t *a1, uint64_t *a2)
{
  WTF::RetainPtr<NSURLRequest>::RetainPtr(a1, a2);
  return a1;
}

{
  *a1 = WTF::RetainPtr<NSURLRequest>::leakRef<NSURLRequest*>(a2);
  return a1;
}

uint64_t *WTF::RetainPtr<NSURLRequest>::~RetainPtr(uint64_t *a1)
{
  WTF::RetainPtr<NSURLRequest>::~RetainPtr(a1);
  return a1;
}

{
  v2 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(a1);
  if (v2)
  {
    WTF::RetainPtr<NSURLRequest>::releaseFoundationPtr(v2);
  }

  return a1;
}

void mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::generic_assign<mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>>(uint64_t a1, uint64_t a2)
{
  if (!mpark::detail::base<(mpark::detail::Trait)1,WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>::valueless_by_exception(a1) || !mpark::detail::base<(mpark::detail::Trait)1,WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>::valueless_by_exception(a2))
  {
    if (mpark::detail::base<(mpark::detail::Trait)1,WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>::valueless_by_exception(a2))
    {
      mpark::detail::destructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::destroy(a1);
    }

    else
    {
      v3 = mpark::detail::base<(mpark::detail::Trait)1,WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>::index(a2);
      std::__to_address[abi:sn200100]<char const>();
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN7WebCore18SecurityOriginData5TupleENS6_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS6_26OpaqueOriginIdentifierTypeENSA_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE14generic_assignINS0_15move_assignmentISH_LNS0_5TraitE1EEEEEvOT_EUlRSN_OT0_E_JRSI_SM_EEEDcmSO_DpOT0_(v3);
    }
  }
}

void mpark::detail::destructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::destroy(uint64_t a1)
{
  if (!mpark::detail::base<(mpark::detail::Trait)1,WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>::valueless_by_exception(a1))
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1> &>();
  }

  *(a1 + 24) = -1;
}

void _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN7WebCore18SecurityOriginData5TupleENS6_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS6_26OpaqueOriginIdentifierTypeENSA_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE14generic_assignINS0_15move_assignmentISH_LNS0_5TraitE1EEEEEvOT_EUlRSN_OT0_E_JRSI_SM_EEEDcmSO_DpOT0_(uint64_t a1)
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::to_address[abi:sn200100]<char const>();
  switch(a1)
  {
    case 0:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      mpark::detail::access::base::get_alt<0ul,mpark::detail::base<(mpark::detail::Trait)1,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &>();
      std::__to_address[abi:sn200100]<char const>();
      mpark::detail::access::base::get_alt<0ul,mpark::detail::base<(mpark::detail::Trait)1,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>>();
      _ZN5mpark6detail10visitation4base23visit_return_type_checkIvvE6invokeIZNS0_10assignmentINS0_6traitsIJN7WebCore18SecurityOriginData5TupleENS8_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS8_26OpaqueOriginIdentifierTypeENSC_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE14generic_assignINS0_15move_assignmentISJ_LNS0_5TraitE1EEEEEvOT_EUlRSP_OT0_E_JRNS0_3altILm0ESA_EESW_EEEDcSQ_DpOT0_();
      return;
    case 1:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      mpark::detail::access::base::get_alt<1ul,mpark::detail::base<(mpark::detail::Trait)1,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &>();
      std::__to_address[abi:sn200100]<char const>();
      mpark::detail::access::base::get_alt<1ul,mpark::detail::base<(mpark::detail::Trait)1,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>();
      _ZN5mpark6detail10visitation4base23visit_return_type_checkIvvE6invokeIZNS0_10assignmentINS0_6traitsIJN7WebCore18SecurityOriginData5TupleENS8_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS8_26OpaqueOriginIdentifierTypeENSC_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE14generic_assignINS0_15move_assignmentISJ_LNS0_5TraitE1EEEEEvOT_EUlRSP_OT0_E_JRNS0_3altILm1ESI_EESW_EEEDcSQ_DpOT0_();
      return;
    case 2:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_5;
    case 3:
LABEL_5:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_6;
    case 4:
LABEL_6:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_7;
    case 5:
LABEL_7:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_8;
    case 6:
LABEL_8:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_9;
    case 7:
LABEL_9:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_10;
    case 8:
LABEL_10:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_11;
    case 9:
LABEL_11:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_12;
    case 10:
LABEL_12:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_13;
    case 11:
LABEL_13:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_14;
    case 12:
LABEL_14:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_15;
    case 13:
LABEL_15:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_16;
    case 14:
LABEL_16:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_17;
    case 15:
LABEL_17:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_18;
    case 16:
LABEL_18:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_19;
    case 17:
LABEL_19:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_20;
    case 18:
LABEL_20:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_21;
    case 19:
LABEL_21:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_22;
    case 20:
LABEL_22:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_23;
    case 21:
LABEL_23:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_24;
    case 22:
LABEL_24:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_25;
    case 23:
LABEL_25:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_26;
    case 24:
LABEL_26:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_27;
    case 25:
LABEL_27:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_28;
    case 26:
LABEL_28:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_29;
    case 27:
LABEL_29:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_30;
    case 28:
LABEL_30:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_31;
    case 29:
LABEL_31:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_32;
    case 30:
LABEL_32:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_33;
    case 31:
LABEL_33:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      break;
    default:
      break;
  }

  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  __break(1u);
}

uint64_t mpark::detail::base<(mpark::detail::Trait)1,WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>::index(uint64_t a1)
{
  if (mpark::detail::base<(mpark::detail::Trait)1,WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>::valueless_by_exception(a1))
  {
    return -1;
  }

  else
  {
    return *(a1 + 24);
  }
}

void mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1> &>()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  switch(mpark::detail::base<(mpark::detail::Trait)1,WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>::index(v0))
  {
    case 0:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      mpark::detail::access::base::get_alt<0ul,mpark::detail::base<(mpark::detail::Trait)1,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &>();
      mpark::detail::visitation::base::visit_return_type_check<void,void>::invoke<mpark::detail::dtor,mpark::detail::alt<0ul,WebCore::SecurityOriginData::Tuple> &>();
      return;
    case 1:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      mpark::detail::access::base::get_alt<1ul,mpark::detail::base<(mpark::detail::Trait)1,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &>();
      mpark::detail::visitation::base::visit_return_type_check<void,void>::invoke<mpark::detail::dtor,mpark::detail::alt<1ul,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> &>();
      return;
    case 2:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_5;
    case 3:
LABEL_5:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_6;
    case 4:
LABEL_6:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_7;
    case 5:
LABEL_7:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_8;
    case 6:
LABEL_8:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_9;
    case 7:
LABEL_9:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_10;
    case 8:
LABEL_10:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_11;
    case 9:
LABEL_11:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_12;
    case 10:
LABEL_12:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_13;
    case 11:
LABEL_13:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_14;
    case 12:
LABEL_14:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_15;
    case 13:
LABEL_15:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_16;
    case 14:
LABEL_16:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_17;
    case 15:
LABEL_17:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_18;
    case 16:
LABEL_18:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_19;
    case 17:
LABEL_19:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_20;
    case 18:
LABEL_20:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_21;
    case 19:
LABEL_21:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_22;
    case 20:
LABEL_22:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_23;
    case 21:
LABEL_23:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_24;
    case 22:
LABEL_24:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_25;
    case 23:
LABEL_25:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_26;
    case 24:
LABEL_26:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_27;
    case 25:
LABEL_27:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_28;
    case 26:
LABEL_28:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_29;
    case 27:
LABEL_29:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_30;
    case 28:
LABEL_30:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_31;
    case 29:
LABEL_31:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_32;
    case 30:
LABEL_32:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_33;
    case 31:
LABEL_33:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      break;
    default:
      break;
  }

  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  __break(1u);
}

WebCore::HTTPHeaderMap::UncommonHeader *mpark::detail::visitation::base::visit_return_type_check<void,void>::invoke<mpark::detail::dtor,mpark::detail::alt<0ul,WebCore::SecurityOriginData::Tuple> &>()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return mpark::lib::cpp17::invoke<mpark::detail::dtor,mpark::detail::alt<0ul,WebCore::SecurityOriginData::Tuple> &>();
}

WebCore::HTTPHeaderMap::UncommonHeader *mpark::lib::cpp17::invoke<mpark::detail::dtor,mpark::detail::alt<0ul,WebCore::SecurityOriginData::Tuple> &>()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return mpark::lib::cpp17::detail::invoke<mpark::detail::dtor,mpark::detail::alt<0ul,WebCore::SecurityOriginData::Tuple> &>();
}

WebCore::HTTPHeaderMap::UncommonHeader *mpark::lib::cpp17::detail::invoke<mpark::detail::dtor,mpark::detail::alt<0ul,WebCore::SecurityOriginData::Tuple> &>()
{
  std::__to_address[abi:sn200100]<char const>();
  v1 = v0;
  std::__to_address[abi:sn200100]<char const>();
  return mpark::detail::dtor::operator()<mpark::detail::alt<0ul,WebCore::SecurityOriginData::Tuple>>(v1, v2);
}

WebCore::HTTPHeaderMap::UncommonHeader *mpark::detail::alt<0ul,WebCore::SecurityOriginData::Tuple>::~alt(WebCore::HTTPHeaderMap::UncommonHeader *a1)
{
  mpark::detail::alt<0ul,WebCore::SecurityOriginData::Tuple>::~alt(a1);
  return a1;
}

{
  WebCore::HTTPHeaderMap::UncommonHeader::~UncommonHeader(a1);
  return a1;
}

void mpark::detail::visitation::base::visit_return_type_check<void,void>::invoke<mpark::detail::dtor,mpark::detail::alt<1ul,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> &>()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  mpark::lib::cpp17::invoke<mpark::detail::dtor,mpark::detail::alt<1ul,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> &>();
}

void mpark::lib::cpp17::invoke<mpark::detail::dtor,mpark::detail::alt<1ul,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> &>()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  mpark::lib::cpp17::detail::invoke<mpark::detail::dtor,mpark::detail::alt<1ul,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> &>();
}

void mpark::lib::cpp17::detail::invoke<mpark::detail::dtor,mpark::detail::alt<1ul,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> &>()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
}

uint64_t *_ZN5mpark6detail10visitation4base23visit_return_type_checkIvvE6invokeIZNS0_10assignmentINS0_6traitsIJN7WebCore18SecurityOriginData5TupleENS8_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS8_26OpaqueOriginIdentifierTypeENSC_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE14generic_assignINS0_15move_assignmentISJ_LNS0_5TraitE1EEEEEvOT_EUlRSP_OT0_E_JRNS0_3altILm0ESA_EESW_EEEDcSQ_DpOT0_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return _ZN5mpark3lib5cpp176invokeIZNS_6detail10assignmentINS3_6traitsIJN7WebCore18SecurityOriginData5TupleENS6_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS6_26OpaqueOriginIdentifierTypeENSA_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE14generic_assignINS3_15move_assignmentISH_LNS3_5TraitE1EEEEEvOT_EUlRSN_OT0_E_JRNS3_3altILm0ES8_EESU_EEEDTclsr6detailE6invokeclsr3libE7forwardISN_Efp_Espclsr3libE7forwardIT0_Efp0_EEESO_DpOSW_();
}

uint64_t *_ZN5mpark3lib5cpp176invokeIZNS_6detail10assignmentINS3_6traitsIJN7WebCore18SecurityOriginData5TupleENS6_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS6_26OpaqueOriginIdentifierTypeENSA_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE14generic_assignINS3_15move_assignmentISH_LNS3_5TraitE1EEEEEvOT_EUlRSN_OT0_E_JRNS3_3altILm0ES8_EESU_EEEDTclsr6detailE6invokeclsr3libE7forwardISN_Efp_Espclsr3libE7forwardIT0_Efp0_EEESO_DpOSW_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return _ZN5mpark3lib5cpp176detail6invokeIZNS_6detail10assignmentINS4_6traitsIJN7WebCore18SecurityOriginData5TupleENS7_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS7_26OpaqueOriginIdentifierTypeENSB_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE14generic_assignINS4_15move_assignmentISI_LNS4_5TraitE1EEEEEvOT_EUlRSO_OT0_E_JRNS4_3altILm0ES9_EESV_EEEDTclclsr3libE7forwardISO_Efp_Espclsr3libE7forwardIT0_Efp0_EEESP_DpOSX_();
}

uint64_t *_ZN5mpark3lib5cpp176detail6invokeIZNS_6detail10assignmentINS4_6traitsIJN7WebCore18SecurityOriginData5TupleENS7_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS7_26OpaqueOriginIdentifierTypeENSB_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE14generic_assignINS4_15move_assignmentISI_LNS4_5TraitE1EEEEEvOT_EUlRSO_OT0_E_JRNS4_3altILm0ES9_EESV_EEEDTclclsr3libE7forwardISO_Efp_Espclsr3libE7forwardIT0_Efp0_EEESP_DpOSX_()
{
  std::__to_address[abi:sn200100]<char const>();
  v1 = v0;
  std::__to_address[abi:sn200100]<char const>();
  v3 = v2;
  std::__to_address[abi:sn200100]<char const>();
  return _ZZN5mpark6detail10assignmentINS0_6traitsIJN7WebCore18SecurityOriginData5TupleENS3_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS3_26OpaqueOriginIdentifierTypeENS7_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE14generic_assignINS0_15move_assignmentISE_LNS0_5TraitE1EEEEEvOT_ENKUlRSK_OT0_E_clINS0_3altILm0ES5_EESS_EEDaSM_SO_(v1, v3);
}

uint64_t *_ZZN5mpark6detail10assignmentINS0_6traitsIJN7WebCore18SecurityOriginData5TupleENS3_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS3_26OpaqueOriginIdentifierTypeENS7_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE14generic_assignINS0_15move_assignmentISE_LNS0_5TraitE1EEEEEvOT_ENKUlRSK_OT0_E_clINS0_3altILm0ES5_EESS_EEDaSM_SO_(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  std::__to_address[abi:sn200100]<char const>();
  return mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::assign_alt<0ul,WebCore::SecurityOriginData::Tuple,WebCore::SecurityOriginData::Tuple>(v2, a2, v4);
}

uint64_t *mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::assign_alt<0ul,WebCore::SecurityOriginData::Tuple,WebCore::SecurityOriginData::Tuple>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a1;
  v8 = a2;
  v7[2] = a3;
  if (mpark::detail::base<(mpark::detail::Trait)1,WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>::index(a1))
  {
    v7[0] = a1;
    std::__to_address[abi:sn200100]<char const>();
    v7[1] = v6;
    return mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::assign_alt<0ul,WebCore::SecurityOriginData::Tuple,WebCore::SecurityOriginData::Tuple>(mpark::detail::alt<0ul,WebCore::SecurityOriginData::Tuple> &,WebCore::SecurityOriginData::Tuple &&)::{unnamed type#1}::operator()(v7);
  }

  else
  {
    std::__to_address[abi:sn200100]<char const>();
    return WebCore::SecurityOriginData::Tuple::operator=(v8, v4);
  }
}

uint64_t *WebCore::SecurityOriginData::Tuple::operator=(uint64_t a1, uint64_t a2)
{
  WTF::String::operator=(a1, a2);
  result = WTF::String::operator=((a1 + 8), (a2 + 8));
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 18) = *(a2 + 18);
  return result;
}

uint64_t mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::assign_alt<0ul,WebCore::SecurityOriginData::Tuple,WebCore::SecurityOriginData::Tuple>(mpark::detail::alt<0ul,WebCore::SecurityOriginData::Tuple> &,WebCore::SecurityOriginData::Tuple &&)::{unnamed type#1}::operator()(uint64_t *a1)
{
  v1 = *a1;
  std::__to_address[abi:sn200100]<char const>();
  return mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::emplace<0ul,WebCore::SecurityOriginData::Tuple>(v1);
}

uint64_t mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::emplace<0ul,WebCore::SecurityOriginData::Tuple>(uint64_t a1)
{
  mpark::detail::destructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::destroy(a1);
  mpark::detail::access::base::get_alt<0ul,mpark::detail::base<(mpark::detail::Trait)1,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &>();
  std::__to_address[abi:sn200100]<char const>();
  result = mpark::detail::constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::construct_alt<0ul,WebCore::SecurityOriginData::Tuple,WebCore::SecurityOriginData::Tuple>();
  *(a1 + 24) = 0;
  return result;
}

uint64_t mpark::detail::constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::construct_alt<0ul,WebCore::SecurityOriginData::Tuple,WebCore::SecurityOriginData::Tuple>()
{
  std::__to_address[abi:sn200100]<char const>();
  v1 = v0;
  std::__to_address[abi:sn200100]<char const>();
  mpark::detail::alt<0ul,WebCore::SecurityOriginData::Tuple>::alt<WebCore::SecurityOriginData::Tuple>(v1);
  return v1;
}

uint64_t mpark::detail::alt<0ul,WebCore::SecurityOriginData::Tuple>::alt<WebCore::SecurityOriginData::Tuple>(uint64_t a1)
{
  mpark::detail::alt<0ul,WebCore::SecurityOriginData::Tuple>::alt<WebCore::SecurityOriginData::Tuple>(a1);
  return a1;
}

{
  std::__to_address[abi:sn200100]<char const>();
  WebCore::SecurityOriginData::Tuple::Tuple(a1, v2);
  return a1;
}

uint64_t WebCore::SecurityOriginData::Tuple::Tuple(uint64_t a1, uint64_t a2)
{
  WebCore::SecurityOriginData::Tuple::Tuple(a1, a2);
  return a1;
}

{
  WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr(a1, a2);
  WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr((a1 + 8), (a2 + 8));
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

void _ZN5mpark6detail10visitation4base23visit_return_type_checkIvvE6invokeIZNS0_10assignmentINS0_6traitsIJN7WebCore18SecurityOriginData5TupleENS8_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS8_26OpaqueOriginIdentifierTypeENSC_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE14generic_assignINS0_15move_assignmentISJ_LNS0_5TraitE1EEEEEvOT_EUlRSP_OT0_E_JRNS0_3altILm1ESI_EESW_EEEDcSQ_DpOT0_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  _ZN5mpark3lib5cpp176invokeIZNS_6detail10assignmentINS3_6traitsIJN7WebCore18SecurityOriginData5TupleENS6_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS6_26OpaqueOriginIdentifierTypeENSA_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE14generic_assignINS3_15move_assignmentISH_LNS3_5TraitE1EEEEEvOT_EUlRSN_OT0_E_JRNS3_3altILm1ESG_EESU_EEEDTclsr6detailE6invokeclsr3libE7forwardISN_Efp_Espclsr3libE7forwardIT0_Efp0_EEESO_DpOSW_();
}

void _ZN5mpark3lib5cpp176invokeIZNS_6detail10assignmentINS3_6traitsIJN7WebCore18SecurityOriginData5TupleENS6_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS6_26OpaqueOriginIdentifierTypeENSA_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE14generic_assignINS3_15move_assignmentISH_LNS3_5TraitE1EEEEEvOT_EUlRSN_OT0_E_JRNS3_3altILm1ESG_EESU_EEEDTclsr6detailE6invokeclsr3libE7forwardISN_Efp_Espclsr3libE7forwardIT0_Efp0_EEESO_DpOSW_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  _ZN5mpark3lib5cpp176detail6invokeIZNS_6detail10assignmentINS4_6traitsIJN7WebCore18SecurityOriginData5TupleENS7_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS7_26OpaqueOriginIdentifierTypeENSB_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE14generic_assignINS4_15move_assignmentISI_LNS4_5TraitE1EEEEEvOT_EUlRSO_OT0_E_JRNS4_3altILm1ESH_EESV_EEEDTclclsr3libE7forwardISO_Efp_Espclsr3libE7forwardIT0_Efp0_EEESP_DpOSX_();
}

void _ZN5mpark3lib5cpp176detail6invokeIZNS_6detail10assignmentINS4_6traitsIJN7WebCore18SecurityOriginData5TupleENS7_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS7_26OpaqueOriginIdentifierTypeENSB_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE14generic_assignINS4_15move_assignmentISI_LNS4_5TraitE1EEEEEvOT_EUlRSO_OT0_E_JRNS4_3altILm1ESH_EESV_EEEDTclclsr3libE7forwardISO_Efp_Espclsr3libE7forwardIT0_Efp0_EEESP_DpOSX_()
{
  std::__to_address[abi:sn200100]<char const>();
  v1 = v0;
  std::__to_address[abi:sn200100]<char const>();
  v3 = v2;
  std::__to_address[abi:sn200100]<char const>();
  _ZZN5mpark6detail10assignmentINS0_6traitsIJN7WebCore18SecurityOriginData5TupleENS3_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS3_26OpaqueOriginIdentifierTypeENS7_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE14generic_assignINS0_15move_assignmentISE_LNS0_5TraitE1EEEEEvOT_ENKUlRSK_OT0_E_clINS0_3altILm1ESD_EESS_EEDaSM_SO_(v1, v3);
}

void _ZZN5mpark6detail10assignmentINS0_6traitsIJN7WebCore18SecurityOriginData5TupleENS3_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS3_26OpaqueOriginIdentifierTypeENS7_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE14generic_assignINS0_15move_assignmentISE_LNS0_5TraitE1EEEEEvOT_ENKUlRSK_OT0_E_clINS0_3altILm1ESD_EESS_EEDaSM_SO_(uint64_t *a1, void *a2)
{
  v2 = *a1;
  std::__to_address[abi:sn200100]<char const>();
  mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::assign_alt<1ul,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(v2, a2, v4);
}

void mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::assign_alt<1ul,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a1;
  v8 = a2;
  v7[2] = a3;
  if (mpark::detail::base<(mpark::detail::Trait)1,WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>::index(a1) == 1)
  {
    std::__to_address[abi:sn200100]<char const>();
    v4 = v8;
    *v8 = *v5;
    v4[1] = v5[1];
  }

  else
  {
    v7[0] = a1;
    std::__to_address[abi:sn200100]<char const>();
    v7[1] = v6;
    mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::assign_alt<1ul,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(mpark::detail::alt<1ul,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> &,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> &&)::{unnamed type#1}::operator()(v7);
  }
}

void *mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::assign_alt<1ul,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(mpark::detail::alt<1ul,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> &,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> &&)::{unnamed type#1}::operator()(uint64_t *a1)
{
  v1 = *a1;
  std::__to_address[abi:sn200100]<char const>();
  return mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::emplace<1ul,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(v1);
}

void *mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::emplace<1ul,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(uint64_t a1)
{
  mpark::detail::destructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::destroy(a1);
  mpark::detail::access::base::get_alt<1ul,mpark::detail::base<(mpark::detail::Trait)1,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &>();
  std::__to_address[abi:sn200100]<char const>();
  result = mpark::detail::constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::construct_alt<1ul,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>();
  *(a1 + 24) = 1;
  return result;
}

void *mpark::detail::constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::construct_alt<1ul,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>()
{
  std::__to_address[abi:sn200100]<char const>();
  v1 = v0;
  std::__to_address[abi:sn200100]<char const>();
  mpark::detail::alt<1ul,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>::alt<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(v1);
  return v1;
}

void *mpark::detail::alt<1ul,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>::alt<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(void *a1)
{
  mpark::detail::alt<1ul,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>::alt<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a1);
  return a1;
}

{
  std::__to_address[abi:sn200100]<char const>();
  *a1 = *v2;
  a1[1] = v2[1];
  return a1;
}

uint64_t std::construct_at[abi:sn200100]<WebKit::FrameInfoData,WebKit::FrameInfoData,WebKit::FrameInfoData*>(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    __break(1u);
  }

  return WebKit::FrameInfoData::FrameInfoData(a1, a2);
}

uint64_t WebKit::FrameInfoData::FrameInfoData(uint64_t a1, uint64_t a2)
{
  WebKit::FrameInfoData::FrameInfoData(a1, a2);
  return a1;
}

{
  *a1 = *a2;
  WebCore::ResourceRequest::ResourceRequest(a1 + 8, a2 + 8);
  WebCore::SecurityOriginData::SecurityOriginData((a1 + 208));
  WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr((a1 + 240), (a2 + 240));
  memcpy((a1 + 248), (a2 + 248), 0x38uLL);
  WebCore::CertificateInfo::CertificateInfo((a1 + 304), (a2 + 304));
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = *(a2 + 344);
  return a1;
}

uint64_t WebCore::ResourceRequest::ResourceRequest(uint64_t a1, uint64_t a2)
{
  WebCore::ResourceRequest::ResourceRequest(a1, a2);
  return a1;
}

{
  WebCore::ResourceRequestBase::ResourceRequestBase(a1, a2);
  WTF::RetainPtr<NSURLRequest>::RetainPtr((a1 + 192), (a2 + 192));
  return a1;
}

_BYTE *WebCore::SecurityOriginData::SecurityOriginData(_BYTE *a1)
{
  WebCore::SecurityOriginData::SecurityOriginData(a1);
  return a1;
}

{
  mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>::variant(a1);
  return a1;
}

uint64_t *WebCore::CertificateInfo::CertificateInfo(uint64_t *a1, uint64_t *a2)
{
  WebCore::CertificateInfo::CertificateInfo(a1, a2);
  return a1;
}

{
  WTF::RetainPtr<NSURLRequest>::RetainPtr(a1, a2);
  return a1;
}

uint64_t WebCore::ResourceRequestBase::ResourceRequestBase(uint64_t a1, uint64_t a2)
{
  WebCore::ResourceRequestBase::RequestData::RequestData(a1, a2);
  WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr((a1 + 152), (a2 + 152));
  WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr((a1 + 160), (a2 + 160));
  *(a1 + 168) = WTF::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::leakRef((a2 + 168));
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  return a1;
}

uint64_t WebCore::ResourceRequestBase::RequestData::RequestData(uint64_t a1, uint64_t a2)
{
  WebCore::ResourceRequestBase::RequestData::RequestData(a1, a2);
  return a1;
}

{
  WTF::URL::URL(a1, a2);
  WTF::URL::URL(a1 + 40, (a2 + 40));
  *(a1 + 80) = *(a2 + 80);
  WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr((a1 + 88), (a2 + 88));
  WebCore::HTTPHeaderMap::HTTPHeaderMap(a1 + 96, (a2 + 96));
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1 + 128, (a2 + 128));
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 148) = *(a2 + 148);
  return a1;
}

uint64_t WebCore::HTTPHeaderMap::HTTPHeaderMap(uint64_t a1, uint64_t *a2)
{
  WebCore::HTTPHeaderMap::HTTPHeaderMap(a1, a2);
  return a1;
}

{
  WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1, a2);
  WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1 + 16, a2 + 2);
  return a1;
}

uint64_t WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t a1, _DWORD *a2)
{
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1, a2);
  return a1;
}

{
  WTF::VectorBuffer<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::FastMalloc>::VectorBuffer(a1);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetBufferSizeToFullCapacity(a1);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetBufferSizeToFullCapacity(a2);
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  return a1;
}

_BYTE *mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>::variant(_BYTE *a1)
{
  mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>::variant(a1);
  return a1;
}

{
  mpark::detail::impl<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>::impl(a1);
  return a1;
}

_BYTE *mpark::detail::impl<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>::impl(_BYTE *a1)
{
  mpark::detail::impl<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>::impl(a1);
  return a1;
}

{
  mpark::detail::copy_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::copy_assignment(a1);
  return a1;
}

_BYTE *mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_constructor(_BYTE *a1)
{
  _ZN5mpark6detail16move_constructorINS0_6traitsIJN7WebCore18SecurityOriginData5TupleENS3_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS3_26OpaqueOriginIdentifierTypeENS7_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEELNS0_5TraitE1EECI2NS0_4baseILSF_1EJS5_SD_EEEENS0_11valueless_tE(a1);
  std::__to_address[abi:sn200100]<char const>();
  mpark::detail::constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::generic_construct<mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>>(a1, v2);
  return a1;
}

void mpark::detail::constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::generic_construct<mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>>(uint64_t a1, uint64_t a2)
{
  mpark::detail::destructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::destroy(a1);
  if (!mpark::detail::base<(mpark::detail::Trait)1,WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>::valueless_by_exception(a2))
  {
    v2 = mpark::detail::base<(mpark::detail::Trait)1,WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>::index(a2);
    std::__to_address[abi:sn200100]<char const>();
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJN7WebCore18SecurityOriginData5TupleENS6_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS6_26OpaqueOriginIdentifierTypeENSA_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE17generic_constructINS0_16move_constructorISH_LNS0_5TraitE1EEEEEvRSI_OT_EUlRSO_OT0_E_JSN_SM_EEEDcmSP_DpOT0_(v2);
    *(a1 + 24) = *(a2 + 24);
  }
}

_BYTE *mpark::detail::base<(mpark::detail::Trait)1,WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>::base(_BYTE *a1)
{
  mpark::detail::recursive_union<(mpark::detail::Trait)1,0ul,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::recursive_union(a1);
  a1[24] = -1;
  return a1;
}

void _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJN7WebCore18SecurityOriginData5TupleENS6_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS6_26OpaqueOriginIdentifierTypeENSA_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE17generic_constructINS0_16move_constructorISH_LNS0_5TraitE1EEEEEvRSI_OT_EUlRSO_OT0_E_JSN_SM_EEEDcmSP_DpOT0_(uint64_t a1)
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::to_address[abi:sn200100]<char const>();
  switch(a1)
  {
    case 0:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      mpark::detail::access::base::get_alt<0ul,mpark::detail::base<(mpark::detail::Trait)1,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &>();
      std::__to_address[abi:sn200100]<char const>();
      mpark::detail::access::base::get_alt<0ul,mpark::detail::base<(mpark::detail::Trait)1,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>>();
      _ZN5mpark6detail10visitation4base23visit_return_type_checkIvvE6invokeIZNS0_11constructorINS0_6traitsIJN7WebCore18SecurityOriginData5TupleENS8_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS8_26OpaqueOriginIdentifierTypeENSC_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE17generic_constructINS0_16move_constructorISJ_LNS0_5TraitE1EEEEEvRSK_OT_EUlRSQ_OT0_E_JRNS0_3altILm0ESA_EESX_EEEDcSR_DpOT0_();
      return;
    case 1:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      mpark::detail::access::base::get_alt<1ul,mpark::detail::base<(mpark::detail::Trait)1,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &>();
      std::__to_address[abi:sn200100]<char const>();
      mpark::detail::access::base::get_alt<1ul,mpark::detail::base<(mpark::detail::Trait)1,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>();
      _ZN5mpark6detail10visitation4base23visit_return_type_checkIvvE6invokeIZNS0_11constructorINS0_6traitsIJN7WebCore18SecurityOriginData5TupleENS8_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS8_26OpaqueOriginIdentifierTypeENSC_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE17generic_constructINS0_16move_constructorISJ_LNS0_5TraitE1EEEEEvRSK_OT_EUlRSQ_OT0_E_JRNS0_3altILm1ESI_EESX_EEEDcSR_DpOT0_();
      return;
    case 2:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_5;
    case 3:
LABEL_5:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_6;
    case 4:
LABEL_6:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_7;
    case 5:
LABEL_7:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_8;
    case 6:
LABEL_8:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_9;
    case 7:
LABEL_9:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_10;
    case 8:
LABEL_10:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_11;
    case 9:
LABEL_11:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_12;
    case 10:
LABEL_12:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_13;
    case 11:
LABEL_13:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_14;
    case 12:
LABEL_14:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_15;
    case 13:
LABEL_15:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_16;
    case 14:
LABEL_16:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_17;
    case 15:
LABEL_17:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_18;
    case 16:
LABEL_18:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_19;
    case 17:
LABEL_19:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_20;
    case 18:
LABEL_20:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_21;
    case 19:
LABEL_21:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_22;
    case 20:
LABEL_22:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_23;
    case 21:
LABEL_23:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_24;
    case 22:
LABEL_24:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_25;
    case 23:
LABEL_25:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_26;
    case 24:
LABEL_26:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_27;
    case 25:
LABEL_27:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_28;
    case 26:
LABEL_28:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_29;
    case 27:
LABEL_29:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_30;
    case 28:
LABEL_30:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_31;
    case 29:
LABEL_31:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_32;
    case 30:
LABEL_32:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_33;
    case 31:
LABEL_33:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      break;
    default:
      break;
  }

  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  __break(1u);
}

uint64_t _ZN5mpark6detail10visitation4base23visit_return_type_checkIvvE6invokeIZNS0_11constructorINS0_6traitsIJN7WebCore18SecurityOriginData5TupleENS8_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS8_26OpaqueOriginIdentifierTypeENSC_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE17generic_constructINS0_16move_constructorISJ_LNS0_5TraitE1EEEEEvRSK_OT_EUlRSQ_OT0_E_JRNS0_3altILm0ESA_EESX_EEEDcSR_DpOT0_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return _ZN5mpark3lib5cpp176invokeIZNS_6detail11constructorINS3_6traitsIJN7WebCore18SecurityOriginData5TupleENS6_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS6_26OpaqueOriginIdentifierTypeENSA_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE17generic_constructINS3_16move_constructorISH_LNS3_5TraitE1EEEEEvRSI_OT_EUlRSO_OT0_E_JRNS3_3altILm0ES8_EESV_EEEDTclsr6detailE6invokeclsr3libE7forwardISO_Efp_Espclsr3libE7forwardIT0_Efp0_EEESP_DpOSX_();
}

uint64_t _ZN5mpark3lib5cpp176invokeIZNS_6detail11constructorINS3_6traitsIJN7WebCore18SecurityOriginData5TupleENS6_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS6_26OpaqueOriginIdentifierTypeENSA_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE17generic_constructINS3_16move_constructorISH_LNS3_5TraitE1EEEEEvRSI_OT_EUlRSO_OT0_E_JRNS3_3altILm0ES8_EESV_EEEDTclsr6detailE6invokeclsr3libE7forwardISO_Efp_Espclsr3libE7forwardIT0_Efp0_EEESP_DpOSX_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return _ZN5mpark3lib5cpp176detail6invokeIZNS_6detail11constructorINS4_6traitsIJN7WebCore18SecurityOriginData5TupleENS7_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS7_26OpaqueOriginIdentifierTypeENSB_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE17generic_constructINS4_16move_constructorISI_LNS4_5TraitE1EEEEEvRSJ_OT_EUlRSP_OT0_E_JRNS4_3altILm0ES9_EESW_EEEDTclclsr3libE7forwardISP_Efp_Espclsr3libE7forwardIT0_Efp0_EEESQ_DpOSY_();
}

uint64_t _ZN5mpark3lib5cpp176detail6invokeIZNS_6detail11constructorINS4_6traitsIJN7WebCore18SecurityOriginData5TupleENS7_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS7_26OpaqueOriginIdentifierTypeENSB_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE17generic_constructINS4_16move_constructorISI_LNS4_5TraitE1EEEEEvRSJ_OT_EUlRSP_OT0_E_JRNS4_3altILm0ES9_EESW_EEEDTclclsr3libE7forwardISP_Efp_Espclsr3libE7forwardIT0_Efp0_EEESQ_DpOSY_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return _ZZN5mpark6detail11constructorINS0_6traitsIJN7WebCore18SecurityOriginData5TupleENS3_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS3_26OpaqueOriginIdentifierTypeENS7_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE17generic_constructINS0_16move_constructorISE_LNS0_5TraitE1EEEEEvRSF_OT_ENKUlRSL_OT0_E_clINS0_3altILm0ES5_EEST_EEDaSN_SP_();
}