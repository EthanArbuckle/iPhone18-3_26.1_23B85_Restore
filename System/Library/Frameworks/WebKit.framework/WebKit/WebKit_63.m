uint64_t _ZN3WTF6Detail15CallableWrapperIZZN8WebPushD18UnsubscribeRequest13startInternalEvEN3__0clINSt3__18optionalIN7WebCore10PushRecordEEEEEDaOT_EUlbE_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EAAA8;
  v3 = *(this + 2);
  if (v3)
  {
    *(this + 2) = 0;
    *(this + 6) = 0;
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

_DWORD *_ZN3WTF6Detail15CallableWrapperIZZN8WebPushD18UnsubscribeRequest13startInternalEvEN3__0clINSt3__18optionalIN7WebCore10PushRecordEEEEEDaOT_EUlbE_vJbEE4callEb(_DWORD *result, char a2)
{
  v2 = *(result + 1);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v4 = (v3 + 104);
      ++*(v3 + 104);
      if (a2)
      {
        v5 = *(*(v3 + 64) + 8);
        if (v5)
        {
          v6 = result;
          ++v5[2];
          atomic_fetch_add(v2, 1u);
          v7 = WTF::fastMalloc(0x10);
          *v7 = &unk_1F10EAAD0;
          *(v7 + 1) = v2;
          v16 = v7;
          WebPushD::PushService::updateTopicLists(v5, &v16);
          if (v16)
          {
            (*(*v16 + 8))(v16);
          }

          WTF::RefCounted<WebPushD::PushService>::deref(v5 + 2, v8);
          WebCore::makePushTopic();
          v9 = *(*(v3 + 72) + 8);
          if (v9)
          {
            ++v9[4];
            v10 = *(v6 + 1);
            *(v6 + 1) = 0;
            v11 = WTF::fastMalloc(0x10);
            *v11 = &unk_1F10EAAF8;
            v11[1] = v10;
            v15 = v11;
            (*(*v9 + 32))(v9, &v16, v6 + 4, &v15);
            v13 = v15;
            v15 = 0;
            if (v13)
            {
              (*(*v13 + 8))(v13);
            }

            if (v9[4] == 1)
            {
              (*(*v9 + 8))(v9);
            }

            else
            {
              --v9[4];
            }

            v14 = v16;
            v16 = 0;
            if (v14)
            {
              if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v14, v12);
              }
            }

            return WTF::RefCounted<WebPushD::UnsubscribeRequest>::deref(v4, v12);
          }

          __break(0xC471u);
        }

        else
        {
          __break(0xC471u);
        }

        JUMPOUT(0x19D8CBBECLL);
      }

      WebPushD::PushServiceRequestImpl<BOOL>::fulfill(v3, 0);
      return WTF::RefCounted<WebPushD::UnsubscribeRequest>::deref(v4, v12);
    }
  }

  return result;
}

void sub_19D8CBC10(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (v11[4] == 1)
  {
    (*(*v11 + 8))(v11);
  }

  else
  {
    --v11[4];
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  WTF::RefCounted<WebPushD::UnsubscribeRequest>::deref(v10, a2);
  _Unwind_Resume(a1);
}

void *_ZN3WTF6Detail15CallableWrapperIZZZN8WebPushD18UnsubscribeRequest13startInternalEvEN3__0clINSt3__18optionalIN7WebCore10PushRecordEEEEEDaOT_ENUlbE_clEbEUlvE_vJEED1Ev(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10EAAD0;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZZN8WebPushD18UnsubscribeRequest13startInternalEvEN3__0clINSt3__18optionalIN7WebCore10PushRecordEEEEEDaOT_ENUlbE_clEbEUlvE_vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10EAAD0;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *_ZN3WTF6Detail15CallableWrapperIZZZN8WebPushD18UnsubscribeRequest13startInternalEvEN3__0clINSt3__18optionalIN7WebCore10PushRecordEEEEEDaOT_ENUlbE_clEbEUlvE_vJEE4callEv(_DWORD *result)
{
  v1 = *(result + 1);
  if (v1)
  {
    result = *(v1 + 8);
    if (result)
    {
      v2 = result + 26;
      ++result[26];
      WebPushD::PushServiceRequestImpl<BOOL>::fulfill(result, 1);

      return WTF::RefCounted<WebPushD::UnsubscribeRequest>::deref(v2, v3);
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZZN8WebPushD18UnsubscribeRequest13startInternalEvEN3__0clINSt3__18optionalIN7WebCore10PushRecordEEEEEDaOT_ENUlbE_clEbEUlbP7NSErrorE_vJbSG_EED1Ev(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10EAAF8;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZZN8WebPushD18UnsubscribeRequest13startInternalEvEN3__0clINSt3__18optionalIN7WebCore10PushRecordEEEEEDaOT_ENUlbE_clEbEUlbP7NSErrorE_vJbSG_EED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10EAAF8;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *_ZN3WTF6Detail15CallableWrapperIZZZN8WebPushD18UnsubscribeRequest13startInternalEvEN3__0clINSt3__18optionalIN7WebCore10PushRecordEEEEEDaOT_ENUlbE_clEbEUlbP7NSErrorE_vJbSG_EE4callEbSG_(_DWORD *result, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = *(result + 1);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v5 = (v4 + 104);
      ++*(v4 + 104);
      if ((a2 & 1) == 0)
      {
        v7 = qword_1ED6410A8;
        if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_ERROR))
        {
          WebCore::PushSubscriptionSetIdentifier::debugDescription(&v16, (v4 + 16));
          WTF::String::utf8();
          if (v17)
          {
            v8 = v17 + 16;
          }

          else
          {
            v8 = 0;
          }

          WTF::String::utf8();
          if (v15)
          {
            v9 = v15 + 16;
          }

          else
          {
            v9 = 0;
          }

          v10 = [objc_msgSend(a3 "domain")];
          v11 = [a3 code];
          v12 = "none";
          *buf = 136446979;
          if (v10)
          {
            v12 = v10;
          }

          v19 = v8;
          v20 = 2085;
          v21 = v9;
          v22 = 2082;
          v23 = v12;
          v24 = 2048;
          v25 = v11;
          _os_log_error_impl(&dword_19D52D000, v7, OS_LOG_TYPE_ERROR, "PushSubscription.unsubscribe(%{public}s scope: %{sensitive}s) failed with domain: %{public}s code: %lld)", buf, 0x2Au);
          if (v15)
          {
            if (*v15 == 1)
            {
              WTF::fastFree(v15, a2);
            }

            else
            {
              --*v15;
            }
          }

          v13 = v17;
          v17 = 0;
          if (v13)
          {
            if (*v13 == 1)
            {
              WTF::fastFree(v13, a2);
            }

            else
            {
              --*v13;
            }
          }

          v14 = v16;
          v16 = 0;
          if (v14)
          {
            if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v14, a2);
            }
          }
        }
      }

      return WTF::RefCounted<WebPushD::UnsubscribeRequest>::deref(v5, a2);
    }
  }

  return result;
}

void sub_19D8CC154(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, WTF::StringImpl *a11, WTF *a12)
{
  if (a12)
  {
    if (*a12 == 1)
    {
      WTF::fastFree(a12, a2);
    }

    else
    {
      --*a12;
    }
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  WTF::RefCounted<WebPushD::UnsubscribeRequest>::deref(v12, a2);
  _Unwind_Resume(a1);
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
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
            v22 = v17 + 40 * (v20 & v18);
            v20 = ++v21 + (v20 & v18);
          }

          while (*v22);
          WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>::~Deque(v22 + 8, v9);
          v24 = *v22;
          *v22 = 0;
          if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v24, v23);
          }

          v25 = *v14;
          *v14 = 0;
          *v22 = v25;
          *(v22 + 24) = 0u;
          *(v22 + 8) = 0u;
          *(v22 + 8) = *(v14 + 8);
          *(v14 + 8) = 0;
          v26 = *(v22 + 16);
          v27 = *(v14 + 24);
          *(v22 + 16) = *(v14 + 16);
          *(v22 + 24) = v27;
          *(v14 + 16) = v26;
          *(v14 + 24) = 0;
          *(v22 + 32) = *(v14 + 32);
          *(v14 + 32) = 0;
          WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>::~Deque(v14 + 8, v23);
          v28 = *v14;
          *v14 = 0;
          if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v28, v9);
          }

          if (v14 == a3)
          {
            v13 = v22;
          }
        }

        else
        {
          WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>::~Deque(v14 + 8, v9);
          v16 = *v14;
          *v14 = 0;
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

void *WTF::Detail::CallableWrapper<WebPushD::PushService::finishedPushServiceRequest(WTF::HashMap<WTF::String,WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &,WebPushD::PushServiceRequest&)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F10EAB20;
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
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebPushD::PushService::finishedPushServiceRequest(WTF::HashMap<WTF::String,WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &,WebPushD::PushServiceRequest&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10EAB20;
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
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebPushD::PushService::finishedPushServiceRequest(WTF::HashMap<WTF::String,WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &,WebPushD::PushServiceRequest&)::$_0,void>::call(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebPushD::PushService::incrementSilentPushCount(WebCore::PushSubscriptionSetIdentifier const&,WTF::String const&,WTF::CompletionHandler<void ()(unsigned int)> &&)::$_0,void,unsigned int>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F10EAB48;
  v3 = a1[9];
  a1[9] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[8];
  a1[8] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[5];
  a1[5] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = a1[4];
  a1[4] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = a1[2];
  a1[2] = 0;
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    WTF::fastFree(v7, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebPushD::PushService::incrementSilentPushCount(WebCore::PushSubscriptionSetIdentifier const&,WTF::String const&,WTF::CompletionHandler<void ()(unsigned int)> &&)::$_0,void,unsigned int>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F10EAB48;
  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 5);
  *(this + 5) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 4);
  *(this + 4) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(this + 2);
  *(this + 2) = 0;
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    WTF::fastFree(v7, a2);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::Detail::CallableWrapper<WebPushD::PushService::incrementSilentPushCount(WebCore::PushSubscriptionSetIdentifier const&,WTF::String const&,WTF::CompletionHandler<void ()(unsigned int)> &&)::$_0,void,unsigned int>::call(void *a1, unsigned int a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1[2];
  if (v3 && (v4 = *(v3 + 8)) != 0)
  {
    ++v4[2];
    if (a2 > 2)
    {
      v9 = qword_1ED6410A8;
      if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_DEFAULT))
      {
        WebCore::PushSubscriptionSetIdentifier::debugDescription(&v22, (a1 + 4));
        WTF::String::utf8();
        v10 = v23;
        WTF::String::utf8();
        v11 = v10 + 16;
        if (!v10)
        {
          v11 = 0;
        }

        *buf = 136446723;
        if (v21)
        {
          v12 = v21 + 16;
        }

        else
        {
          v12 = 0;
        }

        *&buf[4] = v11;
        v25 = 2085;
        v26 = v12;
        v27 = 1024;
        v28 = a2;
        _os_log_impl(&dword_19D52D000, v9, OS_LOG_TYPE_DEFAULT, "Removing all subscriptions associated with %{public}s %{sensitive}s since it processed %u silent pushes", buf, 0x1Cu);
        if (v21)
        {
          if (*v21 == 1)
          {
            WTF::fastFree(v21, v13);
          }

          else
          {
            --*v21;
          }
        }

        v14 = v23;
        v23 = 0;
        if (v14)
        {
          if (*v14 == 1)
          {
            WTF::fastFree(v14, v13);
          }

          else
          {
            --*v14;
          }
        }

        v15 = v22;
        v22 = 0;
        if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v13);
        }
      }

      v16 = a1[8];
      if (v16)
      {
        atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
      }

      *buf = v16;
      buf[8] = 1;
      v17 = a1[9];
      a1[9] = 0;
      v18 = WTF::fastMalloc(0x18);
      *v18 = &unk_1F10EAB70;
      *(v18 + 8) = v17;
      *(v18 + 16) = a2;
      v23 = v18;
      WebPushD::PushService::removeRecordsImpl(v4, (a1 + 4), buf, &v23);
      v19 = v23;
      v23 = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }

      if (buf[8] == 1)
      {
        v20 = *buf;
        *buf = 0;
        if (v20)
        {
          if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v20, v6);
          }
        }
      }
    }

    else
    {
      WTF::CompletionHandler<void ()>::operator()(a1 + 9);
    }

    return WTF::RefCounted<WebPushD::PushService>::deref(v4 + 2, v6);
  }

  else
  {
    v7 = a1 + 9;

    return WTF::CompletionHandler<void ()>::operator()(v7);
  }
}

void sub_19D8CCA6C(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF *a12, WTF::StringImpl *a13, char a14)
{
  if (a12)
  {
    if (*a12 == 1)
    {
      WTF::fastFree(a12, a2);
    }

    else
    {
      --*a12;
    }
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  WTF::RefCounted<WebPushD::PushService>::deref(v14, a2);
  _Unwind_Resume(a1);
}

void *_ZN3WTF6Detail15CallableWrapperIZZN8WebPushD11PushService24incrementSilentPushCountERKN7WebCore29PushSubscriptionSetIdentifierERKNS_6StringEONS_17CompletionHandlerIFvjEEEEN3__0clEjEUlOT_E_vJjEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10EAB70;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN8WebPushD11PushService24incrementSilentPushCountERKN7WebCore29PushSubscriptionSetIdentifierERKNS_6StringEONS_17CompletionHandlerIFvjEEEEN3__0clEjEUlOT_E_vJjEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10EAB70;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebPushD::PushService::setPushesEnabledForSubscriptionSetAndOrigin(WebCore::PushSubscriptionSetIdentifier const&,WTF::String const&,BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,BOOL>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F10EAB98;
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

uint64_t WTF::Detail::CallableWrapper<WebPushD::PushService::setPushesEnabledForSubscriptionSetAndOrigin(WebCore::PushSubscriptionSetIdentifier const&,WTF::String const&,BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,BOOL>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10EAB98;
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

_DWORD *WTF::Detail::CallableWrapper<WebPushD::PushService::setPushesEnabledForSubscriptionSetAndOrigin(WebCore::PushSubscriptionSetIdentifier const&,WTF::String const&,BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,BOOL>::call(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_6;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
LABEL_6:
    v5 = 1;
    goto LABEL_8;
  }

  ++v3[2];
  if ((a2 & 1) == 0)
  {
    v5 = 0;
LABEL_8:
    result = WTF::CompletionHandler<void ()(void)>::operator()((a1 + 16));
    if (v5)
    {
      return result;
    }

    goto LABEL_9;
  }

  WebPushD::PushService::updateTopicLists(v3, (a1 + 16));
LABEL_9:

  return WTF::RefCounted<WebPushD::PushService>::deref(v3 + 2, v4);
}

uint64_t WTF::Detail::CallableWrapper<WebPushD::PushService::removeRecordsImpl(WebCore::PushSubscriptionSetIdentifier const&,std::optional<WTF::String> const&,WTF::CompletionHandler<void ()(unsigned int)> &&)::$_0,void,WTF::Vector<WebCore::RemovedPushRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(uint64_t a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F10EABC0;
  v3 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a1 + 72) == 1)
  {
    v4 = *(a1 + 64);
    *(a1 + 64) = 0;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }
  }

  v5 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    WTF::fastFree(v7, a2);
  }

  return a1;
}

{
  v2 = WTF::Detail::CallableWrapper<WebPushD::PushService::removeRecordsImpl(WebCore::PushSubscriptionSetIdentifier const&,std::optional<WTF::String> const&,WTF::CompletionHandler<void ()> &&)::$_0,void,WTF::Vector<WebCore::RemovedPushRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(a1, a2);

  return WTF::fastFree(v2, v3);
}

_DWORD *WTF::Detail::CallableWrapper<WebPushD::PushService::removeRecordsImpl(WebCore::PushSubscriptionSetIdentifier const&,std::optional<WTF::String> const&,WTF::CompletionHandler<void ()(unsigned int)> &&)::$_0,void,WTF::Vector<WebCore::RemovedPushRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::call(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 16);
  if (v4 && (v5 = *(v4 + 8)) != 0)
  {
    ++*(v5 + 8);
    v6 = *(v5 + 16);
    ++v6[4];
    v7 = a2[3];
    if (v7)
    {
      v8 = 32 * v7;
      v9 = (*a2 + 8);
      do
      {
        v10 = *v9;
        if (*v9)
        {
          atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
        }

        v11 = WTF::fastMalloc(0x10);
        *v11 = &unk_1F10EABE8;
        v11[1] = v10;
        v19 = v11;
        (*(*v6 + 32))(v6, v9, v9 + 1, &v19);
        v12 = v19;
        v19 = 0;
        if (v12)
        {
          (*(*v12 + 8))(v12);
        }

        v9 += 4;
        v8 -= 32;
      }

      while (v8);
      v13 = a2[3];
    }

    else
    {
      v13 = 0;
    }

    v16 = *(a1 + 80);
    *(a1 + 80) = 0;
    v17 = WTF::fastMalloc(0x18);
    *v17 = &unk_1F10EAC10;
    v17[1] = v13;
    v17[2] = v16;
    v19 = v17;
    WebPushD::PushService::updateTopicLists(v5, &v19);
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    if (v6[4] == 1)
    {
      (*(*v6 + 8))(v6);
    }

    else
    {
      --v6[4];
    }

    return WTF::RefCounted<WebPushD::PushService>::deref((v5 + 8), v18);
  }

  else
  {
    v14 = (a1 + 80);

    return WTF::CompletionHandler<void ()>::operator()(v14);
  }
}

void sub_19D8CD180(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (v11[4] == 1)
  {
    (*(*v11 + 8))(v11);
  }

  else
  {
    --v11[4];
  }

  WTF::RefCounted<WebPushD::PushService>::deref(v10, a2);
  _Unwind_Resume(a1);
}

void *WTF::Detail::CallableWrapper<WebPushD::PushService::removeRecordsImpl(WebCore::PushSubscriptionSetIdentifier const&,std::optional<WTF::String> const&,WTF::CompletionHandler<void ()(unsigned int)> &&)::$_0::operator()(WTF::Vector<WebCore::RemovedPushRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(BOOL,NSError *)#1},void,BOOL,WTF::Vector<WebCore::RemovedPushRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10EABE8;
  a1[1] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebPushD::PushService::removeRecordsImpl(WebCore::PushSubscriptionSetIdentifier const&,std::optional<WTF::String> const&,WTF::CompletionHandler<void ()(unsigned int)> &&)::$_0::operator()(WTF::Vector<WebCore::RemovedPushRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(BOOL,NSError *)#1},void,BOOL,WTF::Vector<WebCore::RemovedPushRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10EABE8;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebPushD::PushService::removeRecordsImpl(WebCore::PushSubscriptionSetIdentifier const&,std::optional<WTF::String> const&,WTF::CompletionHandler<void ()(unsigned int)> &&)::$_0::operator()(WTF::Vector<WebCore::RemovedPushRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(BOOL,NSError *)#1},void,BOOL,WTF::Vector<WebCore::RemovedPushRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::call(uint64_t a1, char a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    v4 = qword_1ED6410A8;
    if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_ERROR))
    {
      WTF::String::utf8();
      if (v10)
      {
        v5 = v10 + 16;
      }

      else
      {
        v5 = 0;
      }

      v6 = [objc_msgSend(a3 "domain")];
      v7 = [a3 code];
      v8 = "none";
      *buf = 136643331;
      if (v6)
      {
        v8 = v6;
      }

      v12 = v5;
      v13 = 2082;
      v14 = v8;
      v15 = 2048;
      v16 = v7;
      _os_log_error_impl(&dword_19D52D000, v4, OS_LOG_TYPE_ERROR, "removeRecordsImpl couldn't remove subscription for topic %{sensitive}s: %{public}s code: %lld)", buf, 0x20u);
      if (v10)
      {
        if (*v10 == 1)
        {
          WTF::fastFree(v10, v9);
        }

        else
        {
          --*v10;
        }
      }
    }
  }
}

void *WTF::Detail::CallableWrapper<WebPushD::PushService::removeRecordsImpl(WebCore::PushSubscriptionSetIdentifier const&,std::optional<WTF::String> const&,WTF::CompletionHandler<void ()(unsigned int)> &&)::$_0::operator()(WTF::Vector<WebCore::RemovedPushRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F10EAC10;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebPushD::PushService::removeRecordsImpl(WebCore::PushSubscriptionSetIdentifier const&,std::optional<WTF::String> const&,WTF::CompletionHandler<void ()(unsigned int)> &&)::$_0::operator()(WTF::Vector<WebCore::RemovedPushRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10EAC10;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebPushD::PushService::removeRecordsForBundleIdentifierAndDataStore(WTF::String const&,std::optional<WTF::UUID> const&,WTF::CompletionHandler<void ()(unsigned int)> &&)::$_0,void,WTF::Vector<WebCore::RemovedPushRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F10EAC38;
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

uint64_t WTF::Detail::CallableWrapper<WebPushD::PushService::removeRecordsForBundleIdentifierAndDataStore(WTF::String const&,std::optional<WTF::UUID> const&,WTF::CompletionHandler<void ()(unsigned int)> &&)::$_0,void,WTF::Vector<WebCore::RemovedPushRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10EAC38;
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

_DWORD *WTF::Detail::CallableWrapper<WebPushD::PushService::removeRecordsForBundleIdentifierAndDataStore(WTF::String const&,std::optional<WTF::UUID> const&,WTF::CompletionHandler<void ()(unsigned int)> &&)::$_0,void,WTF::Vector<WebCore::RemovedPushRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::call(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 8);
  if (v4 && (v5 = *(v4 + 8)) != 0)
  {
    ++*(v5 + 8);
    v6 = *(v5 + 16);
    ++v6[4];
    v7 = a2[3];
    if (v7)
    {
      v8 = 32 * v7;
      v9 = (*a2 + 8);
      do
      {
        v10 = *v9;
        if (*v9)
        {
          atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
        }

        v11 = WTF::fastMalloc(0x10);
        *v11 = &unk_1F10EAC60;
        v11[1] = v10;
        v19 = v11;
        (*(*v6 + 32))(v6, v9, v9 + 1, &v19);
        v12 = v19;
        v19 = 0;
        if (v12)
        {
          (*(*v12 + 8))(v12);
        }

        v9 += 4;
        v8 -= 32;
      }

      while (v8);
      v13 = a2[3];
    }

    else
    {
      v13 = 0;
    }

    v16 = *(a1 + 16);
    *(a1 + 16) = 0;
    v17 = WTF::fastMalloc(0x18);
    *v17 = &unk_1F10EAC88;
    v17[1] = v13;
    v17[2] = v16;
    v19 = v17;
    WebPushD::PushService::updateTopicLists(v5, &v19);
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    if (v6[4] == 1)
    {
      (*(*v6 + 8))(v6);
    }

    else
    {
      --v6[4];
    }

    return WTF::RefCounted<WebPushD::PushService>::deref((v5 + 8), v18);
  }

  else
  {
    v14 = (a1 + 16);

    return WTF::CompletionHandler<void ()>::operator()(v14);
  }
}

void sub_19D8CD934(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (v11[4] == 1)
  {
    (*(*v11 + 8))(v11);
  }

  else
  {
    --v11[4];
  }

  WTF::RefCounted<WebPushD::PushService>::deref(v10, a2);
  _Unwind_Resume(a1);
}

void *_ZN3WTF6Detail15CallableWrapperIZZN8WebPushD11PushService44removeRecordsForBundleIdentifierAndDataStoreERKNS_6StringERKNSt3__18optionalINS_4UUIDEEEONS_17CompletionHandlerIFvjEEEEN3__0clINS_6VectorIN7WebCore17RemovedPushRecordELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEDaOT_EUlbP7NSErrorE_vJbST_EED1Ev(void *a1, WTF::StringImpl *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10EAC60;
  a1[1] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN8WebPushD11PushService44removeRecordsForBundleIdentifierAndDataStoreERKNS_6StringERKNSt3__18optionalINS_4UUIDEEEONS_17CompletionHandlerIFvjEEEEN3__0clINS_6VectorIN7WebCore17RemovedPushRecordELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEDaOT_EUlbP7NSErrorE_vJbST_EED0Ev(WTF *this, WTF::StringImpl *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10EAC60;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

void _ZN3WTF6Detail15CallableWrapperIZZN8WebPushD11PushService44removeRecordsForBundleIdentifierAndDataStoreERKNS_6StringERKNSt3__18optionalINS_4UUIDEEEONS_17CompletionHandlerIFvjEEEEN3__0clINS_6VectorIN7WebCore17RemovedPushRecordELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEDaOT_EUlbP7NSErrorE_vJbST_EE4callEbST_(uint64_t a1, char a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    v4 = qword_1ED6410A8;
    if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_ERROR))
    {
      WTF::String::utf8();
      if (v10)
      {
        v5 = v10 + 16;
      }

      else
      {
        v5 = 0;
      }

      v6 = [objc_msgSend(a3 "domain")];
      v7 = [a3 code];
      v8 = "none";
      *buf = 136643331;
      if (v6)
      {
        v8 = v6;
      }

      v12 = v5;
      v13 = 2082;
      v14 = v8;
      v15 = 2048;
      v16 = v7;
      _os_log_error_impl(&dword_19D52D000, v4, OS_LOG_TYPE_ERROR, "removeRecordsImpl couldn't remove subscription for topic %{sensitive}s: %{public}s code: %lld)", buf, 0x20u);
      if (v10)
      {
        if (*v10 == 1)
        {
          WTF::fastFree(v10, v9);
        }

        else
        {
          --*v10;
        }
      }
    }
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZZN8WebPushD11PushService44removeRecordsForBundleIdentifierAndDataStoreERKNS_6StringERKNSt3__18optionalINS_4UUIDEEEONS_17CompletionHandlerIFvjEEEEN3__0clINS_6VectorIN7WebCore17RemovedPushRecordELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEDaOT_EUlvE_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10EAC88;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN8WebPushD11PushService44removeRecordsForBundleIdentifierAndDataStoreERKNS_6StringERKNSt3__18optionalINS_4UUIDEEEONS_17CompletionHandlerIFvjEEEEN3__0clINS_6VectorIN7WebCore17RemovedPushRecordELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEDaOT_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EAC88;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebPushD::PushService::updateSubscriptionSetState(WTF::String const&,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WTF::Vector<WebCore::PushSubscriptionSetRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F10EACB0;
  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = a1[2];
  a1[2] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = a1[1];
  a1[1] = 0;
  if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    WTF::fastFree(v6, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebPushD::PushService::updateSubscriptionSetState(WTF::String const&,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WTF::Vector<WebCore::PushSubscriptionSetRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F10EACB0;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 1);
  *(this + 1) = 0;
  if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    WTF::fastFree(v6, a2);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::Detail::CallableWrapper<WebPushD::PushService::updateSubscriptionSetState(WTF::String const&,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WTF::Vector<WebCore::PushSubscriptionSetRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::call(uint64_t a1, uint64_t a2, const WTF::StringImpl *a3)
{
  v93 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v84 = (v4 + 8);
      ++*(v4 + 8);
      v91 = 0;
      v5 = *(a2 + 12);
      if (!v5)
      {
        v51 = 0;
        goto LABEL_105;
      }

      v83 = v4;
      v6 = *a2;
      v85 = *a2 + 48 * v5;
      while (1)
      {
        v7 = *v6;
        if (*v6)
        {
          atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
        }

        v8 = v6[1];
        if (v8)
        {
          atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
        }

        v87 = v7;
        v88 = v8;
        if (WTF::equal(v7, *(a1 + 16), a3))
        {
          if (*(a1 + 24))
          {
            WTF::checkHashTableKey<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::IdentityHashTranslator<WTF::HashTraits<WTF::String>,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(v8);
            v44 = *(a1 + 24);
            if (v44)
            {
              v45 = *(v44 - 8);
              v46 = v8[4];
              if (v46 < 0x100)
              {
                v47 = WTF::StringImpl::hashSlowCase(v8);
              }

              else
              {
                v47 = v46 >> 8;
              }

              for (i = 0; ; v47 = i + v49)
              {
                v49 = v47 & v45;
                v50 = *(v44 + 8 * (v47 & v45));
                if (v50 != -1)
                {
                  v9 = v8;
                  if (!v50)
                  {
                    goto LABEL_11;
                  }

                  if (WTF::equal(v50, v8, a3))
                  {
                    break;
                  }
                }

                ++i;
              }

              goto LABEL_68;
            }
          }
        }

LABEL_11:
        if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::PushSubscriptionSetIdentifier>,false>::isEmptyValue<WebCore::PushSubscriptionSetIdentifier>(v6, v9, a3) || !(v6[2] ^ 1 | v6[3]))
        {
          __break(0xC471u);
          JUMPOUT(0x19D8CE6A0);
        }

        v10 = v91;
        if (v91 || (WTF::HashTable<WebCore::PushSubscriptionSetIdentifier,WebCore::PushSubscriptionSetIdentifier,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::PushSubscriptionSetIdentifier>,WTF::HashTraits<WebCore::PushSubscriptionSetIdentifier>,WTF::HashTraits<WebCore::PushSubscriptionSetIdentifier>,WTF::FastMalloc>::expand(&v91), (v10 = v91) != 0))
        {
          v11 = *(v10 - 8);
        }

        else
        {
          v11 = 0;
        }

        v12 = WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::PushSubscriptionSetIdentifier>,WTF::DefaultHash<WebCore::PushSubscriptionSetIdentifier>>::hash<WebCore::PushSubscriptionSetIdentifier>(v6) & v11;
        v13 = v10 + 32 * v12;
        if (!WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::PushSubscriptionSetIdentifier>,false>::isEmptyValue<WebCore::PushSubscriptionSetIdentifier>(v13, v14, v15))
        {
          v18 = 0;
          v19 = 1;
          while (1)
          {
            v20 = *v13 ? *v13 : *MEMORY[0x1E696EBA8];
            v21 = (*v6 ? *v6 : *MEMORY[0x1E696EBA8]);
            if (WTF::equal(v20, v21, a3))
            {
              v22 = *(v13 + 8) ? *(v13 + 8) : *MEMORY[0x1E696EBA8];
              v23 = (v6[1] ? v6[1] : *MEMORY[0x1E696EBA8]);
              if (WTF::equal(v22, v23, a3))
              {
                v24 = *(v13 + 16) != 0;
                v25 = *(v6 + 1) != 0;
                v27 = *(v13 + 16) == v6[2] && *(v13 + 24) == v6[3];
                if (!v24 || !v25)
                {
                  v27 = v24 ^ v25 ^ 1;
                }

                if (v27)
                {
                  goto LABEL_68;
                }
              }
            }

            v29 = *(v13 + 16);
            v28 = *(v13 + 24);
            v12 = (v12 + v19) & v11;
            v17 = (v10 + 32 * v12);
            v30 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::PushSubscriptionSetIdentifier>,false>::isEmptyValue<WebCore::PushSubscriptionSetIdentifier>(v17, v16, a3);
            if (!(v29 ^ 1 | v28))
            {
              v18 = v13;
            }

            ++v19;
            v13 = v10 + 32 * v12;
            if (v30)
            {
              v31 = MEMORY[0x1E696EBA8];
              if (v18)
              {
                v32 = *MEMORY[0x1E696EBA8];
                if (*MEMORY[0x1E696EBA8])
                {
                  atomic_fetch_add_explicit(v32, 2u, memory_order_relaxed);
                  v33 = *v31;
                  *v18 = v32;
                  if (v33)
                  {
                    atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
                  }
                }

                else
                {
                  v33 = 0;
                  *v18 = 0;
                }

                v18[2] = 0;
                v18[3] = 0;
                v18[1] = v33;
                --*(v10 - 16);
                v17 = v18;
              }

              goto LABEL_52;
            }
          }
        }

        v17 = (v10 + 32 * v12);
LABEL_52:
        v34 = *v6;
        if (*v6)
        {
          atomic_fetch_add_explicit(v34, 2u, memory_order_relaxed);
        }

        v35 = v6[1];
        if (v35)
        {
          atomic_fetch_add_explicit(v35, 2u, memory_order_relaxed);
        }

        v37 = v6[2];
        v36 = v6[3];
        v38 = *v17;
        *v17 = v34;
        if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v38, v16);
        }

        v39 = v17[1];
        v17[1] = v35;
        if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v39, v16);
        }

        v17[2] = v37;
        v17[3] = v36;
        v40 = v91;
        v41 = v91 ? *(v91 - 3) + 1 : 1;
        *(v91 - 3) = v41;
        v42 = (*(v40 - 16) + v41);
        v43 = *(v40 - 4);
        if (v43 <= 0x400)
        {
          break;
        }

        if (v43 <= 2 * v42)
        {
          goto LABEL_67;
        }

LABEL_68:
        if (v88 && atomic_fetch_add_explicit(v88, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v88, v16);
        }

        if (v87 && atomic_fetch_add_explicit(v87, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v87, v16);
        }

        v6 += 6;
        if (v6 == v85)
        {
          v51 = v91;
          if (v91 && *(v91 - 3))
          {
            v52 = *(a1 + 8);
            if (v52)
            {
              atomic_fetch_add(v52, 1u);
            }

            v53 = *(a1 + 32);
            *(a1 + 32) = 0;
            v54 = WTF::fastMalloc(0x18);
            *v54 = &unk_1F10EACD8;
            v54[1] = v52;
            v54[2] = v53;
            v57 = WTF::fastMalloc(0x10);
            *v57 = 1;
            *(v57 + 8) = v54;
            v58 = *(v83 + 24);
            ++*(v58 + 8);
            v59 = v91;
            if (v91)
            {
              v60 = *(v91 - 1);
              v61 = &v91[4 * v60];
              if (*(v91 - 3))
              {
                if (v60)
                {
                  v62 = 32 * v60;
                  v63 = v91;
                  while (1)
                  {
                    v64 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::PushSubscriptionSetIdentifier>,false>::isEmptyValue<WebCore::PushSubscriptionSetIdentifier>(v63, v55, v56);
                    if (*(v63 + 2) ^ 1 | *(v63 + 3) && !v64)
                    {
                      break;
                    }

                    v63 = (v63 + 32);
                    v62 -= 32;
                    if (!v62)
                    {
                      v63 = v61;
                      break;
                    }
                  }

LABEL_112:
                  if (!v59)
                  {
                    v70 = 0;
LABEL_116:
                    if (v70 == v63)
                    {
                      goto LABEL_140;
                    }

                    do
                    {
                      v71 = qword_1ED6410A8;
                      if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_DEFAULT))
                      {
                        WebCore::PushSubscriptionSetIdentifier::debugDescription(&v89, v63);
                        WTF::String::utf8();
                        if (v90)
                        {
                          v72 = v90 + 16;
                        }

                        else
                        {
                          v72 = 0;
                        }

                        *buf = 136446210;
                        *&buf[4] = v72;
                        _os_log_impl(&dword_19D52D000, v71, OS_LOG_TYPE_DEFAULT, "No web clip matching push subscription set identifier %{public}s; removing", buf, 0xCu);
                        v74 = v90;
                        v90 = 0;
                        if (v74)
                        {
                          if (*v74 == 1)
                          {
                            WTF::fastFree(v74, v73);
                          }

                          else
                          {
                            --*v74;
                          }
                        }

                        v75 = v89;
                        v89 = 0;
                        if (v75 && atomic_fetch_add_explicit(v75, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v75, v73);
                        }
                      }

                      v76 = *(a1 + 8);
                      if (v76)
                      {
                        atomic_fetch_add(v76, 1u);
                      }

                      atomic_fetch_add(v57, 1u);
                      v77 = WTF::fastMalloc(0x18);
                      *v77 = &unk_1F10EAD00;
                      v77[1] = v76;
                      v77[2] = v57;
                      *buf = v77;
                      WebCore::PushDatabase::removeRecordsBySubscriptionSet();
                      v80 = *buf;
                      *buf = 0;
                      if (v80)
                      {
                        (*(*v80 + 8))(v80);
                      }

                      do
                      {
                        v63 = (v63 + 32);
                        if (v63 == v61)
                        {
                          break;
                        }

                        v81 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::PushSubscriptionSetIdentifier>,false>::isEmptyValue<WebCore::PushSubscriptionSetIdentifier>(v63, v78, v79);
                      }

                      while (!(*(v63 + 2) ^ 1 | *(v63 + 3)) || v81);
                    }

                    while (v63 != v70);
                    if (v58)
                    {
LABEL_140:
                      WTF::RefCounted<WebCore::PushDatabase>::deref((v58 + 8));
                    }

                    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v57);
                    v51 = v91;
                    if (!v91)
                    {
                      return WTF::RefCounted<WebPushD::PushService>::deref(v84, v69);
                    }

LABEL_108:
                    WTF::HashTable<WebCore::PushSubscriptionSetIdentifier,WebCore::PushSubscriptionSetIdentifier,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::PushSubscriptionSetIdentifier>,WTF::HashTraits<WebCore::PushSubscriptionSetIdentifier>,WTF::HashTraits<WebCore::PushSubscriptionSetIdentifier>,WTF::FastMalloc>::deallocateTable(v51, v69);
                    return WTF::RefCounted<WebPushD::PushService>::deref(v84, v69);
                  }
                }

                else
                {
                  v63 = v91;
                }

                v70 = (v59 + 32 * *(v59 - 4));
                goto LABEL_116;
              }
            }

            else
            {
              v61 = 0;
              v60 = 0;
            }

            v63 = v61;
            v61 = &v91[4 * v60];
            goto LABEL_112;
          }

LABEL_105:
          v68 = qword_1ED6410A8;
          if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19D52D000, v68, OS_LOG_TYPE_DEFAULT, "All push subscriptions are associated with existing web clips", buf, 2u);
          }

          WTF::CompletionHandler<void ()(void)>::operator()((a1 + 32));
          if (!v51)
          {
            return WTF::RefCounted<WebPushD::PushService>::deref(v84, v69);
          }

          goto LABEL_108;
        }
      }

      if (3 * v43 > 4 * v42)
      {
        goto LABEL_68;
      }

LABEL_67:
      WTF::HashTable<WebCore::PushSubscriptionSetIdentifier,WebCore::PushSubscriptionSetIdentifier,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::PushSubscriptionSetIdentifier>,WTF::HashTraits<WebCore::PushSubscriptionSetIdentifier>,WTF::HashTraits<WebCore::PushSubscriptionSetIdentifier>,WTF::FastMalloc>::expand(&v91);
      goto LABEL_68;
    }
  }

  v66 = (a1 + 32);

  return WTF::CompletionHandler<void ()(void)>::operator()(v66);
}

void sub_19D8CE6C4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, _DWORD *a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, WTF::StringImpl *a15, uint64_t a16, uint64_t a17, WTF::StringImpl *a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a15 && atomic_fetch_add_explicit(a15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a15, a2);
  }

  if (a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  if (a20)
  {
    WTF::HashTable<WebCore::PushSubscriptionSetIdentifier,WebCore::PushSubscriptionSetIdentifier,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::PushSubscriptionSetIdentifier>,WTF::HashTraits<WebCore::PushSubscriptionSetIdentifier>,WTF::HashTraits<WebCore::PushSubscriptionSetIdentifier>,WTF::FastMalloc>::deallocateTable(a20, a2);
  }

  WTF::RefCounted<WebPushD::PushService>::deref(a11, a2);
  _Unwind_Resume(a1);
}

uint64_t *WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const>(uint64_t *a1, void **a2)
{
  *a1 = 0;
  if (*a2)
  {
    v3 = *(*a2 - 3);
    if (v3)
    {
      v5 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::computeBestTableSize(v3);
      v6 = WTF::fastZeroedMalloc((8 * v5 + 16));
      *a1 = v6 + 16;
      *(v6 + 8) = v5 - 1;
      *(v6 + 12) = v5;
      *v6 = 0;
      v7 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(a2);
      v9 = v7;
      v11 = v10;
      v12 = *a2 ? &(*a2)[*(*a2 - 1)] : 0;
      if (v12 != v7)
      {
        do
        {
          WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(a1, v9, v8, v14);
          do
          {
            ++v9;
          }

          while (v9 != v11 && *v9 + 1 <= 1);
        }

        while (v9 != v12);
      }
    }
  }

  return a1;
}

void sub_19D8CE950(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*v2)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*v2, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>@<X0>(uint64_t *a1@<X0>, WTF::StringImpl **a2@<X1>, const WTF::StringImpl *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19D8CEB58);
  }

  if (!*a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19D8CEB78);
  }

  v7 = *a1;
  if (*a1 || (WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a1, 0), (v7 = *a1) != 0))
  {
    v8 = *(v7 - 8);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(*a2 + 4);
  if (v9 < 0x100)
  {
    v10 = WTF::StringImpl::hashSlowCase(*a2);
  }

  else
  {
    v10 = v9 >> 8;
  }

  v11 = 0;
  for (i = 1; ; ++i)
  {
    v13 = v10 & v8;
    v14 = (v7 + 8 * (v10 & v8));
    result = *v14;
    if (!*v14)
    {
      if (v11)
      {
        result = 0;
        *v11 = 0;
        --*(*a1 - 16);
        v14 = v11;
      }

      v16 = *a2;
      if (*a2)
      {
        atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
        result = *v14;
      }

      *v14 = v16;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, a2);
      }

      v17 = *a1;
      if (*a1)
      {
        v18 = *(v17 - 12) + 1;
      }

      else
      {
        v18 = 1;
      }

      *(v17 - 12) = v18;
      v19 = (*(v17 - 16) + v18);
      v20 = *(v17 - 4);
      if (v20 > 0x400)
      {
        if (v20 > 2 * v19)
        {
          goto LABEL_21;
        }
      }

      else if (3 * v20 > 4 * v19)
      {
LABEL_21:
        v21 = v17 + 8 * v20;
        v22 = 1;
        goto LABEL_22;
      }

      result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a1, v14);
      v14 = result;
      v17 = *a1;
      if (*a1)
      {
        v20 = *(v17 - 4);
      }

      else
      {
        v20 = 0;
      }

      goto LABEL_21;
    }

    if (result != -1)
    {
      break;
    }

    v11 = (v7 + 8 * v13);
LABEL_11:
    v10 = i + v13;
  }

  result = WTF::equal(result, *a2, a3);
  if (!result)
  {
    goto LABEL_11;
  }

  v23 = *a1;
  if (*a1)
  {
    v24 = *(v23 - 4);
  }

  else
  {
    v24 = 0;
  }

  v22 = 0;
  v21 = v23 + 8 * v24;
LABEL_22:
  *a4 = v14;
  *(a4 + 8) = v21;
  *(a4 + 16) = v22;
  return result;
}

uint64_t WTF::checkHashTableKey<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::IdentityHashTranslator<WTF::HashTraits<WTF::String>,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19D8CEBB0);
  }

  return result;
}

_DWORD *WTF::HashTable<WebCore::PushSubscriptionSetIdentifier,WebCore::PushSubscriptionSetIdentifier,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::PushSubscriptionSetIdentifier>,WTF::HashTraits<WebCore::PushSubscriptionSetIdentifier>,WTF::HashTraits<WebCore::PushSubscriptionSetIdentifier>,WTF::FastMalloc>::expand(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = *(v1 - 4);
    v3 = *(v1 - 12);
    if (v2)
    {
      v4 = v2 << (6 * v3 >= 2 * v2);
      goto LABEL_6;
    }
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  v4 = 8;
LABEL_6:
  v5 = v4;
  result = WTF::fastMalloc(((32 * v4) | 0x10));
  if (v4)
  {
    v9 = MEMORY[0x1E696EBA8];
    v10 = *MEMORY[0x1E696EBA8];
    v11 = (result + 4);
    do
    {
      if (v10)
      {
        atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
        v12 = *v9;
        *v11 = v10;
        if (v12)
        {
          atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
          v10 = *v9;
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v12 = 0;
        *v11 = 0;
      }

      v11[2] = 0;
      v11[3] = 0;
      v11[1] = v12;
      v11 += 4;
      --v5;
    }

    while (v5);
  }

  *a1 = (result + 4);
  result[2] = v4 - 1;
  result[3] = v4;
  *result = 0;
  result[1] = v3;
  if (v2)
  {
    v13 = 0;
    v14 = v2;
    v31 = v2;
    do
    {
      v15 = v1 + 32 * v13;
      if (*(v15 + 16) ^ 1 | *(v15 + 24))
      {
        if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::PushSubscriptionSetIdentifier>,false>::isEmptyValue<WebCore::PushSubscriptionSetIdentifier>(v1 + 32 * v13, v7, v8))
        {
          v16 = *(v15 + 8);
          *(v15 + 8) = 0;
          if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v16, v7);
          }

          v17 = *v15;
          *v15 = 0;
          if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v17, v7);
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

          v20 = WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::PushSubscriptionSetIdentifier>,WTF::DefaultHash<WebCore::PushSubscriptionSetIdentifier>>::hash<WebCore::PushSubscriptionSetIdentifier>((v1 + 32 * v13));
          v21 = 0;
          do
          {
            v22 = v20 & v19;
            v23 = v18 + 32 * v22;
            v24 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::PushSubscriptionSetIdentifier>,false>::isEmptyValue<WebCore::PushSubscriptionSetIdentifier>(v23, v7, v8);
            v20 = ++v21 + v22;
          }

          while (!v24);
          v25 = *(v23 + 8);
          *(v23 + 8) = 0;
          if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v25, v7);
          }

          v26 = *v23;
          *v23 = 0;
          if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v26, v7);
          }

          v27 = *v15;
          *v15 = 0;
          *v23 = v27;
          v28 = *(v15 + 8);
          *(v15 + 8) = 0;
          *(v23 + 8) = v28;
          *(v23 + 16) = *(v15 + 16);
          v29 = *(v15 + 8);
          *(v15 + 8) = 0;
          if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v29, v7);
          }

          v30 = *v15;
          *v15 = 0;
          if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v30, v7);
          }

          v14 = v31;
        }
      }

      ++v13;
    }

    while (v13 != v14);
  }

  else if (!v1)
  {
    return result;
  }

  return WTF::fastFree((v1 - 16), v7);
}

uint64_t WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::PushSubscriptionSetIdentifier>,WTF::DefaultHash<WebCore::PushSubscriptionSetIdentifier>>::hash<WebCore::PushSubscriptionSetIdentifier>(uint64_t *a1)
{
  v1 = -1640531527;
  v59 = -1640531527;
  v60 = 0;
  v61 = 0;
  v2 = a1[2];
  v3 = a1[3];
  v4 = *a1;
  v6 = a1[1];
  v5 = a1 + 1;
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = MEMORY[0x1E696EBA8];
  }

  if (!v4)
  {
    v4 = *MEMORY[0x1E696EBA8];
  }

  if (v2 | v3)
  {
    v8 = *v7;
    if (v4)
    {
      v9 = *(v4 + 4);
      v10 = v9 & 0xFFFFFFFE;
      if ((v9 & 0xFFFFFFFE) != 0)
      {
        v11 = 0;
        do
        {
          if (v11 >= v9)
          {
            v13 = 0;
          }

          else
          {
            v12 = *(v4 + 8);
            if ((*(v4 + 16) & 4) != 0)
            {
              v13 = *(v12 + v11);
            }

            else
            {
              v13 = *(v12 + 2 * v11);
            }
          }

          v14 = v11 + 1;
          if (v11 + 1 >= v9)
          {
            v16 = 0;
          }

          else
          {
            v15 = *(v4 + 8);
            if ((*(v4 + 16) & 4) != 0)
            {
              v16 = *(v15 + v11 + 1);
            }

            else
            {
              v16 = *(v15 + 2 * v11 + 2);
            }
          }

          v17 = (v13 << 11) ^ ((v1 + v16) << 16) ^ (v1 + v16);
          v1 = v17 + (v17 >> 11);
          v11 = v14 + 1;
        }

        while (v14 + 1 < v10);
      }

      if (v9)
      {
        if (v10 == v9)
        {
          v19 = 0;
        }

        else
        {
          v18 = *(v4 + 8);
          if ((*(v4 + 16) & 4) != 0)
          {
            v19 = *(v18 + v10);
          }

          else
          {
            v19 = *(v18 + 2 * v10);
          }
        }

        v1 = ((v1 + v19) ^ ((v1 + v19) << 16)) + (((v1 + v19) ^ ((v1 + v19) << 16)) >> 11);
      }
    }

    if (v8)
    {
      v20 = *(v8 + 4);
      v21 = v20 & 0xFFFFFFFE;
      if ((v20 & 0xFFFFFFFE) != 0)
      {
        v22 = 0;
        do
        {
          if (v22 >= v20)
          {
            v24 = 0;
          }

          else
          {
            v23 = *(v8 + 8);
            if ((*(v8 + 16) & 4) != 0)
            {
              v24 = *(v23 + v22);
            }

            else
            {
              v24 = *(v23 + 2 * v22);
            }
          }

          v25 = v22 + 1;
          if (v22 + 1 >= v20)
          {
            v27 = 0;
          }

          else
          {
            v26 = *(v8 + 8);
            if ((*(v8 + 16) & 4) != 0)
            {
              v27 = *(v26 + v22 + 1);
            }

            else
            {
              v27 = *(v26 + 2 * v22 + 2);
            }
          }

          v28 = (v24 << 11) ^ ((v1 + v27) << 16) ^ (v1 + v27);
          v1 = v28 + (v28 >> 11);
          v22 = v25 + 1;
        }

        while (v25 + 1 < v21);
      }

      if (v20)
      {
        if (v21 == v20)
        {
          v30 = 0;
        }

        else
        {
          v29 = *(v8 + 8);
          if ((*(v8 + 16) & 4) != 0)
          {
            v30 = *(v29 + v21);
          }

          else
          {
            v30 = *(v29 + 2 * v21);
          }
        }

        v1 = ((v1 + v30) ^ ((v1 + v30) << 16)) + (((v1 + v30) ^ ((v1 + v30) << 16)) >> 11);
      }
    }

    v31 = (v3 >> 5) & 0x7FFF800 ^ ((v1 + v3) << 16) ^ (v1 + v3);
    v32 = (v3 >> 37) & 0x7FFF800 ^ ((v31 + WORD2(v3) + (v31 >> 11)) << 16) ^ (v31 + WORD2(v3) + (v31 >> 11));
    v33 = (v2 >> 5) & 0x7FFF800 ^ ((v32 + v2 + (v32 >> 11)) << 16) ^ (v32 + v2 + (v32 >> 11));
    v34 = (v2 >> 37) & 0x7FFF800 ^ ((v33 + WORD2(v2) + (v33 >> 11)) << 16) ^ (v33 + WORD2(v2) + (v33 >> 11));
    goto LABEL_88;
  }

  if (v4)
  {
    v35 = *(v4 + 4);
    v36 = v35 & 0xFFFFFFFE;
    if ((v35 & 0xFFFFFFFE) != 0)
    {
      v37 = 0;
      do
      {
        if (v37 >= v35)
        {
          v39 = 0;
        }

        else
        {
          v38 = *(v4 + 8);
          if ((*(v4 + 16) & 4) != 0)
          {
            v39 = *(v38 + v37);
          }

          else
          {
            v39 = *(v38 + 2 * v37);
          }
        }

        v40 = v37 + 1;
        if (v37 + 1 >= v35)
        {
          v42 = 0;
        }

        else
        {
          v41 = *(v4 + 8);
          if ((*(v4 + 16) & 4) != 0)
          {
            v42 = *(v41 + v37 + 1);
          }

          else
          {
            v42 = *(v41 + 2 * v37 + 2);
          }
        }

        v43 = (v39 << 11) ^ ((v1 + v42) << 16) ^ (v1 + v42);
        v1 = v43 + (v43 >> 11);
        v59 = v1;
        v37 = v40 + 1;
      }

      while (v40 + 1 < v36);
    }

    if (v35)
    {
      if (v36 == v35)
      {
        v45 = 0;
      }

      else
      {
        v44 = *(v4 + 8);
        if ((*(v4 + 16) & 4) != 0)
        {
          v45 = *(v44 + v36);
        }

        else
        {
          v45 = *(v44 + 2 * v36);
        }
      }

      v1 = ((v1 + v45) ^ ((v1 + v45) << 16)) + (((v1 + v45) ^ ((v1 + v45) << 16)) >> 11);
      v59 = v1;
    }
  }

  v46 = *v7;
  if (*v7)
  {
    v47 = *(v46 + 4);
    v48 = v47 & 0xFFFFFFFE;
    if ((v47 & 0xFFFFFFFE) != 0)
    {
      v49 = 0;
      do
      {
        if (v49 >= v47)
        {
          v51 = 0;
        }

        else
        {
          v50 = *(v46 + 8);
          if ((*(v46 + 16) & 4) != 0)
          {
            v51 = *(v50 + v49);
          }

          else
          {
            v51 = *(v50 + 2 * v49);
          }
        }

        v52 = v49 + 1;
        if (v49 + 1 >= v47)
        {
          v54 = 0;
        }

        else
        {
          v53 = *(v46 + 8);
          if ((*(v46 + 16) & 4) != 0)
          {
            v54 = *(v53 + v49 + 1);
          }

          else
          {
            v54 = *(v53 + 2 * v49 + 2);
          }
        }

        v55 = (v51 << 11) ^ ((v1 + v54) << 16) ^ (v1 + v54);
        v1 = v55 + (v55 >> 11);
        v59 = v1;
        v49 = v52 + 1;
      }

      while (v52 + 1 < v48);
    }

    if (v47)
    {
      if (v48 == v47)
      {
        v57 = 0;
      }

      else
      {
        v56 = *(v46 + 8);
        if ((*(v46 + 16) & 4) != 0)
        {
          v57 = *(v56 + v48);
        }

        else
        {
          v57 = *(v56 + 2 * v48);
        }
      }

      v34 = (v1 + v57) ^ ((v1 + v57) << 16);
LABEL_88:
      v59 = v34 + (v34 >> 11);
    }
  }

  return WTF::SuperFastHash::hash(&v59);
}

BOOL WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::PushSubscriptionSetIdentifier>,false>::isEmptyValue<WebCore::PushSubscriptionSetIdentifier>(uint64_t a1, uint64_t a2, const WTF::StringImpl *a3)
{
  v4 = MEMORY[0x1E696EBA8];
  v5 = *MEMORY[0x1E696EBA8];
  if (*MEMORY[0x1E696EBA8])
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    v6 = *v4;
    if (*v4)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
      v7 = *v4;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  if (*a1)
  {
    v8 = *a1;
  }

  else
  {
    v8 = v7;
  }

  if (WTF::equal(v8, v5, a3) && (*(a1 + 8) ? (v11 = *(a1 + 8)) : (v11 = *v4), v6 ? (v12 = v6) : (v12 = *v4), WTF::equal(v11, v12, v10)))
  {
    v13 = *(a1 + 16) == 0;
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v13 = 0;
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) != 2)
  {
LABEL_20:
    if (!v5)
    {
      return v13;
    }

    goto LABEL_21;
  }

  WTF::StringImpl::destroy(v6, v9);
  if (!v5)
  {
    return v13;
  }

LABEL_21:
  if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v9);
  }

  return v13;
}

void sub_19D8CF39C(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  if (v2)
  {
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void *_ZN3WTF6Detail15CallableWrapperIZZN8WebPushD11PushService26updateSubscriptionSetStateERKNS_6StringERKNS_7HashSetIS4_NS_11DefaultHashIS4_EENS_10HashTraitsIS4_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1EEEONS_17CompletionHandlerIFvvEEEEN3__0clINS_6VectorIN7WebCore25PushSubscriptionSetRecordELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEDaOT_EUlvE_vJEED1Ev(void *a1, void *a2)
{
  *a1 = &unk_1F10EACD8;
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

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN8WebPushD11PushService26updateSubscriptionSetStateERKNS_6StringERKNS_7HashSetIS4_NS_11DefaultHashIS4_EENS_10HashTraitsIS4_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1EEEONS_17CompletionHandlerIFvvEEEEN3__0clINS_6VectorIN7WebCore25PushSubscriptionSetRecordELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEDaOT_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EACD8;
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

_DWORD *_ZN3WTF6Detail15CallableWrapperIZZN8WebPushD11PushService26updateSubscriptionSetStateERKNS_6StringERKNS_7HashSetIS4_NS_11DefaultHashIS4_EENS_10HashTraitsIS4_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1EEEONS_17CompletionHandlerIFvvEEEEN3__0clINS_6VectorIN7WebCore25PushSubscriptionSetRecordELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEDaOT_EUlvE_vJEE4callEv(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 && (v2 = *(v1 + 8)) != 0)
  {
    v3 = v2 + 2;
    ++v2[2];
    WebPushD::PushService::updateTopicLists(v2, (a1 + 16));

    return WTF::RefCounted<WebPushD::PushService>::deref(v3, v4);
  }

  else
  {
    v6 = (a1 + 16);

    return WTF::CompletionHandler<void ()(void)>::operator()(v6);
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZZN8WebPushD11PushService26updateSubscriptionSetStateERKNS_6StringERKNS_7HashSetIS4_NS_11DefaultHashIS4_EENS_10HashTraitsIS4_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1EEEONS_17CompletionHandlerIFvvEEEEN3__0clINS_6VectorIN7WebCore25PushSubscriptionSetRecordELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEDaOT_EUlSV_E_vJONSN_INSO_17RemovedPushRecordELm0ESQ_Lm16ESR_EEEED1Ev(void *a1, void *a2)
{
  *a1 = &unk_1F10EAD00;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v3);
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

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN8WebPushD11PushService26updateSubscriptionSetStateERKNS_6StringERKNS_7HashSetIS4_NS_11DefaultHashIS4_EENS_10HashTraitsIS4_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1EEEONS_17CompletionHandlerIFvvEEEEN3__0clINS_6VectorIN7WebCore25PushSubscriptionSetRecordELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEDaOT_EUlSV_E_vJONSN_INSO_17RemovedPushRecordELm0ESQ_Lm16ESR_EEEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EAD00;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v3);
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

_DWORD *_ZN3WTF6Detail15CallableWrapperIZZN8WebPushD11PushService26updateSubscriptionSetStateERKNS_6StringERKNS_7HashSetIS4_NS_11DefaultHashIS4_EENS_10HashTraitsIS4_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1EEEONS_17CompletionHandlerIFvvEEEEN3__0clINS_6VectorIN7WebCore25PushSubscriptionSetRecordELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEDaOT_EUlSV_E_vJONSN_INSO_17RemovedPushRecordELm0ESQ_Lm16ESR_EEEE4callESZ_(_DWORD *result, unsigned int *a2)
{
  v2 = *(result + 1);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v5 = *(v3 + 8);
      v4 = v3 + 8;
      *v4 = v5 + 1;
      v6 = *(v4 + 8);
      v7 = v6[4];
      v6[4] = v7 + 1;
      v8 = a2[3];
      if (v8)
      {
        v9 = 32 * v8;
        v10 = (*a2 + 8);
        do
        {
          v11 = *v10;
          if (*v10)
          {
            atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
          }

          v12 = WTF::fastMalloc(0x10);
          *v12 = &unk_1F10EAD28;
          v12[1] = v11;
          v14 = v12;
          (*(*v6 + 32))(v6, v10, v10 + 1, &v14);
          v13 = v14;
          v14 = 0;
          if (v13)
          {
            (*(*v13 + 8))(v13);
          }

          v10 += 4;
          v9 -= 32;
        }

        while (v9);
        v7 = v6[4] - 1;
      }

      if (v7)
      {
        v6[4] = v7;
      }

      else
      {
        (*(*v6 + 8))(v6);
      }

      return WTF::RefCounted<WebPushD::PushService>::deref(v4, a2);
    }
  }

  return result;
}

void sub_19D8CF824(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (v11[4] == 1)
  {
    (*(*v11 + 8))(v11);
  }

  else
  {
    --v11[4];
  }

  WTF::RefCounted<WebPushD::PushService>::deref(v10, a2);
  _Unwind_Resume(a1);
}

void *_ZN3WTF6Detail15CallableWrapperIZZZN8WebPushD11PushService26updateSubscriptionSetStateERKNS_6StringERKNS_7HashSetIS4_NS_11DefaultHashIS4_EENS_10HashTraitsIS4_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1EEEONS_17CompletionHandlerIFvvEEEEN3__0clINS_6VectorIN7WebCore25PushSubscriptionSetRecordELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEDaOT_ENKUlSV_E_clINSN_INSO_17RemovedPushRecordELm0ESQ_Lm16ESR_EEEEST_SV_EUlbP7NSErrorE_vJbS11_EED1Ev(void *a1, WTF::StringImpl *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10EAD28;
  a1[1] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZZN8WebPushD11PushService26updateSubscriptionSetStateERKNS_6StringERKNS_7HashSetIS4_NS_11DefaultHashIS4_EENS_10HashTraitsIS4_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1EEEONS_17CompletionHandlerIFvvEEEEN3__0clINS_6VectorIN7WebCore25PushSubscriptionSetRecordELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEDaOT_ENKUlSV_E_clINSN_INSO_17RemovedPushRecordELm0ESQ_Lm16ESR_EEEEST_SV_EUlbP7NSErrorE_vJbS11_EED0Ev(WTF *this, WTF::StringImpl *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10EAD28;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

void _ZN3WTF6Detail15CallableWrapperIZZZN8WebPushD11PushService26updateSubscriptionSetStateERKNS_6StringERKNS_7HashSetIS4_NS_11DefaultHashIS4_EENS_10HashTraitsIS4_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1EEEONS_17CompletionHandlerIFvvEEEEN3__0clINS_6VectorIN7WebCore25PushSubscriptionSetRecordELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEDaOT_ENKUlSV_E_clINSN_INSO_17RemovedPushRecordELm0ESQ_Lm16ESR_EEEEST_SV_EUlbP7NSErrorE_vJbS11_EE4callEbS11_(uint64_t a1, char a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    v4 = qword_1ED6410A8;
    if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_ERROR))
    {
      WTF::String::utf8();
      if (v10)
      {
        v5 = v10 + 16;
      }

      else
      {
        v5 = 0;
      }

      v6 = [objc_msgSend(a3 "domain")];
      v7 = [a3 code];
      v8 = "none";
      *buf = 136643331;
      if (v6)
      {
        v8 = v6;
      }

      v12 = v5;
      v13 = 2082;
      v14 = v8;
      v15 = 2048;
      v16 = v7;
      _os_log_error_impl(&dword_19D52D000, v4, OS_LOG_TYPE_ERROR, "couldn't remove subscription for topic %{sensitive}s: %{public}s code: %lld)", buf, 0x20u);
      if (v10)
      {
        if (*v10 == 1)
        {
          WTF::fastFree(v10, v9);
        }

        else
        {
          --*v10;
        }
      }
    }
  }
}

unsigned int *WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(unsigned int *result)
{
  if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    v1 = result;
    atomic_store(1u, result);
    v2 = WTF::fastMalloc(0x10);
    *v2 = &unk_1F10EAD50;
    *(v2 + 1) = v1;
    v3 = v2;
    WTF::ensureOnMainRunLoop();
    result = v3;
    if (v3)
    {
      return (*(*v3 + 8))(v3);
    }
  }

  return result;
}

void sub_19D8CFBA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Detail::CallableWrapper<WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v2 = WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)2>::~CallbackAggregatorOnThread(result);

    return WTF::fastFree(v2, v3);
  }

  return result;
}

uint64_t WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)2>::~CallbackAggregatorOnThread(uint64_t a1)
{
  v2 = (a1 + 8);
  if (*(a1 + 8))
  {
    WTF::CompletionHandler<void ()(void)>::operator()((a1 + 8));
    v3 = *v2;
    *v2 = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  return a1;
}

void sub_19D8CFC88(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::HashTable<WebCore::PushSubscriptionSetIdentifier,WebCore::PushSubscriptionSetIdentifier,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::PushSubscriptionSetIdentifier>,WTF::HashTraits<WebCore::PushSubscriptionSetIdentifier>,WTF::HashTraits<WebCore::PushSubscriptionSetIdentifier>,WTF::FastMalloc>::deallocateTable(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = a1 + 8;
    do
    {
      if (*(v4 + 8) ^ 1 | *(v4 + 16))
      {
        v5 = *v4;
        *v4 = 0;
        if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, a2);
        }

        v6 = *(v4 - 8);
        *(v4 - 8) = 0;
        if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, a2);
        }
      }

      v4 += 32;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

void *WTF::Detail::CallableWrapper<WebPushD::PushService::updateTopicLists(WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebCore::PushTopics &&>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F10EAD78;
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

uint64_t WTF::Detail::CallableWrapper<WebPushD::PushService::updateTopicLists(WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebCore::PushTopics &&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10EAD78;
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

_DWORD *WTF::Detail::CallableWrapper<WebPushD::PushService::updateTopicLists(WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebCore::PushTopics &&>::call(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if (v3 && (v4 = *(v3 + 8)) != 0)
  {
    ++*(v4 + 8);
    v19 = 0u;
    v20 = 0u;
    v5 = a2[1];
    v15 = *a2;
    v16 = v5;
    v6 = a2[2];
    v7 = a2[3];
    *a2 = 0u;
    *(a2 + 1) = 0u;
    v17 = v6;
    v18 = v7;
    (*(**(v4 + 16) + 104))(*(v4 + 16), &v15);
    *(v4 + 64) = HIDWORD(v18) + HIDWORD(v16);
    WTF::CompletionHandler<void ()(void)>::operator()((a1 + 16));
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v20, v8);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v19, v9);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v17, v10);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v15, v11);
    return WTF::RefCounted<WebPushD::PushService>::deref((v4 + 8), v12);
  }

  else
  {
    v14 = (a1 + 16);

    return WTF::CompletionHandler<void ()(void)>::operator()(v14);
  }
}

void sub_19D8CFFD4(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v10 + 48, a2);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v10 + 32, v12);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v10 + 16, v13);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a9, v14);
  WTF::RefCounted<WebPushD::PushService>::deref(v9, v15);
  _Unwind_Resume(a1);
}

void *WTF::Detail::CallableWrapper<WebPushD::PushService::didReceivePublicToken(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,void,WebCore::PushDatabase::PublicTokenChanged>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10EADA0;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebPushD::PushService::didReceivePublicToken(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,void,WebCore::PushDatabase::PublicTokenChanged>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10EADA0;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::Detail::CallableWrapper<WebPushD::PushService::didReceivePublicToken(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,void,WebCore::PushDatabase::PublicTokenChanged>::call(_DWORD *result, char a2)
{
  v2 = *(result + 1);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      ++v3[2];
      v4 = qword_1ED6410A8;
      if (a2)
      {
        if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_ERROR))
        {
          *v8 = 0;
          _os_log_error_impl(&dword_19D52D000, v4, OS_LOG_TYPE_ERROR, "Public token changed; invalidated all existing push subscriptions", v8, 2u);
        }

        v5 = WTF::fastMalloc(0x10);
        *v5 = &unk_1F10EADC8;
        v7 = v5;
        WebPushD::PushService::updateTopicLists(v3, &v7);
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }
      }

      else if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "Received expected public token", buf, 2u);
      }

      return WTF::RefCounted<WebPushD::PushService>::deref(v3 + 2, v6);
    }
  }

  return result;
}

void sub_19D8D0214(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  WTF::RefCounted<WebPushD::PushService>::deref(v10, a2);
  _Unwind_Resume(a1);
}

void *WTF::Detail::CallableWrapper<WebPushD::PushService::didReceivePushMessage(NSString *,NSDictionary *,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,std::optional<WebCore::PushRecord> &&>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F10EADF0;
  WebPushD::PushService::didReceivePushMessage(NSString *,NSDictionary *,WTF::CompletionHandler<void ()(void)> &&)::$_0::~$_0((a1 + 1), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebPushD::PushService::didReceivePushMessage(NSString *,NSDictionary *,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,std::optional<WebCore::PushRecord> &&>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F10EADF0;
  WebPushD::PushService::didReceivePushMessage(NSString *,NSDictionary *,WTF::CompletionHandler<void ()(void)> &&)::$_0::~$_0(a1 + 8, a2);

  return WTF::fastFree(a1, v3);
}

_DWORD *WTF::Detail::CallableWrapper<WebPushD::PushService::didReceivePushMessage(NSString *,NSDictionary *,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,std::optional<WebCore::PushRecord> &&>::call(uint64_t a1, uint64_t a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      ++*(v4 + 8);
      if ((*(a2 + 160) & 1) == 0)
      {
        v12 = qword_1ED6410A8;
        if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_ERROR))
        {
          WTF::String::utf8();
          v32 = v45[0] ? v45[0] + 16 : 0;
          *buf = 136642819;
          *&buf[4] = v32;
          _os_log_error_impl(&dword_19D52D000, v12, OS_LOG_TYPE_ERROR, "Dropping incoming push sent to unknown topic: %{sensitive}s", buf, 0xCu);
          v34 = v45[0];
          v45[0] = 0;
          if (v34)
          {
            if (*v34 == 1)
            {
              WTF::fastFree(v34, v33);
            }

            else
            {
              --*v34;
            }
          }
        }

        WTF::CompletionHandler<void ()(void)>::operator()((a1 + 80));
        return WTF::RefCounted<WebPushD::PushService>::deref((v4 + 8), v13);
      }

      WebCore::PushRecord::PushRecord(v45, a2);
      v6 = *(a1 + 24);
      if (!v6)
      {
        buf[0] = 0;
        buf[16] = 0;
        v14 = v47;
        if (v47)
        {
          atomic_fetch_add_explicit(v47, 2u, memory_order_relaxed);
        }

        v53 = v14;
        WTF::URL::URL(v54, v48);
        v55 = 0;
        v56 = 0;
        (*(**(v4 + 32) + 16))(*(v4 + 32), &v46, buf);
        WebKit::WebPushMessage::~WebPushMessage(buf, v15);
        WTF::CompletionHandler<void ()(void)>::operator()((a1 + 80));
        goto LABEL_46;
      }

      *&v5 = 0;
      v42 = v49;
      v7 = v50;
      v49 = v5;
      v50 = v5;
      v43 = v7;
      v8 = v51;
      v51 = v5;
      v44 = v8;
      LOBYTE(v39) = 0;
      v41 = 0;
      if (v6 == 1)
      {
        WebCore::PushCrypto::decryptAESGCMPayload();
        std::__optional_storage_base<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>>(&v39, buf);
      }

      else
      {
        if (v6 != 2)
        {
          goto LABEL_18;
        }

        WebCore::PushCrypto::decryptAES128GCMPayload();
        std::__optional_storage_base<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>>(&v39, buf);
      }

      if (buf[16] == 1)
      {
        v31 = *buf;
        if (*buf)
        {
          *buf = 0;
          *&buf[8] = 0;
          WTF::fastFree(v31, v9);
        }
      }

LABEL_18:
      v17 = qword_1ED6410A8;
      if (v41)
      {
        if (!os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_35;
        }

        WebCore::PushSubscriptionSetIdentifier::debugDescription(&v37, &v46);
        WTF::String::utf8();
        v18 = v38;
        WTF::String::utf8();
        v19 = v18 + 16;
        if (!v18)
        {
          v19 = 0;
        }

        if (v36)
        {
          v20 = v36 + 16;
        }

        else
        {
          v20 = 0;
        }

        *buf = 136446467;
        *&buf[4] = v19;
        *&buf[12] = 2085;
        *&buf[14] = v20;
        _os_log_impl(&dword_19D52D000, v17, OS_LOG_TYPE_DEFAULT, "Decoded incoming push message for %{public}s %{sensitive}s", buf, 0x16u);
        if (v36)
        {
          if (*v36 == 1)
          {
            WTF::fastFree(v36, v21);
          }

          else
          {
            --*v36;
          }
        }

        v22 = v38;
        v38 = 0;
        if (v22)
        {
          if (*v22 == 1)
          {
            WTF::fastFree(v22, v21);
          }

          else
          {
            --*v22;
          }
        }

        v23 = v37;
        v37 = 0;
        if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v23 = WTF::StringImpl::destroy(v23, v21);
        }

        if (v41)
        {
LABEL_35:
          *buf = v39;
          v24 = v40;
          v39 = 0;
          v40 = 0;
          *&buf[8] = v24;
          buf[16] = 1;
          v25 = v47;
          if (v47)
          {
            atomic_fetch_add_explicit(v47, 2u, memory_order_relaxed);
          }

          v53 = v25;
          WTF::URL::URL(v54, v48);
          v55 = 0;
          v56 = 0;
          (*(**(v4 + 32) + 16))(*(v4 + 32), &v46, buf);
          WebKit::WebPushMessage::~WebPushMessage(buf, v26);
          goto LABEL_39;
        }

        __break(1u);
      }

      else
      {
        if (!os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_39;
        }

        WTF::String::utf8();
        v35 = v38 ? v38 + 16 : 0;
        *buf = 136642819;
        *&buf[4] = v35;
        _os_log_error_impl(&dword_19D52D000, v17, OS_LOG_TYPE_ERROR, "Dropping incoming push due to decryption error for topic %{sensitive}s", buf, 0xCu);
        v23 = v38;
        v38 = 0;
        if (!v23)
        {
          goto LABEL_39;
        }

        if (*v23 != 1)
        {
          --*v23;
          goto LABEL_39;
        }
      }

      WTF::fastFree(v23, v21);
LABEL_39:
      WTF::CompletionHandler<void ()(void)>::operator()((a1 + 80));
      if (v41 == 1)
      {
        v30 = v39;
        if (v39)
        {
          v39 = 0;
          LODWORD(v40) = 0;
          WTF::fastFree(v30, v16);
        }
      }

      v27 = v44;
      if (v44)
      {
        *&v44 = 0;
        DWORD2(v44) = 0;
        WTF::fastFree(v27, v16);
      }

      v28 = v43;
      if (v43)
      {
        *&v43 = 0;
        DWORD2(v43) = 0;
        WTF::fastFree(v28, v16);
      }

      v29 = v42;
      if (v42)
      {
        *&v42 = 0;
        DWORD2(v42) = 0;
        WTF::fastFree(v29, v16);
      }

LABEL_46:
      WebCore::PushRecord::~PushRecord(v45, v16);
      return WTF::RefCounted<WebPushD::PushService>::deref((v4 + 8), v13);
    }
  }

  v10 = (a1 + 80);

  return WTF::CompletionHandler<void ()(void)>::operator()(v10);
}

void sub_19D8D0898(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF *a11, WTF *a12, int a13, int a14, char a15, WTF *a16, int a17, WTF *a18, int a19, WTF *a20, int a21, int a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, WTF *a43, int a44, int a45, char a46, WTF::StringImpl *a47)
{
  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::fastFree(a11, a2);
    }

    else
    {
      --*a11;
    }
  }

  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a15 == 1 && a12)
  {
    WTF::fastFree(a12, a2);
  }

  if (a20)
  {
    WTF::fastFree(a20, a2);
  }

  if (a18)
  {
    WTF::fastFree(a18, a2);
  }

  if (a16)
  {
    WTF::fastFree(a16, a2);
  }

  WebCore::PushRecord::~PushRecord(&a23, a2);
  WTF::RefCounted<WebPushD::PushService>::deref(v47, v49);
  _Unwind_Resume(a1);
}

uint64_t WTF::URL::URL(uint64_t a1, atomic_uint **a2)
{
  v3 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
  }

  v7 = v3;
  MEMORY[0x19EB01DD0](a1, &v7);
  v5 = v7;
  v7 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  return a1;
}

void sub_19D8D0AB8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void WebKit::WebPushMessage::~WebPushMessage(WebKit::WebPushMessage *this, WTF::StringImpl *a2)
{
  if (*(this + 208) == 1)
  {
    std::__optional_storage_base<WebCore::NotificationOptionsPayload,false>::~__optional_storage_base(this + 136, a2);
    v3 = *(this + 14);
    *(this + 14) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    v4 = *(this + 9);
    *(this + 9) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  v5 = *(this + 4);
  *(this + 4) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 3);
  *(this + 3) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  if (*(this + 16) == 1)
  {
    v7 = *this;
    if (*this)
    {
      *this = 0;
      *(this + 2) = 0;
      WTF::fastFree(v7, a2);
    }
  }
}

uint64_t std::__optional_storage_base<WebCore::NotificationOptionsPayload,false>::~__optional_storage_base(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 56) == 1)
  {
    v3 = *(a1 + 40);
    *(a1 + 40) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    v4 = *(a1 + 32);
    *(a1 + 32) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    v5 = *(a1 + 24);
    *(a1 + 24) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    v6 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }

    v7 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }
  }

  return a1;
}

uint64_t std::__optional_storage_base<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>>(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (*(result + 16) == *(a2 + 16))
  {
    if (*(result + 16))
    {

      return WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(result, a2);
    }
  }

  else if (*(result + 16))
  {
    result = *result;
    if (*v2)
    {
      *v2 = 0;
      *(v2 + 8) = 0;
      result = WTF::fastFree(result, a2);
    }

    *(v2 + 16) = 0;
  }

  else
  {
    *result = 0;
    *(result + 8) = 0;
    result = WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(result, a2);
    *(v2 + 16) = 1;
  }

  return result;
}

void sub_19D8D0D1C(_Unwind_Exception *exception_object, void *a2)
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

uint64_t WTF::makeString<WTF::ASCIILiteral,WTF::ASCIILiteral,char,WTF::String,char,WTF::String>(uint64_t result, int8x16_t *a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  if (a3)
  {
    v5 = a3 - 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5 >> 31)
  {
    __break(0xC471u);
LABEL_63:
    JUMPOUT(0x19D8D1080);
  }

  v9 = result;
  if (a4)
  {
    v10 = *(a4 + 4);
    if (a5)
    {
      goto LABEL_7;
    }

LABEL_60:
    v11 = 0;
    goto LABEL_8;
  }

  v10 = 0;
  if (!a5)
  {
    goto LABEL_60;
  }

LABEL_7:
  v11 = a5[1];
  if (v11 < 0)
  {
LABEL_58:
    *v9 = 0;
    __break(0xC471u);
    goto LABEL_63;
  }

LABEL_8:
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  v14 = v12;
  if (v10 < 0)
  {
    goto LABEL_58;
  }

  if (v14)
  {
    goto LABEL_58;
  }

  v12 = __OFADD__(v10, v13);
  v15 = v10 + v13;
  if (v12)
  {
    goto LABEL_58;
  }

  v12 = __OFADD__(v15, 1);
  v16 = v15 + 1;
  if (v12)
  {
    goto LABEL_58;
  }

  v12 = __OFADD__(v5, v16);
  v17 = v5 + v16;
  if (v12)
  {
    goto LABEL_58;
  }

  LODWORD(v18) = v17 + 26;
  if (__OFADD__(v17, 26))
  {
    goto LABEL_58;
  }

  if (!a4)
  {
    goto LABEL_55;
  }

  v19 = *(a4 + 16);
  if (a5 && (v19 & 4) != 0)
  {
    goto LABEL_20;
  }

  v20 = v18;
  v21 = v18 == 0;
  if ((v19 & 4) != 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  if (v21)
  {
LABEL_22:
    v22 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_53;
  }

  if (v18 > 0x7FFFFFEF)
  {
    goto LABEL_58;
  }

  result = WTF::tryFastCompactMalloc((2 * v20 + 20));
  v22 = v42;
  if (!v42)
  {
    goto LABEL_58;
  }

  *v42 = 2;
  v22[1] = v18;
  *(v22 + 1) = v22 + 5;
  v22[4] = 0;
  v25 = "com.apple.webkit.webpushd:";
  for (i = 20; i != 72; i += 2)
  {
    v27 = *v25++;
    *(v22 + i) = v27;
  }

  if (v20 <= 0x19)
  {
    goto LABEL_34;
  }

  v28 = (v22 + 18);
  v18 = v22 + 2 * v5 + 72;
  if (v5 >= 0x40)
  {
    v29 = &v28[2 * (v5 & 0x7FFFFFC0)];
    v30 = 0uLL;
    do
    {
      v43.val[0] = *a2;
      v31 = a2[1];
      v44.val[0] = a2[2];
      v32 = a2[3];
      a2 += 4;
      v33 = v32;
      v44.val[1] = 0uLL;
      v45.val[0] = v31;
      v43.val[1] = 0uLL;
      v34 = v28;
      vst2q_s8(v34, v43);
      v34 += 32;
      v45.val[1] = 0uLL;
      vst2q_s8(v34, v45);
      v35 = v28 + 64;
      vst2q_s8(v35, v44);
      v36 = v28 + 96;
      vst2q_s8(v36, *(&v30 - 1));
      v28 += 128;
    }

    while (v28 != v29);
    v28 = v29;
  }

  v37 = v20 - 26;
  while (v28 != v18)
  {
    v38 = a2->u8[0];
    a2 = (a2 + 1);
    *v28 = v38;
    v28 += 2;
  }

  if (v37 <= v5 || (*v18 = 58, v18 += 2, v5 = v37 + ~v5, v41 = a4, result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v41, v18), (v39 = v41) != 0) && (v39 = *(v41 + 4), v5 < v39) || v5 == v39)
  {
LABEL_34:
    while (1)
    {
      __break(1u);
LABEL_55:
      if (a5)
      {
LABEL_20:
        v20 = v18;
        v21 = v18 == 0;
        if ((a5[4] & 4) == 0)
        {
          goto LABEL_21;
        }

LABEL_24:
        if (v21)
        {
          goto LABEL_22;
        }

        if ((v18 & 0x80000000) != 0)
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (!v18)
        {
          goto LABEL_22;
        }

        v20 = v18;
        if ((v18 & 0x80000000) != 0)
        {
          goto LABEL_58;
        }
      }

      result = WTF::tryFastCompactMalloc((v20 + 20));
      v22 = v42;
      if (!v42)
      {
        goto LABEL_58;
      }

      *v42 = 2;
      v22[1] = v18;
      *(v22 + 1) = v22 + 5;
      v22[4] = 4;
      qmemcpy(v22 + 5, "com.apple.webkit.webpushd:", 26);
      if (v20 > 0x19)
      {
        v23 = v20 - 26;
        v18 = v22 + 46;
        if (v5)
        {
          if (v5 == 1)
          {
            *v18 = a2->i8[0];
          }

          else
          {
            result = memcpy(v22 + 46, a2, v5);
          }
        }

        if (v23 > v5)
        {
          v18[v5] = 58;
          a2 = &v18[v5 + 1];
          v5 = v23 + ~v5;
          v41 = a4;
          result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v41, a2->i8);
          v24 = v41;
          if (!v41 || (v24 = *(v41 + 4), v5 >= v24))
          {
            if (v5 != v24)
            {
              break;
            }
          }
        }
      }
    }

    a2->i8[v24] = 58;
    v42 = a5;
    result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v42, &a2->i8[v24 + 1]);
  }

  else
  {
    v40 = &v18[2 * v39];
    *v40 = 58;
    v42 = a5;
    result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v42, v40 + 2);
  }

LABEL_53:
  *v9 = v22;
  return result;
}

void sub_19D8D10C0(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *WTF::RefCounted<WebPushD::SubscribeRequest>::deref(_DWORD *result, void *a2)
{
  if (*result == 1)
  {
    WebPushD::SubscribeRequest::~SubscribeRequest((result - 26), a2);

    return bmalloc::api::tzoneFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

WTF *WebPushD::PushServiceConnection::startListeningForPublicToken(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  result = *(a1 + 24);
  *(a1 + 24) = v3;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v5 = *(a1 + 44);
  if (v5)
  {
    v6 = *(a1 + 24);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = v5;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    (*(*v6 + 16))(v6, &v8);
    result = v8;
    if (v8)
    {
      v8 = 0;
      v9 = 0;
      return WTF::fastFree(result, v7);
    }
  }

  return result;
}

void sub_19D8D1264(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10)
{
  if (a9)
  {
    WTF::fastFree(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebPushD::PushServiceConnection::didReceivePublicToken(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    return (*(*v3 + 16))();
  }

  else
  {
    return WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 32, a2);
  }
}

WTF::WorkQueue *WebPushD::PushServiceConnection::startListeningForPushMessages(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  result = *(a1 + 48);
  *(a1 + 48) = v3;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  if (v5 > v6)
  {
    v6 += *(a1 + 80);
  }

  if (v6 != v5)
  {
    v7 = WTF::WorkQueue::mainSingleton(result);
    ++*(a1 + 16);
    v8 = WTF::fastMalloc(0x18);
    *v8 = &unk_1F10EAEA0;
    *(v8 + 1) = a1;
    *(v8 + 2) = a1;
    v9 = v8;
    (*(*v7 + 48))(v7, &v9);
    result = v9;
    v9 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_19D8D13DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void WebPushD::PushServiceConnection::didReceivePushMessage(WebPushD::PushServiceConnection *this, NSString *a2, NSDictionary *a3)
{
  v18 = a3;
  v19 = a2;
  v4 = *(this + 6);
  if (v4)
  {
    v5 = *(*v4 + 16);

    v5();
    return;
  }

  std::pair<WTF::RetainPtr<NSString>,WTF::RetainPtr<NSDictionary>>::pair[abi:sn200100]<NSString*&,NSDictionary*&,0>(&v16, &v19, &v18);
  v7 = *(this + 7);
  v6 = *(this + 8);
  if (v7)
  {
    if (v6 + 1 != v7)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v8 = *(this + 20);
  if (!v6)
  {
    if (v8)
    {
      v6 = 0;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v6 == v8 - 1)
  {
LABEL_13:
    WTF::Deque<std::pair<WTF::RetainPtr<NSString>,WTF::RetainPtr<NSDictionary>>,0ul>::expandCapacity(this + 56);
    v6 = *(this + 8);
  }

LABEL_14:
  v9 = *(this + 20);
  if (v6 >= v9)
  {
    __break(1u);
  }

  else
  {
    v10 = (*(this + 9) + 16 * v6);
    v11 = v16;
    v16 = 0;
    *v10 = v11;
    v12 = v17;
    v17 = 0;
    v10[1] = v12;
    if (v6 == v9 - 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = v6 + 1;
    }

    *(this + 8) = v13;
    v14 = v17;
    v17 = 0;
    if (v14)
    {
    }

    v15 = v16;
    v16 = 0;
    if (v15)
    {
    }
  }
}

void sub_19D8D1588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10)
{
  if (a10)
  {
  }

  if (a9)
  {
  }

  _Unwind_Resume(exception_object);
}

void **std::pair<WTF::RetainPtr<NSString>,WTF::RetainPtr<NSDictionary>>::pair[abi:sn200100]<NSString*&,NSDictionary*&,0>(void **a1, void **a2, void **a3)
{
  v5 = *a2;
  *a1 = *a2;
  if (v5)
  {
    v6 = v5;
  }

  v7 = *a3;
  a1[1] = *a3;
  if (v7)
  {
    v8 = v7;
  }

  return a1;
}

void sub_19D8D1604(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebPushD::PushServiceConnection::startListeningForPushMessages(WTF::Function<void ()(NSString *,NSDictionary *)> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F10EAEA0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    if (v2[4] == 1)
    {
      (*(*v2 + 8))(v2);
    }

    else
    {
      --v2[4];
    }
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebPushD::PushServiceConnection::startListeningForPushMessages(WTF::Function<void ()(NSString *,NSDictionary *)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10EAEA0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    if (v3[4] == 1)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebPushD::PushServiceConnection::startListeningForPushMessages(WTF::Function<void ()(NSString *,NSDictionary *)> &&)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  while (1)
  {
    v2 = *(v1 + 56);
    v3 = *(v1 + 64);
    if (v2 > v3)
    {
      v3 += *(v1 + 80);
    }

    if (v3 == v2)
    {
      break;
    }

    v4 = objc_autoreleasePoolPush();
    v5 = *(v1 + 56);
    if (v5 >= *(v1 + 80))
    {
      goto LABEL_17;
    }

    v6 = *(v1 + 72) + 16 * v5;
    v7 = *v6;
    v8 = *(v6 + 8);
    *v6 = 0;
    *(v6 + 8) = 0;
    v9 = *(v1 + 56);
    if (v9 == *(v1 + 64))
    {
      goto LABEL_18;
    }

    if (v9 >= *(v1 + 80))
    {
LABEL_17:
      __break(1u);
LABEL_18:
      __break(0xC471u);
      return;
    }

    v10 = v4;
    WTF::VectorTypeOperations<std::pair<WTF::RetainPtr<NSString>,WTF::RetainPtr<NSDictionary>>>::destruct(*(v1 + 72) + 16 * v9, 1);
    v11 = *(v1 + 48);
    v12 = *(v1 + 56);
    if (v12 == *(v1 + 80) - 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12 + 1;
    }

    *(v1 + 56) = v13;
    (*(*v11 + 16))(v11, v7, v8);
    if (v8)
    {
    }

    if (v7)
    {
    }

    objc_autoreleasePoolPop(v10);
  }
}

void sub_19D8D1854(_Unwind_Exception *exception_object)
{
  if (v2)
  {
  }

  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void WTF::Deque<std::pair<WTF::RetainPtr<NSString>,WTF::RetainPtr<NSDictionary>>,0ul>::expandCapacity(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = v1 + (v1 >> 2);
  if (v2 >= 0xFFFFFFF)
  {
    __break(0xC471u);
    return;
  }

  v4 = *(a1 + 16);
  if (v2 <= 0xF)
  {
    v2 = 15;
  }

  v5 = v2 + 1;
  v6 = WTF::fastMalloc((16 * (v2 + 1)));
  *(a1 + 24) = v5;
  *(a1 + 16) = v6;
  v8 = *a1;
  v7 = *(a1 + 8);
  v9 = v7 - *a1;
  if (v7 >= *a1)
  {
    v7 = v1 - v8;
    if (v1 >= v8)
    {
      if (v9 == -1)
      {
LABEL_14:
        v9 = v7;
LABEL_15:
        WTF::VectorTypeOperations<std::pair<WTF::RetainPtr<NSString>,WTF::RetainPtr<NSDictionary>>>::move(&v4[2 * v8], v9, &v6[2 * v8]);
        if (!v4)
        {
          return;
        }

        goto LABEL_16;
      }

      if (v7 >= v9)
      {
        goto LABEL_15;
      }
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v7 > v1)
  {
    goto LABEL_13;
  }

  WTF::VectorTypeOperations<std::pair<WTF::RetainPtr<NSString>,WTF::RetainPtr<NSDictionary>>>::move(v4, *(a1 + 8), v6);
  v7 = *a1;
  v8 = v1 - *a1;
  if (v1 < *a1)
  {
    goto LABEL_13;
  }

  v10 = *(a1 + 24);
  if (v10 < v8)
  {
    goto LABEL_13;
  }

  v11 = v10 - v8;
  WTF::VectorTypeOperations<std::pair<WTF::RetainPtr<NSString>,WTF::RetainPtr<NSDictionary>>>::move(&v4[2 * v7], v8, (*(a1 + 16) + 16 * (v10 - v8)));
  *a1 = v11;
  if (!v4)
  {
    return;
  }

LABEL_16:
  if (*(a1 + 16) == v4)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }

  WTF::fastFree(v4, v12);
}

void WTF::VectorTypeOperations<std::pair<WTF::RetainPtr<NSString>,WTF::RetainPtr<NSDictionary>>>::move(void **a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = a1;
    v5 = &a1[2 * a2];
    do
    {
      v6 = *v4;
      *v4 = 0;
      *a3 = v6;
      v7 = v4[1];
      v4[1] = 0;
      a3[1] = v7;
      v8 = v4[1];
      v4[1] = 0;
      if (v8)
      {
      }

      v9 = *v4;
      *v4 = 0;
      if (v9)
      {
      }

      a3 += 2;
      v4 += 2;
    }

    while (v4 != v5);
  }
}

void WebKit::RemoteAudioDestinationManager::~RemoteAudioDestinationManager(WebKit::RemoteAudioDestinationManager *this, void *a2)
{
  *this = &unk_1F10EAEC8;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  v4 = *(this + 2);
  if (v4)
  {
    v5 = *(v4 - 4);
    if (v5)
    {
      v6 = (v4 + 8);
      do
      {
        if (*(v6 - 1) != -1)
        {
          std::unique_ptr<WebKit::RemoteAudioDestination>::reset[abi:sn200100](v6, 0);
        }

        v6 += 2;
        --v5;
      }

      while (v5);
    }

    WTF::fastFree((v4 - 16), a2);
  }

  *this = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);
}

{
  WebKit::RemoteAudioDestinationManager::~RemoteAudioDestinationManager(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

atomic_ullong *WebKit::RemoteAudioDestinationManager::ref(WebKit::RemoteAudioDestinationManager *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v2, *(this + 3), &v7);
    v3 = v7;
  }

  else
  {
    v3 = 0;
    v7 = 0;
  }

  while (1)
  {
    v4 = *(v3 + 16);
    if ((v4 & 1) == 0)
    {
      break;
    }

    v5 = *(v3 + 16);
    atomic_compare_exchange_strong_explicit((v3 + 16), &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v4)
    {
      v7 = 0;
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v3 + 16));
    }
  }

  result = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v3 + 16));
  v3 = v7;
  v7 = 0;
  if (!v3)
  {
    return result;
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v3 + 16));
}

atomic_ullong *WebKit::RemoteAudioDestinationManager::deref(WebKit::RemoteAudioDestinationManager *this)
{
  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(*(this + 4), *(this + 3), &v3);
  result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v3 + 16));
  v2 = v3;
  v3 = 0;
  if (v2)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v2 + 16));
  }

  return result;
}

void WebKit::RemoteAudioDestinationManager::createAudioDestination(uint64_t *a1, uint64_t a2, double a3, float a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  v55 = *MEMORY[0x1E69E9840];
  v12 = a1[4];
  if (!v12)
  {
    v51 = 0;
LABEL_3:
    v13 = *a10;
    *a10 = 0;
    (*(*v13 + 16))(v13, 0);
    (*(*v13 + 8))(v13);
    goto LABEL_4;
  }

  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v12, a1[3], &v51);
  v20 = v51;
  if (!v51)
  {
    goto LABEL_3;
  }

  if (*(v51 + 321) != 1)
  {
    if (WebKit::RemoteAudioDestination::operator new(unsigned long)::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteAudioDestination::operator new(unsigned long)::s_heapRef, v19);
    }

    else
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompactSlow();
    }

    v22 = NonCompact;
    *NonCompact = &unk_1F10EAF40;
    WTF::MachSendRight::MachSendRight();
    v23 = *(a8 + 4);
    *(a8 + 4) = 0;
    *(v22 + 3) = v23;
    *(v22 + 16) = 0;
    v24 = WebKit::GPUConnectionToWebProcess::logger(v20);
    atomic_fetch_add((v24 + 8), 1u);
    v22[3] = v24;
    v22[4] = WTF::cryptographicallyRandomNumber<unsigned long long>();
    WebCore::AudioOutputUnitAdaptor::AudioOutputUnitAdaptor();
    v22[7] = 0;
    *(v22 + 16) = a7;
    v22[10] = 0;
    v22[11] = 0;
    v22[9] = 0;
    v25 = v22[3];
    atomic_fetch_add(v25 + 2, 1u);
    v26 = v22[4];
    *&buf = "RemoteAudioDestination";
    *(&buf + 1) = 23;
    v53 = "RemoteAudioDestination";
    v54 = v26;
    if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v25, &WebKit2LogMedia, 0, &buf))
    {
      WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogMedia, 0, &buf);
    }

    if (v25 && atomic_fetch_add(v25 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v25 + 2);
      (*(*v25 + 8))(v25);
    }

    WebCore::AudioOutputUnitAdaptor::configure((v22 + 5), a4);
    WebCore::SharedMemory::map();
    v27 = buf;
    *&buf = 0;
    v28 = v22[7];
    v22[7] = v27;
    if (v28)
    {
      WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v28);
      v29 = buf;
      *&buf = 0;
      if (v29)
      {
        WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v29);
      }
    }

    v30 = WebCore::AudioOutputUnitAdaptor::outputLatency((v22 + 5));
    if (a2 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19D8D20D4);
    }

    if (a2)
    {
      v31 = v30;
      v32 = a1[2];
      if (!v32)
      {
        WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::RemoteAudioDestination>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::RemoteAudioDestination>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::RemoteAudioDestination>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UniqueRef<WebKit::RemoteAudioDestination>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1 + 2);
        v32 = a1[2];
      }

      v33 = *(v32 - 8);
      v34 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
      v35 = 9 * ((v34 + ~(v34 << 13)) ^ ((v34 + ~(v34 << 13)) >> 8));
      v36 = (v35 ^ (v35 >> 15)) + ~((v35 ^ (v35 >> 15)) << 27);
      v37 = v33 & ((v36 >> 31) ^ v36);
      v38 = (v32 + 16 * v37);
      v39 = *v38;
      if (*v38)
      {
        v40 = 0;
        v41 = 1;
        while (v39 != a2)
        {
          if (v39 == -1)
          {
            v40 = v38;
          }

          v37 = (v37 + v41) & v33;
          v38 = (v32 + 16 * v37);
          v39 = *v38;
          ++v41;
          if (!*v38)
          {
            if (v40)
            {
              *v40 = 0;
              v40[1] = 0;
              --*(a1[2] - 16);
              v38 = v40;
            }

            goto LABEL_30;
          }
        }

        goto LABEL_37;
      }

LABEL_30:
      *v38 = a2;
      std::unique_ptr<WebKit::RemoteAudioDestination>::reset[abi:sn200100](v38 + 1, v22);
      v42 = a1[2];
      if (v42)
      {
        v43 = *(v42 - 12) + 1;
      }

      else
      {
        v43 = 1;
      }

      *(v42 - 12) = v43;
      v44 = (*(v42 - 16) + v43);
      v45 = *(v42 - 4);
      if (v45 > 0x400)
      {
        if (v45 > 2 * v44)
        {
          goto LABEL_36;
        }
      }

      else if (3 * v45 > 4 * v44)
      {
LABEL_36:
        v22 = 0;
LABEL_37:
        v46 = *a10;
        *a10 = 0;
        (*(*v46 + 16))(v46, v31);
        (*(*v46 + 8))(v46);
        if (v22)
        {
          WebKit::RemoteAudioDestination::~RemoteAudioDestination(v22);
          bmalloc::api::tzoneFree(v47, v48);
        }

        goto LABEL_4;
      }

      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::RemoteAudioDestination>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::RemoteAudioDestination>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::RemoteAudioDestination>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UniqueRef<WebKit::RemoteAudioDestination>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1 + 2);
      goto LABEL_36;
    }

LABEL_50:
    __break(0xC471u);
    JUMPOUT(0x19D8D206CLL);
  }

  v49 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
  {
    LODWORD(buf) = 136446210;
    *(&buf + 4) = "void WebKit::RemoteAudioDestinationManager::createAudioDestination(RemoteAudioDestinationIdentifier, const String &, uint32_t, uint32_t, float, float, IPC::Semaphore &&, WebCore::SharedMemory::Handle &&, CompletionHandler<void (uint64_t)> &&)";
    _os_log_fault_impl(&dword_19D52D000, v49, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/media/RemoteAudioDestinationManager.cpp 260: Invalid message dispatched %{public}s: Received a createAudioDestination() message from a webpage in Lockdown mode.", &buf, 0xCu);
    v20 = v51;
  }

  v50 = *(v20 + 7);
  if (v50)
  {
    *(v50 + 94) = 1;
  }

  if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
  {
    goto LABEL_50;
  }

LABEL_4:
  v14 = v51;
  v51 = 0;
  if (v14)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref(v14 + 2);
  }
}

void WebKit::RemoteAudioDestinationManager::deleteAudioDestination(uint64_t *a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  if (!v3)
  {
    return;
  }

  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v3, a1[3], &v23);
  v5 = v23;
  if (!v23)
  {
    return;
  }

  if (*(v23 + 321) == 1)
  {
    v21 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v25 = "void WebKit::RemoteAudioDestinationManager::deleteAudioDestination(RemoteAudioDestinationIdentifier)";
      _os_log_fault_impl(&dword_19D52D000, v21, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/media/RemoteAudioDestinationManager.cpp 284: Invalid message dispatched %{public}s: Received a deleteAudioDestination() message from a webpage in Lockdown mode.", buf, 0xCu);
      v5 = v23;
    }

    v22 = *(v5 + 56);
    if (v22)
    {
      *(v22 + 94) = 1;
    }

    if ((IPC::s_shouldCrashOnMessageCheckFailure & 1) == 0)
    {
      v23 = 0;
LABEL_24:
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v5 + 16));
      return;
    }

    goto LABEL_33;
  }

  v7 = a1 + 2;
  v6 = a1[2];
  if (!v6)
  {
    goto LABEL_21;
  }

  if (a2 == -1)
  {
LABEL_33:
    __break(0xC471u);
    JUMPOUT(0x19D8D2340);
  }

  if (!a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19D8D2360);
  }

  v8 = *(v6 - 8);
  v9 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
  v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
  v12 = v8 & ((v11 >> 31) ^ v11);
  v13 = *(v6 + 16 * v12);
  if (v13 != a2)
  {
    v14 = 1;
    while (v13)
    {
      v12 = (v12 + v14) & v8;
      v13 = *(v6 + 16 * v12);
      ++v14;
      if (v13 == a2)
      {
        goto LABEL_14;
      }
    }

    v12 = *(v6 - 4);
  }

LABEL_14:
  if (v12 != *(v6 - 4))
  {
    v15 = v6 + 16 * v12;
    *v15 = -1;
    std::unique_ptr<WebKit::RemoteAudioDestination>::reset[abi:sn200100]((v15 + 8), 0);
    v16 = *v7;
    v17 = vadd_s32(*(*v7 - 16), 0xFFFFFFFF00000001);
    *(v16 - 16) = v17;
    v18 = *(v16 - 4);
    if (6 * v17.i32[1] < v18 && v18 >= 9)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::RemoteAudioDestination>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::RemoteAudioDestination>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::RemoteAudioDestination>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UniqueRef<WebKit::RemoteAudioDestination>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1 + 2, v18 >> 1);
    }
  }

LABEL_21:
  v20 = WebKit::RemoteAudioDestinationManager::allowsExitUnderMemoryPressure(a1);
  v5 = v23;
  if (v20)
  {
    WebKit::GPUProcess::tryExitIfUnusedAndUnderMemoryPressure(*(v23 + 80));
    v5 = v23;
  }

  v23 = 0;
  if (v5)
  {
    goto LABEL_24;
  }
}

uint64_t WebKit::RemoteAudioDestinationManager::allowsExitUnderMemoryPressure(WebKit::RemoteAudioDestinationManager *this)
{
  v2 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::WallTime>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::WallTime,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(this + 2);
  v4 = *(this + 2);
  if (v4)
  {
    v4 += 2 * *(v4 - 1);
  }

  if (v4 == v2)
  {
    return 1;
  }

  do
  {
    v5 = *(v2[1] + 16);
    if (v5)
    {
      break;
    }

    do
    {
      v2 += 2;
    }

    while (v2 != v3 && (*v2 + 1) <= 1);
  }

  while (v2 != v4);
  return v5 ^ 1u;
}

atomic_ullong *WebKit::RemoteAudioDestinationManager::startAudioDestination(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a1[4];
  if (!v5)
  {
    v16 = 0;
LABEL_3:
    v6 = *a3;
    *a3 = 0;
    (*(*v6 + 16))(v6, 0, 0);
    goto LABEL_4;
  }

  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v5, a1[3], &v16);
  if (!v16)
  {
    goto LABEL_3;
  }

  if (*(v16 + 321) == 1)
  {
    v14 = v16;
    v15 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v18 = "void WebKit::RemoteAudioDestinationManager::startAudioDestination(RemoteAudioDestinationIdentifier, CompletionHandler<void (BOOL, uint64_t)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v15, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/media/RemoteAudioDestinationManager.cpp 297: Invalid message dispatched %{public}s", buf, 0xCu);
      v14 = v16;
    }

    *(*(v14 + 56) + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19D8D258CLL);
    }

    goto LABEL_3;
  }

  v10 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::RemoteAudioDestination>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UniqueRef<WebKit::RemoteAudioDestination>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::RemoteAudioDestination>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UniqueRef<WebKit::RemoteAudioDestination>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1 + 2, a2);
  if (v10)
  {
    v11 = v10;
    WebKit::RemoteAudioDestination::start(v10);
    v12 = *(v11 + 16);
    v13 = WebCore::AudioOutputUnitAdaptor::outputLatency((v11 + 40));
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v6 = *a3;
  *a3 = 0;
  (*(*v6 + 16))(v6, v12 & 1, v13);
LABEL_4:
  result = (*(*v6 + 8))(v6);
  v8 = v16;
  v16 = 0;
  if (v8)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v8 + 16));
  }

  return result;
}

uint64_t WebKit::RemoteAudioDestination::start(WebKit::RemoteAudioDestination *this)
{
  v43[2] = *MEMORY[0x1E69E9840];
  result = WebCore::AudioOutputUnitAdaptor::start((this + 40));
  v3 = *(this + 3);
  atomic_fetch_add(v3 + 2, 1u);
  if (result)
  {
    v4 = *(this + 4);
    v36[0] = "RemoteAudioDestination";
    v36[1] = 23;
    v36[2] = "start";
    v36[3] = v4;
    v5 = MEMORY[0x1E696EBD0];
    do
    {
      v6 = *v5;
      if (v6)
      {
        goto LABEL_47;
      }

      v7 = *v5;
      atomic_compare_exchange_strong_explicit(v5, &v7, v6 | 1, memory_order_acquire, memory_order_acquire);
    }

    while (v7 != v6);
    result = WTF::Logger::messageHandlerObservers(result);
    v8 = *(result + 12);
    if (v8)
    {
      v9 = *result;
      v10 = *result + 8 * v8;
      do
      {
        v11 = *v9;
        LODWORD(buf) = 0;
        WTF::Logger::LogSiteIdentifier::toString(&buf + 1, v36);
        LODWORD(v42) = 0;
        WTF::String::String(v43, "Failed to start AudioOutputUnit");
        WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v37, &buf, 2uLL);
        (*(*v11 + 16))(v11, &WebKit2LogMedia, 1, v37);
        WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v37, v12);
        for (i = 24; i != -8; i -= 16)
        {
          result = *(&buf + i);
          *(&buf + i) = 0;
          if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v13);
          }
        }

        ++v9;
      }

      while (v9 != v10);
    }

    v15 = 1;
    atomic_compare_exchange_strong_explicit(v5, &v15, 0, memory_order_release, memory_order_relaxed);
    if (v15 != 1)
    {
      result = WTF::Lock::unlockSlow(MEMORY[0x1E696EBD0]);
    }

    if ((v3[3] & 1) == 0)
    {
      goto LABEL_56;
    }

    WTF::Logger::LogSiteIdentifier::toString(&v39, v36);
    WTF::String::String(&v38, "Failed to start AudioOutputUnit");
    *&buf = v39;
    v37[0] = v38;
    result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(&buf, v37, &v40);
    if (!v40)
    {
      __break(0xC471u);
      return result;
    }

    v17 = v38;
    v38 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v16);
    }

    v18 = v39;
    v39 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v16);
    }

    v19 = qword_1ED640D38;
    v20 = os_log_type_enabled(qword_1ED640D38, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      WTF::String::utf8();
      v22 = v37[0] ? v37[0] + 16 : 0;
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v22;
      _os_log_impl(&dword_19D52D000, v19, OS_LOG_TYPE_DEFAULT, "%{public}s", &buf, 0xCu);
      v20 = v37[0];
      v37[0] = 0;
      if (v20)
      {
        if (*v20 == 1)
        {
          v20 = WTF::fastFree(v20, v21);
        }

        else
        {
          --*v20;
        }
      }
    }

    if (WebKit2LogMedia && byte_1ED640D28)
    {
      v23 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v24 = *v23;
        if (v24)
        {
          break;
        }

        v25 = *v23;
        atomic_compare_exchange_strong_explicit(v23, &v25, v24 | 1, memory_order_acquire, memory_order_acquire);
        if (v25 == v24)
        {
          v26 = WTF::Logger::observers(v20);
          v27 = *(v26 + 12);
          if (v27)
          {
            v28 = *v26;
            v29 = *v26 + 8 * v27;
            do
            {
              v30 = *v28;
              LODWORD(buf) = 0;
              WTF::Logger::LogSiteIdentifier::toString(&buf + 1, v36);
              LODWORD(v42) = 0;
              WTF::String::String(v43, "Failed to start AudioOutputUnit");
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v37, &buf, 2uLL);
              (*(*v30 + 16))(v30, &WebKit2LogMedia, 1, v37);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v37, v31);
              for (j = 24; j != -8; j -= 16)
              {
                v33 = *(&buf + j);
                *(&buf + j) = 0;
                if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v33, v21);
                }
              }

              ++v28;
            }

            while (v28 != v29);
          }

          v34 = 1;
          atomic_compare_exchange_strong_explicit(v23, &v34, 0, memory_order_release, memory_order_relaxed);
          if (v34 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    result = v40;
    v40 = 0;
    if (!result || atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) != 2)
    {
LABEL_47:
      if (!v3)
      {
        return result;
      }

      goto LABEL_56;
    }

    result = WTF::StringImpl::destroy(result, v21);
    if (!v3)
    {
      return result;
    }

LABEL_56:
    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3 + 2);
      return (*(*v3 + 8))(v3);
    }
  }

  else
  {
    v35 = *(this + 4);
    *&buf = "RemoteAudioDestination";
    *(&buf + 1) = 23;
    v42 = "start";
    v43[0] = v35;
    result = WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v3, &WebKit2LogMedia, 0, &buf);
    if (result)
    {
      result = WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogMedia, 0, &buf);
    }

    if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3 + 2);
      result = (*(*v3 + 8))(v3);
    }

    *(this + 16) = 1;
  }

  return result;
}

void WebKit::RemoteAudioDestinationManager::stopAudioDestination(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a1[4];
  if (!v5)
  {
    v6 = 0;
    v14 = 0;
    goto LABEL_3;
  }

  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v5, a1[3], &v14);
  v6 = v14;
  if (v14)
  {
    if (*(v14 + 321) == 1)
    {
      v12 = v14;
      v13 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446210;
        v16 = "void WebKit::RemoteAudioDestinationManager::stopAudioDestination(RemoteAudioDestinationIdentifier, CompletionHandler<void (BOOL)> &&)";
        _os_log_fault_impl(&dword_19D52D000, v13, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/media/RemoteAudioDestinationManager.cpp 314: Invalid message dispatched %{public}s", buf, 0xCu);
        v12 = v14;
      }

      *(*(v12 + 56) + 94) = 1;
      if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
      {
        __break(0xC471u);
        return;
      }
    }

    else
    {
      v10 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::RemoteAudioDestination>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UniqueRef<WebKit::RemoteAudioDestination>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::RemoteAudioDestination>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UniqueRef<WebKit::RemoteAudioDestination>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1 + 2, a2);
      if (v10)
      {
        v11 = v10;
        WebKit::RemoteAudioDestination::stop(v10);
        v6 = *(v11 + 16);
        goto LABEL_3;
      }
    }

    v6 = 0;
  }

LABEL_3:
  v7 = *a3;
  *a3 = 0;
  (*(*v7 + 16))(v7, v6 & 1);
  (*(*v7 + 8))(v7);
  v8 = v14;
  v14 = 0;
  if (v8)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v8 + 16));
  }
}

uint64_t WebKit::RemoteAudioDestination::stop(WebKit::RemoteAudioDestination *this)
{
  v43[2] = *MEMORY[0x1E69E9840];
  result = WebCore::AudioOutputUnitAdaptor::stop((this + 40));
  v3 = *(this + 3);
  atomic_fetch_add(v3 + 2, 1u);
  if (result)
  {
    v4 = *(this + 4);
    v36[0] = "RemoteAudioDestination";
    v36[1] = 23;
    v36[2] = "stop";
    v36[3] = v4;
    v5 = MEMORY[0x1E696EBD0];
    do
    {
      v6 = *v5;
      if (v6)
      {
        goto LABEL_47;
      }

      v7 = *v5;
      atomic_compare_exchange_strong_explicit(v5, &v7, v6 | 1, memory_order_acquire, memory_order_acquire);
    }

    while (v7 != v6);
    result = WTF::Logger::messageHandlerObservers(result);
    v8 = *(result + 12);
    if (v8)
    {
      v9 = *result;
      v10 = *result + 8 * v8;
      do
      {
        v11 = *v9;
        LODWORD(buf) = 0;
        WTF::Logger::LogSiteIdentifier::toString(&buf + 1, v36);
        LODWORD(v42) = 0;
        WTF::String::String(v43, "Failed to stop AudioOutputUnit");
        WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v37, &buf, 2uLL);
        (*(*v11 + 16))(v11, &WebKit2LogMedia, 1, v37);
        WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v37, v12);
        for (i = 24; i != -8; i -= 16)
        {
          result = *(&buf + i);
          *(&buf + i) = 0;
          if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v13);
          }
        }

        ++v9;
      }

      while (v9 != v10);
    }

    v15 = 1;
    atomic_compare_exchange_strong_explicit(v5, &v15, 0, memory_order_release, memory_order_relaxed);
    if (v15 != 1)
    {
      result = WTF::Lock::unlockSlow(MEMORY[0x1E696EBD0]);
    }

    if ((v3[3] & 1) == 0)
    {
      goto LABEL_56;
    }

    WTF::Logger::LogSiteIdentifier::toString(&v39, v36);
    WTF::String::String(&v38, "Failed to stop AudioOutputUnit");
    *&buf = v39;
    v37[0] = v38;
    result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(&buf, v37, &v40);
    if (!v40)
    {
      __break(0xC471u);
      return result;
    }

    v17 = v38;
    v38 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v16);
    }

    v18 = v39;
    v39 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v16);
    }

    v19 = qword_1ED640D38;
    v20 = os_log_type_enabled(qword_1ED640D38, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      WTF::String::utf8();
      v22 = v37[0] ? v37[0] + 16 : 0;
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v22;
      _os_log_impl(&dword_19D52D000, v19, OS_LOG_TYPE_DEFAULT, "%{public}s", &buf, 0xCu);
      v20 = v37[0];
      v37[0] = 0;
      if (v20)
      {
        if (*v20 == 1)
        {
          v20 = WTF::fastFree(v20, v21);
        }

        else
        {
          --*v20;
        }
      }
    }

    if (WebKit2LogMedia && byte_1ED640D28)
    {
      v23 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v24 = *v23;
        if (v24)
        {
          break;
        }

        v25 = *v23;
        atomic_compare_exchange_strong_explicit(v23, &v25, v24 | 1, memory_order_acquire, memory_order_acquire);
        if (v25 == v24)
        {
          v26 = WTF::Logger::observers(v20);
          v27 = *(v26 + 12);
          if (v27)
          {
            v28 = *v26;
            v29 = *v26 + 8 * v27;
            do
            {
              v30 = *v28;
              LODWORD(buf) = 0;
              WTF::Logger::LogSiteIdentifier::toString(&buf + 1, v36);
              LODWORD(v42) = 0;
              WTF::String::String(v43, "Failed to stop AudioOutputUnit");
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v37, &buf, 2uLL);
              (*(*v30 + 16))(v30, &WebKit2LogMedia, 1, v37);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v37, v31);
              for (j = 24; j != -8; j -= 16)
              {
                v33 = *(&buf + j);
                *(&buf + j) = 0;
                if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v33, v21);
                }
              }

              ++v28;
            }

            while (v28 != v29);
          }

          v34 = 1;
          atomic_compare_exchange_strong_explicit(v23, &v34, 0, memory_order_release, memory_order_relaxed);
          if (v34 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    result = v40;
    v40 = 0;
    if (!result || atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) != 2)
    {
LABEL_47:
      if (!v3)
      {
        return result;
      }

      goto LABEL_56;
    }

    result = WTF::StringImpl::destroy(result, v21);
    if (!v3)
    {
      return result;
    }

LABEL_56:
    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3 + 2);
      return (*(*v3 + 8))(v3);
    }
  }

  else
  {
    v35 = *(this + 4);
    *&buf = "RemoteAudioDestination";
    *(&buf + 1) = 23;
    v42 = "stop";
    v43[0] = v35;
    result = WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v3, &WebKit2LogMedia, 0, &buf);
    if (result)
    {
      result = WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogMedia, 0, &buf);
    }

    if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3 + 2);
      result = (*(*v3 + 8))(v3);
    }

    *(this + 16) = 0;
  }

  return result;
}

unsigned __int8 *WebKit::RemoteAudioDestinationManager::audioSamplesStorageChanged(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::RemoteAudioDestination>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UniqueRef<WebKit::RemoteAudioDestination>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::RemoteAudioDestination>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UniqueRef<WebKit::RemoteAudioDestination>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 16), a2);
  if (result)
  {
    v5 = result;
    v6 = result[16];
    if (v6 != 1 || (result = WebKit::RemoteAudioDestination::stop(result), (v5[16] & 1) == 0))
    {
      WebKit::ConsumerSharedCARingBuffer::map(4, a3, &v9);
      v7 = v9;
      v9 = 0;
      std::unique_ptr<WebKit::ConsumerSharedCARingBuffer>::reset[abi:sn200100](v5 + 9, v7);
      result = std::unique_ptr<WebKit::ConsumerSharedCARingBuffer>::reset[abi:sn200100](&v9, 0);
      if (*(v5 + 9))
      {
        v8 = v6 == 0;
      }

      else
      {
        v8 = 1;
      }

      if (!v8)
      {
        return WebKit::RemoteAudioDestination::start(v5);
      }
    }
  }

  return result;
}

atomic_uchar *WebKit::RemoteAudioDestinationManager::sharedPreferencesForWebProcess@<X0>(WebKit::RemoteAudioDestinationManager *this@<X0>, uint64_t a2@<X8>)
{
  result = *(this + 4);
  if (result && (result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(this + 3), &v6), (v5 = v6) != 0))
  {
    *a2 = *(v6 + 336);
    *(a2 + 16) = *(v5 + 352);
    *(a2 + 24) = 1;
    v6 = 0;
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v5 + 16));
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  return result;
}

uint64_t WebKit::RemoteAudioDestinationManager::setSceneIdentifier(uint64_t a1, uint64_t a2, const WTF::StringImpl **a3)
{
  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::RemoteAudioDestination>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UniqueRef<WebKit::RemoteAudioDestination>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::RemoteAudioDestination>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UniqueRef<WebKit::RemoteAudioDestination>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 16), a2);
  if (result)
  {
    v6 = (result + 88);
    result = WTF::equal(*(result + 88), *a3, v5);
    if ((result & 1) == 0)
    {

      return WTF::String::operator=(v6, a3);
    }
  }

  return result;
}

atomic_ullong *WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref(atomic_ullong *result)
{
  do
  {
    v1 = *result;
    if ((*result & 1) == 0)
    {
      v2 = *result;

      return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>(v2);
    }

    v3 = *result;
    atomic_compare_exchange_strong_explicit(result, &v3, v1 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v3 != v1);
  v5 = result;
  if (v1 == 3)
  {
    v4 = WTF::fastMalloc(0x10);
    *v4 = &unk_1F10EAF68;
    v4[1] = v5;
    v6 = v4;
    WTF::ensureOnMainThread();
    result = v6;
    if (v6)
    {
      return (*(*v6 + 8))(v6);
    }
  }

  return result;
}

atomic_uchar *WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>(atomic_uchar *this)
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
    *v6 = &unk_1F10EAF90;
    *(v6 + 1) = v1;
    *(v6 + 2) = v4;
    v8 = v6;
    WTF::ensureOnMainThread();
    this = v8;
    if (v8)
    {
      return (*(*v8 + 8))(v8);
    }
  }

  return this;
}

uint64_t WTF::Detail::CallableWrapper<void WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>(void)::{lambda(void)#1},void>::call(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  result = *(a1 + 16);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v4 = 0;
  v5 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    result = MEMORY[0x19EB01E30](v3);
  }

  v6 = *(v3 + 16) - 1;
  *(v3 + 16) = v6;
  atomic_compare_exchange_strong_explicit(v3, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 == 1)
  {
    if (v6)
    {
      return result;
    }
  }

  else
  {
    v7 = v6;
    result = WTF::Lock::unlockSlow(v3);
    if (v7)
    {
      return result;
    }
  }

  return WTF::fastFree(v3, a2);
}

WebKit::RemoteAudioDestination *std::unique_ptr<WebKit::RemoteAudioDestination>::reset[abi:sn200100](WebKit::RemoteAudioDestination **a1, WebKit::RemoteAudioDestination *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    WebKit::RemoteAudioDestination::~RemoteAudioDestination(result);

    return bmalloc::api::tzoneFree(v4, v5);
  }

  return result;
}

void WebKit::RemoteAudioDestination::~RemoteAudioDestination(WebKit::RemoteAudioDestination *this)
{
  v2 = *(this + 3);
  atomic_fetch_add(v2 + 2, 1u);
  v3 = *(this + 4);
  v8[0] = "RemoteAudioDestination";
  v8[1] = 23;
  v8[2] = "~RemoteAudioDestination";
  v8[3] = v3;
  if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v2, &WebKit2LogMedia, 0, v8))
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogMedia, 0, v8);
  }

  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  if (*(this + 16) == 1)
  {
    WebKit::RemoteAudioDestination::stop(this);
  }

  v5 = *(this + 11);
  *(this + 11) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  std::unique_ptr<WebKit::ConsumerSharedCARingBuffer>::reset[abi:sn200100](this + 9, 0);
  v6 = *(this + 7);
  *(this + 7) = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v6);
  }

  WebCore::AudioOutputUnitAdaptor::~AudioOutputUnitAdaptor((this + 40));
  v7 = *(this + 3);
  *(this + 3) = 0;
  if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7 + 2);
    (*(*v7 + 8))(v7);
  }

  IPC::Semaphore::destroy((this + 8));
  WTF::MachSendRight::~MachSendRight((this + 8));
}

{
  WebKit::RemoteAudioDestination::~RemoteAudioDestination(this);

  bmalloc::api::tzoneFree(v1, v2);
}

uint64_t *WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t *result, uint64_t a2, unint64_t a3)
{
  v3 = result;
  *result = 0;
  result[1] = 0;
  if (!a3)
  {
    return v3;
  }

  if (!(a3 >> 28))
  {
    v6 = WTF::fastMalloc((16 * a3));
    *(v3 + 2) = a3;
    *v3 = v6;
    v7 = a2 + 16 * a3;
    v8 = *(v3 + 3);
    do
    {
      v9 = *v3 + 16 * v8;
      *v9 = *a2;
      v10 = *(a2 + 8);
      if (v10)
      {
        atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
        v8 = *(v3 + 3);
      }

      *(v9 + 8) = v10;
      *(v3 + 3) = ++v8;
      a2 += 16;
    }

    while (a2 != v7);
    return v3;
  }

  __break(0xC471u);
  return result;
}

WebCore::CARingBuffer **std::unique_ptr<WebKit::ConsumerSharedCARingBuffer>::reset[abi:sn200100](WebCore::CARingBuffer **result, WebCore::CARingBuffer *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    *v2 = &unk_1F10EAF10;
    v3 = *(v2 + 9);
    *(v2 + 9) = 0;
    if (v3)
    {
      WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v3);
    }

    WebCore::CARingBuffer::~CARingBuffer(v2);

    return bmalloc::api::tzoneFree(v4, v5);
  }

  return result;
}

void WebKit::SharedCARingBufferBase::~SharedCARingBufferBase(WebKit::SharedCARingBufferBase *this)
{
  *this = &unk_1F10EAF10;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v2);
  }

  WebCore::CARingBuffer::~CARingBuffer(this);
}

{
  *this = &unk_1F10EAF10;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v2);
  }

  WebCore::CARingBuffer::~CARingBuffer(this);

  bmalloc::api::tzoneFree(v3, v4);
}

uint64_t WebKit::SharedCARingBufferBase::data(uint64_t this)
{
  v1 = *(this + 72);
  if (*(v1 + 8) > 0x17uLL)
  {
    return *(v1 + 16) + 24;
  }

  __break(1u);
  return this;
}

uint64_t WebKit::SharedCARingBufferBase::timeBoundsBuffer(uint64_t this)
{
  v1 = *(this + 72);
  if (*(v1 + 8) > 0x17uLL)
  {
    return *(v1 + 16);
  }

  __break(1u);
  return this;
}

unint64_t WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::controlBlock(atomic_ullong *a1)
{
  result = *a1;
  if (result)
  {
    result = WTF::fastMalloc(0x20);
    *result = 0;
    *(result + 8) = xmmword_19E7014F0;
    *(result + 24) = a1 - 2;
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

uint64_t WebKit::RemoteAudioDestination::render(WebKit::RemoteAudioDestination *this, double a2, unint64_t a3, unsigned int a4, AudioBufferList *a5)
{
  if (!*(this + 9))
  {
    return 0xFFFFFFFFLL;
  }

  v7 = a4;
  result = WebCore::CARingBuffer::fetchIfHasEnoughData();
  if (result)
  {
    v9 = 0;
    *(this + 10) += v7;
  }

  else
  {
    v9 = 0xFFFFFFFFLL;
  }

  v10 = *(this + 7);
  if (!v10)
  {
LABEL_9:
    MEMORY[0x19EB16320](*(this + 3));
    return v9;
  }

  if ((*(v10 + 8) & 3) == 0)
  {
    atomic_fetch_add(*(v10 + 16), a4);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::RemoteAudioDestination>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::RemoteAudioDestination>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::RemoteAudioDestination>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UniqueRef<WebKit::RemoteAudioDestination>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::RemoteAudioDestination>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::RemoteAudioDestination>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::RemoteAudioDestination>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UniqueRef<WebKit::RemoteAudioDestination>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v3);
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::RemoteAudioDestination>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::RemoteAudioDestination>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::RemoteAudioDestination>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UniqueRef<WebKit::RemoteAudioDestination>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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
      v11 = *v10;
      if (*v10 != -1)
      {
        if (v11)
        {
          v12 = *a1;
          if (*a1)
          {
            v13 = *(v12 - 8);
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
            v20 = *(v12 + 16 * v17);
            v17 = (v17 + v18++) & v13;
          }

          while (v20);
          v21 = v12 + 16 * v19;
          std::unique_ptr<WebKit::RemoteAudioDestination>::reset[abi:sn200100]((v21 + 8), 0);
          *v21 = *v10;
          v22 = v10[1];
          v10[1] = 0;
          *(v21 + 8) = v22;
          std::unique_ptr<WebKit::RemoteAudioDestination>::reset[abi:sn200100](v10 + 1, 0);
        }

        else
        {
          std::unique_ptr<WebKit::RemoteAudioDestination>::reset[abi:sn200100](v10 + 1, 0);
        }
      }
    }
  }

  else if (!v4)
  {
    return result;
  }

  return WTF::fastFree((v4 - 16), v8);
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::RemoteAudioDestination>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UniqueRef<WebKit::RemoteAudioDestination>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::RemoteAudioDestination>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UniqueRef<WebKit::RemoteAudioDestination>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioDestinationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t a2)
{
  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19D8D3DC0);
  }

  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 - 8);
    v4 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v5 = 9 * ((v4 + ~(v4 << 13)) ^ ((v4 + ~(v4 << 13)) >> 8));
    v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27);
    v7 = v3 & ((v6 >> 31) ^ v6);
    v8 = *(v2 + 16 * v7);
    if (v8 == a2)
    {
      return *(v2 + 16 * v7 + 8);
    }

    v9 = 1;
    while (v8)
    {
      v7 = (v7 + v9) & v3;
      v8 = *(v2 + 16 * v7);
      ++v9;
      if (v8 == a2)
      {
        return *(v2 + 16 * v7 + 8);
      }
    }
  }

  return 0;
}

uint64_t WebKit::RemoteLayerTreeDrawingArea::RemoteLayerTreeDrawingArea(uint64_t a1, WebKit::WebPage *a2, uint64_t a3)
{
  v6 = WebKit::DrawingArea::DrawingArea(a1, 0, *(a3 + 72), a2);
  *v6 = &unk_1F10EAFB8;
  v6[3] = &unk_1F10EB1A0;
  v6[10] = &unk_1F10EB1C8;
  if (WebKit::RemoteLayerTreeContext::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteLayerTreeContext::s_heapRef, v7);
  }

  else
  {
    NonCompact = WebKit::RemoteLayerTreeContext::operatorNewSlow(0xD8);
  }

  v9 = NonCompact;
  WebKit::RemoteLayerTreeContext::RemoteLayerTreeContext(NonCompact, a2);
  *(a1 + 96) = a1 + 112;
  *(a1 + 88) = v9;
  *(a1 + 104) = 1;
  *(a1 + 144) = 0;
  *(a1 + 160) = 0;
  WebCore::Timer::Timer<WebKit::RemoteLayerTreeDrawingArea,WebKit::RemoteLayerTreeDrawingArea>((a1 + 168), a1, WebKit::RemoteLayerTreeDrawingArea::updateRendering, 0);
  *(a1 + 228) = 0;
  *(a1 + 224) = 0;
  WTF::WorkQueue::create();
  {
    v11 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v19 = WebKit::WebProcess::operator new(0x370, v10);
    v11 = WebKit::WebProcess::WebProcess(v19);
    WebKit::WebProcess::singleton(void)::process = v11;
  }

  v12 = *(v11 + 5);
  while (1)
  {
    v13 = *v12;
    if ((*v12 & 1) == 0)
    {
      break;
    }

    v18 = *v12;
    atomic_compare_exchange_strong_explicit(v12, &v18, v13 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v18 == v13)
    {
      goto LABEL_8;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v12);
LABEL_8:
  v14 = WTF::fastMalloc(0x18);
  *v14 = 1;
  *(v14 + 8) = v12;
  *(v14 + 16) = 0;
  *(a1 + 240) = v14;
  v15 = WebCore::Process::identifier(v14);
  *(a1 + 248) = 0;
  *(a1 + 256) = v15;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0;
  *(a1 + 288) = 0;
  WebCore::Timer::Timer<WebKit::RemoteLayerTreeDrawingArea,WebKit::RemoteLayerTreeDrawingArea>((a1 + 296), a1, WebKit::RemoteLayerTreeDrawingArea::scheduleRenderingUpdateTimerFired, 0);
  *(a1 + 352) = 60;
  *(a1 + 356) = 1;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  v16 = *(a3 + 172);
  if (v16)
  {
    v20 = *(a3 + 156);
    v21 = v16;
    v22 = *(a3 + 173);
    v23 = *(a3 + 175);
    WebKit::RemoteLayerTreeDrawingArea::setViewExposedRect(a1, &v20);
  }

  return a1;
}

void sub_19D8D402C(_Unwind_Exception *a1)
{
  WebCore::Timer::~Timer((v1 + 296));
  v5 = *(v1 + 264);
  if (v5)
  {
    *(v1 + 264) = 0;
    *(v1 + 272) = 0;
    WTF::fastFree(v5, v4);
  }

  v6 = *(v1 + 240);
  *(v1 + 240) = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCounted<WebKit::RemoteLayerTreeDrawingArea::BackingStoreFlusher,(WTF::DestructionThread)0>::deref(v6, v4);
  }

  v7 = *(v1 + 232);
  *(v1 + 232) = 0;
  if (v7)
  {
    (*(*v7 + 40))(v7);
  }

  WebCore::Timer::~Timer((v1 + 168));
  WTF::Vector<WebKit::RemoteLayerTreeDrawingArea::RootLayerInfo,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, v8);
  WTF::Ref<WebKit::RemoteLayerTreeContext,WTF::RawPtrTraits<WebKit::RemoteLayerTreeContext>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeContext>>::~Ref((v1 + 88));
  WebKit::DrawingArea::~DrawingArea(v1, v9);
  _Unwind_Resume(a1);
}

void WebKit::RemoteLayerTreeDrawingArea::updateRendering(WebKit::RemoteLayerTreeDrawingArea *this)
{
  v111 = *MEMORY[0x1E69E9840];
  if (*(this + 224) == 1)
  {
    *(this + 225) = 1;
  }

  else if (*(this + 227) == 1)
  {
    *(this + 228) = 1;
  }

  else if ((*(this + 226) & 1) == 0)
  {
    v2 = *(*(this + 6) + 8);
    if (!v2)
    {
      __break(0xC471u);
      JUMPOUT(0x19D8D4A38);
    }

    CFRetain(*(v2 - 8));
    v3 = *(v2 + 40);
    if (v3)
    {
      v4 = *(v3 + 160);
      if (v4)
      {
        if (*(v4 - 12))
        {
          v90 = v2;
          WebKit::DrawingArea::scaleViewToFitDocumentIfNeeded(this);
          v5 = (v2 - 16);
          v6 = *(this + 226);
          *(this + 226) = 1;
          WebKit::WebPage::updateRendering((v2 - 16));
          v7 = *(v2 + 1832);
          if (v7)
          {
            v85 = *(v2 + 1824);
            *(v2 + 1832) = 0;
            v98[0] = v85;
            LOBYTE(v98[1]) = v7;
            WebKit::WebPage::updateIntrinsicContentSizeIfNeeded((v2 - 16), v98);
          }

          v8 = *(v2 + 48);
          v9 = *(v2 + 52);
          v93 = 0;
          v94 = v8;
          v95 = v9;
          v10 = WebKit::WebPage::localMainFrameView((v2 - 16));
          v87 = v6;
          if (v10)
          {
            v11 = v10;
            ++*(v10 + 8);
            *v98 = *(v10 + 1224);
            LODWORD(v99) = *(v10 + 1240);
            if (v99)
            {
              WebCore::FloatRect::intersect(&v93, v98);
            }

            if (v11[2] == 1)
            {
              (*(*v11 + 8))(v11);
            }

            else
            {
              --v11[2];
            }
          }

          WebKit::WebPage::finalizeRenderingUpdate(v2 - 16);
          (*(*this + 304))(this);
          v12 = *(this + 27);
          if (v12)
          {
            v13 = 32 * v12;
            v14 = (*(this + 12) + 16);
            do
            {
              if (*v14)
              {
                (*(**v14 + 792))(*v14, &v93);
              }

              v14 += 4;
              v13 -= 32;
            }

            while (v13);
          }

          v15 = *(*(this + 11) + 88);
          WebKit::RemoteLayerBackingStoreCollection::ref(v15);
          *(v15 + 144) = 1;
          WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::clear(v15 + 56, v16);
          v88 = *(this + 31) + 1;
          v89 = *(this + 32);
          *(this + 31) = v88;
          v91 = 0;
          v92 = 0;
          v18 = *(this + 27);
          if (v18)
          {
            if (v18 >= 0x421085)
            {
              __break(0xC471u);
              JUMPOUT(0x19D8D4A60);
            }

            v19 = 992 * v18;
            v20 = WTF::fastMalloc((992 * v18));
            LODWORD(v92) = v19 / 0x3E0;
            v91 = v20;
            v21 = *(this + 27);
            if (v21)
            {
              v22 = 0;
              v23 = *(this + 12);
              v86 = &v23[4 * v21];
              do
              {
                WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::clear(v15 + 72, v17);
                (*(**v23 + 800))(*v23);
                WebKit::RemoteLayerTreeTransaction::RemoteLayerTreeTransaction(&v104, v88, v89);
                v25 = v106;
                if (v106)
                {
                  v106 = 0;
                  LODWORD(v107) = 0;
                  WTF::fastFree(v25, v24);
                }

                v106 = *(this + 33);
                v26 = *(this + 34);
                *(this + 33) = 0;
                *(this + 34) = 0;
                v107 = v26;
                v27 = *v23;
                if (((*(**v23 + 904))(*v23) & 1) == 0)
                {
                  __break(0xC471u);
                  JUMPOUT(0x19D8D4A80);
                }

                v28 = *(v27 + 688);
                if (!v28)
                {
                  v28 = *(v27 + 680);
                }

                v29 = (v28 + 8);
                while (1)
                {
                  v30 = *v29;
                  if ((*v29 & 1) == 0)
                  {
                    break;
                  }

                  v31 = *v29;
                  atomic_compare_exchange_strong_explicit(v29, &v31, v30 + 2, memory_order_relaxed, memory_order_relaxed);
                  if (v31 == v30)
                  {
                    goto LABEL_33;
                  }
                }

                v84 = v28;
                WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v29);
                v28 = v84;
LABEL_33:
                WebKit::RemoteLayerTreeContext::buildTransaction(*(this + 11), &v104, v28, v23[3]);
                WebKit::WebPage::willCommitLayerTree(v5, &v104, v23[3]);
                v32 = *(this + 144);
                *(this + 144) = 0;
                v110 = v32;
                v33 = *(this + 35);
                *(this + 35) = 0;
                v109 = v33;
                (*(*this + 464))(this, &v104);
                *(this + 227) = 1;
                v96 = v108;
                v34 = *(*(this + 6) + 8);
                if (!v34)
                {
                  __break(0xC471u);
                  JUMPOUT(0x19D8D4AC0);
                }

                CFRetain(*(v34 - 8));
                v35 = *(this + 5);
                v37 = IPC::Encoder::operator new(0x238, v36);
                *v37 = 1386;
                *(v37 + 2) = 0;
                *(v37 + 3) = 0;
                *(v37 + 1) = v35;
                *(v37 + 68) = 0;
                *(v37 + 70) = 0;
                *(v37 + 69) = 0;
                IPC::Encoder::encodeHeader(v37);
                v97 = v37;
                IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode(v37, &v96);
                (*(*(v34 + 16) + 32))(v34 + 16, &v97, 0);
                v39 = v97;
                v97 = 0;
                if (v39)
                {
                  IPC::Encoder::~Encoder(v39, v38);
                  bmalloc::api::tzoneFree(v80, v81);
                }

                CFRelease(*(v34 - 8));
                if (WebKit::WebPage::scrollingCoordinator(v5))
                {
                  v40 = WebKit::WebPage::scrollingCoordinator(v5);
                  if (((*(*v40 + 32))(v40) & 1) == 0)
                  {
                    __break(0xC471u);
                    JUMPOUT(0x19D8D4AA0);
                  }

                  WebKit::RemoteScrollingCoordinator::buildTransaction(v40, &v96);
                  v41 = v96;
                  v42 = BYTE8(v96);
                  LODWORD(v97) = *(&v96 + 9);
                  *(&v97 + 3) = HIDWORD(v96);
                }

                else
                {
                  v41 = 0;
                  v42 = 0;
                }

                v43 = v23[3];
                WebKit::RemoteLayerTreeTransaction::RemoteLayerTreeTransaction(v98, &v104);
                v102 = v41;
                LOBYTE(v103) = v42;
                *(&v103 + 1) = v97;
                DWORD1(v103) = *(&v97 + 3);
                *(&v103 + 1) = v43;
                WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::PlatformCALayer,(WTF::DestructionThread)1>::deref(v29);
                WebKit::RemoteLayerTreeTransaction::~RemoteLayerTreeTransaction(&v104, v44);
                v45 = WebKit::RemoteLayerTreeTransaction::RemoteLayerTreeTransaction(v20 + 992 * v22, v98);
                v47 = v102;
                v102 = 0;
                *(v45 + 960) = v47;
                *(v45 + 968) = v103;
                HIDWORD(v92) = ++v22;
                v48 = v102;
                v102 = 0;
                v2 = v90;
                if (v48)
                {
                  WebCore::ScrollingStateTree::operator delete();
                }

                WebKit::RemoteLayerTreeTransaction::~RemoteLayerTreeTransaction(v98, v46);
                v23 += 4;
              }

              while (v23 != v86);
              v20 = v91;
              v6 = v87;
            }
          }

          else
          {
            v20 = 0;
          }

          if (HIDWORD(v92))
          {
            v49 = 992 * HIDWORD(v92);
            do
            {
              WebKit::RemoteLayerBackingStoreCollection::willCommitLayerTree(v15, v20);
              v20 = (v20 + 992);
              v49 -= 992;
            }

            while (v49);
          }

          v50 = *(this + 5);
          v51 = IPC::Encoder::operator new(0x238, v17);
          *v51 = 1383;
          *(v51 + 2) = 0;
          *(v51 + 3) = 0;
          *(v51 + 1) = v50;
          *(v51 + 68) = 0;
          *(v51 + 70) = 0;
          *(v51 + 69) = 0;
          IPC::Encoder::encodeHeader(v51);
          IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v51, HIDWORD(v92));
          if (HIDWORD(v92))
          {
            v52 = v91;
            do
            {
              IPC::ArgumentCoder<WebKit::RemoteLayerTreeTransaction,void>::encode(v51, v52);
              v53 = v52 + 960;
              IPC::ArgumentCoder<WebKit::RemoteScrollingCoordinatorTransaction,void>::encode(v51, v53);
              v52 = (v53 + 32);
            }

            while (v52 != (v91 + 992 * HIDWORD(v92)));
            v105 = 0;
            v104 = 0;
            v54 = v91;
            v55 = (v91 + 992 * HIDWORD(v92));
            do
            {
              WebKit::RemoteLayerBackingStoreCollection::didFlushLayers(v15, v54, v98);
              v57 = HIDWORD(v98[1]);
              v58 = HIDWORD(v98[1]) + HIDWORD(v105);
              if (v58 > v105)
              {
                if (v105 + (v105 >> 1) <= v105 + 1)
                {
                  v59 = v105 + 1;
                }

                else
                {
                  v59 = v105 + (v105 >> 1);
                }

                if (v59 > v58)
                {
                  v58 = v59;
                }

                if (v58 <= 0x10)
                {
                  v60 = 16;
                }

                else
                {
                  v60 = v58;
                }

                WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(&v104, v60);
                v57 = HIDWORD(v98[1]);
              }

              if (v57)
              {
                v61 = v98[0];
                v62 = v104;
                v63 = 8 * v57;
                v64 = HIDWORD(v105);
                do
                {
                  v65 = *v61;
                  *v61 = 0;
                  v61 = (v61 + 8);
                  *(v62 + 8 * v64++) = v65;
                  v63 -= 8;
                }

                while (v63);
                HIDWORD(v105) = v64;
              }

              WTF::Vector<std::unique_ptr<WebKit::ThreadSafeImageBufferSetFlusher>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v98, v56);
              v54 = (v54 + 992);
            }

            while (v54 != v55);
            v66 = HIDWORD(v105) != 0;
          }

          else
          {
            v66 = 0;
            v105 = 0;
            v104 = 0;
          }

          WebKit::WebPage::didUpdateRendering(v5, v66);
          if (atomic_exchange((*(this + 30) + 16), 1u))
          {
            __break(0xC471u);
            JUMPOUT(0x19D8D4A58);
          }

          v67 = *(v2 + 32);
          v68 = *(this + 29);
          v69 = *(this + 30);
          if (v69)
          {
            atomic_fetch_add(v69, 1u);
          }

          v98[0] = v69;
          v98[1] = v51;
          v70 = v104;
          v104 = 0;
          v99 = v70;
          v71 = v105;
          v72 = HIDWORD(v105);
          v105 = 0;
          v100 = __PAIR64__(v72, v71);
          v101 = v67;
          v73 = WTF::fastMalloc(0x30);
          *v73 = &unk_1F10EB310;
          *(v73 + 8) = v69;
          v98[0] = 0;
          v98[1] = 0;
          *(v73 + 16) = v51;
          *(v73 + 24) = v99;
          v99 = 0;
          v100 = 0;
          *(v73 + 32) = v71;
          *(v73 + 36) = v72;
          *(v73 + 40) = v101;
          *&v96 = v73;
          (*(*v68 + 48))(v68, &v96);
          v75 = v96;
          *&v96 = 0;
          if (v75)
          {
            (*(*v75 + 8))(v75);
          }

          WTF::Vector<std::unique_ptr<WebKit::ThreadSafeImageBufferSetFlusher>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v99, v74);
          v77 = v98[1];
          v98[1] = 0;
          if (v77)
          {
            IPC::Encoder::~Encoder(v77, v76);
            bmalloc::api::tzoneFree(v82, v83);
          }

          v78 = v98[0];
          v98[0] = 0;
          if (v78)
          {
            WTF::ThreadSafeRefCounted<WebKit::RemoteLayerTreeDrawingArea::BackingStoreFlusher,(WTF::DestructionThread)0>::deref(v78, v76);
          }

          WTF::Vector<std::unique_ptr<WebKit::ThreadSafeImageBufferSetFlusher>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v104, v76);
          WTF::Vector<std::pair<WebKit::RemoteLayerTreeTransaction,WebKit::RemoteScrollingCoordinatorTransaction>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v91, v79);
          if (v15)
          {
            WebKit::RemoteLayerBackingStoreCollection::deref(v15);
          }

          *(this + 226) = v6;
        }
      }
    }

    CFRelease(*(v2 - 8));
  }
}

void sub_19D8D4ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (v18[2] == 1)
  {
    (*(*v18 + 8))(v18);
  }

  else
  {
    --v18[2];
  }

  *(v17 + 226) = a14;
  CFRelease(*(a17 - 8));
  _Unwind_Resume(a1);
}

uint64_t WebKit::RemoteLayerTreeDrawingArea::scheduleRenderingUpdateTimerFired(uint64_t this)
{
  v1 = this;
  if (*(this + 224) == 1)
  {
    *(this + 225) = 1;
  }

  else if ((*(this + 200) & 0xFFFFFFFFFFFFLL) == 0 || *((*(this + 200) & 0xFFFFFFFFFFFFLL) + 8) == 0.0)
  {
    this = WebCore::TimerBase::start();
  }

  *(v1 + 368) = 0;
  return this;
}

void WebKit::RemoteLayerTreeDrawingArea::setViewExposedRect(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 160) = *(a2 + 16);
  *(a1 + 144) = v2;
  v3 = *(*(a1 + 48) + 8);
  if (v3)
  {
    CFRetain(*(v3 - 8));
    v4 = WebKit::WebPage::localMainFrameView((v3 - 16));
    if (v4)
    {
      v5 = v4;
      ++*(v4 + 8);
      CFRelease(*(v3 - 8));
      WebCore::LocalFrameView::setViewExposedRect();
      if (v5[2] == 1)
      {
        (*(*v5 + 8))(v5);
      }

      else
      {
        --v5[2];
      }
    }

    else
    {
      v6 = *(v3 - 8);

      CFRelease(v6);
    }
  }

  else
  {
    __break(0xC471u);
  }
}

void sub_19D8D4E1C(_Unwind_Exception *exception_object)
{
  if (v1[2] == 1)
  {
    (*(*v1 + 8))(v1);
  }

  else
  {
    --v1[2];
  }

  _Unwind_Resume(exception_object);
}

void WebCore::Timer::~Timer(WebCore::Timer *this)
{
  *this = &unk_1F10EB388;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  WebCore::TimerBase::~TimerBase(this);
}

{
  *this = &unk_1F10EB388;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  WebCore::TimerBase::~TimerBase(this);

  bmalloc::api::tzoneFree(v3, v4);
}

{
  *this = &unk_1F10EB388;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  WebCore::TimerBase::~TimerBase(this);
}

_DWORD **WTF::Ref<WebKit::RemoteLayerTreeContext,WTF::RawPtrTraits<WebKit::RemoteLayerTreeContext>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeContext>>::~Ref(_DWORD **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (v2[4] == 1)
    {
      (*(*v2 + 8))(v2);
    }

    else
    {
      --v2[4];
    }
  }

  return a1;
}

void WebKit::RemoteLayerTreeDrawingArea::~RemoteLayerTreeDrawingArea(WebKit::RemoteLayerTreeDrawingArea *this)
{
  *this = &unk_1F10EAFB8;
  *(this + 3) = &unk_1F10EB1A0;
  *(this + 10) = &unk_1F10EB1C8;
  WebCore::Timer::~Timer((this + 296));
  v3 = *(this + 33);
  if (v3)
  {
    *(this + 33) = 0;
    *(this + 68) = 0;
    WTF::fastFree(v3, v2);
  }

  v4 = *(this + 30);
  *(this + 30) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCounted<WebKit::RemoteLayerTreeDrawingArea::BackingStoreFlusher,(WTF::DestructionThread)0>::deref(v4, v2);
  }

  v5 = *(this + 29);
  *(this + 29) = 0;
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  WebCore::Timer::~Timer((this + 168));
  WTF::Vector<WebKit::RemoteLayerTreeDrawingArea::RootLayerInfo,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 96, v6);
  WTF::Ref<WebKit::RemoteLayerTreeContext,WTF::RawPtrTraits<WebKit::RemoteLayerTreeContext>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeContext>>::~Ref(this + 11);

  WebKit::DrawingArea::~DrawingArea(this, v7);
}

{
  WebKit::RemoteLayerTreeDrawingArea::~RemoteLayerTreeDrawingArea(this);

  bmalloc::api::tzoneFree(v1, v2);
}

void non-virtual thunk toWebKit::RemoteLayerTreeDrawingArea::~RemoteLayerTreeDrawingArea(WebKit::RemoteLayerTreeDrawingArea *this)
{
  WebKit::RemoteLayerTreeDrawingArea::~RemoteLayerTreeDrawingArea((this - 24));
}

{
  WebKit::RemoteLayerTreeDrawingArea::~RemoteLayerTreeDrawingArea((this - 80));
}

{
  WebKit::RemoteLayerTreeDrawingArea::~RemoteLayerTreeDrawingArea((this - 24));

  bmalloc::api::tzoneFree(v1, v2);
}

{
  WebKit::RemoteLayerTreeDrawingArea::~RemoteLayerTreeDrawingArea((this - 80));

  bmalloc::api::tzoneFree(v1, v2);
}

uint64_t WebKit::RemoteLayerTreeDrawingArea::updateRootLayers(uint64_t this, unsigned int a2)
{
  if (a2)
  {
    v2 = 32 * a2;
    v3 = (this + 16);
    do
    {
      v15 = 0;
      v16 = 0;
      v4 = *(v3 - 1);
      if (v4)
      {
        ++v4[2];
        v14 = v4;
        v5 = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v15, 1uLL, &v14);
        v6 = HIDWORD(v16);
        v7 = v15;
        v8 = *v5;
        *v5 = 0;
        *(v7 + 8 * v6) = v8;
        v9 = v14;
        HIDWORD(v16) = v6 + 1;
        v14 = 0;
        if (v9)
        {
          if (v9[2] == 1)
          {
            (*(*v9 + 16))(v9);
          }

          else
          {
            --v9[2];
          }
        }

        v10 = *v3;
        if (*v3)
        {
          ++v10[2];
          v14 = v10;
          v12 = HIDWORD(v16);
          if (HIDWORD(v16) == v16)
          {
            WTF::Vector<WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>>(&v15, &v14);
          }

          else
          {
            v14 = 0;
            *(v15 + 8 * HIDWORD(v16)) = v10;
            HIDWORD(v16) = v12 + 1;
          }

          v13 = v14;
          v14 = 0;
          if (v13)
          {
            if (v13[2] == 1)
            {
              (*(*v13 + 16))(v13);
            }

            else
            {
              --v13[2];
            }
          }
        }
      }

      (*(**(v3 - 2) + 64))(*(v3 - 2), &v15);
      this = WTF::Vector<WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v15, v11);
      v3 += 4;
      v2 -= 32;
    }

    while (v2);
  }

  return this;
}

void sub_19D8D52A4(_Unwind_Exception *a1, void *a2, uint64_t a3, _DWORD *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    if (a4[2] == 1)
    {
      (*(*a4 + 16))(a4);
    }

    else
    {
      --a4[2];
    }
  }

  WTF::Vector<WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  _Unwind_Resume(a1);
}

uint64_t WebKit::RemoteLayerTreeDrawingArea::attachViewOverlayGraphicsLayer(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(result + 108);
  if (v4)
  {
    v5 = result;
    v6 = 0;
    for (i = *(result + 96) + 16; *(i + 8) != a2; i += 32)
    {
      if (v4 == ++v6)
      {
        return result;
      }
    }

    if (v6 >= v4)
    {
      __break(0xC471u);
    }

    else
    {
      if (a3)
      {
        ++*(a3 + 8);
      }

      v8 = *i;
      *i = a3;
      if (v8)
      {
        if (v8[2] == 1)
        {
          (*(*v8 + 16))(v8);
          LODWORD(v4) = *(v5 + 108);
        }

        else
        {
          --v8[2];
        }
      }

      v9 = *(v5 + 96);

      return WebKit::RemoteLayerTreeDrawingArea::updateRootLayers(v9, v4);
    }
  }

  return result;
}

_DWORD *WebKit::RemoteLayerTreeDrawingArea::addRootFrame(_DWORD *a1, unint64_t a2)
{
  v25[1] = *MEMORY[0x1E69E9840];
  result = WebCore::GraphicsLayer::create();
  v5 = v21;
  LODWORD(v6) = 18;
  v7 = a2;
  do
  {
    v6 = (v6 + 1);
    v8 = v7 > 9;
    v7 /= 0xAuLL;
  }

  while (v8);
  if (v6 - 18 < 0 || __OFADD__(v6 - 18, 18) || (result = WTF::tryFastCompactMalloc((v6 + 20)), (v9 = v22) == 0))
  {
    __break(0xC471u);
  }

  else
  {
    v10 = 0;
    *v22 = 2;
    v9[1] = v6;
    *(v9 + 1) = v9 + 5;
    v9[4] = 4;
    *(v9 + 18) = 8308;
    *(v9 + 5) = *"drawing area root ";
    v11 = a2;
    while (v10 != -25)
    {
      *(v25 + v10--) = (v11 % 0xA) | 0x30;
      v8 = v11 > 9;
      v11 /= 0xAuLL;
      if (!v8)
      {
        v12 = 0;
        while (v6 - 18 != v12)
        {
          *(v9 + v12 + 38) = *(v25 + v12 + v10 + 1);
          if (-v10 == ++v12)
          {
            v20 = v9;
            (*(*v5 + 48))(v5, &v20);
            v14 = v20;
            v20 = 0;
            if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v14, v13);
            }

            v15 = v21;
            v21 = 0;
            v22 = v15;
            v23 = 0;
            v24 = 0;
            v25[0] = a2;
            v16 = a1[27];
            if (v16 == a1[26])
            {
              WTF::Vector<WebKit::RemoteLayerTreeDrawingArea::RootLayerInfo,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::RemoteLayerTreeDrawingArea::RootLayerInfo>(a1 + 24, &v22);
              v19 = v24;
              v24 = 0;
              if (v19)
              {
                if (v19[2] == 1)
                {
                  (*(*v19 + 16))(v19);
                }

                else
                {
                  --v19[2];
                }
              }
            }

            else
            {
              v17 = (*(a1 + 12) + 32 * v16);
              ++v15[2];
              *v17 = v15;
              v23 = 0;
              v17[1] = 0;
              v17[2] = 0;
              v17[3] = a2;
              ++a1[27];
              v24 = 0;
            }

            result = v23;
            v23 = 0;
            if (result)
            {
              if (result[2] == 1)
              {
                goto LABEL_31;
              }

              --result[2];
            }

            goto LABEL_18;
          }
        }

        break;
      }
    }

    __break(1u);
LABEL_31:
    (*(*result + 16))(result);
LABEL_18:
    v18 = v22;
    v22 = 0;
    if (v18)
    {
      if (v18[2] == 1)
      {
        (*(*v18 + 16))(v18);
      }

      else
      {
        --v18[2];
      }
    }

    result = v21;
    v21 = 0;
    if (result)
    {
      if (result[2] == 1)
      {
        return (*(*result + 16))(result);
      }

      else
      {
        --result[2];
      }
    }
  }

  return result;
}

void sub_19D8D573C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, _DWORD *a11, char a12)
{
  WebKit::RemoteLayerTreeDrawingArea::RootLayerInfo::~RootLayerInfo(&a12);
  if (a11)
  {
    if (a11[2] == 1)
    {
      (*(*a11 + 16))(a11);
    }

    else
    {
      --a11[2];
    }
  }

  _Unwind_Resume(a1);
}

void WebKit::RemoteLayerTreeDrawingArea::RootLayerInfo::~RootLayerInfo(WebKit::RemoteLayerTreeDrawingArea::RootLayerInfo *this)
{
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    if (v2[2] == 1)
    {
      (*(*v2 + 16))(v2);
    }

    else
    {
      --v2[2];
    }
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    if (v3[2] == 1)
    {
      (*(*v3 + 16))(v3);
    }

    else
    {
      --v3[2];
    }
  }

  v4 = *this;
  *this = 0;
  if (v4)
  {
    if (v4[2] == 1)
    {
      (*(*v4 + 16))(v4);
    }

    else
    {
      --v4[2];
    }
  }
}

void WTF::Vector<WebKit::RemoteLayerTreeDrawingArea::RootLayerInfo,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::removeAllMatching<WebKit::RemoteLayerTreeDrawingArea::removeRootFrame(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_0>(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = *(a1 + 3);
  v5 = (*a1 + 32 * v4);
  if (v4)
  {
    v7 = 0;
    v8 = (v3 + 32);
    v9 = (*a1 + 32 * v4);
    v10 = v9;
    do
    {
      if (*(v8 - 1) == *a2)
      {
        v11 = v8 - 32;
        if (v9 != (*a1 + 32 * *(a1 + 3)))
        {
          if (v8 - 32 == v10)
          {
            v11 = v9;
          }

          else
          {
            WTF::VectorMover<false,WebKit::RemoteLayerTreeDrawingArea::RootLayerInfo>::moveOverlapping(v10, v8 - 32, v9);
            v11 = &v9[v3 - v10];
          }
        }

        WebKit::RemoteLayerTreeDrawingArea::RootLayerInfo::~RootLayerInfo((v8 - 32));
        ++v7;
        v10 = v8;
        v9 = v11;
      }

      v3 += 32;
      v12 = v8 >= v5;
      v8 += 32;
    }

    while (!v12);
    v3 = *a1;
    LODWORD(v4) = *(a1 + 3);
    v5 = v10;
  }

  else
  {
    v7 = 0;
    v9 = (*a1 + 32 * v4);
  }

  v13 = (v3 + 32 * v4);
  if (v5 != v13)
  {
    WTF::VectorMover<false,WebKit::RemoteLayerTreeDrawingArea::RootLayerInfo>::moveOverlapping(v5, v13, v9);
    LODWORD(v4) = *(a1 + 3);
  }

  *(a1 + 3) = v4 - v7;
}

double WebKit::RemoteLayerTreeDrawingArea::setRootCompositingLayer(WebKit::RemoteLayerTreeDrawingArea *this, WebCore::Frame *a2, WebCore::GraphicsLayer *a3)
{
  v4 = *(this + 12);
  v5 = *(this + 27);
  if (v5)
  {
    v8 = 32 * v5;
    v9 = (v4 + 24);
    do
    {
      if (*v9 == *(a2 + 4))
      {
        if (a3)
        {
          ++*(a3 + 2);
        }

        v10 = *(v9 - 2);
        *(v9 - 2) = a3;
        if (v10)
        {
          if (v10[2] == 1)
          {
            (*(*v10 + 16))(v10);
          }

          else
          {
            --v10[2];
          }
        }
      }

      v9 += 4;
      v8 -= 32;
    }

    while (v8);
    v4 = *(this + 12);
    v11 = *(this + 27);
  }

  else
  {
    v11 = 0;
  }

  WebKit::RemoteLayerTreeDrawingArea::updateRootLayers(v4, v11);
  if (*(this + 224) == 1)
  {
    *(this + 225) = 1;
  }

  else if ((*(this + 25) & 0xFFFFFFFFFFFFLL) == 0 || (result = *((*(this + 25) & 0xFFFFFFFFFFFFLL) + 8), result == 0.0))
  {

    WebCore::TimerBase::start();
  }

  return result;
}

double WebKit::RemoteLayerTreeDrawingArea::triggerRenderingUpdate(WebKit::RemoteLayerTreeDrawingArea *this)
{
  if (*(this + 224) == 1)
  {
    *(this + 225) = 1;
  }

  else if ((*(this + 25) & 0xFFFFFFFFFFFFLL) == 0 || (result = *((*(this + 25) & 0xFFFFFFFFFFFFLL) + 8), result == 0.0))
  {
    WebCore::TimerBase::start();
  }

  return result;
}

void WebKit::RemoteLayerTreeDrawingArea::updateGeometry(WebKit::RemoteLayerTreeDrawingArea *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v12 = *a2;
  v5 = *(*(a1 + 6) + 8);
  if (v5)
  {
    CFRetain(*(v5 - 8));
    if (!*(v5 + 848) || (*(v5 + 864) & 1) != 0 || !*(v5 + 856))
    {
      WebKit::WebPage::setSize((v5 - 16), &v12);
    }

    v8 = WebKit::WebPage::localMainFrameView((v5 - 16));
    v9 = v8;
    if (v8)
    {
      ++*(v8 + 2);
      if (*(v5 + 864) == 1)
      {
        WebCore::LocalFrameView::setAutoSizeFixedMinimumHeight(v8);
      }
    }

    WebKit::WebPage::layoutIfNeeded((v5 - 16));
    if (v9)
    {
      if (*(v5 + 848) || ((v10 = *(v5 + 856), HIDWORD(v10)) ? (v11 = v10 == 0) : (v11 = 1), !v11))
      {
        v12 = *(v9 + 172);
      }
    }

    WebKit::RemoteLayerTreeDrawingArea::triggerRenderingUpdate(a1);
    WTF::CompletionHandler<void ()(void)>::operator()(a5);
    if (v9)
    {
      if (*(v9 + 2) == 1)
      {
        (*(*v9 + 8))(v9);
      }

      else
      {
        --*(v9 + 2);
      }
    }

    CFRelease(*(v5 - 8));
  }

  else
  {
    __break(0xC471u);
  }
}

void sub_19D8D5CF0(_Unwind_Exception *a1)
{
  if (v1[2] == 1)
  {
    (*(*v1 + 8))(v1);
  }

  else
  {
    --v1[2];
  }

  CFRelease(*(v2 - 8));
  _Unwind_Resume(a1);
}

uint64_t WebKit::RemoteLayerTreeDrawingArea::shouldUseTiledBackingForFrameView(WebKit::RemoteLayerTreeDrawingArea *this, const WebCore::LocalFrameView *a2)
{
  v3 = WebCore::LocalFrameView::frame(a2);
  v4 = *(v3 + 120);
  if (v4 && *(v4 + 8) == v3)
  {
    return 1;
  }

  v5 = *(*(this + 6) + 8);
  if (v5)
  {
    return (*(*(*(v5 + 40) + 120) + 683) >> 1) & 1;
  }

  result = 92;
  __break(0xC471u);
  return result;
}

uint64_t WebKit::RemoteLayerTreeDrawingArea::updatePreferences(WebKit::RemoteLayerTreeDrawingArea *this, const WebKit::WebPreferencesStore *a2, const WTF::StringImpl *a3)
{
  v3 = *(*(this + 6) + 8);
  if (v3)
  {
    v6 = *(v3 + 40);
    ++*(v6 + 8);
    v7 = *(v6 + 120);
    *(v7 + 85) |= 2uLL;
    v8 = *(this + 27);
    if (v8)
    {
      v9 = *(this + 12);
      v10 = 32 * v8;
      do
      {
        v11 = *v9;
        v12 = WebCore::Settings::showDebugBorders(v7);
        (*(*v11 + 656))(v11, v12);
        v9 += 4;
        v10 -= 32;
      }

      while (v10);
    }

    v13 = *(this + 11);
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::useCGDisplayListsForDOMRenderingKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::useCGDisplayListsForDOMRenderingKey(void)::key = WebKit::WebPreferencesKey::useCGDisplayListsForDOMRenderingKey(void)::$_0::operator() const(void)::impl;
    }

    *(v13 + 209) = WebKit::WebPreferencesStore::getBoolValueForKey(a2, &WebKit::WebPreferencesKey::useCGDisplayListsForDOMRenderingKey(void)::key, a3);
    WebCore::DebugPageOverlays::settingsChanged();

    return WTF::RefCounted<WebCore::Page>::deref((v6 + 8));
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

void sub_19D8D5F20(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    WTF::RefCounted<WebCore::Page>::deref(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::RemoteLayerTreeDrawingArea::setDeviceScaleFactor(uint64_t a1, uint64_t *a2, float a3)
{
  v3 = *(*(a1 + 48) + 8);
  if (v3)
  {
    CFRetain(*(v3 - 8));
    WebKit::WebPage::setDeviceScaleFactor((v3 - 16), a3);
    CFRelease(*(v3 - 8));

    return WTF::CompletionHandler<void ()(void)>::operator()(a2);
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

double WebKit::RemoteLayerTreeDrawingArea::setLayerTreeStateIsFrozen(WebKit::RemoteLayerTreeDrawingArea *this, int a2)
{
  if (*(this + 224) != a2)
  {
    v2 = a2;
    kdebug_trace();
    *(this + 224) = v2;
    if ((v2 & 1) == 0 && *(this + 225) == 1)
    {
      *(this + 225) = 0;

      return WebKit::RemoteLayerTreeDrawingArea::startRenderingUpdateTimer(this);
    }
  }

  return result;
}

double WebKit::RemoteLayerTreeDrawingArea::startRenderingUpdateTimer(WebKit::RemoteLayerTreeDrawingArea *this)
{
  if ((*(this + 25) & 0xFFFFFFFFFFFFLL) == 0 || (result = *((*(this + 25) & 0xFFFFFFFFFFFFLL) + 8), result == 0.0))
  {
    WebCore::TimerBase::start();
  }

  return result;
}

void WebKit::RemoteLayerTreeDrawingArea::updateRenderingWithForcedRepaint(WebKit::RemoteLayerTreeDrawingArea *this)
{
  if ((*(this + 224) & 1) == 0)
  {
    v2 = *(*(this + 6) + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      v3 = *(v2 + 40);
      if (v3)
      {
        ++*(v3 + 2);
      }

      WebCore::Page::forceRepaintAllFrames(v3);
      if (v3)
      {
        WTF::RefCounted<WebCore::Page>::deref(v3 + 2);
      }

      CFRelease(*(v2 - 8));

      WebKit::RemoteLayerTreeDrawingArea::updateRendering(this);
    }

    else
    {
      __break(0xC471u);
    }
  }
}

void sub_19D8D6160(_Unwind_Exception *a1)
{
  if (v1)
  {
    WTF::RefCounted<WebCore::Page>::deref((v1 + 8));
  }

  CFRelease(*(v2 - 8));
  _Unwind_Resume(a1);
}

uint64_t WebKit::RemoteLayerTreeDrawingArea::updateRenderingWithForcedRepaintAsync(WebKit::RemoteLayerTreeDrawingArea *a1, uint64_t a2, uint64_t *a3)
{
  WebKit::RemoteLayerTreeDrawingArea::updateRenderingWithForcedRepaint(a1);

  return WTF::CompletionHandler<void ()(void)>::operator()(a3);
}

void WebKit::RemoteLayerTreeDrawingArea::exposedContentRect(WebKit::RemoteLayerTreeDrawingArea *this)
{
  v1 = *(*(this + 6) + 8);
  if (v1)
  {
    CFRetain(*(v1 - 8));
    v2 = WebKit::WebPage::localMainFrameView((v1 - 16));
    if (v2)
    {
      v3 = v2;
      ++*(v2 + 8);
      CFRelease(*(v1 - 8));
      WebCore::ScrollView::exposedContentRect(v3);
      if (*(v3 + 2) == 1)
      {
        (*(*v3 + 8))(v3);
      }

      else
      {
        --*(v3 + 2);
      }
    }

    else
    {
      CFRelease(*(v1 - 8));
    }
  }

  else
  {
    __break(0xC471u);
  }
}

void sub_19D8D62D0(_Unwind_Exception *exception_object)
{
  if (v1[2] == 1)
  {
    (*(*v1 + 8))(v1);
  }

  else
  {
    --v1[2];
  }

  _Unwind_Resume(exception_object);
}

void WebKit::RemoteLayerTreeDrawingArea::setExposedContentRect(WebKit::RemoteLayerTreeDrawingArea *this, const FloatRect *a2)
{
  v2 = *(*(this + 6) + 8);
  if (v2)
  {
    CFRetain(*(v2 - 8));
    v5 = WebKit::WebPage::localMainFrameView((v2 - 16));
    if (v5)
    {
      v6 = v5;
      ++*(v5 + 8);
      CFRelease(*(v2 - 8));
      WebCore::ScrollView::exposedContentRect(v6);
      v11 = v10 == a2->m_location.m_x && v7 == a2->m_location.m_y;
      if (!v11 || (v8 == a2->m_size.m_width ? (v12 = v9 == a2->m_size.m_height) : (v12 = 0), !v12))
      {
        WebCore::ScrollView::setExposedContentRect(v6, a2);
        if (*(this + 224) == 1)
        {
          *(this + 225) = 1;
        }

        else if ((*(this + 25) & 0xFFFFFFFFFFFFLL) == 0 || *((*(this + 25) & 0xFFFFFFFFFFFFLL) + 8) == 0.0)
        {
          WebCore::TimerBase::start();
        }
      }

      if (*(v6 + 2) == 1)
      {
        v13 = *(*v6 + 8);

        v13(v6);
      }

      else
      {
        --*(v6 + 2);
      }
    }

    else
    {
      v14 = *(v2 - 8);

      CFRelease(v14);
    }
  }

  else
  {
    __break(0xC471u);
  }
}

void sub_19D8D6490(_Unwind_Exception *exception_object)
{
  if (v1[2] == 1)
  {
    (*(*v1 + 8))(v1);
  }

  else
  {
    --v1[2];
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::RemoteLayerTreeDrawingArea::updateRendering(void)::$_1::~$_1(uint64_t a1, void *a2)
{
  WTF::Vector<std::unique_ptr<WebKit::ThreadSafeImageBufferSetFlusher>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 16, a2);
  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCounted<WebKit::RemoteLayerTreeDrawingArea::BackingStoreFlusher,(WTF::DestructionThread)0>::deref(v4, v3);
  }

  return a1;
}

void WebKit::RemoteLayerTreeDrawingArea::displayDidRefresh(WebKit::RemoteLayerTreeDrawingArea *this, void *a2)
{
  v3 = *(this + 227);
  *(this + 227) = 0;
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v14 = WebKit::WebProcess::operator new(0x370, a2);
    v4 = WebKit::WebProcess::WebProcess(v14);
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  if ((*(v4 + 802) & 1) == 0)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] commit];
  }

  if ((*(this + 228) & 1) != 0 || *(this + 368) == 1 && ((*(this + 41) & 0xFFFFFFFFFFFFLL) == 0 || *((*(this + 41) & 0xFFFFFFFFFFFFLL) + 8) == 0.0))
  {
    if (*(this + 224) == 1)
    {
      *(this + 225) = 1;
    }

    else if ((*(this + 25) & 0xFFFFFFFFFFFFLL) == 0 || *((*(this + 25) & 0xFFFFFFFFFFFFLL) + 8) == 0.0)
    {
      WebCore::TimerBase::start();
    }

    *(this + 228) = 0;
    *(this + 368) = 0;
  }

  else if (v3 && (*(this + 25) & 0xFFFFFFFFFFFFLL) != 0 && *((*(this + 25) & 0xFFFFFFFFFFFFLL) + 8) != 0.0)
  {
    *(this + 228) = 1;
  }

  else
  {
    v5 = *(this + 32);
    v15[0] = *(this + 31) + 1;
    v15[1] = v5;
    v6 = *(*(this + 6) + 8);
    if (v6)
    {
      CFRetain(*(v6 - 8));
      v7 = *(this + 5);
      v9 = IPC::Encoder::operator new(0x238, v8);
      *v9 = 1384;
      *(v9 + 2) = 0;
      *(v9 + 3) = 0;
      *(v9 + 1) = v7;
      *(v9 + 68) = 0;
      *(v9 + 70) = 0;
      *(v9 + 69) = 0;
      IPC::Encoder::encodeHeader(v9);
      v16 = v9;
      IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode(v9, v15);
      (*(*(v6 + 16) + 32))(v6 + 16, &v16, 0);
      v11 = v16;
      v16 = 0;
      if (v11)
      {
        IPC::Encoder::~Encoder(v11, v10);
        bmalloc::api::tzoneFree(v12, v13);
      }

      CFRelease(*(v6 - 8));
    }

    else
    {
      __break(0xC471u);
    }
  }
}

uint64_t WebKit::RemoteLayerTreeDrawingArea::mainFrameContentSizeChanged(uint64_t result, uint64_t a2, int32x2_t *a3)
{
  v3 = *(result + 108);
  if (v3)
  {
    v4 = 0;
    for (i = *(result + 96); i[3] != a2; i += 4)
    {
      if (v3 == ++v4)
      {
        return result;
      }
    }

    if (v4 >= v3)
    {
      __break(0xC471u);
    }

    else
    {
      v6 = *i;
      v7 = vcvt_f32_s32(*a3);
      return (*(*v6 + 168))(v6, &v7);
    }
  }

  return result;
}

uint64_t WebKit::RemoteLayerTreeDrawingArea::activityStateDidChange(WebKit::RemoteLayerTreeDrawingArea *a1, int a2, uint64_t a3, WebKit::RemoteLayerTreeDrawingArea *this)
{
  if (a3)
  {
    *(*(a1 + 11) + 208) = 1;
    *(a1 + 35) = a3;
    WebKit::RemoteLayerTreeDrawingArea::startRenderingUpdateTimer(a1);
  }

  return WTF::CompletionHandler<void ()(void)>::operator()(this);
}

double WebKit::RemoteLayerTreeDrawingArea::dispatchAfterEnsuringDrawing(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  *(*(a1 + 88) + 208) = 1;
  v3 = *(a1 + 276);
  if (v3 == *(a1 + 272))
  {
    WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>&>(a1 + 264, &v5);
  }

  else
  {
    *(*(a1 + 264) + 8 * v3) = a2;
    ++*(a1 + 276);
  }

  return WebKit::RemoteLayerTreeDrawingArea::triggerRenderingUpdate(a1);
}

void WebKit::RemoteLayerTreeDrawingArea::adoptLayersFromDrawingArea(WebKit::RemoteLayerTreeContext **this, WebKit::RemoteLayerTreeContext **a2)
{
  if (*(a2 + 32))
  {
    __break(0xC471u);
  }

  else
  {
    WebKit::RemoteLayerTreeContext::adoptLayersFromContext(this[11], a2[11]);
  }
}

uint64_t WebKit::RemoteLayerTreeDrawingArea::scheduleRenderingUpdate(WebKit::RemoteLayerTreeDrawingArea *this)
{
  if ((*(this + 368) & 1) == 0)
  {
    kdebug_trace();
    *(this + 368) = 1;
    if (*(this + 356) == 1)
    {
      if ((*(this + 227) & 1) == 0)
      {
        WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 2, this);
        v3 = *(this + 1);
        if (v3)
        {
          atomic_fetch_add(v3, 1u);
        }

        v4 = WTF::fastMalloc(0x10);
        *v4 = &unk_1F10EB360;
        v4[1] = v3;
        v5 = v4;
        WTF::callOnMainRunLoop();
        if (v5)
        {
          (*(*v5 + 8))(v5);
        }
      }
    }

    else
    {
      WebCore::TimerBase::start();
    }
  }

  return 1;
}

void sub_19D8D6A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *WebKit::RemoteLayerTreeDrawingArea::renderingUpdateFramesPerSecondChanged(WebKit::RemoteLayerTreeDrawingArea *this)
{
  v1 = *(*(this + 6) + 8);
  if (!v1)
  {
    goto LABEL_14;
  }

  v3 = *(v1 + 40);
  if (v3)
  {
    ++*(v3 + 2);
  }

  updated = WebCore::Page::preferredRenderingUpdateFramesPerSecond();
  v5 = updated;
  if ((updated & 0x100000000) != 0 && ((*(this + 356) & 1) == 0 || *(this + 88) != updated))
  {
    v8 = *(*(this + 6) + 8);
    if (v8)
    {
      CFRetain(*(v8 - 8));
      v9 = *(this + 5);
      v11 = IPC::Encoder::operator new(0x238, v10);
      *v11 = 1385;
      *(v11 + 2) = 0;
      *(v11 + 3) = 0;
      *(v11 + 1) = v9;
      *(v11 + 68) = 0;
      *(v11 + 70) = 0;
      *(v11 + 69) = 0;
      IPC::Encoder::encodeHeader(v11);
      v16 = v11;
      IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v11, v5);
      (*(*(v8 + 16) + 32))(v8 + 16, &v16, 0);
      v13 = v16;
      v16 = 0;
      if (v13)
      {
        IPC::Encoder::~Encoder(v13, v12);
        bmalloc::api::tzoneFree(v14, v15);
      }

      CFRelease(*(v8 - 8));
      goto LABEL_7;
    }

LABEL_14:
    __break(0xC471u);
    JUMPOUT(0x19D8D6BFCLL);
  }

LABEL_7:
  *(this + 88) = v5;
  *(this + 356) = BYTE4(v5);
  result = WebCore::Page::preferredRenderingUpdateInterval(v3);
  *(this + 45) = v7;
  if (v3)
  {
    return WTF::RefCounted<WebCore::Page>::deref(v3 + 2);
  }

  return result;
}

void sub_19D8D6C20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, IPC::Encoder *a10)
{
  CFRelease(*(v11 - 8));
  if (v10)
  {
    WTF::RefCounted<WebCore::Page>::deref((v10 + 8));
  }

  _Unwind_Resume(a1);
}

_DWORD *WebKit::DrawingArea::deref(_DWORD *this)
{
  if (this[4] == 1)
  {
    return (*(*this + 24))();
  }

  --this[4];
  return this;
}

__n128 WebKit::RemoteLayerTreeDrawingArea::viewExposedRect@<Q0>(__n128 *this@<X0>, __n128 *a2@<X8>)
{
  result = this[9];
  *a2 = result;
  a2[1].n128_u32[0] = this[10].n128_u32[0];
  return result;
}

double WebCore::GraphicsLayerClient::transformMatrixForProperty@<D0>(_OWORD *a1@<X8>)
{
  a1[4] = xmmword_19E703218;
  a1[5] = unk_19E703228;
  a1[6] = xmmword_19E703238;
  a1[7] = unk_19E703248;
  *a1 = xmmword_19E7031D8;
  a1[1] = unk_19E7031E8;
  result = 0.0;
  a1[2] = xmmword_19E7031F8;
  a1[3] = unk_19E703208;
  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::BufferSetBackendHandle>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::BufferSetBackendHandle>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::BufferSetBackendHandle>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::BufferSetBackendHandle>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 1) != -1)
      {
        std::unique_ptr<WebKit::BufferSetBackendHandle>::reset[abi:sn200100](v4, 0);
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t *std::unique_ptr<WebKit::BufferSetBackendHandle>::reset[abi:sn200100](uint64_t *result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*(v2 + 88) == 1)
    {
      if (*(v2 + 80) != 255)
      {
        if (!*(v2 + 80) && *(v2 + 32) == 1)
        {
          v3 = *(v2 + 24);
          *(v2 + 24) = 0;
          if (v3)
          {
            CFRelease(v3);
          }
        }

        WTF::MachSendRight::~MachSendRight(v2);
      }

      *(v2 + 80) = -1;
    }

    return WTF::fastFree(v2, a2);
  }

  return result;
}

WebCore::TimerBase *WebCore::Timer::Timer<WebKit::RemoteLayerTreeDrawingArea,WebKit::RemoteLayerTreeDrawingArea>(WebCore::TimerBase *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *WebCore::TimerBase::TimerBase(a1) = &unk_1F10EB388;
  v8 = WTF::fastMalloc(0x20);
  *v8 = &unk_1F10EB2E8;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  *(a1 + 6) = v8;
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebCore::Timer::Timer<WebKit::RemoteLayerTreeDrawingArea,WebKit::RemoteLayerTreeDrawingArea>(WebKit::RemoteLayerTreeDrawingArea &,void (WebKit::RemoteLayerTreeDrawingArea::*)(void))::{lambda(void)#1},void>::call(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  ++v2[4];
  v3 = a1[3];
  v4 = (v2 + (v3 >> 1));
  if (v3)
  {
    v1 = *(*v4 + v1);
  }

  result = v1(v4);
  if (v2[4] == 1)
  {
    v6 = *(*v2 + 24);

    return v6(v2);
  }

  else
  {
    --v2[4];
  }

  return result;
}

void sub_19D8D7138(_Unwind_Exception *exception_object)
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

uint64_t WTF::ThreadSafeRefCounted<WebKit::RemoteLayerTreeDrawingArea::BackingStoreFlusher,(WTF::DestructionThread)0>::deref(uint64_t this, void *a2)
{
  add = atomic_fetch_add(this, 0xFFFFFFFF);
  if (add == 1)
  {
    v4 = this;
    atomic_store(add, this);
    v5 = *(this + 8);
    *(v4 + 1) = 0;
    if (v5)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v5);
    }

    return WTF::fastFree(v4, a2);
  }

  return this;
}

uint64_t WTF::Vector<WebKit::RemoteLayerTreeDrawingArea::RootLayerInfo,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v7 = *a1;
    v8 = 32 * v3;
    do
    {
      WebKit::RemoteLayerTreeDrawingArea::RootLayerInfo::~RootLayerInfo(v7);
      v7 = (v9 + 32);
      v8 -= 32;
    }

    while (v8);
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

uint64_t WTF::Vector<WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>>::destruct(*a1, (*a1 + 8 * v3));
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

_DWORD *WTF::VectorDestructor<true,WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>>::destruct(_DWORD *result, _DWORD **a2)
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
        if (result[2] == 1)
        {
          result = (*(*result + 16))(result);
        }

        else
        {
          --result[2];
        }
      }

      ++v3;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t *WTF::Vector<WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::Ref<WebCore::GraphicsLayer,WTF::RawPtrTraits<WebCore::GraphicsLayer>,WTF::DefaultRefDerefTraits<WebCore::GraphicsLayer>>>(uint64_t a1, unint64_t a2)
{
  result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *(a1 + 12);
  v5 = *a1;
  v6 = *result;
  *result = 0;
  *(v5 + 8 * v4) = v6;
  *(a1 + 12) = v4 + 1;
  return result;
}

void *WTF::Vector<WebKit::RemoteLayerTreeDrawingArea::RootLayerInfo,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::RemoteLayerTreeDrawingArea::RootLayerInfo>(_DWORD *a1, unint64_t a2)
{
  result = WTF::Vector<WebKit::RemoteLayerTreeDrawingArea::RootLayerInfo,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a1[3] + 1, a2);
  v4 = (*a1 + 32 * a1[3]);
  v5 = *result;
  *(v5 + 8) = *(*result + 8) + 1;
  *v4 = v5;
  v6 = result[1];
  result[1] = 0;
  v4[1] = v6;
  v7 = result[2];
  result[2] = 0;
  v4[2] = v7;
  v4[3] = result[3];
  ++a1[3];
  return result;
}

unint64_t WTF::Vector<WebKit::RemoteLayerTreeDrawingArea::RootLayerInfo,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(_DWORD *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 32 * a1[3] <= a3)
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

    WTF::Vector<WebKit::RemoteLayerTreeDrawingArea::RootLayerInfo,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::RemoteLayerTreeDrawingArea::RootLayerInfo,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

_DWORD *WTF::Vector<WebKit::RemoteLayerTreeDrawingArea::RootLayerInfo,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(_DWORD *result, unint64_t a2)
{
  if (result[2] < a2)
  {
    v2 = a2;
    if (a2 >> 27)
    {
      __break(0xC471u);
      JUMPOUT(0x19D8D7550);
    }

    v3 = result;
    v4 = *result;
    v5 = (*result + 32 * result[3]);
    v6 = WTF::fastMalloc((32 * a2));
    v3[2] = v2;
    *v3 = v6;
    result = WTF::VectorMover<false,WebKit::RemoteLayerTreeDrawingArea::RootLayerInfo>::move(v4, v5, v6);
    if (v3 + 4 != v4 && v4 != 0)
    {
      if (*v3 == v4)
      {
        *v3 = 0;
        v3[2] = 0;
      }

      return WTF::fastFree(v4, v7);
    }
  }

  return result;
}

_DWORD *WTF::VectorMover<false,WebKit::RemoteLayerTreeDrawingArea::RootLayerInfo>::move(_DWORD *result, void *a2, void *a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      v6 = *v5;
      *(v6 + 8) = *(*v5 + 8) + 1;
      *a3 = v6;
      v7 = v5[1];
      v5[1] = 0;
      a3[1] = v7;
      v8 = v5[2];
      v5[2] = 0;
      a3[2] = v8;
      a3[3] = v5[3];
      v9 = v5[2];
      v5[2] = 0;
      if (v9)
      {
        if (v9[2] == 1)
        {
          (*(*v9 + 16))(v9);
        }

        else
        {
          --v9[2];
        }
      }

      v10 = v5[1];
      v5[1] = 0;
      if (v10)
      {
        if (v10[2] == 1)
        {
          (*(*v10 + 16))(v10);
        }

        else
        {
          --v10[2];
        }
      }

      result = *v5;
      *v5 = 0;
      if (result)
      {
        if (result[2] == 1)
        {
          result = (*(*result + 16))(result);
        }

        else
        {
          --result[2];
        }
      }

      a3 += 4;
      v5 += 4;
    }

    while (v5 != a2);
  }

  return result;
}

char *WTF::VectorMover<false,WebKit::RemoteLayerTreeDrawingArea::RootLayerInfo>::moveOverlapping(char *result, char *a2, char *a3)
{
  v3 = a2;
  v4 = result;
  if (result <= a3)
  {
    if (a2 != result)
    {
      v5 = &a3[a2 - result - 16];
      do
      {
        v6 = v3;
        v7 = *(v3 - 4);
        v3 -= 32;
        ++*(v7 + 8);
        *(v5 - 2) = v7;
        v8 = *(v3 + 1);
        *(v3 + 1) = 0;
        *(v5 - 1) = v8;
        v9 = *(v3 + 2);
        *(v3 + 2) = 0;
        *v5 = v9;
        *(v5 + 1) = *(v3 + 3);
        v10 = *(v3 + 2);
        *(v3 + 2) = 0;
        if (v10)
        {
          if (v10[2] == 1)
          {
            (*(*v10 + 16))(v10);
          }

          else
          {
            --v10[2];
          }
        }

        v11 = *(v6 - 3);
        *(v6 - 3) = 0;
        if (v11)
        {
          if (v11[2] == 1)
          {
            (*(*v11 + 16))(v11);
          }

          else
          {
            --v11[2];
          }
        }

        result = *v3;
        *v3 = 0;
        if (result)
        {
          if (*(result + 2) == 1)
          {
            result = (*(*result + 16))(result);
          }

          else
          {
            --*(result + 2);
          }
        }

        v5 -= 32;
      }

      while (v3 != v4);
    }
  }

  else
  {

    return WTF::VectorMover<false,WebKit::RemoteLayerTreeDrawingArea::RootLayerInfo>::move(result, a2, a3);
  }

  return result;
}

_DWORD *WTF::RefCounted<WebCore::Page>::deref(_DWORD *result)
{
  if (*result == 1)
  {
    v2 = MEMORY[0x19EB0E5F0](result - 2);

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

atomic_ullong *WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::PlatformCALayer,(WTF::DestructionThread)1>::deref(atomic_ullong *result)
{
  v1 = result;
  while (1)
  {
    v2 = *result;
    if ((*result & 1) == 0)
    {
      break;
    }

    v3 = *result;
    atomic_compare_exchange_strong_explicit(result, &v3, v2 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v3 == v2)
    {
      if (v2 == 3)
      {
        v4 = WTF::fastMalloc(0x10);
        *v4 = &unk_1F10EB3B0;
        v4[1] = v1;
        v6 = v4;
        WTF::ensureOnMainThread();
        result = v6;
        if (v6)
        {
          return (*(*v6 + 8))(v6);
        }
      }

      return result;
    }
  }

  v5 = *result;

  return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::PlatformCALayer,(WTF::DestructionThread)1>(v5);
}

void sub_19D8D7938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

atomic_uchar *WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::PlatformCALayer,(WTF::DestructionThread)1>(atomic_uchar *this)
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
  if (v5 == 1)
  {
    if (v3)
    {
      return this;
    }
  }

  else
  {
    v7 = v3;
    this = WTF::Lock::unlockSlow(v1);
    if (v7)
    {
      return this;
    }
  }

  v6 = WTF::fastMalloc(0x18);
  *v6 = &unk_1F10EB3D8;
  *(v6 + 1) = v1;
  *(v6 + 2) = v4;
  v8 = v6;
  WTF::ensureOnMainThread();
  this = v8;
  if (v8)
  {
    return (*(*v8 + 8))(v8);
  }

  return this;
}

void sub_19D8D7A78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Detail::CallableWrapper<void WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::PlatformCALayer,(WTF::DestructionThread)1>(void)::{lambda(void)#1},void>::call(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  result = *(a1 + 16);
  if (result)
  {
    result = (*(*result + 16))(result);
  }

  v4 = 0;
  v5 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    result = MEMORY[0x19EB01E30](v3);
  }

  v6 = *(v3 + 16) - 1;
  *(v3 + 16) = v6;
  atomic_compare_exchange_strong_explicit(v3, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 == 1)
  {
    if (v6)
    {
      return result;
    }
  }

  else
  {
    v7 = v6;
    result = WTF::Lock::unlockSlow(v3);
    if (v7)
    {
      return result;
    }
  }

  return WTF::fastFree(v3, a2);
}

uint64_t WTF::Vector<std::pair<WebKit::RemoteLayerTreeTransaction,WebKit::RemoteScrollingCoordinatorTransaction>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,std::pair<WebKit::RemoteLayerTreeTransaction,WebKit::RemoteScrollingCoordinatorTransaction>>::destruct(*a1, (*a1 + 992 * v3));
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

void WTF::VectorDestructor<true,std::pair<WebKit::RemoteLayerTreeTransaction,WebKit::RemoteScrollingCoordinatorTransaction>>::destruct(WebKit::RemoteLayerTreeTransaction *a1, WebKit::RemoteLayerTreeTransaction *a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    do
    {
      v4 = *(v3 + 120);
      *(v3 + 120) = 0;
      if (v4)
      {
        WebCore::ScrollingStateTree::operator delete();
      }

      WebKit::RemoteLayerTreeTransaction::~RemoteLayerTreeTransaction(v3, a2);
      v3 = (v3 + 992);
    }

    while (v3 != a2);
  }
}

uint64_t WTF::Vector<std::unique_ptr<WebKit::ThreadSafeImageBufferSetFlusher>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
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

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteLayerTreeDrawingArea::updateRendering(void)::$_1,void>::~CallableWrapper(uint64_t a1, void *a2)
{
  *a1 = &unk_1F10EB310;
  WTF::Vector<std::unique_ptr<WebKit::ThreadSafeImageBufferSetFlusher>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 24, a2);
  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 16), 0);
  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCounted<WebKit::RemoteLayerTreeDrawingArea::BackingStoreFlusher,(WTF::DestructionThread)0>::deref(v4, v3);
  }

  return a1;
}

{
  *a1 = &unk_1F10EB310;
  WTF::Vector<std::unique_ptr<WebKit::ThreadSafeImageBufferSetFlusher>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 24, a2);
  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 16), 0);
  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCounted<WebKit::RemoteLayerTreeDrawingArea::BackingStoreFlusher,(WTF::DestructionThread)0>::deref(v4, v3);
  }

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteLayerTreeDrawingArea::updateRendering(void)::$_1,void>::call(uint64_t a1)
{
  v2 = *(a1 + 8);
  kdebug_trace();
  v24 = 0;
  v3 = *(a1 + 36);
  if (v3)
  {
    v4 = *(a1 + 24);
    v5 = 8 * v3 - 8;
    do
    {
      v6 = (*(**v4 + 16))(*v4, &v24);
      v7 = v6;
      ++v4;
      if (v5)
      {
        v8 = v6;
      }

      else
      {
        v8 = 0;
      }

      v5 -= 8;
    }

    while ((v8 & 1) != 0);
    v9 = *(a1 + 16);
    if (v24)
    {
      v10 = *(v24 - 12);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
    v9 = *(a1 + 16);
    v7 = 1;
  }

  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v9, v10);
  if (!v24)
  {
    v12 = 0;
    v11 = 0;
    goto LABEL_33;
  }

  v11 = *(v24 - 4);
  v12 = v24 + 16 * v11;
  if (!*(v24 - 12))
  {
LABEL_33:
    v14 = v12;
    v12 = v24 + 16 * v11;
    goto LABEL_16;
  }

  if (!v11)
  {
    v15 = 0;
    v14 = v24;
    goto LABEL_18;
  }

  v13 = 16 * v11;
  v14 = v24;
  while ((*v14 + 1) <= 1)
  {
    v14 += 16;
    v13 -= 16;
    if (!v13)
    {
      v14 = v12;
      break;
    }
  }

LABEL_16:
  if (v24)
  {
    v15 = *(v24 - 4);
LABEL_18:
    v16 = v24 + 16 * v15;
    goto LABEL_19;
  }

  v16 = 0;
LABEL_19:
  while (v14 != v16)
  {
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v9, *v14);
    if (*(v14 + 8))
    {
      v17 = IPC::Encoder::grow(v9, 1uLL, 1);
      if (!v18)
      {
        result = 1067;
        __break(0xC471u);
        return result;
      }

      *v17 = 1;
      IPC::ArgumentCoder<WebKit::BufferSetBackendHandle,void>::encode(v9, *(v14 + 8));
    }

    else
    {
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v9, 0);
    }

    do
    {
      v14 += 16;
    }

    while (v14 != v12 && (*v14 + 1) <= 1);
  }

  atomic_store(0, (v2 + 16));
  IPC::Connection::sendMessageImpl(*(v2 + 8), (a1 + 16), 0, 0);
  if (v24)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::BufferSetBackendHandle>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::BufferSetBackendHandle>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::BufferSetBackendHandle>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::BufferSetBackendHandle>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v24, v19);
  }

  v20 = kdebug_trace();
  WTF::RunLoop::mainSingleton(v20);
  v21 = *(a1 + 40);
  v22 = WTF::fastMalloc(0x18);
  *v22 = &unk_1F10EB338;
  *(v22 + 8) = v21;
  *(v22 + 16) = v7;
  v24 = v22;
  WTF::RunLoop::dispatch();
  result = v24;
  v24 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_19D8D8080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void WTF::Detail::CallableWrapper<WebKit::RemoteLayerTreeDrawingArea::updateRendering(void)::$_1::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1, void *a2)
{
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v12 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v12);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  v13 = *(a1 + 8);
  v4 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v3 + 17, &v13);
  if (v4)
  {
    v5 = v4;
    CFRetain(*(v4 + 8));
    v6 = *(v5 + 72);
    if (v6 && !*(v6 + 32))
    {
      ++*(v6 + 16);
      v7 = *(*(v6 + 48) + 8);
      if (!v7)
      {
        __break(0xC471u);
        return;
      }

      v8 = *(a1 + 16);
      v9 = CFRetain(*(v7 - 8));
      WTF::MonotonicTime::now(v9);
      WebKit::WebPage::didFlushLayerTreeAtTime((v7 - 16), v8, v10);
      CFRelease(*(v7 - 8));
      (*(*v6 + 312))(v6);
      (*(*v6 + 320))(v6);
      if (*(v6 + 16) == 1)
      {
        (*(*v6 + 24))(v6);
      }

      else
      {
        --*(v6 + 16);
      }
    }

    v11 = *(v5 + 8);

    CFRelease(v11);
  }
}

void sub_19D8D82C4(_Unwind_Exception *a1)
{
  CFRelease(*(v3 - 8));
  if (v2[4] == 1)
  {
    (*(*v2 + 24))(v2);
  }

  else
  {
    --v2[4];
  }

  CFRelease(*(v1 + 8));
  _Unwind_Resume(a1);
}

void *WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>&>(uint64_t a1, unint64_t a2)
{
  result = WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  *(*a1 + 8 * (*(a1 + 12))++) = *result;
  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteLayerTreeDrawingArea::scheduleRenderingUpdate(void)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10EB360;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteLayerTreeDrawingArea::scheduleRenderingUpdate(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10EB360;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

double WTF::Detail::CallableWrapper<WebKit::RemoteLayerTreeDrawingArea::scheduleRenderingUpdate(void)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      *(v2 + 368) = 0;
      if (*(v2 + 224) == 1)
      {
        *(v2 + 225) = 1;
      }

      else if ((*(v2 + 200) & 0xFFFFFFFFFFFFLL) == 0 || (result = *((*(v2 + 200) & 0xFFFFFFFFFFFFLL) + 8), result == 0.0))
      {
        WebCore::TimerBase::start();
      }
    }
  }

  return result;
}

uint64_t WebKit::mayContainEditableElementsInRect(WebKit *this, UIView *a2, const WebCore::FloatRect *a3)
{
  v29 = &v31;
  v30 = 16;
  WebCore::FloatRect::operator CGRect();
  WebKit::collectDescendantViewsInRect(&v29, this, v5, v6, v7, v8);
  if (HIDWORD(v30))
  {
    v10 = HIDWORD(v30);
    v11 = v29 - 1;
    v12 = 1;
    while (1)
    {
      v13 = v11[v10];
      if (v13)
      {
        v14 = v13;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && (v15 = [v13 layer], (v17 = WebKit::RemoteLayerTreeNode::forCALayer(v15, v16)) != 0))
      {
        WebCore::FloatRect::operator CGRect();
        [v13 convertRect:this fromView:?];
        v26.origin.x = v18;
        v26.origin.y = v19;
        v26.size.width = v20;
        v26.size.height = v21;
        WebCore::FloatRect::FloatRect(&v27, &v26);
        WebCore::IntRect::IntRect(&v28, &v27);
        if (WebCore::EventRegion::containsEditableElementsInRect((v17 + 64), &v28))
        {
          v22 = 1;
          v3 = 1;
        }

        else
        {
          v23 = *(v17 + 176);
          if (v23 == 1 && (WebCore::Region::Region(&v26, &v28), v24 = WebCore::Region::contains((v17 + 64), &v26), WebCore::Region::~Region(&v26), (v24 & 1) != 0))
          {
            v3 = 0;
            v22 = 1;
          }

          else
          {
            v22 = 0;
            v12 &= v23 ^ 1;
          }
        }
      }

      else
      {
        v22 = 3;
      }

      if (v13)
      {
      }

      if (v22 != 3 && v22)
      {
        break;
      }

      if (!(--v10 * 8))
      {
        goto LABEL_22;
      }
    }

    v12 = v3;
  }

  else
  {
    v12 = 0;
  }

LABEL_22:
  WTF::Vector<WTF::RetainPtr<UIView>,16ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v29, v9);
  return v12 & 1;
}

void sub_19D8D8644(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  if (v11)
  {
  }

  WTF::Vector<WTF::RetainPtr<UIView>,16ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  _Unwind_Resume(a1);
}

uint64_t WebKit::collectDescendantViewsInRect(uint64_t a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  if (![a2 clipsToBounds] || (objc_msgSend(a2, "bounds"), v49.origin.x = a3, v49.origin.y = a4, v49.size.width = a5, v49.size.height = a6, result = CGRectIntersectsRect(v46, v49), result))
  {
    if (![objc_msgSend(a2 "layer")] || (result = objc_msgSend(objc_msgSend(a2, "layer"), "_web_maskMayIntersectRect:", a3, a4, a5, a6), result))
    {
      v13 = [a2 subviews];
      v45[0] = &v39;
      WTF::Vector<WTF::RetainPtr<UIView>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WTF::RetainPtr<UIView>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WTF::RetainPtr<UIView>>(NSArray *)::{lambda(unsigned long)#1}>(&v41, [v13 count], v45);
      if (v42)
      {
        v15 = v41;
        v16 = 8 * v42;
        while (1)
        {
          v17 = *v15;
          v40 = v17;
          if (v17)
          {
            v18 = v17;
            v19 = v40;
          }

          else
          {
            v19 = 0;
          }

          [v19 convertRect:a2 fromView:{a3, a4, a5, a6, 0, 0, 0, 0}];
          v39.origin.x = v20;
          v39.origin.y = v21;
          v39.size.width = v22;
          v39.size.height = v23;
          if ([v40 isUserInteractionEnabled])
          {
            [v40 frame];
            if (!CGRectIsEmpty(v47))
            {
              origin = v39.origin;
              size = v39.size;
              [v40 bounds];
              v50.origin.x = v26;
              v50.origin.y = v27;
              v50.size.width = v28;
              v50.size.height = v29;
              v48.origin = origin;
              v48.size = size;
              if (CGRectIntersectsRect(v48, v50))
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0 || (v30 = [v40 layer], (v32 = WebKit::RemoteLayerTreeNode::forCALayer(v30, v31)) != 0) && (WebCore::FloatRect::FloatRect(&v43, &v39), WebCore::IntRect::IntRect(&v44, &v43), WebCore::Region::Region(v45, &v44), v33 = WebCore::Region::intersects((v32 + 64), v45), WebCore::Region::~Region(v45), v33))
                {
                  v34 = *(a1 + 12);
                  if (v34 == *(a1 + 8))
                  {
                    WTF::Vector<WTF::RetainPtr<UIView>,16ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::RetainPtr<UIView>&>(a1, &v40);
                  }

                  else
                  {
                    v35 = v40;
                    *(*a1 + 8 * v34) = v40;
                    if (v35)
                    {
                      v36 = v35;
                      v34 = *(a1 + 12);
                    }

                    *(a1 + 12) = v34 + 1;
                  }
                }
              }
            }
          }

          if (![v40 subviews])
          {
            break;
          }

          WebKit::collectDescendantViewsInRect(a1, v40, v39.origin.x, v39.origin.y, v39.size.width, v39.size.height);
          v37 = v40;
          v40 = 0;
          if (v37)
          {
          }

          ++v15;
          v16 -= 8;
          if (!v16)
          {
            return WTF::Vector<WTF::RetainPtr<UIView>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v41, v14);
          }
        }

        v38 = v40;
        v40 = 0;
        if (v38)
        {
        }
      }

      return WTF::Vector<WTF::RetainPtr<UIView>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v41, v14);
    }
  }

  return result;
}

void sub_19D8D892C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  WebCore::Region::~Region(va1);
  if (a6)
  {
  }

  WTF::Vector<WTF::RetainPtr<UIView>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, v7);
  _Unwind_Resume(a1);
}

uint64_t WebKit::touchActionsForPoint(WebKit *this, UIView *a2, const WebCore::IntPoint *a3)
{
  v20 = &v22;
  v21 = 16;
  WebCore::IntPoint::operator CGPoint();
  WebKit::collectDescendantViewsAtPoint(&v20, this, 0, v4, v5);
  if (HIDWORD(v21))
  {
    v7 = HIDWORD(v21);
    v8 = v20 - 1;
    while (1)
    {
      v9 = v8[v7];
      if (v9)
      {
        v10 = v9;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = 1;
        if (!v9)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v9)
      {
      }

      if (!(--v7 * 8))
      {
        goto LABEL_16;
      }
    }

    if (!v9)
    {
      goto LABEL_16;
    }

    WebCore::IntPoint::operator CGPoint();
    [v9 convertPoint:this fromView:?];
    v19.x = v12;
    v19.y = v13;
    v14 = [v9 layer];
    v16 = WebKit::RemoteLayerTreeNode::forCALayer(v14, v15);
    if (v16)
    {
      WebCore::IntPoint::IntPoint(v18, &v19);
      v11 = WebCore::EventRegion::touchActionsForPoint((v16 + 64), v18);
    }

    else
    {
      v11 = 1;
    }

LABEL_18:
  }

  else
  {
LABEL_16:
    v11 = 1;
  }

LABEL_19:
  WTF::Vector<WTF::RetainPtr<UIView>,16ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v20, v6);
  return v11;
}

void sub_19D8D8AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  WTF::Vector<WTF::RetainPtr<UIView>,16ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, v7);
  _Unwind_Resume(a1);
}

uint64_t WebKit::collectDescendantViewsAtPoint(uint64_t a1, void *a2, uint64_t a3, double a4, double a5)
{
  if (![a2 clipsToBounds] || (result = objc_msgSend(a2, "pointInside:withEvent:", a3, a4, a5), result))
  {
    if (![objc_msgSend(a2 "layer")] || (result = objc_msgSend(objc_msgSend(a2, "layer"), "_web_maskContainsPoint:", a4, a5), result))
    {
      v28[0] = [a2 subviews];
      *&v27.m11 = v28;
      WTF::Vector<WTF::RetainPtr<UIView>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WTF::RetainPtr<UIView>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WTF::RetainPtr<UIView>>(NSArray *)::{lambda(unsigned long)#1}>(&v31, [v28[0] count], &v27);
      if (v32)
      {
        v12 = v31;
        v13 = 8 * v32;
        do
        {
          v30 = *v12;
          if (v30)
          {
            v14 = v30;
            v15 = v30;
          }

          else
          {
            v15 = 0;
          }

          v29.x = 0.0;
          v29.y = 0.0;
          [v15 convertPoint:a2 fromView:{a4, a5, *&v27.m11, *&v27.m13, *&v27.m21, *&v27.m23, *&v27.m31, *&v27.m33, *&v27.m41, *&v27.m43}];
          v29.x = v16;
          v29.y = v17;
          v18 = [v30 layer];
          if (v18)
          {
            [v18 transform];
          }

          else
          {
            memset(&v27, 0, sizeof(v27));
          }

          WebCore::TransformationMatrix::TransformationMatrix(v28, &v27);
          if (WebCore::TransformationMatrix::isInvertible(v28))
          {
            if ([v30 isUserInteractionEnabled])
            {
              [v30 frame];
              if (!CGRectIsEmpty(v33))
              {
                if ([v30 pointInside:a3 withEvent:{v29.x, v29.y}])
                {
                  if (([v30 conformsToProtocol:&unk_1F11DCAD0] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v19 = objc_msgSend(v30, "layer"), (v21 = WebKit::RemoteLayerTreeNode::forCALayer(v19, v20)) != 0) && (WebCore::IntPoint::IntPoint(&v27, &v29), WebCore::Region::contains((v21 + 64), &v27)))
                  {
                    v22 = *(a1 + 12);
                    if (v22 == *(a1 + 8))
                    {
                      WTF::Vector<WTF::RetainPtr<UIView>,16ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::RetainPtr<UIView>&>(a1, &v30);
                    }

                    else
                    {
                      v24 = v30;
                      *(*a1 + 8 * v22) = v30;
                      if (v24)
                      {
                        v25 = v24;
                        v22 = *(a1 + 12);
                      }

                      *(a1 + 12) = v22 + 1;
                    }
                  }
                }
              }
            }

            if ([v30 subviews])
            {
              WebKit::collectDescendantViewsAtPoint(a1, v30, a3, v29.x, v29.y);
              v23 = 0;
            }

            else
            {
              v23 = 1;
            }
          }

          else
          {
            v23 = 3;
          }

          v26 = v30;
          v30 = 0;
          if (v26)
          {
          }

          if (v23 != 3 && v23)
          {
            break;
          }

          ++v12;
          v13 -= 8;
        }

        while (v13);
      }

      return WTF::Vector<WTF::RetainPtr<UIView>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v31, v11);
    }
  }

  return result;
}