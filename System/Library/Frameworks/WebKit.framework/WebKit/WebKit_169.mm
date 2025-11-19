uint64_t WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::takeResult(mpark *a1, uint64_t a2)
{
  v3 = a1;
  v4 = 0;
  v5 = (a2 + 48);
  atomic_compare_exchange_strong_explicit((a2 + 48), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    a1 = MEMORY[0x19EB01E30](a2 + 48);
  }

  if (*(a2 + 80) != 1)
  {
    mpark::throw_bad_variant_access(a1);
  }

  result = mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError>,(mpark::detail::Trait)1>::move_assignment(v3, a2 + 56);
  v7 = 1;
  atomic_compare_exchange_strong_explicit((a2 + 48), &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1122300;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1122300;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 16))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

unsigned __int8 *WTF::Detail::CallableWrapper<WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  if (*(v2 + 56) == 1)
  {
    v14 = *(a1 + 8);
    result = WTF::NativePromiseBase::logChannel(a1);
    if (*result)
    {
      v4 = result[16] >= 4u;
    }

    else
    {
      v4 = 0;
    }

    if (v4)
    {
      return WTF::Logger::log<char [32],WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, v1, &v14, (v2 + 24));
    }
  }

  else
  {
    hasRunnable = WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::hasRunnable(*(a1 + 16));
    v7 = *(a1 + 8);
    v8 = *(a1 + 16);
    if (hasRunnable)
    {
      WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::takeResultRunnable(&v13, v8);
      v9 = v13;
      (*(*v13 + 16))(&v14, v13);
      (*(*v7 + 24))(v7, v8, &v14);
      if (!v16)
      {
        v11 = v14;
        if (v14)
        {
          v14 = 0;
          v15 = 0;
          WTF::fastFree(v11, v10);
        }
      }

      v16 = -1;
      return (*(*v9 + 8))(v9);
    }

    else
    {
      WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::takeResult(&v14, v8);
      result = (*(*v7 + 24))(v7, v8, &v14);
      if (!v16)
      {
        result = v14;
        if (v14)
        {
          v14 = 0;
          v15 = 0;
          return WTF::fastFree(result, v12);
        }
      }
    }
  }

  return result;
}

WTF::Lock *WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::settleAsChainedPromise<WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::Storage>(uint64_t a1, uint64_t a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v6 = 0;
  v7 = (a1 + 48);
  v28 = v7;
  v29 = 1;
  atomic_compare_exchange_strong_explicit(v7, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    v7 = MEMORY[0x19EB01E30]();
  }

  v8 = WTF::NativePromiseBase::logChannel(v7);
  if (*v8)
  {
    v10 = v8[16] >= 4u;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>(v8, a3, " settling chained promise ", a1);
  }

  v11 = *(a1 + 80);
  v12 = *(a2 + 24);
  if (v11 != 255 || v12 != 255)
  {
    switch(v12)
    {
      case 255:
        if (*(a1 + 80) > 1u)
        {
          if (v11 == 2)
          {
            v17 = *(a1 + 56);
            *(a1 + 56) = 0;
            if (v17)
            {
              (*(*v17 + 8))(v17);
            }
          }
        }

        else if (*(a1 + 80))
        {
          if (!*(a1 + 72))
          {
            v13 = *(a1 + 56);
            if (v13)
            {
              *(a1 + 56) = 0;
              *(a1 + 64) = 0;
              WTF::fastFree(v13, v9);
            }
          }

          *(a1 + 72) = -1;
        }

        v18 = -1;
        goto LABEL_32;
      case 2:
        if (*(a1 + 80) > 1u)
        {
          if (v11 != 255)
          {
            v26 = *a2;
            *a2 = 0;
            v27 = *(a1 + 56);
            *(a1 + 56) = v26;
            if (v27)
            {
              (*(*v27 + 8))(v27);
            }

            goto LABEL_33;
          }
        }

        else if (*(a1 + 80))
        {
          if (!*(a1 + 72))
          {
            v21 = *(a1 + 56);
            if (v21)
            {
              *(a1 + 56) = 0;
              *(a1 + 64) = 0;
              WTF::fastFree(v21, v9);
            }
          }

          *(a1 + 72) = -1;
        }

        v24 = *a2;
        *a2 = 0;
        *(a1 + 56) = v24;
        v18 = 2;
        goto LABEL_32;
      case 1:
        if (*(a1 + 80) > 1u)
        {
          if (v11 == 2)
          {
            v23 = *(a1 + 56);
            *(a1 + 56) = 0;
            if (v23)
            {
              (*(*v23 + 8))(v23);
            }
          }
        }

        else if (*(a1 + 80))
        {
          mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError>,(mpark::detail::Trait)1>::move_assignment(&v30, a2);
          mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError>,(mpark::detail::Trait)1>::move_assignment(&v33, &v30);
          mpark::variant<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error>::operator=(&v30, a1 + 56);
          mpark::variant<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error>::operator=(a1 + 56, &v33);
          if (!v35)
          {
            v15 = v33;
            if (v33)
            {
              v33 = 0;
              v34 = 0;
              WTF::fastFree(v15, v14);
            }
          }

          if (!v32)
          {
            v16 = v30;
            if (v30)
            {
              v30 = 0;
              v31 = 0;
              WTF::fastFree(v16, v14);
            }
          }

          goto LABEL_33;
        }

        *(a1 + 80) = -1;
        mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError>,(mpark::detail::Trait)1>::move_assignment(a1 + 56, a2);
        v18 = 1;
LABEL_32:
        *(a1 + 80) = v18;
        goto LABEL_33;
    }

    if (*(a1 + 80) > 1u)
    {
      if (v11 == 2)
      {
        v25 = *(a1 + 56);
        *(a1 + 56) = 0;
        if (v25)
        {
          (*(*v25 + 8))(v25);
        }
      }
    }

    else
    {
      if (!*(a1 + 80))
      {
        goto LABEL_33;
      }

      if (!*(a1 + 72))
      {
        v22 = *(a1 + 56);
        if (v22)
        {
          *(a1 + 56) = 0;
          *(a1 + 64) = 0;
          WTF::fastFree(v22, v9);
        }
      }

      *(a1 + 72) = -1;
    }

    *(a1 + 80) = 0;
  }

LABEL_33:
  result = WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::dispatchAll(a1, &v28);
  v20 = v29;
  if (v29 == 1)
  {
    result = v28;
    atomic_compare_exchange_strong_explicit(v28, &v20, 0, memory_order_release, memory_order_relaxed);
    if (v20 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

uint64_t mpark::variant<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error>::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4 == 255)
  {
    if (*(a2 + 16))
    {
      if (v5 != 255)
      {
        goto LABEL_19;
      }

      return a1;
    }

LABEL_12:
    *(a1 + 16) = -1;
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
    *(a1 + 16) = 0;
    return a1;
  }

  if (!*(a2 + 16))
  {
    if (!*(a1 + 16))
    {
      WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
      return a1;
    }

    goto LABEL_12;
  }

  if (v5 == 255)
  {
    if (!*(a1 + 16))
    {
      v6 = *a1;
      if (*a1)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
        WTF::fastFree(v6, a2);
      }
    }

    v7 = -1;
    goto LABEL_20;
  }

  if (!*(a1 + 16))
  {
    v8 = *a1;
    if (*a1)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      WTF::fastFree(v8, a2);
    }

    goto LABEL_19;
  }

  if (v4 != 1)
  {
LABEL_19:
    *a1 = *a2;
    v7 = 1;
LABEL_20:
    *(a1 + 16) = v7;
    return a1;
  }

  *a1 = *a2;
  return a1;
}

uint64_t WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::NativePromise(uint64_t a1, _OWORD *a2)
{
  v33[2] = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 1;
  *a1 = &unk_1F1122328;
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
  v4 = WTF::NativePromiseBase::logChannel(a1);
  if (!*v4)
  {
    return a1;
  }

  v5 = v4;
  if (v4[16] < 4u)
  {
    return a1;
  }

  WTF::String::String(&v29, "creating ");
  WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v28, a1);
  *buf = v29;
  v27[0] = v28;
  result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v27, &v30);
  if (v30)
  {
    v8 = v28;
    v28 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v7);
    }

    v9 = v29;
    v29 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v7);
    }

    v10 = *(v5 + 4);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      WTF::String::utf8();
      v13 = v27[0] ? v27[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v13;
      _os_log_impl(&dword_19D52D000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v11 = v27[0];
      v27[0] = 0;
      if (v11)
      {
        if (*v11 == 1)
        {
          v11 = WTF::fastFree(v11, v12);
        }

        else
        {
          --*v11;
        }
      }
    }

    if (*v5 && v5[16] >= 4u)
    {
      v14 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v15 = *v14;
        if (v15)
        {
          break;
        }

        v16 = *v14;
        atomic_compare_exchange_strong_explicit(v14, &v16, v15 | 1, memory_order_acquire, memory_order_acquire);
        if (v16 == v15)
        {
          v17 = WTF::Logger::observers(v11);
          v18 = *(v17 + 12);
          if (v18)
          {
            v19 = *v17;
            v20 = *v17 + 8 * v18;
            do
            {
              v21 = *v19;
              *buf = 0;
              WTF::String::String(&buf[8], "creating ");
              v32 = 0;
              WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(v33, a1);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v27, buf, 2uLL);
              (*(*v21 + 16))(v21, v5, 4, v27);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v27, v22);
              for (i = 24; i != -8; i -= 16)
              {
                v24 = *&buf[i];
                *&buf[i] = 0;
                if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v24, v12);
                }
              }

              ++v19;
            }

            while (v19 != v20);
          }

          v25 = 1;
          atomic_compare_exchange_strong_explicit(v14, &v25, 0, memory_order_release, memory_order_relaxed);
          if (v25 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v26 = v30;
    v30 = 0;
    if (v26)
    {
      if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v12);
      }
    }

    return a1;
  }

  __break(0xC471u);
  return result;
}

uint64_t WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = (result + 48);
  atomic_compare_exchange_strong_explicit((result + 48), &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    result = MEMORY[0x19EB01E30](result + 48);
  }

  v4 = *(v1 + 108);
  if (v4)
  {
    v5 = *(v1 + 96);
    v6 = 40 * v4;
    do
    {
      result = WTF::NativePromiseProducer<void,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(v5);
      v5 += 40;
      v6 -= 40;
    }

    while (v6);
  }

  v7 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {

    return WTF::Lock::unlockSlow(v3);
  }

  return result;
}

uint64_t WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::~NativePromise(uint64_t a1)
{
  v1 = WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::~NativePromise(a1);

  return WTF::fastFree(v1, v2);
}

{
  v36[2] = *MEMORY[0x1E69E9840];
  v2 = WTF::NativePromiseBase::logChannel(a1);
  if (*v2)
  {
    v3 = v2[16] >= 4u;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = v2;
    WTF::String::String(&v32, "destroying ");
    WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v31, a1);
    *buf = v32;
    v30[0] = v31;
    result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v30, &v33);
    if (!v33)
    {
      __break(0xC471u);
      return result;
    }

    v7 = v31;
    v31 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v6);
    }

    v8 = v32;
    v32 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v6);
    }

    v9 = *(v4 + 4);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      WTF::String::utf8();
      v12 = v30[0] ? v30[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v12;
      _os_log_impl(&dword_19D52D000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v10 = v30[0];
      v30[0] = 0;
      if (v10)
      {
        if (*v10 == 1)
        {
          v10 = WTF::fastFree(v10, v11);
        }

        else
        {
          --*v10;
        }
      }
    }

    if (*v4 && v4[16] >= 4u)
    {
      v13 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v14 = *v13;
        if (v14)
        {
          break;
        }

        v15 = *v13;
        atomic_compare_exchange_strong_explicit(v13, &v15, v14 | 1, memory_order_acquire, memory_order_acquire);
        if (v15 == v14)
        {
          v16 = WTF::Logger::observers(v10);
          v17 = *(v16 + 12);
          if (v17)
          {
            v18 = *v16;
            v19 = *v16 + 8 * v17;
            do
            {
              v20 = *v18;
              *buf = 0;
              WTF::String::String(&buf[8], "destroying ");
              v35 = 0;
              WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(v36, a1);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v30, buf, 2uLL);
              (*(*v20 + 16))(v20, v4, 4, v30);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v30, v21);
              for (i = 24; i != -8; i -= 16)
              {
                v23 = *&buf[i];
                *&buf[i] = 0;
                if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v23, v11);
                }
              }

              ++v18;
            }

            while (v18 != v19);
          }

          v24 = 1;
          atomic_compare_exchange_strong_explicit(v13, &v24, 0, memory_order_release, memory_order_relaxed);
          if (v24 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v25 = v33;
    v33 = 0;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v11);
    }
  }

  WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(a1);
  WTF::Vector<WTF::NativePromiseProducer<void,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 96, v26);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 72, v27);
  v28 = *(a1 + 64);
  if (v28 >= 2 && v28 != 255)
  {
    v29 = *(a1 + 56);
    *(a1 + 56) = 0;
    if (v29)
    {
      (*(*v29 + 8))(v29);
    }
  }

  *(a1 + 64) = -1;
  return a1;
}

atomic_uint **WTF::NativePromiseProducer<void,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(atomic_uint **result)
{
  v1 = *result;
  if (*result)
  {
    atomic_fetch_add(v1 + 2, 1u);
    result = WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(v1);
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v1 + 2);
      v2 = *(*v1 + 16);

      return v2(v1);
    }
  }

  return result;
}

uint64_t WTF::Vector<WTF::NativePromiseProducer<void,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 40 * v3;
    do
    {
      v4 = WTF::NativePromiseProducer<void,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(v4) + 5;
      v5 -= 40;
    }

    while (v5);
  }

  v6 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v6, a2);
  }

  return a1;
}

atomic_uint **WTF::NativePromiseProducer<void,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(atomic_uint **a1)
{
  WTF::NativePromiseProducer<void,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(a1);
  v2 = *a1;
  *a1 = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
  }

  return a1;
}

uint64_t WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::dispatchAll(uint64_t a1, atomic_uchar *volatile *a2)
{
  v38[0] = &v38[2];
  v38[1] = 1;
  __dst = &v33;
  v32 = 1;
  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt(&__dst, (a1 + 72));
  v4 = *(a1 + 84);
  if (v4)
  {
    WTF::VectorDestructor<true,WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>>::destruct(*(a1 + 72), (*(a1 + 72) + 8 * v4));
  }

  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt((a1 + 72), v38);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v38, v5);
  *&v6 = 0;
  v7 = *(a1 + 96);
  v28 = v7;
  v8 = *(a1 + 108);
  v29 = *(a1 + 104);
  v30 = v8;
  *v38 = v6;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v10 = WTF::Vector<WTF::NativePromiseProducer<void,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v38, v9);
  if (HIDWORD(v32))
  {
    v12 = __dst;
    v13 = 8 * HIDWORD(v32);
    do
    {
      v14 = *v12;
      if (!*(*v12 + 16) || (v15 = atomic_load((a1 + 113)), v15 == 1) && (v10 = (*(**(v14 + 16) + 24))(*(v14 + 16)), v10))
      {
        if (*(v14 + 56) == 1)
        {
          v38[0] = v14;
          v10 = WTF::NativePromiseBase::logChannel(v10);
          if (*v10)
          {
            v18 = v10[16] >= 4u;
          }

          else
          {
            v18 = 0;
          }

          if (v18)
          {
            v10 = WTF::Logger::log<char [32],WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(v10, a1, v38, (v14 + 24));
          }
        }

        else
        {
          v19 = *a2;
          v20 = 1;
          atomic_compare_exchange_strong_explicit(*a2, &v20, 0, memory_order_release, memory_order_relaxed);
          if (v20 != 1)
          {
            WTF::Lock::unlockSlow(v19);
          }

          if (WTF::NativePromise<void,void,0u>::hasRunnable(a1))
          {
            WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>::takeResultRunnable(v38, a1);
            v21 = v38[0];
            (*(*v38[0] + 16))(&v34, v38[0]);
            (*(*v14 + 24))(v14, a1, &v34);
            (*(*v21 + 8))(v21);
          }

          else
          {
            WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>::takeResult(v38, a1);
            (*(*v14 + 24))(v14, a1, v38);
          }

          v22 = 0;
          v10 = *a2;
          atomic_compare_exchange_strong_explicit(*a2, &v22, 1u, memory_order_acquire, memory_order_acquire);
          if (v22)
          {
            v10 = MEMORY[0x19EB01E30](v10, v11);
          }
        }
      }

      else
      {
        v16 = *(v14 + 16);
        atomic_fetch_add((v14 + 8), 1u);
        atomic_fetch_add((a1 + 8), 1u);
        v17 = WTF::fastMalloc(0x18);
        *v17 = &unk_1F1122350;
        v17[1] = v14;
        v17[2] = a1;
        v38[0] = v17;
        (*(*v16 + 16))(v16, v38);
        v10 = v38[0];
        v38[0] = 0;
        if (v10)
        {
          v10 = (*(*v10 + 8))(v10);
        }
      }

      ++v12;
      v13 -= 8;
    }

    while (v13);
  }

  if (v8)
  {
    v23 = v7 + 40 * v8;
    do
    {
      v24 = *v7;
      *v7 = 0;
      v38[0] = v24;
      v25 = *(v7 + 24);
      *&v38[1] = *(v7 + 8);
      *&v38[3] = v25;
      if (v24)
      {
        atomic_fetch_add(v24 + 2, 1u);
        v34 = 0;
        v35 = 0;
        v36 = "<chained promise>";
        v37 = 0;
        WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::settleAsChainedPromise<WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::Storage>(v24, (a1 + 56), &v34);
        if (atomic_fetch_add(v24 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v24 + 2);
          (*(*v24 + 16))(v24);
        }
      }

      else
      {
        v34 = 0;
        v35 = 0;
        v36 = "<chained promise>";
        v37 = 0;
        WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::settleAsChainedPromise<WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::Storage>(0, (a1 + 56), &v34);
      }

      WTF::NativePromiseProducer<void,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(v38);
      v7 += 40;
    }

    while (v7 != v23);
  }

  WTF::Vector<WTF::NativePromiseProducer<void,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v28, v11);
  return WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&__dst, v26);
}

void *WTF::Detail::CallableWrapper<WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1122350;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1122350;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 16))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::call(WTF::NativePromiseBase *a1)
{
  v2 = *(a1 + 1);
  v1 = *(a1 + 2);
  if (*(v2 + 56) == 1)
  {
    v11 = *(a1 + 1);
    result = WTF::NativePromiseBase::logChannel(a1);
    if (*result)
    {
      v4 = *(result + 16) >= 4u;
    }

    else
    {
      v4 = 0;
    }

    if (v4)
    {
      return WTF::Logger::log<char [32],WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, v1, &v11, (v2 + 24));
    }
  }

  else
  {
    hasRunnable = WTF::NativePromise<void,void,0u>::hasRunnable(*(a1 + 2));
    v7 = *(a1 + 1);
    v8 = *(a1 + 2);
    if (hasRunnable)
    {
      WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>::takeResultRunnable(&v11, v8);
      v9 = v11;
      (*(*v11 + 16))(v10, v11);
      (*(*v7 + 24))(v7, v8, v10);
      return (*(*v9 + 8))(v9);
    }

    else
    {
      WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>::takeResult(&v11, v8);
      return (*(*v7 + 24))(v7, v8, &v11);
    }
  }

  return result;
}

WTF::Lock *WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::settleAsChainedPromise<WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::Storage>(uint64_t a1, unsigned __int16 *a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v6 = 0;
  v7 = (a1 + 48);
  v23 = v7;
  v24 = 1;
  atomic_compare_exchange_strong_explicit(v7, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    v7 = MEMORY[0x19EB01E30]();
  }

  v8 = WTF::NativePromiseBase::logChannel(v7);
  if (*v8)
  {
    v9 = v8[16] >= 4u;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>(v8, a3, " settling chained promise ", a1);
  }

  v10 = *(a1 + 64);
  v11 = *(a2 + 8);
  if (v10 != 255 || v11 != 255)
  {
    switch(v11)
    {
      case 255:
        if (v10 >= 2 && v10 != 255)
        {
          v12 = *(a1 + 56);
          *(a1 + 56) = 0;
          if (v12)
          {
            (*(*v12 + 8))(v12);
          }
        }

        v13 = -1;
        goto LABEL_42;
      case 2:
        if (v10 >= 2 && v10 != 255)
        {
          if (v10 == 2)
          {
            v15 = *a2;
            *a2 = 0;
            v16 = *(a1 + 56);
            *(a1 + 56) = v15;
            if (v16)
            {
              (*(*v16 + 8))(v16);
            }

            goto LABEL_43;
          }

          v19 = *(a1 + 56);
          *(a1 + 56) = 0;
          if (v19)
          {
            (*(*v19 + 8))(v19);
          }
        }

        v20 = *a2;
        *a2 = 0;
        *(a1 + 56) = v20;
        v13 = 2;
        goto LABEL_42;
      case 1:
        if (*(a1 + 64) && v10 != 255)
        {
          if (v10 == 1)
          {
            v14 = *a2;
            if (*(a1 + 57) == v14 >> 8)
            {
              if ((v14 & 0x100) != 0)
              {
                *(a1 + 56) = v14;
              }
            }

            else if ((v14 & 0x100) != 0)
            {
              *(a1 + 56) = v14;
              *(a1 + 57) = 1;
            }

            else if (*(a1 + 57))
            {
              *(a1 + 57) = 0;
            }

            goto LABEL_43;
          }

          v18 = *(a1 + 56);
          *(a1 + 56) = 0;
          if (v18)
          {
            (*(*v18 + 8))(v18);
          }
        }

        *(a1 + 64) = -1;
        *(a1 + 56) = *a2;
        v13 = 1;
LABEL_42:
        *(a1 + 64) = v13;
        goto LABEL_43;
    }

    if (*(a1 + 64))
    {
      if (v10 != 1 && v10 != 255)
      {
        v17 = *(a1 + 56);
        *(a1 + 56) = 0;
        if (v17)
        {
          (*(*v17 + 8))(v17);
        }
      }

      *(a1 + 64) = 0;
    }
  }

LABEL_43:
  result = WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::dispatchAll(a1, &v23);
  v22 = v24;
  if (v24 == 1)
  {
    result = v23;
    atomic_compare_exchange_strong_explicit(v23, &v22, 0, memory_order_release, memory_order_relaxed);
    if (v22 != 1)
    {

      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

uint64_t WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::NativePromise(uint64_t a1, _OWORD *a2)
{
  v33[2] = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 1;
  *a1 = &unk_1F1122378;
  v3 = a2[1];
  *(a1 + 16) = *a2;
  *(a1 + 32) = v3;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a1 + 96;
  *(a1 + 88) = 1;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v4 = WTF::NativePromiseBase::logChannel(a1);
  if (!*v4)
  {
    return a1;
  }

  v5 = v4;
  if (v4[16] < 4u)
  {
    return a1;
  }

  WTF::String::String(&v29, "creating ");
  WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v28, a1);
  *buf = v29;
  v27[0] = v28;
  result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v27, &v30);
  if (v30)
  {
    v8 = v28;
    v28 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v7);
    }

    v9 = v29;
    v29 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v7);
    }

    v10 = *(v5 + 4);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      WTF::String::utf8();
      v13 = v27[0] ? v27[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v13;
      _os_log_impl(&dword_19D52D000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v11 = v27[0];
      v27[0] = 0;
      if (v11)
      {
        if (*v11 == 1)
        {
          v11 = WTF::fastFree(v11, v12);
        }

        else
        {
          --*v11;
        }
      }
    }

    if (*v5 && v5[16] >= 4u)
    {
      v14 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v15 = *v14;
        if (v15)
        {
          break;
        }

        v16 = *v14;
        atomic_compare_exchange_strong_explicit(v14, &v16, v15 | 1, memory_order_acquire, memory_order_acquire);
        if (v16 == v15)
        {
          v17 = WTF::Logger::observers(v11);
          v18 = *(v17 + 12);
          if (v18)
          {
            v19 = *v17;
            v20 = *v17 + 8 * v18;
            do
            {
              v21 = *v19;
              *buf = 0;
              WTF::String::String(&buf[8], "creating ");
              v32 = 0;
              WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(v33, a1);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v27, buf, 2uLL);
              (*(*v21 + 16))(v21, v5, 4, v27);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v27, v22);
              for (i = 24; i != -8; i -= 16)
              {
                v24 = *&buf[i];
                *&buf[i] = 0;
                if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v24, v12);
                }
              }

              ++v19;
            }

            while (v19 != v20);
          }

          v25 = 1;
          atomic_compare_exchange_strong_explicit(v14, &v25, 0, memory_order_release, memory_order_relaxed);
          if (v25 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v26 = v30;
    v30 = 0;
    if (v26)
    {
      if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v12);
      }
    }

    return a1;
  }

  __break(0xC471u);
  return result;
}

uint64_t WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = (result + 48);
  atomic_compare_exchange_strong_explicit((result + 48), &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    result = MEMORY[0x19EB01E30](result + 48);
  }

  v4 = *(v1 + 116);
  if (v4)
  {
    v5 = *(v1 + 104);
    v6 = 40 * v4;
    do
    {
      result = WTF::NativePromiseProducer<WTF::String,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(v5);
      v5 += 40;
      v6 -= 40;
    }

    while (v6);
  }

  v7 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {

    return WTF::Lock::unlockSlow(v3);
  }

  return result;
}

uint64_t WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::~NativePromise(uint64_t a1)
{
  v1 = WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::~NativePromise(a1);

  return WTF::fastFree(v1, v2);
}

{
  v36[2] = *MEMORY[0x1E69E9840];
  v2 = WTF::NativePromiseBase::logChannel(a1);
  if (*v2)
  {
    v3 = v2[16] >= 4u;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = v2;
    WTF::String::String(&v32, "destroying ");
    WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v31, a1);
    *buf = v32;
    v30[0] = v31;
    result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v30, &v33);
    if (!v33)
    {
      __break(0xC471u);
      return result;
    }

    v7 = v31;
    v31 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v6);
    }

    v8 = v32;
    v32 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v6);
    }

    v9 = *(v4 + 4);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      WTF::String::utf8();
      v12 = v30[0] ? v30[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v12;
      _os_log_impl(&dword_19D52D000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v10 = v30[0];
      v30[0] = 0;
      if (v10)
      {
        if (*v10 == 1)
        {
          v10 = WTF::fastFree(v10, v11);
        }

        else
        {
          --*v10;
        }
      }
    }

    if (*v4 && v4[16] >= 4u)
    {
      v13 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v14 = *v13;
        if (v14)
        {
          break;
        }

        v15 = *v13;
        atomic_compare_exchange_strong_explicit(v13, &v15, v14 | 1, memory_order_acquire, memory_order_acquire);
        if (v15 == v14)
        {
          v16 = WTF::Logger::observers(v10);
          v17 = *(v16 + 12);
          if (v17)
          {
            v18 = *v16;
            v19 = *v16 + 8 * v17;
            do
            {
              v20 = *v18;
              *buf = 0;
              WTF::String::String(&buf[8], "destroying ");
              v35 = 0;
              WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(v36, a1);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v30, buf, 2uLL);
              (*(*v20 + 16))(v20, v4, 4, v30);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v30, v21);
              for (i = 24; i != -8; i -= 16)
              {
                v23 = *&buf[i];
                *&buf[i] = 0;
                if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v23, v11);
                }
              }

              ++v18;
            }

            while (v18 != v19);
          }

          v24 = 1;
          atomic_compare_exchange_strong_explicit(v13, &v24, 0, memory_order_release, memory_order_relaxed);
          if (v24 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v25 = v33;
    v33 = 0;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v11);
    }
  }

  WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(a1);
  WTF::Vector<WTF::NativePromiseProducer<WTF::String,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 104, v26);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 80, v27);
  if (*(a1 + 72) > 1u)
  {
    if (*(a1 + 72) == 2)
    {
      v29 = *(a1 + 56);
      *(a1 + 56) = 0;
      if (v29)
      {
        (*(*v29 + 8))(v29);
      }
    }
  }

  else if (*(a1 + 72))
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::RouterSourceDict,WebCore::RouterSourceEnum>,(mpark::detail::Trait)1>::~move_constructor(a1 + 56, v28);
  }

  *(a1 + 72) = -1;
  return a1;
}

atomic_uint **WTF::NativePromiseProducer<WTF::String,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(atomic_uint **result)
{
  v1 = *result;
  if (*result)
  {
    atomic_fetch_add(v1 + 2, 1u);
    result = WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(v1);
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v1 + 2);
      v2 = *(*v1 + 16);

      return v2(v1);
    }
  }

  return result;
}

uint64_t WTF::Vector<WTF::NativePromiseProducer<WTF::String,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 40 * v3;
    do
    {
      v4 = WTF::NativePromiseProducer<WTF::String,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(v4) + 5;
      v5 -= 40;
    }

    while (v5);
  }

  v6 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v6, a2);
  }

  return a1;
}

atomic_uint **WTF::NativePromiseProducer<WTF::String,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(atomic_uint **a1)
{
  WTF::NativePromiseProducer<WTF::String,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(a1);
  v2 = *a1;
  *a1 = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
  }

  return a1;
}

uint64_t WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::dispatchAll(uint64_t a1, atomic_uchar *volatile *a2)
{
  v41[0] = &v41[2];
  v41[1] = 1;
  __dst = &v36;
  v35 = 1;
  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt(&__dst, (a1 + 80));
  v4 = *(a1 + 92);
  if (v4)
  {
    WTF::VectorDestructor<true,WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>>::destruct(*(a1 + 80), (*(a1 + 80) + 8 * v4));
  }

  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt((a1 + 80), v41);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v41, v5);
  *&v6 = 0;
  v7 = *(a1 + 104);
  v31 = v7;
  v8 = *(a1 + 116);
  v32 = *(a1 + 112);
  v33 = v8;
  *v41 = v6;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v10 = WTF::Vector<WTF::NativePromiseProducer<WTF::String,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v41, v9);
  if (HIDWORD(v35))
  {
    v12 = __dst;
    v13 = 8 * HIDWORD(v35);
    do
    {
      v14 = *v12;
      if (!*(*v12 + 16) || (v15 = atomic_load((a1 + 121)), v15 == 1) && (v10 = (*(**(v14 + 16) + 24))(*(v14 + 16)), v10))
      {
        if (*(v14 + 56) == 1)
        {
          v41[0] = v14;
          v10 = WTF::NativePromiseBase::logChannel(v10);
          if (*v10)
          {
            v18 = v10[16] >= 4u;
          }

          else
          {
            v18 = 0;
          }

          if (v18)
          {
            v10 = WTF::Logger::log<char [32],WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(v10, a1, v41, (v14 + 24));
          }
        }

        else
        {
          v19 = *a2;
          v20 = 1;
          atomic_compare_exchange_strong_explicit(*a2, &v20, 0, memory_order_release, memory_order_relaxed);
          if (v20 != 1)
          {
            WTF::Lock::unlockSlow(v19);
          }

          if (WTF::NativePromise<WTF::String,void,0u>::hasRunnable(a1))
          {
            WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::takeResultRunnable(&v37, a1);
            v21 = v37;
            (*(*v37 + 16))(v41, v37);
            (*(*v14 + 24))(v14, a1, v41);
            if (!LOBYTE(v41[1]))
            {
              v23 = v41[0];
              v41[0] = 0;
              if (v23)
              {
                if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v23, v22);
                }
              }
            }

            LOBYTE(v41[1]) = -1;
            (*(*v21 + 8))(v21);
          }

          else
          {
            WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::takeResult(v41, a1);
            (*(*v14 + 24))(v14, a1, v41);
            if (!LOBYTE(v41[1]))
            {
              v24 = v41[0];
              v41[0] = 0;
              if (v24)
              {
                if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v24, v11);
                }
              }
            }
          }

          v25 = 0;
          v10 = *a2;
          atomic_compare_exchange_strong_explicit(*a2, &v25, 1u, memory_order_acquire, memory_order_acquire);
          if (v25)
          {
            v10 = MEMORY[0x19EB01E30](v10, v11);
          }
        }
      }

      else
      {
        v16 = *(v14 + 16);
        atomic_fetch_add((v14 + 8), 1u);
        atomic_fetch_add((a1 + 8), 1u);
        v17 = WTF::fastMalloc(0x18);
        *v17 = &unk_1F11223A0;
        v17[1] = v14;
        v17[2] = a1;
        v41[0] = v17;
        (*(*v16 + 16))(v16, v41);
        v10 = v41[0];
        v41[0] = 0;
        if (v10)
        {
          v10 = (*(*v10 + 8))(v10);
        }
      }

      ++v12;
      v13 -= 8;
    }

    while (v13);
  }

  if (v8)
  {
    v26 = &v7[5 * v8];
    do
    {
      v27 = *v7;
      *v7 = 0;
      v41[0] = v27;
      v28 = *(v7 + 3);
      *&v41[1] = *(v7 + 1);
      *&v41[3] = v28;
      if (v27)
      {
        atomic_fetch_add((v27 + 8), 1u);
        v37 = 0;
        v38 = 0;
        v39 = "<chained promise>";
        v40 = 0;
        WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::settleAsChainedPromise<WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::Storage>(v27, a1 + 56, &v37);
        if (atomic_fetch_add((v27 + 8), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, (v27 + 8));
          (*(*v27 + 16))(v27);
        }
      }

      else
      {
        v37 = 0;
        v38 = 0;
        v39 = "<chained promise>";
        v40 = 0;
        WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::settleAsChainedPromise<WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::Storage>(0, a1 + 56, &v37);
      }

      WTF::NativePromiseProducer<WTF::String,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(v41);
      v7 += 5;
    }

    while (v7 != v26);
  }

  WTF::Vector<WTF::NativePromiseProducer<WTF::String,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v31, v11);
  return WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&__dst, v29);
}

mpark *WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::takeResultRunnable(mpark *result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = (a2 + 48);
  atomic_compare_exchange_strong_explicit((a2 + 48), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    result = MEMORY[0x19EB01E30](a2 + 48);
  }

  if (*(a2 + 72) != 2)
  {
    mpark::throw_bad_variant_access(result);
  }

  v6 = *(a2 + 56);
  *(a2 + 56) = 0;
  *v3 = v6;
  v7 = 1;
  atomic_compare_exchange_strong_explicit((a2 + 48), &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

mpark *WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::takeResult(mpark *result, _BYTE *a2)
{
  v3 = result;
  v4 = 0;
  v5 = a2 + 48;
  atomic_compare_exchange_strong_explicit(a2 + 48, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    result = MEMORY[0x19EB01E30](a2 + 48);
  }

  if (a2[72] != 1)
  {
    mpark::throw_bad_variant_access(result);
  }

  *v3 = 0;
  *(v3 + 8) = -1;
  v6 = a2[64];
  if (v6 != 255)
  {
    if (a2[64])
    {
      *v3 = a2[56];
    }

    else
    {
      v7 = *(a2 + 7);
      *(a2 + 7) = 0;
      *v3 = v7;
    }

    *(v3 + 8) = v6;
  }

  v8 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F11223A0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F11223A0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 16))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

unsigned __int8 *WTF::Detail::CallableWrapper<WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  if (*(v2 + 56) == 1)
  {
    v14 = *(a1 + 8);
    result = WTF::NativePromiseBase::logChannel(a1);
    if (*result)
    {
      v4 = result[16] >= 4u;
    }

    else
    {
      v4 = 0;
    }

    if (v4)
    {
      return WTF::Logger::log<char [32],WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, v1, &v14, (v2 + 24));
    }
  }

  else
  {
    hasRunnable = WTF::NativePromise<WTF::String,void,0u>::hasRunnable(*(a1 + 16));
    v7 = *(a1 + 8);
    v8 = *(a1 + 16);
    if (hasRunnable)
    {
      WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::takeResultRunnable(&v13, v8);
      v9 = v13;
      (*(*v13 + 16))(&v14, v13);
      (*(*v7 + 24))(v7, v8, &v14);
      if (!v15)
      {
        v11 = v14;
        v14 = 0;
        if (v11)
        {
          if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v11, v10);
          }
        }
      }

      v15 = -1;
      return (*(*v9 + 8))(v9);
    }

    else
    {
      WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::takeResult(&v14, v8);
      result = (*(*v7 + 24))(v7, v8, &v14);
      if (!v15)
      {
        result = v14;
        v14 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(result, v12);
          }
        }
      }
    }
  }

  return result;
}

WTF::Lock *WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::settleAsChainedPromise<WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::Storage>(unsigned __int8 *a1, uint64_t a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v6 = 0;
  v7 = (a1 + 48);
  v29 = v7;
  v30 = 1;
  atomic_compare_exchange_strong_explicit(v7, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    v7 = MEMORY[0x19EB01E30]();
  }

  v8 = WTF::NativePromiseBase::logChannel(v7);
  if (*v8)
  {
    v10 = v8[16] >= 4u;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>(v8, a3, " settling chained promise ", a1);
  }

  v11 = a1[72];
  v12 = *(a2 + 16);
  if (v11 != 255 || v12 != 255)
  {
    switch(v12)
    {
      case 255:
        if (a1[72] > 1u)
        {
          if (v11 == 2)
          {
            v14 = *(a1 + 7);
            *(a1 + 7) = 0;
            if (v14)
            {
              (*(*v14 + 8))(v14);
            }
          }
        }

        else if (a1[72])
        {
          mpark::detail::move_constructor<mpark::detail::traits<WebCore::RouterSourceDict,WebCore::RouterSourceEnum>,(mpark::detail::Trait)1>::~move_constructor((a1 + 56), v9);
        }

        v15 = -1;
        goto LABEL_26;
      case 2:
        if (a1[72] > 1u)
        {
          if (v11 != 255)
          {
            v23 = *a2;
            *a2 = 0;
            v24 = *(a1 + 7);
            *(a1 + 7) = v23;
            if (v24)
            {
              (*(*v24 + 8))(v24);
            }

            goto LABEL_27;
          }
        }

        else if (a1[72])
        {
          mpark::detail::move_constructor<mpark::detail::traits<WebCore::RouterSourceDict,WebCore::RouterSourceEnum>,(mpark::detail::Trait)1>::~move_constructor((a1 + 56), v9);
        }

        v21 = *a2;
        *a2 = 0;
        *(a1 + 7) = v21;
        v15 = 2;
LABEL_26:
        a1[72] = v15;
        goto LABEL_27;
      case 1:
        if (a1[72] > 1u)
        {
          if (v11 == 2)
          {
            v18 = *(a1 + 7);
            *(a1 + 7) = 0;
            if (v18)
            {
              (*(*v18 + 8))(v18);
            }
          }
        }

        else if (a1[72])
        {
          LOBYTE(v31) = 0;
          v32 = -1;
          v13 = *(a2 + 8);
          if (*(a2 + 8))
          {
            if (v13 == 255)
            {
              LOBYTE(v33) = 0;
            }

            else
            {
              LOBYTE(v31) = *a2;
              v32 = v13;
              LOBYTE(v33) = v31;
            }
          }

          else
          {
            v25 = *a2;
            *a2 = 0;
            v32 = 0;
            v31 = 0;
            v33 = v25;
          }

          v34 = v13;
          mpark::variant<WTF::String,WebCore::DOMCacheEngine::Error>::operator=(&v31, a1 + 56);
          mpark::variant<WTF::String,WebCore::DOMCacheEngine::Error>::operator=((a1 + 56), &v33);
          if (!v34)
          {
            v27 = v33;
            if (v33)
            {
              if (atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v27, v26);
              }
            }
          }

          if (!v32)
          {
            v28 = v31;
            v31 = 0;
            if (v28)
            {
              if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v28, v26);
              }
            }
          }

          goto LABEL_27;
        }

        a1[56] = 0;
        a1[64] = -1;
        v19 = *(a2 + 8);
        if (v19 != 255)
        {
          if (*(a2 + 8))
          {
            a1[56] = *a2;
          }

          else
          {
            v20 = *a2;
            *a2 = 0;
            *(a1 + 7) = v20;
          }

          a1[64] = v19;
        }

        v15 = 1;
        goto LABEL_26;
    }

    if (a1[72] > 1u)
    {
      if (v11 == 2)
      {
        v22 = *(a1 + 7);
        *(a1 + 7) = 0;
        if (v22)
        {
          (*(*v22 + 8))(v22);
        }
      }
    }

    else
    {
      if (!a1[72])
      {
        goto LABEL_27;
      }

      mpark::detail::move_constructor<mpark::detail::traits<WebCore::RouterSourceDict,WebCore::RouterSourceEnum>,(mpark::detail::Trait)1>::~move_constructor((a1 + 56), v9);
    }

    a1[72] = 0;
  }

LABEL_27:
  result = WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::dispatchAll(a1, &v29);
  v17 = v30;
  if (v30 == 1)
  {
    result = v29;
    atomic_compare_exchange_strong_explicit(v29, &v17, 0, memory_order_release, memory_order_relaxed);
    if (v17 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

uint64_t mpark::variant<WTF::String,WebCore::DOMCacheEngine::Error>::operator=(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 8);
  v5 = a2[8];
  if (v4 == 255)
  {
    if (v5 != 255)
    {
      if (!a2[8])
      {
        goto LABEL_16;
      }

      goto LABEL_20;
    }
  }

  else
  {
    if (v5 == 255)
    {
      if (!*(a1 + 8))
      {
        v6 = *a1;
        *a1 = 0;
        if (v6)
        {
          if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v6, a2);
          }
        }
      }

      v7 = -1;
      goto LABEL_21;
    }

    if (a2[8])
    {
      if (*(a1 + 8))
      {
        if (v4 == 1)
        {
          *a1 = *a2;
          return a1;
        }
      }

      else
      {
        v9 = *a1;
        *a1 = 0;
        if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, a2);
        }
      }

LABEL_20:
      *a1 = *a2;
      v7 = 1;
LABEL_21:
      *(a1 + 8) = v7;
      return a1;
    }

    if (*(a1 + 8))
    {
LABEL_16:
      v8 = *a2;
      *a2 = 0;
      *a1 = v8;
      *(a1 + 8) = 0;
      return a1;
    }

    v11 = *a2;
    *a2 = 0;
    v12 = *a1;
    *a1 = v11;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, a2);
    }
  }

  return a1;
}

WebKit::ScriptTrackingPrivacyFilter *std::unique_ptr<WebKit::ScriptTrackingPrivacyFilter>::reset[abi:sn200100](WebKit::ScriptTrackingPrivacyFilter **a1, WebKit::ScriptTrackingPrivacyFilter *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    WebKit::ScriptTrackingPrivacyFilter::~ScriptTrackingPrivacyFilter(result);

    return WTF::fastFree(v5, v6);
  }

  return result;
}

void WebKit::ScriptTrackingPrivacyFilter::~ScriptTrackingPrivacyFilter(WebKit::ScriptTrackingPrivacyFilter *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::OptionSet<WebCore::ScriptTrackingPrivacyFlag>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::OptionSet<WebCore::ScriptTrackingPrivacyFlag>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::OptionSet<WebCore::ScriptTrackingPrivacyFlag>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::OptionSet<WebCore::ScriptTrackingPrivacyFlag>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v2, *(this + 20));
  }

  v3 = *(this + 6);
  if (v3)
  {
    WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::OptionSet<WebCore::ScriptTrackingPrivacyFlag>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::OptionSet<WebCore::ScriptTrackingPrivacyFlag>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::OptionSet<WebCore::ScriptTrackingPrivacyFlag>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::OptionSet<WebCore::ScriptTrackingPrivacyFlag>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v3, *(this + 14));
  }

  v4 = *(this + 3);
  if (v4)
  {
    WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::OptionSet<WebCore::ScriptTrackingPrivacyFlag>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::OptionSet<WebCore::ScriptTrackingPrivacyFlag>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::OptionSet<WebCore::ScriptTrackingPrivacyFlag>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::OptionSet<WebCore::ScriptTrackingPrivacyFlag>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v4, *(this + 8));
  }

  if (*this)
  {
    WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::OptionSet<WebCore::ScriptTrackingPrivacyFlag>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::OptionSet<WebCore::ScriptTrackingPrivacyFlag>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::OptionSet<WebCore::ScriptTrackingPrivacyFlag>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::OptionSet<WebCore::ScriptTrackingPrivacyFlag>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(*this, *(this + 2));
  }
}

uint64_t WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::OptionSet<WebCore::ScriptTrackingPrivacyFlag>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::OptionSet<WebCore::ScriptTrackingPrivacyFlag>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::OptionSet<WebCore::ScriptTrackingPrivacyFlag>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::OptionSet<WebCore::ScriptTrackingPrivacyFlag>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(WTF::StringImpl **this, WTF::StringImpl *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = this;
    do
    {
      v5 = *v4;
      *v4 = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree(this, a2);
}

WebKit::SpeechRecognitionRealtimeMediaSourceManager *std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager>::reset[abi:sn200100](WebKit::SpeechRecognitionRealtimeMediaSourceManager **a1, WebKit::SpeechRecognitionRealtimeMediaSourceManager *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    WebKit::SpeechRecognitionRealtimeMediaSourceManager::~SpeechRecognitionRealtimeMediaSourceManager(result);

    return bmalloc::api::tzoneFree(v4, v5);
  }

  return result;
}

void WebCore::DeferrableOneShotTimer::~DeferrableOneShotTimer(WebCore::DeferrableOneShotTimer *this)
{
  *this = &unk_1F1122B58;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  WebCore::TimerBase::~TimerBase(this);
}

{
  *this = &unk_1F1122B58;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  WebCore::TimerBase::~TimerBase(this);
}

{
  *this = &unk_1F1122B58;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  WebCore::TimerBase::~TimerBase(this);

  bmalloc::api::tzoneFree(v3, v4);
}

uint64_t WebCore::DeferrableOneShotTimer::fired(WebCore::DeferrableOneShotTimer *this)
{
  v1 = *(this + 4);
  if ((v1 & 0x2000000000000) == 0)
  {
    return (*(**(this + 6) + 16))();
  }

  *(this + 4) = v1 & 0xFDFFFFFFFFFFFFLL;
  return WebCore::TimerBase::start();
}

WebKit::LibWebRTCNetwork *std::unique_ptr<WebKit::LibWebRTCNetwork>::reset[abi:sn200100](WebKit::LibWebRTCNetwork **a1, WebKit::LibWebRTCNetwork *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    WebKit::LibWebRTCNetwork::~LibWebRTCNetwork(result);

    return bmalloc::api::tzoneFree(v5, v6);
  }

  return result;
}

uint64_t **std::unique_ptr<WebKit::AudioMediaStreamTrackRendererInternalUnitManager>::reset[abi:sn200100](uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*v2)
    {
      WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::deallocateTable(*v2, a2);
    }

    return bmalloc::api::tzoneFree(v2, a2);
  }

  return result;
}

uint64_t WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>>::~KeyValuePair(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    if (v2[2] == 1)
    {
      (*(*v2 + 8))(v2);
    }

    else
    {
      --v2[2];
    }
  }

  return a1;
}

unint64_t WTF::Vector<WTF::Function<void ()(WebCore::UserGestureToken &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WTF::Function<void ()(WebCore::UserGestureToken &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WTF::Function<void ()(WebCore::UserGestureToken &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

unsigned int *WTF::Vector<WTF::Function<void ()(WebCore::UserGestureToken &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(unsigned int *result, unint64_t a2)
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

BOOL WebKit::getNetworkProcessConnection(IPC::Connection &)::$_0::operator()(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED6416A0;
  v3 = os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    *buf = 134217984;
    v16 = WebCore::Process::identifier(v3);
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "getNetworkProcessConnection: Request connection for core identifier %llu", buf, 0xCu);
  }

  IPC::Connection::sendSync<Messages::WebProcessProxy::GetNetworkProcessConnection>(buf, *a1);
  v4 = v17;
  if (v17)
  {
    v10 = qword_1ED6416A0;
    v11 = os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_ERROR);
    if (v11)
    {
      if (v4 != 1)
      {
        mpark::throw_bad_variant_access(v11);
      }

      v12 = 136446210;
      *&v13 = IPC::errorAsString();
      _os_log_error_impl(&dword_19D52D000, v10, OS_LOG_TYPE_ERROR, "getNetworkProcessConnection: Failed to send message or receive invalid message: error %{public}s", &v12, 0xCu);
    }

    __break(0xC471u);
    JUMPOUT(0x19E1826E0);
  }

  IPC::ConnectionSendSyncResult<Messages::WebProcessProxy::GetNetworkProcessConnection>::takeReply(&v12, buf);
  v5 = *(a1 + 8);
  WTF::MachSendRight::operator=();
  v6 = *&v14[13];
  v7 = *v14;
  *(v5 + 4) = v13;
  *(v5 + 20) = v7;
  *(v5 + 33) = v6;
  WTF::MachSendRight::~MachSendRight(&v12);
  v8 = **(a1 + 8);
  if (v17 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<IPC::ConnectionSendSyncResult<Messages::WebProcessProxy::GetNetworkProcessConnection>::ReplyData,IPC::Error>,(mpark::detail::Trait)1> &>(buf);
  }

  return (v8 - 1) < 0xFFFFFFFE;
}

IPC::Encoder *IPC::Connection::sendSync<Messages::WebProcessProxy::GetNetworkProcessConnection>(_BYTE *a1, unsigned __int8 *a2)
{
  IPC::Connection::createSyncMessageEncoder(0x1079, 0, v20);
  v4 = IPC::Connection::sendSyncMessage(a2, v20[1], v20, 4, &v18, INFINITY);
  if (!v19)
  {
    v6 = v18;
    v18 = 0;
    v17 = v6;
    if (*(v6 + 25) == 3194)
    {
      *a1 = 11;
      a1[56] = 1;
    }

    else
    {
      v15[0] = 0;
      v16 = 0;
      IPC::Decoder::operator>><std::tuple<WebKit::NetworkProcessConnectionInfo>>(v6, v15);
      if (v16 == 1)
      {
        IPC::ConnectionSendSyncResult<Messages::WebProcessProxy::GetNetworkProcessConnection>::ConnectionSendSyncResult(a1, &v17, v15);
        if (v16)
        {
          WTF::MachSendRight::~MachSendRight(v15);
        }
      }

      else
      {
        *a1 = 14;
        a1[56] = 1;
      }

      v6 = v17;
      if (!v17)
      {
        goto LABEL_7;
      }
    }

    IPC::Decoder::~Decoder(v6);
    bmalloc::api::tzoneFree(v13, v14);
LABEL_7:
    if (!v19)
    {
      v7 = v18;
      v18 = 0;
      if (v7)
      {
        IPC::Decoder::~Decoder(v7);
        bmalloc::api::tzoneFree(v11, v12);
      }
    }

    goto LABEL_10;
  }

  if (v19 != 1)
  {
    mpark::throw_bad_variant_access(v4);
  }

  *a1 = v18;
  a1[56] = 1;
LABEL_10:
  result = v20[0];
  v20[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

__n128 IPC::ConnectionSendSyncResult<Messages::WebProcessProxy::GetNetworkProcessConnection>::takeReply(mpark *a1, uint64_t a2)
{
  if (*(a2 + 56))
  {
    mpark::throw_bad_variant_access(a1);
  }

  v3 = WTF::MachSendRight::MachSendRight();
  *(v3 + 4) = *(a2 + 12);
  result = *(a2 + 28);
  *(v3 + 20) = result;
  *(v3 + 33) = *(a2 + 41);
  return result;
}

IPC::Decoder *IPC::Decoder::operator>><std::tuple<WebKit::NetworkProcessConnectionInfo>>(IPC::Decoder *a1, WTF::MachSendRight *a2)
{
  IPC::Decoder::decode<std::tuple<WebKit::NetworkProcessConnectionInfo>>(v5, a1);
  std::__optional_storage_base<std::tuple<WebKit::NetworkProcessConnectionInfo>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<std::tuple<WebKit::NetworkProcessConnectionInfo>,false>>(a2, v5);
  if (v5[44] == 1)
  {
    WTF::MachSendRight::~MachSendRight(v5);
  }

  return a1;
}

void IPC::Decoder::decode<std::tuple<WebKit::NetworkProcessConnectionInfo>>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<std::tuple<WebKit::NetworkProcessConnectionInfo>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a1 + 44) & 1) == 0)
  {

    IPC::Decoder::markInvalid(a2);
  }
}

void IPC::ArgumentCoder<std::tuple<WebKit::NetworkProcessConnectionInfo>,void>::decode<IPC::Decoder>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WebKit::NetworkProcessConnectionInfo>(v4, a2);
  if (v6 == 1)
  {
    WTF::MachSendRight::MachSendRight();
    *(a1 + 4) = *&v4[4];
    *(a1 + 20) = *v5;
    *(a1 + 33) = *&v5[13];
    v3 = v6;
    *(a1 + 44) = 1;
    if (v3)
    {
      WTF::MachSendRight::~MachSendRight(v4);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 44) = 0;
  }
}

void IPC::Decoder::decode<WebKit::NetworkProcessConnectionInfo>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WebKit::NetworkProcessConnectionInfo,void>::decode(a2, a1);
  if ((*(a1 + 44) & 1) == 0)
  {

    IPC::Decoder::markInvalid(a2);
  }
}

void std::__optional_storage_base<std::tuple<WebKit::NetworkProcessConnectionInfo>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<std::tuple<WebKit::NetworkProcessConnectionInfo>,false>>(WTF::MachSendRight *this, uint64_t a2)
{
  if (*(this + 44) == *(a2 + 44))
  {
    if (*(this + 44))
    {
      WTF::MachSendRight::operator=();
      v6 = *(a2 + 33);
      v7 = *(a2 + 20);
      *(this + 4) = *(a2 + 4);
      *(this + 20) = v7;
      *(this + 33) = v6;
    }
  }

  else if (*(this + 44))
  {
    WTF::MachSendRight::~MachSendRight(this);
    *(this + 44) = 0;
  }

  else
  {
    WTF::MachSendRight::MachSendRight();
    v4 = *(a2 + 4);
    v5 = *(a2 + 20);
    *(this + 33) = *(a2 + 33);
    *(this + 20) = v5;
    *(this + 4) = v4;
    *(this + 44) = 1;
  }
}

uint64_t IPC::ConnectionSendSyncResult<Messages::WebProcessProxy::GetNetworkProcessConnection>::ConnectionSendSyncResult(uint64_t a1, IPC::Decoder **a2, uint64_t a3)
{
  v5 = *a2;
  *a2 = 0;
  v7 = v5;
  WTF::MachSendRight::MachSendRight();
  *&v8[4] = *(a3 + 4);
  *v9 = *(a3 + 20);
  *&v9[13] = *(a3 + 33);
  *a1 = v7;
  WTF::MachSendRight::MachSendRight();
  *(a1 + 12) = *&v8[4];
  *(a1 + 28) = *v9;
  *(a1 + 41) = *&v9[13];
  *(a1 + 56) = 0;
  WTF::MachSendRight::~MachSendRight(v8);
  return a1;
}

IPC::Decoder *mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<IPC::ConnectionSendSyncResult<Messages::WebProcessProxy::GetNetworkProcessConnection>::ReplyData,IPC::Error>,(mpark::detail::Trait)1> &>(IPC::Decoder *result)
{
  if (!*(result + 56))
  {
    v1 = result;
    WTF::MachSendRight::~MachSendRight((result + 8));

    return std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](v1, 0);
  }

  return result;
}

uint64_t WebKit::AudioMediaStreamTrackRendererInternalUnitManager::operator new(WebKit::AudioMediaStreamTrackRendererInternalUnitManager *this, void *a2)
{
  if (this == 8 && WebKit::AudioMediaStreamTrackRendererInternalUnitManager::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::AudioMediaStreamTrackRendererInternalUnitManager::s_heapRef, a2);
  }

  else
  {
    return WebKit::AudioMediaStreamTrackRendererInternalUnitManager::operatorNewSlow(this);
  }
}

uint64_t WTF::HashTable<WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,WTF::HashTraits<WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,WTF::HashTraits<WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,WTF::FastMalloc>::deallocateTable(uint64_t *a1, WTF::StringImpl *a2)
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
          WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v5, a2);
        }
      }

      ++v4;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 2), a2);
}

uint64_t IPC::StreamClientConnection::send<Messages::LogStream::WEBPROCESS_PREPARE_TO_SUSPEND,WebKit::LogStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, double *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  result = IPC::StreamClientConnection::trySendDestinationIDIfNeeded(a1, a3, v7);
  if (!result)
  {
    result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v10, v7);
    if (v12 == 1)
    {
      result = IPC::StreamClientConnection::trySendStream<Messages::LogStream::WEBPROCESS_PREPARE_TO_SUSPEND>(a1, v10, v11, a2);
      if ((result & 1) == 0)
      {
        if (v12)
        {
          IPC::StreamClientConnection::sendProcessOutOfStreamMessage(a1, v10, v11);
          return IPC::Connection::send<Messages::LogStream::WEBPROCESS_PREPARE_TO_SUSPEND>(*(a1 + 8), a2, a3);
        }

        else
        {
          __break(1u);
        }
      }
    }
  }

  return result;
}

uint64_t IPC::StreamClientConnection::trySendStream<Messages::LogStream::WEBPROCESS_PREPARE_TO_SUSPEND>(uint64_t a1, _WORD *a2, unint64_t a3, uint64_t a4)
{
  v10 = a3;
  if (a3 <= 1)
  {
    result = 1067;
    __break(0xC471u);
  }

  else
  {
    *a2 = 310;
    v8 = a2 + 1;
    v9 = a3 - 2;
    Messages::LogStream::WEBPROCESS_PREPARE_TO_SUSPEND::encode<IPC::StreamConnectionEncoder>(a4, &v8);
    v5 = v8;
    if (v8)
    {
      v6 = IPC::StreamClientConnectionBuffer::release((a1 + 72), v10 - v9);
      IPC::StreamClientConnection::wakeUpServer(a1, v6);
    }

    return v5 != 0;
  }

  return result;
}

uint64_t Messages::LogStream::WEBPROCESS_PREPARE_TO_SUSPEND::encode<IPC::StreamConnectionEncoder>(uint64_t a1, uint64_t a2)
{
  IPC::StreamConnectionEncoder::operator<<<unsigned long long const&>(a2, a1);
  IPC::StreamConnectionEncoder::operator<<<int>(a2, **(a1 + 8));
  v5 = *(a1 + 16);
  return IPC::StreamConnectionEncoder::encodeSpan<double const,18446744073709551615ul>(a2, &v5, 1);
}

uint64_t IPC::Connection::send<Messages::LogStream::WEBPROCESS_PREPARE_TO_SUSPEND>(uint64_t *a1, double *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 310;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v6, **(a2 + 1));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v6, a2[2]);
  v8 = IPC::Connection::sendMessageImpl(a1, &v13, 1, 0);
  v9 = v13;
  v13 = 0;
  if (v9)
  {
    IPC::Encoder::~Encoder(v9, v7);
    bmalloc::api::tzoneFree(v11, v12);
  }

  return v8;
}

uint64_t IPC::StreamClientConnection::send<Messages::LogStream::WEBPROCESS_READY_TO_SUSPEND,WebKit::LogStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  result = IPC::StreamClientConnection::trySendDestinationIDIfNeeded(a1, a3, v7);
  if (!result)
  {
    result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v10, v7);
    if (v12 == 1)
    {
      result = IPC::StreamClientConnection::trySendStream<Messages::LogStream::WEBPROCESS_READY_TO_SUSPEND>(a1, v10, v11, a2);
      if ((result & 1) == 0)
      {
        if (v12)
        {
          IPC::StreamClientConnection::sendProcessOutOfStreamMessage(a1, v10, v11);
          return IPC::Connection::send<Messages::LogStream::WEBPROCESS_READY_TO_SUSPEND>(*(a1 + 8), a2, a3);
        }

        else
        {
          __break(1u);
        }
      }
    }
  }

  return result;
}

uint64_t IPC::StreamClientConnection::trySendStream<Messages::LogStream::WEBPROCESS_READY_TO_SUSPEND>(uint64_t a1, _WORD *a2, unint64_t a3, void *a4)
{
  if (a3 <= 1)
  {
    result = 1067;
    __break(0xC471u);
  }

  else
  {
    *a2 = 311;
    v4 = a2 + 1;
    v5 = a3 - 2;
    v6 = -v4 & 7 | 8;
    if (a3 - 2 >= v6)
    {
      v8 = -v4 & 7;
      *(v4 + v8) = *a4;
      v9 = IPC::StreamClientConnectionBuffer::release((a1 + 72), v8 + 10);
      IPC::StreamClientConnection::wakeUpServer(a1, v9);
    }

    return v5 >= v6;
  }

  return result;
}

uint64_t IPC::Connection::send<Messages::LogStream::WEBPROCESS_READY_TO_SUSPEND>(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 311;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, *a2);
  v8 = IPC::Connection::sendMessageImpl(a1, &v13, 1, 0);
  v9 = v13;
  v13 = 0;
  if (v9)
  {
    IPC::Encoder::~Encoder(v9, v7);
    bmalloc::api::tzoneFree(v11, v12);
  }

  return v8;
}

uint64_t IPC::StreamClientConnection::send<Messages::LogStream::WEBPROCESS_MARK_ALL_LAYERS_VOLATILE,WebKit::LogStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  result = IPC::StreamClientConnection::trySendDestinationIDIfNeeded(a1, a3, v7);
  if (!result)
  {
    result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v10, v7);
    if (v12 == 1)
    {
      result = IPC::StreamClientConnection::trySendStream<Messages::LogStream::WEBPROCESS_MARK_ALL_LAYERS_VOLATILE>(a1, v10, v11, a2);
      if ((result & 1) == 0)
      {
        if (v12)
        {
          IPC::StreamClientConnection::sendProcessOutOfStreamMessage(a1, v10, v11);
          return IPC::Connection::send<Messages::LogStream::WEBPROCESS_MARK_ALL_LAYERS_VOLATILE>(*(a1 + 8), a2, a3);
        }

        else
        {
          __break(1u);
        }
      }
    }
  }

  return result;
}

uint64_t IPC::StreamClientConnection::trySendStream<Messages::LogStream::WEBPROCESS_MARK_ALL_LAYERS_VOLATILE>(uint64_t a1, _WORD *a2, unint64_t a3, void *a4)
{
  if (a3 <= 1)
  {
    result = 1067;
    __break(0xC471u);
  }

  else
  {
    *a2 = 309;
    v4 = a2 + 1;
    v5 = a3 - 2;
    v6 = -v4 & 7 | 8;
    if (a3 - 2 >= v6)
    {
      v8 = -v4 & 7;
      *(v4 + v8) = *a4;
      v9 = IPC::StreamClientConnectionBuffer::release((a1 + 72), v8 + 10);
      IPC::StreamClientConnection::wakeUpServer(a1, v9);
    }

    return v5 >= v6;
  }

  return result;
}

uint64_t IPC::Connection::send<Messages::LogStream::WEBPROCESS_MARK_ALL_LAYERS_VOLATILE>(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 309;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, *a2);
  v8 = IPC::Connection::sendMessageImpl(a1, &v13, 1, 0);
  v9 = v13;
  v13 = 0;
  if (v9)
  {
    IPC::Encoder::~Encoder(v9, v7);
    bmalloc::api::tzoneFree(v11, v12);
  }

  return v8;
}

uint64_t IPC::StreamClientConnection::send<Messages::LogStream::WEBPROCESS_FREEZE_ALL_LAYER_TREES,WebKit::LogStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  result = IPC::StreamClientConnection::trySendDestinationIDIfNeeded(a1, a3, v7);
  if (!result)
  {
    result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v10, v7);
    if (v12 == 1)
    {
      result = IPC::StreamClientConnection::trySendStream<Messages::LogStream::WEBPROCESS_FREEZE_ALL_LAYER_TREES>(a1, v10, v11, a2);
      if ((result & 1) == 0)
      {
        if (v12)
        {
          IPC::StreamClientConnection::sendProcessOutOfStreamMessage(a1, v10, v11);
          return IPC::Connection::send<Messages::LogStream::WEBPROCESS_FREEZE_ALL_LAYER_TREES>(*(a1 + 8), a2, a3);
        }

        else
        {
          __break(1u);
        }
      }
    }
  }

  return result;
}

uint64_t IPC::StreamClientConnection::trySendStream<Messages::LogStream::WEBPROCESS_FREEZE_ALL_LAYER_TREES>(uint64_t a1, _WORD *a2, unint64_t a3, void *a4)
{
  if (a3 <= 1)
  {
    result = 1067;
    __break(0xC471u);
  }

  else
  {
    *a2 = 308;
    v4 = a2 + 1;
    v5 = a3 - 2;
    v6 = -v4 & 7 | 8;
    if (a3 - 2 >= v6)
    {
      v8 = -v4 & 7;
      *(v4 + v8) = *a4;
      v9 = IPC::StreamClientConnectionBuffer::release((a1 + 72), v8 + 10);
      IPC::StreamClientConnection::wakeUpServer(a1, v9);
    }

    return v5 >= v6;
  }

  return result;
}

uint64_t IPC::Connection::send<Messages::LogStream::WEBPROCESS_FREEZE_ALL_LAYER_TREES>(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 308;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, *a2);
  v8 = IPC::Connection::sendMessageImpl(a1, &v13, 1, 0);
  v9 = v13;
  v13 = 0;
  if (v9)
  {
    IPC::Encoder::~Encoder(v9, v7);
    bmalloc::api::tzoneFree(v11, v12);
  }

  return v8;
}

uint64_t WebCore::DeferrableOneShotTimer::DeferrableOneShotTimer<WebKit::WebProcess>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = WTF::fastMalloc(0x20);
  *v10 = &unk_1F11223C8;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a2;
  result = WebCore::TimerBase::TimerBase(a1);
  *a1 = &unk_1F1122B58;
  *(a1 + 48) = v10;
  *(a1 + 56) = a5;
  return result;
}

uint64_t WTF::Detail::CallableWrapper<std::__bind<void (WebKit::WebProcess::*&)(void),WebKit::WebProcess*>,void>::call(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

uint64_t WebKit::WebProcess::transformHandlesToObjects(API::Object *)::Transformer::shouldTransformObject(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 16))(a2);
  if (v3 == 13)
  {
    if ((*(*a2 + 16))(a2) == 13)
    {
      v4 = 32;
      goto LABEL_7;
    }

LABEL_10:
    __break(0xC471u);
    JUMPOUT(0x19E183700);
  }

  if (v3 != 11)
  {
    v5 = 0;
    return v5 & 1;
  }

  if ((*(*a2 + 16))(a2) != 11)
  {
    goto LABEL_10;
  }

  v4 = 24;
LABEL_7:
  v5 = *(a2 + v4);
  return v5 & 1;
}

uint64_t WebKit::WebProcess::transformHandlesToObjects(API::Object *)::Transformer::transformObject@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v2 = a1;
  v4 = (*(*a1 + 16))(a1);
  if (v4 == 13)
  {
    {
      v9 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v9 = WebKit::WebProcess::operator new(0x370, v5);
      WebKit::WebProcess::singleton(void)::process = WebKit::WebProcess::WebProcess(v9);
    }

    if ((*(*v2 + 16))(v2) == 13)
    {
      v11 = v2[3];
      result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v9 + 17, &v11);
      goto LABEL_12;
    }

LABEL_17:
    __break(0xC471u);
    JUMPOUT(0x19E1838C4);
  }

  if (v4 != 11)
  {
LABEL_13:
    result = CFRetain(v2[1]);
    goto LABEL_14;
  }

  result = (*(*v2 + 16))(v2);
  if (result != 11)
  {
    goto LABEL_17;
  }

  v2 = v2[2];
  if (!v2)
  {
    goto LABEL_14;
  }

  {
    v8 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v10 = WebKit::WebProcess::operator new(0x370, v7);
    v8 = WebKit::WebProcess::WebProcess(v10);
    WebKit::WebProcess::singleton(void)::process = v8;
  }

  result = WebKit::WebProcess::webFrame(v8, v2, 1);
LABEL_12:
  v2 = result;
  if (result)
  {
    goto LABEL_13;
  }

LABEL_14:
  *a2 = v2;
  return result;
}

void *WebKit::WebProcess::transformObjectsToHandles(API::Object *)::Transformer::transformObject@<X0>(API::Object *a1@<X1>, API::Object **a2@<X8>)
{
  v2 = a1;
  v4 = (*(*a1 + 16))(a1);
  if (v4 == 141)
  {
    if ((*(*v2 + 16))(v2) != 141)
    {
      __break(0xC471u);
      JUMPOUT(0x19E183B10);
    }

    v7 = *(v2 + 229);
    if ((*(*v2 + 16))(v2) != 141)
    {
      __break(0xC471u);
      JUMPOUT(0x19E183B30);
    }

    v8 = *(v2 + 6);
    v2 = API::Object::newObject(0x28uLL, 13);
    result = API::Object::Object(v2);
    *result = &unk_1F10E7D30;
    result[2] = v7;
    result[3] = v8;
    *(result + 32) = 1;
  }

  else if (v4 == 138)
  {
    if ((*(*v2 + 16))(v2) != 138)
    {
      __break(0xC471u);
      JUMPOUT(0x19E183AF0);
    }

    v5 = *(v2 + 11);
    v2 = API::Object::newObject(0x20uLL, 11);
    result = API::Object::Object(v2);
    *result = &unk_1F10E7C40;
    result[2] = v5;
    *(result + 24) = 1;
  }

  else
  {
    result = CFRetain(*(v2 + 1));
  }

  *a2 = v2;
  return result;
}

uint64_t std::__all_of[abi:sn200100]<WTF::HashTableConstValuesIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableConstValuesIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,std::identity,WebKit::WebProcess::areAllPagesThrottleable(void)::$_0>(void *a1, void *a2, void *a3)
{
  if (a1 == a3)
  {
    return 1;
  }

  do
  {
    v4 = a1[1];
    v3 = *(v4 + 1728);
    LODWORD(v4) = *(v4 + 1730);
    if ((v3 & 0x1E1) == 0x20)
    {
      v4 = v4;
    }

    else
    {
      v4 = 0;
    }

    if (v4 != 1)
    {
      break;
    }

    do
    {
      a1 += 2;
    }

    while (a1 != a2 && (*a1 + 1) <= 1);
  }

  while (a1 != a3);
  return v4;
}

_DWORD *WTF::RefCounted<WebCore::UserGestureToken>::deref(_DWORD *result)
{
  if (*result == 1)
  {
    v2 = MEMORY[0x19EB06FF0](result - 2);

    return WTF::fastFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebProcess::WebProcess(void)::$_0,void,PAL::HysteresisState>::call(uint64_t result, WTF::StringImpl *a2)
{
  if (a2)
  {
    v2 = *(result + 8);
    result = *(v2 + 456);
    if (result)
    {
      *(v2 + 456) = 0;
      return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(result, a2);
    }
  }

  return result;
}

uint64_t WTF::Vector<WTF::RefPtr<WebKit::SandboxExtension,WTF::RawPtrTraits<WebKit::SandboxExtension>,WTF::DefaultRefDerefTraits<WebKit::SandboxExtension>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v6 = *a1;
    v7 = 8 * v3;
    do
    {
      v8 = *v6;
      *v6 = 0;
      if (v8)
      {
        WTF::RefCounted<WebKit::SandboxExtension>::deref(v8);
      }

      ++v6;
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

uint64_t WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::WebProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::WebProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<std::unique_ptr<WebKit::WebProcessSupplement>>(uint64_t a1, uint64_t *a2, WTF::ASCIILiteralHash *this, uint64_t *a4)
{
  if (!*(this + 1) || *this == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E183E94);
  }

  v8 = *a2;
  if (*a2 || (WTF::HashTable<WTF::ASCIILiteral,WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebKit::WebProcessSupplement>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebKit::WebProcessSupplement>>>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::WebProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::WebProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ASCIILiteral>,WTF::FastMalloc>::expand(a2, 0), (v8 = *a2) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = WTF::ASCIILiteralHash::hash(this, a2) & v9;
  v11 = v8 + 24 * v10;
  v12 = *(v11 + 8);
  if (v12)
  {
    v13 = 0;
    v14 = 1;
    do
    {
      if (*v11 == -1)
      {
        v13 = v11;
      }

      else
      {
        v15 = *(this + 1);
        if (v12 == v15)
        {
          result = memcmp(*v11, *this, v15);
          if (!result)
          {
            v24 = *a2;
            if (*a2)
            {
              v25 = *(v24 - 4);
            }

            else
            {
              v25 = 0;
            }

            v23 = 0;
            v22 = v24 + 24 * v25;
            goto LABEL_20;
          }
        }
      }

      v10 = (v10 + v14) & v9;
      v11 = v8 + 24 * v10;
      v12 = *(v11 + 8);
      ++v14;
    }

    while (v12);
    if (v13)
    {
      *v13 = 0;
      v13[1] = 0;
      v13[2] = 0;
      --*(*a2 - 16);
      v11 = v13;
    }
  }

  *v11 = *this;
  v17 = *a4;
  *a4 = 0;
  result = *(v11 + 16);
  *(v11 + 16) = v17;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v18 = *a2;
  if (*a2)
  {
    v19 = *(v18 - 12) + 1;
  }

  else
  {
    v19 = 1;
  }

  *(v18 - 12) = v19;
  v20 = (*(v18 - 16) + v19);
  v21 = *(v18 - 4);
  if (v21 > 0x400)
  {
    if (v21 > 2 * v20)
    {
      goto LABEL_19;
    }

LABEL_24:
    result = WTF::HashTable<WTF::ASCIILiteral,WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebKit::WebProcessSupplement>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebKit::WebProcessSupplement>>>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::WebProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::WebProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ASCIILiteral>,WTF::FastMalloc>::expand(a2, v11);
    v11 = result;
    v18 = *a2;
    if (*a2)
    {
      LODWORD(v21) = *(v18 - 4);
    }

    else
    {
      LODWORD(v21) = 0;
    }

    goto LABEL_19;
  }

  if (3 * v21 <= 4 * v20)
  {
    goto LABEL_24;
  }

LABEL_19:
  v22 = v18 + 24 * v21;
  v23 = 1;
LABEL_20:
  *a1 = v11;
  *(a1 + 8) = v22;
  *(a1 + 16) = v23;
  return result;
}

uint64_t WTF::HashTable<WTF::ASCIILiteral,WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebKit::WebProcessSupplement>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebKit::WebProcessSupplement>>>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::WebProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::WebProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ASCIILiteral>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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
  v7 = WTF::fastZeroedMalloc((24 * v6 + 16));
  *a1 = (v7 + 4);
  v7[2] = v6 - 1;
  v7[3] = v6;
  *v7 = 0;
  v7[1] = v5;
  if (v4)
  {
    v9 = 0;
    v10 = 0;
    v11 = v4;
    do
    {
      v12 = v3 + 24 * v9;
      if (*v12 != -1)
      {
        if (*(v12 + 8))
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

          v15 = WTF::ASCIILiteralHash::hash((v3 + 24 * v9), v8) & v14;
          v16 = v13 + 24 * v15;
          if (*(v16 + 8))
          {
            v21 = 1;
            do
            {
              v15 = (v15 + v21) & v14;
              v16 = v13 + 24 * v15;
              ++v21;
            }

            while (*(v16 + 8));
          }

          v17 = *(v16 + 16);
          *(v16 + 16) = 0;
          if (v17)
          {
            (*(*v17 + 8))(v17);
          }

          *v16 = *v12;
          v18 = *(v12 + 16);
          *(v12 + 16) = 0;
          *(v16 + 16) = v18;
          v19 = *(v12 + 16);
          *(v12 + 16) = 0;
          if (v19)
          {
            (*(*v19 + 8))(v19);
          }

          if (v12 == a2)
          {
            v10 = v16;
          }
        }

        else
        {
          v20 = *(v12 + 16);
          *(v12 + 16) = 0;
          if (v20)
          {
            (*(*v20 + 8))(v20);
          }
        }
      }

      ++v9;
    }

    while (v9 != v11);
  }

  else
  {
    v10 = 0;
    result = 0;
    if (!v3)
    {
      return result;
    }
  }

  WTF::fastFree((v3 - 16), v8);
  return v10;
}

uint64_t WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::WebProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::WebProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<std::unique_ptr<WebKit::WebMediaKeyStorageManager>>(uint64_t a1, uint64_t *a2, WTF::ASCIILiteralHash *this, uint64_t *a4)
{
  if (!*(this + 1))
  {
    __break(0xC471u);
    JUMPOUT(0x19E1842D8);
  }

  if (*this == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1842F8);
  }

  v8 = *a2;
  if (*a2 || (WTF::HashTable<WTF::ASCIILiteral,WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebKit::WebProcessSupplement>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebKit::WebProcessSupplement>>>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::WebProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::WebProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ASCIILiteral>,WTF::FastMalloc>::expand(a2, 0), (v8 = *a2) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = WTF::ASCIILiteralHash::hash(this, a2) & v9;
  v11 = v8 + 24 * v10;
  v12 = *(v11 + 8);
  if (v12)
  {
    v21 = 0;
    v22 = 1;
    do
    {
      if (*v11 == -1)
      {
        v21 = v11;
      }

      else
      {
        v23 = *(this + 1);
        if (v12 == v23)
        {
          v26 = v21;
          result = memcmp(*v11, *this, v23);
          v21 = v26;
          if (!result)
          {
            v24 = *a2;
            if (*a2)
            {
              v25 = *(v24 - 4);
            }

            else
            {
              v25 = 0;
            }

            v20 = 0;
            v19 = v24 + 24 * v25;
            goto LABEL_13;
          }
        }
      }

      v10 = (v10 + v22) & v9;
      v11 = v8 + 24 * v10;
      v12 = *(v11 + 8);
      ++v22;
    }

    while (v12);
    if (v21)
    {
      *v21 = 0;
      v21[1] = 0;
      v21[2] = 0;
      --*(*a2 - 16);
      v11 = v21;
    }
  }

  *v11 = *this;
  v13 = *a4;
  *a4 = 0;
  result = *(v11 + 16);
  *(v11 + 16) = v13;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

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
    if (v18 > 2 * v17)
    {
      goto LABEL_12;
    }

LABEL_15:
    result = WTF::HashTable<WTF::ASCIILiteral,WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebKit::WebProcessSupplement>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebKit::WebProcessSupplement>>>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::WebProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::WebProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ASCIILiteral>,WTF::FastMalloc>::expand(a2, v11);
    v11 = result;
    v15 = *a2;
    if (*a2)
    {
      LODWORD(v18) = *(v15 - 4);
    }

    else
    {
      LODWORD(v18) = 0;
    }

    goto LABEL_12;
  }

  if (3 * v18 <= 4 * v17)
  {
    goto LABEL_15;
  }

LABEL_12:
  v19 = v15 + 24 * v18;
  v20 = 1;
LABEL_13:
  *a1 = v11;
  *(a1 + 8) = v19;
  *(a1 + 16) = v20;
  return result;
}

void WTF::Function<void ()(WebCore::ProcessIdentity)>::operator()(uint64_t a1, const WTF::MachSendRight *a2)
{
  WTF::MachSendRight::MachSendRight(v3, a2);
  (*(*a1 + 16))(a1, v3);
  WTF::MachSendRight::~MachSendRight(v3);
}

void *WTF::Detail::CallableWrapper<WebKit::WebProcess::initializeWebProcess(WebKit::WebProcessCreationParameters &&,WTF::CompletionHandler<void ()(WebCore::ProcessIdentity)> &&)::$_0,void,WTF::Critical,WTF::Synchronous>::~CallableWrapper(void *result)
{
  *result = &unk_1F1122500;
  result[2] = 0;
  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebProcess::initializeWebProcess(WebKit::WebProcessCreationParameters &&,WTF::CompletionHandler<void ()(WebCore::ProcessIdentity)> &&)::$_0,void,WTF::Critical,WTF::Synchronous>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F1122500;
  *(a1 + 2) = 0;
  return WTF::fastFree(a1, a2);
}

void *WebKit::WebProcess::initializeWebProcess(WebKit::WebProcessCreationParameters &&,WTF::CompletionHandler<void ()(WebCore::ProcessIdentity)> &&)::$_0::operator()(WebKit::WebProcess *this, unsigned int a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = *(this + 69);
  if (v4)
  {
    v5 = *(v4 - 12) == 0;
  }

  else
  {
    v5 = 1;
  }

  if (*(MEMORY[0x1E696EBF0] + 1675) == 1)
  {
    v12 = WebCore::GCController::singleton(this);
    WebCore::GCController::dumpHeap(v12);
  }

  if (*(this + 657) != 1)
  {
    goto LABEL_6;
  }

  v13 = *(this + 159);
  if ((v13 & 0xFFFFFFFE) == 2)
  {
LABEL_17:
    v14 = qword_1ED6416A0;
    v15 = os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT);
    if (v13 == 2)
    {
      if (v15)
      {
        if (*(this + 712) == 1)
        {
          v17 = *(this + 88);
        }

        else
        {
          v17 = 0;
        }

        v20 = 134218240;
        v21 = this;
        v22 = 2048;
        v23 = v17;
        v19 = "%p - [sessionID=%llu] WebProcess::initializeWebProcess: Prewarmed WebProcess is exiting due to memory pressure";
        goto LABEL_37;
      }
    }

    else if (v13 == 3)
    {
      if (v15)
      {
        if (*(this + 712) == 1)
        {
          v16 = *(this + 88);
        }

        else
        {
          v16 = 0;
        }

        v20 = 134218240;
        v21 = this;
        v22 = 2048;
        v23 = v16;
        v19 = "%p - [sessionID=%llu] WebProcess::initializeWebProcess: Cached WebProcess is exiting due to memory pressure";
LABEL_37:
        _os_log_impl(&dword_19D52D000, v14, OS_LOG_TYPE_DEFAULT, v19, &v20, 0x16u);
      }
    }

    else if (v15)
    {
      if (*(this + 712) == 1)
      {
        v18 = *(this + 88);
      }

      else
      {
        v18 = 0;
      }

      v20 = 134218240;
      v21 = this;
      v22 = 2048;
      v23 = v18;
      v19 = "%p - [sessionID=%llu] WebProcess::initializeWebProcess: Suspended WebProcess is exiting due to memory pressure";
      goto LABEL_37;
    }

    return WebKit::AuxiliaryProcess::stopRunLoop(this);
  }

  if (WebKit::WebProcess::areAllPagesSuspended(this))
  {
    v13 = *(this + 159);
    goto LABEL_17;
  }

LABEL_6:
  WebCore::releaseMemory();
  result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(this + 17);
  v7 = result;
  v9 = v8;
  v10 = *(this + 17);
  if (v10)
  {
    v11 = (v10 + 16 * *(v10 - 4));
  }

  else
  {
    v11 = 0;
  }

  if (v11 != result)
  {
    do
    {
      result = WebKit::WebPage::releaseMemory(v7[1], (v5 | a2));
      do
      {
        v7 += 2;
      }

      while (v7 != v9 && (*v7 + 1) <= 1);
    }

    while (v7 != v11);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebProcess::initializeWebProcess(WebKit::WebProcessCreationParameters &&,WTF::CompletionHandler<void ()(WebCore::ProcessIdentity)> &&)::$_1,void>::~CallableWrapper(void *result)
{
  *result = &unk_1F1122528;
  result[2] = 0;
  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebProcess::initializeWebProcess(WebKit::WebProcessCreationParameters &&,WTF::CompletionHandler<void ()(WebCore::ProcessIdentity)> &&)::$_1,void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F1122528;
  *(a1 + 2) = 0;
  return WTF::fastFree(a1, a2);
}

atomic_ullong *WTF::Detail::CallableWrapper<WebKit::WebProcess::initializeWebProcess(WebKit::WebProcessCreationParameters &&,WTF::CompletionHandler<void ()(WebCore::ProcessIdentity)> &&)::$_1,void>::call(atomic_ullong *result)
{
  v1 = *(result[1] + 40);
  if (v1)
  {
    while (1)
    {
      v2 = *v1;
      if ((*v1 & 1) == 0)
      {
        break;
      }

      v3 = *v1;
      atomic_compare_exchange_strong_explicit(v1, &v3, v2 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v3 == v2)
      {
        goto LABEL_6;
      }
    }

    result = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v1);
LABEL_6:
    v4 = atomic_load((WTF::MemoryPressureHandler::singleton(result) + 4));
    v6 = IPC::Encoder::operator new(0x238, v5);
    *v6 = 2918;
    *(v6 + 68) = 0;
    *(v6 + 70) = 0;
    *(v6 + 69) = 0;
    *(v6 + 2) = 0;
    *(v6 + 3) = 0;
    *(v6 + 1) = 0;
    IPC::Encoder::encodeHeader(v6);
    v11 = v6;
    v12 = v4;
    IPC::Encoder::operator<<<unsigned char>(v6, &v12);
    IPC::Connection::sendMessageImpl(v1, &v11, 0, 0);
    v8 = v11;
    v11 = 0;
    if (v8)
    {
      IPC::Encoder::~Encoder(v8, v7);
      bmalloc::api::tzoneFree(v9, v10);
    }

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v1);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebProcess::initializeWebProcess(WebKit::WebProcessCreationParameters &&,WTF::CompletionHandler<void ()(WebCore::ProcessIdentity)> &&)::$_2,void,WTF::ProcessMemoryLimit>::~CallableWrapper(void *result)
{
  *result = &unk_1F1122550;
  result[2] = 0;
  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebProcess::initializeWebProcess(WebKit::WebProcessCreationParameters &&,WTF::CompletionHandler<void ()(WebCore::ProcessIdentity)> &&)::$_2,void,WTF::ProcessMemoryLimit>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F1122550;
  *(a1 + 2) = 0;
  return WTF::fastFree(a1, a2);
}

WTF::RunLoop *WTF::Detail::CallableWrapper<WebKit::WebProcess::initializeWebProcess(WebKit::WebProcessCreationParameters &&,WTF::CompletionHandler<void ()(WebCore::ProcessIdentity)> &&)::$_2,void,WTF::ProcessMemoryLimit>::call(WTF::RunLoop *result, int a2)
{
  v2 = *(result + 1);
  if (a2 == 1)
  {
    if (*(v2 + 634))
    {
      return result;
    }

    *(v2 + 634) = 1;
    v3 = 2;
    goto LABEL_7;
  }

  if (!a2 && (*(v2 + 633) & 1) == 0)
  {
    v3 = 1;
    *(v2 + 633) = 1;
LABEL_7:
    WTF::RunLoop::mainSingleton(result);
    v4 = WTF::fastMalloc(0x10);
    *v4 = &unk_1F1122578;
    *(v4 + 8) = v3;
    v5 = v4;
    WTF::RunLoop::dispatch();
    result = v5;
    if (v5)
    {
      return (*(*v5 + 8))(v5);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebProcess::initializeWebProcess(WebKit::WebProcessCreationParameters &&,WTF::CompletionHandler<void ()(WebCore::ProcessIdentity)> &&)::$_4,void>::~CallableWrapper(void *result)
{
  *result = &unk_1F11225C8;
  result[2] = 0;
  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebProcess::initializeWebProcess(WebKit::WebProcessCreationParameters &&,WTF::CompletionHandler<void ()(WebCore::ProcessIdentity)> &&)::$_4,void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F11225C8;
  *(a1 + 2) = 0;
  return WTF::fastFree(a1, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::WebProcess::initializeWebProcess(WebKit::WebProcessCreationParameters &&,WTF::CompletionHandler<void ()(WebCore::ProcessIdentity)> &&)::$_4,void>::call(uint64_t a1)
{
  v54 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin((v1 + 136));
  v3 = result;
  v5 = v4;
  v6 = *(v1 + 136);
  if (v6)
  {
    v7 = (v6 + 16 * *(v6 - 4));
  }

  else
  {
    v7 = 0;
  }

  if (v7 != result)
  {
    v8 = &WebKit::WebPreferencesKey::webAuthenticationEnabledKey(void)::$_0::operator() const(void)::impl[4];
    v26 = v7;
    do
    {
      v9 = *(*(v3 + 1) + 1752);
      v33 = 0;
      v31 = 0;
      v32 = 0;
      v34 = 1;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      WebCore::operator<<();
      v10 = *(v8 + 253);
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        v13 = *(v3 + 1);
        v14 = *(v13 + 1728);
        v15 = (v14 >> 2) & 1;
        if ((v14 & 0x1E1) == 0x20)
        {
          v16 = *(v13 + 1730);
        }

        else
        {
          v16 = 0;
        }

        v17 = *(v13 + 1820);
        v18 = WTF::MemoryPressureHandler::processStateDescription(v11);
        WTF::TextStream::release(&v29, &v31);
        WTF::String::utf8();
        if (v30)
        {
          v19 = v30 + 16;
        }

        else
        {
          v19 = 0;
        }

        WebKit::WebFrame::url(*(*(v3 + 1) + 88), &v27);
        WTF::String::utf8();
        if (v28)
        {
          v20 = v28 + 16;
        }

        else
        {
          v20 = 0;
        }

        *buf = 134219779;
        v39 = v13;
        v40 = 2048;
        v41 = v9;
        v42 = 1024;
        v43 = v15;
        v44 = 1024;
        v45 = v16;
        v46 = 1024;
        v47 = v17;
        v48 = 2082;
        v49 = v18;
        v50 = 2082;
        v51 = v19;
        v52 = 2081;
        v53 = v20;
        _os_log_impl(&dword_19D52D000, v10, OS_LOG_TYPE_DEFAULT, "WebPage %p - load_time: %lld, visible: %d, throttleable: %d , suspended: %d , websam_state: %{public}s, activity_state: %{public}s, url: %{private}s", buf, 0x46u);
        v21 = v28;
        v28 = 0;
        if (v21)
        {
          if (*v21 == 1)
          {
            WTF::fastFree(v21, v12);
          }

          else
          {
            --*v21;
          }
        }

        v22 = v27;
        v27 = 0;
        if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v22, v12);
        }

        v23 = v30;
        v30 = 0;
        v7 = v26;
        v8 = WebKit::WebPreferencesKey::webAuthenticationEnabledKey(void)::$_0::operator() const(void)::impl + 16;
        if (v23)
        {
          if (*v23 == 1)
          {
            WTF::fastFree(v23, v12);
          }

          else
          {
            --*v23;
          }
        }

        v24 = v29;
        v29 = 0;
        if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v24, v12);
        }
      }

      v25 = v32;
      v32 = 0;
      if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v12);
      }

      result = v31;
      v31 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v12);
      }

      do
      {
        v3 = (v3 + 16);
      }

      while (v3 != v5 && (*v3 + 1) <= 1);
    }

    while (v3 != v7);
  }

  return result;
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 == -1 || !v2)
  {
    __break(0xC471u);
    JUMPOUT(0x19E184CB4);
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

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, void *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, void *a3)
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
    v13 = v7;
    v14 = v6;
    do
    {
      if (*v14 != -1)
      {
        if (*v14)
        {
          v16 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::reinsert(*a1, v14);
          v17 = v14[1];
          v14[1] = 0;
          if (v17)
          {
            CFRelease(*(v17 + 8));
          }

          if (v14 == a3)
          {
            v11 = v16;
          }
        }

        else
        {
          v15 = v14[1];
          v14[1] = 0;
          if (v15)
          {
            CFRelease(*(v15 + 8));
          }
        }
      }

      v14 += 2;
      --v13;
    }

    while (v13);
    goto LABEL_17;
  }

  result = 0;
  if (v6)
  {
LABEL_17:
    WTF::fastFree((v6 - 16), v10);
    return v11;
  }

  return result;
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::reinsert(uint64_t a1, void *a2)
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
    CFRelease(*(v12 + 8));
  }

  *v11 = *a2;
  v13 = a2[1];
  a2[1] = 0;
  v11[1] = v13;
  return v11;
}

void WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(uint64_t *a1, void *a2)
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
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(a1, a2);
  }
}

void WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *a1, void *a2)
{
  v3 = a2[1];
  *a2 = -1;
  a2[1] = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }

  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  if (!*a1)
  {
    return 0;
  }

  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1, a2);
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

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(*a2);
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

    v9 = 1;
    while (v7)
    {
      v6 = (v6 + v9) & v5;
      v7 = *(v4 + 16 * v6);
      ++v9;
      if (v7 == *a2)
      {
        return v4 + 16 * v6;
      }
    }
  }

  return 0;
}

uint64_t WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1850C8);
  }

  return result;
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebFrame,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebFrame,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebFrame,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebFrame,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, atomic_uint **a3@<X8>)
{
  v3 = *a2;
  if (*a2 == -1 || !v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1851B8);
  }

  v4 = *result;
  if (!*result)
  {
LABEL_12:
    v11 = 0;
    goto LABEL_7;
  }

  v5 = *(v4 - 8);
  v6 = (v3 + ~(v3 << 32)) ^ ((v3 + ~(v3 << 32)) >> 22);
  v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
  v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
  v9 = v5 & ((v8 >> 31) ^ v8);
  v10 = *(v4 + 16 * v9);
  if (v10 != v3)
  {
    v12 = 1;
    while (v10)
    {
      v9 = (v9 + v12) & v5;
      v10 = *(v4 + 16 * v9);
      ++v12;
      if (v10 == v3)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_12;
  }

LABEL_5:
  v11 = *(v4 + 16 * v9 + 8);
  if (v11)
  {
    atomic_fetch_add(v11, 1u);
  }

LABEL_7:
  *a3 = v11;
  return result;
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebFrame,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebFrame,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WebKit::WebFrame*&>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  if (*a2 == -1 || !v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19E185454);
  }

  v9 = *a1;
  if (!*a1)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebFrame,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebFrame,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebFrame,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebFrame,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1, 0);
    v9 = *a1;
    v5 = *a2;
  }

  v10 = *(v9 - 8);
  v11 = (v5 + ~(v5 << 32)) ^ ((v5 + ~(v5 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = (v9 + 16 * v14);
  v16 = *v15;
  if (!*v15)
  {
LABEL_13:
    *v15 = v5;
    v19 = *a3;
    if (v19)
    {
      WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v19 + 24), v19 + 16);
      v20 = *(v19 + 24);
      if (v20)
      {
        atomic_fetch_add(v20, 1u);
      }
    }

    else
    {
      v20 = 0;
    }

    result = v15[1];
    v15[1] = v20;
    if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      result = WTF::fastFree(result, a2);
    }

    v22 = *a1;
    if (*a1)
    {
      v23 = *(v22 - 12) + 1;
    }

    else
    {
      v23 = 1;
    }

    *(v22 - 12) = v23;
    v24 = (*(v22 - 16) + v23);
    v25 = *(v22 - 4);
    if (v25 > 0x400)
    {
      if (v25 > 2 * v24)
      {
        goto LABEL_22;
      }
    }

    else if (3 * v25 > 4 * v24)
    {
LABEL_22:
      *a4 = v15;
      *(a4 + 8) = v22 + 16 * v25;
      *(a4 + 16) = 1;
      return result;
    }

    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebFrame,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebFrame,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebFrame,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebFrame,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1, v15);
    v15 = result;
    v22 = *a1;
    if (*a1)
    {
      v25 = *(v22 - 4);
    }

    else
    {
      v25 = 0;
    }

    goto LABEL_22;
  }

  v17 = 0;
  v18 = 1;
  while (v16 != v5)
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
        --*(*a1 - 16);
        v5 = *a2;
        v15 = v17;
      }

      goto LABEL_13;
    }
  }

  v26 = v9 + 16 * *(v9 - 4);
  *a4 = v15;
  *(a4 + 8) = v26;
  *(a4 + 16) = 0;
  v27 = *a3;
  if (*a3)
  {
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v27 + 24), v27 + 16);
    v28 = *(v27 + 24);
    if (v28)
    {
      atomic_fetch_add(v28, 1u);
      v15 = *a4;
    }
  }

  else
  {
    v28 = 0;
  }

  result = v15[1];
  v15[1] = v28;
  if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result);

    return WTF::fastFree(result, a2);
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebFrame,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebFrame,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebFrame,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebFrame,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebFrame,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebFrame,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebFrame,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebFrame,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebFrame,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebFrame,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebFrame,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebFrame,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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
    do
    {
      v15 = (v6 + 16 * v13);
      v16 = *v15;
      if (*v15)
      {
        if (v16 != -1)
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

          v20 = (v16 + ~(v16 << 32)) ^ ((v16 + ~(v16 << 32)) >> 22);
          v21 = 9 * ((v20 + ~(v20 << 13)) ^ ((v20 + ~(v20 << 13)) >> 8));
          v22 = (v21 ^ (v21 >> 15)) + ~((v21 ^ (v21 >> 15)) << 27);
          v23 = v19 & ((v22 >> 31) ^ v22);
          v24 = 1;
          do
          {
            v25 = v23;
            v26 = *(v18 + 16 * v23);
            v23 = (v23 + v24++) & v19;
          }

          while (v26);
          v27 = (v18 + 16 * v25);
          v28 = v27[1];
          v27[1] = 0;
          if (v28 && atomic_fetch_add(v28, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v28);
            WTF::fastFree(v28, v10);
          }

          *v27 = *v15;
          v29 = v15[1];
          v15[1] = 0;
          v27[1] = v29;
          v30 = v15[1];
          v15[1] = 0;
          if (v30 && atomic_fetch_add(v30, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v30);
            WTF::fastFree(v30, v10);
          }

          if (v15 == a3)
          {
            v14 = v27;
          }
        }
      }

      else
      {
        v17 = v15[1];
        v15[1] = 0;
        if (v17)
        {
          if (atomic_fetch_add(v17, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v17);
            WTF::fastFree(v17, v10);
          }
        }
      }

      ++v13;
    }

    while (v13 != v7);
    goto LABEL_25;
  }

  v14 = 0;
  result = 0;
  if (v6)
  {
LABEL_25:
    WTF::fastFree((v6 - 16), v10);
    return v14;
  }

  return result;
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, void *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

_DWORD *WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::translate<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>> WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,decltype(nullptr)>(WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,decltype(nullptr) &&)::{lambda(void)#1}>(void *a1, uint64_t a2)
{
  result = a1[1];
  *a1 = a2;
  a1[1] = 0;
  if (result)
  {
    if (result[2] == 1)
    {
      return (*(*result + 8))();
    }

    else
    {
      --result[2];
    }
  }

  return result;
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, void *a3)
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
    v13 = v7;
    v14 = v6;
    do
    {
      if (*v14 != -1)
      {
        if (*v14)
        {
          v15 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::reinsert(*a1, v14);
          WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>>::~KeyValuePair(v14);
          if (v14 == a3)
          {
            v11 = v15;
          }
        }

        else
        {
          WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>>::~KeyValuePair(v14);
        }
      }

      v14 += 2;
      --v13;
    }

    while (v13);
    goto LABEL_14;
  }

  result = 0;
  if (v6)
  {
LABEL_14:
    WTF::fastFree((v6 - 16), v10);
    return v11;
  }

  return result;
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPageGroupProxy,WTF::RawPtrTraits<WebKit::WebPageGroupProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageGroupProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::reinsert(uint64_t a1, void *a2)
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
    if (v12[2] == 1)
    {
      (*(*v12 + 8))(v12);
    }

    else
    {
      --v12[2];
    }
  }

  *v11 = *a2;
  v13 = a2[1];
  a2[1] = 0;
  v11[1] = v13;
  return v11;
}

uint64_t WTF::WeakHashMap<WebCore::UserGestureToken,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::UserGestureTokenIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultWeakPtrImpl>::removeNullReferences(uint64_t result, void *a2)
{
  v2 = result;
  v3 = *result;
  if (!*result)
  {
    goto LABEL_18;
  }

  v4 = *(v3 - 4);
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = 0;
  v6 = 24 * v4;
  v7 = v3 - 24;
  do
  {
    result = *(v7 + v6);
    if ((result + 1) >= 2 && !*(result + 8))
    {
      *(v7 + v6) = 0;
      if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result);
        result = WTF::fastFree(result, a2);
      }

      *(v7 + v6) = -1;
      ++v5;
    }

    v6 -= 24;
  }

  while (v6);
  v3 = *v2;
  if (v5)
  {
    v8 = *(v3 - 12) - v5;
    *(v3 - 16) += v5;
    *(v3 - 12) = v8;
    goto LABEL_13;
  }

  if (!v3)
  {
LABEL_18:
    LODWORD(v3) = 0;
    *(v2 + 8) = 0;
    goto LABEL_35;
  }

LABEL_13:
  v9 = *(v3 - 12);
  v10 = *(v3 - 4);
  if (6 * v9 >= v10 || v10 <= 8)
  {
    *(v2 + 8) = 0;
LABEL_34:
    LODWORD(v3) = *(v3 - 12);
    if (v3 > 0x7FFFFFFE)
    {
      v16 = -2;
      goto LABEL_37;
    }

LABEL_35:
    v16 = 2 * v3;
LABEL_37:
    *(v2 + 12) = v16;
    return result;
  }

  if (v9 <= 1)
  {
    v12 = 1;
    goto LABEL_23;
  }

  v13 = __clz(v9 - 1);
  if (v13)
  {
    v12 = (1 << -v13);
    if (v9 > 0x400)
    {
      if (v12 > 2 * v9)
      {
LABEL_25:
        if (v12 > 0x400)
        {
          v14 = 0.416666667;
        }

        else
        {
          v14 = 0.604166667;
        }

        if (v12 * v14 <= v9)
        {
          LODWORD(v12) = 2 * v12;
        }

        if (v12 <= 8)
        {
          v15 = 8;
        }

        else
        {
          v15 = v12;
        }

        result = WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::UserGestureTokenIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::UserGestureTokenIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::UserGestureTokenIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::UserGestureTokenIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::rehash(v2, v15, 0);
        v3 = *v2;
        *(v2 + 8) = 0;
        if (!v3)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

LABEL_24:
      LODWORD(v12) = 2 * v12;
      goto LABEL_25;
    }

LABEL_23:
    if (3 * v12 > 4 * v9)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::UserGestureTokenIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::UserGestureTokenIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::UserGestureTokenIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::UserGestureTokenIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
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

  v9 = WTF::fastZeroedMalloc((24 * a2 + 16));
  *a1 = (v9 + 4);
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  if (v7)
  {
    v11 = 0;
    v12 = 0;
    v13 = v7;
    do
    {
      v14 = v6 + 24 * v11;
      v15 = *v14;
      if (*v14 != -1)
      {
        if (v15)
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

          v18 = (v15 + ~(v15 << 32)) ^ ((v15 + ~(v15 << 32)) >> 22);
          v19 = 9 * ((v18 + ~(v18 << 13)) ^ ((v18 + ~(v18 << 13)) >> 8));
          v20 = (v19 ^ (v19 >> 15)) + ~((v19 ^ (v19 >> 15)) << 27);
          v21 = v17 & ((v20 >> 31) ^ v20);
          v22 = 1;
          do
          {
            v23 = v16 + 24 * v21;
            v21 = (v21 + v22++) & v17;
          }

          while (*v23);
          *v14 = 0;
          *v23 = v15;
          *(v23 + 8) = *(v14 + 8);
          v24 = *v14;
          *v14 = 0;
          if (v24 && atomic_fetch_add(v24, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v24);
            WTF::fastFree(v24, v10);
          }

          if (v14 == a3)
          {
            v12 = v23;
          }
        }

        else
        {
          *v14 = 0;
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
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v12;
}

uint64_t WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::UserGestureTokenIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::UserGestureTokenIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::UserGestureTokenIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::UserGestureTokenIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::UserGestureTokenIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::UserGestureTokenIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::UserGestureTokenIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::UserGestureTokenIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

atomic_ullong *WTF::Detail::CallableWrapper<WebKit::WebProcess::userGestureTokenIdentifier(std::optional<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RefPtr<WebCore::UserGestureToken,WTF::RawPtrTraits<WebCore::UserGestureToken>,WTF::DefaultRefDerefTraits<WebCore::UserGestureToken>>)::$_1,void,WebCore::UserGestureToken&>::call(uint64_t a1, uint64_t *a2)
{
  {
    goto LABEL_33;
  }

  v4 = WebKit::WebProcess::singleton(void)::process;
  while ((*(a1 + 16) & 1) == 0)
  {
    __break(1u);
LABEL_33:
    v4 = WebKit::WebProcess::operator new(0x370, a2);
    WebKit::WebProcess::singleton(void)::process = WebKit::WebProcess::WebProcess(v4);
  }

  v5 = *(a1 + 8);
  v6 = (v4 + 640);
  v7 = *(v4 + 648);
  *(v4 + 648) = v7 + 1;
  if (v7 > *(v4 + 652))
  {
    WTF::WeakHashMap<WebCore::UserGestureToken,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::UserGestureTokenIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultWeakPtrImpl>::removeNullReferences(v4 + 640, a2);
  }

  v8 = *a2;
  if (!*a2)
  {
    goto LABEL_24;
  }

  if (!*(v8 + 8))
  {
    goto LABEL_24;
  }

  v9 = *v6;
  if (!*v6)
  {
    goto LABEL_24;
  }

  v10 = *(v9 - 8);
  v11 = (~(v8 << 32) + v8) ^ ((~(v8 << 32) + v8) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  for (i = 1; ; v14 = (v14 + i++) & v10)
  {
    v16 = (v9 + 24 * v14);
    v17 = *v16;
    if (*v16 != -1)
    {
      if (!v17)
      {
        v18 = *(v9 - 4);
        v16 = (v9 + 24 * v18);
        goto LABEL_16;
      }

      if (v17 == v8)
      {
        break;
      }
    }
  }

  v18 = *(v9 - 4);
LABEL_16:
  if ((v9 + 24 * v18) != v16)
  {
    v20 = v16[1];
    v19 = v16[2];
    v21 = *v16;
    *v16 = 0;
    if (v21 && atomic_fetch_add(v21, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v21);
      WTF::fastFree(v21, a2);
    }

    *v16 = -1;
    v22 = *v6;
    v23 = vadd_s32(*(*v6 - 16), 0xFFFFFFFF00000001);
    *(v22 - 16) = v23;
    v24 = *(v22 - 4);
    if (6 * v23.i32[1] < v24 && v24 >= 9)
    {
      WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::UserGestureTokenIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::UserGestureTokenIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::UserGestureTokenIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::UserGestureTokenIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::rehash((v4 + 640), v24 >> 1, 0);
    }
  }

  else
  {
LABEL_24:
    v20 = 0;
    v19 = 0;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v4, &v34);
  v26 = v34;
  v28 = IPC::Encoder::operator new(0x238, v27);
  *v28 = 2908;
  *(v28 + 68) = 0;
  *(v28 + 70) = 0;
  *(v28 + 69) = 0;
  *(v28 + 2) = 0;
  *(v28 + 3) = 0;
  *(v28 + 1) = 0;
  IPC::Encoder::encodeHeader(v28);
  v35 = v28;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v28, v5);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v28, v20);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v28, v19);
  IPC::Connection::sendMessageImpl(v26, &v35, 0, 0);
  v30 = v35;
  v35 = 0;
  if (v30)
  {
    IPC::Encoder::~Encoder(v30, v29);
    bmalloc::api::tzoneFree(v32, v33);
  }

  result = v34;
  v34 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebProcess::ensureNetworkProcessConnection(void)::$_0,void>::~CallableWrapper(void *result)
{
  *result = &unk_1F1122640;
  result[2] = 0;
  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebProcess::ensureNetworkProcessConnection(void)::$_0,void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F1122640;
  *(a1 + 2) = 0;
  return WTF::fastFree(a1, a2);
}

WebKit::WebPage **WebKit::WebProcess::ensureNetworkProcessConnection(void)::$_0::operator()(uint64_t a1)
{
  result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin((a1 + 136));
  v4 = result;
  v5 = v3;
  v6 = *(a1 + 136);
  if (v6)
  {
    v7 = (v6 + 16 * *(v6 - 4));
  }

  else
  {
    v7 = 0;
  }

  if (v7 != result)
  {
    do
    {
      result = WebKit::WebPage::synchronizeCORSDisablingPatternsWithNetworkProcess(v4[1], v3);
      do
      {
        v4 += 2;
      }

      while (v4 != v5 && *v4 + 1 <= 1);
    }

    while (v4 != v7);
  }

  return result;
}

atomic_uint **WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(atomic_uint **result, atomic_uint **a2, uint64_t a3)
{
  if (a3 == -1 || !a3)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1860B0);
  }

  v3 = *a2;
  if (*a2)
  {
    v4 = *(v3 - 2);
    v5 = (~(a3 << 32) + a3) ^ ((~(a3 << 32) + a3) >> 22);
    v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
    v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
    v8 = v4 & ((v7 >> 31) ^ v7);
    v9 = *&v3[4 * v8];
    if (v9 == a3)
    {
LABEL_8:
      v3 = *&v3[4 * v8 + 2];
      if (v3)
      {
        atomic_fetch_add(v3, 1u);
      }
    }

    else
    {
      v10 = 1;
      while (v9)
      {
        v8 = (v8 + v10) & v4;
        v9 = *&v3[4 * v8];
        ++v10;
        if (v9 == a3)
        {
          goto LABEL_8;
        }
      }

      v3 = 0;
    }
  }

  *result = v3;
  return result;
}

double WebCore::IDBClient::IDBConnectionToServer::operator delete(WebCore::IDBClient::IDBConnectionToServer *a1)
{
  WebCore::IDBClient::IDBConnectionToServer::~IDBConnectionToServer(a1);
  if (atomic_load((v1 + 4)))
  {
    result = 0.0;
    *v1 = 0u;
    *(v1 + 16) = 0u;
  }

  else
  {

    bmalloc::api::tzoneFree(v1, v2);
  }

  return result;
}

uint64_t Messages::WebProcessProxy::CreateGPUProcessConnection::encode<IPC::Encoder>(uint64_t a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, **a1);
  v4 = *(a1 + 8);

  return IPC::ArgumentCoder<WebCore::ProcessIdentity,void>::encode(a2, v4);
}

_DWORD *WTF::HashTable<WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,WTF::HashTraits<WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,WTF::HashTraits<WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,WTF::FastMalloc>::expand(uint64_t *a1)
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
  result = WTF::fastZeroedMalloc((8 * v5 + 16));
  *a1 = (result + 4);
  result[2] = v5 - 1;
  result[3] = v5;
  *result = 0;
  result[1] = v4;
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v9 = (v2 + 8 * i);
      v10 = *v9;
      if (*v9 != -1)
      {
        if (v10)
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

          v18 = -1640531527;
          v19 = 0;
          v20 = 0;
          WTF::add<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(&v18, v10 + 8);
          v13 = WTF::SuperFastHash::hash(&v18);
          v14 = 0;
          do
          {
            v15 = v13 & v12;
            v13 = ++v14 + v15;
          }

          while (*(v11 + 8 * v15));
          v16 = *v9;
          *v9 = 0;
          *(v11 + 8 * v15) = v16;
          v17 = *v9;
          *v9 = 0;
          if (v17)
          {
            WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v17, v7);
          }
        }

        else
        {
          *v9 = 0;
        }
      }
    }
  }

  else if (!v2)
  {
    return result;
  }

  return WTF::fastFree((v2 - 16), v7);
}

void *WTF::Detail::CallableWrapper<WebKit::WebProcess::prepareToSuspend(BOOL,WTF::MonotonicTime,WTF::CompletionHandler<void ()(void)> &&)::$_1,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1122690;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  a1[2] = 0;
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebProcess::prepareToSuspend(BOOL,WTF::MonotonicTime,WTF::CompletionHandler<void ()(void)> &&)::$_1,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1122690;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 2) = 0;

  return WTF::fastFree(this, a2);
}

uint64_t WebKit::WebProcess::prepareToSuspend(BOOL,WTF::MonotonicTime,WTF::CompletionHandler<void ()(void)> &&)::$_1::operator()(WebCore *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = WebCore::logClient(a1);
  v4 = WTF::downcast<WebKit::LogClient,WebCore::LogClient>(*v3);
  if (v4)
  {
    if (*(v2 + 712) == 1)
    {
      v5 = *(v2 + 704);
    }

    else
    {
      v5 = 0;
    }

    WebKit::LogClient::WEBPROCESS_READY_TO_SUSPEND(v4, v5);
  }

  else
  {
    v8 = qword_1ED641030;
    if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v2 + 712) == 1)
      {
        v9 = *(v2 + 704);
      }

      else
      {
        v9 = 0;
      }

      v10 = 134217984;
      v11 = v9;
      _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "[sessionID=%llu] WebProcess::prepareToSuspend: Process is ready to suspend", &v10, 0xCu);
    }
  }

  v6 = *(a1 + 2);
  *(a1 + 2) = 0;
  (*(*v6 + 16))(v6);
  return (*(*v6 + 8))(v6);
}

void *WTF::Detail::CallableWrapper<WebKit::WebProcess::markAllLayersVolatile(WTF::CompletionHandler<void ()(void)> &&)::$_0,void,BOOL>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F11226B8;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  a1[2] = 0;
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebProcess::markAllLayersVolatile(WTF::CompletionHandler<void ()(void)> &&)::$_0,void,BOOL>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F11226B8;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  *(this + 2) = 0;

  return WTF::fastFree(this, a2);
}

void WebKit::WebProcess::markAllLayersVolatile(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(uint64_t *a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = qword_1ED641030;
  if (a2)
  {
    if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v3 + 712) == 1)
      {
        v5 = *(v3 + 704);
      }

      else
      {
        v5 = 0;
      }

      v6 = a1[3];
      v9 = 134218496;
      v10 = v3;
      v11 = 2048;
      v12 = v5;
      v13 = 2048;
      v14 = v6;
      _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - [sessionID=%llu] WebProcess::markAllLayersVolatile: Successfuly marked layers as volatile for webPageID=%llu", &v9, 0x20u);
    }
  }

  else if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_ERROR))
  {
    if (*(v3 + 712) == 1)
    {
      v7 = *(v3 + 704);
    }

    else
    {
      v7 = 0;
    }

    v8 = a1[3];
    v9 = 134218496;
    v10 = v3;
    v11 = 2048;
    v12 = v7;
    v13 = 2048;
    v14 = v8;
    _os_log_error_impl(&dword_19D52D000, v4, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu] WebProcess::markAllLayersVolatile: Failed to mark layers as volatile for webPageID=%llu", &v9, 0x20u);
  }
}

uint64_t Messages::WebProcessProxy::DidCollectPrewarmInformation::encode<IPC::Encoder>(void *a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::encode(a2, *a1);
  v4 = a1[1];

  return IPC::ArgumentCoder<WebCore::PrewarmInformation,void>::encode(a2, v4);
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityHashTranslator<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(*a3);
  v6 = *a2;
  if (*a2 || (WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, 0), (v6 = *a2) != 0))
  {
    v7 = *(v6 - 8);
  }

  else
  {
    v7 = 0;
  }

  result = WTF::ObjectIdentifierGenericBaseHash<unsigned long long>::hash(a3);
  v9 = result & v7;
  v10 = (v6 + 8 * (result & v7));
  v11 = *v10;
  v12 = *a3;
  if (*v10)
  {
    v19 = 0;
    v20 = 1;
    do
    {
      if (v11 == v12)
      {
        v21 = *a2;
        if (*a2)
        {
          v22 = *(v21 - 4);
        }

        else
        {
          v22 = 0;
        }

        v18 = 0;
        v17 = v21 + 8 * v22;
        goto LABEL_10;
      }

      if (v11 == -1)
      {
        v19 = v10;
      }

      v9 = (v9 + v20) & v7;
      v10 = (v6 + 8 * v9);
      v11 = *v10;
      ++v20;
    }

    while (*v10);
    if (v19)
    {
      *v19 = 0;
      --*(*a2 - 16);
      v12 = *a3;
      v10 = v19;
    }
  }

  *v10 = v12;
  v13 = *a2;
  if (*a2)
  {
    v14 = *(v13 - 12) + 1;
  }

  else
  {
    v14 = 1;
  }

  *(v13 - 12) = v14;
  v15 = (*(v13 - 16) + v14);
  v16 = *(v13 - 4);
  if (v16 > 0x400)
  {
    if (v16 > 2 * v15)
    {
      goto LABEL_9;
    }

LABEL_20:
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, v10);
    v10 = result;
    v13 = *a2;
    if (*a2)
    {
      v16 = *(v13 - 4);
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_9;
  }

  if (3 * v16 <= 4 * v15)
  {
    goto LABEL_20;
  }

LABEL_9:
  v17 = v13 + 8 * v16;
  v18 = 1;
LABEL_10:
  *a1 = v10;
  *(a1 + 8) = v17;
  *(a1 + 16) = v18;
  return result;
}

uint64_t WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityHashTranslator<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19E186928);
  }

  return result;
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
{
  v6 = *a1;
  if (*a1)
  {
    LODWORD(v7) = *(v6 - 4);
    v8 = *(v6 - 12);
  }

  else
  {
    LODWORD(v7) = 0;
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
    v7 = v7;
    v13 = v6;
    do
    {
      v14 = *v13;
      if ((*v13 + 1) >= 2)
      {
        v15 = WTF::HashTable<void const*,void const*,WTF::IdentityExtractor,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTraits<void const*>,WTF::FastMalloc>::lookupForReinsert<WTF::IdentityHashTranslator<WTF::HashTraits<void const*>,WTF::DefaultHash<void const*>>,void const*>(*a1, *v13);
        *v15 = v14;
        if (v13 == a3)
        {
          v11 = v15;
        }
      }

      ++v13;
      --v7;
    }

    while (v7);
    goto LABEL_12;
  }

  result = 0;
  if (v6)
  {
LABEL_12:
    WTF::fastFree((v6 - 16), v10);
    return v11;
  }

  return result;
}

uint64_t *WTF::HashSet<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove(uint64_t *result, void *a2)
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
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(result, a2);
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *result, void *a2)
{
  *a2 = -1;
  v2 = *result;
  v3 = vadd_s32(*(*result - 16), 0xFFFFFFFF00000001);
  *(v2 - 16) = v3;
  v4 = *(v2 - 4);
  if (6 * v3.i32[1] < v4 && v4 >= 9)
  {
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(result, v4 >> 1, 0);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  if (!*a1)
  {
    return 0;
  }

  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1, a2);
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

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityHashTranslator<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(*a2);
  v4 = *a1;
  if (v4)
  {
    v5 = *(v4 - 8);
    v6 = WTF::ObjectIdentifierGenericBaseHash<unsigned long long>::hash(a2) & v5;
    v7 = *(v4 + 8 * v6);
    if (v7 == *a2)
    {
      return v4 + 8 * v6;
    }

    v9 = 1;
    while (v7)
    {
      v6 = (v6 + v9) & v5;
      v7 = *(v4 + 8 * v6);
      ++v9;
      if (v7 == *a2)
      {
        return v4 + 8 * v6;
      }
    }
  }

  return 0;
}

uint64_t WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19E186C00);
  }

  return result;
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, void *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

unsigned int *WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::translate<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>> WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WebKit::StorageAreaMap&>(WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WebKit::StorageAreaMap&)::{lambda(void)#1}>(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = a2;
  v4 = *a3;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((*a3 + 8), *a3);
  v6 = *(v4 + 8);
  atomic_fetch_add(v6, 1u);
  result = a1[1];
  a1[1] = v6;
  if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result);

    return WTF::fastFree(result, v5);
  }

  return result;
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, void *a3)
{
  v6 = *a1;
  if (*a1)
  {
    LODWORD(v7) = *(v6 - 4);
    v8 = *(v6 - 12);
  }

  else
  {
    LODWORD(v7) = 0;
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
    v15 = v6;
    v7 = v7;
    do
    {
      if (*v15 != -1)
      {
        if (*v15)
        {
          v17 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::reinsert(*a1, v15);
          v18 = v15[1];
          v15[1] = 0;
          if (v18 && atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v18);
            WTF::fastFree(v18, v10);
          }

          if (v15 == a3)
          {
            v13 = v17;
          }
        }

        else
        {
          v16 = v15[1];
          v15[1] = 0;
          if (v16)
          {
            if (atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v16);
              WTF::fastFree(v16, v10);
            }
          }
        }
      }

      v15 += 2;
      --v7;
    }

    while (v7);
    goto LABEL_21;
  }

  result = 0;
  if (v6)
  {
LABEL_21:
    WTF::fastFree((v6 - 16), v10);
    return v13;
  }

  return result;
}

unsigned int *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *a1, void *a2)
{
  result = a2[1];
  *a2 = -1;
  a2[1] = 0;
  if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result);
    result = WTF::fastFree(result, a2);
  }

  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
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
    JUMPOUT(0x19E186F98);
  }

  v4 = *(v2 - 8);
  v5 = (v3 + ~(v3 << 32)) ^ ((v3 + ~(v3 << 32)) >> 22);
  v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
  v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
  v8 = v4 & ((v7 >> 31) ^ v7);
  v9 = *(v2 + 16 * v8);
  if (v9 == v3)
  {
    return v2 + 16 * v8;
  }

  v10 = 1;
  while (v9)
  {
    v8 = (v8 + v10) & v4;
    v9 = *(v2 + 16 * v8);
    ++v10;
    if (v9 == v3)
    {
      return v2 + 16 * v8;
    }
  }

  return v2 + 16 * *(v2 - 4);
}

uint64_t WebKit::LibWebRTCNetwork::operator new(WebKit::LibWebRTCNetwork *this, void *a2)
{
  if (this == 240 && WebKit::LibWebRTCNetwork::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::LibWebRTCNetwork::s_heapRef, a2);
  }

  else
  {
    return WebKit::LibWebRTCNetwork::operatorNewSlow(this);
  }
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkConnectionToWebProcess::PingPongForServiceWorkers,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1122708;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkConnectionToWebProcess::PingPongForServiceWorkers,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1122708;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkConnectionToWebProcess::PingPongForServiceWorkers,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
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

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned int,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<int>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  if (*a2 == -1 || !v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19E187320);
  }

  v8 = result;
  v9 = *result;
  if (!*result)
  {
    result = WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::expand(result, 0);
    v9 = *v8;
    v5 = *a2;
  }

  v10 = *(v9 - 8);
  v11 = (v5 + ~(v5 << 32)) ^ ((v5 + ~(v5 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = (v9 + 16 * v14);
  v16 = *v15;
  if (*v15)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      if (v16 == v5)
      {
        v21 = 0;
        v22 = v9 + 16 * *(v9 - 4);
        goto LABEL_23;
      }

      if (v16 == -1)
      {
        v17 = v15;
      }

      v14 = (v14 + v18) & v10;
      v15 = (v9 + 16 * v14);
      v16 = *v15;
      ++v18;
    }

    while (*v15);
    if (v17)
    {
      *v17 = 0;
      v17[1] = 0;
      --*(*v8 - 16);
      v5 = *a2;
      v15 = v17;
    }
  }

  *v15 = v5;
  *(v15 + 2) = *a3;
  v19 = *v8;
  if (*v8)
  {
    v20 = *(v19 - 12) + 1;
  }

  else
  {
    v20 = 1;
  }

  *(v19 - 12) = v20;
  v23 = (*(v19 - 16) + v20);
  v24 = *(v19 - 4);
  if (v24 > 0x400)
  {
    if (v24 <= 2 * v23)
    {
LABEL_19:
      result = WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::expand(v8, v15);
      v15 = result;
      v19 = *v8;
      if (*v8)
      {
        v24 = *(v19 - 4);
      }

      else
      {
        v24 = 0;
      }
    }
  }

  else if (3 * v24 <= 4 * v23)
  {
    goto LABEL_19;
  }

  v22 = v19 + 16 * v24;
  v21 = 1;
LABEL_23:
  *a4 = v15;
  *(a4 + 8) = v22;
  *(a4 + 16) = v21;
  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned int>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned int,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *result, void *a2)
{
  *a2 = -1;
  v2 = *result;
  v3 = vadd_s32(*(*result - 16), 0xFFFFFFFF00000001);
  *(v2 - 16) = v3;
  v4 = *(v2 - 4);
  if (6 * v3.i32[1] < v4 && v4 >= 9)
  {
    return WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::rehash(result, v4 >> 1, 0);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned int>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned int,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned int,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
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
    JUMPOUT(0x19E187460);
  }

  v4 = *(v2 - 8);
  v5 = (v3 + ~(v3 << 32)) ^ ((v3 + ~(v3 << 32)) >> 22);
  v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
  v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
  v8 = v4 & ((v7 >> 31) ^ v7);
  v9 = *(v2 + 16 * v8);
  if (v9 == v3)
  {
    return v2 + 16 * v8;
  }

  v10 = 1;
  while (v9)
  {
    v8 = (v8 + v10) & v4;
    v9 = *(v2 + 16 * v8);
    ++v10;
    if (v9 == v3)
    {
      return v2 + 16 * v8;
    }
  }

  return v2 + 16 * *(v2 - 4);
}

_DWORD *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebKit::SandboxExtension,WTF::RawPtrTraits<WebKit::SandboxExtension>,WTF::DefaultRefDerefTraits<WebKit::SandboxExtension>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebKit::SandboxExtension,WTF::RawPtrTraits<WebKit::SandboxExtension>,WTF::DefaultRefDerefTraits<WebKit::SandboxExtension>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<WebKit::SandboxExtension,WTF::RawPtrTraits<WebKit::SandboxExtension>,WTF::DefaultRefDerefTraits<WebKit::SandboxExtension>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<WebKit::SandboxExtension,WTF::RawPtrTraits<WebKit::SandboxExtension>,WTF::DefaultRefDerefTraits<WebKit::SandboxExtension>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebKit::SandboxExtension,WTF::RawPtrTraits<WebKit::SandboxExtension>,WTF::DefaultRefDerefTraits<WebKit::SandboxExtension>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebKit::SandboxExtension,WTF::RawPtrTraits<WebKit::SandboxExtension>,WTF::DefaultRefDerefTraits<WebKit::SandboxExtension>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<WebKit::SandboxExtension,WTF::RawPtrTraits<WebKit::SandboxExtension>,WTF::DefaultRefDerefTraits<WebKit::SandboxExtension>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<WebKit::SandboxExtension,WTF::RawPtrTraits<WebKit::SandboxExtension>,WTF::DefaultRefDerefTraits<WebKit::SandboxExtension>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v3);
}

_DWORD *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebKit::SandboxExtension,WTF::RawPtrTraits<WebKit::SandboxExtension>,WTF::DefaultRefDerefTraits<WebKit::SandboxExtension>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebKit::SandboxExtension,WTF::RawPtrTraits<WebKit::SandboxExtension>,WTF::DefaultRefDerefTraits<WebKit::SandboxExtension>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<WebKit::SandboxExtension,WTF::RawPtrTraits<WebKit::SandboxExtension>,WTF::DefaultRefDerefTraits<WebKit::SandboxExtension>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<WebKit::SandboxExtension,WTF::RawPtrTraits<WebKit::SandboxExtension>,WTF::DefaultRefDerefTraits<WebKit::SandboxExtension>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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

          v15 = *(v11 + 4);
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
          v20 = v19[1];
          v19[1] = 0;
          if (v20)
          {
            WTF::RefCounted<WebKit::SandboxExtension>::deref(v20);
            v24 = *v19;
            *v19 = 0;
            if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v24, v8);
            }
          }

          else
          {
            *v19 = 0;
          }

          v21 = *v10;
          *v10 = 0;
          *v19 = v21;
          v22 = v10[1];
          v10[1] = 0;
          v19[1] = v22;
          v23 = v10[1];
          v10[1] = 0;
          if (v23)
          {
            WTF::RefCounted<WebKit::SandboxExtension>::deref(v23);
          }

          v11 = *v10;
          *v10 = 0;
          if (!v11 || atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) != 2)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v12 = v10[1];
          v10[1] = 0;
          if (v12)
          {
            WTF::RefCounted<WebKit::SandboxExtension>::deref(v12);
            v11 = *v10;
          }

          *v10 = 0;
          if (!v11 || atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) != 2)
          {
            goto LABEL_27;
          }
        }

        WTF::StringImpl::destroy(v11, v8);
      }

LABEL_27:
      if (++v9 == v5)
      {
        goto LABEL_34;
      }
    }
  }

  if (v4)
  {
LABEL_34:

    return WTF::fastFree((v4 - 16), v8);
  }

  return result;
}

uint64_t WTF::Vector<WebCore::CDMFactory *,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, void *a2)
{
  if (*(result + 8))
  {
    if (*(result + 12))
    {
      *(result + 12) = 0;
    }

    v2 = *result;
    if (*result)
    {
      *result = 0;
      *(result + 8) = 0;
      return WTF::fastFree(v2, a2);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebProcess::setUseGPUProcessForMedia(BOOL)::$_2,WTF::Ref<WebCore::AudioHardwareListener,WTF::RawPtrTraits<WebCore::AudioHardwareListener>,WTF::DefaultRefDerefTraits<WebCore::AudioHardwareListener>>,WebCore::AudioHardwareListener::Client &>::call@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v3 = WebKit::RemoteAudioHardwareListener::operator new(0x60, a1);
  result = WebKit::RemoteAudioHardwareListener::RemoteAudioHardwareListener(v3);
  *a2 = result;
  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebProcess::setUseGPUProcessForMedia(BOOL)::$_3,WTF::RefPtr<WebCore::RemoteCommandListener,WTF::RawPtrTraits<WebCore::RemoteCommandListener>,WTF::DefaultRefDerefTraits<WebCore::RemoteCommandListener>>,WebCore::RemoteCommandListenerClient &>::call@<X0>(uint64_t *a1@<X8>)
{
  v2 = WTF::fastMalloc(0x78);
  result = WebKit::RemoteRemoteCommandListener::RemoteRemoteCommandListener(v2);
  *a1 = result;
  return result;
}

void *std::__function::__func<WebKit::WebProcess::setUseGPUProcessForMedia(BOOL)::$_0,std::allocator<WebKit::WebProcess::setUseGPUProcessForMedia(BOOL)::$_0>,void ()(BOOL)>::~__func(void *result)
{
  *result = &unk_1F1122780;
  result[2] = 0;
  return result;
}

void std::__function::__func<WebKit::WebProcess::setUseGPUProcessForMedia(BOOL)::$_0,std::allocator<WebKit::WebProcess::setUseGPUProcessForMedia(BOOL)::$_0>,void ()(BOOL)>::~__func(void *a1)
{
  *a1 = &unk_1F1122780;
  a1[2] = 0;
  JUMPOUT(0x19EB14CF0);
}

uint64_t std::__function::__func<WebKit::WebProcess::setUseGPUProcessForMedia(BOOL)::$_0,std::allocator<WebKit::WebProcess::setUseGPUProcessForMedia(BOOL)::$_0>,void ()(BOOL)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1122780;
  a2[1] = v2;
  a2[2] = *(result + 16);
  return result;
}

atomic_uchar **std::__function::__func<WebKit::WebProcess::setUseGPUProcessForMedia(BOOL)::$_0,std::allocator<WebKit::WebProcess::setUseGPUProcessForMedia(BOOL)::$_0>,void ()(BOOL)>::operator()(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  WebKit::WebProcess::ensureProtectedGPUProcessConnection(*(a1 + 8), &v6);
  v3 = v6;
  result = WebKit::GPUProcessConnection::updateMediaConfiguration(v6, v2);
  if (v3)
  {

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref(v3 + 3, v5);
  }

  return result;
}

void *std::__function::__func<WebKit::WebProcess::setUseGPUProcessForMedia(BOOL)::$_1,std::allocator<WebKit::WebProcess::setUseGPUProcessForMedia(BOOL)::$_1>,void ()(BOOL)>::~__func(void *result)
{
  *result = &unk_1F11227C8;
  result[2] = 0;
  return result;
}

void std::__function::__func<WebKit::WebProcess::setUseGPUProcessForMedia(BOOL)::$_1,std::allocator<WebKit::WebProcess::setUseGPUProcessForMedia(BOOL)::$_1>,void ()(BOOL)>::~__func(void *a1)
{
  *a1 = &unk_1F11227C8;
  a1[2] = 0;
  JUMPOUT(0x19EB14CF0);
}

uint64_t std::__function::__func<WebKit::WebProcess::setUseGPUProcessForMedia(BOOL)::$_1,std::allocator<WebKit::WebProcess::setUseGPUProcessForMedia(BOOL)::$_1>,void ()(BOOL)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F11227C8;
  a2[1] = v2;
  a2[2] = *(result + 16);
  return result;
}

atomic_uchar **std::__function::__func<WebKit::WebProcess::setUseGPUProcessForMedia(BOOL)::$_1,std::allocator<WebKit::WebProcess::setUseGPUProcessForMedia(BOOL)::$_1>,void ()(BOOL)>::operator()(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  WebKit::WebProcess::ensureProtectedGPUProcessConnection(*(a1 + 8), &v6);
  v3 = v6;
  result = WebKit::GPUProcessConnection::updateMediaConfiguration(v6, v2);
  if (v3)
  {

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref(v3 + 3, v5);
  }

  return result;
}

uint64_t WebKit::SpeechRecognitionRealtimeMediaSourceManager::operator new(WebKit::SpeechRecognitionRealtimeMediaSourceManager *this, void *a2)
{
  if (this == 64 && WebKit::SpeechRecognitionRealtimeMediaSourceManager::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::SpeechRecognitionRealtimeMediaSourceManager::s_heapRef, a2);
  }

  else
  {
    return WebKit::SpeechRecognitionRealtimeMediaSourceManager::operatorNewSlow(this);
  }
}

uint64_t WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::WebProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::WebProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::WebProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::WebProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ASCIILiteral>>,WTF::ASCIILiteral>(uint64_t *a1, WTF::ASCIILiteralHash *this)
{
  if (!*(this + 1) || *this == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E187B14);
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

  v8 = *(this + 1);
  for (i = 1; ; ++i)
  {
    v10 = *v6 != -1 && v7 == v8;
    if (v10 && !memcmp(*v6, *this, v8))
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

atomic_uchar *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::WebTransportSession,WTF::NoTaggingTraits<WebKit::WebTransportSession>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::WebTransportSession,WTF::NoTaggingTraits<WebKit::WebTransportSession>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WebKit::WebTransportSession&>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  if (*a2 == -1 || !v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19E187D40);
  }

  v9 = *a1;
  if (!*a1)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1, 0);
    v9 = *a1;
    v5 = *a2;
  }

  v10 = *(v9 - 8);
  v11 = (v5 + ~(v5 << 32)) ^ ((v5 + ~(v5 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = (v9 + 24 * v14);
  v16 = *v15;
  if (!*v15)
  {
LABEL_13:
    *v15 = v5;
    v19 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebTransportSession,(WTF::DestructionThread)2>::controlBlock((a3 + 32));
    v21 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v19);
    result = v15[2];
    v15[2] = v21;
    if (result)
    {
      result = WTF::ThreadSafeWeakPtrControlBlock::weakDeref(result, v20);
    }

    v15[1] = a3;
    v23 = *a1;
    if (*a1)
    {
      v24 = *(v23 - 12) + 1;
    }

    else
    {
      v24 = 1;
    }

    *(v23 - 12) = v24;
    v29 = (*(v23 - 16) + v24);
    v30 = *(v23 - 4);
    if (v30 > 0x400)
    {
      if (v30 <= 2 * v29)
      {
LABEL_23:
        result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1, v15);
        v15 = result;
        v23 = *a1;
        if (*a1)
        {
          LODWORD(v30) = *(v23 - 4);
        }

        else
        {
          LODWORD(v30) = 0;
        }
      }
    }

    else if (3 * v30 <= 4 * v29)
    {
      goto LABEL_23;
    }

    *a4 = v15;
    *(a4 + 8) = v23 + 24 * v30;
    *(a4 + 16) = 1;
    return result;
  }

  v17 = 0;
  v18 = 1;
  while (v16 != v5)
  {
    if (v16 == -1)
    {
      v17 = v15;
    }

    v14 = (v14 + v18) & v10;
    v15 = (v9 + 24 * v14);
    v16 = *v15;
    ++v18;
    if (!*v15)
    {
      if (v17)
      {
        *v17 = 0;
        v17[1] = 0;
        v17[2] = 0;
        --*(*a1 - 16);
        v5 = *a2;
        v15 = v17;
      }

      goto LABEL_13;
    }
  }

  v25 = v9 + 24 * *(v9 - 4);
  *a4 = v15;
  *(a4 + 8) = v25;
  *(a4 + 16) = 0;
  v26 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebTransportSession,(WTF::DestructionThread)2>::controlBlock((a3 + 32));
  v28 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v26);
  result = v15[2];
  v15[2] = v28;
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::weakDeref(result, v27);
  }

  v15[1] = a3;
  return result;
}

unint64_t WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebTransportSession,(WTF::DestructionThread)2>::controlBlock(atomic_ullong *a1)
{
  result = *a1;
  if (result)
  {
    result = WTF::fastMalloc(0x20);
    *result = 0;
    *(result + 8) = xmmword_19E7014F0;
    *(result + 24) = a1 - 4;
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

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::WebTransportSession,WTF::NoTaggingTraits<WebKit::WebTransportSession>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::WebTransportSession,WTF::NoTaggingTraits<WebKit::WebTransportSession>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::WebTransportSession,WTF::NoTaggingTraits<WebKit::WebTransportSession>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::WebTransportSession,WTF::NoTaggingTraits<WebKit::WebTransportSession>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::WebTransportSession,WTF::NoTaggingTraits<WebKit::WebTransportSession>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::WebTransportSession,WTF::NoTaggingTraits<WebKit::WebTransportSession>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
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
    JUMPOUT(0x19E187EB4);
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPaymentCoordinatorProxy::CanMakePaymentsWithActiveCard,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1122810;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPaymentCoordinatorProxy::CanMakePaymentsWithActiveCard,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1122810;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPaymentCoordinatorProxy::CanMakePaymentsWithActiveCard,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPaymentCoordinatorProxy::OpenPaymentSetup,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1122838;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPaymentCoordinatorProxy::OpenPaymentSetup,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1122838;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPaymentCoordinatorProxy::OpenPaymentSetup,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
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

_DWORD *WTF::RefCounted<WebCore::PaymentCoordinator>::deref(_DWORD *result)
{
  if (*result == 1)
  {
    v2 = MEMORY[0x19EB07CF0](result - 2);

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPaymentCoordinatorProxy::GetSetupFeatures,WTF::CompletionHandler<void ()(WTF::Vector<WTF::Ref<WebCore::ApplePaySetupFeature,WTF::RawPtrTraits<WebCore::ApplePaySetupFeature>,WTF::DefaultRefDerefTraits<WebCore::ApplePaySetupFeature>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WTF::Ref<WebCore::ApplePaySetupFeature,WTF::RawPtrTraits<WebCore::ApplePaySetupFeature>,WTF::DefaultRefDerefTraits<WebCore::ApplePaySetupFeature>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WTF::Ref<WebCore::ApplePaySetupFeature,WTF::RawPtrTraits<WebCore::ApplePaySetupFeature>,WTF::DefaultRefDerefTraits<WebCore::ApplePaySetupFeature>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WTF::Ref<WebCore::ApplePaySetupFeature,WTF::RawPtrTraits<WebCore::ApplePaySetupFeature>,WTF::DefaultRefDerefTraits<WebCore::ApplePaySetupFeature>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1122860;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPaymentCoordinatorProxy::GetSetupFeatures,WTF::CompletionHandler<void ()(WTF::Vector<WTF::Ref<WebCore::ApplePaySetupFeature,WTF::RawPtrTraits<WebCore::ApplePaySetupFeature>,WTF::DefaultRefDerefTraits<WebCore::ApplePaySetupFeature>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WTF::Ref<WebCore::ApplePaySetupFeature,WTF::RawPtrTraits<WebCore::ApplePaySetupFeature>,WTF::DefaultRefDerefTraits<WebCore::ApplePaySetupFeature>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WTF::Ref<WebCore::ApplePaySetupFeature,WTF::RawPtrTraits<WebCore::ApplePaySetupFeature>,WTF::DefaultRefDerefTraits<WebCore::ApplePaySetupFeature>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WTF::Ref<WebCore::ApplePaySetupFeature,WTF::RawPtrTraits<WebCore::ApplePaySetupFeature>,WTF::DefaultRefDerefTraits<WebCore::ApplePaySetupFeature>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1122860;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPaymentCoordinatorProxy::GetSetupFeatures,WTF::CompletionHandler<void ()(WTF::Vector<WTF::Ref<WebCore::ApplePaySetupFeature,WTF::RawPtrTraits<WebCore::ApplePaySetupFeature>,WTF::DefaultRefDerefTraits<WebCore::ApplePaySetupFeature>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WTF::Ref<WebCore::ApplePaySetupFeature,WTF::RawPtrTraits<WebCore::ApplePaySetupFeature>,WTF::DefaultRefDerefTraits<WebCore::ApplePaySetupFeature>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WTF::Ref<WebCore::ApplePaySetupFeature,WTF::RawPtrTraits<WebCore::ApplePaySetupFeature>,WTF::DefaultRefDerefTraits<WebCore::ApplePaySetupFeature>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WTF::Ref<WebCore::ApplePaySetupFeature,WTF::RawPtrTraits<WebCore::ApplePaySetupFeature>,WTF::DefaultRefDerefTraits<WebCore::ApplePaySetupFeature>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3 && *a3)
  {
    IPC::ArgumentCoder<WebKit::PaymentSetupFeatures,void>::decode(a3, &v17);
    if (v18)
    {
      goto LABEL_4;
    }

    v9 = *a3;
    v10 = a3[1];
    *a3 = 0;
    a3[1] = 0;
    v11 = a3[3];
    if (v11 && v10)
    {
      (*(*v11 + 16))(v11, v9);
      if (v18)
      {
LABEL_4:
        cf = v17;
        v16 = 1;
        WebKit::PaymentSetupFeatures::operator WTF::Vector<WTF::Ref<WebCore::ApplePaySetupFeature,WTF::RawPtrTraits<WebCore::ApplePaySetupFeature>,WTF::DefaultRefDerefTraits<WebCore::ApplePaySetupFeature>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>(&cf, &v17);
        v5 = *(a1 + 8);
        *(a1 + 8) = 0;
        (*(*v5 + 16))(v5, &v17);
        (*(*v5 + 8))(v5);
        WTF::Vector<WTF::Ref<WebCore::ApplePaySetupFeature,WTF::RawPtrTraits<WebCore::ApplePaySetupFeature>,WTF::DefaultRefDerefTraits<WebCore::ApplePaySetupFeature>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v17, v6);
        if (v16)
        {
          v7 = cf;
          cf = 0;
          if (v7)
          {
            CFRelease(v7);
          }
        }

        return;
      }

      v12 = *a3;
      v13 = a3[1];
      v14 = a3[3];
      *a3 = 0;
      a3[1] = 0;
      if (v14 && v13)
      {
        (*(*v14 + 16))(v14, v12);
      }
    }

    else
    {
      *a3 = 0;
      a3[1] = 0;
    }

    IPC::Connection::cancelReply<Messages::WebPaymentCoordinatorProxy::GetSetupFeatures,WTF::CompletionHandler<void ()(WTF::Vector<WTF::Ref<WebCore::ApplePaySetupFeature,WTF::RawPtrTraits<WebCore::ApplePaySetupFeature>,WTF::DefaultRefDerefTraits<WebCore::ApplePaySetupFeature>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>((a1 + 8));
    return;
  }

  v8 = (a1 + 8);

  IPC::Connection::cancelReply<Messages::WebPaymentCoordinatorProxy::GetSetupFeatures,WTF::CompletionHandler<void ()(WTF::Vector<WTF::Ref<WebCore::ApplePaySetupFeature,WTF::RawPtrTraits<WebCore::ApplePaySetupFeature>,WTF::DefaultRefDerefTraits<WebCore::ApplePaySetupFeature>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(v8);
}

void IPC::Connection::cancelReply<Messages::WebPaymentCoordinatorProxy::GetSetupFeatures,WTF::CompletionHandler<void ()(WTF::Vector<WTF::Ref<WebCore::ApplePaySetupFeature,WTF::RawPtrTraits<WebCore::ApplePaySetupFeature>,WTF::DefaultRefDerefTraits<WebCore::ApplePaySetupFeature>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(uint64_t *a1)
{
  cf = 0;
  WebKit::PaymentSetupFeatures::operator WTF::Vector<WTF::Ref<WebCore::ApplePaySetupFeature,WTF::RawPtrTraits<WebCore::ApplePaySetupFeature>,WTF::DefaultRefDerefTraits<WebCore::ApplePaySetupFeature>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>(&cf, v6);
  v2 = *a1;
  *a1 = 0;
  (*(*v2 + 16))(v2, v6);
  (*(*v2 + 8))(v2);
  WTF::Vector<WTF::Ref<WebCore::ApplePaySetupFeature,WTF::RawPtrTraits<WebCore::ApplePaySetupFeature>,WTF::DefaultRefDerefTraits<WebCore::ApplePaySetupFeature>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v6, v3);
  v4 = cf;
  cf = 0;
  if (v4)
  {
    CFRelease(v4);
  }
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPaymentCoordinatorProxy::BeginApplePaySetup,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1122888;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPaymentCoordinatorProxy::BeginApplePaySetup,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1122888;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPaymentCoordinatorProxy::BeginApplePaySetup,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
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

_DWORD *WTF::RefCounted<WebKit::WebAutomationDOMWindowObserver>::deref(_DWORD *result, void *a2)
{
  if (*result == 1)
  {
    WebKit::WebAutomationDOMWindowObserver::~WebAutomationDOMWindowObserver((result - 4), a2);

    return WTF::fastFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

atomic_ullong *WTF::Detail::CallableWrapper<WebKit::WebCacheStorageConnection::connection(void)::$_0,void>::call(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v16 = WebKit::WebProcess::operator new(0x370, a2);
    v4 = WebKit::WebProcess::WebProcess(v16);
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  v5 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v4) + 24);
  while (1)
  {
    v6 = *v5;
    if ((*v5 & 1) == 0)
    {
      break;
    }

    v7 = *v5;
    atomic_compare_exchange_strong_explicit(v5, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v6)
    {
      goto LABEL_8;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_8:
  v8 = *(a1 + 16);
  v9 = *v8;
  *v8 = v5;
  if (v9)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v9);
  }

  v10 = 0;
  atomic_compare_exchange_strong_explicit((v3 + 24), &v10, 1u, memory_order_acquire, memory_order_acquire);
  if (v10)
  {
    MEMORY[0x19EB01E30](v3 + 24);
  }

  v11 = **(a1 + 16);
  if (v11)
  {
    while (1)
    {
      v12 = *v11;
      if ((*v11 & 1) == 0)
      {
        break;
      }

      v13 = *v11;
      atomic_compare_exchange_strong_explicit(v11, &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v13 == v12)
      {
        goto LABEL_17;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v11);
  }

LABEL_17:
  result = *(v3 + 32);
  *(v3 + 32) = v11;
  if (result)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  v15 = 1;
  atomic_compare_exchange_strong_explicit((v3 + 24), &v15, 0, memory_order_release, memory_order_relaxed);
  if (v15 != 1)
  {

    return WTF::Lock::unlockSlow((v3 + 24));
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStorageOpenCache,WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F11228D8;
  WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer((a1 + 8));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStorageOpenCache,WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(atomic_uint **a1)
{
  *a1 = &unk_1F11228D8;
  WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(a1 + 1);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStorageOpenCache,WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v47[1] = *MEMORY[0x1E69E9840];
  v4 = *a3;
  *a3 = 0;
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F1122900;
  *(v5 + 1) = v4;
  v36[3] = 0;
  v37 = v5;
  v36[0] = 0;
  v36[1] = 0;
  v36[2] = "operator()";
  v6 = *(a1 + 8);
  v7 = 1;
  if (!v6)
  {
    v11 = 0;
    goto LABEL_12;
  }

  v8 = 0;
  atomic_fetch_add((v6 + 8), 1u);
  atomic_compare_exchange_strong_explicit((v6 + 48), &v8, 1u, memory_order_acquire, memory_order_acquire);
  if (v8)
  {
    v5 = MEMORY[0x19EB01E30](v6 + 48);
  }

  v9 = *(v6 + 88);
  v10 = 1;
  atomic_compare_exchange_strong_explicit((v6 + 48), &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 != 1)
  {
    v5 = WTF::Lock::unlockSlow((v6 + 48));
  }

  if (atomic_fetch_add((v6 + 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v6 + 8));
    v5 = (*(*v6 + 16))(v6);
  }

  v11 = *(a1 + 8);
  if (v9)
  {
    if (v11)
    {
      atomic_fetch_add(v11 + 2, 1u);
      v7 = 0;
    }

LABEL_12:
    v12 = WTF::NativePromiseBase::logChannel(v5);
    if (*v12)
    {
      v13 = v12;
      if (v12[16] >= 4u)
      {
        WTF::Logger::LogSiteIdentifier::toString(&v41, v36);
        WTF::String::String(&v40, " ignored already resolved or rejected ");
        WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v39, v11);
        WTF::makeString<WTF::String,WTF::String,WTF::String>(&v41, &v40, &v39, &v42);
        v15 = v39;
        v39 = 0;
        if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v14);
        }

        v16 = v40;
        v40 = 0;
        if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v16, v14);
        }

        v17 = v41;
        v41 = 0;
        if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v17, v14);
        }

        v18 = *(v13 + 4);
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
        if (v19)
        {
          WTF::String::utf8();
          v21 = v38[0] ? v38[0] + 16 : 0;
          *buf = 136446210;
          v44 = v21;
          _os_log_impl(&dword_19D52D000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
          v19 = v38[0];
          v38[0] = 0;
          if (v19)
          {
            if (*v19 == 1)
            {
              v19 = WTF::fastFree(v19, v20);
            }

            else
            {
              --*v19;
            }
          }
        }

        if (*v13 && v13[16] >= 4u)
        {
          v22 = MEMORY[0x1E696EBC0];
          while (1)
          {
            v23 = *v22;
            if (v23)
            {
              break;
            }

            v24 = *v22;
            atomic_compare_exchange_strong_explicit(v22, &v24, v23 | 1, memory_order_acquire, memory_order_acquire);
            if (v24 == v23)
            {
              v25 = WTF::Logger::observers(v19);
              v26 = *(v25 + 12);
              if (v26)
              {
                v27 = *v25;
                v28 = *v25 + 8 * v26;
                do
                {
                  v29 = *v27;
                  *buf = 0;
                  WTF::Logger::LogSiteIdentifier::toString((&v44 + 4), v36);
                  v45 = 0;
                  WTF::String::String(v46, " ignored already resolved or rejected ");
                  v46[2] = 0;
                  WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(v47, v11);
                  WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v38, buf, 3uLL);
                  (*(*v29 + 16))(v29, v13, 4, v38);
                  WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v38, v30);
                  for (i = 40; i != -8; i -= 16)
                  {
                    v32 = *&buf[i];
                    *&buf[i] = 0;
                    if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v32, v20);
                    }
                  }

                  ++v27;
                }

                while (v27 != v28);
              }

              v33 = 1;
              atomic_compare_exchange_strong_explicit(v22, &v33, 0, memory_order_release, memory_order_relaxed);
              if (v33 != 1)
              {
                WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
              }

              break;
            }
          }
        }

        v34 = v42;
        v42 = 0;
        if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v34, v20);
        }
      }
    }

    if ((v7 & 1) == 0 && atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
    {
LABEL_53:
      atomic_store(1u, v11 + 2);
      (*(*v11 + 16))(v11);
      goto LABEL_54;
    }

    goto LABEL_54;
  }

  if (v11)
  {
    atomic_fetch_add(v11 + 2, 1u);
    WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::settleWithFunction(v11, &v37, v36);
    if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) != 1)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::settleWithFunction(0, &v37, v36);
LABEL_54:
  result = v37;
  if (v37)
  {
    return (*(*v37 + 8))(v37);
  }

  return result;
}

WTF::Lock *WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::settleWithFunction(uint64_t a1, uint64_t *a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v6 = 0;
  v48[2] = *MEMORY[0x1E69E9840];
  v7 = (a1 + 48);
  v37 = v7;
  v38 = 1;
  atomic_compare_exchange_strong_explicit(v7, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    v7 = MEMORY[0x19EB01E30]();
  }

  v8 = WTF::NativePromiseBase::logChannel(v7);
  if (*v8)
  {
    v9 = v8[16] >= 4u;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = v8;
    WTF::Logger::LogSiteIdentifier::toString(&v42, a3);
    WTF::String::String(&v41, " settling ");
    WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v40, a1);
    WTF::makeString<WTF::String,WTF::String,WTF::String>(&v42, &v41, &v40, &v43);
    v12 = v40;
    v40 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v11);
    }

    v13 = v41;
    v41 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v11);
    }

    v14 = v42;
    v42 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v11);
    }

    v15 = *(v10 + 4);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      WTF::String::utf8();
      v18 = v39[0] ? v39[0] + 16 : 0;
      *buf = 136446210;
      v45 = v18;
      _os_log_impl(&dword_19D52D000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v16 = v39[0];
      v39[0] = 0;
      if (v16)
      {
        if (*v16 == 1)
        {
          v16 = WTF::fastFree(v16, v17);
        }

        else
        {
          --*v16;
        }
      }
    }

    if (*v10 && v10[16] >= 4u)
    {
      v19 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v20 = *v19;
        if (v20)
        {
          break;
        }

        v21 = *v19;
        atomic_compare_exchange_strong_explicit(v19, &v21, v20 | 1, memory_order_acquire, memory_order_acquire);
        if (v21 == v20)
        {
          v22 = WTF::Logger::observers(v16);
          v23 = *(v22 + 12);
          if (v23)
          {
            v24 = *v22;
            v25 = *v22 + 8 * v23;
            do
            {
              v26 = *v24;
              *buf = 0;
              WTF::Logger::LogSiteIdentifier::toString((&v45 + 4), a3);
              v46 = 0;
              WTF::String::String(v47, " settling ");
              v47[2] = 0;
              WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(v48, a1);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v39, buf, 3uLL);
              (*(*v26 + 16))(v26, v10, 4, v39);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v39, v27);
              for (i = 40; i != -8; i -= 16)
              {
                v29 = *&buf[i];
                *&buf[i] = 0;
                if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v29, v17);
                }
              }

              ++v24;
            }

            while (v24 != v25);
          }

          v30 = 1;
          atomic_compare_exchange_strong_explicit(v19, &v30, 0, memory_order_release, memory_order_relaxed);
          if (v30 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v31 = v43;
    v43 = 0;
    if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v31, v17);
    }
  }

  v32 = *(a1 + 88);
  if (v32 >= 2 && v32 != 255)
  {
    v33 = *(a1 + 56);
    *(a1 + 56) = 0;
    if (v33)
    {
      (*(*v33 + 8))(v33);
    }
  }

  v34 = *a2;
  *a2 = 0;
  *(a1 + 56) = v34;
  *(a1 + 88) = 2;
  result = WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::dispatchAll(a1, &v37);
  v36 = v38;
  if (v38 == 1)
  {
    result = v37;
    atomic_compare_exchange_strong_explicit(v37, &v36, 0, memory_order_release, memory_order_relaxed);
    if (v36 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStorageOpenCache,WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error>>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F1122900;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStorageOpenCache,WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error>>::~CallableWrapper(IPC::Decoder **a1)
{
  *a1 = &unk_1F1122900;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](a1 + 1, 0);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStorageOpenCache,WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error>>::call@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = *(result + 8);
  if (v3)
  {
    v4 = *v3;
    if (*v3)
    {
      v5 = v3[1];
      v6 = v3[2];
      if (v5 > &v6[-v4])
      {
        v3[2] = (v6 + 1);
        if (v6)
        {
          v7 = *v6;
          if (v7 < 2)
          {
            if (v7)
            {
              IPC::ArgumentCoder<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,void>::decode(v3, &v21);
              if ((v23 & 1) == 0)
              {
                v12 = *v3;
                v13 = v3[1];
                *v3 = 0;
                v3[1] = 0;
                v14 = v3[3];
                if (!v14 || !v13 || ((*(*v14 + 16))(v14, v12), (v23 & 1) == 0))
                {
LABEL_10:
                  v9 = *v3;
                  v10 = v3[1];
                  *v3 = 0;
                  v3[1] = 0;
                  result = v3[3];
                  if (result)
                  {
                    v11 = v10 == 0;
                  }

                  else
                  {
                    v11 = 1;
                  }

                  if (!v11)
                  {
                    (*(*result + 16))(result, v9);
                    v15 = *v3;
                    v16 = v3[1];
                    result = v3[3];
                    *v3 = 0;
                    v3[1] = 0;
                    if (result)
                    {
                      if (v16)
                      {
                        result = (*(*result + 16))(result, v15);
                      }
                    }
                  }

                  goto LABEL_15;
                }
              }

              v8 = 0;
              result = v21;
              *v24 = *v22;
              *&v24[15] = *&v22[15];
            }

            else
            {
              result = IPC::Decoder::decode<WebCore::DOMCacheEngine::Error>(v3);
              if (result < 0x100u)
              {
                goto LABEL_10;
              }

              v8 = 1;
            }

            *a2 = result;
            *(a2 + 1) = *v24;
            *(a2 + 16) = *&v24[15];
            goto LABEL_18;
          }

LABEL_32:
          *v3 = 0;
          v3[1] = 0;
          v19 = v3[3];
          if (v19)
          {
            v20 = v5 == 0;
          }

          else
          {
            v20 = 1;
          }

          if (!v20)
          {
            (*(*v19 + 16))(v19, v4, v5);
          }

          goto LABEL_10;
        }

LABEL_29:
        *v3 = 0;
        v3[1] = 0;
        v18 = v3[3];
        if (v18)
        {
          if (v5)
          {
            (*(*v18 + 16))(v18, v4);
            v4 = *v3;
            v5 = v3[1];
            goto LABEL_32;
          }
        }

        else
        {
          v5 = 0;
        }

        v4 = 0;
        goto LABEL_32;
      }

      *v3 = 0;
      v3[1] = 0;
      v17 = v3[3];
      if (v17)
      {
        if (v5)
        {
          (*(*v17 + 16))(v17);
          v4 = *v3;
          v5 = v3[1];
          goto LABEL_29;
        }
      }

      else
      {
        v5 = 0;
      }

      v4 = 0;
      goto LABEL_29;
    }
  }

LABEL_15:
  *a2 = 4;
  v8 = 1;
LABEL_18:
  *(a2 + 24) = v8;
  return result;
}

uint64_t IPC::Decoder::decode<WebCore::DOMCacheEngine::Error>(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v12 = a1;
    v6 = a1[3];
    if (v6)
    {
      if (v1)
      {
        (*(*v6 + 16))(v6);
        v3 = *v12;
        v1 = v12[1];
        goto LABEL_8;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
LABEL_8:
    a1 = v12;
    *v12 = 0;
    v12[1] = 0;
    v7 = v12[3];
    if (v7 && v1)
    {
      (*(*v7 + 16))(v7, v3);
      a1 = v12;
    }

    goto LABEL_9;
  }

  a1[2] = v2 + 1;
  if (!v2)
  {
    v12 = a1;
    goto LABEL_8;
  }

  v4 = *v2;
  if (v4 < 7)
  {
    v5 = 1;
    return v4 | (v5 << 8);
  }

LABEL_9:
  v8 = *a1;
  v9 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v10 = a1[3];
  if (v10 && v9)
  {
    (*(*v10 + 16))(v10, v8);
  }

  v5 = 0;
  v4 = 0;
  return v4 | (v5 << 8);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStorageRemoveCache,WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F1122928;
  WTF::NativePromiseProducer<BOOL,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer((a1 + 8));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStorageRemoveCache,WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(atomic_uint **a1)
{
  *a1 = &unk_1F1122928;
  WTF::NativePromiseProducer<BOOL,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(a1 + 1);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStorageRemoveCache,WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v47[1] = *MEMORY[0x1E69E9840];
  v4 = *a3;
  *a3 = 0;
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F1122950;
  *(v5 + 1) = v4;
  v36[3] = 0;
  v37 = v5;
  v36[0] = 0;
  v36[1] = 0;
  v36[2] = "operator()";
  v6 = *(a1 + 8);
  v7 = 1;
  if (!v6)
  {
    v11 = 0;
    goto LABEL_12;
  }

  v8 = 0;
  atomic_fetch_add((v6 + 8), 1u);
  atomic_compare_exchange_strong_explicit((v6 + 48), &v8, 1u, memory_order_acquire, memory_order_acquire);
  if (v8)
  {
    v5 = MEMORY[0x19EB01E30](v6 + 48);
  }

  v9 = *(v6 + 64);
  v10 = 1;
  atomic_compare_exchange_strong_explicit((v6 + 48), &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 != 1)
  {
    v5 = WTF::Lock::unlockSlow((v6 + 48));
  }

  if (atomic_fetch_add((v6 + 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v6 + 8));
    v5 = (*(*v6 + 16))(v6);
  }

  v11 = *(a1 + 8);
  if (v9)
  {
    if (v11)
    {
      atomic_fetch_add(v11 + 2, 1u);
      v7 = 0;
    }

LABEL_12:
    v12 = WTF::NativePromiseBase::logChannel(v5);
    if (*v12)
    {
      v13 = v12;
      if (v12[16] >= 4u)
      {
        WTF::Logger::LogSiteIdentifier::toString(&v41, v36);
        WTF::String::String(&v40, " ignored already resolved or rejected ");
        WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v39, v11);
        WTF::makeString<WTF::String,WTF::String,WTF::String>(&v41, &v40, &v39, &v42);
        v15 = v39;
        v39 = 0;
        if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v14);
        }

        v16 = v40;
        v40 = 0;
        if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v16, v14);
        }

        v17 = v41;
        v41 = 0;
        if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v17, v14);
        }

        v18 = *(v13 + 4);
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
        if (v19)
        {
          WTF::String::utf8();
          v21 = v38[0] ? v38[0] + 16 : 0;
          *buf = 136446210;
          v44 = v21;
          _os_log_impl(&dword_19D52D000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
          v19 = v38[0];
          v38[0] = 0;
          if (v19)
          {
            if (*v19 == 1)
            {
              v19 = WTF::fastFree(v19, v20);
            }

            else
            {
              --*v19;
            }
          }
        }

        if (*v13 && v13[16] >= 4u)
        {
          v22 = MEMORY[0x1E696EBC0];
          while (1)
          {
            v23 = *v22;
            if (v23)
            {
              break;
            }

            v24 = *v22;
            atomic_compare_exchange_strong_explicit(v22, &v24, v23 | 1, memory_order_acquire, memory_order_acquire);
            if (v24 == v23)
            {
              v25 = WTF::Logger::observers(v19);
              v26 = *(v25 + 12);
              if (v26)
              {
                v27 = *v25;
                v28 = *v25 + 8 * v26;
                do
                {
                  v29 = *v27;
                  *buf = 0;
                  WTF::Logger::LogSiteIdentifier::toString((&v44 + 4), v36);
                  v45 = 0;
                  WTF::String::String(v46, " ignored already resolved or rejected ");
                  v46[2] = 0;
                  WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(v47, v11);
                  WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v38, buf, 3uLL);
                  (*(*v29 + 16))(v29, v13, 4, v38);
                  WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v38, v30);
                  for (i = 40; i != -8; i -= 16)
                  {
                    v32 = *&buf[i];
                    *&buf[i] = 0;
                    if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v32, v20);
                    }
                  }

                  ++v27;
                }

                while (v27 != v28);
              }

              v33 = 1;
              atomic_compare_exchange_strong_explicit(v22, &v33, 0, memory_order_release, memory_order_relaxed);
              if (v33 != 1)
              {
                WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
              }

              break;
            }
          }
        }

        v34 = v42;
        v42 = 0;
        if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v34, v20);
        }
      }
    }

    if ((v7 & 1) == 0 && atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
    {
LABEL_53:
      atomic_store(1u, v11 + 2);
      (*(*v11 + 16))(v11);
      goto LABEL_54;
    }

    goto LABEL_54;
  }

  if (v11)
  {
    atomic_fetch_add(v11 + 2, 1u);
    WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::settleWithFunction(v11, &v37, v36);
    if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) != 1)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::settleWithFunction(0, &v37, v36);
LABEL_54:
  result = v37;
  if (v37)
  {
    return (*(*v37 + 8))(v37);
  }

  return result;
}

WTF::Lock *WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::settleWithFunction(uint64_t a1, uint64_t *a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v6 = 0;
  v48[2] = *MEMORY[0x1E69E9840];
  v7 = (a1 + 48);
  v37 = v7;
  v38 = 1;
  atomic_compare_exchange_strong_explicit(v7, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    v7 = MEMORY[0x19EB01E30]();
  }

  v8 = WTF::NativePromiseBase::logChannel(v7);
  if (*v8)
  {
    v9 = v8[16] >= 4u;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = v8;
    WTF::Logger::LogSiteIdentifier::toString(&v42, a3);
    WTF::String::String(&v41, " settling ");
    WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v40, a1);
    WTF::makeString<WTF::String,WTF::String,WTF::String>(&v42, &v41, &v40, &v43);
    v12 = v40;
    v40 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v11);
    }

    v13 = v41;
    v41 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v11);
    }

    v14 = v42;
    v42 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v11);
    }

    v15 = *(v10 + 4);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      WTF::String::utf8();
      v18 = v39[0] ? v39[0] + 16 : 0;
      *buf = 136446210;
      v45 = v18;
      _os_log_impl(&dword_19D52D000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v16 = v39[0];
      v39[0] = 0;
      if (v16)
      {
        if (*v16 == 1)
        {
          v16 = WTF::fastFree(v16, v17);
        }

        else
        {
          --*v16;
        }
      }
    }

    if (*v10 && v10[16] >= 4u)
    {
      v19 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v20 = *v19;
        if (v20)
        {
          break;
        }

        v21 = *v19;
        atomic_compare_exchange_strong_explicit(v19, &v21, v20 | 1, memory_order_acquire, memory_order_acquire);
        if (v21 == v20)
        {
          v22 = WTF::Logger::observers(v16);
          v23 = *(v22 + 12);
          if (v23)
          {
            v24 = *v22;
            v25 = *v22 + 8 * v23;
            do
            {
              v26 = *v24;
              *buf = 0;
              WTF::Logger::LogSiteIdentifier::toString((&v45 + 4), a3);
              v46 = 0;
              WTF::String::String(v47, " settling ");
              v47[2] = 0;
              WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(v48, a1);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v39, buf, 3uLL);
              (*(*v26 + 16))(v26, v10, 4, v39);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v39, v27);
              for (i = 40; i != -8; i -= 16)
              {
                v29 = *&buf[i];
                *&buf[i] = 0;
                if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v29, v17);
                }
              }

              ++v24;
            }

            while (v24 != v25);
          }

          v30 = 1;
          atomic_compare_exchange_strong_explicit(v19, &v30, 0, memory_order_release, memory_order_relaxed);
          if (v30 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v31 = v43;
    v43 = 0;
    if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v31, v17);
    }
  }

  v32 = *(a1 + 64);
  if (v32 >= 2 && v32 != 255)
  {
    v33 = *(a1 + 56);
    *(a1 + 56) = 0;
    if (v33)
    {
      (*(*v33 + 8))(v33);
    }
  }

  v34 = *a2;
  *a2 = 0;
  *(a1 + 56) = v34;
  *(a1 + 64) = 2;
  result = WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::dispatchAll(a1, &v37);
  v36 = v38;
  if (v38 == 1)
  {
    result = v37;
    atomic_compare_exchange_strong_explicit(v37, &v36, 0, memory_order_release, memory_order_relaxed);
    if (v36 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStorageRemoveCache,WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<BOOL,WebCore::DOMCacheEngine::Error>>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F1122950;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStorageRemoveCache,WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<BOOL,WebCore::DOMCacheEngine::Error>>::~CallableWrapper(IPC::Decoder **a1)
{
  *a1 = &unk_1F1122950;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](a1 + 1, 0);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStorageRemoveCache,WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<BOOL,WebCore::DOMCacheEngine::Error>>::call@<X0>(uint64_t result@<X0>, _WORD *a2@<X8>)
{
  v3 = *(result + 8);
  if (!v3 || (v4 = *v3) == 0)
  {
LABEL_17:
    LOWORD(v8) = 260;
    goto LABEL_18;
  }

  v5 = v3[1];
  v6 = v3[2];
  if (v5 <= &v6[-v4])
  {
    *v3 = 0;
    v3[1] = 0;
    v14 = v3[3];
    if (v14)
    {
      if (v5)
      {
        (*(*v14 + 16))(v14);
        v4 = *v3;
        v5 = v3[1];
LABEL_26:
        *v3 = 0;
        v3[1] = 0;
        v15 = v3[3];
        if (v15)
        {
          if (v5)
          {
            (*(*v15 + 16))(v15, v4);
            v4 = *v3;
            v5 = v3[1];
LABEL_29:
            *v3 = 0;
            v3[1] = 0;
            v16 = v3[3];
            if (v16)
            {
              v17 = v5 == 0;
            }

            else
            {
              v17 = 1;
            }

            if (v17)
            {
              goto LABEL_12;
            }

            goto LABEL_40;
          }
        }

        else
        {
          v5 = 0;
        }

        v4 = 0;
        goto LABEL_29;
      }
    }

    else
    {
      v5 = 0;
    }

    v4 = 0;
    goto LABEL_26;
  }

  v7 = v6 + 1;
  v3[2] = (v6 + 1);
  if (!v6)
  {
    goto LABEL_26;
  }

  if (*v6 >= 2u)
  {
    goto LABEL_29;
  }

  if (!*v6)
  {
    result = IPC::Decoder::decode<WebCore::DOMCacheEngine::Error>(v3);
    if (result >= 0x100u)
    {
      LOWORD(v8) = result | 0x100;
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  if (v5 <= &v7[-v4])
  {
    v18 = 0;
    v19 = 0;
    *v3 = 0;
    v3[1] = 0;
    v20 = v3[3];
    if (v20)
    {
      (*(*v20 + 16))(v20);
      v19 = *v3;
      v18 = v3[1];
    }

    goto LABEL_36;
  }

  v3[2] = (v6 + 2);
  if (v6 == -1)
  {
    v18 = v5;
    v19 = v4;
LABEL_36:
    *v3 = 0;
    v3[1] = 0;
    v21 = v3[3];
    if (v21 && v18)
    {
      (*(*v21 + 16))(v21, v19, v18);
      v4 = *v3;
      v5 = v3[1];
    }

    else
    {
      v5 = 0;
      v4 = 0;
    }

LABEL_38:
    *v3 = 0;
    v3[1] = 0;
    v16 = v3[3];
    if (!v16 || !v5)
    {
LABEL_12:
      v9 = *v3;
      v10 = v3[1];
      *v3 = 0;
      v3[1] = 0;
      result = v3[3];
      if (result)
      {
        v11 = v10 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (!v11)
      {
        (*(*result + 16))(result, v9);
        v12 = *v3;
        v13 = v3[1];
        result = v3[3];
        *v3 = 0;
        v3[1] = 0;
        if (result)
        {
          if (v13)
          {
            result = (*(*result + 16))(result, v12);
          }
        }
      }

      goto LABEL_17;
    }

LABEL_40:
    (*(*v16 + 16))(v16, v4, v5);
    goto LABEL_12;
  }

  v8 = *v7;
  if (v8 >= 2)
  {
    goto LABEL_38;
  }

LABEL_18:
  *a2 = v8;
  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStorageAllCaches,WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F1122978;
  WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer((a1 + 8));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStorageAllCaches,WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(atomic_uint **a1)
{
  *a1 = &unk_1F1122978;
  WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(a1 + 1);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStorageAllCaches,WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v47[1] = *MEMORY[0x1E69E9840];
  v4 = *a3;
  *a3 = 0;
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F11229A0;
  *(v5 + 1) = v4;
  v36[3] = 0;
  v37 = v5;
  v36[0] = 0;
  v36[1] = 0;
  v36[2] = "operator()";
  v6 = *(a1 + 8);
  v7 = 1;
  if (!v6)
  {
    v11 = 0;
    goto LABEL_12;
  }

  v8 = 0;
  atomic_fetch_add((v6 + 8), 1u);
  atomic_compare_exchange_strong_explicit((v6 + 48), &v8, 1u, memory_order_acquire, memory_order_acquire);
  if (v8)
  {
    v5 = MEMORY[0x19EB01E30](v6 + 48);
  }

  v9 = *(v6 + 88);
  v10 = 1;
  atomic_compare_exchange_strong_explicit((v6 + 48), &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 != 1)
  {
    v5 = WTF::Lock::unlockSlow((v6 + 48));
  }

  if (atomic_fetch_add((v6 + 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v6 + 8));
    v5 = (*(*v6 + 16))(v6);
  }

  v11 = *(a1 + 8);
  if (v9)
  {
    if (v11)
    {
      atomic_fetch_add(v11 + 2, 1u);
      v7 = 0;
    }

LABEL_12:
    v12 = WTF::NativePromiseBase::logChannel(v5);
    if (*v12)
    {
      v13 = v12;
      if (v12[16] >= 4u)
      {
        WTF::Logger::LogSiteIdentifier::toString(&v41, v36);
        WTF::String::String(&v40, " ignored already resolved or rejected ");
        WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v39, v11);
        WTF::makeString<WTF::String,WTF::String,WTF::String>(&v41, &v40, &v39, &v42);
        v15 = v39;
        v39 = 0;
        if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v14);
        }

        v16 = v40;
        v40 = 0;
        if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v16, v14);
        }

        v17 = v41;
        v41 = 0;
        if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v17, v14);
        }

        v18 = *(v13 + 4);
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
        if (v19)
        {
          WTF::String::utf8();
          v21 = v38[0] ? v38[0] + 16 : 0;
          *buf = 136446210;
          v44 = v21;
          _os_log_impl(&dword_19D52D000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
          v19 = v38[0];
          v38[0] = 0;
          if (v19)
          {
            if (*v19 == 1)
            {
              v19 = WTF::fastFree(v19, v20);
            }

            else
            {
              --*v19;
            }
          }
        }

        if (*v13 && v13[16] >= 4u)
        {
          v22 = MEMORY[0x1E696EBC0];
          while (1)
          {
            v23 = *v22;
            if (v23)
            {
              break;
            }

            v24 = *v22;
            atomic_compare_exchange_strong_explicit(v22, &v24, v23 | 1, memory_order_acquire, memory_order_acquire);
            if (v24 == v23)
            {
              v25 = WTF::Logger::observers(v19);
              v26 = *(v25 + 12);
              if (v26)
              {
                v27 = *v25;
                v28 = *v25 + 8 * v26;
                do
                {
                  v29 = *v27;
                  *buf = 0;
                  WTF::Logger::LogSiteIdentifier::toString((&v44 + 4), v36);
                  v45 = 0;
                  WTF::String::String(v46, " ignored already resolved or rejected ");
                  v46[2] = 0;
                  WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(v47, v11);
                  WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v38, buf, 3uLL);
                  (*(*v29 + 16))(v29, v13, 4, v38);
                  WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v38, v30);
                  for (i = 40; i != -8; i -= 16)
                  {
                    v32 = *&buf[i];
                    *&buf[i] = 0;
                    if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v32, v20);
                    }
                  }

                  ++v27;
                }

                while (v27 != v28);
              }

              v33 = 1;
              atomic_compare_exchange_strong_explicit(v22, &v33, 0, memory_order_release, memory_order_relaxed);
              if (v33 != 1)
              {
                WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
              }

              break;
            }
          }
        }

        v34 = v42;
        v42 = 0;
        if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v34, v20);
        }
      }
    }

    if ((v7 & 1) == 0 && atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
    {
LABEL_53:
      atomic_store(1u, v11 + 2);
      (*(*v11 + 16))(v11);
      goto LABEL_54;
    }

    goto LABEL_54;
  }

  if (v11)
  {
    atomic_fetch_add(v11 + 2, 1u);
    WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::settleWithFunction(v11, &v37, v36);
    if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) != 1)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::settleWithFunction(0, &v37, v36);
LABEL_54:
  result = v37;
  if (v37)
  {
    return (*(*v37 + 8))(v37);
  }

  return result;
}

WTF::Lock *WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::settleWithFunction(uint64_t a1, uint64_t *a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v6 = 0;
  v47[2] = *MEMORY[0x1E69E9840];
  v7 = (a1 + 48);
  v36 = v7;
  v37 = 1;
  atomic_compare_exchange_strong_explicit(v7, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    v7 = MEMORY[0x19EB01E30]();
  }

  v8 = WTF::NativePromiseBase::logChannel(v7);
  if (*v8)
  {
    v10 = v8[16] >= 4u;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v8;
    WTF::Logger::LogSiteIdentifier::toString(&v41, a3);
    WTF::String::String(&v40, " settling ");
    WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v39, a1);
    WTF::makeString<WTF::String,WTF::String,WTF::String>(&v41, &v40, &v39, &v42);
    v13 = v39;
    v39 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v12);
    }

    v14 = v40;
    v40 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v12);
    }

    v15 = v41;
    v41 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v12);
    }

    v16 = *(v11 + 4);
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      WTF::String::utf8();
      v18 = v38[0] ? v38[0] + 16 : 0;
      *buf = 136446210;
      v44 = v18;
      _os_log_impl(&dword_19D52D000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v17 = v38[0];
      v38[0] = 0;
      if (v17)
      {
        if (*v17 == 1)
        {
          v17 = WTF::fastFree(v17, v9);
        }

        else
        {
          --*v17;
        }
      }
    }

    if (*v11 && v11[16] >= 4u)
    {
      v19 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v20 = *v19;
        if (v20)
        {
          break;
        }

        v21 = *v19;
        atomic_compare_exchange_strong_explicit(v19, &v21, v20 | 1, memory_order_acquire, memory_order_acquire);
        if (v21 == v20)
        {
          v22 = WTF::Logger::observers(v17);
          v23 = *(v22 + 12);
          if (v23)
          {
            v24 = *v22;
            v25 = *v22 + 8 * v23;
            do
            {
              v26 = *v24;
              *buf = 0;
              WTF::Logger::LogSiteIdentifier::toString((&v44 + 4), a3);
              v45 = 0;
              WTF::String::String(v46, " settling ");
              v46[2] = 0;
              WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(v47, a1);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v38, buf, 3uLL);
              (*(*v26 + 16))(v26, v11, 4, v38);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v38, v27);
              for (i = 40; i != -8; i -= 16)
              {
                v29 = *&buf[i];
                *&buf[i] = 0;
                if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v29, v9);
                }
              }

              ++v24;
            }

            while (v24 != v25);
          }

          v30 = 1;
          atomic_compare_exchange_strong_explicit(v19, &v30, 0, memory_order_release, memory_order_relaxed);
          if (v30 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v31 = v42;
    v42 = 0;
    if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v31, v9);
    }
  }

  if (*(a1 + 88) > 1u)
  {
    if (*(a1 + 88) == 2)
    {
      v32 = *(a1 + 56);
      *(a1 + 56) = 0;
      if (v32)
      {
        (*(*v32 + 8))(v32);
      }
    }
  }

  else if (*(a1 + 88))
  {
    if (!*(a1 + 80))
    {
      WTF::Vector<WebCore::DOMCacheEngine::CacheInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 56, v9);
    }

    *(a1 + 80) = -1;
  }

  v33 = *a2;
  *a2 = 0;
  *(a1 + 56) = v33;
  *(a1 + 88) = 2;
  result = WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::dispatchAll(a1, &v36);
  v35 = v37;
  if (v37 == 1)
  {
    result = v36;
    atomic_compare_exchange_strong_explicit(v36, &v35, 0, memory_order_release, memory_order_relaxed);
    if (v35 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStorageAllCaches,WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error>>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F11229A0;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStorageAllCaches,WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error>>::~CallableWrapper(IPC::Decoder **a1)
{
  *a1 = &unk_1F11229A0;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](a1 + 1, 0);

  return WTF::fastFree(a1, v2);
}

void *WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStorageAllCaches,WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error>>::call@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = result[1];
  if (!v3)
  {
    goto LABEL_17;
  }

  v4 = *v3;
  if (!*v3)
  {
    goto LABEL_17;
  }

  v5 = v3[1];
  v6 = v3[2];
  if (v5 <= &v6[-v4])
  {
    *v3 = 0;
    v3[1] = 0;
    v22 = v3[3];
    if (v22)
    {
      if (v5)
      {
        (*(*v22 + 16))(v22);
        v4 = *v3;
        v5 = v3[1];
LABEL_36:
        *v3 = 0;
        v3[1] = 0;
        v23 = v3[3];
        if (v23)
        {
          if (v5)
          {
            (*(*v23 + 16))(v23, v4);
            v4 = *v3;
            v5 = v3[1];
LABEL_39:
            *v3 = 0;
            v3[1] = 0;
            v24 = v3[3];
            if (v24)
            {
              v25 = v5 == 0;
            }

            else
            {
              v25 = 1;
            }

            if (!v25)
            {
              (*(*v24 + 16))(v24, v4, v5);
            }

            goto LABEL_10;
          }
        }

        else
        {
          v5 = 0;
        }

        v4 = 0;
        goto LABEL_39;
      }
    }

    else
    {
      v5 = 0;
    }

    v4 = 0;
    goto LABEL_36;
  }

  v3[2] = (v6 + 1);
  if (!v6)
  {
    goto LABEL_36;
  }

  v7 = *v6;
  if (v7 >= 2)
  {
    goto LABEL_39;
  }

  if (v7)
  {
    IPC::ArgumentCoder<WebCore::DOMCacheEngine::CacheInfos,void>::decode(v3, &v31);
    if ((v34 & 1) == 0)
    {
      v19 = *v3;
      v20 = v3[1];
      *v3 = 0;
      v3[1] = 0;
      v21 = v3[3];
      if (!v21 || !v20 || ((*(*v21 + 16))(v21, v19), (v34 & 1) == 0))
      {
LABEL_10:
        v11 = *v3;
        v12 = v3[1];
        *v3 = 0;
        v3[1] = 0;
        v13 = v3[3];
        if (v13)
        {
          v14 = v12 == 0;
        }

        else
        {
          v14 = 1;
        }

        if (!v14)
        {
          (*(*v13 + 16))(v13, v11);
        }

        v26[0] = 0;
        v27 = 0;
LABEL_16:
        v15 = *v3;
        v16 = v3[1];
        *v3 = 0;
        v3[1] = 0;
        result = v3[3];
        if (result)
        {
          if (v16)
          {
            result = (*(*result + 16))(result, v15);
            if (v27)
            {
              goto LABEL_23;
            }
          }
        }

LABEL_17:
        *a2 = 4;
        a2[24] = 1;
        return result;
      }
    }

    v28[0] = v31;
    v9 = v32;
    v31 = 0;
    v32 = 0;
    v28[1] = v9;
    v28[2] = v33;
    v29 = 0;
    v30 = 1;
    WTF::Vector<WebCore::DOMCacheEngine::CacheInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v31, v8);
  }

  else
  {
    v10 = IPC::Decoder::decode<WebCore::DOMCacheEngine::Error>(v3);
    if (v10 < 0x100u)
    {
      goto LABEL_10;
    }

    LOBYTE(v28[0]) = v10;
    v29 = 1;
    v30 = 1;
  }

  mpark::detail::move_assignment<mpark::detail::traits<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error>,(mpark::detail::Trait)1>::move_assignment(v26, v28);
  v27 = 1;
  if ((v30 & 1) != 0 && !v29)
  {
    WTF::Vector<WebCore::DOMCacheEngine::CacheInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v28, v17);
    if ((v27 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_23:
  result = mpark::detail::move_assignment<mpark::detail::traits<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error>,(mpark::detail::Trait)1>::move_assignment(a2, v26);
  if ((v27 & 1) != 0 && !v26[24])
  {
    return WTF::Vector<WebCore::DOMCacheEngine::CacheInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v26, v18);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStorageRetrieveRecords,WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F11229C8;
  WTF::NativePromiseProducer<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer((a1 + 8));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStorageRetrieveRecords,WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(atomic_uint **a1)
{
  *a1 = &unk_1F11229C8;
  WTF::NativePromiseProducer<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(a1 + 1);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStorageRetrieveRecords,WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v47[1] = *MEMORY[0x1E69E9840];
  v4 = *a3;
  *a3 = 0;
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F11229F0;
  *(v5 + 1) = v4;
  v36[3] = 0;
  v37 = v5;
  v36[0] = 0;
  v36[1] = 0;
  v36[2] = "operator()";
  v6 = *(a1 + 8);
  v7 = 1;
  if (!v6)
  {
    v11 = 0;
    goto LABEL_12;
  }

  v8 = 0;
  atomic_fetch_add((v6 + 8), 1u);
  atomic_compare_exchange_strong_explicit((v6 + 48), &v8, 1u, memory_order_acquire, memory_order_acquire);
  if (v8)
  {
    v5 = MEMORY[0x19EB01E30](v6 + 48);
  }

  v9 = *(v6 + 80);
  v10 = 1;
  atomic_compare_exchange_strong_explicit((v6 + 48), &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 != 1)
  {
    v5 = WTF::Lock::unlockSlow((v6 + 48));
  }

  if (atomic_fetch_add((v6 + 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v6 + 8));
    v5 = (*(*v6 + 16))(v6);
  }

  v11 = *(a1 + 8);
  if (v9)
  {
    if (v11)
    {
      atomic_fetch_add(v11 + 2, 1u);
      v7 = 0;
    }

LABEL_12:
    v12 = WTF::NativePromiseBase::logChannel(v5);
    if (*v12)
    {
      v13 = v12;
      if (v12[16] >= 4u)
      {
        WTF::Logger::LogSiteIdentifier::toString(&v41, v36);
        WTF::String::String(&v40, " ignored already resolved or rejected ");
        WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v39, v11);
        WTF::makeString<WTF::String,WTF::String,WTF::String>(&v41, &v40, &v39, &v42);
        v15 = v39;
        v39 = 0;
        if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v14);
        }

        v16 = v40;
        v40 = 0;
        if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v16, v14);
        }

        v17 = v41;
        v41 = 0;
        if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v17, v14);
        }

        v18 = *(v13 + 4);
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
        if (v19)
        {
          WTF::String::utf8();
          v21 = v38[0] ? v38[0] + 16 : 0;
          *buf = 136446210;
          v44 = v21;
          _os_log_impl(&dword_19D52D000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
          v19 = v38[0];
          v38[0] = 0;
          if (v19)
          {
            if (*v19 == 1)
            {
              v19 = WTF::fastFree(v19, v20);
            }

            else
            {
              --*v19;
            }
          }
        }

        if (*v13 && v13[16] >= 4u)
        {
          v22 = MEMORY[0x1E696EBC0];
          while (1)
          {
            v23 = *v22;
            if (v23)
            {
              break;
            }

            v24 = *v22;
            atomic_compare_exchange_strong_explicit(v22, &v24, v23 | 1, memory_order_acquire, memory_order_acquire);
            if (v24 == v23)
            {
              v25 = WTF::Logger::observers(v19);
              v26 = *(v25 + 12);
              if (v26)
              {
                v27 = *v25;
                v28 = *v25 + 8 * v26;
                do
                {
                  v29 = *v27;
                  *buf = 0;
                  WTF::Logger::LogSiteIdentifier::toString((&v44 + 4), v36);
                  v45 = 0;
                  WTF::String::String(v46, " ignored already resolved or rejected ");
                  v46[2] = 0;
                  WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(v47, v11);
                  WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v38, buf, 3uLL);
                  (*(*v29 + 16))(v29, v13, 4, v38);
                  WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v38, v30);
                  for (i = 40; i != -8; i -= 16)
                  {
                    v32 = *&buf[i];
                    *&buf[i] = 0;
                    if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v32, v20);
                    }
                  }

                  ++v27;
                }

                while (v27 != v28);
              }

              v33 = 1;
              atomic_compare_exchange_strong_explicit(v22, &v33, 0, memory_order_release, memory_order_relaxed);
              if (v33 != 1)
              {
                WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
              }

              break;
            }
          }
        }

        v34 = v42;
        v42 = 0;
        if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v34, v20);
        }
      }
    }

    if ((v7 & 1) == 0 && atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
    {
LABEL_53:
      atomic_store(1u, v11 + 2);
      (*(*v11 + 16))(v11);
      goto LABEL_54;
    }

    goto LABEL_54;
  }

  if (v11)
  {
    atomic_fetch_add(v11 + 2, 1u);
    WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::settleWithFunction(v11, &v37, v36);
    if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) != 1)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::settleWithFunction(0, &v37, v36);
LABEL_54:
  result = v37;
  if (v37)
  {
    return (*(*v37 + 8))(v37);
  }

  return result;
}